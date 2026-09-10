# Australia Sales Customer Relationship Management — Lead-to-cash foundation / Business Portal reference

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1568–1580 of 1645

Sections: Lead-to-cash foundation (p1568); Business Portal reference (p1574)

---

<!-- page 1568 -->
Channel partner tabs and components on the workspace (continued)
UI component

Description

Deal registrations

Deal registrations associated with the channel
partner.

Opportunities

Opportunities associated with the channel
partner.

Quotes

Quotes associated with the channel partner.

Register Partner Staff

Register staff to an enterprise.
To learn more about registering partner staff,
see Register Partner Staff on workspace.

Lead-to-cash foundation reference
Reference for lead-to-cash foundation applications.

Product Catalog Management reference
Reference topics provide additional information about Product Catalog Management.
Components installed with Product Catalog Management
Several types of components are installed with activation of the Product Catalog Management
plugin, including tables and user roles.

Roles installed
Role title [name]

Description

Characteristics viewer

Reads
None
characteristics
and
characteristic
values.

[sn_prd_pm.characteristics_viewer]

Characteristics writer
[sn_prd_pm.characteristics_writer]

External product viewer
[sn_prd_pm.external_product_viewer]

Contains roles

Granular role
sn_prd_pm.characteristics_viewe
for creating
characteristics
and
characteristic
values.

Reads Product sn_prd_pm.characteristics_viewe
Specification
Name and
Product
Offering Name
at the field
level.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1568


<!-- page 1569 -->
Role title [name]

Description

Contains roles

Product catalog admin

Creates, reads,
and updates
products,
resources,
services,
product,
service, and
resource
categories,
characteristics,
and
characteristic
options.

• sn_prd_pm.characteristics_writ

[sn_prd_pm.product_catalog_admin]

• sn_prd_pm.product_catalog_m
• import_admin

• sn_gd_core.decision_tree_auth

• sn_gd_guidance.guidance_ma
• decision_table_admin
• cmdb_read

• sn_export_entities.export_user
• ais_admin
• category_manager

Exports
and imports
catalog
entities and
set up any
catalogrelated system
properties.
Product catalog manager
[sn_prd_pm.product_catalog_manager]

Creates, reads,
and updates
product
specifications,
resource
specifications,
and service
specifications.

• sn_tmt_core.inbound_queue_re
• decision_table_admin

• sn_prd_pm.product_catalog_vi
• model_manager
• sn_configrule_mgt.rule_writer

• sn_customerservice.customer_

• sn_csm_ctxrul_mgt.rule_matrix

Product catalog viewer
[sn_prd_pm.product_catalog_viewer]

Views
products,
resources,
services,
product,
service, and
resource
categories,
characteristics,
and
characteristic
options.

• canvas_user
• decision_table_reader

• sn_prd_pm.product_model_ch

• sn_gd_core.decision_tree_user

• sn_prd_pm.characteristics_view

Product model characteristic granular viewer

Views records None
in the Product
[sn_prd_pm.product_model_characteristic_granular_viewer] Model
Characteristics
table where
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1569


<!-- page 1570 -->
Role title [name]

Description

Contains roles

the product
model's
Customer
Visible field is
true.
Product model characteristic viewer
[sn_prd_pm.product_model_characteristic_viewer]

Granular role
None
for viewing
records in the
Product Model
Characteristics
table.

Tables installed
Table

Description

Catalog Category

Stores relationships between
catalogs and categories.

[sn_prd_pm_catalog_category_relationship]
Category To Category Relationship
[sn_prd_pm_category_category_relationship]
Characteristic

Stores relationships between
categories.

Stores characteristic records.

[sn_prd_pm_characteristic]
Characteristic Option
[sn_prd_pm_characteristic_option]
Quantity Mapping
[sn_prd_pm_characteristic_option_quantity_mapping]

Characteristic Relationship
[sn_prd_pm_characteristic_relationship]
Characteristic Group
[sn_prd_pm_configuration]
Distribution Channel
[sn_prd_pm_distribution_channel]

Stores the options available for
a characteristic.

Stores quantity mapping
records for characteristic
options.
Stores relationships between
characteristics.

Stores characteristic group
records.

Stores distribution channel
records.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1570


<!-- page 1571 -->
Table

Description

Needs Template

Stores needs template records.

[sn_prd_pm_needs_template]
Needs Template Relationship
[sn_prd_pm_needs_template_relationship]
Product Price
[sn_prd_pm_pricing]
Product Characteristics
[sn_prd_pm_product_characteristics]
Product Model Characteristic

