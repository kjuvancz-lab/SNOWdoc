# Zurich IT Asset Management — Hardware Asset Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1266–1415 of 2359 | Part 2 of 3

Sections: Hardware Asset Management (p1116); Explore (p1117); Configure (p1204); Use (p1209); Reference (p1387)

---

<!-- page 1266 -->
About this task

After you choose to extend the lease contract of your asset, various Contract Asset tasks are
created to take care of the contract extension process. Close each task to go to the next task and
to complete the process.
Note: To close the Extension tasks, the Purchase order that is created for the leased asset
must be approved by the Procurement manager.

Procedure
1. Navigate to All > Contract > Contracts > Leases.
2. Under the Related Links section, click the Leased Assets related list.
3. Open an asset.
4. Under the Contract Asset Tasks tab, open the Planning task.
5. Select Extension from the Lease action list.
6. Change the State field to Closed Complete.
To take a lease action, you can follow any of the ways mentioned in Manage your expiring
contracts for leased hardware assets.
The Purchase order and Purchase order lines are created. The PO Type field on the Purchase
order line is automatically set to Extension. You can order the Purchase orders only after
completing all the asset tasks that are associated with the items of the Purchase Order line.
After the Purchase orders are created, Expense lines are created to track the costs of the
contract extension.
An Extension task is created to take care of the extension process.
7. Under the Contract Asset Tasks related list, open the Extension task.
8. Under the Extension details tab, update the Extension start date and Extension end date
fields.
9. Update the Extension cost field with the amount to extend the lease agreement of the asset
covered.
The Purchase order line is automatically updated with the same amount.
10. Change the State field to Closed Complete.
An Extension Confirmation task is created to take care of the confirmation process.
11. Under the Contract Asset Tasks related list, open the Extension Confirmation task.
If you want to change the Extension amount from the Extension Confirmation task, then you
can change the amount from the Purchase order.

Note: To close the Extension Confirmation task, the Purchase order must be in the
Received state.
12. Set the Extension confirmation field to Yes.
13. Change the State field to Closed Complete.

Result

A new contract is created with the start and end dates set as the extension start and end dates.

Reclaim hardware assets
Reclaim hardware assets efficiently and store them in the inventory, reassign, send it for repair, or
dispose of as required.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1266


<!-- page 1267 -->
Submit an asset reclamation request
Use Reclaim Asset catalog item to efficiently reclaim hardware assets when an employee leaves
an organization or moves to a different role.

Before you begin

Role required: Any employee can submit an asset reclamation request.

About this task

Asset bundles and pallets can't be reclaimed.

Procedure
1. Navigate to All > Service Catalog > Asset Lifecycle > Reclaim Asset.
2. On the Reclaim Asset form, fill in the fields.
Reclaim Asset form
Fields

Description

Requested by

The role of the person, such as an HR
professional, Manager, or Employee, who
submits the asset reclamation.
◦ If Manager is selected, all the employees
reporting to the Manager appear in the
Requested for field.
◦ If Employee is selected, the Requested for
becomes read-only.

Requested for

Person for who you are submitting the asset
reclamation.

Employee separation

Whether the person for who you are
submitting the asset reclamation is leaving
the organization or moving to a different role.

Asset

Hardware assets assigned to the person
for who you are submitting the asset
reclamation.

Reclaim method

The method how you want to collect
the hardware assets from the departing
employee. You can pick up the assets or the
employee can either drop off or ship them to
the organization.

Legal hold method

If the hardware assets need to be kept on
hold because of any legal reasons.

Notes/Special instructions

Any instructions if you want to mention.

3. Click Submit.
An Asset Reclamation Request is created.
Close an asset reclamation request
Efficiently reclaim hardware assets when an employee leaves an organization or moves to a
different role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1267


<!-- page 1268 -->
Before you begin

Role required: inventory_user or inventory_admin

About this task

For each reclaimed asset, a Hardware Asset Reclamation Line is created. For each Hardware
Asset Reclamation Line, at most three Hardware Asset Reclamation Tasks are created.
You must close all the tasks of a Hardware Asset Reclamation Line to close the Hardware Asset
Reclamation Line. After all Hardware Asset Reclamation Lines are closed, the Asset Reclamation
Request is closed.

Procedure
1. Navigate to All > Inventory > Asset Reclamation > Asset Reclamation Request.
2. Open the Asset Reclamation Request that you want to close and then open a Hardware Asset
Reclamation Line.
Based the Reclaim method selected while submitting the Asset Reclamation request, a
Schedule drop off, Schedule pickup, or Schedule shipment task is created in the Hardware
Asset Reclamation Line.
The Stage field of the Hardware Asset Reclamation Line form shows Ready.
3. Open the Schedule drop off, Schedule pickup, or Schedule shipment task that is present in the
Hardware Asset Reclamation Line.
4. On the form, fill in the fields.
Schedule shipment task form
Field names

Description

Assignment group

Group to which the Schedule shipment task
is assigned.

Assigned to

User from the assignment group to whom the
Schedule shipment task is assigned.

Stockroom

Location where the reclaimed assets are
stored. This field is required.

Shipping carrier

Name of the carrier vendor who ships the
asset to the stockroom.
This field is required and it is a
reference to the Shipment carrier
[sn_itam_shipping_carrier] table.

Tracking number

Shipment reference number given by the
carrier vendor. This field is required.

Ship date

Date on which the asset is shipped. This field
is required.

Work notes

Any additional information that you want to
mention.

5. Select Close Task.
The Stage field of the Hardware Asset Reclamation Line form changes from Ready to Pending
received.
A Receive asset task is created in the Hardware Asset Reclamation Line.
6. Open the Receive asset task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1268


<!-- page 1269 -->
7. On the form, fill in the fields.
Receive asset task form
Field names

Description

Assignment group

Group to which the Receive asset task is
assigned.

Assigned to

User from the assignment group to whom the
Receive asset task is assigned.

Is asset reclaimed?

Select this check box if you’ve received the
assets. This check box is required.

Quantity received

Number of consumables received. This field
is required and appears only if the Hardware
Asset Reclamation Line is created for a
consumable.

Work notes

Any additional information that you want to
mention.

8. Select Close Task.
The Stage field of the Hardware Asset Reclamation Line form changes from Pending received
to Pending evaluation.
After an asset is received, in the asset form, the following changes occur:
◦ The Assigned to field on the asset record becomes empty.
◦ State of the asset changes to In stock and Substate changes to Pending repair.
9. On the form, fill in the fields.
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

Status of the reclaimed asset. This dropdown list is required and the available values
are:
◦ Re-deployable
◦ Needs repair
◦ To be disposed

Work notes

Any additional information that you want to
mention.

10. Select Close Task.
Based on what you selected from the Evaluation status drop-down list, the State, and
Substate of the asset change as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1269


<!-- page 1270 -->
Evaluation status values

Asset state and substate

State

Substate

Re-deployable

In stock

Available

Needs repair

In stock

Pending repair

To be disposed

In stock

Pending dispose

The Stage field of the Hardware Asset Reclamation Line form changes from Pending
evaluation to Complete.

Note: When the stage of all Hardware Asset Reclamation Lines has changed to Closed
Complete, the state of the Asset Reclamation Request also changes to Complete.

View RFID information of assets
View the Radio Frequency Identification (RFID) information of assets to manage and locate
important assets easily.

Before you begin

Role required: asset

Procedure
Navigate to a hardware asset for which you want to view the RFID information.
Interface

Action

a. Navigate to All > Hardware Assets.
b. Select an Asset tag for which you want to
view the RFID information.
Core UI

c. Select the Preview icon ( ) beside the RFID
tag field in the General tab.
d. Select Open Record to view the RFID infor­
mation of the asset.

a. Navigate to Hardware Asset Workspace >
Asset estate.
b. Select the Hardware assets tab.
Hardware Asset Workspace

c. Select the display name of a hardware asset
for which you want to view the RFID informa­
tion.
d. Select the Open Record icon ( ) in the
RFID tag field under the Details tab.

Note: The RFID tag field doesn't exist for an excluded asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1270


<!-- page 1271 -->
Field

Description

RFID tag

Unique identifier of the RFID tag in the RFID
system.

Site name

Name of the site as defined in the RFID
system.

Type

Resource type as defined in the RFID system.

Zone group

Zone group as defined in the RFID system.

Serial number

Unique identifier as defined in the RFID
system.

Zone group dwell

Length of time the asset has been in the
current zone group relative to the timestamp of
the data import.

Tag source

The application source of RFID data.

Zone

Zone as defined in the RFID system.

Last blink time

Last time the RFID tag was scanned.

Zone dwell

Duration for which the asset has been in the
current zone as compared to the timestamp of
the data import.

Last blink elapsed time

Duration for which the asset has been
scanned in the RFID system as compared to
the timestamp of the data import.

Grid-x, Grid-y, Grid-z

Physical location as defined in the RFID
system.

Status

Status of the matching of RFID information to
the resource.

Active

Option to map RFID information to the Asset
[alm_asset] table. This option is selected by
default.

Note:
The activity history is captured only for RFID tag and Zone.
Related topics
Integrating Zebra technology RFID system

Manage the lifecycle of hardware models with calculated lifecycle templates
Manage the complete lifecycle of hardware models by creating calculated lifecycle templates
and associating these templates with the models.
Create Calculated lifecycle templates in the Hardware Asset Workspace
Create Calculated lifecycle templates to manage the complete lifecycle of hardware models
efficiently.

Before you begin

Role required: asset
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1271


<!-- page 1272 -->
Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset Operations.
2. From the Hardware asset normalization list, select Calculated lifecycle templates.
The list of existing Calculated lifecycle templates is displayed.
3. Select New.
4. On the form, fill in the fields.
Create New Calculated Lifecycle Template form
Field

Description

Name

Name of the Calculated lifecycle template.

Description

Brief information about the template.

Active

Option to indicate that the Calculated lifecycle template is available for use.

5. Select Save.
The Calculated Lifecycle formulas tab is displayed with the list of calculated lifecycle formulas
for the following lifecycle phases:
◦ End of Extended Support
◦ End of life
◦ End of Sale
◦ End of Support
◦ End of General Availability
6. Define the calculated lifecycle formula for a lifecycle phase.
a. Select the calculated lifecycle formula.
b. In the Phase start and Phase end fields, enter the number of months for calculating the start
date and end date of the lifecycle phase.
c. Select Save.
The calculated lifecycle formula is updated with the values that you entered in the Phase start
and Phase end fields.

What to do next

Associate a hardware model with a Calculated lifecycle template.
Associate a hardware model with a Calculated lifecycle template
Associate a hardware model with a Calculated lifecycle template to populate the lifecycle details
of the model automatically.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Model management.
2. Select the All models tab.
3. Select the model that you want to associate with a Calculated lifecycle template.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1272


<!-- page 1273 -->
4. In the Model Details section of the Model form, enter the template details.
a. In the Calculated lifecycle template field, select the calculated lifecycle template that you
want to apply to the model.
b. In the Calculated lifecyle start date, select the date from which the Phase start date and
Phase end date are calculated for each lifecycle phase defined in the Calculated lifecycle
template that you selected.
5. Select Save.

Result

The list of lifecycle phases with details such as Phase start date, Phase end date, and Source is
displayed in the Model Lifecycles tab.

Receive asset warranty details from Lenovo
Connect to the Lenovo Warranty API and get the warranty details of your hardware assets.
Related topics
Integration with Lenovo for asset warranty details
Connect to the Lenovo Warranty API
Create a connection and credential to connect to the Lenovo Warranty API and download the
warranty information for hardware assets.

Before you begin

You should have the Client ID provided by Lenovo. If you don’t have one, contact your
organization's Lenovo sales or service representative.
Role required: admin

Procedure
1. Navigate to All > Connections & Credentials > Connection & Credential Aliases.
2. Select Lenovo.
3. From the Related Links, select Create New Connection and Credential.
4. Optional: Change the default connection name for the connection to the Lenovo Warranty API
In the Connection Name field.
By default, this field is set to Lenovo Connection.

Important: Don’t change the default URL specified in the Connection URL field.
5. In the Client ID field, enter the Client ID provided by Lenovo.
6. Select Create.

Result

The Lenovo connection is successfully created and listed in the Connections tab.
Track the warranty details of your Lenovo assets
View and track the warranty details of your Lenovo hardware assets from a central location in the
Asset operations view of the Hardware Asset Workspace.

Before you begin

Role required: asset
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1273


<!-- page 1274 -->
Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Asset warranty list, select Asset warranties.
◦ To see whether an asset is still in warranty, check the Status column.
◦ To track warranties that are nearing expiration, check the End Date column of the asset
record and the asset's status.
3. Optional: Select a warranty record to view more details.

Manage stockrooms
Manage the assets in the stockroom by using appropriate stock rules, service locations, and
distribution channels.
For details, see Stockrooms and Stock rules.
Create a stockroom
Create stockrooms to assign places to assets.

Before you begin

Role required: inventory_admin

About this task

Stockrooms are separate, standalone entities in the Asset Management application. When stock
is low on a particular asset, stock rules can notify an asset manager, or automatically transfer
inventory from one stockroom to another.

Procedure
1. Create a stockroom.
Interface

Action

Core UI

a. Navigate to All > Inventory > Stock > Stock­
rooms.
b. Select New.

Hardware Asset Workspace

a. Navigate to All > Hardware Asset Work­
space > Inventory.
b. Select All stockrooms.
c. Select New.

2. On the form, fill in the fields.
Create New Stockroom form
Field

Description

Name

Display name of the stockroom type.

Assignment group

Group that primarily uses the stockroom.

Location

Physical location of the stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1274


<!-- page 1275 -->
Field

Description

Type

Type of stockroom, such as Field Agent or On
site.

Manager

Person in charge of the stockroom. Receives
restocking notifications and requests for the
stockroom's stock rules.

3. Select Save.

Result

The stockroom is added to the list shown in the All stockrooms tab.
Delete a stockroom with assets
You can delete a stockroom. If the stock room has assets, you must remove the assets from the
stockroom first.

Before you begin

Role required: inventory_admin

Procedure
1. Navigate to All > Asset > All Assets.
2. Personalize the list to add the Stockroom column.
3. Filter the list to show only the assets in the stockroom that you want to delete.
4. Change or remove the stockroom for all of the asset records.
5. After removing assets from the stockroom you want to delete, continue with the instructions for
deleting a stockroom with no assets.
Delete a stockroom with no assets
You can delete a stockroom that has no assets.

Before you begin

Incomplete transfer orders must be deleted before you delete the stockroom.
Role required: inventory_admin

Procedure
1. Navigate to All > Inventory > Stock > Stockrooms.
2. Select the check box beside the stockroom name.
3. In the Actions list, select Delete.

Note: Transfer order history is deleted when you delete the stockroom.
Create a new stockroom type
If you need stockroom types that are not included in the base system, you can create a custom
stockroom type.

Before you begin

Role required: inventory_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1275


<!-- page 1276 -->
About this task

Check the priority level of the stockroom types provided in the base instance to ensure that you
assign the correct priority level to any new stockroom types you create. You can also modify the
stockroom types included in the base system.

Procedure
1. Navigate to All > Inventory > Stock > Stockroom Types and create a new record (see table for
field descriptions).

Field

Description

Name

Display name of the stockroom type.

Description General information about the stockroom type.
External
stockroom

Whether stockrooms of this type are managed internally (check box cleared) or
managed externally by a third party (check box selected).

Priority

Level of precedence for this type of stockroom.

Shipment
required

Option that determines if stockrooms of this type require shipment by default.

Value

Internal identifier of the stockroom type.

2. Click Submit.
View stockroom details
View detailed information about the stockrooms where your hardware, consumables, bundles,
pallets, loaner, enterprise, and other assets are located.

Before you begin

Role required: admin or asset

Procedure
1. Navigate to All > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of available stockrooms, select the stockroom.
4. View details about the stockroom on the Details tab.
View the following details about the stockroom:
◦ All open tasks associated with the stockroom through the Open stockroom task cards.
Selecting a card displays a list of the task records.
◦ The active stock rules of your stockroom. The stock rule cards from the contextual sidebar
help you know if the stock is less than the threshold and if the model has reached the end of
sale.
◦ The hours that the stockroom is available are shown in the Hours of operation field.
◦ The location of the stockroom based on the specified address is shown in the interactive
map. To view all service locations and distribution channels associated with the stockroom,
select Toggle full screen view.
◦ Options to enable AI agents in the Help manage hardware asset requests agentic workflow
to source hardware assets requests autonomously are available in the Sourcing by AI agents
section. The auto-sourcing options include the following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1276


<!-- page 1277 -->
▪ Auto-consume
▪ Auto-transfer
▪ Auto-purchase
For more details, see Configure a stockroom for automated sourcing by AI agents and Now
Assist for Hardware Asset Management (HAM) AI agent collection Help manage hardware
asset requests agentic workflow.
5. On the Task timeline tab, view the timeline of all scheduled stockroom tasks and the inbound
shipments, outbound shipments, and work activities associated with those tasks.
6. Optional: On the Task timeline tab, adjust the timeline view and timeline duration.
◦ Set the view to the calendar view with a specified time duration by selecting one of the
following values from the Calendar drop-down list in the top right:
▪ Day
▪ Work week
▪ Week
▪ Month
◦ Set the view to the timeline view with a specified time duration by selecting one of the
following values from the Timeline drop-down list in the top right:
▪ Day
▪ Week
▪ 4 Weeks
7. View the service locations and distribution channels of the stockroom and details of different
types of assets in the stockroom by selecting the tabs corresponding to the asset type.

Note: The tabs related to the enterprise assets appear only if the Enterprise Asset
®

Management application is installed on your ServiceNow instance. If you select an
enterprise asset, you’re automatically redirected to the corresponding record in the
Enterprise Asset Workspace. If you have access to an enterprise asset, you also have
access to the Enterprise Asset Workspace. For more details, see Enterprise Asset
Workspace.
Associate a stockroom with service locations
Manage sourcing requests that consume from local stockrooms effectively by associating your
stockroom with multiple service locations. Optimize your loaner asset workflow and automated
asset tasks by serving multiple locations using a single stockroom.

Before you begin

Role required: inventory_admin

About this task

Note:

You can't add service locations to a stockroom that is excluded from providing location
coverage. For more details, see Exclude a stockroom from service locations.

Procedure
1. Navigate to All > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom that you want to associate with service locations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1277


<!-- page 1278 -->
4. Select the Service locations tab.
5. Select Add.
6. In the Add service locations dialog box, select the active locations that you want the stockroom
to support and select Add.
When you add a parent location, all its child locations are also supported by the stockroom. For
example, when you add the city San Francisco, the stockroom supports all the locations within
San Francisco.

Note: If the Active check box isn’t selected, the stockroom doesn't support that
location, or its child locations so that location can’t be added to the stockroom.

Result

The selected locations are added to the list shown in the Service locations tab.
Related topics
Source requests from local stockrooms
Request a loaner asset
Create a transfer order from a request
Asset life-cycle automation
Remove service locations
Remove service locations when the associated stockroom doesn't support those locations.

Before you begin

Role required: inventory_admin

Procedure
1. Navigate to All > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom for which you want to remove the supported locations.
4. In the Service locations tab, select the locations that you want to remove and select Remove.

Result

The removed locations are no longer shown in the Service locations list.
Exclude a stockroom from service locations
Exclude a stockroom from service locations so that the stockroom isn't shown in the Stockrooms
missing service locations important actions card in the Inventory view.

Before you begin

Role required: inventory_admin

About this task

Note: You can't exclude a stockroom that already has associated service locations. You
must first remove the associated service locations and then exclude the stockroom from
service locations. For more details, see Remove service locations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1278


<!-- page 1279 -->
Procedure
1. Navigate to All > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of available stockrooms, select the stockroom that you want to exclude from
service locations.
4. Select the Exclude from service locations check box.
5. Select Save.

Result
• The stockroom isn't shown in the Stockrooms missing service locations important actions card
even if the stockroom doesn't support service locations.
• The Service location tab doesn't show the Add option for adding service locations to the
stockroom.
Link stockrooms into a distribution channel
Link two geographically related stockrooms to create a distribution channel and make the
distribution of assets more efficient. You can assign a preference order for each channel to
source assets to the stockroom.

Before you begin

Role required: inventory_admin

About this task

A stockroom can have distribution channels with the following functions:
• Inbound: The distribution channel is used to source assets from the linked stockroom.
• Outbound: The distribution channel is used to transfer assets to the linked stockroom.

Note:
You can't create distribution channels for a stockroom that doesn't support sourcing assets
through distribution channels. For more details, see Exclude a stockroom from distribution
channels.

Procedure
1. Navigate to All > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom for which you want to create a distribution channel.
4. Select the Distribution Channel tab.
5. Select New.
6. On the form, fill in the fields.
Create New Stockroom Distribution Channel form
Field

Description

Base
Name of the stockroom for which you want to create a distribution channel. This
stockroom field is automatically populated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1279


<!-- page 1280 -->
Field

Description

Channel
Name of the stockroom that you want to link to the base stockroom to create a
stockroom distribution channel for sourcing assets.
Rank

Numeric order of preference given to the distribution channel for sourcing
assets.

Function

Function of the distribution channel. This field is read-only and is automatically
set to Inbound.

Active

Option that indicates whether the distribution channel is active for sourcing
assets to the base stockroom.

Note: When you clear the Active check box, the outbound function of
the base stockroom for that channel stockroom also becomes inactive
automatically.

7. Select Save.
8. Repeat steps 4–7 to create another distribution channel for this base stockroom.

Result
• The distribution channel is added to the list shown in the Distribution Channel tab.
• The base stockroom is added as an outbound distribution channel for the channel stockroom.
The Function field of the base stockroom is set to Outbound.
Related topics
Create a transfer order from a request
Source requests from local stockrooms
Exclude a stockroom from distribution channels
Exclude a stockroom from distribution channels so that the stockroom isn't shown in the
Stockrooms missing distribution channels important actions card in the Inventory view.

Before you begin

Role required: inventory_admin

About this task

Note: You can't exclude a stockroom that is already linked into any distribution channel.

Procedure
1. Navigate to All > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of available stockrooms, select the stockroom that you want to exclude from
distribution channels.
4. Select the Exclude from distribution channels check box.
5. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1280


<!-- page 1281 -->
Result
• The stockroom isn't shown in the Stockrooms missing distribution channels important actions
card even if the stockroom isn't linked into distribution channels.
• The Distribution Channel tab doesn't show the New option for creating a distribution channel
for the stockroom.
Create a stock rule
Create a stock rule to control what happens when the inventory of a particular asset in a
particular stockroom reaches a specified threshold.

Before you begin

Role required: inventory_admin

Procedure
1. Create a stock rule.
Interface

Action

Core UI

a. Navigate to All > Inventory > Stock > Stock
Rules.
b. Select New.

Hardware Asset Workspace

a. Navigate to Asset operations > > Invento­
ry.
b. From the Inventory list, select Stock rules.
c. Select New.

2. On the form, fill in the fields.
Create New Stock Rule form
Field

Description

Model

Product model to which the rule applies.

Threshold

Quantity that the stock must reach to trigger restocking. For example, enter a
threshold of 10 for a laptop computer that should be restocked when inventory
drops below 10 in the specified stockroom.

Note: If a stock rule is created for a hardware or software model reaches
the threshold limit, a notification is sent to the stockroom manager and a
stock order request is automatically created.
Restocking Location where additional supplies should come from.
option
If Procurement isn’t active, then restocking option is Stockroom only. Otherwise,
select one of the following:
◦ Stockroom: Creates a transfer order to obtain the asset from another
stockroom.
◦ Vendor: Sends an email to the stockroom manager to order from a vendor. In
addition to the email notification, a purchase order and purchase order line
item are created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1281


