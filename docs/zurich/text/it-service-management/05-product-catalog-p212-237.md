# Zurich IT Service Management — Product Catalog

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 212–237 of 3857

Sections: Product Catalog (p212)

---

<!-- page 212 -->
Support level: Standard*
The support level is Standard but has some exceptions or special conditions.
• Includes all aspects of Basic level support.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must be able to configure minimum viable product (MVP) business logic
and data parameters. This configuration is done per tenant, as expected for the specific
application.
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

How domain separation works in Procurement
To create or edit Purchase Orders (POs) or PO line items that distinguish the domain, customers
must be working in the proper domain. When adjusting any configuration, you should be in the
domain where you're doing the work. Use the domain picker to choose the correct domain to
work in.
Related topics
Domain separation for service providers

Product Catalog
The product catalog is a set of information about individual models. Models are specific versions
or various configurations of an asset. Asset managers use the product catalog as a centralized
repository for model information.
A detailed and well-maintained product catalog can coordinate with service catalog, asset,
procurement, request, contract, and vendor information.
Models published to the product catalog are automatically published to the Service Catalog .
The service catalog includes information about goods (models) and services. If the model is
available from multiple vendors, a model can be listed more than once. Models are included with
the Asset Management application.
Keep the following in mind when working with the product catalog.
• A product catalog item can be linked to multiple vendor catalog items or to a single model.
• A model can only have one product catalog item.
• A vendor catalog item can only have a single product catalog item.
Related topics
Asset and CI management

Components installed with Product Catalog
The following components are installed with the Product Catalog plugin.
Demo data is available with the product catalog. The demo data provides various models, model
categories, product catalog items, vendor catalog items, and vendors.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

212


<!-- page 213 -->
Tables installed with Product Catalog
Product Catalog plugin adds the following tables.

Table

Description

Hardware Catalog

Stores all hardware catalog items that have been published from
[pc_hardware_cat_item] the Product Model [cmdb_model] base table. Extends the Product
Catalog Item [pc_product_cat_item] table.
Product Catalog Item
[pc_product_cat_item]
Software Catalog
[pc_software_cat_item]

Vendor Catalog Item

Stores all information for the product catalog. This table extends the
Catalog Item [sc_cat_item] table.
Stores all software catalog items that have been published from
the Product Model [cmdb_model] base table. Extends the Product
Catalog Item [pc_product_cat_item] table.
Stores all vendor catalog item information.

[pc_vendor_cat_item]
Roles installed with Product Catalog
Product Catalog plugin adds the following roles.

Role

Description

model_manager

Contains roles

Can create CMDB models.

category_manager Can do everything that model managers can do and can
administer model categories.

none
model_manager

Script includes installed with Product Catalog
Product Catalog plugin adds the following script include.

Table

Description

ProductCatalogUtils Utilities for creating and maintaining product catalog items derived from
vendor catalog items and models.
Client scripts installed with Product Catalog
Product Catalog plugin adds the following client script.

Client
script

Set
Model
Fields

Table

Script contents

[pc_vendor_cat_item] Adds the description and price, if they do not exist, when a
vendor catalog item is added to the product catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

213


<!-- page 214 -->
Business rules installed with Product Catalog
Product Catalog plugin adds the following business rules.

Business rule

Table

Description

Clear model

[pc_product_cat_item]

Clears the link on a model when the link is
cleared from the product catalog.

Create child
product
catalog
entries

[cmdb_hardware_product_model] Creates entries in the product catalog for
all items in a bundled model when the
bundled model is created.

Sync to
Product
catalog item

[pc_vendor_cat_item]

Updates the corresponding field in the
product catalog when a field is updated.

Sync to
Product
catalog item

[cmdb_model]

Updates the corresponding field in the
product catalog when a field is updated.

Related topics
Business rules

Models
Models are specific versions or various configurations of an asset. Models are used for managing
and tracking assets through various ServiceNow platform asset applications, including Product
Catalog, Asset Management, and Procurement.
Model definitions can be based on vendor-provided criteria, for example, the manufacturer name
Apple MacBook Pro, or on a custom abstraction, for example, Graphic Designer Workstation. All
model information is located in the Product Catalog application.
A model can be in one or more model categories. For example, a laptop can be a computer and
a server. Model definitions specify whether the model creates an asset, a configuration item, or
both. On a hardware model record, compatible hardware models can be added.
Unless otherwise noted, working with product models requires the model_manager role. This role
is contained by other roles, such as sam, category_manager, and asset.

