# Australia Sales Customer Relationship Management — Self-service using Business Portal / Lead-to-cash foundation apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 568–717 of 1645 | Part 4 of 5

Sections: Self-service using Business Portal (p118); Configure (p119); Lead-to-cash foundation apps (p120); Configure, price, quote apps (p199)

---

<!-- page 568 -->
Related topics
Override the shopping cart total when a null-priced item is included
Availability of price value overrides
Override the shopping cart total when a null-priced item is included
To avoid displaying an incorrect total price, show a custom string when a bill of materials includes
an item with a null price.

Before you begin

Role required: Admin

About this task

When a BOM contains null-priced items, the total price may be incorrect. When this is the case,
the administrator can define a string to display in place of the BOM total.

Procedure
1. In the layout editor, open the product list properties.

2. In the properties dialog, set Override display of Total for incomplete pricing to true, and enter
the string to display in the total's place.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

568


<!-- page 569 -->
3. Click Save.
Related topics
Set a custom message for zero-priced and null-priced items
Availability of price value overrides
Availability of price value overrides
See which component types accept price-value overrides for zero-priced and null-priced items.
Component types that accept price value overrides
Component type

Zero-price override

Null-price override

Number field with
ReadOnlyCurrency display
type

Yes

(Cannot be set to null)

Picklist extension - static &
dynamic pricing

Yes

Yes

Product Picker - price fields

Yes

Yes

ProductList.price

Yes

See note

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

569


<!-- page 570 -->
Component types that accept price value overrides (continued)
Component type

ProductList.extended.<currency
field>

Zero-price override

Null-price override

Yes

Yes

Note:
To set a null-price override on a currency field, the administrator can set
ProductList.extended.<numericField> = "" in an advanced product action or by
using the OnBom enrichment. In the layout, define this numeric field to display as currency in
the column properties of the product list, and follow the instructions in Set a custom message for
zero-priced and null-priced items regarding override strings in the product list properties.
Related topics
Set a custom message for zero-priced and null-priced items
Override the shopping cart total when a null-priced item is included
Configure the Matrix Loader
Use the Matrix Loader to efficiently add, edit, and migrate fields, field options, rules, and layouts
in ServiceNow CPQ. Upload CSV files, validate configurations, and streamline bulk updates or
environment migrations with error-handling and verification support.
The Matrix Loader is the most efficient means of adding and editing fields, field options, rules,
and layouts, particularly when the number of elements gets large. When using the Matrix Loader,
administrators define their configuration elements in a spreadsheet file. This spreadsheet artifact
provides a backup of data in ServiceNow CPQ; it also facilitates fast test-to-production migration
processes.
Here is a quick tutorial on how to use the Matrix Loader.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

570


<!-- page 571 -->
1. Click Matrix Loader in the navigation pane.

2. On the page that opens, export sample files in the upload formats that are accepted by the
Matrix Loader: fields, field options, rules, and tables. Each sample file demonstrates a broad
range of the features of the upload format.

3. Drag, or use the file browser to select the CSV files you intend to upload.

We discuss the formats of these CSV files in the following articles:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

571


<!-- page 572 -->
◦ Matrix Loader CSV fields and field options upload and export
◦ Matrix Loader: CSV rules upload
◦ Matrix Loader: CSV table upload
Queued files are displayed. If necessary, add more files or delete files, and then click

Next.
4. The Matrix Loader guesses at the contents of each file according to keywords in the file titles.
Confirm that the Matrix Loader guessed the upload file types correctly. If necessary, make
corrections.
The Matrix Loader performs the uploads in the sequence necessary to ensure all elements are
uploaded correctly. Click Import.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

572


<!-- page 573 -->
5. Confirm that all the uploads succeeded. Most errors originate in a mistake
or mismatch in an upload file. When all uploads have succeeded, click

Continue.
6. In the appropriate administration areas (fields and rules, if you uploaded these files), check
and confirm the elements that were created as a result of this Matrix Loader upload.
Related topics
Matrix Loader
Matrix Loader CSV fields and field options upload and export
Use the Matrix Loader to bulk create, edit, and export fields, field options, and product pickers in
ServiceNow CPQ. Define data in CSV files with supported columns and formats, then upload or
download them for faster configuration management and environment migration.

CSV fields upload
All field types can be added and edited via the Matrix Loader. This section assumes the reader
will work in a spreadsheet file (Google Sheets, Microsoft Excel, or similar), then export the result
to a CSV file for upload to the Matrix Loader. This topic outlines the columns and data that the
Matrix Loader accepts in the field upload.
CSV file columns
Column name

Description

Valid values

Notes

field_type

Defines the data type
of the field

text | textField
Required
boolean |
booleanField number
| numberField picklist |
pickListField

name

The name that the
admin sees on field
list Admin page

Valid strings can
be composed of up
to 255 characters,
including letters,
numbers, spaces,
and the following
special characters:
{}[]()|\~`_^@?
<=>;:/.-,+*ʼ&%
$#”!

Required

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

573


<!-- page 574 -->
CSV file columns (continued)
Column name

Description

Valid values

variableName

Distinct string used to
reference the field

Valid field variable
Required; must be
names consist of up to unique
128 letters, numbers,
and underscores. The
first and last character
must be a letter or
number.

required

Not currently used by
the application

TRUE | FALSE
<empty>

Notes

Optional; not
currently used by the
application

defaultValue

Provide an initial value [See note]
in field when config
experience starts

minLength

Minimum number of
characters accepted

<number>

Optional; relevant to
textField only

maxLength

Maximum number of
characters accepted

<number>

Optional; relevant to
textField only

precision

Define digits of
precision to the right
of the decimal

<number>

Optional; relevant to
numberField only

minValue

Minimum numeric
value accepted

<number>

Optional; relevant to
numberField only

maxValue

Maximum numeric
value accepted

<number>

Optional; relevant to
numberField only

selectType

Define whether
pickListField is single- single multi
select or multi-select
<empty>

Optional; relevant to
pickListField only. If
<empty>, assumes
single

Optional; relevant
to textField,
booleanField,
numberField,
and single
pickListField only.
Multi pickListFields
set defaults in the
fieldOptions upload
file.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

574


<!-- page 575 -->
Note: When a field has defined values, the default value must conform to one of the
defined values. For example:
• Valid Boolean field default values are TRUE and FALSE.
• If a number field has minValue or maxValue defined, the specified default value must
conform to the definition.
• The default value of a single pickListField must match an option value defined for the
field. This option value can be defined in a field option CSV file that is processed by the
Matrix Loader in the same batch as the field CSV file.
• Text field values are limited to 2000 characters.
The order of columns is not fixed. For convenience, admins can rearrange the columns in their
spreadsheet and the resulting CSV file.
The fields upload explainer file shows the variety of fields and field parameters accepted by the
Matrix Loader. Cells with gray backgrounds denote that the cell is not relevant to the context of
the row. To download the explainer file, in the Matrix Loader, click the Fields link in the Sample
Files section.

Note: This fileʼs content is not intended to be uploaded to a environment as is. Instead,
use the format examples to build an upload file that meets the requirements of your current
project, export it to CSV format, and upload it to your environment by using the Matrix
Loader.
Just as fields added via the Admin UI must be associated with one or more blueprints, so must
fields that are added in bulk via the Matrix Loader. For instructions, see Associate a field with a
blueprint.

CSV fields export
For convenience, admins can export a CSV file of fields and field options defined in the
environment via the following steps:
1. In the Admin navigation pane, click Fields.
You see a list of all defined fields.
2. (Optional) Enter a search string and press <enter> to narrow the list of fields.
3. Click Export. A message temporarily appears at the bottom of the page.
4. Click the notification center in the lower left corner.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

575


<!-- page 576 -->
5. Click Download to download the CSV file.

The resulting ZIP file contains the fields CSV file and the field options CSV file.

CSV field options upload
The field options upload defines pickListField options and attribution. This section assumes the
reader will work in a spreadsheet file (Google Sheets, Microsoft Excel, or similar), then download/
export the result to a CSV file for upload to the Matrix Loader. The following outlines the columns
and data the Matrix Loader accepts in the field option upload.
CSV file columns
Column name

Description

Valid values

Notes

variableName

The variable name of
the field for which this
rowʼs option will be
added

<field variableName>

Required

name

Option name visible to Valid strings can
end- user
be composed of up
to 255 characters,
including letters,
numbers, spaces,
and the following
special characters:
{}[]()|\~`_^@?
<=>;:/.-,+*ʼ&%
$#”!

Required

value

Distinct string will use
to reference the field
option

Required

Valid field option
variable names
consist of up to 128
letters, numbers, and
underscores. The first
and last character
must be a letter or

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

576


<!-- page 577 -->
CSV file columns (continued)
Column name

Description

Valid values

Notes

number. Field option
variable names must
be unique in the
scope of the same
field.
defaultValue

Provide an initial value
TRUE FALSE
in field when config
experience starts
<empty>

Optional; relevant to
multi pickListFields
only

extendedDescri ption

Contextual
description for Admin
reference

Valid strings can
be composed of up
to 255 characters,
including letters,
numbers, spaces,
and the following
special characters:
{}[]()|\~`_^@?
<=>;:/.-,+*ʼ&%
$#”!

Optional

imageUrl

Image will show
end-user for this
pickListField option

<URL>

Optional; for use with
pickListField.
Display type
is defined as
VisualPicker or
MultiSelectVisua
lPicker in layout

The fields upload explainer file shows the variety of field options and field option parameters
accepted by the Matrix Loader. Cells with gray backgrounds denote that the cell is not relevant to
the context of the row. To download the explainer file, in the Matrix Loader, click the Fields link in
the Sample Files section.

Note: This fileʼs content is not intended to be uploaded to a environment as is. Instead,
use the format examples to build an upload file that meets the requirements of your current
project, export it to CSV format, and upload it to your environment by using the Matrix
Loader.

Field options CSV export
Field options are exported in the same motion used to export fields from ServiceNow CPQ. For
instructions, see the "CSV fields Export" section above.

CSV upload: product picker
This section outlines the steps to create a product picker named "My product picker", which will
include the following products/options:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

577


<!-- page 578 -->
• Option1/Product1 - Product One
• Option2/Product2 - Product Two
• Option3/Product3 - Product Three
To create a product picker, follow these steps.
1. Extract a sample CSV file for fields from the Matrix Loader.
This CSV file should contain the field information required for creating a product picker. Ensure
that you add an extra line at the top of the sample file specifying the field type as product
picker (this field type may not be present in the sample file).

2. Extract a sample CSV file for field options from the Matrix Loader.
This CSV file should contain the product names that will be displayed in the end-user UI for the
fields created in the previous step.

3. Create a new .yaml file.
This file should include the fields contained in the product picker, as defined in the CSV file
in Step 1. The .yaml file will be used to link the two CSV files during the upload process in the
Matrix Loader. Without it, the product picker will not be created.
Example .yaml Syntax:
--- variableName: myProductPicker
fields:
- variableName: myProductPicker.value
target: ProductId
- variableName: myProductPicker.select
- variableName: myProductPicker.quantity
target: ProductQuantity
4. Upload files to the Matrix Loader: Compress the two .csv files and the .yaml file from the
previous steps into a zipped folder. Then, go to the Matrix Loader, upload the zipped folder,
click Import, and then click Continue.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

578


<!-- page 579 -->
5. Validate in UI: The newly created product picker should be available in the ServiceNow CPQ
Admin fields as shown below.

CSV export: product picker
To export a product picker, click fields in ServiceNow CPQ Admin. Click Product Pickers, select
the product picker to export, and then click Export.
Related topics
Matrix Loader: CSV rules upload
Matrix Loader: CSV table upload
Matrix Loader: CSV rules upload
Use the Matrix Loader to bulk create, edit, and export rules in ServiceNow CPQ. Define rule
conditions, actions, and logic in a CSV file to streamline configuration management and
automate large-scale updates.
The the Matrix Loader enables administrators to efficiently upload and manage all rule types
in ServiceNow CPQ. Instead of manually creating each rule in the Admin interface, you can
define them in a spreadsheet, export the sheet to CSV format, and upload it directly into the
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

579


<!-- page 580 -->
environment. This enables faster configuration setup, easier testing, and simplified migration
between sandbox and production environments.

Rules upload structure
Each row in the CSV file represents a rule record. The following table outlines the columns and
data that the Matrix Loader accepts for rule uploads.
Accepted columns and data for rule uploads
Column Name

Description

Valid Values

Notes

record_type

Identifies
this as a rule
upload

rule

Required

rule_name

Name
displayed on
the rule list
Admin page

Valid strings can be composed of up
Required
to 255 characters, including letters,
numbers, spaces, and the following
special characters: {}[]()|\~`_^@?
<=>;:/.-,+*’&%$#”!

rule_variable_name Unique string
used by
ServiceNow
CPQ to
reference the
rule

Valid field variable names consist
of up to 128 letters, numbers, and
underscores. The first and last
character must be a letter or number.

Required; must
be unique

rule_description

Contextual
description for
administrator
reference

Valid strings can be composed of up
Optional
to 255 characters, including letters,
numbers, spaces, and the following
special characters: {}[]()|\~`_^@?
<=>;:/.-,+*’&%$#”!

rule_status

Determines
if the rule is
active

active, inactive

action_type

Defines the
visibility, message, exclusion, inclusion,
type of action
determination, product
executed when
the rule runs

Required

action_sub_type

Supplementary hide, info, warning, error, hidden,
definition
disabled, set, forceset, manufacturing,
augmenting
sales
action_type

Optional;
depends on
action_type

action_field

Field to which
the action
applies

<field variableName>

Required

action_value

Value applied
to the
action_field

Varies by action type

Required for
message,
exclusion,
inclusion, or
determination
actions

Required;
inactive rules
are ignored by
the engine

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

580


<!-- page 581 -->
Accepted columns and data for rule uploads (continued)
Column Name

Description

Valid Values

Notes

action_product

Product
reference for
bill-of-material
(BOM) actions

SFDC Product Code, Product2 ID, or
External ID

Required for
product actions

action_quantity

Quantity of the <positive float> or <positive integer>
product added
to the BOM

Required for
product actions

action_mandatory

Specifies
whether a
BOM product
is optional or
mandatory

TRUE, FALSE, <empty>

Optional;
defaults to
TRUE

grouping

Defines how
conditions are
grouped and
evaluated

any, all, custom, always

Required

resource /
operator / value

Defines
condition
tuples forming
the rule logic

<field variableName>, operator, value

Resource,
operator, and
value together
define the
condition
expression

Condition groupings
Condition groupings determine how rule conditions are logically combined. Supported options
include:
• any: ORs all conditions defined in the row.
• all: ANDs all conditions defined in the row.
• custom: Allows complex logic expressions, such as (1 OR 2) AND 3.
• always: Applies the rule unconditionally.

Valid operators
The following operators are supported for condition evaluation:
• equals (=, ==, equals)
• not equals (!=)
• less than (<)
• less than or equal
• greater than (>)
• greater than or equal (>=)
• contains / not contains
• in / not in

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

581


<!-- page 582 -->
General guidelines
• Always verify variable names match the field references exactly.
• Keep rule descriptions concise but descriptive to aid troubleshooting.
• Use inactive status for testing new rules before enabling in production.
• Validate grouping logic (any/all/custom) carefully to avoid unintended outcomes.
• Ensure product references (Product2 ID or External ID) align with your Salesforce configuration.

Exporting rules to CSV
Administrators can export all rule definitions from the ServiceNow CPQ environment to CSV
format for review or migration. The resulting ZIP file contains a single CSV file of all exported rule
definitions.
1. In the left Admin navigation pane, click Rules.
2. Optional: enter a search string and press Enter to narrow results.
3. Click Export. A message confirming export appears at the bottom of the page.
4. Open the Notification Center (bottom left) and click the Download link.

Additional information
• Valid strings may include letters, numbers, spaces, and special characters: { } [ ] ( ) |
\ ~ ` _ ^ @ ? < = > ; : / . - , + * ’ & % $ # "
• Rule variable names can contain up to 255 alphanumeric characters and underscores. They
must begin and end with a letter or number.
• Cells with gray backgrounds in sample files denote irrelevant fields for the current context.
• Use the provided sample files (Admin → Matrix Loader → Sample Files → Rules) as a template
for formatting.
Related topics
Configure the Matrix Loader
Matrix Loader: CSV rules upload
Matrix Loader: CSV table upload
Use the Matrix Loader to import and manage table data in ServiceNow CPQ. Define table
schemas, prepare matching CSV files, and upload them to populate or update tables for use in
rules, lookups, and configurations, with no redeployment required for data updates.

Before you begin

Note: All table data can be added to ServiceNow CPQ via the Matrix Loader. This section
assumes that the reader will work in a spreadsheet file (Google Sheets, Microsoft Excel, or
similar), then download or export the result to a CSV file for upload to the Matrix Loader.

In order to upload data to a table, you must first manually define the schema for the table by
creating columns. Columns include a name, data type (either number or text), and a description
(optional).
Limits and boundaries:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

582


<!-- page 583 -->
• Rows in a table: no practical limit
• Columns in a table: no practical limit
• Length of value stored in a text-type column cell: 2000 characters
• Length of value stored in a number-type column cell: extremely high (unlikely to reach in
practice)
• Scripting: lookup returns a maximum of 10,000 rows from a table
Role required: Admin

Procedure
1. In the Admin navigation pane, click Tables.

2. In the upper right, click + New.
3. Name the table.

4. Name the columns, select their table type, and add a description.
5. Click Save.
6. Create a spreadsheet with your data.
Name the columns exactly as named in the table that was created in the previous steps, and
save the data in CSV format. Note that the name of the CSV file must exactly match the name of
the table you created in order for the data to be correctly mapped to the table.
7. In ServiceNow CPQ Admin, click Matrix Loader in the navigation pane.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

583


<!-- page 584 -->
8. Upload the CSV file to the Matrix Loader.

Note that if the name of the table and CSV file contains the word "table," the Matrix Loader will
automatically select the Upload Type as "table." Otherwise, you will need to manually select the
Upload Type.
9. Click Import.
10. To confirm that the import was successful, check the import status.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

584


<!-- page 585 -->
If there are error messages, confirm that the CSV file name and table name are the same, and
that the column names in the table and the CSV file match exactly. Then upload the corrected
CSV.
11. In the Tables section of the Admin navigation pane, click the table, and view the table to
confirm that column data imported properly.

Result

You are now ready to create queries using the new table. Updates to managed tables do not
require a redeployment to take effect. However, updates to rules with lookups to those tables
require a redeployment.
Related topics
Configure the Matrix Loader
Matrix Loader: CSV rules upload
Indexes and natural keys for managed tables
Use indexes and natural keys to improve rule engine performance and speed up table lookups.
ServiceNow CPQ supports the integration of natural keys and indexes for faster table lookups
and heightened rules engine performance.
This enhancement to ServiceNow CPQ's table management system introduces compatibility with
up to three natural keys per table and the addition of two indexed columns.
• A natural key provides a means of unique identification for data in a table.
• Indexed columns quickly locate data without having to search every row in the table every time
the table is accessed.

Note: All columns designated as natural keys undergo automatic indexing, optimizing the
efficiency of query operations. Indexed columns are not required to be unique, and can
work alongside natural keys for multiple data retrieval options.
Lookup functions that reference a column in their SELECT clause can benefit from the addition of
indexing the column, as searches can be performed faster with no changes needed to the script.
These features can be added to a column by editing the table schema. (The schema editor
opens automatically when you create a new table.)

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

585


<!-- page 586 -->
Because all natural keys are also indexed, checking the column does not allow the user to also
check the Indexed column.

When the Natural Key column is checked, a keys icon displays in the table.

Another icon indicates which columns are indexed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

586


<!-- page 587 -->
Since natural keys act as unique identifiers in the table, internal validation makes sure that each
column in the table is unique.
When adding a natural key to a column with duplicate rows, the table does not allow the schema
to save.
When exporting a table, the schema file indicates whether a column is indexed or is a natural key,
so when the user imports the table to another environment, the schema’s column settings are
saved.

Reasons an import might fail
Some factors associated with natural keys and Indexes might hamper table import. These factors
include:
• There are more than three columns set to be natural keys in the schema
• There are more than two columns set to be indexed in the schema
• A column set to be a natural key contains duplicate rows
Related topics
Minimizing table queries
The lookup function: commands and syntax
Granting user access in ServiceNow CPQ
This outline briefly examines how to add or limit users to ServiceNow CPQ.
User management takes different forms, depending upon the implementation scenario.

ServiceNow CPQ is integrated with Salesforce CPQ
To add users, in Salesforce Admin, go to Setup, go to Manage Connected Apps, and then go to
ServiceNow CPQ Connected App.
• In the OAuth Policies section, confirm that Permitted Users input is set to Admin approved
users are pre-authorized.
• In the Profiles section, click Manage Profiles. Select the checkboxes that correspond to the
profiles you want to enable, and save.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

587


<!-- page 588 -->
• To assign specific permission sets access to the ServiceNow CPQ Connected App, click
Manage Permission Sets. Select the check boxes that correspond to the permission sets to
enable, and save.
• New admin users must first access the ServiceNow CPQ Admin. Their admin access can
then be toggled on by another admin user in the User Access section of Utilities. For more
information, see User access
To limit prevent certain profiles from accessing ServiceNow CPQ Admin, in Salesforce Admin,
go to Setup, go to Object Manager, Product, and then Fields & Relationships. Click the View
ServiceNow CPQ Setup (LGK__ViewConfigurationSetup__c) field, and then click Set FieldLevel Security.
• Deselect the check boxes for the profiles you do not wish to enter.
• Admin users can also toggle user access in the ServiceNow CPQ Admin, in the User Access
section of Utilities. Any sales users can have their admin access toggled off by selecting their
name and clicking Toggle Admin Access in the upper right. If users have only END_USER
assigned to their user, they cannot access the ServiceNow CPQ Admin.

ServiceNow CPQ is implemented headless (outside of a SFDC org)
When using a custom UI (such as React) that calls ServiceNow CPQ APIs, ServiceNow CPQ
leverages your third-party IDP, such as Google or Salesforce. To add administration users, log a
support case. Include the name of the IDP and domain your company is using together with the
first names, last names, and email addresses of the new users.

Note: Create a support case by using the ServiceNow Support portal
instructions, see Create a case on Now Support for CPQ Customers

. For step-by-step
.

Additional permissions to check
Assigning non-Admin user permissions for ServiceNow CPQ in Salesforce
What to do if receiving and Insufficient Privileges or blank screen when launching a ServiceNow
CPQ configuration
Related topics
ServiceNow CPQ: User Access Control
Set up External connections for configuration rules
External connections enable enrichments in ServiceNow CPQ to retrieve data from systems
outside ServiceNow CPQ for use in configuration rules, such as fetching third-party pricing or
product attributes during a configuration.
Enrichments are scripts that run outside the rules engine and affect configurations in
ServiceNow CPQ. The following enrichment types are available:
• On configure/reconfigure
• On BOM response
• Validation
• Picklist extension pricing
• On request

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

588


<!-- page 589 -->
External connections can only be called from an enrichment. When an enrichment calls an
external connection, ServiceNow CPQ sends a request to the configured host and path, retrieves
the response, and makes the data available to the enrichment script — for example, to populate
pricing or product attributes in a configuration.

External connections and connections
In ServiceNow CPQ, external connections and connections provide the same capability: they
define the host, authentication credentials, and path used when ServiceNow CPQ calls an
external system. The difference is where each type is used:
• External connections are referenced in configuration rules, called from enrichment scripts that
run during a configuration.
• Connections are referenced in transaction rules, called from integrations that run in
ServiceNow Quote Experience.
Configure an external connection when the third-party call is triggered by a configuration event.
Configure a connection when the call is triggered by a transaction event.

Authentication for external connections
The authentication method required depends on the external system. The following options are
available:
• No authentication — use when the external connection calls an open API that does not require
credentials.
• Bearer token — use when the external system issues a static token for authentication. Supply
the token directly in the connection.
• OAuth client credentials — use when the external system requires an OAuth handshake.
ServiceNow CPQ exchanges a client ID and secret with the authorization server to obtain an
access token before each request.

