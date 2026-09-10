# Zurich IT Asset Management — Enterprise Asset Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1686–1835 of 2359 | Part 2 of 3

Sections: Enterprise Asset Management (p1536); Explore (p1537); Configure (p1620); Manage enterprise models and assets (p1638); Manage enterprise asset inventory and contracts (p1751); Manage work orders for your enterprise assets (p1847); Use Service Catalog for requests and flows (p1877); Manage enterprise assets and tasks using Mobile Agent application (p1887)

---

<!-- page 1686 -->
• sn_eamhc.medical_asset_manager
• sn_otam.ot_asset_manager

About this task

Asset groups can be used and created in the Enterprise Asset Workspace, Facility Asset
Workspace, Medical Asset Workspace, and the Operational Technology (OT) Asset Workspace.
This task specifically describes how to create an asset group in the Enterprise Asset Workspace.
After you create an asset group, you can create subgroups and add assets to the subgroups.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise asset estate > Asset groups.
The Asset groups tab contains two subtabs:
◦ Asset groups: all the asset groups in your organization.
◦ Sites: equipment model entities that are picked up from the Equipment model
[cmdb_ci_ot_isa_entity] table. The Equipment model table is a descendant of the Application
Service CI [cmdb_ci_service_auto] table.
The Asset groups subtab is further classified into the following sites:
◦ Unassigned sites: sites not assigned to any asset group.
◦ Assigned sites: sites assigned to an asset group.
2. Select New to open the Create New Asset group page.
3. On the form, fill in the fields.

Field

Description

Name

Name of the asset group.

Service instance

Reference that you can assign to the asset
group. This creates a bridge between the CI
and the assets.
If you assign a reference to the asset group,
then the asset group is bound by the
reference to the selected Service instance.

Description

Brief description of the asset group.

Parent

Parent group of the asset group.

Location

Specific geographical location of the asset
group.

Site

Equipment model entities that are
picked up from the Equipment model
[cmdb_ci_ot_isa_entity] table.

State

The current state of the asset group. By
default, a newly created asset group is in the
Build state.

Substsate

The substate of the asset group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1686


<!-- page 1687 -->
Field

Description

Support group

The group to contact if you encounter any
issues with the asset group.

Supported by

The person who can be contacted within the
support group for any issues that you may
encounter with the asset group.

Department

Department to which the asset group
belongs.

Company

Company or organization to which the asset
group belongs.

Owned by

Person who has financial ownership of the
asset group. This can be different from the
person in the Managed by field.

Managed by

Person who maintains the asset group.
This can be different from the person in the
Owned by field.

Assigned to

Person using or primarily responsible for this
asset group. This field is visible when the
asset state is In Use.

Assigned

Date on which the asset group was assigned
to a user.

Installed

Date on which the asset group was assigned
to the person mentioned in the Assigned to
field.

Retired date

The date this asset group is retired.

Comments

Any comments to add.

4. Select Save.
The asset group record opens with related lists for adding subgroups and assets.
5. Optional: Select the View dependency map icon, , next to an asset group, in the Asset
groups page, to view the relationship between an asset group, subgroups, and assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1687


<!-- page 1688 -->
(Optional)
If you have the sn_cmdb_user role, you can further drill down by selecting the dependency
map icon. For example, in the screenshot, select the dependency map icon on the Surgery
Room 1 node to further drill down. Additionally, if you have the app_service_admin role, you can
view the Related items contextual panel on the right side of the Dependency map page.
Create an asset subgroup in Enterprise Asset Management
Create a subgroup to add child asset groups to an asset group.

Before you begin
Role required:

• sn_eam.enterprise_admin
• sn_eam.enterprise_asset_manager
• sn_eamfam.facility_asset_manager
• sn_eamhc.medical_asset_manager
• sn_otam.ot_asset_manager
Asset subgroups can be used and created in the Enterprise Asset Workspace, Facility Asset
Workspace, Medical Asset Workspace, and the Operational Technology (OT) Asset Workspace.
This task specifically describes how to create an asset subgroup in the Enterprise Asset
Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1688


<!-- page 1689 -->
About this task

You can add or remove a subgroup from an asset group.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise asset estate > Asset groups.
2. Open the asset group record for which you want to create a subgroup.
3. Select the Subgroups related list.
4. Select New on the Create New Asset group page.
The Parent field is automatically filled with the parent asset group.
5. On the form, fill in the required details.
For more details on the fields, see Create an asset group in Enterprise Asset Management.
6. Select Save.
The subgroup is created and is listed in the Subgroups related list.
Add assets to an asset group or subgroup
Add existing assets to an asset group or a subgroup.

Before you begin
Role required:

• sn_eam.enterprise_admin
• sn_eam.enterprise_asset_manager
• sn_eamfam.facility_asset_manager
• sn_eamhc.medical_asset_manager
• sn_otam.ot_asset_manager
Assets can be added to an asset group or subgroups in the Enterprise Asset Workspace,
Facility Asset Workspace, Medical Asset Workspace, and the Operational Technology (OT)
Asset Workspace. This task specifically describes how to add assets to an asset group in the
Enterprise Asset Workspace.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise asset estate > Asset groups.
2. Open the asset group record to which you want to add assets.
3. Select the Assets related list.
4. Select Add to open the Add asset dialog box.
For details on the type of assets that appear, see the section titled Considerations for adding
assets to asset groups.
5. Select the assets that you want to add.
You can also use the condition builder to search for specific assets.
6. Select Add.
The selected assets are added to the asset group and are listed in the Assets related list.
Create consumable assets in Enterprise Asset Workspace
Create consumables in the Enterprise Asset Workspace to track enterprise assets.

Before you begin

Role required: sn_eam.enterprise_asset_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1689


<!-- page 1690 -->
Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise asset estate > Consumable.
2. Select New.
3. Select the type of the consumable and the model category from the Type andModel category
drop-downs.
4. Select Create.
5. Fill in the details in the Create New Consumable page.

Field

Description

Display
name

Name of the asset.

Model

Product model of the asset.

Model
category

Model category of the asset.

Parent

The parent asset. When a parent asset is defined, the Assignment and State
fields of the child asset are automatically populated based on the Assignment
and State fields of the parent asset and are read-only.

Quantity

Amount of items the asset represents.

General
State

State of the asset. The default state is set to Build.

Substate

Substate of the asset.

Asset
function

The purpose for which the asset will be used.

Planned for Indicates if the asset is slated for disposal.
disposal
Stockroom

Stockroom where the asset resides.

Location

Location of the asset.

Aisle and
space

The aisle and space in the stockroom where the asset resides.

Expenditure The type of expenditure. Choose from the following options:
type
◦ Capex: Capital expenditure is a one-time expenditure, where the value is
realized over the years. For example, a photocopier.
◦ Opex: Operational expenditure is an on-going expenditure. For example,
toners for the photocopier.
Assigned to The person the asset is assigned to
Cost

Price that the asset was purchased for.

Cost Center Cost center financially responsible for the asset.
Asset Disposal
Disposal
order
number

A unique number assigned to the asset disposal order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1690


<!-- page 1691 -->
Field

Description

Disposal
vendor

The vendor assigned to carry out the asset disposal order.

Vendor
disposal
order ID

Order number assigned by the vendor assigned to carry out the asset disposal
order.

Disposal
date

The date when the asset disposal order process is completed.

Resold
value

Estimated cost the disposal asset can be resold for.

Scheduled
retirement

Scheduled date on which the asset is retired.

Resale
price

Value of the asset when it is retired.

Beneficiary

Organization that receives the asset when it is retired.

Activities
Work Notes Work notes related to the asset.
6. SelectSave.
The consumable asset is created and appears in the Consumable assets list.
Use consumable assets in Enterprise Asset Workspace
To use consumable assets, ensure that they are in the In stock state and Available substate.

Before you begin

Note: Only consumables created from models in the Enterprise Asset Management
application can be used if the Asset strategy tracking for the model is set to create
consumable asset.
Role required: asset

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise asset estate > Consumable assets.
2. Select a consumable asset with a state of In Stock and a substate of Available.
3. Select Consume.
The Consume dialog box appears.
4. Enter the quantity to consume in the Quantity field.
5. In Asset list, select the lookup icon and select the asset associated with the consumable.
Example
For example, a mouse tracked as a consumable asset can be associated with a nonconsumable asset such as a computer.
6. In User list, select the lookup icon and select a user associated with the consumable.
7. Select OK.
On the Consumable form, the Quantity field shows the reduced number. The Consumables
list contains two records for the consumable in the specific stockroom: one with a state and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1691


<!-- page 1692 -->
substate of In Stock and Available (if you did not consume the entire quantity), and one with
a state of Consumed. If a consumable is not in the process of being transferred to a different
stockroom and information in the data record is the same, similar records merge automatically.
After a consumable is consumed, the record remains in the system for reporting purposes.
Create a quality standard for your enterprise asset calibrations
Create a quality standard to indicate the requirements and guidelines that you must follow while
performing your enterprise asset calibrations.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

You can specify the calibrations that are required for your enterprise assets by using calibration
attributes. When you create a calibration attribute, you can apply a quality standard to indicate
the set of requirements and guidelines that you must follow during the associated calibrations.
By following a quality standard, you can achieve consistent, reliable, and accurate calibrations
across your deployment.
For more details on calibration attributes, see Add calibration attributes to an enterprise asset or
Add calibration attributes to an enterprise model.

Procedure
1. From the Enterprise Asset Workspace, open the Admin center view.
2. From the left navigation menu of the Admin center view, navigate to Calibration configuration
> Quality standard.
3. Select New.
4. On the form, fill in the fields.
Create New Quality Standard form
Field

Description

Name

Name of the quality standard.

Short description

Brief description of the quality standard.

Valid from

Date from which the quality standard is valid.

Valid to

Date on which the quality standard is no longer valid.

Description

Detailed description of the quality standard.

5. Select Save.

Result

The quality standard is available to apply to your calibration attributes.
Create a service frequency for your enterprise asset calibrations
Create a service frequency to specify how often you must perform an enterprise asset
calibration.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1692


<!-- page 1693 -->
About this task

You can specify the calibrations that are required for your enterprise assets by using calibration
attributes. When you create a calibration attribute, you must specify the frequency at which you
need to perform the associated calibrations.
For more details on calibration attributes, see Add calibration attributes to an enterprise asset or
Add calibration attributes to an enterprise model.

Procedure
1. From the Enterprise Asset Workspace, open the Admin center view.
2. From the left navigation menu of the Admin center view, navigate to Calibration configuration
> Service frequency.
3. Select New.
4. On the form, fill in the fields.
Create New Service Frequency form
Field

Description

Name

Name of the service frequency.

Service frequency

Frequency at which you must perform the calibrations.

Service frequency type

Type of frequency.

5. Select Save.

Result

The service frequency is available to use in your calibration attributes.
Create a calibration attribute library
Create a library of common calibration attributes that are not associated with any enterprise
models or enterprise assets. Use these attributes to define the details and requirements of your
commonly used calibrations.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

You can create common calibration attributes that are not associated with any enterprise
models or enterprise assets. These calibration attributes can be cloned to any of your available
enterprise models. You can also create calibration attributes for a specific enterprise model
or enterprise asset. For details on how to create a calibration attribute for a specific enterprise
model, see Add calibration attributes to an enterprise model. For details on how to create a
calibration attribute for a specific enterprise asset, see Add calibration attributes to an enterprise
asset.

Procedure
1. From the Enterprise Asset Workspace, open the Admin center view.
2. From the left navigation menu of the Admin center view, navigate to Calibration > Attribute
library.
3. Select New.
4. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1693


<!-- page 1694 -->
Create New Calibration Attribute form
Field

Description

Attribute details
Name

Name of the calibration attribute.

Short
description

Brief description of the calibration attribute.

Criticality

Criticality level that indicates how important the calibration attribute is.

Service
frequency

Frequency at which you must perform the calibration.

Category

Type of calibration.

Note: The Enterprise Asset Management application includes default
calibration categories such as Electrical, Flow, Humidity, and Pressure.
You can create additional calibration categories for any calibrations
that do not fall under the default categories. For detailed instructions,
see Create a calibration category for your enterprise asset calibrations.
Active

Option that indicates if the calibration attribute is active.

Order

Order in which the calibration attribute applies to an enterprise model after
it is cloned to the model. If the enterprise model contains more than one
calibration attribute, the attribute with the lowest numerical value applies to
the model first.

Calibration properties
Value type

Method by which you want to measure accuracy. Select one of the following
options:
◦ Accuracy % full scale: Accuracy is based on a fixed percentage of the
enterprise asset's full measurement range. The corresponding tolerance
limits remain the same regardless of which point you measure accuracy
at. For example, if a measurement range is 100 units and the accuracy
percentage is set to ±1%, the tolerance limits are ±1 unit at every point
within the measurement range.
◦ Accuracy % point: Accuracy is based on a fixed percentage of the
specific point that you are measuring accuracy at. The corresponding
tolerance limits increase or decrease proportionally based on the point
that you measure accuracy at. For example, if your accuracy percentage
is set to ±1% and you measure accuracy at a point that has a value of
50 units, the tolerance limits for this specific point are ±0.5 units. If you
then measure accuracy at another point that has a value of 60 units, the
tolerance limits increase to ±0.6 units.

Scale

Full measurement range that you can measure accuracy within.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1694


<!-- page 1695 -->
Field

Description

Note:
This field
appears
only if
you set
the Value
type
field to
Accuracy
% full
scale.
Unit

Unit of measurement that you are using to measure accuracy.

Accuracy (%)

Percentage of accuracy that your enterprise assets must fall within.

Resolution

Smallest distinguishable change in value that you can detect and measure.
The higher the resolution is, the more specific the change in value is.

Quality standard
Quality
standard

Set of requirements and guidelines that you must follow while performing
the calibrations.

Note: You can create quality standards manually in the Admin center
view of the Enterprise Asset Workspace. See Create a quality standard
for your enterprise asset calibrations for detailed instructions.
Instrument
Instrument
model

Model of the instrument that you must use to perform the calibrations.

Instruction

General instructions or instrument settings that you must follow when
performing the calibrations.

5. Select Save.
The form closes and you are automatically redirected to the new calibration attribute record.
6. Specify the points at which you can measure accuracy.

Important: You must specify one or more points within each enterprise asset's
measurement range. If you do not specify at least one point, the calibration attribute
cannot be set to Active.
a. On the calibration attribute record, select Add calibration points.
The Calibration points dialog box opens.
b. In the dialog box, fill in the fields.
Calibration points dialog box
Field

Description

Point
name

Name of the point.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1695


<!-- page 1696 -->
Field

Description

Expected Point value that you want to measure accuracy against.
value
Order

Order in which you want to use the point to measure accuracy. If your
calibration attribute contains more than one point, the point with the lowest
numerical value is used first.

c. To add an additional point to the calibration attribute, select the Add Content icon (
then fill in the fields.
Repeat this step for each point that you want to add.

) and

d. Select OK.
The dialog box closes and the points appear on the Calibration points tab of the calibration
attribute record.

What to do next

Clone the calibration attribute to all applicable enterprise models. See Clone calibration
attributes to an enterprise model for detailed instructions.
Dispose consumable assets in Enterprise Asset Workspace
Dispose of those consumable assets that are no longer required in your stockrooms.

Before you begin

Role required: asset, itil, itil_admin
Know that the Planned for disposal column in the Consumable [alm_consumable] table indicates
if the consumable asset is marked for disposal or not.

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise asset estate > Consumable assets.
2. Open a consumable asset record and select Mark for disposal.
Mark for disposal appears only for consumable assets that are in the in-stock state and not
marked for disposal.
3. In the Mark for disposal dialog box, enter the total quantity or partial quantity of the
consumable asset.
If you enter a partial quantity, a new consumable record is created with the substate as
pending disposal. If you enter a total quantity, the consumable's record substatus changes to
"pending disposal" and you return to the same consumable record.
After you mark the consumable asset for disposal, Mark for disposal no longer appears.

Note: Only a consumable marked for disposal is included in a disposal order. After you
mark a consumable for disposal, it does not get merged with another consumable record.
Create an asset onboarding process
Create an asset onboarding process to walk you through the process of entering important
information for assets.

Before you begin

The asset onboarding process is a playbook experience that provides an interactive user
interface to complete a process. The asset onboarding process is triggered after an onboarding
task is created. An onboarding task can be automatically created from the asset request flow or
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1696


<!-- page 1697 -->
manually created from an asset record. For an overview of the asset onboarding playbook, see
Playbooks for Enterprise Asset Management.
Onboarding is available only for preassembled and simple assets. Also, only the parent
preassembled asset can be onboarded; not the child preassembled assets.
The asset onboarding process is organized into lanes. The lanes appear in the left pane of the
page. Each lane includes a few activities that you’re asked to complete. Use the following buttons
to skip, save, or complete a task:
• Skip: takes you to the next activity.
• Save: saves the information but doesn't complete the activity.
• Mark as complete: saves the information and completes the activity, and takes you to the next
lane.

Note: You can close an onboarding task only after you’ve skipped all the activities or
marked all them as complete.
While you’re performing a particular activity, a status of In progress appears for that activity. As
you mark an activity complete, the status of that activity changes to complete. After you complete
all the activities in a lane, you move to the next lane.
The Onboard asset button that triggers an onboarding task only appears when the asset is in
any one of the following states or substates as listed in the following table.

State

Substates

• Build

• Available

• In use

• Reserved

• In stock

• Pending Install

• In maintenance

• Pending transfer

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Enterprise asset estate.
2. Open the asset record for which you want to create an onboarding process.
3. Select Onboard asset.
The asset onboarding task opens.
4. Select the Onboarding playbook related list tab.
The asset onboarding page opens.
5. Review or enter details in the Asset details lane.

Note: If you’re onboarding a preassembled industrial asset, the MAC address field
is included in the Asset details. Also, the Child assets activity under Asset details is
displayed only for preassembled industrial assets.

If you have activated the OT Asset Management application, the Asset details activity
displays the MAC address field for preassembled industrial assets and the hardware
assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1697


<!-- page 1698 -->
6. Select Skip, Save, or Mark as complete to proceed to the next lane.
7. Continue to review or enter details in the lanes until you reach the last lane.
8. After all the lanes show a status of skipped or complete, select Close Task to complete the
asset onboarding process.
Your asset is successfully onboarded.
View an automatically created onboarding task
View an automatically created asset onboarding task.

Before you begin

Onboarding tasks for assets are automatically created after the asset is received in the Asset
Request flow. The onboarding task in turn triggers the asset onboarding process. For each
sourced asset, a separate onboarding task is created.
Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Asset operations > Procurement > Requests.
2. Open a request.
3. Select the Requested items tab and open a requested item.
4. Select the Asset tasks tab.
An onboarding and a deploy asset task are listed.
5. Open the onboarding task.
Track assets using indoor maps in the Enterprise Asset Workspace
Use indoor maps to locate and track the enterprise assets, consumable assets, and pallets that
are deployed across your organization. Each indoor map consists of an interactive interface that
enables you to visualize where your assets are located within your campuses, buildings, floors,
and places.

Before you begin

To use indoor maps in the Enterprise Asset Workspace, fulfill the following requirements:
• Explicitly install the Indoor Mapping for Assets (com.sn_ima) application from the
®
ServiceNow Store. When you install this application, Indoor Mapping (sn_map_core) and
Indoor Mapping component (sn_map_component) are also installed.
If you purchased the Enterprise Asset Management license after November 3, 2023 using the
updated Enterprise Asset Management SKU (PROD21613), you can install the Indoor Mapping
for Assets (com.sn_ima) application.
• Set the com.sn_eam.indoormap.enabled asset parameter to true on your ServiceNow
instance.
• Set up your indoor maps: You can design indoor maps using Map Studio. For more information,
see Configure Indoor Mapping .

Note: When you install indoor maps using the entitlement to the Enterprise Asset
Management license, you can use only the PNG floor map files in the Map Studio. You
can’t import the files that are in AutoCAD or Raster file format. To use AutoCAD or Raster
files, you should have entitlement to the Workplace Service Delivery application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1698


<!-- page 1699 -->
• Configure the option to display the Asset indoor map tab in the Enterprise asset estate view of
the Enterprise Asset Workspace. For detailed instructions, see Configure tabs in the Enterprise
Asset Workspace.

Note: This tab appears only if the Include in tab option is enabled in the Asset indoor
map tab configuration.
• Synchronize location data: The Enterprise Asset Management application supports the
following indoor mapping location types:
◦ Campus: Represents a set of buildings within the same geographic location.
◦ Building: Represents a multi-floor building within a specific campus.
◦ Floor: Represents a floor within a specific building.
◦ Place: Represents either a polygon or point of interest within a specific floor. Places can
represent areas, rooms, desks, printers, assets, and more.

Note: For indoor maps to show assets in the Enterprise Asset Workspace, assets

should be assigned to a location of the type place or room in the Location [cmn_location]
table.
To view the newly created locations within the Enterprise Asset Management application,
make sure to synchronize the newly created locations from Map Studio to the Location
[cmn_location] table. You can associate the locations created in Map Studio with pre-existing
records or new records in the Location [cmn_location] table. For more information, see
Synchronize Indoor Mapping map data with CMN location .
Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise asset estate view.
2. Select the Asset indoor map tab.
This tab contains an interactive map that enables you to view the real-time location of each
enterprise asset, consumable asset, and pallet within a specific floor or place.
3. Set the map to a specific floor by using the Campuses, Buildings, and Floors filters.
By default, the map provides a high-level view of all campuses that are available across your
organization. This default map view doesn’t display the locations of your assets. To view the
locations of your assets, you must set the map to the floor that those assets are located in. To
set the map to a specific floor, select the appropriate values in the Campuses, Buildings, and
Floors filters.
4. Optional: Specify the assets that you want the map to display the locations of.
By default, the map displays the locations of all enterprise assets, consumable assets, and
pallets that are deployed across your organization. If you want the map to display the locations
of only certain assets, use the following steps:
a. Select the Filters Tab icon ( ) on the sidebar of the map.
b. In the Filter by window, use any of the following filters to narrow down the assets that you
want to display the location of:
▪ Department: Department that the asset belongs to.
▪ User: User who the asset belongs to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1699


<!-- page 1700 -->
▪ Model category: Model category of the asset.
▪ Classification: Classification code that is assigned to the asset model.
5. Optional: Change the format through which you view your asset locations by selecting a
display option at the bottom-right corner of the Asset indoor map tab.
The Asset indoor map tab supports the following display options:
◦ Show map only (default display option): Displays an interactive map that shows the
locations of the assets within the specified floor.
◦ Show list only: Displays the list of assets that are located within the specified floor.
◦ Show map and list: Displays both the interactive map and the list of assets.
6. Use the interactive map or the list of assets to view the real-time locations of assets within the
specified floor or place in that floor.
Select an asset from the map or list to view additional details about that asset.
View the asset hierarchy in the Enterprise Asset Workspace
View the hierarchy details of a multi-component asset in a tree-like format in the Enterprise Asset
Workspace.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

The Asset hierarchy option is shown only for an asset associated with a parent asset or that has
child assets.
The asset hierarchy shows consumable assets associated with a parent asset.

Note: Asset hierarchy is not applicable to Linear assets and Pallets.
Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise Asset Estate.
2. Select the asset record.
3. Select the Asset hierarchy icon (

) on the contextual sidebar.

◦ The asset hierarchy is shown in a tree-like format.
The default view shows up to three child assets. A number at the right of the asset shows the
total number of child assets. If that number is higher than three, view all of them by selecting
Expand all or Show More.
◦ The asset for which the hierarchy is shown is highlighted in the asset hierarchy tree.
View the total time worked on all tasks related to an enterprise asset
Use the Asset task time summary report to see the details of the time spent on all tasks for an
asset and its child assets, grouped by task category.

Before you begin

Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

About this task

Asset task time refers to the total time spent on all tasks related to an asset. The total time spent
includes the sum of time worked on all related tasks for the asset and its child assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1700


<!-- page 1701 -->
Note:
Time spent on tasks related to child assets is rolled up to the parent asset only if the tasks
were created and closed after the last_used date on the child assets. The total time from
these tasks is then aggregated and added to the parent asset's time spent.
When a child asset is removed from a parent asset, the total time spent on the parent asset
remains the same. Therefore, the time spent lines associated with the parent asset will be
available even after the child asset is removed.
The time worked on a task is tracked after you start working on it and select Start Timer until you
close the task. The timer automatically stops when you close the task, and the total duration is
updated. You can also pause the timer when you aren't working on the task by selecting Pause,
and then select Resume when you continue to work on the task. You can also add time worked
details to the task manually by selecting Record Time. The time worked on a task is stored in the
Time worked [task_time_worked] table.
After a task is closed on a parent or child asset, a time spent line is generated and stored in the
Time spent line [sn_itam_common_time_spent_line] table. Each time spent line includes the
time worked on the asset task. The sum of the time spent values in these time spent lines gives
the total asset task time. If a task involves multiple assets, the total time spent is equally divided
among them. This equally distributed time is then aggregated to the parent asset if there are any
child assets involved.

Note: When you upgrade to Enterprise Asset Management version 9.0.0, the Calculate
asset time spent fix script creates time spent lines for asset tasks that have already
been completed and closed.
The total time spent is grouped by the following task categories:
• Purchase - Asset: Includes the following tasks
◦ All tasks in the Refresh flow except the Reclaim aged asset task.
◦ Replacement task in the Return Merchandise Authorization (RMA) flow
◦ Replacement task in the Recall flow
• Labor - Maintenance: Includes Calibration and Planned maintenance in the Work order
workflow.
• Labor - Repair: Includes tasks in the following workflows:
◦ Work order (Breakfix work type)
◦ Repair order
◦ RMA order
◦ Recall order (only the Repair task)
◦ Incident
• Labor - General: Includes tasks in the following workflows:
◦ Asset reclamation
◦ Resale
◦ Disposal
◦ Lease return
◦ Transfer order
◦ Recall order (except the Repair task)
◦ Move order
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1701


<!-- page 1702 -->
◦ Loaner
◦ Asset onboarding
◦ Work order (Install task)
◦ Asset refresh flow (only the Reclaim aged asset task)
◦ Asset request (Pick task)
◦ Drop off and Receive task

Note: Total time spent on an asset task isn't calculated for pallets, consumables, and
bundle assets. Therefore, the Asset task time summary report isn't available for these
assets.

About this task
Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Enterprise asset estate.
2. Select the All assets tab.
3. Select the asset record for which you want to view the details of the total time spent on the
tasks.
4. On the contextual sidebar, select the Asset task time summary icon [
Total time spent by task category report is displayed.

].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1702


<!-- page 1703 -->
The Asset task time summary report includes the following details:
◦ Total time spent: Total time worked on all related tasks for the asset, including tasks on child
assets.
◦ Breakdown of total time spent: Total time worked on all related tasks, divided and shown
separately for each task category. This visualization helps you to see how much time was
spent on tasks within each task category.
◦ Legends for the task categories: Legends shown are based on the actual asset tasks and
their task categories. The legends include the following:
▪ Purchase - Asset
▪ Labor - Maintenance
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1703


<!-- page 1704 -->
▪ Labor - Repair
▪ Labor - General
5. To view the details of the time spent on all tasks within a specific task category, select the
corresponding task category section in the report.
The list of time spent lines is displayed, with each line showing the following details:
◦ Source asset: Display name of the asset, including both parent and child assets, for which
time was spent on the task.
◦ Task: Task number
◦ Task type: Type of the task, such as the Enterprise RMA Order Line task.
◦ Task name: Name of the task, such as Prepare or On-site repair.
◦ Time spent: Time worked on the asset task.
◦ Short description: A brief description of the task.
◦ Closed: The date and time when the asset task was closed.
◦ Task category: Category to which the task belongs.
Monitor enterprise asset performance with Asset KPIs report
Track the asset availability and related KPI values in the report to see how well an enterprise
asset is performing.

Before you begin

Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

About this task

The Asset KPIs report is available for an enterprise asset under the following conditions:
• The asset belongs to a model category for which the performance tracking is enabled. For
details, see Opt in to model categories to track performance KPIs for enterprise assets.
• The asset has moved to the In use state, and its KPIs have been calculated and are available in
the Asset Availability [sn_ent_asset_availability] table.

