# Zurich Sales and Order Management — Sales and Order Management / Lead and opportunity management

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 155–260 of 1408 | Part 2 of 2

Sections: Sales and Order Management (p5); Explore (p6); Lead and opportunity management (p9); Configure, price, quote (p19)

---

<!-- page 155 -->
The Minimum Field Length and Maximum Field Length allow you to set the minimum and
maximum number of characters that can be entered into the Text field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

155


<!-- page 156 -->
Number field options
In the top left portion of the Field Editor page you will see the Name and Variable Name you
created in the New Field page. You can change the Name Value, but the Variable Name value
is locked in and can only be changed if you delete the field and re-add it to the Bleuprint. You
can add a Description of the field and there is a Required toggle you can set if the field is to be a
required field on the buyside Layout.

The Default Access field allows you to modify the access to this field in the Default View. You can
make this field Read/Write accessible by choosing Editable as the access, you can set the field
access to Read-Only, which means that the field will be visible on the buyside Layout but you will
not be able to modify the field value directly, or you can set the field access to No Access which
means that the field will be hidden from view on the buyside Layout and will not be accessible via
APIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

156


<!-- page 157 -->
Number fields can take one of three forms, Number, Currency, or Percentage. Choose which form
you want this Number field to take.
The Unit Label field allows you to determine what you would like the Unit Label to be for this
numeric field. If the Number field is a Currency, then the Unit Label will be the default Currency
symbol for your ServiceNow CPQ site. If the Number field is a Percentage then the Unit Label will
be the Percent symbol (%).
The Minimum Value and Maximum Value fields allow you to set the minimum and maximum
numeric value that will be allowed in this Number field.

The Default Value field allows you to set the default numeric value for this Number field.

Boolean field options
In the top left portion of the Field Editor page you will see the Name and Variable Name you
created in the New Field page. You can change the Name Value, but the Variable Name value
is locked in and can only be changed if you delete the field and re-add it to the Bleuprint. You
can add a Description of the field and there is a Required toggle you can set if the field is to be a
required field on the buyside Layout.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

157


<!-- page 158 -->
The Default Access field allows you to modify the access to this field in the Default View. You can
make this field Read/Write accessible by choosing Editable as the access, you can set the field
access to Read-Only, which means that the field will be visible on the buyside Layout but you will
not be able to modify the field value directly, or you can set the field access to No Access which
means that the field will be hidden from view on the buyside Layout and will not be accessible via
APIs.

The default value for a Boolean field is either True or False. The Default Checked toggle
determines whether the Boolean field is set to True or False as its default value.
The True Label field allows you to set the text value of the field when the Boolean value is True
(for example, you might set the True Value to “Yes”). The False Label allows you to set the text
value of the Boolean field when the field value is False (for example, you might set the False
Value to “No”).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

158


<!-- page 159 -->
Picklist field options
In the top left portion of the Field Editor page you will see the Name and Variable Name you
created in the New Field page. You can change the Name Value, but the Variable Name value
is locked in and can only be changed if you delete the field and re-add it to the Bleuprint. You
can add a Description of the field and there is a Required toggle you can set if the field is to be a
required field on the buyside Layout.

The Default Access field allows you to modify the access to this field in the Default View. You can
make this field Read/Write accessible by choosing Editable as the access, you can set the field
access to Read-Only, which means that the field will be visible on the buyside Layout but you will
not be able to modify the field value directly, or you can set the field access to No Access which
means that the field will be hidden from view on the buyside Layout and will not be accessible via
APIs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

159


<!-- page 160 -->
The Selection Type option allows you to define the Picklist as either a Single Select menu or a
Multi Select menu.
The Comparison Type option allows to determine how the value of the menu option will be
treated when it is used in some form of comparison situation. Will the menu option be treated as
a Text value or a Number value for comparison purposes.
The + Picklist Option link allows you to add the first menu option to this Picklist menu field.

When adding a Picklist (Menu) Option, you need to consider the following field values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

160


<!-- page 161 -->
Order: This numeric field allows you to determine the order of the menu options in the menu.
The lower the number the higher the place in the menu. It is recommended that you leave some
room between the Order values to better facilitate menu maintenance down the road. Instead of
numbering your menu options 1-5, number them 10, 20, 30, 40, 50. This leaves numerical room in
the order sequence if you have to add new menu items into the menu later on.
Option Label: This is the display name of the menu option, the value that the buyside user will
see displayed on the Transaction Manager Layout.
Option Value: This is the variable name of the menu option, this is the value that the ServiceNow
CPQ software will use to identify this menu option in the menu.
Selected: This toggle allows you to determine if any of the menu options should be the default
value for the menu.
Description: This field allows you to add a description of the menu option.
Image URL: This field allows you to enter the URL location of a graphic image that you would like
to use in the menu to create an image menu instead of a text menu.
Once the necessary information is entered click Save Option to add this menu option to the list
of options for this Picklist field. Use the +Add Option button that appears above the list of menu
options to the right, to add additional menu options to the menu.

Date/time field options
In the top left portion of the Field Editor page you will see the Name and Variable Name you
created in the New Field page. You can change the Name Value, but the Variable Name value
is locked in and can only be changed if you delete the field and re-add it to the Blueprint. You
can add a Description of the field and there is a Required toggle you can set if the field is to be a
required field on the buyside Layout.

The Default Access field allows you to modify the access to this field in the Default View. You can
make this field Read/Write accessible by choosing Editable as the access, you can set the field
access to Read-Only, which means that the field will be visible on the buyside Layout but you will
not be able to modify the field value directly, or you can set the field access to No Access which
means that the field will be hidden from view on the buyside Layout and will not be accessible via
APIs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

161


<!-- page 162 -->
The Default Value field allows you set the default date and time setting for the Date/Time field.
The value will be converted to UTC timezone and Zulu format ( YYYY-MM-DDTHH:MM:SSZ)

The Not Before and Not After fields allow you to set the minimum and maximum date/time values
for this Date/Time field.

For additional information on the Date/Time field type, see Transaction Manager: Date and Time
Fields.
Related topics
Transaction Manager
Transaction Manager: Transaction-level system fields
Transaction Manager: Line-level system fields
Transaction Manager: Date and Time Fields
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

162


<!-- page 163 -->
Transaction Manager: Transaction-level system fields
Learn about the Transaction Manager fields that provide general information about the
transaction, such as the quote number and account information.
The fields available in Transaction Manager are categorized into two levels in the user interface
(UI):
• Transaction-Level Fields: Also known as header-level fields, these fields provide general
information about the transaction, such as the quote number, opportunity details, and account
information.
• Transaction Line-Level Fields: Also referred to as line-level fields, these fields capture specific
information about the products associated with the transaction lines, including price, product
details, and order information. For more information about line-level fields, see Transaction
Manager: Line-level system fields.

System-provided fields in Transaction Manager
By default, Transaction Manager offers a set of system-provided fields that assist administrators
in transaction processing.
This article focuses on transaction-level (header-level) fields that are predefined by the system.
• System-generated fields at the header level use the prefix “txn” followed by the actual field
name.
• Custom header-level fields created by administrators are prefixed with “txn.custom” followed
by the desired field name.

List of system-provided header-level fields
The following table outlines the system-provided fields at the transaction level.
• Variable Name: The system-defined name of the field as configured in the environment.
• Description: A brief overview of the purpose and use case of the system field.
• Modifiable: Indicates who can edit the field configurations:
◦ System: The values of system-modifiable fields can only be set by the application. End-users
cannot edit these fields. Administrators cannot determine the values of these fields via rules.
◦ User: Any authorized end user with the appropriate permissions can update the field value.
Determination rule actions can also modify the field value.
• Default Value: The initial value assigned to the system field, specifying what can be set as the
default during configuration.
System-provided header-level fields
Variable name

Description

Modifiable Default value

txn.id

uuid or unique ID of the
transaction

System

<Generated>
Auto-generated by
System upon creation
of a transaction.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

163


<!-- page 164 -->
System-provided header-level fields (continued)
Variable name

Description

Modifiable Default value

txn.account.id

The ID of the account which
was used while creating a new
transaction

User

The ID of the opportunity
through which the transaction is
created

User

The pricebook entry associated
with the products chosen by
user

User

txn.opportunity.id

txn.pricebook.id

<Empty>
Expected to be
passed in on create
<Empty>
Expected to be
passed in on create
<Empty>
blank will be
interpreted as the
default pricebook

txn.pricing.currencyCode The currency associated with the User
products chosen by user

<Empty>
blank equals base
currency for the
tenant.

txn.created

Timestamp when the transaction System
was created

<Generated>
Auto-generated by
System upon creation
of a transaction.

txn.createdBy

Name of the user who created
the transaction

System

<Generated>
Auto-generated by
System upon creation
of a transaction.

txn.modified

Timestamp of last modification
on a Transaction

System

<Generated>
Auto-generated by
System upon update
of a transaction
record.

txn.modifiedBy

Name of the user who performed System
the last modification on the
transaction

<Generated>
Auto-generated by
System upon update
of a transaction
record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

164


<!-- page 165 -->
System-provided header-level fields (continued)
Variable name

Description

Modifiable Default value

txn.externalId

Unique identifier which is used
to reference a transaction
in external connections/
integrations

User

The stage or status of a
transaction

System

txn.stage

<Empty>
Expected to be
passed in on create
<Generated>
Auto generated by
system depends on
configuration

txn.persona

Persona of the user who
performed the request

System

<Generated>
Auto generated by
system; depends on
configuration

Related topics
Transaction Manager: Fields
Transaction Manager: Line-level system fields
Transaction Manager: Date and Time Fields
Transaction Manager: Line-level system fields
Learn about the Transaction Manager fields that capture information about the product, including
price, product details, and order information.
The fields available in Transaction Manager are categorized into two levels in the user interface
(UI):
• Transaction-Level Fields: Also known as header-level fields, these fields provide general
information about the transaction, such as the quote number, opportunity details, and account
information. For more information about transaction-level fields, see Transaction Manager:
Transaction-level system fields.
• Transaction Line-Level Fields: Also referred to as line-level fields, these fields capture specific
information about the products associated with the transaction lines, including price, product
details, and order information.

System-provided fields in Transaction Manager
By default, Transaction Manager offers a set of system-provided fields that assist administrators
in transaction processing.
This article focuses on transaction-line-level fields that are predefined by the system.
• System-generated fields at the line level use the prefix “txn.line” followed by the actual field
name.
• Custom line-level fields created by users are prefixed with “txn.line.custom” followed by the
desired field name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

165


<!-- page 166 -->
List of system-provided line-level fields
The following table outlines the system-provided fields at the transaction line level.
Columns:
• Variable name: The system-defined name of the field as configured in the environment.
• Description: A brief overview of the purpose and use case of the system field.
• Modifiable: Indicates who can edit the field configurations:
◦ System: Only the System Administrator can modify the field.
◦ User: Any authorized end user with the appropriate permissions can update the field
configurations.
• Default value: The initial value assigned to the system field, specifying what can be set as the
default during configuration.
Table of system-provided line-level fields
Variable name

Description

txn.line.id

The UUID for the
System
transaction line. This needs
to be unique across sectors
and regions for any one
tenant. (May not be unique
across tenants)

txn.line.parent.id

The txn.line.id of the parent
line

Modifiable Default value

User

<Generated >
Autogenerated by
the system
<Empty>
Expected to
be passed by
user

txn.line.isProduct

A boolean field to indicate
if the product added in
the line is available in our
catalogue database. (Some
products might not be
part of the logik database,
they might be getting
added from the customer
environment)

System

txn.line.product.id

The product ID of the
simple product added in
the lines

System

FALSE

<Generated>
Autogenerated by
the system
Stage setting
“Refresh
Product
Data” will
refresh data
if Enabled.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

166


<!-- page 167 -->
Table of system-provided line-level fields (continued)
Variable name

Description

Modifiable Default value

txn.line.product.name

The name of the product
System
selected to be added in the
transaction lines

<Generated>
Autogenerated by
the system
Stage setting
“Refresh
Product
Data” will
refresh data
if Enabled.

txn.line.product.externalId

The externalId of the
System
product added in the
transaction lines (defined in
the ServiceNow CPQ Admin
utilities)

<Generated>
Autogenerated by
the system
Stage setting
“Refresh
Product
Data” will
refresh data
if Enabled.

txn.line.product.partnerId

The partnerId of the
System
product added in the
transaction lines (defined in
the ServiceNow CPQ Admin
utilities)

<Generated>
Autogenerated by
the system
Stage setting
“Refresh
Product
Data” will
refresh data
if Enabled.

txn.line.product.productCode

The product code of the
System
product added in the
transaction lines (defined in
the ServiceNow CPQ Admin
utilities)

<Generated>
Autogenerated by
the system
Stage setting
“Refresh
Product
Data” will

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

167


<!-- page 168 -->
Table of system-provided line-level fields (continued)
Variable name

Description

Modifiable Default value

refresh data
if Enabled
txn.line.product.description

The description of the
product that is added on
the transaction lines

System

<Generated>
Autogenerated by
the system
Stage setting
“Refresh
Product
Data” will
refresh data
if Enabled.

txn.line.created

txn.line.createdBy

txn.line.modified

txn.line.modifiedBy

txn.line.isConfigured

txn.line.configuration.id

The timestamp when a
particular transaction line
was added.

System

The name of the user
who added the particular
transaction line.

System

The timestamp when a
particular transaction line
was last modified on

System

The name of the user
who performed the
last modification on a
transaction line.

System

Boolean indicating if this is
a configured line (a simple
product added) or a top
level configured line (top
line level of a configuration
consisting of parent and
child products)

System

UUID of the configuration

System

<Generated>
Autogenerated by
the system.
<Generated>
Autogenerated by
the system
<Generated>
Autogenerated by
the system
<Generated>
Autogenerated by
the system
FALSE
Auto-set to
true if the
configuration
is added
<Empty>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

168


<!-- page 169 -->
Table of system-provided line-level fields (continued)
Variable name

Description

Modifiable Default value

Remains
unused if
there is no
configuration
txn.line.configuration.solutionId