<!-- page 1282 -->
Field

Description

Important: Once a transfer order, purchase order, or purchase
order line item is created, it's important to act on it promptly. Any email
notifications or reminders won't be sent for these actions.
Active

Option for enabling the stock rule for restocking automatically.

Stockroom Current physical location of the asset.
Order size

Minimum order quantity for stockroom transfers or vendor purchases.
ServiceNow calculates the smallest multiple of the order size needed to restock
the item above the threshold.
For example, there are 3 laptops in stock with a threshold of 10 and the
Stockroom option selected. If the order size is set to 4, the system creates a
transfer order for 8 laptops to exceed the threshold and satisfy the rule (3 in
stock + 8 ordered = 11). When restocking from a vendor, ServiceNow sends an
email to the stockroom manager showing the total number of items to order, as
multiples of the order size.

3. Select Submit or Save.

Result
• The stock rule that you created appears in the Stock rules tab.
• If the restocking option was set to Vendor, the Stock orders tab will be displayed. All the stock
orders that are created using this stock rule are listed under the Stock orders tab.
• If the restocking option was set to Stockroom, the Transfer orders tab will be displayed. All the
transfers orders created using this stock rule are listed under the Transfer orders tab.

Note: For stock orders created through the restocking by a vendor, the stock order tab
shows all stock orders generated by that stock rule. But for transfer orders, the tab only
displays transfer orders after the upgrade.
Related topics
Stock rules
Configure a stockroom for automated sourcing by AI agents
Configure a stockroom to enable AI agents in the Manage hardware asset requests agentic
workflow to source hardware assets automatically.

Before you begin

Role required: ham_admin

About this task

Important: Configuring the stockroom is necessary for AI agents to source the hardware
asset requests from it. However, to automate your hardware asset requests using the
Manage hardware asset requests agentic workflow, you must install the Now Assist for
Hardware Asset Management (HAM) application. For more details, see Now Assist for
Hardware Asset Management (HAM).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1282


<!-- page 1283 -->
Procedure
1. Navigate to All > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom that you want to set up for automatic sourcing.
4. Select the automatic sourcing options in the Sourcing by AI agents section.
◦ To enable the AI agent to consume the local stock automatically, select the Auto-consume
check box.
◦ To enable the AI agent to create a transfer order for the stockroom automatically, select the
Auto-transfer check box.
◦ To enable the AI agent to create a purchase order for the stockroom automatically, select the
Auto-purchase check box.
5. Select Save.

Result

The stockroom is configured for the automatic sourcing options that you selected.
Manage the receiving of assets at stockrooms in the Hardware Asset Workspace
Receive hardware and consumable assets at stockrooms from any workflow at a centralized
location on the stockroom form in the Hardware Asset Workspace.
Depending on the number and type of assets that you want to receive, you can select from the
following options to receive assets at your stockroom:
• Receive a single hardware asset at your stockroom.
• Receive one or more hardware and consumable assets from the list of shipment assets.
• Import and receive hardware and consumable assets in bulk through an Excel template.

Note: You should have the ham_admin role to import asset records using the Excel
template.
For more details, see Receiving hardware and consumable assets at stockrooms.
Receive a hardware asset at a stockroom in the Hardware Asset Workspace
Receive a single hardware asset that has arrived at your stockroom, whether it's part of a
workflow or not, in the Hardware Asset Workspace.

Before you begin

Role required: inventory_user or asset

About this task

This task enables you to receive assets in the following scenarios:
Receiving a hardware asset with an existing record
When you’re receiving a hardware asset from workflows such as a transfer order
or Return Merchandise Authorization (RMA), where a repaired asset has arrived
at your stockroom, the asset record exists in your ServiceNow instance. You can
search for the existing asset record using the Asset tag or Serial number and
then receive the asset, which automatically closes the receive task of the source
workflow.
Receiving a new hardware asset at your stockroom

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1283


<!-- page 1284 -->
When you're physically receiving a new hardware asset at your stockroom, it's likely
that the asset record isn't present in your ServiceNow instance. You can receive
new assets through workflows like a purchase order, asset refresh, or RMA with a
replacement asset. Through this task, you can create an asset record and associate
it with the source workflow, which automatically closes the receive task linked to the
source workflow.
Receiving an independent hardware asset
You can receive a hardware asset that isn't part of any workflow and has arrived at
your stockroom.

Important: You can also receive an enterprise asset only if the Enterprise Asset
Management application is activated.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom for which you want to receive the hardware asset.
4. Select Receive assets.
5. Find the hardware asset that you want to receive.
a. In the Receive assets dialog box, enter the Asset tag or Serial number of the asset that you
want to receive in the search field.
b. Select Search.
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
6. Receive the hardware asset in your stockroom.
◦ If the asset record is found in the Assets list, select the asset record and then select
Receive.
Result

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1284


<!-- page 1285 -->
▪ The State of the asset changes from In transit to In stock.
▪ The Stockroom field on the asset form is automatically updated with the
stockroom at which you received the asset.
▪ The receive task in the source workflow associated with the asset that you
received is automatically closed.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1285


<!-- page 1286 -->
Field

Description

▪ To receive an asset from a purchase order or asset refresh order, select
the associated PO line number.
▪ To receive an asset from an RMA order, select the associated RMA line
number.

Note: Source tickets are displayed based on the model and source
type that you selected.

Important:
Providing the Source type and Source ticket details is optional when creating an
asset record. However, including these details links the hardware asset to the source
workflow. This link results in the automatic closure of the Receive task in the source
workflow when the asset is created. If you don't include these details, the asset
record is still created, but you should close the Receive task manually in the source
workflow.
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
Receive assets from inbound shipments at your stockroom in the Hardware Asset Workspace
Receive hardware and consumable assets from one or more shipments that are in transit to your
stockroom in the Hardware Asset Workspace. You can receive assets from shipments originating
from any workflow.

Before you begin

Role required: inventory_user or asset

About this task

If you don't have the details of the assets you want to receive at your stockroom, you can view the
list of assets that are on their way and then receive them. You can receive the complete quantity
of consumables in the shipments, not a partial quantity.
Assets from an inbound shipment can be received under the following conditions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1286


<!-- page 1287 -->
• The assets must have a serial number and an asset tag.
• The assets must be in the In-transit state and linked to a shipment record.
• Enterprise assets can be received only if the Enterprise Asset Management application is
activated.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom for which you want to receive hardware or consumable assets.
4. Select Receive assets.
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
• The Stockroom field on the asset form is automatically updated with the stockroom at which
you received the assets.
• The Status of the shipment tasks associated with the assets changes to Delivered.
• The receive tasks in the source workflows are automatically closed.

Note: If any of the asset details are invalid, an error message in shown in the Alert column
for the corresponding asset record. You should resolve the error before receiving the
assets.
Import and receive assets in bulk at your stockroom in the Hardware Asset Workspace
Receive multiple hardware and consumable assets at your stockroom by importing the asset
records using an Excel template in the Hardware Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1287


<!-- page 1288 -->
Before you begin

Role required: ham_admin

About this task

This task enables you to receive assets with existing records, and also new assets, only if you
have provided valid asset details in the template.
When you import a template with asset details, extensive validation is performed on each row.
The records from the template and the validation results are stored in the Import asset row
[sn_itam_cmn_import_asset_row] table.

Note: The sn_itam_common.receive_assets_batch_size system property
determines how many asset records are processed at once when logging imports and
receiving jobs. By default, the system handles 1,000 asset records per batch. With the
admin role, you can adjust this number to optimize the system performance and handle
large volume of assets. This system property supports domain separation by using the
application property.
The asset data validation takes care of the following points:
• Child assets can't be received.
• Enterprise assets can only be received if the Enterprise Asset Management application is
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
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1288


<!-- page 1289 -->
if the serial number is provided. Additionally, if an asset record isn't found, fields related
to the model are required to create one using the Asset tag and Serial number values
provided in the template.
▪ Quantity: This field should have a value of 1 for hardware assets, and for consumables, it
should reflect the number of assets you’re receiving. You can't receive a partial quantity
of consumables.
▪ Manufacturer: Asset manufacturer.
▪ Source type: The source type is the workflow through which you’re receiving the asset.
You should enter values that correspond to the workflows, such as the following:
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1289


<!-- page 1290 -->
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
Manage stockrooms with inventory reports in the Hardware Asset Workspace
Track and manage stockrooms efficiently by evaluating the inventory reports in the Hardware
Asset Workspace.
The inventory reports help you:
• Find replacement options for assets.
• Quickly identify shortages and align current demand in your stockroom with both current and
incoming supply.
• Analyze the supply to meet open demand across all stockrooms or locations.
Identify suitable replacement options for assets in the Hardware Asset Workspace
Use the Inventory availability report to determine suitable replacement options for your assets
and their child components that are in use, in maintenance, pending repair, or defective. The
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1290


<!-- page 1291 -->
report also helps you to determine the quantity of available substitute models that can be used
locally, moved through the distribution channels, and estimate the lead time for new purchases.

Before you begin

The Inventory Availability Report is available only for hardware, consumable, and bundle assets
that are in use, in maintenance, pending repair, or defective.
Service locations and distribution channels should be configured for the stockroom. If the asset's
location is a service location of a stockroom, it automatically becomes the local stockroom. A
location can have multiple local stockrooms if it is serviced by more than one stockroom. For
more details, see Associate a stockroom with service locations and Link stockrooms into a
distribution channel.
Role required: asset

About this task

The Inventory availability report helps you to identify the best sourcing option when sourcing
assets or its components that are in use and nearing the end of their life, defective, or pending
repair. Additionally, you can check how much stock is currently available at a stockroom.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset estate.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1291


<!-- page 1292 -->
Field

Description

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

Identify the supply and demand for models within a stockroom in the Hardware Asset
Workspace
Use the Supply vs Demand report to evaluate the available and incoming quantity of models in
your stockroom and the requests for these models from different service locations. This report
helps you determine if you have enough assets to meet the demand.

Before you begin

Supply refers to the assets that are currently in stock and those that are incoming at your
stockroom. Demand refers to the requests for assets from different service locations that your
stockroom services.
Note the following points about the Supply vs Demand report:
• Supply of an asset model to your stockroom includes:
◦ In stock assets that are in the Available, Reserved, Pending transfer, and Pending install
stage
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
Role required: asset

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1292


<!-- page 1293 -->
Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of stockrooms, select the one for which you want to view the supply and demand
details.
4. Select the Inventory insights tab.
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
▪ In stock assets
▪ Incoming transfer order
▪ Incoming purchase order
◦ The demand graph shows the count of the following:
▪ Outgoing transfer order
▪ Asset requests
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1293


<!-- page 1294 -->
▪ Refresh requests
▪ Work order parts requests
By selecting the relevant bars, you can view the list of assets that make up the count.
7. Optional: To initiate the calculation of supply and demand for asset models manually, select
Recalculate quantity.
(Optional) The Supply vs Demand graph updates to show the recently calculated values.
Identify the supply for open demands in the Hardware Asset Workspace
Use the Open demands report to determine available stock within local stockrooms and
distribution channels to fulfill sourcing requests that are open.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Procurement.
2. In the Procurement overview, select Open demands.
The report displays the list of open demands with the following details:
◦ Requests and requested items.
◦ The quantity of the requested model available in local stockrooms that serve the asset
location.
◦ The quantity of the requested model available in distribution channel stockrooms that serve
the asset location.
◦ The purchase lead time, which is the average time in days it has taken from ordering to
receiving assets through new purchase orders.
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

Track shipments using the integration framework
Track your shipments in real time by integrating your ServiceNow instance with your third-party
carrier's application through the integration framework provided by the IT Asset Management
application.
Creating an integration script include for third-party carrier applications
In order to integrate with a ServiceNow instance, a third-party carrier application must have
a script include that extends the base class ITAMShipmentIntegration script on its
ServiceNow instance to receive the shipment tracking number from the customer's ServiceNow
instance and respond with the carrier-related details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1294


<!-- page 1295 -->
Consider the following when you create the script include:
• Make sure that the script include is accessible from the Asset Management Common
application scope by adjusting the following settings on the application resource record:
◦ Set the Accessible from field to All application scopes.
◦ Set the Caller Access field to None to make sure the caller access isn't restricted.
• The code for communicating with the customer's ServiceNow instance based on the tracking
number must be included within the fetchShipmentInfo function.
• When the API is invoked in the test mode for validating the connection with the customer's
ServiceNow instance, the return response from the fetchShipmentInfo method should
be a JSON object with the HTTP response code and response message, as follows:
{
httpResponseCode: 200, httpResponseMessage: ‘SUCCESS’
}
• When not in the test mode, query the shipments and invoke the processResponse method
with the following response format:
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1295


<!-- page 1296 -->
ITAMShipmentIntegration script include sample codes
Sample ITAMShipmentIntegration script include with the default
processResponse function provided by the IT Asset Management application

Sample ITAMShipmentIntegration script include with custom processResponse
function

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1296


<!-- page 1297 -->
fetchShipmentInfo function
The fetchShipmentInfo function receives the tracking numbers from the ServiceNow
instance of the customer and invokes the carrier API to fetch the shipment details for all the
tracking numbers. Within this function, you must define the business logic that enables your
customers to communicate with your carrier APIs based on the tracking numbers. This function
processes the response that is received from the carrier API and invokes the post-processing
function.

processResponse function
The processResponse function receives the response from the carrier API and updates the
shipment records with the following carrier-related details:
• Carrier link
• Carrier status
• Carrier status detail
• Carrier pick-up date
• Carrier delivered date
• Currency
• Delivery services cost
• Parcel weight
You can either use the default processResponse function or define a custom logic to update
the shipment records.
Connect your ServiceNow instance with a shipping carrier application
Associate a shipping carrier with an integration profile to connect your ServiceNow instance to
the carrier application.

Before you begin

Make sure that the shipping carrier that you want to associate with an integration profile has a
shipping carrier record. For more details, see Create a shipping carrier record.
Role required: admin or domain_admin

About this task

A shipping carrier can be associated with only one active integration profile.

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Carrier integration profiles.
3. Select the carrier integration profile that you want to associate with a shipping carrier.

Note: The third-party carrier application automatically inserts records into the Carrier
integration profiles list. If the integration profile associated with your carrier isn't listed,
make sure that the prerequisites for the integration with the carrier are fulfilled. For more
information, see Managing shipments by integrating with third-party carrier applications.
4. Select the Shipping Carriers tab.
5. Associate the shipping carrier with the carrier integration profile.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1297


<!-- page 1298 -->
a. Select Add.
b. In the Add carriers dialog box, select the carrier and select Add.

Note: If the carrier you intended to associate is not listed, it likely is already
associated with an integration profile.

Result

The shipping carrier is associated with the profile and the carrier details are shown in the
Shipping Carriers tab.
Remove a shipping carrier from an integration profile
Remove a shipping carrier that you no longer want to associate with an integration profile.

Before you begin

Role required: admin or domain_admin

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Carrier integration profiles.
3. Select the integration profile for which you want to remove the associated shipping carrier.
4. Select the Shipping Carriers tab and select the shipping carrier that you want to remove.
5. Select Remove.

Result

The shipping carrier is no longer associated with the integration profile.
Create a carrier integration profile
Create a carrier integration profile for your carrier by specifying the API and connection details
that are used to connect your ServiceNow instance to the third-party shipping carrier application.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Carrier integration profiles.
3. Select New.
4. On the form, fill in the fields.
Carrier Integration Profile Details form
Field

Description

Name

Name of the integration profile.

Connection Reference to the Connection and Credentials Aliases table that stores the
details
credentials of the customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1298


<!-- page 1299 -->
Field

Description

Note: Your credentials must be updated in the Connection and
Credentials Aliases table so that you’re authenticated to connect to the
carrier API.
API

Name of the script that has the integration business logic.

Job

Name of the scheduled job that invokes the carrier API to fetch the shipment
details.
This job is automatically created by a job that runs daily, The ITAM: Process
integration profiles and stale shipment job.

Active

Option that indicates the status of the integration profile.

Note: You can only deactivate the integration profile but can’t delete
the integration profile. When an integration profile is deactivated, the
associated job that invokes the carrier API is deactivated automatically.

5. Select Save.

Result

The carrier integration profile is created and added to the Carrier integration profiles list.
View the carrier integration profile details
View the details of the carrier API used to connect your ServiceNow instance to the third-party
shipping carrier application.

Before you begin

Role required: admin, domain_admin, asset, or inventory_admin

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Carrier integration profiles.
The third-party carrier application automatically inserts records into the Carrier integration
profiles list. You can also create a carrier integration profile.
3. Select the carrier integration profile of your carrier.
Carrier Integration Profile Details form
Field

Description

Name

Name of the integration profile.

Connection Reference to the Connection and Credentials Aliases table that stores the
details
credentials of the customer.

Note: Your credentials must be updated in the Connection and
Credentials Aliases table so that you’re authenticated to connect to the
carrier API.
API

Name of the script that has the integration business logic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1299


<!-- page 1300 -->
Field

Description

Job

Name of the scheduled job that invokes the carrier API to fetch the shipments
details.
This job is created by a job that runs daily, The ITAM: Process integration
profiles and stale shipment job.

Active

Option that indicates the status of the integration profile.

Note: Only users with the admin or domain_admin role can deactivate
the integration profile but they can’t delete the integration profile. When
an integration profile is deactivated, the associated job that invokes the
carrier API is deactivated automatically.

Test the integration with the carrier API
Check the connection with the carrier API to handle any connection issues such as invalid
credentials, incorrect tracking details, and issues with the integration script include.

Before you begin

Role required: admin or domain_admin

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Carrier integration profiles.
3. Select the carrier integration profile that you want to test.
4. Select Test connection.

Result

A message that indicates the success or failure of the connection is displayed.
Create a shipping carrier record
Create a shipping carrier record in the Hardware Asset Workspace.

Before you begin

Role required: inventory_admin

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1300


<!-- page 1301 -->
Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Shipping carriers.
3. Select New.
4. Provide the contact details of the carrier.
5. On the form, fill in the remaining fields.
Create New Shipping Carrier form
Field

Description

Name

Name of the shipping carrier. This field is required.

Company

Core company of the shipping carrier.

Integration Profile for integrating with the third-party carrier's application.
profile
For more details, see View the carrier integration profile details.
Status

Status of the carrier.
This field is set to Active by default.

Max wait
days

Maximum days that the carrier takes to deliver a shipment.
By default, this field is set to 90. You can change this value.

Note: This field isn’t shown on the form by default. You can choose to
display this field on the form.
A shipment record that is not updated by the carrier after the integration profile
job has run for the specified maximum wait days is marked as stale shipment by
The ITAM: Process integration profiles and stale shipment job.
Notes

Additional information about the carrier.

6. Select Save.

Result
• The shipping carrier record is created and added to the Shipping carriers list.
• The shipping carrier record is saved in the Shipping carrier
[sn_itam_common_shipping_carrier] table.
View hardware asset shipment details
View all hardware asset shipment details in a single place in the Hardware Asset Workspace.

Before you begin

Role required: inventory_user (read) or inventory_admin

About this task

The Shipment list shows all the shipment records initiated by the shipment tasks of various flows.
For details, see Task closures that create shipment records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1301


<!-- page 1302 -->
Note: The Shipment [sn_itam_common_shipment] table also has the Currency, Delivery
services cost, and Parcel weight fields. However, these fields aren’t shown on the Shipment
form.
A shipment record is created automatically whenever a shipment task of a flow or process is
closed.

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
Operations integration with IT Asset Management . For more information about Asset
Management Integration for Sourcing and Procurement Operations better together feature,
see Enhancing the asset procurement experience using IT Asset Management (ITAM) and
Sourcing and Procurement Operations (SPO) .

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Shipments.
3. Select a shipment record to view the shipment details.
Shipment Details form
Field

Description

Shipment Auto-generated and unique identifier for the shipment record.
number
Tracking
number

Unique carrier tracking number for the shipment.

Stage

Stage of the shipment record.

Multiple orders or line items can have the same tracking number when they
belong to the same shipment. Also, multiple line items that belong to the
same order can have different tracking numbers when they’re part of different
shipments.

A shipment can be in one of the following stages:
◦ Draft
◦ On Order
◦ Prepare
◦ In Transit
◦ Delivered
◦ Canceled

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1302


<!-- page 1303 -->
Field

Description

When a shipment has multiple orders, the Stage of the shipment record changes
to Delivered when the shipment assets of an order are delivered.
Shipped
from

Location from where the assets are shipped.

Shipped
to

Location to which the assets are shipped.

Shipped
by

Name of the person who shipped the assets.

This field is populated with the corresponding field of the order that created this
record.

This field is populated with the corresponding field of the order that created this
record.

This field is populated with the corresponding field of the order that created this
record.

Ship date Date on which the assets are shipped.
This field is populated with the corresponding field of the order that created this
record.
The date corresponds to the date on which the ship task of the source is closed.
Shipment Quantity of assets shipped for the shipment record.
quantity
This field value is automatically populated when the assets are shipped to the
destination.
The shipment quantity is the sum of the asset quantities shipped for each
shipment line.

Important: The Shipment quantity field is available with Hardware Asset
Management version 14.0.0 onwards.
Receive
date

Date on which the assets are received.
This field is populated with the corresponding field of the order that is received
first as part of the shipment.
The date corresponds to the date on which the receive task of the source is
closed.

Received Name of the person to whom the assets are sent.
by
This field is populated with the corresponding field of the order that is received
first as part of the shipment.
Carrier

Reference to the shipping carrier record.

Carrier
status

Status of the shipment.

Note: This field is populated only when you integrate with your third-party
carrier applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1303


<!-- page 1304 -->
Field

Description

Carrier
pick-up
date

Date on which the carrier picked up the assets.

Note: This field is populated only when you integrate with your third-party
carrier applications.

Carrier
Date on which the carrier delivered the assets.
delivered
Note: This field is populated only when you integrate with your third-party
carrier applications.
Carrier
link

Link provided by the carrier to track the shipment.

Stale
Option that indicates whether the shipment record is stale. This option is readshipment only.
Stale shipments
Shipments that are delayed due to various reasons such as an incorrect tracking number, the
loss of a shipment package during transit, and invalid connection details are considered stale
shipments.
The ITAM: Process integration profiles and stale shipment job runs daily to check for any stale
shipments. A shipment record that is not updated by the carrier even after the integration profile
job has run for the maximum wait days for a carrier is marked as stale shipment.
The tracking number of the shipment record that is marked stale isn’t sent to the carrier for
further tracking. If you know the reason that a shipment is late, you can decide to continue
tracking it. For more information, see Continue to track delayed shipments.

Note: You can view the list of shipments that weren’t updated with the tracking
information from the integrated carrier through the Stale shipments important actions card
in the Inventory view. For more information, see Inventory view.
Continue to track delayed shipments
Continue to track a stale hardware asset shipment that is delayed if the reason for the delay is
known.

Before you begin

Role required: inventory_user (read) or inventory_admin

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Shipments.
3. Select a shipment record that you want to track.
4. On the Shipment details form, select the Ignore stale check check box.
5. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1304


<!-- page 1305 -->
Result
• The Stale shipment check box on the Shipment details form is automatically cleared.
• The tracking number of this shipment is sent to the carrier for tracking and this shipment
record won’t be marked as stale again.
Track a hardware asset shipment
Track the progress of your hardware asset shipment that isn't delivered and that has a carrier
associated with an active integration profile.

Before you begin

Role required: inventory_user (read) or inventory_admin.

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. From the Shipment list, select Shipments.
3. Select a shipment record that you want to track.
4. Select Track now.

Result

The following fields on the Shipment details form show the tracking details received from the
carrier:
• Carrier status
• Carrier pick-up date
• Carrier delivered date

