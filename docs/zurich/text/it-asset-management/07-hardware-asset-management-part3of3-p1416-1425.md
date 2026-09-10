# Zurich IT Asset Management — Hardware Asset Management

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1416–1425 of 2359 | Part 3 of 3

Sections: Hardware Asset Management (p1116); Explore (p1117); Configure (p1204); Use (p1209); Reference (p1387)

---

<!-- page 1416 -->
Maturity item details (continued)
Field

Description

• Crawl
• Walk
• Run
Suggested maturity level

Suggested maturity level for improved value
return of your HAM application.
• Crawl
• Walk
• Run

Start date

The start date of the maturity item.

Completed date

Completed date of the maturity item.

Purpose

Description of the purpose and outcome for
the maturity item.

Steps to complete

List of steps of how to accomplish the purpose
of the maturity item.

Work notes

Notes about the maturity item, which are
visible to all users within your organization.

Maturity stages of your Hardware Asset Management program
The maturity of your Hardware Asset Management (HAM) program is divided into three stages
such as Crawl, Walk, and Run.
Maturity stages
Stage

Description

Crawl

Begin your HAM journey, such as
implementing or developing a new HAM
program. At this stage, you can define models,
create stockrooms, identify tools to discover
data, and establish processes and roles.
You can set up a normalization process to
normalize models and get the date or time of
asset lifecycles.

Walk

Begin establishing processes, procedures,
policies, resources, and tools to execute
on the roadmap of the Hardware Asset
Management program. You can automate the
manual processes and procedures, which
you’ve established during the Crawl stage.
Move to automating more complex processes
by using HAM workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1416


<!-- page 1417 -->
Maturity stages (continued)
Stage

Description

Run

At this stage, you establish and use mature,
advanced, and automated processes and
procedures for centralized hardware asset
tracking and system management. You
use advanced capabilities like zero-touch
refresh, asset bundles, mobile classes, and
contract renewal workflows. You must also be
evaluating processes and establishing HAM
goals regularly.

Task closures that create shipment records
A shipment record is created automatically when any shipment task is closed. You can track a
shipment easily by specifying a tracking number and shipping carrier on the shipment task.
Sources of shipments
Source for updating
the shipment
record to Closed or
Delivered

Source flow

Task source for shipment record creation

Asset
Donation

The Select the assets departing for donation task is closed. The Confirmation
from charity
organization task is
closed.

Asset
disposal

The Asset departure task is closed.

The Vendor
confirmation task is
closed.

Note: You
can change
the tracking
number until
this task is
closed. If you
don't specify
any tracking
number, a
shipment
record is
created with
the Vendor
order ID as
the tracking
number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1417


<!-- page 1418 -->
Sources of shipments (continued)

Source flow

Purchase
order

Task source for shipment record creation

• Create hardware assets prior to delivery: When the
hardware asset records are automatically created.

Source for updating
the shipment
record to Closed or
Delivered

The purchase
order is received.

• Advanced shipment notification: When the assets are
imported for every unique tracking number specified in
the import file.

Note:
If the shipping carrier specified for a row in the
import file isn't available in the Shipping carrier
[sn_itam_shipping_carrier] table, then that row isn’t
imported. Also, no shipment record is created. You
must do one of the following and reimport the file:
◦ The shipping carrier must be included in the
Shipping Carriers list. For more details, see
Create a shipping carrier record.
◦ The value of the
sn_hamp.enable_shipping_carrier_validation_asn
system property must be set to false.
• Receive an asset: When the assets are received.

Note: The shipment record is created in the
Delivered stage.
Transfer
order

The Ship task of the Transfer order line item is closed.

The transfer
order line item is
delivered.

Note: You
can change
the tracking
number until
the Transfer
order line
item is in the
In Transit
stage.
Lease
expiration

The Ship task of the Return lease action is closed.

Return
confirmation task is
closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1418


<!-- page 1419 -->
Sources of shipments (continued)

Source flow

Source for updating
the shipment
record to Closed or
Delivered

Task source for shipment record creation

Return
1. The Shipment task of the Off-site return action is closed.
Merchandise
Authorization 2. The Vendor RMA decision task is closed.
(RMA)

1. Vendor RMA
decision task is
closed.
2. The Receive task
is closed.

Asset
reclamation

The Schedule shipment task for the Ship reclaim method is The Receive asset
closed.
task is closed.

Zero Touch
Refresh

The Request shipment task is closed.

The User asset
receive task is
closed.

Remote task definition inbound and outbound fields
The inbound and outbound fields of the remote task definition required for the Zero Touch
Refresh flow.

Inbound field values
For each field, the source table and target table are the Zero Touch Refresh Fulfillment Request
table [sn_itam_ztr_fulfillment_req].
The Target field value is the same as the Source field value. The value in the source field is sent
from the source table on the requester's ServiceNow instance to the target field in the table on
the provider's instance to which the source field is synced.
The Sync when value is Insert, which updates the target field on the remote task's parent record
only when the remote task is initially inserted.
Inbound fields
Max
length

