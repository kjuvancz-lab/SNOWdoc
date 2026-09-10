# Zurich IT Asset Management — Enterprise Asset Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1836–1925 of 2359 | Part 3 of 3

Sections: Enterprise Asset Management (p1536); Explore (p1537); Configure (p1620); Manage enterprise models and assets (p1638); Manage enterprise asset inventory and contracts (p1751); Manage work orders for your enterprise assets (p1847); Use Service Catalog for requests and flows (p1877); Manage enterprise assets and tasks using Mobile Agent application (p1887)

---

<!-- page 1836 -->
The Collection task opens.
b. On the Details tab of the Collection task, fill in the fields.
Details tab
Field

Description

Contract Asset Task
Number

Task number that is used to identify and track the Collection task. This field
populates automatically.

Contract

Lease contract that the task is associated with. This field populates
automatically.

Asset

Enterprise asset that is associated with the lease contract. This field
populates automatically.

Location

Current location of the associated enterprise asset. This field populates
automatically.

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
Description Detailed description of the task.
Asset collection
Asset
collected

Option that indicates if the associated enterprise asset was collected for
return.
If you select Yes, the Stockroom field appears next to the Asset collected
field. In the Stockroom field, search for and select the stockroom that the
associated enterprise asset was collected from.
If you select No, the Action change field appears next to the Asset collected
field. In the Action change field, select an option to change your lease action
to either an enterprise asset buyout or lease contract extension.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1836


<!-- page 1837 -->
Field

Description

Notes
Work notes Notes about the task that are visible to all users within your organization.
c. Select Close Task.
The Collection task automatically closes with an updated state of Closed Complete.
If you set the Asset collected field to Yes, the Substate field changes to Pending transfer in
the asset record for the associated enterprise asset.
If you set the Asset collected field to No, proceed with one of the following options:
▪ If you changed your lease action to an enterprise asset buyout, proceed to Buy out a
leased enterprise asset.
▪ If you changed your lease action to a lease contract extension, proceed to Extend the
lease contract for an enterprise asset.
4. Complete and close the Preparation task for the lease contract.
To successfully complete and close this task, you must prepare the enterprise asset for return.
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Preparation task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

The Preparation task opens.
b. On the Details tab of the Preparation task, fill in the fields.
Details tab
Field

Description

Contract Asset Task
Number

Task number that is used to identify and track the Preparation task. This
field populates automatically.

Contract

Lease contract that the task is associated with. This field populates
automatically.

Asset

Enterprise asset that is associated with the lease contract. This field
populates automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1837


<!-- page 1838 -->
Field

Description

Location

Current location of the associated enterprise asset. This field populates
automatically.

State

State of the task.

Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Work notes
list

Users who receive notifications when work notes are added to the task.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Notes
Work notes

Notes about the task that are visible to all users within your organization.

c. Select Close Task.
The Preparation task automatically closes with an updated state of Closed Complete.
5. Complete and close the Shipment task for the lease contract.
To successfully complete and close this task, you must ship the enterprise asset back to the
asset vendor.
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Shipment task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

The Shipment task opens.
b. On the Details tab of the Shipment task, fill in the fields.
Details tab
Field

Description

Contract Asset Task
Number

Task number that is used to identify and track the Shipment task. This field
populates automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1838


<!-- page 1839 -->
Field

Description

Contract

Lease contract that the task is associated with. This field populates
automatically.

Asset

Enterprise asset that is associated with the lease contract. This field
populates automatically.

Location

Current location of the associated enterprise asset. This field populates
automatically.

State

State of the task.

Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Work notes
list

Users who receive notifications when work notes are added to the task.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Shipment
Carrier

Shipping carrier through which you shipped the associated enterprise
asset.

Ship date

Date on which you shipped the associated enterprise asset.

Tracking
number

Tracking number that enables you to track the status and location of the
shipment.

Notes
Work notes

Notes about the task that are visible to all users within your organization.

c. Select Close Task.
The Shipment task automatically closes with an updated state of Closed Complete.
In the asset record for the associated enterprise asset, the State field changes to In transit.
6. Complete and close the Return confirmation task for the lease contract.
To successfully complete and close this task, the asset vendor must confirm if they received
the enterprise asset that you returned. The asset vendor must also inform you of any
settlement payouts that you are receiving for the returned enterprise asset.
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Return confirmation task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1839


<!-- page 1840 -->
The Return confirmation task opens.
b. On the Details tab of the Return confirmation task, fill in the fields.
Details tab
Field

Description

Contract Asset Task
Number

Task number that is used to identify and track the Return confirmation task.
This field populates automatically.

Contract

Lease contract that the task is associated with. This field populates
automatically.

Asset

Enterprise asset that is associated with the lease contract. This field
populates automatically.

Location

Current location of the associated enterprise asset. This field populates
automatically.

State

State of the task.

Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Work notes
list

Users who receive notifications when work notes are added to the task.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Return details
Return
Option that indicates if the associated enterprise asset was returned
confirmation successfully.
To complete the Return confirmation task, you must set this field to Yes.
Settlement

Option that indicates if you are receiving a settlement payout for the
enterprise asset that you returned.
If you select Yes, the Settlement amount field appears below the
Settlement field. In the Settlement amount field, enter the total amount
of money that you are receiving from the settlement payout. The
Enterprise Asset Management application can then use this information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1840


<!-- page 1841 -->
Field

Description

to automatically create a purchase order and purchase order line for the
settlement payout.

Note: You can set the Settlement amount field to any currency of
your choice.
Notes
Work notes

Notes about the task that are visible to all users within your organization.

c. Select Close Task.
The Return confirmation task automatically closes with an updated state of Closed
Complete.
7. If you set the Settlement field to Yes in the Return confirmation task, complete and close the
corresponding Return settlement task.
To successfully complete and close this task, the asset vendor must reimburse you the amount
that was specified in the settlement payout.
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Return settlement task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

The Return settlement task opens.

Note: Aside from the State field, all editable fields in the Return settlement task
are pre-populated based on the corresponding fields that you filled out in the Return
confirmation task. The Purchase order and Purchase order line fields are prepopulated with the purchase order and purchase order line that the Enterprise Asset
Management application automatically created for the settlement payout in step 7.
b. In the Return details section of the Details tab, select the Open Record icon (
Purchase order field.
The purchase order record opens.

) in the

c. Select Order.
d. After the page reloads, select Receive.
The form closes and you automatically return to the purchase order record, which now has a
status of Received.
e. Close the purchase order record to return to the Return settlement task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1841


<!-- page 1842 -->
f. Select Close Task.
The Return settlement task automatically closes with an updated state of Closed Complete.

Result

After you successfully return the leased enterprise asset, the State and Substate fields change
to Retired and Lease Return in the corresponding asset record.
Buy out a leased enterprise asset
Buy out a leased enterprise asset before the corresponding lease contract expires.

Before you begin

Before you can proceed with buying out a leased enterprise asset, you must complete the
Planning task for the associated lease contract. See Complete the Planning task for an expiring
enterprise asset lease contract for detailed instructions.
Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Contract and lease management view.
2. On the Lease-end assets tab, select the lease contract for the enterprise asset that you want
to buy out.
The lease contract record opens.
3. Complete and close the Buyout task for the lease contract.
To successfully complete and close this task, you must confirm a buyout date and amount with
the asset vendor.
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Buyout task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

The Buyout task opens.
b. On the Details tab of the Buyout task, fill in the fields.
Details tab
Field

Description

Contract Asset Task
Number

Task number that is used to identify and track the Buyout task. This field
populates automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1842


<!-- page 1843 -->
Field

Description

Contract

Lease contract that the task is associated with. This field populates
automatically.

Asset

Enterprise asset that is associated with the lease contract. This field
populates automatically.

Location

Current location of the associated enterprise asset. This field populates
automatically.

State

State of the task.

Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Work notes
list

Users who receive notifications when work notes are added to the task.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Buyout details
Buyout date

Date on which you are buying out the associated enterprise asset.

Buyout
amount

Cost to buy out the associated enterprise asset.

Note: You can set this field to any currency of your choice.

Notes
Work notes

Notes about the task that are visible to all users within your organization.

c. Select Close Task.
The Buyout task automatically closes with an updated state of Closed Complete.
4. Complete and close the Buyout confirmation task for the lease contract.
To successfully complete and close this task, you must pay the asset vendor the confirmed
buyout amount on or before the confirmed buyout date.
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Buyout confirmation task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1843


<!-- page 1844 -->
The Buyout confirmation task opens.

Note: Aside from the State field and the additional Buyout confirmation field,
all editable fields in the Buyout confirmation task are pre-populated based on the
corresponding fields that you filled out in the Buyout task. The Purchase order and
Purchase order line fields are pre-populated with the purchase order and purchase
order line that the Enterprise Asset Management application automatically created for
the enterprise asset buyout in the Planning task.
b. In the Buyout details section of the Details tab, set the Buyout confirmation field to Yes.
This field indicates if you bought out the enterprise asset successfully.
c. In the same section, select the Open Record icon (
The purchase order record opens.

) in the Purchase order field.

d. Select Order.
e. After the page reloads, select Receive.
The form closes and you automatically return to the purchase order record, which now has a
status of Received.
f. Close the purchase order record to return to the Buyout confirmation task.
g. On the Buyout confirmation task, select Close Task.
The Buyout confirmation task automatically closes with an updated state of Closed
Complete.

Result

After you successfully buy out the enterprise asset, the Date removed field on the lease contract
record automatically updates with the date on which you completed all buyout tasks. Following
this date, you can no longer track the enterprise asset through this lease contract record.
Extend the lease contract for an enterprise asset
Extend the lease contract for an enterprise asset before it expires.

Before you begin

Before you can proceed with extending a lease contract, you must complete the associated
Planning task. See Complete the Planning task for an expiring enterprise asset lease contract for
detailed instructions.
Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Contract and lease management view.
2. On the Lease-end assets tab, select the lease contract that you want to extend.
The lease contract record opens.
3. Complete and close the Extension task for the lease contract.
To successfully complete and close this task, you must confirm the lease contract extension
details with the asset vendor. These details include the start date, end date, and cost of the
lease contract extension.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1844


<!-- page 1845 -->
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Extension task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

The Extension task opens.
b. On the Details tab of the Extension task, fill in the fields.
Details tab
Field

Description

Contract Asset Task
Number

Task number that is used to identify and track the Extension task. This field
populates automatically.

Contract

Lease contract that the task is associated with. This field populates
automatically.

Asset

Enterprise asset that is associated with the lease contract. This field
populates automatically.

Location

Current location of the associated enterprise asset. This field populates
automatically.

State

State of the task.

Assignment
group

Group to which the task is assigned.

Assigned to

User to which the task is assigned.

Work notes
list

Users who receive notifications when work notes are added to the task.

Short
description

Brief description of the task.

Description

Detailed description of the task.

Extension details
Extension
start date

Date on which you want to start the lease contract extension.

Extension end Date on which you want to end the lease contract extension.
date

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1845


<!-- page 1846 -->
Field

Description

Extension
cost

Cost to extend the lease contract.

Note: You can set this field to any currency of your choice.

Notes
Work notes

Notes about the task that are visible to all users within your organization.

c. Select Close Task.
The Extension task automatically closes with an updated state of Closed Complete.
4. Complete and close the Extension confirmation task for the lease contract.
To successfully complete and close this task, you must pay the asset vendor the amount that
was specified in the extension cost.
a. On the Contract Asset Tasks tab of the lease contract record, select the task number for the
Extension confirmation task.
Alternatively, select the task number that is displayed in the Current task field of the lease
contract record header.

The Extension confirmation task opens.

Note: Aside from the State field and the additional Extension confirmation field,
all editable fields in the Extension confirmation task are pre-populated based on the
corresponding fields that you filled out in the Extension task. The Purchase order and
Purchase order line fields are pre-populated with the purchase order and purchase
order line that the Enterprise Asset Management application automatically created for
the lease contract extension in the Planning task.
b. In the Extension details section of the Details tab, set the Extension confirmation field to
Yes.
This field indicates if the lease contract was extended successfully.
c. In the same section, select the Open Record icon (
The purchase order record opens.

) in the Purchase order field.

d. Select Order.
e. After the page reloads, select Receive.
The form closes and you automatically return to the purchase order record, which now has a
status of Received.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1846


<!-- page 1847 -->
f. Close the purchase order record to return to the Extension confirmation task.
g. On the Extension confirmation task, select Close Task.
The Extension confirmation task automatically closes with an updated state of Closed
Complete.

Result

After you successfully extend the lease contract, the Expiration field on the lease contract
record changes to Expired. The Enterprise Asset Management application then creates a new
record for the extended lease contract, which is named EXT_<expired-lease-contract>.
The new lease contract record covers all of the same enterprise assets that were covered in the
original lease contract record.

Managing work orders for your enterprise assets
Create and manage work orders for your enterprise assets.

Overview of managing work orders
Create and manage work orders for your enterprise assets by performing the following tasks.

Task

Role required

Resource

Create a work plan for your
enterprise assets

Create a work plan for your
enterprise assets

Create a maintenance plan for
your enterprise assets

Create a maintenance plan for
your enterprise assets

Create a work order for your
enterprise assets

Create a work order for an
enterprise asset

Manage work through work
orders and work tasks for your
enterprise assets

Managing work for your
enterprise assets

Create templates for your
enterprise assets

Create a template for your
Enterprise Asset Management
work orders

Use Drop off tasks to manage
delivery of your enterprise
assets

Delivering enterprise assets
in your personal stockroom
through Drop off tasks

Edit Field Service Management configurations for the Work management view
Edit your Field Service Management configurations as needed so that you can access and use
the Work management view in the Enterprise Asset Workspace.

Before you begin

Role required: admin

About this task
See Global domain configurations
configurations.

for more information on Field Service Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1847


<!-- page 1848 -->
Procedure
1. Navigate to All > Field Service > Administration > Configuration.
2. Edit the following configurations on the Business Process tab:
Business Process tab
Configuration

Setting

Lifecycle
Process lifecycle

Set this configuration to task-driven
(subtasks are required).

Approval for new request required

Disable this configuration.

Qualification is required for new requests

Disable this configuration.

Agent must accept or reject the assigned
task

Disable this configuration.

Track agent travel time

Disable this configuration.

Work notes are required to close or cancel a
request or task

Enable this configuration.

Copy task work notes to request

Disable this configuration.

Apply Work Order template in draft status

Enable this configuration.

Catalog and Request Creation
Create or update requests by inbound email

Disable this configuration.

Create requests using catalog and form or
form only

Set this configuration to regular form only.

Templates create a dedicated catalog item

Disable this configuration.

3. Edit the following configurations on the Assignment tab:
Assignment tab
Configuration

Setting

Assignment Methods
Assignment method for tasks

