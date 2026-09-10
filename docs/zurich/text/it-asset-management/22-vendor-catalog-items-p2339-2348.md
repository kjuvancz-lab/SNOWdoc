# Zurich IT Asset Management — Vendor catalog items / Product catalog items

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2339–2348 of 2359

Sections: Vendor catalog items (p2339); Product catalog items (p2343)

---

<!-- page 2339 -->
Before you begin

Role required: catalog_admin

Procedure
1. Navigate to All > Product Catalog > Product Model > All Models.
2. Open a product model.
When you publish a catalog item from a model, the property
glide.model.catalog_item_currency decides the currency on the catalog item.
This property is set to false by default and the value is set to user session currency. If you set
this property to true, the value is set to model currency.
3. In Related Links, click Publish to Hardware or Publish to Software Catalog.
4. Select a category.
5. Click OK.

Delete models
If a model is no longer needed, you can delete it as long as no assets or configuration items use
the model.

Before you begin

Role required: model_manager

Procedure
1. Navigate to All > Product Catalog > Product Model > All Models.
2. Select the check box beside the product model.
3. From the Actions choice list below the list, select Delete.
4. Click OK.

Vendor catalog items
The vendor catalog is a list of goods available from different vendors.
An accurate and complete vendor catalog can make it easier to keep items in stock at the best
possible price.
You can link multiple vendor catalog items to a single product catalog item, which allows you to
track information about a single item at different vendors.
For example, for an iPhone 5 product catalog item, you can create separate vendor catalog items
from Apple and from Amazon. Select the vendor with the best price when you source an item.
Users need the model_manager role to work with vendor catalog items.

Synchronize information
Certain information is synchronized between models, product catalog items, and vendor catalog
items.
When working with models, product catalog items, and vendor catalog items, keep the following
in mind:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2339


<!-- page 2340 -->
• Changes to model record update vendor catalog items automatically only if the vendor catalog
items are published, not linked.
• If a model is linked to a vendor catalog item, any changes to the model do not update the
vendor catalog item.
• After publishing a vendor catalog item or model to the hardware or software catalog,
some fields become read-only on the vendor catalog item or product catalog item record.
Information can only be updated on the model record.
List of synchronized fields:
• Description
• Short description
• Name
• Product ID
• Price
• Vendor
• Specs
• Features
• Model
• UPC
• Model number
• Cost
• Manufacturer

Create a vendor catalog item
Create a vendor catalog item to associate product models with a vendor.

Before you begin

Role required: model_manager

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Vendor Items.
2. Click New.
3. Complete the form.
Vendor Catalog Item fields
Field

Description

Name

The name of the item is built from information in the Product Model, Vendor,
and Product ID fields.

Vendor

The supplier that provides the item.

Product
model

The specific version or configuration of the item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2340


<!-- page 2341 -->
Field

Description

Out of stock

The option that indicates whether the item is unavailable for order. This field
is important if you are sourcing request items. Clear this check box if the item
is available to order.

Product ID

The item identification number assigned by your organization.

List price

The price at which the item retails, excluding vendor discounts.

Vendor price

The price at which the item is available in the vendor catalog. If the vendor
offers a discount, the vendor price reflects the discounted price.

Rank tier

Displays the overall ranking for this vendor's products and services, such as
Valued Partner or Tactical Supplier. Rank tier expresses your organization's
opinion of this vendor's performance. It can be used to decide if the
vendor's products should be promoted or discontinued. Users with the
vendor_manager role can edit this field.

Short
description

A brief description of the item.

General section
Product
catalog item

Name of the product catalog item, if the item has been added to the product
catalog. Leave this field empty if you are going to link a vendor catalog item to
the hardware catalog.

UPC

The barcode number used to uniquely identify and track items for sale.

Active

Select the check box to list the item in the vendor catalog. Clear this check
box to hide the item in the vendor catalog.

Description

A detailed description of the item.

Information section
Specifications Facts about the item such as size, weight, version, or speed.
Features

Distinct properties or distinguishing characteristics of the item.

4. Click Submit.
Link an item to the hardware catalog
After you create a vendor catalog item, link the item to the hardware catalog for viewing.

Before you begin

Role required: model_manager

About this task

To see the Link to Hardware Catalog Item related link on the Vendor Catalog Item form, add
a hardware model or a consumable model to the Product Model field, and leave the Product
Catalog Item field blank.

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Vendor Items.
2. Open a vendor catalog item.
3. In Related Links, click Link to Hardware Catalog Item.
4. Select a Catalog Item.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2341


<!-- page 2342 -->
5. Click OK.
The page refreshes to the selected hardware catalog item. The vendor catalog item is listed in
the Vendor Catalog Items related list.
Link an item to the software catalog
After you create a vendor catalog item, link the item to the software catalog for viewing.

Before you begin

