# Zurich Customer Service Management — Roles required for B2B2C data models / Roles for Outsourced Customer Service / Data classification for Install Base Management +1 more

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 2043–2054 of 2452

Sections: Roles required for B2B2C data models (p2043); Roles for Outsourced Customer Service (p2044); Data classification for Install Base Management (p2045); Glossary Customer Service Management (p2046)

---

<!-- page 2043 -->
Sold Product Covered form (continued)
Field

Description

Note:
• The list of sold products is filtered based on the account related to the
contract or entitlement.
• If a product is added, the Install Base Items field is automatically removed.
• If a product isn't listed, you can add it. Select New in the Sold Products
window. For more information, see Create a sold product.
Install
Base Item

The related install base item.

Note:
• The list of sold products is filtered based on the account related to the
contract or entitlement.
• If an install base item is added, the Sold Product field is automatically
removed.
• If an install base item isn't listed, you can add it. Select New in the Install
Base Item window. For more information, see Create an Install base item.

Service
contract
line

The associated service contract line reference.

Entitlement The associated entitlement reference.
Date
added

The date that the product is added to the entity.

Date
removed

The date until which the product is active on the entity.

Note: The activation time period for the sold product or install base item covered must
comply with the related entity's activation period.

Roles required for B2B2C data models
With the B2B2C model, organizations across industries can easily configure multi-level customer
relationships and support business customers who, in turn, support their end consumers.
Customer data models for B2B2C require different roles, depending on the tasks you perform.
Roles required
Role

Tasks

sn_customerservice_agent (customer service
agent)

Create a case for an account consumer from
platform or Customer Service Management
(CSM) workspaces to track issues. See Create
cases for an account consumer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2043


<!-- page 2044 -->
Roles required (continued)
Role

Tasks

awa_agent and sn_customerservice_agent

Accept a chat request on CSM workspaces
and create a case from the chat interaction.

sn_customerservice_manager (customer
service manager)

Associate consumers to an account to identify
the end consumers who are using products or
services.
Associate install base items/sold products
with account consumers to track the end
consumer issues.

sn_acct_consumer.consumer (account
consumer)

View sold products/install bases items to track
the instances provisioned for your account
and the products or services sold to your
account.
Create a case for install base items or sold
products issues from the CSM portal. You get
email notifications when a case is created,
commented, resolved, or closed. See Create a
case from the CSM portal.

sn_customerservice.customer (account
contact)

View sold products/install bases items to
track end consumer issues. SeeView install
base information from the Customer Service
Portal and View products information from the
Customer Service Portal.
Create a case for an account consumer to
track consumer issues. See Create cases for
an account consumer.

Roles for Outsourced Customer Service
Outsourced Service Providers (OSPs) are organizations that an enterprise engages to provide
customer service to external customers. The OSPs manage cases for customers associated to
their organization.
There are various roles required based on the tasks you perform.
Roles required
Role

Description

sn_csm_ocs.ext_manager (external OSP
manager)

Onboard agents from service providers
they belong to along with managing case
assignments.

sn_csm_ocs.ext_agent (external OSP agent)

Agents can fulfill the cases belonging to the
service provider organization they belong to.

sn_csm_ocs.manager (internal OSP manager)

Manages and monitors all the activities
performed by OSPs. The manager can also

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2044


<!-- page 2045 -->
Roles required (continued)
Role

Description

access the OSP dashboards and act as an
internal point of contact for the organization.

Note: OSP agents and managers can perform their designated tasks using UI16
interfaces, as workspaces aren’t supported at the moment.
Related topics
Set up Outsourced Customer Service
Outsourced Customer Service
Outsourced Service Provider dashboard

Data classification for Install Base Management
Enable customers to automatically classify sensitive data for their workflows. After data is
classified, users can view the type of classification associated to different fields, whether
internal, restricted, confidential, or public.
List of sensitive fields for sold products and install base
Table

Field

Plugin from which the
field is coming

Classification

Sold product table
offering_type
(sn_install_base_sold_product)

Product Catalog
Management core
(sn_prd_pm)

Internal

Sold product table
relationship_type
(sn_install_base_sold_product)

Product Catalog
Management core
(sn_prd_pm)

Internal

Sold product table
unit_of_measurement
(sn_install_base_sold_product)

Product Catalog
Management core
(sn_prd_pm)

Confidential

Sold product table
product_specification
(sn_install_base_sold_product)

Product Catalog
Management core
(sn_prd_pm)

Internal

Sold product table
periodicity
(sn_install_base_sold_product)

Product Catalog
Management core
(sn_prd_pm)

Confidential

Sold product table
pricing method
(sn_install_base_sold_product)

