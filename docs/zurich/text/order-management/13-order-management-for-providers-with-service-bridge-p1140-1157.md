# Zurich Sales and Order Management — Order Management for providers with Service Bridge

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 1140–1157 of 1408

Sections: Order Management for providers with Service Bridge (p1140); Integrating Order Management with FSM (p1155)

---

<!-- page 1140 -->
Order case states
State

Description

New

A new order case that is submitted.

Draft

The order case that has not yet been submitted.
Order case lines in the Draft state can still be modified.

Work in Progress

The order case is being handled by the sales agent.

Extending Order Management with ServiceNow
applications and integrations
You can use various ServiceNow store applications and integrations to further extend the
capabilities of Order Management.
Applications and integrations for extending Order Management
Application or integration

Description

Service Bridge Order Management for
Providers

Enable service providers and their customers
to use Order Management to place and fulfill
complex orders, including certain types of
MACD orders, over Service Bridge.

Order Management integration with Field
Service Management

Create field service work order requests
automatically with Order Management, and
track them in Field Service Management.

Order Management integration with Service
Portfolio Management

Provide project oversight of complex, longrunning orders and order tasks in Order
Management, and manage them in Service
Portfolio Management.

Order Management for providers with Service Bridge
The Service Bridge Order Management for Providers application enables service providers
to use Order Management to create product offerings and service specifications that Service
Bridge consumers can order from service catalogs in their ServiceNow instances. Order agents
and fulfillers can then complete the orders and requests on the provider instance.

Overview of Order Management for providers with Service Bridge
The Service Bridge Order Management for Providers application supports the sales order and
fulfillment process over Service Bridge. Published product offers and service specifications
generate remote record producers (RRPs). These remote record producers create the remote
catalog items that your consumers can order from the Service Portal on their instance.
The workflow for generating these remote record producers involves these basic steps:
• Product catalog admin or manager creates the product offerings and service specifications on
a provider instance, specifying the distribution channel as Service Bridge and indicating that
product offers are sellable items. When the offerings and service specifications are published,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1140


<!-- page 1141 -->
remote record producers (RRPs) are generated automatically to create the remote catalog
items.
• Service Bridge admin associates consumer criteria to the remote record producers.
• Service Bridge admin reviews and activates the remote record producers on the provider
instance. These remote record producers publish the remote catalog items to the service
catalog on a consumer instance.
• Consumers request services using the remote catalog items on the service portal in their
consumer instance. The requests automatically create a provider task for fulfilling the requests
on the provider instance.
• On the provider instance, the order and order lines are created for order managers to approve
and agents to fulfill.
• On the consumer instance, consumers receive updates on the order state and worknote
comments from order agents.

Features
• Support simple and bundled product offerings with composite specifications.
• Support service specifications.
• Support quantity orders for order line items and selection of optional products and services.
• Synchronize product and service inventory records, which can be viewed by consumers in
their instance.
• Allow consumers to:
◦ Suspend, resume, and disconnect orders
◦ Cancel an order from the consumer instance if the order hasn't reached the point of no
return (PONR).

Benefits
• Automates the generation of remote record producers that publish offerings and service
specifications to a remote catalog.
• Enables faster order fulfillment on the provider instance and improves order accuracy.
• Facilitates communication by updating comments between the provider and customer
instance as well as sharing frequent order status updates.

Order state mapping
During order processing, note that order status states correspond to certain provider task states.
Order and provider task states
Order state

Provider task state

Draft

Received

Submitted

Received

Enrichment in progress

Received

Enrichment on hold

Received

New

Received

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1141


<!-- page 1142 -->
Order and provider task states (continued)
Order state

Provider task state

Acknowledged

Work in Progress

Scheduled

Work in Progress

Rejected

Awaiting info

In progress

Work in progress

Revision in progress

Received

Awaiting information

Awaiting info

On hold

Awaiting info

Assessing cancellation

Cancelled

Cancellation in progress

Work in Progress

Cancelled

Cancelled

Completed

Closed

Next step
As a Service Bridge admin, review the setup tasks in Configuring Service Bridge Order
Management for Providers.

Configuring Service Bridge Order Management for Providers
Configure the Service Bridge Order Management for Providers application, which enables
providers to use Order Management to create and fulfill product orders over Service Bridge.
Providers publish the product offerings and service specifications as remote catalog items so
that consumers can order from the Service Catalog on their own instance.

