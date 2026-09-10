# Zurich IT Asset Management — Integration with Zero Touch Mobility / Device as a Service

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1441–1469 of 2359

Sections: Integration with Zero Touch Mobility (p1441); Device as a Service (p1442)

---

<!-- page 1441 -->
AI agents used in the Help repair hardware assets agentic workflow
The Help repair hardware assets agentic workflow uses specific AI agents to validate repair
tasks, handle troubleshooting and repair tasks, and complete the tasks autonomously.
Role of AI agents in the Help repair hardware assets agentic workflow
AI agent

AI agent role

Asset
next best
action AI
agent

Validates the repair tasks, checks the task type, and triggers the Evaluate asset AI
agent to manage the troubleshooting task or the Repair asset AI agent to manage
the repair task.

Evaluate
asset AI
agent

Performs a web search and provides a detailed evaluation guide to help the
technician identify the issue on the asset. Updates the troubleshooting task with
the details received from the technician and then closes the task.

Repair
asset AI
agent

Performs a web search and provides detailed repair steps to help the technician
resolve the issue identified on the asset. Updates the repair task with the details
received from the technician and then closes the task.

Hardware Asset Management integration with Zero Touch Mobility
®

ServiceNow Hardware Asset Management is integrated with Samsung SDS Zero Touch Mobility
to manage the complete life-cycle of mobile devices.
The benefits of Hardware Asset Management integration with Zero Touch Mobility are as follows:
• Deploy, manage, and monitor mobile assets on a single platform leveraging automated
workflows for day-to-day mobile device management tasks like the following:
◦ Onboarding new devices
◦ Unenrolling devices
◦ Requesting new orders, upgrades, or replacements with self-service options
• Manage and report on the mobile device life-cycle with an integrated solution that improves
visibility and collaboration across the organization.
• Optimize costs and utilization of all your mobile devices.

Requirements and limitations
Requirements and limitations for Hardware Asset Management integration with Zero Touch
Mobility solution are as follows:
• The solution is dependent on the Hardware Asset Management (sn_hamp) application.
• Only the Mobile Device resource category is available. This resource category is opted-in
automatically.
Based on the acquisition method of assets, the following resource subcategories are available
for the Mobile Device:
◦ Bring Your Own Asset
◦ Corporate Asset
• Only mobile devices are licensed under this solution. You can view the subscription details
using the ITAM license report. For more information, see View the license report for the
Hardware Asset Management application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1441


<!-- page 1442 -->
Note: Even if Hardware Asset Management is activated explicitly on your ServiceNow
instance, the mobile devices are licensed only under the Mobile Device resource
category of the Hardware Asset Management integration with Zero Touch Mobility
solution. For more information, see Licensing framework for Hardware Asset Management
solutions.
• The following Hardware Asset Management features aren't available:
◦ Hardware Model Normalization
◦ Content upload and download
◦ Performance Analytics Dashboard
◦ Asset Executive Dashboard
◦ Success Portal

Note: HAM Guided Setup is available. However, it isn't required to run the setup.
For more information on the Hardware Asset Management workflows and features, see
Hardware Asset Management subscription.

Supported Hardware Asset Management features
The following Hardware Asset Management features are available without any restrictions:
• Stock order
• Advanced Shipment Notification
• Standard Asset Request flow
• Shipment carrier integration
• Advanced inventory and distribution
• Asset reclamation
The following Hardware Asset Management features have limited availability:
• HAM workflows: Non-mobile devices are excluded from the HAM workflows.
• Lease expiration flow: Non-mobile devices are excluded from this flow.
• Hardware Asset Workspace: Reports and dashboards related to normalization of assets aren't
available.
Related topics
Exploring Hardware Asset Management

Device as a Service
The Device as a Service (DaaS) feature provides assets and asset management services to the
customers of DaaS providers via a subscription model.

DaaS overview
https://player.vimeo.com/video/985181543?
h=c47ec1ec8f&badge=0&autopause=0&player_id=0&app_id=58479
Managing your DaaS offerings on a single platform through provider-focused views and tasks
brings significant advantages to both providers and customers. DaaS providers can manage their
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1442


<!-- page 1443 -->
asset inventory from sourcing through disposal to support their DaaS offerings. By consolidating
all DaaS - related activities and information onto one platform, DaaS providers can streamline
their operations and improve efficiency. For more information, see DaaS provider view.

