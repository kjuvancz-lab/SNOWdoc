# Australia Sales Customer Relationship Management — Self-service using Business Portal / Lead-to-cash foundation apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 118–267 of 1645 | Part 1 of 5

Sections: Self-service using Business Portal (p118); Configure (p119); Lead-to-cash foundation apps (p120); Configure, price, quote apps (p199)

---

<!-- page 118 -->
Customer self-service for Sales Customer Relationship
Management
Support your business-to-business (B2B) customers by enabling self-service capabilities
through the Business Portal to create and manage orders, invoices, and requests for quotes.

Business Portal overview
The Business Portal is a self‑service, customer‑facing web interface in Sales Customer
Relationship Management that enables B2B customers to discover products, configure
offerings, and place orders directly through a secure, web‑based experience. The portal
complements internal sales workflows, enabling your customers to engage with the sales
process independently while remaining fully integrated with core CRM data and processes.
The Business Portal, which is based on Customer Service Management, streamlines order
placement, reduces dependency on manual sales interactions, and accelerates revenue
generation. It also provides integrated access to knowledge articles, community forums, service
catalogs, and chatbots.

Business Portal benefits
The Business Portal provides benefits for administrators and B2B customers. Administrators can
easily manage and administer the portal and install plugins to enable new features. The following
table lists the benefits for B2B customers.
Business Portal benefits for B2B customers
Benefit

Feature

Enable customers to place orders independently, reducing
sales cycle time and accelerating revenue realization.

Create orders from the
Business Portal

Accelerate pricing and proposal turnaround by enabling
customers to request quotes directly within the portal.

Submit a request for quote
from the Business Portal

Enable customers to view quotes generated from requests for
quotes (RFQs) or quotes created offline by a sales agent.

View quotes from the
Business Portal

Reduce customer dependency on customer service agents for
routine order inquiries or raising order issues such as quantity Request updates for one or
more orders
or address disputes.
Request updates for items in a
single order
Provide customers access to their invoice and invoice line
details so they can track billing information and identify
discrepancies.
Simplify invoice inquiries and dispute management through a
direct, trackable selfʼservice support channel.

View invoices on the Business
Portal

Dispute a specific line item
on an invoice against your
account using the Business
Portal
Dispute multiple invoices
against your account using the
Business Portal

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

118


<!-- page 119 -->
Business Portal and sales agents
Sales agents don’t directly use the Business Portal, but work on orders, order cases, invoice
cases, and RFQs submitted through the Business Portal from the CSM Configurable Workspace.
Depending on the process for orders, order cases, invoice cases, and RFQs, the agents work
on their assignments and work with the customers to provide resolution. For example, reviewing
RFQs, converting RFQs to quotes, applying price adjustments, and returning the quote to the
customer for approval.

What to explore next
The following topics provide more information about configuring and using the Business Portal:
• Configuring the Business Portal
• Customer self-service using the Business Portal
• Getting started with the Business Portal: Configure Business and Consumer Portal
• Business Portal reference for Sales Customer Relationship Management
• Using the Business Portal
• Business Portal user roles

Configuring Sales Customer Relationship Management
applications
Set up the Sales Customer Relationship Management (Sales CRM) applications so that your
agents can work on various stages of the product sales life cycle, such as sales opportunities,
quotes, order capture and fulfillment, contracts and entitlements, and also the basic product
catalog and pricing features used by each application.
As a user with the admin role, complete the following main configuration tasks to set up your
applications. Select a tile to learn about how to install and configure a set of Sales CRM
applications to implement and support pre-sales, sales, and post-sales workflows in your
organization.

Lead-to-cash foundation

Configure, price, quote

Set up core apps that
enable your leadto-cash processes.

Set up tools to configure
products and manage
pricing, quotes, and
sales agreements.

Lead and opportunity
management

Set up tools to capture
leads, engage customers,
manage opportunities,
forecast sales, and
define sales territories.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

119


<!-- page 120 -->
Order management

Order operations

Post-sales engagement

Set up tools to manage
order creation and
fulfillment, manage
jeopardy, and resolve
fallout issues.

Set up workflows to
manage end-to-end leadto-cash processes and
handle product returns.

Set up tools to manage
customer contracts,
entitlements, and
life cycle workflows
on sold products.

Partner Relationship
Management

Business Portal

Set up tools to onboard
partners, manage
relationships, and
enable collaboration.

Set up a self-service
portal for B2B customers
to place orders, submit
RFQs, view quotes,
and raise order cases.

Additional configuration tasks
•

Review and assign roles to users of the Sales CRM applications that you install.

• Configuring agent tools in Sales Customer Relationship Management
The applications in Sales Customer Relationship Management share common features and
tools for agents, such as location-based transactions.

Configuring the lead-to-cash foundation applications
Learn how to configure lead-to-cash foundation applications to establish a unified platform for
Sales Customer Relationship Management entities such as managing leads, opportunities,
quotes, and orders efficiently.
Installing and configuring the following applications involve installing the applications from the
ServiceNow Store store, assigning appropriate roles to users and groups, and then configuring
foundational features such as product catalogs, pricing, and customer data models.
1. Configuring product offerings and catalogs
Create product offerings and the associated product catalogs that can be used by Sales
Customer Relationship Management agents for pre-sales activities, order capture, and postsales engagement.
2. Install and configure Lead to Cash Core
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

120


<!-- page 121 -->
Install the Lead to Cash Core application which enables you to compose and build workflows
that your organization maintains for the life cycle of a sold product.
3. (Optional) Sales and Service API Core
Configure the Sales and Service API Core plugin to enable seamless tracking and
management of Sales Customer Relationship Management workflows through structured
inbound and outbound request handling, configurable flow processing, and integration with
external systems.
Related topics
Using lead-to-cash foundation applications
Lead-to-cash foundation reference

Configuring product offerings and catalogs
Create product offerings and the associated product catalogs that can be used by Sales
Customer Relationship Management agents for pre-sales activities, order capture, and postsales engagement.
As a product catalog administrator or catalog manager, you complete various configuration tasks
to create the product catalogs and offerings for products and services sold by your organization.
You also work with your pricing administrator, who sets the pricing for your product offerings. For
more information on pricing, see Configuring product pricing.
The following workflow example shows a typical series of steps for setting up catalogs
and product offerings, including the pricing configuration tasks performed by your pricing
administrator. Some steps may be optional in your organization, and other steps, such as setting
up product relationships between catalog entities, may occur in a slightly different sequence.
Product catalog and pricing configuration workflow

Note: Review your entitlements to see the product offering options available to you.
Overview of product offering and catalog configuration
Starting with the May 2024 release of Sales Customer Relationship Management applications,
you can use the CSM Configurable Workspace to configure product offering catalogs, product
offerings, and product offering relationships.
The following table identifies the configuration tasks for setting up the various features available
in Product Catalog Management.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

121


<!-- page 122 -->
Product offering and catalog management configuration tasks
Configuration task

Description

Create a product offering
catalog

Create a catalog, which is the top-level entity in the catalog
hierarchy. Catalogs can have categories, and categories can
have subcategories or product offers.

Create a product offering
category

Define a product offering category used to organize similar
product offerings in a catalog. Catalog categories make it
easier for agents to browse and navigate product offerings
when creating opportunities, quotes, and orders.

Create a product offering family Create a product offering family for products with similar
or common features that have multiple variations. You can
apply common rules or attributes for product offerings at
the product offering family level instead of applying them
individually to each product offering.
Create product characteristics
and characteristic options

Define the specific attributes, properties, and options that
distinguish a product offering, influencing its configuration
and pricing.

Create product offerings

Configure and add product offerings to catalogs and
categories. Once published, product offerings are available
to Sales Customer Relationship Management agents as they
create opportunities, quotes, and orders.

Add product visuals

Add images and thumbnails to your product offerings to help
agents as they build opportunities, quotes, and orders.

Create product offering
relationships

Create product relationships to bundle products and services
together to streamline the order process. Product offering
relationships drive the order capture experience by letting
you group multiple product offerings into bundles. Bundles
also let you offer special bundle pricing.

Control cascading quantity
values in child product
offerings

Control how the quantities for child line items in a product
offering for a quote or order are calculated by using the
sn_prd_pm.enable_cascade_quantity system
property.

Add related contracts to
product offerings

Add related contracts to your product offerings in the Sales
Customer Relationship Management application.

Add a unit of measure to a
product offering

Add a unit of measure (UOM) to a product offering in Sales
Customer Relationship Management.

Create a product offering
version

Create a product version to add updates to a published
product offering.

Create product offering
relationship groups

Combine bundles of product offerings into related groups in
Sales Customer Relationship Management.

Configure needs analysis

Create needs templates, which are questionnaires from
product selection guides that your agents use to determine
what product offers can be added to opportunities.

Configure product offering
recommendations for quotes

Create offer recommendations that sales agents can use to
complement or supplement items in their quotes.

Export and import product
catalog entities

Export and import product catalog entities between
ServiceNow instances. For example, you can promote catalog

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

122


<!-- page 123 -->
Product offering and catalog management configuration tasks (continued)
Configuration task

Description

entities from a non-production instance to a production
instance.
View product offering hierarchy View the complete hierarchy of a product offering and any
and associated specification
associated specifications (product, service, and resource).
hierarchy
Use these views to verify that all entities have been defined
and associated correctly.
Configure product offer
eligibility

Filter the product catalog, product categories, and product
offerings dynamically, to display only eligible product
offerings for a customer in the product catalog.

Related topics
Using product catalogs
Product Catalog Management
Create a product offering catalog
Create a product catalog that lists the product offerings available to your customers. Catalogs
are top-level entities in the catalog hierarchy. Catalogs have categories and categories can have
sub-categories or product offers.

Before you begin

Role required: sn_prd_pm.product_catalog_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Offerings > Product Offering Catalogs.
3. Select New.
In the form, fill in the fields.
Product Offering Catalog form
Field

Description

Number

System-generated number that identifies the
product catalog.

Name

Name of the catalog.

Thumbnail image

Thumbnail image of your catalog. Select
Attach Image to upload your image.

Image

Image of your catalog. Select Attach image to
upl0ad your image.

Default

Option that indicates this catalog is the
default catalog displayed to your agents.
Agents can switch from one default catalog to
another.

Description

A brief description of your product catalog,
for example, .

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

123


<!-- page 124 -->
Field

Description

State

State of the catalog. The supported life cycle
states are Draft, Published, Retired, and
Archived.

Start date

Date and time that the catalog is available for
Sales Customer Relationship Management
applications. Select the Calendar icon to
choose the start date and time, then select
OK.

End date

Date and time that the catalog is no
longer available for use in Sales Customer
Relationship Management. Select the
Calendar icon to choose the end date and
time, then select OK.

Code

System-generated product code for the
catalog.
The system automatically generates a code
based on the catalog Name entered, but
you can change the value to any desired
alphanumeric string.

4. Select Save.
The product offering catalog is in the Draft state.
5. Select Publish.
The catalog state changes to Published. The Categories tab opens for creating a product
offering category.

What to do next

Create product offering categories.
Related topics
Using product catalogs
Product Catalog Management
Create a product offering category
Define a product offering category used to organize similar product offerings in a catalog.
Product categories make it easier for agents to browse and navigate product offerings when
creating opportunities, quotes, and orders.

Before you begin

Role required: sn_prd_pm.product_catalog_admin and sn_prd_pm.product_catalog_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Offerings > Product Offering Categories.
3. Select New.
4. In the form, fill in the fields.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

124


<!-- page 125 -->
Product Offering Category form
Field

Description

Number

A unique system-defined number that
identifies the product category.

Name

Name of the category.

Leaf

Option indicating there are no subcategories
for this category. Selecting Leaf means the
category can have product offers but not
subcategories. If Leaf isn’t selected, the
category can only have subcategories but not
product offers.

Thumbnail image

Thumbnail image for the product offering
category. Select Attach Image to upload your
image.

Image

Image of the product offering category. Select
Attach Image to upload your image.

Description

A brief description of the category.

State

State of the category:
◦ Draft: Initial state of the category, before it's
published.
◦ Published: The product category has been
published to the catalog. After a category
is published, you can update it. You can
delete, retire, or archive it if there are no
associated product offerings.
◦ Retired: Category has been retired and
is no longer active. The category can’t be
updated.
◦ Archived: Category has been archived and
is no longer available for use.
◦ Copied to Catalog: The product category
has been copied.

Start date

Date and time that the category is available
in the catalog. Select the Calendar icon to
choose the start date and time, then select
OK.

End date

Date and time that the category is no longer
used in the catalog. Select the Calendar icon
to choose the end date and time, then select
OK

Code

Product code for the category.
The system automatically generates a code
based on the category Name entered, but
you can change the value to any desired
alphanumeric string.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

125


<!-- page 126 -->
5. Select Save.
6. Associate the category to a catalog.
a. In the Catalogs tab, select New.
b. In the Catalog Category form, select the published Catalog to which this category belongs
and select Save.
7. In the Details tab for the category, select Publish.
The category state changes to Published and is added to the selected catalog.
8. If needed, define the parent category and subcategories for the category using the Parent
categories and Child categories tabs.

What to do next

Create product offerings.
Related topics
Using product catalogs
Product Catalog Management
Create a product offering family
Create a product offering family for products with similar or common features that have multiple
variations. You can apply common rules or attributes for product offerings at the product offering
family level instead of applying them individually to each product offering.

Before you begin

Role required: sn_prd_pm. product_catalog_admin or sn_prd_pm.product_catalog_manager

About this task

A product offering family is a hierarchical classification of product offerings, like a category tree.
Product families can have parent-child relationships (multi-level tree). You can define parentchild relationships, where each node in the family tree can have a parent, forming a multi-level
hierarchy. With a product family you can:
• Apply rules or default attributes at the family level, which are inherited by descendent products
in the family.
• Aggregate sales data by family, such as total revenue, including all sub-family products, for
revenue reports.
For example, a product offering family hierarchy could be Hardware > Computers > Laptops. Each
product offering inherits rules that define items such as required warranties or other features
from the parent. Agents can view the product family for products in line items, which can provide
context on why certain rules or discounts are applied to a product offering.
After you create product offering families, you assign a product offering to a product offering
family when you create a product offering.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Offerings > Product Offering Families.
4. Select New.
Fill-in the form.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

126


<!-- page 127 -->
Create New Product Offering Family
Field

Description

Number

System-assigned number for the product
offering family.

Name

Product offering family name

Description

Short description of the product offering
family.

Parent family

If the product offering family that you're
creating is a child of an existing product
offering family, select the parent product
offering family.

5. Select Save.
The product offering family is available for use and can be selected when you create a product
offering.

What to do next

Create product offerings
Related topics
Using product catalogs
Product Catalog Management
Activate the display of product catalog visuals
Turn on the display of product images shown in the product tiles of product catalogs by using the
sn_prd_pm.show_product_visuals_on_catalog_ui system property.

Before you begin

Role required: admin

About this task
The sn_prd_pm.show_product_visuals_on_catalog_ui system property controls
the images displayed in commercial product catalogs. This property doesn’t apply to service
catalogs or product inventory catalogs.

Procedure
1. Navigate to All and in the filter enter sys_properties.list.
2. Open the sn_prd_pm.show_product_visuals_on_catalog_ui system property.
3. In the Value field, enter true to activate the display of product offering images in the product
catalog.
4. Select Update.
The product offering visuals are loaded in the catalog. If a product offering doesn't have a
visual, the text Image not available is presented in the product offering tile instead.
Related topics
Using product catalogs
Product Catalog Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

127


<!-- page 128 -->
Control cascading quantity values in child product offerings
Control how the quantities for child line items in a product offering for an opportunity, quote,
or order are calculated by using the sn_prd_pm.enable_cascade_quantity system
property.

Before you begin

Role required: admin

About this task
The sn_prd_pm.enable_cascade_quantity system property, if enabled, automatically
cascades the quantity value for a top-level offer to child lines, when the quantity for the top-level
offer is greater than 1. For example, when an agent creates an opportunity, quote, or order for a
configurable offer and updates the quantity so that it’s greater than 1, the quantity on the child
line items is multiplied by the quantity for the top-level offer. Pricing for the child lines is based
on the cascaded quantity. If you use the quantity on the child offers as the total quantity ordered,
using cascading quantities considers the quantity on the parent offer as well.
However, if you consider the quantity on the child offer as the quantity of the child offer per one
quantity of the parent offer, you might not want cascading quantity values.

Note: If you're upgrading from a release before the November 2024 release, this property
is enabled by default. If you don't want the quantity values to be cascaded to child lines,
suppress this feature by setting the property to false.

Procedure
1. Navigate to All and in the filter enter sys_properties.list.
2. Open the sn_prd_pm.enable_cascade_quantity system property.
3. Set the property value for the cascading quantity feature in the Value field.
◦ Enter true to activate this property.
◦ Enter false to suppress this property if it's currently enabled.
4. Select Update.
If you enabled this property, quantity values are cascaded to the child lines for product offers.
If you suppressed this property, quantity values are not cascaded to the child lines for product
offers.
Related topics
Using product catalogs
Product Catalog Management
Create product offerings
Create and publish a product offering in Sales Customer Relationship Management. Product
offerings represent entities that are orderable from the provider of the catalog and includes
pricing information. Once published, product offerings are available to agents as they create
leads, opportunities, quotes, and orders and to customers placing orders.

Before you begin

Role required: sn_prd_pm.product_catalog_admin or sn_prd_pm.product_manager

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

128


<!-- page 129 -->
3. Navigate to Offerings > Product Offering and select New.

Note: You can also create a product offering from the product specification.
4. In the Details tab, fill in the fields.
Create New Product Offering form
Field

Description

Number

System-assigned number for the product offering.

Name

Alternative name for the product offering to differentiate it
from similar product names.

Display name

Name of the product offering to be added.

Code

System-generated alphanumeric number based on the
product name. Although system generated, you can edit
the code to represent a SKU or any other industry-specific
product codes.

Product family

The product offering family to which this product belongs.
Select the product offering family, which is a collection of
products that share similar or common features. A product
offering can belong to a single family only.

Sellable

Option, if selected, indicates that the product offering can
be sold as a standalone item. If not selected, the product
offering can be sold as part of bundle but not as a standalone
item.

Configurable

Option that indicates the product is customizable and can
be configured by agents and customers using the CPQ
Configurator, if implemented in your organization. For more
information, see Using the ServiceNow CPQ Configurator.

Allow multiple configurations

Option that enables agents or customers to create and
manage multiple configurations of a child product offering so
each configuration can be handled as a separate line item in
a configurable product.

Note: If the product has an associated product
specification, this option is enabled automatically and
can't be deselected.
For more information on how multiple configurations work in
configurable products, see Multiple configurations.
Transient

Option indicating that the product is for one-time use.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

129


<!-- page 130 -->
Field

Description

Note: When the order for a transient product is
completed, the sold product or product inventory record
for the product is set to an Inactive state, to differentiate
the product from persistent products.
◦ Move, Add, Change, Disconnect (MACD) actions
can't be performed on the sold product or product
inventory records of transient product offerings.
◦ The Create contract option is not applicable to
transient product offerings.
For more information on transient products, see
Defining transient products.
Description

Short description of the product offering. The description
helps the agent identify the product when creating a lead,
opportunity, quote, or order.

State

State of the product offering. States include In Draft,
Published, Retired, and Archived. You can update product
offerings In Draft state.

Start date

Date and time that the product offering is available for Sales
Customer Relationship Management applications. Select
the Calendar icon
select OK.

End date

Date and time that the product offering is deleted from Sales
Customer Relationship Management applications. Select
the Calendar icon
select OK.

Offering type

to choose the start date and time, then

to choose the end date and time, then

Type of product offer. Select one of the following:
◦ Product: A product entity that an agent or customer can
add to a Sales CRM transaction. For example, agents can
add products to a lead, opportunity, quote, or order from
the CSM Configurable Workspace. Customers can add
products to an order from the Business Portal.
◦ Entitlement: An entity such as a warranty or subscription
that can be added to a lead, opportunity, quote, or order by
an agent.

Offering sub-type

Type of entitlement. Select one of the following:
◦ Warranty
◦ Extended warranty
◦ License
◦ Subscription

Distribution channel

Option to set and lock in a distribution channel. For example,
you can specify web as a channel. You can specify multiple
channels.
If you're using the Service Exchange Order Management for
Providers application, enter Service Exchange.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

130


<!-- page 131 -->
Field

Description

Owner

Person responsible for the product offering.

Product specification

Functional view of a product offering that drives order
fulfillment. Select the product specification associated with
the product offering.

Note: Only published specifications appear.
Product model

Name of the product model.

Copy child specification
characteristics

Option that when selected copies all child specification
characteristics in a specification hierarchy. For example, if the
product offer has an associated product specification, this
option indicates that the characteristics are inherited from
the child specifications in addition to the parent specification.
This field displays when a product specification for a
composite product is entered and the product offering is
saved.

Pricing method

Pricing method for the product:
◦ One-time: A single fee for the product.
◦ Recurring: A fee that occurs at scheduled intervals. You can
set the Periodicity for a recurring fee.

Note: If you're creating a configurable product offering
that can have ramps, select Recurring as the Pricing
method so that the Enable ramps option can be
selected.
Periodicity

Recurring pricing: Monthly or annually.

Monthly recurring charges

Charges that are applied monthly.

Non recurring charges

Charges that are applied once. Supported for backward
compatibility. Use price lists to define prices.

Enable ramps

Option that enables the ramp feature, where sales agents
can create ramps for transaction lines, such as quotes, to
schedule price and quantity increases over certain time
periods. To learn more, see Price and quantity ramps.

Create contract

Option indicating to agents that entitlement contracts can be
added to the product order. If selected, service contracts are
created after order fulfillment. Used when entitlements are
managed as contracts.

Note: For transient product offerings, this option isn’t
available.
Contract term

Length of the contract:
◦ 12 months
◦ 24 months
◦ 36 months

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

131


<!-- page 132 -->
Field

Description

◦ 48 months
◦ 60 months
Version

Version number that is assigned to this product offering
version.

Initial version

Name of the initial version of the product offering.

Previous version

Several versions of a product offering can exist. This field lets
you view previous versions.

5. Select Save and then select Publish.

What to do next
• Create product characteristics and characteristic options
• Add product visuals
• Add product catalog categories
• Add related contracts to product offerings
• Add a unit of measure to a product offering
• Create a product offering version
• Create product offering relationship groups
Related topics
Using product catalogs
Product Catalog Management
Defining product characteristics and characteristic options
As a product catalog admin, you create the characteristics and characteristic options for product
offerings and specifications. Product characteristics are attributes that define and describe a
product.
For example, if a product offering is a bike, the characteristics might include bike size and color.
The characteristic options are the choices, such as the various bike sizes and colors available.
Characteristics and characteristic options for products are displayed in the product configurator
when agents configure products for opportunities, quotes, and orders and when customers order
products using the Business Portal.

Characteristic data input types
When you define product characteristics and characteristic options, you provide basic attribute
information, including the characteristic name and the data input type for the characteristic
options. The data input type indicates how the characteristic options are entered in the product
configurator, such as single line text or choice selection.
The following data input types are available for characteristic options:
• Address - Mail address
• Attachment - External document to be attached
• CheckBox - Select or clear an option

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

132


<!-- page 133 -->
• Choice - Options that can be chosen, presented as radio buttons or available from a dropdown list
• Decimal - Numbers that require a decimal point to indicate fractional amounts
• Dates - Date picker for selecting day, month, and year
• Date/time - Date picker for selecting day, month, year and time of day
• Duration - Period of time
• Email - Email address
• Single Line Text - Free-form text
• Integers - Whole numbers
• Yes/No - Yes/no response
• Object - Structure that represents a hierarchy of attributes, also called complex characteristics.
An object has parent attribute with one or more child attributes.
• Arrays - Multiple instances of the same attribute type, such as arrays of Date, DateTime,
Integer, Single Line Text, Object, and Decimal
You can use the Object type to build a hierarchy of complex characteristics, which has a top-level
parent attribute with one or more child attributes. The child characteristics can be any of the data
input types, including objects with data arrays.
The following example shows a characteristic hierarchy for Routing Addresses, which is a
parent-level attribute with an object data type. This attribute has the following child attributes:
Procurement Date, Route, Additional Address Required, BGP, Routing Type, and Address
Supplier. Notice that the BGP child characteristic is an array of objects with a minimum size of 2
and maximum size of 4.
Example of complex characteristics in product configurator

Setting up complex characteristics
Defining a hierarchical attribute structure involves setting up the parent attribute, for example
routing addresses, as an object type. You then define the characteristic relationships between
the parent attribute and child attributes to establish the hierarchical structure and the order in
which the child characteristics display in the product configurator.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

133


<!-- page 134 -->
For details on defining characteristics, see Create product characteristics and characteristic
options.
Related topics
Using product catalogs
Product Catalog Management
Create product characteristics and characteristic options
Add product characteristics and characteristic options that you can later add to your product
offerings in Sales Customer Relationship Management.

Before you begin

Role required: sn_prd_pm.product_catalog_admin or sn_prd_pm.product_catalog_manager

About this task

Use this procedure to build product characteristics (also called attributes) and characteristic
options, which you add to product offerings and specifications. For example, if the product
offering is a bike, characteristics might include bike size and color. The characteristic options are
the option choices, such as the various bike sizes and colors available. These options appear
in the configurator when your agents add configurable products to opportunities, quotes, and
orders or when customers submit orders using the Business Portal.
When you define a characteristic, you select the data input type, which indicates how the
characteristic option is entered in the product configurator, such as Single Line Text, Choice
(radio buttons or drop-down list), and Yes/No selections. Complex data input types are also
available to define complex characteristics that have hierarchical attribute structures. You use
the object data type to define complex characteristics, which have a top-level parent attribute
and associated child characteristics. These structures can also include data arrays, another
complex data type that you can use to specify multiple instances of the same data input type,
such as multiple lines of text or integers.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Characteristics > Characteristics.
3. Select New.
4. In the form, fill in the fields.
Create New Characteristic
Field

Description

Name

Name of the product characteristic.

Code

System-generated alphanumeric value based on the
product characteristic name. Although system generated,
you can edit the code to represent a SKU or any other
industry specific product codes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

134


<!-- page 135 -->
Field

Description

Note: If you enter a product characteristic
name that has non-English characters, special
symbols, or both, the Code value may be a hash of
alphanumeric characters that uniquely identifies
the characteristic, if your admin has set the

sn_prd_pm.use_hash_to_generate_characteristic_cod
system property to false. If this property is set to true,
the system can't generate an alphanumeric Code
value that includes non-English characters, special
symbols, or both.
Description

Brief description of the characteristic, for example DSL
speed.

Input type

List of input options that identify the functionality for
the characteristic, such as check box or a line of text.
Depending on the input type, additional options become
available:
◦ Address: Input for the entry of an address.
◦ Attachment: Input for the attachment of an external
document.
◦ CheckBox: Option that can be selected or cleared.
You can specify a Default value to be displayed for the
option.
◦ Choice: Options that can be chosen for the
characteristic. In the Characteristic options tab, you
indicate how the option is to be selected in the product
configurator, either as a Radio button or from a Dropdown list. You can also specify a Default value to be
displayed for the option.
◦ Date: Date picker for selecting the day, month, and year,
for example an activation date.
◦ Date/Time: Date picker for selecting the day, month,
year, and time of day for example, an activation date at a
specific hour, minutes, and seconds.
◦ Duration: Input for the entry of a duration of time.
◦ Email: Input for the entry of an email address.
◦ Label: Input for the selection that enables the production
of a label.
◦ Single Line Text: Input for the free-form entry of a
single line of text. You can specify a Default value to be
displayed for the option.
◦ Yes/No: Input that requires the selection of a Yes/
No response. You can specify a Default value to be
displayed for the option.
◦ Integer: Input that requires a numeric value, such as
number of support hours. You can specify a Default
value to be displayed for the option.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

135


<!-- page 136 -->
Field

Description

