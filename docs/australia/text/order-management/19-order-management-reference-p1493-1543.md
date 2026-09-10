# Australia Sales Customer Relationship Management — Order Management reference

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1493–1543 of 1645

Sections: Order Management reference (p1493)

---

<!-- page 1493 -->
Boolean fields
Boolean field
Name

Options

Boolean

Labels for true and
false states

Appearance

Notes

Order Management reference
Reference topics provide additional information about Order Management.

Components installed with Order Management
Several types of components are installed with activation of the Order Management plugin,
including tables and user roles.

Roles installed
Role title [name]

Description

Contains roles

Order Fulfillment Agent

Views product order,
product order task,
service order, and
resource order. Can
edit some fields from
the tasks.

• sn_customerservice.case_viewer

[sn_ind_tmt_orm.order_fulfilment_agent]

• sn_tmt_core.outbound_request_read
• sn_ind_tmt_orm.fulfillment_writer

• sn_customerservice.csm_workspace_use

• sn_prd_invt.product_inventory_relationsh
• sn_sla_definition_read
• awa_agent
• sn_ind_tmt_orm.order_creator
• sn_fallout_mgmt.fallout_creator

• sn_prd_invt.product_inventory_relationsh

• sn_prd_invt.product_inventory_relationsh
• wm_basic

Views and edits
product order,
[sn_ind_tmt_orm.order_fulfilment_manager] product order task,
service order, and
resource order.

• sn_ind_tmt_orm.order_fulfilment_agent

Service Order Agent

• wm_basic

Order Fulfilment Manager

[sn_ind_tmt_orm.service_order_agent]

Views service order
and resource order.

• sn_ind_tmt_orm.order_approver

• sn_prd_invt.product_inventory_relationsh

• sn_prd_invt.product_inventory_relationsh
• awa_agent

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1493


<!-- page 1494 -->
Role title [name]

Description

Contains roles

Can edit some fields
from the tasks.

• sn_sla_definition_read
• sn_ind_tmt_orm.order_creator
• sn_tmt_core.outbound_request_read
• sn_ind_tmt_orm.fulfillment_writer

• sn_prd_invt.product_inventory_relationsh

• sn_prd_invt.product_inventory_relationsh
• sn_customerservice.case_viewer

• sn_customerservice.csm_workspace_use
• sn_fallout_mgmt.fallout_creator

Service Order Manager
[sn_ind_tmt_orm.service_order_manager]

Order Approver
[sn_ind_tmt_orm.order_approver]

Order Viewer
[sn_ind_tmt_orm.order_viewer]

Views and edits
service order and
resource order.

• sn_ind_tmt_orm.service_order_agent
• sn_ind_tmt_orm.order_approver

• sn_prd_invt.product_inventory_relationsh

Approves customer sn_ind_tmt_orm.order_viewer
orders in Order
Management for
Telecommunications.
This role is included
in the Order
Management
Business
Stakeholder role.
Views customer,
product, service,
and resource orders
and any related
order tasks in Order
Management for
Telecommunications.
This role is included
in the Order
Management
Business
Stakeholder role.

• sn_prd_invt.product_inventory_viewer

• sn_sales_agmt_core.sales_agreement_vie

• sn_customerservice.customer_data_viewe
• sn_prd_pm.product_catalog_viewer
• sn_bus_loc.ibl_viewer
• agent_workspace_user
• sn_bus_loc.ebl_viewer
• sn_csm_pricing.pricelist_viewer
• canvas_user

• sn_ord_qual_mgmt.alternate_proposal_re
• sn_ind_tmt_orm.fulfillment_viewer
• sn_tmt_core.inbound_queue_read

• sn_prd_invt.product_inventory_operation
• sn_service_org.customer_criteria_read
• sn_change_read

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1494


<!-- page 1495 -->
Role title [name]

Description

Contains roles

Fulfillment Writer

Granular role to
grant write access to
fulfillment tasks.

• sn_ind_tmt_orm.fulfillment_viewer

Reads, creates, and
updates access
to orders, order
line items, order
characteristic
values, and price
adjustments. Also,
reads order tasks,
product order,
service order, and
resource orders.

• sn_ind_tmt_orm.order_creator

Reads, writes, and
updates access for
Order tables.

• sn_ind_tmt_orm.order_agent

Creates orders. Use
this role to send
order via REST Web
Services.

• sn_ord_qual_mgmt.alternate_proposal_w

Creates orders. Use
this role to send
order via REST Web
Services.

• sn_prd_invt.product_inventory_operation

[sn_ind_tmt_orm.fulfillment_writer]

Order Agent
[sn_ind_tmt_orm.order_agent]

Order admin
[sn_ind_tmt_orm.order_admin]

Order Creator
[sn_ind_tmt_orm.order_creator]

Order Integrator
[sn_ind_tmt_orm.order_integrator]

• sn_tmt_core.outbound_request_write

• sn_customerservice.csm_workspace_use

• sn_customerservice.sn_customer_menu_

• sn_ind_tmt_orm.order_approver

• sn_ind_tmt_orm.order_viewer

• sn_ord_qual_mgmt.alternate_proposal_cr

• sn_tmt_core.inbound_queue_create
• sn_tmt_core.inbound_queue_create
• sn_tmt_core.outbound_request_write
• sn_ind_tmt_orm.order_creator

Tables installed
Table

Description

Order Line Related Items

Indicates associations between an order
line item and its related items or product
inventory.

[sn_ind_tmt_orm_order_line_related_items]

Inflight Order Line Item Change
[sn_ind_tmt_orm_inflight_order_line_item_change]

Tracks changes made to order lines items
whole the order is in progress.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1495


<!-- page 1496 -->
Table

Description

External product inventory

Tracks product inventory records
managed in external systems and linked
to order line items.

[sn_ind_tmt_orm_external_product_inventory]

Decomposition Rule
[sn_ind_tmt_orm_order_decomposition_rule]

External Sim Numbers
[sn_ind_tmt_orm_st_external_sim_numbers]
Order Line Item Contact
[sn_ind_tmt_orm_order_line_item_contact]
Resource Order
[sn_ind_tmt_orm_resource_order]
Order Characteristic
[sn_ind_tmt_orm_order_characteristic_value]

Pricing Adjustments
[sn_ind_tmt_orm_pricing_adjustment]

Mobile Order Task
[sn_ind_tmt_orm_mobile_order_task]
Customer Order Related Party
[sn_ind_tmt_orm_order_related_party]

Req Def Glide
[sn_ind_tmt_orm_req_def_glide]
Domain Order Related Items

Defines the rules used to break down an
order into smaller fulfillment tasks based
on characteristics and specification.
Stores Sim numbers managed in external
systems for use in order processing.

Stores contact details linked to a specific
order line item.

Represents resource level orders and their
associated tasks in the fulfillment process.

Represents the characteristics and
configurable attributes defined for an
order.
Tracks adjustments such as discounts or
surcharges applied to an order or order
line item.
Represents order tasks created for mobile
services or mobile related fulfillment.

Represents parties linked to a customer
order, such as organizations or
responsible entities.
Stores request definition data linked to
variables and dictionary entries in Glide.

[sn_ind_tmt_orm_domain_order_related_item]

Represents items linked to a domain
order, including related orders and
inventory.

Product Order

Represents customer product orders and
their associated fulfillment tasks.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1496


<!-- page 1497 -->
Table

Description

[sn_ind_tmt_orm_product_order]
Covered Product
[sn_ind_tmt_orm_covered_product]
Service Order

Represents products covered under an
order line, sold product, or install base.
Represents customer service orders and
their associated fulfillment tasks.

[sn_ind_tmt_orm_service_order]
Decomposition Trigger
[sn_ind_tmt_orm_decomposition_trigger]
Inflight Change Type
[sn_ind_tmt_orm_inflight_change_type]
Order Stage

Defines the conditions that initiate
decomposition of an order or order line.

Defines the types of changes that can be
applied to inflight orders or order lines.
Defines the stages an order goes through
in its life cycle.