Configuration overview
Follow these tasks to set up the Service Bridge Order Management for Providers application,
which uses Order Management to create product offerings and service specification and publish
them ServiceNow in your provider instance as remote record producers. Service Bridge admins
can then activate these remote record producers to make the products and services available
from the Service Catalog on consumer instances.
Setting up the Service Bridge Order Management for Providers application
Configuration step

Description

Role

Install Service Bridge for
Providers

Install the Service Bridge for
Admin
Providers application from the
ServiceNow Store. For more
information on configuring this
application, see Installing and
configuring Service Bridge for
Providers .

Install Service Bridge for
Consumers

Install the Service Bridge for
Consumers application from
theServiceNow Store. For

Admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1142


<!-- page 1143 -->
Setting up the Service Bridge Order Management for Providers application (continued)
Configuration step

Description

Role

details on configuring this
application, see Installing and
configuring Service Bridge for
Consumers .
Install Service Bridge Order
Management for Providers

Install the Service Bridge
Admin
Order Management for
Providers application from the
ServiceNow Store.

Create a product offering for a
remote catalog item

In the provider instance,
Product catalog admin or
create the product offerings to manager
be added as remote catalog
item to the service catalog for
your consumers.

Create a service specification
for a remote catalog item

In the provider instance,
create the service
specification for a service to
be added as a remote catalog
item to the service catalog for
your consumers.

Associate consumer criteria to In the provider instance,
a remote record producer
review the remote record
producer and associate the
customer criteria that entitles
the catalog item for eligible
Service Bridge consumers.

Product catalog admin or
manager

Service Bridge provider admin

Review the remote record
Associate consumer criteria
producer for managing
to the remote record producer inventory and associate the
for managing inventory.
customer criteria.
Activate the remote record
producer

In the consumer instance,
activate entitlements for the
remote record producers.

Service Bridge consumer
admin

Retire a remote catalog item

Retire a product offering or
service specification used
in a remote catalog, which
automatically retires the
corresponding remote record
producer and removes the
item from the service catalog
on the consumer instance.

Product catalog admin or
manager

Install Service Bridge Order Management for Providers
You can install the Service Bridge Order Management for Providers application (sn_sb_pro) if you
®
have the admin role.The application includes demo data and installs related ServiceNow Store
applications and plugins if they're not already installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1143


<!-- page 1144 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Service Bridge Order Management for Providers application listing in the
ServiceNow Store for information on dependencies, licensing or subscription requirements,
and release compatibility.
Role required: admin

About this task

The following items are installed with Service Bridge Order Management for Providers:
• Plugins
• Store applications
• Roles
• Scheduled jobs
• Tables
For more information, see Find components installed with an application

..

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Service Bridge Order Management for Providers application ((sn_sb_pro)) using the
filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Create a product offering for a remote catalog item
Create a product offering in a Service Bridge provider instance. When you publish the product
offering, a remote record producer is created for the remote catalog item.

Before you begin

Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1144


<!-- page 1145 -->
About this task

When you're creating the product offering, use the Distribution channel field to set the channel
to Service Bridge.

Procedure
1. In the CSM Configurable Workspace on the provider instance, select the List

view.

2. Navigate to Offerings > Product Offerings.
3. Select New.
On the Details tab, fill in the fields.
Create New Product Offering form
Field

Description

Number

System-assigned number for the product offering.

Name

Alternative name for the product offering to help differentiate
it from similar product names.

Display name

Name of the product offering that is added.

Offering type

Offering entity. Select one of the following types:
◦ Product: A product entity that an agent can add to an order
using the CSM Configurable Workspace.
◦ Entitlement: An entity such as a warranty or subscription
that can be added to an order by an agent.

Offering sub-type

Type of entitlement:
◦ Warranty
◦ Extended warranty
◦ License
◦ Subscription

Sellable

Option indicating that the product offering can be sold as a
standalone item. If not selected, the product offering can be
sold as part of bundle but not as a standalone item.

Note: If you're using the Service Bridge Order
Management for Providers application, select this
option for a product offering. Only sellable product
offers create remote catalog items. Offers with bundled
configurations are not supported.
Description

Short description of the product offering. The description
helps the order agent understand the product when placing
an order.

