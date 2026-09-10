# Zurich Sales and Order Management — Post-sales engagement / Partner Relationship Management / Lead-to-cash foundation +2 more

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 572–721 of 1408 | Part 3 of 4

Sections: Post-sales engagement (p272); Partner Relationship Management (p272); Lead-to-cash foundation (p275); Business Portal (p278); Configure (p280); Lead-to-cash foundation apps (p281); Configure, price, quote apps (p360)

---

<!-- page 572 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

572


<!-- page 573 -->
Effects classes (continued)
Effect

Applies to

Supported classes

Notes and examples

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

573


<!-- page 574 -->
Effects classes (continued)
Effect

Applies to

Supported classes

Notes and examples

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

574


<!-- page 575 -->
in decision-making, the importance of presenting it in an intuitive and appealing manner cannot
be underestimated.
Here are some real world examples (with their associated CSV files) of the layouts weʼve used
in our most popular demo videos and builds- inspired by our customers. If you havenʼt already,
familiarize yourself with the basics of layout , with the use of the Layout Wizard
and the Layout
editor , and take a deeper look at tiers and tier definitions .

Manufacturing- Industrial Generator Layout
Logik.io Industrial Generator Demo: Configure Complex Products Based on Customer Needs
Download the Layout CSV file

Technology- High Tech Configuration Layout
Logik.io High Tech Configuration Demo
Download the Layout CSV file

Headless- B2B e-commerce w/3D Visualization
Logik.io for eCommerce
Download the Layout CSV file
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

575


<!-- page 576 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

576


<!-- page 577 -->
You can edit this part of the layout by clicking the gear that appears in the top right of the product
list layout element when you move your mouse into it. The product list has a settings screen that
contains all the properties referenced earlier.

For more information, see Displaying multiple product lists in layouts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

577


<!-- page 578 -->
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
Using a rule to set a value that is not a multiple of the step is not recommended. If the user clicks
the up or down arrow in the input, the value is changed according to the step value, which may
result in an invalid user-entered value.
The following Field Properties dialog illustrates one use of the step property.

The precision property
The precision property displays the number of decimal places provided, regardless of what is
entered. When defined, the field will round (not truncate) if decimals are entered beyond the set
number of decimal places. (The complete number is saved on the server.) A common use case
for the precision property is to display currency in dollars and cents, such as 19.99 or 10.00.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

578


<!-- page 579 -->
The precision property defaults to 0 if not set.
The following Field Properties dialog illustrates one use of the precision property.

The Display-Type-Specific Constraints Slider

The step property is required for this component. Minimum and maximum values are included,
but precision is not.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

579


<!-- page 580 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

580


<!-- page 581 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

581


<!-- page 582 -->
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
4. Alternatively, from a top-level Transaction Manager element page such as Stages, Associated
Fields, or Related Rules, click the three vertical dots in the sub-header, and then click Rule
Cycle Report.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

582


<!-- page 583 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

583


<!-- page 584 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

584


<!-- page 585 -->
5. Users must specify the origins of calls that aree made using this token as
authentication. In the origins box, add the desired URL, such as https://
<yourLogikUrlName>.<sector>.ServiceNow CPQ or *.salesforce.com. click
Add Origin to add the origin, and continue adding more.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

585


<!-- page 586 -->
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
As a best practice, we recommend that administrators include both text and URL keys in the
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

586


<!-- page 587 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

587


<!-- page 588 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

588


<!-- page 589 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

589


<!-- page 590 -->
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
However, you can override this behavior, such as to show an icon which can be hovered over
to display the message ("tooltip"). In the layout editor, add {“messageDisplayType”:
“<type>”} to the raw value in the field properties (the gear icon) of the element where you
want to add the custom message display type.
Accepted type values are above, below, popup, and tooltip.
The following image shows a popup message ({“messageDisplayType”: “popup”}).

ProductList.Type options: Accessory and Component
Define quantity behavior in product hierarchies. The Accessory type keeps quantity constant;
The Component type multiplies it by the parent.
ProductList.Type tells ServiceNow CPQ whether to manipulate a product's quantity based on the
parent-child hierarchy in which it falls. When defining product actions, the Type parameter in the
ProductList object can accept two values:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

590


<!-- page 591 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

591


<!-- page 592 -->
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
ProductList.bomType = "sales";
ProductList.next();
return ProductList;
Some tips:
• Numbers can be entered directly as the value.
• Text should be surrounded by double quotes.
• Variables can be used for values.
• Math or other value manipulation must occur outside of the JSON. Use a variable to get the
final value into the JSON object.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

592


<!-- page 593 -->
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
Use the BOM Types to Include in Save Request admin setting to add additional BOM types to a
Save request. Any BOM types added here are passed in the save request and created as quote
lines when going through Salesforce CPQ.
Use the Push BOM Data to Logik Salesforce Object admin setting to configure BOM items to be
passed back and written into Salesforce as configuration line items.
To learn how to add additional BOM types to a Save request and to configure BOM items to be
written to Salesforce as configuration line items, see ServiceNow CPQ admin settings.
To add multiple product lists to a layout, use tiers to separate the additional BOMs. Product lists
can be added by editing the layout CSV file and importing it. For information about displaying
multiple BOMs in a layout, view the following video:
Multiple BOM Display
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