Set this configuration to
manually.

Dispatch Queue and Group Coverage
Use dispatch queue

Disable this configuration.

Assign requests or tasks based on assignment group coverage Disable this configuration.
areas
Assign tasks based on assignment group product models

Disable this configuration.

Assign tasks based on assignment group skills

Disable this configuration.

Scheduling
Use agent or task scheduling

Disable this configuration.

Auto-selection of agents will consider time zone for tasks

Disable this configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1848


<!-- page 1849 -->
Configuration

Setting

Enable priority assignment

Disable this configuration.

Additional Factors
Auto-selection of agents will consider location of agents

Disable this configuration.

Auto-selection of agents for tasks requires them to have skills

Set this configuration to
None.

Auto-selection will attempt to assign the same agent to all
tasks in a request

Disable this configuration.

4. Edit the following configurations on the Add-ons tab:
Add-ons tab
Configuration

Setting

Part Requirements
Part requirements are needed by agents

Enable this configuration.

Reserve parts in agent stockroom

Disable this configuration.

Cancel open Transfer Orders

Disable this configuration.

Edit associated models

Disable this configuration.

Documentation
Enable a dedicated knowledge base

Disable this configuration.

Enable managed documents

Disable this configuration.

Enable task activities

Disable this configuration.

Associated Task Tables
Edit associated task tables

Leave this configuration empty.

Maps
Enable maps

Disable this configuration.

5. Select Save.

Create a work plan for your enterprise assets
Create and manage work plans to specify how and when the work should be performed for any
activity.

About this task

Use the Planned Work Management application's functionality to create work plans from within
the Enterprise Asset Workspace. This enables managers to create work orders for the future and
allocate them to technicians so that the technicians can review and plan their work accordingly.

Note: Ensure that you have activated the Planned Work Management plugin
[sn_fsm_planned_wm] plugin.
A work plan consists of an effective start and end date that determines the period for which the
plan can be scheduled for execution. Each work plan must have at least one or more records
associated with it for which you want to apply the work plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1849


<!-- page 1850 -->
Before you begin

Role required: sn_fsm_planned_wm.planned_work_admin

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. On the Maintenance plans tab, select New to open the Select target asset table
pop-up window.
3. Select Work plan from the Plan type list.
4. Select a table from the Asset table list.
The Enterprise asset table is selected by default.
5. Select Create.
6. On the Create New Work Plan page, fill in the details.
For a detailed description of all the work plan fields, see Work plan fields for Enterprise Asset
Management.
7. Select Save.
The page closes and you’re automatically redirected to the new work plan record.
You can further configure your work plan by creating planned work schedules, planned work
records, and work orders.
You can view all your work plan records in the list view in the Maintenance plans tab. Every
work plan record is prefixed with WP.
Create a planned work schedule for your work plan
Create a planned work schedule to specify when you want the work plan to run and how
frequently the schedule should run. You can apply one or more planned work schedules to a
single work plan.

Before you begin

Before you create a planned work schedule, ensure that you have created a work plan.
Role required: sn_fsm_planned_wm.planned_work_admin

Procedure
1. On the Planned Work Schedules tab of the work plan record, select New.
2. On the Create New Planned Work Schedule form, fill in the fields.
For a detailed description of the planned work schedule fields, see Work plan schedule fields
for Enterprise Asset Management.
3. Select Save.
The form closes and you’re automatically redirected to the new planned work order schedule
record.
4. Select the More Actions ellipsis icon and then select Associate schedule with filtered
records to associate the schedule with the assets that the work plan is applied to.
A confirmation message appears, indicating that the enterprise assets are now associated
with the planned work plan schedule. You can verify that the association is successful using
the Planned Work Records tab on either the planned work plan schedule record or the work
plan record.
5. Apply a planned work schedule template to the work plan schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1850


<!-- page 1851 -->
Planned work schedule templates enable the Enterprise Asset Management application to
automatically populate information, generate appropriate requests and tasks, and create part
requirements for your work plans each time the planned work schedule runs.
a. On the Planned Work Schedule Templates tab of the work plan schedule record, select
New.
The Create New Planned Work Schedule Template form opens.
b. On the form, fill in the fields.
Create New Planned Work Schedule Template form
Field

Description

Model

Model of the work order template.

Schedule

Planned work schedule to which you’re applying the work order template. This
field populates automatically.

Table

Table that is associated with the corresponding work plan of this planned
schedule.
This field is automatically set to the table name selected for the work plan.

Conditions Filter conditions to determine the work order template to be used to create
work orders based on the planned schedule.
Notes

Any work notes regarding the template.

c. Select Save.
d. Close the form to return to the planned work plan schedule record.
6. On the planned work plan schedule record, select the More Actions ellipsis icon and then
select Run on demand to create work orders for each asset.
Work orders are created for each asset. You can view the work orders in the Work Orders tab.

Create a maintenance plan for your enterprise assets
Create a maintenance plan to manage and schedule routine maintenance for your enterprise
assets, linear assets, and linear segments. You can run maintenance on-demand or based on a
set of specific criteria.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. On the Maintenance plans tab, select New.
3. Select Maintenance plan from the Plan type list.
4. Select a table from the Asset table list.
The Enterprise asset table is selected by default.
5. Select Create.
6. On the Create New Maintenance Plan page, fill in the details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1851


<!-- page 1852 -->
For a detailed description of all the maintenance plan fields, see Maintenance plan fields for
Enterprise Asset Management.
7. Select Save.
The page closes and you’re automatically redirected to the new maintenance plan record.
You can further configure your maintenance plan by creating maintenance schedules, work
orders, and work order tasks. You can view all your maintenance plan records in the list view in
the Maintenance plans tab. Every maintenance plan record is prefixed with MP.
Create a maintenance schedule
Create a maintenance schedule to specify when you want the maintenance to run using criteria
such as time intervals or field values and apply a work order template to the schedule. You can
apply one or more maintenance schedules to a single maintenance plan.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. On the Maintenance Schedules tab of the maintenance plan record, select New.
2. On the Create new Maintenance Schedule form, fill in the fields.
See Maintenance schedule fields for Enterprise Asset Management for a detailed description
of each field.
3. Select Save.
The form closes and you’re automatically redirected to the new maintenance schedule record.
4. Apply a work order template to the maintenance schedule.
Work order templates enable the Enterprise Asset Management application to automatically
populate information, generate appropriate requests and tasks, and create part requirements
for your work orders each time the scheduled maintenance runs.
a. On the Schedule Templates tab of the maintenance schedule record, select New.
The Create New Schedule Template form opens.
b. On the form, fill in the fields.
Create New Schedule Template form
Field

Description

Model

Model of the work order template.

Schedule Maintenance schedule to which you’re applying the work order template. This
field populates automatically.
c. Select Save.
d. Close the form to return to the maintenance schedule record.
5. On the maintenance schedule record, select the More Options ellipsis icon and then select
Associate records to associate the maintenance schedule with the enterprise assets that the
maintenance plan is applied to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1852


<!-- page 1853 -->
A confirmation message appears, indicating that the enterprise assets are now associated
with the maintenance schedule. You can verify that the association is successful using the
Maintenance Plan Records tab on either the maintenance schedule record or maintenance
plan record.

Result

Maintenance runs automatically based on the schedule that you set for the maintenance plan.
You can also run maintenance on-demand by selecting Run on demand on the maintenance
schedule record.
Each time maintenance runs, the Enterprise Asset Management application automatically
creates a corresponding work order for every enterprise asset that the maintenance plan is
applied to, given that the asset isn't already associated with an existing work order. You can use
these work orders to track and manage all the work that you need to perform on the specified
enterprise assets. See Managing work for your enterprise assets for more information on work
orders.

Create a work order for an enterprise asset
Create a work order to track and manage work for an enterprise asset, linear asset, or linear
segment.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. On the Work orders tab, select New.

Note:
If you created a maintenance plan to manage and schedule maintenance for your
enterprise assets, the Enterprise Asset Management application automatically creates a
corresponding work order for each asset to which the maintenance plan is applied.
See Create a maintenance plan for your enterprise assets for more information on
maintenance plans.
3. On the Create New Work Order form, fill in the fields.
Create New Work Order form
Field

Description

Work Order
Company

Company that you are creating the work order for.

Contract

Contract that defines the lease details of the associated enterprise asset.

Asset

Asset that you want to manage work for through this work order.

Note: You can also select linear assets and linear segments from this
field.
Location

Current location of the associated enterprise asset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1853


<!-- page 1854 -->
Field

Description

Note: If you select a linear asset, a pencil icon [

] appears to enable
you to choose the work order location between the Start marker and End
marker. To select a location, follow these steps:
a. Select the Work order linear asset location icon [

].

A Map location form appears, showing the start and the end markers on
the map.
b. Select a location on the map between the start and end markers.
c. In the Name field, enter the name for the work order location.
d. Select Submit.
Start
marker

Start point of the linear asset or the linear segment.

Note: This field only appears if you select Linear asset or linear segment
from the Asset field.

End marker End point of the linear asset or the linear segment.

Note: This field only appears if you select linear asset or linear segment
from the Asset field.
Priority
Template

Priority of the work order.
Work order template that you want to apply to this work order. Work order
templates enable you to automatically populate information, generate
appropriate tasks, and create part requirements for your work orders. See
Create a template for your Enterprise Asset Management work orders for more
information on work order templates.
To apply a template to a work order in the draft state and view the work
order tasks and part requirements generated from the template, the
sn_eam.enterprise_asset_manager role must ensure that the Apply Work
Order template in draft status field in the Field Service Management
application is enabled. To accomplish this, navigate to All > Field Service >
Administration > Configuration and enable the Apply Work Order template in
draft status field in the Business Process tab.

Closed

Date and time at which the work order is closed and complete.

Short
Brief description of the work order.
description
Description Detailed description of the work order.
Work notes Notes about the work order that are visible to all users within your organization.
Scheduling
Due date

Date and time at which the work order must be completed.

4. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1854


<!-- page 1855 -->
The work order is created in the draft state. Any work order tasks and parts requirements
pertaining to the work order automatically appear in the Work Order Tasks and the Part
Requirementstabs.
5. To add additional work order tasks, select Newin the Work Order Tasks tab.
See Create a work order task for an Enterprise Asset Management work order for detailed
instructions.
6. To track all items that you must complete for your work order or an associated work order task,
create a checklist.
See Create a checklist for an Enterprise Asset Management work order or work order task for
detailed instructions.
7. If the enterprise asset that is associated with your work order is missing a required asset or
part, create a part requirement.
See Create a part requirement for an Enterprise Asset Management work order or work order
task for detailed instructions.
8. Specify any upstream or downstream task dependencies for the associated work order tasks.
See Create dependencies for an Enterprise Asset Management work order task for detailed
instructions.
9. Select Ready to Work to initiate work for the given work order

What to do next

Work with the assigned agent to complete and close all subsequent tasks for your work order.
Create a work order task for an Enterprise Asset Management work order
Create a work order task to track and manage an individual task for your Enterprise Asset
Management work order.

Before you begin

Role required: wm_agent

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. On the Work orders tab, select the work order that you want to add a work order task to.
The work order record opens.
3. On the Work Order Tasks tab, select New.
4. On the Create New Work Order Task form, fill in the fields.
Create New Work Order Task
Field

Description

Work Order Task
Assignment Agent group to which the work order task is assigned.
group
Assigned to Agent to whom the work order task is assigned.
Work type

Type of work that the assigned agent must perform on the associated
enterprise asset. The options are Break Fix, Install, Planned Maintenance, and
Calibration.

Asset

Enterprise asset that the assigned agent is performing work on. This field
populates automatically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1855


<!-- page 1856 -->
Field

Description

Location

Current location of the associated enterprise asset. This field populates
automatically.

Note: If you select a linear asset, the Work order linear asset location
[
] appears to enable you to choose the work order location between
the Start marker and End marker. To select a location, follow these steps:
a. Select the pencil icon [

].

A Map location form appears, showing the start and the end markers on
the map.
b. Select a location on the map between the start and end markers.
c. In the Name field, enter the name for the work order location.
d. Select Submit.
Start
marker

Start point of the linear asset or the linear asset.

Note: This field only appears if you select Linear asset or linear segment
from the Asset field.

End marker End point of the linear asset or the linear segment.

Note: This field only appears if you select linear asset or linear segment
from the Asset field.

Short
Brief description of the work order task.
description
Description Detailed description of the work order task.
Work notes Notes about the work order task that are visible to all users within your
organization.
Scheduling
Window
start

Estimated start date and time of the work order task.

Window
end

Estimated completion date and time of the work order task.

Estimated
work
duration

Amount of time that you estimate it will take to complete the work order task.

Actual work Actual start date and time of the work order task.
start
Actual work Actual completion date and time of the work order task.
end
5. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1856


<!-- page 1857 -->
Create a checklist for an Enterprise Asset Management work order or work order task
Create a checklist of all items that you must complete for your work order or work order task.

Before you begin

Role required: sn_eam.enterprise_asset_manager or wm_agent

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. Open the record for either the work order or work order task that you want to create a checklist
for.
◦ To open a work order record, select the Work orders tab. From the list of available work
orders, select the work order that you want to create a checklist for.
◦ To open a work order task record, select the Work order tasks tab. From the list of available
work order tasks, select the work order task that you want to create a checklist for.
3. On the work order or work order task record, select the Checklist items tab.
4. Use one of the following options to create a checklist.
◦ Create a checklist by adding individual checklist items:
a. Select New.
b. On the Create New Checklist Item form, fill in the fields.
Create New Checklist Item form
Field

Description

Name

Name of the checklist item.

Order

Order in which you must complete the checklist item. For example, a value of
1 indicates that the given checklist item is the first item you must complete
within your checklist.

Checklist Checklist that the checklist item is included in.
Complete Option that indicates if the checklist item has been completed.
c. Select Save.
d. Repeat steps a to c for every checklist item that you want to add to your checklist.
◦ Create a checklist by applying a checklist template:
a. Select Apply template.
The Apply Template dialog box opens.
b. In the dialog box, select the checklist template that you want to apply to your work order or
work order task.
c. Select OK.
The dialog box closes and you return to the Checklist items tab.
d. Select the Refresh List icon ( ) to populate the list of checklist items that were added
based on the selected checklist template.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1857


<!-- page 1858 -->
Create a part requirement for an Enterprise Asset Management work order or work order task
If the enterprise asset that is associated with your work order or work order task is missing a
required asset or part, create a part requirement to track and verify the missing asset or part.

Before you begin

Role required: sn_eam.enterprise_asset_manager or wm_agent