Role required: model_manager

About this task

To see the Link to Software Catalog Item related link on the Vendor Catalog Item form, add
a software model or a consumable model to the Product Model field, and leave the Product
Catalog Item field blank.

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Vendor Items.
2. Open a vendor catalog item.
3. In Related Links, click Link to Software Catalog Item.
4. Select a Catalog Item.
5. Click OK.
The page refreshes to the selected software catalog item. The vendor catalog item is listed in
the Vendor Catalog Items related list.
Publish an item to the hardware catalog
After you create a hardware item for the vendor catalog, publish it to the hardware catalog for
viewing. The hardware catalog is a section within the service catalog.

Before you begin

Role required: catalog_admin

About this task

To see the Publish to Hardware Catalog Item related link on the Vendor Catalog Item form, add
a hardware model or a consumable model to the Product Model field, and leave the Product
Catalog Item field blank.
After you publish a vendor catalog item to the hardware catalog, the Publish to Hardware
Catalog related link is no longer available. Any changes made on the vendor catalog item record
are synchronized with the information in the hardware catalog.

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Vendor Items.
2. Open a vendor catalog item.
3. In Related Links, click Publish to Hardware Catalog.
4. Select a Category.
5. Select OK.
The published item is listed in the Vendor catalog Items related list of the Hardware Catalog
form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2342


<!-- page 2343 -->
Publish an item to the software catalog
After you create a software item for the vendor catalog, publish it to the software catalog for
viewing. The software catalog is a section within the service catalog.

Before you begin

Role required: catalog_admin

About this task

To see the Publish to Software Catalog Item related link on the Vendor Catalog Item form, add
a software model or a consumable model to the Product Model field, and leave the Product
Catalog Item field blank.
After you publish a vendor catalog item to the software catalog, the Publish to Software Catalog
related link is no longer available. Any changes made on the vendor catalog item record are
synchronized with the information in the software catalog.

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Vendor Items.
2. Open a vendor catalog item.
3. In Related Links, select Publish to Software Catalog.
4. Select a Category.
5. Select OK.
The published item is listed in the Vendor catalog Items related list of the Software Catalog
form.

View a vendor list
You can view a list of vendors from the product catalog.

Before you begin

Role required: model_manager

About this task

The list includes every company that has the Vendor option selected on its record.

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Vendors.
2. Click any vendor Name for more information.

Product catalog items
Product catalog items are hardware and software that you can track and offer in the service
catalog.
The product catalog is an extension of the Service Catalog
that contains a list of available
Models. Users with the catalog_admin role can create, activate, and deactivate product catalog
items.

Create a product catalog item
Create hardware and software product catalog items to include in the product catalog and the
service catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2343


<!-- page 2344 -->
Before you begin

Role required: catalog_admin

About this task

You must activate the items separately before they appear in the product catalog or service
catalog.

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Hardware & Software Items.
2. Select New.
3. Complete the form.
Some of the fields listed do not appear until you save the product catalog item.
Product catalog item fields
Field

Description

Name

Name of the item as you want it displayed in the product catalog.

Catalogs

Catalog this item is listed in.

Vendor

Vendor that supplies the item. If the item is purchased from multiple vendors,
use the vendor catalog and leave this field empty.

Rank tier

Overall ranking for the selected vendor's products and services. This field
is shown in a Product Catalog Item record when the CI class is Hardware
Catalog or Software Catalog.

Model

Specific version or configuration of the item.

Product ID

Item identification number assigned by your organization.

Price

Price at which the item is available in the product catalog. Enter a numerical
value and select the appropriate currency.

Recurring
price

Item's recurring price. For example, a subscription to a mobile phone contract
could cost $500.00, with an $30.00 monthly recurring price.

Recurring
price
frequency

Interval at which the recurring price is accrued.

List Price

Price at which the item retails. This field is shown only when the Class is
Hardware Catalog or Software Catalog.

Cost

Price at which the item was purchased from the vendor. The cost could be
less than the List Price if your organization received a discount from the
vendor. This field is shown in a product catalog item record only when the CI
class is Hardware Catalog or Software Catalog.

Omit price in
cart

When selected, hides the price when the item is displayed in the service
catalog. Clear the check box to show the price in the service catalog. This
field is only visible in a product catalog item record when the CI class is
Hardware Catalog.

Workflow

Workflow associated with this item.
You can view the activities, the conditions, and the stages associated with
the workflow by selecting Show Workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2344


<!-- page 2345 -->
Field

Description

Execution
plan

Execution plan associated with this item.

Short
description

Brief description of the item.

Ordered item
link

List of links containing more information about items. The links can be reused
across multiple items.

Class

Catalog item class this item belongs to. Select Hardware Catalog or
Software Catalog. This field is visible by default. When you save the record
as a hardware or software catalog item, the form is retitled Hardware Catalog
or Software, respectively.