DaaS benefits
Benefit

Users

Plan the desired subscription level for the customers of the
DaaS provider.

DaaS Asset manager

Automate the procurement process of the DaaS assets.

DaaS Asset manager

Manage inventory levels and prepare assets for shipment as
requested by customers.

• DaaS Asset manager

Receive and pick assets at the customer site.

• Inventory user

• DaaS Asset manager
• Inventory user

Conduct audits on asset records for compliance and reporting
purposes.
Monitor asset problems and perform repairs or replacements
to restore service functionality.

Systematically refresh, decommission, and dispose of assets
at the end of their usable life according to a predetermined
schedule.

DaaS Asset manager

• DaaS Asset manager
• Inventory user

• DaaS Asset manager
• Inventory user

Configuring DaaS
Plan and configure the Device as a Service (DaaS) features and functionalities.

Configuration overview
Here's an overview of the process for configuring DaaS features and functionalities.
Configure Hardware Asset Management for DaaS
Step

Action

Resource

Get the Hardware Asset
Install Hardware Asset
Management application from Management
the ServiceNow Store .
Install Hardware Asset
Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1443


<!-- page 1444 -->
Configure Hardware Asset Management for DaaS (continued)
Step

Action

Resource

Get the Hardware Asset
Management for DaaS
application from the
ServiceNow Store .

Install Hardware Asset
Management for DaaS

Mark your assets as DaaS
assets on the Hardware Asset
Details form.

Asset record fields

Explore the intuitive DaaS
provider view in Hardware
Asset Workspace to manage
the DaaS assets.

DaaS provider view

Install Hardware Asset
Management for DaaS

Mark assets as DaaS assets

Explore DaaS provider view in
Hardware Asset Workspace

Use Hardware Asset
Management for DaaS

Use Hardware Asset
Management for DaaS
to offer assets and asset
management services to the
customers of DaaS providers.

• Managing inbound asset
orders for DaaS assets
• Managing RMA response
orders for DaaS assets

Install Hardware Asset Management for DaaS
You can install the Hardware Asset Management for DaaS application (com.sn_daas_ham) if you
®
have the admin role.The application includes demo data and installs related ServiceNow Store
applications and plugins if they aren’t already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Hardware Asset Management for DaaS:
• Store applications
• Roles
• Tables
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1444


<!-- page 1445 -->
For more information, see Components installed with Hardware Asset Management for DaaS.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Hardware Asset Management for DaaS application (com.sn_daas_ham) using the
filter criteria and search bar.
You can search for the application by its name or ID. If you can’t find the application, you might
have to request it from the ServiceNow Store.
In the list next to the Install button, the available versions are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

Managing inbound asset orders for DaaS assets
Following a request for a hardware asset, an inbound asset order is associated with this request
by creating an order in the DaaS provider interface.
Completing the following tasks in the Inbound asset order workflow results in the successful
completion of an asset order:
1. Create an inbound asset order
2. Create an inbound asset order line
3. Select an asset
4. Pick the selected asset
5. Prepare the picked asset
6. Ship the prepared asset
7. Receive the shipped asset
Create an inbound asset order
Create an inbound asset order to associate a customer request to an asset order.

Before you begin

Role required: sn_daas_ham.daas_asset_manager
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

About this task

For an inbound asset order to be considered complete, all its inbound asset order lines must
reach the Complete stage.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1445


<!-- page 1446 -->
Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the Inbound asset orders tab.
4. Select New.
5. On the form, fill in the fields.
Create New Inbound asset order form
Field

Description

Number

Unique number for the inbound asset order.

External request reference

Customer-provided reference for the asset
request that helps you track the source.
For example, the customer has requested
an asset through an email. Here, the
external request reference would be
xyz@gmail.com.

DaaS account

Associated DaaS account of the customer.

Delivery address

Designated delivery address for the asset.

State

Status of the inbound asset order.
This field is automatically set to Open.

Requested for

The name of the customer associated with
the DaaS account, for whom the asset is
requested.

Estimated delivery date

Estimated delivery date of the asset that's
being sent to the specified delivery address.

6. Select Save.

Result
• An inbound asset order with a unique number is created.
• Inbound asset order line tab is created.

What to do next

Create an inbound asset order line
Create an inbound asset order line
Create an inbound asset order line for every asset in an inbound asset order.

