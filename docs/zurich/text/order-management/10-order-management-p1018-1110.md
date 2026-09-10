# Zurich Sales and Order Management — Order Management

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 1018–1110 of 1408

Sections: Order Management (p1018)

---

<!-- page 1018 -->
Using Order Management
ServiceNow Order Management provides a centralized platform to create and manage customer
and service orders throughout their entire life cycle. It automates the complex process from order
capture and enrichment through to fulfillment and closure, promoting seamless coordination
between sales, operations, and technical teams.

Overview of the order life cycle
Access the Order Management capabilities from the CSM/FSM Configurable Workspace to
capture and manage orders. A typical order life cycle is a structured, multiphase process that
guides a customer's request from initial submission to final delivery and fulfillment, as shown in
the following illustration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1018


<!-- page 1019 -->
Creating and managing orders

1. Creating orders
The order life cycle begins when a customer's request is submitted. This could be from a
salesperson creating a quote that's then converted to an order, a sales agent directly capturing
an order through the workspace, a customer placing an order online through the Business
Portal, or an order being created via an API from another system. This phase focuses on
getting all the customer-facing details, including what was ordered, pricing, and customer
information, into the system.
2. Enriching orders
If order enrichment subflow is configured for a product offering, then order enrichment tasks
are created. The fulfillment agent captures additional details required to fulfill the order.
This phase prevents errors from propagating further into the process. Not all orders need
enrichment.
3. Approving or rejecting orders
The fulfillment manager reviews the order, order lines, and pricing details and approves or
rejects the order.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1019


<!-- page 1020 -->
4. [System] Order decomposition
This is a critical step for businesses selling complex products or services. The single, highlevel order is automatically broken down into smaller, actionable service orders or fulfillment
tasks based on how the process admin has configured order decomposition. For example,
a customer's order for a telecom bundle would be decomposed into separate tasks for IT
provisioning, a field technician, and the billing department. This process translates the
customer's request into a detailed operational plan.
View product, service, or resource orders for tracking the fulfillment process, verifying that all
required tasks and suborders are created correctly, and confirming that the order progresses
through its life cycle as expected. For more information, see View domain orders.
5. [System] Order orchestration
The system orchestrates the fulfillment of each individual product, service, and resource
orders. Tasks are automatically created and assigned to the correct teams and systems, and
the application tracks their progress.
Work orders are created if you have an integration with Field Service Management.
6. (Optional) Inflight order changes
Inflight order changes come into the picture after an order has been submitted and is actively
being processed, but before it has been completely fulfilled and closed. These changes are a
form of MACD orders (Modify, Adds, Changes, and Deletes) that occur during the fulfillment life
cycle.
7. Order fulfillment
Fulfillment agents complete order tasks assigned to them. Fulfillment managers monitor the
fulfillment process and manage issues using features such as Jeopardy Management to alert
teams about potential delays and Fallout Management to handle errors.
As each fulfillment task is completed, the service or product is activated or delivered to the
customer. This can involve anything from a physical delivery to the electronic provisioning
of a digital service. Once all products and services are activated and delivered, the order
is officially closed. The system updates the order status to reflect completion and updates
creates sold product records.
8. Managing order fallouts
Manage failures that may take place during order fulfillment due to errors and exceptions.
These exceptions include incorrect data, connectivity problems, inadequate inventory supply,
or other unforeseen issues.
9. Monitoring order jeopardy
Proactively monitor and mitigate order delivery delays, dynamically track task progression
to predict potential order fulfillment delays, and alert service delivery teams when fulfillment
plans exceed or are expected to exceed committed completion times by monitoring the
jeopardy status.
10. Managing post-fulfillment order changes
Order agents can make the following post-sale changes to the orders after an initial order has
been placed and fulfilled:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1020


<!-- page 1021 -->
◦ Change
◦ Disconnect
◦ Suspend
◦ Resume
Related topics
Configuring Order Management
Order types in Sales and Order Management
Action types for customer and service orders
Order life cycle states
Methods of creating orders in Sales and Order Management
Reviewing customer or partner accounts
Now Assist for Order Management
Order Management reference

Order types in Sales and Order Management
Customer orders and service orders are the two main type of sales orders in ServiceNow Order
Management. Learn about their differences and how to select an appropriate order type for your
use case.
Use customer orders for ordering products or services. Use service orders for the activation of
new services or for the post-sales requests for the services that were activated for and delivered
to customers at earlier dates. By using this process, you ensure that service orders are correct
and handled efficiently throughout the entire fulfillment process. The following table compares
customer and service orders and lists the differences between the two.

Aspect

Customer order

Definition

Orders for products (tangible or digital) that a
customer wants to purchase or change.

Service order

Orders for services that are non
commercial in nature and only require
technical fulfillment.
Use service orders for the activation of new
services or for the post-sales requests for
the services that were activated for and
delivered to customers at earlier dates.

Order record
structure

TMF APIs for
order capture

• Customer order record with one or more
line items based on the product offering.

• Service order record with one or more
line items based on service specification.

• Includes product specification,
characteristics, and values.

• Includes service specification,
characteristics, and values.

TMF622: Product Ordering API

TMF641: Service Ordering API

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1021


<!-- page 1022 -->
Aspect

Customer order

Service order

MACD order
options

• Add

• Add

• Change

• Change

• Delete

• Disconnect
• Suspend
• Resume

Decomposition

Unique roles

• It's based on product, service, and resource
specification, and rules.

• It's based on service specification and
rules.

• Upon approval, order is decomposed into
product, service, and resource orders.

• Upon approval, order is decomposed into
service and resource orders.

• Can create multiple domain orders
(product, service, resource) per line item.

• Typically creates service and resource
orders per line item.

• Order agent [sn_ind_tmt_orm.order_agent]

• Service order agent
[sn_ind_tmt_orm.service_order_agent]

• Order fulfillment manager
[sn_ind_tmt_orm.order_fulfilment_manager]

• Service order manager
[sn_ind_tmt_orm.service_order_manager]

Inventory
impact

Sold products

Product inventory

Suitable for

All industries

All industries, highly preferred for the
telecommunication industry

Differences between the pre- and post-approval service orders
Like customer orders, captured service orders also have an ID with a prefix of ORD(nnn). The
Order Category field in the order forms indicates if the order is for a Product (a customer order)
or a Service (a service order). These labels enable you to identify the type of order.
When you approve a captured service order for fulfillment, the post-approval decomposition
process generates actionable service orders and resource orders. You may see a single service
order, multiple service orders, and resource orders that are associated with your approved
service order.
• Service orders with a prefix of SO(nnn) are referred to as domain orders. These orders, and
their related resource orders, with a prefix of RO(nnn), must be fulfilled to complete the service
order line items on the captured service orders.
• The resource order manages the resources required to fulfill the services that the customer is
requesting.
• These domain orders manage the fulfillment of the requested service orders.
To learn more, see Order decomposition.

Order types for service orders
The following are the two key fulfillment actions for service orders:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1022


<!-- page 1023 -->
• Deliver: Involves providing the ordered items to the customer once the order is ready.
• Qualify: Validates whether a service or product can be fulfilled before actual execution.
Service qualification request orders with fulfillment type as Qualify can only be created in the
ServiceNow Order Management system using APIs from external qualification request systems.
When you capture an order using Order Management, the orders are created with the fulfillment
type as Deliver.
Related topics
Service qualification requests

Action types for customer and service orders
Learn how you can take various types of actions for your customer orders. Action types include
move, add, change, disconnect, suspension, resume, or no-change of services.
By using an order action type, you can define the type of actions that you want to do with an
order. The following table lists the order action types.
Order action types
Order action type

Description

Add

Add a customer order that isn’t associated with an existing
order from the same customer. This customer order results in
new order management and fulfillment activities.
For example, you place a new order for a home internet
service.

Change

Change an existing order, which changes a previously
ordered or fulfilled product or service. This order action type
includes the following scenarios:
• Addition of a child product specification that the customer
didn’t previously order.
• Deletion of an optional child product specification that
the customer already has. For example, you upgrade the
download speed of your home internet from 100 Mbps to
1000 Mbps.
• Change characteristics or service location for existing
products.
• As part of the fulfillment workflows, define a PONR (Point of
No Return) step for each service or resource order.
The change order is approved, the state of product inventory
is changed to Change pending.
The change order is fulfilled, the state of product inventory is
changed to Active or Inactive.

Disconnect

Disconnect an existing customer service order. For example,
you can disconnect your home internet service.

Suspend

Product or service order to temporarily inactivate the product
inventory of its order line items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1023


<!-- page 1024 -->
Order action types (continued)
Order action type

Description

Resume

Product or service order to activate the product inventory of
its order line items that were previously suspended.

No change

Order line items with No change action are included in the
order for informational purpose only. For example, an order
contains multiple items, but only one of those items must
be changed (such as the speed, which has changed from
100 Mbps to 1000 Mbps), which affects the parent line
item. However, all the other line items in the order remain
unchanged.

Related topics
Suspend and resume products and services
Managing post-fulfillment order changes

Order life cycle states
Learn about the order states from initial capture through enrichment, decomposition, fulfillment,
and completion.
When you create an order with add as the action type, the order state changes after each step or
a decision point as shown in the following illustration.
Order states

1. A new order gets created in the Draft state.
2. After you review and submit the order, either of the two things happen:
◦ If post-capture order enrichment is configured, enrichment tasks are created, and the order
state changes to Enrichment in progress.
If you're blocked on order enrichment tasks, change the order state to Enrichment on hold.
When you're unblocked, change the order state back to Enrichment in progress.
◦ If the details captured while creating the order are sufficient to process the order and no
enrichment is required, then the order state changes to New.
3. When the order is in the New state, you can either approve or reject the order. Accordingly, the
state changes to either Acknowledged or Rejected.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1024


<!-- page 1025 -->
4. The order in the Acknowledged state then undergoes decomposition. Domain orders are
created and fulfillment flows are triggered and the order state changes to In progress.
5. If the order is successfully fulfilled, the order state changes to Completed. If there are issues
during order processing, then the outcome depends on how the issue was handled. The
scenarios and their outcomes are listed in the following table.

Scenario

State

Outcome

More information
needed to process the
order

Awaiting
◦ If additional information is received, the order state
information
changes to In progress.

Inflight order change

Revision in
◦ If compensation plan is triggered, then the order
progress
state changes back to In progress.

◦ Or else, the order state changes to Accessing
cancellation.

◦ Or else, the order state changes to Accessing
cancellation.
Issues during order
processing

On hold

◦ If the issue blocking the order processing is
resolved, then the order state changes back to In
progress.
◦ Or else, the order state changes to Accessing
cancellation.

6. After the cancellation request is reviewed and processed, orders in the Accessing cancellation
state change to Canceled.

Methods of creating orders in Sales and Order Management
Orders can be created by agents, customers, or using APIs in ServiceNow Order Management.
Irrespective of where or how you create orders, all orders can be managed, tracked, and fulfilled
using Order Management.

Order capture by the agents
Order agents and service agents can capture orders for existing customers from the CSM/FSM
Configurable Workspace. Sales agents can create orders by converting an approved quote. The
following table lists the various order creation channels and their benefits.
Order capture channels for agents
Channel

Persona Benefit

Converting a quote
to an order

Sales
agents

The quote-to-order conversion supports post-quote workflows
such as order capture, fulfillment, and contract creation.
Benefits include:
• Reduced errors from manual data handling
• Consistency across systems by using a unified data model
• Support for complex product configurations and pricing
strategies, including bundles and multi-currency pricing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1025


<!-- page 1026 -->
Order capture channels for agents (continued)
Channel

Persona Benefit

Creating orders from Order
Accounts page
or
service
agents

The Accounts Information tab provides a 360-degree view
of customer interactions, including quotes, contracts,
entitlements, and previous orders. Creating orders from this
context promotes:
• Better-informed decisions based on historical data
• Fewer errors due to pre-filled fields and validated account
details
• Faster order initiation based on pre-existing account data

Creating orders from
Customer Orders or
Service Orders list
view

Order Alternate way to create an order for an account or a consumer
or
with a different set of contact information or parameters.
service
agents

Order creation using TM Forum (TMF) APIs
Most of the service orders that you process are captured from third-party customer order
management systems through the Service Order Open API. The Service Order Open API is a
ServiceNow implementation of the TM Forum TMF641 Service Ordering Open API specification.
To learn more, see Service Order Open API .
Order creators and order integrators for a Communications Service Provider (CSP) company can
use the following TMF APIs to create orders:
• TMF622: Product Ordering API
• TMF641: Service Ordering API

Note: You need a Telecommunications Service Management subscription to create orders
using TMF APIs.

Order creation using Service Bridge
Your ServiceNow instances can be integrated with the instances of your customers by using
Service Bridge. With this integration, you can create and publish product offerings to your
customer's instances. Enterprise customers can then submit requests for products or services,
which you can then fulfill using Order Management. For detailed benefits on using the Service
Bridge applications, see Exploring Service Bridge .

Order creation by B2B customers
Business-to-Business (B2B) customers can leverage self-service capabilities provided through
the Business Portal to browse products and submit orders. These orders are then processed
by the order and fulfillment agents. For more information, see Create orders from the Business
Portal.

Post-capture order record generation
When you capture or directly enter a customer or service order, the corresponding order record
is generated in the ServiceNow AI Platform. The order record has one or more associated order
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1026


<!-- page 1027 -->
line items that describe the product or service and the action (Add, Change, Disconnect) to
perform any required service for the item. The order line also contains the following elements:
• The details of the product or service being added, updated, or deleted.
• For Add type orders, the order line item holds the details of the product specification, with its
required characteristics and characteristic values.
• For Change and Disconnect type orders, the order line holds the details of the product
inventory that you're updating or disconnecting.
• The order line item can have a location and related information such as customer contacts
detail.
Related topics
Creating orders in Order Management
Convert quotes into orders

Creating orders in Order Management
Familiarize yourself with the steps for creating customer or service orders in Order Management
using the CSM/FSM Configurable Workspace.
The following illustration lists the high-level steps for creating a fresh order with the Add action
type. At this stage, the order agents focus on capturing commercial details such as quantity,
product configuration, and pricing for placing an order. Fulfillment agents capture technical
details required for fulfilling the order in the order enrichment stage.
Order creation process

1. Initiate the order process from the CSM/FSM Configurable Workspace.
2. Input delivery information, including the shipping and billing preferences.
3. Select and include desired products into the order using the product catalog.
Customize configurable products using the product configurator.
4. Review order line items and customize product specifications such as quantity, options, or
attributes.
5. (Optional) Apply manual price adjustments.
6. (Optional) Include any products that are covered under warranties, service plans, and so on.
7. Finalize and submit the order for further processing and fulfillment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1027


<!-- page 1028 -->
Note: If you add a sales agreement while creating the order, only the products listed in the
sales agreement are available for selection.
Create an order in Order Management
Create a product or service order for an account or consumer in Order Management.

Before you begin

Role required: sn_ind_tmt_orm.order_agent, sn_ind_tmt_orm.service_order_agent, or
sn_ind_tmt_orm.service_order_manager

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select New.
5. On the form, fill in the fields.
Create a new Order form
Field

Description

Account

The customer account for which you want to create an order.

Consumer

The consumer for which you want to create an order.

Order Type

The type or order you want to create. The available options are:
◦ Product
◦ Service

Contact

The name of the contact for the order.

Order action

This option should be set to Add to create a new order.

Channel partner

(Optional) The name of the organization selling a product or service.

Note: The fields displayed on the form change depending on whether you select
account or consumer.
6. Select Create.

Result

The order is started and the product catalog opens.

What to do next

Browse the product catalog and add products and services to the order. For more information,
see Add products or services to an order in Order Management.
Related topics
Order types in Sales and Order Management
Action types for customer and service orders
Filter product catalog by location
Agents can filter products in the catalog by using the location function in Order Management.
The location filter helps agents be more efficient when creating orders.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1028


<!-- page 1029 -->
Before you begin

Role required: sn_ind_tmt_orm.order_agent, sn_ind_tmt_orm.service_agent

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select an order you want to work with.
The order opens in the Catalog tab with the Select a location field available.
5. Select a location.

The products in the catalog are filtered according to the selected location.
Add a sales agreement to an order in Order Management
Add a sales agreement to an order to set pricing, filter catalog options, and streamline product
configuration.

Before you begin

Role required: sn_ind_tmt_orm.order_agent, sn_ind_tmt_orm.service_agent

About this task

A sales agreement is a contract to purchase a defined set of products and services for a fixed
price. With a sales agreement:
• Terms are defaulted for the order.​
• Price lists are defaulted based on the pricing terms.
• The order catalogʼis filtered for products and options.
• Agents can configure product bundles for orders.
• Agents can move quickly through the order process.
See Using Sales Agreement Management and Create a sales agreement to learn more about
creating a sales agreement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1029


<!-- page 1030 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select an order.
5. Select the more actions icon

, and then select Order details.

6. In the Customer Order form, select the sales agreement you want in the Sales Agreement
field.
7. Select Update.
The sales agreement with its product offerings and price lists is added to the order.

What to do next

Add products or services to an order in Order Management
Related topics
Sales Agreement Management
Configure Sales Agreement Management
Add products or services to an order in Order Management
Add order lines for products or service orders using the product catalog and product configurator
in Order Management.

Before you begin

Note: Check your entitlements to see if the product configurator is available.

Role required: sn_ind_tmt_orm.order_agent, sn_ind_tmt_orm.service_agent

About this task

The product catalog displays tiles that contain product information. Simple products have an
Add button that adds the product with no options available to the order.
Products with options have a Customize ʼbutton that opens the product configurator, which
lets you select product options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1030