Path parameter variables
External connections support dynamic path segments using parameter variables. A parameter
variable is a placeholder in the path that your enrichment script replaces with a runtime value.
For example, a path defined as /v4/latest/{{inputVariable}} accepts a value for
inputVariable from the calling enrichment script.
When a path uses a parameter variable, wrap the value in encodeURIComponent() in your
enrichment script to ensure the value is safe to include in a URL.
Related topics
Create an external connection
Create an external connection
Create an external connection in ServiceNow CPQ to enable enrichments to retrieve data from
an external system for use in configuration rules.

Before you begin

Role required: admin

About this task

External connections are used in configuration rules only. They can only be called from an
enrichment script. After you configure an external connection, reference it in your enrichment
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

589


<!-- page 590 -->
script using External.connectionName(inputs), where connectionName is the
unique name of the connection.

Note: To call an external system from a transaction rule instead, add a connection. For
more information, see Create a connection for ServiceNow Quote Experience calls.

Procedure
1. Navigate to All > CPQ Administration > Utilities > External Connections.
2. Select +New to create a new external connection.
3. In the Authentication type field, select the credential method that the external system
requires, then complete the fields for that authentication type.
Authentication type

Action

No authentication

No additional fields are required. The external
connection calls the API without credentials.

Bearer token

In the Authentication token field, enter the
bearer token provided by the external ser­
vice.
Complete the following fields:
◦ Client ID: Client identifier created for Servi­
ceNow CPQ with the authorization server.

OAuth - Client credentials flow

◦ Client secret: Tokenized reference to the
client secret. The actual value is stored in
the GCP secret store. In development envi­
ronments, the value is stored directly.
◦ Token URL: URL of the authorization serv­
er where ServiceNow CPQ exchanges the
client ID and secret for an access token.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

590


<!-- page 591 -->
Authentication type

Action

◦ Scope: Scopes to include in the token re­
quest. This field is available only when
OAuth - Client credentials flow is selected
in the Authentication type field.
4. In the Path field, enter the path to append to the host URL, including any parameter variables
for dynamic segments.
Use double curly braces to define a parameter variable in the path. For example:
/v4/latest/{{inputVariable}}
In your enrichment script, pass the variable as a key-value pair in the inputs object and wrap
the value in encodeURIComponent() to ensure the value is URL-safe:
let inputs = {"inputVariable":
encodeURIComponent(cfgRequest.baseCurrency.value)};
let results = External.exchangeRatesAPI(inputs);
5. In the Timeout field, enter the maximum time in milliseconds that ServiceNow CPQ waits for a
response from the external system.
Start with 500 milliseconds. If the external connection regularly exceeds this limit, increase the
value, keeping in mind that higher timeouts may slow the end-user configuration experience.
6. Select Save.

Result

The external connection is saved and available to call from enrichment scripts.

Example: BOM enrichment using an external pricing connection
The following on-BOM-response enrichment calls a powerPricing external connection to
retrieve customer-specific rate data and apply it to ProductList records. The connection
accepts two input variables — membershipCode and icp — and returns a pricing response
that the script uses to set prices on individual products.
var powerInputs = {"membershipCode": cfg.eCMembershipCode,
"icp": cfg.eCICPNumber};
let powerResponse = External.powerPricing(powerInputs);
let dailyCharge = 0;
let ratesArr = [];
if (powerResponse.status == 200) {
for (var record of powerResponse.body) {
if (record.chargeType == cfg.expectedUsage) {
dailyCharge = record.dailyCharges;
ratesArr = record.rates;
}
}
for (var prod of ProductList) {
if (prod.id == "electricBillEstimator") {
let addedPrice = dailyCharge * cfg.serviceDurationInDays;
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

591


<!-- page 592 -->
prod.price = addedPrice;
}
if (prod.id == "Standard Rate" || prod.id == "Low Rate") {
prod.price = dailyCharge;
}
}
for (var rateVal of ratesArr) {
ProductList.id = "Additional Charge Per KWH: " +
rateVal.name;
ProductList.quantity = 1;
ProductList.bomType = "Manufacturing";
ProductList.orderNumber = 2;
ProductList.price = rateVal.rate;
ProductList.notes = rateVal.measure;
ProductList.parentProduct = "electricBillEstimator";
ProductList.next();
}
}
return ProductList;
Related topics
Set up External connections for configuration rules
The test frame
Use a test frame to quickly validate the behavior of a configurator without creating a web page
or running the full quoting flow. This lightweight test page lets you load a product and pass key
parameters to preview the configuration in an iframe, either from on-page inputs or directly from
URL parameters.
The test frame streamlines testing by providing a lightweight interface to preview configuration
behavior before deploying changes.

Accessing the test frame
To access the test frame page in ServiceNow CPQ, navigate to the appropriate URL, replacing
{tenant} and {sector} with values for your instance:
https://{tenant}.{sector}.ServiceNow
CPQ/ui/configure/testFrame.html
Typically, the value of {sector} is test for sandbox or prod for production.

Note: If the test frame page displays ServiceNow CPQ administration, clear your browser
cache.

Using the test frame
The testFrame HTML provides easy inputs to a variety of parameters that can be sent to the
ServiceNow CPQ configurator.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

592


<!-- page 593 -->
1. Product ID: Product ID of the configurable product to load
2. Pricebook ID: Salesforce Pricebook ID
3. Reconfigure ID: ServiceNow CPQ UUID of existing configuration to load for reconfiguration
4. Quote Line ID: Salesforce Quote Line ID
5. Layout: Name of the Layout to load from the Blueprint of the Configurable Product
6. Runtime Token: Runtime Token from ServiceNow CPQ Admin Setup
7. Runtime Client API: Needs to be encoded and URL-safe. Highly recommended if using the
Runtime Token parameter
8. Config Editability: Control the ability to save a configuration
◦ Active: Displays the Quote button on the configuration page
◦ Available: Displays the Save button on the configuration page
◦ None: No Save or Quote button is displayed. End user cannot save configuration
9. Flightpath: Determines whether the execution of ServiceNow CPQ Rules is logged
◦ Active: Displays Flightpath controls and automatically starts recording
◦ Available: Displays Flightpath controls and does not start recording
◦ None: No Flightpath controls are displayed
10. Use URL Parameters: if checked, use parameters from the URL instead of values in inputs.
11. Update Configuration: On click, this will send the parameters to the ServiceNow CPQ
Configuration iframe and update.
◦ If using the HTML inputs, parameters are passed via easyXDM
◦ If Use URL Parameters is checked, the src of the iframe will be set using the URL parameters

Example: test frame page

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

593


<!-- page 594 -->
• URL to access the test frame page
• Parameter inputs
• Configuration iframe
For more information, see Use case: Embed ServiceNow CPQ UI in an HTML page.
Hyperjump
Hyperjump shows you a configuration as a graphic diagram.
In a configurable product, you can access Hyperjump, which gives you a graphical view of the
configuration.

The Hyperjump view enables you to expand individual rules.

It also lets you see field-related rules.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

594


<!-- page 595 -->
This view gives you a look at the picklist options along with the conditions and actions that the
field is part of.
The following video demonstrates the Hyperjump feature for managing configuration data:
Hyperjump Demo: Visually Manage Configuration Data
The Admin Logs utility
Learn how the Admin Logs utility helps you diagnose, monitor, and resolve configuration issues
efficiently in your ServiceNow CPQ environment.
The Admin Logs utility provides administrators with centralized visibility into system activities,
configuration errors, and integration issues. It enables quick diagnosis and resolution of
problems by capturing key runtime details, error messages, and contextual data about the
environment. Designed with usability and precision in mind, Admin Logs helps administrators
identify issues, understand their cause, and act swiftly to maintain system stability.
Whether accessed through the Admin UI or via API, Admin Logs helps provide insights admins
can use to optimize configurations and keep users productive.

Key benefits
Key benefits of Admin Logs
Benefit

Description

Centralized visibility

Monitor configuration, runtime, and integration
errors in one location.

Real-time monitoring

Quickly refresh and filter logs to focus on the
most recent or relevant time frames.

Faster troubleshooting

Review detailed error codes, contextual
messages, and user IDs for precise
diagnostics.

API accessibility

Retrieve log data programmatically for
automation or custom dashboards.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

595


<!-- page 596 -->
Key benefits of Admin Logs (continued)
Benefit

Description

Continuous improvement

Access enhanced error reporting and
contextual details to help streamline ongoing
maintenance and user support.

Accessing Admin Logs
Administrators can access Admin Logs from the ServiceNow CPQ Admin interface or via API,
depending on their preferred workflow and use case.
To access logs, navigate to Utilities menu, select Logs. It shows the real-time logging capabilities
and enable filtering, refreshing, and viewing detailed error information.

Refreshing and filtering
The Logs interface supports real-time filtering and refresh options. Choose a time range that best
suits your analysis needs:
• Past 15 minutes
• Past hour
• Past 24 hours
• All logs

Note: Use the refresh button to update the view with the latest events without leaving the
Logs page.

Log details format
Each log entry is displayed in a structured format, making it easy to scan and understand issues.
This structure enables administrators to efficiently filter, correlate, and resolve errors across
different sessions and components. The log data includes the following columns:
• Date and time: User-friendly date display and exact time in milliseconds (added February
2025).
• Error message: A descriptive summary of the issue encountered.
• Error code: ServiceNow CPQ unique identifier for quick cross-referencing and support
requests.
• User ID: The user who encountered the error (added February 2025).

Accessing logs via API
Administrators who prefer to query logs programmatically can access the Admin Logs API using
a GET request. This is especially useful for environments with large data sets or for integrating
logs into external monitoring systems. This flexibility allows admins to retrieve specific log
intervals for audit or performance review without loading all historical records.
Example cURL command:
curl --location '<URL>/api/logs/v1/logs' \
--header 'Content-Type: application/json' \
--header 'Origin: localhost' \
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

596


<!-- page 597 -->
--header 'Authorization: <Admin API Key>'
You can refine results by specifying before and after parameters in ISO 8601 date/time
format:
curl --location
'<URL>/api/logs/v1/logs?after=YYYY-MMDDThh%3Amm%3AssZ&before=YYYY-MM-DDThh%3Amm%3AssZ' \
--header 'Content-Type: application/json' \
--header 'Origin: localhost' \
--header 'Authorization: <Admin API Key>'

Continuous improvements
Admin Logs continually evolves to provide deeper insights and improve usability. Enhancements
introduced in February 2025 include:
• Enhanced error messages: Save errors now include related configuration errors for faster issue
identification.
• Contextual information: For enrichment script errors, logs now capture the specific enrichment
area, affected blueprint, and revision ID for precise debugging.
• Detailed external connection errors: “Method not supported” HTTP errors now include the
path and method used in the external call.
• Performance metrics: Metrics for external integrations are now tracked and available upon
request through ServiceNow CPQ support.

General guidelines
• Use short time filters when troubleshooting real-time configuration issues.
• Export relevant log data regularly for long-term tracking or compliance review.
• Leverage the API to automate log retrieval or integrate with your organization’s monitoring
tools.
• Report unclear error codes or missing context to ServiceNow CPQ support for analysis and
improvement.
Flightpath
Flightpath keeps a record of rule engine activity and field changes in real time, helping
administrators analyze system behavior and troubleshoot complex configuration flows with
pause and restart options.
Flightpath helps administrators understand how the rules engine responds to end-user inputs.
When recording, Flightpath keeps track of:
• Rules engine responses (rules run and fields changed) to end-user input
• Computation time for each rules engine run
To help troubleshoot long user flows, the administrator can pause Flightpath and reinitiate
recording any number of times.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

597


<!-- page 598 -->
Demonstration
The following video demonstrates the Flightpath feature tracking rules engine responses.
Flightpath

Prerequisites
• Salesforce-integrated use cases:
ServiceNow CPQ environment Explorer 07.22 or later.
Salesforce ServiceNow CPQ.io Managed Package version 1.2 or greater. Navigation in
Salesforce: Admin Setup > Apps > Packaging > Installed Packages > ServiceNow CPQ
Managed Package
The Salesforce administrator must add the LGK FlightPath_c field to the Quote Line
Editor field set (Salesforce: Admin Setup > Object Manager > Quote > Field Sets > Line Editor).
Place the Flightpath field in the field set. Limit its visibility to the appropriate administrator
roles.
• Headless/eCommerce use cases:
Your ServiceNow CPQ environment must be Explorer 07.22 or later.
Append the following text to your configure API call to ServiceNow CPQ: ?logExecution=
<value>. Example: https://<siteURL>.<sector>.ServiceNow CPQ.io/c?
logExecution=<value>
Valid values for <value> are:
◦ true: ServiceNow CPQ configuration returns Flightpath controls. Should be shown only to
administrative users.
◦ false: ServiceNow CPQ returns no Flightpath controls. Suitable for non-administrative users
such as partners, customers, and direct sales.
• End-user UI:
Append the following to your configure URL: &log=<value>
Examples:
◦ Configurator:
https://<siteURL>.<sector>.ServiceNow
CPQ/ui/configure/<product id>?v=1&<other
parameters>&log=<value>
◦ Transaction management:
https://<siteURL>.<sector>.ServiceNow
CPQ.io/ui/transact/<transaction id>?v=1&log=active
For transaction management, valid values include:
▪ none
▪ available
▪ active
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

598


<!-- page 599 -->
Setting up enrichments and rules scripting
Learn how to set up enrichments and write rules scripts to control product behavior, automate
calculations, and enhance configuration logic in your application.
The On Request enrichment
Information about an enrichment you shouldn't use.

Important: The On Request enrichment is almost never a recommended pattern. This
enrichment type can make configuration performance dependent on outside systems and
result in a less than ideal end user experience. Consult Customer Success about other
ways to achieve your desired outcome.
The On Request enrichment enables the same capabilities as the On Configure/Reconfigure
Enrichment, except that it is called after each field change to any field in the enrichment.
In this enrichment, all external API calls time out after five seconds.
General guidelines:
• Wrap external APIs in validation logic to ensure that they are only called when absolutely
necessary.
• Always validate all data required to run an API before you directly call the API.
• Use ogic to limit running external APIs.
• Make sure that any API called in an on request enrichment is able to fully run and respond
quickly.
// Here we use a boolean field to delay the running of
additional code
if (cfgRequest.runOnRequest == true) {
cfgRequest.onRequestTextField.value = "On Request Ran";
}p
cfgRequest.runOnRequest = false;
• Avoid non-performant or long-running APIs.
The On BOM Response enrichment
You can use this enrichment to work with ProductList items whenever there is an update to the
bill of materials.
The On BOM Response enrichment is enabled by default in environments and can be used to
manipulate items in the ProductList whenever there is an update to the bill of materials (BOM).

Note: The ServiceNow CPQ environment must include rules with product actions, or there
will be nothing for the enrichment to loop through.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

599


<!-- page 600 -->
In the following sample, the On BOM Response enrichment loops through products and
changes the price of a product.
//Loop over products and change price of a product
let dealProduct = cfg.blueMoonSelected;
if (dealProduct == true) {
for(var prod of ProductList) {
let price = prod.price * .8;
prod.price = price;
}
}
On BOM Response enrichments may request external REST services via GET or POST.
In the following sample script, the On BOM Response enrichment uses an external connection
to query a powerPricing API with customer data. With the customer-specific rate data retrieved
from the service, the enrichment adjusts the pricing of existing ProductList records.
var powerInputs = {"membershipCode":cfg.eCMembershipCode,
"icp":cfg.eCICPNumber};
let powerResponse = External.powerPricing(powerInputs);
let dailyCharge = 0; let ratesArr = [];
if(powerResponse.status == 200) {
for(var record of powerResponse.body) {
if(record.chargeType == cfg.expectedUsage) {
dailyCharge = record.dailyCharges;
ratesArr = record.rates;
}
}
for(var prod of ProductList) {
if(prod.id=="electricBillEstimator") {
let addedPrice = dailyCharge * cfg.serviceDurationInDays;
prod.price = addedPrice;
}
if(prod.id=="Standard Rate" || prod.id=="Low Rate") {
prod.price = dailyCharge;
}
}
for(var rateVal of ratesArr) {
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

600


<!-- page 601 -->
ProductList.id = "Additional Charge Per KWH: " + rateVal.name;
ProductList.quantity = 1;
ProductList.bomType = "Manufacturing";
ProductList.orderNumber = 2;
ProductList.price = rateVal.rate;
ProductList.notes = rateVal.measure;
ProductList.parentProduct = "electricBillEstimator";
ProductList.next();
}
}
return ProductList;

The difference between the rules engine BOM and the enriched BOM
There are two versions of the BOM during runtime: the rules engine BOM, which is based on the
results of product rules during runtime, and the enriched BOM, which is the result of the BOM
enrichment.
The BOM enrichment's ProductList object (referenced in the script) is the result of the rules
engine BOM, not the enriched BOM. This is to make sure there are no infinite loops. Suppose
that the script were to reference its own ProductList that it returns, and the script were set up to
increase the price of certain objects by a percentage on BOM update. In this case, the next time
the contents of the BOM were updated, the price increase would happen again and again.
To prevent this situation, the enriched BOM is not referenced by any rule or enrichment other
than the validation enrichment's ProductList. While this makes sure that the BOM enrichment
can function outside the rules engine, it also means that if a condition is met in the BOM
enrichment, those conditions can be met again the next time the BOM is updated, because
any change to the BOM in the BOM enrichment script that stops that condition will not be
referenced.
With external connections, this is not a problem as long as the response is consistent. However,
if the response changes when fired multiple times, such as when generating a string or saving a
certain time, it will update each time the BOM is updated.
The BOM Response enrichment might be used to:
• dynamically change the price of products in the BOM. This can be either a static or dynamic
change rate, such as a shipping fee being static and taxes being dynamic.
• change attributes of products in the BOM that are reliant on some condition in the BOM, such
as the quantity of free stickers given out once $100+ of tax has been quoted.
• remove a line item from the BOM.
Passing array variables using Salesforce external connection
You must use single quote strings when making a SOQL query to Salesforce.
Salesforce supports only single quote strings in a SOQL query. Therefore, the following inputs
would not be recognized by Salesforce.
let inputs = { "productsArray": '("Tablet10", "Laptop13",
"Laptop15")' }
Instead, use single quotes as in the following snippet.
let inputs = { "productsArray": "('Tablet10', 'Laptop13',
'Laptop15')" }
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

601


<!-- page 602 -->
The following sample script pulls Salesforce IDs.
// Array of Salesforce IDs
const idList = ['0066e00001pGlTUAA0', '0066e00001pGlTTAA0',
'0066e00001pGlTPAA0'];
// Create a string to pass to the SOQL IN query
// first part: "('" = opening parenthesis and single quote
// middle part: idList.join("','") = join all the Salesforce Ids
with single quote, a comma and single quote
// last part: "')" = single quote and closing parenthesis
const soqlIn = "('" + idList.join("','") + "')";
// inputs to the SOQL query and calling SF connection
const inputs = {"idList": soqlIn};
const response =
Salesforce.<yourExternalConnectionVariableName>(inputs);
Related topics
Set up External connections for configuration rules
Passing data from Salesforce to ServiceNow CPQ fields
Create scripts
Learn how to create advanced functions using the scripting interface.
Some use cases require an advanced condition or action. Other times, the administrator may
prefer script versus leveraging simple rules. For these occasions, ServiceNow CPQ offers the
ability to write scripts in key areas.
Scripting is available in rule actions and conditions, behind the Advanced menu choice or toggle.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

602


<!-- page 603 -->
When you click Create Advanced Function, the script editor opens, including the tools you need
to write a script.
When the script editor first opens, it provides the expected return format of the script.
• Advanced conditions return true or false.
• Advanced hiding rules return a text string.
• Advanced determination rules return the type of the field that they are setting.
◦ A determination rule that sets a number returns a number.
◦ A determination rule that sets a multi-select picklist returns an array.
• Advanced inclusion and exclusion rules return an array.
• Product rules return ProductList.
For more details and a script sample, review the "Advanced product actions" section of Rules.
The ? Help button opens a menu of available functions. Each entry includes a description of the
function, the parameters it accepts, its output, and an example that can be inserted at the current
location of the cursor in the script.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

603


<!-- page 604 -->
As you type in the script editor, suggestions are provided, including functions, configurable field
variable names, and local variables. Using this feature helps eliminate mismatched variable
names and typing errors. In the screenshot below, typing Ma gives the user two available
functions (Map and Math) and a list of all matching fields. Additional inputs narrow the list of
matching options.

At the bottom of the scripting interface, the debugger lets you test your script by defining values
for the variables (fields) that it references. Debugger input is provided in JSON format. For your
convenience, review field-specific formats in the fields information help (arrow).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

604


<!-- page 605 -->
It can be helpful to save your debugger inputs as comments in your script for easy pasting into
the debugger when you need to test the script.
Calls to console.log() in the script are returned in the debugger output.
Also see the following sample scripts:
• Sample Message Script - Array and Map Function
• Sample Number Field Determination
• Sample Product Rule Scripts
• Sample Product Rule Script With For Loop
• Sample Text Field Determination
Related topics
ServiceNow CPQ scripting language reference
Sample scripts
Using comments and the console to debug scripts
Scripting: Checking for first and subsequent configurations
Scripting: How to populate set values
ServiceNow CPQ scripting language reference
View the operators, objects, and keywords that ServiceNow CPQ supports, together with
information about type conversion, type checking, alternative scripts for unsupported
operations, and accessing object properties.
ServiceNow CPQ uses a JavaScript-like language to dynamically change the value of fields and
BOM data via rules and enrichments. JavaScript is a complex language built over almost thirty
years, and while we are unable to replicate every piece of functionality that a developer would
normally expect while coding, ServiceNow CPQ scripting remains a powerful tool to assist in the
dynamic configuration of products.
The capabilities of ServiceNow CPQ scripting are always expanding. Check back to see the most
up-to-date features.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

605


<!-- page 606 -->
Supported operators
Arithmetic operators:
+
Addition
Subtraction
*
Multiplication
/
Division
%
Modulus
++
Increment
-Decrement
String operators:
+
Concatenation
+=
Addition assignment
Assignment operators:
=
Assignment
+=
Addition assignment
-=
Subtraction assignment
Comparison operators:
==
Equal to
===
Equal value and equal type
!=
Not equal to
!==
Not equal value nor equal type
>
Greater than
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

606


<!-- page 607 -->
<
Less than
>=
Greater than or equal to
<=
Less than or equal to
Logical operators:
&&
And
||
Or

Supported objects
Each object supported can be declared with the following:
[]
Array
""
String
()
Number
true | false
Boolean
{ }, new Map( )
Map
new Date( )
Date
undefined, NaN, and null are unsupported.

Note: Date objects cannot be returned, but they can be referenced and manipulated with
the Date APIs in the Help menu.

Supported keywords
• var
• let
• const
• new
• if
• else if
• else
• for

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

607


<!-- page 608 -->
• for/of
• return
We do not support while or unconditional for loops with break, because of the risk of infinite
loops halting performance.
We do not support functions, as the script itself should be small enough to be considered one
function. If your script is long with many conditions and variables, consider creating a managed
table and using a table query. For more information about using managed tables and table
queries, see Matrix Loader: CSV table upload and Minimizing table queries.

Alternative scripts for unsupported operations
Assignment multiplication and division (/= or *=): number = number * otherNumber;,
number = number / otherNumber;
Exponentiation (x**y): Math.pow(x, y);

Type conversion
Convert arrays to strings: Array.toString()
Convert numbers to strings: [number] + ""
Convert numeric strings to numbers: [string] - 0

Note: Strings cannot be treated as arrays, but .length does work for strings.
Type checking
The following returns a Boolean value indicating whether an input is a number:
LGK.isNumber(123)

Accessing object properties
You can access the properties of map objects such as cfgRequest in two ways.
objectName.propertyName
//or
objectName["propertyName"]
This is helpful in order to replace large amounts of repetitive code with results from a Table
Lookup, since the “propertyName” text could instead be replaced by a variable.
For example, consider a blueprint with the following fields associated with it, and a managed
table named shipstatebooleantest.
• shipState
• boolean1
• boolean2
• boolean3
• quantity1
• quantity2
• quantity3
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

