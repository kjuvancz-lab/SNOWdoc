# Australia Sales Customer Relationship Management — Self-service using Business Portal / Lead-to-cash foundation apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 418–567 of 1645 | Part 3 of 5

Sections: Self-service using Business Portal (p118); Configure (p119); Lead-to-cash foundation apps (p120); Configure, price, quote apps (p199)

---

<!-- page 418 -->
This page shows the fifty most recent blueprints by the date and time of the deployment,
together with the user responsible.
Because the configuration’s behavior can change depending on the rules, fields, and
enrichments that have changed since the last deployment, this page is useful for
troubleshooting. Noting the last time that a deployment behaved as intended is useful for both
the admin implementing ServiceNow CPQ and for our support team when helping solve an issue.
Note that the Last Deployed column’s date and time will differ from the completion date and time
as viewed from the notification bell. This is because the Last Deployed column shows the last
time a blueprint was submitted for deployment, not when the deployment was completed. This is
helpful in determining how long a deployment takes to complete, especially for large blueprints
with hundreds or thousands of fields and rules.

If your blueprints take longer than thirty minutes to complete, create a support ticket by using the
ServiceNow Support portal . For step-by-step instructions, see Create a case on Now Support
for CPQ Customers .
Related topics
Tracking a blueprint's deployment history

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

418


<!-- page 419 -->
Tracking a blueprint's deployment history
Track the deployment history of blueprints in ServiceNow CPQ Admin. View details like
deployment date, time, and user for troubleshooting and reference.

1. To access the blueprint deployment history, click Blueprints in ServiceNow CPQ Admin.
2. On the Blueprints tab, the Deployments tile lets you view the deployment history for a selected
blueprint.
3. The Deployments tile shows the most recent fifty deployments with the name, the blueprint
variable name, and the date and time of last deployment. To see the user that initiated the
deployment, hover the mouse cursor over the avatar icon.
4. The most recent deployment details also appear in the header section of the blueprint.
Related topics
Viewing blueprint deployments
Associate multiple fields to a blueprint
You can associate any number of fields to a blueprint by using the Blueprint Import function in
the Matrix Loader.

Before you begin

Role required: Admin

Procedure
1. Create or edit a blueprint.yaml file and define the blueprint variable name and name in the
following format (removing the angle brackets around the variable names).
blueprints:
-variableName: <variableNameOfBlueprint>
relatedFields:
-<fieldVariableName1>
-<fieldVariableName2>
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

419


<!-- page 420 -->
-<fieldVariableName3>
-<etc...>
name: <Name of Blueprint>
2. Add the variable names of the desired fields.
3. Import the YAML file into the Matrix Loader.
Choose Blueprint as the upload type.

Note: Any existing fields or configurable products in the blueprint will be disassociated
from it unless they are also defined in the YAML file.
Related topics
Enable Markdown in text fields
Circular references in rules and fields
Circular references in a blueprint may result in an error.
ServiceNow CPQ Admin allows administrators to define a blueprint whose rules and fields result
in a circular reference. If the end user enters configuration inputs that initiate an endless loop, an
error state occurs.
For example, suppose rule 1 consists of a condition on field A and a determination action that
sets field B, while rule 2 has a condition on field B and a determination action that sets field B.
These interacting rules would create an endless loop.
Loops may also be composed of many fields and rules. In more complex use cases, it is
common for testers and end users to successfully operate the configuration blueprint without
encountering the error state. The ServiceNow CPQ Rule Cycle Report identifies potential loops
so that the administrator can understand their risk and correct them.
To identify endless loops in a blueprint, use the Rule Cycle Report. See Identify endless loops in
blueprint rules.
Related topics
Identify endless loops in blueprint rules
Configure fields
Learn about how fields in ServiceNow CPQ help structure data collection efficiently and
about the various types of field. Associate fields with blueprints for consistent use across
configurations, layouts, and rules.
A field is a designated space where users can enter specific information. Imagine fields as
sections in a questionnaire, each awaiting a particular piece of data.
The usefulness of fields lies in their ability to structure data collection, making it easier for both
users to enter values and admins to set them up efficiently and effectively. Without fields, the
process of gathering information would be a chaotic jumble of function parameters, lacking the
coherence necessary for meaningful data storage or the ability to enact rules.
In ServiceNow CPQ, fields are global. This means a field may be reused in any blueprint, rule, or
layout without having to create a unique field for each.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

420


<!-- page 421 -->
• Layouts
◦ Fields are the most granular component that make up a layout. A layout consists of many
fields arranged into a navigational flow or page.
◦ Tabs, expandable sections, column sets, field grids, and headings provide additional
organization to the fields in a configuration experience.
• Rules
◦ Rules leverage fields as inputs to conditions, calculations, and logic.
◦ Rules act on fields. A rule may determine the value of a field, display a message associated
with a field, hide a field, control the options available in a field, and send the information in a
field to the Product List, all in the same rule.
• Blueprints
◦ Because fields are global across an environment, the only way for them to be a part of a
specific configuration is to be associated with a blueprint.
◦ When all of the fields referenced by a rule are associated with a blueprint, the rule is
associated with the blueprint without the need to specify it.
◦ When a field is associated with a blueprint, the field can be added to the layouts of the
blueprint.
When you associate a field to a blueprint, the application automatically associates all rules
that leverage the field to the same blueprint. Fields and rules may be reused on any number of
blueprints.

Field types
Many field types are available, each with constraints and rules for entered values. For example, a
number field is more suitable than a text field as a quantity field, since the only inputs it accepts
are numbers.
Similarly, if there are only a few options that a user should be allowed to enter, a picklist field
should be used to limit the options for the end user.
Because fields are global across an environment, all fields need a unique variable name when
they are created. They can also be set as required during configuration, so that if the field is
associated with a blueprint, it must be filled out before the configuration can be saved.
Text fields accept any characters entered into the field up to 2000 characters. The field definition
allows the admin to specify minimum and maximum field lengths and a static default value.

Numbers fields accept only numeric characters in their fields. The field definition requires the
admin to specify whether the field will be used as a number, currency, or percentage. Optional
settings include minimum and maximum values and a default value. The unit label setting is not
currently used in the application.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

421


<!-- page 422 -->
To specify the display precision of a numeric value, in the ServiceNow CPQ layout, click the gear
icon in the number field. Then, set the precision in the Display Precision field.

Boolean fields accept only two values: true and false. The field definition allows the admin to
specify a true label, a false label, and a default value. Unless specified, the default true label is
Enabled and the default false label is Disabled. The default state is false.

Picklists are fields that only allow specified options to be selected, such as catalog items. When
defining the field, the admin must specify whether the field is single-select, where the user must
select one value, or multi-select, where the user can select as many values as desired. If the field
is single-select, the admin must also specify whether the option values should be evaluated as a
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

422


<!-- page 423 -->
text field or a number field. The admin can also add field options, set an order, or a default value
or values, and add picklist extension data if necessary.

A product picker is like a picklist with extended data. product pickers can add products to a bill of
materials and map additional data to product list fields, including extended data, without writing
standard rules.

A set is a collection of fields that interacts only with the fields in their own row and column.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

423


<!-- page 424 -->
Sample blueprint showing field options and display variations
The following blueprint includes all the different field options and display variations. This ZIP file
contains the layout CSV files that show how to set the component display types for each option.
Component Display type blueprint
Related topics
ServiceNow CPQ fields, system fields, and partner fields
Field type display options
Grid-style fields and field collections
Boundaries and limits
Create a field using the Administration UI
Learn how to create a field in the ServiceNow CPQ UI for use in Blueprint.

Before you begin

Role required: Admin

Procedure
1. In the ServiceNow CPQ navigation pane, click Fields.

The Fields administration page opens, listing the fields in the current environment.

To edit a field, click its name (a). To create a new field, click + New (b).
2. Click + New.
3. In the New Field window, name the field and select a field type.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

424