Note: You can use the wm_agent role to create part requirements only for assigned work
order tasks.

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. Open the record for either the work order or work order task that you want to create a part
requirement for.
◦ To open a work order record, select the Work orders tab. From the list of available work
orders, select the work order that you want to create a part requirement for.
◦ To open a work order task record, select the Work order tasks tab. From the list of available
work order tasks, select the work order task that you want to create a part requirement for.
3. On the Part Requirements tab of the work order or work order task record, select New.
4. On the Create New Part Requirement form, fill in the fields.
Create New Part Requirement form
Field

Description

Model

Enterprise model of the missing asset or part.

Service order
task

Work order task that the part requirement is associated with.

Required
quantity

Quantity of the asset or part that is required.

Required by
date

Date and time by which the missing asset or part must be sourced and
delivered.

Short
description

Brief description of the part requirement.

Mandatory

Option that indicates if the missing asset or part is required.

Note: This field is applicable to consumable assets and parts only.

5. Select Save.
Select descendant models of multi-component assets to create part requirements
qFor work orders and work order tasks that have multi-component assets, select descendant
models to create part requirement records.

Before you begin

Role required: sn_eam.enterprise_asset_manager or wm_agent

Note: You can use the wm_agent role to create part requirements only for assigned work
order tasks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1858


<!-- page 1859 -->
Procedure
1. Navigate to Enterprise Asset Workspace > Work management.
2. Open the record for either the work order or work order task that you want to create a part
requirement for.
◦ To open a work order record, select the Work orders tab. From the list of available work
orders, select the work order that you want to create a part requirement for.
◦ To open a work order task record, select the Work order tasks tab. From the list of available
work order tasks, select the work order task that you want to create a part requirement for.
3. On the Part Requirements tab of the work order or work order task record, select Add to
Asset.
The Add parts requirement dialog box opens.
4. Select a work order task in the Service order task field.
The Service order task field is visible only if you access the Add parts requirement dialog box
from the work order form.
5. Select the models.
6. Select OK.
The new part requirement records are created and appear in the Part Requirements page.
Create dependencies for an Enterprise Asset Management work order task
If your work order task requires any upstream or downstream task dependencies, add them to
your work order task.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. On the Work order tasks tab, select the work order task that you want to create dependencies
for.
The work order task opens.
3. Select one of the following tabs to create either an upstream or downstream task dependency:
◦ To create an upstream task dependency, select the Depends on tab.
◦ To create a downstream task dependency, select the Dependents tab.
4. Select New.
5. In the Upstream task or Downstream task field of the Create New Service Order Task
Dependency form, search for and select the task that you want to add as a dependency.
6. Select Save.

Managing work for your enterprise assets
You can track and manage work for your enterprise assets and linear assets by using work orders
and work order tasks. Supported asset actions for your work orders include asset deployment,
swapping, removal, and calibration.
Source parts for an Enterprise Asset Management work order or work order task
If the enterprise asset that is associated with your work order or work order task is missing any
required assets or parts, source them using a catalog request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1859


<!-- page 1860 -->
Before you begin

Role required: sn_eam.enterprise_asset_manager or wm_agent

Important: Although you can use either the sn_eam.enterprise_asset_manager
or wm_agent role to create catalog requests, you can use only the
sn_eam.enterprise_asset_manager role to source those requests.

About this task

You can verify which assets or parts are missing using the Part Requirements tab on the
work order or work order task. For more information on part requirements, see Create a part
requirement for an Enterprise Asset Management work order or work order task.
You can specify parts requirements that you want to source instead of sourcing all parts
requirements.

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. Open the record for either the work order or work order task that you want to source parts for.
◦ To open a work order record, select the Work orders tab. From the list of available work
orders, select the work order that you want to source parts for.
◦ To open a work order task record, select the Work order tasks tab. From the list of available
work order tasks, select the work order task that you want to source parts for.
3. On the work order or work order task record, select Source Parts Request.
The Source parts request dialog box opens. All part requirement models that have still not
been requested are listed and selected by default.
4. Enter the quantity that you want to request in the Request quantity field.
The quantity you enter can be greater than the required quantity.
5. Select OK.
A confirmation message appears, indicating that a corresponding catalog request has been
created only for the selected parts requirement.
6. From the left navigation menu of the Enterprise Asset Workspace, open the Asset operations
view.
7. On the Lists tab of the Asset operations view, navigate to Procurement > Requests.
8. Select the request for the assets or parts that you need to source.
The catalog request record opens. You can verify the assets or parts that you need to source
by using the Requested Items tab of the catalog request record.
9. On the Catalog Tasks tab of the catalog request record, select the task number for the Source
Request Items catalog task.
The Source Request Items catalog task opens.
10. Select Source request.
You are automatically redirected to the corresponding source request.
11. Source the required assets or parts using one or more of the following options:

Note: The source request displays all assets and parts that need to be sourced.
However, you must source each asset and part separately.
◦ Local stock: Option to consume assets or parts from a local stockroom.
To use this option, click Consume on the Local stock widget. When prompted, specify the
consumption details for the source request.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1860


<!-- page 1861 -->
◦ Transferable stock: Option to transfer assets or parts between available stockrooms or to a
location where the requester can receive those assets or parts.
To use this option, click Transfer on the Transferable stock widget. When prompted, specify
the transfer details for the source request.
◦ Vendor purchase: Option to purchase additional assets or parts from a supported asset
vendor.
To use this option, click Purchase on the Vendor purchase widget. When prompted, specify
the purchase details for the source request.
12. Select Submit.
The Source Request dialog box opens.
13. In the dialog box, select OK.
The dialog box closes and you automatically return to the catalog request record.
Complete and close the Confirm asset task for a serialized enterprise asset
If your work order is associated with a serialized enterprise asset, complete and close the
Confirm asset task for that asset.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

Before an agent can perform work on an enterprise asset, it must be picked up from its
designated stockroom. If you want an agent to perform work on a serialized enterprise asset,
you must first confirm which asset needs to be picked up by using the Confirm asset task. For all
other enterprise asset types, skip the Confirm asset task and proceed directly to the Pickup task.

Procedure
1. From the Enterprise Asset Workspace, open the Enterprise asset estate view.
2. On the Asset tasks tab, select the Confirm task for the serialized enterprise asset that is
associated with your work order.
The Confirm task opens.
3. On the Details tab of the Confirm task, modify the fields as needed.
Details tab
Field

Description

Asset

Serialized enterprise asset that is associated with your work order.

Model

Model of the serialized enterprise asset.

State

State of the Confirm task.

Stockroom

Stockroom that the serialized enterprise asset is located in.

Short description

Brief description of the Confirm task.

Description

Detailed description of the Confirm task.

4. Select Close Task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1861


<!-- page 1862 -->
Result

The state of the Confirm task changes from Open to Closed Complete. The Enterprise Asset
Management application then generates a subsequent Pick Up task for the enterprise asset.

What to do next

The agent who is assigned to the associated work order must complete and close the Pick Up
task.
Complete and close the Pick Up task for an enterprise asset
Complete and close the Pick Up task for the enterprise asset that is associated with your
assigned work order.

Before you begin

Role required: wm_agent

About this task

Before you can begin working on an enterprise asset, it must be picked up from its designated
stockroom.

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. On the My asset pickup tasks tab, select the enterprise asset that was picked up.
The Pick Up task opens.
3. On the Details tab of the Pick Up task, modify the fields as needed.
Details tab
Field

Description

Asset

Enterprise asset that was picked up.

Assigned to

Person that the Pick Up task is
assigned to.

State

State of the Pick Up task.

Quantity

Quantity of the enterprise asset that
was picked up.

Note: This field is applicable to consumable
enterprise assets only.
Short description

Brief description of the Pick Up task.

Description

Detailed description of the Pick Up
task.

4. Select Close Task.

Result

The state of the Pick Up task changes from Open to Closed Complete.

What to do next

Complete all required work for the enterprise asset so that you can close the work order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1862


<!-- page 1863 -->
Complete and close a work order for an enterprise asset
Close an assigned work order by completing all work that is required for the associated
enterprise asset.

Before you begin

Role required: wm_agent

About this task

When working on an enterprise asset, you can choose to deploy, swap, or remove any required
assets or parts. Similarly, you can deploy a discreet asset to a linear asset, swap a discreet asset
associated to a linear asset, or remove a discreet asset associated to a linear asset. You can also
choose to calibrate the enterprise asset. After you complete all work for the asset, you can close
the associated work order.

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. On the Work order tasks tab, select the work order task for the work order that you want to
complete and close.
The work order task opens.
3. Select Start Work.
The work order task reloads with an updated State of Work In Progress.
4. Complete all work that is required for the work order task.
◦ If you want to deploy, swap, or remove any required assets or parts, use the following steps:
a. Select the Asset Usages tab.
b. Select the action that you are taking on an asset or part that is required for the associated
enterprise asset.
Available actions
Action

Description

Remove
Option to remove an asset or part. You can also remove a discreet asset
Asset
associated to a linear asset.

Note: You can remove assets or parts that have a state of In use, In
maintenance, and Consumed only.
If you select this option, the Remove asset dialog box opens. In the dialog box,
select the asset or part that you want to remove and then select OK. When
the dialog box closes, the Asset Usages tab reloads to display the removed
asset or part, which is now assigned to your personal stockroom. Execute all
subsequent disposal tasks to complete the removal.
Swap
Asset

Option to swap an asset or part. You can also swap a discreet asset associated
to a linear asset with another discrete asset
If you select this option, the Swap asset dialog box opens. In the dialog box,
select both the asset or part that you want to swap and the replacement asset
or part that you want to swap it with. Select OK. When the dialog box closes,
the Asset Usages tab reloads to display both assets or parts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1863


<!-- page 1864 -->
Action

Description

Note: You can swap an existing asset or part with a replacement asset
or part that meets the following criteria:
▪ The State field in the corresponding asset record is set to In stock.
If the asset or part is associated with a multi-component enterprise
model that has hot-swappable model components, this field can also
be set to In use.
▪ The asset or part is either displayed on the Asset Usages tab or
located in your personal stockroom.
▪ The asset or part is associated with either the same enterprise model
as the existing asset or part or a substitute enterprise model that
is supported by the existing asset or part. For more information on
substitute enterprise models, see Add a substitute model for an
enterprise model.
Deploy
Asset

Option to deploy an asset or part. You can also deploy a discreet asset to a
linear asset.

Note: You can deploy assets or parts that are displayed on the Asset

Usages tab and have a status of Not Used. You can also deploy assets
or parts from your personal stockroom that have a state of In stock and a
substate of either Available or Reserved.
If you select this option, the Deploy asset dialog box opens. In the dialog box,
select the asset or part that you want to deploy. If you select a consumable
asset or part, you must also specify the quantity that you want to deploy. You
can optionally assign the asset or part to a specific user or add the asset or
part as a child of another asset or part. After you fill in all required fields, select
OK. When the dialog box closes, the Asset Usages tab reloads to display the
deployed asset or part.
In the Deploy asset dialog box, if you want to deploy a discrete asset to a linear
asset, you need to first select a discrete asset from your stockroom, and then
choose one of the following options for where to deploy that asset.
▪ Add to discreet asset: to add the selected asset as a child asset of the
discrete asset. Select the discreet asset you want to add it to.
▪ Add to existing location: Select an existing location.
▪ Add to new location: Use the location picker to mark the new location on the
geo map.
c. Repeat step b for every asset or part that you want to deploy, swap, or remove.
◦ If you want to calibrate the associated enterprise asset, use the following steps:
a. Select the Calibration tab.
The Calibration event playbook opens.

Note: Each lane in the side panel of the playbook represents an activity that you
must complete as part of the calibration event workflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1864


<!-- page 1865 -->
b. In the work area of the Details lane, fill in the fields.
Details lane
Field

Description

Name

Name of the calibration event.

Temperature

Temperature of the environment in which you are performing the
calibration.

Temperature
unit

Unit of temperature that you are using to measure the environmental
temperature.

Humidity (%)

Relative humidity level of the environment in which you are performing
the calibration.

c. Select Mark as complete.
The Details lane is marked as Complete and you automatically progress to the Calibration
Lines lane.
d. In the work area of the Calibration lines lane, select the calibration line that you want to
complete or skip.
Each calibration line corresponds with a calibration attribute on the associated enterprise
asset. If any calibration attribute contains multiple points at which you can measure
accuracy, the Enterprise Asset Management application creates a separate calibration line
for each point. You can choose to complete or skip each calibration line as needed. For
more details on calibration attributes, see Add calibration attributes to an enterprise asset
or Add calibration attributes to an enterprise model.
e. On the calibration line record, use one of the following options to complete or skip the
calibration line:
▪ To complete the calibration line, fill in the fields and then select Submit.
Calibration line fields
Field

Description

Details
Instrument Instrument that you are using to perform the calibration. If you specified
an instrument model in the Instrument model field of the corresponding
calibration attribute, the options in this field are filtered based on the
specified instrument model.
Calibration Date and time at which you are performing the calibration. This field
date
populates automatically based on the date and time at which the Details
lane was marked as complete. You can overwrite this field if needed.
Readings
Expected
value

Value that you are measuring tolerance conformance against. This field
populates automatically based on the expected value that you specified
in the calibration attribute.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1865


<!-- page 1866 -->
Field

Description

Note: This field appears only if you set the Value type of the
calibration attribute to either Accuracy % full scale, Accuracy %
point, or True/false.
As found
value

Value that you measure prior to the calibration.

As left
value

Value that you measure after the calibration.

Comment

Additional comments about the calibration.

▪ To skip the calibration line, select Skip.
The calibration line record closes and you automatically return to the playbook.
f. Repeat steps d and e for each calibration line in the Calibration lines lane.

Note: If any of your calibration lines have a Result of Failed, you can remediate
the entire calibration event by initiating a new work order and corresponding work
order tasks. See Remediate an unsuccessful enterprise asset calibration for detailed
instructions.

g. Select Mark as complete.
The lane is marked as Complete.
5. After you complete all required work, select Close Complete on the work order task.
The state of both the work order task and associated work order changes from Work In
Progress to Closed Complete.
Bulk closure of work order tasks
Close multiple work order tasks in one go.

Before you begin

Role required: enterprise_asset_technician

Procedure
1. Navigate to Enterprise Asset Workspace > Work Management.
2. Select the Work order tasks tab.
All work order tasks, assigned to the assignment group of the logged in technician, are listed.
3. Select Bulk close tasks.
All work order tasks, that can be closed by the logged in technician, are listed.
4. Select the check boxes for the work order tasks that you want to close.
5. Select Add details and close.
The Bulk close tasks dialog box opens.
6. Fill in the details in the Bulk close tasks dialog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1866


<!-- page 1867 -->
Field

Description

Work notes

Details about the work tasks.

Time worked

The cumulative time (days, hours, and min­
utes) taken to complete all the tasks.

Comments

Additional comments regarding the work
tasks.

