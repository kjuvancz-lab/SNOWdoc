# Australia Sales Customer Relationship Management — Post-sales engagement / Partner Relationship Management / Lead-to-cash foundation

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 104–117 of 1645

Sections: Post-sales engagement (p104); Partner Relationship Management (p105); Lead-to-cash foundation (p113)

---

<!-- page 104 -->
Steps involved in the RMA case user journey (continued)
Steps User

Action

System response

12

Agent

Updates case line and overall case status
as tasks are completed and customer
feedback is received.

System transitions case through
Resolved and Closed states as
appropriate.

13

Agent

Communicates final resolution to
customer and formally closes the case.

System archives the case and all
related records.

RMA case user journey

What to explore next
• Activate the Return Merchandise Authorization plugin
• Return Merchandise Authorization Case Management

Post-sales engagement
®

ServiceNow post-sales engagement applications support adoption and post-sales workflows.

Get started
Select a link from the following table to learn about key features and benefits of an application
and how it can be used for post-sales workflows.
Post-sales engagement applications
Application

Description

Customer Life Cycle Management Workflows

Manage the life cycle of your sold products.

What to explore next
Configure the post-sales engagement applications to enable post-sales workflows. For more
information, see Post-sales engagement.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

104


<!-- page 105 -->
Partner Relationship Management
Learn how Partner Relationship Management gives enterprises and channel partners a shared
platform to manage the partner sales lifecycle, from deal registration through order fulfillment.

Partner Relationship Management overview
Use Partner Relationship Management to define and manage partner programs, onboard
channel partners, and collaborate on deals, quotes, and orders — all within a single platform.
Channel partners access their work through the Partner portal, while enterprise teams use the
Partner Workspace. Both sides see a consistent, real-time view of the partner relationship.
Partner Relationship Management is built on three core entities: partner, partner program,
and partner segment. These entities define who channel partners are, what programs they
participate in, and at what tier they operate. A partner can belong to multiple programs but holds
exactly one segment within each program.

Example: Use case
ABC Systems, a global technology reseller and implementation channel partner for XYZ
Solutions (enterprise), operates across North America with hundreds of active customer
engagements. ABC's consulting and delivery teams frequently encounter challenges requiring
direct support from XYZ, such as clarification on licensing models or product configurations.
With Partner Relationship Management, ABC no longer needs to rely on ad hoc emails, informal
escalation channels, or multiple sessions leading to delays.
With Partner Relationship Management, the channel partner ABC can do the following:
• Submit and manage support cases through the Partner portal designed for easy access and
case tracking.
• Benefit from a role-based experience where channel partner managers and associates can
independently raise cases and monitor status without dependency on enterprise contacts.
• Gain visibility into program participation and support activities through personalized
dashboards.
• Use the unified partner data model to confirm that entitlements and participation in XYZ's
partner programs are accurately tracked and easily accessible.
With Partner Relationship Management, the enterprise XYZ can do the following:
• View and fulfill cases raised by the channel partner ABC in a centralized workspace.
• Route assignments to the appropriate support agents.
• Track channel partner engagement levels within ABC via real-time dashboards.
By streamlining support and collaboration through Partner Relationship Management, ABC
reduces its resolution time, improves internal efficiency, and strengthens its partnership with
XYZ.

Partner Relationship Management users
Users
User

Description

Enterprise admin

Sets up and maintains the Partner Relationship Management
configuration. Creates and manages partner programs,

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

105


<!-- page 106 -->
Users (continued)
User

Description

segments, and criteria. Onboards new channel partners and
owns partner primary data.
Enterprise relationship
manager

Acts as the main point of contact between the enterprise and
one or more channel partners. Tracks all partner activity —
deals, quotes, orders, and cases — and reviews and approves
deal registrations submitted by channel partners.

Channel partner manager

Accesses the Partner portal to manage their team, onboard
new staff, register and track deals, and monitor the partner
pipeline including opportunities, quotes, and orders.

Partner associate

A frontline sales agent who registers deals, creates quotes
on behalf of customers, manages cases, and provides
customer support. Can work with multiple channel partners
simultaneously.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

106


<!-- page 107 -->
Partner Relationship Management workflow
The following illustration describes the tasks involved in configuring and
using Partner Relationship Management, organized by platform and

persona.