<!-- page 425 -->
◦ (A) Valid field names can be composed of up to 255 characters, including letters, numbers,
spaces, and the following special characters: {}[]()|\~`_^@?<=>;:/.-,+*ʼ&%$#”!
◦ (B) The variable name is automatically populated. To set a different variable name, click the
pencil icon. (You cannot edit the variable name later.) Valid field variable names consist of
letters, numbers, and underscores. The first and last character must be a letter or number.
◦ (C) Fill in the type-specific details, as necessary.
◦ (D) The New Field window shows the Component Display Types available for the field type.
4. Click Save.
If you need to create a large number of fields or field options, use the Matrix Loader.
When you create a field, it becomes available to any layout or rule in the environment.
However, you must associate a field with a blueprint so that the field can be used in a
configuration experience.

What to do next

Associate a field with a blueprint
Related topics
Configure the Matrix Loader
Associate a field with a blueprint
Associate a field with a blueprint so that the field can be used in a configuration experience.

Before you begin

Role required: Admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

425


<!-- page 426 -->
Procedure
1. In the ServiceNow CPQ navigation pane, click Blueprints.

2. On the Blueprints page, click the name of the blueprint with which you intend to associate your
field.

3. On the Blueprint Admin page, in the Associated Fields tab, click Associate fields.

4. In the Associate Additional fields window, select the fields to associate with the blueprint, and
then click Done.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

426


<!-- page 427 -->
The fields associated with the blueprint are listed on the Fields tab of the blueprint
administration page.

Related topics
Create a field using the Administration UI
Enable Markdown in text fields
Markdown lets you format rich text using an easy-to-remember plain text syntax.

Before you begin

Role required: Admin
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

427


<!-- page 428 -->
About this task

ServiceNow CPQ text fields support Markdown, a widely used, lightweight markup language for
formatting text using plain-text syntax.

Procedure
1. In the layout editor, click the gear icon.
2. Enter the following JSON text as the raw value for the field properties:
{
"enableMarkdown": true
}
3. Click Edit Field Info.
4. Select ReadOnlyText as the display type for the field that will accept Markdown text.
Related topics
Markdown syntax
Markdown options for read-only text
Markdown syntax
Markdown provides a simple way to format content using plain text syntax. Use Markdown to
apply basic text styling, insert links, and add images by using a small set of intuitive symbols that
render consistently across supported ServiceNow CPQ experiences.

Text formatting
Add asterisks or underscores around the text to bold or italicize.
• A single layer of marks italicizes: *italic* or _italic_
• A double layer of marks emboldens: **bold** or __bold__
• A triple layer both italicizes and emboldens: ***bold and italic*** or ___bold and italic___

Links
The following syntax creates a clickable URL:
[link text](URL)
[The ServiceNow home page](https://www.servicenow.com/)

Images
The following syntax inserts images via a URL:
![alt text](image URL)
Related topics
Enable Markdown in text fields
Markdown options for read-only text

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

428


<!-- page 429 -->
Markdown options for read-only text
Enable markdown formatting for ReadOnlyText components in ServiceNow CPQ layouts to
enhance text presentation. Use syntax for bold, italics, lists, links, images, and dynamic field
values to create clear, engaging, and context-aware display text in configurations.
This article describes the markdown syntax and behaviors available to administrators when
a text field is defined on a native ServiceNow CPQ UI layout with component display type
ReadOnlyText. For a broader discussion of layout options, see CSV layout upload.
To apply markdown formatting to a ReadOnlyText component:
1. In the layout editor, open the field properties (button with cog icon)
2. Add the following as the raw value: { "enableMarkdown": true }
3. Use the following markdown syntax in the text field value.
Markdown formatting options
Formatting Option

Syntax

Output

Notes

Bold

**this will be bold**

bold text

A double underscore
instead of the double *
will also work

italic text

A single underscore
instead of the single *
will also work

Italics

*this will be italic*
_this will be italic_

Unordered List

Item\r- Item\r- Item

• Item
• Item
• Item

Ordered List

1.Item\r2. Item\r3. Item

1. Item
2. Item
3. Item

Newline

\n

Link

[link display
text] (https://
www.example.com)

link display text

Image

![alt text](image url,
"title text")

N/A

Table

| Header1 | Header2 |
\n|---|---|\n| Row1Col1
| Row1Col2 |\n|
Row2Col1 | Row2Col2
|

Header1

Header2

Row1Col1 Row1Col2

Any JavaScript
entered will be
sanitized

By default, columns
are left-aligned. To
right-align, use ---:.
To center, use :---:.

By default, table
Row2Col1 Row2Col2 borders are off. To
add borders, add
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

429


<!-- page 430 -->
Markdown formatting options (continued)
Formatting Option

Syntax

Output

Notes

theme property
Markdown-tableborderWidth:
1px.
Dynamic Text

{{fieldVariableName}}

Dynamic Non- Field
Text

{{txnʼrowNumber}}

Outputs the value of
the selected field in
the text
Outputs the value
of the dynamic text
based on context
Currently, only
rowNumber in a txn
line is supported

This markdown syntax is the same as that available for field help popups.

Returning strings with Markdown
When you return a string with Markdown, enclose the string in double quotes, especially
when using escaped characters such as \n for line breaks. Using single quotes may prevent
Markdown from rendering properly and can lead to unexpected results.
For example, when the following return function is entered, it leads to the escaped characters
appearing in the output:

When the return function encloses the same text in double quotes, the output appears as
intended:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

430


<!-- page 431 -->
ServiceNow CPQ fields, system fields, and partner fields
Learn about the three types of fields in ServiceNow CPQ—ServiceNow CPQ, system fields, and
partner fields. Understand how each type stores, retrieves, and displays data in configurations,
and how they interact with Salesforce and partner systems for seamless data integration.
There are three categories of fields in the ServiceNow CPQ environment: ServiceNow CPQ fields,
system fields, and partner fields.

ServiceNow CPQ fields
A ServiceNow CPQ field is a user-defined field that is custom to the ServiceNow CPQ
environment. Its type can be number, text, picklist, set, or product picker. When users create
fields in CPQ, they can manually assign default values in the field definition, or they can set
values through determination actions.
The following example shows how a user would set a ServiceNow CPQ field in an On Configure/
Reconfigure enrichment:
cfgRequest.testField.set("value", "Hello World");
For a more complete description of ServiceNow CPQ fields, see Configure fields.

Note: In organizations that do not use Salesforce for their launch-point into ServiceNow
CPQ, all fields must be initialized in their API call.

System fields

System fields are predefined. System fields cannot be assigned a default value because they
leverage the SFDC product cache (or the current date and time) to generate their values.
The following example shows how a user would call a system field in an On Configure/
Reconfigure enrichment:
let pC = {"input2":cfgRequest.sys.productCode.value};
System fields can be added directly to any layout. There are no issues with displaying them
regardless of whether they contain predefined data.
In the layout editor:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

431


<!-- page 432 -->
In the Configurator UI:

Unit of Measure is blank because in this example, it has not been defined in SFDC.
The mapping of each of these system fields to their respective SFDC object is as follows. The
field API name is in parentheses.
• sys.productUOM > Product: Quantity Unit Of Measure (QuantityUnitOfMeasure)
• sys.productName > Product: Product Name (Name)
• sys.productFamily > Product: Product Family (Family)
• sys.productDescription > Product: Product Description (Description)
• sys.productCode > Product: Product Code (ProductCode)
• sys.enableValidation: value defaults to true
• sys.currentDate: Simple time API call, returns date of UTC
• sys.actionContext > Quote Line: Action Context (LGK ActionContext c)
• sys.productPrice > Price Book Entry: List Price (UnitPrice)
• sys.productId: value depends on Admin Settings
sys.productId changes to whatever is defined in your ServiceNow CPQ environment settings.
For instance, if the Product Id field was set to Product Code, the resulting data would be
Product Code, making it identical to the sys.productCode field.

If the Product Id field was instead set to Partner Id, the data would be pulled from the SFDC field
Product2 Id (ID as the field API name):

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

432


<!-- page 433 -->
Partner fields

Partner fields are fields that use a POST call to initialize a configuration via API. Partner fields
leverage the partnerʼs data set to generate field values.
The mapping of each of these partner fields to their respective SFDC object is as follows. The
field API name is in parentheses.
• partner.quote.id Quote > Record ID (Id)
• partner.quote.lineId Quote Line > Record ID (Id)
• partner.quote.pricebookId Quote > Pricebook ID (SBQQPricebookIdc)
• partner.quote.currencyIsoCode Quote > CurrencyIsoCode
partner.quote.currencyIsoCode defaults to USD if your organization does not have multicurrency enabled in their Salesforce Org. To enable multi-currency, follow the steps in this
Salesforce article: Enable Multiple Currencies .
When using these fields, it’s important to note that some of the data may not have any value
(null) when the product is first configured. To make sure that there are no initialization errors,
include null checks in any rules or scripts that utilize partner fields.
These fields cannot be directly added to a layout like system fields can. Instead, you can use
ServiceNow CPQ fields to populate the data in partner fields via an initialization enrichment.
The following example initialization enrichment populates the values of the partner fields into the
configurator:
let quoteId = cfgRequest.partner.quote.id.value;
let lineID = cfgRequest.partner.quote.lineId.value;
let currencyISO =
cfgRequest.partner.quote.currencyIsoCode.value;
let priceBookID = cfgRequest.partner.quote.pricebookId.value;
if (quoteId != null) {
cfgRequest.quoteIDTest.set("value", quoteId);
}
if (lineID != null) {
cfgRequest.lineIDTest.set("value", lineID);
}
if (currencyISO != null) {
cfgRequest.currencyISOCodeTest.set("value", currencyISO);
}
if (priceBookID != null) {
cfgRequest.pricebookIDTest.set("value", priceBookID);
}
return cfgRequest;
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

433


<!-- page 434 -->
Initial configuration:

Reconfiguration:

Line ID is now populated.
How you use partner and system fields is up to you. Some organizations find it helpful to display
this information in the configurator to the end user, while others use it in the background in rules
to drive pricing conditions.
Related topics
Grid-style fields and field collections
Configure fields
Grid-style fields and field collections
Learn about the various types of grid-style fields: the picklist extension, the field grid, the indexed
set, the associated picklist set, and the product picker. Learn how best to choose a field type for
your data.
In ServiceNow CPQ, although many grid-style fields and field collections look similar to an
end user, they have different behaviors and uses for admins. This article explains the basic
capabilities of each and their intended use cases. It also provides the necessary resources for
those who want to explore each option’s setup at a deeper level.

Picklist extension

A picklist extension is a field type that displays extended information. It may be used to show
more option details or to show dynamic pricing options with the Picklist Extension Pricing
enrichment. A picklist extension can include images and supports multi-select and single-select
actions. It can send product information directly to the bill of materials (BOM).
A picklist extension uses exclusion rules and option filters to populate what end users see. Only
one field is editable out of the grid (the selection).
For an overview of the picklist extension feature, see Picklist extensions.
For a deeper understanding of the back end and how to display picklist extensions, see
Displaying a picklist extension on a layout.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

434


<!-- page 435 -->
For an overview of the Picklist Extension Pricing enrichment feature, see The Picklist Extension
Pricing enrichment.
For information about using picklist extensions in rules, see Picklists and picklist extensions in
rules.

Field grid

A field grid is a grid of independent fields in a format of rows and columns. It may be used to
display similar and codependent fields in an easy-to-format pattern, when the number of fields to
display is static, or when each field needs to be referenced outside of its own row and column.
Each field can be referenced and manipulated by any rule and must be independently defined.
For example, a 3 x 3 row requires 9 fields.
For information about how to set up a field grid using the Matrix Loader, see Layouts: Field grid
setup.

Indexed set

An indexed set is a dynamic set of repeating identical fields. It can be used to display options
for a component that can be changed per component, or to aggregate costs and quantities for
simple product rules. It tends to require little setup and maintenance.
Each field can be cloned and edited separately depending on an outside number field. You only
need to create the fields in each row, not one field per cell.
Each set field can only affect the fields in its row.
Each column can be aggregated into a field that can be referenced outside the set. It can be
configured to display across tiers.
For more information about sets, set aggregates (collections of sets) and about how to use sets
in layouts, see:
• Configure sets
• Creating set aggregates
• Using sets in layouts

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

435


<!-- page 436 -->
Associated Picklist set

An Associated Picklist set is a dynamic set of repeating fields based on the options of a picklist.
It may be used to aggregate costs and work hours for distinct services, to limit the options of a
configurable component, or to expand and use more field options for a picklist than a picklist
extension.
Each field can be cloned and edited separately depending on an outside picklistʼs selections.
You only need to create the fields in each row, not one field per cell.
Each set field can only affect the fields in its row.
Each column can be aggregated into a field that can be referenced outside the set. It can be
configured to display across tiers.
For more information, see Creating an associated picklist set.

Product Picker

The product picker field type is a product-based table of distinct options and qualities similar to
the Associated Picklist set, but with built-in product rules. It may be used when product options
need further information from the end user before being added to the BOM.
Each option is defined like a picklist, but every cell contains an editable field. You only need to
define the options and fields, as shown in the row and column headers.
Value, Select, and Quantity are automatically added, and will automatically send end-user
selections to the BOM. Field behavior in a product picker is determined by product picker bulk
actions.
This field can affect fields outside the product picker by means of rules.
For more information, see:
• Product pickers
• Product picker bulk actions

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

436


<!-- page 437 -->
Related topics
ServiceNow CPQ fields, system fields, and partner fields
Configure fields
Field type display options
Field type display options
Users have many display options for the different field types. These are defined in the layout CSV
in the Component Display Type column using the values in the parentheses for each type.
The admin uses the Component Display Type column to define how a field will display on a
layout. The following types are available.
Available display types
Field type

Text

Component display types

ReadOnlyText
Text
TextArea
Date
LocationLookup

Boolean

Boolean
Radio
RadioButtons
Checkbox

Number

Number
NumberWithSubmit
Slider
ReadOnlyText
ReadOnlyCurrency
FormattedNumber

Picklist (single-select)

Picklist
ReadOnlyPicklist
ExtendedPicklist
ExtendedPicklistDisplayOnly
Radio

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

437


<!-- page 438 -->
Available display types (continued)
Field type

Component display types

RadioButtons
VerticalRadio
SingleSelectPicklistGrid
VisualPicker
Picklist (multi-select)

MultiSelectPicklist
MultiSelectExtendedPicklist
MultiSelectExtendedPicklistDisplayOnly
MultiSelectPicklistGrid
MultiSelectVisualPicker
Checkbox
VerticalCheckbox

Product picker

ProductPickerGrid
VisualProductPicker

Text component display type
Text fields accept a maximum of 2000 entered characters. Administrators can specify minimum
and maximum field lengths and a static default value. Text fields can have the following
component display types.
Text: A single-line input. Examples demonstrate unpopulated and populated text fields because
they are displayed on to the end user.

TextArea: A multi-line input field. The example shows a text area with force-set values populated.

ReadOnlyText: A display-only option. The example shows a text area with a heading and the
displayed field details.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

438


<!-- page 439 -->
Date: A single-line input and searchable calendar option. Users can enter a date or search by
using the calendar icon.

LocationLookup: uses the Google Places API to pull address data that can be used for unique
location configuration and pricing.

Boolean component display type
Boolean fields only accept two values: True and False. False is the default state. Administrators
can specify labels for each state. Unless specified, the default label for True is Enabled, and the
default label for False is Disabled.
Boolean: Displays as a switch.

Radio: Displays as square radio buttons.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

439


<!-- page 440 -->
RadioButtons: Displays as circular radio buttons.

Checkbox: Displays either checked or unchecked.

Number component display type
Numbers fields accept only numeric characters. Administrator must specify whether the field
will be used as a number, as currency, or as a percentage. Optional settings include minimum,
maximum, and default values. The unit label setting is not used in the application.
Number: Users can enter a number using the keyboard or modify it by using the up and down
buttons.

NumberWithSubmit: Users enter the number by using the keyboard and must click the "Apply"
button before their input is accepted.

Slider: Users slide through range of available numbers. This field appears only if the field
definition has a maximum value.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

440


<!-- page 441 -->
ReadOnlyText and ReadOnlyCurrency: Display-only options, similar to ReadOnlyText for text
fields. ReadOnlyCurrency is a display-only option with currency formatting.

FormattedNumber: Users can enter a number by using the keyboard or modify it by using the up
and down buttons. When the field loses focus, it displays in the format defined in the layout CSV.

Picklist component display type (single-select)
Picklists allow only specified options to be selected. Administrator must specify whether the field
is single-select or multi-select, and if it is single-select, whether the values should be evaluated
as a text fields or a number fields. The administrator can also add field options, set the order,
specify a default value, and add picklist extension data.
Picklist:

ReadOnlyPicklist: selection only: the user cannot type and filter options.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

441


<!-- page 442 -->
Radio: Displays all options in a square label display, making all options visible without the use of
a menu.

RadioButtons:

VerticalRadio: Options appear as vertical radio buttons.

Visual Picker: Displays the fieldʼs options using an associated image with a label below the
image. Currently selected options are highlighted with a checkmark.

Picklist component display type (multi-select)
Checkbox: Displays options in row format with checkbox selection. multi-select picklists only.

Vertical Checkbox: displays checkbox selection in vertical alignment. multi-select picklists only.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

442


<!-- page 443 -->
ReadOnlyPicklist: (same as single-select)
MultiSelectPicklist:

Picklist extension (PLE)
ExtendedPicklist and MultiSelectExtendedPicklist: Includes additional details from the PLE and
lets users choose from a menu. The example shows that this single-select extended picklist
displays details from two columns from the associated PLE. Images can be added to field
options.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

443


<!-- page 444 -->
ExtendedPicklistDisplayOnly, MultiSelectExtendedPicklistDisplayOnly: Includes additional
details from the PLE and displays the selection. Options are determined by rule and default
options. Not user editable.

SingleSelectPicklistGrid, MultiSelectPicklistGrid, andSingleSelectPicklistGridCheckbox: Includes
additional details from the PLE and displays field options in a grid. The Checkbox version lets the
end user deselect their option.

Product picker component display type
Product pickers are similar to a picklists with extended data. Product pickers can add products to
a bill of materials and map additional data to product list fields, including extended data, without
writing standard rules.
ProductPickerGrid: Shows the product picker and its subfields in a grid format, much like a
picklist extension.

VisualProductPicker: Shows the product picker and its subfields as a Visual Picker.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

444


<!-- page 445 -->
Related topics
Configure fields
Blueprint, configurable product, and field UI
View a list of updates and changes made in April 2023.
Improvements in Admin usability and readability. No changes in functionality.
Revamped field, configurable product, and blueprint UIs.
Improved navigation. Breadcrumb links are used more extensively in the UI and dialogs.
Enhanced field association experience from the Blueprint page.
Field and set pages are consolidated into a single view.
Support for creating sets in the New Field dialog.

Updated blueprint UI
The relationship between the ServiceNow CPQ items and the blueprint can now be easily
accessed via the tiles in the left column and the number of associated items is visible at a
glance.
Each tile displays the appropriate UI for its object on the right of the screen.

(1) Edit: The blueprint variable name is displayed in parentheses. The blueprint name and
description can be edited by clicking the pencil icon.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

445


<!-- page 446 -->
(2) Associated Fields: Fields for blueprint use the updated field UI with grouping.
(3) Related Rules: Rules that are related to the blueprint.
(4) Layouts: Layouts for this blueprint.
(5) Configurable Product: Configurable products that use this blueprint.
(6) Enrichments: The enrichment scripts for the blueprint.
(7) Associate Fields: Opens field association for the blueprint.

Updated navigation
In the updated UI for blueprints and configurable products, the navigation and editing
experience has changed. When clicking a field or a rule, an editing page slides into the page
instead of a dialog appearing. Additionally, there are now breadcrumbs for navigation and
context.

(1) Navigation breadcrumb: Breadcrumb links are placed on the header to help maintain context
and provide navigation.
(2) Edit page: The editing page replaces the table view of items in context, instead of the dialog
view used previously.
(3) Relationship links: Maintaining consistency with editing a field through the main fields tab, the
page layout and relationship links are shown.

Updated field association in blueprints
Field association to blueprints has also received a makeover. From the blueprint UI, with the
Associated Fields tile selected, click the Associate Fields button to launch the new panel
experience.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

446


<!-- page 447 -->
(1) Filter Categories: Fields can be filtered to “Standard” or “Sets” using the drop-down menu.
The filter applies to both the results list and the selected list.
(2) Search: Fields can be searched and filtered using the search bar.
(3) Results: Field results appear on the left. Fields can be added by clicking the + icon. Selecting
a field removes it from the results column and add it to the selected column.
(4) Selected: Selected fields and their details are displayed on the right. Click the check mark
icon removes the field from the selected list.
(5) Actions: Two actions are available at the bottom of the panel, Cancel and Done. To save the
changes and associate the fields to the blueprint, click Done. To close the panel without adding
any fields, click Cancel. The panel can also be closed without adding fields by clicking the arrow
at the top left of the panel (6).
Depending on the size of the browser window, you may see a stacked view of the Results (1,
below) and Selected (2) field lists. The functionality remains the same.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

447


<!-- page 448 -->
Updated configurable product UI
The configurable product UI has also received an update, to align with the blueprint UI and utilize
the updated field UI.

Similar to the blueprint UI, tiles on the left control what is displayed on the right.
(1) Associated Fields: fields for configurable product.
(2) Related Rules: Rules that are related to the configurable product.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

448


<!-- page 449 -->
(3) Layouts: Layouts for this configurable product.
(4) Hyperjump: Launches Hyperjump for this configurable product.
5. UI Content: Displays content from whichever tile is currently selected.

Updated field UI
The updated field UI provides a unified view of fields and sets and is also used in the update
blueprint and configurable products UI.

Fields are now grouped into three types: Standard, Sets, and System. By default the “Standard”
section is open.
(1) Standard section: Displays standard field types (Text, Number, Picklist, Boolean)
(2) Sets section: Displays all Sets (See more below)
(3) System section: Displays system fields.
(4) Open/Close section: Each section can be expanded using the arrow icon to the left of the
grouping name. Only one section is open at a time.
With the inclusion of sets in the field UI, the display of sets has also been updated.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

449


<!-- page 450 -->
(1) Set grouping section: an expanded view of all sets.
(2) Individual sets can be expanded or collapsed in the table using the arrow icon on the left. By
default, the view is expanded. Multiple sets can be expanded at once.
(3) When a set is expanded, the fields and details are also displayed.
The New Field window provides a unified way to create both standard field types and sets.

Field types can be selected by either picking the appropriate tile or by using the arrows to scroll
through the display examples.
(1) Sets are available in addition to the four standard field types.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

450


<!-- page 451 -->
(2) Each field type has a display example showing different ways that the field can appear on a
layout. The example is not exhaustive.
Configure sets
Sets group related fields into repeatable collections, allowing administrators to streamline
configurations and reduce redundancy. They enable dynamic, table-like data entry, support
aggregates, and simplify managing repeated questionnaires or configurable options in
ServiceNow CPQ.
Sets introduction
Sets allow the administrator to identify a number of fields in a group. Once associated with a set,
the fields may then be replicated an indefinite number of times on the end-user UI in a matrix
format. Sets reduce the number of fields and rules that must be defined for use cases that repeat
fields and rules. The maximum number of set records (the number of times a group of fields can
be repeated) is 2000.
In this set, three fields (Sandwich Choice, Side Choice, and Drink Choice) are defined in a set;
the set is repeated three times:

Display types
Sets can be displayed in several ways.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

451


<!-- page 452 -->
• As table rows:

• As table columns:

• As list rows:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

452


<!-- page 453 -->
• As a set repeater:

You can manage sets by using the Layout Wizard. For more information about sets and layouts,
see Using sets in layouts.

Adding and removing set rows
In the end-user UI, the user has four ways to increment or decrement set records:
• To add a record to the bottom of the set, click the green plus in the upper right corner.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

453


<!-- page 454 -->
• To add or remove records from the bottom of the set, edit the Size field and click Change Size.

• To insert a record between two existing records, hold the cursor between them in the Index
column.

• To add records relative to the current record or to delete a record, use the menu in the Index
column.

For more information about managing sets, see Using sets in layouts and How sets interact
with the rest of a blueprint.

Creating a set
Sets can be added in the same two areas you would create fields: the blueprint to which to add
the set, and the fields administration tab.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

454


<!-- page 455 -->
Select the set field type from among the list of options:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

455


<!-- page 456 -->
Give your new set a name and choose from the size types.

The size type cannot be changed after the set is saved. Therefore, keep the following in mind:
• The set field determines the number of records that will be displayed in the set. This numeric
field can be visible and edited by a user or set by determination action, as the case requires.
• The associated picklist leverages a picklist field to determine how many records to show in the
set. When this option is selected, the admin must identify the field that will drive the set size.
When the set type is Associated Picklist, ServiceNow CPQ creates two additional fields in the
set:
◦ Option Value: The value of each option in the set, represented as a read-only text field.
◦ Select Option: Tracks whether each option of the picklist is selected.
◦
For more information, see Creating an associated picklist set.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

456


<!-- page 457 -->
The next screen is the set screen, where the admin can add fields to the set, enforce distinct
values, and create aggregates.
To add a field to the set, search for the name of the field to be added to the set, and then click +.
Any field in the set can have the “Distinct Values” option enabled. When this is true, each index
of the set must have a unique value for the field. This setting only applies to non-empty fields.
When you create an aggregate for a field in the set, options include Average, Count, Maximum,
Minimum, and Sum. For example, a sum aggregate on a number field called Quantity might store
the sum of all Quantity field values in the set. Aggregates function as a field external to the set
and can be used in global rules.
For more information on set aggregates, see Creating set aggregates.
When using sets in a configuration, it’s important to understand the scope of fields in the set and
what can and cannot be accomplished when creating rules. See How sets interact with the rest
of a blueprint.
Related topics
Using sets in layouts
Using sets in layouts
Learn about the various ways sets can be displayed and about their settings.

Display types
Sets can be displayed in several ways:
• As table rows where each index is displayed horizontally:

• As table columns where each index is displayed vertically:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

457


<!-- page 458 -->
• As list rows:

• As a set repeater where each index is tied to a tier:

Set repeaters are distinct in their administration. For more information about set repeaters, see
Creating a Set Repeater .
To manage the different display types, find the set in the Layout Wizard and select the gear icon.
Here the admin has two options for Display Type: Table and List. Table is a basic grid, while List is
a series of tiles.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

458


<!-- page 459 -->
General settings
• Expand Direction: Allows the user to specify how the set is formatted.
◦ Rows: Each index is displayed as a row. As the set size increases, it will expand down the
page.
◦ Columns: Each index is displayed as a column As the set size increases, it will expand
horizontally to the right.
• Maximum Height: The height of the set.
• Show Index (Table Display Type only): Whether the index is displayed in the set.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

459


<!-- page 460 -->
• Index Label Template (Table Display Type Only): display a prefix or suffix string to the index
numbers. Helps provide context of each index.

• Vertical Alignment (List Display Type Only): Control the alignment.
◦ Middle

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

460


<!-- page 461 -->
◦ Top

Message settings
These options allow the admin to control how and where messages are displayed.

• Show message summary: summarizes all message actions and recommendation messages
in one position. Toggling this to true will show the summary. Toggling to false, removes the
summary.
• Message summary position: display the message summary above or below the set. The
following image shows Show Message Summary = true and Message Summary Position = Top.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

461


<!-- page 462 -->
• Show message indicator inside cell (table display type only): places a color-coded triangle in
the cell that caused the message.
• Show message when hovering indicator (table display type only): displays messages when
users hover over the color-coded triangle.

Size settings
The size of the set refers to the number of indexes that will be displayed. This is applicable to
sets with the size type of field, not for associate picklist sets. A size of 1 means that there is 1
index. A size of 10 means that there are 10 indexes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

462


<!-- page 463 -->
• Show size field: shows or hides the size field.

• Show Increment Size Button: control whether the green + icon is visible.

• Size Field Display Type: Pick between a number field or a slider field for user input.

• Placement of Size Field: Control the location of the size field relative to the set itself.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

463


<!-- page 464 -->
• Submit Size Changes on Field Input (Table Display Type Only): When true, the set adjusts
according to any keystroke change in the size input field.
• Display a Confirmation Before Submitting Size Changes (Table Display Type Only): This
property displays the confirmation button when set true. False hides the confirmation button.

Inline control settings
These settings refer to options in the index column menus.

• Show Add Button Before an Index: showAddBefore: show/hide the Add Row Above control.
• Show Add Button After an Index: showAddAfter: show/hide the Add Row Below control.
• Show Dropdown Controls: show or hide the inline size control menu.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

464


<!-- page 465 -->
The dropdown controls setting refers to the caret icon on the index. It is not to be confused
with the green bar for inserting indexes. Add Row Above and Add Row Below refer to the other
controls here.

Selection settings
Selection settings apply only to the list display type. These controls affect how the user interacts
with a set that is displayed as a list.

• Show Selector: toggles selectors on and off.
• Selection Type: choose between Single or Multiple. Single will appear as radio buttons and
Multiple will appear as check boxes.
Example of single selection where Show Selector is true:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

465


<!-- page 466 -->
Example of multiple selection where Show Selector = false:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

466


<!-- page 467 -->
• Boolean field for selection: specify a field in the set that will be marked as true. This is required
for the selection to work. If desired, the value can be displayed in the set itself:

Note: All of the set settings are editable in the value column of the layout CSV file. Admins
are still able to update the JSON there and make changes. If this method is chosen, the
entire list of properties does not need to be included, but be sure to keep the proper data
structure intact.

Search settings
Search settings apply only to the list display type.

Search settings (List display type only)
• Source Field: The global field that, when the user changes, triggers the UI to search based on
the value of the field.
• Target Field: The set subfield that has its value compared to the source fieldʼs value to
determine whether it is a match.

Displaying aggregates
Aggregates are a way to evaluate the data in a set. Set aggregates have five types and can
aggregate on any field type. The types are:
• Average
• Count
• Max
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

467


<!-- page 468 -->
• Min
• Sum
For example, a sum aggregate on a number field will add all the instances of that subfield across
all indexes. The admin can display that aggregate just as with any other field in the layout by
specifying the field in the Layout Wizard.
The variable name for aggregates have the following syntax: set.{set variable name}.
{aggregate variable name}
Related topics
How sets interact with the rest of a blueprint
Creating set aggregates
How sets interact with the rest of a blueprint
The implications of sets when used in blueprints.
Suppose you have a blueprint with the following fields:
• field1
• field2
• setFieldA
• setFieldB
The setFieldA and setFieldB fields are part of a set named sampleSet. The field1 and field2 fields
are not part of a set, but they are in the same blueprint as sampleSet. For our case, assume that
sampleSet has a size of 2. That structure would look something like this:

Because a field can have a different value for each set index, a field in the set cannot influence a
field outside the set (such as field2). However, fields outside the set (such as field1) can influence
fields in the set. See the diagram:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

468


<!-- page 469 -->
Example: Ambiguous conditions
If in sampleSet index 1, setFieldA=Video and in sampleSet index 2, setFieldA=Audio, we cannot
have the following rule:
• Condition: “if setFieldA==Video
• Action: set field2 to mp4
For index1, the condition is true, and the rule fires. For index2, the condition is false, and the rule
does not fire. Because field2 is outside the set, it is not clear whether the rule should fire.
However, you can write rules for fields that affect other fields in the same set. These rules are
independently applied to each index. Fields in indexes cannot influence fields in other indexes.

Example: A valid rule
The following rule is valid:
• Condition: field1 == Mammals
• Action: Include the following field options on setFieldA: [“Lions”, “Tigers”, “Bears”]
The field options Lions, Tigers, and Bears are present for each index in sampleSet.

Example: Independent indexes
Suppose in sampleSet index 1, setFieldA=Video and in sampleSet index 2, setFieldA=Audio, and
the following rule is set:
• Condition: If setFieldA == Video
• Action: setFieldB = true
For index1, the condtion is true, and the rule fires. For index2, the condition is false, and the rule
does not fire. Therefore, setFieldB for index 1 is true, but the rule does not fire for the second
index. Each index is independent of the other indexes.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

469


<!-- page 470 -->
A set that is isolated from the rest of the blueprint is not very useful, but there are ways that the
set can affect the blueprint outside of the set. First, if a Product rule is created using fields in the
set, each Index in the set uses the Product rule to affect the BOM when the conditions are met.
This is beneficial because you can write a single rule that each Index of the set follows differently,
depending on the field values in that index.
If we want to have set fields affect fields outside the set, we have to use the set aggregates.
There are five set aggregates: Sum, Average, Min, Max and Count. Each created aggregate will
have a field variable name (with special formatting). This is because the aggregate fields operate
like any other field outside the set, and they can influence other fields.

Related topics
Creating set aggregates
Creating set aggregates
You can collect the average, count, maximum, minimum, and sum of the data in any field in a set
by using a set aggregate.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

470


<!-- page 471 -->
Set aggregates collect the data for each field in the set and output the result. Options include
average, count, maximum, minimum, and sum. For example, a sum aggregate on a number
field called Quantity will store the sum of all Quantity field values in the set. These aggregates
function as a field outside of the set, can be used in global rules, and can be displayed anywhere
in the layout.
To create an aggregate, open a set, scroll to the subfield that you want to aggregate, and click
Create New Aggregate. You can then choose the aggregate type and give the new aggregate a
name.
You can add the aggregate to the layout just like any other field, and deploy.

Below is the new sum aggregate during runtime:

Note: The Sandwich Sum aggregate represents the sum of the Quantity field. This is not to
be confused with the Sandwich Size of 3, which is the number of rows in the set.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

471


<!-- page 472 -->
Although the five aggregate types seem straightforward, there are important details about how
they function with Boolean fields, picklist fields, and fields that have blank values. The following
sections clarify these particulars.

The Count aggregate
This aggregate can cause the most confusion. Count can be defined as “count the number of
times the field has defined values in the set.” It tallies instances of the following types of values:
• Non-blank
• Non-zero
• Non-false
For both single-select and multi-select picklists, the count aggregate is based on how many
indexes have a value selected. The Count aggregate for the following sample field would be 2,
because indexes 1 and 2 have values. Indexes 3, 4, and 5 donʼt count because they are blank.

Note: For multi-select picklists, it does not matter how many values are selected—it
counts as one.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

472


<!-- page 473 -->
Example: Number field

The count aggregate on this field would be 3 (from index 1, 2, and 3).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

473


<!-- page 474 -->
Example: Boolean field

The count aggregate on this would be 2.

The Average, Minimum, Maximum, and Sum aggregates
An average aggregate runs on all iterations of the number field in the set, including zero values.
This is in contrast to count aggregates, which ignore zero number values.

In this number field, indexes 1, 2, 3, and 4 add up to a quantity of 8. Since Index 3 with the 0 value
is included, 4 is the divisor and the average is 8/4=2.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

474


<!-- page 475 -->
This “including-zero” behavior is true for Sum aggregates, Minimum aggregates, and Maximum
aggregates as well. In the example above, the minimum aggregate value is 0 since that is the
smallest value.
An average aggregate on a Boolean field will usually be in decimal form. It lets the user know
what percentage of the indexes are selected as true. In the following Boolean field, three of the
six indexes' Select Option values are true, and the resulting aggregate is 0.5.

A sum aggregate will show the number of Boolean fields marked as true. In the example
provided, the aggregate is 3.
A maximum aggregate will be 0 unless one of the Boolean fields is selected, in which case it will
be 1.
A minimum aggregate will be 0 unless all of the Boolean fields are selected, in which case it will
be 1.

Aggregates on picklist subfields
Four of the five aggregates (average, minimum, maximum and sum) work only on number values,
not text. So if you add one of these aggregates on a set field that is a picklist, you will get an error
once you deploy and select a text field option.
For example, suppose two fields were created. Both fields had the same field options, but one is
a single-select picklist and one is a multi-select picklist. Here are the field options:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

475


<!-- page 476 -->
The fourth field option uses the word “four” instead of the number 4. As noted above, when
deployed and “four” is selected, an error message occurs:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

476


<!-- page 477 -->
But if we select the numeric based options, the aggregates work.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

477


<!-- page 478 -->
In the following single-select picklist field, there are four indexes. The picklist “Toast Time” has
the option label displayed as text, but behind the scenes, the option value is numeric.

The four values selected are “One Minute” (1), ”Two Minutes” (2), blank, and “Five Minutes” (5).
By applying each of the aggregates to the single-select picklist field, the result is:
• Sum: 8 = 1 + 2 + 0 + 5
• Maximum: 5 (the largest field option value selected)
• Minimum: 1 (The blank index does not apply to the minimum)
• Average: 2.66 = (1 + 2 + 5) / 3 (The blank index does not count toward the total and the divisor)
• Count: 3 (The blank value does not apply to a count aggregate)
Keep in mind that blank picklist values count towards the minimum, maximum, sum, and average
aggregates.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

478


<!-- page 479 -->
In the following picklist field, Toast Time has been converted into a multi-select picklist. The four
indexes have the following option values: [1, 5], [2], [ ], and [2, 5].

By applying each of the aggregates to the field, the results are:
• Sum: 15 = (1 + 5) + 2 + 0 + (2 + 5)
• Maximum: 5 (Still the largest value selected in the picklist. It is not the combined value in the
index. To accomplish that, create a field and a rule in the set to add the multi-select picklist
values together)
• Minimum: 0 (The blank row applies to the minimum)
• Average: 3.75 = [(1 + 5) + 2 + 0 + (2 + 5)] / 4 (The blank row counts towards the total and the
divisor. The divisor is the number of indexes, not the number of picklist field options selected)
• Count: 3 (The blank value does not apply to a count aggregate)
Remember: The average, minimum, maximum and sum aggregates only work for picklist fields
if the field option values are of number type. If the field option values are of text type, users will
experience an error in runtime.
The following field is the field set up for the examples in this topic. Note that the Comparison
Type is Number, and the values are numbers.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

479


<!-- page 480 -->
Related topics
Using sets in layouts
Using set indexes
Watch a video that demonstrates how to use set indexes to drive a product rule.
Sets automatically create a set index field (set.{{setName}}.index). Using this field, the
indexes of Individual rows in a set can be used in rules or in calculations.

Note: Set indexes cannot be used for cross-index rules. For example, a row at index 1
cannot access or use values from a row at index 2.
The following video demonstrates set indexes and how to use them to drive a product rule.
Set indexes in ServiceNow CPQ
Related topics
Hiding the set grid and field grid indexes
Hiding the set grid and field grid indexes
You can hide the index column in a set grid or a field grid.
By default, the index column is displayed in a set grid or a field grid. This index column can be
hidden in two ways: by using the layout wizard or by modifying the layout CSV file.

Hide the index by using the layout wizard
Navigate to the layout in question in the ServiceNow CPQ Admin. Then click the gear icon next
to the set or field grid. Then select the General Settings expandable section. Set the Show Index
toggle to false, save the layout, and deploy. The index will no longer be displayed.

Note: the Show Index setting is available for field grids as well.
Hide the index by modifying the layout CSV file
To hide the column, adjust your layout CSV to include the following instruction in the “Value”, for
an appropriate row: {“indexVisible” : “false”}

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

480


<!-- page 481 -->
The examples below illustrate the CSV files for a field grid and for a set. In both cases, the Index
is hidden on runtime:

Example: Field grid CSV file

Link

to CSV example

Example: Sets CSV file

Link

to CSV example

Related topics
Modifying the Size and Change Size fields for a set
Modifying the Size and Change Size fields for a set
You can change the appearance of the size fields for a set, or hide them altogether.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

481


<!-- page 482 -->
You can hide these fields by making an adjustment in the layout of the blueprint. In the layout
editor, click the gear icon next to the set:

In the size settings, you can choose to show or hide the set size field, as well as the appearance,
location, and behavior of the field:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

482


<!-- page 483 -->
An admin can also hide the size field by modifying the Set type value column in the layout CSV
file. Enter the following:
{ "sizeControl": { "visible": false } }
For more information about how to control the size and behavior of sets, see Using sets in
layouts.
Related topics
Example: Use a custom field to dynamically control set size
Configure sets
Example: Use a custom field to dynamically control set size
This example demonstrates how to hide a standard field and replace it with a custom field.

About this task

This article demonstrates how to hide the Size field (shown below) on a layout and replace it with
a different field. A rule populates the value from the new field into the hidden field.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

483


<!-- page 484 -->
Before you begin

Role required: Admin

Procedure
1. In the layout wizard, turn off the Show Size Field setting.

Although the set size field still exists, it no longer appears in the layout. For more information
about sets and layouts, see Using sets in layouts.
2. Create your replacement number field and add it to the layout.
You can change the display type as desired. In the example below, we created a number field
using a slider.

The final task is to create a rule to take the value from the new field and enter it into the
(hidden) Size field.
3. Create a rule, set your conditions, and create a Determination Action.
In the rule action:
◦ Define your original Set Size field as the field in which the value will be injected.
◦ Select Advanced.
◦ Click Edit Advanced Function and input a single line of code that returns the value of your
new field.
For example, assume that the new field has a value of numberOfHardDrives. As seen in the
image below, our line of code would simply be:
return cfg.numberOfHardDrives;

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

484


<!-- page 485 -->
4. Deploy and test your updated blueprint.
When you modify the values of the field that you created, the size of the Set should be updated
accordingly.
Configure picklist extensions
Learn how to create and configure picklist extensions (Picklist extensions) in ServiceNow CPQ.
Add extended option details, apply filters, and map products and quantities to display enriched
picklist data in layouts for more dynamic and efficient configurations.

Before you begin
1. Create a single-select or multi-select picklist field for your picklist extension (example:
dogBreed).
2. Create a single-select picklist field that you want to use to filter your picklist extension
(example: dogBarking).

Tip: For prerequisite steps 1 and 2, use Matrix Loader to upload the following two CSV
files:
dogBreed Fields CSV
dogBreed FieldOptions CSV
3. Create an SFDC Product2 record, such as “Configured Canine”. Make a note of the ID (the
format is a 15-20 character token, similar to 01t5f0000004GBwAAM) or Product Code,
depending on your environment's ProductIdField setting. Define a standard pricebook price to
the product record.
In steps 1 through 7 of the procedure, we set up the extension data. In the remaining steps, we
map the data.
Role required: Admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

485


<!-- page 486 -->
Procedure
1. In dogBreed picklist administration, click the Picklist Extension tab, and then click Guided
Setup.
2. Click the Additional option info, Filter options, and Product Info tiles, and then click

Next.
3. For each option in the picklist, enter labels for the extended information to show.
Examples: size, shedding, exerciseReq, biddability, drive, activities.
4. Filter Options: choose the fields with which you will filter picklist extension.
Example: Barking/Voice
5. Product Info: check Product ID and Product Quantity.
6. Click

Next.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

486


<!-- page 487 -->
7. Review the format, and then click Download CSV

Template.
8. Complete the CSV file on your local machine.
(If you’re implementing the dogBreed example: leverage the spreadsheet dogBreed picklist
extension data; replace ProductId with token or Product Code from prerequisite step 3; and
export to CSV format.)
9. In the picklist field you are editing, drag the CSV file to Import Extension Data, and then click
Import.
10. Map the ‘value’ column to ‘Option Reference’.
This instructs the picklist extension to display defined values of the picklist in the leftmost
column. The column that is mapped as the option reference must be named 'value'.
11. Map ‘size’ to ‘Extended Info: “size” as API Payload Key’.
The corresponding Available In Layout checkbox should be automatically checked.
12. Perform the same mapping for the ‘shedding’, ‘exerciseReq’, ‘biddability’, ‘drive’, ‘activities’, and
‘dogBarking’ fields.
That is, for the ‘shedding’ imported column, map to ‘Extended Info: “shedding” as API Payload
Key’, and so on.
13. Map ‘size_filter’ to the Size [dogSize] field.
This will filter the picklist according to the user’s selection in dogSize.
14. Map ‘shedding_filter’ to the Shedding [dogShedding] field.
15. Map ‘dogBarking_filter’ to the Barking/Voice [dogBarking] field.
16. Map ‘ProductId’ to the Product ID entry with the shopping cart icon, under ‘Set product info’.
This tells the app to reference the ProductId or Product Code in the picklist extension data to
add the corresponding product to the Shopping Cart.
17. Map ‘ProductQuantity’ to the Product Quantity entry with the shopping cart icon, under ‘Set
product info’.
This tells the app to set the quantity of the line item in the cart with this value from the picklist
extension upload data.
18. Click Save Mapping, and then in the upper right corner, click Save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

487


<!-- page 488 -->
19. Add the picklist extension field to the layout via the ServiceNow CPQ Admin UI or by CSV
upload, and deploy.
For more information, see Displaying a picklist extension on a

layout.
Related topics
Displaying a picklist extension on a layout
Picklists and picklist extensions in rules
Adding a field with an extended picklist to the layout
Add an extended picklist field to a ServiceNow CPQ layout by placing it in a column set and
defining each extension column in the layout CSV. Make sure that the picklist extension is
marked “Available in layout” so its data appears correctly in the user interface.
Adding a field with an extended picklist to the layout is similar to how a field is added to a
layout. First the field has to be added to a Columnset in a Tier. After that, each column of the
extended picklist must be added to the layout with the field added at the end of the path. In the
following example, row 16 adds the field “dogBreed” to the layout. The path in rows 17- 24 all have
“dogBreed” at the end of the path. They also have the value, fieldExtension, in the type column
(column A).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

488


<!-- page 489 -->
It is also important to make sure that any extension that will be added to the layout is selected on
the picklist extension menu by checking the “Available in layout” box.

The setup above images would result in the following layout:

Related topics
Displaying a picklist extension on a layout
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

489


<!-- page 490 -->
Displaying a picklist extension on a layout
Learn how to display a picklist extension (PLE) on a layout using either the ServiceNow CPQ
Admin UI or a CSV upload. Configure foundational picklist fields, map extension columns, and
design layouts that present rich, multi-column picklist data.
In this article, we show a simple picklist extension (PLE) as it appears to an end user and how to
display it in the layout, either by adding it using the admin UI or by uploading a CSV file.

End-user view

In this layout, we have the following structure:
• An ExpandableSection with the label "Select Your Doggo"
• A ColumnSet with the label "Filters"
• Three fields that act as filters for the PLE: Dog Size, Dog Bark/Voice, and Dog Hairiness
• A ColumnSet with no label (optional; administrators choice, but doesn't serve any purpose)
• The PLE framework. Label: "Dog Breeds...choose as many as you need". Displayed as a
MultiSelect picklistGrid to match the multi-select type of the foundational picklist field (Breed
[dogBreed]) that we're extending
• Eight columns in the PLE framework, consisting of (from left to right):
◦ Breed: we're showing the label of the foundational multi-select picklist field, dogBreed
◦ Size [size], referenced from the PLE data structure
◦ Shedding [shedding], referenced from the PLE data structure
◦ Exercise Requirements [exerciseReq], referenced from the PLE data structure
◦ Biddability [biddability], referenced from the PLE data structure
◦ Bark [dogBarking], referenced from the PLE data structure
◦ Drive [drive], referenced from the PLE data structure
◦ Activities [activities], referenced from the PLE data structure

Picklist extension data structure
In the dogBreed multi-select picklist field, extension information is mapped as follows:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

490


<!-- page 491 -->
Observe the extended info columns, marked with yellow circles. Later, in the CSV layout, we
will map these as fieldExtensions to the foundational dogBreed picklist field. (See the picklist
extension CSV layout section.)

Adding a picklist extension to the layout using the ServiceNow CPQ Admin UI
ServiceNow CPQ supports the ability to easily add a picklist extension to the layout using
the ServiceNow CPQ Admin UI. Navigate to the layout from the Blueprint and add the picklist
extension field as you normally would any other field. We’ve added a picklist extension field,
“Motherboard” to our layout.

You will see a “+” at the bottom-right of the newly added picklist extension field. Click it, and from
here you can add columns that you defined on the picklist extension field itself. In the image
below, we’ve added our columns for “value”, “socketType”, and “memoryCapacity”.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

491


<!-- page 492 -->
Picklist extension CSV layout
The following is an image of the CSV layout. Ignore the gray-highlighted rows (1-8), as these have
nothing to do with the picklist extension definition. Focus your attention on rows 9 through 17.

Row 9 (green highlighted): this is the picklist extension framework. In E9, we identify the variable
name of the foundational picklist field [dogBreed]. As dogBreed is a multi-select picklist, we set
the Component display type, F9, to 'MultiSelect picklistGrid', to match. (If our foundational picklist
field was a single-select picklist, we would set the corresponding Component display type to
'SingleSelect picklistGrid'.)
In the rows highlighted yellow (rows 10 through 17), we reference the columns that are defined in
the PLE data structure. Notes:
• The type in A10:A17 is 'fieldExtension', the child type to a field whose Component display type
is [Multi|Single]Select picklistGrid (F9).
• The path in B10:B17, /layout/tiers/doggo1/CS2/dogBreed, references the parent foundational
picklist field, dogBreed (E9).
• Row 10 instructs ServiceNow CPQ to show the labels ('label' in E10) of the foundational picklist
options. This is optional, but highly recommended. The first fieldExtension row (A10), this is the
left most column of the PLE displayed.
• The remaining fieldExtension rows lay out the remaining columns, from left to right, in the PLE
display table.
The setup above would result in the following layout:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

492


<!-- page 493 -->
For your reference, this is the sample CSV layout in spreadsheet format

.

Table-based picklists
A table-based picklist lets an administrator query and retrieve data from managed tables.
Table-based picklists allow administrators to retrieve configuration picklist field options from a
managed table. This feature is particularly useful when:
• The number of options in the picklist is large. The buyside UI representation of the tablebased picklist paginates options, and thus, improves the userʼs experience of page response.
• Several picklists make use of the same options. Picklist-specific query filters facilitate data
reuse.
Managed Tables are not deployed. As a result, a picklist which references table data for its
options will present the end-user with the data available in the table when it is queried, at
runtime.
If the referenced managed table contains duplicate data, the application attempts to present
the best picklist experience to the user at runtime. For example, consider the following three
scenarios.
Scenario 1:
Two identical items
Label

Value

Apple

apple

Banana

banana

Banana

banana

Chayote

chayote

ServiceNow CPQ removes the second instance of Banana [banana], presenting the user with
three picklist options.
Scenario 2:
Two items with the same label but different values
Label

Value

Apple

apple

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

493


<!-- page 494 -->
Two items with the same label but different values (continued)
Label

Value

Banana

banana

Banana

banana2

Chayote

chayote

In this scenario, ServiceNow CPQ retrieves picklist options with four unique values.
Unfortunately, two values, “banana” and “banana2” share the same label, “Banana”. The app
cannot determine which value is best for label, “Banana”. Therefore, the user will be presented
with a total of four options, two labeled “Banana”. Administrators must mind their managed tables
data to avoid this poor end-user experience.
Scenario 3:
Two items with different labels but identical values
Label

Value

Apple

apple

Banana

banana

Banana2

banana

Chayote

chayote

When duplicate values are returned from a managed table, ServiceNow CPQ displays the label
associated with the first occurrence of the value. All other labels associated with that value are
eliminated and are not displayed as picklist options to the end-user.
If the referenced table returns a row with no data contained in the label or value, the application
will ignore the entry, and the record will not be presented to the end-user as a picklist option.

Note: Table-based picklists do not support picklist extensions.
Related topics
Picklists and picklist extensions in rules
Picklists and picklist extensions in rules
Learn how to use picklist extensions (PLEs) effectively in rules. Understand how filtering,
inclusion, and exclusion interact, and apply correct operators like equals and contains for singleand multi-select picklists to ensure accurate rule behavior in advanced configurations.
Picklist extensions (PLEs) are a powerful way for administrators to display as much information
as possible about a product while making it easy for end users to select exactly what they want.
However, simplicity at the front end can mask complexity at the back end. This article shows
administrators how to correctly use PLEs in rules and advanced functions and explains some
important caveats.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

494


<!-- page 495 -->
Note:
• Try using Filter Options & Product Info first.
• Do not use inclusion rules for PLEs. PLE filtering works like inclusion rules, so in order to
remove further options, the user should use exclusion rules.
• Contains and Equals act differently on multi-select picklists. Array.includes() and
== also act differently.
For information about rules, including inclusion and exclusion rules, see Rules.

Simple rules
It's best not to use rules with picklist extensions. PLEs are designed so that you can filter options
and send data to the bill of materials without writing rules. Therefore, most reasons to use
inclusion, exclusion, and product rules are not present in PLEs. Make sure your use case can’t be
completed with typical PLE features before you continue to build your rules.
If you are using selections in a PLE to drive actions, make sure to note the difference between the
Equals and Contains operators.
• Equals checks whether the selection in the PLE exactly matches the condition’s value.
◦ It can be used with both single-select and multi-select picklists, but it is recommended to
be used with single-select PLEs since it is the closest to what users usually imagine the
functionality would be.
◦ If you are using a multi-select in the condition, if the user makes multiple selections, the
condition will not be met if using equals.
• Contains checks whether the selection in the PLE includes the value described. This is the
recommended operator for multi-select PLE fields.
For example: A user creates a multi-select picklist field with four options.

Suppose the condition of a rule (in this case, a determination action) is set to fire if the multiselect field equals multi option 4.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

495


<!-- page 496 -->
If the end user selects only multi option 4, the rule fires:

If the end user selects multi option 3 and multi option 4, the rule does not fire:

On the other hand, if the condition is set to fire if the multi-select field contains option 4, it fires in
both instances.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

496


<!-- page 497 -->
How PLE filters interact with exclusion rules
Picklist extension filters act in the same way that simple inclusion rules work, except that when
the defined filter fields are empty, no options are included instead of all options when a simple
inclusion rule is not firing.
If you want to have a field that is not defined as a filter in the PLE and that limits options in your
PLE field, you need to use a simple exclusion rule in order to further limit those field options,
since using an inclusion rule would combine with the inherent inclusion contained in the PLE
filter and leave all field options available.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

497


<!-- page 498 -->
Note: Due to the nature of mapping the extended information via filter fields, using an
inclusion rule to show more options for a PLE will show only the option value and no further
data. Do not use inclusion rules that act on the options of a PLE.

Advanced rules
When using picklists in advanced rules, it’s important to know how these fields appear when
referenced using the cfg object. For single-select picklists, the field has the text of the
option, but for multi-select picklists, they will be in an array. This difference can often lead to
discrepancies when building advanced functions.
Similar to the differences in simple conditions between Equals and Contains, while single-select
picklists can be referenced in an “if” statement as:
1 if (cfg.field == "option") {
2 //code
3 }
Multi-select picklists should use the function “Array.includes()” to see if one of the options has
been selected:
1 if (cfg.field.includes("option")) {
2 //code
3 }
This function acts on an array and will return true or false depending on whether the array
includes the inputted value.
To determine the selections of a multi-select picklist in an advanced function, use the .push()
function to add the option. Adding an option that is not defined in the picklist’s fields results in an
error.
For other manipulations with the multi-select picklist array in advanced functions, refer to the
Help menu’s Array functions. If there are conflicting inclusion and exclusion actions, exclusion
actions have precedence.

Additional reading
For an overview of the picklist extension feature, see Picklist extensions.
For a deeper understanding of the back end and how to display PLEs, see Displaying a picklist
extension on a layout.
For an overview of the Picklist Extension Pricing enrichment feature, see The Picklist Extension
Pricing enrichment.
Creating an associated picklist set
Learn to use an associated picklist instead of a set field when you create a new set.

Note: Be sure to read about product pickers and their functionality before building
associated picklists, as they may be better suited to your use case. See Product pickers.
The New Set dialog box includes an option for size type. Set Field is the default. If you select
Associated picklist, a new field appears where you can select the picklist field that will be
associated with the set.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

498


<!-- page 499 -->
This associated picklist must be a multi-select picklist field. This field determines the size of the
set based on the number of field options in the picklist. If you edit the field to add or remove
field options, the set size will adjust accordingly. This is the only way to adjust the size of the set
associated with the picklist.
For example, a “Condiments” picklist could let users choose to include specific condiments,
such as ketchup, mustard, or relish. A “Packets” associated picklist set could then let users
specify the quantity of each item using set subfields.
Unlike a regular set where a user can add as many rows as they want, each non-excluded field
option of a picklist generates a row and index of the set. Inclusion and exclusion rules still work
on the associated field, which can dynamically change the number of rows in the associated
picklist set. The following is the sample picklist field we will use in this example. (Note that the
labels and values differ.)

Once we select Condiments as the associated picklist, the normal set UI appears. Associated
picklist sets automatically create three fields in the set:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

499


<!-- page 500 -->
• Index: the row number of the set, starting at 1
• Option Value: the associate picklistʼs field option values
• Select Option: a Boolean field to indicate that the set index is selected

Like all other fields in the set, the option value, the select option, and the set itself need to
be added to the layout. The following image shows the interaction between the Condiments
associated picklist and the packets set:

Note that the option values in the set reflect the associate picklistʼs field option values.
(“Ketchup” is reflected as “K”, the field option value.) Also note that option values are read-only
and cannot be edited.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

500


<!-- page 501 -->
Associated picklist sets can still be acted upon with determination actions, inclusion actions, and
exclusion actions. In the example below, a new field called KetchupBan removes Ketchup as a
value from the Condiments picklist:

Benefits of the associated picklist set
Depending on the configuration, there may be several reasons why an associated picklist set
would be better than a regular set.
• Situations where each option value can only be used once
• Situations where select Option and Option Value fields that are used for index specific actions
and other rules
• Associated picklist sets have a finite size, with as many indexes as the picklist has field options
Note that picklist extension fields can also be used as the associated picklist. Furthermore, the
associated picklist can live elsewhere on the page layout or in the background—it does not need
to be near the set it controls.

Example: A complex rule
The customer has 100 different fees that could be applied to the configuration. To determine the
value of these fees, each fee is calculated using a complex formula. Each fee is only be applied
once. The formula is the same for all fees. The customer does the following in ServiceNow CPQ:
• Creates a multi-select picklist field called Fees with 100 field options (one for each fee)
• Creates an associated picklist set and selects Fees as the associated picklist
• Creates inclusion rules for the Fees field
◦ This would create an inclusion rule for each fee based on the condition of that fee.
◦ This would also create an inclusion rule that included none of the fees as a default. This way,
the Fees are added, as inclusion rules are additive.
• Creates a rule for calculating the fee

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

501


<!-- page 502 -->
This is where the associated picklist set is really beneficial. The customer only has to write 1
rule, and it is applied to each row of the set. If the customer did not use the set, they would
have had to replicate this script multiple times in multiple rules throughout the configuration.
This can lead to errors downstream when the complex calculation changes.

Example: Picklist extension with varying quantities for product rules
Another customer has effectively used the picklist extension to filter field options and provide
columns of extra information. However, they cannot use the picklist extension to add products to
the bill of materials because they want to give the end user the ability to specify the quantities as
each field option is added to the BOM.
They put the picklist extension grid on a single tab tier, and then they put the set, which shows
all the field options selected on the first Tab Tier, on the second tab tier. Using the associated
picklist set, the end user can customize for each customer the quantity added to the BOM.
Product picker bulk actions
Learn how to use bulk actions to automate product picker behavior without writing rules.
Configure option inclusion, field determination, and quantity limits through table-based logic to
control what products appear, how values are set, and when conditions apply—all directly in the
product picker interface.
Bulk actions are a simple yet powerful way to manage product pickers. Bulk actions can function
as table:based rules to control and modify product pickers without needing to write traditional,
global rules. Like global rules, bulk actions consist of conditions and targets. All the bulk actions
together control the behavior of the product picker.

• (1) Bulk actions tab: displays all associated bulk actions of the product picker
• (2) Name, Variable Name: name and variable to set for the bulk action
There are three basic types of bulk actions:
• (3) Option Inclusion: What options are displayed to the user
• (4) Field Determination: What values should be set for product picker child fields
• (5) Quantity Field Properties: Quantity limits of options
For an example use case, view the following video: Product Picker bulk actions2
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

502


<!-- page 503 -->
Bulk actions: Inclusion
Option Inclusion bulk actions can automatically include (and exclude) product options in a
product picker based on the value of global fields. If no action is in place to include options, all
are included by default.

• (1) Bulk Action Name: The name of your Option Inclusion bulk action. Variable Name will be
automatically populated, but you can customize it by clicking the pencil icon.
• (2) Info: What this Option Inclusion bulk action will do
• (3) Select Condition fields: Global fields to use for the comparison. Additional fields can be
selected, but at least one is required
• (4) Select Comparator for this Condition field: The comparison that should be made against
the fieldʼs value. Comparison Options depend on the field type. For example, a Boolean field
type would use either ‘Equalsʼ or ‘Does Not Equalʼ. A picklist field type, such as cards_sender,
offers a large number of comparison options.
• (5) Save: When finished, move to the next step to add the data for the bulk action

The bulk action data drives the outcome of the Option Inclusion.
• (1) Current bulk action: In the list of defined bulk actions, the selected bulk action's data is
displayed in pane to the right
• (2) When these values occur: One column for each field selected as a condition in the prior
step. The corresponding comparator is noted in parenthesis.
• (3) Include these options: product picker Option value to include if the conditions on that row
are met
• (4) Add Row and Save Changes: Add a new blank row to input new data; save changes to the
data
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

503


<!-- page 504 -->
Additional actions:
• Import Data: Import a CSV file
• Export Data: Export the data as a CSV file
• Delete Rows: Delete the selected rows

Bulk actions: Field determination
Field determination bulk actions are an easy way to set and default values into product picker
subfields.

• (1) Bulk Action Name: The name of your Option Inclusion bulk action. Variable Name will be
automatically populated, but you can customize it by clicking the pencil icon.
• (2) Select the target subfields: Review what this action will do, and select the target fields this
action will set
• (3) [Optional] Select the condition fields: The global fields to use for the comparison
•

Select Comparators: For each condition field, select the comparator with which you will
determine the condition. Comparison options will depend on the field type.
Save: When finished, move to the next step to add the data for the bulk action.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

504


<!-- page 505 -->
The bulk action data drives the outcome of the Field Determination.
• (1) Current bulk action: In the list of defined bulk actions, the selected bulk action's data is
displayed in pane to the right
• (2) For this option: the product picker option for which this Field Determination applies
• (3) When these values occur:- one column for each field selected as a condition in the prior
step. The corresponding comparator is noted in parenthesis.
◦ If no condition fields and comparators were selected in the condition setup step, this column
heading will read "Always" and you will not be able to add data to this column.
◦ To change the conditions on this bulk action, click the pencil icon in the column heading.
• (4) Set this value: the value that this rule will apply to the product picker subfield when the
condition is true
• (5) Add Row and Save Changes: Add a new blank row to input new data; save changes to the
data
Additional actions:
• Import Data: Import a CSV file
• Export Data: Export the data as a CSV file
• Delete Rows: Delete the selected rows

Import and export bulk actions and bulk action data

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

505


<!-- page 506 -->
Individual bulk actions can be exported from a product picker as a ZIP file. The export will include
both the rule definition and the data itself as a CSV file. To export a bulk action, select the action,
and then click Export.
The data for a bulk action can also be exported in the data pane. The data can be modified and
imported in the same location. To export the data from the data pane, select the action, and in
the menu, click Import Data. Then, select the CSV file that contains the data.

Forcing data override
By default, bulk actions that set the values of product pickers will not override a value that was
set by the end user. To change this setting so that bulk actions will change user-edited values,
submit a support case to request "set the bulk actions Override User Edited Values behavior to
True." This setting acts across the environment.
To submit a support case, use the ServiceNow Support portal
see Create a case on Now Support for CPQ Customers .

. For step-by-step instructions,

Related topics
Product picker aggregates
Product picker aggregates
Aggregates help calculate and summarize data in products. Learn how to use aggregates in a
product picker.
Product pickers let users select products from a list. Aggregates help calculate and summarize
data (like sums, counts, or averages) from the selected products.

Note: Before you read this article, we recommend that you understand the product picker
field type and how to create a product picker. See Product pickers.
Product picker aggregates allow data collection and calculation for specific fields in a product
picker. This helps analyze data directly from the product picker options.
Suppose you have a product picker containing various measurable products, and you need to
identify which product has the least volume in demand. By applying a "Min" aggregate on the
volume field, the smallest value is automatically determined, streamlining the decision process
without needing a rule.

Available aggregate functions
Aggregate Type

Sum

Behavior

Sum of the base field values for each selected option, if they can be
coerced to a number
Does not multiply by the option quantity

Count

Count of options selected in a product picker

Min

Minimum of the base field values of the selected options, if they can be
coerced to a number

Max

Maximum of the base field values of the selected options, if they can be
coerced to a number

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

506


<!-- page 507 -->
Aggregate Type

Behavior

Average

Average of the base field values of the selected options, if they can be
coerced to a number

Aggregates can be configured through the UI configuration or by using admin APIs.

Configuring aggregates through the UI
To configure an aggregate through the UI, go to any product picker, and then on its definition
page, click Option Fields. Then, in the Aggregate Fields section, click + Add.

When you create a new aggregate, provide the following details:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

507


<!-- page 508 -->
• Base Field: A list of available subfields of the product picker is displayed here. Select the subfield to create a new aggregate.

• Aggregate Type: Select the aggregate type whose behavior fits your use case: Sum, Average,
Min, Max, or Count.

• Aggregate Field Name: After defining the aggregate, its value is stored in a separate field to
facilitate data display. This field is typically located beneath the product picker. The field's
name clearly indicates that it represents an aggregate, ensuring easy interpretation. This is
auto-generated by the system.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

508


<!-- page 509 -->
• Variable Name: This is the variable name of the aggregate field name that is created. The
variable name is usually used to reference the product picker aggregates in scripting. This is
auto-generated by the system.
• Delete: Use this icon only if you want to delete the added aggregate or if you want to remove
any existing aggregates.

Configuring aggregates through the admin APIs
For steps to create and configure an aggregate using API calls, see Adding a product picker
aggregate using APIs.

Viewing a product picker aggregate
Aggregate fields can be added to the layout and will automatically be calculated on the change
of a field. Just as we can search a normal field by its display name or variable name and add it
to the layout, we can do the same with the product picker aggregate. We search the aggregate
field name or variable name of the newly created field, define the position in the layout by adding
it under the product picker field for ease of display, and save the layout. To read more about the
layout editor, see Layout editor.

The product picker field “Simple SM Prod Picker“ has many subfields. On the Subfield
“Quantity“, we have added three aggregates: Max, Sum, and Count.

Products with different quantities
Suppose product A has a quantity of 1, and product B has a quantity of 3.
• Applying Max aggregate on quantity gives the value of aggregate field name “Quantity Max” as
3, as product a has the maximum quantity among the selected products.
• Applying Sum aggregate on quantity gives the value of aggregate field name “Quantity Sum”
as 4, as product a quantity + product b quantity has value 4.
• Applying Count aggregate on quantity gives the value of aggregate field name “Select Count”
as 2, as there are only 2 selected products among the list.
Adding a product picker aggregate using APIs
Follow these steps to add a product picker aggregate using API calls.

Before you begin

Role required: Admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

509


<!-- page 510 -->
Procedure
1. Using Postman or another API tool, set the authorization mode to "Bearer token", and provide
the token of the environment where you want to create the aggregate.
In the product picker aggregates area, two endpoints are available in the admin APIs:

The GET endpoint gets the list of all the aggregates that are already available on a product
picker. The parameter is the variable name of the product picker field that is passed in the URL
in Postman.
The POST endpoint creates a new aggregate on the product picker. The parameters are the
variable name of the product picker field and the request body or payload that gives the
details of the aggregates to create.
Examples of product picker endpoints:

2. Set the following URL as the URL of the Postman API call.
(This is the URL from the image just above.)
https://<tenant>.<sector>.cpq/api/Admin/v1/productPickers/
<productPickerName>/aggregateFields
Replace the URL with the parameters that apply to your environment, including the sector
name and the variable name of the product picker from the UI.
3. Send the call.
This returns a list of aggregates already applied in the UI. You can copy any of the responses
for a particular aggregate entry to set the request body for the post method in the next step
meant to create a new aggregate. If there are no preconfigured aggregates, you can take the
sample request code directly from the API documentation.
4. Change GET to POST, copy the body of the request from the previous steps, and replace the
body with the new aggregate details, including the field variable name and the aggregate type.
You can add only one field per API call.
5. Send the call.
The response includes an aggregate ID that indicates that the aggregate is successfully
created.

Result

In the UI, refresh the page to see the added aggregate.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

510


<!-- page 511 -->
Related topics
Product picker aggregates
Product pickers
Set up layouts
Layouts define the structure and appearance of the configuration interface. They organize
fields into pages, tabs, and sections, shaping how users interact with configurations and view
shopping cart details in ServiceNow CPQ.
A layout record defines the buyside user interface for a configuration experience. It consists of
fields and the organizational structures—pages, tabs, sections, column sets, and headings—that
govern how fields will be represented on the screen. It also describes how the shopping cart
should be displayed, by default.
When a blueprint has more than one layout defined, the user can step through them using the
alternate layout (

) button in the upper-right corner of the buyside UI.

ServiceNow CPQ layouts are defined in spreadsheets and uploaded via matrix loader. Refer to
CSV layout upload for detailed instructions.
Related topics
Layout Wizard
Layout Wizard
Watch a video about how to generate a layout.
Use the Layout Wizard to quickly build a layout for a blueprint with a visual representation of how
configuration experience will display to the end user.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

511


<!-- page 512 -->
Note: The Layout Wizard works only to generate layouts. Edits or additions to an existing
layout must still be made by downloading and editing the layout CSV file and uploading the
updated file.

Prerequisites
Have a blueprint created with desired fields associated to it.

How it works
View a walkthrough of the ServiceNow CPQ Layout Wizard.
Layout Wizard Walkthrough
Related topics
Set up layouts
CSV layout upload
Layout editor
Learn how to use the layout editor to modify a layout without leaving ServiceNow CPQ.
The layout editor enables an admin to edit an layout without leaving ServiceNow CPQ.

1. The layout variable name appears in parenthesis in the header. The layout name and
description can be edited by clicking the pencil icon.
2. Three actions are available: Replace, Export, and Save.
◦ Replace: Launches the file picker to select a CSV file to replace the current layout.
◦ Export: Exports and downloads a CSV file of the current layout
◦ Save: Save changes to the layout. This button will be disabled if no changes have been
made to the layout.
3. The layout editor provides three tabs for editing different aspects of the layout: Arrange Layout,
Edit Field Info, and tier definition.

The Arrange Layout tab
The Arrange Layout tab provides a similar experience to the Layout Wizard. It lets you adjust
various depths but does not allow for a change in the overall tier format.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

512


<!-- page 513 -->
1. Tier labels can be edited inline by clicking the pencil icon that appears on hover.
2. Extended properties of the element can be edited by clicking the gear icon, which will launch a
window to update the values.
3. The field label can be edited by clicking the pencil icon, and extended properties of the field
can be edited by clicking the gear icon. Fields can also be edited in the Edit Field Info tab.
4. Clicking the plus icon in a column set lets you search for fields to add to the column set.
5. Additional column sets can be added to the layout by clicking the plus icon in the tier you want
to add to.
6. Tiers can be added to the layout by clicking the plus icon outside of the existing tiers.

Tip: Several keyboard shortcuts are available to rearrange these visual elements. For
example, tiers and column sets can be moved vertically by pressing Cmd/Ctrl + ↑ or ↓,
and fields can be moved horizontally by pressing Cmd/Ctrl + ← or →. While in the Arrange
Layout tab, you can view the keyboard shortcuts by pressing Shift + ? or by clicking the
keyboard icon at the top of the page.

Keyboard shortcuts
Mac:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

513


<!-- page 514 -->
PC:

Missing fields
If a layout contains fields that are no longer available appear slightly grayed out, with a dashed
border.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

514


<!-- page 515 -->
Partially supported elements
Layout elements that are only partially supported appear with a darker gray background. Some
properties can still be edited by clicking the gear icon.
Field information such as label, display type, and extended properties can be edited in the layout
editor.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

515


<!-- page 516 -->
1. Search and filter fields associated with the layout.
2. The field label can be edited inline by clicking the label to edit.
3. The field display type can be updated from a list of available options for the field type by
clicking the display type value for the field you are updating.
4. Extended properties of the field can be edited by clicking the gear icon and making the edits in
a dialog box.

Edit extended field properties

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

516


<!-- page 517 -->
1. Class Name: Classes can be added to fields and searched for in the search bar. Classes
appear as a pill once added. Classes that control the width and height of the field or align the
field to a grid layout have built-in support.
2. Raw Value: The value can also be edited directly, in the format of key:value pairs. This
corresponds to the value column in the layout.csv file.
3. Cancel and Save

4. Number fields also have three values: Precision, Symbol, and Unit.
◦ Precision: Controls the decimal precision of the number field
◦ Symbol: Displays to the left of the number field
◦ Unit: Displays to the right of the number field

Tier definition
The overall structure of the layout tiers can be updated in the tier definition tab. This is similar to
selecting the initial tier definition when using the Layout Wizard.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

517


<!-- page 518 -->
1. Tier definition preview: Shows a simplified preview of the currently selected tier definition
2. Tier definition menu: Provides a list of available tier definitions to select from
When you have made all the changes to the layout, don’t forget to save it, using the Save button
in the header.

Additional considerations
Layouts that were uploaded by using API calls cannot be edited in the layout editor. A message
will appear that lets you import a CSV file to replace the layout.

Modifications that cannot be made by using the layout editor can be made by exporting,
adjusting, and importing layout CSV files.
The order of rows is not maintained as the layout editor parses the values.
Layout: a deeper dive
Learn advanced layout concepts in ServiceNow CPQ, including tiers, column sets, and product
list layouts. Understand how to structure pages, tabs, and sections in CSV files to create
dynamic, responsive configuration interfaces with organized and intuitive user experiences.

Tiers and tierDef
Tiers define the sections of the page.
Each tier and subtier needs a tierDef that defines the component display type (column
F). Each tier has the following options: Tab, ExpandableSection, Pages, Accordion,
AccordionWithNavigation, and VerticalTab. Each of the examples below shows the same
configuration with different tier structures.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

518


<!-- page 519 -->
• Tabs:

• ExpandableSection (this makes the layout more vertical)
• Pages:

You also can have subtiers inside tiers.
Tab tier with an ExpandableSection subtier:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

519


<!-- page 520 -->
A screenshot of the CSV file used to create this two-tiered layout is shown below. The highlighted
cells show how the different tiers are flagged. Because rows 9 and 10 have the same path as the
top row tierDef in row 8, the cells are displayed in a tab layout.

Do not define label or variablename at the tierDef level (row 8 in the image). They are applied at
the tier level (rows 9 and 10).

Label column
For both fields and tiers, the text entered in the label column is the text that appears on screen
in the layout. The label for the yellow rows appears as the label for each tab. The label column is
also used for fields.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

520


<!-- page 521 -->
variablename
Variables are used to define the path and call specific fields created in ServiceNow CPQ. In row
9 of the following image, the variablename background is defined in column E. In rows 25-29,
background is added to the path (column B). This lets ServiceNow CPQ know that those go in
the background tier.

Variables pertaining to layout must be different than variables defined in ServiceNow CPQ
for fields or rules. This is because variables defined in ServiceNow CPQ are also used in the
layout CSV. The variables names assigned to a field in ServiceNow CPQ UI are used to add
the field to the layout. The following images show the CSV file referencing a field variable
(variablename=desiredIrons) that was created in ServiceNow CPQ resulting in the field
appearing in the layout.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

521


<!-- page 522 -->
Column set types
Column sets help define the vertical positioning of objects in a tier. The layout is responsive to
the width of the browser (which can change), so ServiceNow CPQ uses column sets to help the
Admin identify an intentional row breakpoint.
If the user is using a smaller window where the whole column set does not fit on one row,
columns will continue onto the next row. The end of the column set always triggers a new row.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

522


<!-- page 523 -->
In the following images, the user field is part of 1 column set, while the fields leftHanded
and bag are part of a second column set. If the browser window becomes too small for all three
pictures (picklist options for user), the column set continues on the next row. Even though there
is room for the leftHanded field next to the third image, it is on a new row.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

523


<!-- page 524 -->
Column order
The columnorder column in the CSV file changes the order of the columns in the same
column set. Fields do not have to be added to the CSV in order, as seen in the following image.

Product list layouts
The product list is how the shopping cart feature of configurations are customized. To add items
to the product list, a new product rule is created. When the user selects Simple, the following
fields are available:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

524


<!-- page 525 -->
If the user wants the field to be displayed in the layout, they would add a column to the layout
CSV for the field. (The user would use the values in the ProductList.<param> column of
the linked table as the variable name. See note 1 for the following image.)
The following is a screen shot of the product list section of the layout CSV.

A few things to note:
1. The variables in this column match the values in the productList.<param> column {haussextList and List are missing}. This tells ServiceNow CPQ to add the user inputs to the table.
2. To adjust the alignment of the text in the individual columns add the class slds-textalign_left, slds-text-align_right, or slds-text-align_center. To add
multiple class names, separate them with a space.
3. price, list, and extList always align right so the numbers align nicely.
4. To save space on the screen, select modal for location.

Tier components
Use these tier component property names in the component column of a CSV layout.
Tier components
Component

Property name

Description

Basic container

BasicContainer

Tier container with no
decoration or navigation

Expandable sections

ExpandableSection

Display tiers in expandable
sections with gray bar as
section header

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

525


<!-- page 526 -->
Tier components (continued)
Component

Property name

Description

Value setting for initial state:
defaultState: delay
| collapsed
To lazy-load the tier, use
“delay”, which will open the
section after other sections
have begun rendering
Accordion

Accordion

Accordion with navigation

AccordionWithNavigation
Similar to expandable

Similar to expandable
sections, but only one is
expanded
sections, but only one is
expanded, and next/previous
buttons are included

Tabs

Tab

Display tiers in a horizontal tab
group

Vertical tabs

VerticalTab

Display tiers in a vertical tab
group (tabs are on the left)

Pages

Pages

Display tiers as pages with a
progress nav bar at the top
(tier names are displayed on
hover)

Pages with labels

PagesWithLabels

Display tiers as pages with a
progress nav bar at the top,
including labels that truncate
as needed (no hover display)

The sidebar
Use the sidebar element to display persistent information, such as visualizations, product details,
or alternate shopping carts, across tiers in a configuration. Define its position and content in the
layout CSV file.
In a layout, the sidebar element can be used to show persistent information to the end user
across multiple tiers.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

526


<!-- page 527 -->
Note: This feature is not available in the ServiceNow CPQ layout editor. You must create
the sidebar element in the layout CSV and then import the CSV file.

Setup
When setting up the sidebar, define the sidebar element as a child of the entire layout. The
following table lists the cells to fill in, with an example of the sidebar section of the CSV file.
• Type: sidebar
• Path: /layout/sidebar
• Value: {"location":"right"} or {"location":"left"}
Sidebar element
type

path

sidebar

/layout/
sidebar

tierdef

/layout/
sidebar/tiers

tier

/layout/
sidebar/tiers

label

variablename

component
display type

value

{"location":"right"}
BasicContainer
Tier

tier

The location property determines whether the sidebar appears to the user on the left or right
of the screen. The sidebar appears in this position during configuration and, unlike the shopping
cart, cannot be placed at the bottom of the configurator or moved during configuration.
The child of the sidebar can only be a tierdef object. If you add a tier or a columnset
element as a child, the layout is invalid. After a tierdef is defined in the CSV, you can then add the
necessary tiers, columnsets, and fields as children as in any other tier.
Only one sidebar can exist in a layout. If you add another, both are combined into the same tier
upon deployment.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

527


<!-- page 528 -->
Control the sidebar pin
Add the pinned property to the sidebar value to control whether the pin button appears to
the end user and whether the sidebar is pinned or unpinned by default. Set this property in the
value cell of the sidebar element in the layout CSV file.
Values for the pinned property
Value

Description

{"pinned":"PINNED"}

Hides the pin button and renders the sidebar as pinned.

{"pinned":"UNPINNED"} Hides the pin button and renders the sidebar as unpinned.
{"pinned":"DEFAULT"}

Shows the pin button and renders the sidebar as pinned. The
sidebar also uses this behavior when you omit the pinned
property.

Set the sidebar width
Add width properties to the sidebar value to define how wide the sidebar component appears
to the end user. Specify each width value in pixels (px) or viewport width (vw) units, and set the
properties in the value cell of the sidebar element in the layout CSV file.
Properties for the sidebar width
Property

Description

width

Sets the default width of the sidebar component. For example,
{"width":"400px"}.

minWidth

Sets the minimum width of the sidebar component. For
example, {"minWidth":"300px"}.

maxWidth

Sets the maximum width of the sidebar component. For
example, {"maxWidth":"600px"}.

Use case: 3D visualizer
The sidebar can host 3D visualization tools used during configuration. Any changes to fields
tied to the visualization are visible to end users regardless of the tier they are on. For more
information, see Integrating ServiceNow CPQ with visualization tools.

Use case: product information

The sidebar can display product or quote information — including system or partner fields —
throughout the configuration process.
Example CSV file
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

528


<!-- page 529 -->
Use case: shopping cart

To show a product list other than the shopping cart to the end user, you can host it in the sidebar.
Use this option to list a separate manufacturing BOM type while showing only sales BOM types
in the shopping cart.
Example CSV
Layouts: Field grid setup
A field grid collects multiple fields in a single layout, but unlike a set, it can reference other rows.
A field grid presents numerous fields in a matrixed layout. These are helpful when you need to
request the same set of information a predetermined number of times. Field grids allow users to
create a table of repeated values. In a field grid, rows can reference other rows, while in a set a
user cannot write rules between indexes.
Field grids can expand in columnar or row direction (that is, horizontally or vertically).
Define all fields that are intended to be displayed in the field grid. Matrix Loader is a good tool for
this. Associate the fields with the blueprint in which they will be used.

Field grid layout setup
To add a field grid to the layout, a column set is not needed because the field grid creates the
rows and columns. Instead, the following row types are needed:
• fieldgrid: this type tells the layout that a field grid will be used in the layout
• fieldgriddata: this type is used for each column of the field grid
• field: this type is needed for each cell in the field grid (not each row)
The first three images show the CSV file. The last image shows the corresponding user layout.
The numbers above align with the numbers in the images below. (Because number 3 is shown
several times, a letter is added for clarity.) Individual cells in the field grid cannot have both a
label and an input field. Note that by 3C, both a label and input field are added to the layout CSV
file. However, only the input field goes in the layout.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

529


<!-- page 530 -->
fieldGrid Sample Layout JSON

Field grid UI controls
Various aspects of the field grid UI can be controlled by updating the value field in the layout CSV
file:
• Gridline visibility
• Dynamic column headers
• Field grid field width

Fieldgrid elements
The following values can be added to the value column of fieldgrid elements:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

530


<!-- page 531 -->
• indexPre: String value to be displayed in the index column before the index number.
optional
• indexPost: String value to be displayed in the index column after the index number. optional
• indexVisible: true | false, whether to display the index number and column in the field grid
layout. Optional, default: true
• maximumHeight: Maximum height to set in CSS px. I.e. "180px". optional
• gridlines: all | horizontal | vertical | none, control how grid lines are displayed between
cells. Optional, default is all.

Fieldgriddata elements
The following values can be added to the value column of fieldgriddata elements:
• fieldIndex: name of field to use for header value. Optional. If included, the label for the
fieldgriddata element should be blank.
• width: width of the fields. Optional. If included, examples of valid value are auto, 300 (px
are assumed here), 300px, 20vw, and calc(100% - 100px).
Field grids default to 100% width, but if even one width value is specified for a contained
fieldgriddata component, the field grid’s width will change to auto so that a specified width can
be applied.
Example field grid dynamic headers and grid lines CSV file
Example field grid width CSV file
CSV layout upload
Learn how to create and upload a CSV file that contains a layout specification.
Layouts are defined in a blueprint. When more than one layout is defined for a blueprint, end
users rotate through them using the alternate layout button in the upper-right corner of the
buyside UI.
Layouts are defined via CSV file that contains all instructions for the layout. For ease of
administration, we recommend that admins build their layout in a spreadsheet (Google Sheets,
Microsoft Excel, or similar) and export to CSV format.

Creating and editing a layout
Access a layout from its corresponding blueprint administration page.
1. In the ServiceNow CPQ Admin navigation pane, click Blueprints (2).
2. Click the Layouts tab (3).
3. Click the name of the blueprint you want to access.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

531


<!-- page 532 -->
To start a new layout, click Create Layout. To edit an existing layout, click the name of a layout in
the list.
You can also edit a layout in the Layout Wizard. After you redeploy your blueprint, the new UI
changes appear on the buyside.
When you begin a new layout, the New Layout window opens. You can import a CSV file by
dropping it in the box or click to select it from your computer. (i) You can also download a sample
layout file for your reference. (ii)
Sample layout file

When you edit an existing layout:
Click Export to download the current layout file. (a)
Import a layout CSV file by clicking Replace (b).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

532


<!-- page 533 -->
Click Save (c) to replace the current layout with the edited layout. If CSV file upload fails, all errors
found in the file will be shown to the administrator in an error dialog.

Using layout CSV file upload
For a thorough introduction to the layout CSV format, view the following 26-minute video:
Layout CSV Overview
For an example of how a layout CSV is used, view the following 4-minute video:
HiTech Layout Overview
Download the corresponding HiTech Layout CSV file:
HiTech layout CSV file

Layout CSV format
Column headings are lower case.
The type column defines the layout components. The following table shows valid values for this
column.
Valid values for the type column
Type value

Description

tierDef

Properties: Pages, PagesWithLabels,
PagesWithNavigation, ExpandableSection,
Tab, TabWithNavigation, VerticalTab,
VerticalTabWithNavigation, Accordion,
AccordionWithNavigation

tier
columnset
image
productlist
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

533


<!-- page 534 -->
Valid values for the type column (continued)
Type value

Description

productlistcolumn
field
The path column value format gives a visual cue to the placement of the element override source
label, and is not currently used by the application. Leave it empty.
label defines the label to display to the end-user in the UI for tiers and fields.
variablename defines a unique identifier for a tier or field.
• For tiers, administrator should define distinct values.
• For fields, populate the field variable name.
The component display type column defines how a field should be displayed. The following
types are available.
Component display types
Field type

Text

Component display types

ReadOnlyText
Text
TextArea
Date

Boolean

Boolean
Radio
RadioButtons

Number

Number
Slider
NumberWithSubmit
ReadOnlyText
ReadOnlyCurrency
FormattedNumber

Picklist (single-select)

Extended picklist
Extended picklistDisplayOnly
Picklist

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

534


<!-- page 535 -->
Component display types (continued)
Field type

Component display types

ReadOnly picklist
Radio
RadioButtons
SingleSelect picklistGrid
VerticalRadio
VisualPicker
Picklist (multi-select)

MultiSelectExtended picklist
MultiSelectExtended picklistDisplayOnly
MultiSelect picklist
MultiSelect picklistGrid
MultiSelectVisualPicker
Checkbox
VerticalCheckbox

columnorder is relevant for components in a column set. Used to provide the sort order of the
Fields based on screen resolution in the responsive UI.
classname is used to reference predefined classes available in ServiceNow CPQ. For example,
when placing an image, a class can define the flow of fields around that image. Add these
class names to the layout CSV file in the className column. As max-height and grid controls
interact with the width of the browser, we recommend you experiment with each class distinctly,
exploring how the class responds to a variety of browser sizes.
Effects classes
Effect

Applies to

Supported classes

Notes and examples

Grid

Fields, Images

topleft1col1row,
topleft1col2row ...
topleft1col6row

topleft1col1row { gridcolumn: 1/2; }
topleft1col2row { gridcolumn: 1/2; grid-row:
1/3; }
topleft1col3row { gridcolumn: 1/2; grid-row:
1/4; }
topleft1col4row { gridcolumn: 1/2; grid-row:
1/5; }

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

535


<!-- page 536 -->
Effects classes (continued)
Effect

Applies to

Supported classes

Notes and examples

topleft1col5row { gridcolumn: 1/2; grid-row:
1/6; }
topleft1col6row { gridcolumn: 1/2; grid-row:
1/6; }
topleft2col1row,
topleft2col2row ...
topleft2col6row

topleft2col1row { gridcolumn: 1/3; }
topleft2col2row { gridcolumn: 1/3; grid-row:
1/3; }
topleft2col3row { gridcolumn: 1/3; grid-row:
1/4; }
topleft2col4row { gridcolumn: 1/3; grid-row:
1/5; }
topleft2col5row { gridcolumn: 1/3; grid-row:
1/6; }
topleft2col6row { gridcolumn: 1/3; grid-row:
1/6; }

topleft3col1row,
topleft3col2row ...
topleft3col6row

topleft3col1row { gridcolumn: 1/4; }
topleft3col2row { gridcolumn: 1/4; grid-row:
1/3; }
topleft3col3row { gridcolumn: 1/4; grid-row:
1/4; }
topleft3col4row { gridcolumn: 1/4; grid-row:
1/5; }
topleft3col5row { gridcolumn: 1/4; grid-row:
1/6; }
topleft3col6row { gridcolumn: 1/4; grid-row:
1/6; }

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

536


<!-- page 537 -->
Effects classes (continued)
Effect

Applies to

Supported classes

Notes and examples

topright1col1row,
topright1col2row ...
topright1col6row

topright1col1row { gridcolumn: -2/-1; }
topright1col2row { gridcolumn: -2/-1; grid-row:
1/3; }
topright1col3row { gridcolumn: -2/-1; grid-row:
1/4; }
topright1col4row { gridcolumn: -2/-1; grid-row:
1/5; }
topright1col5row { gridcolumn: -2/-1; grid-row:
1/6; }
topright1col6row { gridcolumn: -2/-1; grid-row:
1/6; }

Height

Fields

mh5, mh10, mh15 ...
mh40

Maximum height from
5 rem to 40 rem, in
increments of 5

Width

Fields

w5, w10, w15 ... w40

Maximum width from
5 rem to 40 rem, in
increments of 5

Grid column
width

Fields

lc-15m-15max,
lc-15m-20max,
lc-15m-25max,
lc-15m-30max

These classes set the
width of the columns in
the layout grid.
• lc: layout column
• 15m: width of 15 rem
• 15max: maximum
width of 15 rem

Display
Picklist Fields
vertically, align
center

vertical-layout, aligncenter

Hide field
label, hide
field option
label

hide-field-label, hidefield-option-label

Display components:
Extended picklist,
MultiSelectExtended
picklist

Default: horizontal
(when layout is vertical,
default is left)

The value column contains a JSON string to represent properties for element (Field or
productlistcolumn) referenced on that row.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

537


<!-- page 538 -->
placeholder allows the Admin to define placeholder text that will display in a text field until
the end-user inputs a value.

Components with images
For picklist display components that include images, when options are disabled, the image is
faded. Admins can override this behavior and force the image to look normal by applying the
override-disabled class to the classname field in the layout.

Note: An earlier means of defining and editing layouts using JSON is available. When
leveraging JSON, the files must be loaded into the application via REST API. Once a layout
has been edited via JSON, CSV manipulation is no longer available. If a layout has been
edited via JSON, the Current Layout button is disabled.
Related topics
Layout Wizard
Layout editor
Configure the Matrix Loader
The art of design: show-stopping layout ideas
Discover how thoughtful layout design can transform complex configurations into clear, intuitive,
and visually engaging user experiences. Learn best-practice patterns, spacing strategies,
and industry-inspired structures to create polished, high-impact layouts for your product
configurations.
Designing visually appealing layouts for your configurations can significantly enhance the overall
experience for users who interact with your data. Implementing consistent formatting, using
white space strategically, and thoughtfully considering other design elements can transform your
layout into a well-structured and engaging resource. As your data continues to play a crucial role
in decision-making, the importance of presenting it in an intuitive and appealing manner cannot
be underestimated.
Here are some real world examples (with their associated CSV files) of the layouts weʼve used
in our most popular demo videos and builds- inspired by our customers. If you havenʼt already,
familiarize yourself with the basics of layout , with the use of the Layout Wizard
and the Layout
editor , and take a deeper look at tiers and tier definitions .

Manufacturing- Industrial Generator Layout
Industrial Generator Demo: Configure Complex Products Based on Customer Needs
Download the Layout CSV file

Technology- High Tech Configuration Layout
High Tech Configuration Demo
Download the Layout CSV file

Headless- B2B e-commerce w/3D Visualization
CPQ for eCommerce
Download the Layout CSV file

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

538


<!-- page 539 -->
Product lists in layouts
Define and customize product lists in ServiceNow CPQ layouts to display data from bills of
materials (BOMs) and product details. Configure list placement, columns, and display settings
in the layout CSV file or the layout editor to present clear, structured product and pricing
information to end users.
In ServiceNow CPQ, layout definition is accomplished via CSV file. Product lists are components
that can show products and related information in the bill of materials (BOM). There are 2
types of columns in the layout to control the product list component: productlist and
productlistcolumns. Multiple product lists can be included in a layout to display products
of different BOM types.

Defining a product list
In the layout CSV file, define your product list row with the following column guidelines:
• Type (column A in the layout CSV file) for the product list is defined as productlist
• Path (column B in the layout CSV file) is not required for the product list. When left blank, this
places the product list in the standard position. To place the product list in a tier, specify the
path relative to the tier. For example, /layout/tiers/myTier/myProductList
A product list has many properties that can be controlled by setting the value field in JSON
format.
Example:
{
"location": "right",
"type": "sales",
"totalLocation": "bottom",
"hierarchyColumn": "displayName",
"displayZeroPriceAs": "On Request",
"displayNullPriceAs": ""
}

Available options
• location indicates where you want the product list component to display in the layout. The
value can be right (default), left, bottom, or modal.
• type determines which products are included in this product list, based on the bomType
field in the product. Values can be sales, manufacturing, or any custom type specified
in the products by the admin. Multiple BOM types can be included. For example, type:
sales, customBOMTypeA, customBOMTypeB, type: all
• totalLocation determines where the cart total is shown. Valid values are bottom, top,
both, and none.
• hierarchyColumn determines which column shows an expand arrow or collapse arrow
when a product has child products.
• displayZeroPriceAs and displayNullPriceAs determine how to display zero and
null prices in the product list. The display value can be any string, such as “On Request”. If
0 (zero) is provided, a zero price is shown with locale and symbol or code (for example, USD
0.00). Blank is the default, and will be the behavior if not specified.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

539


<!-- page 540 -->
Product list columns
Product list columns are children of the product list and define what columns of data are
displayed, with the data coming from the products that are displayed in the BOM. For each
column of product data you want to display, create a product list column.
In the layout CSV file, define your product list column rows with the following column guidelines:
• type (column A in the layout CSV file) for the product list column rows are defined as
productlistcolumn.
• path (column B in the layout CSV file) for product list columns are defined relative to the
product list. For example, /productList/columns.
• variablename (column E in the layout CSV file) determines what data to display based
on the matching field from the product. Extended product list values can be displayed
by putting extended.columnName in the variablename column. For example,
extended.taxExempt displays the value of ProductList.extended.taxExempt.
• classname (column H in the layout CSV file) can be set to allow-wrap to allow content
in that column in the layout to wrap. value (column I in the layout CSV file) defines the visual
styling of the column in the layout.
◦ The value column can specify a width. For example: {"width":"10%"}.
◦ If specifying a width, using a percentage is recommended for a modal or bottom-docked
product list.
◦ The use of fixed units such as px (pixels) is recommended for left-docked or right-docked
product lists, since the width of the product list is fixed. Using ch is not recommended.

Layout editor
The product list and its properties can be edited by using the layout editor in the ServiceNow
CPQ UI. The product list layout element is at the bottom of the page:

You can edit this part of the layout by clicking the gear that appears in the top right of the product
list layout element when you move your mouse into it. The product list has a settings screen that
contains all the properties referenced earlier.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

540


<!-- page 541 -->
For more information, see Displaying multiple product lists in layouts.
Number field properties in layouts
Control how number fields behave and display in ServiceNow CPQ layouts using the step
and precision properties. Define valid input intervals, enforce decimal formatting, and ensure
consistent numeric entry for use cases like quantities and currency values.
When the input parameters of a number field are defined in the layout editor, either the step
property or the precision property can be set.
These properties can conflict and should not be combined.

The step property
The step property restricts entered values to multiples of the step (or zero if undefined). The
step must be a whole positive integer, and the UI will truncate (not round) an entered value if it
contains decimal places beyond that of the step value. A common use case for the step property
is to limit inputs to whole numbers.
If the number entered is not a multiple of the step, the setting is not logged immediately, in case
the user is entering a value slowly. The value will be reverted to its original value when the user
clicks out of the field.
If the number entered is a multiple of the step, an input is logged after a 1-second delay.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

541


<!-- page 542 -->
Using a rule to set a value that is not a multiple of the step is not recommended. If the user clicks
the up or down arrow in the input, the value is changed according to the step value, which may
result in an invalid user-entered value.
The following Field Properties dialog illustrates one use of the step property.

The precision property
The precision property displays the number of decimal places provided, regardless of what is
entered. When defined, the field will round (not truncate) if decimals are entered beyond the set
number of decimal places. (The complete number is saved on the server.) A common use case
for the precision property is to display currency in dollars and cents, such as 19.99 or 10.00.
The precision property defaults to 0 if not set.
The following Field Properties dialog illustrates one use of the precision property.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

542


<!-- page 543 -->
The Display-Type-Specific Constraints Slider

The step property is required for this component. Minimum and maximum values are included,
but precision is not.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

543


<!-- page 544 -->
NumberWithSubmit

The precision property is included and defaults to 0. The step property is not included.
Multi-tier structure (nested tiers)
Create complex, multi-tier layouts in ServiceNow CPQ by nesting tiers in other tiers using a layout
CSV file. Define tier display types—such as tabs, expandable sections, and basic containers—to
organize fields and achieve flexible, structured, and visually clear configuration interfaces.
In ServiceNow CPQ, there are two basic container types: tiers and column sets. This article
focuses on the top-level container (tiers) and how to achieve more complex layouts by nesting
different types of tiers.

Note: As of May 23, 2023, nesting tiers is not supported in the Layout Wizard or in the
layout editor. However, you can change the display type of existing tiers, including nested
tiers.
The basic CSV format for a single-tier structure looks like this:

The tier definition defines the visual display of a level of tier, not just one particular tier. So in
this case, all three tiers (tab1, tab2, and tab3) are defined as the Tab display type. This creates a
simple structure where each tier in the CSV file appears as a tab.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

544


<!-- page 545 -->
However, different types of tier display types may sometimes be nested in another tier. The
simplest example is a two-tier structure. Letʼs build off of our first example and nest some
expandable sections in one of our tabs.

Notice how the nested tier is defined. The tier definition row path is “layout/tiers/tiers”, indicating
that a tier that is below another tier in the path should be defined as an expandable section. You
can then see that on rows 3 and 4, the tier “exsect1” is placed below the tier “tab1” in the path.
This displays for the end-user like so:

You can extrapolate this pattern to create deeper tier structures, declaring more and more
nested definitions. However, note that you cannot have multiple tier definitions at the same
level. For example, the tiers in the first image shown below are valid, but the tiers in the
second image are not valid, because the component display type for /layout/tiers/tiers is both
ExpandableSection and VerticalTab.
Valid tiers:

Invalid tiers:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

545


<!-- page 546 -->
Displaying fields outside the bottom tier
A common use case of nested tiers may be to have a bottom layer nested inside a top layer tier,
with some general fields displayed outside the bottom tier. This can be achieved by using an
intermediary tier of the BasicContainer display type. This structure might look like this for the end
user:

The layout CSV file is structured like so:

Identify endless loops in blueprint rules
Use the Rule Cycle Report to identify endless loops that may be hard to find during ordinary
operation.

Before you begin

Role required: Admin

Procedure
1. In ServiceNow CPQ Admin, click to open Configuration Blueprints, and open a blueprint.
2. Click the three vertical dots next to Deploy, and then click Rule Cycle Report.
3. Click Run Report.
4. Alternatively, from a top-level ServiceNow Quote Experience element page such as Stages,
Associated Fields, or Related Rules, click the three vertical dots in the sub-header, and then
click Rule Cycle Report.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

546


<!-- page 547 -->
Result

The report provides a list of all potential circular references in the blueprint. For each record, the
involved rules and fields are noted. Links help the administrator quickly review rule definitions.
Often, an admin needs to examine related fields. When investigating in this way, a breadcrumb
trail is provided to help the administrator navigate amongst the related components and back to
the Rule Cycle Report.
The most recent Rule Cycle Report remains visible to all administrators until the report is run
again by clicking Rerun Report.

Set up a runtime client
Configure a runtime client. Doing so creates a token that you can use to authenticate runtime
calls. This can be useful when ServiceNow CPQ is embedded within a VisualForce page.
Runtime clients can be set up that provide a token for authentication of runtime calls when
launching ServiceNow CPQ outside of the regular workflow. For example, ServiceNow CPQ may
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

547


<!-- page 548 -->
be started through a quote in Salesforce when embedding ServiceNow CPQ in a Visualforce
page, Lightning web component, or HTML page.

Note: This authentication can be used only by end users launching a ServiceNow CPQ
configuration in runtime. To authenticate admin calls, users should leverage admin API
keys. For a more complete discussion of admin API keys, see Intro to admin API keys.

Create a runtime client

1. Navigate to the Utilities tab of the left hand navigation pane, and click Runtime Clients.
2. Click New in the upper right corner.

Configure the new client

1. Create a name for your runtime client.
2. Setting the User ID will attach it to any calls authenticated by this runtime client. This may be
useful for tracking the origin of the calls.
3. For Permissions, choose either Config or Config and Flightpath. Config will allow for launching
configurations. Flightpath will allow for accessing Flightpath data of the configuration for use
with debugging.
4. Optionally, set an expiration date for the runtime client. This expiration date can be changed to
extend or shorten the time frame during which this token can be used.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

548


<!-- page 549 -->
5. Users must specify the origins of calls that aree made using this token as
authentication. In the origins box, add the desired URL, such as https://
<yourCPQUrlName>.<sector>.ServiceNow CPQ or *.salesforce.com. click Add
Origin to add the origin, and continue adding more.

Note: Make sure that your origin does not have a trailing slash. For example, use
*.salesforce.com and not *.salesforce.com/.
6. When all the origins have been added, click Save.
When the runtime client has been created, click into it and copy the token:

Related topics
Use case: Embed ServiceNow CPQ UI in a Salesforce VisualForce page
Customizing the ServiceNow CPQ UI header
Customize the ServiceNow CPQ UI header to reflect your brand with logos, text, and background
styles. Configure header elements and buttons—such as Cancel, Reset, Return, and Switch
Layout—through the layout CSV file to create a branded, user-friendly configuration experience.

The ServiceNow CPQ header lets you brand the configuration page with a logo. Essential buttons
and actions are also customizable. CSV layout upload supports these features.

Branding options
The header accommodates text, a logo, or both. If using text, the logo must be relatively narrow,
so it fits without overlap.
If you want to remove or replace the blue Salesforce-like background frame, use the
backgroundStyle control.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

549


<!-- page 550 -->
All header elements are defined in a header row component, in the values column. Logically, the
header component is the first informational row in your CSV file, with the header values definition
in cell I2. The following screenshot shows a spreadsheet that is not yet exported to a file.

The header value contains instructions for several header elements, so here's a breakdown of
common content in that cell:
{
"text":"Company/Product Name",
"url":"<image url>",
"backgroundStyle": "url(http://www.some.url/bg.png) transparent
no-repeat top center / cover",
"cancelButton": {
"confirmation": true,
"label": "Cancel",
"visible": true
},
"resetButton": {
"confirmation": true,
"label": "Reset",
"visible": true
},
"returnButton": {
"label": "Quote"
},
"switchLayoutButton": {
"visible": true
}
}
As a general guideline, we recommend that administrators include both text and URL keys in the
header component row. If the Admin does not intend to leverage either text or URL, they should
include the key and an empty value. Examples:
"text": ""
The key: value pair above indicates that no text is displayed, where as the pair below leaves the
image empty.
"url": ""
Customize the background style (the frame surrounding the configuration pane) with the
following:
"backgroundStyle": "url(http://www.some.url/bg.png) transparent
no-repeat top center / cover"
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

550


<!-- page 551 -->
Here, http://www.some.url/bg.png is the location of a publicly available image. The
remaining style instructions are recommended:
Adjust the header definition in your layout spreadsheet. Export to a CSV file and upload to the
appropriate blueprint. Navigation:
ServiceNow CPQ Admin -> Blueprints -> [click appropriate blueprint] -> Layouts tab -> [click
appropriate layout name] - Import Layout.

Button configurations
The ServiceNow CPQ UI offers four buttons: Cancel, Reset, Return, and Switch Layout. Return,
commonly labeled Quote, is required. All others are optional.
In the following table, bracketed properties are the default values.
Button properties
Button

Visible

Confirmation

Default Label

Cancel

[true], false

[true], false

Cancel

Behavior

When configuring
a solution for
the first time,
Cancel takes
the user back
to the Product
Selection page
in Salesforce
(SFDC).
When
reconfiguring,
Cancel returns
the user to the
SFDC Quote
Line Editor (QLE)
without saving
changes.

Reset

true, [false]

[true], false

Reset

Resets all fields
to their initial
states so that
the user can
start over without
moving from the
page.

Return

N/A

N/A

Quote

Pushes the billof-material (BOM)
into SFDC and
returns to the
user to the QLE.

Switch Layout

[true], false

N/A

N/A

If multiple layouts
are defined for
this Blueprint,

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

551


<!-- page 552 -->
Button properties (continued)
Button

Visible

Confirmation

Default Label

Behavior

displays the next
layout.
By default, Cancel, Return/Quote, and Switch Layout buttons display. Cancel and Reset allow the
administrator to set a confirmation parameter. When true, a popup requires end users to confirm
their intentions, as follows.

All header elements are defined in a header row component, in the values column. Here is a
screenshot of the spreadsheet before it is exported in CSV format:

The header value contains instructions for several elements. In the graphic below, the
parameters relevant to each button definition are separated by green dashed lines:

To copy this text to your local clipboard for editing, use the code block in the Branding Options
section above.
Adjust the header definition in your layout spreadsheet. Export to a CSV file and upload to the
appropriate blueprint. Navigation:
ServiceNow CPQ Admin -> Blueprints -> [click appropriate blueprint] -> Layouts tab -> [click
appropriate layout name] -> Import Layout.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

552


<!-- page 553 -->
Currency display
You also use the values column of the header row component of the CSV layout upload file to
configure how currency displays in the Shopping Cart. For more information, see Customizing
the currency display in the shopping cart.
Optimizing rules engine performance
You can help make your pages responsive by following a few guidelines.

In any online shopping or configuration experience, end-user engagement requires a responsive
web page. ServiceNow CPQ achieves excellent performance as a result of its proprietary rules
engine. ServiceNow CPQ also provides the following benefits:
• The end user receives instantaneous feedback after every input change.
• End users do not need to click an Update button for the configurator to evaluate their input.
Administrators do not need to distinguish fields that automatically run from fields that must be
updated through user interaction.
• Because the rules engine evaluates the optimal rule order, rules do not have to manually
ordered by the admin.
Although the ServiceNow CPQ rules engine is engineered to process rules quickly, not all
rules perform the same. Therefore, the administrator plays an essential role in optimizing the
performance of the ServiceNow CPQ UI. Use the following rules of thumb when you build rules:
• Simple rules are best. The ServiceNow CPQ rules engine can quickly run tens of thousands
of rules whose conditions have defined logical expressions and whose actions are defined
without scripting.
Reliance on unscripted rules allows the rules engine to determine the subset of rules that must
be run in specific scenarios. Simple rules allow the rules engine to predictively optimize.
• Avoid scripting, which degrades end-user performance.
Configuration maintenance and extension engage numerous stakeholders, many of whom
prioritize task completion over end-user performance. Experience with thousands of CPQ
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

553


<!-- page 554 -->
implementations shows that administrators often don't script with performance in mind. Even
implementers who script optimally cannot prevent poor decisions by future administrators.
• Table lookups adversely impact end-user performance.
◦ Table lookups feature inherent costs of query, matching against unbounded volumes of
tabular data, and scripted post-processing of the retrieved data.
◦ In contrast, some CPQ vendors simplify administration by leveraging tabular data and
scripts that query and process the tables, ServiceNow CPQ converts these tables to many
simple rules. This conversion short-cuts the queries and post-processing, eliminates
inefficient coding practices, and allows the rules engine to intelligently determine when a
rule should run, and the specific tasks it must accomplish.
Change how messages are displayed to the end user
Control how messages appear in ServiceNow CPQ.
You can show messages to the end user in different formats.
By default, the messages shown for fields on a layout when messaging rules are fired are shown
below the field.

However, you can override this behavior, such as to show an icon which can be hovered over to
display the message ("tooltip").

In the layout editor, add {“messageDisplayType”: “<type>”} to the raw value in the
field properties (the gear icon) of the element where you want to add the custom message
display type.
Accepted type values are above, below, popup, and tooltip.
The following image shows a popup message ({“messageDisplayType”: “popup”}).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

554


<!-- page 555 -->
ProductList.Type options: Accessory and Component
Define quantity behavior in product hierarchies. The Accessory type keeps quantity constant;
The Component type multiplies it by the parent.
ProductList.Type tells ServiceNow CPQ whether to manipulate a product's quantity based on the
parent-child hierarchy in which it falls. When defining product actions, the Type parameter in the
ProductList object can accept two values:
• Accessory: When the value of ProductList.Type is set to Accessory, the quantity value set in
the Product Action will be replicated as is in the ServiceNow CPQ shopping cart. That is, an
Accessory product's quantity stays the same, no matter the quantity of its parent (if it has a
parent). Accessory is the default value.
• Component: Use this value if the quantity of a child should be multiplied by the quantity of its
parent. This is useful for scenarios in which the user selects a quantity for a parent and the
quantity of its child item needs to be set in a specific ratio. For example, if the parent is a car
and its child is a tire, the Product Action that defines the tire would have quantity = 4.
If the child's ProductList.Type is set to Component, the bill of materials will always include the
correct number of tires for the number of cars requested. When car quantity = 1, tire quantity = 4;
when car quantity = 3, tire quantity = 12, and so on. The calculated tire quantity will be displayed
in the ServiceNow CPQ shopping cart and transferred to the Salesforce Quote Line Editor or
ecommerce cart when saved.
This concept replicates Salesforce CPQ bundle pricing.
The following video details ProductList.Type options for manipulating product quantities:
ProductList.Type = Accessory v. Component
Related topics
Using ProductList.extended to populate the Quote Line record
Using ProductList.extended to populate the Quote Line record
You can use the Extended product data object to populate custom fields on the Quote Line
record.
Populate custom fields in the Quote Line record by utilizing the extended product data object
in Advanced Product Actions.
ProductList.extended = { "key": "value" };

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

555


<!-- page 556 -->
The key must match the API name of the fields on both the Product Option and Quote Line
objects. This takes advantage of Salesforce CPQ twinning. For information about twinning in
Salesforce CPQ, see the following Salesforce documentation topic:
Mapping of Custom Salesforce CPQ Fields Between Objects
In the following video, a custom text field with the variable name Color_c is created on both
the Product Option and Quote Line objects. Then the extended product data in the advanced
product action is defined as ProductList.extended = { "Color__c": color };.
Color_c serves as the key, and the previously defined color variable in the script is assigned.
Reverse Twin ProductList.extended Data To QuoteLine
Reverse twinning extended product data also enables admins to populate quote line data
directly to the Quote Line Editor (QLE). The custom Quote Line field must be added to the Line
Editor field set.

Note: Salesforce CPQ does not allow users to edit the following product option fields,
including when passing data back from an external configurator such as ServiceNow CPQ.
• Product Code
• Product Configuration Type
• Product Description
• Product Family
• Product Name
• Product Quantity Scale
• Product Subscription Pricing
• Price Editable
Related topics
Adding custom attributes to the product list
Adding custom attributes to the product list
Use ProductList.extended to add custom attributes such as cost, margin, and discount to a
product list.
Custom attributes can be added to a product list, bill of materials, or Shopping Cart beyond the
standard attributes that are provided by default. Common use cases include attributes for cost,
margin, list price, discount, and so on.

Advanced Script
To add a custom attribute to a product list, use .extended and provide data in JSON format in
an advanced script:
ProductList.extended = {"cost": 62};
To add multiple custom fields, add to the same JSON object, as shown below:
var myMargin = 38;
ProductList.id = "Test Product";
ProductList.price = 100;
ProductList.extended = {"cost": 62, "margin": myMargin,
"customText":"Example 2"};
ProductList.description = "Example 1";
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

556


<!-- page 557 -->
ProductList.bomType = "sales";
ProductList.next();
return ProductList;
Some tips:
• Numbers can be entered directly as the value.
• Text should be surrounded by double quotes.
• Variables can be used for values.
• Math or other value manipulation must occur outside of the JSON. Use a variable to get the
final value into the JSON object.

Writing to Salesforce quote line fields
Admins can also set ProductList.extended information to map to a field on a Salesforce quote
line by referencing the field name in the product action when setting the ProductList.extended
information.
For example, to set the description field, admins would set the ProductList.extended information
to:
ProductList.extended = {“SBQQ__Description__c”: “Text
Description”}

Layout
To add custom ProductList attributes to a layout, use extended.{attributename} in the
value column:

Related topics
Using ProductList.extended to populate the Quote Line record
Displaying multiple product lists in layouts
You can configure multiple product lists for a single layout by creating and importing a layout CSV
file.
In ServiceNow CPQ, a layout can show multiple bills of material (BOMs) at once. This can help
separate different types of products or separate sales items from manufacturing details.

Note: To display in different BOMs, products must have different BOM types. By default,
products whose BOM type is not sales are not created as a quote line when going
through Salesforce CPQ.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

557


<!-- page 558 -->
Use the BOM Types to Include in Save Request admin setting to add additional BOM types to a
Save request. Any BOM types added here are passed in the save request and created as quote
lines when going through Salesforce CPQ.
Use the Push BOM Data to ServiceNow CPQ Salesforce Object admin setting to configure BOM
items to be passed back and written into Salesforce as configuration line items.
To learn how to add additional BOM types to a Save request and to configure BOM items to be
written to Salesforce as configuration line items, see ServiceNow CPQ admin settings.
To add multiple product lists to a layout, use tiers to separate the additional BOMs. Product lists
can be added by editing the layout CSV file and importing it. For information about displaying
multiple BOMs in a layout, view the following video:
Multiple BOM Display

Multiple bills of material: CSV setup

1. The first product list uses the same format as the default product list included in layouts
2. The value for this product list determines that this will display in a modal window and with
type:all will contain all of the BOM items
3. The second product list is the manufacturing BOM, now contained in a tier as indicated in the
type and path fields
4. Variable names are required to construct the path for the layout to render correctly
5. The complete path for columns is in the format /layout/tiers/
<tierVariableName>/<productListVariableName>/columns
6. The value for this product list component does not have a location, as it is in a tier.
"type":"manufacturing" will include all products with the manufacturing bomType. The total field
for this product list is also hidden with "totalLocation": "none"
7. The third product list component is the sales BOM, and repeats most of the manufacturing
BOM product list
See this sample layout CSV

.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

558


<!-- page 559 -->
Multiple bills of material: layout editor

1. Display of the manufacturing BOM product list in the layout editor in a tier
2. Display of the sales BOM product list in the layout editor in a tier
3. Display of the Complete (all) product list in the layout editor as a modal window

Final configuration experience

1. Manufacturing product list, only displaying the manufacturing bomType products
2. Sales BOM product list, only displaying the sales bomType products
3. The complete list in a new window set to show all the products from any bomType
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

559


<!-- page 560 -->
Related topics
Customizing the currency display in the shopping cart
Export the configuration BOM to a CSV file
Export the configuration bill of materials (BOM) to a customizable CSV file before the quote is
finalized.

Before you begin

Role required: Admin

Enhanced shopping cart with CSV export
ServiceNow CPQ lets you export the configuration bill of materials (BOM) before the quote is
finalized by exporting the BOM to a CSV file. The BOM UI has been enhanced to enable onscreen manipulation of fields, such as resizing of columns, pinning of fields, and hiding of fields.

Procedure
1. In your blueprint, navigate to Layouts.
2. In your layout, scroll to Product List and select Product List

Settings.
3. In Settings, scroll to Raw Value and insert the following code block:
"advanced": {
"export": true
}
advanced enables the enhanced shopping cart, and export enables the BOM export.
advanced must be enabled to use export. The final code block should resemble the
following:
{
"location": "bottom",
"type": "sales",
"hierarchyColumn": "displayName",
"advanced": {
"export": true
}
}
4. When the blueprint is enabled, deploy it and launch the configurator experience.
In the UI, you see two new icons on the far right of the product list:

The icon to the left of Export lets you manipulate the columns via the UI, such as hiding and
pinning certain columns. You can also manually resize columns as you would in a spreadsheet.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

560


<!-- page 561 -->
The Export icon lets you export the current BOM to a CSV file. This will export all contents that
are visible in the BOM at the time of export.

Note: The process requires the Quoting tool.
Collapse parent or child BOM lines
You can configure child products to hide under their parent products unless expanded.

Default behavior
When product actions are set with a defined parent/child relationship, by default, child products
are indented as in the following:

Collapsible behavior
This behavior can be overridden by adding {“hierarchyColumn”:
“<productListColumnVariableName>”} to the value column of the productList element
in the layout editor or in the layout CSV file.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

561


<!-- page 562 -->
Result

Admins can change where the collapse arrow appears by defining a different product list column
as the hierarchy column (“hierarchyColumn”). For example, using quantity in the CSV
snippet above results in the following:

Set up pricing display
You can configure how currency values appear, choose to display rollup pricing in the Shopping
Cart, and display a custom message for items that have a zero price or a null price. ServiceNow
CPQ shows only the price of the products in each bill of materials.
Customizing the currency display in the shopping cart
Configure how currency values appear in the ServiceNow CPQ shopping cart. You can choose to
display amounts with the ISO code (USD 25.99), currency symbol, or plain numbers.
Administrators can customize how currencies are displayed in the ServiceNow CPQ shopping
cart.
The ServiceNow CPQ shopping cart displays amounts according to the Currency ISO Code
partner field passed from the Salesforce.com (SFDC) quote. Unless SFDC is customized in this
area, the quoteʼs currency will determine the ISO currency code for ServiceNow CPQ. If no ISO
currency code is provided, ServiceNow CPQ defaults to USD.

Shopping cart currency display options
By default, the shopping cart displays the ISO code to the left of the currency amount.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

562


<!-- page 563 -->
However, the currency symbol can be displayed instead.

Setting the shopping cart currency display with the layout editor
The shopping cart currency display is defined in the layout properties, which can be found in the
layout editor. For more information, see Customizing the ServiceNow CPQ UI header

Three currency display options are available:
• USD 25.99: Displays currencies with their currency code
• $25.99: Displays currencies with their currency symbol
• 25.99: Displays currencies as numbers
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

563


<!-- page 564 -->
Related topics
Show rollup pricing in the shopping cart
How price is displayed on a layout with multiple BOMs
Show rollup pricing in the shopping cart
Configure the shopping cart to display the sum of the child items as the price of the parent item.

Before you begin

Role required: Admin

About this task

When a bill of materials (BOM) is represented with hierarchy, such as a parent-child relationship,
you may prefer to total the prices of the child items and display them on the parent line as a sum.
ServiceNow CPQ rollup pricing totals direct child and parent extended list values. Rollup pricing
delivers the sum of all child line prices to the shopping cart, including the price of the parent, and
displays it at the parent line.
To view a script that illustrates how a hierarchical bill of materials might be generated, see Adv
Product Action with Product List .
The following example shows four child products rolling up to their related parent products.

The next example shows a 2-tier roll-up, with a child product (child1B and child 2B) rolling up to
a parent (parent B) and that parent rolling up to the parent product (parent A) in addition to the
remaining child products (child 1A and child 2A).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

564


<!-- page 565 -->
Procedure
1. In ServiceNow CPQ administration, create a rule by clicking + New.

2. Name the rule, and click Save.
3. Set your condition and create your product actions.
◦ Start with a parent product and set the parent product ID, quantity, price, type, BOM type,
and unique identifier.
For parent products, the type should be set to Component. For child products, the type
should be set to Accessory.
◦ Add the unique identifier to the parent product field of any products that you want rolled up
into the parent product.

4. To display the rolled-up price in your cart, add rollUpPrice to your shopping cart in the
layout editor, or define the productlistcolumn type in your layout CSV with the variable
name rollUpPrice.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

565


<!-- page 566 -->
Related topics
Customizing the currency display in the shopping cart
How price is displayed on a layout with multiple BOMs
Set a custom message for zero-priced and null-priced items
How price is displayed on a layout with multiple BOMs
ServiceNow CPQ shows only the price of the products in each bill of materials.
When multiple bills of material (BOMs) are displayed in a layout, ServiceNow CPQ automatically
filters the total of each BOM to show only the price of the products contained in the BOM, filtered
by BOM type. If a combined product list of all BOM types is displayed, it shows the prices of all
products in the BOM. See the following example.

Related topics
Customizing the currency display in the shopping cart
Set a custom message for zero-priced and null-priced items
Customize how zero-priced and null-priced items appear in ServiceNow CPQ layouts. Replace
$0.00 or missing prices with custom messages—such as “Included,” “Pending,” or “Price TBD”—
across product pickers, picklist extensions, and shopping cart components for clearer user
communication.

Before you begin

Role required: Admin

About this task

Some configurations result in items that have a zero price or a null price. In these scenarios, the
administrator may want to display a message in place of the zero or null price. Using the layout
editor, you can define custom strings for null-priced or zero-priced items in product pickers,
picklist extensions (with dynamic pricing), and the shopping cart.
Administrators frequently replace the $0.00 value with the display string "Included".
When the price is null, the solution may include components that require research or
engineering before a price can be shared with the end user. When this is the case, the
administrator may display strings such as "Pending" or "Price TBD". When a null-priced item
is in the cart, the sum of cart items displayed in the total may be misleading. To alleviate this
confusion, the administrator can define a string that overrides the cart total when null-priced
items are present. For step by step instructions, see Override the shopping cart total when a nullpriced item is included.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

566


<!-- page 567 -->
For a list of components that support null-price and zero-price overrides, see Availability of price
value overrides.

Procedure
1. In the layout editor, click the gear icon associated with the header.
2. In the Layout Properties dialog, toggle the appropriate "Override format" switches, and enter
the strings you would like to show in place of the price.

3. Save the layout properties, save the layout, and deploy.

Note: If you want to apply distinct price display behaviors at the component level, this
can be done in the layout properties of each read-only currency field, picklist extension,
product picker, or product list element. When formatting is set at the element level, it
overrides the format defined at the layout level.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

567