Creating models
Models are created in the Product Catalog > Product Model > All Models module.
See Model form fields for a list of the fields that appear on all models, regardless of the type of
model.
Related topics
Asset Management
Procurement
Model form fields
There are fields on the Model form that apply to all types of models.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

214


<!-- page 215 -->
Field

Description

Display name Name of the model. A system property called

glide.cmdb_model.display_name.shorten controls how software
model display names are generated.
Manufacturer The company that built the model.
Name

The manufacturer-assigned name of the model or abstract name specified by
the model manager, such as Field Agent Laptop.

Edition

The edition of the software model, such as Professional.

Short
description

A brief description of the model.

Model
categories

The categories to which the model is assigned. This field is a glide list and
cannot be used to create reports.

Asset
tracking
strategy

The process by which the model can be tracked. Choose from the following:
• Leave to Category: model is transparent and the category defines the asset
class.
• Create Consumable Asset: model forces the asset class to be consumable,
regardless of what the category defines as the asset class.
• Don't create assets: model blocks asset instantiation, regardless of what the
category defines as the asset class.

Acquisition
method

The method for purchasing the model. Options are Both, Buy, or Lease.

Cost

The cost of a single unit of the model.

Depreciation

The Use depreciation with fixed assets

Salvage
value

The estimated value that an asset realizes upon its sale at the end of its useful
life. This value must be less than or equal to the cost of the asset.

Model
number

The specific model number assigned to the item
by the manufacturer. Setting the system property

for the model.

glide.cmdb.makeandmodel.use_model_number_lookup to true
enables you to lookup the model number of hardware models through the
MakeAndModelJS script.
Barcode

The barcode number assigned to the model. Barcodes are assigned by the
manufacturer.

Owner

The person responsible for the model.

Status

The status of the model. Options are In Production, Retired, and Sold.

Expenditure
type

The type of expenditure. Choose from the following:
• Capex: Capital expenditure is a one-time expenditure, where the value is
realized over the years. For example, a photocopier.
• Opex: Operational expenditure is an on-going expenditure. For example,
toners for the photocopier.

Certified

The option that determines whether the model is approved for use.

Comments

Information about the model that would be helpful for others to know.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

215


<!-- page 216 -->
Field

Description

Assets

The assets created from this model. This creation can have any combination of
assets and configuration items. For example, with a single hardware model you
can have assets and no configuration items, configuration items and no assets,
or have both.

Configuration The configuration items created from this model. Can have any combination of
Items
assets and configuration items.
Product
Catalog

The information about the model as it appears in the product catalog and
service catalog. Information only appears if the model has been published to
the product catalog.

Create hardware models
Use hardware models to track equipment assets such as servers and racks. You can create a
new hardware model.

Before you begin

Role required: model_manager

Procedure
1. Navigate to All > Product Catalog > Product Model > Hardware Models.
2. Click New.
3. Complete the form.
For general field descriptions, see Model form fields. The hardware model fields listed are
found in the Information section of the form.
Model form fields for hardware models
Field

Description

Height (U)

The total height of the hardware item, in inches.

Flow Rate (cfm)

The flow rate of the hardware model, expressed in cubic feet per
minute.

Sound Power
(bels)

The noise measurement, in bels (1 bel=10 decibels).

4. Click Update.
Add compatible models to a hardware model
On a hardware model record, you can add compatible hardware models, giving you a good
method for tracking hardware assets that can work together.

Before you begin

Role required: model_manager

About this task

Note: Hardware models included in bundled models cannot be added as compatibles.

Procedure
1. Navigate to All > Product Catalog > Product Model > Hardware Models.
2. Click a hardware model Name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

216


<!-- page 217 -->
3. Click Add Compatible.
4. Select a compatible model.
5. Click Submit.
The selected model is listed in the Compatibles related list.
Related topics
Models
Bundled models
Add substitute models to a hardware model
On a hardware model record, you can add substitutes to track what hardware models can be
substituted for another hardware model.

Before you begin

Role required: model_manager

About this task