◦ Decimal: Input for numbers that require a decimal point,
such as currency or car mileage that require fractions.
◦ Object: Input for defining the top-level characteristic in
a hierarchy of characteristics that consists of a parent
characteristic and its child characteristics. A top-level
characteristic has one or more child characteristics. The
child characteristics can be any of the data input types or
an object or array type. The Characteristic Relationship
tab opens for specifying the associated characteristic
options.
◦ Array.Date: Input that includes one or more instances of
dates as child characteristics. You specify a Min and Max
value for the array size. The default Min and Max value is
1.
◦ Array.Datetime: Input that includes one or more
instances of child characteristic of datetime. You also
specify a Min and Max value for the array size. You
specify a Min and Max value for the array size. The
default Min and Max value is 1.
◦ Array.Decimal: Input that includes one or more
instances of a child characteristic of decimals. You
specify a Min and Max value for the array size. The
default Min and Max value is 1.
◦ Array.Integer: Input that includes one or more instances
of a child characteristic of the integer data type. You
specify a Min and Max value for the array size. The
default Min and Max value is 1.
◦ Array.Object: Input that includes one or more instances
of a child characteristic of the object data type. You
specify a Min and Max value for the array size. The
default Min and Max value is 1.
◦ Array.SingleLineText: Input that includes one or more
instances of a child characteristic of the SingleLineTest
data type. You specify a Min and Max value for the array.
The default Min and Max value is 1.
5. Select Save.
Depending on the Input type you selected, you may need to complete additional steps if the
new characteristic has more options.
6. If the new characteristic has more options, complete the following steps:
a. In the Characteristic Options tab, select New.
b. Enter the Option for the characteristic and select Save.
The option is added to the characteristic. Repeat this step to add as many options as
needed.
For example, if you create a SIM card type characteristic, you then create the associated
Nano, eSim, Micro, Mini, and Standard options.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

136


<!-- page 137 -->
Later, when you are configuring product offerings, you can add the characteristics and
options.
c. Select Save.
7. If the new characteristic is an object that has child characteristics as part of hierarchical
attribute structure, complete the following steps to create a characteristic relationship between
the parent characteristic and child characteristics in the characteristic hierarchy:
a. In the Characteristic Relationships tab, select New.
b. In the form, fill in the fields.
Create New Characteristic Relationship
Field

Description

Display name

The name of the characteristic relationship,
for example Routing addresses

Parent characteristic

The parent-level characteristic in the
characteristic hierarchy.

Mandatory

Option that indicates the characteristic is
required and must be entered or selected in
the product configurator.

Order

The position of this child characteristic in
the attribute hierarchy.

Child characteristic

Characteristic that is a child of the parent
characteristic displayed. Select the
characteristic from the drop-down list.

Note: A parent-level characteristic (object input type) must have at least one child
characteristic relationship defined for the hierarchical structure.
c. Select Save.

What to do next

Continue working on other areas related to the product offering or specification. For example:
• Add product visuals
• Add product catalog categories
• Create product offering relationships
• Add related contracts to product offerings
• Add a unit of measure to a product offering
• Create a product offering version
• Create product offering relationship groups
• If you're creating technical products such as telecommunications products, you can create
the product, service, and resource specification categories and associate them to model
categories.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

137


<!-- page 138 -->
Related topics
Using product catalogs
Product Catalog Management
Add characteristic and characteristic options to a product offering
Add characteristic and characteristic options to an existing product offering using the Product
Offering Characteristic tab in Sales Customer Relationship Management.

Before you begin

Role required: sn_prd_pm.product_catalog_admin

About this task

There are a number of ways to create characteristic and characteristic options. The following
procedure lets you add characteristics to product offerings that already exist but have not been
published.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Offerings > Product Offerings and select the product offering that you're working
with.
3. In the Product Offering Characteristics tab, select New.
4. In the form, fill in the fields.
Product Offering Characteristic form
Field

Description

Characteristic

Product offering characteristic. Select an existing
characteristic. Select New to create a characteristic.

Characteristic option

Characteristic option for the product offering. Select an
existing characteristic option or select New to create
options.

Characteristic type

Option that lets you select a characteristic type.

Product offering

Name of the product offering.

Order

Numerical order for the options. Options designated with
the number 1 appear first in the order.

Mandatory

Option indicating that the characteristic option is required
to complete the order.

Default

Option indicating this characteristic option is the default
choice.

Customer input required

Option indicating that consumer input is required for the
product option.

5. Select Save.
The product offering characteristic is added to the product offering. Select the characteristic in
the Product Offering Characteristics tab to make further changes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

138


<!-- page 139 -->
Related topics
Using product catalogs
Product Catalog Management
Create configurable product offerings and associated blueprints
Create a configurable product offering and generate an associated blueprint using the CPQ
Configurator. A blueprint contains the product structure and includes product attributes, product
relationships, product and pricing rules, and any child products for the offering. Blueprints
drive the agent and customer experience for configuring customizable products with the CPQ
Configurator.

Before you begin

Role required: sn_prd_pm_product_catalog_admin

About this task

A configurable product offering, also called a complex product offering, has multiple
characteristics and one or more product relationships. The process of creating a configurable
product offering involves defining the product in Product Catalog Management, then generating
the blueprint. The blueprint is used in the CPQ Configurator to manage the product configuration
experience for agents and customers.

Procedure
1. Create the configurable product offering.
a. In the CSM Configurable Workspace, select the List

view.

b. Create an offering or copy an existing offering to make a new offering.
▪ To create an offering, navigate to Offerings > Product Offerings and select New.
▪ To copy an offering, navigate to Offerings > Product Offerings, select the offering to be
copied, and select Copy.
c. In the Details tab, fill in the fields to create a configurable product or modify the copy to
create a product.

Note: For details on creating a product offering, see Create product offerings. To

identify the offering as a configurable product, select the Configurable option in
the form, even if there are no characteristics or relationships defined. Selecting the
Configurable option indicates that the product offering is to be configured using the
CPQ Configurator.
d. Select Save.
The Create Configuration button is displayed. The Record Information pane shows the
synchronization state as Sync Not Initiated.
2. Start the synchronization process by selecting Create Configuration.
The synchronization process begins, as indicated by the synchronization state Sync
initiated. The synchronization process creates the blueprint for the offering. If you
previously defined attributes, product relationships and groups, and other product or pricing
rules for the offering, that information is included in the blueprint.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

139


<!-- page 140 -->
When the synchronization completes, the status changes to Sync success. The
Configuration Setup tab (related list) displays the blueprint. The Update configuration and
Publish buttons are also displayed.

Note: If the synchronization fails, use the Configuration Errors tab (related list) to view
the errors in the synchronization process.
The product blueprint has the following features:

Blueprint feature

Description

Associated Fields

Attributes and attribute types.

Related Rules

Product and pricing rules.

Layouts

Arrangement of the elements displayed in the
configurator interface. A default layout is applied
during synchronization, but you can change the
layout.

Configurable Products

Child products of the offering.

Enrichments

Scripts used by the rules engine to retrieve
external data such as pricing or product data.

For more information on blueprints and how you can use them, see the online help accessible
from the interface.

Note: If you defined rules and attributes in Product Catalog Management, those rules
and attributes must be updated in Product Catalog Management and not in the blueprint.
However, you can add new rules and fields using the blueprint.
3. If you want to make further changes to the product offering, and the offering is still in Draft
state, select Update configuration and change the offering details.
4. When you're ready to publish the offering, select Publish.
Another synchronization occurs, and the product offering is published to the product catalog.
Related topics
Using product catalogs
Product Catalog Management
Add product visuals
Add visuals to your product offering in Sales Customer Relationship Management to show what
the product looks like in the product catalog.

Before you begin

Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Offerings > Product Offerings and select the product offering that you're working
with.
3. Select the Product Visuals tab.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

140


<!-- page 141 -->
4. Select New.
5. On the form, fill in the fields.
Product Visuals
Field

Description

Name

Name for the visual.

Product offering

Name of the product.

Active

Option indicating that a thumbnail image is used to depict the
product.

Thumbnail image

Thumbnail visual of your product offering. Select Attach
Image to upload the thumbnail image.

Primary

Option indicating that the thumbnail visual is the primary
visual.

Image

Visual of your product offering. Select Attach Image to upload
the image.

6. Select Save.

Note: You must turn on the display of product visuals in product catalogs. For more
information, see Activate the display of product catalog visuals.

What to do next
• Create product characteristics and characteristic options
• Add product catalog categories
• Create product offering relationships
• Add related contracts to product offerings
• Add a unit of measure to a product offering
• Create a product offering version
• Create product offering relationship groups
Related topics
Using product catalogs
Product Catalog Management
Add product catalog categories
Use the Product Offering Categories tab to organize your products in groups in Sales Customer
Relationship Management.

Before you begin

Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

About this task

Product catalog categories help organize products into groups, which makes it easier for
order agents to find products while creating orders or building quotes. Catalog categories are
associated with a catalog. For more information about catalogs, see Create a product offering
catalog.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

141


<!-- page 142 -->
Product offering catalog categories must be published before products can be added.
This procedure explains the Product Offering Category tab. To set up categories before adding
products, see Create a product offering category.

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Offerings > Product Offerings and select the product offering you are working
with.
3. Select the Product Offering Categories tab.
4. Select New.
5. On the form, fill in the fields.

Field

Description

Category

Select an existing published category.

Product offering

Name of the product offering you are working with.

6. Select Save.
7. Review the category information and select Publish.
The category is published and available to add product offerings too or create child categories.

What to do next
• Create product characteristics and characteristic options
• Add product visuals
• Add related contracts to product offerings
• Add a unit of measure to a product offering
• Create a product offering version
• Create product offering relationship groups
Related topics
Using product catalogs
Product Catalog Management
Create product offering relationships
Create product relationships to bundle products and services together to make ordering more
convenient. Product offering relationships drive the order capture experience by letting you
group multiple product offerings into bundles. Bundles can also be added to other bundles in
relationship groups.

Before you begin

Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

About this task

Create product offering relationships that bundle products together. A bundled product offering
can be ordered as a group and can’t be changed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

142


<!-- page 143 -->
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Offerings > Product Offerings and select the product offering you’re working with.
3. Select the Product Offering Relationships tab.
4. Select New.
5. On the form, fill in the fields.
Product Offering Relationship form
Field

Description

Display name

Name of the product relationship displayed in the interface.

Source product offering

System-generated reference to the source product offering.

Target product offering

The offering that is bundled with the source product offering.

Relationship type

Option that identifies how the products are related:
◦ None - Indicates that the bundled products have no
relationship.
◦ Implicit - Indicates the products grouped in a bundle have
an implicit relationship.

Product offering relationship
group

Reference to offer relationship groups used to logically group
similar product offers.

Unit of measurement

Unit of measure for the bundled products. Select a unit of
measure, for example Box or Case.

Default

Option indicating that the product offering relationship is the
default.

Mandatory

Option indicating that the product offering relationship is
mandatory.

Default quantity

Option indicating the default quantity of product
relationships.

Max quantity

Option indicating the maximum quantity of products in the
bundle.

Min quantity

Option indicating the minimum quantity of products in the
bundle. These flags mean different things depending on
whether each relationship is or is not part of a relationship
group.

6. Select Save.
The relationship is created. Select the relationship on the Product Offering Relationships tab
to make further changes.

What to do next
• Create product characteristics and characteristic options
• Add product visuals
• Add product catalog categories
• Add related contracts to product offerings
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

143


<!-- page 144 -->
• Add a unit of measure to a product offering
• Create a product offering version
• Create product offering relationship groups
Related topics
Using product catalogs
Product Catalog Management
Add related contracts to product offerings
Add related contracts to your product offerings in the Sales Customer Relationship Management
application.

Before you begin

Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Offerings > Product Offerings and select the product offering that you’re working
with.
3. Select the Related Contracts tab.
4. Select New.
5. On the form, fill in the fields.
Contract Product Offering
Field

Description

Contracts

Contract to add to the product offering. Select the contract
from the list of contracts.

Product offering

System-generated entry reflecting the product offering you’re
working with.

6. Select Save.
The contract appears in the product offering under the Related Contracts tab. You can select
the contract record to make further changes to the contract details.

What to do next
• Create product characteristics and characteristic options
• Add product visuals
• Add product catalog categories
• Create product offering relationships
• Create a product offering version
• Create product offering relationship groups
Related topics
Using product catalogs
Product Catalog Management
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

144


<!-- page 145 -->
Add a unit of measure to a product offering
Add a unit of measure (UOM) to a product offering in Sales Customer Relationship Management.

Before you begin

Role required: sn_prd_pm.product_catalog_admin and sn_prd_pm.product_catalog_manager

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Offerings > Product Offerings and select the product offering that you’re working
with from the list.
3. Select the Units of Measures tab.
4. Select New.
5. On the form, fill in the fields.
Unit of Measure form
Field

Description

Product offering

Name of the selected product offering.

Unit of measure

Option for selecting an existing unit of measure or select New
to add a new unit of measure.

Default

Option indicating the selected UOM is the default.

Active

Option indicating the selected UOM is active.

6. Select Save.

What to do next
• Create product characteristics and characteristic options
• Add product visuals
• Add product catalog categories
• Create product offering relationships
• Add related contracts to product offerings
• Create a product offering version
• Create product offering relationship groups
Related topics
Using product catalogs
Product Catalog Management
Create a product offering version
Create a version of a product offering when updates are needed to a published offering in Sales
Customer Relationship Management.

Before you begin

Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

145


<!-- page 146 -->
About this task

After a product offering is published, changes can’t be made. To add changes to a published
product offering, create a new version.

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Offerings > Product Offerings and select the product offering that you’re working
with from the list.
3. In the Versions tab, select Create New Version.
The next version of the product offering is displayed.
4. In the Details tab, make and save any changes, and then publish the offering.
Version history is maintained. Each version has its own life-cycle status.

What to do next
• Create product characteristics and characteristic options
• Add product visuals
• Add product catalog categories
• Create product offering relationships
• Add related contracts to product offerings
• Create product offering relationship groups
Related topics
Using product catalogs
Product Catalog Management
Create product offering relationship groups
Use relationship groups to organize child offer options or relationships into logical groups and
set up cardinality rules at the group level in Sales Customer Relationship Management. Groups
of product offerings then appear on the product configurator.

Before you begin

Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

About this task

Create product offering relationship groups to organize product bundles into groups in the
product configurator.
For example, an internet and OTT Bundle Product Offering is configured to have three product
offering relationship groups: modem group, internet group, and the plan streaming channel
group.
Bundled product offerings can be other bundles or individual product offerings.
Assign child product offerings in a bundle to the product offering relationship group, which
presents the options in logical groups on the product configurator to the agent. The following
example shows how product offering groups appear in the product configurator.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

146


<!-- page 147 -->
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Offerings > Product Offerings and select the product offering you’re working with.
3. Select the Product Offering Relationship Groups tab.
4. Select New.
5. On the form, fill in the fields.
Product Offering Relationship Group form
Field

Description

Name

Name of the relationship group.

Description

A description of the relationship group.

Product offering

Reference to the current product offering in context.

Order

Order in which the relationship group is displayed in the
product configurator.

Max options

Maximum number of options that can be selected within the
relationship group during configuration.

Min options

Minimum number of options that must be selected within the
relationship group.

6. Select Save.
The relationship group is created as part of the product offering.

What to do next
• Create product characteristics and characteristic options
• Add product visuals
• Add product catalog categories
• Create product offering relationships
• Add related contracts to product offerings
• Add a unit of measure to a product offering
• Create a product offering version

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

147


<!-- page 148 -->
Related topics
Using product catalogs
Product Catalog Management
Defining transient products
When you create product offerings and technical specifications, you can identify single-use
products and services as transient, to differentiate them from persistent products. Examples of
one-time use products include installation or consulting services.
®

When new orders with transient products are submitted for fulfillment in ServiceNow Order
Management, the sold product or product inventory records are created with an Installation
pending state. After new orders with transient products are fulfilled, the sold product or product
inventory state changes to Inactive. Your fulfillment managers can then quickly see which
products aren’t part of the active inventory. Agents can’t perform Move, Add, Change, Delete
(MACD) actions on inactive sold product or product inventory records.

Guidelines for defining transient products
When you’re defining product offerings, use the Transient option in the Create New
Product Offering form to identify a transient product. If the product has associated technical
specifications, you also set the Transient option in the appropriate Product, Service, and
Resource Specification forms.
When defining transient products, note the following restrictions:
• Create New Product Offering form: The Transient option and the Create contract option can't
be enabled at the same time for the product.
• Parent and child product offerings: Transient parent product offerings and parent
specifications must have transient child product offerings and child specifications. However,
non-transient parent product offerings and parent specifications can have transient child
product offerings and child product specifications.
• Linking product offerings to product specifications: A transient product offering must be linked
to a transient product specification and vice versa.
• Specification relationships: When defining specification relationships for a transient product,
you can associate only a transient service specification or resource specification. Transient
product orders are decomposed as indicated in the associated specification.
For details on setting the Transient option for product offerings and specifications, see Create
product offerings
Related topics
Using product catalogs
Product Catalog Management
Multiple configurations
As a product catalog manager, when you define a configurable product offering, you can enable
agents to add multiple configurations of a child product offering. When agents add multiple
configurations, they can change the quantity for each configuration of the offering, define each
configuration as a separate line item, and select the appropriate options and characteristics for
each configuration.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

148


<!-- page 149 -->
How multiple configurations work
When you use the Create New Product Offering form to define configurable product offerings
and child product offerings, select the Allow multiple configurations option to enable the
creation of multiple child offering configurations. For information on defining product offerings,
see Create product offerings.

Note: If the configurable product has an associated product specification, the Allow
multiple configurations option is enabled automatically and can't be unselected.

When agents add configurable products to new opportunities, quotes, and orders, they can
create multiple configurations for a child offering. They navigate to a summary page for a
selected child offering. From this page, they can do the following:
• Change the quantity of a child offering.
• Clone a child offering.
• Split a child offering that has a quantity greater than 1, to create child offering instances with
different quantities.
Each offering instance becomes a new line item that can be configured separately.
In the following example, the Home Automation Bundle is a child offering that has a default
quantity of 2 in the Quadplay Home Tech Bundle. An information icon displays next to each child
offering that can have multiple configurations. The information icon, when selected, displays a
message indicating that multiple configurations can be created for the child offering.
Example configurable product offering for an order

How multiple configurations are created
When agents review a bundle offering in the product configurator, they identify the child offerings
that can have multiple configurations. They navigate to the summary page for the appropriate
child offering to create multiple configurations.
In the offering summary page, a message indicates that the offering supports multiple
configurations and the aggregated quantity of configurations that can be created. Agents can
change the quantity of the child offering on this page.
The More options icon
displays next to the Quantity. Selecting the icon lists the options
available for creating and managing multiple configurations.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

149


<!-- page 150 -->
Offering summary page with More options menu

The following options are available to manage child offering configurations:
• Clone: Create child offering configurations by copying the selected child product offering
configuration. The agent is prompted to enter the number of clones to be made.
For example, if the current child offering quantity is 2, and the agent specifies 2 copies, two
identical copies of the child product offering are created. Each clone becomes a separate line
item and has a quantity of 1.
• Split: Create child offering configurations by splitting the current child offering quantity and
distributing the quantity evenly across all the copies. The agent is prompted to enter the
number of splits.
For example, if the child offering quantity is 5, and an agent specifies 3 splits, two child offering
instances are created. After the split, there are three child offering instances, where the
instances have a quantity of 2, 2, and 1, respectively.
• Delete: Removes the child offering instance. If deleting a child offering instance causes the
number of child offers to fall below the minimum quantity defined for the product, the Delete
option isn’t available.
When the child offering configurations are created, each offering name reflects the child
product offering name followed by an incremental number. For example, Home Automation
Hub configurations are named Home Automation Hub 2, Home Automation Hub 3, and so on.
Agents can then select the appropriate offering instance to configure it. If the agent changes the
Quantity value, the Current Selection pane reflects the new quantity and associated pricing.

Validation during multiple configuration creation
As your agents create multiple configurations, the system uses the default, minimum, and
maximum cardinality rules defined for the product offering to validate the configurations. If
there are violations, the system displays the appropriate information and error messages in the
product configurator UI.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

150


<!-- page 151 -->
The system also uses the cardinality rules to determine when certain configuration options (Split
and Delete) should be enabled or turned off, based on the context. For example, if the minimum
child offering quantity is 1 and a child offering has a quantity of 1, the system disables the Delete
option in the More options menu.

Limitations for multiple configurations
Multiple configurations aren’t supported for quotes of type sales agreements. Also, changes for
quotes and orders with sold products or product inventory have the following limitations:
• Sold products: When creating a modify order, the Delete option for multiple configurations is
supported, but the Clone and Split options aren’t supported.
• Product inventory: Multiple configurations are supported. The Split option isn’t supported.

Setting up multiple configurations
For details on enabling and creating multiple configurations for child offerings, see the following
sections:
• Create product offerings
• Create multiple configurations
Related topics
Using product catalogs
Product Catalog Management
Setting up specifications and product offerings
By creating and publishing versioned specifications and product offerings in a technical product
catalog, your customers can order up-to-date versions of the products or services that they
require. Your product catalog manager can create versions of the published specifications
and product offerings with the required enhancements to support your customer's business,
marketing, manufacturing, or operational changes.

Overview of product offerings with specifications
As a product catalog manager, you set up product offerings in a technical product catalog. A
product offering contains the product description, pricing, eligibility, and product options. You
use a product catalog to group your product offerings so that your customers can order the
products or services that they want. Only published product offerings can be added to customer
contracts.
The relationship between product offerings and the product, service, and resource specification
determine how a product is fulfilled. Each product offering has the following components:
Product specification
A product specification defines the various aspects of a product including the
following:
• All the specification characteristic options that are available for a product, and
how they should be fulfilled.
• Various categories of information, such as the brand, cost, terms and conditions,
and product-related materials, which include product visuals. Product
specifications are customer-facing and are added to product offerings.
• Its relationship to other product, service, and resource specifications, and how a
customer order of a product offering is delivered.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

151


<!-- page 152 -->
Service specification
A service specification defines a service, and the technical information of that
service, including the following:
• All the specification characteristic options that are available for a service, and
how they should be fulfilled.
• Various categories of information, including the cost, terms and conditions, and
service-related materials. These resources include the service-related visuals
and implementation guides. Service specifications can be customer-facing or
resource-facing.
• Its relationship to other product, service, and resource specifications.
Resource specification
A resource specification defines the technical information for a resource, including
the following:
• All the specification characteristic options that are available for a resource, and
how they should be fulfilled.
• Various categories of information, such as the manufacture, model, and brandrelated information about a resource, including the resource visuals and
activation guides. Resource specifications are not customer-facing.
• Its relationship to other product, service, and resource specifications. You can
enable the product and service delivery by using the required resource.
Create specification characteristics
Define characteristics for a product, service, or resource specification.

Before you begin

Create product characteristics and characteristic options that can be selected for a specification.
Role required: sn_prd_pm_product_catalog_admin

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Specifications and select the specification for which characteristics are to be
defined.
3. In the Specification Characteristics tab, select New.
4. In the form, fill in the fields.
Create New Specification Characteristic form
Field

Description

Characteristic

Characteristic for the specification. Select the
characteristic.

Characteristic option

Characteristic option for the product offering. Select a
characteristic option.

Order

Numerical order for the options. Options designated with
the number 1 appear first in the order.

Specification

Name of the specification that you selected.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

152


<!-- page 153 -->
Field

Description

Mandatory

Option indicating that the characteristic option is required
to complete the order.

Default

Option indicating this characteristic option is the default
choice.

5. Select Save.
Related topics
Using product catalogs
Product Catalog Management
Updating specification versions
Enterprises frequently create and update new versions of product and service specifications.
When these changes occur, it's important to update the existing product specification in
®
ServiceNow . Failure to update the product specifications can lead to difficulties with MACD
(Modify, Add, Change, Delete) operation when orders enter fulfillment.
Updating specification versions helps with:
• Introducing new characteristics along with their options.
• Adding new options to existing characteristics and removing existing characteristics or their
options.
• Renaming existing characteristics and options.
• Incorporating new relationships and updating or removing existing relationships.
• Adding compatibility rules.

Specification version updates
The following list shows the types of specification version updates that can occur:
• Characteristics
◦ New
◦ Changed - enumerations
◦ Removed
• Child Relationships (bundled/composed)
◦ New
◦ Removed
◦ Change cardinality
• Horizontal Relationships/Compatibility Rules
• Attribute Mapping Rules

Batch specification version update
A set of specification versions can be updated using the batch specification utility in Sales
Customer Relationship Management. The specification can also be scheduled.
What to do next
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

153


<!-- page 154 -->
Configure update specification versions
Configure update specification versions
Configure specification version updates so that product specification versions can be updated to
reflect changes and updates.

Before you begin

Role required: system_catalog_admin

About this task

To configure the product specification version change, modify the check-for-an-incomingspecification ID and the product inventory specification ID.

Procedure
1. Navigate to All and enter sys_properties.list in the search area to open the System
Properties list.
2. In the System Properties list, search for
sn_ind_tmt_orm.allowSpecVersionUpdateInChangeOrder then select to open
the system property.
If the system property record is in an uneditable state, select the message to make the record
editable.
3. In the Value field, set the value to true.
4. Select Update.
The specification version update is activated.
Related topics
Using product catalogs
Product Catalog Management
Batch update for product specification versions
Use the inventory batch update job to update product specifications when changes occur from
one version to another.

Before you begin

Role required: product_catalog_admin and product_catalog_manager

About this task

Batch inventory specification update lets catalog admins and product managers create an
on-demand job that triggers a batch specification version update. The update doesn’t create
change orders but directly updates product inventory in orders. Batch updates also create a log
that including errors.
There are two steps to perform this process. The first is to update the specification version from
the source version to the target version. The second step is to run an inventory upgrade job.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

154


<!-- page 155 -->
Procedure
1. Navigate to All > Product Catalog Management > Product Specifications and select the
product specification you want to update.

2. Select the Create New Version button to create a version of the specification.
3. Select Publish to publish the specification version, then select Update to update the
specifications to add the new version.
Now there are two published versions of the specification. The initial version is considered the
source version and the v2 version is considered the target version.
4. To start the version update on existing product inventories, select Upgrade Inventory and
select Yes at the prompt.
The job is created for the source specification as v1 and the target is automatically populated
as the latest published version of the source specification. The inventory upgrade job starts
and runs a series of validation steps to confirm the job runs successfully. When the validation
is complete, the job enters an In progress state. If an error occurs, the job status turns to Error.
5. Navigate to All > Inventory upgrade job and select the job you’re working with to view the
status of the job and address any errors.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

155


<!-- page 156 -->
6. Navigate to All > Inbound queue > Inbound requests and select the record id you’re working
with to view the status.
The number of inbound queue requests indicates the number of product inventories that
matched the source specification. Once all the inbound queue records are processed,
the request creates a change order for each of the inbound queue records processed
successfully.
Related topics
Using product catalogs
Product Catalog Management
View upgrade inventory job status
View the status of a specification upgrade job using the upgrade inventory Job status list form.

Before you begin

Role required: sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > Product Catalog Management > Upgrade Inventory Jobs and select All.
2. Select the inventory job that you’re working with.

Entry

Description

Number

A system-generated number identifying the
inventory job.

Target specification

The target specification that is going to be
updated.

Payload

Payload is the specification data that is being
added to the target specification.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

156


<!-- page 157 -->
Entry

Description

State

Shows the state of the job.

3. Select Update to save any changes.
Related topics
Using product catalogs
Product Catalog Management
Product offer bundling with product specifications
Product Catalog Management supports the bundling of product offers that have associated
product specifications or specification hierarchies at any level of the bundle.

Supported product offer bundles
As a product catalog admin or manager, you can create a bundle offer for the following product
offer combinations:
• A top-level offer with several offers in multiple levels, but no product specification reference at
any level.
• A top-level offer with several offers in multiple levels that can have a product specification
reference at any level.
• A top-level offer with two or three levels of nesting, where the leaf-level product offer
references a specification hierarchy.
When offer bundles that have a specification reference at different levels are added to a quote
or an order, the appropriate transaction lines are generated with specification references and
product offer references. If fulfillment is done in ServiceNow Order Management, the applicable
domain orders are generated and records for sold products and product inventory are created or
updated.

Characteristics inherited from product specifications
When you create a product offering and reference a product specification hierarchy, you can
select an option called Copy child specification characteristics. When you select this option,
the product offer inherits all the characteristics from the specification or specification hierarchy.
For example, if a product offer has an associated product specification, the characteristics are
inherited from the child specifications in addition to the parent specification. The attributes from
parent specification are always inherited by the product offer.
You can also do the following when you create a bundle product offering:
• Add other characteristics to the offering, such as attributes for order enrichment, aside from
characteristics inherited from the specification.
• Delete product offering characteristics that were inherited from the specification.
To learn more about product offerings, see Create product offerings.
Related topics
Using product catalogs
Product Catalog Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

157


<!-- page 158 -->
Product catalog hierarchy visualization
As a product catalog admin or manager, you can view the complete hierarchy of a product
offering and any associated specifications (product, service, and resource). Use these views to
verify that all entities have been defined and associated correctly.
For product offerings that have associated specifications, you can toggle the hierarchical view of
the product offering to show its specification hierarchy. The hierarchical specification view shows
the services that enable the product to be realized and the resources that are required to deliver
those services. This view helps you visualize different aspects of a product offering, to validate
the product and determine that the supporting services and resources are designed as needed.
The hierarchy also highlights any relationships between specifications.
Product catalog hierarchy views