Track asset location using indoor maps
Locate and track the consumables and hardware, bundle, and pallet assets in your organization
by using indoor maps. Indoor maps provide an interactive interface that enables you to visualize
the location of your assets within your campuses, buildings, floors, and places.

Before you begin

To be able to use indoor maps in Hardware Asset Workspace, make sure you fulfill the following
requirements:
• You should explicitly install Indoor Mapping for Assets (com.sn_ima) application from the
®
ServiceNow Store. When you install this application, Indoor Mapping (sn_map_core) and
Indoor Mapping component (sn_map_component) are also installed.

Note: To be able to view demo data for indoor maps, you must reinstall demo data after
you install the Indoor Mapping for Assets application. For more information, see Add or
repair demo data for applications and plugins .

• Set the com.sn_ham.indoormap.enabled asset parameter to true on your ServiceNow
instance.
• Set up your indoor maps: You can design indoor maps using Map Studio. For more information,
see Configure Indoor Mapping .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1305


<!-- page 1306 -->
Note: When you install indoor maps using the entitlement to the Hardware Asset
Management license, you can use only the PNG floor map files in the Map Studio. You
can’t import the files that are in AutoCAD or Raster file format. To use AutoCAD or Raster
files, you should have entitlement to Workplace Service Delivery.
• Synchronize location data: The Hardware Asset Management application supports the
following indoor mapping location types:
◦ Campus: Represents a set of buildings within the same geographic location.
◦ Building: Represents a multi-floor building within a specific campus.
◦ Floor: Represents a floor within a specific building.
◦ Place: Represents either a polygon or point of interest within a specific floor. Places can
represent areas, rooms, desks, printers, assets, and more.

Note: For indoor map to show assets in Hardware Asset Workspace, assets should be
assigned to a location of the type place or room in the Location [cmn_location] table.
To view the newly created locations within the Hardware Asset Management application,
make sure to synchronize the newly created locations from Map Studio to the Location
[cmn_location] table.
You can associate the locations created in Map Studio with pre-existing records or new
records in the Location [cmn_location] table. For more information, see Synchronize Indoor
Mapping map data with CMN location .
Role required: admin or asset

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset estate.
2. Select the Asset indoor map tab.
3. View the assets on a selected floor by using the Campuses, Buildings, and Floors filters.
4. Optional: Select a display option at the bottom-right corner of the Indoor map page to view
the assets and their location on the selected floor in a particular format.
◦ To show the location of the assets on an interactive map, select Show map only.
◦ To display both the interactive map and a list view of the assets, select Show map and list.
◦ To display only a list view of the assets, select Show list only.
5. Optional: If you’re viewing the interactive map, view the list of assets in a selected location on
the floor by selecting a location on the map.
6. Optional: View the location of assets based on a department, user, or model category or a
combination of these values.
a. Select the Filters Tab icon on the contextual sidebar of the map.
b. Select the values for the Department, User, or Model category filters in the Filter by dialog
box.

Assess performance of Hardware Asset Management
Track the success of the Hardware Asset Management application in your instance by creating
success goals. You can also create a success goal category for a success goal and track the
success of your goals by creating success activities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1306


<!-- page 1307 -->
Create a success goal for Hardware Asset Management
Create a success goal to track the success of the Hardware Asset Management application in
your instance.

Before you begin

Role required: ham_admin

Procedure
1. Navigate to one of the following paths.
◦ Hardware Asset Workspace > Success portal
◦ Hardware Asset Workspace > Asset operations > Success goals
2. Select Create success goal or New.
3. On the form, fill in the fields.
For a description of the field values, see HAM Success Goal Details.
4. Select Save.
If you want to cancel a success goal, select the success goal number and select Cancel Goal.

Result

The success goal that you created gets displayed on the Success goals page in the Asset
operations view.
Create success activities for HAM success goals
Create success activities to track the success of your created goals.

Before you begin

Role required: ham_admin, asset (owner of the goal)

Procedure
1. Navigate to one of the following paths.
◦ Hardware Asset Workspace > Success portal
◦ Hardware Asset Workspace > Asset operations > Success activities
2. Select Create success activity or New.
3. On the form, fill in the fields.
For a description of the field values, see HAM Success Activity.
4. Select Save.

Result

The success activity that you created gets displayed on the Success activities page in the Asset
operations view.
Create a success goal category for hardware assets
Create a success goal category to associate it with the Hardware Asset Management success
goal.

Before you begin

Role required: ham_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1307


<!-- page 1308 -->
Procedure
1. Navigate to Hardware Asset Workspace > Asset operations > Success goals > Categories.
2. Select New.
3. On the Success Goal Category form, fill in the category that you want to add and select the
Hardware asset category check box.
4. Select Save.

Result

The category that you add gets listed as an option in the Category field while creating a success
goal for Hardware Asset Management. For more information, see Create a success goal for
Hardware Asset Management.
View all maturity items for Hardware Asset Management
View the maturity of your Hardware Asset Management (HAM) program to analyze the status of
each maturity stage, where each stage shows the number of maturity items completed.

Before you begin

Role required: asset

Note: The asset role can also change the state and success goal of the maturity item.
About this task

The maturity of your HAM program is divided into three stages:
• Crawl
• Walk
• Run
For more information, see Maturity stages of your Hardware Asset Management program.

Note: The maturity level can’t be modified for a required maturity item.
Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Success portal.
2. On the Overview page, select View all maturity items.
The All maturity items page opens, which lists all the maturity items included in the stage your
HAM program is in.
3. Select a maturity item to view its details.
For a description of the field values, see Maturity item details.
4. Select Save.

Manage refresh of assets using Zero Touch Refresh
Enable your employees to request hardware refreshes through an external vendor by using the
Zero Touch Refresh flow on your ServiceNow instance. This process enables you to eliminate
having to maintain a local inventory of new assets.
Service Bridge configuration for Zero Touch Refresh
The Zero Touch Refresh flow uses the Service Bridge application to connect providers with your
ServiceNow instance to manage asset refresh requests. Your employees and the provider can
work on requests in their own environments.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1308


<!-- page 1309 -->
Service Bridge setup for providers
Providers should perform the following setup tasks to communicate the details of Zero Touch
Refresh requests:
1. Install Service Bridge for Providers

.

2. Onboard a new Service Bridge customer

.

3. Trigger the assignment of a remote task.

Service Bridge setup for employee requests
Perform the following setup to communicate the details of Zero Touch Refresh requests with the
provider:
1. Install Service Bridge for Consumers

.

2. Activate the remote task definitions published by the provider.
Trigger the assignment of a remote task
As an asset provider, create remote task definitions that trigger the assignment of a remote task
for your customer to communicate the details of Zero Touch Refresh requests.

Before you begin

As a provider, you must have created a provider record. For more details, see Set up a Service
Bridge provider record .
Role required: admin

About this task

You receive the details of a Zero Touch Refresh Fulfillment Request from your customer's
ServiceNow instance through the inbound fields of the remote task definition. Any updates made
to the Zero Touch Refresh Fulfillment Request are sent to your customer's ServiceNow instance
through the outbound fields of the remote task definition.

Procedure
1. Navigate to All > Service Bridge > Provider > Remote Task Definitions.
2. Select New.
3. On the form, fill in the fields.
For the description of field values, see Remote task definition form

.

4. Set the Provider table and Customer table field values to the Zero Touch Refresh Fulfillment
Request [sn_itam_ztr_fulfillment_req] table.
5. Select Submit.
6. Select this new remote task definition record.
7. Create the inbound fields, which enable you to receive data from the customer's instance
when a remote task is created or updated.
a. On the Inbound fields tab, select New.
b. For each field you create, fill in the fields and then select Submit.
For the required details of the inbound fields that you must create, see Remote task
definition inbound and outbound fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1309


<!-- page 1310 -->
8. Create the outbound fields, which enable you to send data to the customer's instance when a
remote task is created or updated.
a. On the Outbound fields tab, select New.
b. For each field you create, fill in the fields and then select Submit.
For the required details of the outbound fields that you must create, see Remote task
definition inbound and outbound fields.
9. Set customer criteria, which specify the customers who can use this remote task definition.
10. Select Publish.

Note: If you later need to edit this remote task definition, access it and select Edit.
Result

A remote task definition record is created on your instance and the State field of the record is
set to Published. This record is also synchronized with your customer's instance and is pending
activation on your customer's instance.
Activate the remote task definitions
Activate the remote task definitions published by the provider on your instance so that your
provider can fulfill your Zero Touch Refresh requests.

Before you begin

The Service Bridge application must be installed on your instance. For more information, see
Install Service Bridge for customers .
Before you can activate a remote task definition on your ServiceNow instance, your provider must
create and publish it. For more information, see Trigger the assignment of a remote task.
Role required: admin

Procedure
1. Navigate to All > Service Bridge > Customer > Remote Task Definitions.
2. Select the remote task definition record.
3. On the Remote Task Definition form, in the Simple Trigger section, set the trigger condition as
Model is not empty.
Remote tasks are automatically created when records with values in the Model field are added
to the Zero Touch Refresh Fulfillment Request [sn_itam_ztr_fulfillment_req] table.
4. Select Save.
5. Verify the data on the Inbound fields tab, the Outbound fields tab, and the Remote task
variables tab.
The provider defines these values. When you create a remote task, the provider receives the
remote task data through the inbound fields and responds with the remote task data through
the outbound fields.
6. Select Activate.
7. In the pop-up window, verify the mappings of the inbound and outbound variables and
select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1310


<!-- page 1311 -->
Configure replacement models for a refresh model
Configure replacement models for a hardware asset model that is refreshed. When configured,
employees can select replacement models for their hardware assets on the Zero Touch Refresh
form.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Hardware Asset Workspace > Asset operations.
2. In the Zero touch refresh list, select Refresh models.
3. Create the refresh model.
a. On the Refresh models page, select New.
b. On the form, fill in the fields.
Create New Zero Touch Refresh Model form
Field

Description

Model

Model that is being refreshed.

Location Location for which the replacement models are valid.

Note: Configuring replacement models for a country is the most efficient
setup. However, you can configure replacement models for more specific
locations such as state or city.
Active

Option that indicates whether the replacement rule is active.

c. Select Save.
4. Add replacement models for the refresh model.
a. In the Replacement models tab, select Add.
b. In the Replacement Model dialog box, select the models that you want to add as
replacement for the refresh asset model and select Add.
c. Select Save.

Result

The refresh model with the assigned replacement models is included in the Refresh models list.
Request a hardware asset refresh through Zero Touch Refresh
Request to replace a hardware asset that you own with a new asset directly with the provider
through Zero Touch Refresh.

Before you begin

Role required: none

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1311


<!-- page 1312 -->
Procedure
1. Navigate to All > Service Catalog > Asset Lifecycle.
If the Asset Lifecycle category isn't available in the service catalog, contact your administrator.
2. On the Asset Lifecycle page, select Zero Touch Refresh.
3. On the form, fill in the fields.
Zero Touch Refresh form
Field

Description

Asset

Hardware asset that you own that you want to refresh.
If you select an asset that is not eligible for refresh, a message stating
that approvals will be requested is displayed. An approval request is then
automatically sent to the asset manager.

Replacement Asset model with which you want to replace the hardware asset.
model
The list shows the refresh models based on the model of the hardware asset
that you selected and the location of the asset. If the location of the asset isn't
specified in the asset record, the location of the requester is considered.
4. Determine where the replacement asset should be sent.
Shipping location

Action

In the Refresh method field, select Ship.
Your location

Note: The form shows your contact de­
tails such as your address and phone
number. You can change your contact
details if necessary.
a. In the Refresh method field, select Pickup.

Stockroom

b. In the Pickup location field, select the loca­
tion of the stockroom from which to collect
your new asset.

Note: The Locations list shows all
the stockroom locations in your coun­
try.
5. Confirm the shipping address choice by selecting the acknowledge check box at the bottom of
the Zero Touch Refresh form.
6. Select Submit.
7. Optional: View the status of your Zero Touch Refresh request by navigating to All > SelfService > My Requests.

Result

Your Zero Touch Refresh request is successfully submitted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1312


<!-- page 1313 -->
Fulfill a Zero Touch Refresh Fulfillment Request
As a provider, ship a replacement asset requested through a Zero Touch Refresh Fulfillment
Request to the requester.

Before you begin

The Service Bridge configuration necessary for the Zero Touch Refresh flow must have been set
up. For more details, see Service Bridge configuration for Zero Touch Refresh.
Role required: admin, asset, procurement_user, or inventory_user

About this task

®

When an employee submits a Zero Touch Refresh request on the ServiceNow instance of
your customer, a corresponding Zero Touch Refresh Fulfillment Request is created on your
®
ServiceNow instance.

Procedure
®

1. Log in to your ServiceNow instance.
2. Navigate to All > Zero Touch Refresh Fulfillment Requests.
3. Select a request that is in the Requested state.
4. Review the details on the Zero Touch Refresh Fulfillment Request form.
The Customer request number field shows the corresponding Zero Touch Refresh request
number. The fields in the Shipment details tab and the Return shipment details tab are
populated with the details specified in the Zero Touch Refresh request.
5. Confirm the Zero Touch Refresh Fulfillment Request.
a. In the State field, select Order confirmed.
b. Select Save.
6. Ship the replacement asset to the requester or to the stockroom.
a. Enter the asset information in the Asset tag and Serial number fields.
b. In the Shipment details tab, enter values in the Tracking number and Carrier fields.
c. In the Return shipment details tab, enter values in the Tracking number and Carrier fields.
d. In the State field, select Shipped.
e. Select Save.
f. In the shipment, include a box that the employee can use to return the old asset with an
address label made out for the stockroom.
g. Ship the new asset to the requester or to the stockroom location where the requester can
pick up the asset.

Result

An asset with the serial number and asset tag specified in the Zero Touch Refresh Fulfillment
Request is assigned to the employee.
Process a Zero Touch Refresh request
Process a Zero Touch Refresh request to receive the assets from your provider and complete the
Zero Touch Refresh flow.

Before you begin

The Service Bridge configuration necessary for the Zero Touch Refresh flow must have been set
up. For more details, see Service Bridge configuration for Zero Touch Refresh.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1313


<!-- page 1314 -->
Role required: admin, asset, procurement_user, or inventory_user.

About this task

After the provider ships the assets, the Zero Touch Refresh flow completes when the following
actions have occurred:
1. The employee confirms that the replacement asset is received.
2. The inventory manager or the asset manager confirms and evaluates the old asset that was
received.

Procedure
®

1. Log in to your ServiceNow instance.
2. Navigate to All > Hardware Asset Workspace > Asset operations.
3. From the Zero touch refresh list, select Requests.
4. Select the request that you want to process.
5. Select the Zero Touch Refresh Tasks tab.
6. As a stockroom manager, notify the employee that the new asset is ready for pickup.
a. Select the Ready for pickup task.
b. Select Close Task.
◦ An email message is sent to notify the employee that the asset has arrived in the stockroom
and is ready for pickup.
◦ The Receive asset task is created.
7. Ensure that the Receive asset task is closed.
◦ If the employee has acknowledged receipt of the replacement asset online, the task is
closed automatically.
For more details, see Acknowledge receipt of an asset on a mobile device or Acknowledge
receipt of an asset through the Core UI.
◦ If the asset has been picked up at the stockroom but the employee has not acknowledged
receipt online, users with the admin or asset role can close this task on behalf of the
employee by accessing the task and selecting Close task.
8. Confirm that the old asset was returned to the stockroom.
a. Select the Receive return asset task.
b. Select Close task.
◦ The Receive asset task is closed.
◦ The Asset evaluation task is created.
9. Evaluate the old asset and select the appropriate status.
a. Select the Asset evaluation task.
b. In the Evaluation status, mark the asset for reuse, repair, or ready for disposal.
▪ To mark the asset for reuse, select Re-deployable.
The state and substate of the asset are set to In stock and Available.
▪ To mark the asset for repair, select Needs repair.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1314


<!-- page 1315 -->
This option initiates the Return Merchandise Authorization (RMA) flow.
The state and substate of the asset are set to In stock and Pending repair.
▪ To mark the asset as ready for disposal, select To be disposed.
The state and substate of the asset are set to In stock and Pending disposal.
c. Select Close task.

Result

The Zero Touch Refresh flow completes. The stage and state of the Zero Touch Refresh request
change to Closed complete and Completed.
Acknowledge receipt of an asset on a mobile device
As an employee, acknowledge receipt of the new asset that you received through a Zero Touch
Refresh request on a mobile device.

Before you begin

To use your mobile device for this acknowledgment, you must have the ServiceNow mobile app
installed on your iOS or Android mobile device.
Role required: none

Procedure
1. Navigate to My Items > My assets.
2. Tap the asset.
3. Tap Scan delivered asset.
4. Provide the asset tag information.
◦ To provide the information through a scan, scan the asset tag of the asset.
◦ To provide the information manually, enter a value in the Asset tag field.
5. Select Submit.

Result
• The state of the asset changes to In use.
• The state of the Receive asset task of the Zero Touch Refresh request changes to Closed.
Acknowledge receipt of an asset through the Core UI
As an employee, acknowledge receipt of the new asset that you received through a Zero Touch
Refresh request through the Core UI on your ServiceNow instance.

Before you begin

Role required: none

Procedure
1. Navigate to All > Self-Service > My Requests.
2. Select the Zero Touch Refresh request.
3. In the Zero Touch Refresh Tasks tab, select the Receive asset task.
4. Select Close task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1315


<!-- page 1316 -->
Result

The state of the Receive asset task of the Zero Touch Refresh request changes to Closed.

Configure the Total Cost of Ownership of assets
Configure the Total Cost of Ownership (TCO) of assets by creating rate cards for each task in a
Hardware Asset Management workflow.
Rate cards capture costs for a task or on the time consumed on the task.
Related topics
Asset Total Cost of Ownership for Hardware Asset Management
Asset analytics view
Create a task rate card in Hardware Asset Workspace
Create a task rate card to define the type of task and the method of calculating the associated
costs.

Before you begin

Role required: asset_admin
®

Activate the ServiceNow Cost Management (com.snc.cost_management) plugin. For more
information, see Activate Cost Management .

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations > TCO
configuration > Task rate card.
2. Select New.
3. On the form, fill in the fields.
Create New Task Rate Card
Field

Description

Name

Purpose of the rate card.

Use time worked

Option for forcing the rule to calculate the
task cost based on the related task time
worked entries.
By default, a flat rate for each task is defined
in the Task rate field.

Table

The type of tasks the rate card applies to.

Active

Option to determine if the rate card is actively
used.

Task rate

Rate of the task, with a currency list.
To add a new currency, use the Edit link.

Default labor rate

The default hourly rate to apply to the time
worked entries if the worker doesn’t have a
labor rate card.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1316


<!-- page 1317 -->
Field

Description

This field appears only when Use time
worked is selected.
Order

Order in which the task rate card applies to
the same task.
When more than one task rate card applies to
the same task, the one with the lowest order
is used.

Set conditions

Filter to run on the table selected to
determine whether this rate card applies to
a given task. This field uses the Condition
Count Widget to preview what records would
be returned by the conditions.

4. Select Save.

Result

After a task rate card is defined for a task, expense lines are created by the Use time worked
value. When you select the Use time worked field for a task rate card, the time worked records
created against users and labor rate are used to calculate expense lines. For more information,
see Process task rate cards .
Related topics
Asset Total Cost of Ownership for Hardware Asset Management
Asset analytics view
Asset operations view
Create a labor rate card in Hardware Asset Workspace
Create a labor rate card to record the time worked on a task and associate a rate to the task.

Before you begin

Role required: asset_admin
®

Activate the ServiceNow Cost Management (com.snc.cost_management) plugin. For more
information, see Activate Cost Management .

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations > TCO
configuration > Labor rate card.
2. Select New.
3. On the form, fill in the fields.
Create New Labor Rate Card
Field

Description

Name

Purpose of the rate card.

Active

Option to determine if the rate card is actively
used.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1317


<!-- page 1318 -->
Field

Description

Hourly rate

Identifies the hourly rate to be applied to task
time worked entries when the worker meets
the condition defined.

Order

Order in which the labor rate card applies to
the same task.
When more than one labor rate card applies
to the same task, the one with the lowest
order is used.

Set conditions

Filter to determine whether the Use time
worked option applies to this rate card. For
more information, see Create a task rate card
in Hardware Asset Workspace.
This field uses the Condition Count widget to
preview what records would be returned by
the conditions.

4. Select Save.

Result

If you’re working on multiple HAM workflows including a labor rate card, the same value is
used for all the time recorded tasks. But a labor rate card isn't included, the Default labor rate
mentioned in the task rate card is used. For more information, see Create a task rate card in
Hardware Asset Workspace.
Related topics
Asset Total Cost of Ownership for Hardware Asset Management
Asset analytics view
Asset operations view
Create a TCO report in Hardware Asset Workspace
Create your own Total Cost of Ownership (TCO) report to compare the actual or projected TCO
of multiple assets or compare the actual or projected asset TCO with the benchmark cost of the
hardware model.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset analytics.
2. In the Comparative reports section, select New.
3. On the form, fill in the fields.
TCO report
Field

Description

Name

Name of the TCO report.

Type

Type of the TCO report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1318


<!-- page 1319 -->
Field

Description

◦ TCO comparison: Costs of multiple assets
are compared.
◦ TCO vs benchmark: Costs of assets are
compared with the benchmark cost.
Report table

Table for Hardware Asset Management,
Hardware (alm_hardware).

Total cost type

◦ Actual TCO: The TCO value of the selected
asset.
▪ If both Actual TCO and Real time report
check boxes are selected, the generated
TCO report is real-time and offline based
on the Real time report selection.
▪ If only Actual TCO is selected, the
generated TCO report is offline.
◦ Projected TCO: This value is referenced
from the following formulas and the
generated report is only offline.
▪ When useful life of the asset is equal to
or greater than asset life, the Projected
TCO (at end of life) is calculated by using
the following formula:
Normalized TCO * Useful
life
, where Normalized TCO (TCO per
month) is
(Purchase cost /
Useful life) + (Sum of
operational cost / Asset
life)
.
▪ When useful life of the asset is lower
than asset life, the Projected TCO (at
end of life) is calculated by using the
following formula:
Normalized TCO * Asset
life
, where Normalized TCO (TCO per
month) is
(Purchase cost + Sum of
operational cost) / Asset
life
.

Description

A brief and meaningful description of the
report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1319


<!-- page 1320 -->
Field

Description

Show benchmark

Option for indicating the benchmark cost in
the report.
This field appears only when Type is selected
as TCO comparison.

Benchmark model

Asset model to indicate the benchmark cost.
When TCO comparison is selected in the
Type field, this field appears only when the
Show benchmark check box is selected.

Real time report

Option for generating real-time data on the
report.

Workspace

The workspace you’re working on.
Default: HAM

4. Select Save.

Result

The TCO report is generated and displayed in the Comparative reports section of the Total Cost
of Ownership dashboard.
Create a TCO report source
Create a Total Cost of Ownership (TCO) report source for TCO reports.

Before you begin

Role required: asset

Procedure
1. Navigate to Hardware Asset Workspace > Asset analytics.
2. Open the report for which you want to create report sources from the Comparative reports
section.
You can also create a comparative report. For more information, see Create a TCO report in
Hardware Asset Workspace.
3. Select the Report sources tab.
4. Select New.
5. On the form, fill in the fields.
Create New TCO report source
Field

Description

Name

Name of the report source.

Active

Option to indicate if the report source is
active or not. By default, this check box is
selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1320


<!-- page 1321 -->
Field

Description

Note: You can have a maximum of four
active report sources for a report at any
given time. If you want to add another
active report source, you must inactivate
another report source.
Report table

Table for Hardware Asset Management,
Hardware (alm_hardware).