Note: The Calculate asset performance KPIs scheduled job runs every
week on Saturday to calculate the KPIs for the assets. These KPIs are then reflected in the
Asset availability and related KPIs report, which displays the most recent KPI values.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Enterprise asset estate.
2. Select the All assets tab.
3. Select the asset record for which you want to view the details of the asset key performance
indicators (KPIs).
4. On the contextual sidebar, select the Asset availability and related KPIs icon [
The Asset KPIs report is displayed.

].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1704


<!-- page 1705 -->
5. To view the details of the report, select any section on the report.
A form view of the availability record for the asset is shown with additional details such as the
following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1705


<!-- page 1706 -->
◦ Current asset schedule: The asset schedule linked to the asset currently and used for KPI
calculations. If no schedule is linked, the Default asset schedule is used.
◦ Start: The date and time when the asset KPI values were first calculated.
◦ End: The date and time when the asset KPI values were last calculated.
◦ Outages During Interval tab: A list of outages with details like start and end time of the
outage and the duration of the outage. For more details on outage record creation and
handling, see Asset performance reports in the Enterprise Asset Workspace.

Import enterprise models and assets in workspace
Import multiple enterprise models and assets at one go in the Enterprise Asset Workspace.

Before you begin

You can import enterprise models and assets of different types such as simple, pre-assembled,
user-assembled assets, and consumables. You can also view the import errors and status.
The enterprise models and asset import records are stored in Enterprise Bulk Import
[sn_eam_bulk_import] table.
The Flow Designer application is used to initiate the EAM Bulk Import sub flow to assist you in
importing enterprise models and assets. As the flow takes you through the various stages, the
import details are automatically updated. You can open the EAM Bulk Import flow to view the
status of the stages in the flow.
Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to Enterprise Asset Workspace > Asset operations.
2. Select any of the import actions under Bulk Import.
3. Select New.
The Create New Enterprise Bulk Import page opens.
4. Enter a unique name for the import process in the Name field.
5. Select a mode for the import in the Mode field.
6. Select Download template to download a spreadsheet.
Based on the mode you select, a spreadsheet is available. Templates are available for models,
for assets, and a combined template for models and assets.
7. Enter the details in all the mandatory fields in the spreadsheet.
If you don’t enter values in all the mandatory columns in the template, the import fails, and
an error message appears asking you to check the template format. For details on mandatory
fields, see Mandatory fields in the bulk import spreadsheets.
8. Select Attach File to upload the spreadsheet (.xlsx).
9. Select Import to perform a validation check on the spreadsheet.
After you select Import, the Status field changes from Draft and moves to Pending, Uploading,
Transforming. After the import process is completed, the status changes to either Completed,
Completed with errors, or Failed. You can view details regarding the result of the import
process for models and assets in the Model import result and Asset import result sections.
10. Select Model Import staging, Model component Import staging, or Asset Import Staging
related lists to view the details of the spreadsheet that you uploaded and also view any errors
you received.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1706


<!-- page 1707 -->
11. Open any record for which you got an error.
12. Fix the error, upload the spreadsheet, and import the record again.

Configure tabs in the Enterprise Asset Workspace
Configure the options to hide or display various tabs, including tabs that are associated with
specific model categories, in the Enterprise model management view and Enterprise asset
estate view of the Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center.
2. In the navigation panel of the Admin center view, select Model and asset tabs.
3. From the list of available tab configurations, select the configuration that you want to modify.
The Enterprise Asset Management application includes the following tab configurations by
default:
◦ Asset groups tab configuration
◦ Asset indoor map tab configuration
◦ Construction class tab configuration
◦ Enterprise class tab configuration
◦ Facilities class tab configuration
◦ Firmware class tab configuration
◦ Industrial class tab configuration
◦ Linear assets tab configuration
◦ Medical class tab configuration
◦ Retail class tab configuration
◦ Tactical Equipment class tab configuration
◦ Transportation class tab configuration
◦ Wearables class tab configuration

Important:
You can also select New to create an additional tab configuration for any custom
top tier model category that you have added under the enterprise model category.
However, ServiceNow strongly recommends that you use only existing top tier model
categories, such as Medical or Construction, with custom sub-categories instead. For
more information on creating custom model categories, see Create model categories.
If you choose to create an additional tab configuration, you must also use UI Builder
to manually add the corresponding model and asset tabs to the Enterprise model
management view and Enterprise asset estate view. For detailed instructions, see Add
tabbed content to UI Builder pages .
4. On the tab configuration record, modify the fields as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1707


<!-- page 1708 -->
Tab configuration fields
Field

Description

Name

Name of the tab configuration.

Model
Model category that is associated with the tab configuration. The specified model
category category corresponds with a model tab in the Enterprise model management view
and an asset tab in the Enterprise asset estate view.

Note: This field is editable only if you are creating a tab configuration.
Include
in tab

Option to display the given tab in the Enterprise model management view or
Enterprise asset estate view. If you enable this option, the tab appears in the
applicable views. If you disable this option, the tab no longer appears in the
applicable views.
For example, if you enable this option in the Retail class tab configuration, the
Retail tab appears in both the Enterprise model management view and Enterprise
asset estate view.

Warning: If you enable the Include in tab option but disable the Include in
dialog box option, the resulting tab configuration is invalid.

Include
in dialog Option to display the associated model category in the dialog boxes for creating
enterprise models and assets. If you enable this option, the model category
box
appears in the Model category drop-down list of these dialog boxes. If you
disable this option, the model category no longer appears in the drop-down list.
You can access these dialog boxes by navigating to either the Enterprise model
management view or Enterprise asset estate view, selecting the All enterprise tab,
and then selecting New.

Note: This option is editable only for tab configurations that are
associated with a model category, such as the Tactical Equipment class tab
configuration.

Warning: If you enable the Include in tab option but disable the Include in
dialog box option, the resulting tab configuration is considered invalid.
Domain

Domain that the tab configuration is available in.

5. Select Save.

Managing enterprise asset shipments
Track and manage your enterprise asset shipments in real-time by integrating the Enterprise
Asset Management application with third-party shipping carriers using the IT Asset Management
integration framework.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1708


<!-- page 1709 -->
Prerequisites
Before you can integrate the Enterprise Asset Management application with a third-party
shipping carrier, the shipping carrier must complete the following prerequisites:
• Enable cross scope access on their third-party application.
• Create a script include that extends the base ITAMShipmentIntegration script so that you can
connect to their third-party application and retrieve shipment details in real-time.
◦ The script include must be available in the IT Asset Management application scope.
However, the Caller access isn't restricted and Accessible from fields must be available in All
application scopes.
◦ Business logic must be implemented within the fetchShipmentinfo function to enable
communication with the carrier API based on tracking numbers. The carrier API is required
for connecting to the third-party application and for retrieving shipment details.
◦ The fetchShipmentinfo function must return a JSON object with the following HTTP response
code and message:
{
httpResponseCode: 200, httpResponseMessage: ‘SUCCESS’
}
◦ When the script include is in test mode, the shipping carrier invokes the carrier API to
validate your connection to their third-party application. The shipping carrier can then either
verify and return the response or query the shipments and invoke the processResponse
function using the following response format:
[
{
trackingNumber: ‘’,
deliveryDate: ‘’,
pickupDate: ‘’,
packageStatus: ‘’.
statusDetail: ‘’,
trackingURL: ‘’,
parcelWeight: ‘’,
deliveryServicesCost: ‘’,
currency: ‘’
}
]
If the shipping carrier invokes the processResponse function, they must return the response
after the function completes.
• Create an integration profile with the appropriate name, carrier API details, and connection
details. This integration profile enables you to connect to the third-party application so that you
can retrieve shipment details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1709


<!-- page 1710 -->
• If the third-party application uses the ServiceNow Credentials [discovery_credentials] table or
any other ServiceNow table with Password2 fields, provide a KMF access map policy to enable
access to those tables. For more information on KMF access map policies, see Password2
encryption with the Key Management Framework (KMF) .
After the shipping carrier completes these prerequisites, you must complete these additional
prerequisites:
• If the integration profile contains connection details through a connection and credentials
alias, update those details as needed so that you can successfully authenticate and connect
to the carrier API.
• Associate the shipping carrier with the integration profile.
Use Advanced Shipment Notification in Enterprise Asset Management
Use Advanced Shipment Notification (ASN) to automate and create enterprise asset records for
when your assets are in transit.

Before you begin

Download your ASN template and have your asset vendor update it. Upload the updated
template to your ServiceNow instance. Before using the ASN template to import asset records,
ensure that your ServiceNow instance has the model ID defined and that the same model ID is
mentioned in the template.
Role required: sn_eam.enterprise_admin

About this task

Creating enterprise asset records manually is time consuming and can lead to errors. Use ASN to
reduce the risk of shipment going missing or misplaced and increase inventory accuracy.
If the asset records that you want to create belong to model categories linked to a CI class with
identification rules defined for fields like the Asset tag, Serial number, or MAC address, you must
provide details for at least one of these fields in the ASN template. Otherwise, the asset record
won't be created. For example, if identification rules are defined for the Serial number and MAC
address, you should provide a value for either of these fields.
The identification rules for a CI class are defined in the CMDB Identification and Reconciliation
engine (IRE). For more details, see Identification rules
and Create a CI identification rule .
These rules help to uniquely identify the asset through these required fields and maintain
accurate asset records.

Procedure
1. Navigate to Enterprise Asset Workspace > Asset operations > Shipment Notifications.
2. Select New.
The Create New Shipment Notification Upload page appears.
3. Enter a unique name for the ASN in the Name field.
4. Select Attach File to upload a spreadsheet (.xlxs).
The spreadsheet should be in the format of the download template. If you do not have a
sample spreadsheet, select Download template to download a sample spreadsheet, fill in
the details in the spreadsheet, and then select Attach File to upload the spreadsheet. Ensure
that in the spreadsheet the format for Ship date, Order date, and Warranty end date fields is
month/date/year.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1710


<!-- page 1711 -->
Note: From the Yokohama release onward, the Download template for Advanced

Shipment Notification includes the MAC address field. After a successful import, the
MAC address that you provided in the template is added to the MAC address [mac_addr]
field in the Asset [alm_asset] table.
Starting with the Zurich release, the Download template for Advanced Shipment
Notification includes the OT entity column. When this column is set to TRUE for hardware
models, it creates OT hardware assets in the OT Asset Workspace.
The upload may take some time. Once the file is uploaded, the name of the spreadsheet
appears in the File field.
5. Select Import to perform a validation check on the spreadsheet.
After you select Import, the Status field changes from Draft and moves to Pending, Extracting
Rows and Importing. Once the import process is completed, the status changes to either
Completed, Completed with errors, or Failed.
The Shipment Upload Result section appears that gives information on the import process.
Information such as how many records were inserted, ignored or skipped.
6. Select Shipment Notification Upload Stagings related link to view any errors you received as
well as to view the details of the spreadsheet that you uploaded.
7. If you got an error, select the record in Shipment Notification Upload Stagings related link.
8. Scroll down to the Errors section and view the error in the Comment field.
9. Fix the error, upload the spreadsheet, and import the record again.
Serialized assets do not have duplicate enterprise import records created, but consumables
do have duplicate entries.
Create a shipment carrier record in Enterprise Asset Workspace
Create a shipping carrier record in the Enterprise Asset Workspace to associate the carrier with
an integration profile.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

Create a shipping carrier record used to associate the carrier with an integration profile.

Important: When using the Sourcing and Procurement Operations application
with the Asset Management Integration for Sourcing and Procurement Operations
(com.snc.sn_spend_asset) installed, the IT Asset Management application shares
shipment details with the Sourcing and Procurement Operations application. To enable the
Sourcing and Procurement Operations application to view shipment and tracking numbers
associated with Purchase Orders, read-only access has been provided to the Shipping
carrier [sn_itam_common_shipping_carrier] table.
For more information about the Asset Management Integration for Sourcing and
Procurement Operations (com.snc.sn_spend_asset) plugin, see Sourcing and Procurement
Operations integration with IT Asset Management .

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center.
2. Select Shipping carrier from the Shipping list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1711


<!-- page 1712 -->
3. Select New.
4. On the form fill in the fields.
Create New Shipping Carrier form
Field

Description

Name

Name of the shipping carrier.

Email

Email address of the shipping carrier.

Integration profile

Profile for integrating with the third-party
carrier's application.
For more details, see View integration
profiles for third-party shipping carriers in the
Enterprise Asset Workspace.

Status

Status of the carrier.
This field is set to Active by default.

Phone

Phone number of the shipping carrier.

Website

Website of the shipping carrier.

Company

Company name of the shipping carrier.

Notes

Additional information about the carrier.

5. Select Save.
The shipping carrier record is created and added to the Shipping carrier list.
Script include for third-party shipping carrier integrations
Before you can integrate the Enterprise Asset Management application with a third-party
shipping carrier, that shipping carrier must create a script include that extends the base
ITAMShipmentIntegration script. By extending this script, you can connect to the third-party
shipping carrier application and retrieve shipment details in real-time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1712


<!-- page 1713 -->
Example: Structure of the ITAMShipmentIntegration script include

fetchShipmentInfo function
The fetchShipmentInfo function within the ITAMShipmentIntegration script include retrieves
tracking numbers from your ServiceNow instance and then invokes the carrier API to fetch
shipment details for those tracking numbers. To enable communication with the carrier API
based on tracking numbers, the shipping carrier must define the corresponding business logic
within the fetchShipmentInfo function. This function processes responses from the carrier API
and then initiates the processResponse function.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1713


<!-- page 1714 -->
processResponse function
The processResponse function within the ITAMShipmentIntegration script include retrieves
responses from the carrier API and then updates your shipment records with the following
shipping carrier details:
• Carrier link
• Carrier status
• Carrier status detail
• Carrier pick-up date
• Carrier delivered date
• Currency
• Delivery services cost
• Parcel weight

Important: The IT Asset Management application automatically defines the business
logic within this function. The business logic should not be modified.
Integrate with a third-party shipping carrier in the Enterprise Asset Workspace
Integrate the Enterprise Asset Management application with a third-party shipping carrier so that
you can track the real-time status of your enterprise asset shipments.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. From the left navigation menu of the Asset operations view, navigate to Shipment > Shipping
carriers.
3. Select New.
4. On the form, fill in the fields.
Create New Shipping Carrier form
Field

Description

Name

Name of the shipping carrier.

Email

Email address of the shipping carrier.

Integration
profile

Integration profile that you are using to connect to the third-party shipping
carrier application.

Note: Integration profiles are automatically created by each shipping
carrier.
Status

Status of the shipping carrier.

Phone

Phone number of the shipping carrier.

Website

Third-party website of the shipping carrier.

Company

Company name of the shipping carrier, such as FedEx or UPS.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1714


<!-- page 1715 -->
Field

Description

Notes

Additional notes about the shipping carrier.

5. Select Save.
View integration profiles for third-party shipping carriers in the Enterprise Asset Workspace
View the integration profiles for your third-party shipping carriers in the Asset operations view of
the Enterprise Asset Workspace. These integration profiles enable you to connect to third-party
shipping carrier applications so that you can retrieve shipment details for your enterprise assets.

Before you begin

Role required: sn_eam.enterprise_asset_technician, sn_eam.enterprise_asset_manager, or
sn_eam.enterprise_admin

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center.
2. Select Carrier integration from the Shipping list.
3. View the complete list of integration profiles.
Select an integration profile to view additional details, including the connection details,
associated shipping carriers, scheduled job for fetching shipment details, and logs of the
scheduled job.
Associate a third-party shipping carrier with an integration profile in the Enterprise Asset
Workspace
Associate a third-party shipping carrier with an integration profile so that you can successfully
connect to that shipping carrier.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

Each shipping carrier can be associated with only one active integration profile at a time. If any
of your integration profiles are not already associated with a shipping carrier, you can view and
take action on those integration profiles by using the Unmapped carrier profiles important action
in the Inventory view of the Enterprise Asset Workspace.

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. From the left navigation menu of the Asset operations view, navigate to Shipment > Carrier
integration profiles.
3. Select the integration profile that you want to associate a shipping carrier with.
4. On the integration profile record, select the Shipping Carriers tab.
5. Associate a shipping carrier with the integration profile.
◦ To associate an existing shipping carrier with the integration profile, use the following steps:
a. Select Add.
The Add carriers dialog box opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1715


<!-- page 1716 -->
b. In the dialog box, search for and select the shipping carrier that you want to associate with
the integration profile.

Note: The dialog box displays only the shipping carriers that aren’t already
associated with an integration profile.
c. Select Add.
◦ To associate a new shipping carrier with the integration profile, use the following steps:
a. Select New.
b. On the form, fill in the fields.
Create New Shipping Carrier form
Field

Description

Name

Name of the shipping carrier.

Email

Email address of the shipping carrier.

Integration
profile

Integration profile that you are using to connect to the shipping carrier.
This field populates automatically.

Status

Status of the shipping carrier.

Phone

Phone number of the shipping carrier.

Website

Third-party website of the shipping carrier.

Company

Company name of the shipping carrier, such as FedEx or UPS.

Notes

Additional notes about the shipping carrier.

c. Select Save.

Result

The shipping carrier is associated with the integration profile.
Remove a third-party shipping carrier from an integration profile in the Enterprise Asset
Workspace
Remove a third-party shipping carrier that you no longer want to associate with an integration
profile.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. From the left navigation menu of the Asset operations view, navigate to Shipment > Carrier
integration profiles.
3. Select the integration profile that you want to remove a shipping carrier from.
4. On the integration profile record, select the Shipping Carriers tab.
5. Select the check box for the shipping carrier that you want to remove.
6. Select Remove.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1716


<!-- page 1717 -->
Result

The shipping carrier is no longer associated with the integration profile.
Test the integration profile for a third-party shipping carrier in the Enterprise Asset
Workspace
Test the integration profile for a third-party shipping carrier so that you can mitigate any
connection issues that arise.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. From the left navigation menu of the Asset operations view, navigate to Shipment > Carrier
integration profiles.
3. Select the integration profile that you want to test.
4. Select Test connection.
A message appears, indicating whether the connection was successful or not.

Note: If the integration profile fails to connect three or more consecutive times, you
can view and take action on the corresponding connection issues by using the Carrier
integration failures important action in the Inventory view of the Enterprise Asset
Workspace.
View and add enterprise asset shipments
Use the Shipments list to view all active enterprise asset shipments from a central location. If an
existing shipment doesn’t appear on the list, you can add it manually.

Before you begin

Role required: sn_eam.enterprise_asset_technician, sn_eam.enterprise_asset_manager, or
sn_eam.enterprise_admin

Note: Only the sn_eam.enterprise_admin role can add shipments manually.
About this task

You can view and add shipments for your transfer orders, purchase orders, move orders,
Return Merchandise Authorization (RMA) orders, disposal orders, resale orders, recall orders,
reclamation requests, Advanced Shipment Notifications (ASNs), and lease contracts.

Important: When using the Sourcing and Procurement Operations application
with the Asset Management Integration for Sourcing and Procurement Operations
(com.snc.sn_spend_asset) installed, the IT Asset Management application shares
shipment details with the Sourcing and Procurement Operations application. To
enable the Sourcing and Procurement Operations application to view shipment
and tracking numbers associated with Purchase Orders, read-only access has
been provided to the Shipment [sn_itam_common_shipment] and Shipment line
[sn_itam_common_m2m_shipment_asset] table.
For more information about the Asset Management Integration for Sourcing and
Procurement Operations (com.snc.sn_spend_asset) plugin, see Sourcing and Procurement
Operations integration with IT Asset Management .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1717


<!-- page 1718 -->
Procedure
1. From the Enterprise Asset Workspace, open the Asset operations view.
2. From the left navigation menu of the Asset operations view, navigate to Shipment >
Shipments.
3. View the complete list of active enterprise asset shipments.
Select a shipment to view additional shipment details, including the shipment source and
associated enterprise assets.
4. If an existing enterprise asset shipment doesn’t appear on the list, add it manually.
a. Select New.
b. On the form, fill in the fields.
Create New Shipment form
Field

Description

Shipping
carrier

Shipping carrier through which the enterprise assets were shipped.

Ship date

Date and time at which the enterprise assets were shipped.

Shipped
from

Geographic location that the enterprise assets were shipped from.

Receive
date

Date and time at which the shipment was received.

Tracking
number

Tracking number that enables you to track the status and location of the
shipment.

Shipped by User who shipped the enterprise assets.
Shipped to

Geographic location that the enterprise assets were shipped to.

Shipment
quantity

Quantity of assets shipped for the shipment record.
This field value is automatically populated when the assets are shipped to the
destination.
The shipment quantity is the sum of the asset quantities shipped for each
shipment line.

Important: The Shipment quantity field is available with Enterprise
Asset Management version 9.1.0 onwards.
Received
by

User who received the shipment.

Ignore
Option to ignore stale checks for the shipment.
stale check
c. Select Save.

Create a multi-asset onboarding process
Onboard multiple assets at one go by creating a multi-asset onboarding playbook.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1718


<!-- page 1719 -->
Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

An enterprise asset technician submits an onboarding order. As an enterprise asset manager,
you can work on the Multi-asset onboarding task associated with the onboarding order using the
Onboarding playbook.
You can perform inline editing directly in the playbook. This capability enables you to change a
value in a record directly instead of opening the record and updating the values on the form.
To close an onboarding task, you should either complete or skip all the activities in the playbook.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Asset operations.
2. From the Onboarding list, select Onboarding tasks.
3. Select the onboarding task record for which you want to create a multi-asset onboarding
process.
4. Select the Onboarding playbook tab.
The Muti-asset onboarding playbook is displayed.
5. Review or enter details in the Review model details lane.
6. Select Mark as complete to proceed to the next lane.
After you complete entering details in the Review model lane, all other review assets activities
are unlocked.
7. Continue to review or enter details in all the lanes until you reach the last lane (Deployment).
8. Review and then complete or skip the Deployment activity.
◦ Create a deploy task.
a. In the Location field, select the location where you want to deploy the asset.

Note: This field is required to deploy the asset.
b. In the Assigned to field, select the person to whom the asset should be assigned.

Note: By default, this field is auto-populated with the value that you selected in the
Reserved for field when you performed the Review assets assignment activity.
c. In the Create deploy task field, select true.
d. Select Mark as complete.
Based on the value of the com.sn_eam.default_deployment_task asset property
set by your enterprise administrator, either of the following deploy tasks are created:
▪ If the value is set to sn_eam_deploy_asset_task, an Enterprise Deploy Asset task is
created for each asset that should be deployed. The deploy tasks are listed in the Deploy
Asset task tab.
▪ If the value is set to wm_task, a Work order task is created for each asset that should be
deployed. The deploy tasks are listed in the Work Order Task tab.
In the deploy task that's created, the Assignment group and the Assigned to fields are autopopulated with the values that you selected in the Support group and Supported by fields
when you performed the Review assets management activity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1719


<!-- page 1720 -->
Note: You can assign a work order task only to the Enterprise Field Technicians
support group.
◦ Skip the Deployment activity by selecting Skip.
The asset technicians complete the deploy tasks assigned to them. For more information, see
Complete and close the Pick Up task for an enterprise asset and Complete and close a work
order for an enterprise asset.
9. After all the lanes show a status of skipped or complete, select Close Task to complete the
multi-asset onboarding process.
Your assets are successfully onboarded. The onboarding task is completed and the request
and requested item's state changes to Closed Complete.

Managing enterprise asset move orders
You can use move orders to move in-use or consumed enterprise assets from one location to
another.
When you submit a move order, the Enterprise Asset Management application automatically
generates an enterprise move line record for each enterprise asset that you include in the order.
These records enable you to individually track and manage the movement of each enterprise
asset in your move order.
For each enterprise move line record within a move order, you must indicate how you are going
to move the given enterprise asset. You can choose to ship the enterprise asset through a thirdparty shipping carrier or move the enterprise asset locally without shipping it. Based on the
option that you choose, you must complete all subsequent tasks to move the enterprise asset
and update the enterprise move line record with a status of Completed. After every enterprise
move line record within a move order reaches a status of Completed, the move order is marked
as complete.
Submitting an enterprise asset move order
®

You can submit an enterprise asset move order through either the ServiceNow Service Catalog
or the Inventory view of the Enterprise Asset Workspace.
Submit an enterprise asset move order through the Service Catalog
®

Use the ServiceNow Service Catalog to submit a move order so that you can move in-use or
consumed enterprise assets between locations.

Before you begin

Role required: sn_eam.enterprise_asset_manager or end user

Note: The sn_eam.enterprise_asset_manager role can submit move orders for any
enterprise assets within a deployment. The end user role can submit move orders for only
assigned enterprise assets.

Procedure
1. Navigate to All > Service Catalog > Enterprise Asset Lifecycle.
2. From the list of available Enterprise Asset Lifecycle catalog items, select Asset Move Order.
3. On the Catalog item to initiate an asset move order form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1720


<!-- page 1721 -->
Catalog item to initiate an asset move order form
Field

Description

Requested
for

User who the move order is being submitted for. If you specify a user in this
field, the move order can include enterprise assets that are assigned only to
that user.

Assignment Group that you want to assign the move order to.
group
Assigned to User who you want to assign the move order to.
Move date

Date on which you want to move the enterprise assets.

From
location

Location that you want to move the enterprise assets from.

To location

Location that you want to move the enterprise assets to.

Asset(s)

Enterprise assets that you want to include in the move order. You can select
from any of the enterprise assets that reside in the location specified in the
From location field.

Note: If you select an enterprise asset that contains any child assets, all
child assets are also included in the move order.
Notes/
Additional notes or instructions for the move order.
Special
Instructions
4. Select Submit.
Submit an enterprise asset move order through the Asset operations view
Use the Asset operations view of the Enterprise Asset Workspace to submit a move order so that
you can move in-use or consumed enterprise assets between locations.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, navigate to Asset operations > Moves > Move orders.
2. Select New.
3. On the Create new move order form, fill in the fields.
Create new move order form
Field

Description

Requested
for

User who the move order is being submitted for. If you specify a user in this
field, the move order can include enterprise assets that are assigned only to
that user.

Move date

Date on which you want to move the enterprise assets.

Assignment Group that you want to assign the move order to.
group
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1721


<!-- page 1722 -->
Field

Description

Assigned to User who you want to assign the move order to.
From
location

Location that you want to move the enterprise assets from.

To location

Location that you want to move the enterprise assets to.

Additional Additional information about the move order.
information
4. Select Save.
The form closes and you are automatically redirected to the new move order record.

What to do next

Add enterprise assets to the move order. See Add enterprise assets to a move order for detailed
instructions.
Add enterprise assets to a move order
Add the enterprise assets that you want to include in a move order.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, navigate to Asset operations > Moves > Move orders.
2. From the list of available move orders, select the move order that you want to add enterprise
assets to.
The move order record opens.
3. On the move order record, select the Enterprise move lines tab.
4. Select Add.
The Add assets dialog box opens.
5. In the dialog box, select the check box for every enterprise asset that you want to include in
the move order.
You can select from any of the enterprise assets that reside in the location specified in the
From location field of the move order.

Note: If you select an enterprise asset that contains any child assets, all child assets
are also included in the move order.
6. Select Add.

Result

The selected enterprise assets are added to the move order.
Remove enterprise assets from a move order
Remove any enterprise assets that you no longer want to include in a move order.

Before you begin

Role required: sn_eam.enterprise_asset_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1722


<!-- page 1723 -->
Procedure
1. From the Enterprise Asset Workspace, navigate to Asset operations > Moves > Move orders.
2. From the list of available move orders, select the move order that you want to remove
enterprise assets from.
The move order record opens.
3. On the move order record, select the Enterprise move lines tab.
4. From the list of enterprise move lines, select the check box for every enterprise asset that you
want to remove.

Note: Each enterprise move line corresponds with a specific enterprise asset.
Note: If you select an enterprise asset that contains any child assets, all child assets
are also removed from the move order.
5. Select Remove.

Result

The selected enterprise assets are automatically updated with a status of Cancelled. All
enterprise move tasks that are associated with the corresponding enterprise move lines are also
updated with a state of Closed Incomplete.
Completing an enterprise asset move order
After you submit a move order for the in-use or consumed enterprise assets that you want to
move, you must perform various tasks to complete the order.
You must complete the required set of tasks for each enterprise asset that is included in the
move order. After you complete all required tasks for an enterprise asset, the corresponding
enterprise move line updates with a status of Completed. Once all enterprise move lines reach a
status of Completed, the move order is complete.
Complete the Prepare task for a moving enterprise asset
Complete the Prepare task for an enterprise asset so that you can proceed with moving the asset
between locations.