608


<!-- page 609 -->
shipstatebooleantest
id

shipState

trueBoolean

quantityTest

rowQuantity

1

Arizona

boolean1

quantity1

1

2

Maine

boolean2

quantity2

2

3

California

boolean3

quantity3

3

Instead of having an identical if statement check what shipState is and setting the Boolean
values and quantities accordingly, you could instead replace it with only one if statement that
sets the values based on the results of a table lookup.
In the following On Configure/Reconfigure script, if the shipState field has a value, the
fields that are returned by the lookup function are set. If the shipState field is blank, then all
Boolean and quantity fields are set.
if (cfgRequest.shipState.value != "" &&
cfgRequest.shipState.value != null){
var fieldMapping = lookup("Select
trueBoolean,quantityTest,rowQuantity from
shipstatebooleantest where shipState = :value", { "value":
cfgRequest.shipState.value });
console.log(fieldMapping);
if (fieldMapping != []){
cfgRequest[fieldMapping[0].trueBoolean].set("value",true);
cfgRequest[fieldMapping[0].quantityTest].set("value",fieldMappi
ng[0].rowQuantity);
}
}
else{
var fieldMapping = lookup("Select
trueBoolean,quantityTest,rowQuantity from
shipstatebooleantest");
console.log(fieldMapping);
for (var row of fieldMapping) {
cfgRequest[row.trueBoolean].set("value",true);
cfgRequest[row.quantityTest].set("value",row.rowQuantity);ea
}
}
If your instance of ServiceNow CPQ needs functionality not described here, create a support
case by using the ServiceNow Support portal . For step-by-step instructions, see Create a case
on Now Support for CPQ Customers .
Related topics
Sample scripts
Using comments and the console to debug scripts
Scripting: Checking for first and subsequent configurations
Sample scripts
View a selection of commonly requested sample scripts.
This article shows some commonly requested sample scripts.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

609


<!-- page 610 -->
Sample number field determination:
var count64 = 0;
var count32 = 0;
var perCoreProcessing = 40; //assuming 8 processors with 5
TFlops compute
var cpu64Processing = 64*perCoreProcessing;
var cpu32Processing = 32*perCoreProcessing;
var cpu16Processing = 16*perCoreProcessing;
var remainingCompute = cfg.estPeakOps;
if(cfg.allowCPU64 == true) { //64 core allowed so divide by that
count64 = remainingCompute/cpu64Processing;
remainingCompute = remainingCompute%cpu64Processing;
}
if(cfg.allowCPU32 == true) {
count32 = remainingCompute/cpu32Processing;
remainingCompute = remainingCompute%cpu32Processing;
}
return count32;
Sample text field determination:
var retStr = "";
retStr = retStr + "64 vCPUs: " + Math.round(cfg.cpu64Count);
retStr = retStr + "\\n32 vCPUs: " + Math.round(cfg.cpu32Count);
retStr = retStr + "\\n16 vCPUs: " + Math.round(cfg.cpu16Count);
retStr = retStr + "\\n8 vCPUs: " + Math.round(cfg.cpu8Count);
retStr = retStr + "\\n1 vCPUs: " + Math.round(cfg.cpu1Count);
return retStr;
Sample product rule script:
//Base Product
var baseProductP2ID = "BP_ID";
var inputs = {"g2BaseProduct": cfg.g2BaseProduct};
var resultSet = lookup("SELECT Product2Id, ProductName FROM
Dummytable WHERE ProductCode = :g2BaseProduct", inputs);
for (var row of resultSet) {
ProductList.id = row.get("Product2Id");
ProductList.quantity = cfg.orderQty;
ProductList.bomType = "SALES";
ProductList.uom = "EA";
ProductList.level = 1;
ProductList.notes = row.get("ProductName");
ProductList.parentProduct = "01t5f000000uJgoAAE"; //parent
product identifier. In this case top product being configured
from SFDC
baseProductP2ID = row.get("Product2Id");
ProductList.uniqueIdentifier = baseProductP2ID; //Parent
...SF ProductID; not req'd if this has no other children
ProductList.next();
break;
}
Sample product rule script with for loop:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

610


<!-- page 611 -->
//var timesReplicate = cfg.numberOfComputeClusters; //this
doesn't work yet.. If it does, we will replicate that many
times easier
var timesReplicate = [1,1,1,1,1,1,1,1,1,1]; //dummy 10 times
loop based on 10x boolean true, Double loop for 100
for (var parentStep of timesReplicate) {
for (var step of timesReplicate) {
if(cfg.cpu16Count > 0) {
ProductList.id = "01t5f000000v50CAAQ";
ProductList.quantity=Math.round(cfg.cpu16Count);
ProductList.notes="Provisioning " +
Math.round(cfg.cpu16Count) + " number of 16 core vCPUs";
if(cfg.sendDirectlyToProvisioning == true) {
ProductList.bomType = "Manufacturing";
ProductList.level = 2;
} else {
ProductList.bomType = "SALES";
}
ProductList.next();
}
if(cfg.cpu8Count > 0) {
ProductList.id = "01t5f000000v50DAAQ";
ProductList.quantity=Math.round(cfg.cpu8Count);
ProductList.notes="Provisioning " + Math.round(cfg.cpu8Count)
+ " number of 8 core vCPUs";
if(cfg.sendDirectlyToProvisioning == true) {
ProductList.bomType = "Manufacturing";
ProductList.level = 2;
} else {
ProductList.bomType = "SALES";
}
ProductList.next();
}
if(cfg.cpu32Count > 0) {
ProductList.id = "01t5f000000v50BAAQ";
ProductList.quantity=Math.round(cfg.cpu32Count);
ProductList.notes="Provisioning " +
Math.round(cfg.cpu32Count) + " number of 32 core vCPUs";
if(cfg.sendDirectlyToProvisioning == true) {
ProductList.bomType = "Manufacturing";
ProductList.level = 2;
} else {
ProductList.bomType = "SALES";
}
ProductList.next();
}
if(cfg.cpu64Count > 0) {
ProductList.id = "01t5f000000v50JAAQ";
ProductList.quantity=Math.round(cfg.cpu64Count);
ProductList.notes="Provisioning " +
Math.round(cfg.cpu64Count) + " number of 64 core vCPUs";
if(cfg.sendDirectlyToProvisioning == true) {
ProductList.bomType = "Manufacturing";
ProductList.level = 2;
} else {
ProductList.bomType = "SALES";
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

611


<!-- page 612 -->
}
ProductList.next();
}
if(cfg.cpu1Count > 0) {
ProductList.id = "01t5f000000v50SAAQ";
ProductList.quantity=Math.round(cfg.cpu1Count);
ProductList.notes="Provisioning " + Math.round(cfg.cpu1Count)
+ " number of 1 core vCPUs";
if(cfg.sendDirectlyToProvisioning == true) {
ProductList.bomType = "Manufacturing";
ProductList.level = 2;
} else {
ProductList.bomType = "SALES";
}
ProductList.next();
}
}
}
console.log("Added line items 100 times");
return ProductList;
Sample array and map functions:
var productidArr = ["test123", "chtest123"];
var inputs = {"productids": productidArr};
var resultSet = lookup("SELECT uniqueidentifier, bomtype FROM
bominformation WHERE productid IN (:productids)", inputs);
var prodTypeMap = new Map();
for (var row of resultSet) {
prodTypeMap.set(row.get("uniqueidentifier"),
row.get("bomtype"));
}
var itemTypeManuf = productidArr.every((value) => {return
prodTypeMap.get(value) != "Manufacturing";});
if (isGood == false) {
return "Sales type item found";
}
var summary = "";
productidArr.forEach((item, index) => {summary += index + " " +
item + ". ";});
return summary;
How to pull multi-select picklist values from SFDC to twinned multi-select picklist field in
ServiceNow CPQ in the On Configure/Reconfigure enrichment:
let x = (cfgRequest.yourTwinnedLogikField.value).split(";");
cfgRequest.yourTwinnedLogikField.set("value", x);
return cfgRequest;
How to concatenate field values into a string:
stringVar = "";
stringVar = stringVar.concat(cfg.varible1, cfg.variable2,
cfg.variable3);
return stringVar;// returns selected values of
"variable1variable2variable3"
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

612


<!-- page 613 -->
How to imitate a CONTAINS function:
var yourVariable = "Field Value"; // Replace with your actual
Field value
if (yourVariable.includes("CU")) {
// Code you wish to execute when Field Value contains "CU"
} else if (yourVariable.includes("AL")) {
// Code you wish to execute when Field Value contains "AL"
} else {
// Code you wish to execute when Field Value doesn't contain
"CU" or "AL"
};
Related topics
ServiceNow CPQ scripting language reference
General guidelines for scripting
Write efficient scripts using a JavaScript-like language. Follow these general guidelines for
naming, variables, and table access.
This guide will walk you through the general guidelines for writing efficient and reliable scripts
in ServiceNow CPQ using a JavaScript-like language. Following these guidelines will help you
create maintainable, readable, and well-performing code.

Quick summary
• Place declarations at the top
• Comment thoughtfully
• Indent brackets
• Use descriptive variable names
• Name variables consistently
• Avoid "new"
• Avoid loose equality ("==")
• Use "const" before "let" and "let" over "var"
• Minimize table lookups

Place declarations at the top
Placing variable and function declarations at the top of your script improves readability and
prevents unexpected variable hoisting issues.
1 // Declare and initiate at the beginning
2 let firstName = "";
3 let lastName = "";
4 let price = 0;
5 let discount = 0;
6 let fullPrice = 0,
7 const myArray = [];
8 const myMap= {};

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

613


<!-- page 614 -->
Comment thoughtfully
Use comments to explain complex logic, assumptions, or any non-obvious behavior in your code.
Avoid redundant comments that merely repeat the code.

Indent brackets
Properly indenting your code improves its visual structure and makes it easier to understand,
especially when dealing with nested blocks.
1 // Good
2 if (condition) {
3 // ...
4 if (nestedCondition) {
5 // ...
6 }
7 }
8
9 // Bad
10 if (condition) {
11 // ...
12 if (nestedCondition) {
13 // ...
14 }
15 }

Use descriptive variable names
Choose names that are meaningful and describe the purpose of the variable or function. This
makes your code self- documenting and easier for others to understand.
1 //Good
2 let quoteId = cfgRequest.partner.quote.id.value;
3 let lineID = cfgRequest.partner.quote.lineId.value;
4 let currencyISO =
cfgRequest.partner.quote.currencyIsoCode.value;
5 let priceBookID = cfgRequest.partner.quote.pricebookId.value;
6
7 if (quoteId != null) {
8 cfgRequest.quoteIDTest.set("value", quoteId);
9 }
10
11 if (lineID != null) {
12 cfgRequest.lineIDTest.set("value", lineID);
13 }
14
15 if (currencyISO != null) {
16 cfgRequest.currencyISOCodeTest.set("value", currencyISO);
17 }
18
19 if (priceBookID != null) {
20 cfgRequest.pricebookIDTest.set("value", priceBookID);
21 }
22
23 //Bad
24 let x1= cfgRequest.partner.quote.id.value;
25 let x2= cfgRequest.partner.quote.lineId.value;
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

614


<!-- page 615 -->
26 let x3= cfgRequest.partner.quote.currencyIsoCode.value;
27 let x4= cfgRequest.partner.quote.pricebookId.value;
28
29 if (x1 != null) {
30 cfgRequest.quoteIDTest.set("value", x1);
31 }
32
33 if (x2 != null) {
34 cfgRequest.lineIDTest.set("value", x2);
35 }
36
37 if (x3 != null) {
38 cfgRequest.currencyISOCodeTest.set("value", x3);
39 }
40
41 if (x4 != null) {
42 cfgRequest.pricebookIDTest.set("value", x4);
43 }

Name variables consistently
Consistent naming conventions enhance code readability and maintainability. Choose either
camelCase or snake_case and stick to it. ServiceNow CPQ field variable names use camelCase,
so most organizations stay with this convention for readability.
1 // camelCase
2 let firstName = "JohnDoe";
3
4 // snake_case
5 let last_name = "Smith";

Avoid the "new" keyword
Using the new keyword can use more resources, lead to memory leaks, and cause unintended
behaviors. Instead, use the literal notation for object creation if possible.
• Use " " instead of new String( )
• Use ( ) instead of new Number( )
• Use false instead of new Boolean( )
• Use { } instead of new Map( )
• Use [ ] instead of new Array( )

Avoid loose equality ("==")
The loose equality operator can lead to unexpected type coercion. For accurate comparisons,
use the strict equality operator (===).
1 // Good
2 if (count === 5) {
3 // ...
4 }
5
6 // Bad
7 if (count == "5") {

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

615


<!-- page 616 -->
8 // ...
9 }

Use "const" before "let" and "let" over "var"
Choose variable declaration based on scope and mutability requirements. Use const for
variables that won't be reassigned and let for variables that will change. var is also acceptable
but is a holdover from previous versions of JavaScript.
1 // Using const for unchanging values
2 const TAX_RATE = 0.15;
3
4 // Using let for mutable values
5 let itemCount = 5;

Minimize table lookups
Excessive table queries can impact performance. Minimize queries by fetching necessary data
once and storing it in variables.
To learn about general guideliines for using the lookup function, see Minimizing table queries.
Related topics
Create scripts
ServiceNow CPQ scripting language reference
Scripting: How to populate set values
View a detailed example of how to use an On Configure/Reconfigure blueprint enrichment script
to load field values into a set.
This article demonstrates how to use an “On Configure/Reconfigure” blueprint enrichment script
to load field values into a set.
This example shows making a SOQL call to Salesforce using an external connection to get the
last names of all of the account contacts and preloading them into a set for further configuration.

Prerequisites
To complete this example you need:
• Enrichments enabled in your ServiceNow CPQ instance
• External connections enabled in your ServiceNow CPQ instance
• A set created and associated with the blueprint
• A text field associated with the set

External connection: SOQL call
In the ServiceNow CPQ Admin screen, find the external connections under Utilities.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

616


<!-- page 617 -->
1. Set the integration type to Salesforce.
2. Define the SOQL query to make. In this example, we are retrieving all the contacts that are
associated with a particular account and storing the last name.
SOQL query:
SELECT LastName FROM Contact WHERE AccountId = '{{accId}}'

On Configure/Reconfigure script
In the blueprint, navigate to the enrichments area, and add the script to the “On Configure/
Reconfigure” enrichment.
let setData = []; // initialize the set data as an empty array
//if initializing, default in setData
if (cfgRequest.demoset_swc.data == []) {
const inp = {"accId":"0015f000006lRKcAAM" }; // Hardcoded
accountId, could be mapped in from a field
const response = Salesforce.getSetInit_swc(inp); // SELECT
LastName FROM Contact WHERE AccountId = '{{accId}}'
const contactList = response.body.records;
if (contactList.length > 0) {
for (var contact of contactList) {
let elem = {"textTest_swc":{"value": contact.LastName } }; //
set the field value
setData.push(elem); // add to the setData array
}
// after looping through all the contacts/previous set data,
add them to the set
cfgRequest.demoset_swc.set("data",setData);
}
}
return cfgRequest;
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

617


<!-- page 618 -->
Script walkthrough

1. The setData array is initialized as an empty array (line 1).
2. Check whether the set already has data in it, either from the API payload or from a previous
configuration (line 3).
3. Define the inputs for the query to Salesforce (line 5). In this example, the account ID is hard
coded but could be passed from a field or mapped from a twin field on the quote. Make the
SOQL query to Salesforce by using the external connection that was defined, then save the
response (line 6) and get the records array (line 7).
4. If the call returned records (line 8), loop over the records (line 9) and set the field value of
“textTest_swc” to the contact LastName (line 10). Finally, add the new set element to the
setData array (line 11).
5. After looping through the contacts, add all of the setData to the set, “demoSet_swc”, in the
configuration request (line 14).
6. Finally, return the updated configuration request (line 18).
To reuse this script, make changes to the following lines:
1. Line 5: Update the account ID (0015f000006lRKcAAM) to a new value, or twin a field from the
quote.
2. Line 6: Update the name of the Salesforce connection.
3. Line 10: Update the field name (textTest_swc) to a field in the set that you are using.
4. Line 16: Update the set name (demoset_swc) to the name of the set that you are using.

Setting data from an external connection each configuration
If instead you want defaulted data to overwrite whatever the user had entered in the previous
configuration, delete the if clause in line 4.
If you want only certain fields in the set to overwrite user-edited fields, but you want to keep other
fields between configurations, you must reference the set indexes explicitly:
cfgRequest.[setName].data[i].set("fieldName",{"value":"fieldValu
e"});
Replace the following to use in your enrichment:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

618


<!-- page 619 -->
• setName: The variable name of your set
• fieldName: The variable name of your field
• i: An existing index at which you would like to determine the fieldʼs value
• fieldValue: The value you would like to set for the field

Note: To ensure that you are not referencing an empty data array, this call must occur after
the set default code in the enrichment script. Otherwise, it will cause a null reference error
upon initialization.
You also must guarantee that the index you are referencing in the data exists. Including a check
for the length of the set data array is a good way to guarantee that it exists. See the following
example.
if (cfgRequest.setTest.data.length >= 1) {
cfgRequest.setTest.data[0].set("setTestNumberField",{"value":ca
rdNumber});
cfgRequest.setTest.data[0].set("setTestSingleSelect
picklist",{"value":"set option 1"});
}
Notice that while the length function returns “1”, the index is “0”, because indexes are
referenced starting at 0 as the first index.

Configuration experience
Use Case: Using the Init enrichment to Populate set values
The Picklist Extension Pricing enrichment
Use the Picklist Extension Pricing enrichment to adjust pricing according to location or other
factors.
The Picklist Extension Pricing enrichment can be used to dynamically change the pricing of Field
Options in designated picklist extension fields.

Prerequisites
Submit a support case requesting the enrichment be enabled for your environment. Please
provide a use case for using the enrichment. To submit a support case, use the ServiceNow
Support portal . For step-by-step instructions, see Create a case on Now Support for CPQ
Customers .
Picklist extension fields need to have the "Enable for enrichment" toggle turned on to be affected
by the enrichment.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

619


<!-- page 620 -->
The enrichments tab will be shown when navigating to a blueprint in the ServiceNow CPQ
Admin.

Watch this demonstration of the Picklist Extension Pricing enrichment in action.
PLE enrichment Script Demo

Demonstration script
The following script was used in the demonstration video.
let sourcesArr = [];
let componentArr = [];
let accessoryArr = [];
pleRequest.forEach(o => {
if(o.fieldVariableName == "alternateEnergySources") {
sourcesArr.push(o.optionValue);
//o.price = "1000";
}
if(o.fieldVariableName == "alternateEnergyComponents") {
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

620


<!-- page 621 -->
componentArr.push(o.optionValue);
//o.price = "900";
}
if(o.fieldVariableName == "alternateEnergyAccessory") {
accessoryArr.push(o.optionValue);
//o.price = "800";
}
});
var sourceMap = new Map();
if(sourcesArr != null && sourcesArr.length != 0) {
var sourceRows = lookup("Select Energy, BasePrice from
AlternateEnergyPricing where Zip = :zip and Energy IN
(:value)", { "zip": cfg.zipCode, "value": sourcesArr });
for (var row of sourceRows) {
sourceMap.set(row.get("Energy"), row.get("BasePrice"));
}
} else {
//source PLE not part of request. So populate this
map for other PLEs
console.log("Entered non PLE in request case");
sourcesArr = ["Solar", "Wind", "Nuclear"];
var sourceRows = lookup("Select Energy, BasePrice from
AlternateEnergyPricing where Zip = :zip and Energy IN
(:value)", { "zip": cfg.zipCode, "value": sourcesArr });
for (var row of sourceRows) {
sourceMap.set(row.get("Energy"), row.get("BasePrice"));
}
console.log(sourcesArr);
console.log(sourceMap);
}
var multiplierMap = new Map();
if(cfg.alternateEnergySources != "") {
var multiplierRows = lookup("Select Group, Factor
from AlternateEnergyMultiplier where Zip = :zip and
Energy = :energyVal", { "zip": cfg.zipCode, "energyVal":
cfg.alternateEnergySources });
for (var row of multiplierRows) {
multiplierMap.set(row.get("Group"), row.get("Factor"));
}
}
let sourcePrice = sourceMap.get(cfg.alternateEnergySources);
if(sourcePrice != null) {
pleRequest.forEach(o => {
if(o.fieldVariableName == "alternateEnergySources") {
o.price = sourceMap.get(o.optionValue);
}
if(o.fieldVariableName == "alternateEnergyComponents") {
let compPrice = multiplierMap.get("Component");
if(compPrice != null) {
o.price = sourcePrice*compPrice;
}
}
if(o.fieldVariableName == "alternateEnergyAccessory") {
let multA = multiplierMap.get("Accessory");
if(multA != null) {
o.price = sourcePrice*multA;
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

621


<!-- page 622 -->
}
}
});
}
console.log(sourcesArr);
console.log(componentArr);
console.log(accessoryArr);
console.log(sourceMap);
console.log(multiplierMap);
return pleRequest;

Sample design, use cases, and pleRequest elements
Sample enrichment script design:
1. Loop through picklist options and store them for reference later (pleRequest.forEach())
2. Get prices for options and store them (either via table lookup or in the function itself)
3. Set the price for the right option (pleRequest.forEach())
Use cases:
• ZIP code dependent pricing
• Price multipliers and discounts
• Delta pricing
• Independent component pricing subtraction
pleRequest elements:
• pleRequest.fieldVariableName: variable name of the picklist field
• pleRequest.optionValue: picklist options defined in the field
• pleRequest.productId: ID of the product in the PLE mapping
• pleRequest.price: price to be set in the extension
Referencing elements in the pleRequest object is similar to referencing objects such as
ProductList, cfg, and cfgRequest. If a variable is substituted into pleRequest (either
in a for loop or using the forEach function), the element is still referenced after the variable,
followed by a period.
Related topics
ServiceNow CPQ scripting language reference
Library functions
Library functions can speed implementation and reduce maintenance costs by enabling code
reuse across rules.
Library functions enable efficient code reuse across rules and enrichments. They are designed
to minimize redundant logic, speed up implementation, and reduce maintenance costs,
especially in complex scenarios that involve high-SKU or physics-driven configurations.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

622


<!-- page 623 -->
Attributes and capabilities
Centralized management: Search and manage library functions through a dedicated UI.
Reusable and namespaced: Define a library function once and invoke it using
fn.functionName(params).
Configurable parameters: Define input parameters with data types and default values. Parameter
schemas can be modified post-creation, allowing flexibility in managing function inputs.
Customized output: Specify return types.
Callable across modules: Library functions are callable in both the configurator and ServiceNow
Quote Experience.
Managed table queries: Library functions support managed table lookups.

Enabling library functions
Submit a support ticket to enable library functions.

Note: Submit a support ticket by using the ServiceNow Support portal
instructions, see Create a case on Now Support for CPQ Customers

. For step-by-step

.

Once library functions are enabled, turn on the new UI by navigating to Utilities > Settings >
Admin Version > New, and clicking Save.
This setting can be toggled at any time.

Supported input/output data types
Supported input/output data types
Type

Description

TEXT

Plain text strings

NUMBER

Numeric values

BOOLEAN

Logical true/false values

DATE

Dates (without time component)

JSON OBJECT

JSON formatted objects

ARRAY

Ordered collections of values

Note: Empty MAP or ARRAY types are not supported. Unsupported types default to TEXT.
Usage examples
Library functions can be found in the function library (in the Utilities section).

To add a function:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

623


<!-- page 624 -->
1. On the Function Library tab, click Add Function.
2. Name the function, specify the return type, and enter a description.
Script content:

Calling the function:

Limitations
• Recursive calls are not supported.
• External API calls and async operations are not supported.
• Parameters are passed by copy, not by reference.
• Functions must be free of side effects, external calls, and ServiceNow CPQ field references.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

624


<!-- page 625 -->
General guidelines
• When a library function changes, redeploy the affected blueprints.
• When defining a function, name and describe its inputs to provide visibility into its usage.
The lookup function: commands and syntax
Use the lookup function to return information from a user-managed table.
ServiceNow CPQ uses a SQL-based query language to look up user-managed tables.
The lookup function returns up to 10,000 rows from a table and times out after 30 seconds if
the search is still querying. For information about uploading CSV files into managed tables, see
Matrix Loader: CSV table upload.
To learn about general guidelines for using the lookup function, see Minimizing table queries.

Supported commands
• SELECT selects columns from a table (separated by “,”)
• FROM selects the table that the query will take data from
• WHERE sets the conditions where the other columns will be searched from
• AND conjoins two WHERE conditions (both must be true)
• OR conjoins two WHERE conditions (either can be true)

Syntax
Example query:
var tableResults = lookup("SELECT column1, column2 FROM
tableName WHERE column3 = :key1 OR (column4 != :key2
AND column5 IN :list)", {"key1": "value",
"key2":cfg.[singleFieldName], "list":cfg.[multiFieldName]});
The first parameter is the SQL-based command string used to query the managed table.
The second parameter is the key-value map to be inserted into the query. The values can be
constants, variables, or fields.
The tableResults variable holds the resulting array. This variable cannot be returned itself.
Results must be referenced by index (tableResults[0], tableResults[1]...) and
can contain any number of results, or none.
If you receive the error “...Index '0' is out of bounds…” when working with table lookup, you are
probably trying to reference an empty array. We recommend running a null check on your table
results.
Comparators:
=
Is equal to
!=
Is not equal to
>
Is greater than
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

625


<!-- page 626 -->
<
Is less than
>=
Is greater than or equal to
IN
Is equal to any (in a set)
The format for IN works for any collection in the following format:
lookup("SELECT column1 FROM table WHERE column2 IN
(:options)",{options = cfg. [multi picklistField]});
Related topics
Minimizing table queries
Indexes and natural keys for managed tables
Minimizing table queries
Learn how to minimize queries to maximize performance.
The more queries you have, the more they impact performance. This article discusses two ways
to minimize queries to help keep performance as fast as possible.

Implementing rules
When you create a configuration, consider how you might implement it to minimize queries.
For example, suppose you have a table of the length, width and height of various components.
Once you select a part number, you want to query those values to calculate the volume. The
best way to query that information depends on the use case and where the values are needed
downstream of the query.
If the configuration only uses the total volume, the best approach is to put the query in the
advanced determination rule for the volume, similar to this simplified code:
• Query L,W and H from table
• Var vol = L*W*H
• Return vol
Total queries: 1.
However, if you are writing a volume rule and you know you will need to use the length, width
and height values elsewhere, the above code is not appropriate. Instead, you should write your
determination rule as follows:
• Var vol=L*W*H
• Return vol
You should have the queries in the determination rules. Determination rules can only define one
field at a time, so this would need three determination rules—one rule each for length, width and
height—and three queries. Doing this prevents running a fourth query (one in each length, width
and height rule, and one in the volume determination rule).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

626


<!-- page 627 -->
Another way to reduce queries is to be aware of the fields associated with a rule. Suppose you
have a query in a rule that references a lot of fields. The rule runs every time one of the fields
associated with that rule changes. Therefore, the query runs every time.
Let’s say you need to calculate the volume and then multiply that volume by density (which could
change based on material the user selects) to get the total weight. The user does not need to use
volume anywhere else downstream. Here is a sample script:
• Query L,W,H from table
• Var vol= L*W*H
• Var mass = vol * cfg.density
• Return mass
The problem is that every time the density changes, the rule runs and then the query runs. But
the values of L, W and H do not change. Therefore, the processor has to go to the table, find the
values for L, W and H, and redefine the variable vol to the same value it was before. A better
approach is to calculate volume as a separate field with a separate rule. Then, write the mass rule
as follows:
var mass = cfg.volume * cfg.density;
return mass;
Mass still recalculates every time, but it is intended to. No processing time is wasted doing
unnecessary querying and redefining values.

Querying a list
As seen above with L,W and H, you can pull multiple columns from a table in a single query. At
other times, you might want to query the table on multiple values. For example, suppose you
have a multiselect picklist (field name selectedColors) of different colors. You also have a
“hues” table that has a red, blue and green column to tell you the ratios.
If you wanted to query the table for all the selected options of the multiselect picklist, there are
two options.
for (color of cfg.selectedColors){
var tableResults=lookup(“Select blue, red, green from
hues where value := value”, {“value”: color});
//more code
This for loop means that the number of queries is based on the number of selected options for
the selectedColors field. Alternatively, the following code queries the table once.
var tableResults=lookup(“select blue, red, green from hues where
value in (:list)”, {“list”: cfg.selectedColors});
This method is better.
For more information on what is supported in a query, see The lookup function: commands and
syntax.
Debugging in ServiceNow CPQ
How to use the debugger to perfect your scripts before deployment.
When you need to fix a script in ServiceNow CPQ, the debugging tool in Advanced Functions
and Enrichment Scripts can help. This guide shows you how to write debug JSONs to isolate
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

627


<!-- page 628 -->
and test your scripts before deployment. By following these best practices for debugging faulty
scripts, you can help ensure your blueprints run flawlessly.

General guidelines for debugging
Using console.log(): When coding a complex behavior, you may have to check whether
certain values are set or manipulated the correct way. Instead of seeing only what is returned by
the rule, use the console.log([variableName]) function in a script to show the value of
the variable at that line when run in the debugger.
Comment out blocks of codes: When a script becomes long, it may be necessary to comment
large sections of code to see where the behavior originates. This can usually be done by using
// or /* */ and then debugging.
Comment out debug JSON for future use: If you are continually updating a rule during
implementation, itʼs a good idea to save your debugging JSON either at the top or bottom of the
script inside a comment block. That way, when the script is saved, the JSON can also be saved
for future reference.
For more tips on these features, see Using comments and the console to debug scripts.

How to use the debugger

When in the script editor:
• Toggle the dubugger options by clicking the bug icon (a).
• Enter your JSON in the Debugger Inputs section (b), as it would appear when your rule runs
during configuration.
• Run your rule with the debugger inputs by clicking Run Debugger in the Debugger Output
panel.

Note: The script does not have to be saved in order to run the debugger. The state of
the script when the button is clicked is used when testing.
• Returned objects and console.log information appear in the Debugger Output panel (d).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

628


<!-- page 629 -->
The ServiceNow CPQ debugger uses JSON format, which is written using attribute-value pairs.
The attributes are the variable names of the fields used in the rule, and the value is the fieldʼs
data in its object format.

Note: As long as a field is referenced in the rule or enrichment, it must have a
corresponding attribute in the JSON, or the script cannot be run in the debugger.
Also note:
• The JSON package is wrapped using curly brackets ({ })
• Each field is separated by a comma (,).
• Each attribute-value pair is separated by a colon (:).
The structure of the JSON you use depends on the object type of each field, as well as whether
the script is being used for a rule or an enrichment.

Field-specific JSON formatting
• Text, numbers, Boolean values, and single-select picklists fields are the easiest fields to
debug, as they correspond to simple, singular-value objects such as strings, numbers, and
Boolean values.
{
"cfg":{
"textField": "value",
"singleSelect picklist": "value",
"numberField": 123,
"booleanField": true
}
}
• Date fields use the ISO-8601 international standard to hold date information. If a field
inputs dates in the debugger, the data should be a string in the format YYYY-MMDDThh:mm:ss.sssZ.
{
"cfg":{
"dateField": "2024-01-01T00:00:00.000Z"
}
}
• Multi-select picklists are in the form of an array that contains strings. Even with only one option
selected, the strings should be in an array format when debugging, wrapped by square braces
([ ]) and separated by commas (,).
{
"cfg":{
"multiSelect picklist": [
"option 1",
"option 2"
]
}
}
• Product pickers are unique to reference in a rule or enrichment, since they have their own
type of simple rules, bulk actions. They can be referenced only by their picklist option, treating
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

629


<!-- page 630 -->
them as a single-select or multi-select field. Or, the debugger can reference a product picker
subfield or aggregate using the key pkr.
{
"cfg": {
"productPickerSS": "selectedValue",
"productPickerMS": [
"selectedValue1",
"selectedValue2"
]
},
"pkr": {
"productPicker2": {
"value": "productPicker2_option1",
"select": true,
"quantity": 100,
"exampleSubfield": "Example Value",
"aggregates": {
"quantity_max": 100
}
}
}
}
Note that when you reference a product picker subfield in a rule, you need to use the pkr
object and not cfg.
let x = pkr.productPickerName.subFieldName
• Sets cannot be referenced by advanced functions, but the fields contained in them can. Due
to the nature of the set field, a setʼs rows can be determined and referenced only in the On
Configure/Reconfigure enrichment. However, you can test for when a field such as optionValue
is in a rule.
{
"set": {
"exampleSet": {
"index": 1,
"optionValue": "product1",
"selectOption": true,
"size": 2,
"aggregateExample1": 1
}
}
}
To learn more about defaulting a setʼs fields, see Scripting: How to populate set values.

Context-specific JSON formatting
Field inputs are entered in JSON format, using the field variable name as the key and the
intended value as the value.
{
"cfg": {
"exampleField": "Example Value"
}
}
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

630


<!-- page 631 -->
On configuration and reconfiguration, inputs are entered in JSON format, using the field variable
name as the key. The value is an object consisting of two properties: value and userEdited.
value should be set to the intended field value. userEdited is a Boolean value.

Context-specific JSON formatting: fields
{
"cfgRequest": {
"exampleField": {
"value": "Example Value",
"userEdited": false
},
"exampleMultiselect picklist": {
"value": [
"one",
"two"
],
"userEdited": false
}
}
}
For more information about how to use the userEdited property, see Scripting: Checking for
first and subsequent configurations

Context-specific JSON formatting: product pickers
"cfgRequest": {
"pkr": {
"productPicker1": {
"data": [
{
"value": {
"value": "productPicker1_option1",
"userEdited": false
},
"select": {
"value": true,
"userEdited": false
},
"quantity": {
"value": 100,
"userEdited": false
},
"exampleSubfield": {
"value": "Example Value",
"userEdited": false
}
}
],
"aggregates": {
"quantity_max": {
"value": 100
}
}
}
},
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

631


<!-- page 632 -->
"productPicker2": {
"value": "productPicker2_option1",
"userEdited": false
}
}
}

Context-specific JSON formatting: sets
{
"cfgRequest": {
"set": {
"exampleSet": {
"data": [
{
"index": {
"value": 1
},
"optionValue": {
"value": "product1",
"userEdited": false
},
"selectOption": {
"value": true,
"userEdited": false
},
"textField": {
"value": "a",
"userEdited": false
}
}
],
"size": {
"value": 1,
"userEdited": false
},
"aggregateExample1": {
"value": 1
}
}
}
}
}

Context-specific JSON formatting: product pickers in sets
"cfgRequest": {
"set": {
"exampleSet": {
"data": [
{
"index": {
"value": 1
},
"optionValue": {
"value": "product1",
"userEdited": false
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

632


<!-- page 633 -->
},
"selectOption": {
"value": true,
"userEdited": false
},
"productPicker1InSet": {
"value": [
"option1_Of_productPicker1InSet",
"option2_Of_productPicker1InSet"
],
"userEdited": false
},
"pkr": {
"productPicker2InSet": {
"data": [
{
"value": {
"value": "option1_Of_productPicker2InSet",
"userEdited": false
},
"select": {
"value": true,
"userEdited": false
},
"quantity": {
"value": 100,
"userEdited": false
}
}
],
"aggregates": {
"quantity_max": {
"value": 100
}
}
}
}
}
],
"size": {
"value": 1,
"userEdited": false
},
"aggregateExample1": {
"value": 1
}
}
}
}
}
On BOM Response enrichment:
Product List: Inputs are entered as an array of objects in JSON format, using the property
variable name as the key, and the intended value as the value.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

633


<!-- page 634 -->
[
{
"id": "test product",
"quantity": 2
},
{
"id": "test product2",
"quantity": 5,
"bomType": "MANUFACTURING"
}
]
Picklist extension Pricing enrichment:
picklist extension Request: Inputs are entered as an array of objects in JSON format, using the
property variable name as the key, and the intended value as the value. In the example, “set” and
“index” are only needed if using a set.
[
{
"fieldVariableName": "myField1",
"set": "mySetVariableName1",
"index": 1,
"optionValue": "Option 1",
"productId": "myProduct1",
"productUniqueIdentifier": "myId"
}
]

If the debuggerʼs behavior is different from runtime behavior
In most cases, the debugging JSON needs to exactly match what would normally be entered
during runtime as valid values for the fields. Make sure that you're using the correct data type or
structures described above.
In other cases, similar rules may be acting on the same field. In this situation, the debugger will
not be helpful, as it can only show the behavior of one rule at a time. To isolate the problem, it
might be necessary to inactivate individual rules and redeploy.
If neither method is successful, open a case with our support team by using the ServiceNow
Support portal . For step-by-step instructions, see Create a case on Now Support for CPQ
Customers .
Using comments and the console to debug scripts
Learn how comments and the console can help you debug your scripts.
ServiceNow CPQ has several areas where the admin can use scripts to define behavior. These
include advanced conditions for rules, advanced actions for rules, and enrichments.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

634


<!-- page 635 -->
Advanced conditions for rules

Advanced actions for rules

Enrichments

This article highlights a few key features to help you test and prepare your code before you
deploy it in a blueprint.

Note: The scripting language in ServiceNow CPQ is JavaScript-like, meaning it follows
JavaScript-style syntax but lacks the full capabilities of JavaScript.

Console.log
When the admin starts to write a script, the ServiceNow CPQ Admin looks like this:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

635


<!-- page 636 -->
Clicking Run Debugger in the lower panel raises the debugger and the Debugger Output section.
This section is also called the console.
This box shows the output of the script based on the script and the inputs added to the
debugger (if applicable). For example, the BOM enrichment script shows the updated BOM
based on the enrichment and inputs put in the debugger.
Lines of code can be logged to the console. So, you can send text to the console, as in the
following:

You can also log variables, which is helpful to make sure your script is working correctly. You can
add text to the log to help the lines of code stand out:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

636


<!-- page 637 -->
Comments
Comments are lines of code that the script ignores. Comments have a few uses. First, it is
very helpful to future coders (and to you, when you revisit the code much later) if you have
commented on how and why you coded lines of the script as you did. Commenting can also be
used to save code to use again. And if you do not use a block of code but may want to use it later,
you can comment it so it does not affect your current work.
You can write comments on a single line or across multiple lines.
To add single-line comments, use two slashes. Anything written after the slashes on the same
line is ignored by the script.
// This comment is ignored by the script
However, any code before the slashes is still executed. For example, in the image below, the
variable be4comment remains 12345, as the script ignores the comment "67890" following the
slashes.

To create a multiline comment, add a slash and an asterisk before the comment. Add an asterisk
and a slash after the comment.
/*
Your comment goes here.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

637


<!-- page 638 -->
It can span multiple lines.
*/
When you add a multiline comment, be careful not to comment out important elements such as
closing brackets, parentheses, or return statements.

When you frequently revisit or modify a rule that takes inputs from many other fields, it can be
helpful to paste the input into the debugger section as a multiline comment. This way, when you
return to work on the rule later, you won't need to rewrite the inputs.
/* inputs
{"Field1": "testValue1",
"Field2Quantity": 2,
"Field3": "testValue3"
},
*/
Test a ServiceNow CPQ configuration
Two ways to test a ServiceNow CPQ configuration without creating a quote in Salesforce
Assuming that you have a layout for your blueprint, there are two ways to test your ServiceNow
CPQ configurations without creating a quote in Salesforce. You can access all the capabilities of
your configuration and see how your layout appears to an end user.
For more information, see the following topics:
The test frame
Use case: Displaying the ServiceNow CPQ native UI via direct URL
Referencing a product picker
You can reference a product picker in the On BOM, Pricing, and Validation enrichments by
modifying your enrichment script.
Product pickers are available for reference in On BOM, Pricing, and Validation Enrichments.
When referencing a product picker in any of these scenarios, use the pkr.<Product
Picker varname> notation in your enrichment script. As an example, the following snippet
iterates over the options in somePicker and creates a map where each record's option value
and quantity are stored.
var quantityMap = new Map();
pkr.somePicker.data.forEach((row) => {
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

638


<!-- page 639 -->
quantityMap.set(row.value, row.quantity);
}
);
If you intend to use the Pricing enrichment to dynamically set prices for the product picker
options, be sure to enable this feature on the product picker. To do this, in the product picker
administration page, click the cog to open the Product Picker Settings dialog. Then, turn on
Enable for Pricing Enrichment.

In the related blueprint's Picklist Extension Pricing enrichment, your script will work as follows:
pleRequest.forEach((option) => {
if (quantityMap.has(option.optionValue)) {
option.productId = option.optionValue;
option.price = blah; // complete this to suit your use case
}
});
Scripting: Checking for first and subsequent configurations
You can test whether a configuration is being initialized or being reconfigured, and set code to
execute based on the result.
Sometimes it is necessary to execute code only when the configuration is being initialized, or
only when it is being reconfigured. For example, you might want to set a field to its default values
at the beginning of a configuration, but keep the userʼs selection during any future edit.
The methods below can be combined without interfering with one another and can lead to
flexible and unique code behaviors for your configurable products.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

639


<!-- page 640 -->
userEdited: running only when a field was not edited
Two field properties can be accessed in the On Configure/Reconfigure enrichment: value and
userEdited. While the value property holds the data contained in the field and is usually
what will be accessed when scripting, userEdited contains a Boolean value that stores
whether the field has been changed by the end user.
This can be used in if statements to write a default value only when the field has not been
changed by the user. For example:
if (cfgRequest.[fieldVariableName].userEdited == false) {
//code to run
}
All fields will have the userEdited property set to false when the configuration is initialized,
but when reconfiguring, some will be set to true based on the changes made by the user. If youʼd
like a behavior to occur only when a field has or hasnʼt been edited, write the code to execute
after one of these checks.

The lineId partner field
Alternatively, if youʼd like to make only one check in the On Configure/Reconfigure enrichment
script, and have Salesforce integration, the lineId partner field will only be populated with the
Salesforce ID of the parent configurable productʼs quote line when reconfiguring. It will not be
populated when a configuration is initialized.
This is because when a ServiceNow CPQ configuration is initialized, this ID does not yet exist,
because the configuration has yet to be saved. Only after a ServiceNow CPQ configuration has
been created and the quote line editor saved are any quote lines created in Salesforce. So, when
we see that the lineId partner field is present, we can be sure that the current session is due
to a reconfiguration, not a new configuration.
Script writers can take advantage of this distinction by putting any code that must be run only on
initialization or reconfiguration under a check for this value.
Here is how the field can be referenced in the On Configure/Reconfigure enrichment:
cfgRequest.partner.quote.lineId.value;
If the behavior should only happen when the configuration is initialized, you could add the
following check:
if (cfgRequest.partner.quote.lineId.value == null) {
//code to run
return cfgRequest;
}
Adding the return cfgRequest; line in the check guarantees that any code after the check
for the line ID will not be executed.
Similarly, if the behavior should happen only when the configuration is reconfigured, add the
inverse check:
if (cfgRequest.partner.quote.lineId.value != null) {
//code to run
return cfgRequest;
}

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

640


<!-- page 641 -->
For more information on partner fields, see ServiceNow CPQ fields, system fields, and partner
fields.

isInitial: creating a text field
Another way to guarantee that a distinction is present (regardless of whether Salesforce is
used as an entry point into the configurator) is to create a field that checks whether the current
configuration is due to an initialization or a reconfiguration.
Create a text field with the variable name isInitial. Associate the field with your blueprint.
Then, in the On Configure/Reconfigure enrichment, add the following lines:
if (cfgRequest.isInitial.value === "Yes" ||
cfgRequest.isInitial.value === "No") {
cfgRequest.isInitial.set("value","No");
}
else
{
c fgRequest.isInitial.set("value","Yes");
}
On initialization, the isInitial field will be blank. Therefore, the script will set the value of
isInitial to Yes in the else clause.
On the first reconfiguration, isInitial will be Yes. Therefore, the script will set the value of
isInitial to No in the if clause.
On every subsequent reconfiguration, isInitial will be No, and will remain No.
This method has the added benefit of not having to save the entire QLE in SFDC in order to make
the distinction between an initialization or reconfiguration. The method immediately detects
when the user enters the configurator a second time.
This method also includes the ability to reference the new field as a condition in rules, such as
making a rule fire specifically on initialization or reconfiguration. It does not require the behavior
to exist only in the On Configure/Reconfigure script. However, to keep the configuring experience
similar from the end user's perspective, you should be wary of making too many behavioral
differences between initialization and reconfiguration.
Passing data from Salesforce to ServiceNow CPQ fields
Learn how to pass information from Salesforce into ServiceNow CPQ using the On Configuration/
Reconfigure enrichment.
Sometimes a ServiceNow CPQ configuration needs information from outside the configuration
passed into the configuration on initialization. There are several ways to do this.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

641


<!-- page 642 -->
If the information can be found on the Salesforce quote, use the twinning method of data
transfer. External data would be assigned to a field in ServiceNow CPQ.
In this example, ServiceNow CPQ uses the On Configuration/Reconfigure enrichment (called
“Init enrichment” here) to send an API call to the website “FakerAPI.it”. This website sends an API
response with fake credit card information.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

642


<!-- page 643 -->
Our goal is to populate a field in ServiceNow CPQ with the credit card type (Visa, MasterCard, or
other).

Setup
The first step of using an enrichment and external connection is to set it up. For instructions, see
Set up External connections for configuration rules. (Note that the examples in this link focus
mostly on the On BOM Response enrichment. This article complements the other because it
focuses more on the Init enrichment.)
The following information is used for our external connection to FakerAPI.it.

Parameter

Value

Name

CardType

variableName

cardType

host

https://fakerapi.it

path

/api/v1/credit_cards?_quantity=1

Authentication Type

None

timeout

500

Next, the field in ServiceNow CPQ must be created and associated with the blueprint that uses
the enrichment. All four ServiceNow CPQ field types can be assigned data from the enrichment.
The data assigned to the field from the API response just needs to match the field.

Scripting the Init enrichment
The final step is to write the script for the Init enrichment. The enrichment's language is based on
JavaScript, and users are encouraged to look at the Help section of the advanced function editor
for most of the sample scripts needed. The following lines of code are not in the Help section, so
are documented here.
To reference an external connection in an enrichment, use the following:
Var {varName} =
External.{externalConnectionVariableName}(inputs)
If calling to Salesforce, change External to Salesforce.
Var {varName} =
Salesforce.{externalConnectionVariableName}(inputs)
If there are no inputs, use empty parentheses.
In the Init enrichment, the Fields item changes to Configuration Request, which is referenced
in the script as cfgRequest. This item is used to define fields in the ServiceNow CPQ
configuration that is being initialized. Therefore, if external data is passed to ServiceNow CPQ, it
is assigned from the cfgRequest JSON object and values have to be programmed into it. That
can be scripted two ways (Items in curly braces ( { } ) and in italics are determined by the user):
cfgRequest.{LogikVariableName}.set(“value”, “{value}”) ;
cfgRequest.{LogikVariableName}.value = ”{value}” ;

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

643


<!-- page 644 -->
For example, suppose the company Solar Fare Well sells and installs solar panels. They want to
assign two external values to their configurator: which way the roof faces and the square footage
of the roof. Their Init enrichment might have the following lines of code:
cfgRequest.roofDirection.value= “North”;
cfgRequest.sqft.set(“value”, 500);
Notice that the number does not need quotes around it.
The Configuration Request item contains all the requests on the configuration. This includes
fields that are twinned into ServiceNow CPQ. Moreover, cfgRequest is populated with the
twinned fields before the Init enrichment script runs. This means that twinned fields can be
used as variables (inputs) for the enrichment script and external connection, which can affect
the output from the script and external connection. The following snippet shows the formatting
options when getting values from cfgRequest.
var x = cfgRequest.{varName}.get(“value”);
x= cfgRequest.{varName}.value;

Sample script solution
When implementing the above code, the first step is to look at the JSON response from the
external connection call.
Using the external connection defined above, the following enrichment script returns an API
response similar to the one that follows just below.
var sample=External.cardType();
return sample;
"body": {
"total": "1",
"code": "200",
"data": [
{
"owner": "Mercedes Emmerich",
"number": "2410279364686428",
"expiration": "04/25",
"type": "American Express"
}
],
"status": "OK"
}
Note that this is not the entire API response, and that card data changes with each API call. As
expected, this matches the API response from the website.
Next, we need to parse down to the card type. The formatting examples in the Advanced
Function Help section can help you identify how to parse the JSON object response.
The following enrichment script returns the result that follows.
var sample=External.cardType();
var x=sample.body.data[0].type;
cfgRequest.cardType_adv.set("value", x);
return cfgRequest;
{
"cardType_adv": {
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

644


<!-- page 645 -->
"userEdited": false,
"value": "American Express"
}
}
So in ServiceNow CPQ, the cardType_adv field is defined as “American Express”.

Query data from Salesforce (SOQL)
As mentioned earlier, data that is in a Salesforce quote can be twinned into ServiceNow CPQ.
However, if the data is found elsewhere in Salesforce, the Init enrichment has Salesforce as the
external connection, and you perform a query using Salesforce Object Query Language (SOQL).
If you are unfamiliar with the SOQL language, you can find out more at Salesforceʼs Trailhead
site.
To use SOQL in the enrichment, the only difference from the examples above is a change to the
external connection. In ServiceNow CPQ Admin, click Utilities, click External Connections, and
then click New. This is how you normally create an external connection.
For the field integration type, select Salesforce. This provides a box for you to enter your SOQL
query.

Related topics
Twinning: pulling Salesforce CPQ quote information into ServiceNow CPQ
API overview and resources
Learn about the APIs that are available in ServiceNow CPQ to manage configurations.
ServiceNow CPQ provides APIs for both the end user (runtime) for configurations and the
administrative side for setup and management.
The runtime APIs support the standard create, read, update, and delete functions for ServiceNow
CPQ configurations, along with the ability to retrieve bill of materials (BOM) data from
ServiceNow CPQ. These APIs can be used to build a headless or custom UI for end users to
create ServiceNow CPQ configurations.
Administrative APIs can be used to work with blueprints, fields, sets, product pickers, rules,
managed tables, and the Matrix Loader for imports and exports. The admin APIs can be
integrated or automated to perform routine tasks like data migration.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

645


<!-- page 646 -->
API resources
The following resources can help you get started with ServiceNow CPQ APIs.
To view a Github repository with OpenAPI specifications and Postman collections for ServiceNow
CPQ APIs, see:
API Documentation
For interactive and explorable API documentation with code examples for both runtime and
admin APIs, see:
ServiceNow CPQ API Reference

Authenticating API calls
Runtime API calls are authenticated using runtime client tokens defined in ServiceNow CPQ
Admin. For more information about runtime API calls and runtime client tokens, see:
Intro to runtime API calls
Administrative API calls are authenticated with admin API tokens that are also set up in
ServiceNow CPQ Admin. For more information about admin API tokens and permissions, see:
Intro to admin API keys
Related topics
Runtime APIs
Authenticating ServiceNow CPQ API calls
Additional configuration APIs
Admin APIs: Blueprint import and export
Admin APIs: Managed tables
Intro to runtime API calls
Runtime, or buyside, APIs are used to create, update, and save configurations.
ServiceNow CPQ APIs are divided into two categories: runtime APIs and admin APIs. In this
article, we introduce the runtime APIs.
Runtime APIs are used to create, read, update, and delete configurations, and are the same APIs
that are used in the ServiceNow CPQ End User Configurator. They are also commonly referred to
as the “buyside“ APIs.

Note: For the most updated information on sample codes and other details, see API
Documentation

.

All API calls follow this base URL format: https://<yourTenant>.<sector>.cpq/api/.
In this URL, yourTenant represents your unique listed ServiceNow CPQ tenant name, and sector
is the sector where your ServiceNow CPQ environment is located.
If you are a Salesforce user, you can find your tenant URL by clicking Setup in your Salesforce
account. In the Quick Find box, search for or click Custom Settings, and then click Manage. Your
tenant URL will be displayed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

646


<!-- page 647 -->
All runtime API calls require bearer token authentication using a unique token that is available in
the runtime client. They also require that the origin URL configured in the runtime client appears
in the request header.
To authenticate, collect the bearer token and the origin URL from ServiceNow CPQ Admin →
Utilities → Runtime Client. For each API call in a Postman, add the following header:
Key: Origin
Value: <yourOrigin>

In the Authorization tab of Postman or your API tool, select Bearer Token, and then input the
unique token you copied from ServiceNow CPQ Admin.

Note: The token in the image is a dummy value that does not correspond to any actual
environment. It appears only for illustrative purposes.

Basic runtime API calls
• The initial configure call starts the configuration process by passing the ID of the configurable
product, and returns a configuration UUID for later use.
Example (cURL):
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

647


<!-- page 648 -->
curl -X POST https://<yourTenant>.<sector>.logik.io/api/ \
-H "Authorization: Bearer <yourBearerToken>" \
-H "Origin: <yourOrigin>" \
-H "Content-Type: application/json" \
-d '{
"sessionContext": {
"stateful": true
},
"partnerData": {
"product": {
"configuredProductId": "{{configProductId}}",
}
},
"fields": []
}'
Example (response):
{
"configurationId": "{uuid}"
You also use this API call for reconfiguring, providing a previously saved configuration UUID in
the POST body.
Example reconfigure (cURL):
curl -X POST https://<yourTenant>.<sector>.logik.io/api/ \
-H "Authorization: Bearer <yourBearerToken>" \
-H "Origin: <yourOrigin>" \
-H "Content-Type: application/json" \
-d '{
"sessionContext": {
"stateful": true
},
"partnerData": {
"product": {
"configuredProductId": "{{configProductId}}",
"configurationAttributes": {
"LGK__ConfigurationId__c": "{{uuid}}"
}
}
},
"fields": []
}'
• The update configuration call updates an existing configuration by passing the configuration
UUID and desired field values, and returns all possible fields and their values.
Example (cURL):
curl -X PATCH https://<yourTenant>.<sector>.logik.io/api/{uuid}
\
-H "Authorization: Bearer <yourBearerToken>" \
-H "Origin: <yourOrigin>" \
-H "Content-Type: application/json" \
-d '{ "fields": { "color": "blue", "size": "large" } }'
Example (response):
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

648


<!-- page 649 -->
{
"fields": {
"color": "blue",
"size": "large",
"price": "$100"
}
}
• The get BOM call passes the configuration UUID and retrieves the Bill of Materials (BOM) for
the configuration. It returns the current BOM for the configuration.
Example (cURL):
curl -X GET
https://<yourTenant>.<sector>.logik.io/api/{uuid}/bom \
-H "Authorization: Bearer <yourBearerToken>" \
-H "Origin: <yourOrigin>"
Example (response):
{
"bom": [
{ "item": "componentA", "quantity": 2 },
{ "item": "componentB", "quantity": 1 }
]
}
• The save call saves the configuration in ServiceNow CPQ. This ensures that the configuration
UUID can be used and reconfigured in the future.
This process asynchronously populates our custom objects, configuration field data sets, and
configuration line items in Salesforce.
Example (cURL):
curl --location --request PATCH
'https://mpanigrahi-demo.demo01.logik.io/api/6d0ef6fd-4c88-44
f3-a296-b03421c369c6' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Origin: https://mpanigrahi-demo.demo01.logik.io' \
--header 'Authorization: <<RUNTIME TOKEN>>' \
--header 'Cookie:
LGKSESSION=NDA5OWJmNmEtNDhhOS00YTc4LTk3ODktZTg0OGYyOGIwMjZk' \
--data
'{"fields":[{"variableName":"name_d1","value":"megha","dataTyp
e":"text"}],"responseState":{"setPagination":{"collections":{"p
ageSize":10,"pageNumber":0},"fields":{"pageSize":10,"pageNumber
":0},"componentTypes":{"pageSize":10,"pageNumber":0}},"defaultP
agination":{"pageSize":10,"pageNumber":0},"searchValues":{}}}'
For more details on the sample code, refer to the full API reference documentation:
https://api-docs.logik.io/ʼintroduction

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

649


<!-- page 650 -->
JSON sample
info:
_postman_id: e8370e58-ff12-4662-adac-3e35052b59ba name: Sample
Runtime Calls
schema:
https://schema.getpostman.com/json/collection/v2.1.0/collection
.json item:
name: 'Logik: Initial Configure' event:
listen: test script:
exec:
"var jsonData = JSON.parse(responseBody);\r"
pm.collectionVariables.set("configId", jsonData.uuid); type:
text/javascript
request: auth:
type: bearer bearer:
- key: token
value: '{{logikAccessToken}}' type: string
method: POST header:
key: content-type value: application/json type: text
key: Origin
value: '{{logikOriginHeader}}' type: text
body:
mode: raw
raw: " {\r\n \"sessionContext\": {\r\n \"stateful\":
true\r\n },\r\n \"partnerData\": {\r\n \"product options:
raw:
language: json
url:
raw: '{{logik}}' host:
- '{{logik}}' response: []
name: 'Logik: Update Configuration' request:
auth:
type: bearer bearer:
key: token
value: '{{logikAccessToken}}' type: string
method: PATCH header:
key: content-type value: application/json type: text
key: Origin
value: '{{logikOriginHeader}}' type: text
body:
mode: raw
raw: "{\r\n \"fields\": [\r\n
{\"variableName\":\"juBool1\",\"value\":\"True\"},\r\n
{\"variableName\":\"juBool2\",\"value options:
raw:
language: json
url:
raw: '{{logik}}{{configId}}' host:
- '{{logik}}{{configId}}' response: []
name: '(Optional): Logik: Retrieve BOM' request:
auth:
type: bearer bearer:
key: token
value: '{{logikAccessToken}}' type: string
method: GET header:
key: content-type value: application/json type: text
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

650


<!-- page 651 -->
key: Origin
value: '{{logikOriginHeader}}' type: text
url:
raw: '{{logik}}{{configId}}/bom' host:
'{{logik}}{{configId}}' path:
bom response: []
name: 'Logik: Save' event:
listen: test script:
exec:
"var jsonData = JSON.parse(responseBody);\r"
"pm.collectionVariables.set(\"logikTotal\", jsonData.total);\r"
pm.collectionVariables.set("logikLineItems", jsonData.products);
type: text/javascript
request: auth:
type: bearer bearer:
- key: token
value: '{{logikAccessToken}}' type: string
method: PATCH header:
key: content-type value: application/json type: text
key: Origin
value: '{{logikOriginHeader}}' type: text
body:
mode: raw
raw: "{\r\n \"fields\": []\r\n}" options:
raw:
language: json
url:
raw: '{{logik}}{{configId}}?save=true' host:
'{{logik}}{{configId}}' query:
key: save value: 'true'
response: []
name: '(Optional): Logik: Reconfigure' event:
listen: test script:
exec:
"var jsonData = JSON.parse(responseBody);\r"
pm.collectionVariables.set("configId", jsonData.uuid); type:
text/javascript
request: auth:
type: bearer bearer:
- key: token
value: '{{logikAccessToken}}' type: string
method: POST header:
key: Origin
value: '{{logikOriginHeader}}' type: default
key: Authorization
value: Bearer Armqrz8jv-1C05mcWmcrDnXZlV9bbOTmGg type: default
disabled: true body:
mode: raw
raw: "{\r\n \"sessionContext\": {\r\n \"stateful\":
true\r\n },\r\n \"partnerData\": {\r\n \"product\": {\r\n
\"configuredProductId\" options:
raw:
language: json
url:
raw: '{{logik}}' host:
- '{{logik}}' response: []
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

651


<!-- page 652 -->
For more information about ServiceNow CPQ APIs, see the following eight-slide presentation:
CPQ APIs

.

Authenticating ServiceNow CPQ API calls
Secure ServiceNow CPQ API calls with admin API keys, JWT tokens, session cookies, or Google
IdP for runtime and Admin tasks.

Authenticating runtime API calls
When using ServiceNow CPQ in a headless manner, you authenticate your configuration session
by using a runtime client. To create a runtime client, navigate to the ServiceNow CPQ Admin UI,
click Utilities in the sidebar, and then click Runtime Clients. From here, specify the origin of your
call, whether it is an external URL or an origin specified in the header of your call. You can also
give your client an expiration date. After you save your client, you can copy the token and use it
as the bearer token in other runtime API calls.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

652


<!-- page 653 -->
For more information on ServiceNow CPQ runtime calls, see Intro to runtime API calls.

Authenticating admin API calls
There are four ways to authenticate your admin API calls:
• Admin API keys
Admin API keys are the recommended way of authenticating admin API calls. For information
about setting up admin API Keys, see:
ServiceNow CPQ: admin API Keys

.

• JWT token
To ensure tighter security for long-term admin API authentication, we leverage the Salesforce
JWT web token. For steps to initialize this access flow, see:
Admin APIs: Authentication using a Salesforce-connected app
• Session cookies
To authenticate a short term admin session, you can leverage your browser’s
session cookie. Navigate to the cookies in your browser’s console, and take
the session cookie. Enter the cookie in your request header as a keyed pair:
"Cookie”:”SESSION=<yourSessionCookie>"

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

653


<!-- page 654 -->
• Google IdP
If you are not connected to a Salesforce environment and choose not to use admin API keys,
you can use Google IdP to authenticate. If you do not use Google IdP, open a support case to
discuss options for admin API authentication.

Note: Create a support case by using the ServiceNow Support portal
instructions, see Create a case on Now Support for CPQ Customers

. For step-by-step
.

Intro to admin API keys
You can use admin API calls to access Admin functionality without using the Admin UI interface
and a browser.
ServiceNow CPQ provides admin API keys that you can use to access admin functionality via API
calls instead of using a browser and the ServiceNow CPQ Admin interface.
For an introduction to ServiceNow CPQ admin API keys, view the following video:
Admin API keys

Admin API keys page
To get to the Admin API Keys page in ServiceNow CPQ, click the arrow to expand the Utilities
section in ServiceNow CPQ Admin. The Admin API Keys tab appears in the menu.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

654


<!-- page 655 -->
Add an admin API key
To add a new admin API key, click New at the top of the screen.

All parameters are required.
1. Name: the name of the admin API key
2. User ID
3. Expiration Date: the expiration date of the key
4. Permissions: the permissions assigned to the key
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

655


<!-- page 656 -->
Choose the permissions that fit your use case before clicking Save.

Admin API key permissions

1. Read (required, default): read-only access, typically for GET requests
2. Edit: create, read, update, and delete access for most objects, including fields and rules
3. Deploy: allows the deployment of blueprints and access to deployment history
4. Bulk: allows importing and exporting data, such as managed tables, to and from ServiceNow
CPQ
5. Admin: full permissions to all Admin functionality
6. End User Data: access to end user data APIs
When you are finished assigning permissions, click Save. The dialog box updates to show the
new admin API key.

1. View the admin API key
2. Copy the key to the clipboard
3. Close the dialog box
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

656


<!-- page 657 -->
Important: You can copy an admin API key only when it is created. Make sure to copy
and store the key.

Accessing admin APIs by using API keys
To use an admin API key in API requests, use the API key with Bearer Token authentication.
• Header: Authorization Header
• Key: authorization
• Value: Bearer <Admin API key>
Example header:
authorization: Bearer Qda_UdoiYipb15Le11En8axEuN71FA6Vt_cw
When you use an admin API key, you use different endpoints to access the admin APIs.
• For general Admin endpoints (/a/Admin/…) the endpoint to use is (/api/Admin/…).
For example (retrieving a list of rules):
◦ API call in Admin UI: /a/Admin/v3/rules?page=0&size=100&sort=modified
%2CDESC
◦ API call using Admin Keys: /api/Admin/v3/rules?
page=0&size=100&sort=modified%2CDESC
• For managed table endpoints (/a/managed_tables/…) the endpoint to use when
accessing with an API key is (/api/managedTables/…)
For example (retrieving the schema of a managed table):
◦ API call in Admin UI: /a/managed_tables/v1/managedTables/{tableName}/
metadata
◦ API call using Admin Keys: /api/managedTables/v1/managedTables/
{tableName}/metadata
Related topics
Admin APIs: Authentication using a Salesforce-connected app
Admin APIs: Authentication using a Salesforce-connected app
We recommend that you use admin API keys to authenticate admin API calls. An older method is
documented here.
ServiceNow CPQ administration APIs are useful to facilitate new product introduction, data
transfer, test-to-production operations, and so on. For use cases in which ServiceNow CPQ
leverages Salesforce for user authentication, this article walks you through the steps required
to build a Salesforce connected app and retrieve a JSON web token [JWT] that can be used to
authenticate calls to ServiceNow CPQ administration APIs.

Note:
• The release of admin API Keys has made this setup unnecessary and is now the
recommended method of authentication of admin API calls. See Intro to admin API keys.
• The JWT method that was recommended before February 2025 has been deprecated by
Salesforce. Instead, follow the updated steps in this article.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

657


<!-- page 658 -->
The JWT can be used as a bearer token to authenticate ServiceNow CPQ administration APIs to
manipulate managed tables, write rules, deploy blueprints, and more.

Creating or updating a connected app for JWT authentication
If youʼre updating an existing app, these instructions assume that youʼve created a connected
app following the instructions in the legacy asset token flow.
1. Go to Salesforce Setup, Apps → App Manager.
2. Create a new connected app, or update your existing JWT app to match the image below.

3. Click Manage in your JWT connected app.
4. Edit policies.
◦ There will be a new section labeled Client Credentials Flow. Select your integration user in
the Run As option.
◦ There will be a second new section labeled JWT-Based Access Token Settings for Named
Users. Check Issue JSON Web Token (JWT)-based access tokens, and select a default
timeout.
◦ Click Save. Your policies should resemble the following:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

658


<!-- page 659 -->
Generating the JWT
The following Postman collection can be used to generate a JWT for your instance:
https://logikio.atlassian.net/wiki/spaces/CS/pages/1615036449/Admin+APIs+Authentication
+via+Salesforce+Connected+App
For in-depth instructions, see:
OAuth 2.0 Client Credentials Flow for Server-to-Server Integration
You can find the client ID and secret by viewing the Consumer Key and Secret → Manage
Consumer Details field in the connected app you created above.
Note that a single call to Salesforce generates a token. Based on the Issue JSON Web Token
(JWT)-based access tokens for named users setting in your connected app, the access token
returned here is a JWT that you can use as a bearer token for ServiceNow CPQ APIs.
Admin APIs: Blueprint import and export
You can export a blueprint to back it up, or export and import a blueprint to move it from one
ServiceNow CPQ environment to another.
The ServiceNow CPQ blueprint admin APIs provide the import and export API calls for working
with blueprints. Common use cases include migrating blueprints across ServiceNow CPQ
environments and backing up blueprints. To view the ServiceNow CPQ blueprint admin APIs,
see:
ServiceNow CPQ blueprint admin APIs
For a comprehensive list of all ServiceNow CPQ APIs, see the ServiceNow CPQ API Reference:
API documentation introduction.
You can also view the ServiceNow CPQ open source API documentation on Github:
https://github.com/opensource/API-Documentation
To learn how to set up admin API keys for calling blueprint APIs, see:
Intro to admin API keys

Blueprint export APIs
To export a blueprint via the APIs, the Export blueprint call passes the variable name of the
blueprint to start the export job. In response, the call receives a Job ID that can be queried to
retrieve the status and to download the blueprint as a ZIP file.
The sequence of API calls to export and download a blueprint is:
1. Export the blueprint
Use the blueprint variable in the payload to initiate the export. The Job ID can be polled for the
status of the export.
2. Check the job status
To check the status, use the Job ID that is returned after the export call. When the status is
COMPLETED, proceed to step 3.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

659


<!-- page 660 -->
3. Download the export
Use the same Job ID to download a ZIP file that contains the blueprint.
To view the source code for the Export blueprint call, see the openSource API documentation
from the Github.
Export blueprint call

Blueprint import APIs
To import a blueprint, the Import blueprint call passes a ZIP file of the blueprint to begin an import
job.
The sequence of API calls to import a blueprint is:
1. Import the blueprint
Select the ZIP file that includes the blueprint. The Job ID can be polled for the status of the
import.
2. Checkthe job status
To check the status, use the Job ID that is returned after the import call. When the status is
SUCCESS, the job is complete.
To view the source code for the Import blueprint call, see:
Import blueprint call
Admin APIs: Managed tables
Information about APIs that interact with managed tables
Use Admin API keys to interact with the ServiceNow CPQ APIs for managed tables. Bulk-level
permissions are necessary for your admin API key to authenticate calls related to managed
tables. For more information on these APIs, see the full API documentation:
ServiceNow CPQ API documentation
The following Postman collection demonstrates how to retrieve and manipulate table metadata
and data using the deprecated JWT authorization noted below:
Postman Collection managed tables APIs
The following operations are demonstrated in this collection:
• Retrieving a list of all tables defined in an environment
• Manipulating table metadata (schema)
◦ Retrieving table metadata
◦ Uploading table metadata
◦ Adding table metadata
◦ Deleting table metadata
• Manipulating table data
◦ Retrieving table data
◦ Adding a table data row
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

660


<!-- page 661 -->
◦ Updating a table data row
◦ Deleting a table data row
◦ Uploading table data via CSV
◦ Exporting table data to CSV
◦ Getting the status of an export job
◦ Replacing a table
All calls use JWT authorization. The bearer token is stored in the global variable
{{logik_admin_BearerToken}}. For instructions for generating JWT, see:
Admin APIs: Authentication using a Salesforce-connected app
Runtime APIs
ServiceNow CPQ provides a set of APIs for building front-end applications and manipulating
configurations. These are commonly referred to as buyside or runtime APIs and are used by
customers or end users to create, update and save ServiceNow CPQ configurations.
Runtime APIs support the standard create, read, update, and delete functions for ServiceNow
CPQ configurations, along with the ability to retrieve bill of materials (BOM) data from
ServiceNow CPQ.
To make ServiceNow CPQ runtime APIs accessible and provide a quick start to end developers,
see the open source repositories for API collections that can easily be imported and tested.

Runtime API setup
The base URL format for all runtime API calls is https://<tenant>.<sector>.<cpq>/
api/, where <tenant> is the listed tenant name and<sector> is the appropriate sector that
the environment is located on (usually test or prod).
In Salesforce, you can find the ServiceNow CPQ tenant URL by going into Setup, searching for
Custom Settings in the Quick Find box, and then clicking Manage next to ServiceNow CPQ
Tenant.
Runtime API calls are authenticated through a combination of a bearer token and the defined
origin in the runtime client. The origins of the runtime application are specified when a runtime
client is created in the ServiceNow CPQ Admin settings.
To authorize these API calls, you must add two headers to the each runtime API request:
Mandatory headers for runtime API requests
Header

Key

Value

Origin Header

origin

<runtimeClientOrigin>

Authorization Header

authorization

Bearer <runtimeToken>

Sample headers:
• origin: localhost
• authorization: Bearer vEqzz4BVkb15Le11En8axEuN71FA6Vt_cw

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

661


<!-- page 662 -->
Create a configuration
To start a new configuration via the APIs, the create configuration call passes the ID of the
configurable product. In response, it receives a ServiceNow CPQ configuration ID that can be
used to specify this configuration in later calls.
POST
HTTP method

POST

URL

https://<tenant>.<sector>.cpq/api/

Path parameters

N/A

Query parameters

N/A

The two key pieces of the payload are:
• The ID of a ServiceNow CPQ enabled product, with a blueprint that is deployed
• The ServiceNow CPQ configuration UUID that is being reconfigured
Sample URL:
https://dev1.test.cpq/api/
Sample payload:
{
"sessionContext":
{
"stateful": true
},
"partnerData":
{
"product":
{
"configuredProductId": "<Id of a Logik.io Enabled
Product>",
}
},
"fields": []
}

Note: The configuration can also be initialized by passing field values to the fields array in
the following format:
{
“variableName”: “<Field Name>”, “value”: “<Field Value>”
}
Sample response:
{
"fields": [<ARRAY OF FIELD OBJECTS>],
"uuid": "08176434-9b1e-4fc8-b2c4-8aba2c35fda3",
"revision": 0,
"relatedChanges":
[
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

662


<!-- page 663 -->
{
"key": "products",
"type": "PRODUCT"
}
],
"valid": true,
"messages": [],
"productChange": true,
"products": [<ARRAY OF PRODUCTS IN CONFIGURATION>],
"total": 30,
"layouts": [<ARRAY OF LAYOUTS>]
}

Reconfigure a configuration
The reconfigure API call is similar to the create configuration call. The reconfigure call passes the
ID of the configurable product and an existing ServiceNow CPQ configuration ID, and in return
receives a new Configuration ID with the same field data as the prior configuration but allowing
for changes to be made.

Note: The UUID field in the response payload contains the new ServiceNow CPQ
configuration ID. The new configuration ID should be used for all operations going forward
in the reconfiguration process, including update, save, and retrieve BOM.
POST
HTTP method

POST

URL

https://<tenant>.<sector>.cpq/api/

Path parameters

N/A

Query parameters

N/A

The two key pieces of the payload are:
• The ID of a ServiceNow CPQ enabled product, with a blueprint that is deployed
• The ServiceNow CPQ configuration UUID that is being reconfigured
Sample URL:
https://dev1.test.Logik/api/
Sample payload:
{
"sessionContext":
{
"stateful": true
},
"partnerData":
{
"product":
{
"configuredProductId": "<Id of a Logik.io Enabled
Product>",
"configurationAttributes":
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

663


<!-- page 664 -->
{
"LGK__ConfigurationId__c": "<uuid>"
}
}
},
"fields": []
}
Sample response:
{
"fields": [<ARRAY OF FIELD OBJECTS>],
"uuid": "d98d60cd-9379-4b7b-86fd-de828c340f80",
"revision": 0,
"relatedChanges":
[
{
"key": "products",
"type": "PRODUCT"
}
],
"valid": true,
"messages": [],
"productChange": true,
"products": [<ARRAY OF PRODUCTS IN CONFIGURATION>],
"total": 30,
"layouts": [<ARRAY OF LAYOUTS>]
}

Update a configuration
Updating a configuration requires a configuration to be loaded using either the create
configuration or reconfigure API calls. The Update Configuration call passes a ServiceNow
CPQ Configuration ID and any desired field values, and in response receives the updated
configuration from ServiceNow CPQ.
PATCH
HTTP method

PATCH

URL

https://<tenant>.<sector>.cpq/api/

Path parameters

N/A

Query
Parameters

Name

Allowed Value

Required?

Default if not
specified

delta

true | false

optional

true

save

true | false

optional

false

Query parameters:

delta
If delta=true, ServiceNow CPQ sends back only data that has changed based on the update that
was sent. This is the default behavior.
If delta=false, ServiceNow CPQ sends back the entire configuration and BOM data in response.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

664


<!-- page 665 -->
save
If save=true, ServiceNow CPQ saves this configuration and (depending on the settings) performs
additional actions such as sending the data to a webhook or writing the data into custom objects
in Salesforce. This is the behavior of the save configuration call.
If save=false, ServiceNow CPQ updates this configuration and sends the updated data back in
the response. This is the default behavior, and this is the behavior of the update call.
Sample URL:
https://dev1.test.logik.io/api/fbc3d32c-7f86-4461b144-986a0e8a5768
Sample payload:
{
"fields":
[
{
"variableName": "orderQty",
"value": 3
}
]
}
Sample response:
{
"fields": [],
"uuid": "fbc3d32c-7f86-4461-b144-986a0e8a5768",
"revision": 0,
"relatedChanges":
[
{
"key": "products",
"type": "PRODUCT"
}
],
"valid": true,
"messages": [],
"productChange": true,
"products": null
}

Save a configuration
Saving a configuration is a subset of the update configuration. It requires a configuration to be
loaded using either the create configuration or reconfigure API calls. The save configuration
call passes a ServiceNow CPQ configuration ID and any desired field values, and in response
receives the updated configuration from ServiceNow CPQ.

Note: The only difference between a normal update call and a save call is the addition

of the query parameter save=true in the URL. If set to false or excluded, this is a normal
update call.
If you are using Salesforce as a backend, when the save API is called, ServiceNow CPQ
asynchronously creates and populates the ServiceNow CPQ custom objects Configuration Field
Data Sets and Configuration Line Items with the appropriate data.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

665


<!-- page 666 -->
If your ServiceNow CPQ instance has a webhook configured, when the save API is called, the
data is sent to the endpoint specified in the webhook setting. See Webhooks.

Note: This ends the configuration session. Further edits or updates to the configuration
must be started from the create configuration or reconfigure API calls.
PATCH
HTTP method

PATCH

URL

https://<tenant>.<sector>.cpq/api/

Path parameters

N/A

Query
Parameters

Name

Allowed Value

Required?

Default if not
specified

delta

true | false

optional

true

save

true | false

optional

false

Query parameters:

delta
If delta=true, ServiceNow CPQ sends back only data that has changed based on the update that
was sent. This is the default behavior.
If delta=false, ServiceNow CPQ sends back the entire configuration and BOM data in response.

save
If save=true, ServiceNow CPQ saves this configuration and (depending on the settings) performs
additional actions such as sending the data to a webhook or writing the data into custom objects
in Salesforce.
If save=false, ServiceNow CPQ updates this configuration and sends the updated data back in
the response. This is the behavior of the update call.
Sample cURL request:
curl --location --request PATCH
'https://mpanigrahi-demo.demo01.logik.io/api/6d0ef6fd-4c88-44
f3-a296-b03421c369c6' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'Origin: https://mpanigrahi-demo.demo01.logik.io' \
--header 'Authorization: <<RUNTIME TOKEN>>' \
--header 'Cookie:
LGKSESSION=NDA5OWJmNmEtNDhhOS00YTc4LTk3ODktZTg0OGYyOGIwMjZk' \
--data
'{"fields":[{"variableName":"name_d1","value":"megha","dataType
":"text"}],"responseState":{"setPagination":{"collections":{"pag
eSize":10,"pageNumber":0},"fields":{"pageSize":10,"pageNumber":0
},"componentTypes":{"pageSize":10,"pageNumber":0}},"defaultPagin
ation":{"pageSize":10,"pageNumber":0},"searchValues":{}}}'
Sample response:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

666


<!-- page 667 -->
{
"fields": [<ARRAY OF FIELD OBJECTS>],
"uuid": "8817655d-7a11-41ef-a9fd-59c2855a3e4b",
"revision": 1,
"valid": true,
"messages": [],
"productChange": false,
"products": [<ARRAY OF PRODUCTS IN CONFIGURATION>],
"total": 0
}

BOM APIs
The BOM APIs are useful for retrieving the final output of configuration. The BOM APIs can be
used to retrieve the entire BOM, or specific subsets, such as sales or manufacturing BOMs.
The Get BOM call passes a ServiceNow CPQ Configuration ID and in return receives the current
BOM generated by the current state of the configuration. There are 3 built in BOM types: “all”,
“sales” and “manufacturing”. Additional BOM types can be dynamically added by setting the
bomType field on the product.

Note: If the BOM type is not included, the API returns the entire BOM.
GET
HTTP method

GET

URL

https://<tenant>.<sector>.cpq/api/<uuid>/bom/<bomType>

Path Parameters

Name

Allowed Value

Required?

<uuid>

32 character
ServiceNow CPQ
configuration UUID

required

<bomType>

name of the BOM to
retrieve

optional

Query parameters

N/A

Sample response:
{"products": [
{
"id": "01t5f000006QKysAAG",
"quantity": 1,
"bomType": "Sales",
"orderNumber": 10,
"type": "accessory",
"name": "Amend Flow Bundle Sub",
"partnerId": "01t5f000006QKysAAG",
"productCode": "AFBC-SC",
"externalId": "",
"productFamily": "Miscellaneous",
"description": "",
"uom": "",
"price": 5,
"extPrice": 5,
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

667


<!-- page 668 -->
"level": 0,
"rollUpPrice": 5
},
{
"id": "01t5f000006QKz2AAG",
"quantity": 1,
"bomType": "Sales",
"orderNumber": 20,
"type": "accessory",
"name": "Amend Flow Bundle Asset",
"partnerId": "01t5f000006QKz2AAG",
"productCode": "AFBC2-SC",
"externalId": "",
"productFamily": "Miscellaneous",
"description": "",
"uom": "",
"price": 25,
"extPrice": 25,
"level": 0,
"rollUpPrice": 25
}
]}
For information about additional configuration APIs and sample scenarios, see Additional
configuration APIs.
Additional configuration APIs
These ServiceNow CPQ configuration APIs let you retrieve or delete an existing configuration.
They complement the runtime APIs and are useful for viewing full configuration details and for
removing configurations no longer needed. Use them alongside the standard create, update,
reconfigure, and BOM APIs to support end-to-end configuration workflows.
This article is a followup to Runtime APIs. For more information on authentication and setup,see
that article.
These API endpoints to get a configuration and delete a configuration from ServiceNow CPQ are
included for completeness.

Get configuration
ServiceNow CPQ configurations can be retrieved from the ServiceNow CPQ servers by sending
a GET request, which will return the entire configuration in the response. If you only need the
product data of the outputs, consider using one of the GET BOM API calls.

Note: This does not load a configuration into the ServiceNow CPQ rules engine for
updates to fields and re-running of rules. If you need to make updates to an existing
configuration, use the Reconfigure API call.
The GET request
HTTP method

GET

URL

https://<tenant>.<sector>.cpq/api/<uuid>

Path parameters

<uuid>

32 character
ServiceNow CPQ
configuration UUID

required

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

668


<!-- page 669 -->
The GET request (continued)
HTTP method

GET

Query parameters

N/A

Sample URL:
https://dev1.test.cpq/api/71e62fe7-e59b-4a91-94af-64718e0d4eae
Sample response:
{
"fields": [<ARRAY OF FIELD OBJECTS>],
"uuid": "08176434-9b1e-4fc8-b2c4-8aba2c35fda3", "revision": 0,
"relatedChanges": [
{
"key": "products",
"type": "PRODUCT"
}
],
"valid": true, "messages": [], "productChange": true,
"products": [<ARRAY OF PRODUCTS IN CONFIGURATION>],
"total": 30,
"layouts": [<ARRAY OF LAYOUTS>]
}

Delete configuration
ServiceNow CPQ configurations can be deleted, but it is not typically necessary. This API deletes
the configuration from ServiceNow CPQ and will not be available for future retrieval of the
configuration, BOM, or updates to the configuration.

Note: This API will only delete the configuration from the ServiceNow CPQ servers. If the
configuration has been persisted in another application (i.e. Quotelines have been created
in Salesforce, Orders have been placed in Ecommerce), no changes will be made to that
data.
The DELETE request
HTTP method

DELETE

URL

https://<tenant>.<sector>.cpq/api/<uuid>

Path parameters

<uuid>

Query parameters

N/A

32 character
ServiceNow CPQ
configuration UUID

required

Sample URL:
https://dev1.test.cpq/api/71e62fe7-e59b-4a91-94af-64718e0d4eae
Sample response:
{}

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

669


<!-- page 670 -->
Sample use cases
A new customer comes to a website, configures a product, and checks out.
1. Start a new configuration → Create New Configuration API call
2. Make updates to the configuration → Update Configuration API call
3. Save the final configuration back to ServiceNow CPQ → Save Configuration API call
A customer returns and wants to place an order for a product similar to one that they have
purchased before.
1. Perform a reconfiguration, using an existing ServiceNow CPQ Configuration Id → Reconfigure
API Call
2. Save back to ServiceNow CPQ → Save Configuration API call
An order for a complex manufactured product is placed, and the engineering team needs to
know what parts they need and which sub-assemblies to build.
Retrieve the “Manufacturing” bill of materials for an existing configuration → Get BOM API call.
The RFQ (Request for Quote) API
ServiceNow CPQ adds additional functionality to the Salesforce CPQ package APIs. This
functionality lets you add products and data to an existing Salesforce CPQ quote.
As part of the ServiceNow CPQ integration package with Salesforce CPQ, ServiceNow CPQ
provides an API to add a ServiceNow CPQ configured product, sales BOM products and BOM
data to a new or existing Salesforce CPQ quote (SBQQ__Quote__c). This provides ServiceNow
CPQ functionality in addition to the Salesforce CPQ package APIs.
Salesforce CPQ package APIs
View a video about the Request for Quote API:
https://youtu.be/e0nxEITIzq8

URL and endpoint
Two HTTP methods are exposed for the endpoint:
• POST for creating a new quote and adding a product and configuration
• PATCH for adding a new product and configuration to an existing quote
This API is exposed as an Apex Rest Service in the Salesforce org with a path of
/services/apexrest/LGK/request-quote: for example, https://
<yourInstance>.salesforce.com/services/apexrest/LGK/request-quote,
where <yourInstance> is the personal domain of your Salesforce org.

Setup and authorization
This API is exposed in the Salesforce org and requires authorization with Salesforce to be
accessed and called. See Salesforce Help on Authorization options for making API calls . This
API can also be tested using the Salesforce Workbench Application .
In ServiceNow CPQ, the only step is to ensure that in Admin settings, Push BOM Data to
ServiceNow CPQ Salesforce Object is enabled. ServiceNow CPQ uses the data stored in the
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

670


<!-- page 671 -->
Configuration Line Items (LGK__ConfigurationLineItem__c) to create any additional sales BOM
lines on the quote and write the BOM Data field on the quote line.

Note: The API will also respect normal Salesforce user access levels, so if the
authenticated Salesforce user (or a partner site itself, via sharing settings) does not have
certain object or field level access, the API call may fail or not behave as expected. The user
calling the API needs access to the standard Salesforce CPQ and related objects as well as
the ServiceNow CPQ Configuration Line Item object and its fields.
A short list of necessary objects includes:
• Pricebook
• Product feature (for the “Dynamic” feature on the product)
• Quote
• Product
• Quote line
• Config Line Item
If there is an issue with the API, make sure the user not only has access to the object or fields,
but also to the specific record. This is always true, but because partner profiles start off with less
access to records, they are more susceptible to the problem.
To use these APIs, create and save a ServiceNow CPQ configuration, making note of the
configuration ID that will be used for the calls. Also copy the product ID of the configurable
product that was used to create the configuration demo.

Create new quote and add product
The create quote and add product API call can be very useful if ServiceNow CPQ is being used
outside the traditional Salesforce CPQ context. This can enable an omni channel experience
without exposing end users to the Salesforce CPQ Quote Line Editor.
POST
HTTP method

POST

URL

https://<yourInstance>.salesforce.com/
services/apexrest/LGK/request-quote

Path parameters

N/A

Query parameters

N/A

The required parameters in the request body are:
configurableProductId
The ServiceNow CPQ enabled configurable product ID
configurationId
The ServiceNow CPQ configuration UUID received after saving a configuration
pricebookId
The Salesforce ID of the Pricebook2 record that has a valid pricebook entry for the
product

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

671


<!-- page 672 -->
•–
•–
•–
If included, accountId and opportunityId are populated on the newly created quote.
Sample URL: https://demoloik.my.salesforce.com/services/apexrest/
LGK/request-quote
Sample request payload:
{
"configurableProductId": "01t5f000003w24zAAA",
"configurationId": "eeec456c-a4f6-407a-94b1-03e8b6cf29ea",
"pricebookId": "01s5f000000AsLDAA0" }
Sample response:
{
"attributes" : {
"type" : "SBQQ__Quote__c",
"url" :
"/services/data/v57.0/sobjects/SBQQ__Quote__c/a0q5f0000057YAYA
A2"
},
"Name" : "Q-00162",
"Id" : "a0q5f0000057YAYAA2",
"SBQQ__LineItemCount__c" : 3,
"SBQQ__LineItems__r" : {
"totalSize" : 3,
"done" : true,
"records" : [ {
"attributes" : {
"type" : "SBQQ__QuoteLine__c",
"url" :
"/services/data/v57.0/sobjects/SBQQ__QuoteLine__c/a0m5f000007ZY
r6AAG"
},
"SBQQ__Quote__c" : "a0q5f0000057YAYAA2",
"Id" : "a0m5f000007ZYr6AAG",
"Name" : "QL-0001001",
"SBQQ__ProductName__c" : "AFB"
}, {
"attributes" : {
"type" : "SBQQ__QuoteLine__c",
"url" :
"/services/data/v57.0/sobjects/SBQQ__QuoteLine__c/a0m5f000007ZY
r7AAG"
},
"SBQQ__Quote__c" : "a0q5f0000057YAYAA2",
"Id" : "a0m5f000007ZYr7AAG",
"Name" : "QL-0001002",
"SBQQ__ProductName__c" : "Simple Amend Child Subscription"
}, {
"attributes" : {
"type" : "SBQQ__QuoteLine__c",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

672


<!-- page 673 -->
"url" :
"/services/data/v57.0/sobjects/SBQQ__QuoteLine__c/a0m5f000007ZY
r8AAG"
},
"SBQQ__Quote__c" : "a0q5f0000057YAYAA2",
"Id" : "a0m5f000007ZYr8AAG",
"Name" : "QL-0001003",
"SBQQ__ProductName__c" : "Simple Amend Child Asset"
} ]
},
"SBQQ__Type__c" : "Quote"
}

Add product to quote
The Add Product to Quote API can be used when additional configurations are added to a
single quote, either generated through the normal CPQ flow, through manual record creation, or
through one that has already been created using the Create New Quote API above.
PATCH
HTTP method

PATCH

URL

https://<yourInstance>.salesforce.com/
services/apexrest/LGK/request-quote

Path parameters

N/A

Query parameters

N/A

The required parameters in the request body are:
configurableProductId
the ServiceNow CPQ enabled configurable product ID
configurationId
The ServiceNow CPQ configuration UUID received after saving a configuration
quoteId
The Salesforce ID of the SBQQ__Quote__c record to add this configuration to
If included, quoteLineGroupId adds the newly created quote line to the specified quote line
group.
Sample URL: https://demologik.my.salesforce.com/services/apexrest/
LGK/request-quote
Sample request body:
{
"configurableProductId": "01t5f000002SwERAA0",
"configurationId": "8978145d-35ba-4633-8139-e305ea4b9874",
"quoteId": "a0q5f0000057YATAA2",
}
Sample response body:
{
"attributes": {
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

673


<!-- page 674 -->
"type": "SBQQ__Quote__c",
"url":
"/services/data/v57.0/sobjects/SBQQ__Quote__c/a0q5f000005MNDhA
AO"
},
"Name": "Q-00286",
"Id": "a0q5f000005MNDhAAO",
"SBQQ__LineItemCount__c": 1,
"SBQQ__LineItems__r": {
"totalSize": 1,
"done": true,
"records": [
{
"attributes": {
"type": "SBQQ__QuoteLine__c",
"url":
"/services/data/v57.0/sobjects/SBQQ__QuoteLine__c/a0m5f00000Ahs
ZsAAJ"
},
"SBQQ__Quote__c": "a0q5f000005MNDhAAO",
"Id": "a0m5f00000AhsZsAAJ",
"Name": "QL-0003664",
"SBQQ__ProductName__c": "Cloud Workload
Configurator"
}
]
},
"SBQQ__Type__c": "Quote"
}
Salesforce CPQ Extension APIs Postman Collection

:

{
"info": {
"_postman_id": "2562674d-051d-4663-b3ed-482e6be1b78f",
"name": "Logik Salesforce CPQ Extension APIs",
"schema":
"https://schema.getpostman.com/json/collection/v2.1.0/collectio
n.json""
},
"item": [
{
"name": "Salesforce Authentication",
"item": [
{
"name": "Salesforce Authentication",
"event": [
{
"listen": "test",
"script": {
"exec": [
"var jsonData = pm.response.json();",
"pm.collectionVariables.set(\"salesforce_access_token\",
jsonData.access_token);"
],
"type": "text/javascript"
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

674


<!-- page 675 -->
}
}
],
"request": {
"method": "POST",
"header": [],
"body": {
"mode": "formdata",
"formdata": []
},
"url": {
"raw":
"{{salesforce_domain}}/services/oauth2/token?username={{salesfo
rce_username}}&password={{salesforce_password}}&grant_type=passw
ord&client_id={{salesforce_client_id}}&client_secret={{salesforc
e_client_secret}}",
"host": [
"{{salesforce_domain}}"
],
"path": [
"services",
"oauth2",
"token"
],
"query": [
{
"key": "username",
"value": "{{salesforce_username}}"
},
{
"key": "password",
"value": "{{salesforce_password}}"
},
{
"key": "grant_type",
"value": "password"
},
{
"key": "client_id",
"value": "{{salesforce_client_id}}"
},
{
"key": "client_secret",
"value": "{{salesforce_client_secret}}"
}
]
}
},
"response": []
}
]
},
{
"name": "Logik CPQ Extension APIs",
"item": [
{
"name": "Create New Quote",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

675


<!-- page 676 -->
"request": {
"method": "POST",
"header": [
{
"key": "Content-Type",
"value": "application/json",
"type": "default"
}
],
"body": {
"mode": "raw",
"raw": "{\n
\"configurableProductId\":
\"{{configurableProductId}}\",\n
\"configurationId\":
\"{{configurationId}}\",\n
\"pricebookId\":
\"{{pricebookId}}\",\n
\"accountId\": \"{{accountId}}\",\n
\"opportunityId\": \"{{opportunityId}}\"\n}",
"options": {
"raw": {
"language": "json"
}
}
},
"url": {
"raw":
"{{salesforce_domain}}/services/apexrest/LGK/request-quote",
"host": [
"{{salesforce_domain}}"
],
"path": [
"services",
"apexrest",
"LGK",
"request-quote"
]
}
},
"response": []
},
{
"name": "Add to Existing Quote",
"request": {
"method": "PATCH",
"header": [
{
"key": "Content-Type",
"value": "application/json",
"type": "default"
}
],
"body": {
"mode": "raw",
"raw": "{\n
\"configurableProductId\":
\"{{configurableProductId}}\",\n
\"configurationId\":
\"{{configurationId}}\",\n
\"quoteId\": \"{{quoteId}}\",\n
\"quoteLineGroupId\": \"{{quoteLineGroupId}}\"\n}",
"options": {
"raw": {
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

676


<!-- page 677 -->
"language": "json"
}
}
},
"url": {
"raw":
"{{salesforce_domain}}/services/apexrest/LGK/request-quote",
"host": [
"{{salesforce_domain}}"
],
"path": [
"services",
"apexrest",
"LGK",
"request-quote"
]
}
},
"response": []
}
],
"auth": {
"type": "bearer",
"bearer": [
{
"key": "token",
"value": "{{salesforce_access_token}}",
"type": "string"
}
]
},
"event": [
{
"listen": "prerequest",
"script": {
"type": "text/javascript",
"exec": [
"let sfToken =
pm.collectionVariables.get('salesforce_access_token');",
"if(sfToken == null) {",
"
console.error('Run Salesforce Authentication
first')",
"}"
]
}
},
{
"listen": "test",
"script": {
"type": "text/javascript",
"exec": [
""
]
}
}
]
}
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

677


<!-- page 678 -->
],
"event": [
{
"listen": "prerequest",
"script": {
"type": "text/javascript",
"exec": [
""
]
}
},
{
"listen": "test",
"script": {
"type": "text/javascript",
"exec": [
""
]
}
}
],
"variable": [
{
"key": "salesforce_domain",
"value": "https://demologik6.my.salesforce.com"",
"type": "default"
},
{
"key": "salesforce_username",
"value": "",
"type": "default"
},
{
"key": "salesforce_password",
"value": "",
"type": "default"
},
{
"key": "salesforce_client_id",
"value": "",
"type": "default"
},
{
"key": "salesforce_client_secret",
"value": "",
"type": "default"
},
{
"key": "salesforce_access_token",
"value": ""
},
{
"key": "configurableProductId",
"value": "",
"type": "default"
},
{
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

678


<!-- page 679 -->
"key": "configurationId",
"value": "",
"type": "default"
},
{
"key": "pricebookId",
"value": "",
"type": "default"
},
{
"key": "accountId",
"value": "",
"type": "default"
},
{
"key": "opportunityId",
"value": "",
"type": "default"
},
{
"key": "quoteId",
"value": "",
"type": "default"
},
{
"key": "quoteLineGroupId",
"value": "",
"type": "default"
}
]
}
The CPQ Reconfigure API
The CPQ Reconfigure API headlessly invokes CPQ services to reconfigure a quote bundle.
The CPQ Reconfigure API is a custom Salesforce API that invokes CPQ services headlessly.
Unlike RFQ, this API is used to reconfigure an existing quote bundle.

Prerequisites
The Runtime Client Token must be set in the Admin Custom Settings page in Salesforce. The
token must include an origin that matches the ServiceNow CPQ URL, which cannot include a
trailing slash (/) character.
The Runtime Configuration URL must also be set in the Admin Custom Settings page. In most
cases, this should match the administration URL on the same page.
In Salesforce Setup, go to Security, and then to Remote Site Settings. Add a new remote site with
your ServiceNow CPQ domain as the URL.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

679


<!-- page 680 -->
Important: This API relies on uniqueIdentifier to match child lines. If you don't

have unique uniqueIdentifier values for products, child lines may update incorrectly.

API details
Endpoint: /services/apexrest/LGK/cpq-quote-lines/reconfigure

Note: Request endpoints and parameters are case sensitive.
Methods: Receives and returns application/json.
PATCH: The method currently only supports two fields, configurationId and
configurableQuoteLineId.
Response: A quote (SBQQ__Q__c) record.

Note: The quote info returned will include info on all quote lines, not just the ones being
added by the request. For example, if the configuration with three line items gets added to a
quote that already had two lines on it, the quote info returned will included all five lines.
Request example:
{
"configurationId":"86ec190e-cba8-4b1d-a2dc-ba47714a22b5",
"configurableQuoteLineId":"a137d00000977oWAAQ"
}
Response example:
{
"attributes": {
"type": "SBQQ__Quote__c",
"url":
"/services/data/v56.0/sobjects/SBQQ__Quote__c/a0zR0000003f3GLI
AY"
},
"Name": "Q-00090",
"Id": "a0zR0000003f3GLIAY",
"SBQQ__LineItemCount__c": 4,
"SBQQ__LineItems__r": {
"totalSize": 4,
"done": true,
"records": [
{
"attributes": {
"type": "SBQQ__QuoteLine__c",

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

680


<!-- page 681 -->
"url":
"/services/data/v56.0/sobjects/SBQQ__QuoteLine__c/a0vR0000005LP
RxIAO"
},
"SBQQ__Quote__c": "a0zR0000003f3GLIAY",
"Id": "a0vR0000005LPRxIAO",
"Name": "QL-0000122",
"SBQQ__ProductName__c": "LGK Machine"
},
{
"attributes": {
"type": "SBQQ__QuoteLine__c",
"url":
"/services/data/v56.0/sobjects/SBQQ__QuoteLine__c/a0vR0000005LP
RyIAO"
},
"SBQQ__Quote__c": "a0zR0000003f3GLIAY",
"Id": "a0vR0000005LPRyIAO",
"Name": "QL-0000123",
"SBQQ__ProductName__c": "Analytics Software"
},
{
"attributes": {
"type": "SBQQ__QuoteLine__c",
"url":
"/services/data/v56.0/sobjects/SBQQ__QuoteLine__c/a0vR0000005LP
S2IAO"
},
"SBQQ__Quote__c": "a0zR0000003f3GLIAY",
"Id": "a0vR0000005LPS2IAO",
"Name": "QL-0000124",
"SBQQ__ProductName__c": "Extended Warranty"
},
{
"attributes": {
"type": "SBQQ__QuoteLine__c",
"url":
"/services/data/v56.0/sobjects/SBQQ__QuoteLine__c/a0vR0000005LP
S3IAO"
},
"SBQQ__Quote__c": "a0zR0000003f3GLIAY",
"Id": "a0vR0000005LPS3IAO",
"Name": "QL-0000125",
"SBQQ__ProductName__c": "Scanner"
}
]
},
"SBQQ__Type__c": "Quote"
}
Requests can be made directly through Apex. The argument is a Map<String,Object> with
the same fields used in the REST API. For example:
Map<String, Object> requestBody = new Map<String, Object>{
'configurableQuoteLineId' => '01t8a000005hldvAAA',
'configurationId' => '79a3ffdd-7dd0-41f6-8700-4bd7506407c7'
};
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

681


<!-- page 682 -->
String result =
LGK.CpqReconfigureApiController.reconfigure(requestBody);
The response is a JSON formatted string representing the quote object, similar to the response
in the REST APIs.

Custom field mapping
If a field on the Quote Line object in Salesforce has a name that matches, custom values can be
written from the extended or pricing information in a ServiceNow CPQ product.
API calls for navigating sets in ServiceNow CPQ
Understand how to use sets in a headless environment using API calls.

Setup
The following set and fields were created for this example:
• Field: Example set field 1
◦ Picklist with options A, B, C
◦ Field variable: exampleSetField1
• Field: Example set field 2
◦ Boolean
◦ Field variable: exampleSetField2
• Set: Example set
◦ Contains Fields exampleSetField1 and exampleSetField2
◦ Variable name: exampleSet (therefore, size field is set.exampleSet.size)

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

682


<!-- page 683 -->
Row identifier and row index
Every time a set is expanded to include a new row, the new row has a row identifier and a row
index assigned to it. These are how you change the set.
• The row identifier starts at 1 and increases incrementally by 1. This number is used to add or
remove rows from the set.
• The row index starts at 0 and increases incrementally by 1. This number is used to adjust
values of Fields in the set.
After every API call that changes the set, the rows are organized. Due to the reorganization, the
row index and row identifiers are reassigned. This is explained in greater detail in the examples
below.

Changing the set size
There are two ways to change the number of rows in a set: by sending a single number, and by
sending specific values for the row identifiers.
The first way to change the number of rows in a set is to send a single number (the number of
rows) as the value of the size variable in the API call. This method offers less control, but is useful
if you know the total number of rows in the set you want to build. In the following example, the
number 6 is set as the value of the size and it creates row identifiers 1-6. To edit the fields in these
rows, you would use the row index numbers of 0-5.

The second way to edit the size of the array is to send values in the placeholder for each row
of the array. This is useful for adjusting the rows of the array with precision. Depending on what
values are added to the API call and their order, a combination of the following three changes will
occur:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

683


<!-- page 684 -->
• If the API call references a value that is not among the current row identifiers, it will create a
new row in the position of the new value.
• If the API call does not reference any value that is among the current row identifiers, the row
will be deleted from the array.
• If the API call references a value that is among the current row identifiers, it will put that array
row in the position of the row identifier in the API call.
Previously, the size of ExampleSet was set to 6, which resulted in the row identifiers [“1”,
“2”,”3”,”4”,”5”,”6”].
Now, the following API call is sent to the same environment:

When this call is sent, the following occurs:
• No row identifier is called “Newrow1”. Therefore, a new row ( with the fields in the row set to
defaults) is inserted before any known row identifiers. (This is the first change listed above.)
• A row identifier is called “5”. In the API call, it is in the second position (after NewRow1).
Therefore, it will move to the second row position. (This is the second change listed above.)
• No row identifier is called “7”. Therefore, a new blank row is inserted in position 3. (First
change.)
• The row identifiers “1”, “2”, “3”, “4”, and “6” are not referenced in the API call. Therefore, they
are deleted. (Third change listed above.)
When all changes from the API call are complete, the row identifiers are reset.

The following table shows this in greater detail, including the index values, which will be
discussed in the next section.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

684


<!-- page 685 -->
Array size modification example
Size field new
identifier

Value sent in API
call

Old row identifier

New index

Old index

1

Newrow1

Did not exist

0

Did not exist

2

5

5

1

4

3

7

Did not exist

2

Did not exist

1,2,3,4 and 6

Deleted

0,1,2,3 and 5

{deleted rows}

1,2,3,4 and 6
were not sent in
API call defining
size

Important details to note:
• After this API call, the row with row identifier 5 (and index 4) now has the row identifier 2 (and
an index of 1) that need to be used for all future API calls.
• Once a row is deleted from the array, it is deleted completely. So a new API call that references
row identifier 6 would be referencing a new row. All earlier data and changes to fields in row
identifier 6 are no longer relevant and cannot be referenced.
• This is helpful for changing the order of rows.
One final note: If the API patch call "variableName": "set.exampleSet.size", "value": ["Newrow1",
"5", "7"] is sent more than once, the three old rows are deleted and three new rows are created.
This would lose the data that was previously in 5.

Changing set fields
The next step is to define values for the fields in the set. Assume that the following call occurs
after the first size API patch sets the size to six rows. To change Example Set Field 1 and Example
Set Field 2 for several rows, the following code would be added to the fields section of an API
call:
{{
"set": "exampleSet",
"index": 0,
"variableName": "ExampleSetField1",
"value": "A"
},
{
"set": "exampleSet",
"index": 4,
"variableName": "ExampleSetField1",
"value": "B"
},
{
"set": "exampleSet",
"index": 4,
"variableName": "ExampleSetField2",
"value": "True"
},
{
"set": "exampleSet",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

685


<!-- page 686 -->
"index": 5,
"variableName": "ExampleSetField1",
"value": "C"
},
This would result in the following:
Set field change example 1
Row
Identifier

1

2

3

4

5

6

Index

0

1

2

3

4

5

example
SetField 1

A

B

C

example
SetField 2

True

If the second size API patch from above is sent, the following would result:
Set field change example 2
Size Field New
Identifier

1

2

3

Size Field Old
Identifier

{new row, see above}

5

{new row, see above}

Old Index

{new row}

4

{new row}

New Index

0

1

2

exampleSetField 1

B

exampleSetField 2

True

Webhooks
Webhooks are endpoints that can receive a POST request whenever a configuration is saved.
ServiceNow CPQ supports webhooks: endpoints that can receive a POST request when
a configuration is saved. Once a webhook has been configured, it is called on every save
configuration action.
To enable webhooks, log a case with support. Only one webhook can be created per ServiceNow
CPQ environment.

Note: Create a support case by using the ServiceNow Support portal
instructions, see Create a case on Now Support for CPQ Customers

. For step-by-step
.

Webhook use cases
Webhooks can be used to integrate data from ServiceNow CPQ to other downstream systems.
Use cases include:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

686


<!-- page 687 -->
• Displaying the ServiceNow CPQ native UI via direct URL and sending the config result, via
webhook, to a third-party destination. See:
Use case: Displaying the ServiceNow CPQ native UI via direct URL
• Sending config data directly to a quoting or order management system
• Pushing the configuration result to middleware that can manipulate the data and pass it along
to downstream systems
Webhook demo

Webhook setup

• When webhooks are enabled, they can be found in the Utilities menu in the ServiceNow CPQ
Admin screen.
• Summary: Webhook configuration is similar to external connections. The Name, Description
and Integration type can all be defined.
• Authentication: Webhooks support both no authentication (None) as well as bearer token
authentication (Bearer Token).
• Webhook Details: Additional details of the webhook can be specified as well to control the
behavior.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

687


<!-- page 688 -->
Webhook details

1. URL: The endpoint to receive the data from ServiceNow CPQ on save of a configuration. Must
be able to receive an HTTP POST request.
2. Async: When enabled, ensures that the end user is redirected immediately when a
configuration is completed and does not wait for a response from the server before exiting. The
save process is asynchronous.
When disabled, this ensures that the webhook process is resolved before the user is
redirected. The save process is synchronous.
3. Content: The data that ServiceNow CPQ should send to the endpoint.
◦ Config Data: all admin-created configuration fields and their input values
◦ BOM and System Fields: all system configuration fields and their values; the bill of materials
(as specified in the BOM Types input immediately below)
4. BOM Types: The BOM types to be sent in the request.
5. Timeout: The timeout value in milliseconds
6. Additional Headers: Additional headers that should be sent along with the request, entered as
quoted key value pairs. For example, "X-header1": "value1"

Example webhook body
The body that the webhook sends to the external resource looks like the following. This example
covers product pickers and the built-in system fields from an environment.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

688


<!-- page 689 -->
{
"uuid": "8014a955-49c4-4d63-a15a-8c91cef6f6f4",
"fields": [
{
"userEdited": false,
"dataType": "array",
"visibilityState": "visible",
"editable": "true",
"variableName": "pp",
"uniqueName": "pp",
"value": ["alpha"],
"optionSet": {
"selectedOptions": [
{
"label": "alpha",
"state": "visible",
"value": "alpha",
"imageUrl": null,
"orderNumber": 10
}
],
"options": [
{
"label": "alpha",
"state": "visible",
"value": "alpha",
"imageUrl": null,
"orderNumber": 10
},
{
"label": "beta",
"state": "visible",
"value": "beta",
"imageUrl": null,
"orderNumber": null
}
]
},
"rows": {
"content": [
{
"index": 0,
"fields": [
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "false",
"variableName": "pp.value",
"uniqueName": "pp-0-pp.value",
"value": "alpha",
"set": "pp",
"index": 0
},
{
"userEdited": true,
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

689


<!-- page 690 -->
"dataType": "boolean",
"visibilityState": "visible",
"editable": "true",
"variableName": "pp.select",
"uniqueName": "pp-0-pp.select",
"value": true,
"optionSet": {
"options": [
{
"label": "true",
"state": "visible",
"value": "true",
"imageUrl": null,
"orderNumber": null
},
{
"label": "false",
"state": "visible",
"value": "false",
"imageUrl": null,
"orderNumber": null
}
]
},
"set": "pp",
"index": 0
},
{
"userEdited": false,
"dataType": "number",
"visibilityState": "visible",
"editable": "true",
"variableName": "pp.quantity",
"uniqueName": "pp-0-pp.quantity",
"value": 1,
"set": "pp",
"index": 0
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "pp.data",
"uniqueName": "pp-0-pp.data",
"value": "",
"set": "pp",
"index": 0
}
],
"label": "alpha",
"state": "visible",
"value": "alpha",
"imageUrl": null,
"orderNumber": 10,
"productDetails": {}
},
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

690


<!-- page 691 -->
{
"index": 1,
"fields": [
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "false",
"variableName": "pp.value",
"uniqueName": "pp-1-pp.value",
"value": "beta",
"set": "pp",
"index": 1
},
{
"userEdited": false,
"dataType": "boolean",
"visibilityState": "visible",
"editable": "true",
"variableName": "pp.select",
"uniqueName": "pp-1-pp.select",
"value": false,
"optionSet": {
"options": [
{
"label": "true",
"state": "visible",
"value": "true",
"imageUrl": null,
"orderNumber": null
},
{
"label": "false",
"state": "visible",
"value": "false",
"imageUrl": null,
"orderNumber": null
}
]
},
"set": "pp",
"index": 1
},
{
"userEdited": false,
"dataType": "number",
"visibilityState": "visible",
"editable": "true",
"variableName": "pp.quantity",
"uniqueName": "pp-1-pp.quantity",
"value": 0,
"set": "pp",
"index": 1
},
{
"userEdited": false,
"dataType": "text",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

691


<!-- page 692 -->
"visibilityState": "visible",
"editable": "true",
"variableName": "pp.data",
"uniqueName": "pp-1-pp.data",
"value": "",
"set": "pp",
"index": 1
}
],
"label": "beta",
"state": "visible",
"value": "beta",
"imageUrl": null,
"orderNumber": null,
"productDetails": {}
}
],
"pageable": "INSTANCE",
"last": true,
"totalPages": 1,
"totalElements": 2,
"size": 2,
"number": 0,
"sort": { "empty": true, "sorted": false, "unsorted":
true },
"numberOfElements": 2,
"first": true,
"empty": false
}
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.productCode",
"uniqueName": "sys.productCode",
"value": "CC-LGK"
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "partner.quote.pricebookId",
"uniqueName": "partner.quote.pricebookId",
"value": ""
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "partner.quote.currencyIsoCode",
"uniqueName": "partner.quote.currencyIsoCode",
"value": "USD"
},
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

692


<!-- page 693 -->
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.productFamily",
"uniqueName": "sys.productFamily",
"value": ""
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.productDescription",
"uniqueName": "sys.productDescription",
"value": ""
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "partner.quote.id",
"uniqueName": "partner.quote.id",
"value": ""
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.productUOM",
"uniqueName": "sys.productUOM",
"value": ""
},
{
"userEdited": false,
"dataType": "number",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.productPrice",
"uniqueName": "sys.productPrice",
"value": 0
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.productName",
"uniqueName": "sys.productName",
"value": "CheckConfig"
},
{
"userEdited": false,
"dataType": "text",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

693


<!-- page 694 -->
"visibilityState": "visible",
"editable": "true",
"variableName": "partner.quote.lineId",
"uniqueName": "partner.quote.lineId",
"value": ""
},
{
"userEdited": false,
"dataType": "number",
"visibilityState": "visible",
"editable": "false",
"variableName": "pp.aggregates.quantity_sum",
"uniqueName": "pp.aggregates.quantity_sum",
"value": 1
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.productId",
"uniqueName": "sys.productId",
"value": "CC-LGK"
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.actionContext",
"uniqueName": "sys.actionContext",
"value": ""
},
{
"userEdited": false,
"dataType": "text",
"visibilityState": "visible",
"editable": "true",
"variableName": "sys.currentDate",
"uniqueName": "sys.currentDate",
"value": "2023-08-04"
}
],
"products": [
{
"id": "alpha",
"quantity": 1,
"bomType": "SALES",
"type": "accessory",
"extended": { "data": "" },
"pricing": {
"productSellingModelId": "OneTime_OneTime_2023_07_05",
"endDate": null,
"startDate": null,
"ProductId": "01tHr000007i4B5IAI",
"StartingUnitPriceSource": "System",
"ListPrice": 99.99,
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

694


<!-- page 695 -->
"TotalLineAmount": 99.99,
"ListPriceTotal": 99.99,
"StartingPriceTotal": 99.99,
"Quantity": 1.0,
"PricingTermCount": 1,
"NetUnitPrice": 99.99,
"StartingUnitPrice": 99.99,
"PricebookEntryId": "01uHr00000FYKDUIA5",
"TotalAdjustmentDistAmount": 0,
"TotalAdjustmentAmount": 0,
"TotalPrice": 99.99,
"SalesItemType": "Product"
},
"name": "alpha",
"partnerId": "01tHr000007i4B5IAI",
"productCode": "alpha",
"externalId": "",
"productFamily": "",
"description": "",
"uom": "",
"price": 99.99,
"extPrice": 99.99,
"level": 0,
"rollUpPrice": 99.99
}
],
"total": 99.99
}
The LocationLookup field
Any text type can be defined as a LocationLookup component display type, which lets you use
Google's API to pull address data.
The LocationLookup field component display type leverages Googleʼs Places API to pull address
data that can be used for unique location configuration and pricing. Any text field type can be
defined as a LocationLookup component display type by using the layout editor or by directly
editing a layout CSV file.