<!-- page 1031 -->
Product Catalog used to add products to orders

Products with options have a Customize button that opens the product configurator, which lets
you select product options.
Product configurator for selecting product options

When the product configurator opens you can select from the available options for the product
or service.
The product configurator consists of three columns.
• The product hierarchy displays product catalog items and child products associated with the
product.
• The option selection displays any available options for the product, service, order lines, and
order tasks.
• The Current Selection displays the selected products options and the pricing.
As you configure your product, use the following options:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1031


<!-- page 1032 -->
Option

Description

Reprice

Resets the pricing and updates the total price
when you make changes.
If cascading pricing is enabled, pricing
information is cascaded from parent to child
line items. See Control cascading quantity
values in child product offerings for more
information.

Validate Related Items

Validates the product and prices when
changes are made.

Add

Adds the product to the order after you've
configured it.

Note: If you added a sales agreement while creating the order, only the products listed in
the sales agreement are available for selection.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select an order.
5. In the Catalog tab, choose a catalog from the drop-down menu.
6. Add products to your order.
◦ Select Add to add a simple product.
◦ Select Customize to add products with configurable options.
7. Select the Line items tab to view products and services in your order.
Related topics
Filter product catalog by location
Set up and review order lines
Order quantity support
Learn how you can support and fulfill your customer orders for multiple instances of a product or
service. You can create multiple domain orders that equal the order quantity for each instance
of the product or service. This way, you can efficiently decompose and manage the fulfillment of
your customer orders.

Example of order quantity
An instance of a product or service refers to an ordered item with a unique set of order
characteristic values, such as the speed and memory size. A customer might order the same toplevel product or service for different locations, but each might differ in their order characteristics.
For example, if a customer orders a router for one of their locations, it might have a memory size
selection that varies from the same router model that was ordered for another location. Order
Management supports this order quantity processing for the following scenarios:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1032


<!-- page 1033 -->
Support for the order line item quantity that is provided by the customer when
they order an item
If your customer places an order with more than one instance, the Quantity field on the order
line item captures the number of instances of your customer order line items. The order
decomposition process then creates the same number of product or service orders and
manages the fulfillment process for each order independently.

Support for the catalog-driven characteristic quantity
In this scenario, the decomposition process decomposes a product or service order into the
required number of domain orders. These domain orders are based on the quantity mapping
that you define in the product catalog between the source and target specifications that are
used in a product offering. The quantity mapping in the specification relationship triggers the
decomposition process to create the required number of domain orders for the fulfillment
process.

Support for the characteristic based quantity
In this scenario, you accept and support your customer order that has the information for
order characteristics value which impacts the quantity of the domain orders. So, the order
decomposition process refers to following information to create the required number of domain
orders.
• Specification relationship with quantity characteristic
• Characteristic mapping
Set up and review order lines
Once products and services are added to an order in Order Management, you can set up order
lines with order characteristics, pricing adjustments, and other items.

Before you begin

Role required: sn_ind_tmt_orm.order_agent, sn_ind_tmt_orm.order_approver,
sn_ind_tmt_orm.order_viewer, or sn_ind_tmt_orm.order_fulfillment_manager

About this task

Product and service order lines items contain the product or service that you have added to your
order. You can also make the following changes and updates to the order line items.
• Details - shows the details of the order including the name and address fields for the order.
• Order Orchestration - shows the order orchestration details in a node map view.
• Order Characteristics - add characteristics to a product and service orders.
• Order Line Item Contacts - add a contact for each product order line item.
• Order Line Related Items - connect this order line item with other order line items
• Pricing Adjustments - add pricing adjustments to a product order.
• Products Orders - lets agents create product orders and add them to the current order.
• Order Tasks - tasks that are assigned to complete the orders.
• External product Inventories - connect to external product inventories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1033


<!-- page 1034 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select the order that you’re working with.
5. Select the order line tab and choose the order line item that you want to update.
The order line item form opens with a variety of tabs available.

6. Select the tab that you want and fill in the fields.

Field

Description

Details

Details include shipping address and product information. Details
tab also contains pricing, general information, and contract start
and end dates.

Order Orchestration

Open this tab to see the steps needed to execute the order.

Order Characteristics

Characteristics are the options available.

Order Line Item Contacts Add contacts that enable agents to find more information about
an order.
Order Line Related Items

Connect this order line item with other order items.

Pricing adjustments

Agents can adjust product pricing.

Product Orders

Shows the product orders that are part of this order. Also lets
agents add products to the order.

Order Tasks

Shows order tasks that must be completed.

External Product
Inventories

Agents can view external product inventories.

7. To add related items for your customer orders with horizontal relationships, do the following
actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1034


<!-- page 1035 -->
a. On the Order Line Related Items tab, select New.

Note: Only those product specifications that are available for a selection appear.
b. In the Related order line items list, select the order line items to add.
c. In the Related product inventory list, select the product inventory to add.
d. Select Save.
The order line item is configured. Review the order line item details and submit to start the
fulfillment process for the new product.
8. Select Save to save the changes to the order line.
Related topics
Review and submit a product or service order in Order Management
Add a header discount to an order
Apply a percentage-based discount to an order. You can apply it to the entire order or specific
line item types. The order line items automatically inherit the designated discount percentage as
a manual adjustment on the order line level.

Before you begin

Role required: sn_ind_tmt_orm.order_agent

About this task

You can only add discounts to a quote while the quote is being crafted. Once the quote is
approved or closed, discounts are no longer available.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select your order.
5. Select the More Actions icon

and select Apply header discount.

6. In the Order header discount window, select how to apply the discount:
◦ Apply discount to all order lines: Apply discounts for the entire order, including all order
lines.
◦ Retain existing line-level manual adjustments and discount remaining lines: Apply
discounts to all the order line items except those with manual price adjustments.
7. In the Order header discount % field, enter the discount percentage.

Note: You can’t enter a negative percentage or a percentage higher than 100%.
8. Select Apply.

What to do next

Review and submit a product or service order in Order Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1035


<!-- page 1036 -->
Price adjustment breakdown on order lines
Order agents can view the price adjustments that were applied to the base price in the price list
to reflect attribute adjustments and any custom adjustments that you added through the pricing
plan, and see how the net price was calculated while processing orders.

Where to find the price adjustment details
The unit base price, unit list price, and unit adjustment details
are listed on the Pricing section of the Order Line Item Details

page.
The Price Adjustments tab on the order line item displays the
manual price adjustments that were applied to an order line item. For
information about the fields on the list view, see Price adjustment

fields.

Price adjustment example
To understand price adjustment and the terms used, let's consider a scenario where a customer
is purchasing an API Edition license from a provider.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1036


<!-- page 1037 -->
• Unit Base Price: The price defined in the Price List, say $1000.
• Attribute Adjustment: The customer opts for the "Professional Plus Edition" version of the
product with Price Point as List Price which costs them additional $200.
• Volume adjustment: The customer receives a discount of $50 when they purchase 100
licenses. Here as well, the Price Point is the List Price.
• Price Point: The Price point is the entity on which the price adjustments were applied. It could
be the List Price or Net Price.
• Unit List Price: The Unit List Price is calculated as $1000 + $200 - $50 = $1150.
• Customer also receives a premier account discount of $100 with Price Point as Net Price.
• Unit Net Price: The Unit Net Price is the final price after all adjustments have been applied. This
is calculated as $1150 - $100 = $1050.
Related topics
Configurable pricing plans
Add subscription pricing to an order
Add contract pricing to an order or order line items including start and end dates in Order
Management.

Before you begin

Role required: sn_ind_tmt_orm.order_agent

About this task

Subscription pricing is a model where customers pay a recurring fee for products or services,
typically at regular monthly or annually.
In an order, you can set the contract start date and end date, or you can enter a term and the
contract end date is automatically calculated.
Subscription pricing can be added at the order header level or at the order line item level.
See Subscription revenue metrics for more information about how contract pricing works.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All
4. Select the order that you’re working with.
5. Select the More Actions icon

and select Order details.

6. In the Dates section, add a Contract start date and a Contract end date.
When the dates are entered, the following information automatically updates.

Field

Description

Total monthly recurring price

Shows the monthly recurring price based on
the dates entered in subscription pricing.

Total annual recurring price

Shows the total annual recurring subscription
pricing based on the dates entered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1037


<!-- page 1038 -->
Field

Description

Total amount

Shows the total amount of the subscription
pricing according to the contract start and
end dates.

Term

Shows the number of months the
subscription is valid based on the contract
start and end dates.

7. Select Update.
Related topics
Order details page - Dates fields
Add covered products to order line items
Enhance orders by adding covered products such as contracts or entitlements at the order line
level.

Before you begin

Role required: sn_ind_tmt_orm.order_agent or sn_ind_tmt_orm.order_manager

About this task

Order agents can add covered products to an order line during the order capture process.
Covered products refer to offerings that act as entitlements or contracts linked to a primary
product, such as a warranty purchased with a phone. They are not standalone products but
provide additional value or service to the main product. In the product offering record, covered
products are marked with Entitlement as the offering type. You can only link the entitlement to a
specific product, sold product, or install base item associated with the account.
You can add multiple covered products to an order line item.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.ʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select the order that you’re working with.
5. From the Line items tab, select the entitlement or contract type of order line to open the order
line record in its own tab.
6. In the Covered Product form, select New.
7. In the Create New Covered Product form, select the covered product line item you want to add.
You can add either of the following covered products types to a line item:
◦ Covered sold product: Add a sold product to an entitlement/contract type of order line to
establish a coverage relationship between them.
◦ Covered order line item: Add a covered order line item to the order line.
◦ Covered install base item: Add an install base item to the order line.
8. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1038


<!-- page 1039 -->
Note: You can't modify a covered product added to an order line. To make changes,
delete the covered product by selecting More Actions icon
covered product again by selecting New.

> Delete and add the

9. On the order line item page, select the contract start date and the contract end date.
10. Change the state to Complete.
A contract is created with the contract details for the order line.
Related topics
Add Covered Products using Contracts and Entitlement Workflow
Add pricing adjustment to an order line item
Add pricing adjustments to an order line after the line item is created.

Before you begin

Role required: sn_ind_tmt_orm.order_agent

About this task

You can make the following types of pricing adjustments for order line items to reflect custom
pricing agreements, promotions, or other special considerations.
Types of Pricing Adjustments
Adjustment Type

Description

Markdown %

Percentage for a markdown in price.

Markdown Amount

A dollar amount of a markdown in price.

Markup %

Percentage for the markup in price.

Markup Amount

A dollar amount for a markup in price.

Price Override

Overrides the product price with a new price.

Procedure
1. Navigate to Workspaces > CSM Configurable Workspace.
2. Select the List view.
3. Navigate to Customer Orders > All.
4. Select an order.
5. In the Line Items tab, select the percentage sign (%) to execute the add adjustment details row
action.
6. In the Adjusts field, select one of the following:
◦ Unit Net Price: Adjusts the price of a single item.
◦ Cumulative Net Price: Applies the pricing adjustments to the selected line items an all
associated child line items.
7. Select an Adjustment Type.
8. Add a description.
9. Select Apply.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1039


<!-- page 1040 -->
What to do next

You can view adjustments on an order by selecting the percentage sign (%) in the Line Items tab.
Review and submit a product or service order in Order Management
Review all the order line items as the next step in the process to create a product order. Edit the
order details as needed before submitting it for fulfillment approval.

Before you begin

Role required: sn_ind_tmt_orm.order_agent, order_approver

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.ʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select the order that you want to submit for approval.
5. Select Review & Submit.
6. Review the order line items details and configurations.
Review order form
Field

Order Line

Description

Unique system-assigned number of the order
line item with a prefix ORDL.

Product Offering

Product offering that the customer is ordering
for fulfillment.

Product Specification

Product specification that is associated with
the order line item.

Qty

Product quantity.

Unit list price

Price of a product or service as defined in the
Price List Line.

Cumulative monthly price

Cumulative annual price
Cumulative one time price

Cumulative net price
Total monthly recurring price

Total monthly recurring charges for this
order line item. An example is a monthly line
charge.
Total yearly recurring charges for this order
line item.
Total non-recurring charges for this order line
item. An example is a one-time installation
fee.
Total price for this order line item.
Aggregated monthly cost of all recurring
charges associated with an order line item or
subscription contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1040


<!-- page 1041 -->
Field

Description

Total one time price

Aggregate cost of all non-recurring charges
associated with an order line item. These are
typically setup fees, installation charges, or
product costs that are billed once rather than
on a recurring basis.

Total amount

Aggregate cost of all charges, both, onetime and recurring, associated with the entire
order. It is a calculated field that reflects the
final payable amount after applying quantity,
pricing, and adjustments.

Note: You can't manually adjust the amounts that appear in the pricing fields. They only
change if you change the characteristic values for the order line items.
7. Optional: To update the configuration or quantity for an order line item, select the Edit icon
.
You're redirected to the configurator UI for making updates.
8. Optional: To delete an order line item, select the Delete icon

.

9. Save any changes or updates and select the Reprice to reset the total pricing.
10. After reviewing the order, select Submit.
The state of the order changes from Draft to New. The order progresses to the next step of the
order life cycle.

What to do next

For complex orders, capture technical details. For more information, see Capture order
enrichment details for complex fulfillment.
If order enrichment tasks don't apply, move to order approval. For more information, see
Approving or rejecting orders.
Create a request definition
Create a request definition and configure it into an order task to help your agents provide
additional order attributes for the order fulfillment from the CSM/FSM configurable workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Request Definition Setup > Request Definition.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1041


<!-- page 1042 -->
Create New Request Definition form
Field

Description

ID

Unique identifier for the request definition.

Note: You can't modify an ID after the request definition is created.
Task
type

Task table that is associated with the service request.

Note: You can create new order tasks only in the Order Task
[sn_ind_tmt_orm_order_task] table.

Name

Name to identify the request definition.

Task
Fields

Fields of the Task table.

5. Select Save.
6. Repeat Step 2.
7. Navigate to Request Definition Setup > Request Definition Characteristic.
Request Definition characteristic form
Field

Description

Request definition
Specification

Name of the product specification.

Characteristic

Name of the product characteristic that you
want to capture the information from the
customer order.

UI Visible

Option that designates if the UI Visible field
appears as true in the Request Definition
characteristics table and the characteristic
appears in the Order Task form.
If you clear the check box, the field value
appears as false, and the characteristic
doesn't appear in the order task form.

Mandatory

Option that designates if the Mandatory field
appears as true in the Request Definition
characteristics table. Your agent must provide
the characteristic value in the order task form
to close the order task.
If you clear the check box, the field value
appears as false and your agent can close

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1042


<!-- page 1043 -->
Field

Description

the task without providing any characteristic
value in the order task form.
Read-only

Option that designates if the Read-only field
appears as true in the Request Definition
characteristics table, and you can't edit the
characteristic value in the order task form.
If you clear the check box, the field value
appears as false in the Request Definition
characteristics table and you can edit the
characteristic value in the order task form.

8. Select Save.

Enriching orders in Order Management
Order enrichment is a post-capture stage in the Order Management life cycle that enables
fulfillment agents to gather additional information from customers for complex orders before
submitting the order for approval.

Overview of post-capture order enrichment
The order enrichment process is designed to improve fulfillment accuracy and help prevent
potential delays or fallouts for complex product or service orders. Fulfillment agents collect
additional, context-specific information from customers that is not required during initial order
capture because these details don't affect product selection or pricing. The order enrichment
process helps the order agents to create basic order entries quickly without needing to wait for
technical details that are crucial for fulfillment.
Not all orders require enrichment. For complex offerings such as elevator installations, critical
details like installation location and door configuration may not be available during initial order
placement. Capturing this information later helps the fulfillment agents to have the necessary
data for executing the order efficiently and accurately.

How the order enrichment process works
After an order is captured by an order agent, the system checks whether the Order Enrichment
Flow Policy is configured for the product or service in the decision tables. If the Order
Enrichment Flow Policy is configured, enrichment tasks are automatically created against the
order lines that require enrichment and are assigned to the appropriate fulfillment agent. At this
stage, the state of the order and its line items change to Enrichment in progress. If an order line
doesn't qualify for enrichment, it's state changes to New.
Next, the agent then contacts the customer to collect the required details and captures them
using the configurator UI. For example, if a customer orders elevators, the fulfillment agent must
know the following site details before they send out install technicians:
• Door configuration (for example, side-opening, center-opening)
• Building entrance width
• Electrical rating
Only the information necessary for fulfillment is displayed in the configurator UI and stored in the
order record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1043


<!-- page 1044 -->
The fulfillment agent reviews and closes each task after capturing the required additional details
for order decomposition and fulfillment. When the order enrichment is completed, the state of
the order line items and the parent order changes to New.
The fulfillment agent or manager can now approve or reject the order.

Benefits
• Improved accuracy: Reduces delays or fallouts caused by incomplete or incorrect data.
• Higher conversion rates: Enables customers to place orders quickly without needing all
technical details upfront.
• Operational efficiency: Ensures that fulfillment agents have the correct data at hand.
• Customer engagement: Builds trust through multi-step collaboration rather than one-time
transactions.

Configuration requirements
Order enrichment tasks are only created if the enrichment process is explicitly configured in
the Order Enrichment Flow Policy in the decision tables for a product or service offering. This
process ensures that enrichment is applied selectively and only when necessary. For more
information, see Configure order enrichment flows using Decision Tables.
Capture order enrichment details for complex fulfillment
Collect additional order details and technical information necessary for order decomposition
and fulfillment, promoting accurate delivery and helping prevent delays or fallouts for complex
products or services.

Before you begin

Role required: sn_ind_tmt_orm.order_fulfilment_agent