UUID of the solution the
configuration is a part of

System

<Empty>
Remains
unused if
there is no
configuration

txn.line.configuration.item.id

txn.line.configuration.item.price

txn.line.configuration.item.quantity

txn.line.configuration.item.type

txn.line.configuration.item.notes

Configuration item ID of
the items in BOM once a
configuration is added

System

Configuration item price of
the items in BOM once a
configuration is added

System

Configuration item quantity
of the items in BOM once a
configuration is added

System

Configuration item type of
the items in BOM once a
configuration is added

System

Configuration item notes
of the items in BOM once a
configuration is added

System

<Empty>
Remains
unused if
there is no
configuration
0
Remains
unused if
there is no
configuration
0
Remains
unused if
there is no
configuration
<Empty>
Remains
unused if
there is no
configuration
<Empty>
Remains
unused if
there is no
configuration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

169


<!-- page 170 -->
Table of system-provided line-level fields (continued)
Variable name

Description

txn.line.configuration.item.description

Description mentioned
System
when the configuration item
was created

txn.line.configuration.item.parentProduct

txn.line.configuration.item.uom

txn.line.configuration.item.bomType

txn.line.configuration.item.extPrice

txn.line.configuration.item.orderNumber

txn.line.configuration.item.rollUpPrice

Modifiable Default value

txn.line.configuration.item.id System
of the parent product for
the configuration item
added in BOM

The unit of measure used
to define the configuration
item while it was created.

System

<Empty>
Remains
unused if
there is no
configuration
<Empty>
Remains
unused if
there is no
configuration
<Empty>
Remains
unused if
there is no
configuration

The BOM type defined for
System
a configuration item when it
was created.

Configuration Qty * Price
defined in the extPrice
column of the configuration
item.

System

Order number of the
configuration item when it
was added

System

<Empty>
Remains
unused if
there is no
configuration
0
This field will
not exist if
there is no
configuration

The values that is defined in System
the rollupPrice column for
the configuration item while
it was created

<Empty>
Remains
unused if
there is no
configuration
0
Remains
unused if
there is no
configuration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

170


<!-- page 171 -->
Table of system-provided line-level fields (continued)
Variable name

Description

Modifiable Default value

txn.line.configuration.item.uniqueIdentifier Unique identifier used
to define a configuration
item that is useful for
reconfiguration

System

txn.line.configuration.item.key

Used as a fallback to match
configuration items on
reconfigure when unique
identifier can’t be used

System

Used to determine if we
should show the entry on
the Line Item Grid or not

User

Used in rule conditions
to perform actions on
selected lines. The field is
set to true when a line-level
event runs

System

txn.line.isVisible

txn.line.selected

<Empty>
user
generated
but once
created, can’t
be modified
<Empty>
Generated by
system when
the lines are
added
TRUE
To be
selected by
the user
False
Field is set to
True during
the course
of running
an event on
lines
This value is
set to True
on all lines
affected by
the event. For
example, if
you delete
a top level
line of a
configuration,
all child lines
that will be
deleted will
have this
field set to
True during
the course
of an event
running. After
all actions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

171


<!-- page 172 -->
Table of system-provided line-level fields (continued)
Variable name

Description

Modifiable Default value

are complete,
this value will
be set back
to False
txn.line.isReorderable

Indicates if a line can be
reordered.

User

True
Value of true
indicates
reorder is
enabled.
Value of false
indicates
reorder is
disabled.

txn.line.configuration.status

txn.line.configuration.validatedAt

txn.line.isNew

Indicates configuration
validation status. Supports
Validate Configured Items
on Event Setting.

System

Indicates date of last
configuration validation.
Supports Validate
Configured Items on Event
Setting.

System

Indicates if a line is new
(true) or existing (false).

System

<Empty>
Generated by
system when
the lines are
added
<Empty>
Generated by
system when
the lines are
added
<Empty>
Generated by
system when
the lines are
added.
The value
will be ‘true’
during the
operation of
the event the
new line was
created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

172


<!-- page 173 -->
Related topics
Transaction Manager
Transaction Manager: Transaction-level system fields
Transaction Manager: Date and Time Fields
Transaction Manager: Date and Time Fields
Learn about the Transaction Manager fields that capture times and dates with times values.
A date/time field in transaction manager captures important dates or dates with time value
for various purposes. In CPQ, these dates are critical for determining how long a contract or
subscription lasts, when renewals are due, and how pricing is applied over time. Examples of
how date and date/time fields display to the End user UI:
• Date Only: YYYY-MM-DD (e.g., 2024-11-07)

• Date + Optional Time: YYYY-MM-DDTHH:MM:SS (e.g., 2024-10-22T14:30:00).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

173


<!-- page 174 -->
Administrators can decide whether to include the time component.

Date-only fields are time-zone agnostic. Dates/Times are stored in UTC to avoid time-zone
discrepancies.

Create a new date/time field
1. Navigate to the Logik Admin page → Transactions → Associated fields → Create Field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

174


<!-- page 175 -->
2. In the dialog box, enter the name of the field e.g. “Test date Doc“. Enter the type as Date/Time
and click Save.

3. Open the created field and set the access based on your use case and click Save.

Display the new date/time field in the buyside interface
To make sure that the newly created field appears in the User UI, we need to include the field in
the layout defined for the blueprint. Currently, the layout is defined by the JSON input file and
modifications in the same can add changes to the end user UI.
Sample JSON file
To add the “Test date doc“ field to layout, Follow these steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

175


<!-- page 176 -->
1. Click Logik Admin → Transaction → Layouts → the name of the stage.

2. The layout JSON must be edited in two places.
◦ In the “fields” section, add your new date field with type, label and variableName. In the
example below, we add “Test date doc” below the existing field “Start date“. While writing the
code for the new field, make sure the variable name exactly matches the associated fields
variable name.

Note: In this example, we have used a field that displays only the date. So the type
given in layout JSON is “type“:”Date”. If you want to create a field that displays time as
well, then the type should be “type“:”DateTime”.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

176


<!-- page 177 -->
◦ In the “layout”: “tiers”: “columnSets”: “elements”: section, define the column order of the
new field in the “elements“ section of the same JSON layout to adjust the position of the
field in the buyside UI. Ensure the variable name is exactly the same.

3. When the changes are done, Click Save, and then click Deploy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

177


<!-- page 178 -->
4. Create a new transaction and click Edit transaction. This is how the newly created Date/Time
field looks.

The purpose of Date/Time fields
A new Date field type is introduced to support:
1. Term Calculations:
◦ Calculates contract terms, start/end dates, renewals, and lengths.
◦ Blank/null dates can impact term accuracy; system defaults (e.g., current date) or error flags
can handle missing dates.
2. Auditing Events:
◦ Tracks activities like quotes, payments, or contract signing.
◦ Missing dates can indicate incomplete data and must be flagged for review.

Calculating Dates in Rules
Term calculations involve determining the duration of a contract, subscription, or pricing
agreement. Sometimes we may need to calculate the data and display the output in another field
which can be useful for auditing purposes. For example, we shall consider the start date and end
date available in the buyside UI and calculate the difference between both the dates in terms of
months and days and display the value into another field called “Subscription term“. Here is how
we do it.
1. In <ph keyref="var.cpq-som"/> Admin, click Related Rules, and then click New Rule. Enter
the name of the rule and define the conditions. For the use case, we name the rule “Calculate
subscription term date“ and its condition as “Start date.“ “End date“ should not be null. See the
following example.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

178


<!-- page 179 -->
2. Since we need to determine the value of another field, add a determination action and provide
the script file that would do the calculation in the advanced script section. The following script
snippet performs the calculation.
// Script calculates the difference between start and end dates
in months and days and displays the output in Subscription
Term (Months).
var yearsDiff = txn.custom.endDate.getFullYear() txn.custom.startDate.getFullYear();
var monthsDiff = txn.custom.endDate.getMonth() txn.custom.startDate.getMonth();
var totalMonths = yearsDiff * 12 + monthsDiff;
var startDay = txn.custom.startDate.getDate();
var endDay = txn.custom.endDate.getDate();
var daysInMonth = new Date(txn.custom.endDate.getFullYear(),
txn.custom.endDate.getMonth() + 1, 0).getDate();
var dayFraction = (endDay - startDay + 1) / daysInMonth;
totalMonths += dayFraction;
return Math.floor(totalMonths * 1000) / 1000;
Enter the script in the script editor; click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

179


<!-- page 180 -->
3. Associate the newly created rule to the blueprint. Navigate to Rule Groupings →
draftStageRuleGroup (Name of the stage where rule should be applied) → Associate Rules →
Search the name of the rule → Drag to the left pane → Click Done → Deploy

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

180


<!-- page 181 -->
4. Validate by giving values in start date and end date in the buyside interface. The subscription
term will get auto-populated based on the script used.

Behaviors for Date/Time fields in Scripts
• Blank/Null Dates
Blank/null dates compare as FALSE unless compared to another blank value.
date123 = "" → TRUE
date123 != "" → FALSE
• Date Comparisons
Supported comparisons: <, <=, >, >=, =, !=
Examples show that comparisons involving blank/null dates always evaluate to FALSE.
• Aggregates
◦ Max/Min: Find latest/earliest date.
◦ Count: Counts non-empty date values.
◦ Sum/Avg: Not recommended, as these may trigger compile-time errors while scripting.

Note:
• Accurate storage of dates (including time zones) is critical for revenue recognition and
reporting.
• Default values for Date fields are empty/null unless specified.
Related topics
Transaction Manager
Transaction Manager: Fields

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

181


<!-- page 182 -->
Transaction Manager: Transaction-level system fields
Transaction Manager: Line-level system fields
Transaction Manager: Layouts
Layouts in Transaction Manager can be managed in the Admin UI or via API calls in either JSON
or YAML formats. This topic provides the details of the various fields, buttons, and effects, and
provides code snippets.
In Transaction Manager, layouts retain much of the look and feel of the configuration user
experience. These layouts are created and managed in either JSON or YAML formats and can be
managed in the Admin UI or via API. Transaction fields, event buttons, UI effects, and transaction
lines are available for display and are detailed below.
When you create a layout in Transaction Manager, you give the layout a name and a variable
name. The Name value can be whatever you would like it to be. However, the variable name of the
layout file must follow one of the following naming conventions in order for the software to locate
the layout as part of the Blueprint.
Transaction layout files need to have their Layout File variable name be in either one of the two
following formats:
• <blueprintVarName>_<stageVarName>
Examples:default_draft.yamlORdefault_draft.json
• <blueprintVarName>_layout
Examples:default_layout.yamlORdefault_layout.json
An optional layout feature is the Line Detail layout, which displays details on a selected line in
the Line Item Grid. This view is initiated via the Line Detail UI effect. This layout requires its own
layout file. The variable name of the Transaction Line Detail layout file needs to be in one of the
following two formats:
• <blueprintVarName>_<stageVarName>_linedetail
Examples:default_draft_linedetail.yamlordefault_draft_linedetail.json
• <blueprintVarName>_layout_linedetail
Examples:default_layout_linedetail.yamlordefault_layout_linedetail.json
For more information about the Line Detail UI effect, see Transaction Manager: Layouts - UI
effects.

Layout formats (JSON and YAML)
Layouts can be managed in either JSON or YAML. This is a step in our progression towards a
visual-based layout editor, as the YAML data format will serve as the underlying data for the
visual editor. YAML will be selected by default, but Admins can toggle to JSON.
YAML provides several benefits, including:
• Better readability: fewer extraneous wrappers like quotes and brackets
• Schemas ease-of-use:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

182


<!-- page 183 -->
◦ Enhanced validation
◦ Allows property help on hover
◦ Autocomplete with acceptable values
• Supports comments

Note: YAML has more validation capabilities. There may be cases when the JSON format
is valid and save-able, but when viewing the same layout in YAML, errors will be identified
and saving will be disabled. In this case, Admins can still toggle to and save in the JSON
format.

Creating a new layout
To create a new layout, navigate to the Transaction Manager Admin UI, click Layouts in the
Admin Menu on the left, and then click + Add Layout to add a new layout to the blueprint.

The layout requires a name and a variable name. Click in the Name field and enter the name of
the new layout. As the Name value is being entered in the Name field the same value is being
mirrored in the Variable Name field. By default, Transaction Manager makes the variable name
the same as the Name value that the Admin enters. The variable name however in created
using “camel case” and all spaces and special characters are removed from the name. For
example, If you type “My First Layout” for the Name field, the Variable Name field will contain
“myFirstLayout”. If you want to create your own custom variable names, click the pencil icon
at the right end of the Variable Name field and you will be allowed to enter your own value for
Variable Name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

183


<!-- page 184 -->
The code for the layout is then entered into the editor below the Name and Variable Name fields.
Notice that the Name and variable name values that you created are automatically placed into
the code for the new layout. The code for the rest of the layout definition can either be entered
directly in the Editor or it can be created in another tool and then copy/pasted into the editor.
Below are code examples to add various objects into the layout.
Use these examples as a starting point for creating your layout. Once you are done, you can Save
your layout by clicking Save in the top right corner of the page.
If there are errors in the code, the Save button will be disabled. To identify errors, select the error
messages button in the sub-header or look for red marks on the right hand side of the code
display area as you scroll down through the code. These red marks denote an error in the code,
and you should see the offending item in the code underlined with a red underline.

General layout information
At the top of the layout file is some General layout Information that details overall layout
characteristics. These general characteristics include:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

184