593


<!-- page 594 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

594


<!-- page 595 -->
Multiple bills of material: layout editor

1. Display of the manufacturing BOM product list in the layout editor in a tier
2. Display of the sales BOM product list in the layout editor in a tier
3. Display of the Complete (all) product list in the layout editor as a modal window

Final configuration experience

1. Manufacturing product list, only displaying the manufacturing bomType products
2. Sales BOM product list, only displaying the sales bomType products
3. The complete list in a new window set to show all the products from any bomType
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

595


<!-- page 596 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

596


<!-- page 597 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

597


<!-- page 598 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

598


<!-- page 599 -->
However, the currency symbol can be displayed instead.

Setting the shopping cart currency display with the layout editor
The shopping cart currency display is defined in the layout properties, which can be found in the
layout editor. For more information, see Customizing the ServiceNow CPQ UI header

Three currency display options are available:
• USD 25.99: Displays currencies with their currency code
• $25.99: Displays currencies with their currency symbol
• 25.99: Displays currencies as numbers
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

599


<!-- page 600 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

600


<!-- page 601 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

601


<!-- page 602 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

602


<!-- page 603 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

603


<!-- page 604 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

604


<!-- page 605 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

605


<!-- page 606 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

606


<!-- page 607 -->
1. Click Matrix Loader in the navigation pane.

2. On the page that opens, export sample files in the upload formats that are accepted by the
Matrix Loader: fields, field options, rules, and tables. Each sample file demonstrates a broad
range of the features of the upload format.

3. Drag, or use the file browser to select the CSV files you intend to upload.

We discuss the formats of these CSV files in the following articles:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

607


<!-- page 608 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

608


<!-- page 609 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

609


<!-- page 610 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

610


<!-- page 611 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

611


<!-- page 612 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

612


<!-- page 613 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

613


<!-- page 614 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

614


<!-- page 615 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

615


<!-- page 616 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

616


<!-- page 617 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

617


<!-- page 618 -->
Best practices
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

618


<!-- page 619 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

619


<!-- page 620 -->
8. Upload the CSV file to the Matrix Loader.

Note that if the name of the table and CSV file contains the word "table," the Matrix Loader will
automatically select the Upload Type as "table." Otherwise, you will need to manually select the
Upload Type.
9. Click Import.
10. To confirm that the import was successful, check the import status.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

620


<!-- page 621 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

621


<!-- page 622 -->
Because all natural keys are also indexed, checking the column does not allow the user to also
check the Indexed column.

When the Natural Key column is checked, a keys icon displays in the table.

Another icon indicates which columns are indexed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

622


<!-- page 623 -->
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
Using external connections with OAuth support
External connections allow enrichments to retrieve data from third-party systems to enhance
configurations. When security requires OAuth, you can set up an OAuth handshake using
client credentials to authenticate and access external APIs. This approach ensures secure data
exchange for tasks such as pricing updates or attribute population during configuration.
Enrichments are scripts that run outside the rules engine and affect configurations in
ServiceNow CPQ. There are five types of enrichments that can be enabled in a ServiceNow CPQ
environment:
• On configure/reconfigure
• On BOM response
• Validation
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

623


<!-- page 624 -->
• Picklist extension pricing
• On request
External connections get data for a ServiceNow CPQ configuration from something outside
ServiceNow CPQ. External connections can only be called from an enrichment.
Occasionally, an external connection requires an OAuth handshake for security purposes. For
example, you may need to populate a field or an enrichment script with data from a third-party
application, such as pricing or other attributes.
To set an OAuth external connection, follow these steps:
1. Define the external connection by visiting Admin > Utilities > External Connections.

2. Define your authentication token.
◦ If the external connection calls an open API, no authentication token is needed.
◦ If the external connection is Salesforce, ServiceNow CPQ takes care of the authentication
token for you.
◦ If the authentication supports a bearer token, insert the bearer token provided by the
external service for the purposes of authentication.
◦ If the authentication requires OAuth authentication:
a. Select OAuth - Client Credentials Flow
b. Insert the client ID
c. Insert the client secret
d. Insert the token URL field
Required OAuth inputs:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

624


<!-- page 625 -->
Required OAuth inputs
Field

Type

Description

Client ID (Required)

varchar (unlimited)

Holds the client
Not empty
ID created for
ServiceNow CPQ
with the authorization
server

Client secret
(Required)

varchar (unlimited)

Holds a tokenized
reference to the
client secret

Validations

Not empty

The actual value is
stored in the GCP
secret store, except
in dev environments,
where the value is
stored directly
Token URL
(Required)

varchar (unlimited)

Scope (Optional)

varchar (unlimited)

The URL of the
authorization server
to exchange the
client ID/secret with
for a token
Optional - can be
used to specify the
scopes sent with the
token request

Not empty

None

