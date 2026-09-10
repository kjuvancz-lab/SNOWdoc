# Zurich IT Asset Management — Product Catalog / Models

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2328–2338 of 2359

Sections: Product Catalog (p2328); Components installed with Product Catalog (p2329); Models (p2330)

---

<!-- page 2328 -->
After you delete the integration profile, Software Asset Management doesn’t consider any in
progress requests. Ensure that all the requests in progress are completed before you delete the
integration profile.

Domain separation and Procurement
Domain separation is supported in Procurement processing. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2328


<!-- page 2329 -->
Related topics
Asset and CI management

Components installed with Product Catalog
The following components are installed with the Product Catalog plugin.
Demo data is available with the product catalog. The demo data provides various models, model
categories, product catalog items, vendor catalog items, and vendors.

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

model_manager

Description

Can create CMDB models.

category_manager Can do everything that model managers can do and can
administer model categories.

Contains roles

none
model_manager

Script includes installed with Product Catalog
Product Catalog plugin adds the following script include.

Table

Description

ProductCatalogUtils Utilities for creating and maintaining product catalog items derived from
vendor catalog items and models.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2329


<!-- page 2330 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2330


<!-- page 2331 -->
See Model form fields for a list of the fields that appear on all models, regardless of the type of
model.
Related topics
Asset Management
Procurement

Model form fields
There are fields on the Model form that apply to all types of models.

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

The Use depreciation with fixed assets for the model.

Salvage
value

The estimated value that an asset realizes upon its sale at the end of its useful
life. This value must be less than or equal to the cost of the asset.

Model
number

The specific model number assigned to the item
by the manufacturer. Setting the system property

glide.cmdb.makeandmodel.use_model_number_lookup to true
enables you to lookup the model number of hardware models through the
MakeAndModelJS script.
Barcode

The barcode number assigned to the model. Barcodes are assigned by the
manufacturer.

Owner

The person responsible for the model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2331


<!-- page 2332 -->
Field

Description

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2332


<!-- page 2333 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2333


<!-- page 2334 -->
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
bundles.
Bundled models can be abstract or concrete.
Abstract
Permits use of one model in multiple bundles. The abstract bundle is created as
a container. One asset in the bundle is specified as the main component. Model
categories define which assets can be included in a bundle. Model categories also
define what can be the main component of a bundle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2334


<!-- page 2335 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2335


<!-- page 2336 -->
4. Select the Model category of the component, such as Computer.
5. Select the Component, such as Apple Computer MacBook Pro 17".
6. Select the Is main component check box if this component is the one that other components
are attached to.
7. Click Submit.
8. Repeat steps 3–7 to add more components to the bundle.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2336


<!-- page 2337 -->
About this task

No component history is retained. If you remove a component from a bundled model, no record
is saved showing that the component was ever part of a bundle.

Procedure
1. Navigate to All > Product Catalog > Product Model > Bundled Models.
2. Open a bundle record.
3. In the Model Components related list, select the component you want to remove.
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
model, see Create software models.

Create application models
You can create application models that can be managed and tracked within a Scrum
development process.

Before you begin

Role required: model_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2337


<!-- page 2338 -->
Procedure
1. Navigate to All > Product Catalog > Product Model > Application Models.
2. Click New.
3. Complete the form.
For general field descriptions, see Model form fields. There are no fields specific to application
models.
4. Click Submit.
Related topics
Agile Development 2.0

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2338