About this task

You can enrich order and order line items that meet the following conditions:
• The Order Enrichment Flow Policy is configured for this product offering
• The order has been captured, reviewed, and submitted by an order agent
• The order and order line items are in the Enrichment in progress state

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.ʼ.
2. Select the List icon

.

3. Navigate to the order enrichment task using either of the following options.
Navigation option

Steps

a. Navigate to Customer Orders > All.
From Customer Orders

b. Select the order record that's ready for en­
richment, which is indicated by the Enrich­
ment in progress state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1044


<!-- page 1045 -->
Navigation option

Steps

c. View the order enrichment tasks by select­
ing the Order Tasks tab.
d. Select the order enrichment task to open
the task record and view its details.
a. Navigate to Order Tasks > All.
b. Select the order record that's ready for en­
richment.
From Order Tasks

This is indicated by the Enrichment in
progress state.
c. Select the order enrichment task to open
the task record and view its details.

4. Select Configure.
5. Capture the additional information that you gathered from the customer in the configurator UI.
Depending on the product configuration, you can choose from a value range, a drop-down
menu, or enter text in the configurator UI.
6. Optional: Adjust the quantity by entering a value in the Quantity field.
7. Review the quantity and other details in the Current Selection pane before proceeding.
8. Select Update.
You're redirected back to the enrichment task Details page.
9. To mark the task as complete, select the Closed complete option from the State drop-down
menu and select Save.
You're redirected back to the Order Tasks tab where you can see new set of tasks that are
asynchronously created.
10. Complete all the enrichment tasks in a similar manner.
11. Optional: View the summary of your selections for each enrichment task by going to its Order
Task Characteristics Values tab.
The Characteristic Options tab displays all the available options for that product
characteristic.

Result

The order record is updated with all necessary fulfillment details. The order state changes to
New. The fulfillment manager can now approve or reject the order.

What to do next

Approve orders in Order Management

Approving or rejecting orders
Fulfillment managers bridge the gap between order intake and execution by reviewing the order
information and deciding whether an order is ready to proceed or requires further review.

Approval workflow
To begin the approval process, start by reviewing the order and its line items thoroughly. Verify
that all required fields such as order number, customer account details, contact information,
pricing, critical dates, and product or service specifications are complete and accurate. The
order must be in a New state to be eligible for approval.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1045


<!-- page 1046 -->
Next, validate the order against your organization’s approval criteria. The approval criteria could
include checks such as:
• Accuracy of order details
• Completeness of required fields
• Compliance with business rules such as discount thresholds, contractual terms, or inventory
availability
• Validity of associated agreements or entitlements
Throughout the process, maintain clear documentation and communication. If any issues arise,
coordinate with relevant teams to resolve them before approval, promoting a smooth transition
from order intake to fulfillment, and minimizing delays or fallout.
You can make corrections or updates to order characteristics before approval. Once the order
passes all checks, proceed to approve it. This action updates the order status to In progress,
which triggers the fulfillment workflows such as decomposition into domain orders, tasks,
assignment to teams, and scheduling. The system logs the approval action and updates revision
fields to reflect the change.

Rejection workflow
Begin by carefully reviewing the order details against your organization's rejection criteria
checklist. The following is a list of common rejection triggers:
• Missing or incorrect data
• Policy violations such as unauthorized discounts or invalid entitlements
• Inventory constraints
• Fraud or risk flags
Once a rejection decision is made, update the order status to Rejected in the system. This
action automatically halts any associated fulfillment workflows, stopping the order from being
processed further. It’s important to document the reason for rejection clearly using work notes so
that the requester or relevant teams understand what must be corrected.

Reevaluating rejected orders
A rejected order can be corrected and resubmitted for reevaluation by the order agent. If all
issues are resolved and the order meets approval criteria, you can approve the order. Approving
a rejected order updates the status back to In progress, enabling fulfillment to resume.
Validate the related items of a customer order for its compatibility
Validate the related order line items of your customer order, which includes the horizontal
specification relationships, to make sure that the order-related information is correctly generated
to fulfill your customer order.

Before you begin

A horizontal specification relationship is defined by defining a compatibility rule between the
product, service, or resource specifications in a product catalog.
Role required: order_approver, order_viewer, sn_ind_tmt_orm.order-fulfillment_agent, or
sn_ind_tmt_orm.order_fulfillment_manager

About this task

After you define a compatibility rule, when you capture a customer order, you can validate the
order related items before you approve the order. For this validation, you review the specification
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1046


<!-- page 1047 -->
relationships of the order line items and the order input data of your customer when you created
the order.
Validations occur at two levels:
1. Validations before the order approval. If these validations fail, the order decomposition
process doesn't stop. The following validations take place:
◦ Source specification and source specification configuration
◦ Compatibles validation
◦ Compatibles quantity validation
2. Validation at the time that a domain order is closed. If this validation fails, the order fulfillment
process stops. The following validations take place:
◦ Source specification and source specification configuration
◦ Compatibles validation
◦ Compatibles quantity validation
◦ Compatibles configuration

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select the order that you want to validate.
5. To validate the related items of the customer order, select the more actions icon
Validate Related Items.
Option

and select

Description

The ServiceNow AI Platform displays the fol­
lowing message:

If the validation is successful

Provided related inventory/order line items
are compatible.
This message confirms that the order informa­
tion doesn't require any additional input and
you can proceed to the next steps of the or­
der fulfillment.

If the validation is unsuccessful

The ServiceNow AI Platform displays a mes­
sage that confirms whether the order informa­
tion requires additional details for its decom­
position. You can provide the required infor­
mation to proceed for the next process of the
order fulfillment.

Note: For change and disconnect type of customer orders, the following message
is displayed for the validation of the related items of the customer order: This
validation is not applicable for order line items with
change or disconnect action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1047


<!-- page 1048 -->
What to do next

Approve orders in Order Management

Note: Upon approving for the change and disconnect type of order requests with
horizontal relationships, the ServiceNow system analyzes its impact on the product
inventory relationships and displays a message if it invalidates the existing relationships
due to the impact of the requested change by the customer.
Approve orders in Order Management
Approve an order in Order Management to begin decomposition and fulfillment process.

Before you begin

Role required: sn_ind_tmt_orm.order_fulfilment_manager, sn_ind_tmt_orm.order_approver

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.ʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select the order that you want to review and approve.
Orders ready for approval are in the New state.
5. Review the order line items.
6. Optional: Select Reprice to recalculate prices when updates are made to an order line item.
7. Optional: To add more products to this order, select New.
8. Delete selected order line items by selecting Delete.
When you delete an order line item, the prices are recalculated.
9. When you're satisfied with the order details, select Approve.

Result

The order is approved and the order state changes to In progress while it’s being validated,
before it enters fulfillment.
Reject orders in Order Management
Reject a customer or service order in scenarios where the customer request is invalid, the
product or service is no longer available, or the pricing or terms are incorrect.

Before you begin

Role required: sn_ind_tmt_orm.order_fulfilment_manager, sn_ind_tmt_orm.order_approver

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.ʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select the order that you want to reject.
Only the orders in the New state can be rejected.
5. Select Reject.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1048


<!-- page 1049 -->
Result

The order is rejected and its state changes to Rejected. Rejected orders can be made available
to the order agents to address issues after changing the state of the order and order line items to
the Draft state.

Order decomposition
Order decomposition is the process of breaking down an approved customer or service
order into a set of smaller, manageable domain orders for fulfillment. This process is driven by
definitions in the product catalog to ensure that all necessary components are provisioned
correctly. Learn about the decomposition process for customer and service order and their
differences.

Overview of order decomposition
When an order is approved, the system breaks down the commercial elements of an approved
order into its smaller, actionable technical components called domain orders (product, service,
and resource orders) for fulfillment. Decomposition defines the Bill of Material for an ordered
component. The decomposition is guided by specifications, specification relationships, and
decomposition rules defined in the product catalog. Decomposition rules (often exclusion rules)
determine when domain orders should or should not be created, based on characteristics or
options present in the order line item. Decomposition establishes hierarchical relationships
between source and target specifications, generating the necessary product, service, and
resource orders.
For example, consider the SD-WAN Service Package from the demo data. For this product,
specification relationships and decomposition rules determine which product, service, and
resource orders are generated based on the order's characteristics.
During order decomposition, work orders are created for product or service orders that need
further action. For example, installation of a device at the customer site. You must close the order
tasks and work order tasks associated with the domain orders to proceed with order fulfillment.
Fallout records are created if you manually close the domain orders.

Hierarchy of domain orders
The domain order hierarchy is structured as follows:
Product order (Parent)
Defines the commercial intent of what is being sold. It is based on a product
specification that includes brand, pricing, terms, and other product-related
materials. The product order initiates the fulfillment process by triggering associated
service and resource orders.
Service order (Child of product order)
Manages the fulfillment of a specific service specification. It outlines the technical
realization and delivery of the service, often involving multiple service and resource
orders.
Resource order (Child of service order)
Handles the provisioning of physical or logical resources required to deliver the
service. It is based on a resource specification and may include multiple resource
orders depending on the complexity of the service.
Each product order can have multiple service orders, and each service order can have multiple
resource orders, depending on the relationships defined in the product specification.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1049


<!-- page 1050 -->
The role of specification relationships and decomposition rules
The following core components drive the decomposition process:
• Specifications: Define the attributes of products, services, and resources.
• Specification relationships: Define how different specifications are related to each other.
• Decomposition rules: Provide conditional logic for the decomposition process.
Decomposition runs on the specification associated with the order line item and its hierarchy.
The type of relationship between specifications determines the outcome.
• If the relationship is of type Bundles, Realized as, or Requires, decomposition process creates
the following types of orders for the target specification:
◦ A corresponding customer-facing service order (CFS), which is a service order that is
generated for performance of customer-faced services.
◦ A resource-facing service order (RFS), which is a service order that is generated for internal
use of resources required to perform the actual services for the customer.
◦ Resource order.
• If the relationship is of type Composed of, decomposition does not occur for that relationship.
Decomposition rules function as exclusion rules. They are used to prevent the creation of certain
domain orders if the incoming order does not contain a specific characteristic or characteristic
option. This allows for optional components within a product or service offering. For example, a
rule can be set to only generate a service order for a specific feature if the customer explicitly
selected that feature during the ordering process.
Specification relationships and decomposition rules can be defined to exclude domain orders
when certain characteristics are not present. For example, if a customer or service order does
not include a required characteristic such as Tenancy or WAN Optimization, the related domain
order is not generated.
The decomposition process uses the source specification (defining the relationship) and the
target specification (being defined to), with rules mapped to specific characteristics and values.
When the attribute value is increased, more number of CFS/RFS is created.
When the attribute value is decreased, it decreases the number of CFS/RFS.

Customer order vs. Service order decomposition
While the fundamental principles of decomposition remain the same, there are key differences
when decomposing a service order compared to a customer order. The most significant
difference is that service order decomposition does not generate product orders. The process
is focused exclusively on the fulfillment of services and their underlying resources. The
decomposition of a service order generates a specific set of service and resource orders:
• Customer-Facing Service (CFS) Order: A service order for the performance of a customerfacing service.
• Resource-Facing Service (RFS) Order: A service order for the internal use of resources
required to perform the actual service for the customer.
The scope of service order decomposition is focused on the logical breakdown of services. It
does not typically involve concepts like staggered or quantity-based decomposition, which are
more common in customer orders that may include physical products with variable quantities
and complex, multi-stage fulfillment cycles. The key differences are listed in the following table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1050


<!-- page 1051 -->
Comparing decomposition of customer and service orders
Aspect

Description

Customer order

Service order

Trigger

Action that triggers
order decomposition

Approval of a customer
order by fulfillment
manager

Approval of a service
order by service order
manager

Based on specifications,
specification
relationships, and the
decomposition rules
that are defined in the
product catalog between
the product, service, and
resource specifications.

Based on specifications,
specification
relationships, and the
decomposition rules
that are defined in the
product catalog between
the service, and resource
specifications.

Basis for
Basis on which the
decomposition domain orders are
generated

Domain order
generated

Type of domain orders Product, service,
resource orders

Service and resource
orders only

Staggered
The process that
decomposition allows domain orders
to be created at a
later stage, based on
updated information
such as customer
needs, service
availability

Yes

No

QuantityThe process
based
that supports
decomposition splitting orders
based on quantity,
handling changes
in order quantity,
and managing
inventory updates or
cancellations for inflight orders

Yes

No

Example

-

SD-WAN Service Package Managed firewall service
Decomposition creates
a customer-facing
service order (CFS),
• Decomposition creates multiple resource-facing
a parent product
service orders (RFS), and
order and multiple
resource orders, based
child product and
on relationships and
service orders, with
characteristics present in
rules to include or
the order.
exclude based on
characteristics like
Tenancy or WAN
Optimization.
• Bundles multiple
product specifications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1051


<!-- page 1052 -->
Additional features in customer order decomposition
Customer order decomposition supports the following additional features:
• Staggered decomposition: Customer orders may use staggered decomposition, creating
domain orders at later stages based on updated information such as service availability or
customer needs.
• Quantity-based decomposition: Customer orders can be decomposed into multiple domain
orders based on order quantity, supporting revisions, and fulfillment of multiple instances.
• Support for change orders: Customer order decomposition supports updates to quantity
characteristics, enabling upgrades, downgrades, and inventory management during fulfillment.
Fore more information, see Customer order decomposition.
Order decomposition examples
Examples using demo data illustrating how customer and service orders can be decomposed
under diverse conditions help you to understand the decomposition process. The conditions
include optional characteristics, quantity-based decomposition, staggered fulfillment, and
exclusion rules that support complex order management and fulfillment workflows.

Specification relationship and decomposition rule example
The Managed Firewall service demo data is an example of a customer facing service
specification that has a Requires relationship with the following three resource-facing service
specifications:
• Firewall administrator
• Firewall and DMZ
• Threat and Intrusion Prevention service
As shown in the following example, each resource-facing service specification has relationships
with the corresponding resource specifications that are required for Managed Firewall service
delivery. The decomposition process creates an RFS service order only when the corresponding
characteristic is available in the order line item for the Managed Firewall service specification.
Managed Firewall Service structure

After receiving a service order for adding a Managed Firewall service, a service manager reviews
and approves it. This process triggers decomposition, which creates the RFS service orders and
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1052


<!-- page 1053 -->
resource orders. The service order has one order line item for the Managed Firewall service,
which includes all of its characteristics. The service order decomposition process creates the
following:
• A CFS service order for Managed Firewall service.
• Three RFS service orders for all three RFS specifications.
• Three resource orders for resource specifications.
The decomposition and fulfillment process is shown in the following diagram:
Service order decomposition and fulfillment

Next, the ServiceNow AI Platform triggers a fulfillment workflow for the decomposed service
and resource orders. This workflow generates the required order tasks for fulfilling the domain
orders and uses decision tables to identify the workflow for a decomposed order. The selected
workflow is based on various attributes in the original service order. These attributes include the
specification category, and an order line item action (Add, Change, or Delete), among others.
To learn more about decision tables, see Decision tables

:

Example of an order decomposition that is based on specification relationships
Specification relationships define the relationships between a product, service, and resource.
When you define specification relationships, you can optionally create decomposition rules to
specify how a customer order is decomposed, fulfilled, and delivered to your customer.
The best way to view a decomposition rule is as an exclusion rule. You use decomposition rules
to specify to exclude domain orders from being created when you receive a customer order that
doesn't contain a characteristic or characteristic option. For example, in the SD-WAN Service
Package demo data, the following occurs:
• A specification relationship is defined between the SD-WAN Controller product specification
and its service specifications.
• The service specification details the services that are required for the product. When an
order is received for the SD-WAN Controller product, a product order and a service order are
generated for the SD-WAN Controller Service.
Decomposition runs on the specification that is associated with the customer order line item and
its hierarchy of specifications. It works as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1053


<!-- page 1054 -->
• If the relationships between the source and target specifications are Bundles, Realized as,
or Requires types, a product, service, or resource order is created for the target specification
when the customer order is decomposed.
• Decomposition establishes the hierarchical relationship between the source and targets while
generating the product, service, and resource orders.
• If the specification relationship is of a Composed of type, decomposition doesn't happen.
The SD-WAN Service Package demo data is an example of a composite product specification
that bundles three other product specifications within it:
• SD-WAN Controller
• SD-WAN Edge Device
• SD-WAN Security
The SD-WAN Service Package defines the following relationships:
• SD-WAN Service Package has a Bundles relationship with an SD-WAN Controller
• SD-WAN Service Package has a Bundles relationship with an SD-WAN Edge Device
• SD-WAN Service Package has a Bundles relationship with SD-WAN Security
When a customer order is received for the SD-WAN Service Package, and that order is approved,
decomposition is triggered. The customer order line item for the SD-WAN Service Package has
a single product order for the SD-WAN Service Package. That SD-WAN Service Package Product
order has three child product orders:
• SD-WAN Controller
• SD-WAN Edge Device
• SD-WAN Security (if the option security product was ordered)

Example of order decomposition that is based on defined decomposition rules
When you define specification relationships, you can optionally create decomposition rules. With
a decomposition rule, you can specify to exclude domain orders from being created when you
receive a customer order that doesn't contain a specific characteristic or characteristic option.
The following example shows that the SD-WAN Controller Tenancy product characteristic was
designated as optional.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1054


<!-- page 1055 -->
SD-WAN Controller Tenancy product characteristic

In the example, you see that a decomposition rule was defined for the SD-WAN Controller
product specification relationship to the SD-WAN Controller Service. This rule excludes the
specification when a customer does not select the Tenancy option.
SD-WAN Controller Service decomposition rule