To view the product catalog hierarchy in the CSM Configurable Workspace, in the List view
navigate to Offerings > Product Offerings. Select a product offering, then select the Catalog
Hierarchy tab. Use the Show specification toggle to switch between the product offering and
specification hierarchical views.
The toggle legend identifies the product offering and specification icons displayed in the
visualization. Similar to the selection of specification nodes, when you select any product offer
node, the side panel displays the high-level details of the product offer. You can use the filter to
select a node and display the hierarchy under the node rather than the whole tree.
Related topics
Using product catalogs
Product Catalog Management
Minor changes to published product offerings and specifications
As a product catalog admin, you can make minor changes to certain fields in published versions
of a product offering or specification, without creating another version. Minor changes include
updates such as modifying the product offering display name, description, or product image.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

158


<!-- page 159 -->
Note: If you want to change fields other than the fields listed in the following sections,
those changes are considered major updates. You must generate a new version of the
product offering or specification.

How minor changes are processed
The following sections describe the minor changes that you can make to published versions
of product offerings and specifications. When you save your changes, the entities are
immediately updated.
If you’re using the CPQ Configurator, minor changes are handled as follows:
• Minor changes to simple products are synchronized automatically.
• Minor changes to configurable products require synchronization. In the CSM Configurable
Workspace, the Save andUpdate Configuration buttons are displayed when you make
minor changes to a product offering. Selecting Update Configuration synchronizes the
configurable product offering with its corresponding blueprint.
• If any blueprints have a reference to a simple or configurable product with minor
changes,ʼyou must synchronize those blueprints.

Make minor updates to published product offerings
Make minor changes to certain fields in a published product offering and its related entities.
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Offerings > Product Offerings.
3. Select the product offering to be changed and choose the appropriate tab (related list).
You can change any of the product offering fields listed in the following table.
Product offering fields that can be changed
Product offering entity

Fields that can be updated

Product offering

◦ Name
◦ Display name
◦ Description
◦ Sellable
◦ Allow multiple configurations: Change the
setting from unselected to selected (true).

Product Offering Characteristics

◦ Customer input required
◦ Order
◦ Mandatory

New Characteristic Option

Add Characteristic option

Product Offering Relationship

◦ Display name
◦ Order

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

159


<!-- page 160 -->
Product offering entity

Fields that can be updated

Product Offering Relationship Groups

◦ Name
◦ Description
◦ Order

Product Offering Relationship Characteristics Order
Relationship Characteristic Option

Add Characteristic option

4. Repeat step 3 for each product offering entity that has minor changes.
5. When you finish the changes, select Save.
The changes to the published offering are updated immediately.

Make minor changes to published specifications
Make minor changes to certain fields in a published specification and its related entities.
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Specifications.
3. Select the specification to be changed (Product, Service, or Resource) and choose the
appropriate tab (related list) for the entity to be changed.
You can change any of the minor fields listed in the following table.
Published product, service, and resource specification fields that can be changed
Entity

Fields that can be updated

◦ Product Specification

◦ Name

◦ Service Specification

◦ Display name

◦ Resource Specification

◦ Description
◦ Line
◦ External code

Specification Characteristics

Order

New Specification Characteristic

Add characteristic options

Specification Relationships

Order

4. Repeat step 3 for each specification entity that has minor changes.
5. When you finish the changes, select Save.
The changes to the published specification are updated immediately.
Related topics
Using product catalogs
Product Catalog Management

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

160


<!-- page 161 -->
Configuring product offer eligibility
You can filter the product catalog, offering categories, and product offerings dynamically, to
display only the appropriate catalog, categories, and offerings for which a customer is eligible.
Your agents see this filtered product information when they're creating opportunities, quotes,
and orders.

Product offer eligibility overview
As a product catalog admin or manager, you create the business rules that filter the product
catalogs, offering categories, and product offerings to display only the eligible products for
customers when agents are creating quotes or orders. Filtering the products helps agents sell
the correct products to customers. The filters are based on decision rules that you set in the
following product eligibility matrices:
• Product Offering Catalog Eligibility: Define the eligibility rules to be applied to product
offering catalogs. For example, you can use this matrix to filter sales catalogs based on
customer location, such as country, state, or city.
• Product Offering Category Eligibility: Define the eligibility rules to be applied to product
offering categories.
• Product Offering Eligibility: Define the eligibility rules to be applied to product offerings.
These matrices are frameworks for setting the conditions and the context variables that control
the catalogs, product categories, and product offerings displayed. You can use system-defined
context variables provided with Product Catalog Management and Pricing Management, or you
can work with your admin to develop your own custom context variables, such as marketing
segment or sales channel, to be used in the eligibility matrices.

Configuration tasks
Complete the following tasks to set up product eligibility matrices.
Product eligibility configuration tasks
Task

Description

Role

Create a custom context
variable (if needed)

Review system-defined and
existing custom context
variables. If needed, add a
new context variable, then
map the customer variable to
a transaction entity.

Admin

Create a rule entity filter

Define the eligibility filters for
a product entity.

Product catalog admin or
manager

Define product eligibility rules
in a product eligibility matrix

Define the eligibility rules in
Product catalog admin or
the decision table of a product manager
eligibility matrix.

Related topics
Using product catalogs
Product Catalog Management
Create a rule entity filter
Create a rule filter for the product entity to be used in a product eligibility matrix. The rule filter
defines how the rule is applied, for example to a product catalog, category, or offering.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

161


<!-- page 162 -->
Before you begin

Determine the entity to which the filter applies, for example a particular product catalog,
category, or a product offering.
Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Context Rule Management > Rule Entity Filter.
3. Select New.
On the form, fill in the fields.
Rule Entity Filter
Field

Description

Filter Name

Name of the filter, for example Ineligible
offers for CA.

Entity

Product entity for the rule:
◦ Product catalog
◦ Product offering category
◦ Product offering

Filter type

Type of filter to be applied:
◦ Static: Use a particular list to filter the
product entity.
◦ Dynamic: Set the conditions to filter the
entity.

Code

System-generated alphanumeric number
based on the filter name.

Product <catalogs, categories, or offerings>

The product catalog, category, or offering to
be filtered, based on the Entity selected. This
field appears only when Static is selected as
the Filter type.

Condition

Condition to be used to filter the entity. Use
the Set conditions builder to specify the
conditions. This field appears only when
Dynamic is selected as the Filter type.

4. Select Save.
The rule filter can now be used in a product eligibility matrix.
Related topics
Using product catalogs
Product Catalog Management
Define product eligibility rules in a product eligibility matrix
Define product eligibility rules by using the Product Offering Catalog Eligibility, Product Offering
Category Eligibility, or Product Offering Eligibility Matrix.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

162


<!-- page 163 -->
Before you begin

Create the rule entity filters and define any new custom context variables needed to define the
eligibility rules.
Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

About this task

When you define eligibility rules, consider the two modes for determining eligibility:
• Ineligible: Determine all the catalogs, categories, and product offers that are considered
ineligible by default, then set your eligibility rules as needed.
• Eligible: Determine all the catalogs, categories, and product offers that are considered eligible
by default, then set your ineligibility rules as needed.
Use the Default result field in the decision table for the product eligibility matrix to control the
default mode.
The November 2024 release provides Version 2 of the product eligibility matrices, which now
support eligibility rules based on transaction line attributes. You can also use service location
context variables to set product eligibility rules for service locations: Service City, Service State,
Service Country, and Service Zip.

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Context Rule Management > Rule Matrices.
3. Select the product eligibility matrix for the rule to be defined.
◦ To set the eligibility rules for a product catalog, select the Product Catalog Eligibility Matrix.
◦ To set the eligibility rules for a product category, select the Product Category Eligibility
Matrix.
◦ To set the eligibility rules for a product offering, select the Product Offering Eligibility Matrix.
4. Select Edit Rule.
The Decision Table for the selected eligibility matrix opens in Workflow Studio and shows the
inputs and the decision table for setting the conditions that control the eligibility.
5. In the decision table, set the rule to control the eligibility.
a. In the Default result field of the Condition section, review the eligibility mode being used
and update it if needed.
b. Select Add new decision row.
c. In the row, select the column for the input (context variable) to be applied, such as the Billing
State or Account.
d. In the Active column, set the value to true.
e. In the Results section, under the Eligibility Rules column, select the eligibility state to be
applied, for example Ineligible or Eligible.
f. Under the Rule Entity Filter column, select the filter to be applied.
6. Select Save.
Review the Validation Status and Validation Messages columns to see if you're missing
mandatory inputs, outputs or other information. If so, enter the appropriate information and
select Save.
The filtered product entity (product catalog, category, or offering) is displayed or hidden to
sales and order agents, depending on the filter.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

163


<!-- page 164 -->
Related topics
Using product catalogs
Product Catalog Management
Use extension points in product eligibility
Use extension points to call custom scripts from external sources that control product eligibility
logic used in the Sales Customer Relationship Management (Sales CRM) applications.
To access the available extension points, navigate to All > Scripted Extension Points and in the
Extension Points list, select the desired extension point to view it.
Product eligibility extension points
Extension point

Description

sn_prd_pm.EligibilityRulesExtensionPoint
Extension point for defining eligibility methods
for product catalogs, categories, and offerings.
Related topics
Using product catalogs
Product Catalog Management
Exporting and importing product catalog entities
As a product catalog admin, you can both export and import product catalog entities between
ServiceNow instances. For example, you can promote catalog entities from a non-production
instance to a production instance. Each process involves a separate set of steps.

Managing product catalog entities
The first step before exporting product catalog entities is adding the Code field values to product
catalog entities. The Code field value is used by the system to determine whether an entity is to
be inserted or updated in the target instance.
You then choose the product catalog entities to be exported and run the export process.
After you export your product catalog entities, certain base entities must be imported first to your
target instance, such as characteristics, characteristic options, template, and Unit of Measure
(UOM), since they're referenced by product offerings, product specifications, and service
specifications. For this reason, import certain product catalog entities to your target instance in
the following order:
1. Import the exported base entities.
2. Import the product offering catalog if you're exporting product offerings.
3. Import product offerings and product specifications.

Export and import process
Follow these steps to export and import product catalog entities.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

164


<!-- page 165 -->
Export and import product catalog steps
Step

Description

Add Code field values to catalog entities

Add the Code field values for the main product
catalog entities on your source and target
instances.

Export product catalog entities

Export product catalog entities from one
instance to another. The entities are exported
as JSON and are downloaded to your local
download directory.

View export job status

Check the state of the export job.

Import product catalog entities

Import product entities exported as JSON files
to another instance.

View import job status

Check the state of the import job.

Related topics
Using product catalogs
Product Catalog Management
Add Code field values to catalog entities
Add the Code field values for the main product catalog entities. The system uses this field as a
way to identify catalog entities uniquely and to determine whether the Code field values for an
export catalog entity are to be inserted or updated in the target instance.

Before you begin

Role required: admin

About this task

The Code values for product catalog entities are system-assigned alphanumeric values based
on the catalog entity name, such as the name of a product offering. If the Code field values for
the main catalog entities are empty, run certain on-demand scheduled jobs and fix scripts to add
the Code field values for the main product catalog entities.
Both the scheduled jobs and fix scripts add the Code field values for the catalog entities.

Procedure
1. On the source instance, navigate to All > System Definition > Scheduled Jobs and do the
following:
a. In the filter, enter Application is Product Catalog Management Core, then
select Run.
A list of jobs for Product Catalog Management Core is displayed.
b. Run each of the following jobs in the order listed below (select the job, then select Execute
Now).
▪ Migrate prod chars values to char options
▪ Schedule job to modify code field on characteristic records that contain special
characters
▪ Schedule job to populate code field on master entities
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

165


<!-- page 166 -->
▪ Schedule job to populate name field on product offering characteristics
▪ Schedule Job with upgrade script to populate code
2. Navigate to All > System Definition > Fix Scripts.
a. In the filter, enter *code to view the list of applicable fix scripts.
b. Run each of the following fix scripts (select the script, then select Run Fix Script).
▪ Populate Code Field - For Product Catalog Management Core application
▪ Populate Code Field - For Compatibility Management application
▪ Populate Code Field - For Attribute Propagation
▪ Populate Code Field Decomposition Rule - For Order Management application
These scripts can be run in any order.
3. Repeat Steps 1 through 2 on the target instance.

Result

Your product catalog admin can export product catalog entities from the source instance and
import them to the target instance.
Related topics
Using product catalogs
Product Catalog Management
Export product catalog entities
Export product catalog entities as a JSON file and save the file to your local download directory
so that it can be imported to another ServiceNow instance.

Before you begin

Role required: product_catalog_admin

About this task

You can export catalog entities in any sequence, but you must import them to a target instance
in a certain order. You import base entities (characteristics and characteristic options, template,
and unit of measure) first, followed by the product catalog, product offerings, and product
specifications.

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Export > Export Entities.
The Export Entities list shows the previous export jobs.
3. Start an export job by selecting Export Hierarchy.
The Catalog Export form opens in the Export-UI tab.
4. In Entity Type, select the product catalog entity to be exported from your source instance.
The product catalog entities include:
◦ Product offering catalog
◦ Unit of Measure
◦ Template
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

166


<!-- page 167 -->
◦ Product specification
◦ Service specification
◦ Resource specification
◦ Product offering - The product offering characteristics, including complex characteristic
hierarchies, related specifications, and distribution channel values are also exported with an
offering.

Note: During export, note the following:
◦ Versioned entities can be exported in any order. However, if you have many versioned
entities that must be exported, the lowest version of the entity must be exported before
exporting higher versions of the entity.
◦ Referenced specifications are also exported. For example, when an attribute mapping
is exported, the target service specification in that mapping is also exported.
◦ Exceptions and errors are captured when required plugins aren't installed, to help
identify issues with drop-down menus that aren't populated with catalog entities.
5. Select the items that you want to export and select Export.
6. Give the export job a file name and description, then select Submit.
The export process begins and a message displays the catalog export ID.
7. Find and view the exported JSON file by refreshing the Export Entities list and selecting the
export job.
The exported file appears in the Attachments pane.

8. Select the attachment to download the exported file.
The file is downloaded as a JSON file and saved to your local download directory.

What to do next
• Import product catalog entities
• View export job status
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

167


<!-- page 168 -->
Related topics
Using product catalogs
Product Catalog Management
View export job status
Check the status of an export job for product catalog or pricing entities to see if it's in progress or
completed.

Before you begin

Role required: product_catalog_admin for catalog entities,
sn_csm_pricing_pricelist_administrator for pricing entities

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Export > Export Catalog.
The Export Catalog list shows the status of export jobs.
3. In the State column for the export job, view the status.

What to do next

If the export job is complete, import the product catalog entities or import the pricing entities to
your target instance.
Related topics
Using product catalogs
Product Catalog Management
Import product catalog entities
Import product catalog entities by using the ServiceNow Platform import function.

Before you begin

The application scope must be set to Product Catalog Management core. You can change the
application scope using the application picker

in the Unified Navigation bar.

Role required: product_catalog_admin

About this task

You import certain product catalog entities to your target instance in the following order:
• Import the exported base entities.
• Import the product offering catalog if you're exporting product offerings.
• Import product offerings and product specifications.

Procedure
1. Go to the target instance where you want to import the data.
2. Navigate to All > Product Catalog Management > Catalog Import > Import.
The Catalog Import Data Source window opens.
3. Attach the JSON file by selecting the Attachments

icon.

4. Select Choose file and select the file you want to import.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

168


<!-- page 169 -->
Versioned entities can be imported in any order. However, if you have many versioned entities
that must be imported, the lowest version of the entity must be imported before higher
versions of the entity.

Note: When you're importing files to a target instance, import the files in a certain order,
based on the type of entity:
a. Import the exported base entities first, for example characteristics, characteristic
options, template, and Unit of Measure (UOM).
b. Import the product offering catalog if you're exporting product offerings.
c. Import service specifications, product specifications, and then product offerings.
5. When the file is uploaded, close the Attachments window.
6. Under Related Links, select Load All Records.
The data from the imported file loads, and a Progress window opens showing the imported job.
7. Select Run Robust Transform, then select the Transform button.
8. In the Progress window under the Next Steps section, select the imported file name to view the
results.
The imported data is loaded into the correct tables.
9. Navigate to the Entity list view of the entity that you imported to check the imported data.

What to do next
• View export job status
• View import job status
Related topics
Using product catalogs
Product Catalog Management
View import job status
Check the status of an import job for product catalog or pricing entities.

Before you begin

Role required: product_catalog_admin for catalog entities and
sn_csm_pricing_pricelist_administrator for pricing entities

Procedure
1. Navigate to the product catalog or pricing module.
◦ To check product catalog entities, navigate to All > Product Catalog Management > Catalog
Import.
◦ To check pricing entities, navigate to All > Pricing > Import.
2. Select the links under Related Links to view import job status:
◦ Import sets - View the import sets for this data set.
◦ Loaded Data - View the newly imported data for catalog entities in the Catalog
Import Data Source table [sn_prd_pm_catalog_import_data_source] or for pricing
entities in the Pricing Import Data Source [ sn_csm_pricing_import_data_source] or
sn_csm_ctxrul_mgt_import_data_source staging tables.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

169


<!-- page 170 -->
◦ Run Robust Transform - Transforms a loaded import set using a robust transform.
◦ Import Log - Opens the import log.
Related topics
Using product catalogs
Product Catalog Management
Caching in Product Catalog Management
The Product Catalog Management application uses caching to improve user interface
performance when agents access product catalogs and product offerings through the product
configurator.
The product offering catalog and configurable product offerings have hierarchical structures
that require frequent database retrieval when they’re used. To improve performance, these
hierarchical structures are cached when you publish these features.
As a product catalog admin or manager, when you make the following changes to a published
product offering or product offering catalog, you must update the associated cache so that you
can immediately see the changes just made:
• Unit of Measure (UOM) in product offerings – Although product offerings cannot be changed
after you publish them, you can change the default Unit of Measure. After updating the UOM,
you must update the product offering cache.
• Product offering catalog changes – If you change the hierarchies for catalog to category or
category to sub-category hierarchies, you must update the product offering catalog cache.
For details on regenerating these caches, see Update a cache in Product Catalog Management.
Related topics
Using product catalogs
Product Catalog Management
Update a cache in Product Catalog Management
Regenerate the cache associated with product offerings or product offering catalogs after
changing the Unit of Measure in a product offering or category-related hierarchies in a product
offering catalog.

Before you begin

Role required: sn_prd_pm.product-catalog_admin, sn_prd_pm.product-catalog_manager, or
admin

Procedure
1. Navigate to the record that you updated.
Feature change

Unit of Measure (UOM) for a product offer­
ing

Navigate to

a. Navigate to All > Product Catalog Manage­
ment > Product Offering.
b. Select the product offering record that you
just updated.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

170


<!-- page 171 -->
Feature change

Navigate to

Product offering catalog changes

a. Navigate to All > Product Catalog Manage­
ment > Product Offering Catalogs.

◦ Catalog to category
◦ Category to sub-category

b. Select the product offering catalog record
that you just updated.

2. Right-click the Additional actions menu in the record header and select Regenerate
Configuration JSON.
The system immediately updates the associated cache for the product offering or product
offering catalog. You can then view the changes that you made to the Unit of Measure in a
product offering or the product offering catalog.
Related topics
Using product catalogs
Product Catalog Management
Configuring needs analysis
As a product catalog administrator, you can create needs templates, which are questionnaires
that agents use to find product offers to add to a lead or opportunity. Questionnaires function as
product selection guides. When agents complete a questionnaire based on customer input, they
get product recommendations that they can add to a lead or opportunity.

Overview of needs analysis
When agents create a lead in the Lead Management application or an opportunity in the
Opportunity Management application, a product selection guide is displayed in the product
catalog. The product selection guide lists the needs templates that agents can choose to get
product offer recommendations.
Elements of needs analysis

Needs template
Product selection guides associated with the product catalog display one or more
needs templates. Each needs template is a questionnaire that has a set of guided
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

171


<!-- page 172 -->
questions that agents answer to get product recommendations for a customer. Each
template is associated with a needs decision tree.
Needs decision tree
A multi-step, guided decision process that presents a series of questions to the
agent. You use Decision Tree Builder to create and build the decision tree.The
decision tree defines the question nodes, expected answers, connection points,
decision logic, and guidance for decision paths in the questionnaire.
Product recommendations
The product offerings suggested for an opportunity or lead, based on the results of
the needs questionnaire.

Working with decision trees
You configure decision trees by adding nodes, defining paths, and attaching guidances in
Decision Tree Builder. This tool is a canvas for diagramming the basic elements in a decision
tree, such as the question nodes and decision paths. Needs analysis provides a default
guidance, the Product Offering Recommendation guidance, which references information from
the Needs Based Offering Recommendation [sn_prd_pm_product_offering_recommendation]
table as you create the question nodes and guidances in the decision tree.
Before creating decision trees for needs templates, review how decision trees work:
• Decision trees in Guided decision
- Learn the basic elements of a decision tree, such as
node types, linking inputs in nodes, and decision tree paths.
• Example configuration of a decision tree
- Review an example decision tree, including
preparations for creating a decision tree, to understand the end-to-end configuration of a
decision tree.
• Answer types for questions
Choice, Date, or Integers.

- Learn about the various types of answers to questions, such as

Setting up needs analysis
Follow these steps to configure needs analysis:
1. Create a needs-based product offering recommendation.
2. Create a decision tree for a needs template.
3. Build a needs decision tree.
4. Create a needs template and set the catalog relationship.
Related topics
Using product catalogs
Product Catalog Management
Create a needs-based product offering recommendation
Set the product offering to be used as a product recommendation for a needs template.

Before you begin

Product offerings must be defined and published before they can be set as a product
recommendation.
Role required: sn_prd_pm.product_catalog_manager, sn_prd_pm.product_catalog_admin,
admin
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

172


<!-- page 173 -->
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Needs > Needs Based Offering Recommendation and select New.
On the form, fill in the fields:
Create New Needs Based Offering Recommendation form
Field

Description

Name

Name of the recommended offering
displayed to the agent. For example:
Recommend Flex or Recommend Quad Play
service bundle.

Description

Brief description of the recommendation. For
example: Recommending flex offers based
on customer needs.

Product Offering

Product offering to be recommended.

3. Select Save.
The selected product offering is available as a product offering recommendation and can be
selected as a guidance node in a needs decision tree.

What to do next

Create a decision tree for a needs template.
Related topics
Using product catalogs
Product Catalog Management
Create a decision tree for a needs template
Create a decision tree that defines the questions that agents answer to determine customer
needs and get product recommendations.

Before you begin

Before creating decision trees, review the following information:
• Decision trees in Guided decision
- Become familiar with the basic elements of a decision
tree and how they work, such as node types, linking inputs in nodes, and decision tree paths.
• Example configuration of a decision tree
- Walk through an example decision tree, including
preparations for creating a decision tree, to understand the end-to-end configuration of a
decision tree.
• Answer types for questions
or Integers.

- Learn about the various types of answers, such as Choice, Date,

Role required: sn_prd_pm.product_catalog_manager, sn_prd_pm.product_catalog_admin

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Needs > Decision Tree and select New.
3. Select New.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

173


<!-- page 174 -->
On the form, fill in the fields.
Create New Decision Tree form
FIeld

Description

Name

Name of the decision tree.

Action Label

Label of the decision tree displayed on the
needs template card in the product selection
guide.

Description

Brief description of the decision tree. The
description is displayed on the needs
template card in the product selection guide.

Title

Name of the decision tree on the needs
template card in the product selection guide.

Show a dismiss button

Option that shows or hides the Dismiss
button that cancels the flow of a decision tree
during opportunity or lead creation. This field
is enabled by default.

4. Select Save
A decision tree is created with the name specified in the Name field.

What to do next

Build a needs decision tree using Decision Tree Builder.
Related topics
Using product catalogs
Product Catalog Management
Build a needs decision tree
Define the decision tree question nodes, decision paths, and guidance for each decision path
using Decision Tree Builder.

Before you begin

Role required: sn_prd_pm.product_catalog_manager, sn_prd_pm.product_catalog_admin

About this task

As you build your decision tree, for example after adding a decision node or a path, you save and
close the decision tree record. To continue working on the tree, navigate to the Decision Trees
list, select the decision tree record, and open it in Decision Tree Builder, as described in steps 1
through 3 of this procedure.

Procedure
1. Navigate to All > Product Catalog Management > Needs > Decision Trees.
2. Select the decision tree from the list.
3. Select Open in Builder.
4. In Decision Tree Builder, define the start node:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

174


<!-- page 175 -->
a. Select New node
b. In the Node name field, enter a name for the start node.
c. In the Reference table field, select the Product Offering Recommendation table.
d. Enter the question for the agent to answer.
You can make the question mandatory by selecting the Required question field and enter
more details in the Additional details field.
e. Select the type of answer for your question.
For a description of the answer types, see Answer types for questions

.

f. Optional: Add more questions.
g. Select Save and close.
5. Continue building your decision tree in Decision Tree Builder.
Option

Determine the next node displayed in a deci­

Add a follow-up set of questions or instruc­

Steps

Configure a path to set the conditions for
when the next question is displayed in a deci­
sion tree.
Configure a question node to add follow-up
questions or instructions. An answer to these
questions either leads to a guidance or a fur­
ther set of questions.
Configure a guidance node, which identifies
the product recommendation displayed after
agents answer the questions. The guidance
node is the leaf node of a tree.
a. Select the Add path icon on a node.
b. Select Add node.

Add a guidance node for the product recom­
mendation questionnaire

c. In the pop-up, select Propose a guidance
as the outcome and select Continue.
d. Enter a name for the node.
e. In the Guidance field, select Product Offer­
ing Recommendation.
f. In the Set field inputs to pass data into this
guidance section, select the product recom­
mendation to be displayed.
g. Select Save and close.
When your decision tree is complete, select
Activate in Decision Tree Builder, which vali­
dates your tree. If there are no errors, select

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

175


<!-- page 176 -->
Option

Steps

Activate now in the confirmation message di­
alog box.
The decision tree status changes to active.

What to do next

Create a needs template and set the catalog relationship.
Related topics
Using product catalogs
Product Catalog Management
Create a needs template and set the catalog relationship
Define a needs template for a decision tree and associate the template with the product catalog
to which it belongs.

Before you begin

Role required: sn_prd_pm.product_catalog_manager, sn_prd_pm.product_catalog_admin

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Needs > Needs Template and select New.
On the form, fill in the fields.
Create New Needs Template
Field

Description

Number

Unique system-assigned number that
identifies the needs template.

Name

Name of the needs template, for example
Home Tech Product Selection Guide.

Decision tree

Name of the decision tree that has the
questionnaire to determine customer product
needs.

Description

Brief description of the needs template.

Start date

Date and time that the needs template
becomes effective and is listed in the product
selection catalog.

End date

Date and time that the needs template is no
longer effective and not listed in the product
selection catalog.

State

Stage of the needs template:
◦ Draft: Initial state of the needs template.
The template hasn’t been published yet.
◦ Published: Template has been published.
After a template is published, you can
update or delete it.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

176


<!-- page 177 -->
3. Select Save.
The Needs Template Relationship tab opens. The needs template is also listed in the Needs
Template list.
4. In the Needs Template Relationship tab, set the catalog relationship.
a. Select New, which opens the Create New Needs Template Relationship form.
b. In the Catalog field, select the published Product Offering Catalog to which this needs
template belongs.
c. Select Save.
The selected catalog name is listed under the Catalog field in the Needs Template
Relationships section.
5. Select Publish to make the specified catalog available in the product selection guide.
Related topics
Using product catalogs
Product Catalog Management
Configuring product offering recommendations
As a product catalog admin or manager, you can create product offering recommendations that
agents can use to upsell or cross-sell additional products in quotes.
Product offering recommendations provide your sales agents with relevant products to
supplement or complement existing items in quotes. The recommendations are displayed as
cards in the contextual side panel of the CSM Configurable Workspace when your agents update
a draft quote. Product offering recommendations enable your agents to find and add relevant
items quickly to their quotes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

177


<!-- page 178 -->
Example product offering recommendations for a quote

As a catalog admin or manager, you configure product recommendations by identifying the
source product offerings, the type of recommendation, and the associated recommended
product. There are two types of product recommendations:
• Upsell: An upgraded or enhanced version of a product in the quote.
• Cross-sell: A related product that complements a product in the quote.
For details on configuring product recommendations, see Create a product offering
recommendation.
Related topics
Using product catalogs
Product Catalog Management
Create a product offering recommendation
Create product offering recommendations that can be used by your sales agents to upsell or
cross-sell additional products in quotes.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

178


<!-- page 179 -->
Before you begin