Before you begin

Role required: sn_eam.enterprise_asset_manager, sn_eam.enterprise_admin, or
enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, navigate to Asset operations > Moves > Move orders.
2. From the list of available move orders, select the move order that you want to complete.
The move order record opens.
3. On the move order record, select the Enterprise move lines tab.
4. From the list of available enterprise move lines, select the enterprise move line for the
enterprise asset that you want to move.
The enterprise move line record opens.
5. On the Enterprise move tasks tab, select the task number for the Prepare task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1723


<!-- page 1724 -->
Alternatively, select the task number that is displayed in
the Current task field of the enterprise move line record

header.
The Prepare task opens.
6. On the Details tab of the Prepare task, fill in the fields.
Details tab
Field

Description

Enterprise move task
Assignment Group that the task is assigned to. This field populates automatically based on
group
the group that the entire move order is assigned to.
Assigned to User who the task is assigned to. This field populates automatically based on
the user who the entire move order is assigned to.
Scheduled
date

Date and time at which the task is scheduled to be completed.

Priority

Priority of the task.

Move type

Type of enterprise asset move. Select one of the following options:
◦ Local Move: Option to move the enterprise asset to a different location
without shipping it.
◦ Ship: Option to ship the enterprise asset to a different location.

Notes
Short
Brief description of the task.
description
Description Detailed description of the task.
Work notes Notes about the task that are visible to all users within your organization.
7. Select Close Task.

Result

The Prepare task is automatically updated with a state of Closed Complete.
If you set the Move type field to Local Move, the Enterprise Asset Management application
automatically generates a corresponding Local move task for the enterprise move line. If you
set the Move type field to Ship, the Enterprise Asset Management application automatically
generates a corresponding Ship task for the enterprise move line.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1724


<!-- page 1725 -->
What to do next

If you set the Move type field to Local Move, proceed to Complete the local move for an
enterprise asset to complete the move.
If you set the Move type field to Ship, proceed to Complete the shipment for a moving enterprise
asset to complete the shipment.
Complete the local move for an enterprise asset
Perform all tasks that are required to move an enterprise asset without shipping it. You must
perform these tasks if you set the Move type field to Local Move in an enterprise move line.

Before you begin

Before you can proceed with the local move, you must complete the Prepare task for the
enterprise asset. See Complete the Prepare task for a moving enterprise asset for detailed
instructions.
Role required: sn_eam.enterprise_asset_manager, sn_eam.enterprise_admin, or
enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, navigate to Asset operations > Moves > Move orders.
2. From the list of available move orders, select the move order that you want to complete.
The move order record opens.
3. On the move order record, select the Enterprise move lines tab.
4. From the list of available enterprise move lines, select the enterprise move line for the
enterprise asset that you want to move.
The enterprise move line record opens.
5. Complete and close the Local move task for the enterprise move line.
By default, this Local move task applies only to the enterprise asset that is associated with
the given enterprise move line. If you want to apply the same Local move task to additional
enterprise assets within your move order, you can include those assets in the task.
To successfully complete and close this task, the enterprise asset must be moved to the target
location without being shipped.
a. On the Enterprise move tasks tab, select the task number for the Local move task.
Alternatively, select the task number that is displayed in
the Current task field of the enterprise move line record

header.
The Local move task opens.
b. On the Details tab of the Local move task, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1725


<!-- page 1726 -->
Details tab
Field

Description

Enterprise move task
Assignment Group that the task is assigned to. This field populates automatically based
group
on the group that the entire move order is assigned to.
Assigned to User who the task is assigned to. This field populates automatically based on
the user who the entire move order is assigned to.
Scheduled
date

Date and time at which the task is scheduled to be completed.

Priority

Priority of the task.

Notes
Short
Brief description of the task.
description
Description Detailed description of the task.
Work notes Notes about the task that are visible to all users within your organization.
c. Close the task.
▪ To close the task without including additional enterprise assets from your move order,
select Close Task.
▪ To close the task after including additional enterprise assets from your move order, use the
following steps:
i. Select Include more assets.
The Select assets dialog box opens.
ii. In the dialog box, select the check box for each additional enterprise asset that you want
to include.
iii. Select Close Task.
The Local move task is automatically updated with a state of Closed Complete.

Result

The enterprise move line is automatically updated with a status of Completed.

What to do next

Move all remaining enterprise assets that are included in the move order. After all corresponding
enterprise move lines reach a status of Completed, the move order is complete.
Complete the shipment for a moving enterprise asset
Perform all tasks that are required to ship an enterprise asset. You must perform these tasks if
you set the Move type field to Ship in an enterprise move line.

Before you begin

Before you can proceed with the shipment, you must complete the Prepare task for the
enterprise asset. See Complete the Prepare task for a moving enterprise asset for detailed
instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1726


<!-- page 1727 -->
Role required: sn_eam.enterprise_asset_manager, sn_eam.enterprise_admin, or
enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, navigate to Asset operations > Moves > Move orders.
2. From the list of available move orders, select the move order that you want to complete.
The move order record opens.
3. On the move order record, select the Enterprise move lines tab.
4. From the list of available enterprise move lines, select the enterprise move line for the
enterprise asset that you want to move.
The enterprise move line record opens.
5. Complete and close the Ship task for the enterprise move line.
To successfully complete and close this task, the enterprise asset must be shipped to the
target location.
a. On the Enterprise move tasks tab, select the task number for the Ship task.
Alternatively, select the task number that is displayed in the Current task field of the
enterprise move line record header.
The Ship task opens.
b. On the Details tab of the Ship task, fill in the fields.
Details tab
Field

Description

Enterprise move task
Assignment Group that the task is assigned to. This field populates automatically based
group
on the group that the entire move order is assigned to.
Assigned to User who the task is assigned to. This field populates automatically based on
the user who the entire move order is assigned to.
Scheduled
date

Date and time at which the task is scheduled to be completed.

Priority

Priority of the task.

Shipment details
Shipping
carrier

Shipping carrier through which the enterprise asset was shipped.

Ship date

Date on which the enterprise asset was shipped.

Tracking
number

Tracking number that enables you to track the status and location of the
shipment.

Notes
Short
Brief description of the task.
description
Description Detailed description of the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1727


<!-- page 1728 -->
Field

Description

Work notes Notes about the task that are visible to all users within your organization.
c. Select Close Task.
The Ship task is automatically updated with a state of Closed Complete. The Enterprise Asset
Management application then automatically generates a corresponding Receive task for the
enterprise move line.
6. Complete and close the Receive task for the enterprise move line.
To successfully complete and close this task, the enterprise asset must be received at the
target location.
a. On the Enterprise move tasks tab, select the task number for the Receive task.
Alternatively, select the task number that is displayed in the Current task field of the
enterprise move line record header.
The Receive task opens.
b. On the Details tab of the Receive task, fill in the fields.
Details tab
Field

Description

Enterprise move task
Assignment Group that the task is assigned to. This field populates automatically based
group
on the group that the entire move order is assigned to.
Assigned to User who the task is assigned to. This field populates automatically based on
the user who the entire move order is assigned to.
Scheduled
date

Date and time at which the task is scheduled to be completed.

Priority

Priority of the task.

Notes
Short
Brief description of the task.
description
Description Detailed description of the task.
Work notes Notes about the task that are visible to all users within your organization.
c. Select Close Task.
The Receive task is automatically updated with a state of Closed Complete.

Result

The enterprise move line is automatically updated with a status of Completed.

What to do next

Move all remaining enterprise assets that are included in the move order. After all corresponding
enterprise move lines reach a status of Completed, the move order is complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1728


<!-- page 1729 -->
Managing risks scores in Enterprise Asset Management
Manage risk scores in the Enterprise Asset Management application by creating configuration
values for risk likelihood, risk impact, and risk scores.
Create configuration values for risk likelihood
Use the Risk Likelihood module to create configuration values for the likelihood vector.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > Risk configuration > Risk
likelihood.
2. Select New.
3. Enter a label in the Enterprise Risk Likelihood Configuration page.
The Value field is an incremental field and cannot be edited.
4. Select Submit.
The Display Name field is automatically populated and is a concatenation of the value and the
label. For example, if 1 is the value and Low is the label, the Display Name field appears as 1Low.
5. To add more configuration values, repeat steps 2-4.
There should be a minimum of three likelihood records and a maximum of ten.
6. Select Freeze after you have added the configuration records.
7. Select OK in the warning message box to continue freezing your configuration records.

Note: You cannot add or delete any likelihood configuration records after you select
Freeze. You can however edit the Label field in the existing records.
Create configuration values for risk impact
Use the Risk Impact module to create configuration values for the impact vector.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > Risk configuration > Risk impact.
2. Select New.
3. Enter a label in the Enterprise Risk Impact Configuration page.
The Value field is an incremental field and cannot be edited.
4. Select Submit.
The Display Name field is automatically populated and is a concatenation of the value and the
label. For example, if 1 is the value and Low is the label, the Display Name field appears as 1Low.
5. To add more configuration values, repeat steps 2-4.
There should be a minimum of three impact records and a maximum of ten.
6. Select Freeze after you have added the configuration records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1729


<!-- page 1730 -->
7. Select OK in the warning message box to continue freezing your configuration records.

Note: You cannot add or delete any impact configuration records after you select
Freeze. You can however edit the Label field in the existing records.
Create configuration values for risk scores
Use the Risk Score module to create configuration values for risk score bands.

Before you begin

Before creating configuration values for risk score, ensure that you have added and frozen
configuration value for the two vectors: likelihood and impact in the Risk Likelihood and the Risk
Impact modules, respectively.
Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > Risk configuration > Risk score.
2. Select New.
3. Fill in the form details.
Field

Description

Start

Start value of the risk score band.

End

End value of the risk score band. The value is automatically
populated using the maximum likelihood and impact configu­
ration values.

Label

Label of the risk score band.
Color depicting a risk score band. Following are the values to
choose from:

Color

◦ Green
◦ Yellow
◦ Orange
◦ Red

4. Select Submit.
Based on the other fields, the Band name field is automatically populated.
5. To add more risk score bands, repeat steps 2-4.
There should be a minimum of two score band records and a maximum of four.
6. Select Freeze after you have added the entire risk range.
To edit the records, select Unfreeze.

Onboarding multiple enterprise assets in the Enterprise Asset Workspace
Onboard multiple enterprise assets at one go by creating onboarding orders in the Asset
operations view.
As an enterprise asset technician, you should perform the following actions to initiate the
onboarding of enterprise assets:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1730


<!-- page 1731 -->
1. Create an onboarding order.
2. Add details of the assets that you want to onboard and submit the onboarding order.
The enterprise asset manager reviews and completes the activities listed in the Onboarding
playbook to onboard the requested assets. For details, see Create a multi-asset onboarding
process.
Create an onboarding order for enterprise assets in the Enterprise Asset Workspace
Create an onboarding order in the Asset operations view to initiate the onboarding of multiple
enterprise assets.

Before you begin

Role required: sn_eam.enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Asset operations.
2. From the Onboarding list, select Onboarding order.
3. Select New.
4. On the form, fill in the fields.
Create New Asset Onboarding form
Field

Description

Requested Person for whom the asset is requested.
for
This field is optional.
Stockroom Stockroom where onboarded asset will be stored.
This field is required.

Note: When you select the stockroom, the Location field is automatically
populated with the stockroom location.
Due date

Date by when the asset onboarding should be complete.
This field is optional.

5. Determine whether you want to onboard assets of an existing model or a new model.
Type of asset model

Action

Existing model

In the Model field, select the asset model.
a. Select the Is new model check box.

New model

b. Enter the values in the following fields:
▪ Manufacturer name
▪ Model name

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1731


<!-- page 1732 -->
Type of asset model

Action

▪ Model number
▪ Short description
6. Select Save.

Result
• An onboarding order in the Draft stage is created and displayed in the Onboarding order list.
• The Add asset details option is displayed on the onboarding order.

What to do next

Add asset details to the onboarding order. For details, see Add details of the enterprise assets to
an onboarding order.
Add details of the enterprise assets to an onboarding order
Specify the details of the enterprise assets that you want to onboard through an onboarding
order.

Before you begin

Role required: sn_eam.enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Asset operations.
2. From the Onboarding list, select Onboarding order.
3. Select the onboarding order for which you want to add asset details.
4. Select Add asset details.
5. In the Add assets dialog box, enter the asset details.
The Serial number field is required. You can also enter the values for the following fields:
◦ Asset tag
◦ RFID tag
◦ MAC address
◦ Additional info
6. For each asset that you want to onboard, select the Add Row icon (
details.

) and enter the asset

7. Select OK.
8. Select Save.
The assets that you added to the onboarding order are displayed in the Onboarding Assets
tab.
9. Select Submit.

Result
• The stage of the onboarding order changes to Review.
• A Multi-asset onboarding task is created and displayed in the Onboard Asset Tasks tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1732


<!-- page 1733 -->
Normalizing enterprise models
To standardize enterprise models, the data must be normalized. The normalization process
enables you to normalize your manufacturer, model name, model number, and model type data
of your enterprise models.
If a specific model type, library, or product model is not available in the Enterprise Asset
Management Content Service, you have the option to create a custom enterprise model type,
custom enterprise model library, or custom enterprise product model. If you are using the
Operational Technology (OT) Asset Management application, you also have the options to create
custom United Nations Standard Products and Services Code (UNSPSC) firmware classifications,
custom firmware products, custom firmware versions, and custom firmware mappings for your
Customer Premises Equipment (CPE).
Import and export content data for Enterprise Asset Management
Import and export content data to the ServiceNow Enterprise Asset Management Content
Service to improve the normalization process. On-premise users can use the Manage Enterprise
Library module to import or export data via a zip file.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to All > Modules > Manage Enterprise Library.
2. Open the Manage Enterprise Library form layout and select the Active check box to activate
the module.
3. Select Save and refresh the form layout.
4. Navigate to the Manage Enterprise Library module.
5. Import the content data to get the new data into your system.
a. Select Import Enterprise Library Content.
b. Select Attach Content File and then select the zip file that contains the content.
c. Select Run Import.
After the data is imported, the content update schedule job, EAM - Apply latest
content changes, is triggered to process the content updates.
6. Export content to send the custom data or any enterprise models that are not fully normalized
to the ServiceNow content service team.
a. Select Content Service Opt-in: Export Enterprise Normalization Content.
b. If you already haven't opted in to share the data with ServiceNow content service, select optin and refresh the Manage Enterprise Library page.
For details on opting-in, see Opt-in to Enterprise Asset Management Content Service.
c. Select Run Export.
d. After the status changes to Ready for Download, refresh the page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1733


<!-- page 1734 -->
A zip file is created and appears at the top of the Manage Enterprise Library page. If there is
no content to export, an error message appears informing you that no content exists.
e. Download and send this zip file to the ServiceNow content service team.
Create custom enterprise model type
If you have an enterprise model type that isn't represented in the Enterprise Asset Management
Content Service yet, you can create a custom model type.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to All > Enterprise Asset Workspace > Normalization.
2. Select the Custom enterprise model type tab.
3. Select New.
4. Fill in the form details.

Field

Description

Name

Display name of the enterprise model type.

UNSPSC commodity ID

United Nations Standard Products and
Services Code of the model type.

Description

A detailed description of the enterprise
model type.

Active

Indicates that the model is active.

5. Select Save.
After the model type is created, normalize the model type.
Create custom enterprise model library
If you have an enterprise model library that isn't represented in the Enterprise Asset
Management Content Service yet, you can create a custom model library.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to All > Enterprise Asset Workspace > Normalization.
2. Select the Custom enterprise model libraries tab.
3. Select New.
4. Fill in the form details.

Field

Description

Model number

Assign a number to the model.

Model name

Name of the model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1734


<!-- page 1735 -->
Field

Description

Description

A detailed description of the model.

Active

Indicates that the model is active.

Exclude from content service

Option that excludes the model library details
from being transferred to the Enterprise Asset
Management Content Service even though
you opted-in.

5. Select Save.
After the model library is created, normalize the model library.
Create custom enterprise product models
If you have a product model that is not represented in the Enterprise Asset Management Content
Service yet, you can create a custom product model.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to All > Enterprise Asset Workspace > Normalization.
2. Select the Custom enterprise product models tab.
3. Select New.
4. Fill in the form details.

Field

Description

Model Name

Name of the enterprise product model.

Manufacturer

Name of the manufacturer of the enterprise
product model.

Model type

The model type.

Description

A detailed description of the product model.

Active

Indicates that the model is active.

Exclude from content service

Option that excludes the product model
details from being transferred to the
Enterprise Asset Management Content
Service even though you opted-in.

5. Select Save.
After the product model is created, normalize the product model.
Revert normalization
You can revert the normalization of enterprise models in the Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.enterprise_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1735


<!-- page 1736 -->
About this task

Enterprise models with a status of Fully Normalized, Partially Normalized, Manufacturer
Normalized, or Manually Normalized can be reverted. All the normalized fields present in the
model are reverted and the normalization status changes to Match not Found.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Enterprise model management.
2. Open an enterprise model record that is already normalized.
3. Select Revert Normalization.
4. Select OK on the confirmation message box.
Once the revert normalization process is complete, the following changes take place:
◦ fields are reset to their original values and any rule associated with the enterprise model is
deactivated.
◦ After deactivation of the rule, revert normalization is run on all models that were normalized
using that rule before.
◦ The deactivated rule can no longer normalize any more models. The deactivated rule can't
be reactivated. It is a one time procedure.
◦ The Revert Normalization option on the model record is replaced with the Normalize option.

Normalizing firmware for operational technology (OT) assets
To standardize the publisher, product, and version of the firmware that is embedded into your OT
assets, you must normalize the corresponding data in the associated firmware discovery models.
By standardizing this information, you can track and manage your firmware more accurately and
efficiently.

Note: You can standardize this information only in the OT Asset Management application.
See OT Asset Management for more information on the application.
®

To begin standardizing this information, you must use a discovery tool, such as the ServiceNow
Discovery application, to discover all firmware installations across your OT asset deployment.
Each discovered firmware installation is associated with a corresponding firmware discovery
model, which provides information about the discovered firmware publisher, discovered firmware
product, and discovered firmware version. After the discovery process is complete, normalization
runs on the associated firmware discovery models, matching the discovered firmware publishers,
discovered firmware products, and discovered firmware versions against normalized equivalents
in the Enterprise Asset Management Content Library. Each discovered firmware installation is
then updated with a firmware model containing the normalized firmware publisher, firmware
product, and firmware version that best match the associated firmware discovery model.
If a specific United Nations Standard Products and Services Code (UNSPSC) firmware
classification, firmware product, firmware version, or Customer Premises Equipment (CPE)
firmware mapping is not available in the Enterprise Asset Management Content Library, you can
create a custom UNSPSC firmware classification, custom firmware product, custom firmware
version, or custom CPE firmware mapping.
Import and export content data for firmware in your operational technology (OT) assets
Import and export content data for firmware that is embedded into your on-premise OT assets.
Share this data with the Content Service team so that you can help improve the normalization
process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1736


<!-- page 1737 -->
Before you begin

Important: You can import and export this firmware content data only the in OT Asset
Workspace. To use the OT Asset Workspace, install the OT Asset Management application
on your ServiceNow instance. See Install OT Asset Management for detailed instructions.

Important: To import and export this firmware content data, set the

sn_itam_common.onprem_content_import_export system property to true
on your ServiceNow instance. In addition, opt in to the Enterprise Asset Management
Content Service and verify that the Custom Firmware Models KPI is enabled. See Opt-in to
Enterprise Asset Management Content Service for detailed instructions.
Role required: sn_otam.ot_asset_manager

Procedure
1. Navigate to All > OT Asset Workspace > Admin center.
2. Import firmware content data onto your ServiceNow instance.
a. From the navigation menu of the Admin center view, navigate to Manage library > Import
firmware content.
b. Select the Attachments icon ( ) on the sidebar of the Import page.
c. In the Attachments window, select Select a file.
d. When prompted, search for and select the zip file that contains your firmware content data.
e. In the Upload a file dialog box, select Upload.
f. After the dialog box closes, select Run Import on the Import page.
After the content data is successfully imported, the OT Asset Management application
automatically triggers the EAM - Apply latest content changes scheduled job
to process any corresponding content updates, which you can then use to normalize your
firmware.
3. Export firmware content data from your ServiceNow instance.
By exporting your firmware content data, you can share any custom or partially normalized
firmware with the Content Service team. In addition, you can share data for your firmware
versions, firmware models, and firmware life cycles.
a. From the navigation menu of the Admin center view, navigate to Manage library > Export
firmware content.
b. Select Run Export.
The OT Asset Management application compresses all of your firmware content data into a
single zip file. When the zip file is ready for download, the page automatically reloads.
c. Select the Attachments icon ( ) on the sidebar of the Export page.
d. In the Attachments window, select the Actions icon ( ) for the zip file that you want to
download.
e. Download the zip file and then send it to the Content Service team.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1737


<!-- page 1738 -->
Create a custom United Nations Standard Products and Services Code (UNSPSC)
classification for firmware in your operational technology (OT) assets
If the UNSPSC classification for any firmware that is embedded into your OT assets isn't already
represented in the Enterprise Asset Management Content Service, create a custom UNSPSC
classification.

Before you begin

Important: You can create custom UNSPSC classifications only using the OT Asset
Workspace. To use the OT Asset Workspace, install the OT Asset Management application
on your ServiceNow instance. See Install OT Asset Management for detailed instructions.

Role required: sn_eam.enterprise_admin

About this task

The UNSPSC is a global multi-sector standard for classifying products and services. It
encompasses a five-level hierarchical codeset that enables you to classify products and
services at grouping levels relevant to your needs. You can use the UNSPSC to classify the
firmware that is embedded into your industrial- and hardware-based OT assets.

Procedure
1. Navigate to All > OT Asset Workspace > Normalization.
2. Select the Custom firmware UNSPSC tab.
3. Select New.
4. On the form, fill in the fields.
Create New Custom UNSPSC firmware classification form
Field

Description

UNSPSC
commodity ID

Eight-digit numeric code that identifies the firmware that is embedded into
your OT assets.

UNSPSC title

Title of the UNSPSC classification.

UNSPSC
description

Description of the UNSPSC classification.

Active

Option that indicates if the UNSPSC classification is active.

Exclude from
content service

Option that excludes the UNSPSC classification from being shared with
the Enterprise Asset Management Content Service.

5. Select Save.
Create a custom firmware product for your operational technology (OT) assets
If the firmware product that is embedded into your OT assets isn't already represented in the
Enterprise Asset Management Content Service, create a custom firmware product.

Before you begin

Important: You can create custom firmware products only using the OT Asset
Workspace. To use the OT Asset Workspace, install the OT Asset Management application
on your ServiceNow instance. See Install OT Asset Management for detailed instructions.

Role required: sn_eam.enterprise_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1738


<!-- page 1739 -->
Procedure
1. Navigate to All > OT Asset Workspace > Normalization.
2. Select the Custom firmware products tab.
3. Select New.
4. On the form, fill in the fields.
Create New Custom firmware product form
Field

Description

Manufacturer

Manufacturer of the firmware product.

Product

Name of the firmware product.

UNSPSC
classification

Eight-digit numeric code that identifies the firmware product.

Description

Description of the firmware product.

Active

Option that indicates if the firmware product is active.

Exclude from
content service

Option that excludes the firmware product from being shared with the
Enterprise Asset Management Content Service.

5. Select Save.

Result

The custom firmware product is created. If any existing firmware publisher uses the same
manufacturer as the custom firmware product, the Enterprise Asset Management application
automatically associates that firmware publisher with the custom firmware product. Otherwise,
the Enterprise Asset Management application creates a custom firmware publisher to associate
with the custom firmware product.
Create a custom firmware version for your operational technology (OT) assets
If the version of the firmware that is embedded into your OT assets isn't already represented in
the Enterprise Asset Management Content Service, create a custom firmware version.

Before you begin

Important: You can create custom firmware versions only using the OT Asset
Workspace. To use the OT Asset Workspace, install the OT Asset Management application
on your ServiceNow instance. See Install OT Asset Management for detailed instructions.

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to All > OT Asset Workspace > Normalization.
2. Select the Custom firmware versions tab.
3. Select New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1739


<!-- page 1740 -->
Create New Custom firmware product version form
Field

Description

Version

Firmware version.

Product

Firmware product that the firmware version applies to.

Next version
available

Option that indicates if the next firmware version is currently available.

Active

Option that indicates if the firmware version is active.

Exclude from
content service

Option that excludes the firmware version from being shared with the
Enterprise Asset Management Content Service.

5. Select Save.
View firmware models discovered on your Operational Technology (OT) assets
Get the details of all the firmware models that the discovery tool discovered on your Operational
Technology (OT) assets.

Before you begin

Important: The OT Asset Management application must be activated to access the OT
Asset Workspace. For details, see Install OT Asset Management.

Role required: sn_otam.ot_asset_manager

About this task

The Discovered firmware model [sn_ent_discov_firmware_model] table stores the details of the
firmware models discovered on your OT assets.

Procedure
1. Navigate to Workspaces > OT Asset Workspace > OT model management.
2. Select the Firmware discovered tab.
The list of all the installed firmware models that are discovered is shown with the following
details:
◦ Discovered manufacturer: Name of the firmware manufacturer.
◦ Discovered model: Firmware model that's discovered on the OT asset.
◦ Discovered model number: Model number of the discovered firmware model.
◦ Discovered version: Version number of the discovered firmware model.
◦ Normalization status: Status of discovered firmware model normalization. This field can
have one of the following values:
▪ New: The discovered firmware model has not yet run-through the normalization process.
▪ Match not found: The normalization process couldn’t match any of the fields of the
discovered firmware model. This status could also occur when a normalization rule doesn’t
exist for the firmware model.
▪ Manually normalized: Firmware model is normalized manually.
▪ Normalized: The discovered firmware model is normalized by the background job, and
a firmware model is created in the Firmware model [sn_ent_firmware_model] table. A
firmware model is normalized only when the publisher, product, model, model number,
and version are available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1740


<!-- page 1741 -->
▪ Partially normalized: The normalization process could at least match the product value.
▪ Publisher normalized: The normalization process could only match the publisher value.
◦ Normalized firmware model: Firmware model that's created after the discovered firmware
model is normalized.

Important: A firmware model is created only when the discovered firmware model
is either normalized or manually normalized by specifying the product and version
details.
◦ Updated: Date and time when the discovered firmware model was last updated.
3. Select a record to view the details.
The form displays the information related to the discovered firmware model in the Details and
the Normalization sections.
Create a custom Common Platform Enumeration (CPE) mapping for firmware in your
operational technology (OT) assets
If the CPE mapping for firmware that is embedded into your OT assets isn't already represented
in the Enterprise Asset Management Content Service, create a custom CPE mapping.

Before you begin

Important: You can create custom CPE mappings only using the OT Asset Workspace.
To use the OT Asset Workspace, install the OT Asset Management application on your
ServiceNow instance. See Install OT Asset Management for detailed instructions.

Role required: sn_eam.enterprise_admin

About this task

CPE is a standardized naming scheme that enables you to map your information technology
(IT) systems, software, and packages to corresponding vulnerability management data in the
National Vulnerability Database (NVD). You can use these mappings to identify and mitigate
potential vulnerabilities across your IT infrastructure. All official CPE names are listed in the CPE
Product Dictionary, which is hosted and maintained by the National Institute of Standards and
Technology (NIST).

Procedure
1. Navigate to All > OT Asset Workspace > Normalization.
2. Select the Custom firmware CPE tab.
3. Select New.
4. On the form, fill in the fields.
Create New Custom firmware CPE mapping form
Field

Description

Firmware
product

Firmware product that you want to map to vulnerability management data in
the NVD.

Firmware
version

Version of the firmware product that you want to map to vulnerability
management data in the NVD.

CPE
publisher

Publisher of the firmware product, as listed in the CPE Product Dictionary.

CPE product

Name of the firmware product, as listed in the CPE Product Dictionary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1741


<!-- page 1742 -->
Field

Description

CPE version