For example, a 19" monitor can be a valid substitute for a 17" monitor. Note that substitutions are
directional so, in this case, a 17" monitor is not a substitution for a 19" monitor. Information about
valid substitute models is useful when you select models while creating transfer orders.
When you select substitute models, note the following conditions.
• Substitute models can be used with work management transfer orders. Substitute models are
not used in procurement part sourcing.
• Hardware models included in bundled models cannot be added as substitutes.

Procedure
1. Navigate to All > Product Catalog > Product Model > Hardware Models.
2. Click a hardware model Name.
3. Click Add Substitution.
4. In the Collection list on the left, double-click a hardware model.
The hardware model is added to the List on the right.
5. Click Save.
The model is listed in the Substitutes related list.
Related topics
Models
Bundled models
Manage transfer orders
Procurement
Create consumable models
Consumables are items that are tracked as a group, not individually. An example of consumable
items is computer keyboards.

Before you begin

Role required: model_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

217


<!-- page 218 -->
Procedure
1. Navigate to All > Product Catalog > Product Model > Consumable Models.
2. Click New.
3. Complete the form.
For general field descriptions, see Model form fields. There are no fields specific to
consumable models.
Any consumable assets you create and assign to the new model are displayed in the
Consumables related list on the model record.
4. Click Submit.
Bundled models
A bundled model is a single model comprised of individual models. For example, a laptop,
printer, keyboard, and mouse can be combined into a single bundled model. If you assign any
one asset from the bundled model to an individual, that person receives all the components in
the bundle.
Bundled model is a template to define the kind of assets that would be a part of asset bundles.
To maintain the integrity between asset bundles and bundled models, select the Bundle assets
check box in the Product Model form layout. Once you select the check box, the status of the
bundled model defaults to Build. While the status is in build, you can add make changes to the
bundled model. Once you change the status to In Production, no changes can be made to the
bundled model. Now that the bundled model is read-only, you can create asset bundles out of
this bundled model. You can change the status of the bundled model back to Build only if there
are no asset bundles associated with the bundled model.

Note: The Bundle assets check box functionality is available only with the Hardware
Asset Management licensable application. Hardware Asset Management is available in the
ServiceNow Store. To view more information on the asset bundle functionality, see asset
bundles .
Bundled models can be abstract or concrete.
Abstract
Permits use of one model in multiple bundles. The abstract bundle is created as
a container. One asset in the bundle is specified as the main component. Model
categories define which assets can be included in a bundle. Model categories also
define what can be the main component of a bundle.
Add a main component to make it easier to track the bundle components. For
example, create an abstract bundle adding a computer as the main component and
a mouse and keyboard as additional components. When the bundle is assigned to a
user, the asset record for the computer shows the computer, mouse, and keyboard
all assigned to the user. Abstract bundles are used more often than concrete
bundles.
Concrete
Is a fixed bundle where the main component is an asset. Specify the main
component and the other components to create an exact bundle. Concrete bundles
do not allow for a many-to-many relationship with models.
Keep the following tips in mind when creating and using bundled models.
• Bundles can be nested inside bundles.
• Any type of model can be used in a bundle.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

218


<!-- page 219 -->
• When a parent link is defined, the fields related to assignment and state of the child assets are
read-only. They are populated based on the parent's assignment and state fields.
• If you make a change to the parent bundle, the children in the bundle are affected. For
example, if you assign a bundle to an individual, all child asset records show that same
individual as the person assigned.
• You cannot pre-allocate bundles.
• In a bundle, consumables are consumed and assets are set to the same state as the main
component.
• Only the bundle, not individual components, can be part of a transfer order.
• You control what can go into a bundle through the model category. For example, the model
category Servers could be set to never allow servers in bundles.
• To create a collection of software, you must create a suite instead of a bundled model.
• A software license cannot be the main component of a bundle.
To create an abstract model, set the model category to Bundle and add the components. To
create a concrete model, create a model in the Product Catalog > Product Model > Bundled
Models module and add components.
Related topics
Consume consumable assets
Create pre-allocated assets
Model categories
Add model components to a bundle
Add model components to a model as needed, for example, when you upgrade a bundle to
include additional assets.

Before you begin

Role required: model_manager and asset