7. Select Save.
The selected work orders tasks are closed.
Remediate an unsuccessful enterprise asset calibration
Remediate a failed enterprise asset calibration event by initiating a new work order and
corresponding work order tasks for that event.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace.
2. From the Enterprise Asset Workspace, open the Work management view.
3. Select the Calibrations and conditions tab.
4. In the Calibration overview section, select either the All calibration events widget or the
Calibration pending verification widget.
5. From the list of available calibration events, select the event that you want to remediate.
The corresponding service event record opens.
6. Initiate the creation of a new work order by selecting Remediate.
7. In the Select template to begin remediation dialog box, search for and select the template that
you want to apply to the new work order.

Note: The dialog box lists only the work order templates that have at least one work
order task with a Work type of Calibration.
8. Select OK.
The dialog box closes and you are automatically redirected to the Create New Work Order
form. The form is auto-populated with the following information:
◦ The asset that you want to calibrate
◦ The location of the asset
◦ The original work order
◦ All other mandatory fields
9. Optional: Fill out any additional fields in the Create New Work Order form and then select
Save.
See Create a work order for an enterprise asset for a detailed description of each field.
10. Optional: Add additional work order tasks to the new work order.
See Create a work order task for an Enterprise Asset Management work order for detailed
instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1867


<!-- page 1868 -->
11. Optional: Create a checklist of all items that must be completed for the new work order or the
associated work order tasks.
See Create a checklist for an Enterprise Asset Management work order or work order task for
detailed instructions.
12. Optional: Specify any upstream or downstream dependencies for the associated work order
tasks.
See Create dependencies for an Enterprise Asset Management work order task for detailed
instructions.
13. Select Ready for Work to initiate work for the new work order.

What to do next

Work with the assigned agent to complete and close all subsequent tasks for the new work order.
See Managing work for your enterprise assets for detailed instructions.

Schedule condition evaluations for enterprise models or assets
Schedule a condition evaluation by creating a work order for it.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to All > Enterprise Asset Workspace > Work management.
2. On the Work orders tab, select New.
3. Select Asset condition work order in the Template field.
For more details on creating a work order, see Create a work order for an enterprise asset.
4. After you have entered the details in the work order, select Save.
The work order is created in the draft state.
5. Select Ready to Work.
A work order task gets created for the work order in the Work Order Tasks tab.
Additionally, a service event gets created along with condition lines. Depending on the number
of templates linked to the asset, an equivalent number of assessment lines are generated.
Only a single service event gets created per asset.
6. Open the work order task and assign it to an enterprise technician.
A service event gets created along with condition lines. Depending on the number of attributes
created on the asset, an equivalent number of condition lines are generated. Only a single
service event gets created per work order task. The technician must log in to begin work on the
work order task.

Review the asset condition results
After the enterprise technician has completed the condition evaluation, the enterprise asset
manager reviews the condition evaluation and views the reports in the Work management
dashboard.

Before you begin

Role required: sn_eam.enterprise_asset_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1868


<!-- page 1869 -->
Procedure
1. Navigate to All > Enterprise Asset Workspace > Work management > work order tasks.
2. In the Condition lines tab, select a service event.
The Service event details page opens.
3. Select Accept or Remediate.
If you accept the condition event, the status of the event changes to Accepted. If you choose
to remediate the event, the status of the service event changes to Pending remediation.
4. View the asset condition reports by navigating to the Work management > Calibrations and
conditions.
5. On the dashboard, scroll down to view the asset condition overview.

Create a template for your Enterprise Asset Management work orders
Create a work order template to automatically populate information, generate appropriate tasks,
and create asset or part requirements for your work orders.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

®

Work order templates are added to the Field Service Catalog, which is part of the ServiceNow
Field Service Management application. You can access the Field Service Catalog by navigating
to All > Field Service > Catalog and Knowledge. See Field Service Management
for more
information on the Field Service Management application.

Note: The Field Service Management application is automatically activated when you
request and install the Enterprise Asset Management application from the ServiceNow
Store. See Install Enterprise Asset Management for more details.

Procedure
1. From the Enterprise Asset Workspace, open the Work management view.
2. On the Work order templates tab, select New.
The Work Order Templates form opens in a new browser tab.
3. On the form, fill in the fields.
Work Order Templates form
Field

Description

Name

Name of the work order template.

Short Description

Brief description of the work order
template.

Description

Detailed description of the work order
template.

Checklist template

Checklist template of all items that you
must complete as part of a work order.

Workflow

Workflow for work orders that this
template is applied to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1869


<!-- page 1870 -->
Field

Description

Note: This field appears only if you select
the Add icon (

) next to the Name field.

4. Add required tasks to the work order template.
a. Select Add Task.
b. On the Task information form, fill in the fields.
Task information form
Field

Description

Task type

Type of task that you want to create. This field is automatically set to Work
Order Task.

Name

Name of the task.

Description Detailed description of the task.
Parts and
quantities

Asset or part that is required for completing the task. If you select a
consumable asset or part, you must also specify the quantity that is required
for completing the task. You can add multiple assets or parts to a single task.

Note: Select the Mandatory check box for every asset or part that is
required for completing the task.
Dispatch
group

Group of agents to whom the task is assigned.

Depends
on

Other tasks that must be completed before this task initiates.

Checklist
template

Checklist template of all items that you must complete as part of the task.

Work type

Type of work that an agent must perform to complete the task. The options
include Break Fix, Calibration, Install, and Planned Maintenance.

c. Repeat steps a and b for each additional task that you want to add to the work order
template.
5. Attach related knowledge base articles to the work order template.
If your work order template is related to any knowledge base articles with useful reference
information, attach the articles to the template.
a. In the Model Knowledges related list, select New.
b. On the Model Knowledge form, select the Lookup using list icon ( ) in the Knowledge field
to search for and select the knowledge base article that you want to attach to the work order
template.
c. Select Submit in the Model Knowledge form header.
d. Repeat steps a to c for each knowledge base article that you want to attach to the work order
template.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1870


<!-- page 1871 -->
6. Select Submit.
The Publish Template dialog box opens.
7. In the dialog box, fill in the fields.
Publish Template dialog box
Field

Description

Category

Field Service Catalog category to which you want to assign the work order
template.

Availability Supported Field Service Catalog format for the work order template. The options
are Desktop Only, Mobile Only, and Desktop and Mobile.
8. Select Publish.

Result

The work order template is added to the Field Service Catalog.

Create a checklist template for your Enterprise Asset Management work
orders
Create a checklist template for your work orders that gets added as a work order template.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

You can either copy from an existing checklist template and edit and add more checklist items or
you can create a template.

Procedure
1. Navigate to Enterprise Asset Workspace > Work Management > Checklist templates.
2. Select New.
3. In the Create checklist template dialog box, fill in the fields.
Field

Description

Name

Name of the checklist template.

Copy from template

List of existing templates that you can copy
from.
The checklist items for the template.

Checklist items

◦ If you selected a template from the Copy
from template list, the checklist items per­
taining to that template automatically ap­
pear. Each checklist item has a name and
order that you can edit. You can add addi­
tional checklist items

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1871


<!-- page 1872 -->
Field

Description

◦ For a new template, specify the name and
order of each checklist item in the Name
and Order fields. You can add multiple
checklist items.
4. Select OK.

Result

The checklist template is created and appears in the Checklist templates list. After a checklist
template is created, it can't be edited and can be used by other applications too.

Delivering enterprise assets in your personal stockroom through Drop off
tasks
As an enterprise asset technician, manage the delivery of enterprise assets that you have in your
personal stockroom to any other warehouse stockroom by creating Drop off tasks. The asset
manager of the destination stockroom receives the assets that you dropped off, verifies the
asset, and completes the Receive and Drop off tasks.
You can drop off enterprise assets that aren't reserved and not part of any Enterprise Asset
Management workflows.
As an enterprise asset technician, you can create drop off tasks in the Enterprise Asset
Workspace or through the Mobile Agent application.
You should perform the following tasks to deliver assets to any stockroom:
Tasks to deliver assets to any stockroom
Interface

Tasks

Enterprise Asset
Workspace

1. Create a Drop off task.

Mobile Agent
application

2. Drop off the assets at the destination stockroom.
Create a Drop off task for enterprise assets using the Mobile Agent
application.

The Drop off task that you submitted completes only when the asset manager of the destination
stockroom completes the following tasks in the Enterprise Asset Workspace or through the
Mobile Agent application.
Tasks to receive assets at a stockroom
Interface

Tasks

Enterprise Asset
Workspace

1. Verify the received assets.

Mobile Agent
application

2. Close the Receive task.
Verify the enterprise assets received through a Drop off task using the
Mobile Agent application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1872


<!-- page 1873 -->
Create a Drop off task for enterprise assets
Create a Drop off task to return the enterprise assets in your personal stockroom to any other
warehouse stockroom.

Before you begin

Role required: sn_eam.enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Work management.
2. Select the My stockroom assets tab.
The list of enterprise assets in your personal stockroom is displayed.
3. Select Schedule drop off.
4. On the form, fill in the fields.
Create New Drop Off task form
Field

Description

Stockroom

Stockroom at which you want to drop off the assets.
This field is required.

Delivery by date Date by when you want to deliver the assets to the destination stockroom.
This field is required.
Assignment
group

Assignment group to which you want to assign the drop off task.

Assigned to

Person from the assignment group who is primarily responsible for the
drop off task.

5. Select Save.

Result

A Drop off task in the Open state is created and listed in the Asset tasks tab.

What to do next

Drop off enterprise assets at a stockroom.
Drop off enterprise assets at a stockroom
Add enterprise assets to a Drop off task and deliver the assets to the required stockroom.

Before you begin

Role required: sn_eam.enterprise_asset_technician

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Work management.
2. Select the Asset tasks tab.
3. From the list of asset tasks, select the drop off task for which you want to add enterprise
assets.
4. Select the Drop off Assets tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1873


<!-- page 1874 -->
5. Select Add.
6. In the Add assets dialog box, select the assets and select Add.
You can only add enterprise assets that are in your personal stockroom and that aren't
reserved and aren't part of any workflows.
The assets added to the drop off task are listed in the Drop off Assets tab.
7. Drop off the assets at the required stockroom.
8. Select Drop off.

Result
• A Receive task is created and assigned to the asset manager of the stockroom where you
dropped off the assets.
• The state of the Drop off task changes to Work in Progress.
Verify the enterprise assets received through a Drop off task
As an asset manager, confirm that you received the enterprise assets that were delivered to your
stockroom and complete the Receive task.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Work management.
2. Select the Asset tasks tab.
3. From the list of asset tasks, select the Receive task for which you want to verify the assets
received.
4. Select the Drop off Assets tab.
The list of assets that were dropped off at your stockroom is displayed.

Note: The Asset received flag is set to false before an asset is verified.
5. Select an asset.
6. Select Verify.
◦ The Asset received flag changes to true.
◦ The Receive date is updated with the date on which you verified the asset.
7. After you verify all the assets, select Close task.

Result

The state of the Receive task and its Drop off task changes to Closed Complete.
Record time worked on Drop off and Receive tasks for enterprise assets
Manage and record time worked on Drop off and Receive asset tasks in the Enterprise Asset
Workspace. After you start work on a task, you can pause and resume work. You can also record
the time worked manually.
Record time worked on a Drop off task or Receive task manually
Create an entry for the time worked on a Drop off or a Receive task manually in the Enterprise
Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1874


<!-- page 1875 -->
Before you begin
Role required:

• To record time worked on a Drop off task: sn_eam.enterprise_asset_technician
• To record time worked on a Receive task: sn_eam.enterprise_asset_manager

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Work management.
2. Select the Asset tasks tab.
3. From the list of asset tasks, select the task for which you want to record time manually.
4. Indicate that you started work on the task by selecting Start Work.
The Start Work option changes to Start Timer and Record Time automatically.
5. Select Record Time.
6. In the Record Time dialog box, enter the details of the time worked.
a. Enter the time duration that you worked on the task in the Days, Hours, and Minutes fields.
b. Optional: Provide any additional information in the Comments field.
7. Select Save.

Result

The Time Worked form is saved and the time card is added to the Time Worked tab of the task.
Pause a Drop off task or Receive task for enterprise assets
Record a break from a Drop off or Receive task in the Enterprise Asset Workspace if you’re not
continuing to work on it.

Before you begin

You can pause a Drop off or Receive task that is in the Work in Progress state. The option to
pause the task is available only after you perform the following actions:
1. Indicate that you have started working on the task by selecting Start Work.
2. Start recording the time by selecting Start Timer.
Role required:
• To record time worked on a Drop off task: sn_eam.enterprise_asset_technician
• To record time worked on a Receive task: sn_eam.enterprise_asset_manager

About this task

You can resume the task when you start working on it again. The system automatically tracks and
calculates the actual time taken to complete the task even though the work was interrupted.

Procedure
1. Navigate to Workspaces > Enterprise Asset Workspace > Work management.
2. Select the Asset tasks tab.
3. From the list of asset tasks, select the task that you want to pause.
4. Select Pause Work.
The Pause Work changes to Resume Work.
5. Select Resume Work when you’re ready to work on the activity again.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1875


<!-- page 1876 -->
Result

Each time you pause or resume work on the task, the actual time you worked on the task is
automatically calculated. An entry for the time worked is created in the Time Worked tab.

Perform condition evaluation from the Enterprise Asset Workspace
Perform condition evaluation to calculate the score and result of the condition attributes from the
Enterprise Asset Workspace.

Before you begin

Role required: sn_eam.asset_technician

About this task

These steps detail the process of performing the condition evaluation from the Enterprise Asset
Workspace. Condition evaluation can also be performed from the Mobile application. For details,
see Perform condition evaluation from a mobile application.

Procedure
1. Navigate to All > Enterprise Asset Workspace > Work management > Work order tasks.
2. Open the condition work task assigned to you.
3. Select Accept and then select Start work.
The status of the work order task changes to Work in Progress
4. Select the Condition lines tab.
The Condition lines page opens. Each condition line has a condition evaluation.
5. Select Condition evaluation for the condition line that you want to assess.
6. Enter a value for the questions in the sections.
7. Select Submit.
8. In the confirmation box, select Submit.
Navigate to the Condition lines page and refresh the page to see that a score and a result are
added to the condition line.
9. Select Close Complete in the Condition work task page.
The Enterprise asset manager can review the asset condition results and view the reports in
the Work management dashboard. For more details, see Review the asset condition results.

Perform condition evaluation from a mobile application
Perform condition evaluation to calculate the score and result of the condition attributes from a
mobile application.

Before you begin

Role required: sn_eam.asset_technician

About this task

Before proceeding with this task, ensure that an asset condition work order task for an asset has
been created and assigned to the technician.
These steps detail the process of performing the condition evaluation from a mobile application.
Condition evaluations can also be performed from the Enterprise Asset Workspace. For details,
see Perform condition evaluation from the Enterprise Asset Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1876