Stores relationship records for
needs templates.

Stores pricing records for
products.

Stores characteristics
associated with a product.

[sn_prd_pm_product_model_characteristic]

Stores characteristics
associated with a product
model.

Product Offering

Stores product offering records.

[sn_prd_pm_product_offering]
Product Offering Catalog
[sn_prd_pm_product_offering_catalog]
Product Offering Category
[sn_prd_pm_product_offering_category]
Product Offering Category Relationship
[sn_prd_pm_product_offering_category_relationship]
Product Offering Characteristic
[sn_prd_pm_product_offering_characteristic]

Product Offering Family
[sn_prd_pm_product_offering_family]
Needs Based Offering Recommendation
[sn_prd_pm_product_offering_recommendation]

Stores catalog records for
product offerings.

Stores category records for
product offerings.

Stores relationships between
product offering categories.

Stores characteristics
associated with a product
offering.
Stores product offering family
records.

Stores recommendation records
for product offerings based on
customer needs.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1571


<!-- page 1572 -->
Table

Description

Product Offering Relationship

Stores relationships between
product offerings.

[sn_prd_pm_product_offering_relationship]
Product Offering Relationship Characteristic
[sn_prd_pm_product_offering_relationship_characteristic]
Product Offering Relationship Group
[sn_prd_pm_product_offering_relationship_group]
Unit of Measure
[sn_prd_pm_product_offering_uom]
Product Specification
[sn_prd_pm_product_specification]
Resource Specification
[sn_prd_pm_resource_specification]
Service Specification
[sn_prd_pm_service_specification]
Specification

Stores characteristics for
product offering relationships.

Stores group records for
product offering relationships.

Stores unit of measure records
for product offerings.

Stores product specification
records.

Stores resource specification
records.

Stores service specification
records.

Stores specification records.

[sn_prd_pm_specification]
Specification Category
[sn_prd_pm_specification_category]

Stores category records for
specifications.

Specification Product Instance Mapping

Stores mapping records
between specification
[sn_prd_pm_specification_char_product_instance_mapping] characteristics and product
instances.
Specification Characteristic
[sn_prd_pm_specification_characteristic]
Specification Relationship

Stores characteristic records for
specifications.

Stores relationship records
between specifications.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1572


<!-- page 1573 -->
Table

Description

[sn_prd_pm_specification_relationship]
Template

Stores template records.

[sn_prd_pm_template]
Template Characteristic

Stores characteristic records for
templates.

[sn_prd_pm_template_characteristic]
Template Characteristic Option

Stores characteristic option
records for templates.

[sn_prd_pm_template_characteristic_option]
Unit of Measure

Stores unit of measure records.

[sn_prd_pm_uom]
Unit of Measure Class

Stores unit of measure class
records.

[sn_prd_pm_uom_class]
Product Visuals

Stores visual asset records for
products.

[sn_prd_pm_visuals]
Multilingual product catalog entities

Starting with Product Catalog Management Core release v19.0.0, certain Product Catalog
Management tables have product catalog fields that support multilingual text. In the Data
Dictionary, these fields have changed from type string to type translated_text. As an admin, you
can display these fields in multiple languages in the product catalog interface.
Multilingual product catalog fields
Product Catalog Management table

Supported multilingual fields

Product Offering

Name, Display name, Description

[sn_prd_pm_product_offering]
Product Offering Catalog

Name, Description

[sn_prd_pm_product_offering_catalog]
Product Offering Characteristics

Name

[sn_prd_pm_product_offering_characteristic]
Product Offering Relationships

Display name

[sn_prd_pm_product_offering_relationship]
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1573


<!-- page 1574 -->
Multilingual product catalog fields (continued)
Product Catalog Management table

Supported multilingual fields

Specifications

Name, Display name, Description

[sn_prd_pm_specification]
Specification Categories

Name

[sn_prd_pm_specification_category]
Product Offering Specification Relationship

Display name

[sn_prd_pm_specification_relationship]
Product Visuals

Name

[sn_prd_pm_visuals]
Characteristics

Name, Description

[sn_prd_pm_characteristic]
Characteristic Options

Option

[sn_prd_pm_characteristic_option]

Business Portal reference for Sales Customer Relationship
Management
Reference topics provide additional information about the components such as roles and tables
that are installed with various Business Portal plugins.

Components installed with Sales Cart
Several types of components are installed with activation of Sales Cart including tables, user
roles, and scheduled jobs.

Roles installed
Role title [name]

Description

Contains roles

Cart editor

Creates, deletes, and edits sales cart
and sales cart-related entities.