3. Specify the parameters that need to be passed to the destination server in the Path input.
Parameter variables can be used to dynamically define the path. An example path is /
v4/latest/{{inputVariable}}, where {{inputVariable}} is the section of the
path that is used as the parameter variable.
If a path is using a parameter variable, use encodeURIComponent() in your enrichment
script when you define the variable. For an example, see the following code.
let inputs =
{"inputVariable":encodeURIComponent(cfgRequest.baseCurrency.va
lue)};
let results = External.exchangeRatesAPI(inputs);
var resultsMap = results.body.rates;
Line 1 defines the variable, referencing the parameter variable from our external connection
“inputVariable”. A ServiceNow CPQ field that stores the data we want is wrapped in
encodeURIComponent and completes the inputVariable path.
Line 2 and 3 then trigger the external connection exchangeRatesAPI using the defined
input. Additional scripting is required for the call to be narrowed down to retrieve the desired
data and set a field, if that is a desired use case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

625


<!-- page 626 -->
A timeout limit is needed. We suggest 500 milliseconds as a starting point. If you find that the
external connection regularly exceeds this limit, you can increase this value. However, this may
slow the performance of the end-user configuration.
The following enrichment script uses an external connection. This bill of materials (BOM)
enrichment queries a powerPricing API with customer data. With the customer-specific rate
date retrieved from the service, the enrichment adjusts the pricing of existing ProductList
records.
var powerInputs = {"membershipCode":cfg.eCMembershipCode,
"icp":cfg.eCICPNumber}; let powerResponse =
External.powerPricing(powerInputs);
let dailyCharge = 0; let ratesArr = [];
if(powerResponse.status == 200) {
for(var record of powerResponse.body) { if(record.chargeType ==
cfg.expectedUsage) {
dailyCharge = record.dailyCharges; ratesArr = record.rates;
}
}
for(var prod of ProductList)
{ if(prod.id=="electricBillEstimator") {
let addedPrice = dailyCharge * cfg.serviceDurationInDays;
prod.price = addedPrice;
}
if(prod.id=="Standard Rate" || prod.id=="Low Rate")
{ prod.price = dailyCharge;
}
}
for(var rateVal of ratesArr) {
ProductList.id = "Additional Charge Per KWH: " + rateVal.name;
ProductList.quantity = 1;
ductList.bomType="Manufacturing"; ProductList.orderNumber = 2;
ProductList.price = rateVal.rate; ProductList.notes =
rateVal.measure;
ductList.parentProduct="electricBillEstimator";
ProductList.next();
}
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

626


<!-- page 627 -->
return ProductList;
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
https://{tenant}.{sector}.logik/ui/configure/testFrame.html
Typically, the value of {sector} is test for sandbox or prod for production.

Note: If the test frame page displays ServiceNow CPQ administration, clear your browser
cache.

Using the test frame
The testFrame HTML provides easy inputs to a variety of parameters that can be sent to the
ServiceNow CPQ configurator.

1. Product ID: Product ID of the configurable product to load
2. Pricebook ID: Salesforce Pricebook ID
3. Reconfigure ID: Logik UUID of existing configuration to load for reconfiguration
4. Quote Line ID: Salesforce Quote Line ID
5. Layout: Name of the Layout to load from the Blueprint of the Configurable Product
6. Runtime Token: Runtime Token from Logik Admin Setup
7. Runtime Client API: Needs to be encoded and URL-safe. Highly recommended if using the
Runtime Token parameter
8. Config Editability: Control the ability to save a configuration
◦ Active: Displays the Quote button on the configuration page
◦ Available: Displays the Save button on the configuration page
◦ None: No Save or Quote button is displayed. End user cannot save configuration
9. Flightpath: Determines whether the execution of ServiceNow CPQ Rules is logged

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

627


<!-- page 628 -->
◦ Active: Displays Flightpath controls and automatically starts recording
◦ Available: Displays Flightpath controls and does not start recording
◦ None: No Flightpath controls are displayed
10. Use URL Parameters: if checked, use parameters from the URL instead of values in inputs.
11. Update Configuration: On click, this will send the parameters to the ServiceNow CPQ
Configuration iframe and update.
◦ If using the HTML inputs, parameters are passed via easyXDM
◦ If Use URL Parameters is checked, the src of the iframe will be set using the URL parameters

Example: test frame page

• URL to access the test frame page
• Parameter inputs
• Configuration iframe
For more information, see Use case: Embed ServiceNow CPQ UI in an HTML page.
The Admin Logs utility
Learn how the Admin Logs utility helps you diagnose, monitor, and resolve configuration issues
efficiently in your ServiceNow CPQ environment.

Overview of Admin Logs
The Admin Logs utility provides administrators with centralized visibility into system activities,
configuration errors, and integration issues. It enables quick diagnosis and resolution of
problems by capturing key runtime details, error messages, and contextual data about the
environment. Designed with usability and precision in mind, Admin Logs helps administrators
identify issues, understand their cause, and act swiftly to maintain system stability.
Whether accessed through the Admin UI or via API, Admin Logs helps provide insights admins
can use to optimize configurations and keep users productive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

628


<!-- page 629 -->
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

Continuous improvement

Access enhanced error reporting and
contextual details to help streamline ongoing
maintenance and user support.

Accessing Admin Logs
Administrators can access Admin Logs from the ServiceNow CPQ Admin interface or via API,
depending on their preferred workflow and use case.
In the new Admin experience, access Logs in the Utilities menu. In the legacy Admin experience,
click Logs in the navigation bar. Both experiences provide the same real-time logging
capabilities and enable filtering, refreshing, and viewing detailed error information.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

629


<!-- page 630 -->
• Error code: ServiceNow CPQ unique identifier for quick cross-referencing and support
requests.
• User ID: The user who encountered the error (added February 2025).

Accessing logs via API
Administrators who prefer to query logs programmatically can access the Admin Logs API using
a GET request. This is especially useful for environments with large data sets or for integrating
logs into external monitoring systems. This flexibility allows admins to retrieve specific log
intervals for audit or performance review without loading all historical records.
Example cURL command:
curl --location '<logikURL>/api/logs/v1/logs' \
--header 'Content-Type: application/json' \
--header 'Origin: localhost' \
--header 'Authorization: <Admin API Key>'

You can refine results by specifying before and after parameters in ISO 8601 date/time format:
curl --location
'<logikURL>/api/logs/v1/logs?after=YYYY-MMDDThh%3Amm%3AssZ&before=YYYY-MM-DDThh%3Amm%3AssZ' \
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

Best practices
• Use short time filters when troubleshooting real-time configuration issues.
• Export relevant log data regularly for long-term tracking or compliance review.
• Leverage the API to automate log retrieval or integrate with your organization’s monitoring
tools.
• Report unclear error codes or missing context to ServiceNow CPQ support for analysis and
improvement.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

630


<!-- page 631 -->
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

Demonstration
The following video demonstrates the Flightpath feature tracking rules engine responses.
Flightpath

Prerequisites
• Salesforce-integrated use cases:
ServiceNow CPQ environment Explorer 07.22 or later.
Salesforce Logik.io Managed Package version 1.2 or greater. Navigation in Salesforce: Admin
Setup > Apps > Packaging > Installed Packages > ServiceNow CPQ Managed Package
The Salesforce administrator must add the LGK FlightPath_c field to the Quote Line
Editor field set (Salesforce: Admin Setup > Object Manager > Quote > Field Sets > Line Editor).
Place the Flightpath field in the field set. Limit its visibility to the appropriate administrator
roles.
• Headless/eCommerce use cases:
Your ServiceNow CPQ environment must be Explorer 07.22 or later.
Append the following text to your configure API call to ServiceNow CPQ: ?logExecution=
<value>. Example: https://<siteURL>.<sector>.logik.io/c?
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
https://<siteURL>.<sector>.logik/ui/configure/<product
id>?v=1&<other parameters>&log=<value>
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

631


<!-- page 632 -->
◦ Transaction management:
https://<siteURL>.<sector>.logik.io/ui/transact/<transaction
id>?v=1&log=active
For transaction management, valid values include:
▪ none
▪ available
▪ active
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
There is a 5 second API timeout for all external API calls in this enrichment.
Best practices:
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

632


<!-- page 633 -->
Note: The ServiceNow CPQ environment must include rules with product actions, or there
will be nothing for the enrichment to loop through.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

633


<!-- page 634 -->
}
}
for(var rateVal of ratesArr) {
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

634


<!-- page 635 -->
let inputs = { "productsArray": "('Tablet10', 'Laptop13',
'Laptop15')" }
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
Using external connections with OAuth support
Passing data from Salesforce to ServiceNow CPQ fields
Create scripts
Learn how to create advanced functions using the scripting interface.
Some use cases require an advanced condition or action. Other times, the administrator may
prefer script versus leveraging simple rules. For these occasions, ServiceNow CPQ offers the
ability to write scripts in key areas.
Scripting is available in rule actions and conditions, behind the Advanced menu choice or toggle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

635


<!-- page 636 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

636


<!-- page 637 -->
As you type in the script editor, suggestions are provided, including functions, configurable field
variable names, and local variables. Using this feature helps eliminate mismatched variable
names and typing errors. In the screenshot below, typing Ma gives the user two available
functions (Map and Math) and a list of all matching fields. Additional inputs narrow the list of
matching options.

At the bottom of the scripting interface, the debugger lets you test your script by defining values
for the variables (fields) that it references. Debugger input is provided in JSON format. For your
convenience, review field-specific formats in the fields information help (arrow).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

637


<!-- page 638 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

638


<!-- page 639 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

639


<!-- page 640 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

640


<!-- page 641 -->
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
You can access the properties of objects such as cfg, cfgRequest, and ProductList in
two ways.
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

641


<!-- page 642 -->
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
cfgRequest[row.quantityTest].set("value",row.rowQuantity);
}
}
Related topics
Sample scripts
Using comments and the console to debug scripts
Scripting: Checking for first and subsequent configurations
Sample scripts
View a selection of commonly requested sample scripts.
This article shows some commonly requested sample scripts. If you would like to see more
examples, please send a message to documentation@logik.io
with your suggestions.
Sample number field determination:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