<!-- page 1877 -->
Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen opens with the list of tasks assigned to you.
3. Tap the work order task for which you want to take action.
4. Tap the View asset conditions tab to see all the condition lines associated with the asset.
Initially all the condition lines are in an open state and each condition line is associated with a
template.
5. Tap a condition line record.
The mobile UI of the condition evaluation that is associated with the corresponding condition
line opens.
6. Tap Next and answer the questions.
7. Tap Submit once you have answered all the questions.
The score gets calculated and populated on the condition line record that moves to the
completed state, and a pass or fail determination is made based on the scores. If the pass and
fail criteria wasn’t defined on a condition line, then the score displays as NA.
After all the condition lines are completed, the Close button appears in the Asset condition
work task screen.
8. Tap Close to close the work order task.

Using Service Catalog for Enterprise Asset Management requests
and flows
Use the Service Catalog application to create catalog requests for the Enterprise Asset
Management application.

Overview of using Service Catalog
Use the Service Catalog for creating catalog requests for Enterprise Asset Management flows.

Task

Role required

Resource

Deploy, source, and request
catalog items for the
Enterprise request flow

Use an enterprise asset
request flow

Track and replace assets by
using the Enterprise Asset
refresh flow

Request an enterprise asset
refresh

Resell your assets using the
Asset resale flow.

Create an asset resale flow

Onboard multiple assets at
one go

Create a catalog request for
onboarding multiple assets

Reclaim enterprise assets

Create a catalog request to
reclaim enterprise assets

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1877


<!-- page 1878 -->
Use an enterprise asset request flow
Use an enterprise asset request flow for requesting, sourcing, and deploying catalog items from
the Service Catalog application.

Before you begin

Before requesting for an enterprise asset, ensure that you have already created a model for
that asset in the Enterprise Asset Workspace and published that model to the Service Catalog
application.
Role required:
• catalog_admin
• procurement_admin
• sn_eam.enterptrise_asset_manager
• sys_admin

About this task

Create a request for an enterprise catalog item from the Service Catalog application. Associate
the catalog item with the Standard Enterprise Asset Request flow to trigger the flow.
The Workflow Studio application is used to create the Standard Enterprise Asset Request flow
to take you through the process of sourcing, procuring, and deploying your enterprise catalog
items. As the flow takes you through the various stages, the asset details are automatically
updated. You can open the Standard Enterprise Asset Request flow to view the status of the
stages in the flow.

Procedure
1. Log in with credentials for the role of catalog_admin and navigate to Service Catalog >
Maintain Items.
2. Open the enterprise catalog item and in the Flow field, select Standard Enterprise Asset
Request.
If the Flow field is not visible, add it to the form layout by right-clicking the menu icon and
navigating to Configure > Form layout.
3. Select Save.
The Standard Enterprise Asset Request flow is now associated with the enterprise catalog
item.
4. Navigate to the Service Catalog application.
5. Login with credentials for the role of sys _admin role and add the Enterprise Assets catalog.
The Enterprise Assets catalog is not on the Service Catalog page by default. To add this
catalog, select the Add Content icon
Enterprise Assets

) beside the search catalog bar and then select

6. Login with credentials for the role of sn_eam.enterptrise_asset_manager and select the
Enterprise Assets catalog.
The Enterprise Assets page opens.
7. Select your catalog item from the list.
The catalog item page opens.
8. In the Location field, select the location in which you want to deploy the catalog item.
9. Select Order Now.
10. Log in with credentials for the role of procurement_admin and open the new request.
11. In the Requested Items related list, select the request item.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1878


<!-- page 1879 -->
12. Select the Catalog Tasks related list to view the sourcing task for the request.
13. Open the catalog task and select Source Request.
14. In the Source Request form layout, select Add Transfer Order or Add Purchase Order to
source the request via a transfer order or a purchase order.
After you procure the catalog item, the Asset pick task is created for the Requested item only
if the asset is sourced from the stockroom that has the Asset pick task enabled. Otherwise the
Deployment task is created for the Requested item without the Asset pick task. For details, see
Enable the Asset pick task for your stockroom in the Hardware Asset Workspace.
15. Select the Requested items related list and select the requested item.
16. Select the Catalog Tasks related list.
◦ If the Pick task is enabled for the source stockroom, complete the Asset pick task first and
then complete the Deploy task.
◦ If the Pick task isn't enabled,complete the Deploy task.
17. Complete the Asset pick task using the Mobile Agent application.
For details on completing this step, see Manage enterprise asset pick tasks using the Mobile
Agent application.
The Deployment task is created for the requested item.
18. Enter a value in the Assigned to field, and select Deploy Asset.
If it's a serialized asset, it's marked as In use state. If it’s a consumable asset, it’s marked as
Consumed state. In the Standard Enterprise Asset Request flow, the action that is associated
with deploying the assets is now complete.

Request an enterprise asset refresh
Use the Enterprise Asset Refresh flow to track the assets that are nearing the end of their life
cycle and replace them with new assets.

Before you begin

Role required: inventory_user

About this task

When assets get old, their maintenance costs and risks of failure increase, while their
performance decreases. You can choose to replace old assets with the same or different models
of newer assets. After your Enterprise Asset Refresh request is approved, the Enterprise Asset
Refresh flow takes you through sourcing and triggers the Enterprise Asset Refresh Line flow.
The Enterprise Asset Refresh Line flow uses Refresh Line tasks to take you through the steps of
preparing the new asset, scheduling it for delivery, deploying it, and reclaiming the aged asset.
The Workflow Studio application is used to create the Enterprise Asset Refresh flow and the
Enterprise Asset Refresh Line flow.

Procedure
1. Navigate to the Service Catalog application.
2. Login with credentials for the role of sys _admin role and add the Enterprise Asset Lifecycle
catalog.
The Enterprise Asset Lifecycle catalog is not on the Service Catalog page by default. To add
this catalog, select the Add Content icon
Enterprise Asset Lifecycle.

) beside the search catalog bar and then select

3. Login with credentials for the role of sn_eam.enterptrise_asset_manager and select the
Enterprise Asset Lifecycle catalog.
The Enterprise Asset Lifecycle page opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1879


<!-- page 1880 -->
4. Navigate to Service Catalog > Enterprise Asset Lifecycle.
The Enterprise Asset Lifecycle catalog is not on the Service Catalog page by default. To add
this category, select the add content icon (
Enterprise Asset Lifecycle.

) beside the search catalog bar and then select

5. Open Enterprise Asset Refresh Order.
6. If you want to replace all the aged enterprise assets with the same model of new enterprise
assets, do the following:
a. Select Single model from the Type of refresh list field.
b. On the form, fill in the fields.
Enterprise Asset Refresh form
Field

Description

Location

Physical location of the aged enterprise
assets.

Replacement model

New enterprise asset model that you want to
replace the aged enterprise assets with.

Note: For single and multi-model
refresh orders, the OT manager can
edit the replacement model even after
the refresh order has been created in
the OTAM workspace
Assets

Aged enterprise assets that you want to
replace. You can use a filter to search for
enterprise assets that you want to replace.

Available

Displays only those assets for which the
Eligible for Refresh check box on the Asset
page is selected. To view all assets that
are nearing their end of life, execute the
condition Eligible for refresh is
false.

Note: For details on the Eligible for

Refresh check box, see Asset fields for
enterprise assets.

7. If you want to replace the aged hardware assets with different models of new hardware assets,
do the following:
a. Select Multi model from the Type of refresh field.
b. Select Add.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1880


<!-- page 1881 -->
c. For each new enterprise asset that you want to use, add a row to enter the enterprise model.

Note: You can create 50 rows. You cannot create multiple rows for the same aged
hardware asset that you want to replace.
8. Select Order Now.
An Order status page appears and displays the details of the order. A request is created to
source the new enterprise assets and to replace the aged enterprise assets. The Request form
shows the total price of all the new enterprise asset models.
Replace aged enterprise assets
Replace aged enterprise assets by sourcing new enterprise assets.

Before you begin

Role required: inventory_user

About this task

When refreshing enterprise assets, you don't have to manually update the asset records. When
closing the enterprise asset refresh lines, the asset records and the assets are automatically
updated. Close each task to go to the next task, complete the refresh, and reclaim the aged
assets.
After sourcing the new assets, asset refresh is completed through the following stages:
• Prepare asset task: Prepare the new asset before you hand it over to the user. For example,
install any software that's required.
• Schedule refresh task: Schedule a date to hand over the asset to the requester.
• Deploy new asset: Hand over the asset to the requester or install the asset at the requester's
location if necessary.
• Reclaim aged asset: Collect the aged asset.

Procedure
1. Select the hardware asset refresh request.
Interface

Action

a. Navigate to All > Service Catalog > Open
Record > Requests.
Core UI

b. Select the request number of the enter­
prise asset refresh request that you want to
fulfill.
a. Navigate to All > Enterprise Asset Work­
space > Procurement view.

Enterprise Asset Workspace

b. Select the Requests tab.
c. Select the request number of the enter­
prise asset refresh request that you want to
fulfill.

After your enterprise asset refresh request is approved, the following events happen:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1881


<!-- page 1882 -->
◦ The Source Request flow is triggered to source new assets.
◦ In the Catalog Tasks tab, a catalog task is created for the procurement of the new enterprise
asset.
2. Under the Requested Item related list, open a requested item.
After your enterprise asset request is approved, the Source Request flow is triggered. Under
the Catalog tasks related list, a catalog task is created for the procurement of the new
enterprise assets.
3. Source items in the request.
You can source items in the request by consuming the local stock, through purchase orders, or
through transfer orders.
For more details on sourcing items, see Sourcing items in a service catalog request.
After the new asset is received, the following events happens:
◦ The Enterprise Asset Refresh Line flow is triggered for the asset.
◦ The Enterprise Asset Refresh Line tab is displayed next to the Asset Tasks tab on the
requested item form.
◦ The Asset pick task is created under the Refresh Line Tasks only if the requested item is
consumed from the local stockroom for which the Asset pick task is enabled. Otherwise the
Prepare asset task is created directly without the Pick task. For details, see Enable the Asset
pick task for your stockroom in the Enterprise Asset Workspace.
4. Select the Enterprise Asset Refresh Line tab.
5. Select the enterprise asset refresh line.
6. Select the Refresh line tasks tab.
7. Complete the Asset pick task by using the Mobile Agent application.
For details on completing this step, see Locate and pick the enterprise assets in your
stockroom using the Mobile Agent application.
8. Prepare the asset.
a. Select the Prepare asset task.
b. In the Asset field, select the enterprise asset that you want to replace.
c. Select Save.
d. Select Close Task.
◦ A Schedule refresh task is created under the Refresh Line Tasks.
◦ The state of the Replacement asset changes to In stock.
◦ The substate changes to Reserved.
◦ The Reserved for field is populated with the requester details.
9. Complete the Schedule refresh task.
a. Select the Schedule refresh task.
b. In the Scheduled deployment date field, select the date on which the new asset will be
deployed.
c. Select Close Task.
◦ The Deploy new asset task is created under the Refresh Line Tasks.
◦ The state of the Replacement asset changes to In stock and the substate changes to
Pending install.
10. Complete the Deploy new asset task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1882


<!-- page 1883 -->
a. Select the Deploy new asset task.
b. Confirm if you have reclaimed the old asset in the Is reclaimed list.
▪ If you’ve collected the aged asset, select Yes.
▪ If you didn’t collect the aged asset, select No.
c. Select Close task.

Note: If you select Yes from the Is reclaimed list, then the Reclaim aged asset task is
also closed by default.
◦ Reclaim aged asset task is created under the Refresh Line Tasks.
◦ The state of the replacement asset changes to In use.
◦ The allocations are transferred from the aged asset to the replacement asset.
11. Complete reclaiming the aged assets.
a. Select the Reclaim aged asset task.
b. Confirm if you have reclaimed the old asset in the Is reclaimed list.
▪ If you’ve collected the aged asset, select Yes.
▪ If you didn’t collect the aged asset, select No.
c. Select Close task.

Note: You can cancel the enterprise asset Refresh Line either by selecting Cancel or by
changing the State field to Closed Incomplete in the Refresh Line task.

Result

After the aged enterprise asset is reclaimed, the following changes happen on the asset form:
• The state of the aged asset changes to In stock.
• The substate changes to Pending disposal.

Create an asset resale flow
Create an asset resale flow for an asset to be resold in order to reduce waste and save cost.

Before you begin

Role required: sn_eam.enterprise_asset_manager

About this task

The asset vendor must confirm which assets can be resold and how much they are worth.
Only assets that are in a non-terminal state, which is any state in which the asset can transition
into a different state, can be resold through a enterprise resale order. Each asset must also be
associated with either an enterprise model or pallet model. You can add simple assets; multicomponent assets, which include pre-assembled and user-assembled assets; and pallet assets
with children to an enterprise resale order.

Note: If you are adding a pallet asset with children to a resale order, any changes that you
make to the pallet asset are automatically applied to all child assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1883


<!-- page 1884 -->
Procedure
1. Navigate to the Service Catalog > Enterprise Asset Lifecycle.
2. Select Enterprise Resale Order.
3. On the form, fill in the fields.
4. Add assets and submit the order.
Once the asset resale request is submitted, you can fulfill the request by navigating to the
Enterprise Asset Workspace.
5. Navigate to Inventory > Resale orders.
6. Next go through each task.
7. Select Verify Asset to select assets and verify them.
Before completing the Verify Asset task, you can add or remove assets from the disposal order.
You can also edit the quantity of consumables.
8. Select Close task.
The next task in the workflow, Schedule pickup, is automatically created and appears in the
Enterprise Asset Resale Tasks tab
9. Select Schedule Pickup to specify when the asset can be picked up from the stockroom as
well as the vendor details
10. Select Close task.
The stage changes to in transit and the Asset departure task is created.
11. Select the Asset departure task and select each asset departing for resale as well as pickup
contact details,
12. Select Close task.
The stage changes to confirmation and the Vendor confirmation task is created.
13. Select the Vendor confirmation task once the vendor confirms that the assets were received.
14. Select Close task.
The stage changes to documentation and a Resale Documentation task is created.

Create a catalog request for onboarding multiple assets
Create a catalog request for onboarding multiple assets on a single model.

Before you begin

Role required: enterprise_asset_technician

About this task

A minimum of one asset is required to submit a catalog request. Each catalog request may
include a maximum of 50 assets.

Procedure
1. Navigate to Service Portal > Request Something > Enterprise Asset Lifecycle.
You can also navigate to the Enterprise Asset Lifecycle via the Service Catalog.
2. Select Assets Onboarding.
The Asset Onboarding page opens.
3. On the form, fill in the fields.
Field

