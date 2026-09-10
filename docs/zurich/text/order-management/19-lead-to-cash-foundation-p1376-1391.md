# Zurich Sales and Order Management — Lead-to-cash foundation / Business Portal reference / SOM Glossary

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 1376–1391 of 1408

Sections: Lead-to-cash foundation (p1376); Business Portal reference (p1376); SOM Glossary (p1379)

---

<!-- page 1376 -->
Partner program deal type relationship table

Field, field type, and descriptions for the partner program deal type
relationship table
Field

Type

Description

Partner program

Reference

Reference to partner program
(sn_prm_partner_program)
table

Deal registration type

Reference

Reference to deal
registration type
(sn_prm_dr_deal_registration_type)
table

Active

Boolean

Determines whether the
partner program and deal type
relationship is active or not

Lead-to-cash foundation reference
Reference for lead-to-cash foundation applications.

Business Portal reference for Sales and Order Management
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1376


<!-- page 1377 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1377


<!-- page 1378 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1378


<!-- page 1379 -->
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

Sales and Order Management glossary
Learn about terms and concepts that are unique to Sales and Order Management.
Glossary terms are listed alphabetically.

A
account
A customer or organization record in ServiceNow Sales and Order Management.
attract
The phase where sales agents identify and engage potential customers through marketing
efforts to generate interest and leads.
automated fallout records
Records created automatically when an order fulfillment workflow includes a "Create
fallout action" due to issues like downstream system failures, data problems, or inventory
shortages.

B
backorder
An item that can't be delivered immediately due to being out of stock.
business portal
Self-service web portal for B2B customers, providing integrated access to knowledge
articles, community forums, service catalogs, and chat bots, enabling customers to browse
products, place orders, and manage order cases.
To learn more about using the business portal, see Using the Business Portal

.

C
campaign
A coordinated marketing effort to generate leads and promote products or services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1379


<!-- page 1380 -->
change order
A request to modify an existing order, such as changing quantity, product, or fulfillment
details.
channel partners
External organizations like resellers or system integrators that collaborate with an
enterprise to sell products and services, and can be managed through Partner Relationship
Management.
To learn more about channel partners, see Partner Relationship Management.
characteristics and characteristic options
Characteristics define product attributes, while characteristic options are the available
values for these attributes, based on customer preferences.
commit
Sales opportunities that representatives are confident will close within the current forecast
period.
committed time frame
The deadline for delivering products and services to a customer, often specified in a
contract.
competitor
A record capturing information about companies or products competing for the same
customer deal within an opportunity.
consumer
An individual customer not associated with a business account.
contact
A person associated with a customer account or partner organization, serving as the
primary communication point.
contract
A legal agreement between a seller and buyer outlining sale terms, including products/
services, pricing, quantities, and delivery.
contract management
The process of creating, managing, and executing legal sales contracts from completed
quotes.
covered products
Covered products refer to offerings that act as entitlements or contracts linked to a primary
product, such as a warranty purchased with a phone.
For more information, see Add Covered Products using Contracts and Entitlement
Workflow.
configurable pricing plans
Customizable plans defining the sequence of pricing calculations and adjustments to
determine final product prices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1380


<!-- page 1381 -->
configure, price, quote (CPQ)
A process that intelligently guides every product, pricing, and quoting decision across
every channel to deliver fast, accurate, and customer-centric deals. CPQ enables faster
sales cycles and a better buyer experience, with less manual work.
cross-sell
A sales strategy for selling related products that differ from the customer's current
purchases.
customer engagement sequence (or sequence)
A playbook guiding sales agents in engaging leads across multiple channels.
customer order
Orders for products (tangible or digital) that a customer wants to purchase or change.

D
deal prioritization
Analyzing opportunities based on financial impact to focus on high-value deals.
discount
A price reduction for a product or service offered to customers.
disqualified lead
A lead that is no longer viable for sales engagement.
DocuSign
An external service for electronic signatures, enabling customers to sign documents
digitally.
domain orders
Product, service, and resource orders generated during customer order decomposition,
each with a corresponding fulfillment flow and order tasks.

E
enrichment
Enhancing customer orders with additional technical data or attributes necessary for
accurate processing and fulfillment.