Start date

Date and time that the product offering is available for Sales
and Order Management applications. Select the Calendar
icon (

End date

) to choose the start date and time, then select OK.

Date and time that the product offering is deleted from Sales
and Order Management applications. Select the Calendar
icon (

) to choose the end date and time, then select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1145


<!-- page 1146 -->
Field

Description

State

State of the product offering. States include In Draft,
Published, Retired, and Archived. You can update product
offerings In Draft state.

Distribution channel

Option to set and lock in a distribution channel. For example,
you can specify web as a channel. You can specify multiple
channels.

Note: If you're using the Service Bridge Order
Management for Providers application, enter Service
Bridge as the channel.
Owner

Person responsible for the product offering.

Code

System-generated alphanumeric number based on the
product name. Although system generated, you can edit
the code to represent a SKU or any other industry specific
product codes.

Product specification

Product specification to associate with the product offering.
It provides a functional view of a product offering that drives
order fulfillment.

Note: Only published specifications appear.
Product model

Name of the product model.

Copy child specification
characteristics

Option that when selected copies all child specification
characteristics in a specification hierarchy. For example, if
the product offer has an associated product specification,
selecting this option indicates that the characteristics are
inherited from the child specifications in addition to the
parent specification.

Pricing method

Pricing method for the product:
◦ One-time: A single fee for the product.
◦ Recurring: A fee that occurs at scheduled intervals. You can
set the periodicity for a recurring fee.

Note: Pricing information is not visible on the
consumer instance. If a default or other price list is
configured for an offer, the price is calculated and
updated only on the provider instance.
Periodicity

Recurring pricing: Monthly or annually.

Monthly recurring charges

Charges that recur every month. Monthly recurring charges
are supported for backward compatibility. Use price lists to
define prices.

Non recurring charges

Charges that are applied once. Supported for backward
compatibility. Use price lists to define prices.

Create contract

Option that indicates to agents that entitlement contracts can
be added to the product order. If selected, service contracts
are created after order fulfillment. Used when entitlements
are managed as contracts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1146


<!-- page 1147 -->
Field

Description

Contract term

Length of the contract:
◦ 12 months
◦ 24 months
◦ 36 months
◦ 48 months
◦ 60 months

Version

Version number that is assigned to this product offering
version.

Initial version

Name of the product offering at the time you created the
initial version.

Previous version

Name of the previous version of the product offering, For
example:
◦ When you create the initial version of the product offering
(for example, version 1), this field is empty.
◦ When you create a version (version 2) with a slightly
different name, the name of the product offering at its initial
creation appears here.
◦ When you create a subsequent version (version 3), the
name of the product offering as it was at version 2 appears
here.
You can't change this field.

4. Select Save.
5. Add additional characteristics to your product offering, if needed.
6. Optional: Add product visuals to your product offering.
a. In the Product Visuals tab, select New.
b. Enter a name for the visual.
c. To select an image file to upload, select Click to add.
d. To set your image as the primary image for the product, select Set Primary

Note: You can add multiple images for products, but the service catalog only supports
one image per product when it is published to the service catalog.
7. When you finish creating the product offering version, select one of the following actions.
Action

Description

Publish

Publish the draft product offering so that you
can use it in a product catalog:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1147


<!-- page 1148 -->
Action

Description

◦ When you publish it, its state changes from
Draft to Published.
◦ After you publish a product offering, you
can't change or delete it, unless you create
a version for it.
Update

Update the product offering with the new data
that you added, but don't publish it for use in
a product catalog.
Copy the data in this product offering so that
you can create a product offering from it.
For example, you can use the Copy function
if you want to create a base version product
offering that is similar to Premium SD-WAN Of­
fering v3, but with a separate version track.

Copy

When you use the Copy function, it creates a
base version product offering and sets the val­
ues in these fields:
◦ Version: 1 (base version)
◦ Initial Version: Premium SD-WAN Offering
v3
◦ Previous Version: blank

What to do next

Associate consumer criteria to a remote record producer for this remote catalog item.
Create a service specification for a remote catalog item
Create a service specification on a Service Bridge provider instance. When you publish the
service specification, a remote record producer creates the remote catalog item for the service
specification.

Before you begin

Define the characteristics, characteristic options, and specification categories before you create
a service specification.
Role required: sn_prd_pm_product_catalog_admin or sn_prd_pm_product_catalog_manager