Description

Due by

Date by when the asset onboarding must be
complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1884


<!-- page 1885 -->
Field

Description

This field is optional.
Person for whom the asset is requested.
Requested for
Stockroom

This field is optional.
Select a stockroom for the assets.
Select this check box for a new model you
want to create. Once selected, enter the fol­
lowing information.
◦ Manufacturer
◦ Model name

Is new model?

◦ Model number
◦ Short description

Note: The above information is collect­
ed for creating a model record. The mod­
el record gets created in the Enterprise
Asset Workspace.
Model

Select an existing model record for the as­
sets.
Select to enter information for creating new
assets. In the Add Row dialog box, enter the
following information and then select Add:
◦ Serial number
◦ Asset tag
◦ MAC address

Add

◦ RFID tag
◦ Comments
To enter another asset, select Add again.

Note: The above information is col­
lected for creating an asset. The asset
record gets created Enterprise Asset
Workspace by the enterprise asset man­
ager.

4. Select Submit.
After the catalog request is submitted, a requested item is created. An asset onboarding task is
also created associated to the requested item which triggers the multi-asset playbook.

What to do next

The enterprise_asset_manager role can launch the multi-asset playbook from the Enterprise
Asset Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1885


<!-- page 1886 -->
Create a catalog request to reclaim enterprise assets
Create a catalog request to efficiently reclaim enterprise assets when an employee leaves an
organization or moves to a different role.

Before you begin

Role required: any employee in your organization.

Procedure
1. Navigate to the Service Catalog application.
2. On the Service Catalog page, enter Reclaim asset in the Search catalog field on the righthand side of the page.
3. Select Reclaim Asset.
4. On the form, fill in the fields.
Reclaim Asset form
Fields

Requested by

Description

The role of the person who is creating this
request. Select from the following options:
◦ HR
◦ Manager
◦ User
◦ Asset Manager (only if the request is being
created by the enterprise_asset-manager
role or the asset role)

Requested for

Name of the person for who you are
submitting the catalog request.

Note: This field is not mandatory if
the request is being created by the
enterprise_asset_manager role.
Employee separation

Whether the person for who you are
submitting the asset reclamation is leaving
the organization or moving to a different role.

Asset

Assets assigned to the person for who you
are submitting the asset reclamation.

Reclaim date

The date by which you want the asset
reclaimed by. You can enter today's date or a
date in the future.

Reclaim method

The method you intend to use to collect the
assets from the departing employee. You can
pick up the assets, the employee can drop
them off, or ship them to the organization.

Legal hold method

If the assets need to be kept on hold because
of any legal reasons.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1886


<!-- page 1887 -->
Fields

Description

Notes/Special instructions

Any instructions that you may want to
mention.

5. Select Submit.
The enterprise asset reclamation request is created. Once the request is created, the
enterprise_asset_technician role navigates to the Enterprise Asset Workspace to view the
reclamation line and complete the tasks. For more details, see Close an enterprise asset
reclamation request.

Managing enterprise assets and tasks using the Mobile Agent
application
Create and manage enterprise assets, asset tasks, and work order tasks using the intuitive
Mobile Agent application.

Overview of the Mobile Agent application
Use the Mobile Agent application to perform the following tasks.

Task

Create and lookup enterprise
asset

Role required

Resource

• Create an enterprise
asset in the Mobile Agent
application
• Look up enterprise assets
using the Mobile Agent
application

Scan enterprise assets for
stockroom and location
inventory audits

• Scan enterprise assets for
stockroom inventory audits
using the Mobile Agent
application
• Scan enterprise assets for
location inventory audits
using the Mobile Agent
application

Verify and depart your
enterprise assets as part of
the disposal process

Verify and depart your
enterprise assets for disposal
using the Mobile Agent
application

Manage your work order tasks
and asset tasks

Manage an Enterprise Asset
Management task using the
Mobile Agent application

Manage the repair of your
enterprise assets

Manage enterprise asset
repair tasks using the Mobile
Agent application

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1887


<!-- page 1888 -->
Task

Role required

Manage the asset pick tasks
assigned to you.

Resource

Manage enterprise asset pick
tasks using the Mobile Agent
application

Create an enterprise asset in the Mobile Agent application
®

Use the ServiceNow Mobile Agent application to create a serialized or multi-component
enterprise asset.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

About this task

Important: The enterprise assets that you create through the Mobile Agent application
can be associated only with enterprise models that are classified through the Enterprise
good model [sn_ent_model] class within the Configuration Management Database (CMDB)
class hierarchy. See Expanded Model and Asset Classes Store application for more
information on enterprise model classes.

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the Enterprise Asset tab.
The navigation bar displays tabs for the ServiceNow applications and applets that you have
access to through the Mobile Agent application. The navigation bar also displays tabs for your
Mobile Agent application settings and notifications.
The home screen for the Enterprise Asset Management application opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1888


<!-- page 1889 -->
3. Tap Create Asset.
The Serial Number screen opens.
4. Optional: If your enterprise asset contains a serial number, scan or enter the serial number to
verify if the asset already exists.
If you want to skip this verification, tap the back arrow at the top left corner of the screen to
proceed directly to the Create Asset form. You can then proceed either to step 5 to verify the
asset existence based on asset tags or to step 6 to skip both verifications and continue with
the asset creation process.
a. Use the camera on your mobile device to scan the serial number.
You can also enter the serial number manually in the Serial Number field.
b. Depending on whether the enterprise asset exists or not, proceed with one of the following
options:
▪ If the enterprise asset already exists, verify the asset details in the corresponding asset
record:
i. Return to the home screen for the Enterprise Asset Management application.
ii. (Optional) Tap Asset lookup.
The Asset lookup screen opens.
iii. Use the camera on your mobile device to scan the asset tag of the enterprise asset.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1889


<!-- page 1890 -->
iv. (Optional) Tap Submit.
v. (Optional) From the list of corresponding asset records, tap the asset record through
which you want to verify the asset details.
The asset record opens.
vi. Verify all asset details for the given enterprise asset.
vii. Update any asset details if needed.
▪ If the enterprise asset does not already exist, proceed to step 7 to continue with the asset
creation process.
5. Optional: If your enterprise asset contains an asset tag, scan the asset tag or enter the asset
tag value to verify if the asset already exists.
If you want to skip this verification, proceed directly to step 6 to continue with the asset
creation process.
a. On the Create Asset form, tap the Asset Tag field.
b. Use the camera on your mobile device to scan the asset tag.
You can also enter the asset tag value manually in the Asset Tag field.
c. Depending on whether the enterprise asset exists or not, proceed with one of the following
options:
▪ If the enterprise asset already exists, verify the asset details in the corresponding asset
record:
i. Return to the home screen for the Enterprise Asset Management application.
ii. (Optional) Tap Asset lookup.
The Asset lookup screen opens.
iii. Use the camera on your mobile device to scan the asset tag of the enterprise asset.
iv. (Optional) Tap Submit.
The list of corresponding asset records opens.
v. (Optional) Tap the asset record through which you want to verify the asset details.
The asset record opens.
vi. Verify all asset details for the given enterprise asset.
vii. Update any asset details if needed.
▪ If the enterprise asset does not already exist, proceed to step 7 to continue with the asset
creation process.
6. On the Create Asset form, tap Submit.
The complete list of your enterprise assets opens.
7. Tap the more options menu at the top right corner of the screen.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1890


<!-- page 1891 -->
8. When the menu opens, tap Create Asset.
The Asset Tag screen opens.
9. Depending on whether your enterprise asset does or does not contain an asset tag, proceed
with one of the following options:
◦ If your enterprise asset contains an asset tag, use the camera on your mobile device to scan
the tag. You can also enter the asset tag value manually in the Asset Tag field. After you
successfully scan the asset tag or enter the asset tag value, tap the back arrow at the top left
corner of the screen to proceed to the Create Asset form. The Asset Tag field on the Create
Asset form automatically updates with the asset tag value that you scanned or entered.
◦ If your enterprise asset does not contain an asset tag, tap the back arrow at the top left
corner of the screen to skip the asset tag scan and proceed directly to the Create Asset
form.
10. If your enterprise asset contains a serial number, scan or enter the serial number.
a. On the Create Asset form, tap the Serial Number field.
The Serial Number screen opens.
b. Use the camera on your mobile device to scan the serial number.
You can also enter the serial number manually in the Serial Number field.
c. Tap the back arrow at the top left corner of the screen to return to the Create Asset form.
The Serial Number field on the Create Asset form automatically updates with the serial
number that you scanned or entered.
11. Associate the enterprise asset with an enterprise model.
a. On the Create Asset form, tap the Model field.
The Model screen opens.
b. From the list of available enterprise models, select the model that you want to associate the
enterprise asset with.
The screen closes and you return to the Create Asset form.
The Model field on the Create Asset form automatically updates with the enterprise model that
you selected.
12. Specify the state of the enterprise asset.
a. On the Create Asset form, tap the State field.
The State screen opens.
b. From the list of available states, select the current state of the enterprise asset.
The screen closes and you return to the Create Asset form.
The State field on the Create Asset form automatically updates with the state that you
selected. Based on this selected state, additional fields appear on the Create Asset form.
13. Based on the enterprise asset state that you specified in step 11, fill in the additional fields that
appear on the Create Asset form.
14. Tap Submit.
The form closes and you automatically return to the home screen for the Enterprise Asset
Management application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1891


<!-- page 1892 -->
Result

The enterprise asset is created along with a corresponding configuration item (CI).

Look up enterprise assets using the Mobile Agent application
®

Use the ServiceNow Mobile Agent application to look up asset records so that you can view or
update your enterprise asset details.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the Enterprise Asset tab.
The navigation bar displays tabs for the ServiceNow applications and applets that you have
access to through the Mobile Agent application. The navigation bar also displays tabs for your
Mobile Agent application settings and notifications.
The home screen for the Enterprise Asset Management application opens.

3. Tap Asset lookup.
The Asset lookup screen opens.
4. Use the camera on your mobile device to scan the asset tag of the enterprise asset that you
want to look up.
You can also enter the asset tag value manually in the Asset tag field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1892


<!-- page 1893 -->
5. Tap Submit.
The list of corresponding asset records opens.
6. Tap the asset record that you want view or update.
The asset record opens.
7. View or update the asset details as needed.

Scan enterprise assets for stockroom inventory audits using the Mobile Agent
application
®

Use the ServiceNow Mobile Agent application to scan the enterprise assets that you want
to include in your stockroom inventory audits. After you scan all enterprise assets, you can
complete the audit on your ServiceNow instance. Use your audit results to understand where
your enterprise assets are located and what their current status is.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the Enterprise Asset tab.
The navigation bar displays tabs for the ServiceNow applications and applets that you have
access to through the Mobile Agent application. The navigation bar also displays tabs for your
Mobile Agent application settings and notifications.
The home screen for the Enterprise Asset Management application opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1893


<!-- page 1894 -->
3. Tap Stockroom audits.
The Stockroom audits screen opens, where you can view all open and completed audits.
4. If the desired stockroom audit does not already exist, open a new stockroom audit.
a. Tap the more options menu at the top right corner of the screen.
b. When the menu opens, tap New stockroom audit.
The New stockroom audit screen opens.
c. Select the stockroom that you want to audit.
d. Optional: In the Aisle space field, select the aisle and space within the stockroom where
you want to perform the audit.
e. Optional: In the Model category field, select the model category that you want to audit.
f. Tap Submit.
You automatically return to the Stockroom audits screen, which displays the new stockroom
audit on the Open tab.
5. On the Open tab, tap the stockroom audit that you want to complete.
The stockroom audit record opens.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1894


<!-- page 1895 -->
6. On the Details tab of the stockroom audit record, tap Scan.
The Asset scan screen opens.
7. Use the camera on your mobile device to scan the asset tag of the enterprise asset that you
want to include in the audit.
You can also enter the asset tag value manually in the Asset Tag field.
8. Tap the Enter key on the keyboard of your mobile device.
The enterprise asset is automatically added to the Review tab of the Asset scan screen.
9. Repeat steps 7 and 8 for every enterprise asset that you want to include in the audit.
10. After you scan or enter the asset tag value for all desired enterprise assets, go to the Review
tab to verify the complete list.
If you want to remove any enterprise assets from the list, tap the Delete icon (
enterprise asset.

) for that

11. Tap Submit.
The Asset scan screen closes and you automatically return to the stockroom audit record.
On the Details tab of the stockroom audit record, the Expected, Not expected and location
corrected, Missing, and New fields update based on the enterprise assets that you just
scanned or entered the asset tag value for.
12. Tap the more options menu at the top right corner of the screen.
13. When the menu opens, tap Complete.

What to do next

Complete the inventory audit on your ServiceNow instance. See Audit enterprise asset inventory
for detailed instructions.

Scan enterprise assets for location inventory audits using the Mobile Agent
application
®

Use the ServiceNow Mobile Agent application to scan the enterprise assets that you want to
include in your location inventory audits. After you scan all enterprise assets, you can complete
the audit on your ServiceNow instance. Use your audit results to understand where your
enterprise assets are located and what their current status is.

Before you begin

Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the Enterprise Asset tab.
The navigation bar displays tabs for the ServiceNow applications and applets that you have
access to through the Mobile Agent application. The navigation bar also displays tabs for your
Mobile Agent application settings and notifications.
The home screen for the Enterprise Asset Management application opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1895


<!-- page 1896 -->
3. Tap Location audits.
The Location audits screen opens, where you can view all open and completed audits.
4. If the desired location audit does not already exist, open a new location audit.
a. Tap the more options menu at the top right corner of the screen.
b. When the menu opens, tap New location audit.
The New location audit screen opens.
c. Select the location that you want to audit in the Location field.
d. If you also want to audit the child locations of your selected location, enable the Include
child locations option.

Note: When you enable this option, you can also include the following assets in your
audit:
▪ Child assets of user-assembled enterprise assets
▪ Add-on assets of pre-assembled and simple enterprise assets
▪ Assets that are stored within pallets
e. Optional: In the Model category field, select the model category that you want audit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1896


<!-- page 1897 -->
f. Tap Submit.
You automatically return to the Location audits screen, which displays the new location audit
on the Open tab.
5. On the Open tab, tap the location audit that you want to complete.
The location audit record opens.
6. On the Details tab of the location audit record, tap Start audit.
7. Tap the back arrow at the top left corner of the location audit record to return to the Location
audits screen.
8. On the Open tab of the Location audits screen, tap the location audit that you just started.
The location audit record opens.
9. On the Details tab of the location audit record, tap Scan.
The Asset scan screen opens.
10. Use the camera on your mobile device to scan the asset tag of the enterprise asset that you
want to include in the audit.
You can also enter the asset tag value manually in the Asset Tag field.
11. Tap the Enter key on the keyboard of your mobile device.
The enterprise asset is automatically added to the Review tab of the Asset scan screen.
12. Repeat steps 7 and 8 for every enterprise asset that you want to include in the audit.
13. After you scan or enter the asset tag value for all desired enterprise assets, go to the Review
tab to verify the complete list.
If you want to remove any enterprise assets from the list, tap the Delete icon (
enterprise asset.

) for that