Procedure
1. Navigate to All > Product Catalog > Product Model > Bundled Models.
2. Open a bundle record.
3. In the Model Components related list, click New.
4. Select the Model category of the component, such as Computer.
5. Select the Component, such as Apple Computer MacBook Pro 17".
6. Select the Is main component check box if this component is the one that other components
are attached to.
7. Click Submit.
8. Repeat steps 3–7 to add more components to the bundle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

219


<!-- page 220 -->
Any components you add to the bundled model are displayed in the Model Components
related list.
Bundled model components

Related topics
Models
Remove model components from a bundle
Remove a component from a bundled model, for example, when you want to replace it with a
different component.

Before you begin

Role required: model_manager

About this task

No component history is retained. If you remove a component from a bundled model, no record
is saved showing that the component was ever part of a bundle.

Procedure
1. Navigate to All > Product Catalog > Product Model > Bundled Models.
2. Open a bundle record.
3. In the Model Components related list, select the component you want to remove.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

220


<!-- page 221 -->
4. In the Actions choice list below the list, select Delete.
5. Click OK.
Publish bundled models to product catalog
You can publish bundled models to the product catalog to make the bundled models available in
the service catalog.

Before you begin

Role required: catalog_admin or catalog_manager

About this task

You can publish a bundled model only under the following conditions:
• The model should be created in the cmdb_model table.
• The model shouldn’t have an existing catalog item.

Procedure
1. Navigate to All > Product Catalog > Product Models > Bundled Models.
2. Open a product model.
3. In Related Links, select Publish to product catalog.
4. Select a category.
5. Select OK.
Software models
Software models are created as part of the asset management process. You can create product
models for software from the product catalog, but you cannot administer all aspects of the
software models.
Software models are used in software counters. For more information about creating software
model, see Create software models .
Create application models
You can create application models that can be managed and tracked within a Scrum
development process.

Before you begin

Role required: model_manager

Procedure
1. Navigate to All > Product Catalog > Product Model > Application Models.
2. Click New.
3. Complete the form.
For general field descriptions, see Model form fields. There are no fields specific to application
models.
4. Click Submit.
Related topics
Agile Development 2.0
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

221


<!-- page 222 -->
Work order models
When work management is activated, the ServiceNow platform adds the Work Order Models and
Work Task Models modules to the product catalog.
Users with the wm_admin role can define new model records, which can be used as templates to
create work orders for common procedures.
Models created for VMware support and Amazon EC2
When you activate Orchestration for VMware and Amazon EC2, the system creates models
automatically.
The system creates the following models:
• A vmware instance for VMware
• An ec2 instance for Amazon
When the virtual machine is terminated, the asset state changes to Retired.
Add skills to a model
You can associate skills with any model. Creating associations between skills and models is
helpful if you are using work management and want to assign tasks to agents based on their
skills with specific models.

Before you begin

Role required: skill_admin or model_manager

Procedure
1. Navigate to All > Product Catalog > Product Model > All Models.
2. Open a product model.
3. In the Skills related list, click Edit.
4. Add items from the Collection list to the Skills List.
5. Click Save.
Publish models to the hardware or software catalog
You can publish models to the hardware or software catalog to make the models available in the
service catalog.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

222


<!-- page 223 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

223


<!-- page 224 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

224


<!-- page 225 -->
Field

Description

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

225


<!-- page 226 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

226


<!-- page 227 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

227


<!-- page 228 -->
Field

Description

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

228


<!-- page 229 -->
Field

Description

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
Hardware catalog item

4. Optional: Select Try It to preview the item as it appears in the service catalog.
5. Select Submit or Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

229


<!-- page 230 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

230


<!-- page 231 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

231


<!-- page 232 -->
Option

Description

a. Navigate to All > Product Catalog > Prod­
uct Models > Hardware Models.
b. Hover over any column header in the Hard­
ware Models list to display the Column Op­
tions icon.
To import hardware model record XML file

c. Select Column options icon and then se­
lect Import XML.
d. Select Choose File and select the hard­
ware model record XML file saved previous­
ly in Step 1.
e. Select Upload.
a. Navigate to All > Product Catalog > Prod­
uct Models > Software Models.
b. Hover over any column header in the Soft­
ware Models list to display the Column Op­
tions icon.

To import software model record XML file