About this task

When you create a service specification for a service request, use the Distribution channel
field to set the channel to Service Bridge. When the service specification is published, a remote
record producer is created for the specification.

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Specifications > Service specifications and select New.
On the Details tab, fill in the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1148


<!-- page 1149 -->
Service Specification
Field

Description

Number

Auto-generated ID for the service
specification.

Name

Name of the service specification.

Version

Version number that is assigned to a
specification:
◦ When you create the initial version, 1
appears in this field, and can't be changed.
◦ When you create subsequent versions
of the specification, the next incremental
number appears in this field after you
select Create New Version. For example,
4 appears in this field if 3 was the previous
version number.

Display name

Display name that appears for the
specification when this version of the
specification is in effect.
◦ When you create the initial, or base version
of the specification (for example, version
1), you must enter free-form text, which is
usually the name of the specification, into
the field.
◦ When you create versions of the
specification, a system-assigned
concatenation of the specification name
and its current version number appears,
but can be overwritten. For example, SDWAN Edge Device v2 appears in this field
when:
▪ SD-WAN Edge Device is the name of the
specification.
▪ Version 2 is the current version of the
specification.

Category

Specification category that the service
specification belongs to.
◦ If the selected category that belongs to 5G
services doesn't have any matching slice
templates, the system checks for existing
templates.
◦ If the selected category has multiple
templates mapped to it, the systems
chooses the latest published template to
the specification.

Type

Type of service specification:
Customer Facing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1149


<!-- page 1150 -->
Field

Description

Customers can create a ticket or
a case for the service. When you
select this type, the Distribution
channel field is displayed to
specify how the service is
provided, for example web.
Resource Facing
Services are required for a
resource to function properly.
Not Applicable
Service specification is not
customer facing or resource
facing.
Sub type

Sub-type of the specification. Choose Slice
to define 5G network service specifications.

Note:
◦ When you select Slice as the sub
type, the templates are automatically
selected based on the mapping
of templates with the specification
categories of service specifications in
the decision table.
◦ If you select None as the sub type,
you can manually specify a template.
Start date

Date that the specification is valid from.
Use this field when you create a version to
indicate when it takes effect. It’s informational
only and isn't used for actual processing.

End date

Date up until which the specification is valid.
Use this field when you create a version to
indicate when it’s no longer in effect. It is
informational only and isn't used for actual
processing.

Template

Templates that you've defined if you're using
5G services.

Note: When you change a template,
it deletes all the specification
characteristics that are marked as
true and are associated with the
old template and re-associates the
specification characteristics as per the
new template that you've selected.
Description

Description for the service specification.

State

State of the service specification.
Draft

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1150


<!-- page 1151 -->
Field

Description

Unpublished draft service
specification that is assigned
when you first create the
specification record.
Published
Published service specification
that is assigned when you
formally publish it for use in a
product offering.
Retired
Service specification that
is retired and can no longer
be used to create another
specification version.
Archived
Service specification is no
longer used in the ordering or
fulfillment process.
Distribution channel

Option to set and lock in a distribution
channel. For example, you can specify
web as a channel. You can specify multiple
channels.

Note: If you're using the Service
Bridge Order Management for Providers
application, enter Service Bridge as
distribution channel.
External code

Service code of the specification.

Line

Service line of the specification.

Cost to company

Cost to the company for this service
specification. This field is for profit-calculation
purposes only.

Composite

Option indicating that the service
specification is a parent specification
composed of multiple child specifications.

Installation required

Option indicating that someone must install
the service on site.

Location specific

Option indicating that this service
specification requires the location details for
fulfillment and installation.

Initial version

Name of the base version of the specification
that appears but can't be changed.

Previous version

Name of the previous version of the
specification. For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1151


<!-- page 1152 -->
Field

Description

◦ When you create the initial version of the
specification (for example, version 1), this
field is empty.
◦ When you create a version (version 2) with
a slightly different name, the name of the
specification at its initial creation appears
here.
◦ When you create a subsequent version
(version 3), the name of the specification as
it was at version 2 appears here.
You can't change this field.
3. Select Save and then Publish.
A remote record producer creates the remote catalog item for the specification.

What to do next