14. Tap Submit.
The Asset scan screen closes and you automatically return to the location audit record. On the
Details tab of the location audit record, the Expected, Not expected and location corrected,
Missing, and New fields update based on the enterprise assets that you just scanned or
entered the asset tag value for.
15. Tap the more options menu at the top right corner of the screen.
16. When the menu opens, tap Complete.

What to do next

Complete the inventory audit on your ServiceNow instance. See Audit enterprise asset inventory
for detailed instructions.

Verify and depart your enterprise assets for disposal using the Mobile Agent
application
®

Use the ServiceNow Mobile Agent application to complete the verification and departure of any
enterprise assets that you want to dispose of.

Before you begin

Before you can complete the verification or departure of an enterprise asset, create a disposal
order for that asset. See Create a disposal order in the Enterprise Asset Workspace for detailed
instructions.
Role required: sn_eam.enterprise_admin or sn_eam.enterprise_asset_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1897


<!-- page 1898 -->
Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the Enterprise Asset tab.
The navigation bar displays tabs for the ServiceNow applications and applets that you have
access to through the Mobile Agent application. The navigation bar also displays tabs for your
Mobile Agent application settings and notifications.
The home screen for the Enterprise Asset Management application opens.

3. Tap Asset disposal.
The Asset disposal screen opens, where you can view all open verification and departure
tasks for your enterprise asset disposal orders.
4. If the enterprise assets that are associated with a disposal order require verification, complete
the verification task for that disposal order.
a. On the Verifications tab, tap the verification task that you want to complete.
The Verifications screen opens.
b. Tap the Not verified field to view the complete list of enterprise assets that require
verification through this verification task.
c. Tap the back arrow at the top left corner of the screen to return to the Verifications screen.
d. Tap Scan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1898


<!-- page 1899 -->
The Scan and verify assets screen opens.
e. Use the camera on your mobile device to scan the asset tag of the enterprise asset that you
want to verify.
You can also enter the asset tag value manually in the Asset Tag field.
f. Tap the Enter key on the keyboard of your mobile device.
The enterprise asset is automatically added to the Review tab of the Scan and verify assets
screen.
g. Repeat steps e and f for every enterprise asset that you want to verify.
h. After you scan or enter the asset tag value for all desired enterprise assets, go to the Review
tab to verify the complete list.
If you want to remove any enterprise assets from the list, tap the Delete icon (
enterprise asset.

) for that

i. Tap Submit.
The Scan and verify assets screen closes and you automatically return to the Verifications
screen. On the Verifications screen, the Expected, Verified, and Not verified fields update
based on the enterprise assets that you just scanned or entered the asset tag value for.
j. Tap Complete.
The Verifications screen closes and you automatically return to the Asset disposal screen.
5. If the enterprise assets that are associated with a disposal order require departure, complete
the departure task for that disposal order.
a. On the Departures tab, tap the departure task that you want to complete.
The Departures screen opens.
b. Tap the Not departed field to view the complete list of enterprise assets that require
departure through this departure task.
c. Tap the back arrow at the top left corner of the screen to return to the Departures screen.
d. Tap Scan.
The Scan and depart assets screen opens.
e. Use the camera on your mobile device to scan the asset tag of the enterprise asset that you
want departed.
You can also enter the asset tag value manually in the Asset Tag field.
f. Tap the Enter key on the keyboard of your mobile device.
The enterprise asset is automatically added to the Review tab of the Scan and depart assets
screen.
g. Repeat steps e and f for every enterprise asset that you want departed.
h. After you scan or enter the asset tag value for all desired enterprise assets, go to the Review
tab to verify the complete list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1899


<!-- page 1900 -->
If you want to remove any enterprise assets from the list, tap the Delete icon (
enterprise asset.

) for that

i. Tap Submit.
The Scan and depart assets screen closes and you automatically return to the Departures
screen. On the Departures screen, the Expected, Departed, and Not departed fields update
based on the enterprise assets that you just scanned or entered the asset tag value for.
j. Tap the Pickup contact name field.
The Pickup contact name screen opens.
k. In the Pickup Contact Name field, enter the name of the person who is picking up the
enterprise assets for departure.
l. Tap Submit.
The Pickup contact name screen closes and you automatically return to the Departures
screen. On the Departures screen, the Pickup contact name field updates with the name
that you entered.
m. Tap Complete.
The Departures screen closes and you automatically return to the Asset disposal screen.

What to do next

Complete the remaining disposal order tasks on your ServiceNow instance. See Enterprise asset
disposal order stages for more information on enterprise asset disposal order tasks.

Manage an Enterprise Asset Management task using the Mobile Agent
application
Manage all your work order tasks and asset tasks using the intuitive Mobile Agent application.
View your tasks using the Mobile Agent application
View your work order tasks, asset tasks, and asset repair tasks using the Mobile Agent
application.

Before you begin

Role required: sn_eam.enterprise_admin, sn_eam.enterprise_asset_manager, or
sn_eam.enterprise_asset_technician

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. View all the tasks assigned to you by selecting See all.
4. Optional: Filter your tasks by field values.
a. Tap the Filter icon (

).

b. Enter values in the fields by which you want to filter your task: Due Date, Asset, Location, or
Priority.
5. Optional: Sort your tasks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1900


<!-- page 1901 -->
a. Tap the Filter icon (

).

b. Tap Sort by.
c. Select the fields by which to sort your tasks.
Assign a group task to yourself using the Mobile Agent application
Claim tasks to work on from the tasks assigned to your assignment group through the Mobile
Agent application.

Before you begin
Role required:

• To work on a work order task: wm_agent and sn_eam.enterprise_asset_technician
• To work on Pick Up Asset task: sn_eam.enterprise_asset_technician

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with a My group task link and the first few
tasks in the list of tasks assigned to you displayed.
3. View the list of tasks assigned to your group by tapping My group task.
4. Tap the task that you want to assign to yourself and then tap Assign to me.

Result

The assigned task is shown in your My Tasks list.
Start working on tasks using the Mobile Agent application
Indicate in the Mobile Agent application when you start work on a task assigned to you. When
you start working on the task, the start time is automatically recorded.

Before you begin
Role required:

• To work on a work order task: wm_agent and sn_eam.enterprise_asset_technician
• To work on Pick Up Asset task: sn_eam.enterprise_asset_technician

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task you want to start isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1901


<!-- page 1902 -->
5. Tap the task that you want to start.
6. On the Details tab, tap Start Work.

Result
• In the Details tab, the Start Work link changes to Complete Work automatically.
• The more actions icon ( ) with the Pause work and Record time options is displayed in the
top-right corner of the screen.
• The start time is automatically recorded.
Record time worked on a task using the Mobile Agent application
Manage and record time worked on work order tasks and asset tasks. After you start working on a
task, you can pause and resume work. You can also record the time worked manually.
Pause a task using the Mobile Agent application
Record a break from a work order task or asset task in the Mobile Agent application if you’re
not continuing to work on it. Resume the task when you start working on it again. The system
automatically tracks and calculates the actual time taken to complete the task even though the
work was interrupted.

Before you begin
The work.management.allow.auto.timecard system property must be enabled for the
time cards to be automatically created when you start working on a task.
Role required:
• To work on a work order task: wm_agent and sn_eam.enterprise_asset_technician
• To work on Pick Up Asset task: sn_eam.enterprise_asset_technician

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task you want to pause isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the task record that you want to pause.
6. Tap the more actions icon ( ) at the top right corner of the screen and then tap Pause work.
On the Details tab, the Close complete option changes to Resume work.
7. Tap Resume Work when you’re ready to work on the activity again.

Result

Each time you pause or resume work on the task, the actual time you worked on the task is
automatically calculated. An entry for the time worked is created in the Time worked time card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1902


<!-- page 1903 -->
Record time worked for a task manually using the Mobile Agent application
Record time worked on a work order task or asset task manually and provide any additional
comments on the task using the Mobile Agent application.

Before you begin

Role required: wm_agent or sn_eam.enterprise_asset_manager

About this task

You can record time for a work order task or an asset task that is in progress.

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task for which you want to record time isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the task record for which you want to record time.
6. Navigate to Record time from the more actions icon (
◦ Tap the more actions icon (
time.

) or the Details tab.

) at the top right corner of the screen and then tap Record

◦ On the Details tab, tap Record time.
7. On the Record time screen, specify the details of the task.
a. Specify the date in the Work Date field.
By default, this field is set to the current date.
b. Enter the time duration that you worked on the task in the Time worked (Hours) and Time
worked (Minutes) fields.
c. Optional: Provide any additional information in the Comments field.
8. Tap Done and then tap Submit.

Result

The Time worked form is saved and the time card is added to the Time worked list.
Initiate a request to source parts for work order tasks using the Mobile Agent application
Initiate a request to source the missing parts of an enterprise asset associated with a work order
task by using the Mobile Agent application.

Before you begin

Role required: sn_eam.enterprise_asset_manager or wm_agent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1903


<!-- page 1904 -->
About this task

You can work on part requirements associated with a work order task in the Mobile Agent
application but you can't create a part requirement.
You can only initiate the sourcing workflow using the Mobile Agent application. The sourcing flow
can be completed only in the Enterprise Asset Workspace.

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task for which you want to create a source parts request is not displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the task for which you want to request to source missing parts.
6. Tap the Parts tab.
The Part Requirements section shows a list with the first few part requirement records
associated with the work order task.
7. If the part for which you want to create a source parts request isn't displayed, tap See all.
8. Optional: Update the required quantity of parts that you want to source.
a. Tap the part requirement record.
b. On the Part requirements form, enter the quantity in the Required quantity field.
c. Tap Submit.
9. Tap Source Parts Request.

Result
• A catalog request is created for sourcing the parts.
• The status of the part requirements record changes from Not requested to Requested.
• In the Requested items list, an open work order parts request is created automatically.

What to do next

You must complete the sourcing of the requested parts in the Enterprise Asset Workspace. For
more information, see Source parts for an Enterprise Asset Management work order or work
order task.
Close a Pick Up Asset task using the Mobile Agent application
Complete and close the Pick Up Asset task for the enterprise asset that you have picked up from
the designated stockroom for your assigned work order using the Mobile Agent application.

Before you begin

The status of the Pick Up Asset task must be Work in progress.
Role required: wm_agent or sn_eam.enterprise_asset_technician
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1904


<!-- page 1905 -->
Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task you want to close isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the work order task for which you want to close the associated Pick Up Asset task.
6. Tap the Parts tab.
The Pick Up Asset Tasks section shows the first few Pick Up Asset tasks in the list of tasks
associated with the work order task assigned to you.
7. If the task you want to complete isn't displayed, tap See All.
8. Tap the Pick Up Asset task that you want to complete and then tap Close complete.

Result
• The state of the Pick Up Asset task changes from Open to Closed Complete.
• A record is created in the Asset Usages section with the Status of Not Used and State of In
stock.

Note: For a consumable asset, the State changes to Consumed.
What to do next

Take necessary asset action on the enterprise asset associated with the work order. For details,
see Take action on an enterprise asset using the Mobile Agent application.
Take action on an enterprise asset using the Mobile Agent application
Deploy, remove, or swap any assets or parts that are required for an enterprise asset by using the
Mobile Agent application. You can also use the application to calibrate your enterprise assets.

Before you begin

Role required: wm_agent

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task you want to work on isn't displayed, tap See all.
4. Optional: Filter or sort the task view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1905


<!-- page 1906 -->
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the work order task for which you want to take action.
6. Complete all work that is required for the work order task.
◦ If you want to deploy, swap, or remove any required assets or parts, use the following steps:
a. Tap the Parts tab of the work order task.
By default, the Asset Usages list displays only the first few assets and parts that are
associated with the work order task. If the asset or part that you want to take action on isn't
displayed, tap See all.
b. On the Asset Usages list, choose the action that you want to take on the asset or part.

Note: If you want to filter the displayed assets or parts, tap the Filter icon (

) and
enter the values to use as a filter in the Quantity, State, Substate, or Display name
fields.
Available actions
Action

Description

Deploy an asset
or part

The asset or part must have a status of Not Used.
You can also deploy assets or parts from your personal stockroom
that have a state of In stock and a substate of either Available or
Reserved.
i. Select the asset.
ii. Tap Deploy.
iii. On the Deploy asset screen, tap the asset that you want to deploy.
iv. On the Deploy asset execute screen, in the Quantity field, select
the quantity of parts that you want to deploy.
v. Add the asset or part as a child of another asset or part by tapping
Add to asset and then selecting the required asset from the asset
list.
vi. Assign the asset or part to a specific user by tapping Assign to
user and then selecting the user from the list of users.
vii. Tap Deploy.
The Asset Usages list reloads to display the deployed asset or
part with a Status of Used and State of In use. The Status of a
consumable asset changes to Consumed.

Remove an asset
or part

The asset or part must have a state of In use, In maintenance, or
Consumed.
i. Select the asset or part.
ii. Tap Remove.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1906


<!-- page 1907 -->
Action

Description

iii. On the Remove asset screen, tap the asset or part that you want to
remove.
iv. Tap Remove.
The Asset Usages section reloads to display the removed asset or
part, which now has the Status of Removed and State of In stock.
Swap an asset
or part with a
replacement part

i. Tap Swap.
ii. On the Select asset to swap screen, tap the asset or part that you
want to swap.
iii. On the Swap assets screen, in the Swap in asset field, select the
replacement part that you want to swap in from the asset list.

Note: The replacement part must have a State of In stock
and a substate of Available.
The Asset Usages list reloads and displays the updated asset
statuses:
▪ The Swap out asset has a status of Removed.
▪ The Swap in asset has a status of Used.
◦ If you want to calibrate the associated enterprise asset, use the following steps:
a. Tap Calibrate on the work order task.
The Calibration event playbook opens.

Note: Each lane in the playbook represents an activity that you must complete as
part of the calibration event workflow.
b. Expand the Calibration event playbook.
c. Expand the Details lane and then tap Calibration event details.
d. On the Calibration event details screen, fill in the fields.
Calibration event details screen
Field

Description

Name

Name of the calibration event.

Environmental conditions
Temperature

Temperature of the environment in which you are performing the
calibration.

Temperature
unit

Unit of temperature that you are using to measure the environmental
temperature.

Humidity (%)

Relative humidity level of the environment in which you are performing
the calibration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1907