c. Select Column options s icon and then se­
lect Import XML.
d. Select Choose File and select the software
model record XML file saved previously in
Step 1.
e. Select Upload.

The product model has been successfully imported into the target ServiceNow instance and
appears on the models page.
4. In the target ServiceNow instance, perform these steps to import the update set XML file that
contains the catalog item.
a. Navigate to System Update Sets > Retrieved Update Sets.
b. In the Related Links section, select Import Update Set from XML.
c. Select Choose File and select the update set XML file saved previously in Step 2.
d. Select Upload.
The imported update set record is available as a retrieved update set with state Loaded.
e. Open the retrieved update set and select Preview Update Set.
Review updates and resolve any errors.

Result

The catalog items are imported into the target ServiceNow instance.

What to do next

Navigate to the Hardware Models or Software Models page in the target ServiceNow instance,
View the imported hardware or software model record, along with its catalog items that are
published.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

232


<!-- page 233 -->
Model categories
Model categories associate CI classes with asset classes. Model categories are part of the
Product Catalog application.
The model category configuration determines if the ServiceNow platform creates an asset from
a CI, and, if so, what class of asset. Asset classes in the base system are Hardware, Software
License, and Consumable. You can associate a model category to many models and a model to
many model categories. For example, a specific model of a computer can be a Computer and a
Server.
Models diagram

Any item that is provided as a service or sold to your customer is tracked as an Install Base Item
(IBI). The Model category table associates Asset class, CI class, and Install Base Item (IBI) class.

Note: The Install Base Item class field is available on the Model category form
only when the Customer Service Install Base Management [com.snc.install_base]
plugin is installed. Currently, only the Medical device install base item
[sn_hcls_medical_device_install_base_item] is supported when the Healthcare and Life
Sciences Service Management Core application is installed. For more details, see Medical
device install base item table . When an IBI class is created, it associates with an asset
when the asset exists, otherwise an asset is created.
The fields in the Asset class and the IBI class are synchronized as follows:
1. When an IBI class is updated, the Account, Consumer, Location, and Install date field changes
are synchronized with the corresponding fields of the Asset class.
2. When an Asset class is updated, the Location and Install date field changes are synchronized
with the corresponding fields of the IBI class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

233


<!-- page 234 -->
Related topics
CMDB classifications and class dependency
Create an asset class
View model categories
Default model categories are included with product catalog. You can view a list of default
categories and the categories that you created.

Before you begin

Role required: model_manager

Procedure
1. Navigate to All > Product Catalog > Product Model > Model Categories.
2. Open a model category to view its details.
Create model categories
You can add custom model categories for your instance.

Before you begin

Role required: model_manager

About this task

When you create model categories, keep the following in mind:
• The base system provides a model category for each CI class in the CMDB. As you create
cmdb_ci classes, create a corresponding row in the model category table for the model table
to be used.
• If you select an Asset class on any existing model category, the system automatically creates
assets for all configuration items associated with the model category, if configured to do so. If
an asset is not created automatically, you can create the asset manually. After an asset class is
selected for a model category, the asset class cannot be changed.
• The Allow pre-allocated, Allow in bundle, and Allow as main options are only available if an
asset class is specified for the model category.
• If you select Consumable or Software License for the asset class, the Allow in bundle option
is available, but not Allow pre-allocation or Allow as main.
• When a CI is created from a model category that requires asset tracking, the system
automatically creates an asset record for the asset class specified in the model category. It
then links that asset record to the CI. If a model is specified, the model category of the CI is
determined by a combination of the CI class and the list of categories supported by the model.
Asset tracking is specified on the model record.
• When an asset is created from a model category that requires CI tracking, the system
automatically creates a CI record of the class specified by the category and links it to the asset.
• The Model Categories list (Product Catalog > Product Model > Model Categories) shows all
the CI classes and what asset class is generated on the asset side.

Procedure
1. Navigate to Product Catalog > Product Model > Model Categories and select New.
2. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

234


<!-- page 235 -->
Model Category fields
Field

Description

Name

A descriptive name for this category.

CI class

If a CI class is needed, it must be specified when you create the model category.
You can't add the CI class the model category later.

Asset
class