Field label

Field name

Source field

Customer request
number

customer_request_number 40

Customer request number

Model

model

255

Model

State

state

40

State

Name

name

151

Name

Email

email

100

Email

Mobile

mobile

40

Mobile

Street

street

255

Street (street)

City

city

40

City (city)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1419


<!-- page 1420 -->
Inbound fields (continued)
Field label

Field name

Max
length

Source field

State or Province

state_loc

40

State/Province (state_loc)

Country

country

40

Country (country)

Zip or Postal code

zip

40

Zip/Postal code

Return name

return_name

151

Name (return_name)

Return street

return_street

255

Street (return_street)

Return city

return_city

40

City (return_city)

Return state or province return_state_loc

40

State/Province
(return_state_loc)

Return country

return_country

40

Country (return_country)

Return zip or postal
code

return_zip

40

Zip/Postal code (return_zip)

Outbound field values
For each field, the source table and target table are Zero Touch Refresh Fulfillment Request table
[sn_itam_ztr_fulfillment_req].
The Target field value is the same as the Source field value. The value in the Source field is sent
from the source table on the provider's ServiceNow instance to the target field on the table on
the requester's instance to which the source field is synced.
The Sync when value is Insert and Update, which updates the target field on the remote task's
parent record every time the remote task is updated.
Outbound fields
Field label

Field name

Max
length

Source field

Serial number

serial_number

100

Serial number

Asset tag

asset_tag

40

Asset tag

State

state

40

State

Tracking number

tracking_number

40

Tracking number (tracking_number)

Carrier

carrier

80

Carrier (carrier)

Return tracking
number

return_tracking_number 40

Tracking number
(return_tracking_number)

Return carrier

return_carrier

(return_carrier)

80

Decision tables for Hardware Asset Management flows
These readily available decision tables help you customize the flows in some of the Hardware
Asset Management features.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1420


<!-- page 1421 -->
Decision tables
Hardware Asset Management features

Decision tables

Hardware Asset Refresh

Hardware Asset Refresh Line Flow

Lease Contract Expiration

Lease Contract Expiration Flow

Leased Asset Buyout

Leased Asset Buyout Flow

Leased Asset Extension

Leased Asset Extension Flow

Leased Asset Return

Leased Asset Return Flow

Loaner Asset Request

Loaner Asset Request Flow

Source request from local stockroom

Asset Local Order Subflow

Note: The Asset Local Order Subflow
decision table is available with both
Hardware Asset Management and
Procurement plugins.
Reclamation

Asset Reclamation Flow

Hardware reclamation flow

Hardware Asset Reclamation Flow, Hardware
Asset Reclamation Line Flow

RMA request

Asset RMA Flow

RMA on-site repair

Asset RMA On-site Flow

RMA off-site repair

Asset RMA Off-site Flow

Contract renewal request

Contract Renewal Flow

Contract renewal tasks

Contract Renewal Tasks Flow

Service Catalog variable form fields
Fields on the variable help you to define variables for a catalog item.

Field

Description

Application

Read-only field that indicates the application can use this variable.

Type

The variable type that you want to create.

Catalog
item

Catalog item associated with the variable.

Order

Order in which the variable is placed on the catalog item page. The variables
are organized with lowest order value on the top and greatest order value at the
bottom.

Active

Option to make the variable available for use.

Mandatory

Option to mark the variable as required to order the catalog item.

Read only

Option to make the variable read only.

Hidden

Option to hide the variable.

Question tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1421


<!-- page 1422 -->
Field

Description

Question

Question to ask when ordering the catalog item.

Name

Name to identify the question.

Note:
If this field is empty, its value is auto-populated based on the Question
field.
Tooltip

Tooltip text to display when you hover over the variable. Enter a brief note to
describe the purpose of the Question.

Example
text

Hint that is displayed in the question field before you enters a value. Applicable
for the following variables:
• IP Address
• Email
• URL
• Single Line Text
• Wide Single Line Text
• Multi Line Text
• Date
• Date/Time

Annotation
Show help

Option to provide additional help and instructions for the variable.

Help tag

Tag to display the Help text. For example, "More information."

Help text

Help information for a service catalog variable.

Instructions

Information that requires rich text formatting or adding images to support help
information.

Type specifications
The fields in this section vary for each variable type.
Variable
Width

Width of the variable on the catalog item page, to specify what percentage of the
screen size that it can span.

Enable also
request for

Option to allow a catalog item request to be submitted for multiple users.
After you select this option, the Also request for field is displayed along with
Requested For variable in a catalog item.

Roles to use Option to specify the roles that can submit a catalog item request for multiple
also request users.
for
Choice
direction

The direction in which the list is arranged.
• Across: Arranges choices horizontally.
• Down: Arranges choices vertically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1422


<!-- page 1423 -->
Field

Description