When a customer places an order and doesn't select the Tenancy option, the related service
order doesn't generate for it.

Example of order decomposition that include references to characteristics and
options
You can define the decomposition rules for a specification relationship and include references
to a characteristic and characteristic option. The following elements comprise the specification
relationship:
• The source specification is the specification that defines the specification relationship.
• The target specification is the specification that the relationship is being defined to.
• Both values are automatically defined when you create the decomposition rule from the
specification relationship.
If the characteristic and value are present on the order line, the ServiceNow AI Platform applies
the decomposition rules to Add and Change type orders. They are not applied to customer order
line items with a Disconnect (Delete) order action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1055


<!-- page 1056 -->
In this example, the SD-WAN Edge Device is a product specification and SD-WAN Security is a
service specification.
• The SD-WAN Edge Device has a characteristic called WAN Optimization and has a Realized as
relationship with SD-WAN Security.
• There is a decomposition rule for this relationship with WAN Optimization as the characteristic.
If you receive an order for the SD-WAN Service Package that doesn’t include the WAN
Optimization characteristic, the decomposition rule prevents the generation of an SD-WAN
Controller Service service order. The rule designates that the decomposition of that service order
only happens if that characteristic is ordered.

Order decomposition for order line-item quantity and order quantity
characteristics changes
When order decomposition process uses the order quantity information from the order capture
process to create multiple product orders that match the line item quantity for a customer order.
An agent then fulfills each instance of the product separately, which create the inventory records
for each of the fulfillment instances.
When a customer submits an order for three instances of the SD-WAN Service Package product
and you approve the order, the decomposition process creates three product orders for the SDWAN Service Package including one product order for each order line item. Each product order
in the SD-WAN Service Package creates three child orders for the products and services for the
order fulfillment process.

Example of staggered decomposition
The following example describes the staggered decomposition process for a product offering
called SD-WAN Bronze Plan.
SD-WAN Bronze Plan product offering

The SD-WAN Bronze Plan product offering uses a product specification, called an SD-WAN
Service Package (as shown in the following example), that has three target specifications:
• SD-WAN Edge Device
• SD-WAN Security
• SD-WAN Controller
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1056


<!-- page 1057 -->
SD-WAN Service Package product specifications

The SD-WAN Edge Device product specification has specification relationships with SD WAN
Optimization Service and SD-WAN Routing, and the underlying decomposition rules don't have
any values for WAN Optimization and Routing characteristics.
SD-WAN Bronze Plan specification relationships

The following example shows the decomposition rules for the product offering for the SD-WAN
Bronze Plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1057


<!-- page 1058 -->
SD-WAN Bronze Plan decomposition rules

When your customer places an order for the SD-WAN Bronze Plan product offering and you
approve this customer order, decomposition begins with the creation of the domain orders as
per the defined specification relationships and decomposition rules. Because this customer
order doesn't have the values for these characteristics for Routing and WAN Optimization, the
decomposition rule doesn't create the service orders.
However, as a part of the order fulfillment process, the information for Routing and WAN
Optimization must be available. When your fulfillment agent provides the values for these
characteristics, the decomposition rule creates the necessary service orders and the order
decomposition completes.
Staggered decomposition
Learn how you can stagger the decomposition for your customer orders. You can decompose
your customer orders in multiple iterations by using the available information at the domain level,
rather than decomposing an entire customer order at one time after it is approved for fulfillment.
Staggered decomposition helps you fulfill your customer orders even when service and resource
orders were created from different factors, such as a customer's need, availability of the services
at a customer's location, and so on. Staggered decomposition creates the domain orders
(product, service, and resource orders) at a later stage during the order fulfillment process. The
decomposition process is based on the latest information.
However, the one-time order decomposition process (prior to the staggered decomposition)
works well when the products and services have the necessary information and order approval
to create the domain orders for the order fulfillment.
The following diagram shows how the staggered decomposition process works. You can start
the decomposition process with the information that you already have for your order and
order line items. The decomposition process skips the domain orders (product or service or
resource orders) that you don't have the required information for at this time. When you add
this information later, the decomposition process triggers and completes the processing for the
remaining domain orders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1058


<!-- page 1059 -->
Staggered decomposition processing

Contrast to earlier decomposition processing
Before staggered decomposition was available, order decomposition processing started
immediately after a customer order was approved for fulfillment. Order decomposition was
based on the specification relationships and decomposition rules that were defined in the
product catalog.
If the decomposition rule depended on any characteristic value that was not available at the time
of order decomposition, the order processing skipped the decomposition of orders. However,
in staggered decomposition, with the initial decomposition, the decomposition automatically
triggers again for the skipped orders when the dependent characteristic value is available. The
characteristic value can be set by your order fulfillment users or by the attribute propagation
rules.

How staggered decomposition works
To support order decomposition in a staggered manner, you can use this method to retrigger
the decomposition process for the skipped domain orders when the characteristic values are
assigned in the corresponding decomposition rules.
When you approve an order, the order decomposition process starts. The decomposition
process creates domain orders by using the information that is available from the order, order
line items, and catalog definition. It also evaluates the decomposition rules to create the target
domain orders. If the decomposition feature fails to evaluate the decomposition rules due to the
unavailability of characteristic values, the decomposition is stopped for those domain orders.
When the characteristic values are available either from a user’s action or from an attribute
propagation rule, the decomposition process is retriggered. The process then creates
the required domain orders and completes the order decomposition. If you again update
the characteristic value after the order decomposition is complete, it does not trigger the
decomposition for the domain order.
To understand staggered decomposition with the help of an example, see Customer order
decomposition.
View domain orders
View product, service, or resource orders for tracking the fulfillment process, verifying that all
required tasks and suborders are created correctly, and confirming that the order progresses
through its life cycle as expected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1059


<!-- page 1060 -->
Before you begin

Role required: sn_ind_tmt_orm.fulfillment_agent, sn_ind_tmt_orm.fulfillment_manager, or
process admin

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select an order for viewing domain orders.
5. From the Line items tab, select an order line item.
6. Select one of the following options depending on whether your order is a customer or service
order.
◦ Customer order: Select Product Orders tab to view product orders associated with the order
line.
◦ Service order: Select Service Orders tab to view service orders associated with the order
line.
7. Select the product or service order record to view the associated child objects.
8. View the service and resource orders by navigating to the Service Orders and Resource
Orders tabs respectively.
9. Select Associated Move Domain Order tab in the related list to view the cease domain order
and provide domain order.
When a move order is raised, you can view these domain orders in the related lists:
◦ Cease domain order: Shows a domain order linked to an old inventory from the existing
service location.
◦ Provide domain order: Shows a domain order linked to a new inventory in the new service
location.
10. Select Associated Composed of Item tab in the related list to view the cease composed of
item and provide composed of item.
When a move order is raised, you can view these composed of items in the related lists:
◦ Cease composed of item: Shows old composed of Items from the existing service location.
◦ Provide composed of item: Shows new Composed of Items in the new service location.
Review the domain order related items associated with a domain order
Review the domain order related line items that were generated for a customer order line item so
that you can confirm all the related details are correct and complete.

Before you begin

Role required: sn_ind_tmt_orm.order_fulfillment_manager

About this task

Each product order contains the domain order related items that are created when a customer
order is approved and then decomposed. You should review each domain order related item to
make sure that they’re correct and complete. You can update them as needed.
Review if compatibility rules or horizontal relationships are configured for domain order specs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1060


<!-- page 1061 -->
Procedure
1. To view the domain order related items that are associated with a customer line item and
product order, select the customer order line item and product order.
2. Select an associated domain order related item to review or add a new domain order related
item.
For change, the new column Existing related inventory displays True for the domain order
related items that are created using existing valid product inventory relationships and False for
the domain order related items that are newly created.
Task

Action

a. Select the Domain Order Related Items (n)
tab (where (n) is the number of domain or­
der related items that are associated with
the selected domain order) to access the
Domain Order Related Items form.
Review an existing domain order related
item

b. In the Number field, select an existing or
new domain order related item to review.
◦ To refresh the form, select the refresh icon
(

).

◦ To filter the existing domain order related
items, select the filter icon (
Create a new domain order related item

).

Select New.

3. On the form, add a domain order related item or review the selected domain order related item
details and update as needed.
Domain Order Related Items form
Field

Description

Number

Domain order related item number.

Domain Order

Domain order number.

Domain Order Specification

Domain order specification (that has the
Composed of relationship) that is associated
with the customer order with the selected
domain order related item.

Related Domain Order

Domain order number that the selected
domain order related item is associated with.

Related Inventory

Product inventory that the selected domain
order line item is associated with.

Existing related inventory

Default value is False that indicates the new
inventory is going to be added.

4. For inflight change order requests, when you update any order line items and approve the
order, the updates to the related order line items are displayed in the Related Domain Order
column.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1061


<!-- page 1062 -->
5. When you finish reviewing and updating the domain order related items, do one of the
following actions.
Action

Description

Save the updated domain order related item Select Update.
Delete the domain order related item

Select Delete.

Customer order decomposition
Learn about the customer order decomposition, including quantity-based decomposition,
handling change orders with updated quantity characteristics, and support for quantity revisions
in in-flight orders.

Quantity-based decomposition
Quantity based decomposition enables you to decompose your order into separate domain
orders as per the order quantity to manage the fulfillment process and independently. This
method also supports:
• Revision of order line item quantity for in-flight orders to fulfill customer’s request to modify
(increase or decrease) the quantity of the order.
• Support for change of product order to fulfill a customer's request to update the quantity
characteristics. It leads to either the creation of new product inventories or the cancellation of
existing product inventories.

Support for a change order with an update for quantity characteristics
When you receive a customer request to revise an order through changing a product
characteristic or characteristic value, you can upgrade or downgrade an existing product
inventory. As a part of the fulfillment process, you either create new product inventories or cancel
existing product inventories.
• If a change in a quantity characteristic option leads to additional new product inventories, the
decomposition process creates the domain orders for the target specification and inventories
for the fulfillment process.
• If a change in a quantity characteristic option leads to the cancellation of some existing
inventories, the decomposition process creates the domain orders needed to manage both
the cancellation and changes to the inventories.
◦ The fulfillment process notifies the order fulfillment manager to identify the inventories
require cancellation or update.
◦ The decomposition process sets the Needs Attention field to True for the domain orders.
◦ The order fulfillment manager then views these orders in the Needs Attention widget. The
order fulfillment manager can wait to open the domain orders, select the product inventories
for cancellation, or update it to resume the order decomposition and fulfillment process.

Support for quantity revision for in-flight orders
When the order fulfillment process is in progress, and you receive a request to revise to increase
or decrease an order line item quantity, it is captured as a quantity change. To incorporate the
revision, the decomposition process then either creates additional domain orders (referred to
internally as a +ve change) or cancels the existing domain orders (referred to internally as a
+ve change) for the order fulfillment.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1062


<!-- page 1063 -->
• If the order revision request is for an increase to the order line item quantity, the
decomposition process creates new domain orders to match the updated order line item
quantity.
• If the order revision request is for a reduction in the order line item quantity, the decomposition
process initiates the cancellation process for some of the domain orders to match the reduced
order line item quantity.
Related topics
Order quantity support in Order Management

Order orchestration
Order orchestration begins after a customer or service order is decomposed into smaller,
individual product and service orders. The primary goal of order orchestration is to promote
accurate, timely, and efficient fulfillment of orders.
Order orchestration is a strategic framework and set of coordinated processes that define how
an organization fulfills customer orders or service requests. The Order Management application
automates the complex, multi-step fulfillment of customer and service orders by breaking them
into smaller product, service, and resource tasks corresponding to the domain order. These tasks
are executed across various systems, both internal and external to ServiceNow.
Order orchestration involves the coordination and optimization of multiple functions and
resources, including inventory management, order processing, shipping, and delivery.

Supporting systems
Effective orchestration relies on integrated technologies such as the following:
• Order management systems: Centralized platforms for handling order data and workflows.
• Warehouse management systems: Tools for tracking inventory, storage, and fulfillment
operations.
• Transportation management systems: Solutions for planning, executing, and optimizing the
movement of goods.

Steps in an orchestration plan
An order orchestration plan typically includes the following steps:
• Order capture and validation: Receiving and verifying customer orders.
• Inventory check and allocation: Verifying stock availability and assigning inventory.
• Supplier and carrier coordination: Engaging third-party vendors and logistics partners.
• Fulfillment and delivery tracking: Monitoring shipment progress and delivery performance.
Using the order orchestration UI
By using the order orchestration user interface (UI), you can make sure that you do all the tasks
that are required to fulfill your customer orders. You can also view the complete order hierarchy,
the status of the associated decomposed orders, the order line items, and the order tasks.
As an order fulfillment manager or agent, the order orchestration UI is your command center for
managing the end-to-end fulfillment process. Use the order orchestration UI to track all domain
orders and order tasks for an order, order line item, or domain order. You can also use the UI to
review and resolve any issues for related order tasks and domain orders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1063


<!-- page 1064 -->
Accessing the UI
You can access the order orchestration UI in the following two ways:
• From the Order Details page: Go to the Order breakdowns section and select View order
orchestration.
• From individual order lines: Open an order line item, then navigate to the Order Orchestration
tab.
Use the order orchestration UI to see:
• A pictorial representation that shows the hierarchy of all order line items, domain orders, and
order tasks for an order, order line item, or a domain order.
• The dependencies between the domain orders and order tasks.
• The current state of the associated order line items, domain orders, and order tasks within the
hierarchy.
The following image shows the order orchestration UI:
Order orchestration UI

By using the order orchestration UI, you can perform the following actions:
• View a hierarchical visual representation of all order line items, domain orders, and order tasks
for the selected order.
• Open a node in the hierarchy and view the additional details.
• Determine the current state of the associated order line items, domain orders, and order tasks.
• Identify any order delays or fallouts in the order fulfillment process, and resolve them on time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1064


<!-- page 1065 -->
Fulfilling multi-site orders
The order orchestration UI is especially helpful when you fulfill customer orders that involve
multiple products that are fulfilled at multiple locations. For example, a customer orders the SDWAN Service Package for their San Jose, San Diego, Denver, and Dallas locations. That means
that there’s a minimum of three order line items for each of the four locations:
• One line item for the SD-WAN Service Package
• One line item for the SD-WAN Controller product
• One line item for the SD-WAN Edge product
If the same customer also orders an optional SD-WAN Security product for each location, there
would be an extra four order line items. That is, there's one order line item for each of the four
locations (San Jose, San Diego, Denver, and Dallas).
To initiate the fulfillment process for a multi-site order, the Order Management application
decomposes the order into multiple domain orders for fulfillment. The domain orders are
the product, service, and resource orders that are generated during decomposition. Each
decomposed order has a corresponding fulfillment flow with several order tasks. To fulfill an
order by the delivery dates that you promise to your customer, you must complete all the related
domain orders and resolve all the related order tasks on time.
Related topics
Order fulfillment
Review an order orchestration plan
Managing order fallout

Managing inflight order changes and cancellation requests
Manage how your organization receives changes for customer orders, service orders or
individual line items that are still being orchestrated and fulfilled. By using inflight change order
management, you can designate when you permit such changes. You can also assess the
impact of the requested changes for an order or order line item, and automatically generate a
plan to compensate for them when you approve the revision or cancellation request.

Overview of inflight order changes
An inflight order is an order that is in the process of being orchestrated and fulfilled but has some
work pending. Inflight changes and cancellations can occur in large enterprise orders. An inflight
order change refers to a change that is issued for an order line item that is currently undergoing
fulfillment and pending completion.
Enterprise order management is complex. It can take weeks or months to fulfill a multi-site order.
Enterprise orders can involve the large-scale purchases of products and services, often for
multiple locations around the world. Inflight orders can go through revisions that incorporate
changes that are submitted by customers or identified by internal personnel during the order
fulfillment process.
To revise an inflight order or order line items that have already been decomposed to suborders,
service provider employees have to assess the impact of the requested changes. If there is
no data-driven process and framework, users try to manage the changes with manual tasks
that can lead to delays in the order delivery process and result in poor customer and employee
experiences.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1065


<!-- page 1066 -->
By using inflight change order management, you can determine how to manage changes for
customer orders that are still being fulfilled. By managing inflight changes, your organization can
reduce operational costs and deliver a better customer experience.
You can use an inflight change to modify a customer order that is still in fulfillment. You define
a point of no return (PONR) after which the order can't accept any change. After an inflight
change is received and approved, order management dynamically assesses the impact of the
requested change and automatically generates a plan to orchestrate the order correctly. With
Order Management, your organization can manage the inflight changes more easily, reduce
operational costs, and deliver a better customer experience.

Types of Inflight order changes
Order change requests typically originate from your customers for purchased products and
services or from internal personnel, such as order fulfillment agents, when they are managing
their fulfillment. When you submit an inflight order revision, you assign a change type to track
the types of order changes that are submitted by users. The ServiceNow AI Platform supports
Characteristic, Contact, Quantity, related items, and Price change types.
Order revision or cancellation is a two-step process. First, an operator makes the required
updates or requests that an order or order line item is to be canceled. Next, when the order is
created, an order fulfillment or service order manager approves the revision or cancellation
request.
Customer-initiated requests
Based on the types of customer requests, you update an inflight order to do the actions that are
listed in the following table.
Customer-driven order changes
Type of change

Example

Incorporate changes that are related to
contact details. These changes can include
an update, deletion, or addition of contact
information for an order line item for a product
or service in a location.

A customer supplies a new email address or
the name and telephone number of a new
corporate contact.

Incorporate changes that are related to pricing A customer requests a reduction to a nondetails.
recurring charge or a monthly recurring charge
on an order line item.
Add a product or service to an order.