To see it in action, view the following video:
Location Lookup Field Component Display Type
To use a LocationLookup field, you first need to have a valid API key from Google with permission
to access Google Places. The API key must be configured for both the Maps JavaScript API and
the Places API.
The value of the field requires two properties: key and fieldMapping.
{
"key": API-Key-string,

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

695


<!-- page 696 -->
"fieldMapping":
{"[field1VariableName]":"[returnedPlaceType]","[field2VariableN
ame]":"[returnedPlaceType]"}
}
The key property refers to the API key.
Use the fieldMapping property to instruct the UI to map the returned place data to different fields
in the configuration. This property can take either a string or an object of key:value pairs (both
strings).
If a string is provided:
• The string should be the variable name of a field in the configuration
• The returned data from the API will be converted to a string and mapped to the field’s value
If an object is provided:
• The keys will be the variable name of the field in the configuration
• The values will be the JSON path to the data from the API that should be mapped to the field
For more details on what that data looks like, see: Place Details
When you map address components, these come back as an array of the different component
values, so there is no straightforward path. The UI expects something in the following format:
address_components.[component type]
Note that not every type listed is guaranteed to be returned by the place details API. To find the
supported types, see the following Google website:
Place Types
Example field value:
{
"key": "*********",
"fieldMapping": {
"formattedAddress": "formatted_address",
"sublocality": "address_components.sublocality",
"city": "address_components.locality",
"stateForLocation":
"address_components.administrative_area_level_1",
"zipCode": "address_components.postal_code"
}
}
This mapping also works in sets. Note that the location field, and all of the fields listed in the
mapping, must also be part of the set. Cross-index or global fields are not supported in a set.
Some common mappings from the Google Places API include:
• formatted_address (returns the whole address in human-readable form)
• address_components.locality (returns the city)
• address_components.administrative_area_level_1 (returns the state)
• address_components.country
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