Before you begin

Role required: sn_daas_ham.daas_asset_manager
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1446


<!-- page 1447 -->
About this task

For an inbound asset order line to be considered complete, the State field of all its tasks must be
Closed Complete.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the Inbound asset orders tab.
4. Select an inbound asset order number.
5. Select the Inbound asset order lines tab.
6. Select New.
7. On the form, fill in the fields.
Create New Inbound asset order line form
Field

Description

Number

Unique number for the inbound asset order
line.

Inbound asset order

Unique number for the inbound asset order,
which is associated with this order number
line.

Model

Model of the asset as requested by the DaaS
provider.

Quantity

Quantity of the asset.
This field is automatically set to 1.

Stage

Status of the inbound asset order.
This field is automatically set to Draft.

Assigned to

The individual responsible for working on the
inbound asset order line.

Asset

Asset that is selected matching the model.
This field automatically populates when you
select an asset in the Asset selection task.

8. Select Save.

Result
• An inbound asset order line with a unique number is created for the requested asset.
• The Stage field is set to Selection.
• The Asset tasks tab is created, displaying a unique asset task number with the task type as
Asset selection task.

What to do next

Select a DaaS asset matching the model specified by the DaaS provider.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1447


<!-- page 1448 -->
Select an asset
Select a DaaS asset matching the model specified by the DaaS provider by using the Asset
selection task.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the Inbound asset orders tab.
4. Select an inbound asset order number.
5. Select the Inbound asset order lines tab.
6. Select an inbound asset order line number.
7. Select the Asset tasks tab.
8. Select the asset task number with the Task type as Asset selection task.
9. On the form, fill in the fields.
Asset Task Details form
Field

Description

Number

Unique number for the Asset selection task.

Asset order line

The inbound asset order line number
associated with this task.

Due date

Estimated date of completing this task.

Stockroom

The designated stockroom where the asset is
allocated.

Model

This field is automatically populated with the
details of the model provided while creating
an inbound asset order line.
For more information, see Create an inbound
asset order line.

Task name

Name of the current task.
This field is automatically set to Select.

State

Status of the Asset selection task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual
who is responsible for working on the Asset
selection task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1448


<!-- page 1449 -->
Field

Description

Assigned to

The individual responsible for working on the
Asset selection task.

Asset

List of DaaS assets that fulfill one or more of
the following conditions:
◦ Assets with Status as In stock and
Substate as Available
◦ An account is selected in the DaaS
account field while creating an inbound
asset order.
◦ The DaaS account field is empty while
creating an inbound asset order.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes (Private)

Notes about the task that are visible to all
users within your organization.

10. Select Close Task.

Result
• After the Asset selection task is completed and you refresh the list, a task is created displaying
a unique asset task number with the task type as Asset pick task.
• The State field of the Asset Selection task is set to Closed Complete.
• The Stage field of the Inbound asset order line is set to Pick.

What to do next

Pick the selected asset
Pick the selected asset
Pick the selected asset by using the Asset pick task.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the Inbound asset orders tab.
4. Select an inbound asset order number.
5. Select the Inbound asset order lines tab.
6. Select an inbound asset order line number.
7. Select the Asset tasks tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1449


<!-- page 1450 -->
8. Select the asset task number with the Task type as Asset pick task.
9. On the form, fill in the fields.
Pick form
Field

Description

Number

Unique number for the Asset pick task.

Task name

Name of the current task.
This field is automatically set to Pick.

Asset order

The inbound asset order number associated
with this task.

Asset order line

The inbound asset order line number
associated with this task.

Stockroom

The designated stockroom where the asset is
allocated.

Asset

The asset that is selected in the Asset
selection task. For more information, see
Select an asset.

State

Status of the Asset pick task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual who
is responsible for working on the Asset pick
task.

Assigned to

The individual responsible for working on the
Asset pick task.

Due date

Estimated date of completing this task.

Drop off location

Location where the asset must be delivered.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes (Private)

Notes about the task that are visible to all
users within your organization.

10. Select Close Task.

Result
• After the Asset pick task is completed and you refresh the list, a task is created displaying a
unique asset task number with the task type as Asset prepare task.
• The State field of the Asset pick task is set to Closed Complete.
• The Stage field of the Inbound asset order line is set to Prepare.