A customer wants to add a new item to an
existing order.

Increase or decrease the quantity of order line A customer wants a higher or lower the
items in a product or service order.
quantity of an existing order.
Add, change, or cancel a product or service, or A customer wants to update the characteristic
product or service options, in a related domain value of a product or service that the customer
product or service order.
ordered at an earlier date. For example, the
customer wants to change the speed of an
internet service from 100 Mbps to 500 Mbps.
Incorporate changes that are applicable to the A customer wants to add or change an item
related items of a product or service order.
to an order that has horizontal relationships.
To learn more, see Horizontal relationships
between products.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1066


<!-- page 1067 -->
Fulfillment user-initiated requests
To expedite the completion of the order fulfillment process, the order fulfillment or service order
agents and managers often request changes to product, service, or resource orders. Based on
the types of internal requests, you update an inflight order to do the actions listed in the following
table.
Fulfillment-driven order changes
Type of change

Example

Incorporate changes that are related to
contact details. These changes can include
an update, deletion, or addition of contact
information for an order line item for a product
or service in a location.

A customer supplies information about a
new corporate contact person on a pending
delivery of an enterprise order.

Add, change, or cancel a product, including
product options, in a related domain product
order.

A customer orders a modem that is
incompatible with the higher-speed 500-Mbps
internet service that the customer ordered.
It requires replacement by another modem
model.

Add, change, or cancel the service domain
orders and product inventory.

A customer wants to change the
characteristics value of a product or service.
For example, the customers wants to change
the Firewall Security Service from Standard to
Basic.

Add, change, or cancel a service, including
service options, in a related domain service
order.

A customer wants to change the standard
warranty of 90 days to an extended service
policy.

Add, change, or cancel a resource, including
Revised installation instructions are available
resource options, in a related domain resource for a product that the customer ordered.
order.
Incorporate changes that are applicable to
the related items and product inventory of a
product or service order.

A customer wants to add or change an item
to an order that has horizontal relationships.
To learn more, see Horizontal relationships
between products.

Inflight Order Change processing
When a user or order fulfillment manager attempts to make any of these changes, the Inflight
Change Order function proceeds through a structured processing sequence as shown in the
following diagram.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1067


<!-- page 1068 -->
Inflight order change high-level approach

The sequence for inflight change order processing is as follows:
1. The Inflight Change Order function determines where in the processing cycle the order is. You
can only create inflight order revision and cancellation requests for orders that are in an In
Progress state.
2. The ServiceNow AI Platform then determines whether the proposed revision can safely be
made to the in-progress order. It evaluates the Point of No Return (PONR) status for the order
and its current stage in the fulfillment process.
The PONR flag represents the no or go point at which you can't change an order:
◦ You can make an inflight change only for order line items with an In Progress state.
◦ You can't make inflight changes for an order that has already been decomposed into its
domain product, service, or resource orders, and product installation has already started.

Note: You can find the PONR option when you are viewing or maintaining customer or
service orders in the Customer Order and Order Line Item forms.
3. After an operator makes the requested changes, this functionality evaluates the type of
change and its magnitude and impact on the fulfillment process as follows:
◦ Simple informational changes, such as contact data, may or may not impact the fulfillment as
configured in the orchestration plan.
◦ If the customer requests to delete an ordered product or service, the impact of the changes,
if permitted, would be greater, depending on its progress in the order fulfillment process.
4. The ServiceNow AI Platform then creates a compensation plan to trigger the tasks to fulfill the
revised scope of the order as follows:
◦ The compensation plan creates the automated revisions that are required to the fulfillment
workflow to adjust to the requested order changes.
◦ If the customer adds products or services to the order, the compensation plan generates
additional order tasks to handle the fulfillment of the newly ordered items.
◦ For a product substitution, the compensation plan generates an undo task to release the old
product or service and a redo task for assignment of the new product or service. After the old
product has been released, it can be sold to another customer.
◦ For a product characteristic change, the compensation plan undoes some tasks to revert the
work that is not applicable for a new characteristic value or option. The compensation plan
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1068


<!-- page 1069 -->
can also include a few tasks that are required for some of the completed tasks. There could
also be a few existing tasks that are unaffected by the revisions that were submitted as part
of the order revision.
5. A manager can then track the revised workflow. By using the Inflight Order Change functions,
your organization can gain the following benefits:
◦ Reduced manual intervention that is required to manage an inflight change order.
◦ Reduced time to create a revised plan for a change, which results in faster order fulfillment
cycles.

Inflight order change example
The following diagram shows the process where PONR occurs for order changes that were made
for an SD-WAN Service Package and its related products.
SD-WAN Service Package inflight change orders

For the top-level SD-WAN Service package, the PONR only occurs before the testing and turn up
stage. A customer or internal fulfillment personnel can't change the ordered item after that point.
For subordinate products, such as the SD-WAN Edge device, the order can be changed before
the Customer Premise Equipment (CPE) configuration completes. If CPE delivery is initiated but
doesn't complete, and a product substitution is requested, the Inflight Change Order function
can do the following actions:
• Generate an undo task for the original item.
• Generate a redo task for the replacement item.
• Create undo and redo tasks for the Prepare and build CPE configuration and Allocate and
Assign CPE tasks that are completed before revision. The Inflight Change Order function can
generate these undo and redo tasks because the CPE delivery task is not complete for the
replacement item.
After the CPE configuration is complete, no further changes are allowed in the order for that
device. This scenario also applies to the SD-WAN Controller and SD-WAN Security selections.
Key inflight order change and cancellation request fields
Learn how the ServiceNow AI Platform uses key fields in the Customer Order and Order Line
Item forms to track your order changes and cancellation requests. You can see how these fields
operate and what information they show you when you revise or request a cancellation of an
order, or order line items.

Point of no return (PONR)
The PONR (Point of No Return) option on the Customer Order and Order Line item forms
indicates the PONR state for the order or order line item. While fulfillment is in process, you can
use the PONR option to determine if you can revise or request cancellation of an order or an
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1069


<!-- page 1070 -->
order line item. You can only do these actions for orders and order line items that are in an In
Progress state and have yet to reach the PONR stage.

Note: The Revise Order and Cancel Order buttons are enabled only for order or order
line items in this state.
Learn what happens with the PONR option:
• If you select the PONR option, it indicates that you can't revise or request a cancellation for
the order or order line item while fulfillment is in progress. If any of the line items on an order
reaches PONR, you can't revise the other line items on the same order.
• If the check box is cleared, you can still revise or request a cancellation for the order or order
line item.

Note: The PONR option is a system-assigned flag that you can't manually update.
By using the SET PONR action in Workflow Studio, your administrator can manually
configure the PONR state in the fulfillment workflow. For example, in the demo data for the
SD-WAN Edge product specification workflow, the PONR action is available after the Initiate
CPE delivery task.

Version
A customer or service order can go through multiple revisions during its fulfillment cycle. The
Version field tracks the number of times that you revised or requested a cancellation of the order
or order line item during the fulfillment process. A new order without any revisions has a version
of 1 and automatically increments for each inflight revision.

Revision Operation
The Revision Operation field indicates the type of revision operation, if any, that is taking place
in the current version of the order or order line item. The types of revision are as follows:
None
No update or cancellation is taking place for the order or order line item. This
setting is the default for new orders and is applicable for orders without any Inflight
revisions.
Update
A Contact, Characteristic, Quantity, or Price inflight revision has been submitted for
the order or order line item.
Cancel
An order or order line item is canceled, or in the process of being canceled.

Change Type
When you submit an inflight order revision, the ServiceNow AI Platform automatically assigns a
change type for the tracking of the order changes that are submitted by users. Characteristic,
Contact, or Price types are standard in the ServiceNow AI Platform.
The change types are automatically assigned to the order or order line item when an order
fulfillment or service order agent makes the following types of changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1070


<!-- page 1071 -->
Assigned change types
Type of change made

Assigned change type

Changes any of the order characteristics.

Characteristic

Adds, changes, or deletes the order contact information.

Contact

Changes any price field.

Price

Changes made to the order line item quantity for a product or
service order.

Quantity

To learn more, see Order quantity support in Order
Management.
Changes made to the order line item quantity for a product or
service order due to the change in characteristic value.

Quantity mapping
characteristics

To learn more, see Order quantity support in Order
Management.
Changes made to the related order line items and related
product inventory for a product or service order.

Related items

Note: Your administrator can also define additional change types for tracking purposes.
The related Inflight Order Line Item Changes [sn_ind_tmt_orm_inflight_order_line_item_change]
table contains the following columns to track the revisions that were submitted for order line
items.
Inflight Order Line Item Changes table columns
Column

Description

Order Line item

Identifier for the changed order line item.

Order Line version

Latest change version for the order line item. It tracks the number
of times that you revised or requested a cancellation of the order
line item during the fulfillment process.

Change Type

Type of change performed on the order line item.
Characteristic
Change made to any of the characteristics on an
existing order line item.
Contact
Changes made to the contact information on an
existing order line item.
Price
Changes made to the pricing information on an
existing order line item.
Quantity
Changes made to the order line item quantity for a
product order.
Other change types

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1071


<!-- page 1072 -->
Inflight Order Line Item Changes table columns (continued)
Column

Description

Additional change type that is defined by your
administrator.
Updated by

Name of the person who updated the order line item.

Updated

Date and timestamp for the order line item change.

State when initiating and approving inflight order revisions
When you initiate, and then approve, inflight order revisions, the affected order, order line items,
domain orders, and order tasks go through different states.
When initiating an inflight order revision
To initiate an inflight order change, click Revise Order in the Customer Order form or in the Order
Line Item form. The following actions take place:
1. The customer or service order moves from an In Progress to a Revision in Progress state.
2. The associated order line items move from an In Progress state to a Revision in Progress state.
3. The associated product, service, and resource domain orders move from their current states to
an On Hold state.
4. The associated order tasks move to an On Hold state.
When approving an inflight order revision
To approve an inflight revision, an order fulfillment or service order manager clicks Approve in
the Customer Order form. The following actions take place:
1. The updated order and order line item information triggers the decomposition process as
follows:
◦ The decomposition process may create additional domain product, service, and resource
orders to incorporate the characteristic changes that were submitted as part of an inflight
order change.
◦ It may also cancel existing domain orders that are not relevant to the requested change. For
example, if a customer upgrades their purchased internet service to a higher speed, it would
create a domain order for a modem that supports the higher speed service. It then would
cancel the existing domain order for the modem that only supported lower speeds.
2. The customer or service order moves from a Revision in Progress state to an Acknowledged
state. When the order decomposition is complete, it then moves back to an In Process state.
3. The associated order line items move from a Revision in Progress state to an Acknowledged
state. When the order line item decomposition is complete, they then move back to an In
Process state.
4. The associated product, service, and resource domain orders change from an On Hold state
to a Scheduled state. The associated subflows change the state again during fulfillment
processing.
New domain orders may also be created, based on the revisions that were submitted by
the customers. They remain in either the Draft or the In Progress states, depending on the
configuration of the fulfillment flow for the parent domain order.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1072


<!-- page 1073 -->
5. The ServiceNow AI Platform refreshes the fulfillment flows for all the decomposed orders. The
ServiceNow AI Platform also reassesses all order tasks, depending on the sequencing of the
tasks in the corresponding fulfillment workflow. The associated order tasks then move to one of
the states that are listed in the following table:
Assigned order task states
State

Description

Scheduled

An order task moves to this state and remains there until
processed, as per the fulfillment workflow.

In Progress

If an order task was in an In Progress state at the time you initiated
the inflight order revision, it remains in this state. If the task requires
a re-execution to perform a redo or undo action, it can also move
from a Closed state to an In Process state.

Closed Complete

If an order task was in a Closed Complete state at the time you
initiated the inflight order revision, it stays in this state. It stays in
this state as long as the task isn't in an inflight configuration due
to other changes that were submitted as part of an inflight order
revision.

6. After the order decomposition is complete and the fulfillment flow restarts, order fulfillment
agents can go ahead and work on the associated order tasks to complete fulfillment.

State when initiating and approving order cancellation requests
When you initiate and approve an order cancellation request, the affected order, order line items,
domain orders, and order tasks go through different states during processing.
When initiating an order cancellation request
To initiate a cancellation request, you click Cancel Order in the Customer Order form, or Cancel
Order Line Item in the Order Line Item form. The following actions take place:
1. The order moves to an Assessing Cancellation state.
2. The associated order line items move to an Assessing Cancellation state.
3. The associated product, service, and resource domain orders move from their current states to
an On Hold state.
4. The associated order tasks move to an On Hold state.
When approving an order cancellation request
To approve an inflight revision or cancellation request, an order fulfillment or service order
manager clicks Approve in the Customer Order form. The following actions take place:
1. The decomposition process is triggered with the updated order and order line item
information.
2. The order moves from an Assessing Cancellation state to a Cancellation in Progress state.
3. The associated order line items move to a Cancellation in Progress state.
4. The associated domain product, service, and resource domain orders move from their current
state to an On Hold state.
5. The associated order tasks move to an On Hold state.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1073


<!-- page 1074 -->
Cancel orders
Cancel an inflight order, or order line item when a customer requests it or your internal personnel
determine an order cancellation is necessary.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order-fulfillment_agent, or
sn_ind_tmt_orm.order_fulfillment_manager

About this task

You can only cancel orders that are in the In progress state. You can delete orders or order line
items from orders that are in Draft or New states. To learn more, see Delete orders.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All or Service Orders > All to cancel a product or service order
respectively.
4. Select an order you want to cancel.

Note: If the PONR option is selected, the Cancel Order button is turned off because it is
too far along in the process to request a cancellation.
5. Select Cancel Order.
When you request an order cancellation, the following actions take place:
◦ The State field changes to Assessing Cancellation.
◦ The Version field increments to the next version number.
◦ The Revision Operation field is set to Cancel.
◦ Notification messages appear if there are any conditions that are preventing cancellation of
the order. A designated manager must approve the order cancellation.
6. In the customer order, make the required changes, and then click Save.

What to do next

A designated manager must approve the order cancellation. To learn more, see Review and
approve order revisions or cancellation requests.
Revise orders
Revise order line items to update product quantity for ongoing orders.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order-fulfillment_agent, or
sn_ind_tmt_orm.order_fulfillment_manager

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All or Service Orders > All to revise a product or service order
respectively.
4. Select an order you're working with.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1074


<!-- page 1075 -->
Note: If the PONR option is selected, the Revise item button is turned off because it is
too far along in the process to revise.
5. Select the line items you want to revise from the Line items tab.
6. Select Revise item on the confirmation pop-up that follows.
7. Make the required revisions to the order line item and select Update.
When you revise an order line item, the following actions take place:
◦ The State field changes to Revision in progress.
◦ The Version field increments to the next version number.
◦ The Revision Operation field is set to Update.
◦ If there are any associated order tasks, their state fields change to On Hold.

What to do next

A designated manager must approve the order revision. To learn more, see Review and approve
order revisions or cancellation requests.
Delete orders
Delete order or order line items if you no longer require them to be part of the order.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order-fulfillment_agent, or
sn_ind_tmt_orm.order_fulfillment_manager

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All or Service Orders > All to delete a product or service order
respectively.
4. Select an order or order line items you want to delete.

Note: If the PONR option is selected, the Cancel Order button is turned off because it is
too far along in the process to request a cancellation.
5. Select Delete from the More actions icon

.

Review and approve order revisions or cancellation requests
Review a customer or service order that has a pending revision or cancellation request so that
you can make sure that the order is correct and complete. You can also approve the order and
order line item revisions or cancellations requests.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order_fulfillment_manager,
sn_ind_tmt_orm.service_order_manage, sn_ind_tmt_orm.service_order_agent

About this task

When you approve a revised order, it enables it to continue in its modified state through the rest
of the fulfillment process. When you approve a cancellation request, it finalizes the cancellation
and prevents the order from continuing through fulfillment processing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1075


<!-- page 1076 -->
To learn more about how the states of orders change when you approve them, see Key inflight
order change and cancellation request fields.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select an order you want to revise.
5. Select the customer order or service order that you want to approve revisions or cancellation
requests for.
6. In the customer order or service order, review the revision or cancellation request, and then
click Save if you made any changes.
7. To formally approve the order revision or cancellation, click Approve.

Result

Orders with unapproved revisions have a Revision in Progress state. When you approve
them, their state changes to In Progress. Orders with unapproved cancellation requests have
an Assessing the Cancellation state. When you approve them, their order state changes to
Cancellation in Progress.

Order fulfillment
Learn about the order fulfillment process and tools available for monitoring and tracking order
tasks so your teams can fulfill orders efficiently, handle exceptions in a timely manner, and drive
customer satisfaction.

Order fulfillment process
Order fulfillment tasks are the actionable units that drive the completion of domain orders
(product, service, resource) in Order Management. For each domain order, a subflow is initiated
to coordinate its fulfillment. The specific subflow is selected using a decision table (Product/
Service/Resource Order Fulfilment Policy) based on the type of the domain order. This subflow is
responsible for defining order tasks and their dependencies, managing the state of the domain
order, and notifying SOM when the tasks are ready for tracking in Jeopardy Management. The
following illustration shows the how the fulfillment tasks are created, processed, managed, and
closed.
Order fulfillment workflow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1076