Associate consumer criteria to a remote record producer for this remote catalog item.
Associate consumer criteria to a remote record producer
In the provider instance, associate the appropriate consumer criteria to the remote record
producer created for a remote catalog item. The consumer criteria determines which consumers
are entitled to the catalog item. Service Bridge automatically generates the entitlement records
that are replicated to eligible consumer instances.

Before you begin

By default remote record producers are available to all consumers. If you have specific criteria for
certain users, define the consumer criteria for Service Bridge those users. For more information,
see Creating entitlements in Service Bridge for Providers .
Role required: sn_sb.Admin or admin

Procedure
1. In your provider instance, navigate to All > Service Bridge Provider > Administration >
Remote Catalog Items.
2. Select the remote record producer for the product offering or service specification that your
product catalog admin or manager created.
Review the record to validate that it was created as expected.

Note: A remote record producer, Manage Inventory, is created automatically when a
product offering or service specification for a remote catalog item is published. You must
associate the consumer criteria to this remote record producer so that your consumers
can manage the product or service inventory from the service catalog on a consumer
instance.
3. Navigate to the Consumer Criterias tab.
4. In the record for the Active criteria, under the Remote consumer criteria column, select and
save the criteria to be associated to the catalog item.
5. Select Publish.
Service Bridge automatically generates the entitlement records that are replicated to eligible
consumer instances.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1152


<!-- page 1153 -->
What to do next

Activate the entitlements for the remote record producer.
Activate the remote record producer
Activate the remote record producer in a Service Bridge consumer instance.

Before you begin

Role required: sn_sb.Admin or admin

Procedure
1. In the consumer instance, navigate to All > Service Bridge Consumer > Provider
Connections.
2. Select the Number link to navigate to the Provider connection record.
3. In the Remote record producers tab (related list), select the remote record producer to be
activated.
4. In the Remote record producer page, select Activate.
The product offering or service specification is now available in the Service Catalog in remote
record producer format.
Retire a remote catalog item
Retire a product offering or service specification used in a remote catalog, which automatically
retires the corresponding remote record producer. When the remote record producer is retired,
the remote catalog item is removed automatically from the service catalog on the consumer
instance.

Before you begin

Role required: sn_prd_pm_product_catalog_admin and sn_prd_pm_product_catalog_manager

Procedure
1. In the CSM Configurable Workspace on the provider instance, select the List

view.

2. Navigate to the published product offering or service specification to be retired.
◦ To retire a product offering, navigate to Offerings > Product Offerings and select the
product offering to be retired.
◦ To retire a service specification, navigate to Specifications > Service specifications and
select the service specification to be retired.
3. Select Retire.
The product offering or service specification is set to the Retired state. The state of the
associated record producer for the item changes from Published to Retired, and the product
catalog item is deleted automatically from the service catalog.

Creating orders from Service Portal catalog items
When consumers use the Service Portal on their instance, they can place orders for catalog
items that have bundled product specifications. They can also cancel an order, and review and
manage product and service inventory.

Orders for bundled products
Service Bridge remote catalog items can include bundled products that have composite
components with different characteristic options that can be selected, including quantity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1153


<!-- page 1154 -->
Example bundled product in service catalog

Cancelling an order
Consumers can cancel an order, if the order hasn't reached the point of no return (PONR). If the
PONR has been reached, the consumer receives a status message indicating that the order can't
be cancelled.

Managing product or service inventory
Consumers can view and manage the product or service inventory for products and services.
They can use the Location field to filter the Inventory view by particular location. Consumers can
also perform disconnect, suspend, or resume actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1154


<!-- page 1155 -->
Manage inventory example in service catalog

Order Management integration with Field Service Management
Provides an integration between the Order Management and the Field Service Management
applications. This integration is available to all ServiceNow customers with the Order
Management (com.sn_ind_tmt_orm) plugin, Field Service Management Configurable
Workspace (com.snc.uib.fsm_agent_workspace) plugin, and Field Service Management
(com.snc.work_management) plugin.

Order Management-FSM integration overview
This integration enables automatic and manual creation of work orders from the Order
Management application to the Field Service Management application. This integration ensures
collaboration between the Order Management and the Field Service Management applications
to support the end-to-end order fulfillment process. Work orders are created for an order that
requires field service work by field agents. The order fulfillment agents and managers can more
efficiently manage order tasks and work order dependencies.