Set conditions

Filter to select assets with certain conditions.

Description

A brief and meaningful description of the
report source.

6. Select Save.

Result

The new report source is added to the list of TCO report sources in the TCO report sources tab.
Related topics
Asset Total Cost of Ownership for Hardware Asset Management
Asset analytics view

Manage and monitor hardware asset performance
Configure settings for asset KPI tracking and monitor asset KPIs using performance reports in the
Hardware Asset Workspace.
Configure settings to monitor asset key performance indicators (KPIs) in the Hardware Asset
Workspace
Set up the necessary configurations in the Asset operations view to enable the tracking of KPIs
for your hardware assets. These settings enable you to monitor and manage the performance
your assets.
As an administrator, configure the following settings to monitor asset KPIs:
1. Opt in to model categories to track performance KPIs for hardware assets.
2. Create an operational schedule for hardware assets.
3. Map hardware assets to an operational schedule.
For details on asset performance and the related reports, see Asset performance reports in the
Hardware Asset Workspace and Asset analytics view.
Opt in to model categories to track performance KPIs for hardware assets
Monitor the performance KPIs of hardware assets in your organization by enabling the KPI
tracking for the models to which the assets belong.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1321


<!-- page 1322 -->
Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations > KPI
configuration.
2. From the KPI configuration list, select KPI opt in.
3. From the list of model categories, select the one for which you want to enable the KPI tracking.
4. On the Asset performance tracking form, select the Track performance KPI check box.
5. Select Save.

Result

Create an operational schedule for hardware assets.
Create an operational schedule for hardware assets
Define the scheduled operational time, which is the duration during which the asset will be in
use, by creating an operational schedule.

Before you begin

Role required: asset

About this task

An operational schedule record is stored in the Asset schedule
[sn_itam_common_asset_schedule] table. If an operational schedule isn't defined, the Default
operation schedule (24/7) hours is applied.

Note: The calculation of asset key performance indicators (KPIs) begins when the asset
first moves to the In Use state. Therefore, the linked operational schedule must cover the
entire period for accurate results.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations > KPI
configuration.
2. From the KPI configuration list, select Operational schedules.
3. Select New.
4. On the form, fill in the fields.
Create New Operation schedule form
Field

Description

Name

Unique name for the operational schedule.

Parent

Parent schedule that constraints the new schedule.
For more details, see Parent and child schedules

Time zone

.

Time zone for the schedule. If you select Floating, the time zone is relative to
whatever process is accessing the item at the time.
◦ For example, if an enterprise administrator in Amsterdam sets a floating
schedule for 8:00A.M. to 5:00P.M., a user in San Jose sees the schedule as
8:00 A.M. to 5:00 P.M.
◦ When a schedule is defined in a specific time zone, users in different time
zones see the schedule with their own time zone applied.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1322


<!-- page 1323 -->
Field

Description

Description Description of the operational schedule.
5. Select Save.
6. Add one or more schedule entries to the operational schedule.
a. Select the Schedule Entries tab.
b. Select New.
c. On the Schedule Entry New record, fill in the fields.
For details on Schedule Entry New record fields, see Schedule entry fields

.

d. Select Submit.
A schedule entry is created and listed under the Schedule Entries tab.

Note:
You can’t edit a schedule or its entries. If you want to stop using an asset schedule,
you can deactivate it by deselecting the Active check box. You can then create a new
schedule as needed.
7. Optional: To view the calendar view of the schedule with the schedule entries, select Show
schedule.

What to do next

Map hardware assets to an operational schedule.
Map hardware assets to an operational schedule
Create an asset schedule to map the hardware assets to an operation schedule.

Before you begin

Role required: admin

About this task

An asset schedule record is stored in the Asset schedule policy [sn_asset_cmn_schdule_policy]
table.

Note: If an asset isn't associated with an operational schedule, the Default asset schedule
(24 hours, 7 days a week or 24/7) will be applied.
The Asset performance - Map schedule policies job runs weekly to sync the
mapping between assets and the operational schedule.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations > KPI
configuration.
2. From the KPI configuration list, select Asset schedules.
3. Select New.
4. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1323


<!-- page 1324 -->
Create New Asset schedule form
Field

Description

Name

Unique name for the asset schedule.

Source
table

Source table for the assets. You can select any of the following tables:
◦ Hardware [alm_hardware]
◦ Enterprise asset [sn_ent_asset]
◦ Construction asset [sn_ent_construction_asset]
◦ Facility asset [sn_ent_facility_asset]
◦ Industrial asset [sn_ent_industrial_asset]
◦ Linear asset [sn_eam_linear_asset]
◦ Medical asset [sn_ent_medical_asset]
◦ Retail asset [sn_ent_reatail_asset]
◦ Tactical equipment asset [sn_ent_tactical_asset]
◦ Transportation asset [sn_ent_transportation_asset]
◦ Wearable asset [sn_ent_wearable_asset]

Condition Set a condition to select the assets that you want to associate with the
operational schedule. For example, if you set the Department field to IT, the
operational schedule is inked to all assets within the IT department.

Note: Select the source table before setting the condition.
Schedule Operational schedule that you want to associate with the assets.
Priority

Order in which schedules should be applied to an asset when there are
overlapping schedules.

Active

Indicates whether the asset schedule is active.

5. Select Save.
6. Optional: To sync the mapping between the assets and the operational schedules on
demand, select Sync KPI records.
Monitor hardware asset performance with Asset KPIs report
Track the asset availability and related KPI values in the report to see how well a hardware asset
is performing.

Before you begin

Role required: asset

About this task

The Asset KPIs report is available for a hardware asset under the following conditions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1324


<!-- page 1325 -->
• The asset belongs to a model category of an opted in resource category, and for which
the performance tracking is enabled. For details, see Opt in to model categories to track
performance KPIs for hardware assets.
• The asset has moved to the In use state, and its KPIs have been calculated and are available in
the Asset Availability table [sn_ent_asset_availability].

Note: The Calculate asset performance KPIs scheduled weekly job runs
every Saturday to calculate the KPIs for the assets. These KPIs are then reflected in the
Asset availability and related KPIs report, which displays the most recent KPI values.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset estate.
2. Select the All assets tab.
3. Select the asset record for which you want to view the details of the asset key performance
indicators (KPIs).
4. On the contextual sidebar, select the Asset availability and related KPIs icon [
The Asset KPIs report is displayed.

].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1325


<!-- page 1326 -->
5. To view the details of the report, select any section on the report.
A form view of the availability record for the asset is shown with additional details such as the
following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1326


<!-- page 1327 -->
◦ Current asset schedule: The asset schedule linked to the asset currently and used for KPI
calculations. If no schedule is linked, the Default asset schedule is used.
◦ Start: The date and time when the asset KPI values were first calculated.
◦ End: The date and time when the asset KPI values were last calculated.
◦ Outages During Interval tab: A list of outages with details like start and end time of the
outage and the duration of the outage. For more details on outage record creation and
handling, see Asset performance reports in the Hardware Asset Workspace.
View the total time worked on all tasks related to a hardware asset
Use the Asset task time summary report to see the details of the time spent on all tasks for an
asset and its child assets, grouped by task category.

Before you begin

Role required: asset

About this task

Asset task time refers to the total time spent on all tasks related to an asset. The total time spent
includes the sum of time worked on all related tasks for the asset and its child assets.

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
Time spent line table [sn_itam_common_time_spent_line]. Each time spent line includes the
time worked on the asset task. The sum of the time spent values in these time spent lines gives
the total asset task time. If a task involves multiple assets, the total time spent is equally divided
among them. This equally distributed time is then aggregated to the parent asset if there are any
child assets involved.

Note: When you upgrade to Hardware Asset Management version 13.0.0, the

Calculate asset time spent fix script creates time spent lines for asset tasks that
have already been completed and closed.
The total time spent is grouped by the following task categories:
• Purchase - Asset: Includes the following tasks
◦ All tasks in the Refresh flow except the Reclaim aged asset task.
◦ All tasks in the Zero touch refresh flow
◦ Replacement task in the Return Merchandise Authorization (RMA) flow
◦ Replacement task in the Recall flow
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1327


<!-- page 1328 -->
• Labor - Maintenance
• Labor - Repair: Includes tasks in the following workflows:
◦ Repair order
◦ RMA order
◦ Incident
• Labor - General: Includes tasks in the following workflows:
◦ Asset reclamation
◦ Asset donation
◦ Resale
◦ Disposal
◦ Lease return
◦ Transfer order
◦ Loaner
◦ Asset onboarding
◦ Asset refresh flow (only the Reclaim aged asset task)
◦ Asset request (Pick task)
◦ Drop off and Receive task
◦ Change

Note: Total time spent on an asset task isn't calculated for pallets, consumables, and
bundle assets. Therefore, the Asset task time summary report isn't available for these
assets.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset estate.
2. Select the All assets tab.
3. Select the asset record for which you want to view the details of the total time spent on the
tasks.
4. On the contextual sidebar, select the Asset task time summary icon [
Total time spent by task category report is displayed.

].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1328


<!-- page 1329 -->
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

1329


<!-- page 1330 -->
▪ Labor - Repair
▪ Labor - General
5. To view the details of the time spent on all tasks within a specific task category, select the
corresponding task category section in the report.
The list of time spent lines is displayed, with each line showing the following details:
◦ Source asset: Display name of the asset, including both parent and child assets, for which
time was spent on the task.
◦ Task: Task number
◦ Task type: Type of the task, such as the Hardware RMA Order Line task.
◦ Task name: Name of the task, such as Prepare or On-site repair.
◦ Time spent: Time worked on the asset task.
◦ Short description: A brief description of the task.
◦ Closed: The date and time when the asset task was closed.
◦ Task category: Category to which the task belongs.

Manage Hardware Asset Management subscriptions
Save on Hardware Asset Management licensing cost by choosing only the Hardware Asset
Management Resource Categories that you use.
For details on Hardware Asset Management licensing, see Hardware Asset Management
subscription.
Opt-in or opt-out of HAM license resource categories
Opt in the Hardware Asset Management (HAM) license resource categories that are part of the
HAM subscription. You can purchase and opt in the resource categories that you use, and you
can opt out and not pay for the categories that you don't use.

Before you begin

Role required: admin or HAM admin

About this task

This procedure is a one-time activity. If you’re upgrading from HAM 1.0 or 2.0 version, then
all resource categories are by default opted in. The exception is the Mobile Device resource
category.
If you’re a new user, manually opt in all the resource categories that are part of the HAM
subscription.

Important: The Mobile Device resource category is only accessible with HAM Mobile
Device License entitlement. Resource categories are available irrespective of entitlements
in non-production instances. However, in production instances, you would find the resource
categories available only with their associated entitlements.
Hardware assets belonging to a category that you don't opt in are excluded by default. For
example, if you don't opt in for the End User Computer category, all End user computers would be
excluded. For more information, see Hardware Asset Management license exclusion.

Note: All the HAM license resource categories are opted in by default when you load
demo data in an instance. You must deselect the resource categories that you don't want to
opt in for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1330


<!-- page 1331 -->
Procedure
1. Navigate to All > Asset > Hardware Model Normalization > HAM Resource categories.
2. Open a resource category.
Each resource category lists the model categories associated with it.
3. To opt in or opt out of the resource category, do one of the following:
◦ If you want to opt in the resource category, select Opt in.
◦ If you want to opt out of the resource category, select Opt out.
A pop-up message appears and asks if you want to opt in or opt out.
4. Select Ok.

Result

The resource category is opted in or opted out. A one time run job execution executes the
following updates:
• Sets the License opt in column on the models that have the model categories belonging to the
opted in or opted out resource categories.
• Sets the exclusion flag on the assets of these models. For more information, see Hardware
Asset Management license exclusion.
• A normalization job is triggered for the models that are associated with the resource category.
View the license report for the Hardware Asset Management application
View details of the subscriptions purchased and consumed by your organization for the
managed IT resource types such as Server, End User Computing Device, Networking Device,
Mobile Device, and Telecom Network Inventory using the ITAM License Report.

Before you begin

Role required: admin, usage_admin

About this task

Note: Every week on Sunday, the license count for the managed IT resource types is
calculated. Any changes to the license consumption reflect on the ITAM license report only
after the weekly license count calculation.

Procedure
1. Navigate to All > ITAM Licensing > ITAM License Report.
2. Search for the Hardware Asset Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1331


<!-- page 1332 -->
Subscription details of all the Hardware Asset Management applications activated on your
ServiceNow instance are shown.
You can view the following information on subscriptions purchased for the resource categories
that you opted-in for all the Hardware Asset Management applications:
◦ Application: Name of the application that is activated on your ServiceNow instance. The
ITAM License Report is grouped by the application.
◦ Resource Category: Managed IT resource types available for the Hardware Asset
Management application. The resource types include the following:
▪ Server
▪ End User Computers
▪ Network gear
▪ Mobile Device
▪ Telecom Network Inventory
▪ Printers
▪ Monitors
▪ Storage
▪ Unclassified hardware
Note the following:
▪ Printers, Monitors, Storage, and Unclassified hardware are available with Hardware Asset
Management version 10.1.0 and later.
▪ When more than one Hardware Asset Management solution is activated on your
ServiceNow instance, an opted-in resource category that is available with the activated
solutions is licensed only under solution. For more details, see Licensing framework for
Hardware Asset Management solutions.
◦ Resource Subcategory: Subcategories of a Resource category.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1332


<!-- page 1333 -->
Note:
▪ Resource Subcategory is available with Hardware Asset Management version 10.1.0
and later.
▪ Based on the acquisition method, the following resource subcategories are available
for the Mobile Device only when the Hardware Asset Management integration with
Zero Touch Mobility is activated on your ServiceNow instance:
▪ Bring Your Own Asset
▪ Corporate Asset
◦ Resource Total Count: Asset count of the managed IT resources that is grouped by
Resource categories and Model categories.
◦ Subscription Unit Ratio: Predefined ratios that determine how many assets of a Resource
category require a subscription. For example, the defined ratio of 4:1 for End User Computers
means that every four assets of that resource category require one Subscription Unit.
◦ Total Subscription Units Consumed: The number of subscriptions per Resource category
that your organization consumed. The licensing module calculates this number by applying
the Subscription Unit Ratio to the Resource Total Count for each Resource Category.
Exclude assets
Exclude an asset for which you don't want to use Hardware Asset Management licensed
features.

Before you begin

Role required: admin

Procedure
1. Navigate to Hardware Asset Workspace > Asset estate > Hardware assets.
2. Select a hardware asset that you want to exclude.
3. On the asset form, select the Exclude from HAM features check box.

Note:
The Exclude from HAM features check box is automatically selected under these
conditions:
◦ If the hardware asset belongs to a resource category that's opted out of Hardware
Asset Management licensed features.
◦ If the hardware asset belongs to a custom model category whose parent model
category is associated with an opted-out resource category.
4. Select Save.

Result

The asset is excluded from using the licensed Hardware Asset Management features.

Manage hardware asset requests using the Zero Touch request flow
Fulfill hardware asset requests of your employees through an external provider by using the Zero
Touch request flow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1333


<!-- page 1334 -->
Setup required for providers
The provider must complete the following tasks to fulfill the requests received through the Zero
Touch request flow:
1. Complete the Service Bridge setup for providers.
2. Configure Scratchpad to send updates to your consumer.

Note: After completing the prerequisites of the Zero Touch request flow, the provider can
fulfill provider tasks. For details, see Fulfill a provider task.

Setup required for your Service Catalog requests
Make sure that you have the completed the following tasks so that your catalog requests can be
fulfilled through an external provider:
1. Complete the Service Bridge setup for your service catalog requests.
2. Manage Service Catalog items for the Zero Touch request flow.
3. Create a provider integration profile.

Note: You must perform this task only if the Scratchpad update received from your
provider isn't in the format required for the Zero Touch request flow. You must also create
a Script Include to transform Scratchpad updates from your provider.

Zero Touch request flow tasks for your employees
1. Request a hardware asset through the Zero Touch request flow.
2. Acknowledge receipt of an asset received through the Zero Touch request flow.
Configure Service Bridge for the Zero Touch request flow
The Zero Touch request flow uses the Service Bridge application to connect providers with
your ServiceNow instance to manage hardware asset requests submitted through the Service
Catalog.

Service Bridge setup for providers
Providers must perform the following tasks to communicate about the request details with your
organization:
1. Install Service Bridge for Providers
2. Register a Service Bridge consumer

.
.

3. Create and publish remote record producers in a Remote Catalog

.

Service Bridge setup for your service catalog requests
Perform the following steps to receive updates on the catalog requests from your provider:
1. Install Service Bridge for Consumers

.

2. Activate the remote record producers published by the provider

.

Use the Scratchpad to complete your request fulfillment tasks
As a provider, use the Scratchpad feature of the Service Bridge application to send updates to
the ServiceNow instance of your consumer while performing the request fulfillment tasks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1334


<!-- page 1335 -->
The Zero Touch request flow requires you to send Scratchpad updates to your consumer's
ServiceNow instance when you complete the confirmation and shipment tasks successfully.
Based on the updates that you send, the Zero Touch flow progresses on your consumer's
ServiceNow instance.
You must include the code specific to your tasks in the PSBScratchpadUtil API. For more
information, see Using the Scratchpad for Service Bridge tasks . Confirm that the Scratchpad
codes associated with the tasks of your request fulfillment flow are in the following format.

Sample code for request confirmation
var scratchPadJSON = {
"orderStatus": "confirmed"
};
var value = JSON.stringify(scratchPadJSON);
var rtGR = new GlideRecord("sn_sb_pro_provider_task");
rtGR.get(<ProviderTaskID>);
if (rtGR.isValidRecord()) {
var util = new sn_sb_pro.PSBScratchpadUtil();
util.update(rtGR, "confirmation", value);
}
When you confirm a provider task, a Scratchpad update with the order status as Confirmed is
sent to your consumer's ServiceNow instance.

Sample code for shipment
var scratchPadJSON = {
"orderStatus": "partially_shipped / fully_shipped"
"orderLineItems" :
[{
"status": "shipped",
"trackingNumber": "123",
"carrier": "C1",
"modelNumber": 'MD322LL/A',
"assetTag": 'P1000177',
"serialNumber": 'P1000177'
},{
"status": "shipped",
"trackingNumber": "123",
"carrier": "C1",
"modelNumber": 'MD322LL/A',
"assetTag": 'P1000178',
"serialNumber": 'P1000178'
}
]
};
When you ship the requested items and confirm the shipment, a Scratchpad update with the
following details are sent to your consumer's ServiceNow instance:
• Order status: Depending on how the provider has shipped the assets in a request, the Order
status can have the following values:
◦ partially_shipped: Assets in the request are shipped through multiple shipments.
◦ fully_shipped: All the assets in the request are shipped.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1335


<!-- page 1336 -->
For example, consider that a requester has requested for five assets. If you ship only three
assets though a shipment, you should pass the Order status as partially_shipped. When you
ship the remaining two assets, you should pass the Order status as fully_shipped.
• Tracking number: Every shipment has a unique tracking number.
• Carrier: The name of the carrier through which the provider shipped the assets.
• Model number: Unique model number of the asset that is shipped.
• Asset tag: Unique asset tag of the asset that is shipped.
• Serial number: Serial number of the asset.

Note: The shipment update for consumable assets doesn't include Asset tag and Serial
number details. If there are multiple shipments, the information of the asset in a shipment
must be sent to your consumer's ServiceNow instance only once.
Manage Service Catalog items for the Zero Touch request flow
As a catalog administrator, configure your Service Catalog items so that the hardware asset
requests can be fulfilled by an external provider.
Complete the following tasks for your catalog requests to be available for fulfillment through the
Zero Touch request flow:
1. Associate your catalog items with the Zero Touch request flow.
2. Create variables for the catalog item associated with the Zero Touch request flow.
3. Associate a catalog item with a remote record producer.
Associate your catalog items with the Zero Touch request flow
Set the flow of your catalog item to Zero Touch request flow for fulfilling all the requests for that
catalog item through an external provider.

Before you begin

Role required: catalog_admin

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items.
2. Select the catalog item.
3. On the Catalog form, select Zero touch request in the Flow field.
4. Select Update.

What to do next

Create variables for the catalog item associated with the Zero Touch request flow.
Create variables for the catalog item associated with the Zero Touch request flow
Create variables for your catalog item so that your provider can fulfill the requests for that item
based on the variable details.

Before you begin

Role required: catalog_admin

About this task

To enable your provider to fulfill the catalog requests accurately, you must create variables
similar to the variables associated with your provider's remote record producer. For example, if
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1336


<!-- page 1337 -->
the remote record producer has size and color variables, then you must create the same set of
variables for the catalog item. For details, see View the variables of a remote record producer.

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Maintain Items.
2. Select the catalog item.
3. On the catalog form, select the Variables tab.
4. Select New.
5. On the form, fill in the fields.
For details on the form fields, see Service Catalog variable form fields.

Important: If your provider supports multiple quantities of an asset in a single request,
hide the equivalent quantity variable for the catalog item by selecting the Hidden check
box. This approach avoids multiple quantity fields on the catalog request.
6. Select Submit.

Result

The variables are displayed on the Service Catalog request for that catalog item.

What to do next

Associate a catalog item with a remote record producer.
Associate a catalog item with a remote record producer
Associate a service catalog item with your provider's remote record producer to send the order
details to your provider for fulfillment.

Before you begin

Role required: catalog_admin

Procedure
1. Navigate to All > Asset > HAM Zero Touch > Catalog Item mappings.
2. On the form, fill in the fields.
Catalog item mapping form
Field

Description

Catalog item

Service Catalog item that you want to associate with the remote record
producer.

Remote record
producer

Remote record producer of the external provider.

Multiple quantity
supported

Option to indicate that your provider's remote record producer supports
multiple quantities for the catalog item.

Quantity variable

Variable to capture quantity from the list of variables defined for the
catalog item.
This field is editable only when the Multiple quantity supported check
box is selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1337


<!-- page 1338 -->
Field

Description

Active

Option to indicate that the catalog item mapping is available for use.

3. Select Submit.
View the variables of a remote record producer
View the variables associated with your provider's remote record producer. Variables help you
identify the necessary details to include in catalog requests for fulfillment by your provider.

Before you begin

Role required: catalog_admin

Procedure
1. Navigate to All > Service Bridge Consumer > Provider connections.
2. Select your provider connection.
3. Select the Remote record producers tab.
4. Select the remote record producer.
5. Select the Variables tab.

Result

The variables of the selected remote record producer are listed in the Variables tab.
Request a hardware asset through the Zero Touch request flow
Request a hardware asset directly with the external provider through the Zero Touch request flow
by ordering the asset from the Service Catalog.

Before you begin

Role required: none

Procedure
1. Navigate to All > Service Catalog > Hardware.
2. On the catalog request, provide the required details.
The fields displayed on the catalog request form vary with the catalog item and the provider.
The provider requires these field values to fulfill the request.
3. In the Quantity field of the Order this item section, select the quantity of items that you want to
order.

Note: If your provider supports multiple assets in a single request, an additional
field to enter the quantity details is displayed on the catalog request only when your
Catalog Administrator hasn't hidden the equivalent quantity variable for the catalog item.
However, the quantity that you selected in the Order this item section is considered for
your request.
4. Select Submit.

Result

Your hardware catalog request is successfully submitted.
Fulfill a provider task
As a provider, ship the asset requested through the Zero touch request flow to the requester.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1338


<!-- page 1339 -->
Before you begin
1. The Service Bridge configuration necessary for the Zero Touch Refresh flow must have been
set up. For more details, see Configure Service Bridge for the Zero Touch request flow.
2. The Scratchpad must have been configured for the confirmation and shipment tasks involved
in your request fulfillment flow. For more information, see Use the Scratchpad to complete your
request fulfillment tasks.
Role required: Roles are provider-specific