[sn_ind_tmt_orm_order_stage]
Order To Project Relationship
[sn_ind_tmt_orm_order_line_rel_task]

Request Definition Characteristic
[sn_ind_tmt_orm_req_def_char]
Domain Order

Indicates the relationship between an
order and its associated project tasks or
records.
Defines the characteristics and attributes
associated with a request definition.

[sn_ind_tmt_orm_domain_order]

Represents a domain level order that
consolidates product, service, or resource
orders into fulfillment tasks.

Upgrade Inventory Job

Stores details of inventory upgrade jobs,
including specifications, payload, and
status.

[sn_ind_tmt_orm_upgrade_inventory_job]
Contract Product Offering

Indicates the relationship between a
contract and its associated product
[sn_ind_tmt_orm_contract_m2m_product_offering] offerings.
Customer Order
[sn_ind_tmt_orm_order]

Represents a customer’s order, including
account, billing, shipping, pricing, and
charge details.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1497


<!-- page 1498 -->
Table

Description

Order Line Item

Represents the individual items in a
customer order, including product, pricing,
quantity, and shipping details.

[sn_ind_tmt_orm_order_line_item]

Account Details form
The Accounts Details form enables you to create or review account details for a customer or for a
partner.

Field

Description

Name

Name of the enterprise or customer.

Number

Unique system-assigned account number,
starting with a prefix ACCT.

Primary Contact

Name of the primary contact person for the
account.

Parent Account

Name of the parent account, if any, for this
account.
• For example, if you are setting up an
account that is a national branch of a multinational corporation, the parent account is
the one for the multi-national corporation.
• If there isn't a parent account, leave this field
empty.

Registration Code

Registration code, if any, assigned to the
account.

Customer

Option that designates if this account is for a
customer.

Partner

Option that designates if this account is for a
business partner.

Website

URL of the website for this account, if any.

Phone

Primary phone number for the account.

Street

Street address for the account.

City

Name of the city for the account.

State / Province

Name of the US state or Canadian province for
the account.

Zip / Postal code

Zip or postal code for the account.

Country

Name of the city for the account.

Notes

Free form note text for the customer account.

Industry

Sector or market in which the account
operates.

Legal entity name

Registered business name.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1498


<!-- page 1499 -->
Field

Description

Business structure

Indicates the legal form of the organization
such as LLC or Corporation.

Assumed name

The trade name or DBA (Doing Business As)
used publicly.

Date of Incorporation

The date the business was legally formed.

Trademark

Registered brand or symbol associated with
the account.

Tax ID

Unique tax identification number for regulatory
purpose.

Email

Primary email address for account-related
communication.

Sales Owner

The internal contact responsible for managing
the account relationship.

Customer and Service order details forms
The Order details forms enable you to select, review, and modify captured customer or service
orders.
Order details page - Customer Order fields
The Orders details page - customer order section enables you to review and modify the general
details for a product or service order.

Field

Number

Description

Unique system-assigned customer order number.

Note: Both customer orders and service orders have
an assigned ID with a prefix of ORD. To learn more
about order types, see Order types in Sales Customer
Relationship Management.
Account
Contact

Name of the customer account.
Name of the contact for the order.

Channel partner

The name of the organization selling a product or service.

State

Indicator of the current processing state for the customer
order, including all of its associated line items.

Note: To view a comprehensive listing of customer order
states with detailed descriptions, see Customer Order
form states and Customer order states.
Priority

The priority of completing the order. The available options are:
• 1 - Critical
• 2- High

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1499


<!-- page 1500 -->
Field

Description

• 3 - Moderate
• 4 - Low
External purchase order

Order date
Order type

A unique identifier or reference number associated with a
purchase order issued to a third-party vendor outside the
organization to procure goods or services.
Date that you received the customer order.
Category that indicates the type of order.
Product
Product order: Customer is ordering a product.
Service
Service order: Request for the servicing of a
product or installation of a service.

Note: Like a captured service order, customer orders

have an ID with a prefix of ORD(nnn). The Order
Category field enables you to easily identify the type of
order.
Fulfillment type

Type of fulfillment action for the customer order.
Deliver
Deliver ordered items to the customer when you
fulfill the order.
Qualify
Check the feasibility of delivering the products
and services requested on the customer order.
Without actually activating or delivering the
products or services for the order, it usually
processes with a different set of tasks. If all
preceding tasks are complete, processing for the
associated product, service, or resource order
tasks can start.

Version

Revision Operation

Current version of the customer order. Indicates the number
of times that you revised the customer order during the
fulfillment process. A customer order for a product or service
can go through multiple revisions during its fulfillment cycle.
A new order without any revisions has a version of one, and
automatically increments for each inflight revision.
Type of revision operation, if any, that is taking place in the
current version of the customer order:
None

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1500


<!-- page 1501 -->
Field

Description

No update or cancellation is taking place for the
customer order. This setting is the default for new
customer orders.
Update
A Characteristic, Contact, or Price inflight revision
has been submitted for the customer order.
Cancel
A customer order is canceled or in the process of
being canceled.
Sales agreement

If you're using the Sales Agreement Management application
and one or more sales agreement were created by an
agent, this field shows the system-generated number for the
sales agreement linked to this account. The oldest active
agreement is auto-populated. You can manually select any
valid agreement from the list.

Existing contract

Reference to a previously established customer contract
when creating or modifying an order. Existing contracts helps
maintain a connection between the current order and the
original contract, enabling accurate tracking of changes,
renewals, or upsells. It facilitates scenarios where pricing or
quantity changes are made to existing contract lines. The
system can split line items based on effective start dates and
apply delta pricing logic accordingly.

PONR

Option that indicates if this order is past the Point of No Return.
• If selected, it indicates that you can't revise the order or
request a cancellation for it while the fulfillment process is in
progress.
◦ You can't select Revise Order or Cancel Order to attempt
to change the order line item or to request a cancellation
for it.
◦ If any of the order line items are designated as PONR, the
parent order is also designated as PONR. If the parent
order is designated as PONR, the associated line items
are also designated as PONR. If any of the line items on an
order reaches PONR, you can't revise the other line items
on the same order.
• If cleared, you can still revise the order or request a
cancellation for it.
The value for this option is a system-assigned flag that you
can't manually update.

Order details page - Pricing fields
The Orders details page - pricing section enables you to review and modify the pricing details for
a customer or service order.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1501


<!-- page 1502 -->
Field

Description

Order currency

Currency used to place the order. For example,
USD for US dollars.

Price list

The price list used for applying prices to the
items within your order.

Renewal adjustment basis

Pricing method applied during the renewal of
a service contract. It enables agents to specify
whether the renewal price should be based
on the current market rate or the previously
contracted rate. The available options are:
• List price: Renews the contract at the
current market price of the product or
service at the time of renewal.
• Contracted price: Renews the contract using
the original contract price, with optional
adjustments

Renewal adjustment type

Method used to adjust the renewal price
of a service contract when the value of the
Renewal adjustment basis field is set to
Contracted price. The available options are:
• Markup %: Increases the renewal price by a
specified percentage above the contracted
price.
• Markdown %: Decreases the renewal
price by a specified percentage below the
contracted price.
The field is disabled if the value of the
Renewal adjustment basis field is set to List
price.

Renewal adjustment value

The actual adjustment value. For example,
10%. If the contracted price is $100 and the
adjustment type is Markup % with a value of
10, the renewal price will be $110.
The field is disabled if the value of the
Renewal adjustment basis field is set to List
price.

Order details page - Totals fields
The Orders details page - totals section enables you to review the final total pricing details for a
customer or service order.

Field

Description

Total one time price

Aggregate cost of all non-recurring charges
associated with an order line item. These are

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1502


<!-- page 1503 -->
Field

Description

typically setup fees, installation charges, or
product costs that are billed once rather than
on a recurring basis.
Total monthly price

The sum of all monthly recurring charges
associated with the order.

Total annual price

The sum of all annual recurring charges
associated with the order.

Total amount