Key features
• Automation of work order creation, updates, and tracking.
• UI-based manual triggering of work order to Field Service Management. Schedule field service
work and communicate work note updates to field service dispatchers and agents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1155


<!-- page 1156 -->
• Synchronization of information between Order Management and Field Service Management
for status, work note, customer details, and other updates.
• Tracking and managing the end-to-end workflow of orders and associated work orders in the
fulfillment process.

Configuring automatic creation of work orders
You can enable automatic creation of work orders from Order Management for
Telecommunications, Media, and Technology to Field Service Management. Work orders are
created for domain orders and order tasks. To configure the automatic creation of work orders,
configure the decision tables in the decision builder.
Customer orders have multiple order line items that have multiple domain orders, such as
product orders, service orders, resource orders, and order tasks. For automatic creation of work
orders for a domain order, the conditions are specified in the Work Order Policy for Domain
Order decision table. For the automatic creation of work orders for order tasks, the conditions are
defined in the Work Order Policy for Order Task decision table.
After an order is approved by the manager, a work order is automatically created if the conditions
that are defined in the decision builder are met. If required, the manager can also select Create
Work Order to create a work order manually. The work order template in the decision table prepopulates the fields of the automatically created work order.
Configure work order creation for a domain order
Add a condition in the decision tree for automatic creation of work orders for domain order. The
conditions are specified in the Work Order Policy for Domain Order decision table.

Before you begin

Role required: admin

About this task

Customer Orders have multiple order line items that have multiple domain orders, such as
product orders, service orders, resource orders, and order tasks. For automatic creation of work
orders for a domain order, the conditions are specified in the Work Order Policy for Domain
Order decision table. For conditions not defined in the decision table, the manager can select
Create Work Order to create a work order manually. The work order template in the decision
table pre-populates the fields of the automatically created work order.

Procedure
1. Navigate to All > Decision Builder.
You can view all the decision tables.
2. Select the Work Order Policy for Domain Order decision table.
3. In the Specification column of the conditions section, select the service package to set a
condition.
4. Select an action from the Domain Order Action list.
5. Select a template for the condition in the WO Template column.
6. Select Save.

Result

A condition is added in the decision table. If this condition in the decision table is met, a work
order is automatically created for a domain order. For more information on decision tables, see
Use decision tables .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1156


<!-- page 1157 -->
Configure work order creation for order task
Add a condition in the decision tree for automatic creation of work orders for order tasks. The
conditions are specified in the Work Order Policy for Order Task decision table.

Before you begin

Role required: administrator

About this task

For the automatic creation of work orders for order tasks, the conditions are defined in the Work
Order Policy for Order Task decision table. After an order is approved by the manager, a work
order is automatically created if the conditions are met that are defined in the decision builder.

Procedure
1. Navigate to All > Decision Builder.
You can view all the decision tables.
2. Select the Work Order Policy for Order Task decision table.
3. In the Specification column of the conditions section, select the service package to set a
condition.
4. Select Add for Domain Order Action.
5. Select a Request type for the order task in the Request Type column.
6. Select a template for the service package in the WO Template column.
7. Select Save.

Result

A condition is added in the decision table. If this condition in the decision tree is met, a work
order is automatically created for an order task. For information, see Decision Builder user
interface .

Synchronization of information between Order Management and Field Service
Management - Workflow scenario
The integration between Order Management and Field Service Management provides support
for the end-to-end order fulfillment process. The following scenario shows the seamless
synchronization of data, customer information, status, and other updates between Order
Management and Field Service Management.

Scenario
After the order fulfillment manager approves the order in Order Management, work orders are
automatically created in Field Service Management for conditions that are specified in the
decision tree. As the field service agents work on those work orders, the order fulfillment agent
can see the updates in the Work Notes section of that Domain Order. An agent cannot close
a domain order unless all the work orders associated with it are closed. This workflow shows
synchronization of information between Order Management and Field Service Management.
1. An order fulfillment agent creates a new customer order in the Order Management workspace.
2. The agent then selects the location for which the order needs to be placed. For multiple
locations, multiple order line items are created.
3. The agent then reviews and places the order.
4. The order fulfillment manager approves the order. The order line items have domain orders
as part of the order fulfillment flow. According to the configurations in the decision table, work
orders are automatically created in Field Service Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1157