General section
Category

Named group of items to which the item belongs.

Delivery time

Amount of time it takes to deliver the item, starting from when it is ordered
from the product catalog.

UPC

Barcode number used to identify and track items.

Description

Detailed description of the item. The description is displayed in the product
catalog listing.

Product Information section
Cost

Price at which the item was purchased from the vendor. This field is only
visible when the Class is Software Catalog.

Specifications Facts about the item, such as size, weight, version, or speed.
Features

Distinct properties or distinguishing characteristics of the item.

Images section
Icon

Small image that appears next to the name when the item is displayed in the
service catalog. Supported file types are jpg, png, bmp, gif, and jpeg.

Picture

An image showing the item. Supported file types are jpg, png, bmp, gif,
and jpeg.

Related lists
Includes

More catalog items provided with this item. This related list is for
informational purposes only.

Variables

Service catalog variables associated with this item. A service catalog variable
captures and passes on information about choices a customer makes when
ordering an item from the service catalog.

Vendor
Vendor catalog items associated with this item. Vendor catalog items allow
Catalog Items you to track information about this item by its specifications for each vendor.
Example
Hardware catalog item record with an icon and picture of the item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2345


<!-- page 2346 -->
Hardware catalog item

4. Optional: Select Try It to preview the item as it appears in the service catalog.
5. Select Submit or Update.
Related topics
Create a vendor catalog item
Create an execution plan
Service catalog variables

Activate a product catalog item
Activate a product catalog item to make it available in the product catalog and the service
catalog.

Before you begin

Role required: catalog_admin

About this task

You can activate the item from either the list view or the record.

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Hardware & Software Items.
2. Complete one of the following actions.
Option

Description

Activate one or more items from the list
view

Select the check box next to one or more
items in the record list and select Activate be­
low the list.

Activate from the record

Select Activate under Related Links.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2346


<!-- page 2347 -->
Deactivate a product catalog item
Deactivate a product catalog item to remove it from the product catalog and the service catalog.

Before you begin

Role required: catalog_admin

About this task

You can deactivate the item from either the list view or the record.

Procedure
1. Navigate to All > Product Catalog > Catalog Definition > Hardware & Software Items.
2. Complete one of the following steps.
Option

Description

Deactivate from the list view

Select the check box next to one or more
items in the record list and click Deactivate
below the list.

Deactivate from the record

Select Deactivate under Related Links.

Import a Product Catalog item
Import a hardware and software product catalog item from one ServiceNow instance to another
ServiceNow instance to include it in the product catalog.

Before you begin

Role required: admin

About this task

To import hardware or software product catalog items from one ServiceNow instance to another,
use the product model and update sets XML file exported from the source ServiceNow instance.

Note: Product model records aren’t included in update sets. When you import an
update set into the target instance, only the catalog item records are transferred. To avoid
validation errors, first import the product model records, and then import the catalog item’s
update set into the target ServiceNow instance.

Procedure
1. In the source ServiceNow instance, export the hardware or software product model record
XML file.
Option

Description

a. Navigate to All > Product Catalog > Prod­
uct Models > Hardware Models.

To export hardware product model record
XML file

b. Select the required hardware model name
link.
c. On the hardware model form, select the Ad­
ditional actions
icon and then select Ex­
port XML (This record).
d. Save the exported hardware model XML file
on your local system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2347


<!-- page 2348 -->
Option

Description

a. Navigate to All > Product Catalog > Prod­
uct Models > Software Models.

To export software product model record
XML file

b. Select the required software model name
link.
c. On the software model form, select the Ad­
ditional actions
icon and then select Ex­
port XML (This record).
d. Save the exported software model XML file
on your local system.

2. In the source ServiceNow instance, perform these steps to export the local update set
containing the catalog item.
a. Navigate to All > System Update Sets > Local Update Sets.
b. Select the local update set name to open the update set record.
c. In the Related Links section, select Export to XML.
d. Save the exported update set XML file on your local system.
3. In the target ServiceNow instance, import the hardware or software product model record XML
file.
Option

Description

a. Navigate to All > Product Catalog > Prod­
uct Models > Hardware Models.
b. Hover over any column header in the Hard­
ware Models list to display the Column Op­
tions
To import hardware model record XML file

icon.

c. Select Column options
lect Import XML.

icon and then se­

d. Select Choose File and select the hard­
ware model record XML file saved previous­
ly in Step 1.
e. Select Upload.
a. Navigate to All > Product Catalog > Prod­
uct Models > Software Models.
b. Hover over any column header in the Soft­
ware Models list to display the Column Op­
tions
To import software model record XML file

icon.

c. Select Column options s
select Import XML.

icon and then

d. Select Choose File and select the software
model record XML file saved previously in
Step 1.
e. Select Upload.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2348