Version of the firmware product, as listed in the CPE Product Dictionary.

5. Select Save.
Create a firmware model for the firmware embedded into your Operational Technology (OT)
assets
Create a firmware model for the firmware that's embedded into your OT assets if the model isn't
already represented in the Enterprise Asset Management Content Service.

Before you begin

Important: The OT Asset Management application must be activated to access the OT
Asset Workspace. For details, see Install OT Asset Management.

The firmware product and the firmware version details should be available in the Enterprise
Asset Management Content Service. If not, you can also create the firmware product and the
firmware version for your firmware model. For more details, see Create a custom firmware
product for your operational technology (OT) assets and Create a custom firmware version for
your operational technology (OT) assets.
Role required: sn_otam.ot_asset_manager

Procedure
1. Navigate to Workspaces > OT Asset Workspace > OT Model Management.
2. Select the Firmware tab.
3. Select New.
4. On the form, fill in the fields.
Create New Firmware model form
Field

Description

Display
name

Name of the firmware model. This field is populated automatically with a value
that's based on the Publisher, Product, and Version fields.

Publisher

Manufacturer of the firmware model.

Product

Name of the firmware product. This field is required.

Version

Version of the firmware.This field is required.

Next
version
available

Option that indicates if the next firmware version is available.

Manually
created

Option that indicates that the firmware version is created manually. The check
box is automatically selected.

5. Select Save.

Result
• A firmware model is created and listed in the Firmware tab.
• The firmware model record displays the following related lists:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1742


<!-- page 1743 -->
◦ Discovered firmware
◦ Firmware installations
◦ Firmware model lifecycles
◦ Knowledge
• The lifecycle phases associated with the firmware model are listed in Firmware model
lifecycles tab only if that firmware version has lifecycles defined in the Firmware lifecycle
definition [sn_itam_firmware_lifecycle_def] table.
Normalize the firmware embedded into your Operational Technology (OT) assets manually
Standardize the publisher, product, and version details of the firmware that is embedded into
your OT assets by normalizing the discovered firmware models manually.

Before you begin

Important: The OT Asset Management application must be activated to access the OT
Asset Workspace. For details, see Install OT Asset Management.

The firmware product and the firmware version details of the discovered firmware model that you
want to normalize should be available in the Enterprise Asset Management Content Service. If
not, you can also create the firmware product and the firmware version for your firmware model.
For more details, see Create a custom firmware product for your operational technology (OT)
assets and Create a custom firmware version for your operational technology (OT) assets.
Role required: sn_otam.ot_asset_manager

Procedure
1. Navigate to Workspaces > OT Asset Workspace > OT model management.
2. Select the Firmware discovered tab.
3. Select the discovered firmware model that you want to normalize.
4. On the form, fill in the details in the Normalization section.
Normalization section
Field

Description

Normalized
publisher

Name of the firmware manufacturer.

Normalized
product

Name of the firmware product.

Normalized
version

Version of the discovered firmware.

Exclude from
content service

Option that excludes the firmware model details from being shared with
the Enterprise Asset Management Content Service.

5. Select Save.

Result

The Normalization status changes to Manually Normalized.
Revert normalization of firmware models
Revert the normalization of firmware models in the OT Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1743


<!-- page 1744 -->
Before you begin

Important: The OT Asset Management application must be activated to access the OT
Asset Workspace. For details, see Install OT Asset Management.

Role required: sn_otam.ot_asset_manager

About this task

Normalization of firmware models with a Normalization status of Normalized, Partially
normalized, Publisher normalized, or Manually normalized can be reverted.

Procedure
1. Navigate to Workspaces > OT Asset Workspace > OT model management.
2. Select the Firmware discovered tab.
3. Select the normalized discovered firmware model for which you want to revert normalization.
4. Select Revert Normalization.

Result

After the revert normalization process is complete, the following changes take place:
• All the normalized fields present in the firmware model are reverted and the normalization
status changes to Match not found.
• The normalization rule associated with the firmware model gets deactivated. The deactivated
rule can no longer normalize any more firmware models. The deactivated rule can't be
reactivated. It’s a one-time procedure.
• After deactivation of the normalization rule, revert normalization is run on all models that were
normalized using that rule earlier.
• The Revert Normalization option on the model record is replaced with the Normalize option.
Create knowledge articles for firmware models
Attach helpful and relevant knowledge articles to the firmware model in the OT Asset Workspace.

Before you begin

Important: The OT Asset Management application must be activated to access the OT
Asset Workspace. For details, see Install OT Asset Management.

Role required: sn_otam.ot_asset_manager

Procedure
1. Navigate to Workspaces > OT Asset Workspace > OT Model Management.
2. Select the Firmware tab.
3. Select the firmware model for which you want to attach the knowledge article.
4. Select the Knowledge tab.
5. Select New.
6. On the Create New Knowledge form, select the knowledge article that you want to add in the
Knowledge field.
7. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1744


<!-- page 1745 -->
Related topics
Create a knowledge article for Enterprise Asset Management
Knowledge Management
Create life-cycle definitions for your firmware models
Manage the complete life cycle of firmware models by adding life-cycle information in the OT
Asset Workspace.

Before you begin

Important: The OT Asset Management application must be activated to access the OT
Asset Workspace. For details, see Install OT Asset Management.

Role required: sn_otam.ot_asset_manager

About this task

Note: If the life-cycle phases of your firmware version are defined in the Enterprise Asset
Management Content Service, then the life-cycle phase details are automatically populated
for that firmware model record.

Procedure
1. Navigate to Workspaces > OT Asset Workspace > OT model management.
2. Select the Firmware tab.
3. Select the firmware model for which you want to add life-cycle details.
4. Select the Firmware model lifecycles tab.
5. Select New.
6. On the form, fill in the fields.
Create New Firmware model lifecyle form
Field

Description

Model

Name of the model. This field is read only.

Lifecycle
type

Type of life cycle. The available values are:
◦ Internal

Note: For the Internal life-cycle type, the life-cycle information isn't
shared with your ServiceNow instance during the reverse push.
◦ Publisher
Lifecycle
phase

Phase of the life cycle. The available values are:
◦ General availability
◦ End of sale
◦ End of support
◦ End of extended support
◦ End of life

Source

Source of the firmware model.

Risk

Risk associated with the life cycle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1745


<!-- page 1746 -->
Field

Description

Description

Description of the firmware model.

Phase start
date

Start date of the life-cycle phase. This field is required.

Phase end
date

End date of the life-cycle phase.

Current
lifecycle
phase

Option that indicates if it’s the current life cycle of the firmware model.

Active

Option that indicates if the firmware model life cycle is active.

7. Select Save.

Result

The life-cyle phase is listed in the Firmware model lifecycles tab.

Create a knowledge article for Enterprise Asset Management
Create and edit knowledge articles within a knowledge base to share information across your
organization.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. Navigate to Enterprise Asset Workspace > Admin center > Asset knowledge base.
2. Select New in the Asset knowledge base page.
3. On the form, fill in the fields.
For detailed information on the fields, refer to the Knowledge Management

application

Field

Description

Number

Number of the article. This field is automatical­
ly populated.
The knowledge base selected for the article.
Enterprise Asset Knowledge Base is selected
by default. You can select a different knowl­
edge base if you want to.

Knowledge base

Note: An article can only be associat­
ed with one knowledge base. You can
change the knowledge base, but only if
the selected article template is available
in the knowledge base.

Category

The category for this article. Select a Knowl­
edge base before you can select a catego­
ry. Articles without a category appear on the
knowledge homepage in the (empty) catego­
ry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1746


<!-- page 1747 -->
Field

Description

The date this knowledge article expires. Arti­
cles don’t appear in search results after the
Valid to date or if the Valid to date is empty.
The default value of the this field is derived
from the Article Validity field configured for
the knowledge base. The Valid to date starts
from the date that the article was created un­
til the number of days specified in the Arti­
cle Validity field. If the Article Validity field
is empty, the default date in the Valid to field
for the knowledge article is set to January 1,
2100.
Valid to

An article author or editor can select whether
to keep or change the default Valid to date.
On the first day of each month, the applica­
tion sends an email notification to a list of au­
thorized recipients to remind them about arti­
cles that are expire in the next month. The re­
cipient can then extend the Valid to date to
continue using the article.

Note: If the system date format or user
preferences is set to use yy year format,
you might face issues when the Valid to
date is set to the default date. Contact
your administrator or modify the user
preferences to use a date format with
the yyyy year format.
Article type

The type of article, either HTML or wiki.

Workflow

The publication state of the article, such as
Draft, In Review, or Published. When inserting
a new article from an existing article, the state
of the new article is reset to Draft.

Source task

The task this knowledge article was created
in response to, if any. This field is set automat­
ically when you create the knowledge article
from a task record.

Attachment link

Option for downloading an attached file auto­
matically when a user accesses the article, in­
stead of opening the article view. Add one or
more attachments to the article to use this op­
tion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1747


<!-- page 1748 -->
Field

Description

Note: You may attach multiple files,
but most web browsers permit users to
download only the first one. To ensure
download of all the files, bundle them in­
to an archive, such as with WinZip, and
attach the archive. The Attachment link
option applies to articles accessed from
search links only. Articles accessed as
links within other knowledge articles
won’t replicate this behavior.

Display attachments

Option for displaying attachments to users
viewing this knowledge article. Attachments
appear below the article text. Add one or
more attachments to the article to use this op­
tion.

Short Description

The title of the article. This title appears when
browsing and searching for a knowledge arti­
cle, and at the top of the article. You can enter
up to 100 characters in this field.

Article body

Content for the article. A preview of the con­
tent appears when browsing and searching
for a knowledge article.
Use the editing functions in the HTML editor
to create content.

4. Select Save to create the article.

Managing incidents in Enterprise Asset Management
Incident managers or users with the itil role configure the Enterprise Asset Management
application by creating, updating, and resolving IT incidents for enterprise assets.
Create an Enterprise Asset Management incident
Create an incident record to document a deviation from an expected Enterprise Asset
Management standard of operation.

Before you begin
Role required: itil

To create an Enterprise Asset Management incident record, you must install all applicable
Incident Management plugins on your ServiceNow instance. See Incident Management plugins
for the complete list of Incident Management plugins.

About this task

This procedure describes how an ITIL agent must complete an incident form to document and
track an Enterprise Asset Management incident. Refer to Incident Management
for more indepth information on creating and managing incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1748


<!-- page 1749 -->
Procedure
1. Create an incident .
After your incident is created, you are automatically redirected to the Incidents list.
2. From the list of available incidents, select the incident that you created in the previous step.
3. On the form header of your incident record, select the Additional actions menu icon ( ) and
then select View > Enterprise Asset.
This option sets your incident record to the Enterprise Asset Management incident form view,
which contains additional fields that are specific to Enterprise Asset Management.
4. After the form reloads in the Enterprise Asset Management incident form view, specify the
asset that is affected by this incident.
a. Select the Lookup using list icon ( ) in the Asset field.
b. In the Assets pop-up window, search for and select the asset that is affected by this incident.
The pop-up window closes and you automatically return to the Incident form.
c. On the form header, select the Additional actions menu icon (

) and then select Save.

When the form reloads, the Configuration item field and Affected Assets related list update
automatically based on the asset that you selected.

Note: The Configuration item field remains empty if you select a consumable asset.
Important: If you select a multi-component asset, the Affected Assets related list
displays only the parent asset. You must manually add each child asset that is affected by
this incident. See step 5 for more details.
5. If you selected a multi-component asset in the previous step, specify the child assets that are
affected by this incident.
a. On the Affected Assets related list, select Edit.
b. In the Collection list on the Edit Members form, search for and select a child asset that is
affected by this incident.

Note: By default, the Edit Members form automatically runs a search filter to display
only the relevant child assets in the Collection list.
c. Select the Add icon (

) to move the selected child asset to the Affected Assets List.

d. Repeat steps b and c for each child asset that is affected by this incident.
e. Select Save.
f. After you return to the Incident form, select Update.

What to do next

Resolve and close your incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1749


<!-- page 1750 -->
Resolve and close an Enterprise Asset Management incident
Take action on the assets that are affected by an Enterprise Asset Management incident so that
you can resolve and close the incident.

Before you begin
Role required: itil

Procedure
1. Navigate to All > Incident > All.
2. From the list of available incidents, select the Enterprise Asset Management incident that you
want to resolve and close.
3. Specify what actions you want to take on the assets that are affected by the incident.
a. On the Incident form, select the Affected Assets related list.
b. From the list of affected assets, double-click the Asset action field for the asset that you
want to take action on.
c. When prompted, select the action that you want to take on the asset.
d. Select the Save icon (

).

e. If you choose to swap the asset, specify the asset that you are swapping the existing asset
with.
i. Double-click the corresponding Swapped Asset field.
ii. When prompted, select the Lookup using list icon ( ) to search for and select the asset
that you want to swap the existing asset with.
iii. Select the Save icon (

).

f. If you are taking action on a consumable asset, specify the number of available assets that
you want to take action on.
You can take action on all available assets or only a portion of the available assets.
i. Double-click the corresponding Consumable Quantity field.
ii. When prompted, enter the number of available assets that you want to take action on.
iii. Select the Save icon (

).

Important: The Consumable Quantity field does not display the updated value
automatically. To view the updated value, Refresh the Affected Assets related list.

4. Based on the actions that you specified in the previous step, update/repair, swap, retire, or
take no action on the affected assets.
5. After you have completed taking all necessary actions on the affected assets, provide details
about how the incident has been resolved.
a. Return to your Incident form.
b. On the Resolution Information tab, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1750


<!-- page 1751 -->
Resolution Information tab
Field

Description

Knowledge

Option to automatically create a knowledge article upon incident
closure.

Resolution code Resolution category that specifies how the incident was resolved.
Resolution
notes

Description of how the incident was resolved.

Resolved by

User who resolved the incident.

Resolved

Date and time at which the incident was resolved.

6. On the form header, select Resolve.
The incident is moved to the Resolved state, and you are automatically redirected to the
Incidents list. If the asset has any child assets and was in a retired status as indicated in the
Asset action box, the child assets will be released depending on the kind of asset.
Release of child assets based on type of asset in retired state
Type of asset

Action

Simple

No action

Simple with add-on

All child assets are released to the pending
disposal state.

User-assembled

All child assets are released to the pending
disposal state.

User-assembled with add-on

All child assets are released to the pending
disposal state.

Pre-assembled

No action

Pre-assembled with add-on

All add-on assets are released to the pending
disposal state.

The incident is moved to the Resolved state, and you are automatically redirected to the
Incidents list.
7. From the list of available incidents, select the incident that you just resolved.
8. On the form header, select Close Incident.
The incident is closed.

Managing enterprise asset inventory and contracts
Create and manage your enterprise asset inventory and contracts.

Overview of managing enterprise inventory and contracts
Create and manage your enterprise asset inventory and contracts by performing the following
tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1751


<!-- page 1752 -->
Task

Role required

Create and view stockrooms

Resources

• Create stockroom for
enterprise assets
• View stockroom details
in the Enterprise Asset
Workspace

Manage asset picking within
your stockroom

Manage enterprise
asset picking within your
stockrooms

Audit enterprise asset
inventory

Audit enterprise asset
inventory

Create a disposal or a transfer
order

• Create a disposal order
in the Enterprise Asset
Workspace
• Create a transfer order in
Enterprise Asset Workspace

Request a loaner asset

Request a loaner asset in
Enterprise Asset Workspace

Request a RMA for defective
assets

Requesting a Return
Merchandise Authorization
(RMA) for defective enterprise
assets

Manage recalled enterprise
assets

Managing recalled enterprise
assets

Close an enterprise asset
reclamation request

Close an enterprise asset
reclamation request

Manage repair of defective
assets

Manage repair of defective
assets in your stockroom
in the Enterprise Asset
Workspace

Create contracts for leased
enterprise assets

Create a contract for your
leased enterprise assets

Manage expiring contracts

Managing expiring contracts
for leased enterprise assets

• Create a stockroom and assign assets to the stockroom
• Create a custom stock rule to automatically resupply a stockroom with an asset
• Create a transfer order to transfer assets from one location to the other.
• Create a disposal order for assets that have reached the end of their life or are no longer
functional.
Create stockrooms to assign assets to the stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1752


<!-- page 1753 -->
Create and manage enterprise asset inventory
Keep track of your enterprise assets by efficiently managing inventory.
You can create various types of contracts for your enterprise assets, including lease, insurance,
maintenance, warranty, purchase agreement, non-disclosure, terms & conditions, service,
purchase order, software license, and subscription contracts.
Contracts are legally binding agreements that define mutual obligations between two or more
parties. These obligations can include the contract start and end dates, terms and conditions,
renewal information, financial terms, and covered users or assets.
For details on how to create insurance, maintenance, warranty, purchase agreement, nondisclosure, terms & conditions, and service contracts for your enterprise assets, see Create a
contract. For details on how to create contracts for your leased enterprise assets, see Create a
contract for your leased enterprise assets.
Create stockroom for enterprise assets
Create a stockroom in the Enterprise Asset Management application and assign assets to it.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterptrise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Inventory > All stockrooms.
2. Select New.
The Create New Stockroom page opens.
3. On the form, fill in the fields.

Field

Description

Name

Display name and identifier of the stockroom.

Assignment group

Group that primarily uses the stockroom.

Manager

Person in charge of the stockroom. Receives
restocking notifications and requests for the
stockroom's stock rules.

Location

Physical location of the stockroom.

Type

Type of stockroom. Choose from the following
options:
◦ Central Warehouse
◦ Field Agent
◦ FSL
◦ On site
◦ PUDO
◦ Warehouse

Hours of operation

Hours during which the stockroom operates.

Description

Description of the stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1753


<!-- page 1754 -->
Field

Description

Exclude from distribution channels

Option to exclude the stockroom from all
stockroom distribution channels, which link
stockrooms together for more efficient asset
sourcing and transfers.

Exclude from service locations

Option to exclude the stockroom from all
service locations in which you are completing
work orders or work order tasks.

External

Indicates if this stockroom is managed
internally (check box is cleared) or is
managed externally by a third party (check
box is selected).

4. Select Save.
The newly created stockroom appears in the All stockrooms tab.
Add a distribution channel to a stockroom in the Enterprise Asset Workspace
Add a distribution channel to a stockroom so that you can link that stockroom with other
geographically-related stockrooms. By linking your stockrooms, you can efficiently source and
transfer assets between those stockrooms. You can also assign a rank to each linked stockroom
to specify the order of stockrooms that you can source and transfer assets between.

Before you begin

Role required: sn_eam.enterprise_admin

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. On the All stockrooms tab, select the stockroom that you want to add a distribution channel to.
The stockroom record opens.
3. On the Distribution Channel tab of the stockroom record, select New.
4. On the form, fill in the fields.
Create New Stockroom Distribution Channel form
Field

Description

Channel
Stockroom that you want to link as part of the distribution channel.
Stockroom
Rank

Rank of the stockroom that you want to link. If the distribution channel contains
more than one linked stockroom, this rank corresponds directly with the order
of linked stockrooms that you can source and transfer assets between. Enter a
numerical value, such as 1 or 5. The lower the numerical value is, the higher the
stockroom is within the order of linked stockrooms.

Active

Option that indicates if the linked stockroom is active within the distribution
channel.

5. Select Save.
6. Repeat steps 3 to 5 for each stockroom that you want to link as part of the distribution channel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1754


<!-- page 1755 -->
Add service locations to a stockroom in the Enterprise Asset Workspace
Add service locations to a stockroom so that you can source, deploy, and retire its assets across
multiple geographic locations.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

By default, you can source, deploy, and retire the assets of a stockroom only within the specified
stockroom location. By adding additional service locations to a stockroom, you can source,
deploy, and retire its assets across various locations.

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. On the All stockrooms tab, select the stockroom that you want to add service locations to.
The stockroom record opens.
3. On the Service locations tab of the stockroom record, select Add.
The Add service locations dialog box opens.
4. In the dialog box, select the check box for every service location that you want to add to the
stockroom.
5. Select Add.
View stockroom details in the Enterprise Asset Workspace
Use stockroom records to view detailed information about the stockrooms that your enterprise,
hardware, consumable, bundle, loaner, and other assets reside in.

Before you begin

The following stockroom record tabs are available only if you've installed and activated the
®
Hardware Asset Management application on your ServiceNow instance:
• Hardware
• Bundles
• Software Licenses
• Other Assets
• Hardware Loaner Pool
• Hardware Asset Audits
To install and activate the application, request it from the ServiceNow Store

.

Role required: sn_eam.enterprise_admin, sn_eam.enterptrise_asset_manager, or
enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the All stockrooms tab.
3. From the list of available stockrooms, select the stockroom for which you want to view
additional details.
The stockroom record opens.
4. Use the stockroom record tabs to view additional details about the stockroom.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1755


<!-- page 1756 -->
Stockroom record tabs
Tab

Description

Details

Get a detailed overview of the stockroom, including open stockroom
tasks and general stockroom details.
The Open stockroom tasks cards show all open orders, audits, and
requests that are associated with the stockroom. Select a card to
view the list of corresponding order, audit, or request records. If you
select a card for any open Hardware Asset Management orders,
audits, or requests, the list opens in the Hardware Asset Workspace.
In addition, use the interactive map to view the location of the
stockroom based on the specified stockroom address. Expand the
map to view all supported service locations and all stockrooms that
are linked as part of the stockroom distribution channel.

Task Timeline

View the timeline of all stockroom tasks. Each stockroom task
is added to the timeline based on either the creation date, the
scheduled date, the start or return date, or the shipping date.
Select a task to open the corresponding task record. If you select
a Hardware Asset Management task, the record opens in the
Hardware Asset Workspace.
Use the timeline format filter at the top-right corner of the tab to
change the format and duration in which you view the timeline. You
can choose to view the timeline in a calendar format or timeline
format. The calendar format supports the following timeline
durations:
◦ Day
◦ Work Week
◦ Week
◦ Month
The timeline format supports the following timeline durations:
◦ Day
◦ Week
◦ 4 Weeks

Hardware

Note: This
tab appears
only if you have
installed and
activated the
Hardware Asset
Management
application.
Enterprise Assets

Create and view the hardware assets that reside in the stockroom.
If you are creating a hardware asset, you are automatically redirected
to the corresponding form in the Hardware Asset Workspace.

Create and view the enterprise assets that reside in the stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1756


<!-- page 1757 -->
Tab

Description

Consumables

Create and view the consumable assets that reside in the
stockroom.

Bundles

Note: This
tab appears
only if you have
installed and
activated the
Hardware Asset
Management
application.
Pallets
Software Licenses

Note: This
tab appears
only if you have
installed and
activated the
Hardware Asset
Management
application.
Other Assets

Note: This
tab appears
only if you have
installed and
activated the
Hardware Asset
Management
application.
Hardware Loaner Pool

Note: This
tab appears
only if you have
installed and
activated the
Hardware Asset
Management
application.

Create and view the asset bundles that reside in the stockroom.
If you are creating an asset bundle or selecting an existing asset
bundle, you are automatically redirected to the corresponding form
or record in the Hardware Asset Workspace.

Create and view the pallet assets that reside in the stockroom.
Create and view the software licenses that reside in the stockroom.
If you are creating a software license or selecting an existing
software license, you are automatically redirected to the
corresponding form or record in the Hardware Asset Workspace.

Create and view all other types of assets that reside in the
stockroom.
If you are creating an asset, you are automatically redirected to the
corresponding form in the Hardware Asset Workspace.

View all hardware loaner assets that reside in the stockroom.
If you select a loaner asset, you are automatically redirected to the
corresponding record in the Hardware Asset Workspace.

Enterprise Loaner
Pool

View all enterprise loaner assets that reside in the stockroom.

Service Locations

View all service locations that are supported by the stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1757


<!-- page 1758 -->
Tab

Description

Distribution Channel

Create and view the list and ranking of all linked stockrooms that
you can source and transfer enterprise assets between. For more
information on distribution channels, see Add a distribution channel
to a stockroom in the Enterprise Asset Workspace.

Hardware Asset
Audits

Note: This
tab appears
only if you have
installed and
activated the
Hardware Asset
Management
application.
Enterprise Asset
Audits

Create and view audits for your hardware asset inventory.
If you are creating an audit or selecting an existing audit, you are
automatically redirected to the corresponding form or record in the
Hardware Asset Workspace.

Create and view audits for your enterprise asset inventory.

5. View all active stock rules that are configured for the stockroom.
a. From the sidebar of the stockroom record, select the Stock rules icon (

).

b. View each stock rule to determine if your available stock is within the specified threshold.
You can also determine if the corresponding model has reached the end of sale.
Create a stock rule for enterprise assets
Create a stock rule to automatically resupply a stockroom based on vendor purchase orders or
transfer orders.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

Stock rules control what happens when the inventory of a particular asset in a particular
stockroom reaches a specified threshold. When available asset quantity drops below a specified
quantity, the stock rule automatically creates an enterprise stock order request. Once the
enterprise stock order request is created, the enterprise manager goes through the process of
sourcing and receiving that order.
If a stock rule is created for an enterprise model that reaches the threshold limit, a notification is
sent to the stockroom manager and a stock order request is automatically created.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory > Stock rules.
2. Select New.
The Create New Stock Rule page opens.
3. On the form, fill in the details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1758


<!-- page 1759 -->
Model

Product model to which the rule applies.

Threshold

Quantity that the stock must reach to trigger
restocking. For example, enter a threshold
of 10 for a laptop computer that should be
restocked when inventory drops below 10 in
the specified stockroom.

Note: If a stock rule is created for
an enterprise model that reaches the
threshold limit, a notification is sent to
the stockroom manager and a stock
order request is automatically created.
Restocking option

Location where additional supplies should
come from.
If Procurement is not active, then restocking
option is Stockroom only. Otherwise, select
one of the following:
◦ Stockroom: creates a transfer order to
obtain the asset from another stockroom.
◦ Vendor: sends an email to the stockroom
manager to order from a vendor. In addition
to the email notification, a purchase order
and purchase order line item are created.

Stockroom

Current physical location of the asset.

Order size

Minimum order quantity for stockroom
transfers or vendor purchases. ServiceNow
calculates the smallest multiple of the order
size needed to restock the item above the
threshold. For example, there are 3 laptops
in stock with a threshold of 10 and the
Stockroom option selected. If the order size
is set to 4, the system creates a transfer order
for 8 laptops to exceed the threshold and
satisfy the rule (3 in stock + 8 ordered = 11).
When restocking from a vendor, ServiceNow
sends an email to the stockroom manager
showing the total number of items to order, as
multiples of the order size.

Active

Indicates whether this stock rule active
(check box is selected). Clearing this check
box prevents the stock rule from restocking
automatically.

OT stock rule

Indicates whether the stock rule was created
in the OT Asset Workspace.
This check box appears on the stock rule
form only for hardware models in both the
OT Asset Workspace and Enterprise Asset

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1759


<!-- page 1760 -->
Workspace. However, only the OT asset
manager can select or deselect this check
box in the OT Asset Workspace.
4. Select Save.

Result
• The stock rule that you created appears in the Stock rules tab.
• If the restocking option was set to Vendor, the Stock orders tab will be displayed. All the stock
orders that are created using this stock rule are listed under the Stock orders tab.
• If the restocking option was set to Stockroom, the Transfer orders tab will be displayed. All the
transfers orders created using this stock rule are listed under the Transfer orders tab.

Note: For stock orders created through the restocking by a vendor, the stock order tab
shows all stock orders generated by that stock rule. But for transfer orders, the tab only
displays transfer orders after the upgrade.
Create a stockroom type for enterprise assets
If the base system stockroom types don't meet your needs, you can create a custom stockroom
type in the Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterptrise_asset_manager

About this task

Stockroom types are categories of stockrooms. For detailed information on stockroom types, see
Stockroom types.

Procedure
1. Navigate to Enterprise Asset Workspace > Inventory > Stockroom types.
2. Select New.
3. On the form, fill in the details.

Field

Description

Name

Display name of the stockroom type.

Description

General information about the stockroom
type.

Priority

Level of precedence for this type of
stockroom.

Value

Internal identifier of the stockroom type.

Shipment required

Option that determines if stockrooms of this
type require shipment by default.

External stockroom

Indicates if stockrooms of this type are
managed internally (check box cleared) or
managed externally by a third party (check
box selected).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1760