This field appears for lookup multiple choice variables.
Choice field Table field to populate options for the variable. If no choices are defined for a
field, then the variable loads field-related distinct values from the table.
This field appears for select box variables.
Choice
table

Table with values to populate in the Choice field.
This field appears for select box variables.

Don’t select Check box to leave all options for the variable cleared on the catalog item page.
the first
If this check box is selected, the first choice for the variable selected by default.
choice
This field appears for multiple choice and numeric scale variables.
Dynamic ref
qual

Dynamic qualifier. Select a dynamic filter to run a query against the reference
field.
This field appears for reference variables when Use reference qualifier is set to
Dynamic.

Include
none

Check box to include the None option in a list of choices.

Layout

Layout for a container.

This field appears for lookup multiple choice, lookup select box, multiple choice,
and select box variables.

This field appears for container start variables.
List table

Table with the values for the list collector.
The table should have a display column specified. For more This field appears for
list collector variables.

Lookup from Table from which values are obtained for users to select. The values from this
table
table are populated in the Lookup value field.
This field appears for lookup multiple choice and lookup select box variables.
Lookup
value field

Field in the lookup table that populates options for the variable.
This field appears for lookup multiple choice and lookup select box variables.

Lookup
Comma-separated list of fields in the lookup table whose values are used to
label field(s) display options.
This field appears for lookup multiple choice and lookup select box variables.
Lookup
price field

Field in the lookup table whose value is used to modify the price of the item
being ordered.
This field appears for lookup multiple choice and lookup select box variables.

Lookup
recurring
price field

Field in the lookup table whose value is used to modify the recurring price of the
item being ordered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1423


<!-- page 1424 -->
Field

Description

This field appears for lookup multiple choice and lookup select box variables.
Macro

UI macro to insert into the catalog item.
This field appears for macro, macro with label, and UI page variables.

Summary
macro

Applicable only for Macro, and Macro with Label type variables.

Widget

Applicable only for Marco, and Macro with Label type variables.

Price if
checked

Price of the item.

Recurring
price if
checked

Price that increments for the item when you request more than one order of the
item.

Reference

Reference table for the variable. The table should have a display column
specified.

This field appears for check box variables.

This field appears for check box variables.

This field appears for reference variables.
Reference
qual

Qualifiers to restrict data that is available in the field. Supports reference
qualifiers and advance qualifiers.
This field appears for list collector, lookup multiple choice, lookup select box,
reference, and Requested For variables. The field also appears for reference
variables when Use reference qualifier is set to Dynamic.

Reference
qualifier
condition

Options to build conditions.

Scale max

Highest value on the scale of available options for the variable.

This field appears for reference variables when Use reference qualifier is set to
Simple.

This field appears for numeric scale variables.
Scale min

Lowest value on the scale of available options for the variable.
This field appears for numeric scale variables.

Unique
values only

Check box to require a unique value for the field. When this check box is
selected, two records can’t have the same value for that field.
This field appears for lookup multiple choice, lookup select box, and select box
variables.

Use
Check box to prompt users to reenter data to verify their entries.
confirmation
This field appears for masked variables.
Use
encryption

Check box to store the answer in encrypted format in the database. If not
encrypted, the answer is stored in plain text format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1424


<!-- page 1425 -->
Field

Description

This field appears for masked variables.
Use
reference
qualifier

Type of qualifier to use.

Validation
Regex

Regular expression that validates the variable value.

Variable
attributes

Attributes that define the behavior and restrictions for a variable.

This field appears for reference variables.

This field is displayed only for Single Line Text and Wide Single Line Text variable
types.

Default value
Default
value

Default value for the variable.

Auto-populate
Dependent
question

Reference type variable for the catalog item. This field is used to auto-populate
the variable.

Reference

Reference field for auto-populating the variable.

Permission
If no role is specified in this tab for the read, write, or create actions, all users who can access
the catalog item can perform these actions irrespective of their role.
A user with a role that doesn’t match any of the following roles can't set variable values even
through scripting.
These roles aren't available for Label, Break, Container Split, Container End, Macro, Macro with
Label, and UI Page variables.
Read roles

Roles that can view the variable before or after requesting the catalog item or
record producer. Only a user with the roles specified in this field can view the
variable.

Write roles

Roles that can edit the variable in the variable editor after requesting the catalog
item. If a user doesn’t have the roles specified in this field, the variable is readonly in the variable editor.

Create roles Roles that can create values for the variable before requesting the catalog item
or record producer. If a user doesn’t have the specified role, the variable is read
only before requesting the catalog item or record producer.
Availability
Visible
Elsewhere

If selected, the variable appears on the item form before ordering the item, in the
Variable Editor after ordering the item, and in the cart view of the item.

Visible on
Bundles

If selected, the variable appears when the item is added to a bundle.

Visible on
Guides

If selected, the variable appears when it’s added to an order guide, or when it’s
added to a catalog item that is included in the order guide.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1425