What to do next

Prepare the picked asset by using the Asset prepare task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1450


<!-- page 1451 -->
Prepare the picked asset
Prepare the picked asset by inspecting the checklist and also check for any defects by using the
Asset prepare task.

Before you begin

Role required: sn_daas_ham.daas_asset_manager and inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the Inbound asset orders tab.
4. Select an inbound asset order number.
5. Select the Inbound asset order lines tab.
6. Select an inbound asset order line number.
7. Select the Asset tasks tab.
8. Select the asset task number with the Task type as Asset prepare task.
9. On the form, fill in the fields.
Prepare form
Field

Description

Number

Unique number for the Asset prepare task.

Asset order line

The inbound asset order line number
associated with this task.

Due date

Estimated date of completing this task.

Stockroom

The designated stockroom where the asset is
allocated.

Model

This field is automatically populated with
the details of the model provided while
creating an inbound asset order line. For
more information, see Create an inbound
asset order line.

Task name

Name of the current task.
This field is automatically set to Prepare.

State

Status of the Asset prepare task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual
who is responsible for working on the Asset
prepare task.

Assigned to

The individual responsible for working on the
Asset prepare task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1451


<!-- page 1452 -->
Field

Description

Asset

The asset that is selected in the Asset
selection task. For more information, see
Select an asset.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes (Private)

Notes about the task that are visible to all
users within your organization.

10. Select Close Task.

Result
• After the Asset prepare task is completed and you refresh the list, another task is created
displaying a unique asset task number with the task type as Asset ship task.
• The State field of the Asset prepare task is set to Closed Complete.
• The Stage field of the Inbound asset order line is set to Ship.

What to do next

Ship the prepared asset
Ship the prepared asset
Ship the prepared asset and capture the shipment details by using the Asset ship task.

Before you begin

Role required: sn_daas_ham.daas_asset_manager and inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the Inbound asset orders tab.
4. Select an inbound asset order number.
5. Select the Inbound asset order lines tab.
6. Select an inbound asset order line number.
7. Select the Asset tasks tab.
8. Select the asset task number with the Task type as Asset ship task.
9. On the form, fill in the fields.
Ship form
Field

Description

Number

Unique number for the Asset ship task.

Asset order line

The inbound asset order line number
associated with this task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1452


<!-- page 1453 -->
Field

Description

Due date

Estimated date of completing this task.

Asset

The asset that is selected in the Asset
selection task. For more information, see
Select an asset.

Shipping carrier

Organization that's responsible for shipping
the assets to your customers. For example,
FedEx.

Ship from

The origin location for shipping the assets.

Ship date

The shipment date for delivering the assets
to your customers.

Task name

Name of the current task.
This field is automatically set to Ship.

State

Status of the Asset ship task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual who
is responsible for working on the Asset ship
task.

Assigned to

The individual responsible for working on the
Asset ship task.

Tracking number

Tracking number or reference number of the
shipment of the asset.

Ship to

Destination for the asset shipment.

Shipment order

Reference to the shipment record created in
the Shipment [sn_itam_common_shipment]
table.
This field is automatically populated when the
Asset ship task is closed.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes (Private)

Notes about the task that are visible to all
users within your organization.

10. Select Close Task.

Result
• After the Asset ship task is completed and you refresh the list, another task is created
displaying a unique asset task number with the task type as Receive task.
• The State field of the Asset ship task is set to Closed Complete.
• The Stage field of the Inbound asset order line is set to Receive confirmation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1453


<!-- page 1454 -->
What to do next

Receive the shipped asset
Receive the shipped asset
Once the shipment of the asset is complete, confirm the receipt of the asset by using the
Receive task.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the Inbound asset orders tab.
4. Select an inbound asset order number.
5. Select the Inbound asset order lines tab.
6. Select an inbound asset order line number.
7. Select the Asset tasks tab.
8. Select the asset task number with the Task type as Receive task.
9. On the form, fill in the fields.
Receive confirmation form
Field

Description

Number

Unique number for the Receive task.

Asset order line

The inbound asset order line number
associated with this task.

Due date

Estimated date of completing this task.

Asset

The asset that is selected in the Asset
selection task. For more information, see
Select an asset.

Asset received

Option to confirm the receipt of the asset.
Values:
◦ Yes: The asset is received by the customer.
◦ No: The asset isn't received by the
customer.