696


<!-- page 697 -->
• address_components.postal_code
• address_components.street_number
• address_components.route (returns only the street name)
Set up Solution Configuration
Solution configuration lets ServiceNow CPQ admins link multiple blueprints into a single,
connected configuration session so that end users can work across related products without
relaunching the configurator. Configurable product actions trigger child configurations
automatically and can pass data between blueprints via field mappings.

Solution configuration overview
Solution configuration is an environment-level feature that links multiple blueprints into a
parent-child hierarchy. When a configurable product action rule is triggered during a buyer's
configuration session, a child configuration is created automatically. The buyer navigates
between configurations using the solution navigation sidebar, and the full bill of materials rolls up
across all configurations at the solution root.
Solution configuration is off by default. To enable solution configuration in your environment,
contact ServiceNow CPQ Support by using the ServiceNow Support portal . For step-by-step
instructions, see Create a case on Now Support for CPQ Customers .

Key features of solution configuration
Solution configuration includes several key features that support multi-blueprint management:
Field mapping
Field mapping defines which fields have data passed between blueprints. Field
mapping happens on creation of a child configuration or when a mapped source
field is changed. Fields are only mapped a single level — to continue the mapping,
define the mapped fields on each blueprint. Fields can only be mapped to the same
type of field (text to text, number to number, and so on). Entire sets and product
pickers cannot be mapped.
Node cloning
Node cloning lets you duplicate an existing, valid solution configuration node to use
as the starting point for a new node. When you clone a node, both the fields and
their values are copied, so end users don't have to re-enter configuration data for
each new node from scratch. Cloned nodes are fully independent of the original —
changes to a cloned node do not affect the source node, and vice versa. Cloning
is available from the solution configuration in a set using the navigation sidebar. A
node must be in a valid state before it can be cloned, which prevents incomplete
configurations from being duplicated. When you clone a node that has a dependent
set, a corresponding child node is created as part of the cloning operation.
Layout
Each solution component displays its own layout from the layouts associated with
the current blueprint. When in a solution, the header, background style, buttons,
and product list display come from the solution root layout that is defined in the root
blueprint. The solution navigation sidebar automatically appears when additional
configurable products are added during a configuration.
Bill of materials (BOM)
The bill of materials shows the items from the currently viewed configuration
and any child configurations below. The entire solution BOM can be viewed at
the solution root. The BOM hierarchy is still defined via the parent product and
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