Aggregate cost of all charges, both, onetime and recurring, associated with the entire
order. It is a calculated field that reflects the
final payable amount after applying quantity,
pricing, and adjustments.

Total net new amount

The total value of newly added products or
services in a customer order that are not part
of a renewal or amendment. It helps quantify
the net new revenue generated from fresh
purchases.

Order details page - Dates fields
The Orders details page - totals section enables you to review the final total pricing details for a
customer or service order.

Field

Description

Expected start date

Planned start date for the order or contract. It
reflects when the service or product delivery is
intended to begin, based on initial scheduling
or customer expectations.

Expected end date

Planned completion date for the order or
contract. It helps in forecasting delivery
timelines and aligning internal resources
accordingly.

Actual start date

Real date when the order fulfillment or
contract execution began. This field is updated
once the first fulfillment activity or service
activation occurs.

Actual end date

Actual date when the order or contract
was completed or terminated. It is used for
performance tracking and SLA compliance
analysis.

Payment terms

Calendar days by which the buyer must pay
the full invoice amount from the invoice date.
The available options are:
• None: No payment terms apply.
• Net 30
• Net 45
• Net 60

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1503


<!-- page 1504 -->
Field

Description

• Net 90
• Due Upon Receipt: Payment is expected
immediately once the invoice is received by
the buyer.
Auto-renew contract

Option to set the automatic renewal of the
contract upon expiration.

Contract start date

Commencement date of the contract for
applying subscription pricing to an order.

Contract end date

Date when the contract for a subscription is
set to expire.

Term (months)

Shows the number of months the subscription
is valid based on the contract start and end
dates.

Related topics
Add subscription pricing to an order
Order details page - Address fields
The Orders details page - address section enables you to review and modify the billing and
shipping details for a customer or service order.

Field

Description

Shipping location

Designated site or facility where the order
should be delivered.

Shipping street

Street address of the shipping destination.

Shipping city

City where the order is to be delivered.

Shipping state / Province

State or province of the shipping address.

Shipping country

Country where the order is being shipped.

Shipping zip / Postal code

Postal or zip code for the shipping location.

Billing address same as shipping

Option to auto-populate the billing address
fields with shipping details.

Billing location

Site or office responsible for receiving and
processing the invoice.

Billing street

Street address for billing purposes.

Billing city

City associated with the billing address.

Billing state / Province

State or province of the billing address.

Billing country

Country where the invoice is sent.

Billing zip / Postal code

Postal or zip code for the billing location.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1504


<!-- page 1505 -->
Order details page - Notes fields
The Orders details page - notes section enables you to review and modify the additional details
for a customer or service order.
Notes fields
Field

Description

Special instructions

Optional, custom notes or directions related to the order.
These instructions are typically added during the ordering
or checkout process and are intended to provide additional
context or handling preferences for fulfillment agents.

Work notes

Free-form comment text for internal users.

Additional comments

Extra free-form internal comment text for the customer order.

Activity and attachment fields
Field

Comments

Work notes
Activity

Attachments

Description

Free-form comment text for the customer order that everyone,
including the customer, can see.
Free-form comment text for internal users.
Listing of the processing activities, and changes in field values,
that have taken place for the order and order line item. This
activity includes the messages that indicate the approval of the
order for processing and fulfillment.
File attachments for the customer or service order. Select
Select file to add the file as an attachment.

Customer and service order line items forms
The Order Line Items form enables you to select, review, and modify the captured customer or
service order line items.
Order Line items form - Details fields
The order line items form line item details section enables you to review and modify general
details for a customer or service order line item.

Field

Number

Order

Description

Unique system-assigned number of the order
line item with a prefix ORDL.
Unique system-assigned number for the
customer order. Both customer orders and

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1505


<!-- page 1506 -->
Field

Description

service orders have an assigned ID with a
prefix of ORD.
Product specification

Product specification that is associated with
the order line item.
This field is displayed if the Order type is
Product.

Service specification

Product model
Channel partner

State

Service specification that is associated with
the order line item. This field is displayed if the
Order type is Service.
Product offering purchased by the customer.
The name of the organization selling a product
or service.
Indicator of the current processing state
for this customer order line item. Unless
indicated, the service order manager manually
assigns the appropriate state to the service
order line item, depending on where it resides
in your processing and fulfillment cycle. To
view a listing of the state selections, select the
down arrow icon

.

Note: To view a comprehensive listing
of the customer order line item states
with detailed descriptions, see Order line
item form states.
For service order line item states, see Service
order states.
Priority

The priority of completing the order. The
available options are:
• 1 - Critical
• 2- High
• 3 - Moderate
• 4 - Low

PONR

Option that indicates if this order line item is
past the Point of No Return.
• If selected, it indicates that you can't revise
the order line item or request a cancellation
for it while the fulfillment process is in
progress.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1506


<!-- page 1507 -->
Field

Description

◦ You can't select Revise Order or Cancel
Order to attempt to change the order line
item or to request a cancellation for it.
◦ If any of the order line items are
designated as PONR, the parent order
is also designated as PONR. If the
parent order is designated as PONR, the
associated line items are also designated
as PONR. If any of the line items on an
order reaches PONR, you can't revise the
other line items on the same order.
• If cleared, you can still revise the order line
item or request a cancellation for it.
The value for this option is a system-assigned
flag that you can't manually update.
Order line action

Type of action that is taking place in the order
line item. The available options are:
• Add
• Change
• Disconnect
• Suspend
• Resume
• No change
For more information, see Action types for
customer and service orders.

Action reason

Account
Primary contact

Order type

Optional description briefly describing the
reason for selecting a specific order line
action.
Name of the customer account.
Name of the primary contact person for the
account.
Category that indicates the type of order line
item.
Product
Product order: Customer is
ordering a product.
Service

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1507


<!-- page 1508 -->
Field

Description

Service order: Request for
the servicing of a product or
installation of a service.

Note: Like a captured service order,
customer orders have an ID with a prefix
of ORD(nnn). The Order Category field
enables you to identify the type of order.
Service location

Parent line item

Ordered quantity
Version

Revision operation

The location or site at which a product needs
to be delivered, provisioned, or serviced.
Primary or top-level item in a hierarchical
structure of related line items. It represents
the main product or service being ordered,
while associated child line items represent
components, add-ons, or dependent services
linked to that parent.
Line item order quantity.
Current version of the customer order line
item. Indicates the number of times that you
revised the customer order line item during
the fulfillment process. A new order line item
without any revisions has a version of 1 (one)
and automatically increments for each inflight
revision.
Indicates the type of revision operation, if any,
that is taking place in the current version of the
customer order line item:
None
No update or cancellation is
taking place for the customer
order line item. This setting is the
default for new customer orders.
Update
A Characteristic, Contact, or
Price inflight revision has been
submitted for the customer order
line item.
Cancel
The customer order line item is
canceled or in the process of
being canceled.

Sales agreement line

If you're using the Sales Agreement
Management application and one or more
sales agreement were created by an agent,

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1508


<!-- page 1509 -->
Field

Description

this field shows the system-generated number
for the corresponding sales agreement line.
Existing contract

Reference to a previously established
customer contract when creating or modifying
an order. Existing contracts helps maintain
a connection between the current order
and the original contract, enabling accurate
tracking of changes, renewals, or upsells. It
facilitates scenarios where pricing or quantity
changes are made to existing contract lines.
The system can split line items based on
effective start dates and apply delta pricing
logic accordingly.

Contract Line type

Indicates the action taken on the contract line,
determined by the action type of order line.
For instance, 'New' for add orders and 'Amend'
for change orders. The available options are:
• No change
• New
• Upsell
• Amend
• Cancel
• Renew

Short Description

Short description of the purchased product
offering.

Order line items form - date fields
The Order Line Items form - dates section enables you to review and modify crucial date details
for a customer order line item.

Field

Description

Planned start date

Planned start date and time for the order line
item. It reflects when the product delivery is
intended to begin, based on initial scheduling
or customer expectations.

Planned end date