F
fallout management
A process that identifies, investigates, and resolves order issues, tracking fallout and
triggering automated resolution actions.
fallout record
A record created to investigate and resolve processing issues during order fulfillment,
generated automatically or manually.
forecast category
Classification of opportunities by closure certainty, with default categories including Won,
Commit, Strong Upside, Upside, Pipeline, and Omitted.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1381


<!-- page 1382 -->
For more information, see Sales Forecasting terminology.
forecast model
A framework predicting future sales.
For more information, see Sales Forecasting terminology.
forecast roll-up method (single/cumulative)
Defines opportunity aggregation into forecasts, with "Single" showing each category
separately and "Cumulative" aggregating previous categories.
forecast schedule
A process generating the latest forecast data from all system opportunities.
fulfill
Completing customer orders by executing order tasks.
fulfillment flow
The sequence of steps for decomposed orders, including order tasks.

G
gap (Sales Forecasting)
The difference between Quota and Won sales, indicating the amount needed to meet
targets.

H
hierarchical node map
A visual representation of hierarchical structures, showing relationships and levels.
horizontal relationship
A relationship between different product specifications, defined using compatibility rules.

I
inflight change
Modifications made to customer orders during fulfillment.
inventory allocation
Assigning available inventory to customer orders based on configuration, quantity, and
eligibility.

J
jeopardy alert
Notifications generated when fulfillment tasks risk missing deadlines.

L
lead
A potential customer created from information captured through various channels.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1382


<!-- page 1383 -->
For more information, see Lead Management.
lead management workflow
A structured process guiding lead progression from creation to opportunity conversion.
lead nurturing
Engaging with leads over time to build relationships and increase conversion likelihood.
lead qualification
Determining if a lead meets criteria to be considered sales-qualified.
lead routing
Automatically assigning leads to sales representatives based on criteria.
lead scoring
Prioritizing leads based on predefined criteria or assigning numerical values based on
conversion potential.
lead segmentation
Categorizing leads based on parameters like industry or behavior for targeted marketing.
lead source
The channel through which a lead was acquired.
lead task
Follow-up actions created to progress a lead.
lead-to-cash cycle
A business process encompassing all activities and tasks involved in selling to customers,
fulfilling orders, and delivering ongoing services.

M
MACD (move, add, change, delete/disconnect)
Order action types managing changes to customer orders and service inventories.
For more information, see Action types for customer and service orders.
matrix validations
Rules ensuring data accuracy in pricing and product eligibility matrices.
monthly recurring charge (MRC)
A pricing method with monthly charges for products/services.
multiple configurations
A feature allowing multiple variations of child product offerings.
For more information, see Multiple configurations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1383


<!-- page 1384 -->
N
needs analysis
A process using needs templates to gather customer requirements and generate product
recommendation.
needs templates
Questionnaires associated with needs decision trees for product recommendations.
needs decision tree
A guided decision process presenting questions to agents for product recommendations.
negotiation enhancement (Opportunity Management)
Providing real-time pricing insights to tailor customer offers while maintaining profitability.
non-product attribute pricing adjustment
Pricing adjustments based on non-product characteristics.

O
open state model
A framework controlling product options in the product configurator.
opportunity
A qualified lead with high potential to become a customer.
opportunity line items
Products/services added to an opportunity.
opportunity management
Analyzing customer needs and generating product recommendations.
For more information, see Opportunity Management
orchestration
Coordinating order fulfillment through fulfillment flows.
orchestration plans for order fulfillment
User interfaces tracking domain orders and tasks, providing hierarchical representations.
order capture
Receiving product or service orders through various methods.
For more information, see Methods of creating orders in Sales and Order Management.
order case
Cases created for order-related issues or changes.
order decomposition
Breaking down customer orders into product, service, and resource orders.
For more information, see Order decomposition.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1384