697


<!-- page 698 -->
the unique identifier fields in product actions. It is independent of the solution
hierarchy, and one does not necessarily reflect the other. A child configuration may
add top-level items to the bill of materials.

Get started
Use the following topics to understand, set up, and work with solution configuration.
Set up solution configuration
Learn what solution configuration is, how it benefits administrators and end users,
and how the bill of materials, layouts, and field mapping work.
Solution configuration terms and considerations
Review key terminology, design limits, and field mapping rules before you start
configuring.
Enable solution configuration
Request environment enablement from Support and verify that configurable
product actions are available in the admin.
Create a configurable product action
Link a child blueprint to a parent blueprint so that a child configuration is created
when the action's condition is met.
Define field mappings for a solution configuration
Pass field values from the parent blueprint to the child blueprint when a child
configuration is created.
Node cloning for solution configuration
Duplicate an existing, valid configuration node in a set to use as the starting point
for a new node, preserving its field values and child hierarchy.

Potential errors with configurable product actions
Errors related to configurable product actions may include the following:
• The configurable product is not found
• The configurable product does not have a blueprint associated with it
• The configurable product does not have a deployed blueprint
• The blueprint does not exist
• The blueprint is not deployed
• The blueprint has changed
If you encounter any of these errors during configuration or testing, verify that your configurable
products are properly associated with deployed blueprints before proceeding.