Default options and any new asset classes you’ve created. Setting the asset
class triggers the creation of assets depending on the model category selected.
You can add an asset class to the model category later, but can't be changed
after it’s added. If you select Consumable or Software License, the CI class
field becomes read-only because consumables and software licenses don’t
create CIs. If you specify a CI class and then select Consumable or Software
License, theCI class field is changed to None automatically.
◦ Asset: An item that can be tracked individually.
◦ Consumable: An asset not tracked individually, such as keyboards.
◦ Hardware: A physical piece of computer equipment, such as a laptop or
server.
◦ Software License: A legal statement defining the uses of software, such as the
number of installations allowed or the terms of distribution.

Install
base item
class

Class to track the asset as an Install base item.

Note: This field is available only when the Customer Service
Install Base Management [com.snc.install_base] plugin is
installed. Also, currently, only the Medical device install base item
[sn_hcls_medical_device_install_base_item] is available when the
Healthcare and Life Sciences Service Management Core application is
installed.

Product
model
class

Class table where the models are stored. The default values are:
◦ Application
◦ Consumable
◦ Contract
◦ Facility
◦ Hardware
◦ Service
◦ Software
After you select a value, the table content, form views, and overall functionality
of the models created in the model category gets impacted.

Is product
instance

Identifies whether the model category is associated with Product Instance,
which is a logical grouping of asset, CI, and IBI class.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

235


<!-- page 236 -->
Field

Description

Note: This check box is read-only and is supported only for Medical
device model category. After you select this option, Product Instance
Identifier (PID), a unique identifier for asset, CI, and IBI class is generated
whenever you create an asset of that model category. However, for the
existing assets, the PID is generated only when any of the asset fields such
as Serial number, Model component ID, or Parent is updated.
Allow preallocation

Add and track items in this category asCreate pre-allocated assets

Allow in
bundle

Use items in this category in bundles.

Allow as
main

Use items in this category as the main component in a bundle.

.

Enforce CI Prevents the system from automatically creating assets in a specific model
verification category when CIs are added manually or found with Discovery. This option
enables an administrator to review and verify new CIs before adding them as
assets.
3. Select Submit.
Related topics
Discovery
Create assets manually
The ServiceNow AI Platform does not create an asset automatically under certain conditions. You
can create an asset manually as needed.

Before you begin

Role required: model_manager

About this task

The conditions under which an asset is not automatically created include the following.
• Forced CI verification: If you select the Enforce CI verification check box in the Model
Category form, the system does not create an asset automatically when a CI is created
or discovered. When Enforce CI verification is enabled, newly created CIs do not trigger
an automatic creation of an asset. Instead, these newly created CIs have their Requires
verification field automatically set to true, which displays the following UI actions for the CI:
◦ Create Asset: Creates an asset and sets Requires verification to false.
◦ Merge CI: Merges duplicates of a CI. This action is useful if an asset for the CI was created
in a separate process, which created an associated CI. Then a second CI was created either
manually or via the discovery source - and the duplicate CIs did not properly coalesce.
• Configuration errors: In rare cases, the system can fail to create the asset automatically. This
failure can occur if you assign the model and model category to the CI in the wrong sequence.
Follow these steps to create an asset manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

236


<!-- page 237 -->
Procedure
1. Navigate to All > Product Catalog > Product Model > Model Categories.
2. Open a model category that has no assigned CI class.
3. Click Create Assets.
This action creates assets from all CIs deferred for verification in this model category. This
option is only available for users with the admin role.
Edit model categories
All default model categories can be edited, except for the Contract model category. You can edit
any custom model categories that you created at any time.

Before you begin

Role required: model_manager

Procedure
1. Navigate to All > Product Catalog > Product Model > Model Categories.
2. Open a model category record.
3. Edit the fields as needed.

Note: If a CI class is needed, you must specify it when you create the model category.
You can't add the CI class to the model category later.
4. Click Update.
Delete model categories
If a model category is no longer needed, you can delete it.

Before you begin

Role required: model_manager

About this task

Only model categories that are not referenced by any models can be deleted.

Procedure
1. Navigate to All > Product Catalog > Product Model > Model Categories.
2. Select the check box beside the model category Name.
3. From the Actions on Selected Rows menu below the list, click Delete.
4. Click Delete.

Domain separation and Product Catalog
Domain separation is supported in the Product Catalog. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Standard
• Includes all aspects of Basic level support.
• Application properties are domain-aware as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

237