sn_sales_cart.cart_viewer

[sn_sales_cart.cart_editor]
Cart viewer
[sn_sales_cart.cart_viewer]

Views sales cart and sales cart-related
entities.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1574


<!-- page 1575 -->
Scheduled jobs installed
Scheduled
Description
job

Migrate
On-demand job that migrates draft proxy order carts to
proxy
the new sales cart experience and sets the value of the
orders to sn_sales_cart.show_cart_migration_msg system property to true.
sales cart
Note: If you used the Business Portal and are upgrading to the Zurich
release, then you must run the Migrate proxy orders to sales cart job after
installing the Sales Cart plugin (sn_sales_cart). Customers then don't lose
products added to their carts on the Business Portal.

Tables installed
Table

Description

Sales Cart

Stores the main sales cart record, including customer,
billing, shipping, pricing, and state details.

[sn_sales_cart]
Sales Cart Line Characteristic
[sn_sales_cart_line_characteristic]
Sales Cart Line Item
[sn_sales_cart_line_item]

Stores characteristics and options associated with
individual sales cart line items.

Represents individual line items in a sales cart,
including products, pricing, quantities, and hierarchical
relationships.

Sales Cart Pricing Adjustment

Stores pricing adjustments applied to a sales cart or its
line items, including adjustment type, value, and related
[sn_sales_cart_pricing_adjustment] references.

Components installed with Customer Request for Quote
Several types of components are installed with activation of the Customer Request for Quote
(RFQ) plugin, including tables, user roles, and plugins.

Roles installed
Role title [name]

Description

Contains roles

RFQ writer

Provides write and update access
to all RFQ tables.

sn_cust_rfq_core.rfq_viewer

[sn_cust_rfq_core.rfq_writer]

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1575


<!-- page 1576 -->
Role title [name]

Description

Contains roles

RFQ viewer

Provides read-only access to all
RFQ tables.

None

[sn_cust_rfq_core.rfq_viewer]

Tables installed
Table

Description

Customer Request for Quote

Stores RFQ headers with customer information,
shipping/billing addresses, pricing totals, and status
tracking.

[sn_cust_rfq_core_rfq]

Customer Request for Quote Pricing
Adjustment
[sn_cust_rfq_core_pricing_adjustment]
Customer Request for Quote Line Item

Stores discounts, surcharges, and other price
modifications applied to the RFQ or individual RFQ
line items.

[sn_cust_rfq_core_line_item]

Stores individual products requested in an RFQ,
including quantities, pricing details, and hierarchical
relationships between line items.

Customer Request for Quote Line
Characteristic

Stores product specifications and configurable
attributes for each RFQ line item.

[sn_cust_rfq_core_line_characteristic]

Plugins installed
The following applications are installed as dependencies with the Customer Request for Quote
application (sn_cust_rfq):
• Customer Request for Quote Data Model (com.sn_cust_rfq_core)
• Product Catalog Management Core (com.sn_prd_pm)
• Price Management (com.sn_csm_pricing)
• Sales common (com.sn_l2c_sales_common)
• Product Catalog Management Portal (com.prd_pm_portal)
• Agent Workspace (com.agent_workspace)
• Playbooks for CSM (com.sn_csm_playbook)

Request for quote (RFQ) states
An RFQ can move through different states during its life cycle after being submitted by the
customer based on agent activity in the CSM Configurable Workspace.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1576


<!-- page 1577 -->
State
(Business
Portal)

Status
Description
(Workspace)

Submitted

New

Customer has submitted an RFQ through the Business Portal.

Submitted

In review

Agent has provided values for the Assignment group and Assigned
to fields for the RFQ in the CSM Configurable Workspace.

Completed Completed Agent has converted the RFQ to a quote in the CSM Configurable
Workspace and has changed the status of the RFQ record to
Pending Customer Acceptance.
Canceled

Canceled

Agent has manually changed the status of the RFQ to Canceled.

Invoice states on Business Portal
Invoices move through different states during its life cycle after an accounts payable specialist
processes the invoice.

State

Description

Draft

The invoice has been created but not yet finalized or sent to the customer.

Received

The invoice has been delivered to the customer and is awaiting action.

Accepted

The customer has reviewed and accepted the invoice.

Rejected

The customer has disputed or declined the invoice.

Pending
payment

The invoice has been accepted and is awaiting payment from the customer.

Canceled

The invoice has been voided and is no longer valid.

Paid

The customer has submitted payment in full for the invoice.

Partially paid

The customer has submitted partial payment, and a balance remains
outstanding.