CSM configurable workspace in Partner Relationship Management
The Partner Workspace is the enterprise-facing platform in Partner Relationship Management.
Enterprise admins, enterprise relationship managers, and enterprise partner agents use it to
configure, manage, and monitor the partner ecosystem.
Enterprise admin
1. Configure Partner Relationship Management — set up programs, segments, and roles:
◦ Create partner programs (for example, referral, reseller, authorized trainer).
◦ Define partner segments and tier criteria (for example, Silver, Gold, Platinum).
◦ Set access policies and assign roles to enterprise and channel partner users.
2. Onboard channel partner organizations, register partner members, and assign them to the
relevant programs and tiers.
3. Manage access policies to ensure cross-partner data isolation and role-appropriate visibility
across the partner ecosystem.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

107


<!-- page 108 -->
Enterprise relationship manager
1. View and track all partner activity — deals, quotes, orders, and cases — from the Partner
Workspace pipeline dashboard.
2. Approve a deal registration submitted by the channel partner:
◦ Confirm no duplicate deal exists for the same customer and product.
◦ Approve the deal, locking it exclusively for that partner.
3. Approve the quote submitted by the channel partner:
◦ Verify pricing reflects the rates defined for the partner's program and segment tier.
◦ Finalize pricing. The system automatically converts the approved quote into a sales order.
Enterprise partner agent
Fulfill cases raised by channel partners from the Partner Workspace:
• Assign cases to the appropriate support team.
• Update case status and post resolution notes.
• Case resolution status is updated in the Partner portal for the channel partner to track.

Partner portal in Partner Relationship Management
The Partner portal is the channel partner-facing platform in Partner Relationship Management.
Channel partner managers and partner associates use it to manage deals, quotes, orders, cases,
and team members. Channel partners have no access to the Partner Workspace.
Channel partner manager
1. Onboard team members and register new staff on the Partner portal.
2. Register a deal on the Partner portal:
◦ Capture the customer name, product area, and estimated deal value.
◦ Submit for enterprise review. The deal is approved and locked for that partner.
3. View the pipeline to monitor deal progress, approval status, and associated opportunities.
Partner associate
1. Create a quote from the Partner portal once the customer is ready for pricing. The enterprise
relationship manager reviews and approves the quote before it is finalized.
2. Track the order after the approved quote converts to a sales order:
◦ View order details and fulfillment progress.
◦ Manage attachments and download completed order documentation.
◦ Communicate with the enterprise team through comments and notes.
3. Raise a support case from the Partner portal:
◦ Submit the case for enterprise review.
◦ Track case status and receive resolution updates from the enterprise partner agent.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

108


<!-- page 109 -->
Partner Relationship Management benefits
Partner Relationship Management benefits
Benefit

Feature

Users

Lock approved deals exclusively for the
registering partner, preventing channel
conflict and protecting partner commissions.

Deal Registration

Enterprise
relationship manager,
channel partner
manager, partner
associate

Automatically convert approved deals into
Install Opportunity
enterprise pipeline opportunities. Partners can Management for
view pipeline stages and qualification status
Channel Partners
directly from the Partner portal.

Enterprise
relationship manager,
channel partner
manager, partner
associate

Create and submit quotes from the Partner
portal with tier-based pricing applied
automatically. Quotes go through enterprise
review and approval before finalization.

Install Quote
Management for
Channel Partners

Enterprise
relationship manager,
partner associate

Track order status, manage attachments, and
communicate with enterprise teams directly
from the Partner portal, without switching to
internal systems or email.

Quote creation via
Self-Service for
Channel Partners

Partner associate

Raise, submit, and track support cases
through the Partner portal. Enterprise agents
fulfill cases from a centralized workspace and
route them to the appropriate teams.

Create cases for
channel partners

Enterprise partner
agent, channel
partner manager,
partner associate

View all partner activity — deals, opportunities,
quotes, orders, and cases — in one
workspace. Monitor partner engagement and
pipeline health via real-time dashboards.

Partner Relationship
Management in
CSM Configurable
Workspace

Enterprise
admin, enterprise
relationship manager,
enterprise partner
agent

Onboard channel partners and manage their
full lifecycle from a single configuration layer,
reducing onboarding time and improving
partner satisfaction.

Partner onboarding
and lifecycle
management

Enterprise
admin, enterprise
relationship manager

Assign partners to programs and tiers
to automatically apply accurate pricing,
discounts, and enablement resources. A
partner can belong to multiple programs, each
with a single segment.

Create Partner
Programs on the
CSM Configurable
Workspace,
Configure Segment
Management

Enterprise admin,
channel partner
manager

Restrict data access by role and enforce
cross-partner isolation so partners can only
view their own data. Admins set granular
access policies per entity.

Roles and
components of
Partner Relationship
Management

Enterprise admin

What to explore next
To learn more about configuring and using Partner Relationship Management, see:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