<!-- page 1385 -->
order fallout
Failures during order fulfillment due to errors or exceptions.
For more information, see Managing order fallout.
order fulfillment
Completing tasks to fulfill orders, guided by orchestration plans.
For more information, see Order fulfillment.
order hierarchy
The structure of an order, including decomposed orders and tasks.
order life cycle
Stages a customer order progresses through in Order Management including order
creation, enrichment, decomposition, and orchestration, and fulfillment.
For more information, see Using Order Management.
order line items (Order Management)
Individual items in customer and service orders.
order management
Process of capturing and fulfilling customer orders.
order states
The current stage of an order or an order line item in its life cycle, from initial creation
through fulfillment and closure. Each state indicates what actions have been completed
and what steps remain in the order processing workflow.
For more information, see Order life cycle states.
order tasks
Tasks needed to fulfill domain orders.
For more information, see Order decomposition.
order tracking
Monitoring order locations and statuses.

P
pipeline
Early-stage opportunities with uncertain closure.
pipeline analysis
Analyzing sales pipeline progression.
point of no return (PONR)
The point after which orders can't be changed or canceled.
For more information, see Managing inflight order changes and cancellation requests.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1385


<!-- page 1386 -->
price list
Definitions identifying pricing features and product or service prices.
price list defaulting matrix
Specifying conditions for default price list usage.
price list line
Entries in price lists identifying list prices.
price point (pricing plan)
Prices calculated after specific pricing plan steps.
pricing adjustments
Modifications to standard list prices.
pricing adjustments for bundled products
Price adjustments defined for product offerings when they are sold as part of a product
bundle.
pricing engine
A component calculating and applying pricing strategies.
pricing engine parallel execution
A system property that enables the pricing engine to process transaction lines in parallel to
optimize performance, especially for large sets of transaction lines (typically 100 or more).
pricing engine parallelism lines threshold
The minimum lines required for parallel processing with the default value being 100.
pricing entities
Pricing-related elements exportable between ServiceNow instances.
pricing extension points
Integration points for customizing the pricing engine.
pricing matrix
Frameworks for complex pricing adjustments.
pricing plan
A customizable sequence of steps that determine the final price of a product or service. It
includes various pricing calculations and adjustments, such as base price determination,
discounts, and markups.
pricing plan step
Stages in pricing plans applying specific calculations.
pricing strategies
Methods determining product and service prices.
product
Items or services offered, configured, quoted, and ordered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1386


<!-- page 1387 -->
product attribute-based pricing adjustment
Adjustments based on certain product characteristics.
product configurator
A user interface embedded in various Sales and Order Management applications
(Opportunity, Quote, and Order Management) that enables agents to dynamically configure
complex products or services according to customer requirements, displaying product
hierarchy, option selection, and current pricing.
product hierarchy (product configurator)
A section in the product configurator that lists the parent and child product relationships for
configurable products, helping agents navigate nested bundles.
product data model
A structured representation of a business's offerings that separates commercial, service,
and technical attributes to support the entire lead-to-cash process.
product offer bundling
Allows for the creation of product offer bundles with an offer hierarchy using product offer
relationships and relationship groups. These bundles can reference a product specification
or specification hierarchy at any level.
product offer eligibility
Dynamically filters product catalogs, product offering categories, and product offerings
to display only eligible items for a specific customer, based on context such as customer
accounts, location, and sales contracts.
product offering catalog
The top-level entity in the catalog hierarchy. Catalogs can contain categories, which in turn
can have subcategories or product offers.
product offering category
Logical groupings of product offerings in a catalog, making it easier for agents to browse
and navigate product offerings.
product offering recommendations
Suggestions for additional products that agents can use to up-sell or cross-sell to
customers in quotes, displayed as cards in the contextual side panel.
product offerings
Configurable, order-able products and services with pricing.
product offering version
New iterations of published product offerings.
product specification
Definitions of product options and fulfillment details, containing information such as the
product description, pricing, eligibility, and product options.
propose
Presenting offers to potential customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1387


<!-- page 1388 -->
Q
qualified lead
A customer whose needs have been analyzed, resulting in the creation of an opportunity.
quotas
Specific sales targets or goals that individual sales representatives are expected to achieve
within a defined time frame, helping to measure performance and drive sales efforts.
quote
A formal offer for products or services with specific prices and payment terms.
quote expiration
The date after which a quote becomes invalid, requiring customers to request a new one.
quote line items
Individual quote entries representing specific products or services, where characteristics
and pricing can be updated.
quote management
Process of creating and managing quotes for products and services.
quote PDF documents
PDF documents created from quotes for customer review and electronic signatures.
quote revision
Modifying a previously generated quote to reflect changes in price, products, or terms.
quote versions
Different quote iterations managed through the Revisions tab with sequential version
numbers.