About this task

When an employee places an order for the catalog item associated with the Zero Touch request
®
flow on your consumer's ServiceNow instance, a corresponding Provider task is created
®
on your ServiceNow instance. The provider task triggers a request fulfillment flow on your
®
ServiceNow instance. As the provider task moves through various stages in the fulfillment flow,
the information is sent to your consumer's instance through the Scratchpad updates.

Procedure
®

1. Log in to your ServiceNow instance.
2. Navigate to All > Service Bridge Provider > Open Records > Provider Tasks.
3. Select a provider task that is in the Received state.
4. Review the details on the Provider task form.
The Variables section provides details that the requester provided on the Service Catalog
request.
5. Confirm the provider task by sending a Scratchpad update to your consumer's ServiceNow
instance.

®

6. Ship the assets requested in the provider task and send a Scratchpad update with the
®
shipment details to your consumer's ServiceNow instance.
The following shipment details are included in the Scratchpad:
◦ Order status: Order status could be either fully_shipped or partially_shipped.
◦ Tracking number: Unique tracking number for the shipment.
◦ Model number: Unique model number of the asset that is shipped.
◦ Asset tag: Unique asset tag of the asset that is shipped.
◦ Serial number: Serial number of the asset.

Result

An asset with the serial number and asset tag specified in the Scratchpad is assigned to the
requester.
Acknowledge receipt of an asset received through the Zero Touch request flow
As an employee, acknowledge receipt of the new asset that you received through the Zero Touch
request flow on a mobile device.

Before you begin

To use your mobile device for this acknowledgment, you must have the ServiceNow mobile app
installed on your iOS or Android mobile device.
Role required: User of the asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1339


<!-- page 1340 -->
About this task

You can only confirm the receipt of hardware assets on a mobile device. To acknowledge the
receipt of consumable assets, contact your Asset Manager.

Procedure
1. Navigate to My Items > My assets.
2. Tap the asset.
3. Tap Scan delivered asset.
4. Provide the asset tag information.
◦ To provide the information through a scan, scan the asset tag of the asset.
◦ To provide the information manually, enter a value in the Asset tag field.
5. Select Submit.

Result
• The state of the asset changes to In use.
• The stage of the requested item in the catalog request changes to Complete.
Create a provider integration profile
Create a provider integration profile to convert any format of Scratchpad update sent by your
provider to a format required for the Zero Touch request flow.

Before you begin

You must have the Script Include with the method
transformScratchPadToHAMZTRFormat. For details, see Create a Script Include to
transform Scratchpad updates from the provider.
Role required: admin

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations.
2. From the Zero touch list, select Provider integration profiles.
3. Select New.
4. On the form, fill in the fields.
Create New Provider Integration Profile form
Field

Description

Provider Name of the external provider.
API

Name of the Script Include that includes the business logic for transforming the
Scratchpad update sent by the provider to the required format.

Active

Option for indicating the status of the provider integration profile.

5. Select Save.

Result

The provider integration profile is created and added to the Provider integration profiles list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1340


<!-- page 1341 -->
Create a Script Include to transform Scratchpad updates from the provider
To transform Scratchpad updates sent by your provider into a format required
for the Zero Touch request flow, you must have a Script Include with the method
transformScratchPadToHAMZTRFormat.
In the confirmation and shipment stages of the Zero Touch request flow, your provider should
ideally send Scratchpad updates to your ServiceNow instance in a particular format. For details,
see Use the Scratchpad to complete your request fulfillment tasks. However, if your provider's
Scratchpad update isn't in the required format, you can transform it by using a Script Include with
the method transformScratchPadToHAMZTRFormat.
Consider the following points when you create the Script Include:
• The Script Include is accessible from the Asset Management Common application scope by
adjusting the following settings on the application resource record:
◦ Set the Accessible from field to All application scopes.
◦ Set the Caller Access field to None to make sure the caller access isn't restricted.
• Define the method transformScratchPadToHAMZTRFormat in the following format:
/*** Input to the following method is scratchpad value of type
JSON ***/
transformScratchPadToHAMZTRFormat: function (input) {
// Logic to transform the input to the expected format
// This method should return a value of type JSON with expected
format
}
View hardware asset requests submitted through the Zero Touch request flow
View the list of hardware asset requests of your employees submitted through the Zero Touch
request flow in the Asset operations view.

Before you begin

Role required: admin or asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations.
2. From the Zero touch list, select Asset requests.
The list of asset requests is displayed. You can get the request details such as requested item,
quantity, and stage.
3. Select an asset request to view the details.

Manage repair of defective assets in your stockroom in the Hardware Asset
Workspace
Optimize your inventory by getting the defective hardware assets in your stockroom repaired
using the Repair flow.
In the Repair flow, an asset manager requests the repair of defective assets in the stockroom. An
asset technician troubleshoots, repairs, and evaluates the asset. The evaluated asset is either
put to use or disposed of. For details on stages in the Repair flow, see Repair flow to fix defective
hardware assets within a stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1341


<!-- page 1342 -->
Request repair of defective hardware assets in your stockroom
As an asset manager, you can get the defective hardware assets in your stockroom repaired by
creating repair orders.
You can request repair of defective hardware assets through any of the following options:
• Request repair of hardware assets using Service Catalog
• Create repair orders for hardware assets in the Inventory view
• Request repair of a hardware asset using the Repair option

Note:
Consider the following points when you create a repair order:
• You can't request repair of the following assets:
◦ Consumables
◦ Assets that are part of any other workflow
• You can request repair of a child asset only if you have added its parent asset to the
repair order. However, assets in the pallets can be repaired.
Request repair of hardware assets using Service Catalog
Submit a Service Catalog request to repair hardware assets that are defective or pending repair
in your stockroom.

Before you begin

Role required: asset

About this task

You can request repair of multiple defective hardware assets in your stockroom using a single
catalog request.

Procedure
1. Navigate to All > Service catalog > Asset Lifecycle > Asset Repair.
2. On the form, fill in the fields.
Request for stockroom repair of an asset form
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

1342


<!-- page 1343 -->
You can add one or more assets to the request.
c. Select the Lock icon (

).

4. Select Submit.

Result
• Your repair request is submitted successfully.
• A repair order is created in the Draft stage.
• Each asset in the repair order is associated with a repair order line that is in the Troubleshoot
stage.
Create repair orders for hardware assets in the Inventory view
Request repair of hardware assets that are defective or pending repair by creating a repair order
in the Inventory view of the Hardware Asset Workspace.

Before you begin

Role required: asset

About this task

When you create a repair order from the Inventory view, you must explicitly create a repair order
line for the asset that you want to get repaired.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
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

1343


<!-- page 1344 -->
Field

Description

Due date

Date by which the defective hardware assets should be repaired.

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
Request repair of a hardware asset using the Repair option
Request repair of a defective hardware asset in your stockroom directly through an option on the
asset form.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset Estate.
2. Select the All assets tab.
3. Select an asset with State as In stock and Substate as Defective or Pending repair.
4. Select the More Options icon (

) on the asset form.

5. Select Repair.

Result

A repair order with a repair order line in the Troubleshoot stage is created.
Fulfill repair orders in the Hardware Asset Workspace
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

1344


<!-- page 1345 -->
1. Troubleshoot asset
2. Repair asset
3. Evaluate asset
You can also work on the asset repair tasks assigned to you by using the Mobile Agent
application. For details, see Manage hardware asset repair tasks using the Mobile Agent
application.
View open repair orders for your stockroom in the Hardware Asset Workspace
View open repair orders for your stockroom to get the details of the repair order lines and repair
tasks that need action.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom.
In the Open stockroom tasks section, the Open repair orders card displays the number of
open repair orders.
4. Select the Open repair orders card.

Result

The list of open repair orders for the stockroom is displayed.
Troubleshoot assets requested for repair in the Hardware Asset Workspace
Complete the troubleshooting task to assess the issues with the defective asset. Based on your
observations, you can confirm whether the asset can be repaired, redeployed, or should be
disposed of.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
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
worked on asset repair tasks in the Hardware Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1345


<!-- page 1346 -->
An entry for the time you worked is created in the Time Worked tab of the Troubleshoot asset
task.
10. Select the Details tab.
11. Select the troubleshooting result in the Troubleshoot result field.
◦ If the asset is repairable, select Repairable.
◦ If the asset is unrepairable, select Unrepairable.
◦ If the asset can be redeployed, select Redeployable.
12. Optional: Enter the issue identified with the asset during the repair process in the Issue
identified field.
Once the task is closed, this field can't be modified.
The value in the Issue identified field is carried forward to the repair asset task after the
troubleshooting task is closed.
13. Enter notes related to the task in the Work notes field.
14. Select Close task.

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

Complete the repair asset task in the Hardware Asset Workspace.
Complete the repair asset task in the Hardware Asset Workspace
Complete the repair of the defective asset and confirm if the asset is repaired, unrepairable, or
redeployable.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select the repair order for which you want to complete the Repair asset task.
4. Select the Repair order lines tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1346


<!-- page 1347 -->
5. Select the repair order line that's in the Repair stage.
6. Select the Repair asset tasks tab.
7. Select the Repair asset task that's in the Open state.
8. Indicate that you have started working on the Repair asset task by selecting Start Work.
The Start Work option changes to Start Timer and Record Time automatically.
9. Optional: Record the time worked on the task.
You can either use the timer or record the time manually. For more details, see Record time
worked on asset repair tasks in the Hardware Asset Workspace.
An entry for the time you worked is created in the Time Worked tab of the Repair asset task.
10. Select the Details tab.
11. Select the repair result in the Repair result field.
◦ If the asset is repaired, select Repaired.
◦ If the asset couldn't be repaired, select Unrepairable.
◦ If the asset can be redeployed, select Redeployable.
12. Optional: Enter the issue identified with the asset during the repair process in the Issue
identified field.
(Optional) This field is automatically populated with the value carried forward from the
troubleshoot asset task if the issue is identified and a value is provided in the Issue identified
field. Once the task is closed, this field can’t be modified.
The value in the Issue identified field is carried forward to evaluate repaired asset task after
the repair task is closed.
13. Enter notes related to the task in the Work notes field.
14. Select Close task.

Result
• If you had set the Repair result to Unrepairable, the following changes happen on closure of
the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and the substate changes to Pending disposal.
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

Evaluate the repaired asset in the Hardware Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1347


<!-- page 1348 -->
Evaluate the repaired asset in the Hardware Asset Workspace
Evaluate the repaired asset and confirm if the asset is redeployable or should be disposed of.
The Repair flow completes after the repaired asset is evaluated.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
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
worked on asset repair tasks in the Hardware Asset Workspace.
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

Result
• If you had set the Evaluation result to To be disposed, the following changes happen on
closure of the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and the substate changes to Pending disposal.
• If you had set the Evaluation result to Redeployable, the following changes happen on closure
of the task:
1. The repair order and the repair order line are in the Completed stage.
2. The state of the asset changes to In stock and the substate changes to Available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1348


<!-- page 1349 -->
Bulk close asset repair tasks in the Hardware Asset Workspace
Complete and close multiple repair tasks at one go to process a repair order with multiple repair
order lines.

Before you begin

Role required: asset

About this task

You can bulk close only similar asset repair tasks that are in the Open state. However, you can't
bulk close similar repair tasks for which the task result isn't the same. For example, you can't bulk
close two Troubleshoot assets tasks, when one task has a repairable asset and the other has an
unrepairable asset.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
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
▪ Redeployable
▪ To be disposed
8. Enter notes related to the task in the Work notes field.
9. Select Save.
10. Select Bulk Close.
The Select Assets dialog box with similar repair tasks is displayed.
11. Select the tasks that you want to close and select Close Task.

Result

All the selected repair tasks are closed with the same task result and Work notes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1349


<!-- page 1350 -->
Cancel a repair order in the Hardware Asset Workspace
Cancel a repair order that no longer needs to be fulfilled.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select a repair order that's in the Draft or In Progress stage.
4. Select Cancel.

Result
• The stage of the repair order changes to Cancelled and the state changes to Closed
Incomplete.
• The stage and state of the repair order lines that weren't completed change to Cancelled and
Closed Incomplete.
Cancel a repair order line in the Hardware Asset Workspace
Cancel a repair order line that no longer needs to be fulfilled.

Before you begin

Role required: asset

About this task

You can only cancel a repair order line that is not in the Completed stage.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select a repair order that's in the Draft or In Progress stage.
4. Select the Repair order lines tab.
5. Select the repair order line that you want to cancel.
6. Select Cancel.

Result
• The stage of the repair order line changes to Cancelled and the state changes to Closed
Incomplete.
• The state of the associated repair asset tasks that were open changes to Closed Incomplete.
• The stage of the repair order changes to Cancelled only if there aren't any other repair order
lines that are in the Troubleshoot, Repair, Evaluate, or Completed stage.
Record time worked on asset repair tasks in the Hardware Asset Workspace
Manage and record time worked on Troubleshoot asset, Repair asset, and Evaluate asset tasks
in the Hardware Asset Workspace. After you start work on a repair asset task, you can pause and
resume work. You can also record the time worked manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1350


<!-- page 1351 -->
Record time worked on a repair task automatically in the Hardware Asset Workspace
Record the time that you took to complete a repair task without taking any break until you
completed the task.

Before you begin

Role required: asset

About this task

You can record the time worked for Troubleshoot asset, Repair asset, and Evaluate asset tasks
that are in the Open state.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
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
◦ If you have completed an Evaluate asset task, then select any of the following results in the
Evaluation result field:
▪ Redeployable
▪ To be disposed
11. Enter notes related to the task in the Work notes field.
12. Select Close Task.

Result

The actual time you worked on the task completion is automatically calculated. An entry for the
time worked is created in the Time Worked tab of the asset repair task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1351


<!-- page 1352 -->
Record time worked on a repair task manually in the Hardware Asset Workspace
Create an entry for the time worked on an asset repair task manually in the Hardware Asset
Workspace.

Before you begin

Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
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
Pause a repair task in the Hardware Asset Workspace
Record a break from a repair task in the Hardware Asset Workspace if you’re not continuing to
work on it. Resume the task when you start working on it again. The system automatically tracks
and calculates the actual time taken to complete the task even though the work was interrupted.

Before you begin

You can pause an asset repair task that is in the Work in Progress state. The option to pause the
task is available only after you perform the following actions for the asset repair task:
1. Indicate that you have started working on the task by selecting Start Work.
2. Start recording the time by selecting Start Timer.
Role required: asset

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Repair orders tab.
3. Select the repair order that you’re working on.
4. Select the Repair order lines tab.
5. Select the repair order line that you’re working on.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1352


<!-- page 1353 -->
6. Select the Repair asset tasks tab.
7. Select the task that you want to pause.
8. Select Pause Work.
The Pause Work changes to Resume Work
9. Select Resume Work when you’re ready to work on the activity again.

Result

Each time you pause or resume work on the task, the actual time you worked on the task is
automatically calculated. An entry for the time worked is created in the Time Worked tab.

Manage picking hardware assets within your stockroom for Hardware Asset
Management workflows
Enable the Asset pick task explicitly for your stockroom and provide granular location details of
the asset to facilitate asset picking within your stockroom.
Enable the Asset pick task for your stockroom in the Hardware Asset Workspace
Enable the Asset pick task for your stockroom so that the task is automatically added to Standard
Hardware Asset requests, Hardware Asset Refresh requests, and Sourcing workflow.

Before you begin

Role required: inventory_user

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of available stockrooms, select the stockroom for which you want to enable the
Asset pick task.
4. On the Stockroom Details form, select the Warehouse tasks required check box.
5. Select Save.
Add aisles and spaces to a stockroom in the Hardware Asset Workspace
Add details of aisles and spaces in a stockroom to provide granular location details of an asset
in that stockroom. The aisle and space details enable you to locate and pick an asset in the
stockroom.

Before you begin

Role required: inventory_user

About this task

A space is associated with an aisle in the stockroom. You can add a space only after you have
added a minimum of one aisle to the stockroom.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select a stockroom.
4. Select the Aisle and spaces tab.
The list of existing aisles and spaces in that stockroom is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1353


<!-- page 1354 -->
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
◦ The Display name of the space is automatically set based on the Aisle and Space fields. For
example, the display name of the space whose aisle is aisle_001 and space is space_001 is
aisle_001 - space_001.
View the open hardware asset pick tasks for your stockroom
View the open hardware asset pick tasks for your stockroom to get the details of the tasks that
need action.

Before you begin

Role required: inventory_user

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. Select the stockroom.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1354


<!-- page 1355 -->
In the Open stockroom tasks section, the Open pick tasks card displays the number of open
pick tasks.
4. Select the Open pick tasks card.

Result

The list of open asset pick tasks for the stockroom is displayed.

What to do next

Manage all the hardware asset pick tasks assigned to you by using the Mobile Agent application.
For details, see Manage hardware asset pick tasks using the Mobile Agent application.

Manage hardware asset tasks using the Mobile Agent application
Manage hardware asset tasks such as repair tasks and asset pick tasks using the intuitive Mobile
Agent application.
Manage hardware asset repair tasks using the Mobile Agent application
Manage all the repair tasks associated with the defective hardware assets in your stockroom
using the intuitive Mobile Agent application.
View your hardware asset repair tasks using the Mobile Agent application
View the Troubleshoot asset, Repair asset, and Evaluate asset tasks assigned to you by using the
Mobile Agent application.

Before you begin

Role required: admin or asset

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying only the first few tasks in the
list of tasks assigned to you.
3. View all the tasks assigned to you by selecting See all.
4. Optional: Filter your tasks by field values.
a. Tap the Filter icon (

).

b. Enter values in the fields by which you want to filter your task: Due Date, Asset, Location, or
Priority.
5. Optional: Sort your tasks.
a. Tap the Filter icon (

).

b. Tap Sort by.
c. Select the fields by which to sort your tasks.
Start working on a hardware asset repair task using the Mobile Agent application
Indicate in the Mobile Agent application when you start work on a repair task assigned to you.

Before you begin

Role required: asset

About this task

You can work on the repair tasks that belong to the following task types:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1355


<!-- page 1356 -->
• Asset troubleshoot task
• Asset repair task
• Asset evaluate task

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying only the first few tasks in the
list of tasks assigned to you.
3. If the task you want to start isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the repair task that you want to start.
6. On the Details tab, tap Start work.

Result

On the Details tab, the Start work link changes to Start timer, Record time, and Close
automatically.

What to do next

Record time worked on a hardware asset repair task using the Mobile Agent application.
Record time worked on a hardware asset repair task using the Mobile Agent application
Manage and record time worked on Troubleshoot asset, Repair asset, and Evaluate asset tasks
using the Mobile Agent application. After you start working on a task, you can pause and resume
work. You can also record the time worked manually.
Pause a hardware asset repair task using the Mobile Agent application
Record a break from a repair task for the hardware assets using the Mobile Agent application if
you’re not continuing to work on it.

Before you begin

After you start work on the repair task, start recording the time by tapping the Start Timer in the
Details tab.
Role required: asset

About this task

You can resume the task when you start working on it again. The system automatically tracks and
calculates the actual time taken to complete the task even though the work was interrupted.

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying only the first few tasks in the
list of tasks assigned to you.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1356


<!-- page 1357 -->
3. If the task you want to pause isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the task record that you want to pause.
6. On the Details tab, tap Pause.
On the Details tab, the Pause option changes to Resume.
7. Tap Resume when you’re ready to work on the activity again.

Result

Each time you pause or resume work on the repair task, the actual time you worked on the task
is automatically calculated. An entry for the time worked is created in the Time worked section of
the Related tab.
Record time worked on a hardware asset repair task manually using the Mobile Agent
application
Record time worked on a hardware asset repair task manually and provide any additional
comments on the task using the Mobile Agent application.

Before you begin

Make sure you have indicated that you started working on the repair task by tapping Start work
in the Details tab.
Role required: asset

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying only the first few tasks in the
list of tasks assigned to you.
3. If the task for which you want to record time isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the repair task record for which you want to record time.
6. On the Details tab, tap Record time.
7. On the Record time screen, specify the details of the task.
a. Enter the time duration that you worked on the task in the Time worked (Hours) and Time
worked (Minutes) fields.
b. Optional: Provide any additional information in the Time worked comments field.
8. Tap Done and then tap Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1357


<!-- page 1358 -->
Result

The Record time form is saved and the time card is added to the Time worked section of the
Related tab.
Close a hardware asset repair task using the Mobile Agent application
Complete an assigned hardware asset repair task and mark the task as closed using the Mobile
Agent application.

Before you begin

Role required: asset

About this task

You can close any task that belongs to the following task types:
• Troubleshoot asset task
• Repair asset task
• Evaluate asset task

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying only the first few tasks in the
list of tasks assigned to you.
3. If the task you want to close isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
tasks.

), tap Sort by, and select the fields to sort your

5. Tap the repair task that you want to close.
6. On the Details tab of the repair task, tap Close .
7. On the Repair task input form screen, enter the result of your task.
Task

Action

In the Troubleshoot result field, select any of
the following:
Troubleshoot asset

◦ Repairable
◦ Unrepairable
◦ Redeployable
In the Repair result field, select any of the fol­
lowing:

Repair asset

◦ Repaired
◦ Unrepairable
◦ Redeployable

Evaluate asset

In the Evaluation result field, select any of
the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1358


<!-- page 1359 -->
Task

Action

◦ Redeployable
◦ To be disposed
8. In the Work notes field, enter your closure comments.
9. Tap Done and then tap Submit.

Result

The state of the repair task changes to Closed Complete.
Manage hardware asset pick tasks using the Mobile Agent application
Work on the hardware asset pick tasks assigned to you by using the Mobile Agent application.
Start working on a hardware asset pick task using the Mobile Agent application
Indicate in the Mobile Agent application when you start work on an asset pick task assigned to
you.

Before you begin

Role required: inventory_user

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying only the first few tasks in the
list of tasks assigned to you.
3. If the task you want to start isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the Asset pick task that you want to start.
Use the details provided in the following fields on the Details tab to start work on the assigned
asset pick task:
◦ Asset: Asset that you should pick.
◦ Stockroom: Stockroom from which you should pick the asset.
◦ Pick location: Aisle and space within the stockroom from where you should pick the asset.
6. On the Details tab, tap Start work.

Result

On the Details tab, the Start work link changes to Start timer, Locate, and Scan asset
automatically.

What to do next

Complete the Asset pick task assigned to you. For details, see Locate and pick the hardware
assets in your stockroom using the Mobile Agent application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1359


<!-- page 1360 -->
Record time worked on a hardware asset pick task using the Mobile Agent application
Manage and record time worked on hardware asset pick tasks using the Mobile Agent
application. After you start working on a task, you can pause and resume work.
Pause a hardware asset pick task using the Mobile Agent application
Record a break from a hardware asset pick task by using the Mobile Agent application if you’re
not continuing to work on it.

Before you begin

After you start work on the hardware asset pick task, make sure to start recording the time by
tapping Start timer in the Details tab.
Role required: inventory_user

About this task

After you pause a task, you can resume when you start working on it again. The system
automatically tracks and calculates the actual time taken to complete the task even though the
work was interrupted.

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying only the first few tasks in the
list of tasks assigned to you.
3. If the task you want to pause isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the asset pick task record that you want to pause.
6. On the Details tab, tap Pause.

Note: The Pause option is displayed only after you tap Start timer.
On the Details tab, the Pause option changes to Resume.
7. Tap Resume when you’re ready to work on the activity again.

Result