Planned completion date and time for the
order line item. It helps in forecasting delivery
timelines and aligning internal resources
accordingly.

Estimated start date

Projected date and time by which work on the
order line item is expected to begin.

Estimated end date

Projected date and time by which work on the
order line item is expected to conclude.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1509


<!-- page 1510 -->
Field

Description

Auto-renew contract

Option to set the automatic renewal of the
contract upon expiration.

Contract start date

Commencement date of the contract for
applying subscription pricing to an order.

Contract end date

Date when the contract for a subscription is
set to expire.

Term (months)

Shows the number of months the subscription
is valid based on the contract start and end
dates.

Actual start date

Timestamp when the order line fulfillment or
contract execution began. This field is updated
once the first fulfillment activity or service
activation occurs.

Actual end date

Timestamp when the order or contract
was completed or terminated. It is used for
performance tracking and SLA compliance
analysis.

Committed due date

Confirmed timestamp by which the which the
order line item is expected to be fulfilled or
delivered.

Effective date

Date on which the order line item becomes
active and its terms officially take effect.

Expiration date

Date after which the order line item is no
longer valid or active.

Order line items form - shipping address fields
The Order Line Items form - shipping address details section enables you to review and modify
the shipping details for a customer order line item.

Field

Description

Shipping location

Designated site or facility where the order line
item should be delivered.

Shipping street

Street address of the shipping destination.

Shipping city

City where the order line item is to be
delivered.

Shipping state / Province

State or province of the shipping address.

Shipping country

Country where the order line item is being
shipped.

Shipping zip / Postal code

Postal or zip code for the shipping location.

Order line items form - notes fields
The Order Line Items form - notes section enables you to review and modify the additional
details for a customer order line item.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1510


<!-- page 1511 -->
Field

Additional comments

Work notes

Comments / Work notes (Private)

Description

Additional free-form internal comment text for
the order line item.
Free-form internal work order text for the order
line item.
Free-form comment or private work note text:
• Select the comments icon
to enter the
comment text for the order line item so that
everyone, including the customer, can see.
Enter the comment text, and then select
Post Comments.
• Select the work notes (private) icon
to enter the work note text for internal
purposes only so that the customer can't
see it. Enter the work note text, and then
select Post Work notes (Private).

Activity

Listing of the processing activities, and
changes in field values, that have taken
place for the order and order line item. This
activity includes the messages that indicate
the approval of the order for processing and
fulfillment. To expand, collapse, or filter by
activity stream, do one of the following actions:
• Select the activity stream filter icon
to
filter by post types, field changes, or flagged
items.
• Select the search icon
to search the
required information in the activity stream.
• Select the sort descending icon
to sort
the activity from oldest to newest or select
the sort ascending icon
action.

Attachments

for the opposite

File attachments for the order line item. Select
Select file to add the file as an attachment.
Alternatively, drag a file from your system and
drop it into the Attachments pane.

Order line related items fields
The Order Line Related Items form enables you to review, create, and modify the related items for
a customer order line item.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1511


<!-- page 1512 -->
Field

Description

Number

Order line related item number.

Order line item

Order line item number.

Related order line item

Target order line item that the selected order
line item is associated with.

Specification

Specification name of the related product
inventory.

Related product inventory

Active product inventory that the selected
order line related item is associated with and
has a 'Requires' relationship.

Price adjustment fields
The Price Adjustments tab on the order line item details enables you to review and modify
manual price adjustments applied to an order line item.

Field

Description

Number

ID of the price adjustment record.

Name

Name specified while creating the price adjustment.

Sequence

The number of the pricing plan step used to generate the adjustment. It helps the
agent identify the order of operations for the pricing adjustments.

Adjustment Origin of the price adjustment.
source
• Auto: Adjustment applied automatically by pricing plan, and can be defined
using standard adjustment matrices or via extension points, such as,
PricingAdjustmentExtensionPoint.
• Manual: Manual adjustment made by agent.
Adjustment
type

• Markdown %
• Markdown amount
• Markup %
• Markup amount
• Price override

Price point

Setup by the admin in the Pricing Plan for the adjustment step. This could be the
List Price or Net Price.

Adjustment Percentage or absolute amount of adjustment that is applied to the price.
value
Quantity

Quantity of items in the order line.

Amount

Price adjustment amount.

Total
amount

Quantity multiplied by the amount.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1512


<!-- page 1513 -->
Field

Description

Unit
running
price

Price calculated with the adjustment amount from the specific pricing plan step.

Order Tasks form
The Order Task form enables you to review and update the fulfillment tasks that are associated
with the selected order.

Field

Number

Account

Description

System-assigned ID for the task, starting with a
prefix of TASK.
Name of the customer account.

Primary contact

Primary contact for the customer account.

Order line item

Order line item associated with the order task.

Parent

Parent product, service, or resource order
associated with the order task.

Short Description
State

Short description of the order task.
Current state for the order task. To view a
listing of selections, select the down arrow
icon:
Open
Processing for the order task is
open, and no processing is taking
place.
In Progress
Processing for the order task is
still in progress, or in fulfillment.
On hold
Order tasks that are on hold due
to issues or errors.
Scheduled
Order task scheduled for
processing.
Awaiting information
Order task that is stalled due to
the lack of information.
Resolved
Issues blocking the processing
of stalled order tasks have been
resolved.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1513


<!-- page 1514 -->
Field

Description

Closed Complete
Processing for the order task is
complete. It is a system-assigned
state.

Note: After your agents
complete all fulfillment
tasks for the order task, the
state is automatically set to
Closed Complete.
Canceled
Processing for the order task was
canceled.
Draft
Order task that is still being
created by the system or
manually.
Priority

The priority of the order task. The available
options are:
• None
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

Assignment group

The group of agents to which you want to
assign the order task.

Assigned to

Name of the agent who should be assigned to
the order task.

Short description

Optional description for the order task.

Additional comments (Customer visible)

Free-form work order text that your customers
can view.

Work notes (Private)

Activity

Free-form private work note text for the
product order. This work note text is for
internal purposes only, and the customer can't
see it. Enter the work note text, and then select
Post Work notes.
Activity stream section for viewing all
processing activities that have taken place for
the selected order task. It includes a message
that indicates that the order has been
approved for processing and fulfillment.To
expand, collapse, or filter by activity stream:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1514


<!-- page 1515 -->
Field

Description

• Select the activity stream filter icon
to
filter by post types, field changes, or flagged
items.
• Select the search icon
to search the
required information in the activity stream.
• Select the sort descending icon
to sort
the activity from oldest to newest or select
the sort ascending icon
action.
Attachments

for the opposite

File attachments for the order task. Select
Select file to add the file as an attachment.

Order Characteristics form
The Order Characteristics form enables you to review and modify order characteristics for a
customer or service order.

Field

Specification

Characteristic

Characteristic value

Characteristic option

Description

Specification that is associated with the order
characteristics.
Selected characteristic, for example, Data
Pack, for the order line item. To view and
update the characteristic details, select the
characteristic. These details include the
characteristic name, description, and input
type.
Value that you selected for the characteristic
option. For example, Unlimited, for the Data
Pack Unlimited option.
Name of the characteristic option. For
example, Unlimited, for the Data Pack
Unlimited option. To view and update the
characteristic option details, select the
characteristic option. These values include
the name of the characteristic option and the
associated characteristics.

Customer order states
Use the State fields on the customer order management forms to determine the current
processing state for the customer order and to perform certain types of customer order actions,
such as canceling a customer order.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1515


<!-- page 1516 -->
Customer Order form states
Use the State field on the customer order form to determine the current processing state for the
order, including all of its associated line items. You can also use it to perform certain types of
order actions, such as canceling an order. To learn more, see Managing post-fulfillment order
changes. The following flowchart illustrates how customer and service order state processing
works.
Customer and service order state processing

Customer order state

Description

Draft

Customer order that is still in the capture stage
or the manual entry of the customer order is
not complete.
The data capture phase is when an agent
is capturing an order or your instance is
capturing the full customer order details from
an API or through Service Bridge.