Invoice case states on Business Portal
An invoice case moves through different states during its life cycle after an accounts payable
specialist processes it.
Invoice case states
State

Description

Draft

The invoice case has been created.

New

The invoice case has been submitted for processing.

Work in Progress

The assigned agent is working on the invoice case.

Awaiting Info

The assigned agent is waiting for the named contact to provide
requested information for the invoice case.

Resolved

The assigned agent has proposed a resolution for the invoice
case to the contact.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1577


<!-- page 1578 -->
Invoice case states (continued)
State

Description

Closed

The invoice case has been resolved and the resolution has
been accepted by the contact.
When all the case lines for an invoice case are in a Final state,
the case can be set to Closed. Final states include:
• Resolved - Accepted
• Resolved - Denied
• Canceled

Cancelled

The invoice case has been cancelled.

Note: Only invoice cases in the Draft state can be
cancelled.
Related topics
Invoice case and invoice case line states

Invoice case details on the Business Portal
Field descriptions for invoice case headers and invoice case line list views on the Business
Portal.

Invoice case header fields
Field

Description

Account

Customer account associated with the invoice dispute case.

Contact

Name of the customer contact for the invoice case.

Invoice

Unique, system-generated invoice number being disputed, starting with the prefix
ARINV.

Invoice
date

Date the invoice was issued.

Priority

Urgency level assigned to the invoice case. The available options are:
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low (default)

Request
source

Scope selected when creating the invoice case from the Business Portal using the
playbook experience. The available options are:
• Specific invoice line and single invoice
• Invoice header details and multiple invoices

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1578


<!-- page 1579 -->
Invoice case line list view
Field

Description

Number

Unique, system-generated invoice case line starting with the prefix INVCSL.

Invoice

The invoice number associated with this case line. This field is displayed for
an invoice case created with Invoice header details, multiple invoices as the
request source.

Invoice line

The invoice line number associated with one of the invoices in this case line.
This field is displayed for an invoice case created with Specific invoice lines,
single invoice as the request source.

Description
or Short
description

A brief summary of the invoice case line item.

State

The current status of the invoice case line. The available options are:
• Draft
• New
• Work in Progress
• Awaiting Info
• Resolved - Accepted
• Resolved - Denied
• Canceled

Invoiced
quantity

The quantity that was originally billed on the invoice. This field is displayed for an
invoice case created with Specific invoice lines, single invoice as the request
source.

Disputed
quantity

The quantity being disputed by the customer. This field is displayed for an
invoice case created with Specific invoice lines, single invoice as the request
source.

Approved
quantity

The quantity approved for adjustment or credit after dispute resolution. This
field is displayed for an invoice case created with Specific invoice lines, single
invoice as the request source.

Invoiced
billing
location

The billing address that appears on the original invoice.

Invoiced
shipping
location

The shipping address that appears on the original invoice.

Disputed
billing
location

The billing address that the customer claims should have been used.

Disputed
shipping
location

The shipping address that the customer claims should have been used.

Expected
start

The planned or expected start date for service or product delivery.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1579


<!-- page 1580 -->
Field

Description

Actual start

The actual date when service or product delivery began.

Product
offering

The product or service offering associated with this invoice line. This field is
displayed for an invoice case created with Specific invoice lines, single invoice
as the request source.

Sold
product

The specific product that was fulfilled and invoiced. This field is displayed for an
invoice case created with Specific invoice lines, single invoice as the request
source.

Contact

Customer contact for the invoice case.

Add invoices to case list
Add invoices to case form on the Business Portal enables you to a.

Field

Description

Number

Unique, system-generated invoice number starting with the prefix ARINV.

Short
description

A brief summary of the invoice.

Invoice date

Date on which the invoice was created.

Due date

Date on which the invoice is due for payment.

Status

The current status of the invoice line. For more information, seeInvoice states
on Business Portal.

Account

Name of the customer or business entity in the business-to-business (B2B)
model.

Customer
contact

Any customer contact for your account.

Primary contact Primary contact for your account.
Billing location

The billing address that appears on the original invoice.

Shipping to
location

Reference to the location to which the order on the invoice is shipped.

Related topics
Dispute multiple invoices against your account using the Business Portal

Invoice line item details on Business Portal
Invoice line list view details on the Business Portal.

Field

Description

Number

Unique, system-generated invoice line starting with the prefix ARINVL.

Invoice number The invoice number associated with this invoice line starting with the prefix
ARINV.
Description

A brief summary of the invoice line item.

Invoice date

Date on which the invoice was created.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1580