<!-- page 1077 -->
1. Task creation
◦ Order fulfillment tasks are automatically generated as part of the orchestration plan when an
order is approved and decomposed into domain orders.
◦ Each domain order (product, service, resource) can have multiple associated tasks, created
based on product specifications, decomposition rules, and subflow logic.
◦ Order tasks are created in parallel or in sequence, with dependencies managed via subflow
configuration.
2. Task assignment
◦ Tasks are automatically assigned to fulfillment agents or teams responsible for execution
using the orchestration logic. Fulfillment managers can manually reassign tasks as needed.
◦ SLA definitions and jeopardy management policies are linked to tasks to monitor progress
and flag delays.
3. Task execution
◦ Fulfillment agents perform the required actions for each task, such as provisioning,
configuration, shipment, or installation.
◦ Fulfillment managers track the progress of tasks and domain orders in real time using tools
like the timeline view and order orchestration UI, which provide visibility into task status,
dependencies, and risk indicators.
◦ Agents update task status, add notes, and resolve issues as they work through the fulfillment
steps.
4. Monitoring and exception handling
◦ Agents periodically monitor the progress of all fulfillment tasks and the overall order.
◦ If a task encounters an issue such as missing information, system error, or delay, it can be
escalated or flagged for jeopardy management.
◦ Notifications are sent to relevant stakeholders if tasks are delayed or require attention.
5. Task completion and closure
◦ After the required actions for a task are completed, agents update the task status to
Complete.
◦ Closing all tasks associated with a domain order triggers the closure of the domain order
itself.
6. Order closure
◦ When all fulfillment tasks and domain orders are closed, the overall order is marked as
complete.
◦ Final updates are made to the sold products or product inventory, and customer records as
needed.

Tools for tracking order fulfillment
Provide powerful tools to fulfillment agents and managers for monitoring and managing the entire
order fulfillment life cycle. The order timeline view and the order orchestration UI enables users
to track order line items, domain orders, and order tasks for any given order, all in a single, unified
workspace.
The timeline view offers a comprehensive, Gantt-style visualization of all order line items and
associated tasks for an order. Fulfillment agents and managers can see the current status
of each task, including jeopardy indicators that highlight at-risk items, estimated durations,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1077


<!-- page 1078 -->
and dependencies between tasks. This view allows users to quickly assess progress, identify
bottlenecks, and take proactive action to expedite fulfillment. By consolidating all relevant
information such as order lines, domain orders, and tasks into one interface, agents no longer
need to navigate multiple forms or lists, streamlining their workflow and improving operational
efficiency. To learn more, see View an order timeline.
The order orchestration UI provides a hierarchical, expandable view of how fulfillment tasks are
grouped and related by domain helping you to visualize how order line items, domain orders,
and order tasks are structured and interconnected. Fulfillment agents and managers can drill
down into specific domains or tasks, understand relationships and dependencies, and view
summary information such as duration and jeopardy status. The order orchestration UI displays
the dependencies between domain orders and order tasks, helping you understand which
tasks must be completed before others can begin. You can also view the current state of each
associated order line item, domain order, and order task within the hierarchy, making it easy
to identify progress, spot bottlenecks, and address issues proactively. This tool is especially
valuable for complex orders that span multiple domains, as it clarifies how tasks are sequenced
and coordinated. The orchestration UI complements the timeline view by offering deeper insight
into the structure and flow of fulfillment activities, empowering users to resolve issues and
optimize task execution without losing sight of the broader order context. For more information,
see Using the order orchestration UI.
Related topics
Manage work orders
View an order timeline
View Gantt chart timelines that display the status of a domain order and order tasks, show
dependencies between order tasks, and identify tasks that are in jeopardy.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order-fulfillment_agent,
sn_ind_tmt_orm.order_fulfillment_manager, sn_ind_tmt_orm.service_order_agent, or
sn_ind_tmt_orm.service_order_manager

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.ʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select the order that you want to view.
5. In the Order breakdowns section of the order, select View order timeline.
The Timeline tab opens and displays the order tasks for the order line items and columns
for the order task state and jeopardy status, if Jeopardy Management is enabled. Tasks in
jeopardy are flagged with the jeopardy icon. For each task, a timeline shows the start and end
dates of the task and any dependencies.
6. To change the information or elements displayed in the timeline view, use these options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1078


<!-- page 1079 -->
Option

Description

a. Select the gear icon
Add or change columns

.

b. In the Columns tab of the Personalize
pane, select the items to display or dese­
lect the items that are no longer displayed.
c. Select Apply.
a. Select the gear icon

Change the timeline elements displayed

.

b. In the Timeline tab of the Personalize pane,
select the items to display or suppress,
such as bar labels, child lines, domain or­
ders, critical path, or dependency lines.
c. Select Apply.
In the time scale drop-down, select the time
view, such as day, week month, or year.

Adjust the time scale used

The time scale for the Gantt charts changes
immediately.

Review an order orchestration plan
Track the progress of an order in the fulfillment process by reviewing the orchestration plan for
the order, its order line items, and domain product, service, or resource orders. By using the
order orchestration UI, you can easily identify and resolve any delays or fallouts so that you can
do the order fulfillment process more efficiently.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order-fulfillment_agent,
sn_ind_tmt_orm.order_fulfillment_manager, sn_ind_tmt_orm.service_order_manager

About this task

By using the order orchestration UI, you can perform the following actions:
• View a hierarchical visual representation of all order line items, domain orders, and order tasks
for the selected order.
• Open a node in the hierarchy and view the additional details.
• Determine the current state of the associated order line items, domain orders, and order tasks.
• Identify any order delays or fallouts in the order fulfillment process, and resolve them on time.
To learn more, see Using the order orchestration UI.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders.
◦ To view all customer orders, select All.
◦ To view only open, unfulfilled customer orders, select Open.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1079


<!-- page 1080 -->
4. Select an order you want to fulfill.
5. Access the order orchestration UI for a selected order, order line item, or domain order by
performing the respective task from the following table.
Task

Description

Review the orchestration plan for an entire
customer order

In the Customer Order form, under Order
breakdowns, select View order orchestra­
tion.

Review the orchestration plan for a cus­
tomer order line item

a. On the Order Details page, select an order
line item from the Line items tab.
b. Select the Order Orchestration tab.
To view the orchestration plan for a domain or­
der (product, service, or resource), perform
the following steps:
a. On the Order Details page, select an order
line item from the Line items tab.

Review the orchestration plan for a domain b. Navigate to the one of the following tabs for
order associated with a customer order line
which you want to view the orchestration
item
details:
▪ Product Orders
▪ Service Orders
▪ Resource Orders
c. Select the Order Orchestration tab.
6. On the order orchestration UI, review the visual representation of the order, including all
domain product, resource, service orders, order tasks, and their current states as described in
the following table.
Order orchestration details
Field

ORD

Description

Unique system-assigned number for the
customer order. Both customer orders and
service orders have an assigned ID with a
prefix of ORD.

Address, city, state

Orchestration plan hierarchy level that
represents the individual shipping locations
for the domain orders of an order line item.

Order line item

Orchestration plan hierarchy level that
contains the individual order line items that
are associated with each shipping location.
An order line item can also contain child line
items, which are shown in the order hierarchy.
Each order line item contains the following
elements:
Description

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1080


<!-- page 1081 -->
Field

Description

Description of the product or
service ordered on this line item.
Order line item identifier
System-assigned customer or
service order line item number.
Task overview
Overview of the total number of
domain orders and order tasks
that are associated with the
order line item that have been
fulfilled.
Domain orders and order tasks

Orchestration plan hierarchy level that
contains the individual domain orders and
order tasks for an order line item. A domain
order can also contain child domain orders,
which are shown in the order hierarchy. Each
domain order or order task contains the
following elements:
Type
Type of related transaction:
◦ Domain order - Product Order,
Service Order, or Resource
Order
◦ Order Task
Description
Description of the product or
service on this domain order or
order task.
Identifier
System-assigned domain
product or order task number.
State
Current state of the domain
product or order task. To learn
more, see:
◦ Customer order states
◦ Service order states

What to do next

Review and close fulfillment tasks
Related topics
View an order timeline

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1081


<!-- page 1082 -->
Review and close fulfillment tasks
Review and update the fulfillment tasks that are associated with an order, or order orchestration
plan, so that you can make sure that all tasks are properly completed.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order_fulfillment_manager, or
sn_ind_tmt_orm.service_order_manager (for service orders)

About this task

If you encounter issues with resolving or completing an order task, you can create fallout records.
Fallout records enable you to identify, investigate, and resolve order processing issues so that
orders can continue processing through to completion.
When you create a manual fallout record, or an automated one is generated, the following occurs
in the related order task:
• Its State field changes to On hold, with a comment on which logged-in user caused it to
change.
• In the Activity section, a work order note indicates that the order task state has changed
from its former state, usually In Progress, to On hold. A work order note with the message A
fallout record FOnnnn has been created also appears.
If you create a manual fallout record or an automated one is generated for the order tasks, you
can easily review and track all fallout records for a specific order. Use the Fallouts (n) tab (where
n is the number of fallouts) that appears when you view the related customer or service order in
the Customer Order form.
To learn more about order fallout, see Managing order fallout.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Order tasks.
◦ To view all open order tasks, select All.
◦ To view only the tasks that are assigned to you, select My order tasks.
4. Select the order task that you want to work on.
You can also directly access the task records for an order from the order orchestration UI. To
learn more about accessing the UI, see Order fulfillment.
5. For each order task, set the status by selecting an option from the State drop-down menu and
update the work notes, as required.
6. On the Order Task form, review the order task details and update as needed.
For information about the field descriptions, see Order Tasks form.
7. When you finish reviewing and updating the order task or encounter issues that are preventing
its closure, perform one of the actions from the following table.
Action

Description

Save the updated order task

Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1082


<!-- page 1083 -->
Action

Description

Delete the order task

Select Delete from the more options icon

.

Select Create Fallout from the more options
Create a fallout record

icon
. To learn more, see Create a manual
fallout record.

Result

After your agents complete all fulfillment tasks for the entire customer order, the following actions
occur:
• The State field for the customer order is automatically set to Completed.
• The State field for each of the individual customer order line items is set to Completed.
• Corresponding sold products or product inventory records are created depending on the
configuration.

What to do next

Create MACD orders directly from the sold products. For more information, see Request postsale change orders.
Creation of sold product and product inventory records
Learn how the Order Management application creates and maintains the customer product
and service inventory. By using this application, you can maintain an accurate inventory of your
customer products and services.

Customer product data record creation
Sold product records are created and added to the Sold Product [sn_install_base_sold_product]
table after an order line is marked as closed complete. Product inventory records are
created and added to the Product Inventory [sn_prd_invt_product_inventory] table after
an order is decomposed, completed, and fulfilled. Product inventory records are created
for products with specifications. Depending on how your admin has configured the
sn_ind_tmt_orm.enable_prod_invt_for_order_management system property, either sold products
or product inventory records are created. For more information, see Configure customer product
data management.
The Product Inventory table extends the Sold Product table. Only the items from the product
inventory are available for change, disconnect, suspend, or resume type orders.

New order workflow
The new order workflow is as follows:
1. After the fulfillment or service order manager approves the order, the product inventory record
is created. This record has placeholders for all the specifications that are generated after
decomposition. The associated models have an Installation Pending state.
2. During the fulfillment process, when the product, service, and resource orders are closed, the
state of the associated specification updates to Active in the product inventory record.
3. When you close the customer order, all the characteristics that are associated with the
specifications on the customer order update the record.

Change order workflow
The change order workflow is as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1083


<!-- page 1084 -->
1. After the fulfillment manager or service order approves the order, the state of the changed or
removed specifications are updated to Change Pending. The models that are associated with
the changed specifications are also updated to reflect the latest model that is generated due
to the change.
2. During the fulfillment process, when the product, service, and resource orders are closed, the
state of the associated specification updates to Active.
3. When you close the customer order, all the characteristics that are associated with the
specifications on the customer order update the record.
4. If the change order included a request to disconnect a product or service, the associated
product inventory record moves to an Inactive state after the order is complete.
You can create orders with action type as disconnect for product inventory records that are in
Active or Suspended states.
For suspend type orders, the end state is Suspended after the suspend workflow is completed.
Product inventory state changes from Active to Suspended after all tasks and jobs have
finished.
For resume type orders, the end state is Active after the resume workflow is completed.
Product inventory state changes from Suspended back to Active after all tasks and jobs have
finished.
Related topics
Customer Life Cycle Management Workflows
Managing post-fulfillment order changes
Request post-sale change orders
Horizontal relationships between products
By using a compatibility rule, you can define the horizontal relationships between your product,
service, and resource specifications.
When you create a product catalog, you can create a vertical relationship, which is the
relationship between your parent and child entities. As a product catalog manager, you can also
enable a horizontal relationship, which is a relationship between a product to product, product to
service, or product to resource, by defining compatibility rules in the product catalog.

Using a horizontal relationship
The compatibility rules include the horizontal relationships between your product, service,
and resource specifications. Your customers can place orders for enterprise products where a
product can depend on another product in the same or different product offering, like a sibling or
a peer.
Let's look at an example of a horizontal relationship, such as the relationship between the Voice
over Internet Protocol (VoIP) and an internet service. VoIP requires an active internet connection
but VoIP and an internet service are defined in a different product hierarchy. With a horizontal
relationship, you can define a relationship between VoIP and an internet service in the product
catalog to support the order creation process for VoIP and to fulfill the order.

Managing order fallout
Order fallout occurs when an order encounters an error in its normal fulfillment flow. Learn how
Fallout Management enables you to identify, investigate, and resolve order issues so that orders
can be processed to completion.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1084


<!-- page 1085 -->
Overview of order fallout
Order fallout refers to the failures that occur due to errors and exceptions that may take place
during order fulfillment. Fallout is a task-type object created to support scenarios where an order
fails to proceed. These exceptions include the following:
• Incorrect data
• Connectivity problems
• Inadequate inventory supply
• Other unforeseen issues
Some issues could originate in inbound and outbound external systems that integrate with Order
Management. A single order task can have multiple types of fallout issues.
The following table provides examples of fallout errors and exceptions that can occur during
order processing.
Fallout errors and exceptions
Type of failure

Description

Failures in downstream
fulfillment systems

Fulfillment system can't process the request due to incorrect
or missing data.

Failure to complete system
interaction in a timely manner

Timeouts that occur during system interactions.

Failure in connection
• Network connectivity issue.
• Unable to locate or route a request to a target system.
Unavailable inventory

Inventory stock isn't available in the Enterprise Resource
Planning (ERP system) to fulfill certain items on the order.

Fallout Management functions
With Fallout Management, you can track each order fallout and automatically trigger the actions
and interventions that can resolve your order fallout in a timely manner. The following diagram
shows the order fallout management flow.
Order Fallout Management flow

Fallout Management enables you to identify the orders in a failed state. Fallout tasks can be
triggered and automatically routed to the appropriate team to investigate, diagnose, and resolve
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1085


<!-- page 1086 -->
the underlying issue that is stopping order fulfillment. With Fallout Management, you can identify,
route, assign, manage, and monitor the entire life cycle of an order fallout.

Fallout Management tools
The Fallout Management function includes the following tools:
Order fallout tracking
With this tool, you can assign a unique number to each order fallout to track the
progress of the fallout, from inception through resolution. By using an Order Fallout
dashboard, a designated order fallout manager can view the status of all open
fallout records. To learn more, see Review a fallout record.
Fallout resolution
With this tool, you can use the ServiceNow AI Platform features such as routing,
notifications, and Workflow Studio to process order fulfillment exceptions in an
automated manner. To learn more, see Creating automated fallout records.
For example, your customer orders a router, but insufficient inventory quantities are available in
your ERP system to reserve the item and fulfill the order.
• You create a fallout record for tracking and investigative purposes. This record places the
customer order line item on hold.
• An order fulfillment agent can follow up to determine what is causing the shortage. It can be
due to the unavailability of the host ERP system or because of an actual stock outage for the
ordered item. If it's due to a stock outage, someone can take remedial action to contact the
customer, reorder the item, or find a suitable replacement.
After you resolve the issue, you can restore the customer order line item back to a normal state
for completion of the order.
Without a fallout management process, your order fulfillment personnel would have to analyze
and resolve these fallout issues manually. These additional tasks would result in a longer
fulfillment process and could lead to poor customer and employee experiences.
Creating automated fallout records
With Fallout Management, a provider can create automated fallout records for specific order
tasks so that your orders can continue processing through to completion.
To enable creation of automated fallout records, you configure an order fulfillment workflow in the
Workflow Studio.
• To do so, use the Create fallout action when defining processing scenarios and conditions.
• You can define workflows for the parent records that the order tasks originate from. Generally,
order tasks originate from the customer or service orders and order line items.
To learn more, see Flow Designer

.

You might encounter the following scenarios when you are attempting to fulfill customer and
service orders.

Scenarios of fallout failures with downstream systems
This fallout scenario could be a situation where failures are expected to be temporary and
resolved over time. Ideally, order processing should not be affected, and work should resume
after the network and system resources come back online. A typical scenario is as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1086


<!-- page 1087 -->
• The order task sends a request to an external or provisioning system.
• The response from the external system comes back as Timeout or Unable to reach.
You can requeue the task to be sent to the downstream system for processing, up to a
predefined number of times. If the error persists after the predefined number of times, you
should change the status of the order task to Failed, and then create an incident. You can define
a workflow that automatically creates a fallout record whenever you send or retrieve order data to
or from an external system that is not available.

Scenarios that involve data problems
If data problems originate with an order that you captured from an external order system, you
should revise the order there. You then submit the revised order to the Order Management for
Telecommunications, Media, and Technology application. If data problems originate with the
tasks that are executed earlier in the process, you can do the following actions:
• Create an exception from the order task.
• Enable the revision of the existing order.
• Create an order task.

Inventory availability issues
You can define a workflow that automatically creates fallout records whenever inventory
availability issues prevent the fulfillment of order line items.