Each time you pause or resume work on the asset pick task, the actual time you worked on the
task is automatically calculated. An entry for the time worked is created in the Time worked
section of the Related tab.
Locate and pick the hardware assets in your stockroom using the Mobile Agent application
Locate a hardware asset placed in a specific aisle and space in the stockroom by using indoor
maps. After locating the asset, pick and drop off the asset to another location within the
stockroom using the Mobile Agent application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1360


<!-- page 1361 -->
Before you begin

You should explicitly install Indoor Mapping for Assets (com.sn_ima) application from the
ServiceNow Store. When you install this application, Indoor Mapping (sn_map_core) and Indoor
Mapping component (sn_map_component) are also installed.
Role required: inventory_user

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying only the first few tasks in the
list of tasks assigned to you.
3. If the task you want to start isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the Asset pick task for which you have started work.
6. To locate the hardware asset in the stockroom, on the Details tab, tap Locate.
◦ The exact location of the hardware asset in the stockroom is displayed on the map.
◦ The Get directions option is displayed.
7. Get directions to the asset location in the stockroom.
a. Tap Get directions.
b. Choose the start location on the map.
c. Tap Save.
◦ The following details are displayed on the map:
▪ Path from the start location to the asset location
▪ Approximate time required for you to reach the asset location
◦ View steps and Scan asset options are displayed.
8. Optional: To view the route to the asset location, tap View steps.
9. After reaching the asset location, pick the asset.
10. Complete the Asset pick task.
a. Tap Scan asset.
b. Provide the asset tag information.
▪ To provide the information through a scan, scan the asset tag of the asset.
▪ To provide the information manually, enter a value in the Asset tag field.
c. Optional: In the Drop off location field, select the space within the stockroom where you
want to drop off the asset that you picked.
d. Select Close complete.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1361


<!-- page 1362 -->
◦ The state of the Asset pick task changes to Closed complete.
◦ The Location field of the asset is updated with the drop off location only if you have
specified the drop off location.
◦ The Hardware Asset request flow and Hardware Refresh request flow proceed to the next
stage.
Manage asset put away using the ServiceNow Agent application
Scan and put away the assets from the receiving bay in the designated aisle-space using the
ServiceNow Agent application.
Put away assets using the ServiceNow Agent application
Scan available assets in the inventory and perform an asset put away task in the designated
scanned drop-off location.

Before you begin

Role required: inventory_user

About this task

The inventory user can scan the available assets in the inventory and put them away in the
scanned aisle-space in the stockroom. The Hardware Asset Management application checks
the existence of an active put away task for the asset and makes the required update in the
Hardware Asset Workspace.
• If an active Asset put away task exists, the task is closed when the asset is placed in the
designated stockroom location.
• If an active Asset put away task doesn't exist for the asset, then a task is created and closed
when the asset is placed in the designated stockroom location.

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar, tap the Asset put away menu.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1362


<!-- page 1363 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1363


<!-- page 1364 -->
The Asset put away page is displayed.
3. Enter or scan the asset serial number and tap Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1364


<!-- page 1365 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1365


<!-- page 1366 -->
You can scan multiple assets at a time. All the scanned asset serial numbers are listed in the
Review tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1366


<!-- page 1367 -->
4. Enter or scan the drop-off location and tap Submit.

Result

A confirmation message appears on the mobile screen showing the number of put away tasks
closed.

Manage asset put away using the Hardware Asset Workspace
Enable the Asset put away task explicitly for your stockroom to put away the assets from the
receiving bay in the designated aisle-space. View the open Asset put away task and close it after
specifying the aisle-space value to move the asset in the stockroom.
Enable the asset put away task for your stockroom
Enable the Asset put away feature for your stockroom so that the Asset put away task is
automatically created to track asset movement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1367


<!-- page 1368 -->
Before you begin

Role required: inventory_user

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the All stockrooms tab.
3. From the list of available stockrooms, select the stockroom for which you want to enable the
Asset pick task and Asset put away task.
4. On the Stockroom Details form, select the Warehouse tasks required check box.
5. Select Save.

Result

You can perform asset put away for in stock assets in the stockroom.
View open put away tasks for your stockroom
View the open put away tasks for your stockroom in the Hardware Asset Workspace to get the
details of the tasks that need action.

Before you begin

Role required: inventory_user

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. View the open put away task either from the Inventory overview section or the All Stockrooms
tab.
◦ In the Inventory overview section, select the Open put away tasks number.
◦ In the Stockrooms tab, select a stockroom. In the Open stockroom tasks section, select the
Open put away tasks number.

Result

The list of open Asset put away tasks are displayed.

What to do next

Put away the asset in the desired drop-off location in the stock room. Close the Asset put away
task after adding the Drop off location field value in the Asset put away task form. For more
information about closing Asset put away task, see Close an Asset put away task.
Create an Asset put away task
Create an Asset put away task manually for the In stock assets in the Hardware Asset Workspace
to track the movement of assets within the stockroom.

Before you begin

Role required: inventory_user

About this task

You can create an asset put away task in the Hardware Asset Workspace for the In stock assets
for which the Aisle and Space field value isn’t already specified. When you create a put away
task, you can either directly close the task or save it. To close the task, the Drop off location field
value is required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1368


<!-- page 1369 -->
Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Open the Create New Asset put away task form either from the Inventory overview section or
the All Stockrooms tab.
◦ In the Inventory overview section, select the Open put away tasks card and select New.
◦ In the Stockrooms tab, select a Stockroom. Then in the Open stockroom tasks section, select
the Open put away tasks card. Select New.
3. On the Asset put away task form, fill in the fields.
For a description of the field values, see Asset put away task fields.
4. Save your modifications.
◦ To save your changes and create the Asset put away task, select Save.
◦ To save your changes and close the Asset put away task, select Close task.

Note: Drop off location field value is required to close the Asset put away task.
Close an Asset put away task
Add the asset drop-off location for an open Asset put away task and close it in the Hardware
Asset Workspace.

Before you begin

Role required: inventory_user

About this task

You can bulk close selected Asset put away tasks that are open and assigned to you by
specifying a drop-off location, which moves all associated assets to that location. You can also
close individual tasks by specifying a drop-off location.

Note: When you make the following changes to a hardware asset, the associated Asset
put away task is closed:
• When the asset’s Aisle and Space value is filled, the associated Asset put away task for
the asset is closed, and the State field is updated to Closed Complete.
• When the asset’s State field is updated from In stock to some other value without adding
the Aisle and Space field value, the associated Asset put away task is closed and its
state is updated to Closed Incomplete.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Open the put away task either from the Inventory overview section or the All Stockrooms tab.
Option

From the Inventory overview section

Description

a. In the Inventory overview section, select
the Open put away tasks card.
b. Select the Number link to open the Asset
put away task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1369


<!-- page 1370 -->
Option

Description

◦ In the All Stockrooms tab, select a stock­
room.
From the All Stockrooms tab.

◦ In the Open stockroom tasks section, se­
lect the Open put away tasks card.
◦ Select the Number link to open the Asset
put away task.

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

Audit your hardware assets by using Asset Attestation
Improve the asset utilization by auditing the hardware assets assigned to your employees and
validating if the employees are using the assigned assets.
As an Asset manager or an Inventory administrator, you can create an asset attestation in any of
the following ways:
• Create an asset attestation or a schedule using the playbook
• Create an asset attestation in the Inventory view.
• Create an asset attestation schedule.
• Create an attestation for a hardware asset

Important: Starting with Hardware Asset Management version 13.0.0, the playbook is
the default option for the creation of asset attestations and schedules. However, if you set
the value of the sn_itam_common.enable_asset_attestation_playbook
system property to false with the asset or inventory_admin role, you will be shown forms to
complete the attestation process instead of the playbook.
As an employee, you can confirm the assets assigned to you in any of the following ways:
• Confirm the assigned assets using the Now Mobile app.
• Confirm the assigned assets on the Employee Center portal.
For more details, see Asset Attestation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1370


<!-- page 1371 -->
Playbook for asset attestation
The Create asset attestation playbook provides detailed, step-by-step instructions for creating
an asset attestation. This playbook guides you through each stage of the attestation process,
starting from filling in the asset attestation details to the completion of attestation.
The Create asset attestation playbook includes multiple lanes on the left-hand pane, each
corresponding to the different activities in the asset attestation process. Each lane includes
status indicators that display the current state of each activity.
Once you mark an activity in a lane as complete, you can move on to the next lane. You can
return to the playbook anytime later to finish any pending activities. As you complete each lane,
the status updates in the left-hand panel. The final activity in the playbook involves reviewing the
attestation schedule details that you provided and marking that activity as complete.
Create an asset attestation or a schedule using the playbook
Create a one-time asset attestation or a schedule for recurring attestations to verify if your
serialized hardware assets are in use, using the playbook.

Before you begin

Role required: asset or inventory_admin

About this task

A single asset attestation can have attestations involving more than one employee. Also, an
employee can have more than one asset assigned. Therefore, an asset attestation can have
multiple users and assets involved.
Only serialized hardware assets that belong to the opted-in resource categories can be
requested for attestation. Consumables, bundles, and pallets can't be attested.
The ITAM Common- Asset attestation daily job runs daily to check through all the
attestation schedules that are created. Based on the frequency specified in the attestation
schedule, the job creates an asset attestation.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Asset attestations tab.
3. Select New.
The Create asset attestation playbook displays the following activities that you must complete
in the sequence:
◦ Provide attestation details
◦ Select users
◦ Select model categories
◦ Attestation completed
4. Select whether you want to create an asset attestation or an attestation schedule, and then fill
in the necessary details in the Provide attestation details activity.
The Schedule number field is automatically populated with a unique identifier for the
attestation schedule.
◦ To create an asset attestation, select One-time in the Mode field and follow these steps:
a. In the Schedule name field, enter the name of the attestation.
b. Select Mark Complete.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1371


<!-- page 1372 -->
◦ To create a schedule for recurring asset attestations, select Recurring in the Mode field and
follow these steps:
a. On the form, fill in the fields.
Provide attestation details form
Field

Description

Schedule
name

Name of the asset attestation schedule.

Frequency
(days)

Frequency in days when the asset attestation schedule must create an
asset attestation.

Schedule
start date

Date on which the attestation schedule should be processed for the first
time to create an asset attestation.

Note: The Schedule start date must be at least the current date
and can't be in the past.
Schedule
end date

Date on which the attestation schedule should be processed for the last
time to create an asset attestation.

Note: The Schedule end date should be after the schedule start
date.

b. Select Mark Complete.
5. In the Select users activity, select employees required to confirm assets.
a. In the Editor section, set a condition to select employees who are required to confirm assets
through the asset attestation request.
For example, to select employees in the Development department, set the Department field
to Development.
The User list section displays the number of records that match your condition. You can also
view these results.
b. Select Mark Complete.
6. In the Select model category activity, select the model categories of assets that you want to
attest.
Number of model categories to be attested

All

A few model categories from the list

Action

a. In the Model category type field, select All.
b. Select Mark complete.
a. In the Model category type field, select In­
dividual.
b. In the Model categories field, select the re­
quired model categories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1372


<!-- page 1373 -->
Number of model categories to be attested

Action

Note: You can select one or more
model categories.
c. Select Mark complete.

7. In the Attestation completed activity, review the details on the Attestation schedule overview
form, and then select Mark Complete.

Result
• If you selected One-time in the Mode field, the following changes happen:
◦ An email notification is sent to the employees who are required to confirm assets. Employees
can confirm assets through the Now Mobile app or on the Employee Center portal.
◦ An asset attestation is created in the In progress state and the following tabs are displayed:
▪ The Assets tab shows the list of assets to be confirmed by the employees.
▪ The Users tab shows the list of employees who are required to confirm the assets
assigned to them.
▪ The Excluded Assets tab shows the assets that are opted-out and not part of the asset
attestation.
▪ The Remediation task tab displays any remediation tasks created for assets that your
employees have confirmed they don't have.
• If you selected Recurring in the Mode field, and set the Schedule start date field to a date in
future, the following changes happen:
◦ An asset attestation schedule is created in the Ready state.
◦ The Attestations tab displays the list of attestation request details after the requests are
created.
◦ An email notification is sent to the employees who are required to confirm assets on the
scheduled attestation date. Employees can confirm assets through the Now Mobile app or
on the Employee Center portal.
• If the Schedule start date field is set to the current date, the following changes happen:
◦ An attestation schedule is created in the Ready state.
◦ The attestation schedule creates an asset attestation in the In progress state.
◦ An email notification is sent to the employees who are required to confirm assets. Employees
can confirm assets through the Now Mobile app or on the Employee Center portal.

What to do next

View the asset attestation or the attestation schedule that's created.
• To view the attestation record, follow any of these steps:
◦ Navigate to the Inventory view and select the Asset attestations tab
◦ Navigate to the Asset operations view and select Attestations from the Attestation list.
• To view the attestation schedule record, navigate to Asset operations and select Schedule
from the Attestation list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1373


<!-- page 1374 -->
Return to the playbook to continue pending asset attestation activities
Resume work on the incomplete asset attestation activities in the playbook by using the
attestation schedule details.

Before you begin

Role required: asset or inventory_admin

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations.
2. From the Attestation list, select Schedule.
3. From the list of schedules, select the one where you have incomplete activities in the
playbook.
4. Select Continue on playbook.

Result

The Create asset attestation playbook is displayed for the schedule number that you selected.

What to do next

Complete all the pending activities in the playbook. For details, see Create an asset attestation
or a schedule using the playbook.
Create an asset attestation in the Inventory view
Create an asset attestation to validate whether the serialized hardware asset that's assigned to
an employee is still in use.

Before you begin

Role required: asset or inventory_admin

About this task

A single asset attestation can have attestations involving more than one employee. Also, an
employee can have more than one asset assigned. Therefore, an asset attestation can have
multiple users and assets involved.
Only serialized hardware assets that belong to the opted-in resource categories can be
requested for attestation. Consumables, bundles, and pallets can't be attested.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Asset attestations tab.
3. Select New.
4. In the dialog box, under the Attestation mode, select One time.
5. Select Create.
6. On the form, fill in the fields.
Create New Attestation form
Field

Description

Asset details
Attestation
number

Unique identifier for asset attestation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1374


<!-- page 1375 -->
Field

Description

Requested
by

User who is creating the asset attestation.

Submission Date on which the asset attestation is submitted.
date
Schedule

Attestation schedule that created the attestation.

Note: This field is empty for a one-time asset attestation request.
State

Status of the asset attestation.

Model
categories

Model categories of the assets for which the attestation is requested.

Note: You can select more than one model categories. However, you can
only select the model categories that belong to the resources categories
that are opted-in and that don't need a license.

User Criteria
Filter

Set conditions to select employees who are required to confirm assets. For
example, if you want to select employees who belong to the Development
department, you can set the Department field to Development and then select
Set.

Work notes
Work notes Comments related to asset attestation.

Note: The following fields on the form are automatically populated:
◦ Attestation number
◦ Requested by
◦ Submission date
◦ Schedule
◦ State
7. Select Save.

Result
• An email notification with the link to the My Assets page on the Employee Center portal is sent
to the employees who are required to confirm assets.
• An asset attestation is created in the In progress state.
• The Assets tab shows the list of assets to be confirmed by the employees.
• The Users tab shows the list of employees who are required to confirm the assets assigned to
them.
• The Excluded Assets tab shows the assets that are opted-out and not part of the asset
attestation.

What to do next

View open asset attestations in the Hardware Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1375


<!-- page 1376 -->
Create an asset attestation schedule
Create an attestation schedule so that recurring asset attestations are created based on the
frequency that you specify.

Before you begin

Role required: asset or inventory_admin

About this task
The ITAM Common- Asset attestation daily job runs daily to check through all the
attestation schedules that are created. Based on the frequency specified in the attestation
schedule, the job creates an asset attestation.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Asset attestations tab.
3. Select New.
4. In the dialog box, under the Attestation mode, select Recurrence.
5. Select Create.
6. On the form, fill in the fields.
Create New Asset attestation schedule form
Field

Description

Attestation schedule details
Schedule
number

Unique identifier for the attestation schedule.

Schedule
name

Name of the asset attestation schedule.

Frequency Frequency in days when the asset attestation schedule must create an asset
(days)
attestation.
State

Status of the asset attestation schedule.

Schedule
start date

Date on which the attestation schedule should be processed for the first time to
create an asset attestation.

Note: The Schedule start date must be at least the current date and can't
be in the past.
Schedule
end date

Date on which the attestation schedule should be processed for the last time to
create an asset attestation.

Note: The Schedule end date should be after the schedule start date.
Requested User who is creating the attestation schedule.
by
Next
Date on which the attestation schedule is planned to be run the next time.
scheduled
This field is updated automatically only after the asset attestation schedule
run
is processed successfully to create an asset attestation. Also, this field is
populated based on the value in the Frequency (days) field. For example, if the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1376


<!-- page 1377 -->
Field

Description

Schedule start date is set to 2024-01-01 and the Frequency is set to 10, then
the following events happen:
a. An asset attestation is first created on 2024-01-01.
b. The Next scheduled run field is set to 2024-01-11 automatically.
Model
Model categories of the assets for which the attestation schedule is created.
categories
Note: You can select more than one model categories. However, you can
only select the model categories that belong to the resources categories
that are opted-in and that don't need a license.
User Criteria
Filter

Set conditions to select employees who are required to confirm assets through
the asset attestation request. For example, if you want to select employees
who belong to Development department, you can set the Department field to
Development and then select Set.

Work notes
Work
notes

Comments related to the asset attestation schedule.

Note: The following fields on the form are automatically populated:
◦ Schedule number
◦ State
◦ Requested by
◦ Next schedule run
7. Select Save.

Result
• An asset attestation schedule is created in the Ready state.
• The Attestations tab displays the list of attestation request details after the requests are
created.
• An email notification with the link to the My Assets page on the Employee Center portal is sent
to the employees who are required to confirm assets on the scheduled attestation date.

What to do next

View open asset attestations in the Hardware Asset Workspace.
Create an attestation for a hardware asset
Validate a particular serialized hardware asset by creating an attestation for that asset.

Before you begin

Role required: asset or inventory_admin

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset Estate.
2. Select the Hardware assets tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1377


<!-- page 1378 -->
3. Select the asset that you want to attest.
4. Select the More Options icon (

) on the asset form.

5. Select Create attestation.
An attestation is created for the asset.
6. Optional: View the asset attestation record details.
a. Navigate to the Asset operations view.
b. From the Attestation list, select Attestations.
c. Select the attestation record.
Confirming the assigned serialized hardware assets
As an employee, acknowledge whether you have the serialized hardware that's assigned to you
either through the Now Mobile app or on the Employee Center portal.
Confirm the assigned assets using the Now Mobile app
As an employee, acknowledge or deny the ownership of the serialized hardware assets assigned
to you using the Now Mobile app.

Before you begin

Role required: Log in as an employee.

Procedure
1. From your mobile device, launch the Now Mobile app.
2. On the home screen of the Now Mobile app, tap My assets from the My items list.
The list of all assets assigned to you, as well as those assets that need your confirmation, is
displayed.

Note: The Confirm asset indicator on any asset in the list indicates that you should
acknowledge whether you have that asset or not.
3. Tap the asset with the Confirm asset indicator.
The following asset details are displayed:
◦ Asset tag
◦ Serial number
◦ Display name
4. Verify the asset details and tap Confirm asset.
5. Acknowledge or deny the ownership of the asset by selecting your response in the Verify
asset dialog box.
◦ To confirm that you have the asset, tap Yes.
◦ To confirm that you don't have the asset, tap No.
To further confirm whether you have the asset or not, select your response to the question
Are you sure you don't have this asset?.
a. To proceed with your confirmation, tap Confirm.
b. To cancel your confirmation, tap Cancel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1378


<!-- page 1379 -->
Result
• The Confirm asset indicator is no longer displayed for the asset.
• The Attestation date field of the asset on the asset attestation form is updated with the actual
date on which you confirmed the asset.
• The State field of the asset attestation changes from In progress to Closed complete only
when that attestation has no other users and assets involved.
• The Status field of the asset on the asset attestation form is updated based on your
confirmation:
◦ If you selected Yes, the Status field changes from Open to Yes.
◦ If you selected No, the Status field changes from Open to No. Also, a remediation task
is created for that attestation. The administrator can work on that task and initiate an
investigation to find the asset status.
Confirm the assigned assets on the Employee Center portal
As an employee, acknowledge or deny the ownership of the serialized hardware assets assigned
to you on the Employee Center portal.

Before you begin

Role required: Log in as an employee.
To view the My Assets option on the global header navigation bar of the Employee Center portal,
the value of the enable_assets option must be set to true on the Additional options, JSON format
field of the Employee Center menu record. For more details, see Enable or disable global header
options .

Note: The My Assets option requires the Hardware Asset Management application to be
activated.

Procedure
1. View the assets that are assigned to you on the Employee Center portal.
◦ Select the Confirm assets link in the email notification that you received.
The link opens the My Assets page on the Employee Center portal.
◦ Select My Assets in the global header navigation bar of the Employee Center portal.

Note: The number displayed on the My Assets option indicates the number of assets
that you must confirm.
◦ View the list of assets from the Employee Profile.
a. Select Profile on the global header navigation bar of the Employee Center portal.
b. Select the Assets tab.
The page displays all the hardware and consumable assets assigned to you. However, you can
only confirm serialized hardware assets that are opted-in.
2. For the hardware asset that you want to confirm, select Confirm asset.
You can view the following details of the asset:
◦ Display name
◦ Asset tag

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1379


<!-- page 1380 -->
◦ Serial number
◦ Asset function

Note: Any field that's empty isn't shown on the Confirm asset page.
3. Acknowledge or deny the ownership of the asset by selecting your response to the question
Do you have this asset?.
◦ To confirm that you have the asset, select Yes.
◦ To confirm that you don't have the asset, select No.
4. Select Submit.

Result
• The Confirm asset option is no longer displayed for the asset.
• The Attestation date field of the asset on the asset attestation form is updated with the actual
date on which you confirmed the asset.
• The State field of the asset attestation changes from In progress to Closed complete only
when that attestation has no other users and assets involved.
• The Status field of the asset on the asset attestation form is updated based on your
confirmation:
◦ If you selected Yes, the Status field changes from Open to Yes.
◦ If you selected No, the Status field changes from Open to No. Also, a remediation task
is created for that attestation. The administrator can work on that task and initiate an
investigation to find the asset status.
Related topics
Employee Center
Raise issue related to your asset on the Employee Center portal
Get the issue related to your assets resolved by reporting the issue on the Employee Center
portal.

Before you begin

Role required: Log in as an employee.
To view the My Assets option on the global header navigation bar of the Employee Center portal,
the value of the enable_assets option must be set to true on the Additional options, JSON format
field of the Employee Center menu record. For more details, see Enable or disable global header
options .

Note: The My Assets option requires the Hardware Asset Management application to be
activated.

Procedure
1. View the assets that are assigned to you on the Employee Center portal.
◦ Select My Assets in the global header navigation bar of the Employee Center portal.
◦ View the list of assets from the Employee Profile.
a. Select Profile on the global header navigation bar of the Employee Center portal.
b. Select the Assets tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1380


<!-- page 1381 -->
The page displays all the hardware and consumable assets that are assigned to you.
2. For the asset for which you want to report an issue, select Raise issue.
3. On the form, fill in the fields.
Raise Issue form
Field

Description

Location

Location details of the asset.

Who is
affected?

Name of the user who is impacted by the issue with the asset. By default, this
field is automatically populated with the name of the logged-in user. However,
you can raise the issue on behalf of any other user.

Urgency

Priority to be given to the issue. By default, this field is set to 3- Low. The other
available values are:
◦ 1 - High
◦ 2 - Medium