Review the product offerings that your sales agents can add to quotes, then determine the
complementary and supplementary products that can be recommended to upsell or cross-sell
additional products for those products. The source product offerings and also the recommended
product offerings must be published in the product catalog.
Role required: Role required: sn_prd_pm.product-catalog_manager,
sn_prd_pm.product_catalog_admin, admin

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Recommendations > Product Offering Recommendations and select New.
Fill in the form.
Create New Product Offering Recommendation
Field

Description

Source product offering

Product for which a recommended product
offering is to be defined. The source product
can be a simple or complex product. Select
from the list of published product offerings.

Recommended product offering

Product recommended for the source
product offering. Select from the list of
published product offerings.

Type

Option that indicates the type of
recommendation:
◦ Upsell: Recommendation for upgrading or
enhancing the source product, for example
a better or bigger version of a product.
◦ Cross sell: Recommendation for buying a
product that is related to but different from
the source product.

Active

Option that indicates the recommendation is
active and displayed to agents when they're
adding or updating quotes and quote line
items.
To deactivate the product offering
recommendation, deselect this option.

Order

Number that determines the sequence in
which the recommendation is displayed
in the contextual side panel of theCSM
Configurable Workspace.

Description

Brief description of the offering
recommendation.

3. Select Save.
The product recommendation card for the product is displayed to your agents when they're
updating a quote that has the source product offering for this recommendation. For more
information on how sales agents use product offering recommendations, see Get additional
product offering recommendations for quotes.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

179


<!-- page 180 -->
Related topics
Using product catalogs
Product Catalog Management
Configuring AI Search for the product catalog
Configure and manage the implementation of AI Search in the product catalog for Sales
Customer Relationship Management.

How AI Search works in the catalog interface
AI Search in the product catalog for Sales Customer Relationship Management transactions
enables agents and customers to use semantic queries combined with keyword queries to find
relevant product offerings and service specifications.
AI Search looks across all product offerings and service specifications, including product
characteristics, bundled product offerings, and child offerings, to return results in the product
catalog interface.
For example, entering the term sedan finds any products that contain this characteristic, parent
products containing child products with this characteristic, and related products that have
semantic similarity to this search term or results. Semantic similarity considers the context
behind user queries, such as the user intent, to determine relevant results even if the exact terms
or phrases aren’t provided.
To enhance the accuracy of semantic results, AI Search uses the AI Search Retrieval Augmented
Generation (RAG) application, which matches user queries with indexed records based on both
keyword and semantic similarity.
The main elements of AI Search for product catalog include the following:
Indexed source
Defines the table records to be indexed for product catalog search:
• The Product Offering Indexed source uses the Product Offering
[sn_prd_pm_product_offering] table as the source. TheConfiguration JSON field
in the Product Offering table provides the characteristic options and attributes for
products, which are used by AI Search to find catalog items by characteristics and
options.
• The Service Specification indexed source uses the Service Specification
[sn_prd_pm_service_specification] table as the source.
• Semantic Index Configuration settings define the embedding model, chunking
configuration, and the semantic index fields used to control semantic indexing
in AI Search. To learn more about semantic indexing, see Semantic index
configuration for indexed sources .
For more information on indexed sources, see Indexed sources in AI Search

.

Search source
A search source defines the searchable set of indexed records to be used as the
search source and the conditions for items that can be searched. For example, the
Product Offering Search source has two conditions that a product offering must
meet so that it's returned as a search result:
• [State] [is] [published]
• [Sellable] [is] [true]
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

180


<!-- page 181 -->
The Service Specification Search source has one condition, [State] [is] [published],
that a specification must meet so that it's returned as a search result.
For more information on search sources, see Search sources in AI Search

.

Search profiles
Search profiles (Product Offering Search Profile and Service Specification Search
Profile) manage the search experience offered to users and the data to be
searched. You can fine tune the synonyms, stop words, typo handling rules used
in auto-correction, and result improvement rules that control the product catalog
search experience. To learn more about the features that can be changed in a
search file, see Search profiles in AI Search .
Search application configurations
Search application configurations define the search engine used, the search profile
used, and also auto-complete suggestions. For details about these configurations,
see Search application configurations .
Product catalog admins inherit the ais_admin role, which allows them to create, read, update, and
delete content indexing and search settings for AI Search.

Implementing AI Search for product catalog
Users with the admin role perform the following steps to implement AI Search for the product
catalog.
1. Install AI Search for Next Experience

only if you upgraded from Tokyo or a previous release.

Skip this step if you're a new customer using the Australia release or if your instance was
zBooted in the Australia release. AI Search for Next Experience is automatically installed.
2. Configure Now Assist for Sales Force Automation (SFA).
Depending on your entitlements, the Now Assist for Sales Force Automation (SFA) plugin
might be automatically installed. If it is not automatically installed but you have the appropriate
entitlements, install the Now Assist for Sales Force Automation (SFA) plugin (sn_som_gen_ai).
This plugin installs the AI Search RAG plugin (sn_ais_rag) and the AI Search Semantic
Controller plugin (com.glide.ais.semantic_search) for the AI Search Retrieval Augmented
Generation (RAG) application used by AI Search for product catalog.

Note: If you do not install Now Assist for Sales Force Automation (SFA) plugin
(sn_som_gen_ai), the product catalog interface provides simple keyword search, also
known as Zing search.
3. Run scheduled job to populate product offering categories only if you upgraded to the
Australia.
This step adds the product offering categories field to the Product Offering table. Skip this
step if you're a new customer using the Australia release or if your instance was zBooted in the
Australia release.
4. Run scheduled job to publish stop words dictionary, search profiles, and index tables.
This scheduled job sets up the indexes and publishes the stop word dictionary and search
profiles used in AI Search for product catalogs.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

181


<!-- page 182 -->
5. Enable AI Search in product catalog.
Set the enable_ai_search_in_catalog property to true, which enables AI Search
for the product catalog interface and verifies that the necessary files are configured to run AI
Search.
After AI Search has been implemented, product catalog admins can manage and customize
various AI Search features if needed. Product catalog admins inherit the ais_admin role, which
allows them to create, read, update, and delete content indexing and search settings for AI
Search[var.ai-search].
Related topics
Using product catalogs
Product Catalog Management
Run scheduled job to populate product offering categories
After upgrading to the Zurich release and the Now Assist for Sales Force Automation (SFA) plugin
is installed, run a scheduled job that generates the product offering categories for pre-existing
product offerings in the product catalog with AI Search.

Before you begin

Role required: admin

About this task

Run the scheduled job called Scheduled job to populate

product_offering_categories glide list for product offerings only if
you've upgraded from a release before the Australia release. This job adds the product offering
categories field to the Product Offering table. If you're a new customer using the Australia release
or Zbooted, do not run this job.

Procedure
1. Navigate to All > System Definition > Scheduled jobs.
2. In the Search field, enter Scheduled job to populate

product_offering_categories glide list for product offerings.

3. Select Execute Now to run the scheduled job.

What to do next

Run the scheduled job to index the tables, publish the stop word dictionary, and publish search
profiles.
Related topics
Using product catalogs
Product Catalog Management
Run scheduled job to publish stop words dictionary, search profiles, and index tables
After upgrading to the Australia release and the Now Assist for Sales Force Automation (SFA)
plugin has been installed, run a scheduled job that publishes the stop word dictionary, search
profiles, and index tables for using AI Search in the product catalog.

Before you begin

Now Assist for Sales Force Automation (SFA) plugin must be installed.
Role required: admin
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

182


<!-- page 183 -->
Procedure
1. Navigate to All > System Definition > Scheduled jobs.
2. In the Search field, enter Scheduled job to publish stop words dictionary,
search profiles and index tables.
3. Select Execute Now to run the scheduled job.

Result

The stop words dictionary, search profiles, and index tables for running AI Search in the product
catalog are published.
Related topics
Using product catalogs
Product Catalog Management
Enable AI Search in product catalog
Use the enable_ai_search_in_catalog property to enable AI Search in the product
catalog interface for Sales Customer Relationship Management.

Before you begin

Role required: Role required: admin

About this task
The enable_ai_search_in_catalog system property checks that the
Product Offering [sn_prd_pm_product_offering] and the Product Specification
[sn_prd_pm_product_specification] tables are indexed for use in AI Search. This property also
verifies that the AI Search plugin is installed. If you're upgrading from an earlier release, use this
property to enable AI Search.

Procedure
1. Navigate to All and in the filter enter sys_properties.list.
2. Open the enable_ai_search_in_catalog system property.
3. Set the property value for enabling AI Search in the Value field.
◦ Enter true to enable AI Search.
◦ Enter false to suppress AI Search if it's currently enabled. If this property is set to false,
the simple keyword search feature is used in the product catalog interface.
4. Select Update.
If you enable this property, AI Search features are available in the product catalog interface.
Related topics
Using product catalogs
Product Catalog Management

Install and configure Lead to Cash Core
Install the Lead to Cash Core application, which enables you to compose and build workflows
that your organization maintains for the life cycle of a sold product.
This mapping provides your users with a unified workflow experience across different entities.
Admins and users with various roles complete the following configurations tasks to use lead to
cash.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

183


<!-- page 184 -->
Configuration tasks for Lead to Cash Core
Task

Description

Entity configuration and mapping

Map entities that define a structure and
transfers data from the source entity to the
target entity.

Create an entity configuration

Use entities to compose a workflow between
two entities so that you can update their
existing configurations and perform the
required Suspend, Resume, or Disconnect
actions on a sold product.

Create an entity mapping

Create an entity mapping to perform the
declarative actions like Suspend, Resume, or
Disconnect actions on a sold product.

Related topics
Using lead-to-cash foundation applications
Lead to Cash Core
Install Lead to Cash Core
If you have the admin role, you can install the Lead to Cash Core application. The application
®
includes the demo data and installations that are related ServiceNow Store applications and
plugins.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you may have to install demo data after installation. Demo data
comprises the sample records that describe application features for the common use cases.
Role required: admin

About this task

The following items are installed with Lead to cash core application:
• Plugins
• Store applications
• Roles
• Tables

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Lead to Cash Core application (com.snc.l2c_core) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you can't find the application, request it
from the ServiceNow Store.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

184


<!-- page 185 -->
Visit the ServiceNow Store
to view all the available apps, and for information about submitting
requests to the store. For cumulative release notes information for all released apps, see the
ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications appear if they’re installed, or are currently installed, or
must be installed. If any plugins or applications require installation, you must install them
before you can install the Lead to Cash Core application.
4. If you want to install demo data, do one of the following depending on your entitlements.
Demo data install task

Description

a. Select the Load Demo Data option.
If demo data is available and you want to in­
stall it

b. Select Install.

Important: If you don't load the demo
data during installation, it's unavailable
to load later.
Load the demo data after installing the Lead
to Cash Core application.

a. Install Lead to Cash Core (com.snc.l2c_­
core).
If the Load Demo Data option isn’t available
but you want demo data
b. Navigate to the All and in the Filter, type v_­
plugin.list.
c. In the related Links, select Install Demo Da­
ta Only.
Related topics
Using lead-to-cash foundation applications
Lead to Cash Core
Entity configuration and mapping
Use the Entity Configuration tables and forms to configure and map an entity that defines a
structure and transfers the data from the source entity to the target entity.

Mapping and configuration
Create the configurations and mappings for the entities by using the Entity Configuration tables.

Entity Configuration tables
The entity configuration tables provide you with the information for the fields on the entity
configuration form.
Entity Configuration tables
Table

Name

Description

Lead to Cash Entity

sn_l2c_core_entity

Defines and manages the
lead-to-cash entities.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

185


<!-- page 186 -->
Entity Configuration tables (continued)
Table

Name

Description

Lead to Cash Entity Definition

sn_l2c_core_entity_definition

Defines and manages the
definitions that are associated
with the lead-to-cash entities.

Lead to Cash Entity Attribute

sn_l2c_core_entity_attribute

Defines and manages the
attributes that are associated
with the lead-to-cash entities.
The lead-to-cash attributes
are based on the definitions
that are set for the entities.

Each field on the entity configuration form gathers the information from one entity configuration
table. The following table has the information about the fields, their descriptions, and the entity
tables that the data is populated from.

Note: The Lead to Cash Entity Definition and Lead to Cash Entity Attributes are related
lists on the Entity Configuration form.
Entity Configuration form
Table

Field

Description

Lead to Cash Entity

Name

Name of the lead-to-cash
entity.

Lead to Cash Entity

Config ID

Unique configuration ID for the
entity.

Lead to Cash Entity

Active

Status of the entity, whether
active or inactive for the
configuration.

Lead to Cash Entity Definition

Entity

Reference to the lead-to-cash
entity definition.

Lead to Cash Entity Definition

Type

Type of the entity definition.

Lead to Cash Entity Definition

Table

Table that is associated with a
lead to cash entity.

Lead to Cash Entity Definition

Label

Label for the entity definition.

Lead to Cash Entity Definition

Parent definition

Parent of the current entity
definition.

Lead to Cash Entity Definition

Relationship field

Query field that is associated
with the parent entity
definition record.

Lead to Cash Entity Definition

Parent field

Query field that is associated
with the current entity
definition record.

Lead to cash Entity Definition

Inherit parent definition

Parent definition that is also
used by the current entity
definition.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

186


<!-- page 187 -->
Entity Configuration form (continued)
Table

Field

Description

Note: To make the
current entity definition
record follow the
same definition that is
associated to the parent
record, select Inherit
parent definition.
Lead to Cash Entity Definition

Order

Numerical order to process
and visualize the hierarchy of
configurations.

Lead to Cash Entity Definition

Filter conditions

Filter conditions specification.

Lead to Cash Entity Definition

Enable post processing

Advanced script for post
processing of current record.

Lead to Cash Entity Definition

Post processing script

Script for post processing of
current record.

Lead to Cash Entity Attribute

Field

Name of the field.

Lead to Cash Entity Attribute

Entity

Reference to the lead-to-cash
entity attribute.

Lead to Cash Entity Attribute

Table

Table that is associated with
the lead-to-cash attribute.

Lead to Cash Entity Attribute

Key

Unique key for the entity
attribute.

Lead to Cash Entity Attribute

Advanced

Option for advanced
configurations.

Note: To modify the
script according to your
requirements, select
Advanced.
Lead to Cash Entity Attribute

Script

Script for the advanced
attributes.

Entity mappings
With entity mappings, you can map the source and target tables to transfer the data between the
entities that depend on the available entity configurations. The entity mapping tables provide the
information for the fields on the entity mapping forms.
Entity Mapping table
Table

Name

Description

Lead to Cash Entity Mapping

sn_l2c_core_entity_mapping

Defines and maps the lead-tocash entity mappings.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

187


<!-- page 188 -->
Entity Mapping table (continued)
Table

Name

Description

Lead to Cash Entity Table
Mapping

sn_l2c_core_entity_table_mapping
Defines and manages the
mappings for the different
tables that are associated with
the lead-to-cash entities.

Lead to Cash Entity Attribute
Mapping

sn_l2c_core_entity_attribute_mapping
Defines and manages the
attributes and their mappings
with the corresponding leadto-cash entity.

The entity mapping form enables you to map the entities with their corresponding tables and
attributes.

Note: The Lead to Cash Entity Table Mapping and Lead to Cash Entity Attribute Mapping
are related lists on the Entity Mapping form.
Entity Mapping form
Table

Field

Description

Lead to Cash Entity Mapping

Mapping name

Name of the mapping.

Lead to Cash Entity Mapping

Mapping config ID

Unique ID for the mapping.

Lead to Cash Entity Mapping

Source entity

Source entity in the mapping
process.

Lead to Cash Entity Mapping

Target entity

Target entity in the mapping
process.

Lead to Cash Entity Mapping

Active

State of the target entity,
whether active for mapping or
not.

Lead to Cash Entity Table
Mapping

Source entity table

Table that is associated with
the source entity.

Lead to Cash Entity Table
Mapping

Target entity table

Table that is associated with
the target entity.

Lead to Cash Entity Table
Mapping

Use condition

Conditions required for
mapping.

Note: To set specific
mapping conditions,
select Use condition.
Lead to Cash Entity Table
Mapping

Condition

Conditions for mapping tables
from the source entity to the
target entity.

Lead to Cash Entity Table
Mapping

Active

State of the source entity,
whether active for mapping or
not.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

188


<!-- page 189 -->
Entity Mapping form (continued)
Table

Field

Description

Lead to Cash Entity Table
Mapping

Order

Numerical priority for
mapping.

Lead to Cash Entity Attribute
Mapping

Entity table mapping

Reference to the Lead-toCash entity table mapping.

Lead to Cash Entity Attribute
Mapping

Source attribute

Attribute that is associated
with the source entity.

Lead to Cash Entity Attribute
Mapping

Target attribute

Attribute that is associated
with the target entity.

Lead to Cash Entity Attribute
Mapping

Advanced

Option for advanced mapping.

Note: To modify the
script according to your
requirements, select
Advanced.

Lead to Cash Entity Attribute
Mapping

Script

Script to customize the
mappings.

Roles and access
Role

Access

sn_l2c_core.admin

Create, read, update, delete, report_view,
report_on

sn_l2c_core_viewer

Read access to all Lead to Cash Core tables

sn_l2c_core.entity_mapping_viewer

View access to Lead to Cash Core entity
mapping

Note: Add a user with the sn_l2c_core.admin role, who is responsible for configuring
metadata for all Lead-to-Cash tables, as a Delegated Developer for the application where
the configuration is being created. Assign the permission “Manage Update Set” (added
under Manage Developers for the respective application). This ensures that all changes
are captured in the correct scope and update sets. For details, see Delegated development
and deployment .
Related topics
Using lead-to-cash foundation applications
Lead to Cash Core
Create an entity configuration
Create an entity configuration to compose a workflow between two entities so that you can
update their existing configurations and perform actions like suspend, resume, or disconnect a
sold product.

Before you begin

Role required: admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

189


<!-- page 190 -->
Procedure
1. Navigate to All > Lead to Cash > Entity Configurations.
2. On the Lead to Cash Entities form, create an entity by selecting New.
3. On the form, in the Name field, enter the entity name and in the Config ID field, enter the entity
ID.
For a description of the field values, see Entity configuration and mapping.
4. Select Submit.
You’ve created an entity configuration. You must now create lead-to-cash entity definitions and
attributes.
5. On the Lead to Cash Entity form, in the Lead To Cash Entity Definitions related list, create an
entity definition by selecting New.
6. On the form, fill in the fields.
For a description of the field values, see Entity configuration and mapping.
7. Select Submit.
8. On the Lead to Cash Entity form, in the Lead To Cash Entity Attributes related list, create an
entity attribute by selecting New.
9. On the form, fill in the fields.
For a description of the field values, see Entity configuration and mapping.
10. Select Submit.

Result

You’ve created an entity configuration and defined its definition and attributes. You must now
create a custom entity mapping. To learn how to create a mapping, see Create an entity mapping.
Related topics
Using lead-to-cash foundation applications
Lead to Cash Core
Create an entity mapping
Create an entity mapping to compose a workflow between two entities so that you can update
their existing configurations and perform a set of declarative actions like suspend, resume, or
disconnect a sold product.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Lead To Cash > Entity Mappings.
2. On the Lead to Cash Entity Mappings form, create a mapping by selecting New.
3. On the form, fill in the fields.
For a description of the field values, see Entity configuration and mapping.
4. Select Submit.
You’ve created an entity mapping. You must now create an entity table mapping and an entity
attribute mapping.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

190


<!-- page 191 -->
5. On the lead to cash entity mapping form, in the Lead To Cash Entity Table Mappings related
list, create an entity table mapping by selecting New.
6. On the form, fill in the fields.
For a description of the field values, see Entity configuration and mapping.
7. Select Submit.
8. On the lead to cash entity mapping form, in the Lead To Cash Entity Table Mappings related
list, create an attribute mapping by selecting New.
9. On the form, fill in the fields.
For a description of the field values, see Entity configuration and mapping.
10. Select Submit.
Related topics
Using lead-to-cash foundation applications
Lead to Cash Core

Sales and Service API Core
Enables seamless tracking and management of Sales Customer Relationship Management
workflows through structured inbound and outbound request handling, configurable flow
processing, and integration with external systems.

Overview of Sales and Service API Core
The Sales and Service API Core (com.sn_tmt_core) plugin has three key components.
Sales and Service API core components
Table

Inbound Request
(sn_tmt_core_inbound_queue)

Description

Tracks the status of both synchronous and
asynchronous flows. It enables agents to
monitor the progress of requests and also
enables sequential processing of dependent
records to maintain data accuracy and
consistency.
It captures detailed status information for
each request. For example, when an order is
created from a quote, it logs a confirmation
message with the order header number.
It also supports archival and cleanup policies
enabling organizations to cleanup records by
applying different durations for successful and
failed requests to optimize data management.

Inbound Request Configuration
(sn_tmt_core_inbound_queue_config)

Defines how each flow is processed and
tracked.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

191


<!-- page 192 -->
Sales and Service API core components (continued)
Table

Description

It’s a metadata table that is referenced by the
Request Configuration field in the Inbound
Request Table.
It enables administrators to:
• Configure synchronous vs asynchronous
processing.
• Adapt the Request Tracker across CRM
flows.
• Set notification types (default, custom, or
none).
Outbound Request
(sn_tmt_core_outbound_request)

Facilitates outbound interactions with external
Service Order Management (SOM).
It supports end-to-end order fulfillment via bidirectional REST API integration and requires
specific roles.

Roles and access
Role

Access

sn_tmt_core.admin

Create, read, update, delete, report_view, and
report_on

sn_tmt_core.viewer

report_view, report_on, and read

Related topics
Using lead-to-cash foundation applications
Lead-to-cash foundation reference
Inbound Request
Track the status of Sales CRM workflows and enable agents to track the status of any
synchronous and asynchronous flows. It also supports processing dependent records
sequentially to make sure that the data stays accurate and consistent.

Inbound request table
Add a record to the modified Inbound Request table [sn_tmt_core_inbound_queue].
The following fields have been added to enhance the Inbound Request table:
• Requested flow
• Account
• Contact
• Consumer
• Response payload
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

192


<!-- page 193 -->
• Source record ids
• Status
• Run in the background
• Initiated by
• Domain
• Execute after
• Request configuration
• Job id
Inbound Request table fields and descriptions
Fields

Description

Field type

Requested flow

The reference to the Lead
to Cash Entity mapping, for
example Sold Product to
Order mapping.

Reference:
sn_l2c_core_entity_mapping

Run in background

Determines whether the
flow is synchronous or
asynchronous.

True/False

Resource

The name of the flow that
creates the record in the
Inbound Request table.

String

Source record ids

System-generated id of the
source records.

List

Source table

Primary Lead to Cash Entity
table on which the request is
triggered.

Table name

Record id

System-generated id of the
target record.

String

Reference table

Name of the target entity table Table name
for the request.

Payload

Request received as input to
trigger the flow.

String

Response payload

Response of the request that
contains the result of the flow
and captures the record-level
action and transaction status.

JSON

State

Current state of the
transaction.

String (choice)

The status of completion of
the flow, for example success,
partial success, failure

String (choice)

Status

Default value: True

New, In progress, Completed,
Error, Pending

Success, partial success,
failure

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

193


<!-- page 194 -->
Inbound Request table fields and descriptions (continued)
Fields

Description

Field type

Error message

Error message that is returned String
for an exception.

Account

The account associated with
the source or target record.

Reference: customer_account

Contact

The contact associated with
the source or target record.

Reference: customer_contact

Consumer

The consumer associated with Reference: csm_consumer
the source or target record.

Initiated by

The user id from the current
user session.

Reference: sys_user

Domain

The current domain scope of
the record, for example global

Domain id

Request Configuration

The reference to the Inbound
Request Configuration table.

Reference:
sn_tmt_core_inbound_queue_config

strict_read_only field
Execute After

Inbound request that must be
processed before the current
request.

Reference: Inbound Request

strict_read_only field
Job id

Reference to Upgrade
Inventory Job table.

Reference:
sn_ind_tmt_orm_upgrade_inventory_job

strict_read_only field

Note: The requested_flow and response_payload fields aren’t visible to agents.
Use the Requested flow <is not empty> to filter out records using the Lead to Cash core APIs.
The Inbound Request table [sn_tmt_core_inbound_queue] provides the status and other
details related to the request. For example, while creating an order through a quote record, a
confirmation message with the order header number.

Note: The flow designer SOM Request Processor is deprecated. Requests are directed to
the flow designer IBQ Request Processor.

Security roles
Security roles and access for the Inbound Request table
Role

Permission

Inbound Queue admin
[sn_tmt_core.inbound_queue_admin]

Create, read, delete, and update

Inbound Queues Create User
[sn_tmt_core.inbound_queue_create_user]

Create

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

194


<!-- page 195 -->
Security roles and access for the Inbound Request table (continued)
Role

Permission

Note: For Sales CRM requests,
the user doesn't have access to the
response_payload, payload, or
requested_flow fields.
Inbound Queues Write User
[sn_tmt_core.inbound_queue_writer]

Write access for non Sales CRM requests
Read only access for Sales CRM requests

Note: For Sales CRM requests,
the user doesn't have access to the
response_payload, payload, or
requested_flow fields.
Inbound Queue Read User
[sn_tmt_core.inbound_queue_read]

Read access to all Sales CRM requests

Note: For Sales CRM requests,
the user doesn't have access to the
response_payload, payload, or
requested_flow fields.

Archival policies
Archive the records in the Inbound Request table and determine when to clean up records
on the table after a certain number of days. You can implement a different retention period for
successful and failed requests.

Archival rule

Time period

Successful requests

10 days

Failed requests

30 days

Related topics
Inbound Request Configuration
Inbound Request Configuration
Enables you to define the configurations to determine how each flow is processed and tracked
within an Inbound Request.

Overview of the Inbound Request Configuration table
The Sales and Service Core API (com.sn_tmt_core) plugin is required to use the Inbound
Request Configuration table (sn_tmt_core_inbound_queue_config).
The Inbound Request Configuration table is a metadata table that must be configured to decide
how a particular flow is executed, whether synchronous or asynchronous.
The table can be used to perform the following tasks.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

195


<!-- page 196 -->
• Enable admins to configure synchronous vs asynchronous processing of requests.
• Adapt the Sales Customer Relationship Management Request Tracker across all CRM flows.
• Enable configuration of notification types, whether default, custom, or no notifications.
The Request Configuration field on the existing Inbound Request Table
[sn_tmt_core_inbound_queue] is a reference to the new Inbound Request Configuration table
(sn_tmt_core_inbound_queue_config).
Any workflow that requires the tracking of a completion status, can use the Inbound Request
Configuration table and configure whether a flow is synchronous or asynchronous.

Fields on the Inbound Request Configuration Table
An admin creates a record in the table and specifies the configuration using the run_mode,
trigger_notification, and configuration_api fields.
Field and descriptions

List of fields on the inbound request configuration table, their descriptions, and
the type of fields.
Field

Description

Type

Config ID

Unique configuration ID for the String
metadata configuration.

Label

Unique label name for the
metadata configuration.

Active

Specifies whether the
True/False
Inbound request configuration
Default value is False
record is active or not.

Run Mode

Specifies whether a request
runs synchronously or
asynchronously.

Translated text

String (choices): Sync, Async,
Advanced.
• Synchronous: Synchronous
processing.
• Asynchronous:
Asynchronous processing
• Advanced: Use custom
script to determine if the
flow has to be synchronous
or asynchronous

Trigger Notification

Specifies how you want to
receive notifications.

String (choices): None,
Default, Custom

A notification is triggered in
one of the following situations.

• None: No notifications
• Default: Notifications only
for asynchronous requests.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

196


<!-- page 197 -->
Field and descriptions

List of fields on the inbound request configuration table, their descriptions, and
the type of fields.
(continued)
Field

Description

Type

• Trigger notification field is
set to Default.

• Custom: Custom notification
for asynchronous requests
based on requirements.

• State of a request is
Complete and the status is
either Success or Partial
success.
The notifications for the
record in the Inbound table
are only received by whoever
has initiated the flow.
Configuration API

Script required to process the
inbound request.

Configure custom
notifications by using
the existing event
(sn_tmt_core.ibq.custom.notification)
or by handling your own
custom event.
Default value for the field is
Default.
Reference: sys_script_include

To learn more about the
configuration API, see
IBQConfigBase API Scoped .
Domain

The current domain scope of
Domain ID
the record, for example global.

Security roles
The security roles for the Inbound Request Configuration table
(sn_tmt_core_inbound_queue_config) provide different levels of access to the
[sn_tmt_core.inbound_queue_admin] role.
Roles and access
Role

Access

sn_tmt_core.inbound_queue_admin

Create, read, update, delete, report_view,
report_on