<!-- page 1761 -->
4. Select Save.
The newly created stockroom type appears in the Stockroom types tab.
Audit enterprise asset inventory
Audit your enterprise asset inventory to learn where your assets are and what their current status
is.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

You can use the Mobile Agent application for Enterprise Asset Management to scan asset tags
or enter them manually. If an asset is scanned but its asset tag does not exist in our database,
then by default, that asset is mapped to an unknown model record. The unknown model record
appears on the All enterprise models tab of the Model Management view in the Enterprise
Asset Workspace. The asset manager manually associates this asset to the appropriate model.
You can't change, update or delete an unknown model.

Note: Starting with Enterprise Asset Management version 9.0, you can also audit the
licensed hardware assets in the Enterprise Asset Workspace only if the Hardware Asset
Management application is activated.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Inventory > Asset audits.
2. Select New.
The Create New Enterprise Asset Audit page opens.
3. On the form, fill in the fields.
Create New Enterprise Asset Audit
Field

Description

Audit number

Audit reference number.

Assignment group

Group to which you want to assign the audit.

Assigned to

Person responsible for the audit.

Type

Type of the audit. The available values are
◦ Location
◦ Stockroom

Status

Current status of the audit.

Location

Location in which you want to perform the
audit.

Note: This field appears only if you set
the Type field to Location.
Include child locations

Option to include child locations in the audit.

Note: This field appears only if you set
the Type field to Location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1761


<!-- page 1762 -->
Field

Description

Stockroom

Stockroom in which you want to perform the
audit.

Note: This field appears only if you set
the Type field to Stockroom.
Model category

Model category that you want to audit.

Aisle and space

Aisle and space within the stockroom where
you want to perform the audit.

Note: This field appears only if you set
the Type field to Stockroom.
Scheduled date

Date on which you want to perform the audit.

Scan date

Date on which you want to scan the assets.

The asset audit records are stored in the Asset Audits [sn_itam_common_asset_audit] table.
4. Select Save.
The asset audit inventory record is created and appears with Expected Assets and Scanned
Assets tabs. The Audit Results section is activated and shows the details of the audit result
when the audit is complete.
Audit results
Expected

Number of expected assets that were
scanned.

Not expected and location corrected

Number of assets that were scanned but
were not expected.

Missing

Number of expected assets that were not
scanned.

New

Number of assets that were scanned but
do not have a record in your ServiceNow
instance.

Create a disposal order in the Enterprise Asset Workspace
Create a disposal order for an asset that has reached the end of its life cycle or is no longer
functional.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

Only assets that are associated with enterprise or pallet models can be disposed of using an
enterprise disposal order. You can add simple assets; multi-component assets, which include
pre-assembled and user-assembled assets; and pallet assets with children to an enterprise
disposal order.

Note: If you are adding a multi-component asset or a pallet asset with children to a
disposal order, any changes that you make to the parent asset are automatically applied to
all child assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1762


<!-- page 1763 -->
Use the Flow Designer application to create the disposal flow to take you through the entire asset
disposal order process.
The disposal order goes through various stages before it’s completed. Each stage is associated
with a disposal task. To move through the various stages, close each task until you reach the
last stage. After you complete the last task, the disposal order is complete. For more information
about the disposal order stages, see disposal order stages.

Note: You can cancel a disposal order until it reaches the transit stage of the workflow.
Once your disposal order is in the confirmation stage, you can't cancel that order. You can
cancel a task that is in a draft, scheduling, or transit stage by selecting Closed Incomplete
from the State list and closing the task.

Procedure
1. Navigate to Enterprise Asset Workspace > Inventory > Disposal orders.
2. Select New.
The Create New Enterprise Disposal Order page opens.
3. On the form, fill in the details.

Field

Description

Number

Reference number of the disposal order.

Stockroom

Stockroom where the asset is disposed from.

Location

Location of the stockroom where the
asset gets disposed from. The location
automatically appears after you select a
stockroom.
If you change the location and no location
is associated with the selected stockroom,
the stockroom field becomes empty. In this
scenario, you can select a stockroom from
the stockroom list for a specified location.

Assigned to

Person responsible for disposing of the
asset.

Stage

Current stage of the disposal order.

Vendor

Vendor that you want to dispose the asset to.

4. Select Save.
The new disposal order is created and the disposal order workflow is triggered.
5. On the Pickup Details form, fill in the fields.
Pickup Details form
Field

Description

Scheduled date

Date when you want to dispose of the asset.

Pickup contact name

Name of the person from the vendor who will
pick up the asset to dispose of.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1763


<!-- page 1764 -->
Field

Description

Pickup details

Details of the pickup.

Additional info

Any message you want to add.

6. Open the Disposable Assets tab.
7. Select Add to select the assets that you want to dispose of.
8. Select the assets that you want to dispose of and select Add.
Only assets that are in a non-terminal state appear in the list. A non-terminal state is any state
in which the asset can transition into a different state.
Under the Enterprise Disposal Tasks tab, a Verify Assets task is created.
9. Open the Enterprise Disposal Tasks tab and select the Verify Assets task.
10. In the Enterprise Disposal Tasks page, select the assets that you want to dispose of and select
Verify.
The state of the asset changes to In stock and the substate changes to Pending disposal.
11. Select Close task.

Note: You cannot add additional assets to the disposal order after you complete and
close the Verify Assets task.
The draft stage is completed and the scheduling stage is in progress. The next task in the
workflow, Schedule pickup, is automatically created and appears in the Enterprise Disposal
Tasks tab.
12. Select the Schedule pickup task and in the Vendor and Scheduled date fields, enter the
values that you want.
13. Select Close Task.
The stage changes to transit and the Asset departure task is created.
14. Select the Asset departure task and in the Vendor order ID and Pickup contact name fields,
enter the value that you want.
15. Select the assets that you want to dispose of and in the Actions on selected rows picker,
select Depart.
The state of the asset changes to in transit and the substate changes to pending disposal.
16. Select Close Task.
The stage changes to confirmation and the Vendor confirmation task is created.
17. Select the Vendor confirmation task and then select Close Task.
The stage changes to documentation and a Disposal Documentation task is created.
18. Select the Disposal Documentation task and do the following:
a. Select the Attach File icon to attach disposal documentation for the planned assets.
b. Select the assets that you want to dispose of.

Note: If your disposal order contains any multi-component assets or pallet assets
with children, the parent-child relationships within those assets are no longer
applicable when you reach this task. Any changes that you make to a parent asset are
no longer automatically applied to its child assets. You must individually select each
asset that you want to dispose of, regardless of whether it is a parent or child asset.
c. Select Dispose.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1764


<!-- page 1765 -->
The state of the asset changes to retired and the sub state changes to disposed.
d. In the Certificate of disposal list, select Yes.
19. Select Close Task.
All the enterprise disposal tasks are complete and the enterprise disposal order stage
changes to completed.
Create a transfer order in Enterprise Asset Workspace
Create a transfer order in Enterprise Asset Management to transfer assets from one location to
the other.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterptrise_asset_manager

Procedure
1. Navigate to Enterprise Asset Workspace > Inventory > Transfer orders.
2. Select New.
The Create New Transfer Order page opens.
3. On the form, fill in the details.

Field

Description

Number

Number of the transfer order.

Stage

Current stage of the transfer order.

From stockroom

The stockroom from which the asset is to be
shipped.

To stockroom

The stockroom where the asset is to be
shipped.

From location

The location of the stockroom from where the
asset is to be shipped.

To location

The location of the stockroom where the
asset is to be shipped.

Requested date

The date the transfer order is created.

Delivery by date
Drop Off
4. Select Save.
The transfer order is created and displays the Transfer Order Lines tab. You can now create
transfer order lines to specify the items that the transfer order comprises of.
Create transfer order lines in Enterprise Asset Workspace
Create transfer order lines in Enterprise Asset Management to specify the items that comprise a
transfer order.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterptrise_asset_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1765


<!-- page 1766 -->
About this task

A transfer order can contain one or more transfer order lines. Under a single transfer order, all
transfer order lines have the same From location and To location. Each line contains an asset
to transfer and the quantity to transfer. The item to transfer is identified by the asset name and
the model name. A transfer order line can involve one quantity of a non-consumable asset or
multiple quantities of a consumable asset.

Procedure
1. Navigate to the transfer order in the Enterprise Asset Workspace.
2. In the transfer order, select the Transfer Order Lines tab
The Transfer Order Lines page appears.
3. Select New.
4. On the form, fill in the details

Field

Description

Number

Internal unique number identifying the transfer order line.

Transfer
Order

The transfer order to which the transfer order line belongs.

Model

Model of the items requested by the transfer order line. For example, a printer. If
the Asset field is filled out first, the Model field is automatically filled in with the
model corresponding to the asset.

Quantity Number of items requested by the transfer order line. For example, 3 computers
requested are requested to be transferred.
Quantity
received

Number of items already received. For example, 3 keyboards are transferred, 2
are received.

Stage

Current stage of the transfer order. Transfer order lines can only be created when
a transfer order is in Draft stage.

Request
line

Requested item to associate with the transfer order line.

Asset

Asset requested by the transfer order line. For example, a specific printer. The
asset can filter on stockrooms.

Quantity Number of items yet to be received. For example, 3 keyboards had been
remaining requested, 2 are received, 1 is remaining.
Quantity
returned

Number of items that already needed to be returned.

5. Select Save.
The Transfer Order Line is created and displays the Transfer Order Line Tasks tab. Transfer
order line tasks are created to move transfer order lines from one stage to the other.
Close transfer order line tasks in Enterprise Asset Workspace
Close transfer order line tasks to move transfer order lines from one stage to the other.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1766


<!-- page 1767 -->
About this task

When you create a transfer order line, based on the model category specified in the asset, a
transfer order line task is automatically created. Default template tasks are available with the
Enterprise Asset Management application. The template tasks are based on model categories.
Default template tasks cannot be deleted or modified.
When you create a transfer order line and select an asset, that asset corresponds to a model
category. If a template task exists for that model category then that template task is added to the
transfer order line as a transfer order line task.
Closing a transfer order line task completes the task and creates the next task in the process. For
example, once you close the Requested task, the state for this task appears as Closed Complete
and a new task is opened for the next stage, Shipment Preparation. This process continues till
you close all the tasks required for completing the transfer order line. As you close a task and as
a task moves from one stage to the next, the asset gets automatically updated too. For example,
when the transfer order line moves from Requested to Shipment Preparation, the asset's status
also moves from available to reserved.

Procedure
1. Navigate to a transfer order line record in the Enterprise Asset Workspace.
2. Select the Transfer Order Line Tasks tab.
The following are the transfer order line tasks:
◦ Requested:
◦ Shipment Preparation
◦ In Transit
◦ Received
◦ Delivered
3. Open the Requested task.
4. Select Close Task to close this task.
As you close the Requested task, the Shipment Preparation task which is the next task in the
process is created.
5. Continue to open the next task in the process, till you close the Delivered task.
Once you close the Delivered task, the transfer order line is completed.
Request a loaner asset in Enterprise Asset Workspace
Request a temporary or loaner asset or a consumable and use it for a specified period of time.

Before you begin

Role required: sys_admin

About this task

You can request a loner asset for yourself, for another employee of your organization, or for a
third-party vendor. Before the asset is installed, you can cancel the loaner asset request at any
time. You can submit a loaner order even if the product is not available at the moment in the
location you want to select. In this case, your order is placed in queue.
While requesting a loaner asset, ensure that the start date is within three months from the date of
submission and the end date is within six months from the start date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1767


<!-- page 1768 -->
Procedure
1. Navigate to Service Catalog.
2. Select the Enterprise Asset Lifecycle catalog.
The sys _admin role needs to add the Enterprise Asset Lifecycle catalog. For more details, see
Service Catalog documentation.
3. Select Enterprise Asset Loaner Request.
The Enterprise Asset Loaner Request page opens.
4. On the form, fill in the fields.
Loaner Asset Request form
Field

Description

Requested for

Person for who you are requesting the asset.
You can make a request for yourself, for
another employee of your organization, or for
a third-party vendor.

Requested for user

User for who you requested the asset. This
field appears only when For company user is
selected in the Requested for field.

Location

Location where the requested asset needs to
be provided.

Model

Model of the asset that you are requesting.

Start date

Date when you want to start using the asset.

Return date

Date when you want to return the asset.

Justification

Reason why you need the asset.

After entering the Start date and Return date, if there are no loaner assets available in the
selected location and for the selected time period, a warning appears. If you still submit the
loaner order, your loaner order will be in a waitlist. For more information on waitlisted loaner
orders, see Loaner asset reservation.
5. Select Submit.
A message appears and shows whether your loaner order was placed successfully or the
order was placed in a waitlist.

What to do next

To view your request, navigate to Self-Service > My Requests.
Before you receive your loaner asset, you can cancel the loaner asset request by selecting
Cancel. After you receive your loaner asset, the Cancel button doesn't appear anymore. You can
also return your loaner asset before the specified Return date.
Prepare, deploy, and reclaim loaner assets in Enterprise Asset Workspace
Select and prepare the loaner asset or consumable for deployment and reclamation by using
loaner asset tasks. Deploy the loaner asset or consumable for a specific period of time, and
reclaim it on the return date.

Before you begin

To use an asset as a loaner asset or consumable, go to the asset record and set the Asset
function field to Loaner. These assets are reserved for use as loaner assets. You cannot use an
asset that has the Asset function field set to anything other than Loaner.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1768


<!-- page 1769 -->
The Loaner asset orders tab in the Inventory view shows all the loaner orders the asset
has served in the past and at present. In case of consumables, if the consumable is not in a
stockroom, it shows only the current loaner asset order that it's serving at present.
Role required: inventory_user

Procedure
1. Navigate to Enterprise Asset Workspace > Inventory > Loaner Asset Orders.
2. Open an enterprise loaner asset order.
3. Select the Loaner Asset tasks tab.
4. Select the Prepare task and fill in the details.
Prepare task form
Fields

Descriptions

Asset

Asset that is used to fulfill the loaner asset
request.

State

State of the task.

Assigned to

Person who is assigned the task of fulfilling
the Deploy task.

5. After entering the necessary details, select Close Task to close the Prepare task.
After the Prepare task is completed, a Deploy task is created under the Loaner Asset Tasks
related list. On the Asset record [alm_asset] table, the following changes occur:
◦ The state of the loaner asset changes to In stock.
◦ The Reserved for field is automatically set to the name of the user who the loaner asset was
requested for.
◦ The substate changes to Pending install.
6. Open the Deploy task and fill in the details in the form.
Deploy task form
Fields

Descriptions

State

State of the task.

Assigned to

Person who is assigned the task of fulfilling
the Deploy task.

7. Select Close Task to close the Deploy task.
On the Asset record [alm_asset] table, the following changes occur:
◦ The state of the loaner asset changes to In use.
◦ The Stock room field changes to Null.
◦ The Assigned to field is automatically set to the name of the user who the asset was
requested for.
◦ If you requested the loaner asset for a third-party vendor, then the Managed by field is
automatically set to the name of the user who the asset was requested for.
In case of consumable, state changes to Consumed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1769


<!-- page 1770 -->
Two days before the return date, the users who opened or requested the asset will receive an
email notification about the reclaim. One day before the return date, a Reclaim task is created
under the Loaner Asset Tasks tab.
8. Open the Reclaim task.
9. On the form, fill in the details.
Reclaim task form
Field

Description

Stockroom

Stockroom where the returned asset will be
stored. If you entered a stockroom different
from where you received the loaner asset,
then a warning message appears which says
that the existing loaner orders from the initial
stockroom might be affected.

Returned on

Actual date when the asset was returned.

State

State of the task.

Assigned to

Person who is assigned the task of fulfilling
the Reclaim task.

Asset returned

Option to mark the asset as returned. The
Reclaim task cannot be closed if the asset is
not returned.

Asset functional

Functional status of the loaner asset after it's
reclaimed.

If the asset is not functional, the state of the asset changes to In stock and substate changes
to Pending repair.
10. To close the Reclaim task, select Close Task.
11. If a user returns the asset before the return date, do the following:
a. Select Reclaim.
b. On the Reclaim Asset form, update the fields.
c. Close the Reclaim task.
On the Asset record [alm_asset] table, the following changes occur:
◦ The state of the loaner asset changes to In stock.
◦ The substate changes to Available.
◦ The Stockroom field is automatically set to the value that was selected on the Reclaim task
form.
◦ If the asset is assigned to a future loaner order, the substate changes to Reserved and
reflects the details of the loaner order.
Requesting a Return Merchandise Authorization (RMA) for defective enterprise assets
A Return Merchandise Authorization (RMA) is an agreement between a buyer and a seller
that allows the buyer to return, replace, or request the repair of a defective product within the
specified warranty period. With the Enterprise Asset Management application, you can submit
RMA orders to either replace or repair your defective enterprise assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1770


<!-- page 1771 -->
Return Merchandise Authorization flow
When you submit an RMA order for your defective enterprise assets, the Enterprise Asset
Management application automatically generates an RMA order line for each defective
enterprise asset that was added to the order. You can then use these RMA order lines to track
and manage the RMA process for each of those enterprise assets separately.

Note: You can submit RMA orders for serialized enterprise assets only.
For every RMA order line within an RMA order, you must complete a Prepare task to indicate how
you want to proceed with the RMA process for the given enterprise asset. Based on the terms
that you agreed upon with the asset vendor, you can choose to
• complete the RMA process on-site,
• complete the RMA process off-site with the asset vendor,
• or reject the RMA for the given enterprise asset.
If you choose to complete the RMA process on-site, the defective enterprise asset can only be
repaired. You must complete all necessary on-site repair tasks to move the corresponding RMA
order line to the Completed stage. If you choose to complete the RMA process off-site with the
asset vendor, the defective enterprise asset can either be replaced or repaired. You must work
with the asset vendor to complete all necessary off-site replacement or repair tasks so that you
can move the corresponding RMA order line to the Completed stage. If you choose to reject
the RMA, the RMA order line automatically moves to the Completed stage without requiring any
further action. After every RMA order line within an RMA order reaches the Completed stage, the
order is closed.

Return Merchandise Authorization cancellations
If you have not completed the Prepare task for any of the RMA order lines within an RMA order,
you can cancel the entire RMA order. After the order is canceled, all associated RMA order lines
and tasks are also canceled.
Submit a Return Merchandise Authorization (RMA) order for your defective enterprise assets
Submit a Return Merchandise Authorization (RMA) order to initiate the replacement or repair of
your defective enterprise assets.

Before you begin

Role required: asset or inventory_user

About this task

Note: You can submit RMA orders for serialized enterprise assets only.
Procedure
1. Navigate to All > Service Catalog > Enterprise Asset Lifecycle.
2. From the list of available Enterprise Asset Lifecycle catalog items, select Enterprise RMA
Order.
3. In the Enterprise RMA Assets list on the Enterprise RMA Order form, select Add.
The Add Row dialog box opens.
4. Optional: In the Stockroom field, search for and select the stockroom that the defective
enterprise asset is located in.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1771


<!-- page 1772 -->
(Optional) By selecting a stockroom, you can narrow down the list of enterprise assets that you
can search and select from in the Enterprise asset field (step 5).
If you do not select a stockroom, this field populates automatically based on the enterprise
asset that you select in the Enterprise asset field (step 5).
5. In the Enterprise asset field, search for and select the defective enterprise asset that you want
to replace or repair through this RMA order.
6. Select Add.
The dialog box closes and the defective enterprise asset is added to the list of Enterprise RMA
Assets.
7. Repeat steps 3 to 6 for each defective enterprise asset that you want to replace or repair
through this RMA order.

Note: You can add up to 50 enterprise assets to a single RMA order.
8. Select Submit.

Result

After the RMA order is submitted successfully, you are automatically redirected to the Service
Catalog home page. A confirmation message then appears with the RMA order number, which
you can use to track and manage your RMA order.
Closing a Return Merchandise Authorization (RMA) order for your defective enterprise assets
After you submit a Return Merchandise Authorization (RMA) order for your defective enterprise
assets, you must complete various tasks to close the order.
You must complete the necessary set of tasks separately for each RMA order line within an RMA
order. After you complete all necessary tasks for an RMA order line, it moves to the Completed
stage. Once all RMA order lines within an RMA order reach the Completed stage, the RMA order
is closed.
Complete the Prepare task for an RMA order line
Complete the Prepare task for an RMA order line so that you can proceed with replacing or
repairing the given enterprise asset. Alternatively, you can reject the RMA to avoid taking any
action on the given enterprise asset.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, navigate to the Inventory view.
2. Select the RMA orders tab.
3. From the list of available RMA orders, select the RMA order that you want to close.
The RMA order record opens.
4. On the RMA Order Lines tab of the RMA order record, select the RMA order line of the
enterprise asset that you want to replace, repair, or take no action on.
The RMA order line record opens.
5. On the RMA Line Tasks tab of the RMA order line record, select the task number for the
Prepare task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1772


<!-- page 1773 -->
Alternatively, select the task number that is displayed
in the Current task field of the RMA order line record

header.
The Prepare task opens.
6. On the Details tab of the Prepare task, fill in the fields.
Details tab
Field

Description

RMA Line Task Details
Stockroom

Stockroom that the defective enterprise asset is located in. This field populates
automatically.

Vendor

Vendor of the defective enterprise asset. This field populates automatically.

Vendor
RMA
number

RMA reference number provided by the asset vendor.

State

State of the task.

Assignment Group to which the task is assigned.
group
Assigned to User to which the task is assigned.
Work notes Users who receive notifications when work notes are added to the task.
list
RMA type

Option that indicates how you want to proceed with the RMA process for the
defective enterprise asset. Select one of the following options:
◦ On-site: Option to complete the RMA process on-site. With this option, you
can repair the defective enterprise asset on-site.
◦ Off-site: Option to complete the RMA process off-site with the asset vendor.
With this option, the defective enterprise asset can be replaced or repaired
off-site by the asset vendor.
◦ Reject: Option to reject the RMA for the defective enterprise asset. With this
option, you can avoid taking any action on the defective enterprise asset.

Short
Brief description of the task.
description
Description Detailed description of the task.
Notes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1773


<!-- page 1774 -->
Field

Description

Work notes Notes about the task that are visible to all users within your organization.
7. Select Close Task.

Result

The Prepare task automatically closes with an updated state of Closed Complete.

What to do next

If you set the RMA type field to On-site or Off-site, complete all subsequent replacement or
repair tasks to move the RMA order line to the Completed stage. If you set the RMA type field to
Reject, the RMA order line automatically moves to the Completed stage, and no further action is
required.
Complete the RMA process for a defective enterprise asset through an on-site repair
Perform all tasks that are required for an on-site repair so that you can complete the RMA
process for a defective enterprise asset. You must perform this set of tasks separately for each
defective enterprise asset that requires an on-site repair.

Before you begin

Before you can proceed with the RMA process for a defective enterprise asset on-site, you must
complete the Prepare task for the associated RMA order line. See Complete the Prepare task for
an RMA order line for detailed instructions.
Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the RMA orders tab.
3. From the list of available RMA orders, select the RMA order that you want to close.
The RMA order record opens.
4. On the RMA Order Lines tab of the RMA order record, select the RMA order line for the
enterprise asset that you want to repair.
The RMA order line record opens.
5. Complete and close the On-site repair task for the RMA order line.
To successfully complete and close this task, you must either repair the defective enterprise
asset on-site, move the RMA process off-site with the asset vendor, or reject the on-site repair
request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1774


<!-- page 1775 -->
a. On the RMA Line Tasks tab of the RMA order line record, select the task number for the Onsite repair task.
Alternatively, select the task number that is displayed
in the Current task field of the RMA order line record

header.
The On-site repair task opens.
b. On the Details tab of the On-site repair task, fill in the fields.
Details tab
Field

Description

RMA Line Task Details
State

State of the task.

Assignment Group to which the task is assigned.
group
Assigned to User to which the task is assigned.
Work notes Users who receive notifications when work notes are added to the task.
list
RMA
decision

Action that you performed on the defective enterprise asset. Select one of
the following options:
▪ Repair: Option indicating that you successfully repaired the defective
enterprise asset on-site.
▪ Off-site: Option indicating that you are moving the RMA process off-site
with the asset vendor. Select this option if you are unable to repair the
defective enterprise asset on-site.
▪ Reject: Option indicating that you rejected the on-site repair request.

Short
Brief description of the task.
description
Description Detailed description of the task.
Notes
Work notes Notes about the task that are visible to all users within your organization.
c. Select Close Task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1775


<!-- page 1776 -->
The On-site repair task automatically closes with an updated state of Closed Complete.
If you set the RMA decision field to Off-site, proceed to Complete the RMA process for a
defective enterprise asset through an off-site replacement or repair to continue with the RMA
process off-site.

Result

If you successfully repaired the defective enterprise asset, the RMA order line moves to the
Completed stage. In the corresponding asset record, the State field changes to In stock and the
Substate field changes to Available.
If you moved the RMA process off-site, a Shipment task automatically populates on the RMA
Line Tasks tab of the RMA order line. You must then ship the defective enterprise asset back to
the asset vendor so that they can complete the remaining replacement or repair tasks off-site.
See Complete the RMA process for a defective enterprise asset through an off-site replacement
or repair for detailed instructions on how to replace or repair a defective enterprise asset off-site.
If you rejected the on-site repair request, the RMA order line moves to the Completed stage.
However, the defective enterprise asset remains in the In stock state and Pending repair
substate. You must submit a new RMA order to take additional action on the asset.

What to do next

Complete the RMA process for any remaining RMA order lines within the RMA order. After all
RMA order lines reach the Completed stage, the RMA order is closed.
Complete the RMA process for a defective enterprise asset through an off-site replacement or
repair
Work with your asset vendor to perform all tasks that are required for an off-site replacement
or repair so that you can complete the RMA process for a defective enterprise asset. You must
perform this set of tasks separately for each defective enterprise asset that requires an off-site
replacement or repair.

Before you begin

Before you can proceed with the RMA process for a defective enterprise asset off-site, you must
complete the Prepare task for the associated RMA order line. See Complete the Prepare task for
an RMA order line for detailed instructions.
Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the RMA orders tab.
3. From the list of available RMA orders, select the RMA order that you want to close.
The RMA order record opens.
4. On the RMA Order Lines tab of the RMA order record, select the RMA order line for the
enterprise asset that you want to replace or repair.
The RMA order line record opens.
5. Complete and close the Shipment task for the RMA order line.
To successfully complete and close this task, you must ship the defective enterprise asset
back to the asset vendor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1776


<!-- page 1777 -->
a. On the RMA Line Tasks tab of the RMA order line record, select the task number for the
Shipment task.
Alternatively, select the task number that is displayed
in the Current task field of the RMA order line record

header.
The Shipment task opens.
b. On the Details tab of the Shipment task, fill in the fields.
Details tab
Field

Description

RMA Line Task Details
State

State of the task.

Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Work notes list

Users who receive notifications when work notes are added to the task.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Shipment
Carrier

Shipping carrier through which you shipped the defective enterprise
asset.

Ship date

Date on which you shipped the defective enterprise asset.

Tracking
number

Tracking number that enables you to track the status and location of the
shipment.

Notes
Work notes

Notes about the task that are visible to all users within your organization.

c. Select Close Task.
The Shipment task automatically closes with an updated state of Closed Complete.
6. Complete and close the Vendor RMA decision task for the RMA order line.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1777


<!-- page 1778 -->
To successfully complete and close this task, the asset vendor must either repair the defective
enterprise asset, replace the defective enterprise asset with a new asset, or reject the RMA.
a. On the RMA Line Tasks tab of the RMA order line record, select the task number for the
Vendor RMA decision task.
Alternatively, select the task number that is displayed
in the Current task field of the RMA order line record

header.
The Vendor RMA decision task opens.
b. On the Details tab of the Vendor RMA decision task, fill in the fields.
Details tab
Field

Description

RMA Line Task Details
State

State of the task.

Assignment Group to which the task is assigned.
group
Assigned to User to which the task is assigned.
Work notes Users who receive notifications when work notes are added to the task.
list
RMA
decision

Action that the asset vendor performed on the defective enterprise asset.
Select one of the following options:
▪ Repair: Option indicating that the asset vendor successfully repaired the
defective enterprise asset.
▪ Replace: Option indicating that the asset vendor is replacing the defective
enterprise asset with a new functioning asset.
▪ Reject: Option indicating that the asset vendor rejected the RMA for the
defective enterprise asset.
If you select this option, the Reject reason field appears below the RMA
decision field. In the Reject reason field, specify why the asset vendor
rejected the RMA.