Alternative approaches
Solution configuration is the recommended approach for linking multiple configurable products,
but consider these alternatives based on your requirements:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

698


<!-- page 699 -->
• Sets: Sets make it easy to handle large numbers of rows with potentially different
configurations. They support cloning rows, while set repeater layout options provide visual
similarity.
• Product pickers: Product pickers work well with lightly configurable products and can be
customized with additional fields and bulk actions.
• Multiple independent configurations: Depending on the downstream system, making multiple
independent configurations may provide more flexibility than a single solution configuration.

End user experience
When end users interact with a solution configuration, they experience a seamless workflow:
• Launching a solution: Users launch the configurable product they want to start from, just as
they do normally. Whichever configurable product is launched becomes the root product for
the solution.
• Adding configurable products: When any of the defined rules that have a configurable product
action are triggered, a new child configuration is created if a valid configurable product with a
deployed blueprint is found.
• Solution navigation: When additional configurable products are added to the configuration,
solution navigation becomes available and shows a list of the current configurable products,
including the root configurable product.
• Managing the solution: Changing the condition of a configurable product action rule to false
removes the configuration and configurable product, just as in a normal product action. This
also removes changes to fields, products, nested children, or other items.
• Viewing the bill of materials: When a configuration becomes a solution, the default product list
component is hidden and replaced by the View Full Solution button in all configurations. In a
solution, View Full Solution displays the entire solution BOM. Additional product lists added
as tiers reflect only the currently selected configurable product and any child configurations
below it.
Related topics
Node cloning for solution configuration
Solution configuration terms and considerations
Understand terminology, design considerations, and limits associated with solution
configuration, which lets ServiceNow CPQ admins manage multiple blueprints in a single
configuration.
Solution configuration gives ServiceNow CPQ admins the ability to create and manage multiple
blueprints that can work together in the end user side to provide a seamless configuration
experience. For users familiar with other vendors, this is conceptually similar to “system
configuration” and “nested bundles".