Note: You must select Yes to close this
task.
Task name

Name of the current task.
This field is automatically set to Receive
confirmation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1454


<!-- page 1455 -->
Field

Description

State

Status of the Receive task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual who
is responsible for working on the Receive
confirmation task.

Assigned to

The individual responsible for working on the
Receive task.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes (Private)

Notes about the task that are visible to all
users within your organization.

10. Select Close Task.

Result
• The State field of the Receive task is set to Closed Complete.
• The Stage field of the Inbound asset order line is set to Completed.
• The State field of the Inbound asset order is set to Closed Complete.

Managing RMA response orders for DaaS assets
Following a request for a hardware asset return or replacement, a Return Merchandise
Authorization (RMA) order is associated with this request by creating an RMA response order in
the DaaS provider interface.
Completing the following tasks in the RMA order workflow results in the completion and success
of an RMA response order:
1. Create an RMA response order
2. Create an RMA response order line
3. Assess the RMA asset
4. Schedule a visit to the customer site or Ship the asset to the DaaS provider

Note: Follow the next steps according to the values you select when scheduling a visit
to the customer site or shipping the asset to the DaaS provider for assessing the RMA
asset.
Create an RMA response order
Create a Return Merchandise Authorization (RMA) response order to associate an RMA request
for an asset.

Before you begin

Role required: sn_daas_ham.daas_asset_manager
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1455


<!-- page 1456 -->
About this task

For an RMA response order to be considered as complete, all its RMA response order lines must
reach the Complete stage.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select New.
5. On the form, fill in the fields.
Create New RMA response form
Number

Unique number for the RMA response order.

External RMA number

Customer-provided reference for the RMA
request that helps you track the source.

DaaS account

Associated DaaS account of the customer.

Contact Email

Email of the customer who initiated the RMA
request.

Delivery address

Address of the customer associated with the
RMA request.

State

Status of the RMA response order.
This field is automatically set to Open.

Requested for

Name of the customer associated with
the DaaS account, for whom the asset is
requested.

Opened by

Estimated delivery date of the asset that's
being sent to the specified delivery address.

Customer mobile number

Mobile number of the customer who initiated
the RMA request.

Device location

The physical whereabouts of the device
currently in operation.

RMA justification

Reason of the RMA request creation provided
by the customer.

6. Select Save.

Result
• An RMA response order with a unique number is created.
• RMA response order lines tab is displayed.

What to do next

Create an RMA response order line.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1456


<!-- page 1457 -->
Create an RMA response order line
Create a Return Merchandise Authorization (RMA) response order line for every asset in an RMA
response order.

Before you begin

Role required: sn_daas_ham.daas_asset_manager
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

About this task

For an RMA response order line to be considered as complete, the State field of all its tasks must
be Closed Complete.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select an RMA order number.
5. Select the RMA response order lines tab.
6. Select New.
7. On the form, fill in the fields.
Create New RMA response order line form
Field

Description

Number

Unique number for the RMA response order
line.

Parent

Unique number for the RMA response order,
which is associated with this order number
line.

Model

Model of the asset for which the customer
has initiated an RMA request.

Quantity

Quantity of the asset.
This field is automatically set to 1.

Stage

Status of the RMA response order line.
This field is automatically set to Draft.

Assigned to

The individual responsible for working on the
RMA response order line.

Asset

List of assets that are in use and assigned to
the customer.

Notes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1457


<!-- page 1458 -->
Field

Description

Work notes

Notes about the task that are visible to all
users within your organization.

8. Select Save.

Result
• An RMA response order line with a unique number is created.
• The Stage field is set to Assess.
• The Asset tasks tab is created, displaying a unique asset task number with the task type as
RMA assessment.

What to do next

Assess the RMA asset.
Assess the RMA asset
Assess the Return Merchandise Authorization (RMA) asset using either an on-site or off-site
assessment procedure.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select an RMA order number.
5. Select the RMA response order lines tab.
6. Select the asset task number with the Task type as RMA assessment.
7. On the form, fill in the fields.
RMA assessment form
Field

Description

Number

Unique number for the RMA assessment task.

Asset order line

The RMA response order line number
associated with this task.

Due date

Estimated date of completing this task.

Asset

The asset that is selected while creating the
associated RMA response order line.
For more information, see Create an RMA
response order line.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1458