Product Catalog
Management core
(sn_prd_pm)

Confidential

Sold product table
prd_offering
(sn_install_base_sold_product)

Product Catalog
Management core
(sn_prd_pm)

Internal

Sold product table
service_offering
(sn_install_base_sold_product)

Customer Service
with Service Portfolio
Management
(snc.csm_spm)

Internal

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2045


<!-- page 2046 -->
List of sensitive fields for sold products and install base (continued)
Table

Field

Plugin from which the
field is coming

Classification

Sold product table
household
(sn_install_base_sold_product)

Customer Service
Household
(com.snc.household)

Confidential

Sold product table
service_organization
(sn_install_base_sold_product)

Service Organization Confidential
(com.snc.service_organization)

Sold product table
provider_service_organization
Service Organization Confidential
(sn_install_base_sold_product)
(com.snc.service_organization)
Install base table
household
(sn_install_base_item)

Customer Service
Household
(com.snc.household)

Confidential

Install base table
service_context
(sn_install_base_item)

Proactive Customer
Internal
Service Operations
with Event
Management
(snc.proactive_cs_itom)

Install base table
health_status_last_updated
Proactive Customer
Internal
(sn_install_base_item)
Service Operations
with Event
Management
(snc.proactive_cs_itom)
Install base table
service_context
(sn_install_base_item)

Proactive Customer
Internal
Service Operations
with Event
Management
(snc.proactive_cs_itom)

Install base table
health_status
(sn_install_base_item)

Proactive Customer
Confidential
Service Operations
with Event
Management
(snc.proactive_cs_itom)

Install base table
service_organization
(sn_install_base_item)

Service Organization Confidential
(com.snc.service_organization)

Glossary Customer Service Management
Learn about the terms and concepts that are unique to Customer Service Management.

A
Glossary terms are grouped alphabetically.
auto responder
Feature that automatically sends email notifications to customers and watch list members
when a new case is created. Auto-Responder suggests content by comparing the short
description of a case with those of existing knowledge articles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2046


<!-- page 2047 -->
To learn more about auto-responder notifications, see Configure Auto-Responder
notifications.
advanced work assignment
Capability that automatically assigns work items to agents based on their availability,
capacity, and skills. Advanced Work Assignment pushes work items such as cases, chats,
or tasks, to qualified agents using work item queues, routing conditions, and configurable
assignment criteria.
To learn how to configure Advanced Work Assignment, see Configure Advanced Work
Assignment for routing email interactions.
Also known as
AWA
work assignment
routing
asset contact relationship
Relationship between an asset related to a customer account and one or more customer
contacts. This relationship limits access to the asset information to the assigned contacts.
To learn about asset relationships, see Create asset contact relationships.
auto routing
Automatically directing records to the appropriate agent based on predicted values.
To learn more about auto routing, see Using Auto-Responder for case deflections.
Also known as
auto routing

B
Glossary terms are grouped alphabetically.
business location
A business location enables you to model both internal and external organizational
structures, ensuring customers are properly supported while giving agents the right level of
visibility into customer data.
To learn more about business locations, see Business Location 360 components.
Also known as
BL
business portal
Self-service web portal for B2B customers, providing integrated access to knowledge
articles, community forums, service catalogs, and chat bots, enabling customers to browse
products, place orders, and manage order cases.
To learn more about using the business portal, see Using the Business Portal.

C
Glossary terms are grouped alphabetically.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2047


<!-- page 2048 -->
customer data model
A customer data model is a structured framework that defines how customer-related
information is stored, organized, and managed across an organization. It standardizes key
data elements such as customer profiles, accounts, contacts, and relationships, ensuring
consistency and accuracy across systems.
To learn more about customer data models for B2B2C, see Customer Data Models for
B2B2C.
Also known as
CDM
community properties
Configurable attributes that define the behavior, appearance, and access controls of
a ServiceNow Community instance. These properties govern how users interact with
the community portal, including settings for moderation, content visibility, user roles,
engagement metrics, and integration with knowledge bases or case management systems.
To learn more about communities, see Exploring Communities.
community setup
Configuration of the ServiceNow Community platform, where users can engage in peerto-peer support, share knowledge, and collaborate on product-related topics. It involves
defining community properties, assigning roles such as moderators and contributors, and
integrating the community with knowledge bases and case management systems.
community moderation
Structured process of managing user-generated content within the ServiceNow Community
to ensure quality, relevance, and adherence to platform guidelines. Moderators review
unanswered questions, assign them to appropriate experts, and provide follow-up actions
such as requesting clarification, linking to documentation, or marking solutions.
To learn more about configuring moderation filers, see Moderate a community.
computer telephony integration
Feature that customers can use to integrate the Customer Service Management (CSM)
with telephony providers, enabling agents to handle inbound and outbound calls, identify
customers quickly, and capture case information.
Also known as
CTI
channel partners
External organizations like resellers or system integrators that collaborate with an
enterprise to sell products and services, and can be managed through Partner Relationship
Management.
To learn more about channel partners, see Partner Relationship Management