<!-- page 185 -->
Version
The version of the layout JSON.
Label
The display name of the layout.
Variable name
The variable name of the layout.
Currency
Allows you to define the currency symbol to display in the layout in currency
fields. Using the value “symbol” simply tells the layout to use whatever the default
currency symbol is for the ServiceNow CPQ environment.
TierDef
Allows you to define the type of layout you want to display to the user. You can
choose from Accordion, Expandable, Tabs, Vertical tabs, Headings, Pages
Layout
You can define the display name of the layout as well as the variable name of the
layout.
YAML code sample:
# Layout version
version: 1
# Layout identifiers
label: Example layout
variableName: default_ExampleLayout
# Tier definitions
tierDef:
- depth: 1
representation: BasicContainer
# Layout
layout:
label: layoutsection
variableName: layoutsection
tiers:
- label: tier1
variableName: tier1
depth: 1
JSON code sample:
{
"version": 1,
"label": "Approved",
"variableName": "default_approved",
"currency": {
"currencyDisplay": "symbol"
},
"tierDef": [
{
"depth": 1,
"representation": "ExpandableSection"
}
],
"layout": {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

185


<!-- page 186 -->
"label": "layoutsection",
"variableName": "layoutsection",

Tiers
Tiers are sections of information for your transaction. Tiers are the top of the hierarchical
structure of a Transaction Manager Layout. You can use tiers to organize your transaction
information so that it is easier to find and understand for the buyside user.
For tiers you need to define:
Label
The display name of the tier on the buyside UI (the version of the layout JSON).
Variable name
The variable name of the tier.
TierDef
Tiers can be nested in each other to allow you to create sections and sub-sections
of information for your transaction. Tier depth defines at what level of the tier
hierarchy does this tier reside. A value of 1 indicates the top level of the tier
hierarchy.
YAML code sample:
# Layout
layout:
label: layoutsection
variableName: layoutsection
tiers:
- label: tier1
variableName: tier1
depth: 1
JSON code sample:
"tiers": [
{
"label": "Transaction",
"variableName": "transaction",
"depth": 1,

Columnvsets
As in configuration, Column sets are objects in the layout that allow you to organize fields and
events on the buyside display. Fields and events can be arranged horizontally in a column set.
Fields and events are arranged vertically by using multiple column sets in the same tier.
For each column set, you define:
Variable name
The variable name of the column set.
Elements
An array of the field and event objects that are to be displayed in this column set.
YAML code sample:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

186


<!-- page 187 -->
columnSets:
- elements:
- type: field
columnOrder: 1
variableName: txn.opportunity.id
variableName: col1
JSON code sample:
"columnSets": [
{
"variableName": "col0",
"elements": [

Columnsets: fields
Fields are one type of object that are placed in the Elements array of a columnset.
For each field to be displayed in a column set, you need to define:
Type
Either field or event.
Variable name
The variable name of the field.
Column order
Allows you to define the horizontal placement of the field in the column set. If all
objects in the elements Array for a column set have the Column Order set to 1, the
objects will be placed into the column set in the order that they appear in the array.
Class info
A set of predefined HTML class types that allow you better control where in the
layout an object resides.
YAML code sample:
columnSets:
- elements:
- type: field
columnOrder: 1
variableName: txn.opportunity.id
- type: field
columnOrder: 1
variableName: txn.custom.opportunityName
- type: field
classInfo: mw20
columnOrder: 1
variableName: txn.custom.primaryContact
variableName: col1
JSON code sample:
"elements": [
{
"type": "field",
"variableName": "txn.custom.status",
"columnOrder": 1
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

187


<!-- page 188 -->
{
"type": "field",
"variableName": "txn.custom.quoteName",
"columnOrder": 1,
"classInfo": "mw20"
}
]
},

ColumnSets: events
Events are objects that cause certain actions to be taken, typically represented in the layout via a
button.
For an event in the layout, you need to define:
Type
Either field or event.
Variable name
The variable name of the event.
Label
The display name of the event, the name that will appear on the button.
Column order
Allows you to define the horizontal placement of the field in the column set. If all
objects in the elements Array for a column set have the Column Order set to 1, the
objects will be placed into the column set in the order that they appear in the array.
YAML code sample:
To be added
JSON code sample:
"elements": [
{
"type": "event",
"variableName": "submitForApproval",
"label": "Submit for Approval",
"columnOrder": 2
},
{
"type": "event",
"variableName": "revise",
"label": "Revise",
"columnOrder": 3
},

Line Item Grid (LIG)
The Line Item Grid object provides a display of the product information that is included in the
Transaction. Detailed product information and pricing information is displayed in the Line Item
Grid object.
For the Line Item Grid you need to define:
Label
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

188


<!-- page 189 -->
The display name of the Line Item Grid.
Variable name
The variable name of the Line Item Grid.
Depth
Allows you to define the tier depth at which the Line Item will be displayed.
LineGrid
Here you define the Transaction Line level fields and the order in which they will
be displayed. The Line Item Grid is a tabular structure where the fields define the
columns displayed in the table.
The Line Item Grid has the following layout properties:
• showLineNumbers: enables user-friendly line numbers; value of ‘true’ enables
• supportLongText: a LIG field property, enables a popover on the field when selected;
value of ‘true’ enables
• autoScrollIntoView: smooths the scroll interaction between the transaction body and
LIG; value of ‘true’ enables
YAML code sample:
- depth: 1
label: Line Items
lineGrid:
columns:
- order: 1
variableName: txn.line.product.name
- order: 2
variableName: txn.line.product.partnerId
showLineNumbers: true
lineLevelButtons:
- icon: settings
label: Line Details
uiEffect:
type: lineDetail
target: slideout
variableName: reconfig
- event: cloneLine
label: Clone Lines
variableName: cloneLine
- label: Add To Favorites
uiEffect:
type: addFavorite
variableName: addFavorites
gridHeaderButtons:
- label: Add Lines
uiEffect:
type: productSearch
target: slideout
options:
products: true
favorites: true
variableName: productSearch
- label: Add To Favorites
uiEffect:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

189


<!-- page 190 -->
type: addFavorite
variableName: addFavorites
- label: Reconfigure Lines
uiEffect:
type: reconfigure
target: slideout
variableName: reconfig
autoScrollIntoView: true
variableName: lineItems

JSON code sample:
{
"label": "Line Items",
"variableName": "lineItems",
"depth": 1,
"lineGrid": {
"showLineNumbers": true,
"autoScrollIntoView": true,
"fields": [
{
"variableName": "txn.line.productName",
"order": 1
"supportLongText": true
},
{
"variableName": "txn.line.productDescription",
"order": 1
},
{
"variableName": " txn.line.quantity",
"order": 1
},

Line-level buttons
Line-level event buttons can be added on the right of the grid. They are specified in the
lineGrid object. Buttons can use specified icons from the SLDS Utility library.
Available Icons:

automate

choice

buyer_group_qualifier chevrondown chevronleft

chevronright

chevronup

clock

custom_apps

delete

close

clear

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

190


<!-- page 191 -->
edit

favorite

down

left

search

lightning_extension right

settings

question

threedots

threedots_vertical

target_mode
YAML code sample:
lineLevelButtons:
- icon: settings
label: Line Details
uiEffect:
type: lineDetail
target: slideout
variableName: reconfig
- event: cloneLine
label: Clone Lines
variableName: cloneLine
- label: Add To Favorites
uiEffect:
type: addFavorite
variableName: addFavorites
JSON code sample:
"lineLevelButtons": [
{
"label": "Reconfigure",
"uiEffect": {
"type": "reconfigure",
"target": "lineDrawer"
},
"variableName": "reconfig"
},
{
"label": "Line Details",
"icon": "threedots_vertical",
"uiEffect": {
"type": "lineDetail",
"target": "lineDrawer"
},
"variableName": "lineDetail"
},
{
"label": "Clone",
"event": "cloneLine",
"variableName": "clone"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

191


<!-- page 192 -->
},
{
"label": "Delete",
"event": "deleteLines",
"variableName": "delete"
}
],

Fields
Fields provide the data input source for the Transaction. The layout needs to know what fields
need to be displayed and how the fields should be displayed.
For each field you need to define:
Type
The display type of the field. The display type values for Transaction Manager are
the same as are available in Configuration.
textArea - type provides an expanded editable area if the field is in the LIG.
Variable name
The variable name of the field.
Label
The display name of the field as it will appear to the buyside user.
YAML code sample:
fields:
- type: Text
label: Custom line field
variableName: txn.line.custom.customText
- type: ReadOnlyText
label: TXN Number
variableName: txn.custom.tXNNumber
JSON code sample:
"fields": [
{
"type": "ReadOnlyText",
"variableName": "txn.custom.status",
"label": "Transaction Status"
},
{
"type": "Text",
"variableName": "txn.custom.quoteName",
"label": "Quote Name"
},
{
"type": "Picklist",
"variableName": "txn.custom.customerSegment",
"label": "Customer Segment"
},
{
"type": "Number",
"variableName": "txn.custom.annualTransactionCount",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

192


<!-- page 193 -->
"label": "Annual Transaction Count"
},

Text fields - resize
Text fields have a resizable property which can be enabled or disabled. It is enabled by default.
To disable resizing, pass “resizable: false” in raw value (config) or in layout json (transaction).
YAML code sample:
To be added
JSON code sample:
{
"type": "TextArea",
"label": "stg_transition_field",
"variableName": "txn.custom.stg_transition_field",
"resizable": false
}

Product list
The productList object provides a set of layout properties for the Product List search results in
the Add Lines / Product Search flow. Properties include:
• defaultSort: define up to two parameters to sort Product List search results by
◦ The following fields can be used as parameters:
▪ modified
▪ created
▪ Name (default if no parameters defined)
▪ partnerId
▪ productCode
▪ description
▪ unitPrice
▪ externallyConfigurable
◦ Order can be defined per parameter (‘asc’ or ‘desc’) - will be ascending if not defined
• searchOnSubmit: determines if user is required to select ‘Submit’ button to initiate a search
A value of ‘true’ requires selection of ‘Submit’ button.
• columns: add additional columns to Product List and determines their order
◦ Includes a sortable property; value of ‘true’ enables column to be sorted
◦ Includes an alignment property; ‘left’, ‘center’, ‘right’ are available options
◦ Includes a width property; CSS compatible value
◦ Includes a supportLongText property; value of ‘true’ enables a popover when selected
YAML code sample:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

193


<!-- page 194 -->
productList:
columns:
- label: Product ID
sortable: true
variableName: id
- label: Product Name
variableName: name
- label: Product description
variableName: description
supportLongText: true
- label: Price
variableName: unitPrice
defaultSort:
- externallyConfigurable,desc
- name
JSON code sample:
"productList": {
"columns": [
{
"label": "Product ID",
"sortable": true,
"variableName": "id"
},
{
"label": "Product Name",
"variableName": "name"
},
{
"label": "Product description",
"supportLongText": true,
"variableName": "description"
},
{
"label": "Price",
"variableName": "unitPrice"
}
],
"defaultSort": [
"externallyConfigurable,desc",
"name"
],
"searchOnSubmit": true
}

UI effects
UI effects are layout elements that add specific functionalities to a Button. UI effects include:
URL
Opens the associated URL inline, in a modal window, in slideout, or in a new tab or
window,
Anchor
Navigates to specified location in the transaction
Product Search
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

194


<!-- page 195 -->
Opens the product catalog, starting the Add Products flow
Line Detail
Opens the line-detail layout
Reconfigure
Opens the selected products to configuration UX
Add Favorite
Opens a modal window to describe and create a favorite from the selection
Manage Favorites
Opens the Favorites Manager
Refresh Session
Checks whether the session has been modified, and if so, will refresh the sessionId
and merge changes.
For more information, see Transaction Manager: Layouts - UI effects.

Reference of a sample layout from UI
Please review the example UI configuration. The fields in the draft stage of the transaction enduser UI snapshot have been included in the sample JSON layout file attached below, which is
configured for the draft stage.

Sample Layout JSON
Transaction Manager: Layouts - UI effects
Learn how to add functionality to a button by programming UI effects in either YAML or JSON.
In Transaction Manager, UI effects are layout elements that add specific functionalities to a
button. Unlike with events, users cannot create new UI effects, only customize the ones that
ServiceNow CPQ has established.
If an event is also present on the button, the UI effect will run after the event runs.

Example
One example of a UI effect in action would be having a button to open a searchable list of the
products that could be added to a transaction. Here’s how that could be written in the layout:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

195


<!-- page 196 -->
...
{
"type": "button",
"event": "productSearch",
"label": "Add Products",
"uiEffect": {
"type": "productSearch",
"target": "slideout"
},
"columnOrder": 6,
"variableName": "productSearch"
},
...
Here’s how that button might appear in the resulting UI:

Programming UI effects
A UI effect is defined by a combination of parameters. All UI effects will have a type, and some
will also have a target, location, and/or options.
These are the possible values for each parameter:
• type: url, anchor, productSearch, lineDetail, reconfigure, addFavorite, manageFavorites,
refreshSession, showTier
• target: inline, tab, window, modal, slideout, lineDrawer, fullScreen
• location: [a URL or an element id]
• options: [depends on type]

Analysis of types
• url requires a location in the form of a url. Pressing the button will take users to that url by way
of a particular target (inline, tab, window, modal iframe, or slideout iframe). Using curly braces,
admins can dynamically pass field values into the URL. Common use cases would be passing
a value to an output document or opening a record page in Salesforce.
• anchor requires a location, which will be an element id in the layout. Pressing the button
will focus on or scroll to that element. If there are any related parent-elements, those will be
opened in tabs or an accordion structure. The target should be inline.
• productSearch opens the product catalog in the target (either slideout or modal). A
variable name is required. The UI effect must be added to the gridHeaderButtons element. The
options include:
◦ Show products list: products - true (show), false (hide)
◦ Show favorites list: favorites - true (show), false (hide)
◦ Location of button placement: actionLocation - footer, header, or both
▪ Default to footer if not specified
▪ Buttons include Cancel, Add Line, Configure, Done Configuring
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

196


<!-- page 197 -->
The following code would show products, hide favorites, and place buttons on the header only:
...
"options": {
"products": true,
"favorites": false,
"actionLocation": header
},
...
• lineDetail must be on a line-level button. Pressing the button opens the line-detail layout
in the target (modal, slideout, or lineDrawer).
• reconfigure can be on a line- or header-level button (requires a selection of lines if headerlevel), opens configurations in the target (modal, slideout, or lineDrawer). reconfigure
includes the option to define location of buttons (see productSearch above) for more detail.
• addFavorites can be on a line-level or header-level button (requires a selection of lines
if header-level) and opens a window to describe and create a favorite from the selection. No
other properties are supported.
• manageFavorites opens the Favorites Manager in the specified target (modal, slideout, or
inline).
• refreshSession will check if the session has been modified, and if so, will refresh the
sessionId and merge in changes.
• showTier opens the Line Item Grid in fullscreen if target = fullScreen and location =
lineItems. This works with any tier, but for the purposes of this feature, you’d fill the location
with the tier variablename of the line items.
Currently, there is no validation of layout JSONs, and some property combinations are not
supported. Unsupported combinations are likely to fail without indicating any errors.

Implicit event calls
Some UI effects will, by their very nature, involve running certain related events. For example,
triggering either the productSearch UI effect or the reconfigure UI effect will cause
upsertLines event to run.

Access conditions
A user’s ability to access a UI effect cannot be controlled directly, the way it can with events.
There are no setting comparable to the following event settings:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

197


<!-- page 198 -->
However, the access conditions for a UI effect can be changed by its context in the transaction or
by any related events.
When a UI effect has an implicit event associated with it, the access conditions of the event will
determine the access conditions of the button and, in turn, the UI effect. So, if an administrator
wanted to limit the conditions under which a productSearch UI effect could be triggered,
then they could add those limitations to the upsertLines event.
A button on the line grid with the UI effect reconfigure will be hidden on lines that are not
configurable. At the header level, it will only be enabled if every selected line is configurable.
Finally, if an event is used in addition to a UI effect on a button, access for both is determined
by the intersection of their individual access-settings. In other words, both the UI effect and the
event must be accessible for the button to be accessible. If one of the two is either disabled or
hidden, then that is sufficient to disable or hide the entire button.

Common cases
• Product searching (the addLines UI effect implicitly calls the upsertLines event):
◦ JSON Code Snippet
{
"type": "button",
"variableName": "addLines",
"label": "Add Lines",
"uiEffect": {
"type": "productSearch",
"target": "slideout"
}
}
◦ YAML Code Snippet
type: button
variableName: addLines
label: Add Lines
uiEffect:
type: productSearch
target: slideout
• Line details drawer:
◦ JSON Code Snippet
"lineLevelButtons": [
{
"icon": "settings",
"label": "reconfig",
"uiEffect": {
"type": "lineDetail",
"target": "lineDrawer"
},
"variableName": "reconfig"
}
◦ YAML Code Snippet
lineLevelButtons:
-icon: settings
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

198


<!-- page 199 -->
label: reconfig
uiEffect:
type: lineDetail
target: lineDrawer
variableName: reconfig
• Product search with favorites enabled:
◦ JSON Code Snippet
{
"type": "button",
"variableName": "addLines",
"label": "Add Lines",
"uiEffect": {
"type": "productSearch",
"target": "slideout"
"options": {
"products": true,
"favorites": true,
}
}
}
◦ YAML Code Snippet
type: button
variableName: addLines
label: Add Lines
uiEffect:
type: productSearch
target: slideout
options:
products: true
favorites: true
• Open URL link in new tab:
◦ JSON Code Snippet
{
"columnorder": 1,
"label": "Google it",
"type": "event",
"variableNane": "LinkToSite",
"uieffect": {
"type": "url",
"target": "tab",
"location":
"https://google.com/search?q=I{txn.search}"
}
}
◦ YAML Code Snippet
columnorder: 1
label: Google it
type: event
variableName: LinkToSite
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

199


<!-- page 200 -->
uieffect:
type: url
target: tab
location: "https://google.com/search?q=I{txn.search}"
• Refresh session:
◦ JSON Code Snippet
{
"type": "button",
"variableName": "Refresh",
"label": "Refresh",
"uiEffect": {
"type": "refreshSession"
}
}
◦ YAML Code Snippet
type: button
variableName: Refresh
label: Refresh
uiEffect:
type: refreshSession
• Reconfigure:
◦ JSON Code Snippet
"lineLevelButtons": [
{
"icon": "settings",
"label": "Reconfigure",
"uiEffect": {
"type": "reconfigure",
"target": "modal"
},
"variableName": "reconfig"
}
◦ YAML Code Snippet
lineLevelButtons:
-icon: settings
label: Reconfigure
uiEffect:
type: reconfigure
target: modal
variableName: reconfig
• Add to Favorites:
◦ JSON Code Snippet
{
"label": "Add To Favorites",
"uiEffect": {
"type": "addFavorite"
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

200


<!-- page 201 -->
"variableName": "addFavorites"
}
◦ YAML Code Snippet
label: Add To Favorites
uiEffect:
type: addFavorite
variableName: addFavorites
• Manage Favorites:
◦ JSON Code Snippet
{
"label": "Manage Favorites",
"uiEffect": {
"type": "manageFavorites",
"target": "modal"
},
"variableName": "manageFavorites"
}
◦ YAML Code Snippet
label: Manage Favorites
uiEffect:
type: manageFavorites
target: slideout
variableName: manageFavorites
Transaction Manager: Layouts - the stages progress chevron
You can configure a progress bar using layout JSON or YAML and define it either statically or
dynamically. See code snippets.

Purpose
The Stages Progress Chevron component is a visual representation of a transaction’s stage
progression, typically displayed as a horizontal chevron bar. It can be defined statically or
dynamically and is configurable through layout JSON.

Configuration options
The component is placed at the root level of the layout JSON (alongside header or tierDef).

Static definition
Define a list of stages manually.
JSON:
"stageProgress": {
"stageList": [
{ "value": "draft", "label": "Draft" },
{ "value": "stage2", "label": "Stage 2" },
...
],

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

201


<!-- page 202 -->
"currentStage": "draft"
}
YAML:
stageProgress:
stageList:
- value: draft
label: Draft
- value: stage2
label: Stage 2
# ... add more stages as needed
currentStage: draft
• stageList: Defines each stage’s value and display label.
• currentStage: Highlights the active stage.
If omitted, defaults to txn.stage. This allows you to use in a default layout used by multiple
stages.

Custom picklist-based definition
Use custom fields to dynamically populate the chevron:
JSON:
"stageProgress": {
"stageListField": "txn.custom.stageList",
"currentStageField": "txn.custom.stageList"
}
YAML:
stageProgress:
stageListField: txn.custom.stageList
currentStageField: txn.custom.stageList
• stageListField: Specifies where to pull the list of available stages.
• currentStageField: Specifies the field that contains the current stage value.
This method supports:
• Exclusion Rules: To hide or disable specific stages.
• Determination Rules: To set the value of the current stage.
Useful if you have multiple stages that should display as a single chevron.

Combination use
You can mix static and dynamic configurations:
• Use a static stageList with a dynamic currentStageField.
• If neither stageList nor stageListField is defined → nothing displays.
• If neither currentStage nor currentStageField is defined txn.stage is used by
default.
• If both static and dynamic versions are present,dynamic takes precedence.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

202


<!-- page 203 -->
Theming
The component supports theming via CSS custom properties. Below is a non-exhaustive list of
relevant variables:

Variable

Description

--lgk-ProgressStep-chevron-size

Overall chevron size

--lgk-ProgressStep-chevron-width

Fixed width for chevrons

--lgk-ProgressStep-chevron-minWidth

Minimum width per chevron

--lgk-ProgressStep-chevron-padding

Padding inside each chevron

--lgk-ProgressStep-chevron-disabledopacity

Opacity for disabled/inactive
chevrons

--lgk-ProgressStep-incompletebackgroundColor

Background for incomplete steps

--lgk-ProgressStep-incomplete-chevroncolor

Chevron icon color for incomplete
steps

--lgk-ProgressStep-currentbackgroundColor

Background for current step

--lgk-ProgressStep-current-chevroncolor

Chevron icon color for current step

--lgk-ProgressStep-chevron-labelfontSize

Font size for stage labels

--lgk-ProgressStep-chevron-labelfontWeight

Font weight for stage labels

Tip: You can inspect the element in your browser to explore more custom properties.
Transaction Manager: Layouts - Theming options
Transaction Manager layouts can be adjusted by setting JSON and YAML properties.
Include the following JSON at the top level of the layout JSON:
"theme": {
"base": "slds",
"otterKit": true,
"properties": {
"body-color": "#000",
"spacing-sm": "0.15rem",
"label-color": "var(--token-color-black-500)",
"pill-radius": "2px",
"header-color": "#30578d",
"border-radius": "2px",
"body-font-size": "0.875rem",
"label-font-size": "0.75rem",
"body-font-weight": "700",
"bom-border-color": "#7e8592",
"body-border-color": "#7e8592",
"body-border-width": "0",
"button-font-color": "600",
"pill-border-color": "#30578d",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

203


<!-- page 204 -->
"body-border-radius": "0",
"input-border-color": "#999",
"input-border-width": "1px",
"button-border-width": "1px",
"font-weight-regular": "700",
"header-border-color": "#7e8592",
"header-logo-padding": "0.5rem",
"input-border-radius": "2px",
"internal-icon-color": "#aeaeae",
"body-wrapper-padding": "0",
"button-border-radius": "2px",
"button-neutral-color": "#30578d",
"button-primary-color": "#30578d",
"int-option-font-size": "0.875rem",
"token-color-black-500": "#444",
"combobox-option-margin": "0 0 0 10px",
"header-logo-min-height": "50px",
"pill-remove-icon-color": "#4d4d4d",
"container-border-radius": "0",
"header-margin-block-end": "0",
"token-color-neutral-950": "#aeaeae",
"combobox-option-font-size": "0.875rem",
"slds-c-button-line-height": "1.875rem",
"slds-c-input-color-border": "#000",
"button-primary-focus-color": "#0065cc",
"button-primary-hover-color": "#0065cc",
"slds-c-input-radius-border": "2px",
"button-neutral-border-color": "#30578d",
"button-primary-border-color": "#30578d",
"expand-header-border-radius": "2px",
"button-primary-disabled-color": "#666",
"button-neutral-backgroundColor": "#fff",
"button-primary-backgroundColor": "#fff",
"expand-header-border-color-focus": "#7e8592",
"button-primary-focus-border-color": "#0065cc",
"button-primary-hover-border-color": "#0065cc",
"button-neutral-focus-backgroundColor": "#fff",
"button-neutral-hover-backgroundColor": "#fff",
"button-primary-disabled-border-color": "#666",
"button-primary-focus-backgroundColor": "#fff",
"button-primary-hover-backgroundColor": "#fff",
"button-primary-disabled-backgroundColor": "#efefef",
"token-color-primary-outline-border-color": "#ff0000",
"expand-header-content-padding-inline-start": "0"
}
},
YAML:
theme:
base: slds
otterKit: true
properties:
body-color: "#000"
spacing-sm: "0.15rem"
label-color: "var(--token-color-black-500)"
pill-radius: "2px"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

204


<!-- page 205 -->
header-color: "#30578d"
border-radius: "2px"
body-font-size: "0.875rem"
label-font-size: "0.75rem"
body-font-weight: "700"
bom-border-color: "#7e8592"
body-border-color: "#7e8592"
body-border-width: "0"
button-font-color: "600"
pill-border-color: "#30578d"
body-border-radius: "0"
input-border-color: "#999"
input-border-width: "1px"
button-border-width: "1px"
font-weight-regular: "700"
header-border-color: "#7e8592"
header-logo-padding: "0.5rem"
input-border-radius: "2px"
internal-icon-color: "#aeaeae"
body-wrapper-padding: "0"
button-border-radius: "2px"
button-neutral-color: "#30578d"
button-primary-color: "#30578d"
int-option-font-size: "0.875rem"
token-color-black-500: "#444"
combobox-option-margin: "0 0 0 10px"
header-logo-min-height: "50px"
pill-remove-icon-color: "#4d4d4d"
container-border-radius: "0"
header-margin-block-end: "0"
token-color-neutral-950: "#aeaeae"
combobox-option-font-size: "0.875rem"
slds-c-button-line-height: "1.875rem"
slds-c-input-color-border: "#000"
button-primary-focus-color: "#0065cc"
button-primary-hover-color: "#0065cc"
slds-c-input-radius-border: "2px"
button-neutral-border-color: "#30578d"
button-primary-border-color: "#30578d"
expand-header-border-radius: "2px"
button-primary-disabled-color: "#666"
button-neutral-backgroundColor: "#fff"
button-primary-backgroundColor: "#fff"
expand-header-border-color-focus: "#7e8592"
button-primary-focus-border-color: "#0065cc"
button-primary-hover-border-color: "#0065cc"
button-neutral-focus-backgroundColor: "#fff"
button-neutral-hover-backgroundColor: "#fff"
button-primary-disabled-border-color: "#666"
button-primary-focus-backgroundColor: "#fff"
button-primary-hover-backgroundColor: "#fff"
button-primary-disabled-backgroundColor: "#efefef"
token-color-primary-outline-border-color: "#ff0000"
expand-header-content-padding-inline-start: "0"

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

205


<!-- page 206 -->
Remove padding on page body
"body-wrapper-padding": "0" in the layout JSON above.

Style field labels
"label-color": "var(--token-color-black-500)" and
"label-font-size": "0.75rem" in the layout JSON above.

Style buttons and button labels
"button-font-color": "600" and
"button-font-weight": "700" in the layout JSON above.

Number formatting
Administrators can use the minPrecision property to require a minimum number of decimal
places.
You can use the showCurrency property to display or hide the currency symbol.
• minPrecision
JSON:
{
"type": "FormattedNumber",
"label": "Just minPrecision",
"format": {
"type": "decimal",
"minPrecision": 2
},
"variableName": "txn.custom.someNumber"
}
YAML:
type: FormattedNumber
label: Just minPrecision
format:
type: decimal
minPrecision: 2
variableName: txn.custom.someNumber
In this example, if txn.custom.someNumber is set to 4.5, the layout will display 4.50.
• showCurrency
JSON:
{
"type": "FormattedNumber",
"label": "With Hidden Currency",
"format": {
"type": "currency",
"minPrecision": 2,
"showCurrency": false
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

206


<!-- page 207 -->
},
"variableName": "txn.custom.genericNum"
}
YAML:
type: FormattedNumber
label: With Hidden Currency
format:
type: currency
minPrecision: 2
showCurrency: false
variableName: txn.custom.genericNum
In this example, if txn.custom.genericNum, a defined currency type that will show the currency
symbol by default, is set to 4.5, the layout will display 4.50.
Transaction Manager: Rules and rule groupings
Rules in Transaction Manager are similar to configuration rules. You can also group rules together
when they are intended to run together.
As in configuration, rules in Transaction Manager govern what actions are taken, if any,
when a user makes an input into the Transaction Manager buyside UI. Rules consist of three
components in Transaction Manager:
Level: Determines whether the rule runs at the Transaction level or the Transaction Line level of
the Transaction. The level chosen for a rule dictates what fields can be used in the definition of
conditions and actions in the rule. Transaction level rules can use Transaction level fields in both
the conditions and actions in the rule. Transaction Line level rules can use Transaction level and
Transaction Line level fields in the conditions of the rule, but only Transaction Line level fields in
the actions in the rule.
Conditions: Conditions determine when a rule will execute its actions. If the conditions defined
for a rule evaluate to TRUE, then the rule actions will be executed. If the conditions for a rule
evaluate to FALSE, then rule actions will not execute. There are 5 different way to implement
conditions in a rule:
• Always True: This will allow the rule to execute every time a buyside user makes a change to
the Transaction Manager buyside UI.
• Any Conditions are Met: This will allow the rule to execute if any single condition in the
condition list evaluates to TRUE (Conditions are logically OR’d together).
• All Conditions are Met: This allows the rule to execute if all the conditions in the condition list
evaluate to TRUE (conditions are logically AND’d together).
• Custom Logic: allows the use of parenthesis and the mixture of ANDs and ORs to create a
custom logic evaluation of the conditions in the condition list (for example, If Cond_1 AND
(Cond_2 OR Cond_3)).
• Advanced Function: This allows the Administrator to write a script to determine if the rules
should be executed. The Script will return either a value of TRUE or a value of FALSE.
Actions– Actions determine what the rule will do when the rule is executed. There are five kinds
of actions that a rule can execute:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

207


<!-- page 208 -->
• Hiding: A Hiding action allows the Administrator to conditionally hide a field in the buyside UI
layout.
• Message: A Message action allows the Administrator to display text message to the buyside
user in the buyside UI layout.
• Exclusion: Exclusion actions allow the Administrator to hide/disable menu option in a picklist
field.
• Inclusion: Inclusion actions allow the Administrator to display menu option in a picklist field.
• Determination: Determination actions allow the Administrator to set or clear the value of a field
in the buyside UI layout
Each type of action has a unique set of rule parameters that must be defined. We will review the
various parameters for each action type later in this article.

Create a new rule
Navigate to the Transaction Manager Admin UI. In the Admin menu Click "Related Rules". To
create a new rule, click the + New Rule button.

On the New Rule popup enter the name of the new rule, verify the Variable Name (use the Pencil
icon on the right if you would like to change the Variable Name).
Click either Transaction or Transaction Line to determine the level of this new rule.
Click the Save button to save the new rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

208


<!-- page 209 -->
On the rule Editor page you can modify the name of the rule, or the Description. Above the
Variable Name field is the Active toggle, this allows you to make the rule Active or Inactive.
Below the Description field is the Conditions area. Clicking the Take Action When menu displays
the various options you have for implementing the conditions for this new rule. The meaning of
each of these values is described earlier in this article. Select the conditions method to use for
this new rule.

If you change the value of the Take Action When menu from the default value ofAlways, you will
then need to specify the list of conditions that will determine if this rule executes or not. You can
define one or more individual conditions for a rule. To define a condition use the Enter/Select
a field menu to select the Transaction Manager field to test, then choose the operator for the
condition in the Equals menu, then set the test value for the field in the Enter/Select a Value
menu to determine whether the condition will be TRUE or FALSE. Use the +Add Condition button
to add multiple conditions to the rule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

209


<!-- page 210 -->
Once the conditions are defined, then you can define the actions that the rule will execute. As
with conditions you can add one or more actions to a given rule, and different types of actions
can be included in the same rule.
To add an action, select the type of action you want to add and click it in the Actions area. You
will then be taken to the specific Action Type parameter set to define the action. A review of the
different action parameter sets follows.

The Hiding action
The Hiding action allows you to hide a field on the buyside layout. The only parameter for this
type of action is the field to hide from view. Use the field search box to identify the field to be
hidden.

The Message action
A Message action enables the display of a text message to the buyside user in the Transaction
Manager layout. There are four message types, which can be found in the I want to display
menu:
Info Message: Uses a circular blue icon and blue message text, icon and text color cannot be
changed.
Warning Message - Uses a triangular yellow icon and yellow message text, icon and text color
cannot be changed.
Error Message - Uses a triangular red icon and red message text, icon and text color cannot be
changed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

210


<!-- page 211 -->
Custom Message: Admin has control over the icon used with the display of the message as well
as the text color of the message.

Use the Show the message on field to define where on the buyside layout you want the message
to appear. The message is often attached to a field, but can also be attached to a Layout
component like a Tier or Columnset.
The Message Content field allows you to write out the Message you would like to be displayed
to the buyside user. Clicking the Advanced toggle allows the Administrator the ability to write
a script to build the Message that will be displayed in the layout. Use the When Message is
Displayed field to determine whether the Transaction can be saved when the Message is
displayed to the buyside user.

The Exclusion/Inclusion action
Exclusion and Inclusion actions allow you to manipulate the visibility and use of the menu
options defined for a given picklist field. Exclusion actions allow you to hide/disable menu
options in the layout, while Inclusion actions allow you to show/enable menu options in the
layout. Exclusion and Inclusion actions use the same set of parameters.
Use the For this Field menu to select the picklist field whose menu options you will Exclude or
Include in the menu.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

211


<!-- page 212 -->
Use the I want to exclude/include these options menu to select the specific menu options for
the selected picklist field that will be Excluded or Included in the menu. You can select multiple
options; they are selected one at a time. Use the Advanced toggle to allow for the writing of script
to determine which menu options will be part of the rule execution.
Use the For excluded options menu to determine how excluded menu options will be treated. (in
an Inclusion action, any menu options not included in the menu are treated as excluded menu
options):
• Hide them: these excluded item will be hidden from the user’s view on the buyside UI.
• Disable them: these excluded options will appear in the menu, but will be grayed out and not
selectable.
Use the If any are already selected menu to determine what to do in the instance that the
buyside user has already selected an item in the menu that is excluded by the rule, but the
selection was made prior to the rule being executed:
• Leave Unchanged– This option will leave the excluded item as the selected item in the menu
since it was selected prior to the execution of the rule.
• Deselect Them– This option deselects the excluded option, forcing the user to re-select an
option from the current menu options.
• Select the first valid option instead– this option deselects the excluded option but replaces it
with the first available option currently in the menu following the execution of the rule.

The Determination action
Determination actions allow you to set and clear the value of a field in Transaction Manager.
Use the For this Field menu to search for and select the field for the rule to act upon.

Next we need to define what we want to do with the field we have chosen. In the fields under I
want to… you define whether you want to Set the value of the chosen field or Clear the value of
the chosen field, and whether you will Allow or Prevent the buyside user from editing the value
of the chosen field after it has been modified by the rule.
In the If user has modified values menu you can choose whether you want to Retain a value in
the chosen field that was modified by the buyside user or if you want to Override that value with
the value in the rule. Further, if you decide to Retain the modified value from the buyside user you
can use the When user values are retained menu to define if you want to Show the buyside user
a message with a recommendation about the value of the chosen field or not.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

212


<!-- page 213 -->
Finally, you need to define the value that would be assigned to the chosen field. You can use the
Use this value field define the value you want to place in the chosen field. You can also use the
Advanced toggle to allow the Administrator to write a script that will determine the value that will
be placed in the chosen field.

Rule groupings
Rule groupings are collections of rules designed for easier association and access, consisting
of rules that are intended to be executed together. A rule grouping can contain both Transaction
level and Transaction Line-level rules.
Rule groupings will then be utilized in Stages and/or Events to link groups of rules for execution.
Each stage can have 0 to N rule groupings associated with it, determining which rules will
execute when a user makes any changes to a specific field in that stage. The Admin will have to
associate a rule grouping with a Stage and/or Event for rules to execute. For instructions on how
to associate a rule grouping to a Stage or Event, see the following articles:
Transaction Manager: Events
Transaction Manager: Stages

Creating a rule grouping
To begin, click Rule Groupings in the Admin menu, then click the + New Rule Grouping button.

In the New Rule Grouping popup, provide a Variable Name for the new rule grouping. Once the
Variable Name is satisfactory, click the Save button.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

213


<!-- page 214 -->
Next we need to associate rules with the new rule grouping. When you click Save in the New Rule
Grouping popup, you are taken to the rule Grouping Editor page. Here you need to click the +
Associate Rules button.

Clicking the + Associate Rules button will open a slideout where you can select the individual
rules that you want to include in the new rule grouping. Click the “+” sign to the left of a rule in the
Results column of rules and the rule will be moved over to the Selected column. Do this for each
rule you want to include in the rule Grouping.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

214


<!-- page 215 -->
Once all rules have been selected, click the Done button. You will be taken back to the rule
Grouping Editor page where you will see the rules that have been added to the group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

215


<!-- page 216 -->
Rule Aggregates
Aggregates are script functions that you can use in Advanced Functions in Rule Determination
action. These functions enhance automation, optimize pricing calculations, and improve data
organization in quoting and transaction workflows. Aggregates were created to optimize Rule
Engine performance in Transaction Manager. Aggregate functions are used to perform various
math calculations on Transaction Line fields. Results of these calculations are stored in either a
Transaction/Header field or in a Transaction Line field.
Note: Aggregates elements will always run, including in cases when the aggregate function has
no children. If an aggregate function does not have a default set and there are no children, the
value returned by an aggregate will be null, and for lookups, the value returned will be an empty
array. To avoid errors, set a default or handle the null/empty array responses.
Rule aggregates include the following categories:
• Avg, Count, Min, Max, Sum
• AvgIf, CountIf, SumIf
• SumChildren
• Lookup

Avg, Count, Min, Max, Sum
These aggregate functions will aggregate the chosen Transaction Line field value for all Lines
and store the result in a chosen Header field (the target field of the Determination action):
return txn.line.functions.<function>(txn.line.<fieldVarName>)
Values for <function> include avgField, countField, minField, maxField, and sumField.

AvgIf, CountIf, SumIf
These aggregate functions will apply a filter to the chosen Transaction Line field value for all
Lines, then perform the calculation on the remaining lines and store result in a chosen Header
field (the target field of the Determination action):
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

216


<!-- page 217 -->
txn.line.functions.<function>(txn.line.<fieldVarName>,
<condition> [, <default>])
Values for <function> include avgFieldIf, countFieldIf, and sumFieldIf.
<condition> is set to something like:
• booleanField = true OR
• txn.line.functions.sumChildrenField(txn.line.<fieldVarName>)> 0
If the default value is not defined, then null is returned when there are no children to
aggregate.
Remember that conditional checks for text are case sensitive.

Use case example: Summing list prices for sales BOM type
In a draft-stage sample transaction as shown below, I want to sum the list prices of items whose
BOM type isSALES. The BOM type is a system-derived line field reflecting the type set first when
the configuration item was created.

Steps:
1. Create a header field named Total Sales Type Price.

2. Add it to the layout and deploy the transaction.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

217


<!-- page 218 -->
3. Set up a determination rule using thesumFieldIf function, applied at the draft stage with
the following script:
return txn.line.functions.sumFieldIf(txn.line.pricing.list,
txn.line.configuration.item.bomType == 'SALES');

Note: The conditional check is case sensitive. Use SALES, not sales. Incorrect casing
yields no error, but results in a sum of 0 as in the use case there are no lines where bom
type is Sales.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

218


<!-- page 219 -->
4. Deploy and reload the transaction. The field correctly returns the total of matching line prices:
$46,000 (from 0, 40,000, 2,500, 1,000, 2,500).

SumChildren
This aggregate function will aggregate the chosen Transaction Line field value for all child lines
and store the result in the immediate parent line-level field of those child lines (the target field of
the Determination action):
txn.line.functions.sumChildrenField(txn.line.<fieldVarName>)

Lookup
These aggregate functions focus on retrieving specific values rather than computing totals.
They return either a single value or an array of values, allowing users to extract key information
dynamically for use in pricing calculations, validation rules, and output documents:
Basic lookup functions:
• txn.line.functions.lookupField(<field>)
Retrieves an array of values from the specified field across all transaction lines.
• txn.line.functions.lookupFirstField(<field> [, <default>])
Retrieves the first matching field value. If none is found, returns the optional default.
• txn.line.functions.lookupChildrenField(<field>)
Retrieves an array of values from child line items.
• txn.line.functions.lookupFirstChildrenField(<field> [,
<default>])
Retrieves the first matching value from child line items, with an optional default.
Conditional checks for text are case sensitive. Conditional lookup functions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

219


<!-- page 220 -->
• txn.line.functions.lookupFieldIf(<field>, <condition>)
Retrieves an array of field values based on a condition.
• txn.line.functions.lookupFirstFieldIf(<field>, <condition> [,
<default>])
Retrieves the first matching field value based on a condition, with an optional default.
• txn.line.functions.lookupChildrenFieldIf(<field>, <condition>)
Retrieves an array of values from child line items based on a condition.
• txn.line.functions.lookupFirstChildrenFieldIf(<field>,
<condition> [, <default>])
Retrieves the first matching child line item field value based on a condition, with an optional
default.
Naming Structure:
Functions follow a structured naming convention for clarity and consistency:
• Base Function:lookup (returns an array),lookupFirst (returns a single value).
• Context: No context (all lines) orChildren (child line items only).
• Object:Field (applies to a field lookup only).
• Condition: No condition orIf (conditional lookup).
Intermediate fields:
Lookup functions automatically store retrieved values in intermediate fields, making them readily
available for further calculations and automation. This ensures seamless integration with pricing
rules, approvals, and output documents.
Benefits of Intermediate fields:
• Efficiency: Reduces redundant calculations by storing commonly referenced values.
• Data Integrity: Maintains a consistent set of field values across pricing and quoting processes.
• Automation: Enables dynamic updates to dependent fields, ensuring real-time accuracy in
pricing and approvals.
Managing Deleted Lines in Aggregations:
• Lookup aggregations dynamically adjust when quoted line items are removed.
• The system ensures that references to deleted transaction lines are cleared, maintaining data
accuracy in recalculated pricing and discounts.
Examples:
var taxCodes =
txn.line.functions.lookupFieldIf("taxCode",
txn.line.amount > 0);
var firstPrice =
txn.line.functions.lookupFirstField("price", 0);
var childService =
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

220


<!-- page 221 -->
txn.line.functions.lookupChildrenField("serviceType");
totalTax =

var

txn.line.functions.lookupFirstField(txn.line.taxAmount, 0);
return totalTax * 1.05; //
Applies a 5% surcharge based on retrieved tax amount
Transaction Manager: Events
Events can be triggered in the UI, such as by button clicks, or by API. They can trigger Stage
Rules and Integrations or Rule Groups.
Events are a way to trigger certain Stage Rules and Integrations or Rule Groups. These events
are usually activated by buttons or API on a layout helping a user to transition from one stage to
another.

System events
System events are frequently-used behaviors available for customers out of the box.
Transaction (header)
When Transaction Manager is embedded in a CRM, the user is presented with a button in the
CRM UI corresponding to these Transaction Events. When the user clicks one of these buttons,
the CRM calls corresponding ServiceNow CPQ API:
• Create Transaction: Event triggered to create a new transaction.
• Edit Transaction: Allows editing an existing transaction, enabling stage-based rule and
integration actions.
• Copy Transaction: Event to clone a transaction and its line items.
• Upsert Lines: This event manages the creation/update of transaction lines after the user
browses catalog (UI Effect "productSearch") to add new lines or reconfigures an existing line.
Upsert Lines is automatically run after the user finishes selecting products from the catalog,
configuring products, or reconfiguring (UI Effect “reconfigure”). Although this Event works on
lines with the Transaction, it works at the Transaction level, on all lines in the Transaction.
For more information about UI Effects, see Transaction Manager: Layouts - UI effects.
• Delete Transaction: Event triggered to delete an existing transaction.
Transaction Line:
Transaction Manager Line-level Events are represented on the native ServiceNow CPQ
Transaction Manager UI as buttons:
• Clone Line: Clones a line and its children, but only for top-level lines in the transaction.
Header-level rules will also apply after cloning. [Does it clone all of the field-level data]
• Delete Lines: Deletes one or more lines from a transaction; UI supports selecting lines, and IDs
can be passed in headless mode.

Event APIs
Currently, Event APIs are authorized via session cookie only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

221


<!-- page 222 -->
Warning: Creative implementers may be curious to build a scenario in which the user
on transaction X initiates an event that fires an Event API on the same transaction. Such
an implementation can result in unpredictable behavior, as both UI and APIs are acting
upon the same record. ServiceNow CPQ Development is aware of this potential conflict
and intends to mitigate it in the future. This release will be announced in Build Notes under
"Transaction Locking." In the interim, do not set up this scenario.

Custom events
In addition to system events, the Admin defines custom events to meet their company's
business-specific requirements. To create a custom event, follow these steps.
1. Navigate to the Transaction Manager Admin UI. From the Admin menu on the left of the Admin
UI, click Events. Click + New Event to create a new custom Event.

2. Enter a name in the Name field. As the name value is being entered in the Name field the same
value is being mirrored in the Variable Name field. By default, Transaction Manager makes the
Variable name the same as the name value that the Admin enters. The Variable name however
is created using “camel case” and all spaces and special characters are removed from the
name. For example, If you type “Total of Manufacturing Lines” for the Name field, the Variable
Name field will contain “totalOfManufacturingLines”. If you want to create your own custom
Variable names, click the pencil icon at the right end of the Variable Name field and you will be
allowed to enter your own value for Variable name.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

222


<!-- page 223 -->
3.
4.
This will be a Transaction Line level Event, so click Transaction Line under Select a Level, and
then click Save.
After clicking the Save button, you will be brought to the Event Editor page. All Events are created
with their Event Access set to No Access. Click the Edit Event Access button to change the event
access level to Active. After you have set the Access level to Active, click Done to return to the
Event Editor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

223


<!-- page 224 -->
In the Actions area of the Event Editor you can assign either Rule Groupings or Integrations to
fire when the event is triggered. To add a new Action to the event, click + Add New Action and
choose either Rule Groupings or Integration. Regardless of which you choose, you will be given
a menu of the available Rule Groupings or Integrations that have been created in Transaction
Manager. Choose the Rule Grouping or Integration to apply to the event. You can add multiple
Rule Groupings or Integrations to the same Event.

Also in the Action area is the Transition toggle. Use this toggle to determine if the event will cause
the Transaction to transition either forward or backward in the Stage sequence. By default, the
event will not cause the transition of the Transaction to another Stage. Clicking the Transition
toggle will enable the transition function, and will allow you to choose whether the transition will
move the Transaction forward in the Stage sequence or backward in the Stage sequence.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

224


<!-- page 225 -->
Once all of the changes to the event have been completed in the Event Editor, click
theSavebutton to save the changes. The new Event will now show up on the event list as either a
Transaction level Event or a Transaction Line level Event depending on which level was chosen
during the creation process.

Event settings
Validate the configured Items.
• Validate configured items is a setting on custom header events that,when enabled, will validate
configurations of products in the transaction on event execution. The validation occurs prior to
the event actions and the event actions will execute regardless of the validation status.
• The setting has a ‘Validity period’ which will exclude products validated in that time frame.
For example, if the validity period is set to 15 days and a product had been validated 7 days
prior, that product would not have its configuration validated. If a product had been validated
20 days prior, that product would have it configuration validated.
• Two line-level system fields support this function:
◦ txn.line.configuration.status- will be ‘valid’ or ‘invalid’ depending on result of configuration
validation
◦ txn.line.configuration.validatedAt- date of the last validation
Transaction Manager: Stages
Each stage represents a phase in the selling process of an organization. This article illustrates a
process with five stages that you can modify to suit your needs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

225


<!-- page 226 -->
Stages represent each phase in an organization's selling process. The stage list shows all stages
defined, and their order of evaluation. In this example, we demonstrate a process with five
stages. Your implementation will add or delete stages to accommodate your selling process.

The administrator may change the order of evaluation in any stage. Hover over the chevron
graphic to alter the order of evaluation. '<' and '>' buttons change the order of stages. The '+'
button will create a new stage at that place in the sequence of stages.

Transitions between stages
Transitions between stages represent the structured movement from one stage to the next in
a workflow. Each stage has entry criteria—conditions that must be met before advancing—to
ensure consistency and readiness for the next phase.
A transaction cannot transition between stages automatically without an event. In addition, stage
transitions may also be defined for "Create New Transaction" or "Edit Transaction (Open)" events.
For example, transition between various stages is possible with the help of events. Events may
be represented in the UI as buttons, such as “submit for approval”, ”revise”, and so on.

Entry criteria
Entry criteria determine when a stage will be accessed. As users progress through the
transaction life cycle and execute events tied to transitions, the app tests stage entry criteria
to determine which stage applies to the transaction next. When an event transition is set to
‘forward,' ServiceNow CPQ evaluates the entry criteria of the proceeding stages, according to the
stage order, until a stage’s entry criteria are met. If no stages meet the entry criteria, no transition
will occur. When an event transition is set to "backward," the transaction transitions to the stage
defined by the administrator without checking its entry criteria.
For example, a transaction transitioning to stage ‘pending approval’ when an approval is required
and pending or bypassing the stage ‘pending approval’ and moving to stage ‘approved’ if
approval is not required. This could be accomplished with entry criteria.

Note: The first stage in a process has no entry criteria.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

226


<!-- page 227 -->
Stages and rule groupings
Rule groupings are associated to stages and are run on when the stage is transitioned to and
when users update fields or run events while on that stage.

Stages and views
Stages allow the Admin to define how personas observe field data with distinct permissions
(views).
Transaction Manager enables admins to configure distinct field data views for personas, each
with specific permissions. For more information on defining views for stages, see Transaction
Manager: Views.

Create a new stage, associate rule groups, and set entry criteria
Navigate to the Transaction Manager Admin UI. By default you are placed in the Stages option
of the Admin menu. You should see the defined stages displayed on the page. To create a new
stage, click + New Stage.

Enter a name in the Name field. As the name is being entered in the Name field, the same value
is being mirrored in the Variable Name field. By default, Transaction Manager makes the variable
name the same as the name that the Admin enters. However, the Variable name is created using
camel case, and all spaces and special characters are removed from the name. For example, If
you type “Ordered” in the Name field, the Variable Name field will contain “ordered”. If you want
to create your own custom variable names, click the pencil icon to the right of the Variable Name
field and you can enter your own value.
Once the Name and Variable Name are set, click Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

227


<!-- page 228 -->
Once you click Save, you will be brought to the Stage Editor page. In the Stage Editor, you can
assign rule groupings to the stage being created. Use the Rule Groupings menu to choose the
rule groupings you would like to assign to the new stage.

On the Stage Editor page, under Entry Criteria, you can create the conditions that will be tested
before the transaction is allowed to transition into this new stage. The creation of the conditions
follows the same procedure as creating conditions in rules. Choose the type of condition logic
you want to implement by clicking Entry Criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

228


<!-- page 229 -->
Click Take Action When to select the condition logic.

Once the condition logic method is chosen, click + Add Condition to add the specific condition
statement that is to be tested. You can add multiple conditions to the stage entry criteria. For
each conditional statement, choose the field you want to test, the operator to use, and the value
to test for in order to create a complete conditional statement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

229


<!-- page 230 -->
Once all conditions are added, and all other changes to the new stage are complete, click Save
to save the new stage and all its settings.

Settings: Behavior on Open Transaction
The Behavior on Open Transaction area allows the Administrator to determine what rule
groupings and integrations will run when the user opens the transaction and the transaction
happens to be in this stage. Click Edit Settings to choose the Rule groupings or Integrations you
would like to fire when the transaction is opened in this stage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

230


<!-- page 231 -->
On the Settings page for the Behavior on Open Transaction, use the Refresh Product Data toggle
to refresh the product data for the transaction upon opening the transaction.
Click Add New Action to add a Rule grouping or Integration to the Action list for the Behavior on
Open Transaction for the new stage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

231


<!-- page 232 -->
Settings: Behavior on Idle Timeout
The Behavior on Idle Timeout feature allows you to define a single event per stage that is
triggered after a user remains inactive for a specified time period. This helps improve user
experience by executing predefined actions—such as rule groups, integrations, or stage rules—
when inactivity is detected.
• Only one Idle Timeout event is allowed per stage.
• The idle time can be adjustable.
• If the event fails on its first execution, it will not be retried or requeued.
• The event can be set as active or inactive per stage.
Idle timeout is configured in a stage’s settings, under the section titled:
“Behavior on Idle Timeout” (found at the bottom right of the stage editor).
1. To activate the setting, navigate to the relevant stage.
2. Locate “Behavior on Idle Timeout.”

3. Toggle the setting to Active.
4. Click Edit Settings beside it to add the actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

232


<!-- page 233 -->
5. Set the idle time.
The setting “Idle Time Before Actions Run” defines how long a user must remain inactive (no
clicks, typing, or interactions) before the configured actions are triggered.
You can define one or more actions that run once the idle timeout is reached. Supported action
types include:
• Rule groups
Use rule groups to execute conditional logic such as:
◦ Updating fields
◦ Modifying the UI
• Integrations
Use integrations to trigger external APIs or services for:
◦ Logging events
◦ Notifying external systems
◦ Updating external records

Best practices:
• Set the idle time carefully to balance user convenience with session management and system
efficiency.
• Test all configured Rule groups and Integrations in a non-production environment before
enabling them in live stages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

233


<!-- page 234 -->
Deleting a stage
Deleting a stage is restricted due to potential data issues created by deleting a stage in use by
transactions. Contact Customer Support for more information if a stage deletion is needed.
Transaction Manager: Personas
Personas let you customize user access according to the user's business role.
Transaction Manager uses personas to define distinct user types and roles that you find in your
Sales organization. Examples of personas might be a sales rep persona or a sales manager
persona.
Each persona has customized access to data, including what they can view, edit, and how
the layout appears to that user type in each Stage of the transaction’s lifecycle. This lets the
administrator define how different users experience the transaction based on their roles in the
Sales organization.

Note: Personas are not part of the Transaction Manager Blueprint. Therefore, they are not
part of a Blueprint export file. Personas would need to be recreated, when a Blueprint is
migrated from system to system.

Creating a persona
To create a persona, follow these steps:
1. In the Transaction Manager Admin UI click Personas.

2. Click + New Persona.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

234


<!-- page 235 -->
.
Now that the persona has been created, we need to assign Transaction Manager user
accounts to the new persona. In order to assign user accounts to the persona, the user
accounts must have previously been created in ServiceNow CPQ via the User Access function
in the Utilities area of the Admin UI. If the user accounts are not listed in the User Access list in
Utilities then the user accounts will not show up as available to be assigned to a persona. For
more information on granting user access in ServiceNow CPQ, see User access.
3. The persona requires a name and a variable name. Click in the Name field and enter the name
of the new persona. As the Name value is being entered in the Name field, the same value is
being mirrored in the Variable Name field. By default, Transaction Manager makes the Variable
Name the same as the Name value that the Admin enters. The Variable Name however in
created using “camel case” and all spaces and special characters are removed from the name.
For example, If you type “Eastern Sales Manager” for the Name field, the Variable Name field
will contain “easternSalesManager”. If you want to create your own custom Variable Names,
click the pencil icon at the right end of the Variable Name field and enter your own value for
Variable Name. Once the The Name and Variable Name are set, click Save.

4. To assign one or more user accounts to the new persona, click + Associate User.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

235


<!-- page 236 -->
An Associate Users control slides out from the right of the UI page and lists the available user
accounts that can be assigned to the new persona.
5. Click the checkbox next to each user account you want to assign to the new persona, and
when all user accounts are selected, click Done..

Note: A user account can be assigned to one and only one persona in Transaction
Manager.
6. When you are asked to confirm that you want to assign the selected user accounts to this
persona, Click Confirm.

The assigned user accounts will now appear in the Username list for the new persona. To see
your new persona listed on the Personas page, click Personas in the Admin menu.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

236


<!-- page 237 -->
Transaction Manager: Views
Understand how to define access rules to fields and events according to the user persona.
Views allow Transaction Manager administrators to define access rules for fields and events for
different personas at various stages of the transaction life cycle.
Views, personas, and stages work together to allow the admin to control who can access various
transaction level and transaction line level fields and events within the transaction at any point in
the sales process.
Views can be used to control field access (Read/Write vs. Read-Only) and event access (Active
vs. No Access) at various stages of the transaction process for various personas the you have
defined in your sales organization.
To work with views, click the Views option in the Admin menu to the left side of the Admin
UI. The Views List page will show you the views the you have configured for your transaction
environment. Clicking a view’s name in the list will display the access privileges defined in the
view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

237


<!-- page 238 -->
Field access
When you click a view name in the Views List page, the view’s defined field and event access
privileges are shown.
The view and its access privileges are displayed in a table. Clicking Fields in the top left corner of
the table will display the field access privileges defined for the view. The leftmost column in the
table will display all of the field names, both transaction level and transaction line level.
Using the Filter field below the fields tab lets you filter the display by field name or variable name.
A menu to the right of the Filter field allows you to show all the fields, only transaction level fields,
or only transaction line level fields.
The stages are displayed in the top row of the table starting in second column from the left. This
allows you to define the field access for each field in each stage of your sales process for the
personas assigned to the view.
In the top right of the fields display is the Associated Personas list. Clicking the pencil icon lets
you choose the personas assigned to this view. A menu displaying all the personas is shown. A
persona can only be assigned to one view.
The values on the display cannot be modified in the Admin UI. They can only be modified in the
Blueprints.zip file via CSV file import.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

238


<!-- page 239 -->
Events access
Clicking the Events tab on the view page allows shows the access privileges defined for each
event in the Transaction Manager Blueprint.
As with the fields display, these values cannot be modified in the Admin UI. They can only be
modified via CSV file import.

Creating views
To create a new view or modify an existing view, you use CSV and YAML files.
• The Fields CSV file defines the field access for a persona or set of personas for each stage in
the sales process.
• The Events CSV file defines the event access for a persona or set of personas for each stage in
the sales process.
• The views.yaml file defines the name of the view being added or modified and the location of
the two CSV files.
By default, Transaction Manager provides a copy of each of these files for the default view. To
create new views, you can use the default view files, modify them, and save them under new file
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

239


<!-- page 240 -->
names. Including the new files in the Blueprint.zip file allows you to import the new views into
your Transaction Manager Blueprint.

Fields CSV file
The fields CSV file contains the field access rights to each field in each stage.
• Transaction level fields
• Transaction line level fields
For each field, you can define the following access levels:
• Editable (Read/Write)
• Read Only
• No Access
In the blueprint.zip file, the file should be located in the following folder hierarchy:
blueprints/default/views
When you modify a view field file, modified values are entered without the asterisk (*).
Original fields CSV file:

Modified fields CSV file:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

240


<!-- page 241 -->
events CSV file
The events CSV file contains the event access rights to each event in each stage.
• Transaction level events
• transaction line level events
For each field, you can define the following access levels:
• Active
• No Access
In the blueprint.zip file, the file should be located in the following folder hierarchy:
blueprints/default/views
When you modify a view event file, modified values are entered without the asterisk (*).
Original events CSV file:

Modified events CSV file:

YAML file
The views YAML file defines the view. Information in the views YAML file includes:
• The name and variable name of the view
• The variable name of any personas assigned to the view
• The location of the field and event CSV files in the Blueprint.zip file

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

241


<!-- page 242 -->
If you have multiple views defined for your Transaction Manager Blueprint, this information will be
repeated for each defined view in your Blueprint.

Once all three files are modified, they can be placed in the views folder of the blueprints.zip file
and imported into Transaction Manager via the Matrix Loader. Assuming that there are no issues
with any of the files, changes to any views will take effect when the Blueprint is deployed.
Transaction Manager: Using Runtime API calls
See a list of the APIs that are used in the runtime end user experience, together with their
purposes and responses.
ServiceNow CPQ APIs are divided into two categories: Runtime APIs and admin APIs. This article
lists the runtime APIs for Transaction Manager.
The Runtime APIs are the same APIs that are used in the runtime end user experience and
include the following key actions.
• Initialize a session
◦ Purpose: Initializes a session to establish a context for executing transaction events,
managing state, and processing subsequent API calls. Can initialize for an existing
transaction, or if not specified, a new transaction will be created.
◦ Response: Returns a Session ID, Transaction ID, and transaction information.
• Delete a session
◦ Purpose: Deletes a session to securely end user activity, clear session-specific data, and
free up system resources.
◦ Response: Session is deleted. No information is returned.
• Create a transaction
◦ Purpose: Creates a transaction, providing the object to manage the transaction lifecycle,
configure and add products, and determine pricing.
◦ Response: Returns a Transaction ID and transaction information.
• Run events on a transaction (system and custom)
◦ Purpose: Triggers a specified event on a transaction to execute predefined logic or
workflows, such as editing field values, initiating approvals, versioning transactions, or
validating configurations.
◦ Response: Varies by specified event.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

242


<!-- page 243 -->
• Add products to a transactions (upsert)
◦ Purpose: Adds a product or products to a transaction, allowing dynamic configuration and
pricing updates based on the product’s attributes.
◦ Response: Returns updated transaction data with additional product.
• Get a list of transactions
◦ Purpose: Retrieves the list of transactions, enabling users to view, manage, or take action on
an existing transaction.
◦ Response: List of transactions with Transaction ID and other metadata.
• Get details of a transaction
◦ Purpose: Retrieves the header information of a transaction, providing key details such as
stage, account, and summary-level data needed for display or processing.
◦ Response: All header field data for the transaction.
• Get a transaction's lines
◦ Purpose: Retrieves the line item details for a transaction, returning product-level data such
as quantities, pricing, and custom attributes for each item in the quote.
◦ Response: All line-level field data for the transaction.
• Get statistics for transactions
◦ Purpose: Retrieves views and sessions by user as well as average time spent per stage for
a given date range. Date range specifies a toDate and days which gets statistics from
(toDate - days) -> toDate.
◦ Response: Summary metrics for date range.
Postman Collection
Transaction Manager: Advanced product filtering
In Transaction Manager, you can dynamically filter products based on any number of factors, with
real-time data synchronization from managed tables and fast search speeds even in very large
catalogs.
ServiceNow CPQ Advanced Product Filtering feature enables dynamic product catalog filtering
using Admin-defined business rules. This includes support for real-time data synchronization
from managed tables and sub-second search speeds, even with product catalogs over millions
of SKUs.
This article explains how to use and manage this feature, and outlines performance benefits,
configuration steps, and common use cases.

Use case
As your catalog grows and your business logic becomes more dependent on regions or rules, it
becomes essential to dynamically filter products based on:
• Country, region, or compliance constraints
• Available pricing or configuration status
• Transaction-specific input fields

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

243


<!-- page 244 -->
Key features

Feature

Description

Advanced filter rule
search

Contextual product filtering with sub-second results

Real-time data sync

Managed Table and rule changes take effect immediately (no
redeploy needed)

Rule-based filtering
engine

Include and exclude products using dynamic logic

No-code Admin
experience

UI-based rule builder with mapping and conditions

Scales with catalog size Performance maintained even with more than a million products

Prerequisites for product rule filtering
The tenant setting enableCatalogFilter must be turned ON. This setting activates the
filtering logic during catalog interactions. To enable this, submit a request to DevOps.
Additionally, The Transaction Manager module must be enabled. This ensures that Add Lines
operation uses the defined Product Rule Filters to dynamically include/exclude products during
configuration.

Configuration steps
First, define a managed table. Follow these steps:
1. Navigate to the Tables tab in Logik Admin.
2. Create or upload a table that contains your business logic (for example, region-to-product
mapping, availability flags, and so on).
3. Ensure column mapping. The table must include at least one column that can be mapped to
the product catalog, such as Region, SKU, or Product Family.
4. Deploy the table once to make it available for use in filter rules.

Note: Updates made to the managed table data are automatically synced with the
product filter engine.
The Product Filter Rule does not have to be redeployed when only table data changes. This
behavior is enabled when filterrules.scheduler.enable = true.
The system syncs the updated data every 15 minutes, making the latest information available
during product filtering.

Next, create a product filter rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

244


<!-- page 245 -->
1. Navigate to Products > Product Filter Rules.
2. Click Create New Rule.
3. Enter the following details:
◦ Rule Name: A descriptive name for your rule
◦ Variable Name: A unique identifier used internally
◦ Description: A brief summary of the rule's purpose
4. Select a reference table: Choose the managed table that contains the reference data for
filtering (such as region availability, pricing eligibility, and so on).
5. Define the filter conditions. Use fields from the managed table and transaction data to define
when the rule should apply.
6. Map columns. Match the reference table columns to corresponding product table columns (for
example, Region in the managed table to Region in the product catalog).
7. Set the rule behavior by choosing one of the following:
◦ Include: Only products that match the condition are shown
◦ Exclude: Products that match the condition are removed
8. Save and deploy.
◦ Click Save to store the rule.
◦ Toggle the Active button to mark the rule as ready for deployment.
◦ Click Deploy to apply the rule and enforce it in the product catalog.

Note: Any change made to an existing rule must be redeployed for it to take effect.

To test the filter in a transaction, start a transaction in the Transaction Manager, and the proceed
to the product selection stage.
Only products that match the filter logic will be displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

245


<!-- page 246 -->
Transaction Manager: Use cases
View a list of example use cases for ServiceNow CPQ Transaction Manager.
Transaction Manager use case: Apply parent line discounts to child lines
Transaction Manager can help manage transactions whose configurable products have many
child and grandchild transaction line items.
A single transaction may include multiple configurable products, and each configurable product
may have more than 100 child, grandchild, or other descendant transaction line items.
Discounting at the transaction header level could apply a uniform discount across all products
and transaction line items. Conversely, applying discounts at the transaction line-level lets
you discount individual products and lines at different rates. However, for a product with many
descendant line items, this may become burdensome.
Using the .parent system field enables the look up of a parent line-item field, which can then
be applied to only the child lines of that product. For example, a picklist can be used at the
header level to designate the discounting method to apply.

When “Parent Line Discounting” is selected, a rule is executed that sets the descendant line’s
discount field equal to that of its parent line.

Transaction Manager use case: Calculate prices for line-level fields
Transaction Manager can apply rules to line-level fields that dynamically calculate prices
according to changes to the field, such as when products are added or removed.
In the Transaction Manager, we can apply rules on line-level fields to cover various price
calculations relevant to selected products. These calculations adapt dynamically to changes,
such as the addition or removal of products. This article outlines a use case involving three types
of price calculations and the steps required to configure them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

246


<!-- page 247 -->
The use case involves three types of price calculations:
• Annual List Price: This is the list price multiplied by the number of months chosen in the
subscription period.
• Unit Net: The price of a product after the discount amount has been deducted.
• Extended Net: The unit net of the product multiplied by the quantity of the product.

Step 1: Create Custom Fields
• Navigate to ServiceNow CPQ Admin > Transaction > Associated Fields.
• Create all the custom fields required for your use case. For the detailed steps on how to create
fields, see Transaction Manager: Fields.
In this example, we intend to use the following fields:
Start Date
Custom header (dateTime type) field that stores the subscription start date.
End Date
Custom header field (dateTime type) that stores the subscription end date.
Subscription Term (Months)
Custom header (Number type) field that calculates the difference between the start
date and end date, displaying the subscription term. For the detailed steps on how
to do DateTime field calculations, see Transaction Manager: Date and Time Fields.
Target Line Item Discount
Custom header (Number type) field where users select the discount rate.
Quantity
Line-level system field specifying the quantity of the product chosen.
List Price
Line-level system field specifying the product’s price.
Discount Percent
Line-level system field storing the discount rate. This field is automatically populated
with the value selected in the Target Line Item Discount field using a rule.
Annual List Price
Custom field used to store results of price calculations for annual list price. This is a
transaction line level custom field (Number Type)
Unit Net
System field labeled as “Net Price” in the system but renamed “Unit Net” by layout
definition. This field stores results of price calculations.
Extended Net
System field that stores the total unit net price for the product in the line entry.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

247


<!-- page 248 -->
Step 2: Add fields to layout
Map the configured fields into the appropriate layout for visibility. For the detailed steps, see
Transaction Manager: Layouts.

Step 3: Create the rules
Three rules are to be created:
• Calculate Annual List Price
• Calculate Unit Net Price
• Calculate Extended Net Price
Follow these steps:
1. Navigate to Related Rules > New Rule.
2. Enter the name of the rule and select Transaction Line as the rule type.
3. Save the rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

248


<!-- page 249 -->
Step 4: Create and configure rule actions
1. Select Determination as the action type for the rule.
2. Define the rule’s conditions and action items.
3. Add the advanced script to perform the calculation for Use Case 1 (Annual List Price). Refer to
the snapshot below.

4. Save the rule.
5. Repeat steps 1 through 3 to configure rules for Use Case 2 (Unit Net) and Use Case 3
(Extended Net). Refer to the snapshots below.
Use Case 2 (Unit Net) - Edit Net pricing calc:

Use Case 3 (Extended Net) - Edit Calculate annual extended net price:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

249


<!-- page 250 -->
Step 5: Associate rules to rule groupings
1. Navigate to the Transaction Admin page → Rule Groupings → Add Rule Grouping. Enter the
variable name as the stage in which rule should run (Draftstage), and then click Save.

2. Associate the newly created rules:
a. Click Associate.
b. Select the name of the rule you created.
c. Click Done.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

250


<!-- page 251 -->
3. To actually link the newly created rule grouping with the stage (Draft in the sample use case)
where your rules should run, Navigate to Transaction → Stages → Draft → Rule groupings.
Search the new rule grouping, select, and then click Save.

Step 6: Deploy and test
Deploy the configured blueprint to make the rules active, and then test the implementation in the
UI to confirm the scripts are working as expected.
Below is an example of the final implementation:
• Use Case 1: Entering the start date and end date header fields auto-populates Annual list price
(List Price * Subscription Term i.e. $2,500.00 * 4 Months 11 Days = $10,885.00)
• Use Case 2: Setting the target line item discount as 5 %, auto-populates the unit net price [List
price - Discount/100 * List price i.e. $2,500.00 - (0.05 * $2,500.00) = $2,375.00]
• Use Case 3: Setting the quantity of each entry auto-changes the Extended Net price (Unit net
price * Quantity i.e. $2,375.00 * 10 = $23,750.00)
Final output
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

251


<!-- page 252 -->
Transaction Manager use case: Calculate the total of line-level prices
Transaction Manager can include a determination rule that calculates the sum of line-level net
prices so that it can be stored in a header-level field.
In ServiceNow CPQ Transaction Manager, you can use a Determination Rule to calculate the sum
of line-level total net prices and store the result in a header-level field. This is particularly useful
when multiple fields need to be aggregated from line items to the transaction header.

Example Rule Configuration
• Rule Action Type: Determination Rule
• Trigger Point: After line-level updates (e.g., when line items are added, removed, or updated)
• Scope: Transaction Header

Steps to create and use the rule
1. Ensure there is a header-level field.
Alternatively, you can create a custom field (for example, txn.custom.totalList) in the
"Associated Field” section where the sum will be stored.
2. Create a header level rule with the appropriate condition for which the rule will be executed.
3. Choose action type as determination.
4. In “Use this value”, set “Advanced” to true, and write an advanced script to calculate the fields.
For example, calculate the sum aggregate of the “List Price” of every line item. To calculate
“Total List Price”, we are using the “sumField” function to calculate all the line-level list prices
into a single field.

5. Save and activate the rule so it applies in real time during the transaction lifecycle.
6. To test the rule, create a transaction and add line items with varying net prices.
Verify that the sum of the line-level net prices is correctly calculated and displayed in the
header-level field.

More examples
Here are two more examples of line-level calculations stored in a header-level field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

252


<!-- page 253 -->
• Overall Discount Amount
Advanced Script:
return
txn.line.functions.sumField(txn.line.custom.listUnitPrice) txn.line.functions.sumField(txn.line.pricing.extendedNet);

• Total Net
Advanced Script:
return
txn.line.functions.sumField(txn.line.pricing.extendedNet);

Transaction Manager use case: Display LIG line number on line detail
How to display the Line Item Group line number in the Line Detail.
This document outlines the implementation approach for displaying the Line Item Group
(LIG) Line Number in the Line Detail layout. This enhancement lets users easily reference and
correlate the line detail with the appropriate line in the LIG.
To display the line number in the Line Detail view, follow the steps below. This requires using a
Line Detail Layout (for example, default_layout_linedetail).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

253


<!-- page 254 -->
1. Create a custom read-only line-level field to store the row number.
◦ Variable Name: txn.line.custom.rowNumber
◦ Default Value: {{txn#rowNumber}}

2. Add the new field to your Line Detail layout to make it visible when viewing line items.
Ensure that the field has the setting "enableMarkdown": true. Additionally, to display
the row number on the LIG line, add the "showLineNumbers": true property to the
lineGrid layout object in the non-line detail layout (or layouts).
3. Save and deploy the updated blueprint with the modified layouts.
4. In the Transaction UI, create a new transaction or open an existing one.
The line number appears in the Line Detail view, as in the following example:

Transaction Manager use case: Document generation with Google Docs
Generate documents from Transaction Manager by using Google Docs and Google Apps Script.
To generate a document from Transaction Manager, Google Docs combined with Google Apps
Script provides an efficient and straightforward solution. By creating custom APIs using Apps
Script, you can easily receive GET and POST requests from a direct URL. This eliminates the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

254


<!-- page 255 -->
need for middleware, streamlining integration with services like ServiceNow CPQ or Transaction
Manager.
You can trigger document generation by either of these methods:
• ServiceNow CPQ Webhook: Automatically send POST requests to initiate document creation.
• Transaction Manager: Use this for managing and automating processes.

Setting up a Google doc to pull ServiceNow CPQ data
To access the developer window, open the Google doc where you want to integrate the script. In
the menu bar, go to Extensions > Apps Script to open the development environment.
You can write custom JavaScript to process data and interact with Google Docs by using the
Apps Script editor.

Coding
Google Apps Script includes GET and POST requests.
• GET Requests (doGet) responds with a simple text output, useful for verifying that the web
app is running.
• POST Requests (doPost) handles incoming data (usually JSON), generates the document
based on the template, and returns a link to the newly created document.
This video

explains how the doGet and doPost work in a Google Doc app script.

When using Transaction Manager, you need to transform the JSON to send over to Google Docs.
Below is an example template. If you are using a webhook, see Webhooks for how the data will
be sent over to Google Docs.
The following code block shows an example Transform Template, sent as a POST to the doPost
function.
{
"transaction": {
"uuid": "{{txn.uuid}}",
"term": {{txn.term}},
"stage": "{{txn.stage}}",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

255


<!-- page 256 -->
"status": "{{txn.status}}",
"account": "{{txn.account}}",
"endDate": "{{txn.endDate}}",
"netTotal": {{txn.netTotal}},
"termUnit": "{{txn.termUnit}}",
"createdBy": "{{txn.createdBy}}",
"quoteName": "{{txn.quoteName}}",
"startDate": "{{txn.startDate}}",
"accountName": "{{txn.accountName}}",
"createdDate": "{{txn.createdDate}}",
"opportunity": "{{txn.opportunity}}",
"paymentTerm": "{{txn.paymentTerm}}",
"quoteNumber": "{{txn.quoteNumber}}",
"contractTerm": {{txn.contractTerm}},
"contractType": "{{txn.contractType}}",
"currencyCode": "{{txn.currencyCode}}",
"estTaxAmount": {{txn.estTaxAmount}},
"modifiedDate": "{{txn.modifiedDate}}",
"billToAddress": "{{txn.billToAddress}}",
"hardwareTotal": {{txn.hardwareTotal}},
"servicesTotal": {{txn.servicesTotal}},
"shipToAddress": "{{txn.shipToAddress}}",
"softwareTotal": {{txn.softwareTotal}},
"discountAmount": {{txn.discountAmount}},
"expirationDate": "{{txn.expirationDate}}",
"lastModifiedBy": "{{txn.lastModifiedBy}}",
"primaryContact": "{{txn.primaryContact}}",
"customerSegment": "{{txn.customerSegment}}",
"discountPercent": {{txn.discountPercent}},
"transactionType": "{{txn.transactionType}}",
"estTaxPercentage": {{txn.estTaxPercentage}},
"agreementDiscount": {{txn.agreementDiscount}},
"taxEntityLocation": "{{txn.taxEntityLocation}}",
"transactionNumber": {{txn.transactionNumber}},
"totalPriceEstimate": {{txn.totalPriceEstimate}},
"overallDealDiscount": {{txn.overallDealDiscount}},
"annualTransactionBands": "{{txn.annualTransactionBands}}",
"annualTransactionCount": {{txn.annualTransactionCount}},
"accountSpecificDiscount": {{txn.accountSpecificDiscount}}
},
"lines": [
{{#each lines}}
{
"uuid": "{{txn.line.uuid}}",
"productInfo": {
"productId": "{{txn.line.productId}}",
"productSku": "{{txn.line.productSku}}",
"productCode": "{{txn.line.productCode}}",
"productName": "{{txn.line.productName}}",
"productType": "{{txn.line.productType}}",
"productDescription": "{{txn.line.productDescription}}"
},
"pricing": {
"netPrice": {{txn.line.netPrice}},
"listPrice": {{txn.line.listPrice}},
"discountAmount": {{txn.line.discountAmount}},
"discountPercent": {{txn.line.discountPercent}},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

256


<!-- page 257 -->
"netTotal": {{txn.line.netTotal}},
"customerLineDiscount":
{{txn.line.customerLineDiscount}},
"agreementLineDiscount":
{{txn.line.agreementLineDiscount}}
},
"dates": {
"startDate": "{{txn.line.startDate}}",
"endDate": "{{txn.line.endDate}}",
"createdDate": "{{txn.line.createdDate}}",
"modifiedDate": "{{txn.line.modifiedDate}}"
},
"quantity": {{txn.line.quantity}},
"currencyCode": "{{txn.line.currencyCode}}",
"configUUID": "{{txn.line.configUUID}}",
"orderDetails": {
"globalOrder": {{txn.line.globalOrder}},
"orderNumber": {{txn.line.orderNumber}},
"transactionLineNumber":
{{txn.line.transactionLineNumber}}
},
"termDetails": {
"term": {{txn.line.term}},
"termUnit": "{{txn.line.termUnit}}",
"termMultiplier": {{txn.line.termMultiplier}}
},
"approvals": "{{txn.line.approvals3}}",
"lastModifiedBy": "{{txn.line.lastModifiedBy}}"
}
{{#unless @last}},{{/unless}}
{{/each}}
]
}
If you do not set the doGet function and try to access the URL you will receive an error. If not
using the doGet for other purposes, it is best to always set it to the following and just modify the
text.
function doGet(e) {
return ContentService.createTextOutput('Logik Transaction
Manager Document Generation Web App is running.');
}
When you access the live URL, you receive this message:

The doPost is important, because it will probably handle the Webhook or Integration payloads
being sent from ServiceNow CPQ via POST requests.
Next, we create a function to generate a Google Doc using the doPost function.
In your Google Apps script, the doPost function will receive a POST request containing data
(in JSON format) that you want to populate into a Google Doc template. The main logic for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

257


<!-- page 258 -->
interacting with the Google Doc (i.e., replacing placeholders like {{EXAMPLE}} with actual
values) will be placed in a separate function that is called from doPost.
To set up the doPost function, define the doPost function to handle incoming POST requests
and call your custom document generation function. Below is an example of how to structure it.
function doPost(e) {
// Parse the JSON data from the POST request
const postData = JSON.parse(e.postData.contents);
// Call the function to create and populate the Google Doc
const docLink = createGoogleDocFromTemplate(postData);
// Return the public link to the generated document in the
response
return ContentService.createTextOutput(docLink);
}
In this code:
• The postData object contains the parsed data sent in the POST request.
• createGoogleDocFromTemplate(postData) is the function you will define to handle
the Google Docs generation.
• The docLink is the public link to the generated Google Doc, returned to the caller.
Next, create the document generation function. The createGoogleDocFromTemplate
function will:
1. make a copy of a Google Doc template.
2. replace placeholders (e.g., {{EXAMPLE}}) in the document with the corresponding data.
3. return a public link to the generated document.
The following code block shows an example createGoogleDocFromTemplate function:
function createGoogleDocFromTemplate(data) {
// Specify the ID of the Google Doc template
var templateId = 'YOUR_TEMPLATE_DOC_ID_HERE';
// Make a copy of the template
var templateDoc = DriveApp.getFileById(templateId).makeCopy();
var doc = DocumentApp.openById(templateDoc.getId());
var body = doc.getBody();
// Replace placeholders with actual data from the POST request
body.replaceText('{{ACCOUNT_NAME}}',
data.transaction.accountName);
body.replaceText('{{QUOTE_NUMBER}}',
data.transaction.quoteNumber);
body.replaceText('{{USER}}', data.transaction.createdBy);
// Continue to replace all other placeholders...
// Save and close the document
doc.saveAndClose();
// Make the document public (optional, based on your needs)
templateDoc.setSharing(DriveApp.Access.ANYONE,
DriveApp.Permission.VIEW);
// Return the public link to the newly created document
return templateDoc.getUrl();
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

258


<!-- page 259 -->
In this function:
• The templateId variable stores the Google Doc template’s ID. You should replace
'YOUR_TEMPLATE_DOC_ID_HERE' with the actual ID of your template.
• makeCopy() creates a copy of the template.
• replaceText('{{EXAMPLE}}', data.key) replaces each placeholder
in the document with actual data from the incoming POST request. For example,
{{ACCOUNT_NAME}} is replaced by data.transaction.accountName.
• The document is made public with setSharing(), but you can adjust the sharing settings
as needed.

Logging
Google Apps Script offers built-in logging via Logger.log() for debugging, but better logging is
available in Google Cloud Logs. To access logs:
Go to > View > Executions to check outputs from your script. Then, connect your project to the
Google Cloud Platform to view the logs.
In the Google Cloud Logs Explorer, apply the filter
resource.type="app_script_function" to view logs related to your app.

Deploying
• Click the “Deploy” button in the top right corner of the Apps Script editor.
• Select “Deploy as web app.”
• Set the project version (you can create a new one).
• Define who can access the app:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

259


<!-- page 260 -->
◦ Execute as: This should be set to Me, so the script runs with your permissions.
◦ Who has access: Choose “Anyone” (public).

Once deployed, you’ll get a URL ending in /exec for live usage and /dev for testing. This is
the URL that users will target to trigger the doGet function or send POST requests to trigger
doPost.
In the following examples, the ellipsis (...) represents the unique App Script number for your
script.
• Live: https://script.google.com/macros/s/.../exec
• Dev: https://script.google.com/macros/s/.../dev
If you want to test your changes before pushing them live, use the Dev URL to test your script with
real data.
Every time you redeploy, you need to create a new version of your script. Follow these steps:
1. In the Google Apps Script editor, click the Deploy button in the top right.
2. Select Manage deployments from the menu.
3. In the Deployments window, click Edit on the existing deployment, or create a new
deployment.
4. Click Select Version, and then click New version.
In the pop-up window, you can give your version a name or description. This is optional, but
helpful for tracking changes. Click Save to create the new version.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

260