<!-- page 1459 -->
Field

Description

Assessment action

Assessment procedure to be followed for the
RMA asset.
◦ On site: A representative from the DaaS
provider visits the customer's premises to
assess the asset.
◦ Off site: The asset arrives at the DaaS
provider site for assessment.
◦ Denied: The RMA request is rejected.

Task name

Name of the current task.
This field is automatically set to RMA
assessment.

State

Status of the RMA assessment task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual
who is responsible for working on the RMA
assessment task.

Assigned to

The individual responsible for working on the
RMA assessment task.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all
users within your organization.

8. Select Close Task.

Result
• The result of the task completion changes according to the value selected in the Assessment
action field:
◦ If you select On site, a task is created displaying a unique asset task number with the task
type as Schedule after you refresh the list. The Stage field of the RMA response order line is
set to Schedule.
◦ If you select Off site, a task is created displaying a unique asset task number with the task
type as Ship after you refresh the list. The Stage field of the RMA response order line is set
to Ship.
◦ If you select Denied, the RMA response order line is set to Closed Complete. If there are no
more open RMA response order lines, then the RMA response order is closed.
• The State field of the RMA assessment task is set to Closed Complete.

What to do next

Schedule a visit to the customer site or Ship the asset to the DaaS provider
Schedule a visit to the customer site
Schedule a visit of the DaaS provider representative to the customer location.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1459


<!-- page 1460 -->
Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select an RMA order number.
5. Select the RMA response order lines tab.
6. Select the asset task number with the Task type as Schedule.
7. On the form, fill in the fields.
Schedule task form
Field

Description

Number

Unique number for the Schedule task.

Asset order line

The RMA response order line number
associated with this task.

Due date

Estimated date of completing this task.

Scheduled date

The scheduled date for the DaaS provider
representative to visit the customer's
location.

Task name

Name of the current task.
This field is automatically set to Schedule.

State

Status of the Schedule task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual who
is responsible for working on the Schedule
task.

Assigned to

The individual responsible for working on the
Schedule task.

Asset

The asset that is selected while creating an
RMA response order line.
For more information, see Create an RMA
response order line.

Short description

Brief description of the task.

Description

Detailed description of the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1460


<!-- page 1461 -->
Field

Description

Work notes

Notes about the task that are visible to all
users within your organization.

8. Select Close Task.

Result
• After the Schedule task is completed and you refresh the list, a task is created displaying a
unique asset task number with the task type as Evaluate RMA asset.
• The State field of the Schedule task is set to Closed Complete.
• The Stage field of the Inbound asset order line is set to Evaluation.

What to do next

Evaluate the RMA asset
Evaluate the RMA asset
Evaluate the Return Merchandise Authorization (RMA) asset on the scheduled date at the
customer location.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select an RMA order number.
5. Select the RMA response order lines tab.
6. Select the asset task number with the Task type as Evaluate RMA asset.
7. On the form, fill in the fields.
Evaluate RMA asset form
Field

Description

Number

Unique number for the Evaluate RMA asset
task.

Asset order line

The RMA response order line number
associated with this task.

Due date

Estimated date of completing this task.

State

Status of the Evaluate RMA asset task.
This field is automatically set to Open.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1461


<!-- page 1462 -->
Field

Description

Assignment group

The assignment group for the individual who
is responsible for working on the Evaluate
RMA asset task.

Evaluation result

◦ Repairable: The asset can be repaired.
◦ Replace: The asset can't be repaired and
the old asset would be returned to the
DaaS provider. A new inbound asset order
would get created for requesting a new
asset with the same model.

Task name

Name of the current task.
This field is automatically set to Evaluate
RMA asset.

Assigned to

The individual responsible for working on the
Evaluate RMA asset task.

Asset

The asset that is selected while creating an
RMA response order line.
For more information, see Create an RMA
response order line.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all
users within your organization.

8. Select Close Task.

Result
• The result of the task completion changes according to the value selected in the Evaluation
result field:
◦ If you select Repairable, a task is created displaying a unique asset task number with the
task type as Repair asset after you refresh the list. The Stage field of the RMA response
order line is set to Repair.
◦ If you select Replace, a task is created displaying a unique asset task number with the task
type as Ship after you refresh the list. The Stage field of the RMA response order line is set
to Inbound shipment. A new inbound asset order is created.
• The State field of the Evaluate RMA asset task is set to Closed Complete.