Short
Brief information about the issue related to the asset. This field is required.
description
Preferred
Mode of communication preferred. The available methods of contact are:
methods of
◦ Email
contact
◦ Phone
◦ Self-service
◦ Walk-in
◦ Chat
◦ Virtual Agent
4. Optional: Select the Add attachments icon (

) to attach any document related to the issue.

5. Select Submit.

Result

Your request is submitted successfully.

What to do next

You can view and track the submitted requests by selecting My Requests on the global header
navigation bar of the Employee Center portal.
View attestations for a serialized hardware asset
View all the attestation records associated with a serialized hardware asset to check the status of
previous asset attestations.

Before you begin

Role required: asset or inventory_admin

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset estate.
2. Select the Hardware assets tab.
3. Select the asset for which you want to view the list of attestations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1381


<!-- page 1382 -->
4. From the contextual side bar of the asset form, select the AssetLifeCycle icon (
All the asset lifecycle events are shown.

).

5. In the Attestation card, select View records.
The list of all attestations created for that asset is shown with the following details:
◦ Attestation number
◦ Status
◦ User
◦ Attestation date
View open asset attestations in the Hardware Asset Workspace
Get the details of all asset attestations that are awaiting action from your employees in the
Hardware Asset Workspace.

Before you begin

Role required: asset or inventory_admin

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Overview tab.
In the Inventory overview section, the Open asset attestations card shows the number of
open attestations.
3. On the Open asset attestations card, select View records to view the list of attestations that
need action from your employees.

Result

The list of asset attestations with Status as Open is displayed.
Cancel an asset attestation
Cancel an asset attestation when you no longer have to validate the ownership of the serialized
assets.

Before you begin

Role required: asset or inventory_admin

About this task

An asset attestation that's in the In progress state can only be canceled.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations.
2. From the Attestation list, select Attestations.
The list of all asset attestations that are in the In progress, Closed complete, or Canceled state
is displayed.
3. Select an attestation record that's in the In progress state.
4. Select Cancel attestation.
5. In the Confirmation dialog box, select Yes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1382


<!-- page 1383 -->
Result
• The state of the asset attestation changes to Canceled.
• The status of the assets in the asset attestation that aren't confirmed by the employees'
changes from Open to Canceled.
Cancel an attestation schedule
Cancel an attestation schedule when you no longer want to create recurring asset attestations.

Before you begin

Role required: asset or inventory_admin

About this task

You can only cancel an asset attestation schedule that's in the Ready or In progress state. When
you cancel the attestation schedule, the associated asset attestations that are in the In progress
state aren't canceled. However, new asset attestations aren't created.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Asset operations.
2. From the Attestation list, select Schedules.
The list of all attestation schedules that are in the Ready, In progress, Closed complete, or
Canceled state is displayed.
3. Select an attestation schedule record that's in the Ready or In progress state.
4. Select Cancel schedule.
5. In the Confirmation dialog box, select Yes.

Result

The state of the attestation schedule changes to Canceled.
View open remediation tasks for asset attestations in the Hardware Asset Workspace
Get the details of all the remediation tasks for asset attestations that are awaiting your action in
the Hardware Asset Workspace.

Before you begin

Role required: asset or inventory_admin

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace > Inventory.
2. Select the Overview tab.
In the Inventory overview section, the Open asset remediation tasks card shows the number
of open remediation tasks for asset attestations.
3. On the Open asset remediation tasks card, select the View records to view the list of
remediation tasks that need your action.

Result

The list of asset remediation tasks with Status as Open is displayed.

What to do next

Complete the remediation task for asset attestation in the Hardware Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1383


<!-- page 1384 -->
Complete the remediation task for asset attestation in the Hardware Asset Workspace
As an asset manager or inventory administrator, complete the open remediation task that was
created when your employee denied ownership of the assigned serialized hardware asset.

Before you begin

Role required: asset or inventory_admin

Procedure
1. View the list of asset attestations.
UI option

Action

Inventory view

a. Navigate to Workspaces > Hardware As­
set Workspace > Inventory.
b. Select the Asset attestations tab.

Asset operations view

a. Navigate to Workspaces > Hardware As­
set Workspace > Asset operations.
b. From the Attestation list, select the Attesta­
tions.

2. Select the asset attestation record for which you want to complete the open asset remediation
task.
3. Select the Remediation tasks tab.
4. Select the remediation task that's in the Open state.
5. Optional: In the Work notes field of the Asset Task Details form, provide comments related to
the asset remediation task.
6. Select Close Task.

Result
• The State of the asset changes from In use to Missing.
• The Assigned to field on the asset record is empty.

Acknowledge receipt of assets on the Employee Center portal
After receiving hardware or consumable assets that were in transit and reserved for you, confirm
their receipt on the Employee Center portal.

Before you begin

Role required: Log in as an employee.
To view the My Assets option on the global header navigation bar of the Employee Center portal,
the value of the enable_assets option must be set to true on the Additional options, JSON format
field of the Employee Center menu record. For more details, see Enable or disable global header
options .

Note: The My Assets option requires the Hardware Asset Management application to be
activated.

About this task

When an asset reserved for you is in transit, you will receive an email notification with a link to the
Employee Center Portal, where you can acknowledge its receipt. You can receive an asset even if
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1384


<!-- page 1385 -->
the asset is excluded from Hardware Asset Management workflows or if the associated resource
category isn't opted in.

Procedure
1. View the assets that are reserved for you on the Employee Center portal.
◦ Select the Receive assets link in the email notification that you received.
The link opens the My Assets page on the Employee Center portal.
◦ View assets using any of the options available in the global header navigation bar of the
Employee Center portal.
UI options on the global header navigation bar
UI
option

Action

My
Select My Assets in the global header navigation bar of the Employee Center
Assets portal.

Note: The number displayed on the My Assets option represents the total
count of assets that must be attested and received.
Profile

a. Select Profile on the global header navigation bar of the Employee Center
portal.
b. Select the Assets tab.

The page displays all the hardware and consumable assets that are assigned to you, in transit,
and reserved for you. You can acknowledge the receipt of hardware and consumable assets
that are in transit.
2. Acknowledge after you receive the asset.
Asset

Action

a. For the hardware asset that you want to re­
ceive, select Receive asset.
b. In the Receive asset dialog box, follow any
of these steps:
▪ If the Asset tag and Serial number fields
have values, verify them and then select
Submit.
Hardware

▪ If either the Asset tag or Serial number
field is empty, enter the value and then
select Submit.

Note: You can only enter values
in the empty Asset tag or Serial
number fields if the value of the

sn_hamp.enable_asset_tag_serial_numbe
system property is set to true. This
system property can be updated
with the admin role.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1385


<!-- page 1386 -->
Asset

Action

Result:
◦ Asset is received successfully.
◦ Status of the asset changes
from In transit to In use, and
the asset is assigned to you.
◦ The Receive asset option is
no longer available for that as­
set.
◦ Any receive task associated
with that asset is automatically
closed.

Note: If the details of the asset that
you received don't match the informa­
tion shown in the Receive Asset dialog
box, you can raise an issue by selecting
the Raise issue option. For more details,
see Raise issue related to your asset on
the Employee Center portal.
a. For the consumable asset that you want to
receive, select Receive asset.
b. In the Receive asset dialog box, enter the
quantity of consumables that you received
in the Quantity field.

Note: By default, this field displays
the consumable quantity that you re­
quested. You can enter a value that is
lesser than or equal to the requested
quantity, but it must be a positive num­
ber and not zero.
c. Select Submit.
Consumables

Result:
◦ If you received the full request­
ed quantity of consumables,
then the Status of the asset
changes from In transit to Con­
sumed, and the asset is as­
signed to you.
◦ If you received only a partial
quantity of the requested
consumables, the following
changes occur:
▪ The status of the assets that
you received changes from
In transit to Consumed, and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1386


<!-- page 1387 -->
Asset

Action

the assets are assigned to
you.
▪ The status of the assets that
you didn't receive remains
In transit.

Note: Consumed and in
transit consumables are
displayed separately.

Update associated Decision tables for HAM flows
Update associated Decision tables for Hardware Asset Management (HAM) flows to trigger a new
or customized HAM flow.

Before you begin

Role required: admin, decision_table_admin

Procedure
1. Navigate to All > System Definition > Decision Tables.
2. Open a decision table that you want to update.
3. On the flow page, select the Add icon (

) in the Decision table section.

4. Select Add condition column.
5. In the NEW CONDITION COLUMN dialog box, fill in the conditions according to the conditions
that you want to trigger the flow.
6. Select Done.
A new row is created and the condition shows up in the Decision table section.
7. In the Flow column, select the flow that you have created.
8. Select Save.
9. Navigate to the Decisions (sys_decision_question) table and search the updated Decision
table that you updated.
10. Update the Order field with a value less than 100.

Hardware Asset Management reference
Reference topics provide additional information about the lists and forms that you use to
configure and administer Hardware Asset Management.

Domain separation and Hardware Asset Management
Domain separation is supported in Hardware Asset Management. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1387


<!-- page 1388 -->
Support level: Enhanced
• Includes all aspects of Basic and Standard levels of support.
• Data-driven process enables service provider customers to modify business logic that
is based on defined use cases. These configurations are UI-based and fail-safe so that
configurations by one customer cannot affect another.
• Tenants of the instance must be able to configure minimum viable product (MVP) business
logic and data parameters for themselves. This logic and parameters would be expected for
the application's normal function.
Sample use case: Tenant-customers of a shared environment must be able to modify the impact,
urgency, or priority matrix to set priority within their domain.
For more information on support levels, see Application support for domain separation

.

Domain separation overview
Domain separation support in the product enables service providers to offer managed services
for software and hardware asset management to their customers. This feature also caters to large
organizations who manage their subsidiaries as independent domains.

How domain separation works in Hardware Asset Management
In HAM, domain separation occurs in two stages: data separation and process separation.
There are no system properties specific to Hardware Asset Management that can be used
to enable or disable the separation. However, the Domain Asset Process Settings table
(alm_domain_asset_process_setting) stores configurations for asset processes, including the
normalization of hardware models. By default, normalization is performed only for models within
the TOP/Default domain. However, if you have the asset or domain_admin role, you can enable
normalization for hardware models in any domain. To enable normalization for a specific domain,
follow these steps:
1. Navigate to the Domain Asset Process Settings table (alm_domain_asset_process_setting).
2. Locate the specific domain for which you want to enable normalization of models.
3. Set the Run asset process field to true.

Note:
The Recommended practice
configuration record.

is to avoid customizing the base system domain

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1388


<!-- page 1389 -->
Mutli-Tenant support for IT Asset Management

Required plugins
• Service Catalog – Domain Separation (com.glideapp.servicecatalog.domain_separation)
• Domain separation extension (com.glide.domain.msp_extensions.installer)
• Performance Analytics – Domain Support (com.snc.pa.domain_support)
• HAMP (store app)
To learn more, see Domain separation explained
Importance of Default domain .

, Contains queries and domain access

, and

Related topics
Domain separation for service providers

Quick start tests for Hardware Asset Management
Validate that Hardware Asset Management (HAM) still works after you make any configuration
change such as apply an upgrade or develop an application. Copy and customize these quick
start tests to pass when using your instance-specific data.
Hardware Asset Management quick start tests are available when you install the Hardware Asset
Management (HAM) application from the ServiceNow Store.
Hardware Asset Management test suite
Test

Description

Release version

HAM - Hardware
Normalization

Validates the various
normalization status values
based on the normalized
Manufacturer, Product, and
Model.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1389


<!-- page 1390 -->
Hardware Asset Management test suite (continued)
Test

Description

Release version

HAM - Hardware Asset
Disposal work flow

Validates asset disposal work
flow.

Paris

HAM - Automating Asset
deploy workflow

Validates asset deployment
work flow.

Paris

HAM - Automating Asset Swap Validates Asset Exchange/
workflow
Swap work flow.

Paris

Note: Requires demo
data.
HAM - Standard Hardware
Asset Request Flow

Validates the Standard
Hardware Asset Request
flow, which is a part of the
Hardware Asset Management
application.

Paris

HAM - Hardware Asset
Refresh flow

Validates asset refresh
workflow.

Quebec

HAM - Loaner Asset Allocation Validates loaner asset
Flow
workflow.

Quebec

HAM - Lease Contract Asset
Expiration

Validates leased contract
asset expiration end to end
workflow, performing return or
extend of the assets covered
in the lease contract.

Quebec

HAM - Asset RMA Flow

Validates the asset Return
Rome
Merchandise Authorisation
(RMA) workflow with Inventory
User.

HAM - Asset RMA Flow (SP)

Validates the asset Return
Merchandise Authorisation
(RMA) workflow from Service
Portal.

Rome

HAM - Loaner Asset Request
Flow

Validates the Loaner asset
allocation workflow with
Inventory Admin user.

Rome

HAM - Contract Renewal Flow

Validates the Contract
Renewal flow with Contract
Manager user.

Tokyo

Related topics
Quick start tests

Hardware Asset Workspace roles
Details of the out-of-the-box roles that can access Hardware Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1390


<!-- page 1391 -->
Roles to access Hardware Asset Workspace
Role

Access details

inventory_admin

Access to create, edit, manage, and delete stockrooms.

procurement_user Access to procurement tasks such as creating purchase orders and
viewing transfer orders.
inventory_user

Access to stock information.

model_manger

Access to create, modify, and delete records of the base Model
[cmdb_model] table.

contract_manager Access to create, edit, and delete contracts through the Contract
Management application.
itil

Access to open, update, and close the following items:
• Incidents
• Problems
• Changes
• Configuration management items

sam_admin

Access to work on any functionality that the Software Asset Management
application offers.

asset

Access to create, edit, manage, and delete the hardware and consumable
asset records.

catalog_manager

Access to view and assign catalog editors to their categories. Also create,
modify, and publish items within those categories.

ham_admin

This role is available only when the Hardware Asset Management (HAM) is
installed and provides access to all HAM features.

sam_user

This role is available only when the Hardware Asset Management
application is installed

catalog_admin

Access to create, edit, and manage the Service Catalog.

sam

Access to Software Asset Management features included with Asset
Management. Different roles such as sam_admin, sam_user, and
sam_developer are required to use the Software Asset Management
application.

Stockroom types
Stockroom types are categories of stockrooms.
The stockroom type has two significant characteristics.
• Priority: Order of stockrooms the parts should be sourced from. For example, if a personal
stockroom (priority 2) contains the required part, the personal stockroom receives priority over
the Central Stockroom (priority 7) because the part in the personal stockroom doesn’t require
delivery.
• Shipment Required: Informs the system if a transfer order must be created when the part
is sourced from a stockroom of the given type. For example, a part in a personal stockroom
doesn’t require shipment, so no transfer order is needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1391


<!-- page 1392 -->
Stockroom types defined in the base system
Value

Name

Priority

Shipment
Description
Required

on_site

On Site

1

False

Stockroom at
the customer
site.

Close to the users and
doesn’t require shipping.

field_agent

Field Agent 2

False

Virtual,
personal
stockroom
linked with a
field service
agent (FSA)
directly, used
for delivery.

Used to indicate to the
system that the part has
been delivered and is
with the FSA.

fsl

FSL

4

True

Forward
Shipping
Location.

Small stockrooms where
the parts can typically
be shipped via overnight
delivery.

pudo

PUDO

5

True

Pick Up/Drop
out location.

This type is sometimes
called a by-box. Can be
a postal box that can
receive new and returned
parts that are often near
major customer sites.

stockroom

Warehouse 6

True

A regional stockroom.

central_stockroom Central
7
Warehouse

True

A central stockroom,
usually a large facility
from which most parts
are shipped.

Comment

Installed with Hardware Asset Management
Several types of components are installed with activation of the sn_hamp plugin, including
tables, user roles, and scheduled jobs.

Roles installed
Role title

ham_admin

Description

Contains roles

Grants full access to the respective features
of the Hardware Asset Management
application including the ability to Opt-in
for the Content Service. This role is used for
Hardware Asset Management.

• inventory_admin: Access
to create, edit, manage,
and delete stockrooms.
• catalog_manager:
Access to view and
assign catalog editors
to their categories. Also,
create, modify, and
publish items within
those categories.
• report_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1392


<!-- page 1393 -->
Role title

Description

Contains roles

• sn_hamp.ham_user:
Access to manage
hardware assets and
reports.
• asset: Access to create,
edit, manage, and
delete the hardware
and consumable asset
records.
• procurement_admin
sn_hamp.ham_user Manage hardware assets and reports. This
role enables users to view, create, update,
and delete hardware asset records, and to
generate and view asset-related reports.
This role is tailored for everyday asset
management tasks.

asset

Scheduled jobs installed
Scheduled job

HAM - Content Upload

Description

Publishes the normalized hardware models.

HAM - Daily Job

Calculates number of hardware and consumable models for
each model category, active life cycle phase for models, and
sets client schedule pull-time.

HAM - Hardware Lifecycles

Generates hardware life cycles.

HAM - Hardware
Normalization

Normalizes hardware and consumables models.

HAM - Loaner Asset Order
Allocations

Allocates assets to Loaner Asset Orders.

HAM - Populate Licensing
Data

Populates licensing details.

HAMP - Content File
Manager

Job is triggered from the Manage Hardware Library.

Purge Asset Audits More
Than Year Old or with More
Than 10k Assets

Removes old asset audit records or asset audits with more that
10K assets.

[PA HAM] Daily collection
job

Daily job that collects scores for different parameters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1393


<!-- page 1394 -->
Tables installed
Table

Description

Bundle

Details of bundle assets.

[alm_bundle]
Asset Audits

Details of the asset audits.

[sn_hamp_asset_audit]
Hardware Asset Reclamation Line

Details of the Hardware Asset Reclamation Lines
created for each reclaimed asset.

[sn_hamp_asset_reclaim_line]
Hardware Asset Reclamation Task

Details of the tasks created for each Hardware
Asset Reclamation Line.

[sn_hamp_asset_reclaim_task]
Asset RMA Task

List of RMA asset task records.

[sn_hamp_asset_rma_task]
Hardware Asset Configuration

Configuration records of Hardware Asset
Management.

[sn_hamp_configuration]
HAM Content Audit

Details of content values that changed.

[sn_hamp_content_audit]
Contract Renewal Request
[sn_contract_renewal_request]

Stores all the contract renewal requests through the
contract renewal workflow.

Contract Renewal Request Line
[sn_contract_renewal_request_line]

Stores all the contract renewal request lines
through the contract renewal workflow.

Contract Renewal Task
[sn_contract_renewal_task]

Stores all the contract renewal request tasks
through the contract renewal workflow.

Custom Device Type

List of custom hardware device type records.

[sn_hamp_custom_hw_device_type]
Custom Hardware Manufacturer

List of custom hardware device manufacturer
records.

[sn_hamp_custom_hw_manufacturer]
Custom Hardware Product

List of custom hardware product records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1394


<!-- page 1395 -->
Table

Description

[sn_hamp_custom_hw_product]
Custom Hardware Model Library

List of custom hardware model library records.

[sn_hamp_custom_hw_prod_model]
Hardware Disposal Order

List of Hardware Disposal Order records.

[sn_hamp_hardware_disposal]
Hardware Disposal Tasks

Details of the tasks associated with the Hardware
Disposal Order flow.

[sn_hamp_hw_asset_disposal_task]
Device Type
[sn_hamp_hw_device_type]

Hardware Manufacturer

List of hardware device type records.

Important: You mustn't modify the records
of this table.
List of hardware device manufacturer records.

[sn_hamp_hw_manufacturer]
Hardware Normalization Map

Product details such as hardware product and
hardware product model IDs.

[sn_hamp_hw_normalization_map]
Hardware Product

Product details such as name of the product and
type of device.

[sn_hamp_hw_product]
Hardware Model Library

Product details such as product and model number.

[sn_hamp_hw_product_model]
Hardware Asset Refresh Line
[sn_hamp_hw_refresh_line]
Refresh Line Tasks

Hardware Asset Refresh Line details such as
stage, requested item, replacement model, and
replacement asset.
Details of Refresh Line tasks associated with the
Hardware Asset Refresh Lines.

[sn_hamp_hw_refresh_line_task]
Import Staging

Template for importing assets and model records.

[sn_hamp_import_template]
Hardware Lifecycle Definition

Life cycle phase of a hardware or consumable
model and the associated dates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1395


<!-- page 1396 -->
Table

Description

[sn_hamp_lifecycle_definition]
Loaner Asset Order

List of Loaner Asset Order records.

[sn_hamp_loaner_asset_order]
Loaner Asset Task

List of Loaner Asset Order task records.

[sn_hamp_loaner_asset_task]
Audits to Scanned Assets

List of audit records of scanned assets.

[sn_hamp_m2m_audit_asset]
Planned Assets

Details of the assets included in Hardware Asset
Disposal Orders.

[sn_hamp_m2m_hw_asset_disposal]
Replacement Models

List of replacement records for Zero Touch Refresh
models.

[sn_hamp_m2m_ztr_replacement_model]
Manage Hardware Library

List of Hardware Library content import records.

[sn_hamp_manage_hw_library]
Model Category Normalization Summary

Summary of normalization of model category.

[sn_hamp_model_ctg_norm_summary]
HAM Resource Category

Subscription unit ratio and other licensing-related
details of each Resource category.

[sn_hamp_resource_category]
RMA Request

List of RMA request records.

[sn_hamp_rma_request]
RMA Request Line

List of RMA request line records of RAM requests.

[sn_hamp_rma_request_line]
HAM Success Activity

List of HAM Success Activity records.

[sn_hamp_success_activity]
HAM Success Goal

List of HAM Success Goal records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1396


<!-- page 1397 -->
Table

Description

[sn_hamp_success_goal]
Zero Touch Refresh Model

Details of refresh model records for the Zero Touch
Refresh flow.

[sn_hamp_ztr_refresh_model]
Zero Touch Refresh Request

List of Zero Touch Refresh request records.

[sn_hamp_ztr_request]
Zero Touch Refresh Task

Details of tasks associated with the Zero Touch
Refresh flow.

[sn_hamp_ztr_task]
Stores the RFID information of assets.

RFID asset
[rfid_asset]

Asset record fields
Fields on the Hardware Asset Details form help you create hardware, software, consumable,
bundle, pallet, mobile, and facility assets.

Field

Description

Display name Name of the asset as it appears in the record lists. This field is automatically set
when you create an asset, based on the Asset Tag and Model fields.
Model
category

Model grouping of the asset. Based on the model category you select, the asset
is linked to a configuration item.

Model

Specific product model of the asset.

Configuration CI is automatically created when you create an asset. Point to the reference icon
Item
to view the configuration item details inherited from the asset record. The CI
value is populated as follows:
• By default, the CI value is based on the Model field.
• If the model category of the asset is associated with a CI and the Serial
number field isn't empty, then the CI value is based on the Serial number and
Model field values.
• If an asset is created in the On Order state, then the CI value is based on the
Model field.
Quantity

The number of items this asset represents. An asset has a quantity of one unless
one or more of these points are true.
• If the asset is a consumable, the quantity is unrestricted because
consumables are tracked in groups.
• If the asset is pre-allocated, the quantity is unrestricted when the Model
category and Model values are defined and Substate is set to Pre-allocated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1397


<!-- page 1398 -->
Field

Description

General
All the fields aren't available for each type of asset.
Asset tag

Alphanumeric information assigned by your organization to help track the asset.

State

Current state of the asset, such as On order or In use.

Assigned to

The person using or primarily responsible for this item. This field appears when
the State is In Use.

Note: When the State field value is updated from In Use to On Order,

In Stock, or In Transit, this field value is automatically cleared. For more
information about the business rules for updating the Assigned to field,
see the https://support.servicenow.com/nav_to.do?uri=%2Fkb%3Fid
%3Dkb_article_view%26sysparm_article%3DKB0719392
article in the Now
SupportKnowledge Base.
Stockroom