109


<!-- page 110 -->
• Partner Relationship Management
• Using Partner Relationship Management
• Data model for Partner Relationship Management

Deal Registration
Install the Deal Registration Management plugin (com.snc.deal_registration_management) to
enable channel partners to create a structured and organized process to identify and manage a
customer's interest in the enterprise's products.

Key benefits of Deal Registration
The Deal Registration Management application (com.snc.deal_registration_management) offers
the following benefits to channel partners.
• Configurable deal registration form to support multiple models, products, or partner programs.
• Reduces manual follow-up in tracking deal registrations, and all its related information, to
promote trust and transparency in the partner ecosystem.
• Provides channel partners with flexibility to create deal registrations.
• Ensures that the life cycle of a deal registration is tracked accurately through the enterprise
CRM system, to convert a deal registration to an opportunity.

Set up Deal Registration
Deal registration provides channel partners exclusive rights to work on that particular deal
registration or customer for a period of time. To install the Deal Registration Management plugin
(com.snc.deal_registration_management), see Install Deal Registration.
Deal registrations and deal registration line items help to manage and track the products that
are associated with submitted deal registrations. The Deal Registration Management plugin can
promote trust and transparency between enterprises and partners.
Set up Deal Registration Management

Perform the following configuration tasks to set up and use deal registration
management.
Task

Description

Role

Install Deal Registration

Install the Deal Registration
admin
Management application from
®
ServiceNow Store.

Data model for Deal
Registration Management

Add data in the deal
Experience
registration tables to maintain (sn_prm_dr.deal_reg_ui)
and track partner submitted
deals and the line items linked
to a deal registration.

Roles and components
of Deal Registration
Management

The Deal Registration
admin
Management
(com.snc.deal_registration_management)
application uses roles to
provide access to information,
identify internal and external

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

110


<!-- page 111 -->
Set up Deal Registration Management

Perform the following configuration tasks to set up and use deal registration
management.
(continued)
Task

Description

Role

users, maintain data security,
and establish different types
of relationships between
segments and partners.
Related topics
Partner Relationship Management
Using Partner Relationship Management

Roles and components of Partner Relationship Management
The Partner Relationship Management application uses roles to provide access to information,
identify internal and external users, maintain data security, and establish different types of
relationships between enterprises and channel partners.
The PRM plugin (com.snc.partner_relationship_management) comes with a set of functional and
granular roles, each with varying levels of access to raise and address queries.
The PRM application provides access and permissions to users part of both the enterprise and
the channel partner ecosystem.

Functional and granular roles
Functional roles help provide authorized related parties access to enterprise and channel
partner members. A granular model helps to protect data by granting the required level of
access to the relevant enterprise or channel partner entities. With this functionality, each role
is associated with a set of privileges or responsibilities that determine users’ access to certain
information.
You can set granular policies that authorize individuals to do their jobs efficiently and effectively,
which helps to improve the customer experience.

Roles and descriptions
Functional roles are a set of granular roles that are required to perform a function that requires
access to multiple entities. The following table lists the functional roles for Partner Relationship
Management.
Functional roles

List of functional roles and their descriptions.
Role

Description

Enterprise Partner admin
A user who is an admin for the
(sn_prm.enterprise_partner_admin)
partner enterprise.

Contains roles

• sn_service_org.writer
• sn_prm.channel_partner_writer
• sn_prm.partner_program_writer

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

111


<!-- page 112 -->
Functional roles

List of functional roles and their descriptions.
(continued)
Role

Description

Contains roles

• sn_prm.partner_program_rel_writer
• sn_customerservice.csm_workspace_user
• sn_seg.segment_mgmt_admin
Enterprise Partner
Contributor who belongs
Relationship Manager
to an enterprise and is
(sn_prm.enterprise_partner_rel_manager)
responsible for managing
cases associated with the
partner hierarchy.
Enterprise Partner Agent
Fulfiller who belongs to an
(sn_prm.enterprise_partner_agent)
enterprise and is responsible
for fulfilling partner cases.
Partner Manager
Contributor who belongs
(sn_prm.external_partner_manager)
to a partner entity and is
responsible for reporting
cases associated with their
partner hierarchy on the
portal.
Partner Associate
Contributor who belongs
(sn_prm.external_partner_associate)
to a partner entity and is
responsible for reporting
cases associated with their
partners on the portal.

• sn_bus_loc.location_relationship_manager
• sn_prm.partner_data_viewer
• sn_customerservice.csm_workspace_user

• sn_customerservice_agent
• sn_prm.partner_data_viewer