External system issues
Even when the right data structure is submitted in an external system, errors can happen due to
the business logic that is implemented in the external system.
Create a manual fallout record
Create a fallout record manually for an order task that has a condition or issue that prevents it
from being completed.

Before you begin

Role required: sn_fallout_mgmt.fallout_manager

About this task

You can create manual records as needed basis so that you can raise awareness of an issue or
condition that is preventing order fulfillment. By creating a record manually, you can also assign it
to a person for resolution.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All or Service Orders > All.
4. Select and open an existing customer or service order.
5. To view the line item details, select Line Items where (n) represents the number of the total
number of line items for the order.
6. In the Order Line Items form, select the order line item that you want to review.
7. Select the Order Tasks tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1087


<!-- page 1088 -->
8. In the Order Tasks form, select the order tasks that you want to review.
9. When you finish updating the order task, or encounter issues preventing its closure, select the
more options icon
and then select Create Fallout).
10. On the form, fill in the fields.
For information about field descriptions, see the Create Fallout form fields section in Field
descriptions for Fallout Management.
11. Select Save.

Result

When you create a manual fallout record, or an automated one is generated, the following occurs
in the related order task:
• Its State field changes to On hold, with a comment on which logged-in user caused it to
change.
• In the Activity section, a work order note indicates that the order task state has changed
from its former state, usually In Progress, to On hold. A work order note with the message A
fallout record FOnnnn has been created also appears.
Related topics
Fallout Management data model
Flow Designer
Flows
Create a flow
Review a fallout record
Review a fallout record to make sure that the detailed information is correct and complete.

Before you begin

Role required: sn_fallout_mgmt.fallout_manager, sn_fallout_mgmt.fallout_agent

About this task

You select fallout records to review in CSM Configurable Workspace. You can also review and
track all fallout records for a specific order by using the Fallouts (n) icon where n is the number of
fallouts. This icon appears when you view the related fallout record.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Fallouts > All.
To view only those fallout records that are assigned to you, select My Fallouts.
4. Select the fallout record you want to view.
For information about field descriptions, see the Fallout workspace fields section in Fallout
form fields.
5. To view the associated order line item, select Open Context Record.

What to do next

Update a fallout record

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1088


<!-- page 1089 -->
Update a fallout record
Review the detailed information for a selected fallout record to verify that the information is
correct and complete. You can change the fallout type, state, or priority. You can even assign it to
a specific person to follow up on.

Before you begin

Role required: sn_fallout_mgmt.fallout_manager, sn_fallout_mgmt.fallout_agent

About this task

If you have a fallout agent role, you can change the state of the fallout records, create work notes
in them, or assign them to other users.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Fallouts > All.
To view only those fallout records that are assigned to you, select My Fallouts.
4. Select the fallout record you want to update.
5. On the Fallout form, update the required fields.
For information about field descriptions, see the Fallout workspace fields section in Fallout
form fields.
6. Select Save.
Resolve order fallouts
Learn how to close the order fallout tasks in Order Management so that you can progress with
order fulfillment.

Before you begin

Role required: sn_fallout_mgmt.fallout_manager, sn_fallout_mgmt.fallout_agent

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Fallouts > All.
To view only those fallout records that are assigned to you, select My Fallouts.
4. Select the fallout record you want to view.
For information about field descriptions, see the Fallout workspace fields section in Fallout
form fields.
5. Optional: Enter a work note to as you work with the fallout task.
6. Close the fallout task by selecting Closed complete from the State drop-down menu.
7. Select Save.

What to do next

After resolving a fallout task, review and close the order fulfillment task. For more information,
see Review and close fulfillment tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1089


<!-- page 1090 -->
Monitoring order jeopardy
Order managers and agents can monitor jeopardy-enabled fulfillment tasks. When a task enters
jeopardy, managers can take action to ensure the fulfillment workflow isn’t delayed.
When Jeopardy Management is added to fulfillment task flows, Jeopardy Management tracks
the time to complete tasks and creates a predictive assessment of the risk level to the fulfillment
plan. If a task is taking longer than the defined time, jeopardy alerts are shared.
The following table describes where you can view the jeopardy status.
View jeopardy status
Option

Description

In Jeopardy enabled order
forms, look for the Jeopardy
Level column

Look for jeopardy status in the Jeopardy Level column of the
order status form. Jeopardy levels include Low, Medium, High,
and Critical.

Order timeline view

1. Navigate to Customer Order > All and select an order
you're working with.
2. On the Order Details page, select View order timeline from
the Order breakdowns section.

Order orchestration view

Navigate to Customer Order > Order > Order Line Item >
Orchestration. Each Orchestration tile shows the task and
Service Level Agreements (SLA) progress.

SLA Definition Progress Bar

Navigate to Customer Order > Order > Order Line Item >
Task > SLA and view the status bar. The status bar shows the
SLA progress, for example:
• Green: SLA progressing on its time line.
• Red: Task is near the end of the critical percentage of

allotted time.

Managing post-fulfillment order changes
Efficiently handle a variety of post-fulfillment changes to maintain service quality and operational
accuracy after initial order fulfillment. These changes include canceling, suspending, resuming,
disconnecting, and modifying orders. Each change type has distinct workflows, dependencies,
and impacts on inventory and service states.
After an initial order is fulfilled, existing customers may want to disconnect, suspend, or resume
a product or service or change specifications or location for a product they’ve purchased. For
example, a customer might want to disconnect their current 4G connectivity and upgrade it to
5G connectivity. You can manage such requests by creating orders with action type as Change,
Move, Disconnect, Suspend, and Resume. For more information, see Action types for customer
and service orders.
When you change a product or service inventory record, the ServiceNow AI Platform creates
the order line items from the specifications that you have defined. In a change service order
inventory, the order line items are created only for your selected service inventories. If you select
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1090


<!-- page 1091 -->
inventories that are top-order parent items, the order line items are created only for the parent
items, not for the child order items. When the additional product is added to the change order,
an inventory record is created for the added product. The new inventory is mapped to the new
hierarchy.
When you’re canceling a product or service order inventory, the ServiceNow AI Platform creates
the order line items according to the specifications that you have defined. To cancel a product
order inventory record, if your selected inventories are top-order parent items, the order line
items are created for both the parent items and the child order items. If your selected inventories
are child-order items, the order line items are created only for the child items.
Validation is required to successfully create the move order. To complete the validation and
approve the move order, check the following:
• All the associated child line items of the move order must have the move operation selected as
true and the Order line action must have one of the actions Change or Add or Disconnect.
• All the associated child line items of the move order the service location must be the same.
• All the inventory associated with a product being moved must be available in the move order.
For
The process to capture post-sale modification requests is similar to order capture and fulfillment.
The high-level steps are as follows:
1. Create an order with the required action type.
2. Select product inventory items that you want to modify from the catalog.
3. Review and submit the order for approval.
4. Approve the order.
The order is decomposed and order tasks are created.
5. Fulfill the orders by closing the order tasks, domain orders, and work orders, if any.
You can also manage post-sale change requests from the customer accounts page, not only
for products and services sold to a customer, but also to contracts and entitlements associated
with the products and services. For more information about customer life cycle workflows, see
Customer Life Cycle Management Workflows .
Request post-sale change orders
Learn how to create orders for disconnecting, suspending, resuming products or services and
changing specifications, characteristics, or service location for orders after an initial order has
been fulfilled.

Before you begin

Role required: sn_ind_tmt_orm.order_agent, sn_ind_tmt_orm.service_order_agent, or
sn_ind_tmt_orm.service_order_manager

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All or Service Orders > All to create a product or service order
respectively.
4. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1091


<!-- page 1092 -->
5. On the form, fill in the fields.
Create a new Order form
Field

Description

Account

The customer account for which you want to create an order.

Consumer

The consumer for which you want to create an order.

Order Type

The type or order you want to create. The available options are:
◦ Product
◦ Service

Contact

The name of the contact for the order.

Order action

The available options include:
◦ Change - For changing product specifications or service location.
◦ Disconnect - For disconnecting an active product or service.
◦ Suspend - For suspending an active product or service.
◦ Resume - For resuming a disconnected or suspended product or
service.

Channel
partner

(Optional) The name of the organization selling a product or service.

Note: The fields displayed on the form change depending on whether you select
account or consumer.
6. Select Create.
The product catalog displays your available inventory which includes all the product or
services that are ordered by your customer and successfully fulfilled by you.
7. Select Manage for a product inventory item you want to manage.
8. For changing order quantity, specifications, or characteristics for a product offering, perform
the following steps.
a. On the Modify order page, review the product configurations and select Modify.
b. Using the product configurator, select the new product characteristics or specifications or
revise quantity.
c. Select Update.
Order line items are created with Order line action as Change.
9. For disconnecting, suspending, or resuming products or services, perform the following steps.
a. On the Modify order page, review the details and select one of the following options from the
Modify drop-down menu.

Option

Description

Disconnect

Disconnect an active or suspended product or service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1092


<!-- page 1093 -->
Option

Description

Suspend

Suspend an active product or service.

Resume

Resume a suspended product or service.

b. Enter suspension start and end dates for suspend requests and select Suspend.
If you do not specify a date, the suspension is effective immediately. For more information,
see Suspend and resume products and services.
10. Review the order lines by selecting the Order Line Items tab.
11. Verify the order details by selecting Review & Submit.
12. Select Submit to place the order.
The order state changes to New and is available for approval.
Related topics
Suspend and resume products and services
Move order
The move order helps agents to change the location for product inventory at the order line level.
The move order is triggered from the TMF 622 and 641 APIs.
When the action is Change and move operation is true. Two sets of domain orders and
composedof items are created with the action state Add and Change. The inventory hierarchies
present in change domain order are got replicated for add domain order. If the Order
Characteristics values are available for change domain order, it gets replicated for add domain
order.
The state of inventory for an add domain order becomes Installation pending.
The state of inventory for change domain order becomes Change pending.
If the move order is canceled for all the product inventory records before the PONR, then all the
product inventory records that are associated with the move order are changed to Active state
from Change Pending state.
For all the product inventory records that are in Activation pending state are moved to the
Inactive state, after cancellation is completed.
On successful completion of the order, the old inventory with state Change pending becomes
Inactive. The new inventory with state Activation pending becomes Active.
Suspend and resume products and services
You can use suspend and resume actions to temporarily suspend or inactivate your product and
service inventories. That way, you can capture a customer's suspend request and resume the
products and services later.

About suspend and resume actions
You can temporarily suspend or inactivate your product and service inventories. The suspend
and resume requests are managed as orders with the changes in the inventory of the product
and service orders during the order decomposition and fulfillment process. An order suspension
and resume action can occur immediately or at a future date.
With suspend and resume actions, you can do the following tasks:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1093


<!-- page 1094 -->
• Ingest and fulfill the suspend product and service orders.
• Ingest and fulfill the resume product and service orders for suspended inventories.
• Support future-dated suspend and resume orders by using a scheduler.
• Manage the product inventory state for suspend and resume scenarios.

How the Suspend and Resume actions work
The process for the suspend and resume actions is as follows:
1. A customer order of type Suspend or Resume is received in the order management system.
After reviewing the order details, a fulfillment manager approves the customer order.
2. When a customer order is approved, a new Product Inventory Operations
[sn_prd_invt_product_inventory_operations] table is created as a related list in the order
line items form. In case of scheduled scenario, as part of fulfillment process the state of the
product inventory operations record marks to Scheduled state for order line items.
3. A pre-configured scheduler tracks the Product Inventory Operations table to check for any
future scheduled date of the customer order:
◦ If your customer order contains order line items with a future date (a date value for the
committedDueDate field on the order line items form), the suspend or resume action
starts on the scheduled date.
◦ If your customer order doesn't include any date for the suspend or resume action, it starts
immediately at the time of closure of the orders.
4. At the time of order closure, the following changes occur:
◦ For a scheduled scenario, the scheduler picks up the record with a Scheduled state from
the Product Inventory Operations table on the scheduled date and marks the record state to
Completed. And the inventory state of the order line item is updated to Suspended for the
suspend action and to Active for the resume action in the product inventory table.
◦ For an immediate scenario, the state of the record in the Product Inventory Operations
table is updated to Completed. And the inventory state of the order line item is updated
to Suspended for the suspend action and to Active for the resume action in the product
inventory table.
5. The inventory state in the Product Inventory Operations table is updated to Canceled in the
following two scenarios:
◦ During the inflight changes or due to the cancellation of any order line items.
◦ The dates for both the suspend and resume operations are scheduled, but the date for the
resume operation is before the date of the suspend operation.

Additional validations and scenarios
When the order line items for the suspend or resume actions are combined with the change or
disconnect actions in a single order and the inventory state of any order line item is in a pending
state, the order approval fails. The reason is due to the approval validation for the change or
disconnect order.

Note: During the order approval for suspend or resume or no change actions, the product
inventory should not be in the Installation Pending state.
In the order creation process for the suspend or resume actions, the committedDueDate
field value on the order line item form can be a past date, present date, or a future date. If it's a
past or present date, the inventory state should be set as Active for the suspend action and set
as Suspended for the resume action.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1094


<!-- page 1095 -->
If the committedDueDate field value of the customer order line items is invalid (the date field
value exceeds the calendar date) for the suspend or resume action, it's then considered as an
immediate action.
In the suspend or resume type of customer orders, the parent order has precedence over a
child order. If the parent order is scheduled for an immediate suspend or resume action, but the
child order is scheduled for any future date, the entire inventory hierarchy is considered for the
immediate action.
If the top order line item for suspend or resume action is scheduled for a future date, the entire
inventory hierarchy is then considered for the suspend or resume action. Child order line items
are considered for suspend or resume action when they’re combined with a change or a nochange action.
For an inflight change of the suspend or resume type order, only Cancellation is supported. If
an order line item or the entire order gets canceled, the Product inventory Operations record is
marked as Canceled during the order fulfillment process. The state change doesn't occur for the
Product inventory record.
In the order creation process for the suspend or resume action, you can use the external
inventory ID in the payload instead of the system-generated ID for the inventory.

Managing service orders
Learn how to qualify and manage service orders, work with external product inventory, and
manage outbound requests.
External product inventory ID
You can use a product inventory ID from external Configure, Price, and Quote (CPQ) systems in
the Order Management application to complete the order fulfillment flow for various actions on
the product and service orders.

Overview of external product inventory ID
If you're using the Order Management application, you can use the enhanced TM Forum's Open
APIs to create, change, disconnect, suspend, and resume product and service orders. After the
order capture and fulfillment process, the system-generated IDs are created against the product
inventory records to manage any future requests on the inventory for different order action types.

Using an external ID
With the support of an external inventory ID, you can do the following tasks:
• Capture the external product inventory ID in the Order Management system through the
Product and Service Order APIs.
• Store the external inventory ID in a new table for new orders and associate them with the
product inventory records that were created after the order fulfillment. Also, update the ID
in the external product inventory table for any inflight revisions during the order fulfillment
process.
• Allow external CPQ or southbound systems to use the external inventory ID to submit, change,
disconnect, suspend, and resume orders on the product inventory in the order management
system.

Note: You can also map the external product inventory ID with the product inventory
record by using the Product Inventory Open API. For more information, see Product
Inventory Open API .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1095


<!-- page 1096 -->
Review the external product inventory details for a customer order
Review the external inventory details of the customer orders that you’ve received from the
external Configure, Price, and Quote (CPQ) system during the order capture process.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order_fulfillment_manager

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Customer Orders > All.
4. Select an order you want to view.
5. View the external product inventories that are currently associated with an order line item by
selecting the customer order line item.
6. Select the External product inventories tab.
7. On the form, review the fields values.

Note: To create a new external product inventory table, select New. On the Create New
External product inventory form, fill in the fields.
External product inventory form
Field

Description

Number

Unique system-assigned number of the
external inventory ID.

External product inventory ID

External product inventory ID from the CPQ
system.

Order line item

Order line item number against which the
external inventory ID is captured.

State

State of the external product inventory ID:
Valid
When the order was closed, the
state of the external product
inventory ID was updated to
Valid.
Invalid
During the inflight order
changes, the state of the
external product inventory ID
was updated to Invalid.

Note: The state of the external
inventory ID is updated after the order
fulfillment is complete (the order state is
Closed Complete).

8. Save or delete the product inventory details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1096


<!-- page 1097 -->
Action

Description

Save the external product inventory details

Select Save.

Delete the external product inventory de­
tails

Select the options icon ( ) next to the Save
button, and then select Delete.

Create outbound requests for service orders
As a provider, create an outbound request for the service orders. You can interact with the
external Service Order Management (SOM) or Technical Order Management (TOM) systems to
manage the end-to-end order fulfillment process.

Before you begin

Role required: sn_ind_tmt_orm.order_fulfilment_agent,
sn_ind_tmt_orm.order_fulfillment_manager, sn_ind_tmt_orm.service_order_agent,
sn_ind_tmt_orm.service_order_manager

About this task

The outbound requests are enabled through the bi-directional integration over a REST API
between Order Management for Telecommunications, Media, and Technology and the external
systems. To learn more, see .

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Service Orders > All.
4. Select a service order and open it.
5. Select Create Outbound Fulfillment Request.
6. Select OK on the Initiate Fulfillment Request pop-up window.
◦ A record with a new request ID is created in the Outbound Requests related tab with the
state as Not Applicable. The order agent can view the details of this new record in the Work
notes.
◦ If the request action is successful, the order agent updates the state of this new record to
Pending. If the request action is unsuccessful, the order agent deletes this new record. The
agent can reselect the UI action to reinitiate the outbound request.
◦ If the Service Order Outbound Policy decision table in the decision builder has identified the
configuration of the domain service order as hierarchical, records are also created for the
hierarchy of the individual service order with the same request ID. If it’s non-hierarchical, a
record is created only for the individual service order.