R
renew/expand
A classification indicating sales engagement nature: "Renew" for continuing contracts or
subscriptions and "Expand" for up-selling or adding products or services.
renewal
Extending an existing customer contract.
resource specification
Technical information for resources, including visuals and activation guides, supporting
product and service delivery.
Return Merchandise Authorization (RMA)
Formal authorization for customers to return unwanted or defective items.
revenue forecasting
Projecting future sales volumes or revenue based on opportunities, historical performance,
and pipeline analysis.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1388


<!-- page 1389 -->
risk level (jeopardy)
Classification of fulfillment task risk based on delay percentage. Levels include Low,
Medium, High, and Critical.

S
sales agreement
A binding agreement between seller and buyer for future transactions.
In the context of quote management, it is a binding agreement changing quote workflow to
set products or services according to agreement terms.
salesforce automation
A software that automates a business’s sales processes, including lead and opportunity
management, sales forecasting, and territory management.
sale cycle
Lead progression through stages until becoming a qualified opportunity and resulting in a
sale.
sales cycle type
Classification of opportunity into different sales cycles such as New Customer, Renewal, or
Up-sell (to name a few).
sales forecast dashboard
A visualization tool displaying sales forecast information and targets.
sales forecasting
Projecting future sales or revenue based on opportunities, historical performance, and
pipeline analysis.
sales process record
A ServiceNow record tracking potential sales through stages.
sales-qualified lead
A lead meeting specific criteria, ready for sales engagement.
sales quota management
Assigning sales quota targets to representatives or managers based on hierarchy, role, and
forecast period.
For more information, see Set up sales quota.
sales targets
Specific goals or objectives for sales teams, territories, or representatives.
self-service
Customer capability to perform tasks and access information independently via Business
Portal.
sequence step
Individual activities within sequence tasks, such as customer calls or emails.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1389


<!-- page 1390 -->
sequence task
System-generated tasks including predefined activities for sales agents while engaging
with a prospect or customer.
service order
Orders for activating new services or post-sales requests.
For more information, see Order types in Sales and Order Management.
shipment
Delivering ordered products to specified locations.
signers (quote PDF)
Individuals designated to sign quote PDF documents.
For more information, see Set up PDF document signers.
staggered decomposition
Breaking down customer orders in multiple iterations.
For more information, see Staggered decomposition.
strong upside
Opportunities with high potential to close but minor uncertainty.

T
telesales
Process of engaging with prospects or customers via phone calls with the goal of
generating leads, making direct sales, and building customer relationships.
total annual contract value (ACV)
Total annual contract value representing yearly revenue.
total annual recurring revenue (ARR)
Cumulative annual recurring revenue for recurring products or services.
total monthly recurring revenue (MRR)
Cumulative monthly recurring revenue for recurring products or services.
total contract value (TCV)
Total revenue expected over a contract's lifetime.
transaction header
Top-level line of Sales and Order Management transactions providing basic information.
transaction line
Detailed records in orders and quotes representing specific products or services.
transient products
Single-use products and services that are identified as transient to differentiate them from
persistent products.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1390


<!-- page 1391 -->
U
unit of measure
Standard quantity/increment defining product offering amounts.
up-sell
Sales strategy encouraging customers to upgrade products.
upside
Opportunities with potential to close but lower certainty.

V
versioning
Tracking or managing different versions of entities in Sales and Order Management.
volume pricing
Pricing adjustments based on item quantity.
For more information, see Configure volume pricing.

W
weighted amount
Total revenue adjusted by the probability percentage of closing the opportunity.
win rate
Performance metric reflecting successfully closed opportunities as "Won" compared to the
total number of opportunities.
won
Forecast category for successfully closed opportunities.
workflow
Defined sequence of steps automating processes in Sales and Order Management.

X
Y
Z

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1391