Terminology
Solution
The overall collection of blueprints (configurations) that are linked together. On the
buyside, a configuration becomes a solution when at least one child configuration is
added from a configurable product action.
Solution root

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

699


<!-- page 700 -->
The topmost configurable product in a solution has one or more child
configurations. This is the configurable product and blueprint that is started from
(launched from eCommerce, CPQ, or other sources) on the buyside.
Parent (Source) blueprint
A blueprint that includes a rule with a configurable product action for another
blueprint, hierarchically has at least one child blueprint, and may have parent
blueprints itself.
Child (Target) blueprint
A blueprint that is used to create a child configuration, hierarchically has at least
one parent, and may have children itself, if defined in rules. It must have a valid
configurable product associated with it to be used.
Configurable product action
An extension of the product action that defines the child blueprint, configurable
product, and (optionally) field mappings.
Field Mapping
A field that has the data be mapped between blueprints. Part of the configurable
product action.
Source field
The field on the parent blueprint that is used for the value in a field mapping.
Target field
The field on the child blueprint that has its value set from the field mapping.
Solution hierarchy
The relationship between configurable products (solution components) in a solution
configuration. This does not determine how products appear in the BOM.
Solution BOM
The bill of materials as a rollup across all the configurations. This contains all
the products that have been added across the solution, including children,
grandchildren, and so on. The solution bill of materials is what is returned upon
saving a solution.

Design considerations and limits
Solution configuration is still under active development.
• Field mapping:
◦ Data can flow only from parent to child configurations.
◦ Field values are only mapped down a single level at a time, such as parent to child, or child
to grandchild.
◦ Fields can only be mapped to the same type of field, such as picklist to picklist. You cannot
map picklist to text, or perform other type conversions in the mapping.
◦ Only number, text, Boolean, and picklist fields can be mapped.
▪ Mapping of an entire Set or entire product picker is not supported.
▪ Product picker subfields cannot be mapped to a field on the child.
▪ Fields that are in a set can be mapped to a field on the child.
◦ Any target fields are read only during configuration. The value is set to the same value of the
source field.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

700


<!-- page 701 -->
◦ A system field can be used as a source field, but cannot be set as a target field.
◦ System fields always reflect the values of the source configuration that started the
configuration.
• Layout and solution navigation:
◦ Navigation in a solution is done using the Solution Navigation sidebar. No additional
component or work needs to be done on a layout.
◦ Solution navigation: Users can also navigate to configurations by clicking the configurable
product in the solution BOM.
◦ The header and header actions in the layout of the solution root are used across all
configurations in a solution. This includes things like currency display settings and any
custom branding.
▪ Save (Quote) and Cancel actions in the header are not scoped to the currently viewed
blueprint. They apply to the whole solution.
▪ Reset, Validate (if a validation enrichment exists on the blueprint), and Change Layout
apply to the currently viewed blueprint.
• Configurable product actions:
◦ Configurable product actions are limited to adding only a single configurable product per
product action. If multiple configurable products are needed, use multiple product actions in
a rule.
◦ Once a product action has been marked as configurable, it cannot be changed back to a
simple product action.
◦ Configurable product actions are supported in simple and advanced product actions.
Advanced functions still have the product ID and the blueprint set outside of the advanced
script.
◦ Configurable product actions triggering conditions are placed in a set and create multiple
configurations.
• Limits
◦ The solution hierarchy supports a maximum depth of 4 (including the root product). The bill
of materials can have an arbitrary depth to the hierarchy.
◦ The total number of configurations in a single solution configuration session is 20: the
solution root, plus up to 19 active children across all depths.
◦ No circular references are allowed in the solution hierarchy. For example, when BP1>BP2,
BP2 cannot create another configuration of BP1.
• Product list and bill of materials:
◦ Bill of material: BOM hierarchy is still controlled via the parentProduct and
uniqueIdentifier properties in the product action. Therefore, different configurations
in a solution can add products at other levels in the BOM hierarchy.
◦ When using the parentProduct and uniqueIdentifier attributes for product
hierarchy, if two child products have the same parent product and product ID but should
both be displayed as separate in the BOM, each requires a unique identifier. This ensures
that the UI treats them as unique products when listing them.
◦ Product list: When a configuration becomes a solution, the default product list in the layout
goes away and is replaced by a View Full Solution button at the bottom of the Solution
Navigation sidebar.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

701


<!-- page 702 -->
▪ This behavior can be customized in the default product list component of the solution root,
in the Solution Settings section.
▪ Columns displayed in the solution BOM follow the settings in the default product list of the
solution root.
▪ To display an additional product list, add it in a tier in the layout of the blueprint. This
product list is scoped to that configuration and any child configurations.
Enable solution configuration
Enable solution configuration for an environment to let admins link multiple blueprints into
connected configuration sessions.

Before you begin

Solution configuration is an environment-level feature that is off by default. Contact Support with
your environment details to request enablement.
Open a ticket by using the ServiceNow Support portal
Create a case on Now Support for CPQ Customers .

. For step-by-step instructions, see

Role required: admin

About this task

Solution configuration must be enabled in each environment where you want to use it. After
Support enables it, admins can create configurable product actions and define field mappings in
that environment.

Procedure
1. Open a blueprint in the admin.
2. Navigate to the Rules section and add a product action.
Verify that Configurable Product Action is available in the action type selector.
Trouble?
If Configurable Product Action does not appear, confirm with Support that the correct
environment was enabled.

Result

Configurable product actions are available in the admin for the enabled environment. You can
now link blueprints to create solution configurations.

What to do next

After enabling solution configuration:
• To link your first parent and child blueprints, see Create a configurable product action.
• To review structural limits before designing a solution, see Solution configuration limits.
Related topics
Solution configurations
Create a configurable product action
Create a configurable product action to link a child blueprint to a parent blueprint so that a child
configuration is created when the action's condition is met.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

702


<!-- page 703 -->
Before you begin
• Solution configuration is enabled in your environment. For more information, see Enable
solution configuration.
• The parent blueprint and child blueprint are created and deployed.
• The configurable product associated with the child blueprint exists and has the correct
blueprint assigned to it.
Role required: admin

About this task

A configurable product action is a type of product action that, when its condition evaluates to
true, creates a child configuration using the specified blueprint. Each configurable product action
adds one child configuration. To add multiple child configurations from a single rule, add multiple
configurable product actions to that rule.

Important: Once you mark a product action as configurable, you cannot change it back
to a standard product action.

Procedure
1. Open the parent blueprint in the admin.
2. Navigate to the Rules section and open the rule where you want to add the configurable
product action.
3. Add a product action and set the action type to Configurable Product Action.
4. In the Product ID field, enter the product ID of the configurable product that the child
configuration represents.
5. In the Blueprint field, select the child blueprint to use for the child configuration.
If you are creating an advanced configurable product action, set the Product ID and Blueprint
fields outside the advanced script.
6. Set the condition for the action.
When the condition evaluates to true, the child configuration is created. When it evaluates to
false, the child configuration is removed.
7. Save and deploy the blueprint.

Result

When the condition is met during a buyer's configuration session, a child configuration using
the specified blueprint is added to the solution. The solution navigation sidebar appears in the
buyer's session when the first child configuration is added.

Example: Field descriptions
Configurable product action form
Field

Description

Product
ID

Product identifier of the configurable product to add when the condition is true. The
configurable product must have the target blueprint associated with it.

Blueprint

Child blueprint used to create the child configuration. The blueprint must be
deployed.

Condition Rule condition that triggers creation of the child configuration when it evaluates to
true, and removes the configuration when it evaluates to false.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

703


<!-- page 704 -->
What to do next

After creating a configurable product action:
• To pass field values from the parent blueprint to the child, see Define field mappings for a
solution configuration.
• To test the action, launch the product in the quoting application and verify that the child
configuration is created. See Launch a solution.
Related information
Field mapping in solution configuration
Solution configuration limits
Add configurable products to a solution
Define field mappings for a solution configuration
Define field mappings on a configurable product action to pass field values from the parent
blueprint to the child blueprint when a child configuration is created.

Before you begin
• A configurable product action exists on the parent blueprint. For more information, see Create
a configurable product action.
• The source fields (on the parent blueprint) and the target fields (on the child blueprint) exist
and are of the same field type.
Role required: admin

About this task

Field mappings are defined as part of a configurable product action. Each mapping specifies
a source field on the parent blueprint and a target field on the child blueprint. The value of the
source field is passed to the target field when the child configuration is created, and again
whenever the source field value changes during a session.
Target fields become read-only in the child configuration — the buyer can't change a mapped
value directly. To continue mapping across multiple levels in a solution hierarchy, define the
relevant mappings on each blueprint in the chain independently.

Procedure
1. Open the parent blueprint in the admin.
2. Navigate to the configurable product action where you want to add field mappings.
3. In the Field Mapping section of the configurable product action, select Add Mapping.
4. In the Source Field column, select the field on the parent blueprint whose value you want to
pass.
5. In the Target Field column, select the field on the child blueprint that receives the value.
The field type must match the source field type. For supported types, see Field mapping
supported field types.
6. Repeat steps 3–5 for each additional field you want to map.
7. Save and deploy the blueprint.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

704


<!-- page 705 -->
Result

Field values from the source fields on the parent blueprint are passed to the target fields on the
child blueprint when a child configuration is created, and again when source field values change
during a session.

Example: Field descriptions
Field mapping form
Field

Description

Source Field on the parent blueprint whose value is passed to the child configuration.
field
Supported types: Number, Text, Boolean, Picklist. System fields can be source fields.
Target
field

Field on the child blueprint that receives the value from the source field. Must be the
same type as the source field. Becomes read-only in the child configuration. System
fields cannot be target fields.

What to do next

After defining field mappings:
• To test mapping behavior, launch the parent product in the quoting application and verify that
the target fields receive the expected values in the child configuration. See Launch a solution.
• To verify field type compatibility, see Field mapping supported field types.
Related topics
Create a configurable product action
Field mapping supported field types
Node cloning for solution configuration
Node cloning lets you duplicate an existing solution configuration node in a set, producing an
independent copy that you can modify without affecting the source.
In solution configuration, a set groups related configuration nodes. When you need a new node
that resembles an existing one, cloning that node is faster and less error-prone than building a
new one from scratch. The cloned node starts as an exact copy of the source, then diverges as
you edit it.
Cloning is available from the solution configuration navigation sidebar. You can clone any node
in the set that is in a valid state. Nodes in an invalid state cannot be cloned.
When you clone a node, the following are copied to the new node:
• All field values, including set-based fields, boolean fields, number fields, picklists, product
fields, and text fields.
• Child configurations associated with the source node, preserving their structure and field
values.
• Nested child configurations, so that the full hierarchy of the source node is reproduced in the
clone.
The cloned node is independent of the source. Changes you make to the clone do not affect the
source node, and changes to the source do not affect the clone.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

705


<!-- page 706 -->
Relationship to existing set repeater controls
Cloning is an additional option in the solution configuration navigation sidebar. It does not
replace the existing set repeater controls. The following controls continue to be available
alongside Clone and Delete:
• Add row above
• Add row below
• Copy row
• Delete row

Note: Adding a blank node remains available as it was before this capability was
introduced. Use Clone when you want a pre-filled copy of an existing node. Use Add when
you want to start from an empty node.

Node hierarchy and recursive cloning
A cloned node can itself be the parent of child and grandchild configurations. When you clone a
parent node, the full hierarchy beneath it is reproduced in the new node. This means you do not
need to rebuild nested configurations manually after cloning. The depth of the hierarchy that can
be cloned depends on the configuration design. Solution configuration supports cloning up to
four levels deep.
ServiceNow CPQ usage calculation
ServiceNow CPQ usage metrics track how users interact with ServiceNow CPQ Configurator
and Sales Customer Relationship Management (Sales CRM) features. These metrics support
accurate usage measurement.

Usage metrics
Two usage metrics are collected for ServiceNow CPQ: user count and configuration count. These
metrics are visible in the Usage Analytics area of your ServiceNow CPQ instance and are used to
measure product usage across ServiceNow CPQ Microservices and Sales CRM.
Metric data is collected daily and displayed in the Usage Intelligence dashboard. When viewing
metrics, select Last full day or Last 7 days to confirm data is available, as a default filter of the
current day may return no results if the daily collection has not yet run.

Prerequsites and Requirements
For ServiceNow CPQ telemetry metrics to function correctly, the following conditions must be
present:
• A ServiceNow CPQ microservices connection must be configured and available on the
instance.
• The application scope must be set to CPQ Integration when accessing or validating the
ServiceNow CPQ Users table.
• Users must hold the required ServiceNow CPQ Sales CRM product roles to be included in the
user count.
For the full list of conditions required for metrics to populate, refer to the associated knowledge
base articles.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

706


<!-- page 707 -->
User count
The user count metric reflects the number of active users who have access to ServiceNow CPQ
or Sales CRM features on your instance. This count combines users from two sources:
• ServiceNow CPQ users fetched from ServiceNow CPQ microservices connected to your
instance.
• Sales CRM users from the Sales CRM sys_user table who hold relevant ServiceNow CPQ or
Sales CRM product roles.
The combined count appears in the ServiceNow CPQ Users table, which provides a single view
of all users with access to ServiceNow CPQ and Sales CRM functionality.

Which users are counted
Not all users in the sys_user table are included. The user count tracks active Fulfillers as
licensed seats. Business stakeholders are counted conditionally, based on their activity.
Requesters aren't included in the user count.
The user count and configuration count metrics are complementary: Fulfillers are measured as
seats in the user count, while non-Fulfiller users such as business stakeholders are reflected
through configuration records in the configuration count.

Note: Inactive users are excluded from the count.
ServiceNow CPQ Users table: The ServiceNow CPQ Users table is a remote table that queries
both ServiceNow CPQ microservices and the Sales CRM instance to populate user data. The
table includes the following fields:
• CPQ user: the username from ServiceNow CPQ microservices.
• User: the corresponding record in the Sales CRM sys_user table, populated when a
matching user is found.
• Role type: the subscription role associated with the user.
The table may be empty if the required ServiceNow CPQ microservices connection is not
configured or available on the instance. Several conditions must be met for the metric to
populate correctly; refer to the associated knowledge base article for the complete list of
requirements.

Configuration count
Each initialization of configuration is counted whether it's just initiated, abandoned or completed.
The act of initiating a configuration is sufficient to increment the count, regardless of whether the
deployment completes successfully. After a Blueprint is deployed, it is set to available for use in
customer-facing sales scenarios.

Data freshness and caching
The ServiceNow CPQ Users table uses a built-in cache to avoid repeated queries to ServiceNow
CPQ microservices on every request. The cache has a time-to-live (TTL) of 24 hours. As a result,
data in the table may not reflect the most recent changes immediately after a deployment or user
update. After the cache expires, the next request reruns the query and refreshes the table data.
This cache behavior is part of the remote table configuration and is not controlled by a system
property.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

707


<!-- page 708 -->
Customizing ServiceNow CPQ with themes
Custom themes let you customize your layout. You can enable custom themes by submitting a
feature enablement request.
ServiceNow CPQ admin users can edit a custom theme to customize the look and feel of their
layout.
To access the custom theme options in the layout editor, submit a ServiceNow CPQ Feature
Enablement Request to enable themes.

Getting started
From the blueprint page, select a layout, and then click the Customize Theme tab at the top of
the page.

Note: This tab appears only if the theme feature is enabled for your tenant.

On the Customize Theme tab, click to turn on Enable Theme. (By default, this option is off.)

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

708


<!-- page 709 -->
When this option is turned on, you see the full Theme Editor screen.

The visual editor
The visual editor includes five sets of options and an interactive preview. The standard
ServiceNow CPQ theme is applied by default, but you can modify any fields to start customizing
your theme.

The following options are available in the visual editor.
Visual editor options
Option

Description

Root Text Color

Default font color used in the layout

Primary Color

Color used most often for buttons and
selections

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

709


<!-- page 710 -->
Visual editor options (continued)
Option

Description

Primary Background Color

Default color used for the background and
containers

Secondary Background Color

Default color used for tier items such as
expandable section backgrounds

Neutral Color

Secondary color used for fields such as hint
text

Success Color

Background color for success message
banners

Info Color

Background color for neutral message
banners

Warning Color

Background color for warning message
banners

Error Color

Color for error messaging and field validation

Font Size

Default font size; small, medium, large

Border Radius

Determines border shape for fields where 0 =
Square and 16 = Round

Border Width

Determines overall size of the border for fields;
none, normal, thick

Spacing

Determines overall padding for the layout;
tight, normal, loose

The JSON editor
The JSON editor provides additional control by using overrides for any element included in the
theme.
By default, the values for the current theme are shown, but a user can manually enter new key
value pairs to modify the theme. The structure of the theme JSON is already provided in the
editor. Clicking in the editor lets the user type in the code block. Any changes made in the visual
editor are represented in the JSON editor, and vice versa.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

710


<!-- page 711 -->
A toggle hides or shows the standard ServiceNow CPQ theme as a reference for fields you may
want to revert without discarding the entire theme.
If you want to overwrite a layout element that is not included in the sample data, you can inspect
the layout to determine the field to change. Fields that begin with --lgk- are customizable in a
theme.
The following example demonstrates inspecting a toggle.

To overwrite an element, add the field name and the modified value in the properties
section of the theme override. The format should not include the --lgk- but should just be
“fieldname” : “value”.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

711


<!-- page 712 -->
The following are example theme overrides.

Using a custom font
A theme can support a custom font through a hosted URL entered in either the visual editor
or the JSON editor. This font file needs to be hosted so that it is accessible to the theme. For a
custom font, you need to provide a name and the font source URL.

Setting up the Image Viewer
You can use the Image Viewer to add images to fields for viewing in a media carousel.
The image viewer allows a ServiceNow CPQ Admin to add featured images to supported fields
that can be viewed in a media carousel. This article covers how to set up the Image Viewer in the
ServiceNow CPQ Admin and how it displays on your layout.

Supported field display types
• Static Image
• MultiSelectProductPickerGrid
• MultiSelectVisualProductPicker
• ProductPickerGrid
• VisualProductPicker
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

712


<!-- page 713 -->
• MultiSelect picklistGrid
• SingleSelect picklistGrid
• Multiselect Visual Picker
• Visual Picker

Static images
To display the Image Viewer for a Static Image field, follow these steps:
1. Open the layout where you want to add the Image Viewer.
2. Hover over the field and click the gear icon.
3. Open the raw value menu and add the following while including the required inputs in place of
the placeholder text below.

4. Click Save, and deploy the blueprint.

Raw value details for Image Viewer
Add the following to the “Raw Value” section of an image display component through the Admin
UI, where Array<FeatureImage> is an array of your additional feature images in the Feature
Image type format and carouselEnabled is set to true or false.
"featureImageSettings": {
"additionalImages": Array<FeatureImage>,
"carouselEnabled": boolean
}
By default, carouselEnabled is false.

Defining a feature image
FeatureImage = {
“src”: string,
“alt”?: string,
"label"?: string,
}

Product Pickers
To display the Image Viewer for a product picker field, follow these steps:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

713


<!-- page 714 -->
1. Select your product picker field.
2. Select the Option Fields tab.
3. Click + Add.
◦ Set the Field Type to Text.
◦ Set the Product List Property to Product Extended.
4. Create one Text field for each image to include in the Image Viewer.

Note: To display alt text or a label, additional fields for each type must be created.
These fields are not required.

5. Select the Bulk Actions tab.
6. Click Add New Action.
7. Select type Determined Action.
8. Enter a Bulk Action Name.
9. Select all of the fields added for your Image Viewer.

10. Click Save.
11. On the Bulk Actions tab, provide the URL for each image as well as text for labels and alt text if
desired.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

714


<!-- page 715 -->
12. Click Save
13. Open a layout that includes the product picker field.
14. Hover over the field and click the gear icon.
15. Toggle Enable Image Viewer to On.
16. Expand the Image Viewer Settings section.
17. Select the fields created from steps 3-4 that correspond to Image URL, Alt Text, and Label.
Alt Text and Label are optional.
18. Click + Add and repeat step 17 for each image that you want to include.

19. Click Save, and deploy the blueprint.

Picklists
1. Open the picklist field.
2. Click the Picklist Extension tab.
3. Click Import Data.
4. Create a CSV that includes the following columns:
◦ value
◦ imageUrl
▪ Ensure this is a valid URL for the image to display.
▪ Create an imageUrl column for each image to include in the Image Viewer.
◦ imageLabel (optional)
◦ imageAltText (optional)

5. Import the created CSV.
6. Click Column Mapping.
7. For each field added, select the mapping menu and select the column name under the
Extension mapping section.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

715


<!-- page 716 -->
8. Click Save Mapping.
9. Open a layout that includes the product picker field.
10. Hover over the field and click the gear icon.
11. Toggle Enable Image Viewer to On.
12. Expand the Image Viewer Settings section.
13. Select the fields created from the picklist extension data that correspond to Image URL, Alt
Text, and Label.
Alt Text and Label are optional.
14. Click + Add and repeat step 13 for each image that you want to include.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

716


<!-- page 717 -->
15. Click Save, and deploy the blueprint.

General guidelines
Ensure that the image sizes are the same for all images in a viewer. If they do not match, the
thumbnails and featured image will not align properly.
Add images in the order you want them to display. Images will display from the Image Viewer
settings from top to bottom. The name of the field does not affect the display order.
Use images with a high enough resolution to properly fill the window. Low resolution images will
be expanded in size to fit the window and will not look good when select as the featured image.
For optimal performance, avoid large or high resolution images since that will impact the render
time for the image viewer.

Image Viewer display
On a layout with a field that includes an image view, a user can hover over an image to see the
expand icon.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

717