New

Customer order capture process is complete
and the entire order is awaiting approval by
the fulfillment manager. After the customer
order data capture completes, it automatically
moves to the New state.

Submitted

Customer order that the order agent has
submitted.

Enrichment in progress

Customer order for which the order
enrichment process is in progress.

Enrichment on hold

Customer order for which the order
enrichment process in on hold.

Acknowledged

Customer order that the fulfillment manager
approved for fulfillment processing.

Rejected

Customer order that the fulfillment manager
rejected for fulfillment processing.

In progress

Customer order that has been approved and is
being actively worked on.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1516


<!-- page 1517 -->
Customer order state

Description

Revision in progress

Customer order revision that is in process but
has not been approved.
As part of the Inflight Order Change functions,
when you are currently in the process of
updating the customer order, it moves to this
state.

Awaiting information

Customer order that is in process but awaiting
receipt of information from the customer
before any further fulfillment processing takes
place.

On hold

Customer order that is on hold. No further
fulfillment processing can take place until the
hold is removed.

Canceled

Customer order that the fulfillment manager
canceled. No further fulfillment processing can
take place.

Assessing cancellation

As part of the Inflight Order Change functions,
when a cancellation request is submitted for
the customer order, it moves to this state. A
cancellation request has been submitted for
the customer order.

Cancellation in progress

When the cancellation request is approved,
the customer order moves to this state.

Canceled

Customer order that the fulfillment manager
canceled. No further fulfillment processing can
take place.

Completed

All associated customer order line items are
complete.

Note: After your agents complete all
fulfillment tasks for the entire customer
order, the following actions occur:
• The State field for the customer order
is automatically set to Completed.
• The State field for each of the
individual customer order line items is
set to Completed.

Note: To learn more about Inflight Order Change functions and how they affect the
Revision in Process, Assessing Cancellation, Cancellation in Progress, and Canceled
customer order states, see the following:
• Managing inflight order changes and cancellation requests
• Key inflight order change and cancellation request fields

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1517


<!-- page 1518 -->
Order line item form states
Use the State field on the order line item form to determine the current processing state for an
individual customer order line item. You can also use it to perform certain types of customer
order actions, such as canceling a line item.

Customer order line item state

Description

Draft

Parent customer order that is still in the data
capture stage or the manual entry of the
customer order is not completed.
The data capture phase is when an agent
is creating and configuring order line items
or your instance is capturing full customer
order details from an API or through Service
Exchange. In this case, Draft is a systemassigned state. This state is assigned by the
system.

Submitted

Order line item of the customer order that the
order agent has submitted.

Enrichment in progress

Order line item of the customer order for which
the order enrichment process is in progress.

Enrichment on hold

Order line item of the customer order for which
the order enrichment process in on hold.

New

Data capture process for the parent customer
order that is complete and the customer order
line item is awaiting fulfillment approval by the
fulfillment manager. After the customer order
capture is complete, it automatically moves to
the New state.

Note: When you manually enter a
customer order and its order line items,
you can assign a Draft or New state,
based on your organization's published
procedures.
Acknowledged

Customer order line item that the fulfillment
manager approved for fulfillment processing.

Scheduled

Order line item that has successfully passed
all validations and approvals and is queued
for fulfillment. At this stage, orchestration
workflows can begin, ensuring that resources
are allocated and tasks are sequenced
correctly before actual provisioning starts.
This state acts as a control point to prevent
premature execution and provides visibility
that the item is ready for processing.

Rejected

Customer order line item that the fulfillment
manager rejected for fulfillment processing. No
further fulfillment processing can take place.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1518


<!-- page 1519 -->
Customer order line item state

Description

In progress

Customer order line item that is still in process
but not ready for fulfillment approval.

Revision in progress

Customer order line item revision that is in
process but has not been approved. To learn
more, see the following:
• Managing inflight order changes and
cancellation requests
• Key inflight order change and cancellation
request fields

Awaiting information

Customer order line item that is in process
but awaiting receipt of information from
the customer before any further fulfillment
processing takes place.

On hold

Customer order line item that is on hold. No
further fulfillment processing can take place
until the hold is removed.

Assessing cancellation

As part of the Inflight Order Change functions,
when a cancellation request is submitted for
the customer order line item, it moves to this
state. To learn more, see the following:
• Managing inflight order changes and
cancellation requests
• Key inflight order change and cancellation
request fields

Cancellation in progress

When the cancellation request is approved,
the customer order line item moves to this
state. To learn more, see the following:
• Managing inflight order changes and
cancellation requests
• Key inflight order change and cancellation
request fields

Canceled

Customer order line item that the fulfillment
manager canceled. No further fulfillment
processing can take place.

Completed

Customer order line item and all associated
domain orders and order tasks that are
complete.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1519


<!-- page 1520 -->
Customer order line item state

Description

Note: After your agents complete all
fulfillment tasks for the entire customer
order, the following actions occur:
• The State field for the customer order
is automatically set to Completed.
• The State field for each of the
individual customer order line items is
set to Completed.

Note: To learn more about Inflight Order Change functions and how they affect the
Revision in Process, Assessing Cancellation, Cancellation in Progress, and Canceled
customer order line item states, see the following:
• Managing inflight order changes and cancellation requests
• Key inflight order change and cancellation request fields

Product Order, Service Order, and Resource Order form states
Use the State fields on the Product Order, Service Order, and Resource Order forms to
determine the current processing state for a product order, service order, or resource order.

State

Description

Draft

New or waiting-to-start tasks that are assigned
to the product, service, or resource order.

Qualified

All required prerequisite tasks that are
complete. Processing for the product, service,
resource order, or its associated tasks can
start.

In progress

Product, service, or resource order processing
that is still in progress.

On hold

Product, service, or resource order processing
is on hold due to issues or inadequate
information required for processing the order.

Scheduled

Product, service, or resource order that has
successfully passed all validations and is
queued for fulfillment

Closed complete

Product, service, or resource order processing
that is completed.

Note: after your agents complete
all fulfillment tasks for the product,
service, or resource order, the state is
automatically set to Closed Complete.
Canceled

Product, service, or resource order processing
that was canceled.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1520


<!-- page 1521 -->
State

Description

Cancellation in progress

Product, service, or resource order that is in
the process of being cancelled.

Order Task form states
Use the State field on the Order Task form to determine the processing state for an order task. To
learn more, see Review and close fulfillment tasks.

Order task state

Description

Open

Processing for the order task that is open and
no processing is currently taking place.

In progress

Processing for the order task that is still in
progress or in fulfillment.

On hold

Order task that is on hold. No further fulfillment
processing can take place until the hold is
removed. If you created a fallout record for it,
the state of the order task changes to On Hold
until the person or group that is assigned to
the fallout record resolves the issue.

Scheduled
Awaiting information

Order task that is in process but awaiting
receipt of required information before any
further processing takes place.

Resolved

An order task that was previously on hold due
to an issue, which has now been resolved.

Closed Complete

Processing for the order task that is complete.
It is a system-assigned state.

Note: After your agents complete all
fulfillment tasks for the order task, the
state is automatically set to Closed
complete.
Canceled

Processing for the order task that was
canceled.

Draft

Order task that is still in the capture stage
or the manual entry of the order task is not
complete.

Service order states
Use the State fields on the Order Management forms to determine the current processing state
for the service order and to perform certain types of order actions, such as canceling an external
service order.
The following flowchart illustrates how customer and service order state processing works.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1521


<!-- page 1522 -->
Customer and service order state processing

Service Order form states
Use the State field on the Service Order form to determine the current processing state for the
service order, including all of its associated line items. You can also use it to perform certain
types of order actions, such as canceling a service order.

Service order state

Description

Draft

Service order that is still in the capture stage
or the manual entry of the service order is not
complete. The data capture phase is when
your instance is capturing full service order
details from the TMF641.

Note: The Service Order Open API
is a ServiceNow implementation of the
TMForum TMF641 Service Ordering
Open API specification. To learn more,
see Service Order Open API .
In this case, Draft is a system-assigned state.