What to do next

Repair the RMA asset or Ship the asset to the DaaS provider
Repair the RMA asset
Indicate whether the Return Merchandise Authorization (RMA) asset has been repaired or
considered unrepairable.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1462


<!-- page 1463 -->
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select an RMA order number.
5. Select the RMA response order lines tab.
6. Select the asset task number with the Task type as Repair asset.
7. On the form, fill in the fields.
Repair asset form
Field

Description

Number

Unique number for the Repair asset task.

Asset order line

The RMA response order line number
associated with this task.

State

Status of the Repair asset task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual who
is responsible for working on the Repair asset
task.

Task name

Name of the current task.
This field is automatically set to Repair
asset.

Stockroom

This field is automatically populated with the
stockroom details that you provided in the
Receive task.
For more information, see Receive asset.

Note: This field doesn't include any
information for the On-site assessment
flow. For more information about
selecting the assessment action, see
Assess the RMA asset.
Due date

Estimated date of completing this task.

Assigned to

The individual responsible for working on the
Repair asset task.

Repair result

Indication of whether the Return
Merchandise Authorization (RMA) asset has
been repaired or considered unrepairable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1463


<!-- page 1464 -->
Field

Description

◦ Repaired
◦ Unrepairable
Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all
users within your organization.

8. Select Close Task.

Result
• The result of the task completion changes according to the value selected in the Repair result
field:
◦ If you select Repaired, a task is created displaying a unique asset task number with the task
type as Evaluate asset after you refresh the list. The Stage field of the RMA response order
line is set to Quality check.
◦ If you select Unrepairable, a task is created displaying a unique asset task number with the
task type as Ship after you refresh the list. The Stage field of the RMA response order line is
set to Inbound shipment. A new inbound asset order is created.
• The State field of the Repair asset task is set to Closed Complete.

What to do next

Evaluate the repaired asset or Ship the asset to the DaaS provider
Evaluate the repaired asset
Evaluate the status of the repaired asset and indicate the evaluation result as redeployable or
identified for disposal.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select an RMA order number.
5. Select the RMA response order lines tab.
6. Select the asset task number with the Task type as Evaluate asset.
7. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1464


<!-- page 1465 -->
Evaluate asset form
Field

Description

Number

Unique number for the Evaluate asset task.

Asset order line

The RMA response order line number
associated with this task.

State

Status of the Evaluate asset task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual who
is responsible for working on the Evaluate
asset task.

Evaluation result

Indication of whether the asset has to be
redeployed or disposed.
◦ Redeployable: The asset is functioning
properly.
◦ To be disposed: The asset didn't pass
certain quality checks and can't be
returned to the customer.

Task name

Name of the current task.
This field is automatically set to Evaluate
asset.

Stockroom

This field is automatically populated with the
stockroom details that you provided in the
Receive task.
For more information, see Receive asset.

Note: This field doesn't include any
information for the On-site assessment
flow. For more information about
selecting the assessment action, see
Assess the RMA asset.
Due date

Estimated date of completing this task.

Assigned to

The individual responsible for working on the
Repair asset task.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all
users within your organization.

8. Select Close Task.

Result

The result of the task completion changes according to the value selected in the Evaluation
result field:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1465


<!-- page 1466 -->
• If you select Redeployable, the State field of the Evaluate task is set to Closed Complete. The
Stage field of the RMA response order line is set to Completed.
• If you select To be disposed, a task is created displaying a unique asset task number with the
task type as Ship after you refresh the list. The Stage field of the RMA response order line is
set to Inbound shipment. A new inbound asset order is created.

What to do next

Ship the asset to the DaaS provider
Ship the asset to the DaaS provider
Return the asset to the DaaS provider and record the shipment details using the Ship task.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select an RMA order number.
5. Select the RMA response order lines tab.
6. Select the asset task number with the Task type as Ship.
7. On the form, fill in the fields.
Asset Task Details form
Field

Description

Number

Unique number for the Ship task.

Asset order line

The inbound asset order line number
associated with this task.

Due date

Estimated date of completing this task.

Asset

The asset that is selected while creating the
associated RMA response order line.
For more information, see Create an RMA
response order line.

Shipping carrier