Short
Brief description of the task.
description
Description Detailed description of the task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1778


<!-- page 1779 -->
Field

Description

Notes
Work notes Notes about the task that are visible to all users within your organization.
c. Select Close Task.
The Vendor RMA decision task automatically closes with an updated state of Closed
Complete.
7. Complete and close the Receive task for the RMA order line.
To successfully complete and close this task, you must receive the new, repaired, or rejected
enterprise asset from the asset vendor.
If you are receiving a new enterprise asset as a replacement for the defective enterprise asset,
you must also create an asset record for the new enterprise asset. See Create enterprise
assets for detailed instructions.

Note: When you create the asset record for the new enterprise asset, you must set the
State field to In stock. You must also verify that the Acquisition method field is set to
RMA Replacement.

a. On the RMA Line Tasks tab of the RMA order line record, select the task number for the
Receive task.
Alternatively, select the task number that is displayed
in the Current task field of the RMA order line record

header.
The Receive task opens.
b. On the Details tab of the Receive task, fill in the fields.
Details tab
Field

Description

RMA Line Task Details
State

State of the task.

Assignment group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Work notes list

Users who receive notifications when work
notes are added to the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1779


<!-- page 1780 -->
Field

Description

Short description

Brief description of the task.

Description

Detailed description of the task.

Receive
Asset received

Option that indicates if you received the
new, repaired, or rejected enterprise asset
from the asset vendor.
To complete and close the Receive task,
you must set this field to Yes.

Replacement asset stockroom

Note: This field appears only if the

Stockroom that the new enterprise asset is
located in.

asset vendor replaced the defective
enterprise asset with a new one.
Replacement asset

Note: This field appears only if the

New enterprise asset that has replaced the
defective enterprise asset.

asset vendor replaced the defective
enterprise asset with a new one.
Notes
Work notes

Notes about the task that are visible to all
users within your organization.

c. Select Close Task.
The Receive task automatically closes with an updated state of Closed Complete.

Result

The RMA order line moves to the Completed stage.
If the asset vendor successfully replaced the defective enterprise asset with a new one,
the Details tab of the RMA order line automatically updates with information about the new
enterprise asset, including the name, model, and stockroom of the asset. In addition, the
Enterprise Asset Management application automatically retires the defective enterprise
asset, triggering the State and Substate fields to change to Retired and Vendor credit in the
corresponding asset record.
If the asset vendor successfully repaired the defective enterprise asset, the State and Substate
fields change to In stock and Available in the corresponding asset record.
If the asset vendor rejected the RMA, the defective enterprise asset remains in the In stock state
and Pending repair substate. You must submit a new RMA order to take additional action on the
asset.

What to do next

Complete the RMA process for any remaining RMA order lines within the RMA order. After all
RMA order lines reach the Completed stage, the RMA order is closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1780


<!-- page 1781 -->
Managing recalled enterprise assets
You can track and take action on enterprise assets that have been recalled by the asset vendor
by using recall orders. You can choose to replace, repair, or retire your recalled enterprise
assets. Alternatively, you can choose to provide your users with additional instructions on how to
operate your recalled enterprise assets.

Recall flow
When you submit a recall order, the Enterprise Asset Management application automatically
generates an enterprise recalled asset record for each enterprise asset that you included in the
order. You can then use these records to track and manage the recall process for each of those
enterprise assets.
Within each recall order, you must indicate how you are going to proceed with the recall process
for the given enterprise asset based on the remediation option that is recommended by the
asset vendor in the corresponding recall notification. You can choose to
• repair the enterprise asset either on-site or off-site,
• replace the enterprise asset with a new asset,
• retire the enterprise asset,
• or provide additional instructions on how to operate the enterprise asset.
Based on the option that you choose, you must complete all subsequent tasks to remediate the
asset and move the corresponding enterprise recalled asset record to the Completed stage.
After every enterprise recalled asset record within a recall order reaches the Completed stage,
the recall order is marked as complete.
Submit a recall order for your enterprise assets
Submit a recall order to initiate the replacement, repair, or retirement of enterprise assets
that have been recalled by the asset vendor. You can also choose to provide your users with
additional instructions on how to operate your recalled enterprise assets.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

Note: You can include multiple enterprise assets in a single recall order. However, all
enterprise assets must be associated with the same model.

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. On the Recall orders tab, select New.
3. On the Create New Enterprise Recall Order form, fill in the fields.
Create New Enterprise Recall Order form
Field

Description

Recall
source

Source of the enterprise asset recall.

Remediation Action that you are going to take on the recalled enterprise assets, based
on the remediation option that is recommended by the asset vendor in the
corresponding recall notification. Select one of the following options:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1781


<!-- page 1782 -->
Field

Description

◦ Repair: Option to repair the recalled enterprise assets.
◦ Replace: Option to replace the recalled enterprise assets with new assets.
◦ Retire: Option to retire the recalled enterprise assets.
◦ Notation: Option to provide users with additional instructions on how to
operate the recalled enterprise assets.
If you select this option, the Recall remediation instruction field appears
below the Serial numbers field. In the Recall remediation instruction field,
enter the additional instructions.
Models

Models that the recalled enterprise assets are associated with.
You can select one or more models from the list.

Serial
numbers

Serial numbers that identify each recalled enterprise asset. This field is
optional.
To include multiple enterprise assets in this recall order, enter all associated
serial numbers using one of the following options:
◦ Serial number range, such as SN001-SN010
◦ Comma-separated list of individual serial numbers, such as SN020,
SN038, SN054
◦ Comma-separated list of both serial number ranges and individual serial
numbers, such as SN001-SN010, SN202, SN038, SN100-SN110
If you do not enter any serial numbers, all enterprise assets that are associated
with the model specified in the Model field are included in this recall order.

Note: If you specify any serial numbers on a recall order, you cannot
specify any vehicle identification numbers (VINs) on the same order.
Location

Location in which the recalled enterprise assets reside.

Recall
notice
number

Identification number of the recall notification that was sent by the asset
vendor.

Remediate
by

Date by which the action that you selected in the Remediation field must be
completed.

VINs

Vehicle identification numbers (VINs) that identify each recalled enterprise
asset. This field is optional and applicable only to automotive enterprise
assets, such as cars and mopeds.
To include multiple automotive enterprise assets in this recall order, enter all
associated VINs using one of the following options:
◦ VIN range, such as 3VWSB81H8WM210368-3VWSB81H8WM210370
◦ Comma-separated list of individual VINs, such as 1B7HF13ZX1J572139,
JH4KA8150MC012098
◦ Comma-separated list of both VIN ranges and individual VINs,
such as 4JGAB54E81A277648-4JGAB54E81A277650,
1GNDX03E03D188446, KM8SC73E94U774838

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1782


<!-- page 1783 -->
Field

Description

If you do not enter any VINs, all enterprise assets that are associated with the
model specified in the Model field are included in this recall order.

Note: If you specify any VINs on a recall order, you cannot specify any
serial numbers on the same order.
Include
child
locations

Option to include the child locations of the location that you specified in the
Location field.

Additional
info

Additional information about the recall order.

4. Select Save.

Result
• The Acknowledge Recall button appears.
• The Recalled Assets and Recalled Tasks tabs are shown.

What to do next

Acknowledge enterprise assets in the recall order.
Acknowledge enterprise assets in the recall order
Review and confirm the enterprise assets included in the recall order to proceed with the recall
process.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Recall orders tab.
3. Select the recall order that you want to acknowledge.
4. Select Acknowledge Recall
An Acknowledge task in the Open state is created and listed under the Recall Tasks tab.
5. Select the acknowledge task.
6. Verify the recall order details and assets listed under the Recall Assets tab.
7. Select Close task.

Result
• The State of the Acknowledge task changes from Open to Closed Complete.
• The Stage of the recall order changes to Acknowledged.
• The Begin recall process button appears.

What to do next

Select Begin recall process to proceed with the recall process for the specified enterprise
assets. For details, see Completing a recall order for your enterprise assets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1783


<!-- page 1784 -->
Completing a recall order for your enterprise assets
After you submit a recall order for any enterprise assets that have been recalled by the asset
vendor, you must perform various tasks to complete the order.
You can either complete the required set of tasks separately for each of your recalled enterprise
assets or bulk update and complete the required set of tasks for all recalled enterprise assets
that share the same task name, state, assignment group, and assigned user. After you complete
all required tasks for a recalled enterprise asset, the corresponding enterprise recalled asset
record moves to the Completed stage. Once all enterprise recalled asset records within a recall
order reach the Completed stage, the recall order is completed.
Complete the Prepare task for a recalled enterprise asset
Complete the Prepare task for a recalled enterprise asset so that you can proceed with replacing,
repairing, or retiring the given enterprise asset.

Before you begin

Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

About this task

Important: The Prepare task is applicable only to recall orders in which the Remediation
field set to Repair, Replace, or Retire. If the Remediation field is set to Notation, you can
proceed directly to the Notation task instead. See Complete the Notation task for a recalled
enterprise asset for more information on the Notation task.

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the Recall orders tab.
3. From the list of available recall orders, select the recall order that you want to complete.
The recall order record opens.
4. On the Enterprise Recalled Assets tab of the recall order record, select the enterprise asset
that you want to replace, repair, or retire.
The enterprise recalled asset record opens.
5. On the Enterprise Recall Tasks tab, select the task number for the Prepare task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Prepare task opens.
6. On the Details tab of the Prepare task, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1784


<!-- page 1785 -->
Details tab
Field

Description

Recall task details
Stockroom

Stockroom of the recalled enterprise asset.

Note: This field is editable only under the following conditions:
◦ The Remediation field in the associated recall order is set to Repair. In
addition, the Remediation action field in this Prepare task is set to Offsite Repair.
◦ The Remediation field in the associated recall order is set to Retire.

Important: If the recalled enterprise asset has not already been
moved to a stockroom, you must move it to an available stockroom before
you can proceed with the asset retirement or off-site repair.
Remediation Option that indicates how you want to proceed with the recall process for the
action
enterprise asset.

Note: This field is editable only if the Remediation field in the
associated recall order is set to Repair.
Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Scheduled
date

Date and time at which you plan to complete this task.

Notes
Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

7. Close the Prepare task.
You can either close the Prepare task for only the specified enterprise asset or bulk update
and close the Prepare task for multiple enterprise assets.
If you want to close the Prepare task for only the specified enterprise asset, select Close Task.
If you want to bulk update and close the Prepare task for multiple enterprise assets, select
Include more assets. When the Select assets for bulk update dialog box opens, select the
check box for each enterprise asset that you want to bulk update and close the Prepare task
for. Select Close Task to close the dialog box and return to the Prepare task.

Important: You can bulk update the Prepare task only for enterprise assets that have
the same task name, state, assignment group, and assigned to user.

Result

The Prepare task automatically reloads with an updated state of Closed Complete.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1785


<!-- page 1786 -->
If you are proceeding with an on-site repair, enterprise assets with a state of In use are updated
with a state of In maintenance. In addition, enterprise assets with a state of In Stock are updated
with a substate of Pending repair.
If you are proceeding with an off-site repair, enterprise assets with a state of either In use or In
maintenance are updated with a state of In stock and a substate of Pending repair.
If you are proceeding with an asset replacement, enterprise assets with a state of In use are
updated with a state of In maintenance. In addition, enterprise assets with a state of In stock are
updated with a substate of Pending repair.
If you are proceeding with an asset retirement, enterprise assets are updated with a state of In
stock and substate of Pending disposal.

What to do next

Complete all subsequent replacement, repair, or retirement tasks.
Complete the Notation task for a recalled enterprise asset
Complete the Notation task for a recalled enterprise asset so that you can provide your users
with additional instructions on how to operate the asset.

Before you begin

Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the Recall orders tab.
3. From the list of available recall orders, select the recall order that you want to complete.
The recall order record opens.
4. On the Enterprise Recalled Assets tab of the recall order record, select the enterprise asset
that you want to provide additional operating instructions for.
The enterprise recalled asset record opens.
5. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the Notation task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Notation task opens.
6. Close the Notation task.
You can either close the Notation task for only the specified enterprise asset or bulk update
and close the Notation task for multiple enterprise assets.
If you want to close the Notation task for only the specified enterprise asset, select Close Task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1786


<!-- page 1787 -->
If you want to bulk update and close the Notation task for multiple enterprise assets, select
Include more assets. When the Select assets for bulk update dialog box opens, select the
check box for each enterprise asset that you want to bulk update and close the Notation task
for. Select Close Task to close the dialog box and return to the Notation task.

Important: You can bulk update the Notation task only for enterprise assets that have
the same task name, state, assignment group, and assigned to user.

Result

The enterprise recalled asset record moves to the Completed stage.

What to do next

Complete the recall process for all remaining enterprise assets that are included in the recall
order. After all corresponding enterprise recalled asset records reach the Completed stage, the
state of the recall order changes to Completed.
Complete the recall process for an enterprise asset through an on-site repair
Perform all tasks that are required for an on-site repair so that you can complete the recall
process for an enterprise asset that has been recalled by the asset vendor.

Before you begin

Before you can proceed with repairing a recalled enterprise asset on-site, you must complete
the Prepare task for that asset. See Complete the Prepare task for a recalled enterprise asset for
detailed instructions.
Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the Recall orders tab.
3. From the list of available recall orders, select the recall order that you want to complete.
The recall order record opens.
4. On the Enterprise Recalled Assets tab of the recall order record, select the enterprise asset
that you want to repair.
The enterprise recalled asset record opens.
5. Complete and close the On-site Repair task for the recalled enterprise asset.
To successfully complete and close this task, you must repair the recalled enterprise asset onsite.
a. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the On-site Repair task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1787


<!-- page 1788 -->
The On-site Repair task opens.
b. On the Details tab of the On-site Repair task, fill in the fields.
Details tab
Field

Description

Recall task details
Remediation Option that indicates how you want to proceed with the recall process for
action
the enterprise asset. This field is automatically set to On-site Repair.
Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Scheduled
date

Date and time at which you plan to perform the on-site repair.

Notes
Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

c. Close the On-site Repair task.
You can either close the On-site Repair task for only the specified enterprise asset or bulk
update and close the On-site Repair task for multiple enterprise assets.
If you want to close the On-site Repair task for only the specified enterprise asset, select
Close Task.
If you want to bulk update and close the On-site Repair task for multiple enterprise assets,
select Include more assets. When the Select assets for bulk update dialog box opens,
select the check box for each enterprise asset that you want to bulk update and close the
On-site Repair task for. Select Close Task to close the dialog box and return to the On-site
Repair task.

Important: You can bulk update the On-site Repair task only for enterprise assets
that have the same task name, state, assignment group, and assigned to user.
The On-site Repair task automatically reloads with an updated state of Closed Complete.

Result

The enterprise recalled asset record moves to the Completed stage. In addition, the state and
substate fields change to In stock and Available in the corresponding asset record.

What to do next

Complete the recall process for all remaining enterprise assets that are included in the recall
order. After all corresponding enterprise recalled asset records reach the Completed stage, the
state of the recall order changes to Completed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1788


<!-- page 1789 -->
Complete the recall process for an enterprise asset through an off-site repair
Work with your asset vendor to perform all tasks that are required for an off-site repair so that you
can complete the recall process for an enterprise asset that has been recalled by the vendor.

Before you begin

Before you can proceed with repairing a recalled enterprise asset off-site, you must complete
the Prepare task for that asset. See Complete the Prepare task for a recalled enterprise asset for
detailed instructions.
Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the Recall orders tab.
3. From the list of available recall orders, select the recall order that you want to complete.
The recall order record opens.
4. On the Enterprise Recalled Assets tab of the recall order record, select the enterprise asset
that you want to repair.
The enterprise recalled asset record opens.
5. Complete and close the Shipment task for the recalled enterprise asset.
To successfully complete and close this task, you must ship the recalled enterprise asset to
the asset vendor.
a. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the Shipment task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Shipment task opens.
b. On the Details tab of the Shipment task, fill in the fields.
Details tab
Field

Description

Recall task details
Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Scheduled
date

Date and time at which you plan to ship the recalled enterprise asset to
the asset vendor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1789


<!-- page 1790 -->
Field

Description

Shipment
Carrier

Shipping carrier through which you shipped the recalled enterprise asset.

Ship date

Date on which you shipped the recalled enterprise asset.

Tracking
number

Tracking number that enables you to track the status and location of the
shipment.

Notes
Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

c. Close the Shipment task.
You can either close the Shipment task for only the specified enterprise asset or bulk update
and close the Shipment task for multiple enterprise assets.
If you want to close the Shipment task for only the specified enterprise asset, select Close
Task.
If you want to bulk update and close the Shipment task for multiple enterprise assets, select
Include more assets. When the Select assets for bulk update dialog box opens, select the
check box for each enterprise asset that you want to bulk update and close the Shipment
task for. Select Close Task to close the dialog box and return to the Off-site Repair task.

Important: You can bulk update the Shipment task only for enterprise assets that
have the same task name, state, assignment group, and assigned to user.
The Shipment task automatically reloads with an updated state of Closed Complete.
d. Close the Shipment task to return to the enterprise recalled asset record.
6. Complete and close the Off-site Repair task for the recalled enterprise asset.
To successfully complete and close this task, the asset vendor must repair the recalled
enterprise asset.
a. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the Off-site Repair task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Off-site Repair task opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1790


<!-- page 1791 -->
b. On the Details tab of the Off-site Repair task, fill in the fields.
Details tab
Field

Description

Recall task details
Remediation Option that indicates how you want to proceed with the recall process for
action
the enterprise asset. This field is automatically set to Off-site Repair.
Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Scheduled
date

Date and time at which the asset vendor plans to perform the off-site repair.

Notes
Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

c. Close the Off-site Repair task.
You can either close the Off-site Repair task for only the specified enterprise asset or bulk
update and close the Off-site Repair task for multiple enterprise assets.
If you want to close the Off-site Repair task for only the specified enterprise asset, select
Close Task.
If you want to bulk update and close the Off-site Repair task for multiple enterprise assets,
select Include more assets. When the Select assets for bulk update dialog box opens,
select the check box for each enterprise asset that you want to bulk update and close the
Off-site Repair task for. Select Close Task to close the dialog box and return to the Off-site
Repair task.

Important: You can bulk update the Off-site Repair task only for enterprise assets
that have the same task name, state, assignment group, and assigned to user.
The Off-site Repair task automatically reloads with an updated state of Closed Complete.
d. Close the Off-site Repair task to return to the enterprise recalled asset record.
7. Complete and close the Receive task for the recalled enterprise asset.
To successfully complete and close this task, you must receive the repaired enterprise asset
from the asset vendor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1791


<!-- page 1792 -->
a. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the Receive task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Receive task opens.
b. On the Details tab of the Receive task, fill in the fields.
Details tab
Field

Description

Recall task details
Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Scheduled date

Date and time at which you plan to receive the repaired enterprise
asset.

Notes
Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your
organization.

c. Close the Receive task.
You can either close the Receive task for only the specified enterprise asset or bulk update
and close the Receive task for multiple enterprise assets.
If you want to close the Receive task for only the specified enterprise asset, select Close
Task.
If you want to bulk update and close the Receive task for multiple enterprise assets, select
Include more assets. When the Select assets for bulk update dialog box opens, select the
check box for each enterprise asset that you want to bulk update and close the Receive task
for. Select Close Task to close the dialog box and return to the Receive task.

Important: You can bulk update the Receive task only for enterprise assets that
have the same task name, state, assignment group, and assigned to user.
The Receive task automatically reloads with an updated state of Closed Complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1792


<!-- page 1793 -->
Result

The enterprise recalled asset record moves to the Completed stage. In addition, the state and
substate fields change to In stock and Available in the corresponding asset record.

What to do next

Complete the recall process for all remaining enterprise assets that are included in the recall
order. After all corresponding enterprise recalled asset records reach the Completed stage, the
state of the recall order changes to Completed.
Complete the recall process for an enterprise asset through an asset replacement
Work with your asset vendor to perform all tasks that are required for an asset replacement so
that you can complete the recall process for an enterprise asset that has been recalled by the
vendor.

Before you begin

Before you can proceed with replacing a recalled enterprise asset, you must complete the
Prepare task for that asset. See Complete the Prepare task for a recalled enterprise asset for
detailed instructions.
Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the Recall orders tab.
3. From the list of available recall orders, select the recall order that you want to complete.
The recall order record opens.
4. On the Enterprise Recalled Assets tab of the recall order record, select the enterprise asset
that you want to replace.
The enterprise recalled asset record opens.
5. Complete and close the Receive New task for the recalled enterprise asset.
To successfully complete and close this task, you must receive the new enterprise asset from
the asset vendor. In addition, you must create an asset record for the new enterprise asset.
See Create enterprise assets for detailed instructions.

Note: When you create the asset record for the new enterprise asset, you must set the
State field to In stock. You must also verify that the Acquisition method field is set to
Recall Replacement.

a. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the Receive New task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Receive New task opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1793


<!-- page 1794 -->
b. On the Details tab of the Receive New task, fill in the fields.
Details tab
Field

Description

Recall task details
Assignment group Group to which the task is assigned.
Assigned to

User to which the task is assigned.

Scheduled date

Date and time at which you plan to receive the new enterprise asset.

Replacement asset
Replacement
asset

New enterprise asset that is replacing the recalled enterprise asset.

Notes
Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your
organization.

c. Select Close Task.
The Receive New task automatically reloads with an updated state of Closed Complete.
d. Close the Receive New task to return to the enterprise recalled asset record.
6. Complete and close the Replace task for the recalled enterprise asset.
To successfully complete and close this task, you must replace the recalled enterprise asset
with the new asset.
a. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the Replace task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Replace task opens.
b. On the Details tab of the Replace task, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1794


<!-- page 1795 -->
Details tab
Field

Description

Recall task details
Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Scheduled
date

Date and time at which you plan to replace the recalled enterprise asset
with the new asset.

Replacement asset
Replacement
asset

New asset that has replaced the recalled enterprise asset.

Notes
Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

c. Close the Replace task.
You can either close the Replace task for only the specified enterprise asset or bulk update
and close the Replace task for multiple enterprise assets.
If you want to close the Replace task for only the specified enterprise asset, select Close
Task.
If you want to bulk update and close the Replace task for multiple enterprise assets, select
Include more assets. When the Select assets for bulk update dialog box opens, select the
check box for each enterprise asset that you want to bulk update and close the Replace task
for. Select Close Task to close the dialog box and return to the Replace task.

Important: You can bulk update the Replace task only for enterprise assets that
have the same task name, state, assignment group, and assigned to user.
The Replace task automatically reloads with an updated state of Closed Complete.
d. Close the Replace task to return to the enterprise recalled asset record.
7. Complete and close the Ship Old task for the recalled enterprise asset.
To successfully complete and close this task, you must ship the recalled enterprise asset back
to the asset vendor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1795


<!-- page 1796 -->
a. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the Ship Old task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Ship Old task opens.
b. On the Details tab of the Ship Old task, fill in the fields.
Details tab
Field

Description

Recall task details
Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Scheduled
date

Date and time at which you plan to ship the recalled enterprise asset back
to the asset vendor.

Shipment
Carrier

Shipping carrier through which you shipped the recalled enterprise asset.

Ship date

Date on which you shipped the recalled enterprise asset.

Tracking
number

Tracking number that enables you to track the status and location of the
shipment.

Notes
Short
description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your organization.

c. Close the Ship Old task.
You can either close the Ship Old task for only the specified enterprise asset or bulk update
and close the Ship Old task for multiple enterprise assets.
If you want to close the Ship Old task for only the specified enterprise asset, select Close
Task.
If you want to bulk update and close the Ship Old task for multiple enterprise assets, select
Include more assets. When the Select assets for bulk update dialog box opens, select the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1796


<!-- page 1797 -->
check box for each enterprise asset that you want to bulk update and close the Ship Old
task for. Select Close Task to close the dialog box and return to the Ship Old task.

Important: You can bulk update the Ship Old task only for enterprise assets that
have the same task name, state, assignment group, and assigned to user.
The Ship Old task automatically reloads with an updated state of Closed Complete.

Result

The enterprise recalled asset record moves to the Completed stage. The Enterprise Asset
Management application then automatically retires the recalled enterprise asset, triggering the
state and substate fields to change to Retired and Vendor credit in the corresponding asset
record.

What to do next

Complete the recall process for all remaining enterprise assets that are included in the recall
order. After all corresponding enterprise recalled asset records reach the Completed stage, the
state of the recall order changes to Completed.
Complete the recall process for an enterprise asset through an asset retirement
Perform all tasks that are required for an asset retirement so that you can complete the recall
process for an enterprise asset that has been recalled by the asset vendor.

Before you begin

Before you can proceed with retiring a recalled enterprise asset, you must complete the Prepare
task for that asset. See Complete the Prepare task for a recalled enterprise asset for detailed
instructions.
Role required: sn_eam.enterprise_asset_manager or enterprise_asset_technician

Procedure
1. From the Enterprise Asset Workspace, open the Inventory view.
2. Select the Recall orders tab.
3. From the list of available recall orders, select the recall order that you want to complete.
The recall order record opens.
4. On the Enterprise Recalled Assets tab of the recall order record, select the enterprise asset
that you want to retire.
The enterprise recalled asset record opens.
5. Complete and close the Retire task for the recalled enterprise asset.
To successfully complete and close this task, you must retire and move the recalled enterprise
asset to an available stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1797


<!-- page 1798 -->
a. On the Enterprise Recall Tasks tab of the enterprise recalled asset record, select the task
number for the Retire task.
Alternatively, select the task number that is displayed in the
Current task field of the enterprise recalled asset record

header.
The Retire task opens.
b. On the Details tab of the Retire task, fill in the fields.
Details tab
Field

Description

Recall task details
Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Scheduled date

Date and time at which you plan to retire the enterprise asset.

Notes
Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all users within your
organization.

c. Close the Retire task.
You can either close the Retire task for only the specified enterprise asset or bulk update
and close the Retire task for multiple enterprise assets.
If you want to close the Retire task for only the specified enterprise asset, select Close Task.
If you want to bulk update and close the Retire task for multiple enterprise assets, select
Include more assets. When the Select assets for bulk update dialog box opens, select the
check box for each enterprise asset that you want to bulk update and close the Retire task
for. Select Close Task to close the dialog box and return to the Retire task.

Important: You can bulk update the Retire task only for enterprise assets that have
the same task name, state, assignment group, and assigned to user.
The Retire task automatically reloads with an updated state of Closed Complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1798


<!-- page 1799 -->
Result

The enterprise recalled asset record moves to the Completed stage. In addition, the state and
substate fields change to Retired and Pending disposal in the corresponding asset record.

What to do next

Complete the asset retirement by disposing of the recalled enterprise asset using a disposal
order. See Create a disposal order in the Enterprise Asset Workspace for detailed instructions.
After you successfully dispose of the recalled enterprise asset, you can complete the recall
process for all remaining enterprise assets that are included in the recall order. After all
corresponding enterprise recalled asset records reach the Completed stage, the state of the
recall order changes to Completed.
Close an enterprise asset reclamation request
Close an asset reclamation request to efficiently reclaim enterprise assets when an employee
leaves an organization or moves to a different role.

Before you begin

For each reclaimed asset, an Enterprise Asset Reclamation Line is created. You must close all
the tasks of a Enterprise Asset Reclamation Line to close the Enterprise Asset Reclamation
Line. Once all Enterprise Asset Reclamation Lines are closed, the Asset Reclamation Request is
closed.
Role required: sn_eam.enterptrise_asset_manager or sn_eam.enterptrise_asset_technician

Procedure
1. Navigate to Enterprise Asset Workspace > Inventory > Reclamation requests.
2. In the Asset reclamation requests page, open the request that you want to fulfill and select the
Enterprise Asset Reclamation Lines related list.
Based on what reclaim method the user selected while submitting the asset reclamation
request, a Schedule drop off, Schedule pickup, or Schedule shipment task is created in the
Enterprise Asset Reclamation Line.
3. Open the Schedule drop off, Schedule pickup, or Schedule shipment task that is present in
the Enterprise Asset Reclamation Line.
4. On the form, fill in the fields.