Note: The Draft state also applies to
domain orders that are created by the
decomposition process. These orders
are awaiting additional information or for
their turn in the initiate order fulfillment
process.
New

Service order capture process that is complete
and the entire order is awaiting approval by
the service order manager. After the service
order data capture completes, it automatically
moves to the New state.

Submitted

Service order that the order agent has
submitted.

Enrichment in progress

Service order for which the order enrichment
process is in progress.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1522


<!-- page 1523 -->
Service order state

Description

Enrichment on hold

Service order for which the order enrichment
process in on hold.

Acknowledged

Service order that the service order manager
approved for fulfillment processing.

Rejected

Service order that the service order manager
rejected for fulfillment processing.

In progress

Service order that has been approved and is
being actively worked on. To learn more, see
Review and close fulfillment tasks.

Revision in progress

As part of the Inflight Order Change functions,
when you are currently in the process of
updating the service order, it moves to this
state.

Awaiting information

Service order that is in process but awaiting
receipt of information from the customer
before any further fulfillment processing takes
place.

On hold

Service order that is on hold. No further
fulfillment processing can take place until the
removal of the hold.

Assessing cancellation

Cancellation request that has been submitted
for the service order. As part of the Inflight
Order Change functions, when a cancellation
request is submitted for the service order, it
moves to this state.

Cancellation in progress

When the cancellation request is approved,
the service order moves to this state.

Canceled

Service order that the service order manager
canceled. No further fulfillment processing can
take place.

Completed

All associated service order line items are
complete.

Note: After your agents complete all
fulfillment tasks for the entire captured
service order, the following actions
occur:
• The State field for the captured
service order is automatically set to
Completed.
• The State field for each of the
individual captured service order line
items is set to Completed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1523


<!-- page 1524 -->
Note: To learn more about Inflight Order Change functions and how they affect the
Revision in Process, Assessing Cancellation, Cancellation in Progress, and Canceled
service order states, see
• Managing inflight order changes and cancellation requests
• Key inflight order change and cancellation request fields

Order Line Item form states
Use the State field on the Order Line Item form to determine the current processing state for an
individual service order line item. You can also use it to perform certain types of order actions,
such as canceling a line item.

Service order line item state

Description

Draft

Parent service order that is still in the data
capture stage or the manual entry of the order
is not complete.
The data capture phase is when your instance
is capturing full service order details from the
TMF641.
In this case, Draft is a system-assigned state.

Submitted

Order line item of the service order that the
order agent has submitted.

Enrichment in progress

Order line item of the service order for which
the order enrichment process is in progress.

Enrichment on hold

Order line item of the service order for which
the order enrichment process in on hold.

New

Data capture process for the parent service
order that is complete, and the service order
line item is awaiting fulfillment approval by the
service order manager. After the service order
capture is complete, it automatically moves to
the New state.

Note: When you manually enter a
service order and its order line items,
you can assign a Draft or New state,
based on your organization's published
procedures.
Acknowledged

Service order line item that the service order
manager approved for fulfillment processing.

Scheduled

Order line item that has successfully passed
all validations and approvals and is queued
for fulfillment. At this stage, orchestration
workflows can begin, ensuring that resources
are allocated and tasks are sequenced
correctly before actual provisioning starts.
This state acts as a control point to prevent

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1524


<!-- page 1525 -->
Service order line item state

Description

premature execution and provides visibility
that the item is ready for processing.
Rejected

Service order line item that the service order
manager rejected for fulfillment processing. No
further fulfillment processing can take place.

In progress

Service order line item that is still in process
but not ready for fulfillment approval.

Revision in progress

Service order line item revision that is in
process but has not been approved.
As part of the Inflight Order Change functions,
when you are currently in the process of
updating the parent service order or this
service order line item, it moves to this state.

Awaiting information

Service order line item that is in process
but awaiting receipt of information from
the customer before any further fulfillment
processing takes place.

On hold

Service order line item that is on hold. No
further fulfillment processing can take place
until the hold is removed.

Assessing cancellation

Cancellation request that has been submitted
for the service order line item.
As part of the Inflight Order Change functions,
when a cancellation request is submitted for
the service order line item, it moves to this
state.

Cancellation in progress

When the cancellation request is approved,
the service order line item moves to this state.

Canceled

Service order line item that the service order
manager canceled. No further fulfillment
processing can take place.

Completed

Service order line item and all associated and
external service order tasks that are complete.
It is a system-assigned state.

Note: After your agents complete all
fulfillment tasks for the entire product,
service, or resource order, the state is
automatically set to Closed Complete.

Note: To learn more about Inflight Order Change functions and how they affect the
Revision in Process, Assessing Cancellation, Cancellation in Progress, and Canceled
service order line item states, see
• Managing inflight order changes and cancellation requests
• Key inflight order change and cancellation request fields
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1525


<!-- page 1526 -->
Order task form states
Use the State field on the Order Task form to determine the processing state for an order task.

Order task state

Description

Open

Processing for the order task that is open and
no processing is currently taking place.

In progress

Processing for the order task that is still in
progress or in fulfillment.

On hold

Order task that is on hold. No further fulfillment
processing can take place until the hold is
removed. If you created a fallout record for it,
the state of the order task changes to On Hold
until the person or group that is assigned to
the fallout record resolves the issue.

Scheduled
Awaiting information

Order task that is in process but awaiting
receipt of required information before any
further processing takes place.

Resolved

An order task that was previously on hold due
to an issue, which has now been resolved.

Closed Complete

Processing for the order task that is complete.
It is a system-assigned state.

Note: After your agents complete all
fulfillment tasks for the order task, the
state is automatically set to Closed
complete.
Canceled

Processing for the order task that was
canceled.

Draft

Order task that is still in the capture stage
or the manual entry of the order task is not
complete.

Create records from inbound queue table async form
The Create records from inbound queue table async scheduled job form enables you to
configure a scheduled job for asynchronous order processing.

Field

Description

Name

Name of the scheduled job.

Next action

Timestamp of the next job action.

Calendar

Time window during which the scheduled job
can run. The calendar restricts job execution
to a defined schedule, such as business
hours. If an order is submitted outside the

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1526


<!-- page 1527 -->
Field

Description

active window, the job will not process it until
the next scheduled period.
Job ID

This value must be set to RunScriptJob.

State

State of the scheduler job. The available
options are:
• Error
• Paused
• Permanent error
• Queued
• Ready
• Running

System ID

Active nodes of the ServiceNow instance.

Job context

Context of the scheduled job.

Trigger type

Determines when and how often the
scheduled job runs. The selected trigger type
controls the additional scheduling fields that
appear on the form. The available options are:
• None
• Daily
• Day and Month in Year
• Day in Month
• Day in Week in Month in Year
• Days in Week
• Disabled
• Interval
• Repeat
• Run at System Startup
• Run Once
• Week in Month
• Business Calendar: Entry Start
• Business Calendar: Entry End

Repeat

Details of the time interval.

Time zone

Time zone in which you're operating your
business.

Related topics
Configure a scheduled job for asynchronous order creation

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1527


<!-- page 1528 -->
Inbound request states
An inbound request transitions through a series of states as ServiceNow AI Platform processes
the asynchronous order received via an API.

Field

Description

New

The inbound request has been received via API and is waiting to be picked up by
the scheduled job.

In
progress

The scheduled job has picked up the inbound request and is processing the
order.

Completed The order was created successfully.
Error

An error occurred while creating the order. The inbound request exits the
processing cycle.

Pending

The inbound request is waiting for a condition to be met before processing can
continue.

Related topics
Asynchronous order processing for large customer and consumer orders

Domain order forms
The domain order forms enable you to review and modify the domain product orders, service
orders, and resource orders for a selected customer or service order.
Related topics
View domain orders
Order types in Sales Customer Relationship Management
Product Order form fields
The Product Order form enables you to review and modify the domain product orders that are
associated with a selected customer order.

Field

Number

Priority

Description