.

customer central
Unified view of customer data, combining self-service and live interactions, customizable
to include metrics like customer health and churn risk. Customer central consolidates
customer data such as account details, interaction history, and self-service actions into a
single interface.
To learn more about customer central, see Customer Central.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2048


<!-- page 2049 -->
case workflows
Sequence of steps and tasks designed to manage and resolve a case from initiation
to closure. Case workflows automate processes such as case creation, routing, task
assignment, and resolution tracking to ensure consistency, efficiency, and compliance.
They provide agents with a guided path to handle customer issues, leveraging automation
to reduce manual effort and accelerate resolution.
To learn more about case workflows, see Case management for Customer Service
Management.
Also known as
case management
routing
case type
Categories of cases with specific data and processes required to resolve different types of
issues, supporting varied departmental or product-specific processes.
To learn more about case types, see Customer service case types.
category filters
Filters that help users narrow down the available items in the service catalog based on
specific categories.
connect workspace
Workspace to enhances the efficiency of customer service agents. It provides a unified
interface where agents can manage and respond to chat requests, voice calls, and other
customer interactions seamlessly.

D
Glossary terms are grouped alphabetically.
demand forecasting
Predicts future customer service demand by leveraging historical interaction data to
generate accurate volume forecasts.
To learn more about demand forecasting, see Demand Forecast in Workforce Optimization
for Customer Service.

E
Glossary terms are grouped alphabetically.
entitlement
Specific services, support levels, or product access a customer is eligible for based on their
service contract, subscription, or purchase history. It acts as a rule-based framework that
governs whether a customer is authorized to receive assistance or access certain features,
ensuring service delivery aligns with contractual obligations.

F
Glossary terms are grouped alphabetically.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2049


<!-- page 2050 -->
field technician
Service professional who travels to customer sites to address customer issues.
Responsible for installation, maintenance, troubleshooting, and servicing installed
products at customer locations.

G
Glossary terms are grouped alphabetically.
gamification
Use of game-like elements and principles such as points, badges, leader boards, levels,
and challenges into non-game environments to enhance engagement, motivation, and
participation.
To learn more about gamification, see Administer gamification.

I
Glossary terms are grouped alphabetically.
internal data
Information about people within the organization, such as managers, agents, and
employees. Internal users can belong to different user groups and be assigned roles such
as customer or consumer service agents and managers. This data is essential for identity
management, access control, collaboration, and compliance with organizational policies.
install base management
The install base management helps track the products and services that are purchased
by a customer along with the detailed configuration for each installed item. It provides
a structured way to monitor customer assets, their configurations, and usage details,
enabling proactive service operations and improved customer experience.
To learn more about Install Base Management, see Data management for Customer Service
Management.
Also known as
install base
IB
IBM
install base characteristics
Attributes associated with an install base item that provides detailed information about
its configuration and service requirements. These characteristics help organizations
manage product-specific details for proactive service operations, case management, and
maintenance workflows.
To learn more about the attributes, see Install base characteristics.
Also known as
IB characteristics
intelligence solutions
AI-driven tools that enhance the application through machine learning, search automation,
and natural language processing.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2050


<!-- page 2051 -->
To learn more about intelligence solutions, see Intelligence.
Also known as
intelligence
predictive intelligence
incident
A record that documents a disruption or potential disruption to a service.

K
Glossary terms are grouped alphabetically.
knowledge base
Repository of articles and information that helps agents and customers resolve issues.
Contains categorized articles that address common issues, provide guidance, and
support case resolution, and can be configured for internal use by agents or externally for
customers.
knowledge workflow
Process and steps that involve creating, reviewing, publishing, and maintaining knowledge
articles within the Knowledge Base.
To configure a knowledge workflow, see Activate Now Assist Skills.
Also known as
knowledge generation
knowledge base
knowledge product entitlement properties
Settings and configurations that define the permissions and access rights for users to
specific knowledge articles or products.
To install entitlement properties, see Components installed with Knowledge Product
Entitlements.

L
Glossary terms are grouped alphabetically.
list control
Settings that determine how related lists are displayed and managed within forms,
including options to enable or disable editing.

M
Glossary terms are grouped alphabetically.
moderator
User responsible for overseeing community interactions and ensuring compliance with
guidelines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2051