<!-- page 1908 -->
e. Tap Mark as complete.
The Details lane is marked as Complete and you automatically progress to the Calibration
Lines lane.
f. On the Calibration lines screen, select the calibration line that you want to complete or
skip.
Each calibration line corresponds with a calibration attribute on the associated enterprise
asset. If any calibration attribute contains multiple points at which you can measure
accuracy, the Enterprise Asset Management application creates a separate calibration line
for each point. You can choose to complete or skip each calibration line as needed. For
more details on calibration attributes, see Add calibration attributes to an enterprise asset
or Add calibration attributes to an enterprise model.
g. On the Calibration line record, use one of the following options to complete or skip the
calibration line:
▪ To complete the calibration line, tap Edit. On the Edit calibration line screen, fill in the
fields and then tap Submit.
Edit calibration line screen
Field

Description

Instrument Instrument that you are using to perform the calibration. If you specified
an instrument model in the Instrument model field of the corresponding
calibration attribute, the options in this field are filtered based on the
specified instrument model.
Expected
value

Value that you are measuring tolerance conformance against. This field
populates automatically based on the expected value that you specified
in the calibration attribute.

Note: This field appears only if you set the Value type of the
calibration attribute to either Accuracy % full scale, Accuracy % point,
or True/false.
As found
value

Value that you measure prior to the calibration.

As left
value

Value that you measure after the calibration.

Comment

Additional comments about the calibration.

▪ To skip the calibration line, tap Skip.
h. Return to the Calibration lines screen.
i. Repeat steps f to h for each of your calibration lines.

Note: If any of your calibration lines have a Result of Failed, you can remediate
the entire calibration event by initiating a new work order and corresponding work
order tasks. See Remediate an unsuccessful enterprise asset calibration for detailed
instructions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1908


<!-- page 1909 -->
j. Tap Mark as complete.
The Calibration lines lane is marked as Complete.

What to do next

Close the work order associated with the enterprise asset. For details, see Close a work order for
an enterprise asset using the Mobile Agent application.
Close a work order for an enterprise asset using the Mobile Agent application
Close an assigned work order by marking all the required work for the associated asset as
complete using the Mobile Agent application.

Before you begin

Role required: wm_agent

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task you want to close isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
tasks.

), tap Sort by, and select the fields to sort your

5. Tap the work order task that you want to close.
6. On the Details tab of the work order task, tap Close Complete .
7. In the Work notes field, enter your closure comments.
8. Tap Done.
9. Tap Submit.

Result

The state of the work order task changes from Work In Progress to Closed Complete.
Create a checklist for work order tasks using the Mobile Agent application
Manage your work order tasks by creating a checklist of all items that you must complete for a
work order or work order task using the Mobile Agent application.

Before you begin

Role required: wm_agent

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1909


<!-- page 1910 -->
3. If the task for which you want to create a checklist is not displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
Asset, Location, or Priority fields.

), enter the values to use as a filter in the Due Date,

◦ To sort your tasks, tap the Filter icon (
tasks.

), tap Sort by, and select the fields to sort your

5. Tap the work order task for which you want to create a checklist.
6. Tap the Related tab.
The Checklist section of the Related tab shows the existing checklists for the work order task.
The checklists marked as complete are displayed at the bottom of the list.
7. In the Checklist section, tap Add item.
8. On the Add checklist screen, in the Name field, enter the name of the checklist.
9. In the Order field, enter the order in which the checklist item should be completed.
For example, a value of 1 indicates that the given checklist item is the first item you must
complete.
10. Tap Done and then tap Submit.

Result

The checklist is displayed in the specified order in the Checklist section.
View knowledge articles related to work order tasks in the Mobile Agent application
View helpful and relevant knowledge articles attached to work order tasks in the Mobile Agent
application.

Before you begin

Role required: wm_agent

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task you want is not displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
Asset, Location, or Priority fields.

), enter the values to use as a filter in the Due Date,

◦ To sort your tasks, tap the Filter icon (
tasks.

), tap Sort by, and select the fields to sort your

5. Tap the work order task for which you want to view the knowledge articles.
6. Tap the Related tab.
7. View relevant knowledge articles.
◦ To view a knowledge article related to the work order task, tap the article link in the Attached
Knowledge section.
◦ To view knowledge articles related to the parts associated with the work order task, tap the
article link in the Parts Knowledge section.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1910


<!-- page 1911 -->
The selected article is displayed.

Note: You can provide feedback on a knowledge article by rating the article, marking
the article as helpful or not helpful, or posting comments for the article.
Create work notes about the work order tasks using the Mobile Agent application
Add notes with details about work order task to the task record using the Mobile Agent
application.

Before you begin

Role required: wm_agent

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens with the first few tasks in the list of tasks
assigned to you displayed.
3. If the task to which you want to add a work note isn't displayed, tap See all.
4. Optional: Filter or sort the task view.
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
tasks.

), tap Sort by, and select the fields to sort your

5. Tap the work order task for which you want to add a work note.
6. Tap the Activity tab.
All the work notes related to the work order tasks are listed.
7. Tap Compose.
8. On the Compose screen, type your comments related to work order task.
9. Tap Post.

Result

The posted work note is shown in the Activity tab of the work order task record.

Manage enterprise asset repair tasks using the Mobile Agent application
Manage all the repair tasks associated with the defective enterprise assets in your stockroom
using the intuitive Mobile Agent application.
Start working on a enterprise asset repair task using the Mobile Agent application
Indicate in the Mobile Agent application when you start work on a repair task assigned to you.

Before you begin

Role required: sn_eam.enterprise_asset_technician

About this task

You can work on the repair tasks that belong to the following task types:
• Asset troubleshoot task
• Asset repair task
• Asset evaluate task
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1911


<!-- page 1912 -->
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
Record time worked on an enterprise asset repair task using the Mobile Agent application
Manage and record time worked on Troubleshoot asset, Repair asset, and Evaluate asset tasks
using the Mobile Agent application. After you start working on a task, you can pause and resume
work. You can also record the time worked manually.
Pause an enterprise asset repair task using the Mobile Agent application
Record a break from a repair task for the enterprise assets using the Mobile Agent application
if you’re not continuing to work on it. Resume the task when you start working on it again. The
system automatically tracks and calculates the actual time taken to complete the task even
though the work was interrupted.

Before you begin

After you start work on the repair task, make sure to start recording the time by tapping the Start
Timer in the Details tab.
Role required: asset_technician

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

5. Tap the task record that you want to pause.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1912


<!-- page 1913 -->
6. In the Details tab, tap Pause.
On the Details tab, the Pause option changes to Resume.
7. Tap Resume when you’re ready to work on the activity again.

Result

Each time you pause or resume work on the repair task, the actual time you worked on the task
is automatically calculated. An entry for the time worked is created in the Time worked section of
the Related tab.
Record time worked on an enterprise asset repair task manually using the Mobile Agent
application
Record time worked on an enterprise asset repair task manually and provide any additional
comments on the task using the Mobile Agent application.

Before you begin

Make sure you have indicated that you started working on the repair task by tapping Start work
in the Details tab.
Role required: asset_technician

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

Result

The Record time form is saved and the time card is added to the Time worked section of the
Related tab.
Close an enterprise asset repair task using the Mobile Agent application
Complete an assigned enterprise asset repair task and mark the task as closed using the Mobile
Agent application.

Before you begin

Role required: sn_eam.enterprise_asset_technician
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1913


<!-- page 1914 -->
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
In the Evaluation result field, select any of
the following:

Evaluate asset

◦ Redeployable
◦ To be disposed

8. In the Work notes field, enter your closure comments.
9. Tap Done and then tap Submit.

Result

The state of the repair task changes to Closed Complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1914


<!-- page 1915 -->
Manage enterprise asset pick tasks using the Mobile Agent application
Work on the Asset pick tasks assigned to you by using the Mobile Agent application.
Start working on an enterprise asset pick task using the Mobile Agent application
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

Complete the asset pick task assigned to you. For details, see Locate and pick the enterprise
assets in your stockroom using the Mobile Agent application.
Record time worked on an enterprise asset pick task using the Mobile Agent application
Manage and record time worked on enterprise asset pick tasks by using the Mobile Agent
application. After you start working on a task, you can pause and resume work.
Pause an enterprise asset pick task using the Mobile Agent application
Record a break from an enterprise asset pick task by using the Mobile Agent application if you’re
not continuing to work on it.

Before you begin

After you start work on the enterprise asset pick task, start recording the time by tapping Start
timer in the Details tab.
Role required: inventory_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1915


<!-- page 1916 -->
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
6. In the Details tab, tap Pause.

Note: The Pause option is displayed only after you tap Start timer.
On the Details tab, the Pause option changes to Resume.
7. Tap Resume when you’re ready to work on the activity again.

Result

Each time you pause or resume work on the asset pick task, the actual time you worked on the
task is automatically calculated. An entry for the time worked is created in the Time worked
section of the Related tab.
Locate and pick the enterprise assets in your stockroom using the Mobile Agent application
Locate an enterprise asset placed in a specific aisle and space in the stockroom by using
indoor maps. After locating the asset, pick and drop off the asset to another location within the
stockroom using the Mobile Agent application.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1916


<!-- page 1917 -->
◦ To filter your tasks, tap the Filter icon (
) and enter the values to use as a filter in the Due
Date, Asset, Location, or Priority fields.
◦ To sort your tasks, tap the Filter icon (
your tasks.

), tap Sort by, and select the fields by which to sort

5. Tap the Asset pick task for which you have started work.
6. To locate the enterprise asset in the stockroom, on the Details tab, tap Locate.
◦ The exact location of the enterprise asset in the stockroom is displayed on the map.
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
◦ The state of the Asset pick task changes to Closed complete.
◦ The Location field of the asset is updated with the drop off location only if you have
specified the drop off location.
◦ The Enterprise Asset request flow and Enterprise Refresh Request flow proceed to the next
stage.

Manage enterprise asset put away using the ServiceNow Agent application
Scan and put away the assets from the receiving bay in the designated aisle-space using the
ServiceNow Agent application.
Put away enterprise assets using the ServiceNow Agent application
Scan available assets in the inventory and perform asset put away in the designated scanned
drop-off location.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1917


<!-- page 1918 -->
Before you begin

Role required: inventory_user

About this task

The inventory user can scan the available assets in the inventory and put them away in the
scanned aisle-space in the stockroom. The Enterprise Asset Management application checks
the existence of an active put away task for the asset and makes the required update in the
Enterprise Asset Workspace.
• If an active Asset put away task exists, the task is closed when the asset is placed in the
designated stockroom location.
• If an active Asset put away task doesn't exist for the asset, then a task is created and closed
when the asset is placed in the designated stockroom location.

Procedure
1. From your mobile device, launch the Now Mobile Agent application.
2. On the navigation bar, tap the Asset put away menu.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1918


<!-- page 1919 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1919


<!-- page 1920 -->
The Asset put away page is displayed.
3. Enter or scan the asset serial number and tap Next.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1920


<!-- page 1921 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1921


<!-- page 1922 -->
You can scan multiple assets at a time. All the scanned asset serial numbers are listed in the

Review tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1922


<!-- page 1923 -->
4. Enter or scan the drop-off location and tap Submit.

Result

A confirmation message appears on the mobile screen showing the number of put away tasks
closed.

Manage Drop off tasks for enterprise assets using the Mobile Agent
application
As an enterprise asset technician, manage the delivery of enterprise assets that you have in your
personal stockroom to any other warehouse stockroom by creating Drop off tasks in the Mobile
Agent application. The asset manager of the destination stockroom receives the assets that you
dropped off, verifies the asset, and completes the Receive and Drop off tasks in the Mobile Agent
application.
You can also manage Drop off tasks in the Enterprise Asset Workspace. For details, see
Delivering enterprise assets in your personal stockroom through Drop off tasks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1923


<!-- page 1924 -->
Create a Drop off task for enterprise assets using the Mobile Agent application
Create a Drop off task using the Mobile Agent to return the enterprise assets in your personal
stockroom to any other warehouse stockroom.

Before you begin

Role required: sn_eam.asset_technician

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens displaying the following sections:
◦ My group task
◦ My Tasks with the list of tasks assigned to you.
3. In the My group task section, tap the Create Drop Off Task (

) icon.

4. On the Get Drop-Off Task Details screen, fill in the schedule details to create the drop off task.
a. In the Delivery by date field, select the date by when you want to deliver the assets to the
destination stockroom.
b. In the Destination stockroom field, select the stockroom at which you want to drop off the
assets.
c. Tap Submit.
The drop off task is created in the Open state and listed under My Tasks.
5. From the My Tasks list, tap the drop off task to add the assets.
You can only add enterprise assets that are in your personal stockroom and that aren't
reserved and aren't part of any workflows.
UI option

Action

a. Tap Add assets.
b. Provide the asset tag information.

Add assets button

▪ To provide the information through a
scan, tap Scan and then scan the asset
tag of the asset.
▪ To provide the information manually, en­
ter a value in the Asset tag field and tap
the Enter key on the keyboard of your mo­
bile device.
c. Tap Submit.

Assets tab

a. Tap the Assets tab.
b. Provide the asset tag information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1924


<!-- page 1925 -->
UI option

Action

▪ To provide the information through a
scan, tap Scan and then scan the asset
tag of the asset.
▪ To provide the information manually, en­
ter a value in the Asset tag field and tap
the Enter key on the keyboard of your mo­
bile device.
c. Tap Submit.
◦ The asset that you added is listed under the Assets tab of the drop off task.
◦ The Start Work option appears for the drop off task.
6. After adding the required assets to the drop off task, tap Start Work.
On the Details tab, the Start work link changes to Start timer, Record time, and Drop off
automatically.
7. Drop off the assets at the required stockroom.
8. Tap Drop off.

Result
• A Receive task is created and assigned to the asset manager of the stockroom where you
dropped off the assets.
• The state of the Drop off task changes to Work in Progress.
Verify the enterprise assets received through a Drop off task using the Mobile Agent
application
As an asset manager, confirm that you received the enterprise assets that were delivered to your
stockroom and complete the Receive task using the Mobile Agent application.

Before you begin

Role required: sn_eam.enterprise_asset_manager

Procedure
1. From your mobile device, launch the Mobile Agent application.
2. On the navigation bar at the bottom of the screen, tap the My Tasks tab.
The home screen of the My Tasks application opens, showing you a list of your assigned tasks.
3. Tap the Receive drop off task that you want to verify and complete.
The Details tab shows the following fields:
◦ Expected: The number of assets that are expected to be received.
◦ Received: The number of assets that have been scanned and received.
◦ Not received: The number of assets that couldn't be received.

Note: Before you start working on the task, the Expected and Not received fields will
show the same number of assets.
4. Tap Start work.
On the Details tab, the Start work link changes to Start timer, Scan, and Close Task
automatically.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1925