• sn_customerservice.svc_location_manager_c
• sn_prm.partner_data_viewer
• sn_prm_dr.partner_deal_reg_manager

• sn_customerservice.service_organization_con
• sn_prm.partner_data_viewer

The following table lists the granular roles installed with Partner Relationship Management.
Granular roles

List of granular roles and their descriptions.
Role

Description

Inherited roles

Channel partner writer
This role provides granular
(sn_prm.channel_partner_writer)edit access to the channel
partner table.

Partner Data Viewer
(sn_prm.partner_data_viewer)

Partner Program Writer
This role provides granular
(sn_prm.partner_program_writer)edit access to the partner
program table.

Partner Data Viewer
(sn_prm.partner_data_viewer)

Partner Program
This role provides granular
Relationship Writer
edit access to the partner
(sn_prm.partner_program_rel_writer)
program relationship table.

Partner Data Viewer
(sn_prm.partner_data_viewer)

Partner Data Viewer
(sn_prm.partner_data_viewer)

NA

This role provides granular
read access to the channel

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

112


<!-- page 113 -->
Granular roles

List of granular roles and their descriptions.
(continued)
Role

Description

Inherited roles

partner, partner program, and
partner program relationship
tables.
Experience
(sn_prm.partner_ui)

This role provides granular
access to organization
staff to ensure a consistent
experience across all user
interfaces.

NA

Note: The Experience
role needs to be
manually inherited into
other roles to view the
Partner Relationship
Management modules
on ServiceNow platform,
CSM Configurable
Workspace, and the
Partner portal.
Program Segment Writer
(sn_prm.program_segment
writer)

This role provides users
• Partner Data Viewer
with the create, read, and
(sn_prm.partner_data_viewer)
update access to the
• Segment Data Viewer
Program segment mapping
(sn_Seg.segment_mgmt_data_viewer)
(sn_prm_program_segment_mapping)
table.

System properties
Navigate to All > Partner Relationship Management > Properties. The Enterprise Partner admin
(sn_prm.enterprise_partner_admin) has the read and write access to the following properties.
• glide.ui.sn_prm_partner_program_activity.fields
• glide.service_portal.resize_text.partner.enable_rem_conversion
• glide.ui.sn_prm_partner_program_relationship_activity.fields
• glide.ui.sn_prm_channel_partner_activity.fields
Related topics
Install Partner Relationship Management
Data model for Partner Relationship Management

Lead-to-cash foundation
Lead-to-cash foundation applications enable you to manage the end-to-end commercial life
cycle from product setup to core transaction flows.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

113


<!-- page 114 -->
Get started
Select a link from the following table to explore key capabilities that streamline your product
setup, pricing strategy, and core lead-to-cash operations.
Lead-to-cash applications
Application

Description

Product Catalog
Management

Organize and maintain a unified catalog of products and services.

Pricing Management

Manage price lists, discounts, and rules to support dynamic and
region-specific pricing.

Lead to Cash Core

Enable seamless integration of lead generation, quoting, order
management, and fulfillment.

What to explore next
Configure the lead-to-cash foundation applications to enable core capabilities for using Sales
Customer Relationship Management. For more information, see Configuring the lead-to-cash
foundation applications.

Product Catalog Management
Product Catalog Management enables your organization to manage your product offerings by
grouping them into catalogs and categories, which streamlines the ordering process and helps
manage leads, opportunities, quotes, and orders in Sales Customer Relationship Management.
Product Catalog Management provides various features to implement product catalogs and
categories in your organization.
• Product catalog user interface: Launch from anywhere in lead, opportunity, quote, and order
capture workflows, enabling agents to browse and find products quickly with a full catalog
search function.
• Catalog category hierarchy: Use hierarchical structures of catalogs and categories to organize
products and services logically.
• Version control: Track changes made to product information over time, helping with
transparency and auditability.
• Product offer eligibility: Filter your product catalogs, product offering categories, and product
offerings so that agents sell customers only the products for which they’re eligible.

Note: Check your entitlements to determine if you have access to these features. Also,
starting with the Yokohama release, customers can use the Business Portal with Order
Management to create orders using the product catalog and product configurator. For more
information on this self-service portal, see Using the Business Portal.
To learn more about setting up product offering catalogs, see Configuring product offerings and
catalogs.

Product catalog UI
In the product offering catalog, agents and customers can do the following:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

114