Field names

Description

Number

Number assigned to the task.

Task Name

Name of the task.

Asset

Asset number and short description of the
asset.

State

Current state of the task.

Return stockroom

Location where the reclaimed assets will be
stored.

Assignment group

Group to which the Schedule shipment task
is assigned.

Assigned to

User from the assignment group to whom the
Schedule shipment task is assigned.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1799


<!-- page 1800 -->
Field names

Description

Quantity received

Number of consumables received.

Short description

Short description of the task.

Description

Detailed description of the task.

Carrier

Name of the carrier vendor who ships the
asset to the stockroom. This is a mandatory
field.

Tracking number

Shipment reference number given by the
carrier vendor. This is a mandatory field.

Ship date

Date on which the asset is shipped. This is a
mandatory field.

Work notes

Any additional information that you want to
mention.

5. Select Close Task.
The Stage field of the Enterprise Asset Reclamation Line form changes from Ready to Pending
received.
A Receive asset task is created in the Enterprise Asset Reclamation Line.
6. Open the Receive asset task.
7. On the Receive asset task form, fill in the fields.
Receive asset task form
Field names

Description

Number

Number assigned to the task.

Task name

Name of the task.

Asset

Asset number and short description of the
asset.

State

Current state of the task.

Return stockroom
Assignment group

Group to which the Receive asset task is
assigned.

Quantity received

Number of consumables received. This
field appears only if the Hardware Asset
Reclamation Line was created for a
consumable, and this is a mandatory field.

Assigned to

User from the assignment group to whom the
Receive asset task is assigned.

Short description

Short description of the task.

Description

Detailed description of the task.

Work notes

Any additional information that you want to
mention.

8. Select Close Task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1800


<!-- page 1801 -->
The Stage field of the Enterprise Asset Reclamation Line form changes from Pending received
to Pending evaluation.
After an asset is received, in the asset form, the following changes occur:
◦ The Assigned to field on the asset record becomes empty.
◦ State of the asset changes to In stock and substate changes toPending repair.
9. Open the Evaluate asset task.
10. On the Evaluate asset task form, fill in the fields.
Evaluate asset task form
Field names

Description

Assignment group

Group to which the Evaluate asset task is
assigned.

Assigned to

User from the assignment group to whom the
Evaluate asset task is assigned.

Evaluation status

Status of the reclaimed asset. This is a
mandatory drop-down list and the values are:
◦ Re-deployable
◦ Needs repair
◦ To be disposed

Work notes

Any additional information that you want to
mention.

11. Select Close Task.
Based on what you selected from the Evaluation status drop-down list, the State and Substate
of the asset change as follows:

Evaluation status values

Asset state

Asset substate

Re-deployable

In stock

Available

Needs repair

In stock

Pending repair

To be disposed

In stock

Pending dispose

The Stage field of the Enterprise Asset Reclamation Line form changes from Pending
evaluation to Complete.

Note: When the stage of all Enterprise Asset Reclamation Lines has changed to Closed
Complete, the state of the Asset Reclamation Request also changes to Complete.

Manage repair of defective assets in your stockroom in the Enterprise Asset Workspace
Optimize your inventory by getting the defective enterprise assets repaired using the Repair flow.
In the Repair flow, an asset manager requests the repair of defective assets in the stockroom. An
asset technician troubleshoots, repairs, and evaluates the asset. The evaluated asset is either
put to use or disposed of. For details on stages in the Repair flow, see Repair flow to fix defective
enterprise assets within a stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1801


<!-- page 1802 -->
Request repair of defective enterprise assets
As an enterprise asset manager, you can get the defective enterprise assets repaired by creating
Repair orders.
You can request repair of defective hardware assets through any of the following options:
• Request repair of enterprise assets using Service Catalog
• Create repair orders for enterprise assets in the Inventory view
• Request repair of an enterprise asset using the Repair option

Note:
Consider the following points when you create a repair order:
• You can't request repair of the following assets:
◦ Consumables
◦ Assets that are part of any other workflow
• You can request repair of a child asset only if you have added its parent asset to the
repair order. However, assets in the pallets can be repaired.
Request repair of enterprise assets using Service Catalog
Submit a Service Catalog request to repair enterprise assets that are defective or pending repair
in your stockroom.

Before you begin

Role required: sn_eam.enterprise_asset_manager or sn_eam.enterprise_asset_technician.

About this task

You can request repair of multiple defective enterprise assets in your stockroom using a single
catalog request.

Procedure
1. Navigate to All > Service catalog > Enterprise Asset Lifecycle > Asset Repair.
2. On the form, fill in the fields.
Request for stockroom repair of an asset
Field

Description

Due Date

Date by which you want the defective assets to be repaired.

Stockroom

Stockroom that has assets to be repaired.

3. Select assets to be repaired.
a. Select the Edit Asset(s) icon (

).

b. Select the assets from the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1802


<!-- page 1803 -->
You can add one or more assets to the request.
c. Select the Lock icon (

).

4. Select Submit.

Result
• Your repair request is submitted successfully.
• A repair order is created in the Draft stage.
• Each asset in the repair order is associated with a repair order line that is in the Troubleshoot
stage.
Create repair orders for enterprise assets in the Inventory view
Request repair of enterprise assets that are defective or pending repair by creating a repair order
in the Inventory view of Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.enterprise_asset_manager or sn_eam.enterprise_asset_technician.

About this task

When you create a repair order from the Inventory view, you must explicitly create a repair order
line for the asset that you want to get repaired.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Create a Repair order.
a. Select New.
b. On the form, fill in the fields.

Note: The following fields are optional:
▪ Assignment group
▪ Assigned to
▪ Due date
▪ Work note
Create New Repair order form
Field

Description

Stockroom

Stockroom that has assets to be repaired.
This field is required.

Assignment
group

Assignment group to which you want to assign the repair order.

Assigned to

Person from the assignment group who is primarily responsible for the
Repair order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1803


<!-- page 1804 -->
Field

Description

Due date

Date by which the defective enterprise assets should be repaired.

Work notes

Notes about the repair order.

c. Select Save.
◦ A repair order that's in the Draft stage is created.
◦ The Repair order lines tab is displayed next to the Details tab of the repair order.
4. Add repair order lines to the repair order.
a. Select the Repair order lines tab.
b. Select Add.
c. In the Add assets dialog box, select the assets and then select Add.

Note: You can add child assets of a pallet asset to the repair order. The asset that you
added to the repair order is removed from the pallet automatically.
For each asset that you added, a repair order line that's in the Troubleshoot stage is created.
5. Select Save.
Request repair of an enterprise asset using the Repair option
Request repair of a defective enterprise asset in your stockroom directly through the asset form.

Before you begin

Role required: sn_eam.enterprise_asset_manager or sn_eam.enterprise_asset_technician.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Asset Estate.
2. Select the All assets tab.
3. Select an asset with state as In stock and substate as Defective or Pending repair.
4. Select the More Options icon (

) on the Asset form.

5. Select Repair.

Result

A repair order with a repair order line in the Troubleshoot stage is created.
Fulfill repair orders in the Enterprise Asset Workspace
Fulfill a repair order by completing all the open repair asset tasks associated with its repair order
lines.
A repair order can have one or more repair order lines depending on the number of assets to be
repaired through that repair order. A repair order is fulfilled only when all its repair order lines are
completed.
As a technician, you must complete the following tasks associated with each repair order line to
fulfill a repair order:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1804


<!-- page 1805 -->
1. Troubleshoot asset
2. Repair asset
3. Evaluate asset
You can also work on the asset repair tasks assigned to you by using the Mobile Agent
application. For details, see Manage enterprise asset repair tasks using the Mobile Agent
application.
View open repair orders for your stockroom in the Enterprise Asset Workspace
View the open repair orders for your stockroom to get the details of the repair order lines and
repair tasks that need action.

Before you begin

Role required: sn_eam.enterprise_asset_technician and sn_eamenterprise_asset_manager

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom.
In the Open stockroom tasks section, the Open repair orders card displays the number of
open repair orders.
4. Select the Open repair orders card.

Result

The list of open repair orders for the stockroom is displayed.
Troubleshoot assets requested for repair in the Enterprise Asset Workspace
Complete the troubleshooting task to assess the issues with the defective asset. Based on your
observations, you can confirm whether the asset can be repaired, redeployed, or should be
disposed of.

Before you begin

Role required: sn_eam.enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select a repair order that's in the Draft or In Progress stage.
4. Select the Repair order lines tab.
5. Select a repair order line that's in the Troubleshoot stage and Open state.
6. Select the Repair asset tasks tab.
7. Select the Troubleshoot asset task that's in the Open state.
8. Indicate that you have started working on the Troubleshoot task by selecting Start Work.
The Start Work option changes to Start Timer and Record Time automatically.
9. Optional: Record the time worked on the task.
You can either use the timer or record the time manually. For more details, see Record time
worked on asset repair tasks in the Enterprise Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1805


<!-- page 1806 -->
An entry for the time you worked is created in the Time Worked tab of the Troubleshoot asset
task.
10. Select the Details tab.
11. Select the troubleshooting result in the Troubleshoot result field.
◦ If the asset is repairable, select Repairable.
◦ If the asset is unrepairable, select Unrepairable.
◦ If the asset can be redeployed, select Redeployable.
12. Optional: In the Failure code field, select the code that corresponds to the reason for the
asset failure.
For more details on codes, see Failure and resolution codes in Enterprise Asset Management.
13. Optional: Enter the issue identified with the asset during the repair process in the Issue
identified field.
Once the task is closed, this field can't be modified.
The value in the Issue identified field is carried forward to the repair asset task after the
troubleshooting task is closed.
14. Enter notes related to the task in the Work notes field.
15. Select Close task.

Result
• If you had set the Troubleshooting result to Unrepairable, the following changes happen on
closure of the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and substate changes to Pending disposal.
• If you had set the Troubleshooting result to Redeployable, the following changes happen on
closure of the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and the substate changes to Available.
• If you had set the Troubleshooting result to Repairable, the following changes happen on
closure of the task:
1. The stage of the repair order line changes to Repair.
2. The state of the asset changes to In stock and the substate changes to Pending repair.
3. Repair asset task is created.

What to do next

Complete the repair asset task in the Enterprise Asset Workspace.
Complete the repair asset task in the Enterprise Asset Workspace
Complete the repair of the asset and confirm if the asset is repaired, unrepairable, or
redeployable.

Before you begin

Role required: sn_eam.enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1806


<!-- page 1807 -->
3. Select the repair order for which you want to complete the Repair asset task.
4. Select the Repair order lines tab.
5. Select the repair order line that's in the Repair stage.
6. Select the Repair asset tasks tab.
7. Select the Repair asset task that's in the Open state.
8. Indicate that you have started working on the Repair asset task by selecting Start Work.
The Start Work option changes to Start Timer and Record Time automatically.
9. Optional: Record the time worked on the task.
You can either use the timer or record the time manually. For more details, see Record time
worked on asset repair tasks in the Enterprise Asset Workspace.
An entry for the time you worked is created in the Time Worked tab of the Repair asset task.
10. Select the Details tab.
11. Select the repair result in the Repair result field.
◦ If the asset is repaired, select Repaired.
◦ If the asset couldn't be repaired, select Unrepairable.
◦ If the asset can be redeployed, select Redeployable.
12. Optional: In the Failure code field, select the code that corresponds to the reason for the
asset failure.
This field shows the failure code that you selected in the Troubleshoot task. However, you
can update this field if the reason for the asset failure differs from what was identified in the
Troubleshoot task. For more details on codes, see Failure and resolution codes in Enterprise
Asset Management.

Note: The Failure code field value that you selected is also displayed in the Evaluate
Asset task and the repair order line.
13. Optional: In the Resolution code field, select the code that matches the solution that you
applied to fix the asset failure.

Note: The Resolution code field value that you selected is also displayed in the Evaluate
Asset task and the repair order line.
14. Optional: Enter the issue identified with the asset during the repair process in the Issue
identified field.
(Optional) This field is automatically populated with the value carried forward from the
troubleshoot asset task if the issue is identified and a value is provided in the Issue identified
field. Once the task is closed, this field can’t be modified.
The value in the Issue identified field is carried forward to evaluate repaired asset task after
the repair task is closed.
15. Enter notes related to the task in the Work notes field.
16. Select Close task.

Result
• If you had set the Repair result to Unrepairable, the following changes happen on closure of
the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and the substate changes to Pending disposal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1807


<!-- page 1808 -->
• If you had set the Repair result to Redeployable, the following changes happen on closure of
the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and the substate changes to Available.
• If you had set the Repair result to Repairable, the following changes happen on closure of the
task:
1. The stage of the repair order line changes to Evaluate.
2. The state of the asset changes to In stock and the substate changes to Pending evaluation.
3. Evaluate asset task is created.

What to do next

Evaluate the repaired asset in the Enterprise Asset Workspace.
Evaluate the repaired asset in the Enterprise Asset Workspace
Evaluate the repaired asset and confirm if the asset is redeployable or should be disposed of.
The Repair flow completes after the repaired asset is evaluated.

Before you begin

Role required: sn_eam.enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select the repair order for which you want to evaluate the repaired asset.
4. Select the Repair order lines tab.
5. Select a repair order line that's in the Evaluate stage and Open state.
6. Select the Repair asset tasks tab.
7. Select the Evaluate asset task that's in the Open state.
8. Indicate that you have started working on the Evaluate asset task by selecting Start Work.
The Start Work option changes to Start Timer and Record Time automatically.
9. Optional: Record the time worked on the task.
You can either use the timer or record the time manually. For more details, see Record time
worked on asset repair tasks in the Enterprise Asset Workspace.
An entry for the time you worked is created in the Time Worked tab of the Evaluate asset task.
10. Select the Details tab.
11. Select the evaluation result in the Evaluation result field.
◦ If the asset is repaired and redeployable, select Redeployable.
◦ If the asset can't be used and should be disposed of, select To be disposed.
12. Optional: Enter the issue identified with the asset during the repair process in the Issue
identified field.
This field is automatically populated with the value carried forward from the repair asset task
if the issue is identified and a value is provided in the Issue identified field. Once the task is
closed, this field can’t be modified.
13. Enter notes related to the task in the Work notes field.
14. Select Close task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1808


<!-- page 1809 -->
Result
• If you had set the Evaluation result to To be disposed, the following changes happen on
closure of the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and the substate changes to Pending disposal.
• If you had set the Evaluation result to Redeployable, the following changes happen on closure
of the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and the substate changes to Available.
Bulk close asset repair tasks in the Enterprise Asset Workspace
Complete and close multiple repair tasks at one go to process a repair order with multiple repair
order lines.

Before you begin

Role required: sn_eam.enterprise_asset_technician

About this task

You can bulk close only similar asset repair tasks that are in the Open state. However, you can't
bulk close similar repair tasks for which the task result isn't the same. For example, you can't bulk
close two Troubleshoot assets tasks, when one task has a repairable asset and the other has an
unrepairable asset.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select a repair order with multiple open repair order lines for which you want to complete the
asset repair tasks.
4. Select the Repair order lines tab.
5. Select the repair order line that you want to complete.
6. Select the repair task that you want to close.
7. On the Details form, select the task result.
◦ If you’re completing a Troubleshoot asset task, then select any of the following results in the
Troubleshoot result field:
▪ Repairable
▪ Unrepairable
▪ Redeployable
◦ If you’re completing a Repair asset task, then select any of the following results in the Repair
result field:
▪ Repaired
▪ Unrepairable
▪ Redeployable
◦ If you’re completing an Evaluate asset task, then select any of the following results in the
Evaluation result field:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1809


<!-- page 1810 -->
▪ Redeployable
▪ To be disposed
8. Enter notes related to the task in the Work notes field.
9. Select Save.
10. Select Bulk Close.
The Select Assets dialog box with similar repair tasks is displayed.
11. Select the tasks that you want to close and select Close Task.

Result

All the selected repair tasks are closed with the same task result and Work notes.
Cancel a repair order in the Enterprise Asset Workspace
Cancel a repair order that no longer needs to be fulfilled.

Before you begin

Role required: enterprise_asset

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select a repair order that's in the Draft or In Progress stage.
4. Select Cancel.

Result
• The stage of the repair order changes to Cancelled and the state changes to Closed
Incomplete.
• The stage and state of the repair order lines that weren't completed change to Cancelled and
Closed Incomplete.
Cancel a repair order line in the Enterprise Asset Workspace
Cancel a repair order line that no longer needs to be fulfilled.

Before you begin

Role required: enterprise_asset

Procedure
1. Navigate to All > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select a repair order that's in the Draft or In progress stage.
4. Select the Repair order lines tab.
5. Select the repair order line that you want to cancel.
You can cancel a repair order line that is not in the Completed stage.
6. Select Cancel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1810


<!-- page 1811 -->
Result
• The stage of the repair order line changes to Cancelled and the state changes to Closed
Incomplete.
• The state of the associated repair asset tasks that were open changes to Closed Incomplete.
• The stage of the repair order changes to Cancelled only if there aren't any other repair order
lines that are in the Troubleshoot, Repair, Evaluate, or Completed stage.
Record time worked on asset repair tasks in the Enterprise Asset Workspace
Manage and record time worked on Troubleshoot asset, Repair asset, and Evaluate asset tasks
in the Enterprise Asset Workspace. After you start work on a repair asset task, you can pause and
resume work. You can also record the time worked manually.
Record time worked on a repair task automatically in the Enterprise Asset Workspace
Record the time that you took to complete a repair task without taking any break until you
completed the task.

Before you begin

Role required: enterprise_asset_technician

About this task

You can record the time worked for Troubleshoot asset, Repair asset, and Evaluate asset tasks
that are in the Open state.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select the repair order that you’re working on.
4. Select the Repair order lines tab.
5. Select the repair order line that you’re working on.
6. Select the Repair asset tasks tab.
7. Select the asset repair task for which you want to record the time worked.
8. Indicate that you started work on the task by selecting Start Work.
The Start Work option changes to Start Timer and Record Time automatically.
9. Select Start Timer.
10. After you have completed working on the task, on the Details form, select the task result.
◦ If you have completed a Troubleshoot asset task, then select any of the following results in
the Troubleshoot result field:
▪ Repairable
▪ Unrepairable
▪ Redeployable
◦ If you have completed a Repair asset task, then select any of the following results in the
Repair result field:
▪ Repaired
▪ Unrepairable
▪ Redeployable
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1811


<!-- page 1812 -->
◦ If you have completed an Evaluate asset task, then select any of the following results in the
Evaluation result field:
▪ Redeployable
▪ To be disposed
11. Enter notes related to the task in the Work notes field.
12. Select Close Task.

Result

The actual time you worked on the task completion is automatically calculated. An entry for the
time worked is created in the Time Worked tab of the asset repair task.
Record time worked on a repair task manually in the Enterprise Asset Workspace
Create an entry for the time worked on a repair task manually in the Enterprise Asset Workspace.

Before you begin

Role required: enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select the repair order that you’re working on.
4. Select the Repair order lines tab.
5. Select the repair order line that you’re working on.
6. Select the Repair asset tasks tab.
7. Select the task for which you want to record time manually.
8. Indicate that you started work on the task by selecting Start Work.
The Start Work option changes to Start Timer and Record Time automatically.
9. Select Record Time.
10. In the Record Time dialog box, enter the details of the time worked.
a. Enter the time duration that you worked on the task in the Days, Hours, and Minutes fields.
b. Optional: Provide any additional information in the Comments field.
11. Select Save.

Result

The Time Worked form is saved and the time card is added to the Time Worked tab of the asset
repair task.
Pause a repair task in the Enterprise Asset Workspace
Record a break from a repair task in the Enterprise Asset Workspace if you’re not continuing to
work on it. Resume the task when you start working on it again. The system automatically tracks
and calculates the actual time taken to complete the task even though the work was interrupted.

Before you begin

You can pause an asset repair task that is in the Work in Progress state. The option to pause the
task is available only after you perform the following actions for the asset repair task:
1. Indicate that you have started working on the task by selecting Start Work.
2. Start recording the time by selecting Start Timer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1812


<!-- page 1813 -->
Role required: asset_technician

Before you begin

Role required: enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select the repair order that you’re working on.
4. Select the Repair order lines tab.
5. Select the repair order line that you’re working on.
6. Select the Repair asset tasks tab.
7. Select the task that you want to pause.
8. Select Pause Work.
The Pause Work changes to Resume Work.
9. Select Resume Work when you’re ready to work on the activity again.

Result

Each time you pause or resume work on the task, the actual time you worked on the task is
automatically calculated. An entry for the time worked is created in the Time Worked tab.
Manage enterprise asset picking within your stockrooms
Enable the Asset pick task explicitly for your stockroom and provide granular location details of
the asset to facilitate asset picking within your stockroom.
Enable the Asset pick task for your stockroom in the Enterprise Asset Workspace
Enable the Asset pick task for your stockroom so that the task is automatically added to Standard
Enterprise Asset requests, Enterprise Asset Refresh requests, and Sourcing workflow.

Before you begin

Role required: inventory_user

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of available stockrooms, select the stockroom for which you want to enable the
Asset pick task and Asset put away task.
4. On the Stockroom Details form, select the Warehouse tasks required check box.
5. Select Save.
Add aisles and spaces to a stockroom in the Enterprise Asset Workspace
Add details of aisles and spaces in a stockroom to provide granular location details of an asset
in that stockroom. The aisle and space details enable you to locate and pick an asset in the
stockroom.

Before you begin

Role required: inventory_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1813


<!-- page 1814 -->
About this task

A space is associated with an aisle in the stockroom. You can add a space only after you have
added a minimum of one aisle to the stockroom.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select a stockroom.
4. Select the Aisle and spaces tab.
The list of existing aisles and spaces in that stockroom is displayed.
5. Add aisles to the selected stockroom.
a. Select Add aisle.
The Add aisle dialog box is displayed.
b. In the Aisle field, enter a unique identifier for the aisle.
You can enter any string value in this field. For example, aisle_0001.
c. Optional: To add more aisles, select the Add icon (
aisle in the Aisle field.

) and enter a unique identifier for the

d. Select OK.
The aisle is added to the list in the Aisle and spaces tab.
6. Add a space to an aisle in the stockroom.
a. Select Add space.
The Add space dialog box is displayed.
b. In the Aisle field, select the aisle for which you want to add a space.
c. In the Space field, enter a unique identifier for the space.
You can enter any string value in this field. For example, space_0001.
d. Optional: To add more spaces, select the Add icon (
space in the Space field.

) and enter a unique identifier for the

e. Select OK.
◦ The space is added to the list in the Aisle and spaces tab.
◦ The display name of the space is automatically set based on the Aisle and Space fields. For
example, the display name of the space whose aisle is aisle_001 and space is space_001 is
aisle_001 - space_001.
View the open enterprise asset pick tasks for your stockroom
View the open asset pick tasks for your stockroom to get the details of the tasks that need action.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1814


<!-- page 1815 -->
Before you begin

Role required: inventory_user

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom.
In the Open stockroom tasks section, the Open pick tasks card displays the number of open
pick tasks.
4. Select the Open pick tasks card.

Result

The list of open asset pick tasks for the stockroom is displayed.

What to do next

Manage all the enterprise asset pick tasks assigned to you by using the Mobile Agent
application. For details, see Manage enterprise asset pick tasks using the Mobile Agent
application.
Manage asset put away using the Enterprise Asset Workspace
Enable the Asset put away task explicitly for your stockroom to put away the assets from the
receiving bay in the designated aisle-space. View the open Asset put away task and close it after
specifying the aisle-space value to move the asset in the stockroom.
Enable the asset put away task for your stockroom in the Enterprise Asset Workspace
Enable the Asset put away feature for your stockroom so that the Asset put away task is
automatically created to track asset movement.

Before you begin

Role required: inventory_user

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of available stockrooms, select the stockroom for which you want to enable the
Asset pick task and Asset put away task.
4. On the Stockroom Details form, select the Warehouse tasks required check box.
5. Select Save.

Result

The inventory user can perform asset put away for in stock assets in the stockroom.
View open put away tasks for your stockroom in the Enterprise Asset Workspace
View the open put away tasks for your stockroom in the Enterprise Asset Workspace to get the
details of the tasks that need action.

Before you begin

Role required: inventory_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1815


<!-- page 1816 -->
Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. View the open put away task either from the Inventory overview section or the All Stockrooms
tab.
◦ In the Inventory overview section, select the Open put away tasks number.
◦ In the Stockrooms tab, select a stockroom. In the Open stockroom tasks section, select the
Open put away tasks number.

Result

The list of open Asset put away tasks are displayed.

What to do next

Put away the asset in the desired drop-off location in the stock room and close the Asset put
away task after adding the Drop off location field value in the Asset put away task form. For
more information about closing Asset put away task, see Close an Asset put away task in the
Enterprise Asset Workspace.
Create an Asset put away task in the Enterprise Asset Workspace
Create an Asset put away task manually for the In stock assets in the Enterprise Asset
Workspace to track the movement of assets within the stockroom.

Before you begin

Role required: inventory_user

About this task

You can create an asset put away task in the Enterprise Asset Workspace for the In stock assets
for which the Aisle and Space field value isn’t already specified. When you create a put away
task, you can either directly close the task or save it. To close the task, the Drop off location field
value is required.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Open the Create New Asset put away task form either from the Inventory overview section or
the All Stockrooms tab.
◦ In the Inventory overview section, select the Open put away tasks card and select New.
◦ In the Stockrooms tab, select a Stockroom and then in the Open stockroom tasks section,
select the Open put away tasks card. Select New.
3. On the form, fill in the fields.
For a description of the field values, see Asset put away task fields.
4. Save your modifications.
◦ To save your changes and create the Asset put away task, select Save.
◦ To save your changes and close the Asset put away task, select Close task.

Note: Drop off location field value is required to close the Asset put away task.
Close an Asset put away task in the Enterprise Asset Workspace
Add the asset drop-off location for an open Asset put away task and close it in the Enterprise
Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1816


<!-- page 1817 -->
Before you begin

Role required: inventory_user

About this task

You can bulk close selected Asset put away tasks that are open and assigned to you by
specifying a drop-off location, which moves all associated assets to that location. You can also
close individual tasks by specifying a drop-off location.

Note: When you make the following changes to an enterprise asset, the associated Asset
put away task is closed:
• When the asset’s Aisle and Space value is filled, the associated Asset put away task for
the asset is closed, and the State field is updated to Closed Complete.
• When the asset’s State is updated from In stock to some other value without adding the
Aisle and Space field value, the associated Asset put away task is closed and its State
field is updated to Closed Incomplete.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Open the put away task either from the Inventory overview section or the All Stockrooms tab.
◦ In the Inventory overview section, select the Open put away tasks card and select the
Number link to open the Asset put away task.
◦ In the All Stockrooms tab, select a stockroom. In the Open stockroom tasks section, select
the Open put away tasks card and then select the Number link to open the Asset put away
task.
3. In the Put away task form, select the Drop off location value.
4. Save your modifications or close the put away task.
◦ To close the put away task, select Close task.
◦ To save your changes and stay on the same page, select Save.
◦ To close multiple put away tasks, select Bulk close.
The Select Assets dialog box is displayed listing the Asset put away tasks assigned to you.
Select the tasks that you want to close and select Close Task.

Result
• Closed tasks aren’t displayed in the Open put away tasks list.
• The task closure is captured in the Activity tab. The name of the user who closed the task is
shown in the work notes.
.
Manage the receiving of assets at stockrooms in the Enterprise Asset Workspace
Receive enterprise and consumable assets at stockrooms from any workflow at a centralized
location on the stockroom form in the Enterprise Asset Workspace.
Depending on the number and type of assets that you want to receive, you can select from the
following options to receive assets at your stockroom:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1817


<!-- page 1818 -->
• Receive a single enterprise asset at your stockroom.
• Receive one or more enterprise and consumable assets from the list of shipment assets.
• Import and receive enterprise and consumable assets in bulk through an Excel template.

Note: You should have the sn_eam.enterprise_admin role to import asset records using
the Excel template.
For more details, see Receiving enterprise and consumable assets at stockrooms.
Receive an enterprise asset at a stockroom in the Enterprise Asset Workspace
Receive a single enterprise asset that has arrived at your stockroom, whether it's part of a
workflow or not, in the Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.asset_technician or sn_eam.enterprise_asset_manager