Note:
During any inflight order changes or order enrichment changes, the Updates available
field on the domain service order form gets a tick mark and the existing UI action label
changes to Revise Outbound Request. In this revised outbound request, the information
that is related to the changes in the domain service order is also sent to the external
systems.
7. Select the outbound request record to see the details of the received order response from the
external system as shown in the following table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1097


<!-- page 1098 -->
Outbound Request form
Field name

Description

Number

Unique system-assigned outbound request
number, starting with a prefix of FO.

State

State of the outbound request:
Not applicable
Created, but not in use yet.
Fulfilled
The service order fulfillment is
completed.
Pending
The service order has
encountered an error and is
waiting for a resolution.
Error
The service order has
encountered an error and is
waiting for a resolution.

Source record

Record from which the outbound fulfillment
request was triggered.

Table

Name of the table that is referenced in the
request context.

Request ID

Outbound request ID that is generated by the
Order Management for Telecommunications,
Media, and Technology application.

Orders for 5G sliced networks
A communication service provider (CSP) can define 5G services in the technical catalog and
manage the creation and fulfillment of these orders for a sliced network.

Network slicing
Network slicing refers to a method of partitioning a physical network into multiple, separate
networks. These separate networks are called slices.
By slicing a 5G network, a CSP can do the following tasks:
• Create and manage the slice templates with the required slice attributes in their product
catalog.
• Support slice specifications by using the slice templates to define the slice services.
• Support the ingestion of slice orders from external systems through the existing product order
API.
• Decompose the slice orders and trigger the fulfillment workflows for the decomposed orders.
• Trigger the southbound slice orders with southbound attributes toward southbound systems,
such as Network Slice Management Function (NSMF), by using the service order open API.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1098


<!-- page 1099 -->
How a slicing order is managed
A product catalog administrator creates templates in the product catalog by defining the
template characteristics and template characteristic options. When the product catalog
administrator is finished creating the templates, they publish it to the product catalog. With this
process, the product catalog administrator can create templates for the various types of slices
with the slice attributes and attribute values for the 5G network services.
Next, the product catalog administrator maps the slice templates with the various specification
categories. The product catalog administrator does the mapping by using the Template Selection
Policy decision table in the Decision Builder. The mapped templates are automatically filled in
the service specification form when a user selects a specification category. For a description of
the Service specifications form fields, see .

Note:
• If a specification category is mapped with multiple templates, the latest published
template is considered to be in the service specification.
• If a specification category is not mapped with any templates, the default categorytemplate mapping is considered to be in the service specification.
The product catalog manager then uses the templates to define the new specifications for the
5G services.
After the 5G service specifications are created, they can be used in the slice order creation
and fulfillment process. The 5G slice ordering process follows the existing order approval,
decomposition, and fulfillment process in the Order Management application.
Service qualification requests
Use the Technical Service Qualification API to evaluate a service request for feasibility and
availability before you submit an order for fulfillment in the Order Management application.

Service qualification request overview
If orders are submitted without feasibility checks, the order fulfillment process may be delayed
and lead to cancellations and order fallouts. When you make feasibility checks a part of the preordering process, the order fulfillment process is more efficient, and unnecessary delays can be
avoided.
Let's understand this with an example. A communication service provider wants a broadband
service at 3000 Main Street, Santa Clara, CA. As a part of the service delivery process, the
service provider determines the technical feasibility of whether a given service can be delivered
to their customers. This request then goes to the external inventory systems, which would do
a further feasibility check based on the capacity, resources, and other parameters and send a
response back to the order management system. The response regarding the qualified response
can vary, or if the qualification isn't met, alternate proposals could be provided.
The key capabilities of the Technical Service Qualification process are as follows:
• Confirm service availability before placing an order and meet customer expectation.
• Confirm service availability by sending technical service qualification requests.
• Process and coordinate technical service requests and responses with external inventory
systems via APIs.
• Aligned with the Service Qualification Management TMF 645 Open API.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1099


<!-- page 1100 -->
Use cases
The Technical Service Qualification process enables the service order managers to perform the
following activities:
• Support the creation of technical service qualification request via open TMF APIs so that
they can enable external systems to submit qualification request to ServiceNow system for
qualification process.
• Decompose service qualification request in to underlying services as per the product catalog
definition so that they can perform qualification for all underlying services to qualify the parent
service.
• Trigger service qualification requests for both parent and child services to external systems in
TFM-aligned standard so that they can support interoperability with external systems to get the
feasibility studies performed for service qualification request.

Qualification process
Customer orders that have the fulfillment type as Qualify are captured from third-party customer
order management systems through the Technical Service Qualification Open API . You can use
this API, which is a ServiceNow implementation of the TMF645 API, to request the qualification of
services for:
• One or more service specifications with characteristics.
For example, you can make a qualification request to check if Voice over IP (VoIP) and Access
Service with a download speed of 1 GBPS could be delivered at a specified address.
• Service specifications that use location information of an existing inventory.
For example, you can make a qualification request to check if VoIP and 4000 TV services can
be delivered at the same location of an existing and active Access Service.
• Upgrading or downgrading an existing service.
For example, you can make a qualification request to check if the download speed can be
upgraded to 500 Mbps for an existing Access Service.
Order fulfillment managers can review customer orders that are captured through this API and
confirm the availability of services before submitting requests for delivery. The requests are then
sent to the external inventory system for approval and the customer order is updated with the
result. The following diagram shows the various steps in this process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1100


<!-- page 1101 -->
Technical Service Qualification process

1. A qualification requester system sends a qualification request for a customer facing service
(CFS) into the ServiceNow Order Management system using the TM Forum Open API for
Service Qualification (TMF645).
An order is created in Order Management with order type as service and fulfillment type as
Qualify.
Order line items are automatically created based on the service specification relationship.
2. The system decomposes the order line items into resource facing domain orders (RFS) based
on catalog definition.
3. The Order Management system coordinates and processes the technical service qualification
request and returns the response to the external inventory system.
Review and approve service qualification requests
Review and approve customer orders captured through the Technical Service Qualification API.

Before you begin

Role required: sn_ind_tmt_orm.order_fulfilment_manager,
sn_ind_tmt_orm.order_fulfilment_agent, sn_ind_tmt_orm.service_order_manager,
sn_ind_tmt_orm.service_order_agent

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspaceʼ.
2. Select the List icon

.

3. Navigate to Service Orders > All.
4. Select an order with the Order type as Service and Fulfillment type as Qualify.
5. Select Approve.
The State field changes to In Progress and order decomposition occurs and service orders are
generated for each customer order line Item.

Note: During order decomposition, only service orders are created, resource orders are
not generated for service qualification requests.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1101


<!-- page 1102 -->
6. Navigate to the Line Items tab, select a parent line item in the list and select Qualify Order.

Note: The Qualify Order option is available only on the top order line items in the
hierarchy.
◦ The Result field is updated to Pending and the Process Qualification Request subflow
subflow is launched. After the subflow has been executed, depending on the response
from the external inventory system, the Customer Order Result field is updated to one of the
following:
▪ Qualified: Requested service is available.
▪ Alternate: Requested service is not available but an alternate proposal is available.
▪ Unqualified: Requested service and alternate proposals are not available.
▪ None: If any errors occur during the execution, the result is updated to None.
◦ The following business rules are invoked to derive the result:
▪ Update Line Item Qualification Result: Propagates result from domain order to order line
item.
▪ Update Qualification Result on Order: Propagates result from top order line items to the
customer order.
The Customer Order Result status is based on the status of the domain order and order line
items. If the order line items have different or mixed results, the Result status is derived as
follows:

Domain order

Order line item result

All domain orders are set to Qualified.

Qualified

All domain orders are set to Alternate.

Alternate

All domain orders are set to Unqualified

Unqualified

All domain orders are set to None

None

Top Order Line Item

Customer Order Result

All top order line items are set to Qualified.

Qualified

At least one top order line item is set
Alternate and no items are set to
Unqualified.

Alternate

At least one top order line item is set to
Unqualified

Unqualified

At least one top order line item is set to
None

None

Manually updating the qualification request
You can manually update the Result field in two ways:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1102


<!-- page 1103 -->
◦ Update the qualificationresultfield inn the api/sn_ord_qual_mgmt/
qualification/checkServiceQualification/processResult API for all the
order line items.
◦ Update the Result field on the Domain Order, Order Line Item, and top Order Line Item forms.
The Result field on the Customer Order is also updated.
Data model changes
The following forms have been updated to process service qualification requests:
◦ Customer order
▪ Result: Can be None, Qualified, Unqualified, Alternate, or Pending.
▪ Fulfillment code: Readonly field.
◦ Order line item
Result: Can be None, Qualified, Unqualified, Alternate, or Pending.
◦ Domain order
▪ Result: Can be None, Qualified, Unqualified, Alternate, or Pending.
▪ Unavailability reason
Process Qualification Request subflow
The Process Qualification Request subflow generates a qualification request based on the
customer order, sends the request to the third party inventory system, and executes the
integration request.

Generate a qualification request
In the first step of the subflow, a TMF-641 compatible payload to be sent to the inventory system
is generated. The serviceQualificationItem list in the payload consists of the service
order information, the hierarchy, and all the characteristics. A sample payload is shown in the
following example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1103


<!-- page 1104 -->
In this example, you can see that the serviceQualificationItem has multiple service
orders and you can also see the hierarchy or the parent and child relationships between them.

Execute integration request
This step launches the Order Qualification Request integration request type from the Spoke
selector. The payload information specified in the first step of the subflow and the top order line
item from the customer order are accepted as inputs. This information is then sent using an API
call to the third party inventory system and the response is received either synchronously or
asynchronously and Result field is updated in the customer order.
If the response is received asynchronously, the response should be passed to the Process
Qualification Response. Along with the result, if the response has additional information related
to alternate service proposal or eligibility unavailability reason, this information is updated for the
corresponding service order. A sample response is shown here:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1104


<!-- page 1105 -->
In this example response, the qualificationresult is set to Qualified for all the service
orders in the hierarchy and the final result is also set to Qualified.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1105


<!-- page 1106 -->
Edit the Order Qualification Request
Use the Order Qualification Request integration request type in the Order Management for
Telecommunications application to process the customer order qualification requests and
retrieve the results from the external inventory systems.

Before you begin

Role required: admin

About this task

The Order Qualification Request type is used to integrate order management with third-party
inventory systems. You can specify the following information:
• Integration request inputs: Inputs for the customer order qualification request which include
the top order line item and payload details.
• Integration request definition: Definition for the condition and the subflow that invokes the API
call to the third-party inventory system.

Procedure
1. Navigate to All > Spoke selector > Request type.
2. Click the Order Qualification Request integration request type.
In the Order Qualification Request integration request type page, you can see the Demo Order
Qualification Implementation request definition listed under the Integration request definitions
tab. This is a sample request definition that invokes the Demo Order Qualification (Mock
Response) subflow, simulates the response from a third-party inventory system, and updates
the qualification request.
You must add a new request definition, specify the conditions and create a subflow that you
can use to invoke the API call to the third-party inventory system. You can create one or more
request definitions depending on the number of external systems being used.
3. Click New to add a new request definition.

Note: To add a new request definition, you must be in the Order Management for
Telecommunications and Media scope.
4. Enter the name for the request definition and specify the conditions.
5. In the Request adapter field, select the subflow that will communicate with the third-party
system to update the customer order and click Submit.
◦ Each request type can have multiple request definitions. For example, if you have multiple
inventory systems or vendors, depending on the system you want to invoke, you can add
multiple request definitions for each system. You must create a separate spoke to interact
with each vendor or third-party system, create a flow within the spoke, and point the request
adapter to this flow.
◦ For more information on how to create a spoke, see Spokes . As shown in the demo
subflow, ensure that the response from the third-party system passed to the Process
Qualification Response block.
◦ When the Process Qualification Request subflow is invoked, the response from the thirdparty inventory system is received either synchronously or asynchronously, and the Result is
updated in the customer order.
Alternate proposal for service orders
Learn how you can provide alternate proposals if a service qualification isn't met.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1106


<!-- page 1107 -->
Qualification requests can be created for a service specification using information from existing
inventory. If the requested service with the specified characteristics or date is not available, an
alternate proposal may be provided. The alternate proposal can be similar to the requested one
or may be the same service but available on a different date.
When you receive an alternate qualification request and click Qualify Order in the top level
order line item form, the Result field is updated to Alternate and a list of alternate proposals are
listed in the Alternate proposals related list. A single service order can have multiple alternate
proposals. This list can also be manually updated by the service order agent.

Note: When you initiate a new qualification request is initiated and receive an alternate
proposal for a service order, any existing alternate proposal entries will be deleted before
new entries are created.
Navigate to the CSM/FSM Configurable Workspace, click a service order with Fulfilment type as
Qualify and select the Alternate proposal(s) tab.

Select the Number link to view the alternate proposal. It contains the following information:

Field name

Description

Number

Number of the alternate proposal.

Domain order

The domain order for which the alternate proposal is created.

Specification

The alternate service specification that has been proposed.

Available date

The date on which the alternate proposal will be available.

Order characteristics

The specification characteristics (in JSON format) provided as part of
the alternate proposal in the response from the inventory system.

Reviewing customer or partner accounts
Learn how your order entry and fulfillment agents, managers, and fulfillers can use the 360
View in the Order Management application to get a better perspective about the activity that is
associated with a customer's or partner's account.
As an order agent, manager, or fulfiller, you can use your customer's or partner's account
Information to gain a clear understanding of the contact, order, customer service, product
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1107


<!-- page 1108 -->
inventory, and installed base item activity for an account. With this information, you can track the
following types of information:
• How many service contracts have been created or renewed for the account.
• How many customer and service orders have been submitted by the customer, and what are
their current states of fulfillment.
• How many active requests or customer service cases the account has, and what are their
current states.
• What products and equipment the customer has ordered or has installed at their sites. By
using this information, your order agents can gain insights into what additional products or
services they can sell to the customer.

Note: To learn how to create new customer accounts, see Configure accounts and
contacts

in Customer Service Management (CSM).

Review an account using the 360 View
Review a customer or partner's account by using the 360 View in the Order Management
application. You can track the service contracts of your customers or partners. You can also view
customer and service orders, cases, products, and equipment to see how you can improve your
customer service.

Before you begin

Role required: order_approver, order_viewer, sn_ind_tmt_orm.order-fulfillment_agent,
sn_ind_tmt_orm.order_fulfillment_manager, sn_ind_tmt_orm.service_order_agent, or
sn_ind_tmt_orm.service_order_manager

Procedure
1. Navigate to All > Customer Order Management > Workspace > Configurable Workspace
Home.
2. From the Configurable Workspace Lists tab (
Accounts.

), select Customer, and then select

3. In the Accounts list, select a customer account.

Note: You can also access an existing customer account by selecting a customer
account link in the Account column of the Orders, Customer Orders, or Service Orders
lists in the Configurable Workspace Lists.
4. In the Account Information form, in the Customer Summary section, review the general
customer details for the selected account.
Account Information form - Customer Summary section
Field

Description

Account

Name of the customer or partner, and the
name of the primary contact for the account.
To view the details for the primary contact,
including the account, title, email, phone
numbers, and time zone, select the contact
name.

Contacts

Name of each contact for the account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1108


<!-- page 1109 -->
Field

Description

◦ To access the Customer Contacts form
so that you can view all contacts for the
account, select View All.
◦ To view the details for a contact when you
are in the Customer Contacts form, select
the contact name.
Contracts

Name of the contracts, if any, that are
associated with this account.
◦ To view the details for a contract, select the
contract number.
◦ To view all contracts for the account, select
View All.

5. In the Overview section, in the Customer Orders field, review the customer and service orders
for the selected account.
Account Information form - Customer Orders section
Field

Description

Customer Orders (n)

(n) represents the total number of customer
and service orders for this account.

Number

System-assigned identifying number for the
order.
◦ To access the Customer Order form and
view the order details for a customer order,
select the order number.
◦ To access the Service Order form and view
the order details for a service order, select
the order number.
◦ To access the Customer Orders form to
view all orders for the account, select View
All. To view the detailed information for an
order when you are in the Customer Orders
form, select the order number.

Order Type

Type of order:
Product
Order for a product that you sell.
Service
Order for a product that you sell.

Contact

Name of the customer contact that is
associated with the order. To view the details
for the contact, select the contact name.

State

State of the product or service order. To learn
more, see these two topics:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1109


<!-- page 1110 -->
Field

Description

◦ Customer order states
◦ Service order states.
6. In the Cases section, review the customer service cases, if any, for the selected account.
Account Information form - Cases section
Field

Description

Number

System-assigned identifying number for the
customer service case:
◦ To view the details for a customer service
case, select the case number.
◦ To view all the customer service cases for
the account, select View All.

Short description

Short description of the customer service
case.

Contact

Name of the customer contact that is
associated with the customer service case.
To view the details for the contact, select the
contact name.

State

State of the customer service case. To learn
more, see Case states .

7. In the Product Inventory section, review the product inventory items for the selected account.
Account Information form - Product Inventory section
Field

Description

Product Inventory (n)

(n) represents the total number of the product
inventory items that were ordered for this
account.

Number

System-assigned identifying number for the
product inventory item:
◦ To view the details for a product inventory
item, select the product inventory number.
◦ To view all the product inventory items for
the account, select View All.

Specification

Product specification that is associated
with the product inventory item. To view
the details for a specification, select the
specification number.

Location

Current location for the product inventory
item. (empty) denotes that the product
inventory item hasn’t yet been installed at the
customer site.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1110