<!-- page 115 -->
• Browse and search product offerings by using keywords, descriptions, and industry codes.
Product catalog admins or managers can also configure AI Search in the product catalog
interface, enabling agents and customers to find relevant product offerings or service
specifications by using semantic queries.
• Review product offers that are organized by catalog category hierarchy, which streamlines
catalog navigation.
Product catalog user interface

Product offering catalogs and categories
Product offering catalogs and categories offer a way to organize product offerings so that agents
can easily find products to create orders.
• Product offering catalog: Hierarchical product offering structures of categories and product
offerings.
• Product offering categories: Categories are a logical grouping of product offerings.
• Product offerings: Physical goods or non-tangible services that are configurable.
• Characteristic and Characteristic options: Product options that are created based on customer
preferences.​

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

115


<!-- page 116 -->
Example catalog hierarchy with categories and product offerings

Product offering families
A product family is a collection of product offerings that share similar or common features.
You can use a product family to create a hierarchical classification of product offerings, like a
category tree. A product family can have parent-child relationships, where each node in the
family tree can have a parent, forming a multi-level hierarchy. With this structure, you can apply
attributes, business rules, and product updates to a product family, rather than change products
individually.
After you create product families, you can assign a product family to a product offering. To learn
more, see Create a product offering family.

Product offer bundling
You can create product offer bundles with an offer hierarchy using product offer relationships
and relationship groups. These bundle offers can have references to a product specification
or specification hierarchy at any level in the bundle. For more information, see Product offer
bundling with product specifications.

Product offer eligibility
As a product catalog admin or manager, you can use business rules to filter the product catalog,
product offering categories, and product offerings dynamically, displaying only the appropriate
catalog, categories, and offerings for which a customer is eligible. These rules enable your sales
agents to sell the correct products to customers based on context, such as specific customer
accounts, customer location, sales contracts, and more. You define these rules using product
eligibility matrices. To learn more about using the product eligibility matrices, see Configuring
product offer eligibility.

Product recommendations
In Sales Customer Relationship Management, different types of product recommendations
are available to your sales agents. Your agents can get product recommendations as they're
generating or updating leads and opportunities, or updating quotes.
• Product recommendations using needs analysis - When your sales agents are generating
leads and opportunities, they can use product selection guides to help determine relevant
products for their customers. For information on setting up needs analysis, including the
product selection guides, see Configuring needs analysis. For details on how your agents can
get product recommendations for leads and opportunities, see Get product recommendations
for leads using needs analysis and Get product recommendations for opportunities using
needs analysis.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

116


<!-- page 117 -->
• Product offering recommendations for quotes - When your sales agents are updating
quotes, they can get product recommendations for upselling or cross-selling additional
products for existing quote line items. For information on setting up these recommendations,
see Configuring product offering recommendations. For details on how product offering
recommendations work in quotes, see Using product offering recommendations in quotes.

What to explore next
Configuring product offerings and catalogs

Lead to Cash Core
Create the Sales Customer Relationship Management workflows for a product and service
through entity configurations and mappings. By creating this workflow, your organization
can analyze lucrative business opportunities, customer leads, and the billing, support, and
maintenance requirements after a sale is complete.

Workflows overview
A product goes through multiple phases and workflows from the time that a product is identified
to the time that it’s purchased by the customer. The workflow includes the creation of a quote for
a product or services, the creation of orders, the sold products, the install base items, and the
contracts and entitlements.
If you're an administrator, you create the workflows for your organization and configure the
metadata for your various lead-to-cash entities by activating the foundational Lead to Cash
Core (com.snc.l2c_core) application. With the Lead to Cash Core (com.snc.l2c_core) plugin,
you can compose and build the workflows that your organization maintains for the life cycle of
a sold product. For example, on the Lead to Cash Entities Mapping form on the ServiceNow AI
®
Platform , you select the sold product entity as a source entity and the order as a target entity.
You then map these entities and configurations to create a source to the target flow that is a
sold product to order flow. This mapping provides your users with a unified workflow experience
across the different entities.

Note: An entity is defined as a collection of tables that have information about an order.
The information can come from multiple tables.

Entity configurations
You can configure the definition of a lead-to-cash entity by defining a name and configuration ID
on the Lead to Cash Entity form. The definition creates a back and forth flow of the information
between the various entities.
To learn how to create entity configurations, see Create an entity configuration. To learn how to
create entity mappings, see Create an entity mapping.

Reconfiguration
You can reconfigure an order or a quote that is in the Draft state to make customizations in the
Configurator UI. After the configuration is complete, all the order line items associated with the
order are also updated. To learn more about reconfiguration, see LeadtoCashCore - Scoped .

What to explore next
• Configuring the lead-to-cash foundation applications

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

117