Note: Add a user with the roles sn_tmt_core.admin or
sn_tmt_core.inbound_queue_admin, who is responsible for configuring the Inbound
Request Configuration table, as a delegated developer for the application where the
configuration is being created. Assign the permission “Manage Update Set” (added under
Manage Developers for the respective application). This ensures that all changes are
captured in the correct scope and update sets. For details, see Delegated development
and deployment .
Related topics
IBQConfigBase API - Scoped
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

197


<!-- page 198 -->
Outbound Request
Initiate outbound requests to manage service orders by interacting with external Service Order
Management (SOM) to facilitate end-to-end order fulfillment. This process requires specific roles
and is enabled via bi-directional REST API integration with Order Management for Sales and
Service API Core.

Overview of the Outbound Request table
The Sales and Service Core API (com.sn_tmt_core) plugin is required to use the Outbound
Request table (sn_tmt_core_outbound_request).
As a provider, you can initiate an outbound request to manage service orders by interacting with
external systems such as Service Order Management (SOM). This process supports the end-toend order fulfillment life cycle, enabling seamless coordination between internal and external
platforms.

Fields on the Outbound Request Table
Field and descriptions

List of fields on the Outbound request table, their descriptions, and the type of
fields.
Field

Description

Type

Request ID

Outbound request ID
that is generated by the
Order Management for
Telecommunications, Media,
and Technology application.

String

State

State of the outbound request. String (choices):
• Not applicable: Created, but
not in use yet
• Fulfilled: The service order
fulfillment is completed
• Pending error: The service
order has encountered an
error and is waiting for a
resolution
• Failed: The record is
discarded and not in use

Table name

Name of the table that is
referenced in the source
record.

Table

Number

Unique number generated for
each record.

String: auto generated

strict_read_only field
Source record

Reference field values from
different tables.

Document ID

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

198


<!-- page 199 -->
Security roles
Roles and access
Role

Access

sn_tmt_core.outbound_request_write

Create, read, update, delete, report_view, and
report_on

sn_tmt_core.outbound_request_read

report_view, report_on, and read

Related topics
Using lead-to-cash foundation applications
Lead-to-cash foundation reference

Configuring the configure, price, quote applications
Learn how to configure the configure, price, quote applications to streamline complex product,
pricing, and quote-to-contract workflows.
Set up tools that enable accurate product configuration, pricing, and quoting. This process
typically includes configuring the ServiceNow CPQ or the configurator, enabling quote
management, and establishing contract and entitlements and sales agreement workflows to
streamline complex sales cycles and improve quoting efficiency.
1. Setting up ServiceNow CPQ Configurator
Plan and configure the implementation of the advanced configurator in ServiceNow CPQ. The
advanced configurator runs in the CSM Configurable Workspace and the Business Portal for
customers placing orders.
2. (Optional) Setting up the Configurator
Control the product options displayed in the product configurator interface by using the Open
State Management API framework.
3. Configuring product pricing
Use the Pricing Management application to create the price lists and price list lines, define
pricing adjustments, and manage other features that control pricing for product offerings.
Product pricing is used by your sales and order agents when creating opportunities, quotes,
and sales orders in Sales Customer Relationship Management.
4. Configuring Quote Management - Basic
Install the Quote Management application to enable your sales agents to generate sales
quotes for products or services that a customer wants to buy.
5. Configure Customer Contracts and Entitlements
Configure the Customer Contracts and Entitlements application to configure and display
customer service contracts and entitlements.
6. Configure Sales Agreement Management
Activate the Sales Agreement Management plugin to enable users to create and manage sales
agreements. This application enables users to create sales agreements between a buyer and a
seller for future transactions.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

199


<!-- page 200 -->
Setting up ServiceNow CPQ Configurator
Set up ServiceNow CPQ Configurator to define product pricing, create pricing rules, create
complex product bundles, and enable other capabilities.
The Configurator streamlines the quoting process by automating configuration logic, reducing
manual quote creation errors, and ensuring consistent application of business rules across all
quotes.
You can set up the Configurator using one of the following approaches.
• Configure ServiceNow CPQ Configurator using guided setup
Use the guided setup to configure the Configurator step by step. The guided setup walks you
through each required setting in a structured sequence, providing context and validation at
each stage.
• Set up ServiceNow CPQ Configurator without guided setup
Configure each setting individually without guided assistance. This approach provides full
flexibility and control over configuration order and settings.
Configure ServiceNow CPQ Configurator using guided setup
The ServiceNow CPQ Configurator guided setup provides a sequence of tasks that help you
configure and implement the Configurator.
Product catalog administrators and technicians run ServiceNow CPQ Configurator in the CSM
Configurable Workspace, while users using self-service features use it in the Business Portal.
1. Complete the prerequisites. For more information, see Prerequisites for configuring
ServiceNow CPQ Configurator.
2. Configure ServiceNow CPQ Configurator using the guided setup. For more information, see Set
up ServiceNow CPQ Configurator using guided setup.
Prerequisites for configuring ServiceNow CPQ Configurator
Verify that you have completed the prerequisites before configuring the Configurator.

Before you begin

Role required: admin

Procedure
1. Install the required plugins by following the steps mentioned below.
The required plugins are:
◦ CSM and FSM Workspace Foundation(sn_cwf_wrkspc)
◦ Order Management (sn_ind_tmt_orm)
◦ Product Catalog Management Core (sn_prd_pm)
◦ Price Management (sn_csm_pricing)
◦ Quote Management Application (sn_quote_mgmt)
◦ Product Configurator (sn_prd_config_ui)
◦ Customer Life Cycle Management Workflows (sn_l2c_cust_flows)
◦ Product and pricing rules (sn_csm_price_mtrx)
◦ Opportunity Management Application (sn_opty_mgmt)
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

200


<!-- page 201 -->
◦ Product Offering Recommendations (sn_prd_pm_ra)
◦ Order Management Portal (sn_ord_mgmt_portal)
◦ Order Operations Case Management (sn_order_case)
◦ Case Management for Invoice Operations (sn_csm_invoice)
◦ Sales Cart (sn_sales_cart)
◦ Customer Life Cycle Managment Self Service (sn_clm_selfservice)
◦ Contracts and Entitlement Workflows (sn_contract_ent_wf)
◦ Sales Quota Application (sn_quota_app)
◦ Customer Service Portal (sn_csm_portal)
◦ CPQ Integration (sn_cpq_intg)
◦ CPQ Configurator (sn_cpq_config)
a. Navigate to All > System Applications > All Available Applications > All.
b. Find the plugin using the filter criteria and search bar.
Search by name or ID. If the application does not appear in the results, request it from the
ServiceNow Store.
c. Select a version from the list.
d. Optional: Select the Load demo data check box.
e. Select Install.
2. View the Client ID and Client secret in your instance.
a. Navigate to https://<service_instance_url>/oauth_entity.do?
sys_id=3b119df83b566210a0c0989e53e45a15

Note: Replace <service_instance_url> with your ServiceNow instance in the
URL mentioned above.
b. Check that the ServiceNow CPQ.AI Admin UI Application Registry exists with a ClientID and
Client secret.
This information is required in the following step.
3. Request a ServiceNow CPQ instance by completing the following the step.
a. Navigate to Now Support

.

b. Select Create a case.
c. In the Now Assist chat, select the option to open the case form.
d. Select Service request.
e. Enter Request a new CPQ instance and select Next.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

201


<!-- page 202 -->
f. Select your instance and select Next.

Note: Contact Primary Customer Administrator (PCA) if your instance is not listed in
the instances list.
g. Select Continue.
h. Enter the Client ID and Client secret fetched from Step 2.
i. Select Continue.
j. Review the summary and select Confirm and Submit.

Result

You will receive an email with the tenant details. Select the View request to access the support
portal and set a password.

Note: You can proceed with the guided setup only after you receive tenant details.
What to do next

Set up ServiceNow CPQ Configurator using guided setup
Set up ServiceNow CPQ Configurator using guided setup
The guided setup organizes the configuration activities into modules and tracks completion as
each activity is completed.

Before you begin

Role required: admin
Complete the prerequisites. For more information, see Prerequisites for configuring ServiceNow
CPQ Configurator.

Procedure
1. Navigate to All > System Applications > All Available Applications > All and open the CPQ
Integration application record.
2. In the Get started section, select Configure to open the guided setup.
3. Complete the Prerequisites module.
Confirm that the required plugins are, the request for a new ServiceNow CPQ tenant is
complete, and ServiceNow CPQ tenant URL is available. Submit the prerequisites confirmation
questionnaire to mark the module complete.

Note:
Certificate setup is not required and OAuth is configured automatically. Proceed with
ServiceNow CPQ Connection Setup module.
4. Complete the ServiceNow CPQ Connection Setup module.
Enter tenant URL and sector value, generate an admin API (application programming interface)
key in the tenant, and add the key in the guided setup. The system updates the HTTPS
connection record automatically.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

202


<!-- page 203 -->
Warning: The admin API key generated in the tenant displays only once. Copy the key
immediately. The key can't be retrieved later.
5. Select Close to exit the guided setup.
Related topics
Using the ServiceNow CPQ Configurator
Set up ServiceNow CPQ Configurator without guided setup
Plan and configure your implementation of the ServiceNow CPQ Configurator. Product catalog
admins and agents use the Configurator in the CSM Configurable Workspace, while users using
self-service features use it in the Business Portal.

Configuration overview
1. Install the following applications using the Application Manager:
◦ FSM CSM and Configurable Workspace Foundation (sn_cwf_wrkspc)
◦ Order Management (sn_ind_tmt_orm)
◦ Product Catalog Management Core (sn_prd_pm)
◦ Price Management (sn_csm_pricing)
◦ Quote Management Application (sn_quote_mgmt)
◦ Product Configurator (sn_prd_config_ui)
◦ Customer Life Cycle Management Workflows (sn_l2c_cust_flows)
◦ Product and pricing rules (sn_csm_price_mtrx)
◦ Opportunity Management Application (sn_opty_mgmt)
◦ Product Offering Recommendations (sn_prd_pm_ra)
◦ Order Management Portal (sn_ord_mgmt_portal)
◦ Order Operations Case Management (sn_order_case)
◦ Case Management for Invoice Operations (sn_csm_invoice)
◦ Sales Cart (sn_sales_cart)
◦ Customer Life Cycle Management Self Service (sn_clm_selfservice)
◦ Contracts and Entitlement Workflows (sn_contract_ent_wf)
◦ Sales Quota Application (sn_quota_app)
◦ Customer Service Portal (sn_csm_portal)
◦ CPQ Integration (sn_cpq_intg)
◦ CPQ Configurator (sn_cpq_config)

Note: Other applications, such as Product Catalog Management Core v17.1.0, and
Pricing Management v15.0.0 are installed automatically with the preceding applications.
2. Set up instance for ServiceNow CPQ integration.
3. Request a ServiceNow CPQ tenant
4. Connect your instance with ServiceNow CPQ instance.
5. Set up an external connection in ServiceNow CPQ.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

203


<!-- page 204 -->
6. Enable the ServiceNow CPQ Configurator.
If you're currently using the Sales Customer Relationship Management product
configurator and want to use the ServiceNow CPQ Configurator, enable the
enable_advanced_configuration system property.
Activate ServiceNow CPQ Integration
You can install the ServiceNow CPQ Integration application (sn_cpq_intg) if you have the admin
®
role.The application includes demo data and installs related ServiceNow Store applications and
plugins if they aren't already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the CPQ Integration
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with the ServiceNow CPQ Integration:
• Scheduled jobs
• Tables

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the ServiceNow CPQ Integration application (sn_cpq_intg) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you can't find the application, you might
have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Activate ServiceNow CPQ Configurator
You can install the ServiceNow CPQ Configurator application (sn_cpq_config) if you have
®
the admin role.The application includes demo data and installs related ServiceNow Store
applications and plugins if they aren't already installed.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

204


<!-- page 205 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the ServiceNow CPQ Configurator application (sn_cpq_config) using the filter criteria and
search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Set up instance for ServiceNow CPQ integration
Set up a ServiceNow instance, generate a JSON Web Token (JWT), and authenticate API calls to
ServiceNow CPQ.

Before you begin

Role required: admin

Procedure
1. Validate that the ServiceNow CPQ Integration application is installed on your ServiceNow
instance by doing the following:
a. Navigate to https://<service_instance_url>/oauth_entity.do?
sys_id=3b119df83b566210a0c0989e53e45a15
b. Check that the ServiceNow CPQ.AI Admin UI Application Registry exists with a ClientID and
secret.
This information is used later.
2. In a directory on your local machine, generate the private and public certificates by using the
openssl tool, then use keytool to convert the certificate from PKCS to JKS format.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

205


<!-- page 206 -->
a. Create the private key by using the command openssl genrsa -out private.key
2048.
The key is created in the current folder in a file named private.key.
b. Create a self-signed certificate that uses the private key by entering: openssl req -new
-x509 -key private.key -out publickey.cer -days 3650
You’re prompted to enter information that is included in your certificate request. The
certificate, named publickey.cer, contains the public key derived from the private key and
metadata, such as subject and issuer. The certificate is digitally signed using the private key.
c. Create a PKCSʼ12 keystore file (a .p12 file) by using the command openssl pkcs12
-export -in publickey.cer -inkey private.key -out keystore.p12
-name "<cert_name>".
This keystore file bundles the signed certificate and private key together and sets the alias
for the key+cert entry in the keystore. The file is encrypted using a password (also called the
export password). This password is required to import and export the certificate.
d. Convert the .p12 (PKCSʼ12) keystore file to .jks (Java KeyStore) format by using the command
keytool -importkeystore -srckeystore keystore.p12 -srcstoretype
pkcs12 -destkeystore keystore.jks.
▪ You’re prompted for the export password from step 2c to read the private key and
certificate from the .p12 file.
▪ You’re prompted to enter a new key store password to protect the JKS keystore file. Record
and retain this password for later, since it’s required to set up the ServiceNow instance.
3. In the ServiceNow instance, login in as admin and do the following:
a. Set CPQ Integration as the current scope by using the scope selection menu icon
Unified Navigation menu.

in the

b. In the navigation filter, enter sys_properties.list and open the
glide.security.file.mime_type.validation system property.
Set the Value to false, then select Submit.
c. Navigate to https://<service_instance_url>/sys_certificate.do?
sys_id=90b3439e2beeea1001bff246f291bf4b and do the following:
▪ Attach the keystore.jks file created in Step 2d to the Certificate record. Enter the key store
password from step 2d in the Key store password field.
▪ Select Active.
▪ Save the certificate.
▪ (Optional). Validate the certificate using the Related Link for the K509 Certificate.
d. Navigate to https://<service_instance_url>/jwt_keystore_aliases.do?
sys_id=3ab40bde2beeea1001bff246f291bfc8.
Enter the Key Store Password from Step 2d as the Signing Key and save the record.
e. In the navigation filter, enter sys_properties.list and open the
glide.security.file.mime_type.validation system property.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

206


<!-- page 207 -->
Set the Value to true, then select Submit.

Note: Repeat step 3 each time CPQ Integration is reinstalled.
4. Set up API authentication by creating the integration user roles included with the Sales
Customer Relationship Management applications:
a. Create an integration user.
▪ Navigate to All > System Security > Users and Groups > Users.
▪ Create a new user by selecting New.
▪ Enter the UserID, First name, and Last name.
▪ Select Submit
▪ Open the user record, and in the Role tab, select Edit.
▪ Add the following roles:
▪ snc_internal
▪ sn_sales_common.sales_agent
▪ sn_csm_pricing.pricing_integrator
▪ sn_prd_pm_adv.catalog_integrator
▪ sn_quote_mgmt_core.quote_integrator
▪ sn_ind_tmt_orm.order_integrator
▪ sn_opty_mgmt_core.opportunity_integrator
▪ sn_sales_cart.cart_integrator

Note: If roles are missing, an app may have failed to properly install. Navigate to the
app manager, select the app associated with the missing role, and click Repair.
b. Navigate to: https://<service_instance_url>/oauth_entity_list.do?
sysparm_query=sys_id=99a63a9e2baeea1001bff246f291bf57
5. Personalize the list view to add the OAuth Application User column.
Use the Update Personalized List icon.
a. In the list view, double-select the OAuth Application User field to edit it.
b. Set the user created in Step 4a as the OAuth Application User in the ServiceNow CPQ.ai API
record.
If you can't modify this field, verify that you're in the correct scope (CPQ Integration).
c. Open this ServiceNow CPQ.ai API record.
d. Select Active and save the record.
e. Switch to the global scope.
f. Create system property.
▪ In the navigation filter, enter sys_properties.list.
▪ Select New.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

207


<!-- page 208 -->
▪ Enter the property name
glide.oauth.inbound.client.credential.grant_type.enabled.
▪ Select the edit icons for Read Roles and Write Roles and select admin for each.
▪ Set the Value to true.
▪ Select Update.

What to do next

Request a ServiceNow CPQ tenant
Request a ServiceNow CPQ tenant
Submit a support ticket on Now Support to request a ServiceNow CPQ instance for use with your
ServiceNow instance.

Before you begin

Role required: admin

Procedure
1. Navigate to Now Support

.

2. Select Create a case.
3. In the Now Assist chat, select the link to open the case form.
4. Select Service request.
5. Enter Request a new CPQ instance and select Next.
6. Select your instance and select Next.

Note: Contact the primary customer administrator (PCA) if your instance is not listed.
7. Select Continue.
8. Enter the Client ID and Client secret and the public certificate details.
9. Select Continue.
10. Review the summary and select Confirm and Submit.

What to do next

Connect the ServiceNow CPQ instance to your ServiceNow instance. See Connect your instance
with ServiceNow CPQ instance.
Connect your instance with ServiceNow CPQ instance
Set up the connections between the ServiceNow instance and the ServiceNow CPQ instance.

Before you begin

Role required: admin

Procedure
1. Set the application scope to CPQ Integration.
Use the scope selection menu icon

in the Unified Navigation menu to select the scope.

2. Navigate to https://<service_instance_url>/oauth_entity.do?
sys_id=3b119df83b566210a0c0989e53e45a15.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

208


<!-- page 209 -->
a. Update the Redirect URL to https://<tenant-url>/login/oauth2/code/
<tenant-name>-login.
▪ The tenant-name is the name of the ServiceNow CPQ site. The tenant-url is the full URL of
the site (for example, cpq-som.test.logik.io)
▪ Example: https://logiksite-som.test.logik.io/login/oauth2/code/
logiksite-som-login
b. Select the Activate property.
c. Select Update.
3. In the filter, enter sys_properties.list.
a. Open the sn_cpq_intg.tenant_url system property.
b. Set the Value to https://<tenant-url>.cpq
c. Select Update.
4. Validate that the connection to the ServiceNow CPQ site is valid by navigating to All > CPQ
Administration and open the ServiceNow CPQ site (listing no blueprints by default).
If this fails to open, check the previous steps for typos and trailing slashes.
5. Generate the admin API key in ServiceNow CPQ.
a. In ServiceNow CPQ, login as admin user and navigate to Select Utilities > Admin API Keys.
b. Specify a name and user ID (with the same name: by default, "admin").
c. Select Permissions as Admin.
This will automatically select Read, Edit, Deploy, and Bulk.
d. Set an expiration date far in the future.
e. Select Save and copy the token.

Note: Be sure to do this step. After the confirmation window is closed, the token is no
longer accessible.
6. Populate the connection and credential aliases.
a. In ServiceNow Sales CRM, navigate to https://<service_instance_url>/now/
workflow-studio/integration/connection
b. Select Advanced Setup of the CPQ – Sync connection.
c. Open the CPQ–sync connection.
▪ Set the connection URL to https://<tenant-url>.cpq.
▪ Ensure that there is no ending slash.
▪ Make the connection active, if it is not already.
▪ Select Save.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

209


<!-- page 210 -->
d. From the CPQ–sync connection, select the CPQ–sync token in the Credential column.
e. Set the API key to Bearer {admintoken} and add the value of the token that you
copied in step 5e, and then select Save.
Example: Bearer _53eT_sxJHJ5rcfgXe8-8LDEK3Of1zHpQ

What to do next

Set up an external connection in ServiceNow CPQ
Related topics
Request a ServiceNow CPQ tenant
Set up an external connection in ServiceNow CPQ
Set up an external connection in ServiceNow CPQ by copying the client ID and client secret of
the CPQ.ai Auth record.

Before you begin

Role required: admin

Procedure
1. In ServiceNow Sales CRM, navigate to https://<service_instance_url>/
oauth_entity.do?sys_id=99a63a9e2baeea1001bff246f291bf57.
We will use the integration we created to set up an external connection in ServiceNow CPQ.
2. Copy the client ID and the client secret.
3. In ServiceNow CPQ, navigate to Utilities > External Connections.
4. Select New.
5. Set the name to pricing.
6. Under Integration Type, select External.
7. For Authentication Type, select OAuth - Client Credentials Flow.
8. Enter the client ID and client secret that you copied in step 2.
The token URL is https://<site>.service-now.com/oauth_token.do.
9. Set the remaining details as follows:
◦ Scope: useraccount
◦ HTTP method: POST
◦ Host: https://<site>.service-now.comstep
◦ Path: “/{{pricingPath}}”step
◦ Body: “{{pricingRequest}}”
10. Make sure that the content type is application/json.
11. Click Save.
12. Navigate to Utilities > Settings and set the pricing connection to the newly created
connection.

What to do next

Enable the ServiceNow CPQ Configurator

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

210


<!-- page 211 -->
Enable the ServiceNow CPQ Configurator
Use the sn_prd_pm.enable_advanced_configuration system property to turn on the
ServiceNow CPQ Configurator, an interface for adding customizable products to Sales Customer
Relationship Management transactions.

Before you begin

Role required: admin

About this task

If you have been using the configurator for Sales Customer Relationship
Management, but you want to use the ServiceNow CPQ Configurator instead, set the
sn_prd_pm.enable_advanced_configuration property to true. The ServiceNow CPQ
Configurator is installed with the ServiceNow CPQ Integration application.

Procedure
1. Navigate to All, and in the filter, enter sys_properties.list.
2. Open the sn_prd_pm.enable_advanced_configuration system property.
3. In the Value field, enter true to turn on the Configurator.
4. Select Update.
The Configurator is displayed when:
◦ Agents are adding configurable products to opportunities, quotes, orders, sold products,
and contracts.
◦ Customers are using the Business Portal for self-service features requiring configurable
product selections.
◦ Product catalog admins are generating or updating blueprints for configurable products.
Related topics
Using the ServiceNow CPQ Configurator

Setting up the Configurator
Control the product options displayed in the Configurator interface by using the Open State
Management API framework.

Configuration overview
As an admin, you can manage the configuration states and configurator nodes displayed in the
Configurator by using the Open State Management API framework and open state management
extension points.
Open state management
The open state model is a programmatic framework in the Configuration State Model API, which
lets you program variations in product options that appear in the legacy product configurator
in Sales Customer Relationship Management. The API framework provides certain states and
helper API methods for controlling how nodes in the legacy product configurator user interface
are displayed.
As developers, you can use extension points for open state management to set the view-only or
editable states on any configurator node, based on events that occur at loading or when product
selections change. You can also optionally script information messages along with changing
the state of the node. These messages display contextually in the product configurator user
interface. Various helper API methods are available for reading and setting states on any node,
eliminating the need for extensive JSON scripting.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

211


<!-- page 212 -->
Note: Check your entitlements to determine if you have access to these features.
Use cases for configuration state management
The following table shows different ways that you can control the product options displayed in
the legacy product configurator.
Configuration state model use case examples
Product configurator use case

Example

Hide certain options for a customer

A product attribute selection isn’t displayed
for customers in California due to state safety
regulations.

Set certain default options for a customer

For upgrades, only the Ultimate plan is
displayed for existing customers who have a
premium plan.

Allow only certain options to be selected
based on other attribute options

For certain products such as laptops, display all
sizes 13", 15", and 17", but display only 15" and
17" laptops if only the touchscreen feature is
required.

Allow quantity to be set for products

Some products might have different default
quantity values. Allow agents to configure
the quantity as long as the value is within the
bounds of a minimum quantity and maximum
quantity allowed for that product.

Allow only certain characteristic selections to
be made

Certain product selections require a particular
characteristic value to be chosen. For example,
upon selection of the Ultimate Internet Plan, the
connectivity speed that can be chosen is 5G.

You can manage the display of options in the legacy product configurator by using the
Configuration State Model API Framework.

Node states
Nodes in the legacy product configurator display product relationship groups, child products,
and characteristic options. Nodes can have the following states:
Visible - Yes (make node visible) or No (make node invisible)
Configurations that are visible or not visible to the agent in the legacy product
configurator. Options might not be visible if they're incompatible with other
selections made by the agent. For example, for a particular car wheel size,
incompatible tire options are not visible.
Editable - Yes (show node and make it selectable) or No (show node but make it
unselectable)
Configurations that are editable or not editable by the agent in the legacy
product configurator. Agents can personalize certain aspects of the product while
maintaining constraints that are necessary for the product. For example, for a
specific car model, only compatible exterior colors are editable.
Quantity - Visible (Yes/No), Editable (Yes/No)
Configurations that set quantity on a product, enforce rules related to quantity, and
show informational and error messages related to quantity at the appropriate node.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

212


<!-- page 213 -->
Checked - Yes (show node selections) or No (make node selections invisible)
Configurations that show the configuration options for selection based on the
context.
Value - Visible (Yes/No), Editable (Yes/No)
Configurations that set a value for a characteristic, enforce rules related to the
characteristic, and show informational or error messages related at the appropriate
node.

Note: Agents can choose to set messages at a node level to provide justification for a
state change.

Events
Manage node states using the Configuration State Model API Framework. Activate these states
by using the following two events in the Events Framework of the Configuration State Model:
• On Load - The state (visibility, editability) of each node is initially set to Yes (true). The open
state is invoked on loading.
• On Change - This function is called whenever there’s a change in a node's value in the legacy
product configurator user interface. However, this state isn’t invoked when quantity changes
occur in the legacy product configurator. These states can be set programmatically in one of
the following ways: on-load, during selections, or just before the instance is synchronized back
to the transaction