642


<!-- page 643 -->
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
//var timesReplicate = cfg.numberOfComputeClusters; //this
doesn't work yet.. If it does, we will replicate that many
times easier
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

643


<!-- page 644 -->
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
}
ProductList.next();
}
if(cfg.cpu1Count > 0) {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

644


<!-- page 645 -->
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
How to imitate a CONTAINS function:
var yourVariable = "Field Value"; // Replace with your actual
Field value
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

645


<!-- page 646 -->
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
Best practices for scripting
Write efficient scripts using a JavaScript-like language. Follow best practices for naming,
variables, and table access.
This guide will walk you through the best practices for writing efficient and reliable scripts in
ServiceNow CPQ using a JavaScript-like language. Following these guidelines will help you
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

Comment thoughtfully
Use comments to explain complex logic, assumptions, or any non-obvious behavior in your code.
Avoid redundant comments that merely repeat the code.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

646


<!-- page 647 -->
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
26 let x3= cfgRequest.partner.quote.currencyIsoCode.value;
27 let x4= cfgRequest.partner.quote.pricebookId.value;
28
29 if (x1 != null) {
30 cfgRequest.quoteIDTest.set("value", x1);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

647


<!-- page 648 -->
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
camelCase or snake_case and stick to it. Logik field variable names use camelCase, so most
organizations stay with this convention for readability.
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
8 // ...
9 }

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

648


<!-- page 649 -->
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
To learn about best practices while using the lookup function, see Minimizing table queries.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

649


<!-- page 650 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

650


<!-- page 651 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

651


<!-- page 652 -->
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
Submit a support case through the ServiceNow CPQ Support site or by emailing
support@logik.io
requesting the enrichment be enabled for your environment. Please provide a
use case for using the enrichment.
Picklist extension fields need to have the "Enable for enrichment" toggle turned on to be affected
by the enrichment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

652


<!-- page 653 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

653


<!-- page 654 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

654


<!-- page 655 -->
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
especially in complex scenarios involving high-SKU or physics-driven configurations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

655


<!-- page 656 -->
Attributes and capabilities
Reusable and namespaced: defined once and invoked using fn.functionName(params).
Parameter management: define input parameters with data types and default values.
Output handling: specify return types.
Centralized management: searchable and manageable through a dedicated UI. Callable across
modules: available in both the configurator and Transaction Manager.
Managed table queries: supports managed table lookups in functions.

Enabling library functions
Submit a support ticket to enable library functions. Once the support ticket is completed, enable
the new UI by navigating to Utilities > Settings > Admin Version > New, and clicking Save.
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
1. On the Function Library tab, click Add Function.
2. Name the function, specify the return type, and enter a description.
Script content:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

656


<!-- page 657 -->
Calling the function:

Limitations and technical considerations
• Functions must be free of side effects, external calls, and Logik field references.
• Recursive calls are not supported.
• External API calls and async operations are not supported.
• Enrichments are not supported.
• Parameters are passed by copy, not by reference.
• Parameter schemas can be modified post-creation, allowing flexibility in managing function
inputs.
• When a library function changes, redeploy the affected blueprints.
• Provide function visibility into function usage before edits.
The lookup function: commands and syntax
Use the lookup function to return information from a user-managed table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

657


<!-- page 658 -->
ServiceNow CPQ uses a SQL-based query language to look up user-managed tables.
The lookup function returns up to 10,000 rows from a table and times out after 30 seconds if
the search is still querying. For information about uploading CSV files into managed tables, see
Matrix Loader: CSV table upload.
To learn about best practices for using the lookup function, see Minimizing table queries.

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
<
Is less than
>=
Is greater than or equal to
IN
Is equal to any (in a set)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

658


<!-- page 659 -->
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
Another way to reduce queries is to be aware of the fields associated with a rule. Suppose you
have a query in a rule that references a lot of fields. The rule runs every time one of the fields
associated with that rule changes. Therefore, the query runs every time.
Let’s say you need to calculate the volume and then multiply that volume by density (which could
change based on material the user selects) to get the total weight. The user does not need to use
volume anywhere else downstream. Here is a sample script:
• Query L,W,H from table
• Var vol= L*W*H
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

659


<!-- page 660 -->
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
and test your scripts before deployment. By following these best practices for debugging faulty
scripts, you can help ensure your blueprints run flawlessly.

Best practices for debugging
Using console.log(): When coding a complex behavior, you may have to check whether
certain values are set or manipulated the correct way. Instead of seeing only what is returned by
the rule, use the console.log([variableName]) function in a script to show the value of
the variable at that line when run in the debugger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

660


<!-- page 661 -->
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
The ServiceNow CPQ debugger uses JSON format, which is written using attribute-value pairs.
The attributes are the variable names of the fields used in the rule, and the value is the fieldʼs
data in its object format.

Note: As long as a field is referenced in the rule or enrichment, it must have a
corresponding attribute in the JSON, or the script cannot be run in the debugger.
Also note:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

661


<!-- page 662 -->
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
them as a single-select or multi-select field. Or, the debugger can reference a product picker
subfield or aggregate using the key pkr.
{
"cfg": {
"productPickerSS": "selectedValue",
"productPickerMS": [
"selectedValue1",
"selectedValue2"
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

662


<!-- page 663 -->
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
On configuration and reconfiguration, inputs are entered in JSON format, using the field variable
name as the key. The value is an object consisting of two properties: value and userEdited.
value should be set to the intended field value. userEdited is a Boolean value.

Context-specific JSON formatting: fields
{
"cfgRequest": {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

663


<!-- page 664 -->
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
"productPicker2": {
"value": "productPicker2_option1",
"userEdited": false
}
}
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

664


<!-- page 665 -->
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
},
"selectOption": {
"value": true,
"userEdited": false
},
"productPicker1InSet": {
"value": [
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

665


<!-- page 666 -->
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
[
{
"id": "test product",
"quantity": 2
},
{
"id": "test product2",
"quantity": 5,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

666


<!-- page 667 -->
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
In almost every case, the debugging JSON needs to match exactly what would normally be
entered during runtime as valid values for the fields. Make sure that you are using the correct
data type or structures described above.
In other cases, similar rules may be acting on the same field. In this case, the debugger will
not be helpful, as it can only show the behavior of one rule at a time. It might be necessary to
inactivate entire rules and redeploy in order to rule out the undesired behavior.
If all else fails, please open a case with our support team, or email us at support@logik.io.
Using comments and the console to debug scripts
Learn how comments and the console can help you debug your scripts.
ServiceNow CPQ has several areas where the admin can use scripts to define behavior. These
include advanced conditions for rules, advanced actions for rules, and enrichments.

Advanced conditions for rules

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

667


<!-- page 668 -->
Advanced actions for rules

Enrichments

This article highlights a few key features to help you test and prepare your code before you
deploy it in a blueprint.

Note: The scripting language in ServiceNow CPQ is JavaScript-like, meaning it follows
JavaScript-style syntax but lacks the full capabilities of JavaScript.

Console.log
When the admin starts to write a script, the ServiceNow CPQ Admin looks like this:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

668


<!-- page 669 -->
Clicking Run Debugger in the lower panel raises the debugger and the Debugger Output section.
This section is also called the console.
This box shows the output of the script based on the script and the inputs added to the
debugger (if applicable). For example, the BOM enrichment script shows the updated BOM
based on the enrichment and inputs put in the debugger.
Lines of code can be logged to the console. So, you can send text to the console, as in the
following:

You can also log variables, which is helpful to make sure your script is working correctly. You can
add text to the log to help the lines of code stand out:

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

669


<!-- page 670 -->
However, any code before the slashes is still executed. For example, in the image below, the
variable be4comment remains 12345, as the script ignores the comment "67890" following the
slashes.

To create a multiline comment, add a slash and an asterisk before the comment. Add an asterisk
and a slash after the comment.
/*
Your comment goes here.
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

670


<!-- page 671 -->
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
quantityMap.set(row.value, row.quantity);
}
);
If you intend to use the Pricing enrichment to dynamically set prices for the product picker
options, be sure to enable this feature on the product picker. To do this, in the product picker
administration page, click the cog to open the Product Picker Settings dialog. Then, turn on
Enable for Pricing Enrichment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

671


<!-- page 672 -->
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

userEdited: running only when a field was not edited
Two field properties can be accessed in the On Configure/Reconfigure enrichment: value and
userEdited. While the value property holds the data contained in the field and is usually
what will be accessed when scripting, userEdited contains a Boolean value that stores
whether the field has been changed by the end user.
This can be used in if statements to write a default value only when the field has not been
changed by the user. For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

672


<!-- page 673 -->
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
For more information on partner fields, see ServiceNow CPQ fields, system fields, and partner
fields.

isInitial: creating a text field
Another way to guarantee that a distinction is present (regardless of whether Salesforce is
used as an entry point into the configurator) is to create a field that checks whether the current
configuration is due to an initialization or a reconfiguration.
Create a text field with the variable name isInitial. Associate the field with your blueprint.
Then, in the On Configure/Reconfigure enrichment, add the following lines:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

673


<!-- page 674 -->
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

If the information can be found on the Salesforce quote, use the twinning method of data
transfer. External data would be assigned to a field in ServiceNow CPQ.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

674


<!-- page 675 -->
In this example, ServiceNow CPQ uses the On Configuration/Reconfigure enrichment (called
“Init enrichment” here) to send an API call to the website “FakerAPI.it”. This website sends an API
response with fake credit card information.

Our goal is to populate a field in ServiceNow CPQ with the credit card type (Visa, MasterCard, or
other).

Setup
The first step of using an enrichment and external connection is to set it up. For instructions, see
Using external connections with OAuth support. (Note that the examples in this link focus mostly
on the On BOM Response enrichment. This article complements the other because it focuses
more on the Init enrichment.)
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

675


<!-- page 676 -->
Parameter

Value

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

676


<!-- page 677 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

677


<!-- page 678 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

678


<!-- page 679 -->
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

All API calls follow this base URL format: https://
<yourTenant>.<sector>.logik.io/api/. In this URL, yourTenant represents your
unique listed ServiceNow CPQ tenant name, and sector is the sector where your ServiceNow
CPQ environment is located.
If you are a Salesforce user, you can find your tenant URL by clicking Setup in your Salesforce
account. In the Quick Find box, search for or click Custom Settings, and then click Manage. Your
tenant URL will be displayed.

All runtime API calls require bearer token authentication using a unique token that is available in
the runtime client. They also require that the origin URL configured in the runtime client appears
in the request header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

679


<!-- page 680 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

680


<!-- page 681 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

681


<!-- page 682 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

682


<!-- page 683 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

683


<!-- page 684 -->
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
For more information about ServiceNow CPQ APIs, see the following eight-slide presentation:
Logik.io APIs

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

684


<!-- page 685 -->
For more information on ServiceNow CPQ runtime calls, see Intro to runtime API calls.

Authenticating admin API calls
There are four ways to authenticate your admin API calls:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

685


<!-- page 686 -->
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

• Google IdP
If you are not connected to a Salesforce environment and choose not to use admin API keys,
you can use Google IdP to authenticate. If you do not use Google IdP, open a support case or
email support@logik.io to discuss options for admin API authentication.
For information on setting up a Google IdP JWT token, see:
Setting up a Google IdP JWT Token for Headless admin API Authentication
Intro to admin API keys
You can use admin API calls to access Admin functionality without using the Admin UI interface
and a browser.
ServiceNow CPQ provides admin API keys that you can use to access admin functionality via API
calls instead of using a browser and the ServiceNow CPQ Admin interface.
For an introduction to ServiceNow CPQ admin API keys, view the following video:
Admin API keys
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

686


<!-- page 687 -->
Admin API keys page
To get to the Admin API Keys page in ServiceNow CPQ, click the arrow to expand the Utilities
section in ServiceNow CPQ Admin. The Admin API Keys tab appears in the menu.

Add a new admin API key
To add a new admin API key, click New at the top of the screen.

All parameters are required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

687


<!-- page 688 -->
1. Name: the name of the admin API key
2. User ID
3. Expiration Date: the expiration date of the key
4. Permissions: the permissions assigned to the key
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

688


<!-- page 689 -->
1. View the admin API key
2. Copy the key to the clipboard
3. Close the dialog box

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

689


<!-- page 690 -->
◦ API call in Admin UI: /a/managed_tables/v1/managedTables/{tableName}/
metadata
◦ API call using Admin Keys: /api/managedTables/v1/managedTables/
{tableName}/metadata
Related topics
https://logikio.atlassian.net/wiki/spaces/CS/pages/1614479620/Setting+up+a+Google+IdP
+JWT+Token+for+Headless+Admin+API+Authentication
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
The JWT can be used as a bearer token to authenticate ServiceNow CPQ administration APIs to
manipulate managed tables, write rules, deploy blueprints, and more.

Creating or updating a connected app for JWT authentication
If youʼre updating an existing app, these instructions assume that youʼve created a connected
app following the instructions in the legacy asset token flow.
1. Go to Salesforce Setup, Apps → App Manager.
2. Create a new connected app, or update your existing JWT app to match the image below.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

690


<!-- page 691 -->
3. Click Manage in your JWT connected app.
4. Edit policies.
◦ There will be a new section labeled Client Credentials Flow. Select your integration user in
the Run As option.
◦ There will be a second new section labeled JWT-Based Access Token Settings for Named
Users. Check Issue JSON Web Token (JWT)-based access tokens, and select a default
timeout.
◦ Click Save. Your policies should resemble the following:

Generating the JWT
The following Postman collection can be used to generate a JWT for your instance:
https://logikio.atlassian.net/wiki/spaces/CS/pages/1615036449/Admin+APIs+Authentication
+via+Salesforce+Connected+App
For in-depth instructions, see:
OAuth 2.0 Client Credentials Flow for Server-to-Server Integration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

691


<!-- page 692 -->
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
https://api-docs.logik.io/ʼintroduction
You can also view the ServiceNow CPQ open source API documentation on Github:
https://github.com/logikioopensource/API-Documentation
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
3. Download the export
Use the same Job ID to download a ZIP file that contains the blueprint.
To view the source code for the Export blueprint call, see:
Export blueprint call

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

692


<!-- page 693 -->
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
Legacy information about APIs that interact with managed tables
We highly recommend leveraging Admin API keys to interact with the ServiceNow CPQ
APIs for managed tables. Bulk-level permissions are necessary for your admin API key to
authenticate calls related to managed tables. For more information on these APIs, see the full API
documentation:
ServiceNow CPQ API documentation
The following Postman collection demonstrates how to retrieve and manipulate table metadata
and data using the deprecated JWT authorization noted below:
Postman Collection_Logik managed tables APIs
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
◦ Updating a table data row
◦ Deleting a table data row
◦ Uploading table data via CSV
◦ Exporting table data to CSV

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

693


<!-- page 694 -->
◦ Getting the status of an export job
◦ Replacing a table
All calls leverage JWT authorization. The bearer token is stored in the global variable
{{logik_admin_BearerToken}}. For instructions for generating JWT, see:
Admin APIs: Authentication using a Salesforce-connected app
Runtime APIs
Runtime APIs
ServiceNow CPQ provides a set of APIs for building front-end applications and manipulating
configurations. These are commonly referred to as buyside or runtime APIs and are used by
customers or end users to create, update and save ServiceNow CPQ configurations.
Runtime APIs support the standard create, read, update, and delete functions for ServiceNow
CPQ configurations, along with the ability to retrieve bill of materials (BOM) data from
ServiceNow CPQ.

Note: These APIs are legacy APIs. For the most updated information, see the complete
ServiceNow CPQ API reference:
Logik.io API Reference
To make ServiceNow CPQ runtime APIs accessible and provide a quick start to end developers,
see our open source repositories for API collections that can easily be imported and used to start
testing:
API-Documentation/runtime/Logik Configurator Runtime APIs.postman_collection.json

Runtime API setup
The base URL format for all runtime API calls is https://
<tenant>.<sector>.logik.io/api/, where <tenant> is the listed tenant name
and<sector> is the appropriate sector that the environment is located on (usually test or
prod).
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

694


<!-- page 695 -->
• origin: localhost
• authorization: Bearer vEqzz4BVkb15Le11En8axEuN71FA6Vt_cw

Create a configuration
To start a new configuration via the APIs, the create configuration call passes the ID of the
configurable product. In response, it receives a ServiceNow CPQ configuration ID that can be
used to specify this configuration in later calls.
POST
HTTP method

POST

URL

https://<tenant>.<sector>.logik.io/api/

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

695


<!-- page 696 -->
"uuid": "08176434-9b1e-4fc8-b2c4-8aba2c35fda3",
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

https://<tenant>.<sector>.logik.io/api/

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

696


<!-- page 697 -->
{
"configuredProductId": "<Id of a Logik.io Enabled
Product>",
"configurationAttributes":
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

https://<tenant>.<sector>.logik.io/api/

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

697


<!-- page 698 -->
If delta=true, ServiceNow CPQ sends back only data that has changed based on the update that
was sent. This is the default behavior.
If delta=false, ServiceNow CPQ sends back the entire configuration and BOM data in response.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

698


<!-- page 699 -->
Note: The only difference between a normal update call and a save call is the addition

of the query parameter save=true in the URL. If set to false or excluded, this is a normal
update call.
If you are using Salesforce as a backend, when the save API is called, ServiceNow CPQ
asynchronously creates and populates the ServiceNow CPQ custom objects Configuration Field
Data Sets and Configuration Line Items with the appropriate data.
If your ServiceNow CPQ instance has a webhook configured, when the save API is called, the
data is sent to the endpoint specified in the webhook setting. See Webhooks.

Note: This ends the configuration session. Further edits or updates to the configuration
must be started from the create configuration or reconfigure API calls.
PATCH
HTTP method

PATCH

URL

https://<tenant>.<sector>.logik.io/api/

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

699


<!-- page 700 -->
":"text"}],"responseState":{"setPagination":{"collections":{"pag
eSize":10,"pageNumber":0},"fields":{"pageSize":10,"pageNumber":0
},"componentTypes":{"pageSize":10,"pageNumber":0}},"defaultPagin
ation":{"pageSize":10,"pageNumber":0},"searchValues":{}}}'
Sample response:
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

https://<tenant>.<sector>.logik.io/api/<uuid>/bom/<bomType>

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

700


<!-- page 701 -->
"externalId": "",
"productFamily": "Miscellaneous",
"description": "",
"uom": "",
"price": 5,
"extPrice": 5,
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

701


<!-- page 702 -->
The GET request
HTTP method

GET

URL

https://<tenant>.<sector>.logik.io/api/<uuid>

Path parameters

<uuid>

Query parameters

N/A

32 character
ServiceNow CPQ
configuration UUID

required

Sample URL:
https://dev1.test.logik.io/api/71e62fe7-e59b-4a91-94af-64718e0d4eae
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

https://<tenant>.<sector>.logik.io/api/<uuid>

Path parameters

<uuid>

Query parameters

N/A

32 character
ServiceNow CPQ
configuration UUID

required

Sample URL:
https://dev1.test.logik.io/api/71e62fe7-e59b-4a91-94af-64718e0d4eae
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

702


<!-- page 703 -->
Sample response:
{}

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

703


<!-- page 704 -->
In ServiceNow CPQ, the only step is to ensure that in Admin settings, Push BOM Data to Logik
Salesforce Object is enabled. ServiceNow CPQ uses the data stored in the Configuration Line
Items (LGK__ConfigurationLineItem__c) to create any additional sales BOM lines on the quote
and write the BOM Data field on the quote line.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

704


<!-- page 705 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

705


<!-- page 706 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

706


<!-- page 707 -->
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
Logik Salesforce CPQ Extension APIs Postman Collection

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

707


<!-- page 708 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

708


<!-- page 709 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

709


<!-- page 710 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

710


<!-- page 711 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

711


<!-- page 712 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

712


<!-- page 713 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

713


<!-- page 714 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

714


<!-- page 715 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

715


<!-- page 716 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

716


<!-- page 717 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

717


<!-- page 718 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

718


<!-- page 719 -->
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

Webhook use cases
Webhooks can be used to integrate data from ServiceNow CPQ to other downstream systems.
Use cases include:
• Displaying the ServiceNow CPQ native UI via direct URL and sending the config result, via
webhook, to a third-party destination. See:
Use case: Displaying the ServiceNow CPQ native UI via direct URL
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

719


<!-- page 720 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

720


<!-- page 721 -->
Webhook details

1. URL: The endpoint to receive the data from Logik on save of a configuration. Must be able to
receive an HTTP POST request.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

721