Organization that's responsible for shipping
the assets to the DaaS provider. For example,
FedEx.

Ship from

The origin location for shipping the assets.

Ship date

The shipment date for delivering the assets
to the DaaS provider.

Task name

Name of the current task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1466


<!-- page 1467 -->
Field

Description

This field is automatically set to Ship.
State

Status of the Ship task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual who
is responsible for working the Ship task.

Assigned to

The individual responsible for working on the
Ship task.

Tracking number

Tracking number or reference number of the
shipment of the asset.

Ship to

Destination for the asset shipment.

Shipment order

Reference to the shipment record created in
the Shipment [sn_itam_common_shipment]
table.
This field is automatically populated when the
Ship task is closed.

Short description

Brief description of the task.

Description

Detailed description of the task.

Work notes

Notes about the task that are visible to all
users within your organization.

8. Select Close Task.

Result
• After the Ship task is completed and you refresh the list, a task is created displaying a unique
asset task number with the task type as Receive asset.
• The Shipment assets tab is displayed, which includes the shipment information.
• The State field of the Ship task is set to Closed Complete.
• The Stage field of the RMA response order line is set to Receive.

What to do next
Receive asset

Receive asset
After the shipment of the asset to the DaaS provider is complete, confirm the receipt of the asset
by using the Receive task.

Before you begin

Role required: sn_daas_ham.daas_asset_manager or inventory_user
• Install the Hardware Asset Management for DaaS application from ServiceNow Store
• Install the Hardware Asset Management application from ServiceNow Store

.

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1467


<!-- page 1468 -->
Procedure
1. Navigate to Workspaces > Hardware Asset Workspace.
2. Select the DaaS provider view.
3. Select the RMA orders tab.
4. Select an RMA order number.
5. Select the RMA response order lines tab.
6. Select the asset task number with the Task type as Receive asset.
7. On the form, fill in the fields.
Receive asset form
Field

Description

Number

Unique number for the Receive asset task.

Asset order line

The RMA response order line number
associated with this task.

Due date

Estimated date of completing this task.

Asset

The asset that is selected while creating the
associated RMA response order line.
For more information, see Create an RMA
response order line.

Asset received

Option to confirm the receipt of the asset.
Values:
◦ Yes: The asset is received by the DaaS
provider.
◦ No: The asset isn't received by the DaaS
provider.

Note: You must select Yes to close this
task.
Task name

Name of the current task.
This field is automatically set to Receive
confirmation.

State

Status of the Receive task.
This field is automatically set to Open.

Assignment group

The assignment group for the individual
who is responsible for working the Receive
confirmation task.

Assigned to

The individual responsible for working on the
Receive task.

Stockroom

Brief description of the task.

Short description

Detailed description of the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1468


<!-- page 1469 -->
Field

Description

Description

Notes about the task that are visible to all
users within your organization.

Work notes

Unique number for the Receive task.

8. Select Close Task.

Result
• The result of the task completion changes according to the value selected in the Asset
received field:
◦ If you select Yes for an on-site assessment of your asset, the State field of the Receive
task is set to Closed Complete. The Stage field of the Inbound asset order line is set to
Completed. The State field of the Inbound asset order is set to Closed Complete.
◦ If you select Yes for an off-site assessment of your asset, a task is created displaying a
unique asset task number with the task type as Evaluate RMA asset after you refresh the
list. The Stage field of the Inbound asset order line is set to Evaluation.
• The State field of the Receive asset task is set to Closed Complete.

What to do next

Evaluate the RMA asset

DaaS reference
Reference topics provide additional information about the lists and forms that you use to
configure and administer Asset as a Service.
Components installed with Hardware Asset Management for DaaS
Several types of components are installed with activation of the Hardware Asset Management for
DaaS (com.sn_daas_ham) plugin, including tables and user roles.

Roles installed

Role title [name]

Description

DaaS Manager
[sn_daas_ham.daas_asset_manager]

• Manages all aspects of DaaS, including
access and execution of important actions,
reports, and requests such as inbound
asset orders and Return Merchandise
Authorization (RMA) orders.

Contains
roles

Asset
Manager
[asset]

• Marks assets as DaaS assets.

Tables installed
Table

Description

RMA response
[sn_daas_common_rma_response_order]

Information about the Return Merchandise
Authorization (RMA) request with multiple order

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1469