Helper API methods
You can use the following helper API methods to read and set states on any node.
Apply states
Set the visible and editable states for product relationship groups, product
characteristics, and product characteristic options using Getter and Setter methods
to read and change the state of the configuration model.
Getter methods
Obtain node paths along with the states on any configuration node:
• getAllNodes(): Returns JSON with node path (reference to code) and its
respective relative path with all the states.
• getNode(nodePath): Returns javascript object of the node for the specified
node path if it exists.
• getNodeDetails(nodePath: Return all the states for the specified node
path if it exists.
Setter methods
• Set the visible and editable states for product relationship groups, product
characteristics, and product characteristic options.
◦ setVisible: True/False at all levels
◦ setVisible(True/False)
◦ setEditable: True/False at all levels
◦ setEditable(True)
◦ Implementation example:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

213


<!-- page 214 -->
var newHandler = configInstance.getNode(nodePath);
newHandler.setVisible(true, “This is a sample
message for setVisible”);
newHandler.setEditable(false, “This is a sample
message for setEditable”);
• Set the quantity for offers and specifications. The nodePath determines the
product, and the value is the quantity to be set.
◦ setQuantity(value);
◦ Implementation example:

var newHandler = configInstance.getNode(nodePath);
newHandler.setQuantity(value, “This is a sample
message for setQuantity”);
• Set the configuration options to see what is being selected.
◦ setChecked (value); True/False
◦ Implementation example:

var nodePath =
“QUADPLAYHO1/OPTIONALPRODUCTS/CONNECTEDC2/CONNECTED
C1/VIN”
var newHandler = configInstance.getNode(nodePath);
var newHandler.setChecked(true, “This is a sample
message for setChecked”)
• Set the value for a characteristic node where the input type is a single line of text.
◦ setValue( value);
◦ Implementation example:
var nodePath =
“QUADPLAYHO1/OPTIONALPRODUCTS/CONNECTEDC2/CONNECTED
C1/VIN”
var newHandler = configInstance.getNode(nodePath);
newHandler.setValue(“9TKN332”, “This is a sample
message for
setValue”);
Getter context variable methods
Retrieve context variables inside the legacy product configurator user interface.
• getHeaderContextVariables(): Returns a list of all the header context
variables.
• getHeaderContextVariableValue(contextVariable): Returns a
value and the display value of a specific context variable in the header.
• getLineContextVariables(): Returns a list of all the line context
variables.
• getLineContextVariableValue(nodePath, contextVariable):
Returns the value of a specific context variable in the line.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

214


<!-- page 215 -->
Use extension points for open state management
Control the options displayed in the product configurator by using extension points in Open
state management.
You can use extension points to call custom scripts for managing the product configurator.
As an admin, access the available open state management extension points, by navigating to All
> Scripted Extension Points and in the Extension Points list, select the appropriate extension
point to view it.
State management extension points
Extension points

Description

ConfigInstanceAPIImpl

Fetches open state execution for config instances during
change and on load commands.

OpenStateValidation

Returns open state execution on config instances during
change and on load.

SetOpenStateResponse

Updates the open state config instance to a config instance.

OpenStateModelExtension

Method used to return to the updated config instance.
Customers can customize the process method.

Configuring product pricing
Use the Pricing Management application to create the price lists and price list lines, define
pricing adjustments, and manage other features that control pricing for product offerings.
Product pricing is used by your sales and order agents when creating opportunities, quotes, and
sales orders in Sales Customer Relationship Management.

Pricing configuration overview
As a pricing administrator or pricing manager, you complete various configuration tasks and
work with your product catalog administrator and product catalog manager to set up the pricing
for products and services sold by your organization. The following example workflow shows
the pricing configuration tasks and how they fit within product catalog and product offering
configuration. You can also work with your administrator to extend certain pricing features, such
as setting up pricing extension points to access pricing information from external sources.
Product catalog and pricing configuration workflow

Starting with the May 2024 release of Sales Customer Relationship Management applications,
you can use the CSM Configurable Workspace to configure product pricing.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

215


<!-- page 216 -->
Note: Check your entitlements to determine if you have access to these features.
Configuration tasks for Pricing Management
Configuration task

Description

Configurable pricing plans

Customize the default pricing plan provided with
Pricing Management. You can add, change, or
delete the sequence of steps in which pricing
calculations and adjustments are run to determine
product offering prices.

Create and publish a price list

Define a price list that identifies basic pricing
features, such as the currency used or the
customer account to which the price list applies.

Create a price list line

Add line items to a price list. A price list line
identifies the list price for a product offering.

Copy a price list

Duplicate a published price list and its associated
price list lines, attribute adjustments, and decision
tables.

Control the default price list on transaction Specify the conditions that control when a default
header or header line
price list is used for an opportunity, quote, or order
by using the Price List Defaulting Matrix.
Create a product attribute-based pricing
adjustment

Define pricing adjustments based on certain
product characteristics.

Create and publish a cost book

Create a cost book that identifies the currency
of the unit costs defined for a set of product
offerings.

Create a cost book line

Add line items to a cost book. A cost book line
defines the unit cost for a product offering. This
feature is used in Quote Management, which uses
unit costs to provide cost margins for products in
sales quotes.

Copy a cost book

Duplicate a cost book and its cost book lines.

Control the default cost book on
transaction header or header line

Set the default cost book displayed to your sales
agents on the transaction header or header line
for a Sales Customer Relationship Management
application by using the Cost Book Defaulting
Matrix.

Create a non-product attribute pricing
adjustment

Define pricing adjustments for products based on
non-product characteristics such as shipping zip
code, location, sales channel, or account segment
by using the Standard Price Adjustment Matrix.

Create and publish a cost-based attribute
adjustment

Define cost-based attribute adjustments for a cost
book line or product offering.

Create pricing adjustments for bundled
products

Define the pricing adjustments for child product
offerings in a bundled product by using the
Configuration Component Price Adjustment
Matrix.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

216


<!-- page 217 -->
Configuration tasks for Pricing Management (continued)
Configuration task

Description

Create a matrix version

Create a version of a published price matrix when
you need to update the matrix, for example to
add or delete a context variable used in the price
matrix.

Set properties to control pricing
processing

Manage the processing of pricing features, such
as how certain pricing calculations are made.

Create a custom context variable

Create a custom variable that represents an
attribute that can be used in a pricing matrix,
for example to create a non-product attribute
adjustment.

Map a custom context variable to a
transaction entity

Associate a custom pricing context variable
to a particular transaction entity type in Sales
Customer Relationship Management.

Use extension points in Pricing
Management

Apply pricing extension points to use pricing
information from external sources or extend
the pricing engine logic on how list prices or
adjustments are calculated.

Export and import pricing entities

Export and import pricing entities between
ServiceNow instances. For example, you can
promote pricing entities such as price lists from a
non-production instance to a production instance.

Install Pricing Management
You can install the Pricing Management application (sn_csm_pricing) if you have the admin
®
role.The application includes demo data and installs related ServiceNow Store applications and
plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Price Management
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Pricing Management:
• Roles
• Tables
For more information, see Components installed with Pricing Management.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

217


<!-- page 218 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Price Management application (sn_csm_pricing) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box, any dependencies installed with your application
are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Configurable pricing plans
Pricing Management provides a default pricing plan that defines the sequence of steps in which
pricing calculations and adjustments are applied to determine final product prices.

How the pricing plan works
The default pricing plan is an active, published plan that is automatically implemented with
Pricing Management. You can use the default plan. Or you can copy the default plan and
customize it by adding or changing the pricing steps to tailor it for your organization. Only one
active pricing plan per domain is supported.

Note: The Pricing Management v15.0.0 release provides a default pricing plan that
includes new steps to support pricing strategies introduced in this release. If you're using
a custom pricing plan from an earlier release, review the default pricing plan, which is in a
Retired state after you upgrade. Determine whether you want to publish the default plan or
customize the default pricing plan for your needs. If you're customizing the plan:
• Review the new steps for calculating net pricing in quotes and orders: Net Price
Calculation, Line Rollup, and Header Rollup. The rollup steps calculate the roll-up values
for configurable products and the header-level values in quotes and orders. This pricing
functionality for quotes and orders existed in previous releases, but was not included in
the default pricing plan.
• To maintain the net pricing and rollup functionality for quotes and orders, retain the Net
Price Calculation, Line Rollup, and Header Rollup steps in your custom pricing plan.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

218


<!-- page 219 -->
Default Pricing Plan steps

The default plan consists of basic pricing steps in which certain actions are run to calculate
product offering prices.
Pricing steps
Step

Action

Initialize Pricing Context

Starts the pricing engine context. The system
gathers basic data required for subsequent
calculation steps. For example, the system
resolves context variable values, initializes the
pricing cache, and performs basic validation
of request payloads.

Analyze Line Changes

Reviews price line changes to determine
whether adjustments to sold products and
contracts require new pricing, as defined in
the Delta Price Treatment Matrix.

Fetch Base Cost

Get costs from a cost book, if your organization
is using cost books in Quote Management.

Apply Attribute based Cost Adjustments

Apply adjustments to the cost based on
product offering characteristics.

Fetch Base List Price

Get the list price for all requested products
based on the price list, unit of measurement,
and data provided to the pricing API.

Apply Attribute Adjustments

Apply attribute adjustments based on product
characteristics selected.

Apply Renewal Adjustment

Apply a renewal adjustment for contracts.
This step determines whether a markup
or markdown value, either a percentage or
specific amount, such as a pricing uplift for
contract renewals, is to be calculated and
applied.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

219


<!-- page 220 -->
Pricing steps (continued)
Step

Action

Note:
• Subsequent pricing adjustment steps
in the pricing plan aren’t applied after
this renewal adjustment step.
• You can change or remove this step
in a custom pricing plan. You can also
change the conditions for running
subsequent steps after the renewal
adjustment step. For details on
changing conditions for a particular
step, see Add or change a pricing plan
step.
Annual Price Increase Adjustments for Ramps

Applies the percentage Annual Price Increase
to the list price of products that have price
ramps. Sales agents specify the percentage
increase when they create price ramps for
quote line items.

Apply configuration component adjustments

Apply adjustments as defined in the
Configuration Component Price Adjustment
Matrix for child product offerings that are
bundled under a parent product offering.

Apply contextual adjustments

Apply adjustments as defined in the Standard
Price Adjustment Matrix for product offerings
based on non-product characteristics, such as
billing state or shipping zip code.

Custom adjustments

Apply custom adjustments if implemented
using the PricingAdjustmentExtensionPoint
to fetch adjustments from another system or
for adjustments that can't be supported via a
pricing matrix.

Net Price Calculation

Calculates the net price for products using any
automatic and manual adjustments made in
quotes or orders.

Line Rollup

Calculates the cumulative pricing fields in
quote and order lines that are rolled up to the
parent line of bundled products.

Derived Price Calculation

Calculates the line prices using the Derived
Pricing Matrix, which defines the pricing
source and the unit base list price for the price
list line.

Calculate Delta Prices

Calculates the difference in net pricing for sold
products and contracts after adjustments are
made.

Header Rollup

Calculates total pricing values, such as total
annual or total monthly amounts, displayed at
the header level

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

220


<!-- page 221 -->
Customizing a pricing plan
The default pricing plan is fixed, to preserve the default pricing logic. You can copy the default
plan, and add or change steps as needed for your organization. When you finish your changes,
you publish the copy so that it becomes the active plan. If needed, you can revert to the default
plan at any time by publishing the default plan.
As a pricing admin or manager, follow these steps to define a custom pricing plan:
• Create a configurable pricing plan (copy the default plan).
• Add or change a pricing plan step. In your configurable pricing plan, you can add one or more
pricing steps for pricing adjustments, including any conditions for running the step. If needed,
you can also change the sequence of the adjustment step.
• Delete a pricing plan step, if needed.
As you add or change pricing steps, the system validates your entries, such as the sequence
number, price point, and calculation type. When you finish adding or changing steps, publish the
configurable pricing plan to make it active. The former active plan is retired.
Create a configurable pricing plan
Create a configurable pricing plan by copying the default pricing plan provided in Pricing
Management.

Before you begin

Role required: sn_csm_pricing_pricelist_administrator, sn_csm_pricing_pricelist_manager

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Pricing > Pricing Plans.
3. Select the default pricing plan and select Copy.
The copy of the default pricing plan opens in a new tab in the Draft state.
4. Provide the pricing plan details:
a. Enter the Name of the pricing plan.
b. If you want price adjustments to be applied after price overrides, select the Apply
adjustments after price override option.
If you select this option, after the system applies a price override, any remaining pricing
steps are run. If you don't select this option, any pricing steps scheduled after the price
override is applied are not run.
c. Enter a new Description for the custom pricing plan.
5. Select Save.
The configurable pricing plan is created with the Name that you provided.

What to do next

Add or change a pricing plan step.
Add or change a pricing plan step
Add a pricing plan step to a configurable pricing plan that applies either a pricing matrix or a
custom adjustment using the pricing extension point. You can also change certain items in an
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

221


<!-- page 222 -->
existing step, such as the sequence or type of matrix used, as well as specify conditions for
running the step.

Before you begin

Create a configurable pricing plan.
Role required: sn_csm_pricing.pricelist_administrator or sn_csm_pricing.pricelist_manager

About this task

You can add or change a pricing plan step only when the configurable pricing plan is in the Draft
state.

Note: The following steps in all pricing plans are fixed and can't be changed:
• Initialize Pricing Context
• Fetch Base Cost
• Fetch Base List Price
• Apply Attribute Adjustments

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Pricing Plans.
3. Select the configurable pricing plan to which steps are being added or changed.
4. In the pricing plan, select the Pricing Plan Steps tab.
◦ To add a step, select New.
◦ To change a step, select the step number to be updated. If you need to delete a pricing
adjustment step, see Delete a pricing plan step.
5. Fill in or change certain fields in the form.
Pricing Plan Step
Field

Description

Number

System assigned number for the pricing plan
step.

Name

Name of the step to be added.

Description

Brief description of the step.

Price point

Selling price for a product or service. Select
one of the following:
◦ List Price: Standard selling price to be
applied before any pricing adjustments.
◦ Net Price: Final price to customer after
predefined or negotiated adjustments have
been subtracted.

Calculation type

Option for evaluating the result of the
adjustment at each step. Select one of the
following:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

222


<!-- page 223 -->
Field

Description

◦ Previous price point: When the Price Point
is Net Price, the previous price point is List
Price. The adjustment is applied to the List
Price.
◦ Rolling: When multiple adjustments
exist, apply the subsequent adjustment
to the price resulting from the previous
adjustment to calculate the final net price.
Sequence

Number value indicating the order in which
the step is to be applied.
For example, if you're adding a step between
two existing steps with sequence numbers
40 and 50 respectively, you could enter the
sequence number 45 for the step.

Code

System-generated alphanumeric number
based on the pricing plan step name.

Action

Option indicating the type of pricing
adjustment to be run in the step. Select one
of the following:
◦ Apply Matrix Adjustments: Run a pricing
matrix.
◦ Apply Custom Adjustments: Run a
custom pricing adjustment using the
PricingAdjustmentsExtensionPoint.

Rule matrix

Option that displays if you selected the Apply
Matrix Adjustments action. Select the pricing
matrix to be applied:
◦ Configuration Component Price
Adjustment Matrix: Use this matrix to set
the price adjustments for child product
offerings that are bundled under a parent
product offering.
◦ Standard Price Adjustment Matrix: Use
this matrix to set a pricing adjustment for
a product offering based on non-product
characteristics, such as billing state or
shipping zip code.
You can select the rule matrix link in the step
to define the matrix.

Pricing plan

Name of the configurable pricing plan.

Extension point

Option that displays the
PricingAdjustmentsExtensionPoint if you
selected the Apply Custom Adjustments
action.

6. Specify certain conditions for running the step, if applicable.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

223


<!-- page 224 -->
Note: Any conditions that aren't met, are ignored.
Type of condition

Description

Header condition

Use the condition builder to add or change
conditions that control when the step is run,
based on the transaction header (for exam­
ple the header for an opportunity, quote, or or­
der). Specify the condition fields to be used,
for example a context variable for transaction
headers, product characteristics, or other ob­
jects such as account or product offering.

Line condition

Use the condition filter to add or change
conditions that control when the step is run,
based on the transaction line (for example an
opportunity, quote, or order line). Specify the
condition fields to be use, such as a context
variable for transaction lines, product charac­
teristics, or other objects, such as account or
product offering.

7. Select Save.
8. To continue adding or changing steps, repeat steps 4 through 7.
If you need to remove a step, see Delete a pricing plan step.
9. When you're finished adding or changing steps, select Publish.
The configurable plan becomes the active pricing plan, and the former active plan is retired.
Delete a pricing plan step
Remove a pricing step from a configurable pricing plan when the plan is in the Draft state.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator or sn_csm_pricing.pricelist_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Pricing Plans.
3. Select the configurable pricing plan to be changed.
4. In the pricing plan, select the Pricing Plan Steps tab and then select the step number to be
deleted.
5. In the More actions menu, select Delete, and confirm that you want to delete the step.
The step is removed from the pricing plan.
Create and publish a price list
Create a price list that defines the pricing for products and services in Sales Customer
Relationship Management.

Before you begin

Role required: sn_csm_pricing_pricelist_administrator, sn_csm_pricing_pricelist_manager

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

224


<!-- page 225 -->
About this task

You can create various types of price lists for your organization, such as price lists that are based
on a standard currency or price lists that are based on a particular customer account. The first
price list that you create for a specified currency is automatically set as the default price list.
When you're creating a default price list, the start date must be either the current date or a date
earlier than the current date. If you don’t want the price list as the default, deselect the Default
option.

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Prices > Price Lists.
3. Select New.
4. In the Details tab, fill in the fields.
Create New Price List
Field

Number

Description

Unique system-assigned number that identifies the price list.

Name

Name of the price list.

Code

System-generated alphanumeric number based on the price list
name. Although the code is system-generated, you can edit it to
represent any industry-specific product code.

Currency

Currency of the price list, for example USD for US dollars.

Account

Optional. Account of the customer to which this price list applies.

Default

Option for setting this price list as the default price list with the
specified Currency or for the specified Account.

Sales agreement

If you're using the Sales Agreement Management application and
a sales agreement was created by an agent, the unique systemassigned number that identifies the sales agreement associated with
this price list.

Description

Description of the price list.

State

Stage of the price list:
◦ Draft: Initial state of the price list. Information is still being added to
the price list and hasn’t been published to the catalog yet.
◦ Published: Price list has been published to the catalog. After a price
list is published, you can update, delete, retire, or archive it.
◦ Retired: Price list has been retired and is no longer active. The price
list and its price list lines cannot be updated.
◦ Archived: Price list has been archived and is no longer available for
use.

Note: A default price list cannot be deleted, retired, or
archived.
Start Date

Starting date and time that the price list is effective. Select the
Calendar icon

to choose the start date and time, then select OK.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

225


<!-- page 226 -->
Field

Description

Note: If this is a default price list, the start date must be either
the current date or a date that is earlier than the current date.
End Date

Ending date and time of the price list. Select the Calendar icon
to
choose the end date and time, then select OK. After the ending time,
the price list is no longer active.

Note: If this is a default price list, the end date is ignored.
5. Select Save.
The price list is in the Draft state.
6. Select Publish.
The price list state changes to Published. The Price List Lines tab opens for creating a price list
line.

What to do next

Create a price list line for the price list.
Create a price list line
Create a price list line and associate it to a product offering.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator, sn_csm_pricing.pricelist_manager

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Pricing > Price Lists and select the price list to which you're adding the price list
line.
3. In the Price List Lines tab, select New.
4. On the form, fill in the fields.
Price List Line
Field

Description

Number

Unique system-assigned number for the price list line.

Price List

Name of the price list.

Code

System-generated alphanumeric number based on the price list name.

Product Offering

Product to which this price list is associated.

Unit of Measure

Unit of measure for the product.

Base list price

Price set for the product offering, which is the full price that a product
or service is sold for, without any discounts or promotions applied.

Derived price

Option that enables derived pricing (also called related product
pricing) for product offerings associated with this price list line. For
more information, see Configuring derived pricing.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

226


<!-- page 227 -->
Field

Description

Start Date

Starting date and time that the price list line is effective. Select the
Calendar icon

End Date

to choose the start date and time, then select OK.

Ending date and time that the price list line is no longer effective. After
this time, the price list line is no longer active. Select the Calendar icon
to choose the end date and time, then select OK.

Pricing Method

Type of pricing selected when the product offering was created:
◦ Recurring: Payment fee that occurs over certain intervals.
◦ Non Recurring: one-time payment fee.

Periodicity

Frequency of recurring pricing:
◦ Monthly
◦ Annually

5. Select Save.
Copy a price list
Duplicate a published price list and its associated price list lines, attribute adjustments, and
decision tables. You can copy a price list, update the pricing in the copied price list if needed,
then publish it.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator, sn_csm_pricing.pricelist_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Price Lists.
3. Select the published price list to be copied and select Copy.
The state changes to Copy in Progress and a message indicates that the copy is starting. You
can't edit the price list, price list lines, any attribute adjustments, and related decision tables
during the copy process. Each price list line and the other related pricing features are copied
asynchronously. During the copy process, you can refresh the page to see the items copied.
When the copy process completes, the following occurs:
◦ The copied price list is available in the Draft state and opens in a new tab.
◦ Any errors that occurred during the copy process, for example a price list line didn't get
copied, are displayed in a message in the copied price list.
4. Select Save.
When the price list copy is in the Draft state, you can add or change price list lines or delete
the price list. When you finish updating the copied price list, you can publish it so that it’s
available for use.
Control the default price list on transaction header or header line
Define the default price list displayed to your sales and order agents on the transaction header
or header line by using the Price List Defaulting Matrix.

Before you begin

Role required: sn_csm_pricing_pricelist_administrator, sn_csm_pricing_pricelist_manager
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

227


<!-- page 228 -->
About this task

For base systems, the default price list used is based on the transaction header. For example, if
a sales agreement is populated on the transaction header, the sales agreement price list is used
as the default. If a customer account is populated on a transaction header and a valid accountbased price list exists, the header defaults to the account-based price list. If no account-based
price list exists, the default currency-based price list is used.
You can change the default price list selection logic by using the Price List Defaulting Matrix.

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Pricing > Pricing Matrices.
3. In the Pricing Matrices list, select Price List Defaulting Matrix.
4. Select Edit Rule.
The Decision Table for the Price List Defaulting Matrix opens in Workflow Studio and shows the
inputs and the decision table for setting the conditions to display the default price list in the
header.
5. In the decision table, set the rule for displaying the default price list:
a. In the Header Price List Type column in the Results section, select the Edit icon to add the
price lists that can be applied, for example an account-based price list or a currency-based
price list.
b. In the Condition section, select Add new decision row.
c. In the row, select the column for the input to be applied, such as Account and select the
condition to make it active.
d. In the Results section, select the Header Price List Type column and select the price list to
be applied, for example an account-based price list or a currency-based price list.
6. Select Save.
Review the Validation Status and Validation Message columns to see if you're missing
mandatory inputs or outputs or required information. If so, enter the appropriate information
and select Save.
The default price list is available to sales or order agents when working on the transaction
header for opportunities, quotes, or orders or when working on the transaction line, for
example a quote line or order line.
Create and publish a cost book
Create a cost book that defines the unit costs for products and services in Sales Customer
Relationship Management.

Before you begin

Role required: sn_csm_pricing_pricelist_administrator, sn_csm_pricing_pricelist_manager

About this task

You can create cost books that define the unit costs for a set of products and a specified
currency. However, only one cost book per given currency is allowed.
You can create multiple cost books for a given currency, but the first cost book that you create for
a particular currency is automatically set as the default cost book. If you don’t want the first cost
book as the default, deselect the Default option. When you're creating a default cost book, the
start date must be either the current date or a date earlier than the current date.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

228


<!-- page 229 -->
Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Prices > Cost Books.
3. In the Prices - Cost Books list, select New.
4. In the Details tab, fill in the fields.
Create New Cost Book
Field

Description

Number

Unique system-assigned number that
identifies the cost book.

Name

Name of the cost book, for example
Standard Cost Book.

Code

System-generated alphanumeric
number based on the cost book name.
Although the code is system-generated,
you can edit it to represent an industryspecific code.

Currency

Currency of the cost book, for example
USD for US dollars.

Default

Option for setting this cost book as the
default cost book with the specified
Currency.

Description

Brief description of the cost book.

State

Stage of the cost book:
◦ Draft: Initial state of the cost book.
Information is still being added to the
cost book and hasn’t been published
to the catalog yet.
◦ Published: Cost book has been
published to the catalog. After a cost
book is published, you can update,
delete, retire, or archive it.
◦ Retired: Cost book has been retired
and is no longer active. The cost
book and its cost book lines can't be
updated.
◦ Archived: Cost book has been
archived and is no longer available for
use.

Note: A default cost book can’t
be deleted, retired, or archived.
Start date

Starting date and time that the cost
book is effective. Select the Calendar
icon
to choose the start date and
time, then select OK.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

229


<!-- page 230 -->
Field

Description

Note: If this date is for a default
cost book, the start date must be
either the current date or a date
that is earlier than the current date.
End date

Ending date and time of the cost book.
After the ending time, the cost book is
no longer active. Select the Calendar
icon to choose the end date and time,
then select OK.

Note: If this date is for a default
cost book, the end date is ignored.

5. Select Save.
The cost book is in the Draft state.

Note: You can continue by defining cost book lines when the cost book is in Draft state.
However, you must publish the cost book to apply the cost book and its cost book lines.
6. Select Publish.
The state changes to Published. The Cost Book Lines tab opens for creating a cost book list
line.

What to do next

Create a cost book line.
Create a cost book line
Create a cost book line that defines the unit cost for a product offering.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator, sn_csm_pricing.pricelist_manager

Procedure
1. In the CSM Configurable Workspace, access the cost book to which you're adding a cost book
line.
a. Select the List

view.

b. Navigate to Prices > Cost Books and select the cost book.
2. In the Cost Book Lines tab, select New.
3. In the Create New Cost Book Line tab, fill in the form.
Cost Book Line
Field

Description

Number

Unique system-assigned number for the cost
book line.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

230


<!-- page 231 -->
Field

Description

Cost Book

Name of the cost book to which this line is
added.

Code

System-generated alphanumeric number
based on the cost book name and the line
item to be created.
Although the code is system-generated, you
can edit it to represent any industry-specific
code.

Product offering

Product to which this cost book line is
associated.

Unit of measure

Unit of measure for the product.

Cost

Unit cost of the product, which is the cost
incurred to produce or procure the product.

Start date

Starting date and time that the cost book
is effective. Select the Calendar icon
to
choose the start date and time, then select
OK.

End date

Ending date and time of the cost book.
After the ending time, the cost book is no
longer active. Select the Calendar icon
to
choose the end date and time, then select
OK.

Pricing method

Type of pricing selected when the product
offering was created:
◦ Recurring: Payment fee that occurs over
certain intervals.
◦ Non Recurring: one-time payment fee.

Note: The Pricing Method is autopopulated when the product offering is
selected.
Periodicity

Frequency of recurring pricing:
◦ Monthly
◦ Annually

Note: The Periodicity is autopopulated when the product offering is
selected.

4. Select Save.
Related topics
Copy a cost book
Control the default cost book on transaction header or header line
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

231


<!-- page 232 -->
Copy a cost book
Duplicate a cost book and its cost book lines.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator or sn_csm_pricing.pricelist_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Cost Books.
3. Select the published cost book to be copied and select Copy.
The state changes to Copy in Progress and a message indicates that the copy is starting. Each
cost book line is copied asynchronously, but you can refresh the page to see the cost book
lines copied. When the copy process completes, the following occurs:
◦ The copied cost book is available in the Draft state and opens in a new tab.
◦ Any errors that occurred during the copy process, for example a cost book line doesn’t get
copied, are displayed in a message in the copied cost book list.
4. Select Save.
When the cost book is in the Draft state, you can add cost book lines or delete the cost book.
When you finish any changes to the copied cost book, you can publish it so that it's available
for use and retire the former cost book.
Control the default cost book on transaction header or header line
Set the default cost book displayed to your sales agents on the transaction header or header line
for a Sales Customer Relationship Management application by using the Cost Book Defaulting
Matrix.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator, sn_csm_pricing.pricelist_manager

About this task

The transaction header is a record that contains general information about an entity, such as a
cost book. A transaction line record contains specific information about a specific item, such as a
cost book line for a certain product.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Pricing Matrices.
3. In the Pricing Matrices list, select Cost Book Defaulting Matrix.
4. Select Edit Rule.
The Decision Table for the Cost Book Defaulting Matrix opens in Workflow Studio and shows
the inputs and the decision table for setting the conditions to display the default cost book in
the header.
5. In the decision table, set the rule for displaying the default cost book:
a. In the Header Cost Book Type column in the Results section, select the Edit icon to add the
cost book that can be applied.
b. In the Condition section, select Add new decision row.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

232


<!-- page 233 -->
c. In the row, select the column for the input to be applied, such as Currency and set the
condition to make it active.
d. In the Results section, select the Header Price List Type column and select the cost book to
be applied, for example a specific currency-based cost book.
6. Select Save.
Review the Validation Status and Validation Message columns to see if you're missing
mandatory inputs or outputs or required information. If so, enter the appropriate information
and select Save.
The default cost book is displayed in the transaction header or header line for the application.
Create a product attribute-based pricing adjustment
Create a pricing adjustment for a product offering based on its product characteristics, such
as the product size or color. A pricing adjustment can be a markup or markdown percentage,
amount, or a pricing override.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator, sn_csm_pricing.pricelist_manager

About this task

In this task, you specify the product characteristics to which the pricing adjustment applies.
Next, you use a decision table to set the attribute adjustment rule, which defines the conditions
for applying the pricing adjustment. For more information on using decision tables, see Using
decision tables .

Note: Starting with Pricing Matrixes release v10.0.0, a decision rule row can have more
than one condition.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Attribute Adjustments.
3. In the Pricing - Attribute Adjustments list, select New.
4. On the Attribute Adjustment form, specify the product characteristics used to determine the
adjustment:
a. Enter the Name of the attribute adjustment rule, for example, Make and Model selection.
b. If you want to change the system-assigned Code based on the attribute adjustment name,
enter a different alphanumeric value.
c. Select Price as the Type of adjustment.
d. If you want the adjustment to apply to all price lists, select Apply to all Price Lists.
e. Select the Product offering to which this adjustment applies.
f. If this attribute adjustment applies to a specific price list line and not all price lists, select the
Price list line.
g. Select the Start Date that this attribute adjustment begins.
h. Select the End Date that this attribute adjustment ends, if applicable.
i. In the Product Characteristics field, select the product characteristics to be used to
differentiate the product price.
j. Select Save.
5. In the Attribute Adjustment, select Create Rule.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

233


<!-- page 234 -->
The Decision Table for the adjustment opens in Workflow Studio and displays the inputs, which
are the product characteristics that you selected, and the decision table that contains the
columns for setting the attribute adjustment rule conditions.
6. Set the attribute pricing rule:
a. In the Conditions section, select Add new decision row.
b. In the row, select an attribute column and select the appropriate value.
For example, if a product has attribute columns labeled Make and Model, select each
column and then select the appropriate value.
You can enter multiple rules with multiple conditions for a given product offering.
c. In the Results section, select the Adjustment Type column and choose the type of
adjustment, for example Markdown % or Markdown amount.
d. In the Adjustment Value column, enter the adjustment amount.
e. Select Save.
The adjustments are made to the price lists or the price list line, depending on the options
selected in step 4f.

Note: At transaction time, the Attribute Adjustment table does not support rule
selection criteria set as single. It supports only multiple evaluations as true.
7. Optional: Test your decision table.
For more information on testing your decision table before publishing it, see Test a decision
table in Workflow Studio .
8. In the Details tab for the attribute adjustment, select Publish.
When a product offering is added to a transaction, such as a quote or order line, the pricing
attribute adjustments are applied after the agent or customer selects the attribute options. For
example, when agents or customers use the CPQ Configurator to add a configurable product
offering, the base price of the product is displayed initially. After the appropriate attribute
options are selected, the price adjustments for the selected attributes are applied to the base
price of the product. The resulting price displayed is the list price of the product offering,
based on attribute conditions and associated markup or markdown values set in the Attribute
Adjustment decision table.
Create and publish a cost-based attribute adjustment
Set different product costs based on product attributes, such as model or size, by applying cost
adjustments for a product offering by cost book or specified cost book line. The base cost is
the cost at the cost book line. Product cost is the base cost plus attribute adjustments. These
adjustments are used to display the profit margins in quotes and quote lines, which can be
criteria for triggering quote approval rules.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator or sn_csm_pricing.pricelist_manager

About this task

You select the characteristics of a product that affect the base product cost. Next, use a
decision table to create an attribute adjustment rule that defines the conditions for applying the
adjustments and the markup or markdown value, either a percentage or amount to be applied
for specified characteristics. For more information on using decision tables, see Using decision
tables .
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

234


<!-- page 235 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace and select the List icon

.

2. Navigate to Pricing > Attribute Adjustments.
3. Select New and fill in the fields.
Attribute Adjustment
Field

Name

Name of the cost-based attribute adjustment.

Code

System-generated alphanumeric value based
on the attribute name.

Type

Type of adjustment, either Price or Cost.
Select Cost.

Apply to all cost books

Option that applies this attribute adjustment
to the product offering for all cost books.
If this attribute adjustment applies only to a
cost book line for a product offering, unselect
this option.

Product offering

Product to which this adjustment applies.
Select the field to display a list of products.
The characteristics set for the product
offering are displayed in the Product
Characteristics field.

Number

System-generated alphanumeric value
that identifies this cost-based attribute
adjustment.

Cost book line

Option for selecting a cost book line to which
the adjustment is applied. You can select this
option if the Apply to all cost books option is
unselected.

State

Status of the adjustment:
◦ Draft (saved)
◦ Published
◦ Retired
◦ Archived

Start date

Date and time that this attribute adjustment
begins.
If you want to apply the adjustment to a cost
book line, the Start date and End date must
be the within the cost book line start and end
dates.

End date

Date and time that this attribute adjustment
ends, if applicable.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

235


<!-- page 236 -->
Field

Product characteristics

Product attributes used to differentiate
product costs.

4. Select Save.
5. In the Attribute Adjustment page, select Create Rule.
The Decision Table for the adjustment opens in Workflow Studio.
6. Set the attribute pricing rule:
a. In the Conditions section, select Add new decision row.
b. In the row, select an attribute column and select the appropriate value.
For example, if an automation hub product has attribute columns labeled 4G and 5G, select
each column and then select the appropriate value.
c. In the Results section, select the Adjustment Type column and choose the type of
adjustment, for example Markdown % or Markdown amount.
d. In the Adjustment Value column, enter the adjustment amount.
e. Select Save.
The adjustments are made to the cost book or the cost book line, depending on the options
selected in step 3.
7. Optional: Test your decision table.
For information on testing your decision table before publishing it, see Test a decision table in
Workflow Studio .
8. If this is a product-based cost attribute adjustment, select Publish in the Details tab for the
attribute adjustment to make the attribute adjustment available.
The cost-based attribute adjustments for the product offering are applied when agents add the
product offering to an opportunity, quote, or an order.
Create a non-product attribute pricing adjustment
Create a pricing adjustment for a product offering based on non-product characteristics, such
as billing state or shipping zip code. You use the Standard Price Adjustment Matrix to define the
pricing adjustment.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator, sn_csm_pricing.pricelist_manager

About this task

Non-product attributes are represented as context variables, which identify non-product
characteristics, such as billing state or shipping zip code. Pricing Management provides a set
of default context variables for non-product attributes. You can view the list of context variables
for non-product attributes in the Context variables field in the Standard Price Adjustment Rule
Matrix. You can also review a list of system-defined context variables in the Context Variables
[sn_csm_ctxrul_mgt_context_variable] table.
However, if you have a non-product attribute that is not available as a default context variable,
such as sales channel, your system administrator can create a custom context variable for that
attribute. You can then use the custom context variable as an input in the decision table for the
Standard Price Adjustment Matrix.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

236


<!-- page 237 -->
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Pricing Matrices.
3. In the Pricing Matrices list, select Standard Price Adjustment Matrix.
4. If you want to remove any of the context variables in the Context variables section In the
Rule Matrix Standard Price Adjustment Matrix record, delete the pills that represent context
variables for non-product attributes.
5. If you have a large number of rows in the decision table and you want to optimize rule matrix
performance, in Query optimization variables, select one or more context variables that the
system uses to filter the pricing decision table rows that are evaluated.
6. Select the option in Rule selection criteria that indicates whether single or multiple rules are
applied in the Standard Adjustment Matrix.
If multiple rules match and the option is marked true, all applicable pricing rules are applied
when evaluating adjustments for product offers. If the option isn’t selected, the first rule based
on priority is applied for adjustment calculation.
7. Select Edit Rule.
The Decision Table for the Standard Price Adjustment Matrix opens in Workflow Studio
and displays the inputs, which are the default non-product characteristics available, and
the decision table section that contains the columns for setting the non-product attribute
adjustment rule conditions.
8. If you have a custom context variable to add as an input, select +Add and add the custom
variable Label, Type, Reference (if applicable), Mandatory indicator, and Add condition
column, which adds the variable to the Conditions section.
9. In the decision table, set the pricing rule for the non-product attribute:
a. In the Conditions section, select Add new decision row.
b. In the row, select the columns for the non-product attributes to be applied, such as Shipping
State and Account, and select the appropriate values.
c. In the Results section, select the Adjustment Type column and choose the type of
adjustment, for example Markdown % or Markdown amount.
d. In the Adjustment Value column, enter the adjustment amount.
e. In the Adjustment Description column, enter a brief description of the adjustment, for
example, Adjustment for state location.
f. Select Save.
g. Select Publish.
The adjustments are available to agents when working on Sales Customer Relationship
Management transactions, such as quotes or orders and to customers using the Business
Portal.
Create pricing adjustments for bundled products
Define price adjustments for a product when it is sold as part of a product bundle. You use the
Configuration Component Price Adjustment Matrix to set the price adjustments for child product
offerings that are bundled under a parent product offering.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

237


<!-- page 238 -->
Before you begin

Role required: sn_csm_pricing_pricelist_administrator, sn_csm_pricing_pricelist_manager

About this task

A pricing adjustment can be a markup or markdown percentage, amount, or a pricing override of
the standalone product list price.

Procedure
1. In the CSM Configurable Workspace, select the List view.
2. Navigate to Pricing > Pricing Matrices.
3. In the Pricing Matrices list, select Configuration Component Price Adjustment Matrix.
4. Select Edit Rule.
The Decision Table for the Configuration Component Price Adjustment Matrix opens in
Workflow Studio and displays the inputs, which include the parent product offering and its
child product offerings that comprise the bundle, and the decision table section that contains
the columns for setting the conditions and the pricing adjustments to be applied to the child
product offerings in the bundle.
5. In the decision table set the pricing rule for the child product offerings in the bundle:
a. In the Conditions section, select Add new decision row.
b. In the row, select the columns for the product offerings to be applied and select the
appropriate values.
c. In the Results section, select the Adjustment Type column and choose the type of
adjustment, for example Markdown % or Markdown amount.
d. In the Adjustment Value column, enter the adjustment amount.
e. In the Adjustment Description column, enter a brief description of the adjustment.
This description is copied to the adjustment record linked to the quote or order line when
the product offer is added to the quote or order. Consider creating a description that is
formatted with a unique ID followed by a text description. You can use the unique ID to audit
the adjustment generated when the quote or order is being configured, and the agent can
use the description to understand the reason for the adjustment.
f. Select Save.
The adjustments are available to sales or order agents when working on quotes or orders.
Configure volume pricing
Set volume pricing rules by using the Standard Price Adjustment matrix.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator, sn_csm_pricing.pricelist_manager

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace and select the List icon

.

2. Navigate to Pricing > Pricing Matrices.
3. In the Pricing Matrices list, select the Standard Price Adjustment matrix and create a new
matrix version.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

238


<!-- page 239 -->
4. In the Context variables section of the new matrix version, select the Search
the list of Context variables, select the Quantity variable.
The Quantity variable is added to the Context variables section.

icon and in

5. Select Create Rule.
The Standard Price Adjustment Matrix opens in Workflow Studio and displays the inputs
available and the Decision table for entering the volume pricing conditions to be applied.
6. In the Conditions section of the Decision table, do the following:
a. Select the item to which the volume pricing adjustment is to be applied, such as Product
Offering.
For example, if you're setting volume pricing for door sensors, select the Door Sensor
product offering.
b. Make the condition active by selecting the Active field and set it to true.
c. Select a condition operator in the Quantity field and enter the quantity value to be applied.
The following operators are available:
▪ is
▪ is not
▪ is empty
▪ is not empty
▪ less than
▪ greater than
▪ less than or is
▪ greater than or is
▪ between
For example, selecting the operator greater than or is and specifying a quantity value 10
indicates that the pricing adjustment applies to a quantity that is equal to or greater than 10.
If you select the operator between, you specify a quantity range by entering the Min value
and Max value for the range. You must set both a minimum and maximum value so that the
quantity pricing adjustment applies only to the quantity of product offerings in the specified
range.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

239


<!-- page 240 -->
Example quantity range for volume pricing

For example, the door sensor pricing adjustment applies only to quantities ranging from
1 through 10. The pricing adjustments are not applicable to other quantity values for door
sensors.
7. In the Results section, do the following:
a. Select the Adjustment Type field and choose the type of adjustment, for example Markdown
% or Markdown amount.
b. In the Adjustment Value column, enter the adjustment amount.
c. In the Adjustment Description column, enter a brief description of the adjustment, for
example, Quantity adjustment for door sensors.
d. Select Save.
8. Return to the version of the Standard Price Adjustment Matrix that you created and select Save
and then Publish to make the matrix version active.
The volume pricing adjustment is available to sales or order agents as they work on quotes or
orders. For example, a pricing adjustment has a quantity range for a particular product, such as
1 through 10 door sensors. When a sales agent adds five door sensors to a quote, the pricing
adjustment is applied. The pricing adjustment doesn't apply to quantities outside this range.
Blended pricing for contract consolidation of subscription renewals
When selected contract lines are consolidated into a renewal line for renewal purposes, the
pricing engine uses blended pricing to calculate the renewal line pricing.

Overview of renewal pricing in contract consolidation
Over the life of a subscription, contract quantities can change due to the following:
• Upsells: Changes to a customer contract that increase its value by adding more quantity,
licenses, or new products or services. These changes can result in one or more new contract
lines or an amendment, while the original contract remains in effect.
• Downsells: Changes to a customer contract that reduce the quantity of a product or service
and supersedes an earlier contract line.
In renewal pricing for contract consolidation, the pricing engine does the following:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

240


<!-- page 241 -->
• Finds which contract lines are included in the renewal.
• Aggregates the quantities for the contract lines in the renewal.
• Blends prices and uplift increases to determine pricing for the single quote renewal line.
How contract line changes are handled
Agents indicate which contract lines are to be consolidated by setting the
Renewable option on a contract line. At renewal, active upsell lines and the latest
downsell lines that represent the current base quantity are combined to calculate
renewal pricing. The context variable Consolidated From Contract Lines identifies
a consolidated quote renewal line. Within those consolidated lines, if the Include
quantity for renew field is selected, the quantity is used in the price blending.
How renewal quantity and prices are calculated
The pricing engine calculates prices on the quote renewal line using weighted
averages, based on the quantities of the contributing contract lines. The following
values are blended:
• Base price
• Unit price
• List price (after price increases, such as uplifts)
How contract lines with uplifts are calculated
An uplift is a price increase applied at contract renewal, typically expressed as
a percentage, which raises the list price above the base price for a given term or
period.
If contributing contract lines have different uplift percentages:
1. Each contract line’s uplifted price is calculated first.
2. A weighted average of the uplifted prices is computed based on the current
active contract lines.
3. The resulting value is set as the list price on the renewal line.
Uplifts in contracts are handled as list price adjustments, where:
• During blending, the renewal base price is the weighted average of the unit price
of the consolidated contract lines.
• The uplift is reflected in the list price.

Controlling uplift values in contracts and renewals
You can configure the following uplift features:
• Uplift amounts: To control uplift amounts that are applied, use the Price Increase Defaulting
Matrix. For details, see Create a price increase adjustment.
• Uplift renewal multiplier: To set the uplift renewal multiplier, use the
renewal_uplift_term system property. For more information, see Set term multiplier for
contract renewal uplift.
Set term multiplier for contract renewal uplift
Use the renewal_uplift_term system property to select the contract duration basis used
to calculate the renewal uplift term, either per year or per term.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

241


<!-- page 242 -->
Before you begin

Role required: admin or pricing admin

Procedure
1. Navigate to All and in the filter enter sys_properties.list.
2. Open the renewal_uplift_term system property.
The default value is per term, which means the term is for a specific period of time based on
the contract.
3. Do one of the following in the Value field:
◦ To use a yearly basis for the uplift term multiplier, enter per year in the Value field.
◦ To change the uplift term multiplier to per term, enter per term in the Value field.
4. Select Update.
Uplift calculations use the specified multiplier to calculate the contract duration basis.
Create a price increase adjustment
Create a price increase adjustment such as an renewal uplift. Use the Price Increase Defaulting
Matrix to define conditions that control the price increase applied.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator or sn_csm_pricing. pricelist_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Context Rule Management > Rule Matrices.
3. In the Rule Matrices list, select Price Increase Defaulting Matrix.
The matrix details are displayed.
4. Select Edit Rule to define conditions for the price increase.
The Decision Table for the adjustment opens in Workflow Studio and displays the inputs for the
price increase, and the decision table that contains the columns for setting the price increase
conditions.
5. Set the default price increase rule.
a. In the Conditions section, select Add new decision row.
b. In the row, select the input column and set the value for the condition.
For example, if the input is Account, choose the customer account to which the adjustment
applies.
c. In the Price Increase Type column, select the type of price increase, such as Renewal Uplift.
d. In the Results section, select the Adjustment Type column and choose the type of
adjustment, for example Markdown % or Markdown amount.
e. In the Adjustment Value column, enter the adjustment amount.
f. Select Save.
6. Select Publish.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

242


<!-- page 243 -->
Result

The pricing increases, for example uplifts for contract renewals, are applied based on the
conditions set in the Price Increase Defaulting Matrix.
Price and quantity ramps
Price and quantity ramps enable sales agents to set incremental increases in product pricing
and quantity deals over the duration of a customer contract or subscription period.

How ramps work
Different product adoption scenarios by customers can affect product pricing and quantities for
subscription products or products under contract. For example, customers might want to scale
their purchases over time, based on product use that increases annually as the company grows.
Changes to products in subscriptions or contracts, such as changes to product characteristics or
quantity, can cause pricing or quantity increases that must be applied.
Ramps provide a flexible pricing structure for sales agents to schedule pricing and quantity
increases over specific time periods, called ramp segments. During the quote process, sales
agents can create ramps for configurable products.

Note: Products that can have ramps must have the Price method set to Recurring and

the Enable ramps option selected. Your product catalog admin sets those options when
creating a product offering.
Ramps can be defined using yearly, quarterly, or custom structures. Yearly and quarterly ramps
generate ramp segments automatically based on the selected term and frequency. Custom
ramps allow agents to define ramp segments with flexible durations, rather than relying on
automatically generated segments.
The following example shows the ramp settings used to create ramps for a configurable
product offering. The Price ramp details section displays the ramp segments that are generated
automatically for the configurable product and its child lines.
Ramps for a configurable product offering

Sales agents provide the following items to generate the ramps for a quote line:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

243


<!-- page 244 -->
• Start date and End date. The default dates come from the quote line. The agent can enter a
different start or end date, which the system uses to update the settings accordingly. These
dates are used with the Term to calculate the ramp segments. The start date is used as the
starting date for the first ramp segment.
• Ramp type: Yearly, quarterly, or custom. Yearly and quarterly ramps generate segments
automatically based on the selected frequency and term. Custom ramps allow agents to define
and manage ramp segments manually.
• Term: Length of time, in months, for the ramps. The maximum term is 60 months. The Term is
used with the Ramp type (Start date and End date) to determine the segments created.
• Annual % increase: The percentage increase to be applied annually. The annual percentage
increase is applied after the completion of the first year and is cascaded to all quote lines.
• Segment: The number of time periods in the ramp to be created. Segments are determined as
follows:
◦ Yearly ramp type: If the Term is a multiple of 12, the number of segments created is equal to
the term/12. Each segment term is 12 months. If the Term isn’t a multiple of 12, the number
of segments is term/12 +1, where the first segment is less than 12 months, but the other
segments are 12 months each. Also, the first segment can be partial months.
◦ Quarterly ramp type: If the Term is a multiple of 3, the number of segments isn’t equal to
term/3. Each individual segment term is 3 months. If the term is not a multiple of 3, the
number of segments is equal to (Term/3+1) with the first segment less than 3 months while
the rest of the segments are 3 months each. The first segment can be partial months, such
as 8 months, 5 days based on the Start date and End date.

Ramp generation and validation
For bundled products, the ramps generated for the parent line and its child lines have segments
with the same ramp type (yearly or quarterly) and term.
• If the parent line has a ramp, ramps are created automatically for all the child lines.
• If the parent line is not ramped, all the child offers can be ramped independently.

Ramp benefits
Ramps provide the following benefits:
• Flexible pricing structures for customers, to align with their product adoption phases. For
example, you can start with lower product pricing in the first ramp segment, to reduce initial
costs and overcome buyer hesitancy.
• Scaled revenue optimized over time as product usage grows.
• Automatic calculations of ramp segments and pricing, minimizing errors in manual calculations
made by sales agents.

Ramp limitations
Ramps have certain limitations.
• Ramps aren't supported for these features:
◦ Quotes of types sale agreement
◦ Multiple configurations
◦ Product inventory (not applicable)
• Ramps for order lines are displayed, but order changes to ramps by order agents aren't
supported. Order Management supports viewing price and quantity ramps on order line items
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

244


<!-- page 245 -->
to provide visibility into planned pricing and quantity changes over time. All ramp creation and
management is performed in Quote Management.
• Ramps for sold products (SP) are displayed just like any other line, but Modify, Add, Change,
Delete (MACD) operations aren't supported for sold products.

Setting up ramps
Configuring ramps involves the following tasks:
Ramp configuration tasks
Task

Description

Role

Enable ramps in product
offerings

When creating a configurable
product offering:

Product catalog admin

• Set the Pricing method to
Recurring, which makes the
Enable ramps option available.
• Select the Enable ramps option,
which lets sales agents create
ramps for the offering in a quote
line.
Add price ramps on a quote
line item

Define the ramp settings for the
quote line and generate the ramps.
After creating the ramps, agents
can update the settings, such
as the Ramp type or Annual %
increase to recalculate the ramp
segments automatically.

Sales agent

Renewal pricing for products with price and quantity ramps
You can control how renewal uplift pricing for product offerings with price and quantity ramps is
calculated by the pricing engine. A renewal uplift is a price increase applied to a product when a
contract is renewed.

Overview of renewal pricing for products with ramps
When a product offering with ramps is up for renewal, determining the renewal unit price for the
offering can be complex because a ramp may have multiple segments with different prices and
quantities.
Ramp deals may also have standard (yearly or quarterly) and custom segment durations,
making it difficult to choose which segment price to use as the price basis and the term for
determining the renewal unit price used in uplift calculations. For non-ramped products, the uplift
is calculated by taking the unit price and applying the uplift percentage over the renewal term.
Price basis for calculating renewal unit prices
The renewal unit price is the starting price for a contract renewal line. The pricing
engine supports two ways to calculate the renewal unit price using the segment and
term. By default, the pricing engine uses the unit price basis from the last segment
and the duration of the last segment for the term.
However, the pricing engine can use the first segment as the price basis and
apply the uplift across the entire ramp term (total ramp duration). You can set
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

245


<!-- page 246 -->
the first segment as the price basis and entire ramp term by using the pricing
system properties sn_csm_pricing.ramp_renewal_price_segment and
sn_csm_pricing.ramp_renewal_term_basis. You set these properties
by using the Customization Properties for Pricing form (navigate to All > Pricing >
Administration > Properties).
Customization Properties for pricing

The following table shows the price basis and terms that you can control.
Price basis for renewal unit pricing of ramped product offerings
Basis option

Price

Term

Last segment (Default
used by pricing engine)

Unit price from the last
ramp segment

Duration of the last
segment only.

First segment

Unit price from the first
ramp segment

Total ramp duration (all
segments combined;
apply the uplift across the
entire ramp term)

Example of uplift calculations
The following example shows how the pricing engine uses the different price basis
and term values to calculate the unit price:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

246


<!-- page 247 -->
Uplift calculation example
Price basis and term

Calculation

Last segment + Segment term

Last segment price: $220. Last segment
= 1 year. Effective uplift = 10%. Renewal
price = $220 + $22 = $242

First segment + Full term

First segment price: $240. Full ramp = 3
years. Effective uplift = 10% x 3 = 30%.
Renewal price = $240 + $72 = $312

Note: Quantity is always sourced from the last segment regardless of which
price basis method is selected. The price basis configuration affects only the
unit price and term for the uplift calculation.
Non-standard segment durations
When a ramp has non-standard segment lengths (for example, a segment that
spans 18 months rather than 12), the pricing engine rounds up the segment duration
to the nearest full year before computing the renewal price. This provides consistent
year-over-year uplift behavior even when segment lengths do not align with
calendar years.

Overriding default renewal uplift calculations
You can override the default renewal uplift calculations for
ramped products made by the pricing engine by using the
sn_csm_pricing.RampRenewalUpliftCalculationExtensionPoint. You can use
this extension point to customize the logic for calculating renewal uplift pricing. Your inputs can
include segment data, unit price, and term for each ramp segment.
For example, you might want the pricing engine to calculater the price basis and term for both
the last and first segments to determine which price basis provides the maximum uplift amount.
You could have the pricing engine choose the higher value of the two calculated renewal prices
to use as the renewal price.
Using the uplift calculation example from the previous section, the pricing engine determines
that the first segment price and full ramp term amount ($312) is higher than the last segment and
segment term price ($242).
Maximum uplift calculation example
Price basis and term

Calculation

Last segment + Segment term

Last segment price: $220. Last segment = 1
year. Effective uplift = 10%. Renewal price =
$220 + $22 = $242

First segment + Full term

First segment price: $240. Full ramp = 3 years.
Effective uplift = 10% x 3 = 30%. Renewal price
= $240 + $72 = $312

Value selected by pricing engine

Max ($312, $242) = $312. The pricing engine
uses the First segment price basis and
Segment term to calculate the renewal price.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

247


<!-- page 248 -->
Controlling renewal uplift pricing for ramped products
Manage how the pricing engine calculates renewal uplift pricing for ramped products by using
the following properties and extension point:
• Uplift renewal multiplier: To set the uplift renewal multiplier, use the
renewal_uplift_term system property. For more information, see Set properties to
control pricing processing.
• Segment basis and term used by the pricing engine: Use the system
properties sn_csm_pricing.ramp_renewal_price_segment and
sn_csm_pricing.ramp_renewal_term_basis. To learn more, see Set properties to
control pricing processing.
• Override the default renewal uplift calculations for ramped products: Use the
RampRenewalUpliftCalculationExtensionPoint to customize the
uplift calculation logic. Access the extension point by navigating to All > Pricing >
Administration > Scripted Extension Points and in the Extension Points list, select
sn_csm_pricing.RampRenewalUpliftCalculationExtensionPoint. Your
inputs can include data such as the unit price and term for each ramp segment.
Configuring derived pricing
Automatically set the pricing for a product by deriving its pricing from other products or pricing
sources such as transactional values in quotes or orders.

Derived pricing overview
As a pricing admin or manager, you can define rules for deriving product pricing dynamically,
relative to other products or transactional values such as the total contract value (TCV) or annual
contract value (ACV). When products with derived pricing are added to a transaction, such as a
quote or order, the derived pricing is applied automatically. The system manages the lifecycle of
derived lines by adding new system-generated lines when pricing rules require them, updating
existing lines when pricing conditions change, and removing lines that no longer apply.
Derived pricing can be used in various scenarios. For example:
Use cases for derived pricing
Pricing scenario

Industry use case

Price accessories relative to related base
equipment

Manufacturing: Sell an extended warranty that
is 10% of the price of a high-end industrial
machine.

Price add-ons that are based on Product X and Telecom: Sell 24x7 support as an add-on that
Y total
is 10% of all the subscription products in a
quote.
Price add-ons based on a percentage of all
products purchased

SaaS: Sell product support service as an
add-on that is 15% of subscription fees for all
software products purchased.

Derived pricing for a product involves the following items, which you manage through the
Derived Pricing Matrix:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

248


<!-- page 249 -->
Elements in derived pricing
Item

Description

Target product offering

Product offering for which pricing is derived.

Source product offering

One or more product offerings whose pricing
is the basis for the target offering.

Transaction header value (context variable)

Field from the header for a transaction, such
as quote, that is used as the pricing basis to
calculate the derived price, such as the annual
contract value (ACV).

Scope

Level from which the context variable is used:
• Bundle
• Cart
• Account

Formula calculation

Percentage used to calculate the derived
pricing

Price point

Price at which the product is sold:
• Unit list price
• Unit net price
• Cumulative net price
• Monthly recurring price
• Annual recurring price

Aggregate

Formulas (SUM, MIN, MAX, AVG) used to
determine a single derived product price when
pricing is derived from more than one source
product. Percentages and price floor and
ceiling amounts are then applied as pricing
adjustments to calculate the final derived
product price.

Scope: Quotes and orders
Derived pricing applies to both quotes and orders. When you configure rules in the Derived
Pricing Matrix, the system automatically applies those rules to derived line items in both
transaction types. The system handles all line-level changes (adds, updates, and removals)
without requiring manual edits from agents.

Limitations for derived pricing
Derived pricing does not work for quotes of type sales agreements.

Setting up derived pricing
To implement derived pricing, complete these tasks:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

249


<!-- page 250 -->
Derived pricing configuration tasks
Task

Description

Role

Enable related (derived)
pricing for a price list line

When creating a price list line, Pricing admin or manager
select the Derive price option.
You can also set the Floor
price and Ceiling price for a
price list line.

Create rules for derived
product pricing

Use the Derived Pricing
Matrix to define the product
relationships and calculations
used when deriving product
pricing.

Pricing admin or manager

Enable the Account scope option for derived pricing
Enable the Account option so that it is available for selection in the Scope column of the Derived
Pricing Matrix. By default, this option in the Choice List table is not enabled.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definitions > Choices.
2. Do the following:
◦ In the Table column, search for:
var__m_sys_decision_multi_result_element_5d8794f9ff923610998fffffffffff16
◦ In the Element column, search for scope.
3. Open the Account choice record.
4. Deselect the Inactive option.
5. Select Save.
The Account option is displayed as a selectable option in the Scope column of the Derived
Pricing Matrix.
Create rules for derived product pricing
Define product pricing rules for deriving the price of a product dynamically based on the pricing
of related products or a pricing source.

Before you begin

Activate the Account option for the Scope field in the Derived Pricing Matrix. To activate the
option, see Enable the Account scope option for derived pricing.
Role required: sn_csm_pricing.pricelist_administrator or sn_csm_pricing.pricelist_manager

About this task

Use the Derived Price Matrix to define the rules for deriving the pricing of a product offering
relative to other product offerings or a price source based on a transactional header, such as
items from quote headers.
The Derived Price Matrix defines pricing rules for both quotes and orders. When agents add
products to a quote or order, the system automatically evaluates the rules in this matrix and
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

250


<!-- page 251 -->
generates, updates, or removes derived line items as needed. Agents cannot edit or copy
system-generated lines. The system enforces these restrictions to preserve pricing integrity.
When agents add products to a quote or order, the following occurs automatically:
• System-generated lines appear when pricing rules are evaluated and conditions are met.
• Existing derived lines update automatically when pricing conditions change, such as when
source product prices or quantities are modified.
• Derived lines are removed automatically when they no longer meet the pricing rule conditions.
• System-generated lines display a System generated indicator and can't be edited, deleted, or
copied. This restriction preserves pricing integrity.
Agents can review the line item for the target product to see how the derived price was
calculated by checking the scope values and price point used.

Note: Only one rule set for a derived product is supported.
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Pricing > Pricing matrixes.
4. In the Pricing matrixes list, select the Derived Pricing Matrix.
5. If you have many rows in the decision table and you want to optimize rule matrix performance,
in Query optimization variables, select the Search icon and one or more context variables
that the system uses to filter the derived pricing decision rows that are evaluated.
6. In Rule selection criteria, select the option that indicates whether single or multiple rules are
applied in the Derived Pricing Matrix.
If multiple rules are applied, all applicable pricing rules are applied when evaluating
relationships for derived pricing. If the option is Single, the first rule based on rank is applied
for the relationship.
7. Select Edit Rule.
The Decision Table for the Derived Pricing Matrix opens in Workflow Studio and displays the
following:
◦ Inputs: Lists the default inputs (Target Product Offering,Product Offering (the source
product offering), Transaction Date, and Active).

Note: If you have a custom context variable that represents a pricing value to be
used as a pricing source, you can add a custom context variable as an input. Context
variables are a reference to the Context Variable [sn_csm_ctxrul_mgt_context_variable]
table.
◦ Decision table: The conditions that you specify to derive the pricing for a target product from
one or more source products, and the items used to generate the results.
8. In the Decision table, enter the derived pricing conditions:
a. In the Conditions section, select Add new decision row.
b. In the Target Product Offering column, enter the conditions for the target offering and the
source Product Offerings if applicable.
c. Set other mandatory inputs as needed.
9. In the results section, do the following:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

251


<!-- page 252 -->
a. In the Scope column, select one of the following:
▪ Bundle: The target product offering can be added only inside a bundle. The derived price
is based on all the source offerings in the bundle. All instances of the source product
offerings in the bundle hierarchy are considered and their prices are totaled.
▪ Cart: All instances of the source product offerings in the transaction are considered and
their prices are totaled.
▪ Account: All instances of the source product offerings for a customer account are
considered and their prices are totaled.
b. In the Percentage Price column, enter the percentage of the source product price to be
applied.
c. Select the Price Point used to calculate the derived price:
▪ Unit List Price: Product price that is based on a single unit of measure.
▪ Unit Net Price: Product price after all adjustments such as discounts or reductions are
applied.
▪ Cumulative Net Price: Product price over a specific period, which considers discounts or
price adjustments applied on the total quantity purchased.
▪ Monthly Recurring Price: Product price that is paid monthly for monthly subscriptions or
contract fees.
▪ Annual Recurring Price: Product price that is paid yearly for annual subscriptions or
contract fees.
d. In the Header Variable column, enter the header variable for a quote or order to be used as
the pricing source, for example Total annual recurring price.
e. In the Aggregate column, select the formula that determines how multiple product source
values are calculated and applied to determine a single product price for the derived
product.
Any adjustments, such as percentages or floor and ceiling values, are then applied to
determine the final derived product price.
▪ Sum: Use the sum of all the source product prices to calculate a single value for the
derived product price. If the result is less than the floor price, the price is adjusted up to
the floor price. If the result exceeds the ceiling price, the price is capped at the ceiling
price.
▪ Max: Use the maximum price of the source products. For example, if Product A price is
greater than Product B price, use the Product A price.
▪ Min: Use the minimum price of the source products. For example, if Product B price is less
than Product A price, use the Product B price. The price is then adjusted to the floor price
and capped at the ceiling price.

Note: Floor and ceiling prices are applied after the aggregate formula is evaluated.
The final derived price is within the floor-to-ceiling range defined on the price list line.
▪ Average: The average price between the source products (sum of all the source product
prices divided by the number of products). If the Average is less than the floor price for the
derived product, the Average is rounded up to meet the floor price.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

252


<!-- page 253 -->
f. Review the Validation Status and Validation Message columns to verify that the results are
valid.
g. Select Save.
10. In the Details tab for the matrix, select Publish.
The derived pricing for the target product is available when the product is used in a transaction
line.

Note: After a matrix is published, you can't make further changes to it. If you have
changes, create another version of the matrix with your updates and publish the new
version. However, your admin can allow changes to a published matrix by using the
allow_edit_on_published_matrices system property. To learn more, see Allow
changes to published pricing and product eligiblity matrices.

Result

When sales or order agents add a product with derived pricing, the derived pricing for the
product is automatically applied based on the conditions and the values set in the Derived
Pricing Matrix. Agents can review the line item for the target product and see how the derived
price was calculated, for example, by checking the scope values, such as Unit list price, Unit net
price, Cumulative net price, Recurring monthly price, or Recurring annual price.
Using the DerivedProductPriceExtensionPoint
The sn_csm_pricing.DerivedProductPriceExtensionPoint provides an interface
with specific methods that call certain business logic for using valid source products in source
and target product pairs in derived pricing.
The extension point has three methods:
• canHandleRequest(pricingEngineContext): Determines whether the pricing
engine can handle this extension point request.
• getAccountLevelDerivedPricedProductsEncodedQuery(pricingEngineContext):
Custom query for account-level sold product lookup.
• getQualifiedSourceTargetPairs(pricingEngineContext,
sourceTargetPairs): Filter source-target pairs in derived pricing. This method receives
an array of pair objects after rule matrix evaluation. Each pair contains:
◦ sourceLineDetail - The PricingEngineContextLineDetail of the source line
◦ targetLineDetail - The PricingEngineContextLineDetail of the target (derived) line
◦ isPair - Boolean, true by default
To exclude a pair from calculation of the derived (target) product, set pair.isPair =
false and return the modified array. If isPair = true, the source line price is included in
the price calculation of the derived (target) product.
To access the extension point, navigate to All > Pricing > Administration > Pricing Extension
Points and select the sn_csm_pricing.DerivedProductPriceExtensionPoint.
Managing the price basis for MACD products
As a pricing admin or manager, you can control how prices are calculated for sold products after
negotiating changes during quoting or when contract modifications occur to quote lines.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

253


<!-- page 254 -->
With the Delta Price Treatment Matrix, you can specify how pricing is to be handled after
changes occur that affect the pricing basis. For example, you can specify the following types of
pricing treatments:
• Apply Fresh Prices: Use current list pricing as the basis.
• Use Original Prices: Use original list price as basis for calculation.
• Retain Original Attribute Adjustments: Original attribute adjustments calculated from original
list price.
• Set Net Prices to Zero; Zero out pricing for the line item.
• Honor Renewal Adjustments: Renew line items at prices specified in renewal adjustments.
Create rules for calculating pricing of sold products with MACD changes
Set different price points for calculating the pricing of sold products that undergo MACD
changes.

Before you begin

Role required: sn_csm_pricing.pricelist_administrator or sn_csm_pricing.pricelist_manager

About this task
Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Pricing Matrices.
3. In the Pricing Matrices list, select Delta Price Treatment Matrix.
4. In Rule selection criteria, select the option that indicates whether single or multiple rules are
applied in the Delta Price Treatment Matrix.
If multiple rules are applied, all applicable pricing rules are applied when determining the
pricing for sold products. If the option is Single, the first rule based on rank is applied.
5. Select Edit Rule.
The Decision Table for the Delta Price Treatment Adjustment Matrix opens in Workflow Studio
and displays the inputs, which include the Line Type and Action for MACD operations. These
inputs are the fields (columns) for setting the conditions in the decision table.
◦ Inputs: Lists the default inputs Line Type,Action.
◦ Decision table: The conditions that you specify for the line types or MACD action, such as
disconnect or suspend.
6. In the Conditions section, select Add new decision row.
Configuring matrix validation rules
As a product catalog admin or pricing admin, you can manage the system-defined matrix
validation rules that automatically check the mandatory rule inputs or outputs in matrix decision
tables. You can also define your own custom validations.
The product eligibility and pricing matrices included with the Product and Pricing Rules
application have system-defined matrix validation rules, which are identified in the Details tab
for each matrix. Each validation rule has a validation definition, which is a script that identifies
the context variables to be validated in the matrix decision table and the corresponding error or
warning messages to be displayed. The validations are run when you save your matrix decision
row changes. The Validation Status field indicates whether the change is valid. If the change is
not valid, error or warning messages are displayed in the Validation Message columns of the
decision table.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

254


<!-- page 255 -->
Some system-defined validation rules are applicable to all decision tables, while others apply to
only certain types of matrices:
• DuplicateCondition: Checks for duplicate conditions in decision rules.
• MissingMandatoryInputs: Checks for missing required inputs.
• MissingMandatoryOutputs: Checks for missing required outputs.
• EligibilityResultValidation: Checks the product eligibility results.
• MandatoryCostBookForTypeExistingCostBook: Checks the cost book type.
• MandatoryPriceListForTypeExistingPriceList: Checks the price list type.
• ProductOfferCharsWithoutProdOffer: Checks for product offer characteristics without product
offering.
Rule validations in Product Offering Category Eligibility Matrix

From the Details tab for a matrix, you can also run rule validations for the entire matrix by
selecting the More actions icon and selecting Validate rule.
Update validation settings in a matrix
Change the rule validation checks for a matrix. These checks run automatically when you save
changes made to the matrix decision table.

Before you begin

Role required: sn_prd_pm.product_catalog_admin or sn_prd_pm.product_catalog_manager

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Context Rule Management > Rule Matrices.
3. Select the matrix to update.
4. In the Rule validations field, change the rule validation.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

255


<!-- page 256 -->
◦ To add a validation rule, select the Search icon and select the rule validation.
◦ To delete a validation, select the X in the validation pill.
5. Select Save.
Create a custom validation definition
Provide a script that validates a context rule input or output in the decision table for a pricing or
product eligibility matrix.

Before you begin

Role required: admin

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Context Rule Management > Validation Definitions.
3. Select New.
4. In the Script field, enter the custom script that defines the error check, warning messages, and
error messages for the validation.
5. If the decision condition won’t be active by default, select Inactivate decision condition.
6. Enter the Name of the validation definition.
7. Select Save.
8. Associate the custom definition to a rule matrix.
a. Navigate to Context Rule Management > Matrix Validations.
b. Select New.
c. In the Matrix type field, select the rule matrix to which this custom validation definition
applies.
9. Select Save.
Subscription revenue metrics
Subscription pricing is a pricing model where customers pay a recurring fee for products
or services, usually at regular intervals such as monthly or annually. In Sales Customer
Relationship Management, various subscription revenue amounts are calculated automatically
for opportunities and quotes.
Subscription revenue amounts are metrics that help sales agents and sales managers track
and analyze the revenue impact of sales deals. Sales agents and managers can view these
system-calculated revenue amounts in the pricing details for opportunities and quotes, both at
the header and line levels. These revenue amounts, such as monthly recurring revenue (MRR)
or annual recurring revenue (ARR), are useful for monitoring sales performance, forecasting
subscription revenue, and providing relevant subscription amounts when agents engage with
customers.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

256


<!-- page 257 -->
Example opportunity subscription revenue details

Subscription pricing metrics
In subscription pricing, common metrics for assessing subscription-based revenue include the
following values and items:
Monthly Recurring Revenue (MRR)
The total revenue generated from recurring subscriptions or contracts on a monthly
basis. It helps sales agents and managers assess the stability and growth of
subscription-based revenue streams.
Annual Recurring Revenue (ARR)
The annual revenue generated from recurring subscriptions or contracts. It provides
insights into the predictable revenue stream that can be expected from existing
customers over a year.
Annual Contract Value (ACV)
The total value of a contract on an annual basis. It highlights the annual revenue
impact of a deal and facilitates comparison with other contracts or revenue streams.
Total Contract Value (TCV)
The total value of a contract over its entire duration, including recurring and onetime charges. It provides visibility into the overall value of a deal and its impact on
the organization's financial performance.
Term
The duration or period of a subscription or contract, in months, such as 10 months
or 24 months. In Opportunity Management, agents can enter a Term value before
adding line items. In Quote Management, when agents enter a Term value and the
contract start date, the system uses the term value and start date to auto-calculate
the contract end date. If an agent changes the contract end date, the system
recalculates the Term value.
For products with monthly periodicity, the per-day price (pro-rate multiplier) is
based on the Unit list price/number of days in the month. For a product with annual
periodicity, the per-day price (prp-rate multiplier) that is multiplied against the
decimal fields is the Unit price/365 days or 366 days if the year is a leap year.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

257


<!-- page 258 -->
How subscription pricing revenues are calculated
Product offers for products and services contain basic pricing information, such as list price
and pricing method (either one-time or recurring periodicity). When agents add product lines
to opportunities and quotes, the system uses basic pricing information and product line details
to auto-calculate the various revenue subscription values. These values are calculated and
displayed in both the header pricing details and line pricing details.
For example, when an agent adds an opportunity line, the system calculates the Cumulative
Monthly Recurring Revenue (MRR) amount using the unit net price and quantity of the product.
The system then sums up the cumulative revenue to the parent line in the opportunity and
displays the cumulative MRR in the pricing details of the opportunity header.
When agents use the configuration UI to add customizable products to quotes, the configurator
interface displays the calculated subtotal values such as the Cumulative Monthly Recurring price
for the root product offer of the line item.
The following tables describe the subscription pricing revenue amounts for opportunities and
quotes and how they're calculated.
Opportunity line subscription revenue metrics
Opportunity line
subscription metric

Description

Calculation

Unit net price

Price of a single unit.

Unit list price - pre adjustments

Cumulative one-time
price

One-time price of the
opportunity line and any
child lines.

Unit net price * Quantity

Cumulative MRR

Cumulative monthly
recurring revenue of the
opportunity line and any
child lines. Not calculated
for one-time products.

• If the periodicity is monthly:
Cumulative MRR = Unit net price *
Quantity
• If the periodicity is annual:
Cumulative MMR = (Unit net
price/12 months) * Quantity

Cumulative ARR

Cumulative annual recurring Cumulative MRR * 12 months
revenue of the opportunity
line and any child lines.
Not calculated for one-time
products.

Cumulative ACV

Cumulative annual contract Cumulative One-time price +
value of the opportunity and Cumulative ARR
any child lines.

Cumulative TCV

Cumulative total contract
Cumulative One-time price +
value of the opportunity and (Cumulative MRR * Term months)
any child lines.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

258


<!-- page 259 -->
Opportunity header subscription revenue metrics
Opportunity header
subscription metric

Description

Calculation

Amount

The total contract value.

Total contract value if there are
opportunity line items. If no line items
exist, this amount is copied from the
Estimated Deal Size.

Weighted amount

Value that represents the
potential size of a deal.

Amount * Probability

Total One-Time Price

Sum of all the cumulative
one-time prices of the
opportunity line items.

Cumulative one-time price of the toplevel parent

Total MRR

Total monthly recurring
revenue.

Sum of the Cumulative MRR values of
the top-level parent.

Total ARR

Total annual recurring
revenue.

Sum of the Cumulative ARR of the toplevel parent.

Total ACV

Total annual contract value.

Sum of the Cumulative ACV of the toplevel parent.

Total TCV

Total contract value.

Sum of the Cumulative TCV of the toplevel parent.

Quote line subscription revenues
Quote line subscription metric

Monthly recurring price

Calculation

• If periodicity is monthly: Monthly recurring price
= Unit net price * Quantity
• If periodicity is annual: Monthly recurring price
= (Unit net price/12) * Quantity

Annual recurring price

Monthly recurring price * 12 months

Cumulative net price

Unit List Price - Total adjustment

Cumulative one time price

One-time price for the line item + (if parent line
item) One-time price for all child line items

One-time price

One-time price for the line item.

Quote line cost and margin
Quote line subscription metric

Calculation

One-time cost

Unit cost * quantity

Monthly recurring cost

• If periodicity is monthly: Monthly recurring cost
= Unit cost * Quantity
• If periodicity is annual: Monthly recurring cost =
(Unit cost/12) * Quantity

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

259


<!-- page 260 -->
Quote line cost and margin (continued)
Quote line subscription metric

Calculation

Cumulative one-time cost

One-time cost for the line item + (if parent line
item) sum of all One-time Cost for all child line
items

Cumulative monthly recurring cost

Monthly recurring cost + (if parent line item) sum
of all Cumulative Monthly Cost for immediate
child lines

Cumulative Net Cost

Cumulative Net Cost = [One time cost + (Monthly
Recurring cost * Term)] +(if parent line item) sum
of all Cumulative net cost for immediate child
lines

Cumulative margin %

(Cumulative net price – Cumulative net cost)/
Cumulative net price * 100

Quote header subscription pricing
Quote header subscription metric

Calculation

Term

The duration in months for subscription or
contract. If an opportunity exists, the value
comes from the opportunity. Otherwise, the
default term is 12 months.

Total one-time price

Sum of all parent lines.

Total monthly recurring price

Sum of the Cumulative monthly recurring price
of all root parent lines.

Total annual recurring price

Sum of the Cumulative annual recurring price
of all root parent lines.

Total amount

Sum of the Cumulative net price of root parent
lines.

Quote header cost and margin
Quote header subscription metric

Calculation

Total one-time cost

Sum of Cumulative one-time cost of all parent
lines.

Total monthly cost

Sum of Cumulative Monthly recurring cost of
all root parent lines.

Total cost

Sum of Cumulative Net Cost of root parent
lines.

Total one-time margin

(Total one-time price) - (Total one-time cost).

Total monthly margin

(Total monthly price) - (Total monthly cost)

Total margin amount

(Total amount) - (Total cost)

Total one-time margin %

(Total one-time margin/Total one-time price) ×
100

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

260


<!-- page 261 -->
Quote header cost and margin (continued)
Quote header subscription metric

Calculation

Total monthly margin %

(Total monthly margin/Total monthly price) ×
100

Total margin %

(Total Margin Amount/Total amount) × 100

To learn more about the revenue metrics in opportunity details, see Add and view the details of
an opportunity and Add line items to an opportunity.
To learn more about the revenue metrics in quote details, see Add and view details of a quote.
Create a matrix version
Create a version of a published price or product eligibility matrix when you need to update the
matrix, for example to add or delete a context variable used in the price matrix.

Before you begin

Role required: sn_csm_pricing_pricelist_administrator, sn_csm_pricing_pricelist_manager

About this task

You can create a version of a published pricing matrix (Standard Price Adjustment Matrix,
Price List Defaulting Matrix, Cost Book Defaulting Matrix, or Configuration Component Price
Adjustment Matrix) and a product eligibility matrix. When you create a matrix version, the new
version becomes the active version. After creating the version, you update the decision table for
the matrix, then save and publish the matrix.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Pricing > Pricing Matrices.
3. In the Pricing Matrices list, select the matrix to be updated.
4. In the Details tab for the matrix, select Create new version.
The following changes occur:
◦ The new version of the matrix opens in another tab.
◦ In the former matrix, the State changes from Published to Retired and the System System
defined value changes to false.
5. Change the matrix as needed.
For example, if you're updating context variables used in the Standard Price Adjustment Matrix,
you can add or delete context variables in the Context variables section of the matrix.
6. Select Save.
7. Update the decision table for the matrix by selecting Create rule.
Add the decision rows in the decision table for the matrix. You can use the decision table
export feature to edit the decision table for the previous matrix version in Excel, update the
Excel file, then import the updated Excel table to populate the decision table for the new
version. For details, see Manage decision tables in Excel.
8. Select Save and then Publish.
You can refresh the list of matrices to see the new matrix version.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

261


<!-- page 262 -->
Allow changes to published pricing and product eligiblity matrices
Use the allow_edit_on_published_matrices system property to allow changes to
published pricing and product eligibility matrices.

Before you begin

Role required: admin

About this task

If your pricing admin or product catalog admins want to change a published pricing or product
eligibility matrix, they must create a new version of the matrix. However, as an admin, you can
allow changes to published matrices by using the allow_edit_on_published_matrices system
property.

Procedure
1. Navigate to All and in the filter enter sys_properties.list.
2. Open the allow_edit_on_published_matrices system property.
3. Set the property value in the Value field.
◦ Enter true to allow edits to published matrices.
◦ Enter false so that published matrices can't be edited. You must generate a new version of
the matrix to make changes.
4. Select Update.
If you enable this property, published matrixes can be updated by pricing and product catalog
admins.
Set properties to control pricing processing
Activate or deactivate system properties that control how pricing features are processed in Sales
Customer Relationship Management applications.

Before you begin

Role required: admin

About this task

You can control the following pricing features using pricing system properties:
• Logging of pricing engine requests for debugging.
• Multiplier term used when calculating uplifts for contract renewals.
• Ramp segment and term basis used when calculating renewal adjustments for products with
ramps.

Procedure
1. Navigate to All > Pricing > Administration > Properties.
2. Set the following properties:
Customization properties for pricing
Property

Description

Logging Pricing Requests

Control the logging of pricing engine
requests for debugging. Select Yes to activate
logging or No to turn off the pricing request
log.

(sn_csm_pricing.log_pricingengine_request)

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

262


<!-- page 263 -->
Property

Description

Renewal Uplift Term

Set the multiplier term for contract renewal
uplifts, either per year or per term.

(sn_csm_pricing.renewal_uplift_term)
Ramp Renewal Pricing

Set properties to control how pricing for ramp
renewals is calculated.

◦ Set the ramp segment used as the price
◦ The ramp renewal price segment property
basis for calculating a renewal adjustment.
is set to Last Segment by default, which
uses the price from the final ramp segment
(sn_csm_pricing.ramp_renewal_price_segment)
as the price basis.
◦ Set the term basis used when calculating
renewal adjustments for ramp lines.
(sn_csm_pricing.ramp_renewal_term_basis)

Select First Segment to use the price from
the initial ramp segment as the price basis.
◦ The ramp renewal term basis property
is set to Segment by default, to
apply the adjustment to the term of
the segment identified in the ramp
renewal price segment property
(sn_csm_pricing.ramp_renewal_price_segment).
Select Total Ramp to apply the renewal
adjustment across the full ramp duration.

Pricing Session Cache

For testing purposes only. Turn on (select
Yes) or turn off (select No) the cache for
(sn_csm_pricing.enable_pricing_session_cache)
pricing sessions.

Note: don't set this property to No
except for testing, as it may negatively
impact pricing engine performance.

3. Select Save.
Create a custom context variable
Create custom context variables to represent product or non-product characteristics that can
be used by pricing admins to apply different pricing features, such as pricing adjustments, or
product catalog admins to set product offering eligibility rules.

Before you begin

Before creating a custom variable, review the context variables available in the Context Variables
[sn_csm_ctxrul_mgt_context_variable] table to verify whether you need a new one. This table
identifies the system-defined variables provided with Product Catalog Management and Pricing
Management and also any custom variables that have been created.
For example, the system-defined context variables provided for non-product attributes include:
Account, Shipping Country, Shipping City, Shipping State, Shipping Zip, Billing Country, Billing
City, Billing State, Billing Zip, and Transaction Date.
Role required: admin

About this task

As an administrator, you can create custom context variables for items such as non-product
characteristics, that your pricing and product catalog administrators can use in rule matrices
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

263


<!-- page 264 -->
to control pricing features or product offering eligibility. For example, your pricing administrator
might want to define pricing adjustments based on sales segment, but sales segment isn’t a
system-defined context variable.
You create the variable name and define the variable type, so that the variable can be used in
a decision rule for a rule matrix. After you create the variable, you must also map the context
variable to the transaction entity, such as quote or order, from which the system retrieves the
context.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Context Rule Management > Context Variables.
3. In the Context Variables list, select New.
4. On the form, fill in the fields.
Context Variable form
Field

Description

Type

Context variable type. Choose the type of
field for the variable. For example, the choice
list field type lets your user select from a
predefined list of choices.
For more information on the different field
types, see Field types reference .

Note: Depending on the Type
selected, other fields and sections in
the form are displayed.
Label

Name of the context variable to be displayed
in the user interface, such as sales segment.

Column name

ID of the context variable for which the
context variable type is created. The system
assigns this name automatically based
on the Label name entered, for example
sales_segment.

Code

System-generated alphanumeric number
based on the label name. You can enter your
own code to replace the system-generated
code.

Note: After the context variable is
used in a published pricing or product
eligibility matrix, the Code value can't be
changed.
Context type

Option that indicates from where the context
is retrieved. For example you can select a
context type such as:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

264


<!-- page 265 -->
Field

Description

◦ Transaction Header: Context is fetched
from the header record for a transaction,
such as an opportunity, quote, or sales
order.
◦ Transaction Line: Context is fetched from
the line record for an opportunity, quote, or
sales order transaction.
Application

Name of the application scope. The default
scope is Global.

System defined

Option indicating the context variable is
defined by the pricing system.

Applicable to

Option indicating the module to which this
context variable applies. Currently supports
Pricing. The pricing engine uses this field to
determine which context variables to resolve
during pricing calculations.
If the context variable is used in pricing,
select Pricing. Otherwise, leave this field as
None.

Type of mapping

Option indicating how the context variable is
mapped:
◦ Field mapping: Map the context variable to
a transaction entity.
◦ Scripted: JavaScript that you provide in the
Script field, which defines complex logic
for computing values using the context
variable. For example, a script might be
used for the following:
▪ Calculations, such as discount
percentages or account age
▪ Complex lookups, such as checks for
accounts that have made purchases
▪ Business logic, such inventory check or
eligibility
▪ Aggregrations across lines, for example,
the number of products in a cart.

Pricing api key field

Reference field for a context variable that
defines an external ID used in pricing
requests in the Sales CRM Pricing API.
For more information on external IDs and
custom context variables, see External ID
support in Sales CRM Pricing API.

Active

Option that indicates the context variable is
available for use in rule matrices.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

265


<!-- page 266 -->
5. If you're using the external ID feature in the Sales CRM Pricing API, in the Reference
Specification section, select the reference table for the context variable that defines an
external ID to be used in a pricing request.
For more information on external IDs and custom context variables, see External ID support in
Sales CRM Pricing API.
6. Select Save.
The tab (related list) for the Type that you selected in Step 4 and the Variable Mapping tab are
displayed.
7. Depending on the Type you selected, create the values for the type, then select Save.
For example, in Step 4, if you selected the Choice type, select New in the Choices tab and
define the choices.

What to do next

For context variables that are mapped to fields, map the custom context variable to a transaction
entity.
Sync context variables to CPQ
Sync context variables to CPQ to be associated with blueprints.

Before you begin

Role required: admin

About this task

Context variables provide the business data that pricing and configuration rules need to evaluate
a transaction, such as the shipping country, currency, or customer tier. Before this data can
be used in rules, the context variable definition must be available in the rules engine. Syncing
a context variable to CPQ publishes its definition, including its type, mapping, and whether it
applies at the transaction header or line level to the rules engine, where you can reference it
directly in blueprint rules without writing scripts.
Administrators can sync context variables to CPQ, if not already. Context variables are synced
automatically when newly created or updated. Existing context variables that are not synced can
be synced manually.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Context Rule Management > Context Variables.
3. In the Context Variables list, select the context variables that you want to sync to CPQ.

Note: You can sync only the context variables that are not synced. The Synced to CPQ
field in the Context Variables list is set to true if the context variable is synced.
4. Select Sync To CPQ.
If you don't see the Sync To CPQ field, personalize the form and add this field.

Result

The Synced to CPQ field in the Context Variables list is set to true after the sync is successful
and the context variable is can be associated with blueprints and rules.
Navigate to All > CPQ Administration > ALL FIELDS to verify and use the synced context
variables.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

266


<!-- page 267 -->
Related topics
Create a custom context variable
Map a custom context variable to a transaction entity
Associate a custom pricing context variable to a particular transaction entity type in Sales
Customer Relationship Management.

Before you begin

Verify that you're in the appropriate application scope for the transaction type. For example, if
you're mapping a context variable for orders, the application scope is Order Management. Use
the Globe

icon in the navigation bar to change the application scope.

Role required: admin

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Context Rule Management > Variable Mappings.
3. Select New.
4. In the form, fill in the fields.
Lead to Cash Entity Attribute form
Field

Description

Entity

The Sales Customer Relationship
Management entity for which the variable
will be used. Select the entity, for example
Opportunity or Order.

Table

Name of the application table for the
transaction.

Field

Field from the application table that is related
to the custom context variable. Select the
field.

Key

Custom context variable. Select the variable
from the list of pricing context variables.

Advanced
5. Select Save.

Result

The custom context variable is available for use in pricing matrices.
Use extension points in Pricing Management
Use extension points to call custom scripts from external sources that control pricing logic used
in the Pricing Management feature of the Sales Customer Relationship Management (Sales
CRM) applications.
To access the available extension points, navigate to All > Scripted Extension Points and in the
Extension Points list, select the desired extension point to view it.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

267