Unique system-assigned product order
number starting with a prefix PO.
The priority of the product order. The available
options are:
• None
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

Account

Name of the customer account.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1528


<!-- page 1529 -->
Field

Primary contact

Description

Name of the primary contact person for the
account.

Order line Item

Unique system-assigned order line item
number associated with the domain product
order.

Location

Customer's site or location where the product
must be delivered.

State

Current state for the product order. To view
a listing of selections, select the down arrow
icon

:

Draft
Product, service, or resource that
has assigned new or waiting-tostart tasks.
Qualified
All required prerequisite tasks
that are complete. Processing for
the product, service, resource
order, or its associated tasks can
start.
On hold
Stalled product, service, or
resource orders due to issues or
errors.
Scheduled
Product, service, or resource
orders that are scheduled for
processing.
In Progress
Product, service, or resource
order processing that is still in
progress.
Closed Complete
Product, service, or resource
order processing that is
complete. It is a system-assigned
state.

Note: After your agents
complete all fulfillment
tasks for the entire product,
service, or resource order,
the state is automatically set
to Closed Complete.
Canceled
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1529


<!-- page 1530 -->
Field

Description

Product, service, or resource
order processing that was
canceled.
Cancellation in progress
Indicates that a product, service,
or resource order is being
cancelled.
Action

Indicator of the order line item action type,
such as Add, Disconnect, Suspend.

Product inventory

Associated Product inventory record.

Assignment group

Assigned to

Parent

Record version

Short description

Description

Additional comments (Customer visible)
Work notes (Private)

Activity

Name of the group that the product order is
assigned to for completion of any remaining
work.
Name of the person that the remaining work is
assigned to.
Parent product order, if any, to this product
order.
Version of the product order record. If the
product order is revised, the version number is
incremented.
Optional brief description for the product
order.
Optional extended description for the product
order.
Free-form product order text that your
customers can view.
Free-form private work note text for the
product order. This work note text is for
internal purposes only, and the customer can't
see it. Enter the work note text, and then select
Post Work notes.
Activity stream section for viewing that all the
processing activities and changes in field
values have taken place for the product order.
To expand, collapse, or filter by activity stream:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1530


<!-- page 1531 -->
Field

Description

• Select the activity stream filter icon
to
filter by post types, field changes, or flagged
items.
• Select the search icon
to search the
required information in the activity stream.
• Select the sort descending icon
to sort
the activity from oldest to newest or select
the sort ascending icon
action.
Attachments

for the opposite

File attachments for the product order. Select
Select file to add the file as an attachment.

Service Order form fields
The Service Order form enables you to review and modify domain service orders that are
associated with a selected customer order.

Field

Number

Priority

Description

Unique system-assigned service order
number starting with the prefix SO.
The priority of the service order. The available
options are:
• None
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

Account
Primary contact

Name of the customer account.
Name of the primary contact person for the
account.

Order line Item

Unique system-assigned order line item
number associated with the domain service
order.

Location

Customer's site or location where the product
or service must be delivered.

State

Current state for the service order. To view a
listing of selections, select the down arrow
icon

:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1531


<!-- page 1532 -->
Field

Description

Draft
Product, service, or resource that
has assigned new or waiting-tostart tasks.
Qualified
All required prerequisite tasks
that are complete. Processing for
the product, service, resource
order, or its associated tasks can
start.
On hold
Stalled product, service, or
resource orders due to issues or
errors.
Scheduled
Product, service, or resource
orders that are scheduled for
processing.
In Progress
Product, service, or resource
order processing that is still in
progress.
Closed Complete
Product, service, or resource
order processing that is
complete. It is a system-assigned
state.

Note: After your agents
complete all fulfillment
tasks for the entire product,
service, or resource order,
the state is automatically set
to Closed Complete.
Canceled
Product, service, or resource
order processing that was
canceled.
Cancellation in progress
Indicates that a product, service,
or resource order is being
cancelled.
Action

Indicator of the order line item action type,
such as Add, Disconnect, Suspend.

Product inventory

Associated Product inventory record.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1532


<!-- page 1533 -->
Field

Assignment group

Assigned to

Parent

Record version

Short description
Description

Additional comments (Customer visible)
Work notes (Private)

Activity

Description

Name of the group that the service order is
assigned to for completion of any remaining
work.
Name of the person that the remaining work is
assigned to.
Parent service order, if any, to this service
order.
Version of the product order record. If the
product order is revised, the version number is
incremented.
Optional brief description for the service order.
Optional extended description for the service
order.
Free-form product order text that your
customers can view.
Free-form private work note text for the
product order. This work note text is for
internal purposes only, and the customer can't
see it. Enter the work note text, and then select
Post Work notes.
Activity stream section for viewing all
processing activities that have taken place to
date for the service order. This listing has the
processing activities and changes in the field
values that have taken place for the service
order. To expand, collapse, or filter by activity
stream:
• Select the activity stream filter icon
to
filter by post types, field changes, or flagged
items.
• Select the search icon
to search the
required information in the activity stream.
• Select the sort descending icon
to sort
the activity from oldest to newest or select
the sort ascending icon
action.

for the opposite

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1533


<!-- page 1534 -->
Field

Attachments

Description

File attachments for the service order. Select
Browse to add the file as an attachment.

Resource Order form fields
The Resource Order form enables you to review and modify domain resource orders associated
with a selected customer order.

Field

Number

Priority

Description

Unique system-assigned resource order
number starting with the prefix RO.
The priority of the service order. The available
options are:
• None
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

Account
Contact

Name of the customer account.
Name of the primary contact person for the
account.

Order line item

Unique system-assigned order line item
number associated with the domain resource
order.

Location

Customer's site or location where the product
or service must be delivered.

State

Current state for the resource order. To view
a listing of selections, select the down arrow
icon

:

Draft
Product, service, or resource that
has assigned new or waiting-tostart tasks.
Qualified
All required prerequisite tasks
that are complete. Processing for
the product, service, resource
order, or its associated tasks can
start.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1534


<!-- page 1535 -->
Field

Description

On hold
Stalled product, service, or
resource orders due to issues or
errors.
Scheduled
Product, service, or resource
orders that are scheduled for
processing.
In Progress
Product, service, or resource
order processing that is still in
progress.
Closed Complete
Product, service, or resource
order processing that is
complete. It is a system-assigned
state.

Note: After your agents
complete all fulfillment
tasks for the entire product,
service, or resource order,
the state is automatically set
to Closed Complete.
Canceled
Product, service, or resource
order processing that was
canceled.
Cancellation in progress
Indicates that a product, service,
or resource order is being
cancelled.
Action

Indicator of the order line item action type,
such as Add, Disconnect, Suspend.

Product inventory

Associated Product inventory record.

Assignment group

Assigned to

Parent

Name of the group to which the resource order
is assigned for completion of any remaining
work.
Name of the person that the remaining work is
assigned to.
Parent resource order, if any, to this resource
order.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1535


<!-- page 1536 -->
Field

Description

Record version

Version of the product order record. If the
product order is revised, the version number is
incremented.

Short description

Description

Additional comments (Customer visible)
Work notes (Private)

Activity

Optional brief description for the resource
order.
Optional extended description for the
resource order.
Free-form product order text that your
customers can view.
Free-form private work note text for the
product order. This work note text is for
internal purposes only, and the customer can't
see it. Enter the work note text, and then select
Post Work notes.
Activity stream section for viewing all
processing activities and changes in the field
values that have taken place for the resource
order. To expand, collapse, or filter by activity
stream:
• Select the activity stream filter icon
to
filter by post types, field changes, or flagged
items.
• Select the search icon
to search the
required information in the activity stream.
• Select the sort descending icon
to sort
the activity from oldest to newest or select
the sort ascending icon
action.

Attachments

for the opposite

File attachments for the resource order. Select
Select file to add the file as an attachment.

Components installed Fallout Management
Several types of components are installed with activation of the Fallout Management plugin,
including tables and user roles.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1536


<!-- page 1537 -->
Roles installed
Role title [name]