About this task

This task enables you to receive assets in the following scenarios:
Receiving an enterprise asset with an existing record
When you’re receiving an enterprise asset from workflows such as a transfer order
or Return Merchandise Authorization (RMA), where a repaired asset has arrived
at your stockroom, the asset record exists in your ServiceNow instance. You can
search for the existing asset record using the Asset tag or Serial number and
then receive the asset, which automatically closes the receive task of the source
workflow.
Receiving a new enterprise asset at your stockroom
When you're physically receiving a new enterprise asset at your stockroom, it's likely
that the asset record isn't present in your ServiceNow instance. You can receive
new assets through workflows like a purchase order, asset refresh, or RMA with a
replacement asset. Through this task, you can create an asset record and associate
it with the source workflow, which automatically closes the receive task linked to the
source workflow.
Receiving an independent enterprise asset
You can receive an enterprise asset that isn't part of any workflow and has arrived at
your stockroom.

Important: You can also receive an hardware asset only if the Hardware Asset
Management application is activated.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom for which you want to receive the hardware asset.
4. Select Receive assets.
5. Find the enterprise asset that you want to receive.
a. In the Receive assets dialog box, enter the Asset tag or Serial number of the asset that you
want to receive in the search field.
b. Select Search.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1818


<!-- page 1819 -->
▪ If the asset record is found, it appears in the Assets list.

Note:
The following asset details are displayed:
▪ Display name
▪ Model category
▪ Asset tag
▪ Quantity
▪ State
▪ Stockroom
▪ Location
▪ If the asset record isn't found, a message appears indicating that the asset isn't found,
along with an option to create the asset record.
6. Receive the enterprise asset in your stockroom.
◦ If the asset record is found in the Assets list, select the asset record and then select
Receive.
Result
▪ The State of the asset changes from In transit to In stock.
▪ The Stockroom field on the asset form is automatically updated with the
stockroom at which you received the asset.
▪ The receive task in the source workflow associated with the asset that you
received are automatically closed.
◦ If the asset record isn't found, create one to receive.
a. Select Create asset.
b. In the Create asset dialog box, enter the details.
Create asset dialog box
Field

Description

Model

Specific product model of the asset.
This field is required.

Model
Category

Model grouping of the asset.

Serial
Number

Serial number of the asset.

This field is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1819


<!-- page 1820 -->
Field

Description

Note: Depending on the Model Category that you selected, this field
is either required or optional. For instance, Serial number is required
for Computer model category.
Unique fields that are required on the asset records are defined
by the identification rules on the associated CI classes defined
in the Identification and Reconciliation engine (IRE). When you
create an asset whose model category is linked to a CI class with
an identification rule, you should provide details for at least one of
the fields, such as Asset tag, Serial number, and MAC address, that
uniquely identify the asset.
Asset Tag

Tag to help track the asset.

Mac
Address

MAC address of the asset.

Stockroom Name of the stockroom that you selected to receive the asset.
name
This field is automatically populated and is read only.
Source
type

Source workflow to which the asset that you’re receiving belongs.
▪ To receive the asset from a purchase order, select PO.
▪ To receive the asset from the RMA flow, select Asset RMA.
▪ To receive the asset through asset refresh workflow, select Refresh.

Source
ticket

Request number of the source workflow that's associated with the asset that
you want to receive.
▪ To receive an asset from a purchase order or asset refresh order, select
the associated PO line number.
▪ To receive an asset from an RMA order, select the associated RMA line
number.

Note: Source tickets are displayed based on the model and source
type that you selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1820


<!-- page 1821 -->
Important:
Providing the Source type and Source ticket details is optional when creating an
asset record. However, including these details links the enterprise asset to the
source workflow. This link results in the automatic closure of the Receive task in the
source workflow when the asset is created. If you don't include these details, the
asset record is still created, but you should close the Receive task manually in the
source workflow.
Note the following points before you consider creating an asset record:
▪ If you're receiving an asset from an RMA workflow, you can create an asset record
first. Later, you can manually add the details of this asset in the Asset RMA receive
task, and then close the task.
▪ If you're receiving an asset from a purchase order, you can create an asset record
for the asset you physically received. However, you can't receive the same asset
later through the Receive task on the purchase order.
c. Select Create.
Result
▪ An asset record is created with State as In stock and Substate as Available.
▪ The Stockroom field on the asset form is automatically updated with the
stockroom at which you received the asset.
▪ The receive task in the source workflow is automatically closed only if you
provided the Source type and Source ticket details.
Receive assets from inbound shipments at your stockroom in the Enterprise Asset Workspace
Receive enterprise and consumable assets from one or more shipments that are in transit to your
stockroom in the Enterprise Asset Workspace. You can receive assets from shipments originating
from any workflow.

Before you begin

Role required: sn_eam.asset_technician or sn_eam.enterprise_asset_manager

About this task

If you don't have the details of the assets you want to receive at your stockroom, you can view the
list of assets that are on their way and then receive them. You can receive the complete quantity
of consumables in the shipments, not a partial quantity.
Assets from an inbound shipment can be received under the following conditions:
• The assets must have a serial number and an asset tag.
• The assets must be in the In-transit state and linked to a shipment record.
• Hardware assets can be received only if the Hardware Asset Management application is
activated.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom for which you want to receive hardware or consumable assets.
4. Select Receive assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1821


<!-- page 1822 -->
5. In the Receive assets dialog box, select View all inbound assets.
A list of all shipment assets currently on their way to the stockroom is displayed.
The following details of a shipment are displayed:
◦ Asset: Display name of the asset.
◦ Stage: Stage of the shipment.

Note: Only shipments that are In transit are displayed.
◦ Model categories: Model grouping of the asset.
◦ Quantity: Number of assets to be received.
◦ Asset tag: Tag to track the asset.
◦ Serial number: Serial number of the asset.
◦ Tracking number: Identifier to track the shipment.
◦ Source: Details of the source workflow including the request number through which you’re
receiving the asset. The source could be a transfer order line, a purchase order line, an RMA
order line, or any other workflow through which the asset is received.
6. Select the shipment asset that you want to receive and then select Receive.

Result

If the asset details are valid, the following changes occur:
• The assets are received successfully.
• The State of the assets changes from In transit to In stock, and the Substate of the assets
changes from Reserved to Available.
• The stockroom field on the asset form is automatically updated with the stockroom at which
you received the assets.
• The Status of the shipment tasks associated with the assets changes to Delivered.
• The receive tasks in the source workflows are automatically closed.
If any of the asset details are invalid, an error message in shown in the Alert column for the
corresponding asset record. You should resolve the error before receiving the assets.
Import and receive assets in bulk at your stockroom in the Enterprise Asset Workspace
Receive multiple enterprise and consumable assets at your stockroom by importing the asset
records using an Excel template in the Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.enterprise_admin

About this task

This task enables you to receive assets with existing records, and also new assets, only if you
have provided valid asset details in the template.
When you import a template with asset details, extensive validation is performed on each row.
The records from the template and the validation results are stored in the Import asset row
[sn_itam_cmn_import_asset_row] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1822


<!-- page 1823 -->
Note: The sn_itam_common.receive_assets_batch_size system property
determines how many asset records are processed at once when logging imports and
receiving jobs. By default, the system handles 1,000 asset records per batch. With the
admin role, you can adjust this number to optimize the system performance and handle
large volume of assets. This system property supports domain separation by using the
application property.
The asset data validation takes care of the following points:
• Child assets can't be received.
• Hardware assets can only be received if the Hardware Asset Management application is
activated.
• Operational Technology (OT) assets can only be received if the OT Asset Management
application is activated.
• Assets can be received only if the following conditions are fulfilled:
◦ The required fields are provided.
◦ The asset quantity is valid.
◦ The Source type and Source ticket details are valid.
• Asset from purchase order lines can be received only in Zurich and later releases.
• Asset bundles can't be received.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom for which you want to receive hardware or consumable assets.
4. Select Import assets.
5. Prepare the asset data for import, and then proceed with the import.
a. Download, update, and save the asset import template.
i. Select Download Template.
ii. Fill in the template with the details of the assets that you want to import and receive.
The template has the following columns:
▪ Asset tag and Serial number: These fields are used to determine whether the asset
record exists in your ServiceNow instance or not.
▪ Model category, Model name, and Model number: The fields required to validate an
asset record depend on the model category. For example, a serial number is required for
the Computer model category, and you can receive assets of that model category only
if the serial number is provided. Additionally, if an asset record isn't found, fields related
to the model are required to create one using the Asset tag and Serial number values
provided in the template.
▪ Quantity: This field should have a value of 1 for enterprise assets, and for consumables,
it should reflect the number of assets you’re receiving. You can't receive a partial
quantity of consumables.
▪ Manufacturer: Asset manufacturer.
▪ Source type: The source type is the workflow through which you’re receiving the asset.
You should enter values that correspond to the workflows, such as the following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1823


<!-- page 1824 -->
▪ TOL for transfer order line
▪ POL for purchase order line
▪ RMAL for Return Merchandise Authorization (RMA)

Note: This field is required for a consumable asset so that the correct asset is
identified and received.
▪ Source ticket: The request number of the source workflow that's associated with the
asset that you want to receive, such as TO line number, PO line number, or RMA line
number.

Note: This field is required for a consumable asset so that the correct asset is
identified and received.
▪ Reserved for
▪ Parent asset
▪ MAC address and OT entity: These fields are required to identify and receive OT
assets.
iii. Save the template.
b. On the Create New Import asset form, fill in the details.
i. In the Name field, provide a name for the asset import record.
ii. Select Attach file and then select the asset import template that you created in step a.
c. Select Import.
▪ The Import asset data rows tab is displayed, showing all the asset record rows that were
imported through the Excel template.

Note: Depending on the number of records being processed, it might take some
time for the asset records to appear in the Import Asset Data Rows tab.
▪ The Status column indicates whether the asset is ready to be received. Here are the
possible values:
▪ Ready to receive: This status indicates that the asset data is valid and ready to be
received at your stockroom.
▪ Receive error (Asset not found): This error indicates that no asset records match the
details you provided in the template. However, since the details are valid, asset records
will be created when you proceed with the Receive action.
▪ Import error: This error is because of the invalid asset data provided in the asset import
template, such as duplicate serial numbers or invalid quantity for hardware assets.
▪ The Alert column provides details about any errors and the steps that you should take to
resolve them and successfully receive the asset.

Note: You can proceed to receive assets with a status of Ready to receive or Receive
error.
For assets with a status of Import error, correct the data issues in your template and
create a new import record to import the corrected template. You can then receive the
assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1824


<!-- page 1825 -->
6. Receive assets at your stockroom.
a. Select the import data rows corresponding to the assets that you want to receive.
b. Select Receive.
If you received the assets with Status Ready to receive, the following changes happen:
◦ The State of the assets changes from In transit to In stock, and the Substate of the assets
changes from Reserved to Available.
◦ The Stockroom field on the asset form is automatically updated with the stockroom at which
you received the assets.
◦ The receive tasks in the source workflows associated with the assets that you received are
automatically closed.
If you received the assets with Status Receive error, the following changes happen:
◦ Asset records are created with State as In stock and Substate as Available.
◦ The Stockroom field on the asset form is automatically updated with the stockroom at which
you received the assets.
◦ The receive task in the source workflow is automatically closed only if you provided the
Source type and Source ticket details.
Manage stockrooms with inventory reports in the Enterprise Asset Workspace
Track and manage stockrooms efficiently by evaluating the inventory reports in the Enterprise
Asset Workspace.
The inventory reports help you:
• Find replacement options or spare part availability for assets.
• Quickly identify shortages and align current demand in your stockroom with both current and
incoming supply.
• Analyze the supply to meet open demand across all stockrooms or locations.
Identify suitable replacement options for assets in the Enterprise Asset Workspace
Use the Inventory availability report to determine suitable replacement options for your assets
and their child components that are in use, in maintenance, pending repair, or defective. The
report also helps you to determine the quantity of available substitute models that can be used
locally, moved through the distribution channels, and estimate the lead time for new purchases.

Before you begin

The Inventory availability report is available only for enterprise, consumable, and bundle assets
that are in use, in maintenance, pending repair, or defective.
Service locations and distribution channels should be configured for the stockroom. If the asset's
location is a service location of a stockroom, it automatically becomes the local stockroom. A
location can have multiple local stockrooms if it is serviced by more than one stockroom. For
more details, see Add a distribution channel to a stockroom in the Enterprise Asset Workspace
and Add service locations to a stockroom in the Enterprise Asset Workspace.
Role required: sn_eam.enterprise_asset_technician or sn_eam.enterprise_asset_manager

About this task

The Inventory availability report helps you to identify the best sourcing option when sourcing
parts for assets or its components that are in use and nearing the end of their life, defective, or
pending repair. Additionally, you can check how much stock is currently available at a stockroom.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1825


<!-- page 1826 -->
Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Enterprise asset estate.
2. Select the asset for which you want to view the replacement assets available in the local and
remote stockrooms.
3. Select the Inventory availability tab.
The list displays the asset and any of its child assets, along with their linked models and any
substitute models. The list includes the following details:
Inventory availability report
Field

Description

Asset

Display name of the asset.

Model

Model of the asset.

Note: If there are any substitute models for the asset model, they’re also
displayed.
Asset
type

Indicates whether the asset is the original asset or a substitute model asset.
This field can have any of the following values:
◦ Original parent for the actual parent asset.
◦ Original child for the child of the original parent asset.
◦ Substitute parent for the asset of the substitute model.
◦ Substitute child for the child asset of the substitute model.

Local
Quantity of assets that are in stock and available in the stockrooms that service
stockroom the asset location.
quantity

Note:

If you select the quantity shown, you can view the full list of assets in your
local stockroom that can be used as replacements. There can be multiple
local stockrooms if more than one stockroom serves the same location.
Remote
Quantity of assets that are in stock and available in the distribution channel
stockroom stockrooms that are marked as inbound stockrooms to the current local
quantity
stockroom.

Note:
If you select the quantity shown, you can view the full list of assets in your
distribution channel stockrooms that can be used as replacements.
Purchase
lead time

Average time in days it has taken from ordering to receiving replacement assets
through new purchase orders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1826


<!-- page 1827 -->
Identify the supply and demand for models within a stockroom in the Enterprise Asset
Workspace
Use the Supply vs Demand report to evaluate the available and incoming quantity of models in
your stockroom and the requests for these models from different service locations. This report
helps you determine if you have enough assets to meet the demand.

Before you begin

Role required: sn_eam.enterprise_asset_technician or sn_eam.enterprise_asset_manager

About this task

Supply refers to the assets that are currently in stock and those that are incoming at your
stockroom. Demand refers to the requests for assets from different service locations that your
stockroom services.
Note the following points about the Supply vs Demand report:
• Supply of an asset model to your stockroom includes:
◦ In stock assets that are in the Available, Reserved, Pending transfer, and Pending install
substate
◦ Incoming transfer orders that are partially shipped, fully shipped, in transit, received, and
delivered
◦ Incoming purchase orders that are ordered
• Demand for an asset model includes:
◦ Outgoing transfer orders that are in the Draft, Requested, and Shipment preparation stage
◦ Asset requests
◦ Refresh requests
◦ Work order parts requests
The supply and demand details are stored in the Model and stockrooms
[sn_asset_model_and_stockroom] table. The Populate model and stockroom data
scheduled job runs daily to populate this table.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of stockrooms, select the one for which you want to view the supply and demand
details.
4. Select the Inventory insights tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1827


<!-- page 1828 -->
Supply vs Demand report

The Supply vs Demand report shows the count on the y-axis and the model on the x-axis, with
separate bars for supply and demand for each model. This visual representation helps you to
compare the available quantity of each model in the stockroom with the number of requests
from different service locations. By looking at the graph, you can determine which models have
enough supply to meet demand and which ones need more stock.

Note: By default, the graph shows details for only 10 models.
5. View the details of the model that isn't shown on the report.
a. Select the Model filter.
b. Enter the model in the search field or select the model from the Available list.
c. Move the selected model to the Applied list.
d. Select Apply.
6. To further drill down into the supply or demand for a model and view its component-level
details, select the corresponding bar.
◦ The supply graph shows the count of the following:
▪ In stock assets: Number of associated assets that are currently in the In stock state and
Available, Reserved, Pending transfer, and Pending install substate within the given
stockroom.
▪ Incoming transfer order:
▪ Starting with version 9.1.0 of the Enterprise Asset Management application, the
Incoming transfer order count is the number of associated assets that are currently
being transferred to the given stockroom. This number is based on the sum of the
Quantity remaining field value for all associated transfer order lines.
▪ Prior to version 9.1.0 of the Enterprise Asset Management application, the Incoming
transfer order count is the number of associated assets that have already been
transferred to the given stockroom. This number is based on the sum of the following
value for all associated transfer order lines:
Quantity requested field value - Quantity remaining field value
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1828


<!-- page 1829 -->
▪ Incoming purchase order:
▪ Starting with version 9.1.0 of the Enterprise Asset Management application, the
Incoming purchase order count is the number of associated assets that have been
ordered but not yet delivered to the given stockroom. This number is based on the sum
of the Remaining quantity field value for all associated purchase order lines.
▪ Prior to version 9.1.0 of the Enterprise Asset Management application, the Incoming
purchase order count is the number of associated assets that have been ordered and
delivered to the given stockroom. This number is based on the sum of the following
value for all associated purchase order lines:
Ordered quantity field value - Remaining quantity field value
◦ The demand graph shows the count of the following:
▪ Outgoing transfer order: Number of associated assets that are currently being transferred
from the given stockroom. This number is based on the sum of the Quantity requested
field value for all associated transfer order lines.
▪ Asset requests: Number of associated enterprise asset requests. This number is based
on the sum of the Quantity field value for all associated request items.
▪ Refresh requests: Number of associated enterprise asset refresh requests. TThis number
is based on the sum of the Quantity field value for all associated request items.
▪ Work order parts requests: Number of parts requests for associated work orders and
work order tasks. This number is based on the sum of the Quantity field value for all
associated request items.
By selecting the relevant bars, you can view the list of assets that make up the count.
7. Optional: To initiate the calculation of supply and demand for asset models manually, select
Recalculate quantity.
(Optional) The Supply vs Demand graph updates to show the recently calculated values.
Identify the supply for open demands in the Enterprise Asset Workspace
Use the Open demands report to determine available stock within local stockrooms and
distribution channels to fulfill sourcing requests that are open.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Procurement.
2. In the Procurement overview, select Open demands.
The report displays the list of open demands with the following details:
◦ Requests and Requested items.
◦ The quantity of the requested model available in local stockrooms that serve the asset
location.
◦ The quantity of the requested model available in distribution channel stockrooms that serve
the asset location.
◦ The purchase lead time, which is the average time in days it has taken from ordering to
receiving assets through new purchase orders.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1829


<!-- page 1830 -->
3. To view the current stock availability in the local stockrooms for all open requests for a model
and determine if there is sufficient quantity, select the number shown in the Local stockroom
quantity column.
The available asset quantity is determined by the current state. If two requests from a service
location, which is serviced by two or more stockrooms, are for the same model and the
available quantity is 100, the report will show 100 available in the local stockroom for both
requests. Once one request is fulfilled, the quantity will update to reflect the remaining amount
for the other request.
4. To view the current stock availability in the distribution channel stockrooms for all open
requests for a model and determine if there is sufficient quantity, select the number shown in
the Remote stockroom quantity column.

Create and manage contracts for enterprise assets
Create contracts for your enterprise assets and manage them by taking actions on contracts that
are nearing expiration or already expired.
You can take action on certain enterprise asset contracts that are either nearing their expiration
or have already expired.
If a maintenance or warranty contract is expiring or has already expired, you can renew the
contract by using the contract renewal workflow. For more information on renewing expiring
maintenance and warranty contracts, see Contract renewal workflow.
If a lease contract is expiring or has already expired, you can choose to:
• return the associated enterprise assets to the asset vendor,
• buy out the associated enterprise assets so that you can permanently add them to your asset
inventory,
• or extend the contract.
For more information on managing expiring lease contracts, see Managing expiring contracts for
leased enterprise assets.
Create a contract for your leased enterprise assets
Create a contract to define the lease details of your enterprise assets.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

The following steps describe how to create contracts for leased enterprise assets only. For
information on how to create other types of contracts, see Contract Management .

Procedure
1. From the Enterprise Asset Workspace, open the Contract and lease management view.
2. On the Lease contracts tab, select New.
3. On the Create New Contract form, fill in the fields.
See Contract fields for Enterprise Asset Management for a detailed description of each field.
4. Select Save.
A new contract record is created for the lease contract.
5. Build terms and conditions for the lease contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1830


<!-- page 1831 -->
Before you can build terms and conditions for a lease contract, you must create a terms and
conditions record and add it to the contract. For detailed instructions on how to create a terms
and conditions record, see Create a terms and conditions record . For detailed instructions
on how to add a terms and conditions record to a contract, see Add terms and conditions to a
contract .
a. On the lease contract record header, select the More Actions icon (

).

b. When prompted, select Build Terms and Conditions.
The terms and conditions are built for the lease contract and added to the Contract History
tab of the lease contract record. On the Contract History tab, you can select the date in the
Contract Starts field to view the complete terms and conditions for the lease contract.
6. Add all enterprise assets that are covered by the lease contract.

Note: If you created a multi-component asset from a multi-component model, only the
parent asset can be added to the lease contract. The associated child assets cannot be
added to the lease contract. See Multi-component models and assets in Enterprise Asset
Management for more information on multi-component assets.
a. On the Assets Covered tab of the lease contract record, select Add.
The Add assets dialog box opens.
b. In the dialog box, select the check box for each enterprise asset that is covered by the lease
contract.

Note: The dialog box displays only the enterprise assets that are not already covered
by another active lease contract.
c. Select Add.
The dialog box closes and the Assets Covered tab automatically reloads with the list of all
enterprise assets that you added.
7. Create expense lines to track the cost of each enterprise asset that is covered by the lease
contract.
a. On the Expense Lines tab of the lease contract record, select New.
b. On the Create New Expense Line form, fill in the fields.
See Expense line fields for Enterprise Asset Management for a detailed description of each
field.
c. Select Save.
A new expense line record is created for the selected enterprise asset.
d. Close the expense line record to return to the Expense Lines tab of the lease contract
record.
e. Repeat steps a to d for each expense line that you want to create.
8. Create child contracts that you want to associate with the lease contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1831


<!-- page 1832 -->
a. On the Child Contracts tab of the lease contract record, select New.
b. In the Contract model field of the Create New Contract form, search for and select the type
of contract that you want to create.
c. Configure the child contract by following the same steps that you used to configure the lease
contract (steps 3 to 7).
d. Select Submit For Review.
A review notification is sent to the user that you specified in the Approver field of the child
contract record. After reviewing the child contract, the user can either approve or reject it.
e. Repeat steps a to d for every child contract that you want to create.
9. Select Submit For Review.
A review notification is sent to the user that you specified in the Approver field of the lease
contract record. After reviewing the lease contract, the user can either approve or reject it.
Managing expiring contracts for leased enterprise assets
You can use the Contract and lease management view to track and take action on leased
enterprise assets that are nearing the end of their contracts. You can choose to return your
leased enterprise assets, buy out your leased enterprise assets, or extend your lease contracts.

Lease management flow
When a lease contract for a given enterprise asset is nearing its expiration, the Enterprise Asset
Management application automatically sends out a notification informing you that the contract
will be expiring soon. You can customize the timing, content, and recipients of this expiry
notification by navigating to System Notification > Email > Notifications and then selecting
Contract Threshold breached from the list of available email notifications.
After you receive an expiry notification for one of your lease contracts, you can begin the leaseend process for that contract.

Note: You can begin the lease-end process only for active lease contracts that are

expiring within 90 days but do not have a Substate of Expiring. A Substate of Expiring
indicates that the lease-end process for that contract has already begun.
When the lease-end process begins, the Enterprise Asset Management application
automatically generates a Planning task that you must complete to specify what action you want
to take on either the associated enterprise asset or the lease contract itself. You can choose to
• return the enterprise asset to the asset vendor,
• buy out the enterprise asset so that you can permanently add it to your asset inventory,
• or extend the lease contract.
Based on the action that you select, you must then perform all subsequent tasks to complete the
lease-end process and move the lease contract out of the expiring substate.
Begin the lease-end process for an expiring enterprise asset lease contract
Initiate the lease-end process for an expiring enterprise asset lease contract so that you can
return the associated enterprise asset, buy out the associated enterprise asset, or extend the
lease contract.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1832


<!-- page 1833 -->
Before you begin

Important: You can begin the lease-end process only for active lease contracts that are
expiring within 90 days but do not have a Substate of Expiring. A Substate of Expiring
indicates that the lease-end process for that contract has already begun.

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Contract and lease management view.
2. On the Lease contracts tab, select the lease contract for the enterprise asset that you want to
return, buy out, or extend the contract for.
The lease contract record opens.
3. On the lease contract record header, select Begin lease-end process.
4. When prompted to confirm that you want to begin the lease-end process for the contract,
select OK.

Result

The lease-end process for the specified lease contract begins. The Enterprise Asset
Management application then automatically generates a Planning task for the lease contract.

What to do next

Complete the Planning task for the lease contract so that you can specify what action you want
to take on either the associated enterprise asset or the lease contract itself. See Complete the
Planning task for an expiring enterprise asset lease contract for detailed instructions.
Complete the Planning task for an expiring enterprise asset lease contract
Complete the Planning task for an expiring enterprise asset lease contract so that you can
proceed with either returning the associated enterprise asset, buying out the associated
enterprise asset, or extending the lease contract.

Before you begin

To generate the Planning task for an expiring lease contract, you must initiate the lease-end
process for that contract. See Begin the lease-end process for an expiring enterprise asset lease
contract for detailed instructions.
Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Contract and lease management view.
2. On the Lease-end assets tab, select the lease contract for the enterprise asset that you want
to return, buy out, or extend the contract for.

Note: You must select a lease contract that is in the Planning stage.
The lease contract record opens.
3. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Planning task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1833


<!-- page 1834 -->
The Planning task opens.
4. On the Details tab of the Planning task, fill in the fields.
Details tab
Field

Description

Contract Asset Task
Number

Task number used to identify and track the Planning task. This field populates
automatically.

Contract

Lease contract that the task is associated with. This field populates
automatically.

Asset

Enterprise asset that is associated with the lease contract. This field populates
automatically.

Location

Current location of the associated enterprise asset. This field populates
automatically.

Lease
action

Action that you want to take on the associated enterprise asset. Select one of
the following options:
◦ Return
◦ Extend

Note: If you select this option, the Enterprise Asset Management
application automatically creates a purchase order and purchase order
line for the lease contract extension.
◦ Buyout

Note: If you select this option, the Enterprise Asset Management
application automatically creates a purchase order and purchase order
line for the enterprise asset buyout.
State

State of the task.

Assignment Group to which the task is assigned.
group
Assigned to User to which the task is assigned.
Work notes Users who receive notifications when work notes are added to the task.
list
Short
Brief description of the task.
description
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1834


<!-- page 1835 -->
Field

Description

Description Detailed description of the task.
Notes
Work notes Notes about the task that are visible to all users within your organization.
5. Select Close Task.

Result

The Planning task automatically closes with an updated state of Closed Complete.

What to do next

Based on the action that you selected in the Lease action field, complete all necessary tasks to
return the associated enterprise asset, buy out the associated enterprise asset, or extend the
lease contract.
Return a leased enterprise asset
Return a leased enterprise asset to the asset vendor before the corresponding lease contract
expires.

Before you begin

Before you can proceed with returning a leased enterprise asset, you must complete the
Planning task for the associated lease contract. See Complete the Planning task for an expiring
enterprise asset lease contract for detailed instructions.
Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Note: The sn_eam.enterprise_asset_technician role can also perform the Collection,
Preparation, and Shipment tasks. However, this role can perform these tasks only through
the Lease-end tasks Quick links card that is available on the Enterprise asset overview.

Procedure
1. From the Enterprise Asset Workspace, open the Contract and lease management view.
2. On the Lease-end assets tab, select the lease contract for the enterprise asset that you want
to return.
The lease contract record opens.
3. Complete and close the Collection task for the lease contract.
To successfully complete and close this task, you must collect the enterprise asset that you
want to return.
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Collection task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1835