<!-- page 2052 -->
moderation filters
Configurable criteria used to identify and manage community content that requires
moderator attention. These filters help surface unanswered questions, flagged posts, or
discussions that meet specific conditions such as inactivity, sentiment score, or topic
relevance allowing moderators to prioritize and respond effectively.
moderation tasks
Structured activities and responsibilities undertaken by a moderator to manage community
content. These tasks ensure that the session runs smoothly, participants remain engaged,
and data collected is accurate and actionable.

N
Glossary terms are grouped alphabetically.
Now Assist
Refers to generative AI experiences on the ServiceNow AI Platform. With Now Assist, you
can improve productivity and efficiency in your organization with better self-service, faster
answers and recommended actions, and empower users to search more effectively.
To learn more about Now Assist, see Exploring Now Assist for Customer Service
Management (CSM).

O
Glossary terms are grouped alphabetically.
outsourced service provider
A third-party organization contracted to deliver services on a company’s behalf, such as
customer support or field services, operating under agreed service levels and policies.
omni-channel support
Unified communication system that enables customers to interact with service teams
across multiple communication channels such as email, chat, phone, and messaging apps
while maintaining a seamless and consistent experience.
To learn more about omnichannel, see Omnichannels for communicating with customers.
also known as
omnichannel engagement
communication channels
unified communication

P
Glossary terms are grouped alphabetically.
performance analytics dashboards
Preconfigured dashboards that provide users such as customer service agents and
managers with insights into data trends, business processes, and areas for improvement.
Examples of Performance Analytics dashboards include the Customer Service Agent
dashboard and the Customer Service Management dashboard.
To learn more about analytics, see Configure the Platform Analytics Solution for SelfService Analytics for Customer Service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2052


<!-- page 2053 -->
Also known as
performance analytics dashboard
analytics
trends
process mining
A business intelligence tool to identify inefficiencies and bottlenecks by creating process
maps. Process mining helps visualize process execution, discover root causes of
performance issues, and automate data-driven improvements.
To learn more about process mining, see Integrating with Process Mining.
Also known as
process optimization
proxy contact
Role or function within an organization that allows certain employees to act on behalf of
others, typically in customer service or case management scenarios. This role enables
employees to perform tasks such as creating, viewing, and managing cases for customers
or partners, even if they do not have direct access to the customer's account. The purpose
of this role is to facilitate efficient handling of customer interactions and ensure that cases
are managed effectively.

Q
Glossary terms are grouped alphabetically.
quick start test
Tests that you can use to validate your instance after making configuration changes such
as applying an upgrade or developing an application. Copy and customize the quick start
tests included with an application and run them with the default demo data provided with
the application plugin.

R
Glossary terms are grouped alphabetically.
resolution notes
Notes added to an incident when it is resolved, detailing the solution.
also known as
resolution comments
reverse matching
Process in which incoming records, such as customer service cases or incidents, are
compared against existing records in the system. This comparison helps identify duplicates
or related items, ensuring that similar issues are grouped together and handled efficiently.
To learn more about reverse matching, see Reverse matching.
Also known as
reverse search
matching
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2053


<!-- page 2054 -->
record categorization
Process of using machine learning models to evaluate text and predict field values on case
and interaction records.

S
Glossary terms are grouped alphabetically.
service contract
It is a contract between a seller and a customer that represents products and services sold
under agreed terms and conditions, prices and period.
service catalog
Enables organizations to provide their customers with self-service opportunities from
customer portals. A service catalog can include different types of catalog items such as
goods or services, order guides, and record producers that enable users to create records.
Customers can access service catalogs from customer portals to make requests and track
request status.
To learn more about service definitions for catalogs, see Service definitions with catalog
items.
service definition
Specifications of service requests tied to particular case types, connecting products,
services, and case types to facilitate quick access for agents and customers.
To learn more about service definitions, see Service definitions.
skill prediction
The process of forecasting the skills required to handle future customer service
interactions based on historical data and trends.
To set up skill prediction, see Setting up skill prediction in Workforce Optimization for
Customer Service.
status trigger
Condition or event that causes a change in the status of a case. For example, a case might
move from Open to In Progress when an agent starts working on it.
special handling notes
Important information about individual records and user's details. The notes can be
assigned a status, priority, and expiration date. Special handling notes can be displayed
on an embedded list or a related list on a record form or in a pop-up window that appears
when a user accesses a form.

T
Glossary terms are grouped alphabetically.
test suite
Collection of tests that run in a specific order. Test designers typically create a test suite to
test an application or a group of related features. They can schedule test suite executions
and initiate any required client test runners.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2054