Description

Contains roles

Fallout Manager

Creates, views,
sn_fallout_mgmt.fallout_agent
assigns, and edits
[sn_fallout_mgmt.fallout_manager] fallout records. A user
with this role can also
view order tasks and
domain orders.
Fallout Agent
[sn_fallout_mgmt.fallout_agent]

Fallout viewer

Fallout Creator

Views order fallout
records. A user with
this role can also
update the state of
fallout records and
create work notes on
them. The user can
also view task and
domain orders.
Views order fallout
records. A user with
this role can also
update the state of
fallout records and
view order tasks and
domain orders.
Creates fallout
records.

• sn_fallout_mgmt.fallout_creator
• sn_customerservice.case_viewer

• sn_ind_tmt_orm.order_viewer
• agent_workspace_user

None.

Tables installed
Table

Description

Fallout

Tracks order processing or fulfillment exceptions that require
monitoring and resolution.

[sn_fallout_mgmt_fallout]
Fallout type

Defines categories of fallout to classify order processing or
fulfillment exceptions.

[sn_fallout_mgmt_fallout_type]

Fallout Management data model
Manage and fix the processing issues that occur during the fulfillment of a customer or service
order. With Fallout Management, you can identify the order processing exceptions and create a
fallout record to investigate and resolve the underlying processing issue. Fallout Management
enables a customer or service order to continue until it's completed.
The Fallout Management data model extends the Task [task] table. The following table lists the
attributes that apply to order fallout processing.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1537


<!-- page 1538 -->
Order fallout table attributes
Field

Description

Number

Unique system-assigned fallout number,
starting with a prefix of FO, up to seven digits
in length.

Assigned to

Identifier for the assigned person responsible
for acting on the fallout record.

Created by

Identifier for the fallout administrator who
created the fallout record.

Created on

Timestamp that includes the date and time
that the fallout record was created.

State

Indicator of the current processing state for
the fallout record. Unless otherwise indicated,
the fallout manager or agent manually assigns
the appropriate state to the fallout record,
depending on where it currently resides in the
processing cycle.
Open
Fallout record that is new and not
currently assigned to a person to
work on.
In progress
Fallout record that is assigned
and currently being worked on.
On hold
Fallout record that is on hold. No
further fallout processing can
take place until you release the
hold.
Awaiting information
Fallout record that is on hold
and waiting for more information
before processing can proceed.
Resolved
Fallout issue that has a resolution
but you have not formally closed
it.
Closed complete
Fallout record that is complete
and closed.
Canceled
Fallout record that the fulfillment
manager canceled. No further
fulfillment processing can take
place.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1538


<!-- page 1539 -->
Order fallout table attributes (continued)
Field

Description

Originated from

Identifier of the originating order task record
that the fallout record is associated with.

Activity

Listing of the processing activities and
changes in the field values that have taken
place for the fallout record. To expand,
collapse, or filter by activity stream:
• Select the activity stream filter icon
to
filter by post types, field changes, or flagged
items.
• Select the search icon
to search the
required information in the activity stream.
• Select the sort descending icon
to sort
the activity from oldest to newest or select
the sort ascending icon
action.

Attachments

for the opposite

File attachments for the fallout record. Select
Browse to add the file as an attachment.

Related topics
Managing order fallout
Creating automated fallout records
Flow Designer
Flows
Create a flow

Fallout form fields
The Fallout form enables you to manually create, review, and modify the order fallout records.

Field

Number

Fallout Type

Description

Unique system-assigned fallout number,
starting with a prefix of FO.
Category that indicates the type of fallout
activity.
Billing Issue
Billing issues and disputes that
exist for the ordered item.
Inventory Allocation Failure
Inadequate inventory. An ordered
item can't be fulfilled.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1539


<!-- page 1540 -->
Field

Description

Provisioning Failure
Associated system that is
unavailable due to connectivity
problems, timeouts, or other
issues.

Note: You can also create additional
fallout types, as per the requirements
of your enterprise. To learn more, see
Create additional fallout types.
To view the associated details or search
for another fallout type:
• Select the detail icon
to view the
associated details for the fallout type.
• Select the search icon
to search
and select another fallout type.
Related order task

Order Line Item

State

Identifier of the order task that the fallout
record originated from.
Identifier of the customer or service order line
item that the fallout record originated from.
Indicator of the current processing state for
the fallout record. Unless otherwise indicated,
the fallout manager or agent manually assigns
the appropriate state to the fallout record,
depending on where it currently resides in the
processing cycle.
Open
Fallout record that is new and not
currently assigned to a person to
work on.
In progress
Fallout record that is assigned
and currently being worked on.
On hold
Fallout record that is on hold. No
further fallout processing can
take place until you release the
hold.
Awaiting information
Fallout record that is on hold
and waiting for more information
before processing can proceed.
Resolved

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1540


<!-- page 1541 -->
Field

Description

Fallout issue that has a resolution
but you have not formally closed
it.
Closed complete
Fallout record that is complete
and closed.
Canceled
Fallout record that the fulfillment
manager canceled. No further
fulfillment processing can take
place.
Priority

Relative priority or importance of the fallout
record.
1-Critical
Fallout record that has urgent
time criticality that requires
immediate attention.
2-High
Fallout record that has a high time
criticality, though not as urgent as
a Critical priority fallout.
3-Moderate
Fallout record that has a medium
time criticality and urgency.
4-Low
Fallout record that has a low time
criticality and urgency.
5-Planning
Fallout record that was created
for planning purposes.

Assignment group

Assigned to

Short description
Work notes (Private)

Name of the assigned group that is
responsible for acting on the fallout record.
Name of the assigned person who is
responsible for acting on the fallout record.
Short description of the fallout task.
Free-form private work note text for internal
purposes only. The customer can't see this
detail.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1541


<!-- page 1542 -->
Field

Description

Attachments

File attachments for the fallout record. Select
Select file to add the file as an attachment.

Jeopardy Management roles and personas
Learn more about how the roles and personas in Order Management may change by adopting
Jeopardy Management.

Roles in Jeopardy Management
The following table lists the roles and personas in Order Management when Jeopardy
Management is enabled.
Personas and roles in Jeopardy Management
Persona

System
administrator

Responsibilities

Role

• Configures fulfillment flows for Jeopardy
Management.

Admin

• Configures all jeopardy-related decision
table rule sets that define jeopardy
fulfillment policies.
• Configures service level agreements
(SLA) definitions for tasks.
• Reviews and updates existing workflows
and adds jeopardy actions when
updates are required.
• Reviews and updates jeopardy decision
tables.
Order
fulfillment
manager

• Reviews order jeopardy data for order
impacts.

sn_ind_tmt_orm.order_fulfilment_manager

• Assigns task jeopardy priorities to
appropriate skilled agent for resolution.
• Tracks and monitors timely fulfillment
of customer order using jeopardy
information.
• Proactively mitigates jeopardy risks.
• Escalates order jeopardy-related issues
as needed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1542


<!-- page 1543 -->
Personas and roles in Jeopardy Management (continued)
Persona

Order
fulfillment
agent

Responsibilities

Role

• Tracks, monitors, and reviews order
task progressions for jeopardy data and
proactively acts on potential jeopardyrelated issues.

sn_ind_tmt_orm.order_fulfilment_agent

• Escalates jeopardy issues as appropriate
to fulfillment managers.
Service order
manager

• Reviews service order jeopardy data for
potential service order impacts.

sn_ind_tmt_orm.service_order_manager

• Assigns task jeopardy priorities to
appropriate skilled agent for resolution.
• Tracks and monitors timely fulfillment of
customer orders by leveraging jeopardy
information.
• Proactively mitigates jeopardy risks.
• Escalates jeopardy-related issues as
needed.
Service order
agent

• Tracks, monitors, and reviews order task
progressions for jeopardy data.

sn_ind_tmt_orm.service_order_agent

• Escalates order jeopardy impacts to the
fulfillment manager.

Domain separation and Order Management
Domain separation is supported for Order Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1543