Name of the stockroom. This field appears only when the state of the asset is In
stock or Build.

Aisle and
space

Aisle and space details of the asset within the stockroom. This field appears only
when the state of the asset is In stock or Build.

Note: This field would appear only when the Hardware Asset
Management Professional plugin (com.sn_hamp) is installed.
Managed by

The person who maintains the asset. This field value can be different from the
person in the Owned by field.

Owned by

The person who has financial ownership of the asset. This field value can be
different from the person in the Managed by field.

Parent

Parent asset of the asset. For example, a monitor or peripheral can have a
workstation as their parent asset. When a parent link is defined, the fields
related to the assignment and state of the child assets is set to read-only and
are populated based on the parent assignment and state fields. For more
information, see Bundled models .

Asset
function

Function of the asset.
The available values are as follows:
• Primary
• Secondary
• Shared
• Loaner
• Asset Bundle

Class

Asset group, for example, base, hardware, license, or consumable.

Comments

Information about the asset that would be helpful for others to know.

Serial
number

Serial number of this asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1398


<!-- page 1399 -->
Field

Description

Substate

Current substate of the asset. The available substate settings depend on the
state selected. For example, the Retired state contains the Substate options
Disposed, Sold, Donated, and Vendor credit.

Location

Current physical location of the asset.

Note: You can set the location to a place, floor, building, or campus. When
you set the location to any of the options except the campus, the Location
hierarchy section is shown on the asset form. The location hierarchy shows
the hierarchical relationship between the specified location and its parent
locations.
If you meet the following criteria, the asset form displays an interactive map
that shows the real-time location of the asset:
• The location is set to a specific place.
• Access indoor maps through the Indoor Mapping for Assets
(com.sn_ima) application. This application gets installed on your
ServiceNow instance along with Hardware Asset Management. You can
also install this application explicitly from the ServiceNow Store.
• The sn_itam_common.sn_enable_indoormap_for_assets
system parameter is set to true on your ServiceNow instance.
The Location map doesn’t appear by default. To view the map, select the
Location map ( ) icon on the contextual sidebar of the asset record.
Location map doesn’t appear for excluded assets.
Department

Department to which the asset belongs.

Company

Company or organization to which this asset belongs.

Assigned

The date on which the asset was assigned to a user.

Installed

The date on which the asset was installed.

Location Hierarchy
The Location Hierarchy section is available only for hardware, consumables,bundles, and pallet
assets. This section appears only under the following conditions:
• When the sn_itam_common.sn_enable_indoormap_for_assets system
parameter is set to true on your ServiceNow instance
• When you select any location except the campus
Floor

Floor where the place specified in the Location field is located.

Note: This field appears only when you select a place in the Location field
and is populated automatically based on the location.
Building/
Structure

Building to which the floor belongs.

Note: This field appears only when you select a place or floor in the
Location field and is populated automatically based on the location.

Campus

Campus where the building is located.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1399


<!-- page 1400 -->
Field

Description

Note: This field appears only when you select a place, floor, or building in
the Location field and is populated automatically based on the location.
Financial
The Financial section is available only for hardware, software entitlement, and facility assets.
Request line

Requested item to which the asset is linked.

Invoice
number

Invoice under which the asset was billed.

Cost

The price at which the asset was purchased.

Vendor

Vendor from which the asset was purchased. The assets that are automatically
created from purchase orders in Procurement, the default value of the Vendor
field is the vendor specified on the purchase order.

Opened

The date on which the requested item record was opened. The system
automatically populates the field when a request line is specified.

GL account

General ledger account number with which the asset is associated.

Cost center

Group financially responsible for the asset.

Acquisition
method

The way of acquiring the asset. Base system choices are Purchase, Lease,
Rental, Bring Your Own Asset and Loan.
The assets that are automatically created from purchase orders in Procurement,
the default value is Purchase

Expenditure
type

The type of expenditure.
• Capex: Capital expenditure is a one-time expenditure, where the value is
realized over the years. For example, a photocopier.
• Opex: Operational expenditure is an on-going expenditure. For example,
toners for the photocopier.

Eligible for
refresh
Asset TCO

The total cost of ownership of the asset, where the total cost includes initial
capital cost and operation cost.
For more information about Asset TCO, see Asset Total Cost of Ownership for
Hardware Asset Management.

TCO
benchmark
cost

Predefined benchmark cost of the asset model.

Note: This field is referenced from the Hardware model details form. For
more information, see Hardware model details.

TCO
benchmark
threshold

The threshold value of your asset model cost identifying that the asset is
reaching the TCO benchmark cost value. The benchmark threshold is set to 75%
of the TCO benchmark cost by default.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1400


<!-- page 1401 -->
Field

Description

For example, if you set the TCO benchmark cost of an asset model as $1000, the
TCO benchmark threshold is set to $750 automatically.
Use the system property

sn_itam_common.asset_tco_benchmark_threshold_percentage
to update the benchmark threshold value. This field is referenced from the
Hardware model details form. For more information, see Hardware model details.
TCO
benchmark
status

Status of the asset TCO.
• Reached: If the Asset TCO value is equal to or more than the TCO benchmark
cost value, the TCO benchmark status shows as Reached.
• Approaching: If the Asset TCO value is less than the TCO benchmark cost
and more than the TCO benchmark threshold value, the TCO benchmark
status shows as Approaching.
• Not reached: If the Asset TCO value is less than the TCO benchmark
threshold value, the TCO benchmark status shows as Approaching.

Disposal
Disposal
order
number

A unique number assigned to the asset disposal order.

Note: This field appears only if you’ve installed Hardware Asset
Management from ServiceNow Store.

Disposal
vendor

The vendor assigned to carry out the asset disposal order.

Note: This field appears only if you’ve installed Hardware Asset
Management from ServiceNow Store.
Vendor
disposal
order ID

The order number assigned by the vendor to carry out the asset disposal order.

Note: This field appears only if you’ve installed Hardware Asset
Management from ServiceNow Store.

Disposal
date

The date when the asset disposal order process is completed.

Note: This field appears only if you’ve installed Hardware Asset
Management from ServiceNow Store.
Disposal
reason

Text explaining why the asset is being retired.

Beneficiary

Organization that receives the asset when it’s retired.

Resale price

Value of the asset when it’s retired. For example, if the asset is donated, the
value is used when reporting taxes.

Scheduled
retirement

Scheduled date on which the asset is retired.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1401


<!-- page 1402 -->
Field

Description

Retired date

Actual date on which the asset was retired.

Depreciation
The Depreciation section is available only for hardware and facility assets.
Depreciation

Depreciation method that is applied. Base system choices are Declining
Balance and Straight Line. The depreciation value is defaulted from the
associated Model.

Depreciation
effective
date

The date on which the specified depreciation method begins.

Salvage
value

Estimated value of an asset at the end of its useful life. This value must be less
than or equal to the Cost of the asset.

Residual
date

Date on which the residual value was calculated.

Residual
value

Residual value of the asset.

Depreciated
amount

Amount the asset has depreciated.

Contracts
The Contract section is available only for hardware, software entitlement, or facility assets.
Lease
contract

Name of the lease contract that applies to the asset.

Warranty
expiration

Expiration date of the asset warranty.

Lease
expiration
date

The date on which the contract gets expired.

Note: This field would appear only when Hardware Asset Management
(sn_hamp) is installed.

Lease term
(months)

The period in months the lease contract is active for.

Note: This field would appear only when Hardware Asset Management
(sn_hamp) is installed.

Monthly
lease
payment

Amount that you pay monthly for the contract.

Note: This field would appear only when Hardware Asset Management
(sn_hamp) is installed.

Support
group

The group managing the contract covering the asset.

Like-kind
exchange

A similar asset that you want to return to the contract vendor instead of the asset
that you brought in lease.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1402


<!-- page 1403 -->
Field

Description

Note: This field would appear only when Hardware Asset Management
(sn_hamp) is installed.
Supported
by

The person managing the contract covering the asset.

Activities
Work notes

Work notes are updated for the following cases:
• Updates to Assigned To, Managed To State, Substate, and Reserved fields of
asset. The columns for these fields are audited by default and any updates is
recorded in the work notes.
• Work notes for hardware and software assets are updated when the asset is
received by a purchase order and transfer order. These work notes help in
tracking the life cycle of the asset.

Audit
Audit
number

Audit number of the asset.

Audit type

Type of audit that was carried out on the asset.

Last audit
date

The date on which the last audit was done.

Last audit
state

State of the last audit.

Audited by

The person who performed the last audit.

Attestation
Attestation
number

Unique identifier of the asset attestation request.

Attested by

Employee who confirmed the asset.

Last
attestation
date

Date on which the asset was last attested.

Last
attestation
state

Last attestation status of the asset.
This field can have any of the following values:
• Yes- Employee confirmed the ownership of the asset.
• No- Employee denied the ownership of the asset
• Canceled- The asset attestation is canceled before the employee confirmed
the asset.
• Closed incomplete- When an attestation is created for the asset which
already has an attestation yet to be confirmed by the employee, the existing
attestation is closed incomplete.

Mobile
The Mobile section is available only for the Mobile Device model category.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1403


<!-- page 1404 -->
Field

Description

Note: This section of the form and the relevant data model appear only when Hardware
Asset Management (sn_hamp) is installed.
Carrier

Name of the carrier company.

Ownership

Ownership of the asset. The available values are:
• Employee
• Corporate

IMEI

Unique number for tracking the mobile device.

PreThe user who conducted the last audit.
enrollment ID
MAC
Address

MAC address of the mobile device.

Important: From the Hardware Asset Management 12.0.0 release
onward, the value in this field is populated based on the MAC address
[mac_addr] field in the Asset [alm_asset] table instead of the MAC address
[mac_address] field in the Hardware [alm_hardware] table.
Also, the MAC address [mac_address] field in the Hardware [alm_hardware]
table is deprecated in the Hardware Asset Management 12.0.0 release. The
MAC address [mac_addr] field in the Asset [alm_asset] table is available
only when the Hardware Asset Management (sn_hamp) store app is
installed.

Enrollment ID User conducting the current audit.
Phone
number

The phone number associated with the mobile device.

Enrollment
name

Name of the mobile device enrollment.

Platform

Platform of the mobile device. The available options are:
• Android
• iOS
• Windows
• ChromeOS
• Other

Enrollment
state

Current enrollment state of the device. The available options are:
• Enrolled
• Unenrolled
• Expired
• Pending enrollment
• Pending unenrollment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1404


<!-- page 1405 -->
Field

Description

Purchased

The date on which the mobile device was purchased.

Enrollment
date

Initial enrollment date.

Upgrade
eligible date

The date on which the mobile device is eligible for an upgrade.

Last enrolled

Date of last enrollment.

Service
contract

Contract number associated with the mobile device.

Device
activated

Activation status of the mobile device. The available options are:
• Yes- The mobile device is activated.
• No- The mobile device isn't activated.

DaaS

Note: This section appears only when Hardware Asset Management for DaaS application
(com.sn_daas_ham) is installed.
DaaS asset

Option for selecting the asset as a DaaS asset.

DaaS
account

The account to which the DaaS asset is associated to.

Related links
Calculate
Depreciation

Select to calculate the depreciation amount and residual value.

Delete
Assets Only

Select to delete the assets and not the associated CI.

Related lists
Assets

Assets that 's related to the asset you created.

Expense
lines

Expense line associated with the asset.

RMA

Return Merchandise Authorization associated with the asset.

Consumable model fields
Consumable Models form and related list field descriptions.

Consumables section
Field

Description

Display name Name of the model that is dependant on name of the asset and the
manufacturer.
Model
category

Model category of the asset. The type of category depends if the asset is linked
to a CI.

State

Current state of the asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1405


<!-- page 1406 -->
Consumables section (continued)
Field

Description

Substate

Current substate of the asset.

Stockroom

Name of the stockroom where the asset is located if the asset is in stock.

Quantity

Number of assets.

Vendor Catalog Item related list
Field

Description

Name

Display name of the vendor catalog item.

Vendor

Name of the product vendor.

Product Model

Product model associated with the vendor catalog item.

Out of Stock

Option that indicates if the product is out of stock.

Application

Application that contains the product record.

Product ID

Manufacturer product ID.

List Price

List price of the product before any discounts are applied.

Vendor Price

Vendor price of the product.

Rank tier

Vendor rank tier.

Short Description

Description of the product.

General
Product Catalog Item

Product catalog item that was created when the item was published.

UPC

Universal Product Code (UPC) of the product.

Description

Description of the product.

Picture

Picture of the product.

Active

Option that indicates if the product is active or not.

Information
Specifications

Product specifications that come from the vendor.

Features

Product features that come from the vendor.

Consumable Model Lifecycles related list
Field

Description

Model

Name of the model.

Lifecycle type

Type of lifecycle.
• Internal
• Publisher

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1406


<!-- page 1407 -->
Field

Description

Lifecycle phase

Phase of the lifecycle.
• General Availability
• End of Sale
• End of Support
• End of Extended support
• End of Life

Source

Source of the lifecyle of the model.

Description

Description of the lifecycle.

Phase start date

Date the lifecycle phase starts.

Phase end date

Date the lifecycle phase ends.

Risk

Risk associated with the lifecycle.

Active

Option that indicates the lifecycle of the model is active.

Hardware model details
Find the hardware model details and related list field descriptions.

Details
Field

Description

Display name

Display name of the model. The display name is generated from the
Manufacturer and Name field.

Manufacturer

Name of the model manufacturer.

Short
description

Description of the model.

Model
categories

Model categories that the model can be associated with. Model categories are
used to create configuration items (CIs) and assets.

Asset tracking Asset tracking for the model.
strategy
Useful life
(months)

Number of months that the hardware model can be used for.

Asset tracking Unit that is used to measure the asset.
unit
Acquisition
method

Method the assets or CIs were procured.

Cost

Cost of the an individual model.

Depreciation

Depreciation scheme of the model.

Salvage value An estimate of the residual value of the model.
Name

Name of the model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1407


<!-- page 1408 -->
Field

Description

Model
number

The number that identifies the model. This number can be defined internally or
by the manufacturer of the model.

Barcode

Bar code that identifies the model.

Owner

The person responsible for the model.

Status

Status of the hardware model, which is being inherited from the product model.
This field is hidden when you’ve opted in for the Common Service Data Model
(CSDM).

Life Cycle
Stage

Stage in the overall life cycle of hardware assets and CIs as related to their
products.
This field appears only when you’ve opted in for the Common Service Data
Model (CSDM).

Life Cycle
Stage Status

Status in the overall life cycle of hardware assets and CIs as related to their
products.
This field appears only when you’ve opted in for Common Service Data Model
(CSDM).

Expenditure
type

Type of expenditure.

Certified

Option that indicates if a model is certified for use.

Calculated
lifecycle
template

Applied template to calculate life cycle dates.

Calculated
lifecycle start
date

Date to apply the template and derive the final dates for each phase defined in
the template.

TCO
benchmark
cost

Benchmark cost of the asset model.

TCO
benchmark
threshold

The threshold value of your asset model cost identifying that the asset is
reaching the TCO benchmark cost value.
The benchmark threshold is set to 75% of the TCO benchmark cost by default.
For example, if you set the TCO benchmark cost of an asset model as $1000, the
TCO benchmark threshold is set to $750 automatically.
Use the system property

sn_itam_common.asset_tco_benchmark_threshold_percentage
to update the threshold percentage.
Hazardous
materials

Option to indicate if your asset model contains hazardous materials.

Comments

Comments about the model.

Normalization

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1408


<!-- page 1409 -->
Field

Description

Normalized
manufacturer

Normalized name of the model manufacturer.

Product

Normalized name of the product.

Model

Normalized name of the model.

Normalization Normalization status of the model.
status
Device type

Type of device.

Exclude
from content
service

Option indicating whether the normalization information is excluded from the
content service.

Dimensions
Height

Height of the model populated from the content service.

Width

Width of the model populated from the content service.

Depth

Depth of the model populated from the content service.

Electrical
Electrical specifications of the model (such as voltages and frequencies)
Specifications populated from the content service.
Weight

Weight of the model populated from the content service.

Environmental Social Governance (ESG)
Energy star

Energy Star certified status of the model populated from content service.

EPEAT
compliant

Electronic Product Environmental Assessment (EPEAT) compliant status of the
model populated from the content service.

EPEAT level

EPEAT level (Gold, Silver, or Bronze) of the model populated from the content
service.

Additional Details
Manufacturer
warranty

Manufacturer warranty terms of the model populated from content service.

Features

Product overview, specifications, or attributes of the model populated by the
content service.

Information
Power (watts)

Power requirement of the model in watts.

Height (U)

Height of the model in rack units.

Flow Rate
(cfm)

Flow rate of the model in cubic feet per minute.

Sound Power
(bels)

Sound power of the model in bels.

Weight (lbs)

Weight of the model in lbs.

Expected
Consumed Carbon dioxide equivalent (CO2e) over the life of the model.
lifetime CO2e
Energy use

Energy consumed by this model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1409


<!-- page 1410 -->
Field

Description

Energy Star

Requirements to be Energy Star certified by the Environmental Protection
Agency (EPA).

Product
Catalog
Catalog Item

Name of the catalog item.

Description

Description of the catalog item.

Compatibles
Field

Description

Model Name of the hardware model.
Model Name of the hardware model that is compatible with the hardware model record.

Substitutes
Field

Description

Model

Name of the hardware model.

Substitute

Name of the hardware model that can be substituted for the hardware model.

Domain

Domain of the hardware model record.

Assets
For information about the fields on the Assets tab, see Create assets.

Configuration Items
Field

Description

Name

Name of the CI. This name is often the Domain Name System (DNS) or computer
host name.

Manufacturer Name of the manufacturer.
Location

Location of the manufacturer.

Description

Description of the CI.

Class

Type of asset class.

Model Components
Field

Description

Is main component

Option for indicating if this component is the one that other
components are attached to.

Component

Model that the child component will be instantiated as when the asset
is created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1410


<!-- page 1411 -->
Field

Description

Model category of
component

Model category that the child component will be instantiated as when
the asset is created.

Component parameter Component parameter requirement.
• Mandatory
• Optional
Main component

Name of the bundle if the model is an abstract model.

Note: This field is only used if an abstract model has been
defined.

Vendor Catalog Items
Field

Description

Name

Name of the vendor catalog item.

Product ID

The item identification number assigned by
your organization.

Short Description

A brief description of the item.

Vendor Price

The price at which the item is available in the
vendor catalog. If the vendor offers a discount,
the vendor price reflects the discounted price.

Rank Tier

Displays the overall ranking for products and
services of this vendor, such as Valued Partner
or Tactical Supplier.
Rank tier expresses the opinion of your
organization of the vendor performance. It can
be used to decide if the vendor's products
should be promoted or discontinued. Users
with the vendor_manager role can edit this
field.

Hardware Model Lifecycles
Field

Description

Model

Name of the hardware model.

Lifecycle type

Type of life cycle.

Lifecycle phase

Phase of the life cycle.
• General Availability
• End of Sale
• End of Support

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1411


<!-- page 1412 -->
Field

Description

• End of Extended Support
• End of Life
Source

Source of the hardware model.

Phase start date

Start date of the life cycle phase.

Phase end date

End date of the life cycle phase.

Risk

Risk associated with the life cycle.

Active

Option that indicates if the hardware model life cycle is active.

Description

Description of the hardware model.

Hardware disposal order stages
A hardware disposal order goes through various stages in the disposal process before it’s
completed. With each stage, the task that's associated with that stage changes too.
Closing a task in the hardware disposal process completes that task and automatically creates
the next task in the process. For example, after you close the Schedule Pickup task, the state
for that task changes to Closed Complete and the next task, Asset Departure, is created. This
process continues until you close all the tasks required for disposing of the selected assets. After
you close all the tasks, the disposal order is completed.
Hardware disposal order stages
Hardware disposal stages

Task

Description

Draft

Verify Assets

Hardware disposal record is
created.

Scheduling

Schedule Pickup

Scheduling details for the
hardware asset disposal order.

Transit

Asset Departure

Verified assets are ready for
departure.

Confirmation

Vendor Confirmation

Hardware disposal order is
confirmed by the vendor.

Documentation

Disposal Documentation

Documentation for the
disposal record is attached.

Completed

None

Hardware disposal record
request is completed.

Cancelled

None

Disposal order can be
canceled only until the transit
stage.

Components installed with Hardware Model Normalization
Several types of components are installed with activation of the Hardware Model Normalization
plugin, including tables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1412


<!-- page 1413 -->
Note: To view all other components that are installed with this application, see the
Application Files table. For instructions on how to access this table, see Find components
installed with an application .

Tables installed
Table

Description

Device Type

Type of the device, such as computer, printer, or monitor.

Hardware Lifecycle
Definition

Lifecycle phase of a hardware or consumable model and the
associated dates.

Hardware Manufacturer

Name of the hardware manufacturer.

Hardware Model Library

Name of the product and model number.

Hardware Normalization
Map

Hardware product and hardware product model IDs.

Hardware Product

Name of the product and type of device, such as Apple Mac or
Lenovo Printer.

HAM Success Goal Details
Fields on the HAM Success Goal Details form help you create success goals for tracking the
success of the Hardware Asset Management application in your instance.
HAM Success Goal Details form
Field

Description

Number

A unique identifier of the success goal.

Status

Status of the success goal.
By default, the success goal is in draft status.

Title

The title for the success goal.

Category

The category the success goal belongs to.
Choose from the following options:
• Automation
• Inventory Improvement
• Loss Reduction
• Normalization
• Process Improvement
• Vendor/Contract Negotiation

Vendor

Vendor or publisher associated to the success
goal.

Goal Type

Defines the metrics of your goal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1413


<!-- page 1414 -->
HAM Success Goal Details form (continued)
Field

Description

• Savings
• Count
Goal Description

A detailed explanation of the success goal.

Group

The group the goal is to be assigned to.

Owner

The user from the assigned group the goal is
assigned to.

Projected Start Date

The projected start date for the success goal.

Projected End Date

The projected end date for the success goal.

Actual Start Date

The actual start date of the success goal.

Actual End Date

The actual end date of the success goal.

Projected Savings

Anticipated savings from the success goal.
This field appears only when Goal Type is
selected as Savings.

Actual Savings

The actual savings from the success goal.
This field appears only when Goal Type is
selected as Savings.

Projected Count

Anticipated count from the success goal.
This field appears only when Goal Type is set
to Count.

Actual Count

The actual count from the success goal.
This field appears only when Goal Type is is
set to Count.

Achievement Description

A description of how the success goal was
achieved.

HAM Success Activity
Fields on the HAM Success Activity form help you create success activities to track the success
of your created goals.
HAM Success Activity form
Field

Description

Number

A unique identifier of the success activity.

Success Goal

The success goal that the activity is being
associated to.

State

The current state of the success activity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1414


<!-- page 1415 -->
HAM Success Activity form (continued)
Field

Description

Choose from the following options:
• Open
• Pending
• Work in progress
• Closed Complete
• Closed Incomplete
• Closed Skipped
Assignment group

The group this activity is assigned to.

Assigned to

A particular person in the assigned group.

Short description

A short description of the success activity.

Description

A detailed description of the success activity.

Work notes

Notes relating to the success activity.

Maturity item details
Fields on the Maturity item details form help you view and update the state and success goal of
the maturity item.
Maturity item details
Field

Description

Name

Name of the maturity item.

Type

Type of the maturity item.
• Process
• End user

Short description

A brief summary of the maturity item.

Success goal

Success goal associated to the maturity item.
For more information about creating a success
goal, see Create a success goal for Hardware
Asset Management.

State

Current stage of the maturity item.
• New
• Work in Progress
• Closed Complete
• Closed Skipped

Maturity level

Current maturity level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1415


