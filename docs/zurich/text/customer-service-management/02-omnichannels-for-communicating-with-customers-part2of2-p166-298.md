# Zurich Customer Service Management — Omnichannels for communicating with customers / Agent experience / Case management +3 more

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 166–298 of 2452 | Part 2 of 2

Sections: Omnichannels for communicating with customers (p16); Agent experience (p19); Case management (p21); Intelligence (p23); Analytics and insights (p25); Optimization (p25); Configure (p27); Set up your environment (p30)

---

<!-- page 166 -->
var assetIBIntegrationUtil = new
sn_install_base.AssetIBIntegrationUtils();
assetIBIntegrationUtil.syncExistingInstallBaseRecordsToAsset(ibC
lasses)

Product instance identifier
The product instance identifier helps to avoid creating duplicate records by tracking Install
base items and their corresponding assets. The product instance identifier applies to all the
extensions of the install base [sn_install_base_item] table.

Note: The Is product instance flag on the Model Category form is read-only by default
and is marked true for selective model categories only. The product instance identifier is a
hash value and not a user-friendly field.

Product instance hierarchy for Install Base Management
Adopt the product instance hierarchy into Install Base Management to maintain a
synchronization between an asset and an Install base item in the Customer Service
Management application.
Enable the product instance to create a synchronization for all changes that occur in the asset
hierarchy automatically to reflect in the Install base hierarchy. An Install base item hierarchy
depends on the hierarchy of its associated assets. The Install base hierarchy mirrors its
corresponding asset model hierarchy for both the parent and child Install base items.

Note: All the instances in the hierarchy must belong to the same model category.
Synchronizing the Install base life cycle fields with the state and status fields
You can synchronize the Life cycle stage field and the Life cycle stage status fields with the
State and Status fields on the Install base form so that you can track the life-cycle of an Install
base entity.

Overview of life cycle mapping
Track the life cycle of an Install base entity by migrating to the Common Service Data Model. To
learn more about the CSDM framework, see Common Service Data Model framework for Install
Base Management.

Life-cycle Mapping table
The life-cycle Mapping [life_cycle_mapping] table is already populated with the life cycle
mapping values and choices that you must begin your synchronization of the Life cycle stage
field and the Life cycle stage status fields with the State and Status fields on the Install base
form. The mapping record maps the State fields with their corresponding life cycle fields on
the Install base form. The In Use and InActive options are available in the State field and their
corresponding mappings are available in the life-cycle Mapping [life_cycle_mapping] table. With
these default options, you can initiate a synchronization with the life cycle fields.
Add a mapping record in the life-cycle Mapping [life_cycle_mapping] table to create custom
choices for the State and Status fields. Each custom value has related records on the lifecycle Mapping [life_cycle_mapping] table. You must enable the mapping records for the
synchronization to begin.
For information on how to create the custom choices and then map the Life cycle stage and Life
cycle stage status fields with the legacy State field, see Enabling life-cycle sync from legacy-toasset .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

166


<!-- page 167 -->
Note: If the custom choices have no life cycle mappings, then the Life cycle stage and the
Life cycle stage status fields remain in the To Be Determined state.

Migration of the Install base table
To not activate all the tables and records in the CSDM framework, you can migrate only the Install
Base table (sn_install_base_item) as a part of your CSDM migration process. Use the following
script to migrate the existing records to synchronize the legacy State field with the Install base
life-cycle fields.
var tableNames = [];//list of tablenames ex:
['sn_install_base_item'];
new sn_install_base.IBProductInstanceUtil().
syncLifeCycleFields(tableNames);
Install base hierarchy visualization
Use the Install Base Hierarchy tab on the CSM Configurable Workspace to view the parent-child
hierarchy structure of an install base item.
The install base hierarchy provides a node map of both parent and child items associated with
an install base item. The hierarchy node begins with the install base item that is currently open.
The node map extends toward both the root install base item and the child install base item up to
seven levels of hierarchy.
The first level of the install base hierarchy node map always displays the child items associated
with the current install base item. Select the levels from the level selector to view the number if
install base levels associated with the current install base item.
For example, select Level 1 with the current install base item as the home node, to view all the
child items associated with it. Subsequently, at Level 2, set one of the child install base items
as a home node to have further insight into its own child items. The number of child items are
denoted by a number badge next to the install base node. You can continue to expand the
hierarchy structure up to the seventh level or to 250 nodes, whichever comes first.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

167


<!-- page 168 -->
Hierarchy structure for install base

items

Note: Badges against child items aren't displayed beyond the seventh level of hierarchy.
To view the hierarchy beyond the seven levels, set any one of the install base items in the
hierarchy as the home node.
You can use the hierarchy structure of an install base item to perform the following contextual
actions on individual nodes.
• Set any node as a home node.
• Create a case from the node.
To learn about different case types and how to create a case from an install base node, see
Customer service case types.
• View details of a node. This opens up the entire record of the install base item.
View the details of any install base that is selected in the hierarchy structure on the record card.

Note: Select the Number, Parent install base item, Account, Configuration item, and
Location fields on the record card to navigate to the install base record.
Installed products
Create an installed product to track information on the instances that a sold product is deployed
on at an account or consumer. A sold product can have multiple installed product records
depending on the number of instances of the product in use.

Task

Description

Import installed products with guided setup

Import installed products to provide
information on the sold products and how
they are deployed or installed. Import installed
products to create an association between
sold products and install base items.

Create installed products

Create an installed product to create an
association between sold products and install
base items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

168


<!-- page 169 -->
Import installed products with guided setup
Installed products provide information on the sold products and how they are deployed or
installed. Import installed products to create an association between sold products and install
base items.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and click Get Started.
2. In the Foundation Data category, click Get Started and then click Import Installed Products.
3. Upload data from an external data source into an import set.
4. Create a transform map.
5. Execute the transform map to transfer the data.
6. Verify that the data records are imported into the target table.
Create installed products
Create an installed product to create an association between sold products and install base
items. Installed products provide information on the instances that a sold product is deployed
on.

Before you begin

Role required: sn_customerservice_manager or admin
Ensure that the Customer Service Install Base Management plugin (com.snc.install_base) is
installed.

Procedure
1. Navigate to All > Customer Service > Products > Installed Products.
2. Click New.
3. Fill out the fields on the form.
Installed Product form
Field

Description

Install Base Item

Instance the sold item is deployed on.

Sold Product

Sold product deployed to the customer.

4. Click Submit.
Common Service Data Model framework for Install Base Management
The Common Service Data Model (CSDM) framework is a standard set of terms and definitions
®
that you can adopt across all ServiceNow products on the ServiceNow AI Platform. By using this
framework, you can effectively track assets through their life cycle transitions.
The CSDM is the data framework that you follow when you set up ServiceNow products and
applications. You adhere to the CSDM guidelines when you define the configuration items
(CIs) and the relationships between CIs in the CMDB. This process helps to verify that your

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

169


<!-- page 170 -->
data resides in the appropriate CMDB tables so that you get the maximum value from your
ServiceNow AI Platform applications. To learn about CSDM, see Common Service Data Model
To set up a CSDM environment for Install Base Management, see Activate the CSDM plugin

.
.

Note: It's optional to adopt CSDM. You can either adopt the CSDM framework or continue
using the existing model.
You can use a migration script to update the CSDM life-cycle values in the existing install base
records. To learn about the migration script, see Synchronizing the Install base life cycle fields
with the state and status fields.
Configure assets
An asset is a specific product or instance that is supported for a customer.
Role required: admin
Assets can have serial numbers or asset tag numbers and can be allocated to individual
accounts or to a contact within an account. Assets can also have associated support contracts.

Note: Customer Service Management leverages the Asset Management
application to create and maintain assets. Ensure that the Asset Management plugin
(com.snc.asset_management) is activated.
You can either import your existing assets using guided setup or create new assets using the
Customer Service Management.
Related topics
Configure Install base
Import assets with guided setup
Use Customer Service Management guided setup to import existing assets.

Before you begin

Role required: admin

About this task

There are different types of assets and information for each type of asset is stored in a different
table. For example, hardware assets are stored in the Hardware [alm_hardware] table.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and click Get Started.
2. In the Foundation Data category, click Get Started and then click Import Assets.
3. Upload data from an external data source into an import set.
4. Create a transform map.
5. Execute the transform map to transfer the data.
6. Verify that the data records are imported into the target table.
Create an asset
Create a record for a specific instance of a product.

Before you begin

Role required: sn_customerservice_manager or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

170


<!-- page 171 -->
Customer Service Management leverages the Asset Management application to create and
maintain assets. Ensure that the Asset Management plugin (com.snc.asset_management) is
activated.

Procedure
1. Navigate to All > Customer Service > Products > Assets.
2. Click New.
3. Select the type of asset to create:
◦ Hardware
◦ Software License
◦ Consumable
◦ License
◦ Facility
4. Fill in the fields for the selected asset type on the Asset form, as appropriate.
5. Click Submit.
Create asset contact relationships
Assign an asset to a customer contact who is responsible for managing that asset.
Account and partner contacts can see all of the assets related to an account. To limit access
to an asset, you can create an asset contact relationship and assign the asset to one or more
contacts. Then you can enable the associated property to restrict access to the asset information
to the assigned contacts.
The system administrator can add a primary contact to an asset by selecting a user in the
Primary Contact field on the Asset form. This field references the Contacts table and is filtered
by the asset’s account.
The system administrator can also create relationships with additional contacts from the Asset
Contacts related list on the Asset form. When you create an asset contact relationship, you can
select contacts from:
• The account that the asset belongs to.
• The partner of the account that the asset belongs to.
• Any contacts added to these accounts using contact relationships.
After adding contacts to an asset, enable the related property to limit access. When enabled, the
following access is limited from the customer portal:
• When a user clicks My Assets, the list shows only those assets for which the user is a contact.
• When a user clicks Create Case, the Asset field on the Create Case form shows only those
assets for which the user is a contact.
Assign a primary contact to an asset
Users with the system administrator role can assign a primary contact to an asset.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

171


<!-- page 172 -->
Procedure
1. Navigate to All > Customer Service > Products > Assets.
2. Click the desired asset.
3. Select a Primary Contact.
This field references the Contacts [customer_contact] table and is filtered by the account
selected in the Account field.
4. Click Update.
The contact is added to the Asset Contacts related list on the asset form.
Assign a contact to an asset
Users with the system administrator role can assign a contact to an asset.

Before you begin

Role required: admin

About this task

Users with the sn_customerservice.customer_admin can also assign a contact to an asset from
the Customer Service Portal.

Procedure
1. Navigate to All > Customer Service > Products > Assets.
2. Select the desired asset.
3. From the Asset Contacts related list, select New.
When you select New, a new Asset Contact form is displayed with the Asset field filled in.
4. Select a Contact from the list of available contacts within the asset's account.
5. Select the Order field to specify the sequence in which records are displayed, organized
according to business preferences.
6. Select Submit.
The contact is added to the Asset Contacts related list.
Enable the asset contact relationship property
Limit access to asset information to the assigned contacts by enabling the associated property.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Administration > Properties.
2. Set the Restrict Assets based on Contacts assigned to the assets
property to true.
3. Click Save.
Create service contracts
Service contracts define the type of support that customers receive.

Before you begin

Role required: sn_customerservice_manager or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

172


<!-- page 173 -->
About this task

A contract can include an account and contact or a consumer and the specific assets that are
covered. A contract can also include multiple service entitlements and SLAs.

Procedure
1. Navigate to All > Customer Service > Contracts > Service Contracts.
2. Click New.
3. Fill in the fields on the Contract form, as appropriate.
Contract form
Field

Definition

Number

The automatically created contract number.

Account

The name of the account associated with this contract.

Consumer

The name of the consumer associated with this contract.

Contract administrator

The individual who is responsible for managing the contract.

Approver

The user who approves or rejects the contract.

Contract number

The number assigned to the contract by the customer.

State

The current state of the contract:
◦ Draft
◦ Active
◦ Expired
◦ Canceled

Starts

The date that the contract starts.

Ends

The date that the contract ends.

Name

A name for the contract.

4. Right-click the form header and select Save.
The Entitlements, Assets Covered, Terms and Conditions, Contracts, Cases, and Products
Covered related lists are displayed.
5. On the Products Covered related list, click Edit to associate sold products to the contract.
The list of sold products displayed is filtered based on the account. Click Run filter to see a
list of all sold products, but you can only add the sold products that belong to the account
selected or to the account hierarchy.
6. Click Submit.
You can also click Submit For Review to place the contract in the Draft state and send an
email to the Approver to review the contract.
Customer service agents can view contract information in Agent Workspace and customers
can view contract information on the Customer and Consumer Service Portals.
Associate an install base to a service contract
Associate install base items with a service contract to see the list of all the different service
contracts that are associated to an install base item in the Customer Service Management
application. By associating an install base, you can set a relationship between an install base
and a contract.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

173


<!-- page 174 -->
Before you begin

Role required: sn_customerservice_manager and admin

About this task

Associate install bases to service contracts to access all the contracts that are related to the
parent install base item.

Procedure
1. Navigate to All > Customer Service> Contracts> Service Contracts.
2. Open the contract that you want to associate the install base to.
3. Select New.
4. Create an association by selecting a value for the Install base Item field.
5. Select Submit.
Configure entitlements
An entitlement defines the type of support that a customer receives as well as the supported
communication channels.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

You can associate an entitlement with a product, an asset, an account, or a contract. An
entitlement check is performed when a case is opened. This check takes into consideration the
existing cases for the specific account, product, asset, and service contract. Entitlements can
also have associated workflows that drive recommended activities for a case.
Entitlements are counted on a per unit basis. The Unit field on the Service Entitlement form
defines the unit type, either cases or hours.
The Total Units field defines the total number of cases or hours available for this entitlement and
the Remaining Units field tracks the number of units remaining. These counters are active if the
Per Unit field is enabled.
The Remaining Units field is updated using business rules.
• When using cases as the unit type, the Update case entitlement on Close business rule
updates this field when a case for a product, asset, company, or contract that has an
associated entitlement is closed.
• To use hours as the unit type, customers must create a separate business rule. For example,
create a rule that is applied to the amount of time an agent spends on a case. When a case is
resolved, deduct the hours spent from the total service hours available in the entitlement.
Keep these guidelines in mind as you create entitlements.
• Product entitlements: when creating an entitlement for a product, select the product from the
Product field and then select an account or a consumer.
• Asset entitlements: when creating an entitlement for an asset, select a company first and then
the only assets that are shown are those belonging to that company.
• Contract entitlements: when creating an entitlement for a contract, select the contract and
then the assets that are covered as a contract line item. The resulting contract entitlement is
valid for the assets listed within that contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

174


<!-- page 175 -->
Procedure
• Create entitlements for customer service entities
• Associate entitlements with customer service entities
Create entitlements for CSM entities
Create an entitlement for a Customer Service Management entity such as an account, a
consumer, or a product.

Before you begin

Role required: sn_customerservice_manager or admin

Procedure
1. Navigate to All > Customer Service > Contracts > Entitlements.
You can also create an entitlement from the Entitlements related list on the Account and
Contract forms.
2. Click New at the top of the Entitlements list.
3. Fill in the fields on the Entitlement form.
Service Entitlement form
Field

Definition

Name

The name of the entitlement.

Product

The product model associated with this entitlement.

Account

The name of the account associated with this entitlement.

Consumer The name of the consumer associated with this entitlement.
Contract

The contract number associated with this entitlement .

Asset

The asset tag number or the serial number of the asset associated with this
entitlement.

Active

Check this box to enable the entitlement. Active entitlements are available for
selection when creating a new case.

Channel

One or more communication channels associated with this entitlement.
◦ Email
◦ Web
◦ Phone
◦ Chat

Install
Base Item

The install base item associated with the entitlement. Configure the form layout
to add the Install Base Item field.

Note: This field is only available if the Customer Service Install Base
Management plugin (com.snc.install_base) is installed.
Sold
Product

The sold product associated with the entitlement. Configure the form layout to
add the Sold Product field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

175


<!-- page 176 -->
Field

Definition

Note: This field is only available if the Customer Service Install Base
Management plugin (com.snc.install_base) is installed.
Business
hours

The schedule associated with this entitlement.

Start date

The start date for this entitlement.

End date

The end date for this entitlement.

Total Units The total number of units designated for this entitlement. This field is active if the
Per unit check box is enabled.
Remaining The number of available units that are remaining for this entitlement. This field is
Units
active if the Per unit check box is enabled.
This field is updated using business rules.
◦ When using cases as the unit type, the Update case entitlement on Close
business rule updates this field when a case for a product, asset, company, or
contract that has an associated entitlement is closed.
◦ To use hours as the unit type, customers must create a separate business
rule. For example, create a rule that is applied to the amount of time an agent
spends on a case. When a case is resolved, deduct the hours spent from the
total service hours available in the entitlement.
Unit

The type of unit being measured for this entitlement: Cases or Hours.

Per unit

Select this check box to enable unit counters. If enabled, the Total Units and
Remaining Units fields are activated.

4. Click Submit.
Associate an entitlement with a Customer Service Management entity
Associate an entitlement with a CSM entity such as an account, contract, asset, product, or
install base item, to determine the type of support that a customer needs to receive.

Before you begin

Role required: sn_customerservice_manager or admin

Procedure
1. Navigate to All > Customer Service > Contracts > Entitlements.
2. From the Entitlements list, select an entitlement.
3. Select the lookup icon to the right of one of the Product, Account, Contract, Asset, or Install
Base Item fields.
4. From the list, select the entity that you want.

Note: If you select an entity in more than one of the listed fields, the selections that are
available in subsequent fields are filtered by the selections already made.
5. To associate an entitlement with an install base, right-click the Configuring Entitlement Form
and navigate to Form Layout > Configure .
6. From the Available box, select Install Base Item.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

176


<!-- page 177 -->
Your selection is automatically moved into the Selected box.
7. Select Save.
8. In the Entitlement form that reappears, select the Install Base Item field and add the install
base item that you want to associate with the entitlement.
Customer service case entitlement calculation
When a customer service agent creates a case, the system uses a configurable method to derive
the entitlement based on several fields related to the case record.
These fields include:
• Account
• Consumer
• Product
• Asset
• Contract
• Case Channel
If the Proactive Customer Service Operations plugin (com.snc.proactive_cs_ops) is active, the
system also considers these fields:
• Sold Product
• Install Base
Relative weights are assigned to each field. Entitlements are calculated based on the weight and
precedence. The entitlement with the highest score is assigned to the case.
Weights assigned to different fields
Field

Weight/Precedence Assigned

Account / Consumer

1

Product

2

Asset / Sold Product / Install Base item

3

Contract

4

The entitlement calculation uses the global.CSManagementUtils script and the
getFirstEntitlement method.
Customer Life Cycle Management Workflows
Manage the life cycle of your sold products by activating the Customer Life Cycle Management
Workflows (com.snc.customer_lifecycle_mgmt_workflows) application.

Overview of workflows
The Customer Life Cycle Management Workflows (com.snc.customer_lifecycle_mgmt_workflows)
application enables you to update the existing configurations, and to modify, suspend, resume,
or disconnect the sold products and their complete hierarchy. The workflows are built and
composed by using the lead-to-cash transactional operations like Effect, Create Instance, Delta,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

177


<!-- page 178 -->
and Commit Instance. To learn more about the transactional operations of the Lead to Cash Core
(com.snc.l2c_core) plugin, see Lead to Cash Core .

Plugins for the Customer Life Cycle Management Workflows
The following table lists the required plugins for the Life Cycle Management Workflows plugin.
Required plugins for the Life Cycle Management Workflows plugin
Plugin

Description

Customer Service Install Base Management

Enables customers to capture the current
state of a customer's install base and establish
the relationship to any downstream entities
that might impact their functioning.

(com.snc.install_base)

To learn more about install base management,
see Configure Install base.
Product Catalog Management
(com.sn_prd_pm)

Enables companies to define the products
and services they market, sell, and deliver to
customers.
To learn more about product catalogs, see
Product Catalog Management .

Lead to Cash Core
(com.snc.l2c_core)

Enables customers to compose and build the
workflows for various entities. To learn more
about the Lead to Cash Core plugin, see Lead
to Cash Core .

Life Cycle workflows and configurations
Perform the Modify, Suspend, Resume, and Disconnect declarative actions on the complete
hierarchy of the sold products. These actions will transform and maintain their state and
characteristics. You can perform these actions on the sold product entities to update the existing
products or services. The declarative actions are available on the sold product related list on the
account detail page on Configurable Workspace.

Note: The declarative actions with the sold product to order flow are available only if the
Order Management (com.sn_ind_tmt_orm) plugin is installed.
The Sold Product related list on the Accounts page displays all the sold products regardless
of the product offer having a product specification. You can also select a sold product with a
product specification associated with the product offering and perform any of the MACD flows.
Be sure to upgrade to Xanadu to perform the modify, suspend, resume, and disconnect actions
on product offerings that have a specification associated with it.

Note: If Product Inventory records are selected, the Modify, Suspend, Resume, and
Disconnect actions are deactivated.
Workflows
Multiple sub-flows are based on the modify, suspend, resume, and disconnect actions that
help to update the sold products and their configurations. The flows are based on a set of
entity configurations that are shipped when you activate the Customer Life Cycle Management
Workflow plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

178


<!-- page 179 -->
The following table lists the flows for the declarative actions.
Flow Designers for declarative actions
Flow

Description

Sold product to Suspend order

This flow is responsible for creating a suspend
order when the Suspend action is triggered on
a sold product.

Sold product to Resume order

This flow is responsible for creating a resume
order when the Resume action is triggered on
a sold product.

Sold product to Disconnect order

This flow is responsible for creating a
disconnect order when the Disconnect action
is triggered on a sold product.

Add order to sold product

This flow is responsible for creating a sold
product order when order is moved to
completed.

Note: The

sn_ind_tmt_orm.enable_prod_invt_for_order_management
property is set to False by default
with the Order Management
(com.sn_ind_tmt_orm) plugin.
However, if the Order Management
for Telecommunications, Media, and
Technology (com.sn_om_tmt) plugin
is installed, the property value is set to
True.
If the property value is false, a
record is created in the sold product
(sn_install_base_sold_product) table.
If the property value is true, a record
is created in the Product inventory
(sn_prd_invt_product_inventory) table.
Change order to sold product

After an order is marked completed, this flow
triggers and thus entire product hierarchy
shows the updated configuration made by
the customer, along with the associated
pricing adjustments that were processed
through the Sold Product to order flow. For
more information on pricing management,
see Components installed with Pricing
Management .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

179


<!-- page 180 -->
Flow Designers for declarative actions (continued)
Flow

Description

Note: The

[sn_ind_tmt_orm.enable_prod_invt_for_orde
is set to False by default with the Order
Management (com.sn_ind_tmt_orm)
plugin. However, if the Order
Management for Telecommunications,
Media, and Technology (com.sn_om_tmt)
plugin is installed, the property value is
set to True.
If the property value is false, a record
is created or updated in the sold
product (sn_install_base_sold_product)
table. If the property value is
true, a record is created or
updated in the Product inventory
(sn_prd_invt_product_inventory) table.
Suspend order to sold product

This flow is responsible for suspending a sold
product on completion of an order.

Resume order to sold product

This flow is responsible for resuming a sold
product on completion of an order.

Disconnect order to sold product

This flow is responsible for disconnecting a
sold product on completion of an order.

Note: If the 'sn_ind_tmt_orm.enable_prod_invt_for_order_management' property is set to
true, the last five flows in the displayed table are disabled.

Note: The back and forth flow of the data (from a sold product to an order, an order to a
sold product) happens with the help of a set of entity configurations.
Configurations
Configurations are a set of end-to-end flows that enable the data to flow from one entity to
the other. The sub-flows that are triggered with each declarative action are based on the
configurations that are listed in the following table.
Configurations for declarative actions
Configuration

Configuration ID

Source Entity

Target Entity

Sold product to Order

sn_l2cSold product
cust_flows_sp_to_order

Order

Order to Sold Product

sn_l2c_cust_flows_order_to_sp
Order

Sold product

To learn more about the configurations, see Entity configuration and mapping

.

Related topics
Modify a sold product and hierarchy
Modify a sold product to create a quote
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

180


<!-- page 181 -->
Resume a single sold product
Resume multiple sold products
Disconnect a single sold product
Disconnect multiple sold products
Suspend a single sold product
Suspend multiple sold products
Activate Customer Life Cycle Management Self-Service
If you have the admin role, you can install the Customer Life Cycle Management Self Service
plugin.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Customer Life Cycle Management Self Service plugin (sn_clm_selfservice) using the
filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they will be installed, are currently installed,
or need to be installed. If any plugins or applications need to be installed, you must install
them before you can install the Customer Life Cycle Management Self Service plugin
(sn_clm_selfservice).
4. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
5. Select Install.
Related topics
View product information from Business Portal
View Product Inventory information on Business Portal
Modify a sold product and hierarchy
Modify a sold product and its complete hierarchy on the CSM Configurable Workspace so that
you can update its existing configurations. For example, you may want to modify a sold product's
characteristics and the line items (hierarchy) that are associated with it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

181


<!-- page 182 -->
About this task

After an order is created, the fulfillment process for the order begins. After the order is fulfilled
and marked Complete, the order to sold product flow is triggered. This flow applies the changes
to the sold products. The changes are based on the updates that are specified on the order.

Before you begin

Required plugins: Product Configurator UI (app-prd-config-ui)
Role required: sn_ind_tmt_orm.order_admin or sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the sold product belongs to.
4. In the Sold Products related list, select the product that you want to modify the characteristics
and line items for.

Note: You can do a Modify action on either the root or the child sold products only if the
sold product is in the Active state. The sold product must have a product offering without
a specification that is associated with it. If you select two sold products at the same time,
you can't do the Modify action.
5. Select Modify.
6. On the Configurator UI, modify the existing configurations for the sold product.
To learn more about the Configurator UI, see Exploring Sales and Order Management

.

7. Select Update.
An order to modify the sold product is created. You can select the order number from the
confirmation message on the sold products page to open the order and see the order line
items. Alternatively, you can find the order in the Customer Orders list.
Modify a sold product to create a quote
Modify a sold product and its complete hierarchy on the CSM Configurable Workspace to
generate a quote for any updated characteristics or configurations. For example, a customer may
want to find the price to modify a sold product's characteristics and the line items (hierarchy) that
are associated with it.

About this task

Change a sold product or its characteristics. When you modify a sold product's characteristics,
a sold product to quote flow is triggered. This flow applies changes to the existing sold product
characteristics and presents customers with a quotation based on their selected changes.
Required plugins: Product Configurator UI (com.sn_prd_config_ui), Quote
Management (app-l2c-quote-mgmt), and Customer Lifecycle Management workflows
(com.snc.customer_lifecycle_mgmt_workflows) (
Role required: Sales Agent (sn_sales_common.sales_agent) and Sales Manager
(sn_sales_common.sales_manager)

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the sold product belongs to.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

182


<!-- page 183 -->
4. In the Sold products related list, select the product that you want to modify the characteristics
and line items for.
5. Select Modify to update the characteristics of the sold product.

Note: If you have both the Order Management (com.sn_ind_tmt_orm) and Quote
Management (app-l2c-quote-mgmt)) plugins the order agent, order admin, sales agent,
and sales manager can perform the Modify action that results in an order. To specifically
create a quote, customers must configure the decision table to modify existing sold
product according to their business needs. Users performing the modify flow must have
both the sales agenda and the order agent roles. To learn more about the decision table,
see Modify decision table rules in Workflow Studio .
6. On the Configurator UI, modify the existing configurations for the sold product.
To learn more about the Configurator UI, see Exploring Sales and Order Management

.

7. Select Update.
A quote to modify the sold product and its hierarchy is created. You can select the quote
number from the confirmation message on the sold products page to open the quote and see
the quote line items.
In the Sold product to Quote flow, the data from Account, Contact, Name,Product Offering,
Quantity, Sys_id, Characteristic, Characteristic Option, and Characteristic Value fields are
transferred from the Sold Product to Quote Line Item records.
Resuming sold products
Resume sold products to create a resume order on the CSM Configurable Workspace.
Resume single or multiple root sold products and create combined orders for suspension and
resumption of products and servies at the same time, to improve agent efficiency.
Resume sold products
Task

Description

Resume a single sold product

Resume a single sold product

Resume multiple sold products

Resume multiple sold products

Resume a single sold product
Create an order to resume a sold product and its hierarchy on the CSM Configurable Workspace.
By resuming a sold product, you can restart a product or service.

About this task

After an order is created and marked Complete, the order to sold product flow is triggered after
fulfillment. This flow enables you to resume a sold product.

Before you begin

Role required: sn_ind_tmt_orm.order_admin or sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the sold product belongs to.
4. In the Sold Products related list, select the sold product that you want to resume.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

183


<!-- page 184 -->
Note: You can do a Resume action on the root sold product only if it is in the Active
state. The sold product must not have a specification that is associated with it. The
Resume option isn't visible if you select a child sold product.
5. Select Resume.
The Resume action is enabled on sold products that are in Inactive or Suspended states only.
6. In the Resume sold product window, in the Start date and time field, enter when you want to
resume the sold product.
7. Select Resume.

Result

An order for resuming the sold product is created.
Resume multiple sold products
Create an order to resume multiple sold products and their hierarchy on the CSM Configurable
Workspace.

About this task

After an order is created and marked Complete, the order to sold product flow is
triggered after fulfillment. This flow creates sold products on the sold product table
(sn_install_base_sold_product).
Role required: sn_ind_tmt_orm.order_admin or sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, select Customer > Accounts.
3. Open the account that the sold product belongs to.
4. In the Sold Products related list, select the sold products that you want to resume.

Note: You can do a Resume action only on the root sold product with a product offering
and if it is in the Inactive or Suspended state. The Resume option is disabled if you
select a child-sold product.
5. Select Resume.
6. In the Resume sold products window, in the Start date and time field, enter when you want to
resume the sold products.
7. Add a reason for a resumption in the Reason for resumption field.
8. Select Resume.

Result

An order for resuming the sold products is created, while order line items are created in an
asynchronized manner.
Supending sold products
Suspend sold products to create a suspend order or quote on the CSM Configurable Workspace.
Supend single or multiple root sold products and create combined orders for suspension and
resumption of products and servies at the same time, to improve agent efficiency.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

184


<!-- page 185 -->
Suspend sold products
Task

Description

Suspend a single sold product

Suspend a single sold product

Suspend multiple sold products

Suspend multiple sold products

Suspend a single sold product
Create an order to suspend a sold product and its hierarchy on the CSM Configurable
Workspace. By suspending a sold product, you can reduce the number of canceled products or
services and take the time to fix that product or service.

About this task

After an order is created and marked Complete, the order to sold product flow is triggered after
fulfillment. This flow enables you to suspend a sold product.

Note: You can also indefinitely suspend a sold product without creating a resume order.
Before you begin

Role required: sn_ind_tmt_orm.order_admin or sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the sold product belongs to.
4. In the Sold Products related list, select the sold product that you want to suspend.

Note: You can do a Suspend action on the root sold product only if it is in the Active
state. The sold product must not have a specification that is associated with it. The
Suspend option isn't visible if you select a child sold product.
5. Select Suspend.
6. In the Suspend sold product window, in the Start date and time field, enter the start date and
time that you want to start the suspension.

Note: If you fill in only the Start date and time field, a suspend order line item is created.

A resume order line item is created within the same order header if the End date and time
field is also filled in.
7. Add a reason for a suspension in the Reason for suspension field.
For example, a disturbance due to a renovation can be a reason for suspension.
8. Select Suspend.

Result

An order with the suspend action is created for the suspend order line items. If you specify an
end date and time, a resume order line item is created as a part of the same order. When you
update the suspend action line item to Complete, the sold product state automatically updates
to Suspended. When you move the state of the resume action line item to Completed, the sold
product state updates to the Active state. The Resume action is enabled only if you set the state
of the sold product as Inactive.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

185


<!-- page 186 -->
Suspend multiple sold products
Create an order to suspend multiple sold product and their hierarchy on the CSM Configurable
Workspace. By suspending a sold product, you can reduce the number of canceled products or
services and take the time to fix that product or service.

Before you begin

Role required: sn_ind_tmt_orm.order_admin or sn_ind_tmt_orm.order_agent

About this task

After an order is created and marked Complete, the order to sold product flow is
triggered after fulfillment. This flow creates sold products on the sold product table
(sn_install_base_sold_product).

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the sold product belongs to.
4. In the Sold Products related list, select the sold products that you want to suspend.

Note: You can do a Suspend action only on root sold products with a product offering
and if it is in the Active state. The Suspend option is disabled if you select a child sold
product.
5. Select Suspend.
6. In the Suspend sold products window, in the Start date and time field, enter the start date and
time that you want to start the suspension.
You can see the selected sold products in the accordian.

Note: If you fill in only the Start date and time field, a suspend order line item is created.
If you fill in the End date and time field, a resume order line item is also created within the
same order header.
7. Add a reason for a suspension in the Reason for suspension field.
For example, a disturbance due to a renovation can be a reason for suspension.
8. Select Suspend.

Result

An order with the suspend action is created. Suspend order line items are created in an
asynchronized process. If you specify an end date and time, a resume order line item is also
created as a part of the same order.
When you update the suspend order line item to Complete, the sold product state automatically
updates to Suspended.
When you update the state of the resume order line item to Completed, the sold product state
updates to the Active state.
Disconnecting sold products
Disconnect sold products to create a disconnect order on the CSM Configurable Workspace.
Disconnect single or multiple root sold products at the same time, to improve agent efficiency.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

186


<!-- page 187 -->
Disconnect sold products
Task

Description

Disconnect a single sold product

Disconnect a single sold product

Disconnect multiple sold products

Disconnect multiple sold products

Disconnect a single sold product
Disconnect a sold product in the CSM Configurable Workspace so that you can permanently
disconnect a product and its services.

About this task

After an order is created on the order form and is marked Complete, a flow is triggered. This flow
enables you to disconnect a sold product and its services after fulfillment.

Before you begin

Role required: sn_ind_tmt_orm.order_admin or sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the sold product belongs to.
4. From the Sold Products related list, select the sold product that you want to disconnect.

Note: You can do the Disconnect action only on one root sold product whose state is
Active and has a product offering without a specification that is associated with it. The
option isn't visible if you select a child sold product.
5. Select Disconnect.
6. In the Disconnect sold product pop-up window, enter when you want the disconnection to start
in the Start date and time field and the reason why you want to disconnect the product in the
Reason for disconnection field.
7. Select Submit.

Result

An order for a disconnection is created. After the order is fulfilled, the sold product is moved to
the Inactive state.
Disconnect multiple sold products
Create an order to disconnect multiple sold products and their hierarchy on the CSM
Configurable Workspace.

About this task

After an order is created and marked Complete, the order to sold product flow is
triggered after fulfillment. This flow creates sold products on the sold product table
(sn_install_base_sold_product).
Role required: sn_ind_tmt_orm.order_admin or sn_ind_tmt_orm.order_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

187


<!-- page 188 -->
Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, select Customer > Accounts.
3. Open the account that the sold products belong to.
4. In the Sold Products related list, select the sold products that you want to disconnect.

Note: You can do a Disconnect action only on the root sold product with a product

offering only if it is in the Active state. The Disconnect option is disabled if you select a
child-sold product.
5. Select Disconnect.
6. In the disconnect sold products window, in the Start date and time field, enter when you want
to disconnect the sold products.
7. Add a reason for a suspension in the Reason for disconnection field.
8. Select Disconnect.

Result

An order for disconnecting the sold products is created, while order line items are created in an
aysnchronized manner.
Extension points for workflows
Override existing scripts or call custom scripts for the workflows by using extension points on the
®
ServiceNow AI Platform .
You can access the available extension points for the customer life cycle management workflows
®
in the ServiceNow AI Platform . Start by entering sys_extension_point.list in the application
navigator and pressing Enter. Then, you can select the extension point that you want to
view the record details of. If you want to override an existing script, you can select Create
implementation.
You can create extension points so that you can create a workflow for a sold product extension
that is not already configured. You can also override extension points to create configurations.
To learn more about the existing extensions and configurations of the Customer Life Cycle
Management Workflows, see Customer Life Cycle Management Workflows.
You can create several implementations for each extension point and provide an order number
for each implementation. The implementation that has the lowest order number is the one that is
executed.
The following table lists the extension points of the Customer Life Cycle Management Workflows.
Extension points for the Customer Life Cycle Management Worklows application
Extension points

Description

CustomerWorkflowsEP

Overrides the existing flows and
configurations.

sn_l2c_cust.flows.CustomerWorkflowEP

This extension can be used for any one of
these two reasons:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

188


<!-- page 189 -->
Extension points for the Customer Life Cycle Management Worklows application
(continued)
Extension points

Description

• If you want to execute custom flows
that are extensions of the current sold
product (sn_install_base_sold_product)
table. To learn more about existing flows,
see Customer Life Cycle Management
Workflows.
• If you want to execute custom Lead to Cash
Core configurations. To learn more about
existing Lead to Cash configurations, see
Entity configuration and mapping .
GetSoldProductClassEP
sn_l2c_cust_flows.GetSoldProductClassEP

Returns the correct sold product and product
inventory class. The extension can be used to
create custom flows in the Add and Modify
flows.

CustomerWorkflowCompleteEP

Overrides existing methods to perform any
custom post-processing actions after an order
sn_l2c_cust_flows.CustomerWorkflowCompleteEP
to sold product flow is complete.
Product inventory configurations
You can select one or more product inventory records to update their configurations and perform
the Modify,Suspend, Resume, and Disconnect operations.
Create orders or quotes from product inventory records on the CSM Configurable Workspace.
Configurations for product inventory records
Action

Description

Modify product inventory records

Perform the Modify operation on a single
product inventory record that results in the
creation of an order.

Modify product inventory records to create a
quote

Perform the Modify operation on a single
product inventory record that results in the
creation of a quote.

Resume product inventory records

Perform the Resume operation on single or
multiple product inventory records that result
in the creation of resume orders.

Suspend product inventory records

Perform the Suspend operation on single or
multiple product inventory records that result
in the creation of suspend orders.

Disconnect product inventory records

Perform the Disconnect operation on single or
multiple product inventory records that result
in the creation of disconnect orders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

189


<!-- page 190 -->
Modify product inventory records
Perform the Modify operation on a single product inventory record that results in the creation of
an order on the CSM Configurable Workspace to update its existing configurations. For example,
you may want to add or delete an optional product inventory or update its configurations.

Before you begin

Role required: Sales Agent (sn_sales_common.sales_agent) or Sales Manager
(sn_sales_common.sales_manager)

About this task

When a Modify action is performed and an order is created, the fulfillment process for the order
begins. After the fulfillment flow is complete, the order is marked as Complete and the product
inventory record is updated.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace
2. In the list view, select Customer > Accounts.
3. Open the account that the product inventory belongs to.
4. Navigate to the Product Inventories related list.

Note: The Product Inventories related list will be available out of the box starting from
the Yokohama release. Customers using the Washington or Xanadu versions must add
the related list manually.
You can retain either the sold product or the product inventories related list. If you want to
retain both the lists, filter out the product inventory records from the sold product related
list and perform the Modify flow from the product inventory record.
5. Select a product inventory record in Active state and select Modify.

Note: The Modify flow can be triggered only on a root product inventory record.
6. On the Configurator UI, modify the existing configurations for the product inventory record.
To learn more about the Configurator UI, see Exploring Sales and Order Management .
7. Select Update.
An order to modify the product inventory is created. You can select the order number from the
confirmation message on the account page to open the order and see the order line items.
Alternatively, you can find the order in the Customer Orders list.
Modify product inventory records to create a quote
Perform the Modify operation on a single product inventory record that results in the creation of
a quote on the CSM Configurable Workspace. For example, you might want to add or delete an
optional product inventory or update its configurations.

Before you begin

Role required: Order admin (sn_ind_tmt_orm.order_admin) or Order agent
(sn_ind_tmt_orm.order_agent)

About this task

The Modify flow generates a quote. After the quote is marked as Complete, an order is created.
On fulfillment of the order, the product inventory record is updated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

190


<!-- page 191 -->
Required plugins: Product Configurator UI (com.sn_prd_config_ui), Quote
Management (app-l2c-quote-mgmt), and Customer Lifecycle Management workflows
(com.snc.customer_lifecycle_mgmt_workflows)

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the product inventory belongs to.
4. Navigate to the Product Inventories related list.
5. Select a single product inventory record in Active state and select Modify.

Note: The Modify flow can be triggered only on a root product inventory record.
If you have both the Order Management (com.sn_ind_tmt_orm) and Quote Management (appl2c-quote-mgmt)) plugins the order agent, order admin, sales agent, and sales manager can
perform the Modify action that results in an order. Users performing the modify flow must have
both the sales agent and the order agent roles. To specifically create a quote, customers must
configure the decision table to modify existing sold product according to their business needs.
Update the configurations on the Customer Life Cycle Workflows policy decision table. To learn
more about the decision table, see Modify decision table rules in Workflow Studio .
6. On the Configurator UI, modify the existing configurations for the product inventory.
To learn more about the Configurator UI, see Exploring Sales and Order Management .
A quote to modify the product inventory is created. You can select the quote number from the
confirmation message on the account page to open the quote and see the quote line items.
Alternatively, you can find the quote from All Menu > Quote in the Quote list.
Suspend product inventory records
Perform the Suspend operation on single or multiple product inventory records that result in
the creation of orders or quotes on the CSM Configurable Workspace. By suspending a product
inventory, you can pause your services for a period of time.

Before you begin

Role required: Order admin (sn_ind_tmt_orm.order_admin) or Order agent
(sn_ind_tmt_orm.order_agent)

About this task

After performing the Suspend action, a suspend order is created and the fulfillment process for
the order begins. This fulfillment flow marks the order as Complete and updates the product
inventory records.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the product inventory belongs to.
4. Navigate to the Product Inventories related list and select one or more root product inventory
records.

Note: You can do a Suspend action on a single or multiple root sold products only if it is
in the Active state and is disabled for any other state.
5. Select Suspend.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

191


<!-- page 192 -->
6. In the Suspend window, in the Start date and time field, enter the start date and time that you
want to start the suspension.

Note: If you fill in only the Start date and time field, suspend order line items are

created. Resume order line items are created within the same order header if the End
date and time field is also filled in. You can also indefinitely suspend a product inventory
without creating a resume order by not entering an end date.
7. If you know when you want to end the suspension, enter the End date and time field.
8. Add a reason for a suspension in the Reason for suspension field.
For example, a disturbance due to a renovation can be a reason for suspension.
9. Select Suspend.

Result

An order to suspend the product inventory record is created.
Resume product inventory records
Perform the Resume operation on single or multiple product inventory records that result in
the creation of orders or quotes on the CSM Configurable Workspace. By resuming a product
inventory, you can restart a product or service.

Before you begin

Role required: Order admin (sn_ind_tmt_orm.order_admin) or Order agent
(sn_ind_tmt_orm.order_agent)

About this task

After performing the Resume action, a resume order is created and the fulfillment process for
the order begins. This fulfillment flow marks the order as Complete and updates the product
inventory records.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, select Customer > Accounts.
3. Open the account that the sold product belongs to.
4. Navigate to the Product Inventories related list and select one or more root product inventory
records.

Note: You can do a Resume action on the root product inventory only if it is in the
Suspended state.

The Resume option is enabled only if the root product inventory with Suspended state is
selected and is disabled for any other state.
The option is disabled if you select a child sold product.
5. Select Resume.
6. In the Resume window, in the Start date and time field, enter when you want to resume the
product inventory.
7. Select Resume.

Result

An order for resuming the product inventory records are created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

192


<!-- page 193 -->
Disconnect product inventory records
Perform the Disconnect operation on single or multiple product inventory records that result
in the creation of orders or quotes on the CSM Configurable Workspace so that you can
permanently disconnect a product and its services.

Before you begin

Role required: Order admin (sn_ind_tmt_orm.order_admin) or Order agent
(sn_ind_tmt_orm.order_agent)

About this task

After performing the Disconnect action, a disconnect order is created and the fulfillment process
for the order begins. This fulfillment flow marks the order as Complete and updates the product
inventory records.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the product inventory belongs to.
4. Navigate to the Product Inventories related list and select one or more root product inventory
records.

Note: You can do the Disconnect action only on one root sold product whose state is
Active or Suspended, and the option is enabled only if the root product inventory with
Active or Suspended states are selected and is disabled for any other state.
5. Select Disconnect.
6. In the Disconnect window, enter when you want the disconnection to start in the Start date
and time field.
7. Add a reason for a disconnection in the Reason for disconnection field.
8. Select Disconnect.

Result

An order to disconnect the product inventory record is created.
Configure Customer Contracts and Entitlements
Use the Customer Contracts and Entitlements application to configure and display customer
service contracts and entitlements.

Activate Customer Contracts and Entitlements
As an admin, you can activate the following plugins to enable users to create and manage
Customer Contracts and Entitlements. For more information, see Activate a plugin .
Customer Contracts and Entitlements plugins
Plugin

Description

Customer Contracts and
Entitlements

Provides foundational objects to
manage Customer Contracts and
Entitlements and APIs for integration.

[com.sn_pss_core]

Dependency

• Customer Service
Install Base
Management
[com.snc.install_base]​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

193


<!-- page 194 -->
Customer Contracts and Entitlements plugins (continued)
Plugin

Description

Dependency

• Product Catalog
Management Core
[com.sn.prd_pm]
Entitlements Verification

Provides APIs to verify entitlement.​

Customer Contracts and
Entitlements

[com.sn_ent_verify]

[com.sn_pss_core]​
Contracts and
Entitlement Workflows​
[com.sn_contract_ent_wf]

Provides workflows to manage
changes on Customer Contracts and
Entitlements.

• Customer Contracts
and Entitlements
Foundation
[com.sn_pss_core]​
• Lead to Cash Primitives
[com.sn_l2c_core]
• Customer Life Cycle
Management Workflows
[com.sn_l2c_cust_flows]​

With the activation of Customer Contracts and Entitlements, the existing contracts are available
for viewing only.
For more information on the installed roles and tables, see Components installed with Customer
Contracts and Entitlements.

Request apps from the ServiceNow Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Components installed with Customer Contracts and Entitlements
Several types of components are installed with the Customer Contracts and Entitlements
application, including tables and roles.
The following roles are added with the activation of the Customer Contracts and Entitlements
plugins.
Roles installed
Role

Description

Contains role

Targeted pe

sn_pss_core.service_contract_viewer

Performs read
operation on:

• sn_prd_pm.characteristics_viewer

• sn_custo

Characteristic viewer

Consum

Service contract viewer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

194


<!-- page 195 -->
Roles installed (continued)
Role

Description

Contains role

Targeted pe

• Service
contracts

• sn_prd_pm.product_catalog_viewer

• sn_custo

Product catalog viewer

Custome

• Contract lines
• Entitlements

• sn_custo

• Characteristics

Custome

• Entitlement
usages
sn_pss_core.service_contract_manager Performs create/ sn_pss_core.service_contract_viewer
read/update
Service contract manager
Service contract viewer
operations on:

sn_custom

CSM Mana

• Service
contracts
• Contract lines
• Entitlements
• Characteristics
• Entitlement
usages
sn_pss_core.pss_integrator
Integration user

sn_pss_core.service_contract_admin
Service contract admin

Performs create/ sn_customerservice.manager
read operations
CSM Manager
by using rest
endpoints
on service
contracts and
entitlements.

sn_pss_co

Integration

Provides create/ sn_pss_core.service_contract_manager N/A
read/update/
delete access to: Service contract manager
• Service
contracts
• Contract lines
• Characteristics
• Entitlement
usages

The following tables are added with the activation of the Customer Contracts and Entitlements
application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

195


<!-- page 196 -->
Tables installed
Table name

Description

Characteristics

Stores the characteristic values for entitlements or
service contract lines.

[sn_pss_core_entitlement_characteristic]
Entitlement Usage
[sn_pss_core_contract_entitlement_usage]
Service Contract

Stores the values used by end customers for
entitlement characteristics.
Stores runtime contracts.

[sn_pss_core_service_contract]
Service Contract Line
[sn_pss_core_service_contract_line]

Stores the runtime contract lines like a service
plan.

You can assign roles to users and groups using the ServiceNow AI Platform user administration
features. For more information, see:
• Assign a role to a user
• Assign a role to a group
The default view on service contracts and entitlements in Customer Service Management
workspace is Service Contract Workspace view. It can be changed by an administrator.
Configuring Contracts and Entitlement Workflows
Configure the Contracts and Entitlement Workflows plugin (com.sn_contract_ent_wf) to generate
and modify contracts using order management.
As an admin, you can activate the Contracts and Entitlement Workflows plugin
(com.sn_contract_ent_wf). For more information, see Activate a plugin .
The following plugins are prerequisites for activating the Contracts and Entitlement Workflows
plugin (com.sn_contract_ent_wf):
Required plugins
Plugin

Description

Product
Graphical interface that enables to configure complex products or
Configuration UI
services according to specific needs and requirements.
(com.sn_prd_config_ui)
Order Management
(com.sn_ind_tmt_orm)

Captures, enhances, and oversees the complete life cycle of the
product and service orders. With this plugin, you can efficiently
handle the order orchestration, data enrichment, and composition to
ensure an accurate and timely fulfilment.

After installing the Contracts and Entitlement Workflows plugin (com.sn_contract_ent_wf), the
following plugins are automatically installed:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

196


<!-- page 197 -->
Dependent plugins
Plugin

Description

Customer Contracts and Entitlements
(com.sn_pss_core)

Provides foundational objects to manage customer
contracts and entitlements.

Lead to Cash Core (com.snc.l2c_core)

Enables customers to compose sales and order
management flows.

Customer Life Cycle Management
Workflows (com.snc.l2c_cust_flows)

Provides workflows to manage the life cycles of
sold products and install base items.

Creating contracts and entitlements using workflows
After a product offer is selected by the customer and the product is sold to the customer, this
workflow creates contracts and entitlements based on the services associated with that sold
product and the extra services that the customer has purchased.
There are the product offering scenarios and their configurations.
Offering types and workflows
Offering
types

Description

Offers for
The workflow creates entitlement records for such offerings. These entitlements
entitlements can be associated with existing sold products, install base items, product
inventory records, or the customer.
Offers for
services
(contract
lines)

The workflow enables automatic creation of a service contract, service contract
lines, and the entitlements for those contract lines.

Implicit
offerings

Implicit entitlements and service contract lines are not shown on order lines.
These offers can be marked as implicit when they do not need to be configured
while capturing the order and are available as part of a package. These
entitlements and service contract lines are automatically created as a part of this
workflow.

Creating a contract from an order
For every order with multiple product offerings, a single contract with multiple contract lines is
created. You can add multiple product offerings from an order to an existing contract. To add a
product offering to an existing contract, add the contract reference in the Existing Contract field
of the order line item. As part of the order processing, a sold product is generated for every order
line.

Creating contracts from product inventory records
If the system property sn_ind_tmt_orm.enable_prod_invt_for_order_management is set to
true, order fulfillment workflows create product inventories based on customer orders, product
offerings and specifications. On creation of a product inventory, contract lines and entitlements
will be created. When a product inventory undergoes a state change, the associated contract
lines and entitlements are synced. For more information, see Product inventory configurations.
Product inventory records trigger updates to contracts and entitlements under the following
conditions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

197


<!-- page 198 -->
• Process Telecom Order Line flow: The ADD flow creates contract and entitlement records
from the product inventory. The MODIFY flow updates the states of the contract line items and
entitlements.
• Post Process Telecom Top Domain Order flow: The MODIFY flow updates the states, fields, and
characteristics for contract line items and entitlements.
• Product Inventory Operations record: Depending on the scheduled date and time, the
DISCONNECT, RESUME, and SUSPEND flows cancels, activates, or suspends the contract line
items and entitlements.

Configuring Customer Life Cycle Workflows Policy decision table
Customer Life Cycle Workflows Policy decision table decides the target entity while renewing
and modifying service contracts, service contract lines, and entitlements. Based on this decision
table, you can create a quote, an order, an opportunity, or an opportunity and a quote together
while renewing or modifying a service contract. For a target entity, you can also select when you
want to initiate the renewal of the service contract.
Inputs in Customer Life Cycle Workflows Policy decision table

Conditions in Customer Life Cycle Workflows Policy decision table

You can configure rules based on the six available input parameters to a required target entity
while renewing and modifying contracts. Select the following values in the Target Entity Name
column to create the corresponding target entities.
https://player.vimeo.com/video/1143586505?
h=0a306a1773&badge=0&autopause=0&player_id=0&app_id=58479
Values of target entities
Value

Target Entity

sn_ind_tmt_orm_order_line_item

Order

sn_quote_mgmt_core_quote_line_itemQuote
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

198


<!-- page 199 -->
Values of target entities (continued)
Value

Target Entity

sn_opty_mgmt_core_opportunity_line_item
Opportunity

Note: You cannot create
opportunities for modifying process.
sn_quote_mgmt_core_quote_line_item,sn_opty_mgmt_core_opportunity_line_item
Opportunity and quote together

Note: You cannot create
opportunities and quotes for modifying
process.

Note: To create an opportunity or opportunity and quote together during renewal, the
admin needs to set up the following records:
• Sales Cycle Type: In the Code field, enter RENEW and set the Active option to True. For
more info, see Create a sales cycle for an opportunity .
• Opportunity Stage: In the Name field, enter Develop and set the Active option to True. For
more info, see Create opportunity stages .
If the user selects an opportunity and a quote as target entities, a renewal opportunity and a
quote is created. The opportunity and the quote are associated to each other.
For any target entity, select one of the following options in the Auto Renewal Initiation column to
indicate when you want to automatically renew the contract: 90, 60, 30 days before contract end
date or on the contract creation date. For target entity as opportunity and quote together, you can
also select the following options to create the renewed opportunity and quote on separate dates:
• With contract, 12 months before end date respectively: Opportunity is auto renewed on the
contract creation date and the quote is renewed 12 months before the contract expiry date.
• 90, 90 days before end date respectively: Opportunity and quote both are renewed 90 days
before the contract expiry date.
Setting up the Customer Contracts and Entitlements application
Configure the features and components of Customer Contracts and Entitlements to enable a
seamless, end-to-end service experience including after sales services for your customers.
As a user with the admin role, you can set up the Customer Contracts and Entitlements
application to enable users to create entitlements and service contracts for users.

Task

Description

Create a characteristic

Create a characteristic to add to an entitlement.
A characteristic refers to the specific attributes or
properties that define the entitlement.

Create a user

Add a user to your instance to enable them to log in
and use designated application features. After adding
the user, you make them approver to review service
contracts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

199


<!-- page 200 -->
Task

Description

Assign a role to a user

Assign roles to users. Use this feature to grant the
sn_customerservice_manager (CSM manager) role to
a newly added user and authorize them to make an
informed judgment to review a service contract.

Create customer accounts

Create an account and associate it to a service
contract.

Note: On the Accounts form,
to view the service contracts,
remove the contract-related
lists and configure the Service
contracts related list.
Create a consumer record

Create a consumer record in Customer Service
Management. A consumer can be associated with
a service contract in the Customer Contracts and
Entitlements application.

Create a sold product

Create a record for a product that is sold to an account
or a consumer. A sold product can be associated with
multiple contracts.

Create an Install base item

Create a record for an install base item that is sold to
an account or a consumer. An install base item can be
associated with multiple contracts.

Create a characteristic
Create a characteristic that can be associated with an entitlement or service contract line.

Before you begin

Role required: sn_customerservice_manager

About this task

A characteristic is used for defining the service coverage that is provided to customers. These
characteristics might include the scope of the service, the time period, and any limitations or
exclusions such as geographical location and other attributes.

Procedure
1. Navigate to All > Product Catalog Management > Characteristics > Characteristics.
2. Select New.
3. On the form, fill in the fields.
Characteristic form
Field

Description

Name

The name of the characteristic for the entitlement.

Input type

The type of input for the coverage value related to this characteristic. For
example, Choice and CheckBox.

Description The short overview of the entitlement characteristic.
4. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

200


<!-- page 201 -->
Data models
Create structured and flexible data models to represent the need across various industries.
Setting up service and data models
Task

Description

Configure Service Model Foundation

Create foundational data models, such as
service organizations, internal and external
business locations, and households.

Configure Customer Data Models for B2B2C

Configure the business-to-business-toconsumer (B2B2C) data model to enable
business customers to support their end
consumers by creating cases and tracking the
services for products and services consumers
use.

Configure Service Model Foundation
Configure the Service Model Foundation feature to enable a foundational data model framework.
You can use this framework to create structured and flexible data models that represent your
business needs.

Before you begin

Role required: admin

About this task

Service Model Foundation provides the core framework and guidance for building and modeling
the entities that are involved in the customer service value chain. This framework introduces
new entities, such as service organizations, internal and external business locations, and
households. It also introduces roles and relationships that provide both flexibility and control in
granting access to customer cases and information.
With the Service Model Foundation plugins, you can support:
• Internal business locations and staff members
• External business locations and staff members
• Households and household members
For more information about this feature, see Service Model Foundation overview.

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup.
2. On the Getting Started page of the guided setup, click Get Started.
3. In the Service Model Foundation category, view the list of tasks to configure the feature.
Customer central configuration tasks
Task

Description

Activating plugins for Customer Service
Management (CSM)

Activate the plugins:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

201


<!-- page 202 -->
Task

Description

◦ Business Location
(com.snc.business_location)
◦ Customer Service Household
(com.snc.household)
Activate query rules

Activate the query rules by setting the system
property [sn_cs_queryrules.use_query_rules]
value to true.

Configure forms and lists

Configure forms to add the fields and related
lists that support the business location and
household models.

Assign responsibilities

Assign responsibilities to the service
organization (SO) member using the
responsibility data model.

Assign roles

Roles control access to features, capabilities,
and data. The Service Model Foundation
plugins add roles that you can assign
to internal and external users in your
organization.

Create relationships

Use relationships to provide internal and
external users with additional access to
customer data.
Relationships are based on responsibility
definitions. When you create a relationship,
you select the users involved in the
relationship and the responsibility that one
user performs on behalf of another.
The Service Model Foundation plugins
provide both relationships and responsibility
definitions that you can use to create
relationships between users.

4. To perform a task, click Configure.
This button opens the page in your instance where the configuration is completed.
Service Model Foundation overview
Service Model Foundation provide a framework that customers can use to configure structured
and flexible data models that represent their business needs.
The Service Model Foundation framework expands the Customer Service Management data
model, including the install base model. It provides the flexibility and security needed to
support business organizations with internal and external locations, households, customers and
consumers, and the relationships that exist between these entities.
https://player.vimeo.com/video/1096272118?
h=581e0655db&badge=0&autopause=0&player_id=0&app_id=58479
Use the Service Model Foundation framework to model the service organization structure that is
involved in supporting your end customers. With this framework, you can:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

202


<!-- page 203 -->
• Create a service organization structure that includes both internal and external business
locations.
• Assign customer service agents to business locations and provide access to the cases and
customer information in their business location hierarchy.
• Establish relationships between agents and specific customers that enable agents to manage
cases and information for those customers.
• Establish relationships between consumers, including consumers who are members of the
same household.

Entities included with Service Model Foundation
The Service Model Foundation feature includes the following entities.
Industry data models entities
Entity

Service organizations

Definition

Examples

The internal and external
entities that are involved
in providing a service to
customers.

• Financial service
organizations with multiple
branches

A service organization
provides the base framework
that supports the customer
service value chain. This
includes internal and external
service organizations.

• Automobile manufacturers
with multiple dealerships
• Government agencies with
multiple office locations

You can extend the service
organization to create new
entities as needed.
Internal business locations

External business locations

Customers (B2B)

Configuring households

The internal entities
that belong to a service
organization and are involved
in providing goods and
services.
The external entities
that belong to a service
organization and are involved
in providing goods and
services.
The external customers in the
business-to-business model
who use goods and services.
The external customers in the
business-to-consumer model
who use goods and services.

• Stores
• Branches
• Centers

• Franchises
• Dealerships

• Accounts
• Contacts

• Consumers
• Households

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

203


<!-- page 204 -->
Industry data models entities (continued)
Entity

Definition

Employees and staff members The people who work at
internal and external service
organizations and assist
customers.

Roles

Job functions that are
performed by various users in
the service organization.

Examples

• Internal employees
• External agents
• External staff

• Location managers
• Location agents
• Location consumer agents
• Location relationship
managers
• Location manager
contributors

Responsibility definitions

Relationships

Definitions of the
responsibilities that an agent
can perform for a customer or
that a consumer can perform
for another consumer. Use
these responsibilities to
create relationships between
agents and customers or
between consumers.

Relationships that are
created between agents and
customers or between two
consumers, are based on
specific responsibilities. Use
these relationships to provide
additional access to data.

• Location agents
• Location consumer agents
• Location contributors
• Location manager
contributors
• Location manager fulfiller
• Location relationship
manager

• Relationships between an
employee or staff member
and a customer
• Relationships between two
consumers

Plugins for Service Model Foundation
Users with the system administrator role can activate the following plugins to enable Service
Model Foundation features.
Business Location
Activate the Business Location plugin (com.snc.business_location) to enable
support for businesses that interact with customers through physical channels such
as stores, branches, franchises, and dealerships. This plugin automatically activates
the Service Organization plugin (com.snc.service_organization).
Customer Service Household
Activate the Customer Service Household plugin (com.snc.household) to manage
customer service for households. This plugin enables you to create households,
define the members of a household, and identify relationships between household
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

204


<!-- page 205 -->
members. This plugin automatically activates the Customer Service Base Extension
Entities plugin (com.snc.cs_base_extension).
Related topics
Configure Service Model Foundation
Service Model Foundation responsibilities
A responsibility, or responsibility definition, describes a role or a function that supports a
customer. Use responsibility definitions to create relationships between an agent and a customer
or between two consumers.
When you create a relationship, you select the users involved in the relationship and the
responsibility that one user performs on behalf of another. The responsibility that is assigned to a
relationship provides access to customer cases and information.
Service Model Foundation includes responsibility definitions that you can use to create
relationships:
• Between agents and accounts, households, or consumers.
• Between two consumers.
The following responsibilities are provided with the Service Model Foundation plugins.

Note: Responsibilities are stored in the Responsibility Definition
[sn_customerservice_responsibility_def] table.
Service Model Foundation Responsibilities
Responsibility

Name

Location Agent

sn_customerservice.svc_location_agent

Note: This role only applies to the
internal business location.
Location Consumer Agent

sn_customerservice.svc_location_consumer_agent

Note: This role only applies to the
internal business location.
Location Contributor

sn_customerservice.service_organization_contributor

Location Manager Contributor

sn_customerservice.svc_location_manager_contributor

Location Manager Fulfiller

sn_customerservice.svc_location_manager

Note: This role only applies to the
internal business location.
Location Relationship Manager

sn_bus_loc.location_relationship_manager

Note: This role only applies to the
external business location.
Location Support Agent

sn_bus_loc.svc_location_support_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

205


<!-- page 206 -->
Responsibilities compatible with Service Model Foundation plugin
Responsibility

Used in
relationship

Account
Manager

Account Team
Member

Description

Use the Account Manager responsibility to create a
relationship between an agent and an account. With this
relationship, the agent can:
• Create and manage cases for their accounts.
• View account information, including the related
entities for an account.
• Create and manage contacts and additional
addresses for their accounts.

Relationship
Manager

• Consumer
Team Member
• Household
Team Member

Use the Relationship Manager responsibility to create a
relationship between:
• An agent and a consumer.
• An agent and a household.
With this relationship, the agent can do the following:
• For a consumer:
◦ Create and manage cases for the consumer.
◦ View household information, including the related
entities for that consumer.
• For a household:
◦ Create and manage cases for the household.
◦ View household information, including the related
entities for that household.
◦ Create and manage household members.

Authorized
Representative

• Consumer
to Consumer
Relationship
• Household
Member
Relationship

Use the Authorized Representative responsibility
to create a relationship between two consumers,
regardless of household, or between two consumers
within the same household.
With this relationship, a consumer can:
• Create and manage cases for another consumer.
• View the information of another consumer.
• View the install base information of another consumer
and create cases for:
◦ Sold products
◦ Install base items

Customizing responsibility definitions
You can use the responsibility definitions provided with Service Model Foundation plugins.
You can also modify these definitions or create your own definitions to meet your business
requirements.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

206


<!-- page 207 -->
Note: If you modify the existing definitions or create definitions, you must update access
control lists (ACLs) to reflect the changes.
If you have an existing account manager responsibility definition, you must evaluate the
functionality of the account manager responsibility definition provided with the Service Model
Foundation plugins.

Note: Creating and using responsibility definitions is a feature available in releases before
Paris. Customers can create responsibility definitions using the Responsibility Definition
(sn_customerservice_responsibility_def) table and use those definitions to create account
teams using the Account Team Member (sn_customerservice_team_member) table. For
more information, see Create account teams.

Create a responsibility definition
Users with the administrator role can create responsibility definitions.
1. Navigate to Customer Service > Administration > Responsibility Definitions.
2. Select New and fill in the fields on the Responsibility Definition form.
3. In the Type field, select User if this responsibility is to be used in the following relationships:
◦ Account Team Member
◦ Consumer Team Member
◦ Household Team Member
4. If this responsibility is to be used in the following consumer relationships, set the Type field to
None.
◦ Consumer to Consumer
◦ Household Member
For more information, see Create a responsibility definition.

Create a unique responsibility definition
A responsibility definition can be unique, meaning that the responsibility can only be assigned to
one user. To make a responsibility definition unique:
1. Navigate to Customer Service > Administration > Responsibility Definitions.
2. Select a responsibility definition.
3. Enable the Unique check box on the Responsibility Definition form.
4. Click Update.
When creating or updating records in the following tables, the system checks for and enforces
unique responsibilities.
• Household Team Member [sn_customer_rel_household_to_user]
• Consumer Team Member [sn_customer_rel_consumer_to_user]
• Account Team Member [sn_customerservice_team_member]
For example, the following table describes the table type, an associated responsibility and the
applied unique behaviour.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

207


<!-- page 208 -->
Unique responsibility definition
Table

Responsibility
Example

Account Team
Member

Account
Manager

An account can have only one account manager but
a user with the Account Manager responsibility can
manage multiple accounts.

Consumer Team
Member

Relationship
Manager

A consumer can have only one Relationship Manager
but a user with the Relationship Manager responsibility
can manage multiple consumers.

Household Team
Member

Unique behavior

A household can have only one Relationship Manager
but a user with the Relationship Manager responsibility
can manage multiple households.

Relationship
Manager

Note: The unique behavior of a responsibility definition is not enforced when the
responsibility is used for relationships between consumers or household members.
Service Model Foundation relationships
Create relationships between an agent and a customer or between two consumers that provide
additional access to customer data.
With the Service Model Foundation feature, you can create relationships between the following
users:
• Between an internal user and an account, household, or consumer.
• Between two consumers.
Relationships are based on responsibilities, or responsibility definitions. When you create a
relationship, you select the users involved in the relationship and the responsibility that one
user performs on behalf of another. The responsibility that is assigned to a relationship provides
access to customer cases and information.
The following relationships are provided with the Service Model Foundation plugins.
Relationships and Responsibilities for Service Model Foundation plugin
Relationship

Responsibility used in the
relationship

Account Team Member

Account Manager

[sn_customerservice_team_member]

Description

Create a relationship between
an internal user and an
account.

Note: The internal user
in this relationship must
also be assigned the
relationship agent role
(sn_customerservice.relationship_agent).
Consumer Team Member

Relationship Manager

[sn_customer_rel_consumer_to_user]

Create a relationship between
an internal user and a
consumer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

208


<!-- page 209 -->
Relationships and Responsibilities for Service Model Foundation plugin (continued)
Relationship

Responsibility used in the
relationship

Description

Note: The internal user
in this relationship must
also be assigned the
relationship agent role
(sn_customerservice.relationship_agent).
Household Team Member

Relationship Manager

[sn_customer_rel_household_to_user]

Create a relationship between
an internal user and a
household.

Note: The internal user
in this relationship must
also be assigned the
relationship agent role
(sn_customerservice.relationship_agent).
Consumer to Consumer

Authorized Representative

[sn_customer_rel_consumer_to_consumer]
Household Member
Relationships

Authorized Representative

[sn_customer_rel_household_member_relationship]

Create a relationship between
two consumers, regardless of
household.
Create a relationship between
two consumers within a
household.

Relationships between internal users and customers
Internal users can have relationships with accounts, consumers, and households. These
relationships provide internal users with additional access to customer cases and information.
An internal user with a relationship to a customer can create and manage cases on behalf of that
customer.
Relationships are created using responsibilities. Use the following responsibilities to create
relationships between internal users and customers:
• Account Manager: use this responsibility to create a relationship between a staff member and
an account.
• Relationship Manager: use this responsibility to create a relationship between a staff member
and a household or a consumer.
Relationships that you create are added to the following related lists:
• Account Staff Relationships on the Business Location form
• Consumer Staff Relationships on the Business Location form
• Household Staff Relationships on the Business Location form
• Account Team on the Consumer form
• Consumer Team on the Consumer form
• Household Team on the Household form

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

209


<!-- page 210 -->
Relationships between consumers
Consumers can have relationships with other consumers. These relationships enable
consumers to view and manage cases and information on behalf of other consumers.
Relationships are created using responsibilities. Use the Authorized Representative
responsibility to create relationships between consumers. With this responsibility, you can:
• Create a relationship between two consumers, regardless of household.
• Create a relationship between two consumers within a household.
Relationships that you create are added to the following related lists:
• Member Relationships on the Household form
• Consumer Relationships on the Consumer form

Deleting relationships
When a relationship definition is deleted, all of the relationships that use the definition are also
deleted.
When a consumer is deleted, all of the relationships to which the consumer belonged are also
deleted.
When a household is deleted, all of the relationships created for the household are also deleted.
When a consumer stops being a current member of a household, all of the relationships created
for the consumer within the household are also deleted. .
Service Model Foundation tables
Tables that are included with or modified by the plugins that enable the Service Model
Foundation feature.
The Service Model Foundation feature adds new tables or modifies existing tables when you
activate the following plugins:
• Business Location (com.snc.business_location)
• Customer Service Household (com.snc.household)
• Service Organization (com.snc.service_organization)
• Customer Service Base Extension Entities (com.snc.cs_base_extension)
• Customer Service Install Base Management (com.snc.install_base)

Business Location plugin
The Business Location plugin adds the following tables.
Different table names for the Business Location plugin
Table

Business Location
[sn_csm_business_location]

Description

Extends the Service Organization
[sn_customer_service_organization] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

210


<!-- page 211 -->
Different table names for the Business Location plugin (continued)
Table

Description

A business location is one type of service
organization. This table stores business
location records.
Internal Business Location
[sn_csm_business_location_internal]

Extends the Business Location
[sn_csm_business_location] table.
This table stores internal business location
records.

Note: An internal business location is a
business location with the Internal field
set to true.
External Business Location
[sn_csm_business_location_external]

Extends the Business Location
[sn_csm_business_location] table.
This table stores external business location
records.

Note: An external business location is a
business location with the Internal field
set to false.

Customer Service Household plugin
The Customer Service Household plugin adds or modifies the following tables.
Table names for the Customer Service Household plugin
Table

Household
[csm_household]

Household Member
[csm_household_member]
Household Team Member
[sn_customer_rel_household_to_user]

Description

Stores consumer household records.
For the Service Model Foundation feature,
this table is updated to support the head of
household.
Stores records of the consumers who have
been added to households.
Stores records for each of the household team
member relationships that have been created
between an internal user and a household.

Household Member Relationship

Extends the Consumer to
[sn_customer_rel_household_member_relationship]
Consumer Relationship
[sn_customer_rel_consumer_to_consumer]
table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

211


<!-- page 212 -->
Table names for the Customer Service Household plugin (continued)
Table

Description

This table stores records for each of the
relationships that have been created between
two consumers who belong to the same
household.

Service Organization plugin
The Service Organization plugin adds the following tables.
Table names added by the Service Organization plugin
Table

Service Organization
[sn_customer_service_organization]

Description

A unidirectional relationship between a
company and a service organization, with a
reference to the company record added from
the service organization.
Stores records for service organizations,
including business locations and internal
business locations.

Note: The following new
columns are replicated from
the company [core_company]
table to the service organization
[sn_customer_service_organization]
table:
• Active: Track the operational status of
the service organization.
• Domain: Enable domain separation.
• Company: Reference to the
core_company table.
Service Organization Member
[sn_csm_service_organization_member]
Service Organization External Staff
[sn_csm_service_organization_external_staff]

Stores records for the users who belong to
internal service organizations.

Extends the User [sys_user] table.
Stores records for the users who belong to
external service organizations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

212


<!-- page 213 -->
Table names added by the Service Organization plugin (continued)
Table

Description

Note: If the Company field is

populated, the Service Organization
field displays only those service
organizations that are associated with
the company record. Similarly, if the
Service Organization field is populated,
the Company field displays only those
companies that are associated with the
service organization.
Service Organization Member Responsibility
[sn_csm_svc_org_member_responsibility]

Configure the responsibilities of the staff
working at service organizations or its
extended entities.

Customer Service Base Extension Entities plugin
The Customer Service Base Extension Entities plugin adds the following tables.
Table names added by the Customer Service Base Extension Entities plugin
Table

Description

Consumer to Consumer Relationship

Stores records for each of the relationships
that have been created between two
consumers, regardless of household.

[sn_customer_rel_consumer_to_consumer]
Consumer Team Member
[sn_customer_rel_consumer_to_user]

Stores records for each of the consumer team
member relationships that have been created
between an internal user and a consumer.

Customer Service Install Base Management plugin
The Customer Service Install Base Management plugin adds the Consumer Sold Product
[sn_install_base_m2m_consumer_sold_product] table. This table stores records for each sold
product (products and components) that have been sold to a consumer.

Tables used by Service Model Foundation
Tables from existing plugins that are used by the Service Model Foundation feature to support
customers.
Existing plugins and tables used by the Service Model Foundation feature
Plugin

Table

Customer Service
(com.sn_customerservice)

Responsibility Definition

New columns

[sn_customerservice_responsibility]​
Account Team Member
[sn_customerservice_team_member]​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

213


<!-- page 214 -->
Existing plugins and tables used by the Service Model Foundation feature (continued)
Plugin

Table

New columns

Related Party Configuration
[sn_customerservice_related_party_configuration]
Case

Household

[sn_customersrevice_case]

Service Organization​
Consumer Profile

Customer Service Install
Base Management
(com.snc.install_base)

Sold Product

Household
[sn_install_base_sold_product​
Consumer Profile
]
Install Base Item

Consumer Profile

[sn_install_base_item]
Customer Service
Management for Orders
(com.snc.csm.order)

Order

Household​

[csm_order]​

Service Organization​

Service Model Foundation roles
Roles that are included with the plugins that enable the Service Model Foundation feature.
The following table describes the roles that the administrator can assign to the internal users.
Service Model Foundation roles
Role

Responsibility

Description

Location agent

Location agent

Create and fulfill
cases for the
accounts and
contacts in the agent's
business location.

[sn_customerservice.svc_location_agent]

Location consumer
agent

Create and fulfill
cases for the
consumers and
[sn_customerservice.svc_location_consumer_agent]
households in the
agent's business
location.
Location manager

Location consumer
agent

Location Manager
Fulfiller
[sn_customerservice.svc_location_manager]

Create and update
cases for accounts,
contacts, consumers,
and households
that work with the
business locations

Contains roles

• sn_fsm_servicedesk_agent
• sn_esm_location_agent

• sn_fsm_servicedesk_agent
• sn_esm_location_agent

• sn_fsm_servicedesk_agent

• sn_customerservice.svc_location_ag

• sn_customerservice.svc_location_con
• email_client_quick_message_author

• sn_templated_snip.template_snippet
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

214


<!-- page 215 -->
Service Model Foundation roles (continued)
Role

Responsibility

Description

Contains roles

within their location
hierarchy.

• sn_shn.admin
• approver_user
• sn_publication.approver

Location manager
contributor

Location Manager
Contributor

Manage service
organizations
[sn_customerservice.svc_location_manager_contributor]
and create cases
for accounts,
households, or
consumers at the
service organization
or any of its child
service organizations.
Location Project
Member

None

[sn_bus_loc.location_project_stakeholder]

Views project details
and project tasks
of their respective
business location.

• sn_customerservice.service_organiza

• sn_customerservice.svc_location_ma

• sn_customerservice.consumer_contr

• sn_customerservice.account_contrib

None

Marks customer
visible project tasks
as complete.
Location Project
Manager Contributor

None

Views project details
and project tasks
of their respective
[sn_bus_loc.location_manager_project_stakeholder]
business location
and child business
locations.

None

Marks customer
visible project tasks
as complete.
EBL Viewer

None

Views all external
business location
details and location
staff

None

None

Views all internal
business location
details and location
staff.

None

None

This role can perform
the following actions:

[sn_bus_loc.ebl_viewer]
IBL viewer
[sn_bus_loc.ibl_viewer]
Service Organization
Project Manager

[sn_service_org.project_manager]

• sn_bus_loc.ibl_viewer
• sn_bus_loc.ebl_viewer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

215


<!-- page 216 -->
Service Model Foundation roles (continued)
Role

Responsibility

Description

Contains roles

• Project initiation:
Creates and
launches projects

Note:
Service
Organization
project
manager and
customer
project
manager
can access
all project
modules.
• Project planning:
Develops project
plans, such as, task
assignments and
resource allocation.

Note:
On task
assignment,
an automated
mail is
generated.
Update "Send
Email to
Contact when
Customer
Project Task
is assigned"
flow to disable
or enable
notifications.
• Task management:
Monitors and
manages task
dependencies and
execution.
• Coordination: Views
and collaborates
with location staff,
assigning, and
tracking tasks of
their respective
location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

216


<!-- page 217 -->
Service Model Foundation roles (continued)
Role

Responsibility

Description

Relationship agent

None

This role restricts an
agent's access to only
those cases for the
accounts, contacts,
consumers, and
households that they
have a relationship
with.

[sn_customerservice.relationship_agent]

This role includes the
following relationships
that are provided with
the Service Model
Foundation plugins:

Contains roles

• agent_workspace_user
• snc_internal
• sn_shn.editor
• email_composer
• sn_fsm_servicedesk_agent

• sn_customerservice.csm_workspace_

• sn_templated_snip.template_snippet

• Account Manager:
Creates a
relationship
between an internal
user and an
account.
• Relationship
Manager: Creates
a relationship
between an
internal user and
a consumer or a
household.
Service Management
agent

None

[sn_esm_location_agent]

A service
management agent
role for a business
location

• sn_lookup_verify_user
• assignment_workbench
• knowledge
• agent_workspace_user
• chat_admin
• cmdb_read
• agent_schedule_user
• interaction_agent

• sn_templated_snip.template_snippet
• sn_shn.editor
• template_editor
• email_composer
• template_editor_global
Location Support
agent

Location Support
Agent

This role resolves
the cases originated
from other business

sn_esm_location_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

217


<!-- page 218 -->
Service Model Foundation roles (continued)
Role

Responsibility

[sn_bus_loc.svc_location_support_agent]

Service organization
contributor

Location Contributor

Description

Contains roles

organizations,
ensuring access to
required information
and other details, and
facilitating efficient
coordination with
store personnel
This user:

• works with accounts
and contacts,
[sn_customerservice.service_organization_contributor]
consumers, and
households

• sn_customerservice.case_contributor
• sn_service_org.service_criteria_read

• sn_service_org.customer_criteria_rea

• uses the Customer
or Consumer
Service Portal to
assist customers
• search knowledge
articles and catalog
items.
• create cases on
behalf of their
business location,
including cases
for catalog items
(requests), and
follow up on those
cases.
• create cases from
communication
channels available
to customers
including phone,
web, chat, Virtual
Agent, and
messaging.
• view and follow
up on other cases
created for the
user's business
location.
If also an internal user
on a case, this user
can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

218


<!-- page 219 -->
Service Model Foundation roles (continued)
Role

Responsibility

Description

Contains roles

• add additional
comments and
attachments
• accept or reject a
solution
• close a case
• receive notifications
of case updates
• read work notes
Service Model Foundation table access by role
The user roles that can access the Service Model Foundation tables.
Service Model Foundation table access by role
Table

Create

Service
Organization
[sn_customer_service_organization]

Read

Update

Delete

• CSM manager
• Customer
agent
• Consumer
agent

Business
Location
[sn_csm_business_location]

• CSM manager
• Customer
agent
• Consumer
agent
• Location
manager
• Location agent
• Location
consumer
agent

Internal Business
Location
[sn_csm_business_location_internal]

• CSM manager
• Customer
agent
• Consumer
agent
• Location
manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

219


<!-- page 220 -->
Service Model Foundation table access by role (continued)
Table

Create

Read

Update

Delete

• CSM manager

• CSM manager

• Location
manager (for
their hierarchy
only)

• Location
manager (for
their hierarchy
only)

• Location agent
• Location
consumer
agent
• Location
manager
contributor
• Service
organization
contributor
External
Business
Location

• CSM manager

[sn_csm_business_location_external]

• Customer
agent
• Consumer
agent
• Location
manager
contributor
• Location
relationship
manager
• Service
organization
contributor

Service
Organization
Member

• CSM manager

• CSM manager

• location
• Customer
manager (for
agent
[sn_csm_service_organization_member]
their hierarchy
• Consumer
only)
agent
• Location
manager (for
their hierarchy
only)
• Location
agent (for their
locations only)
• Location
consumer
agent (their
locations only)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

220


<!-- page 221 -->
Service Model Foundation table access by role (continued)
Table

Create

Household

Read

• CSM manager

[csm_household]

Update

Delete

CSM manager

• Consumer
agent
• Location
manager
• Location
consumer
agent
• Relationship
agent (for
households
they have
relationships
with)
• Consumer
(for their
households)

Household
Member

CSM manager

[csm_household_member]

• CSM manager

• CSM manager

• Consumer
agent

• Relationship
agent (for
households
they have
relationships
with)

• Location
manager
• Location
consumer
agent
• Relationship
agent (for
households
they have
relationships
with)
• Consumer (for
households
where they
are head of
household or
for consumers
that they
represent)
Consumer
to Consumer
Relationship

CSM manager

• CSM manager

CSM manager

• Consumer
agent
[sn_customer_rel_consumer_to_consumer]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

221


<!-- page 222 -->
Service Model Foundation table access by role (continued)
Table

Create

Read

Update

Delete

• Location
manager
• Location
consumer
agent
Household
Member
Relationship

CSM manager

• CSM manager

CSM manager

• Consumer
agent
[sn_customer_rel_household_member_relationship]
• Location
manager
• Location
consumer
agent
Account Team
Member

• CSM manager

• CSM manager

• CSM manager

• CSM manager

• customer
agent

• Location
manager (for
their hierarchy)

• Location
manager (for
their hierarchy)

• CSM manager

• CSM manager

• CSM manager

• Location
• Consumer
[sn_customer_rel_consumer_to_user]
manager (for
agent
their hierarchy)
• Location
manager (for
their hierarchy)

• Location
manager (for
their hierarchy)

• Location
manager (for
their hierarchy)

• Location
[sn_customerservice_team_member]
manager (for
their hierarchy)

• Location
manager (for
their hierarchy)
• Location
agent (for their
locations)
• Relationship
agent (for
accounts that
they have
relationships
with)

Consumer Team
Member

• CSM manager

• Location
consumer
agent (for their
locations)
• Relationship
agent (for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

222


<!-- page 223 -->
Service Model Foundation table access by role (continued)
Table

Create

Read

Update

Delete

• CSM manager

• CSM manager

• CSM manager

• Location
• Consumer
[sn_customer_rel_household_to_user]
manager (for
agent
their hierarchy)
• Location
manager (for
their hierarchy)

• Location
manager (for
their hierarchy)

• Location
manager (for
their hierarchy)

consumers
that they have
relationships
with)
Household Team
Member

• CSM manager

• Location
consumer
agent (for their
locations)
• Relationship
agent (for
households
that they have
relationships
with)

Service Model Foundation modules
The Service Model Foundation plugins add several modules to the application navigator.

Business Location modules
Service Organizations > Internal/External Business Locations: This module lists the internal
and external business locations that have been created.

Note: This module is available in Agent Workspace and in the platform interface.
Users with the following roles have access to these modules.
• sn_customerservice_manager
• sn_customerservice_agent
• sn_customerservice.consumer_agent
• sn_customerservice.svc_location_agent
• sn_customerservice.svc_location_consumer_agent

Service Organization External Staffs module
Service Organizations > Service Organization External Staffs: This module lists the external
staff members created and added to the external business location.

Note: This module is available in Agent Workspace and in the platform interface.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

223


<!-- page 224 -->
Users with the following roles have access to these modules.
• sn_customerservice_manager
• sn_customerservice_agent
• sn_customerservice.consumer_agent
• sn_customerservice.svc_location_agent
• sn_customerservice.svc_location_consumer_agent

Household modules
• Customer > Households: lists the households that a user has access to.
• Customer > Household Members: lists the consumers that have been added to households.

Note: These modules are available in Agent Workspace and in the platform interface.
Users with the following roles have access to these modules.
• sn_customerservice_manager
• sn_customerservice.consumer_agent
• sn_customerservice.svc_location_consumer_agent
• sn_customerservice.relationship_agent

Customer Relationship modules
• Customer Relationships > Consumer Team Members: lists the relationships that have been
created between an internal user and a consumer.
• Customer Relationships > Household Team Members: lists the relationships that have been
created between an internal user and a household.
• Customer Relationships > Consumer Relationships: lists the relationships that have been
created between two consumers, regardless of household.
• Customer Relationships > Household Relationships: lists the relationships that have been
created between two consumers who are members of the same household.

Note: These modules are only available in the platform interface. You can view
relationships in Agent Workspace in related lists. Customer service managers and location
managers can also modify account, consumer, and household team member relationships
in Agent Workspace.
Users with the following roles have access to these modules.
• sn_customerservice_manager
• sn_customerservice.consumer_agent
• sn_customerservice.svc_location_manager
• sn_customerservice.svc_location_consumer_agent
Service Model Foundation cases
Location agents and location consumer agents at a business location can create cases for
accounts, contacts, consumers, and households.
Staff members with the location agent or location consumer agent role can do the following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

224


<!-- page 225 -->
• View information for the customers at their location.
• Create cases for accounts, contacts, households, and consumers.
• Update cases created at their location.
• Create consumers.

Case location
A case belongs to a business location. When a case is created by a location agent or manager,
the Service Organization field on the Case form is automatically updated with the business
location to which the agent or manager belongs. If the case is reassigned, this field is updated to
that of the new agent or manager.
If the location agent or manager belongs to multiple locations, the Service Organization field
can be kept empty. When you fill in this field, select carefully as the service organization controls
a location agent's access to cases.

Note: A case can belong to only one business location.
The Service Organization can be set manually for a new case or changed for an existing case.
Changing the Service Organization doesn’t change the assigned agent.

Case access
Case access is controlled by the business location in the Service Organization field on the Case
form. The following users can access cases:
• Staff members at the business location with the location agent or location consumer agent
role.
• Managers at the business location with the location manager role.
Cases for a business location are added to the Cases related list on the internal or external
business location form.
• When a case is created, the service organization on the case is the service organization of the
user who creates the case.
• When a case is assigned to an agent, the service organization on the case is updated to the
service organization of the assigned agent.

Note: Only external staff with the location agent can act as fulfillers. For more information,
see External business location (EBL) as a fulfiller.
Case access for consumers
Consumer type

Case access

Consumer

Can manage their own cases.

Head of household

Can manage cases for all household
members.​

Authorized representative, regardless of
household

Can manage cases for the consumer they
represent.

Authorized representative, inside of
household

Can manage cases for the consumer they
represent as long as both are current
members of the household.​

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

225


<!-- page 226 -->
Case access for users
User

Required role

Case access

Location manager

Location manager

Can manage the cases in their
location hierarchy.​

Location staff member

Location agent

Can manage the cases in their
locations.

Location consumer agent
Account manager

Relationship agent

Can manage cases for their
accounts.

Consumer relationship
manager

Relationship agent

Can manage cases for their
consumers.

Household relationship
manager

Relationship agent

Can manage cases for their
households.

External business location (EBL) as a fulfiller
External business location (EBL) as a fulfiller enables partners, external agencies, and franchises
to fulfill customer cases. You can use this capability to maintain consistent customer experiences
across both internal and external business locations.

Overview
In the past, only location staff at internal business locations (IBL) could resolve customer-related
cases through both platform and workspace. External staff could only create cases from the
business location service portal (BLSP) but couldn't resolve them for the business locations.
By using EBL as a fulfiller, external location agents having svc_location_agent and snc_external
roles can access the platform to create and resolve cases, similar to internal location agents.
You can activate this functionality by enabling the business location (com.snc.business_location)
plugin.

Note: Only external location agents can serve as a fulfiller for an external business
location.

Use case
For example, the financial institution agencies perform various activities, from policy issuance
to claims processing. These activities include underwriting, reviewing claims, and helping
customers in claims submission. As most of these tasks are fulfillment activities currently
performed by external members or third parties. Now, by utilizing EBL as a fulfiller capability,
external location agents in these agencies can efficiently manage and resolve cases.
Related topics
Access limitations for external location agents
Access limitations for external location agents
Explore the limitations that an external location agent faces when using various platform
modules during case resolution. You can use this topic to get a comprehensive overview of the
modules that are supported and unsupported with the external location agent persona.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

226


<!-- page 227 -->
Supported and unsupported modules
List of modules and submodules under the customer service platform that are supported and
unsupported:

Modules

Submodules

Supported/unsupported

Overview

Supported

Knowledge

Supported

Cases

Create New

Supported

My Cases
Assigned to My Locations
Requested by My Locations
All
Open
Unassigned
Escalated
Escalations

All

Supported

Customer

Partners

Supported

Accounts
Contacts
Customer Relationships

Account Team Members

Supported

Service Organization

Internal Business Locations

Supported

External Business Locations
Service Organization External
Staffs
Contracts

Service Contracts

Unsupported

Entitlements
Products

Assets

Supported

Product Models

Unsupported

Note: All configuration
management database
(CMDB) tables are
unsupported.

Interaction

Outsourced Service Providers

Supported

All

Unsupported

Active
Assigned to Me
Overview
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

227


<!-- page 228 -->
Modules

Submodules

Supported/unsupported

Special Handling Notes

Special Handling Notes

Supported

Configuration
Knowledge > Articles

Unsupported
Create New

Unsupported

Import Articles
Open Submissions
Unpublished

Supported

Published
Retired
All
Knowledge > Feedback
Management

My Flagged

Supported

My Submitted Tasks
My Assigned Tasks
My Closed Tasks

Knowledge > Homepage

Supported

Knowledge > Notification
Settings

Unsupported

Email Client

Email Drafts

Unsupported

Workspaces

CSM Configurable Workspace Unsupported

Note: All aspects of the
workspace experience
remain inaccessible to
external location agents.
Other notable limitations:
• The Launch Interactive Analysis option in the Case list form context menu isn’t functional.
• Related cases can’t be accessed from the related search results on the Case.
However, with an external business location as a fulfiller, the external location agents can:
• Access Service Model Foundation data, such as internal business location, external business
location, service organization members, and responsibilities, on the platform.
• Access customer foundation data, including accounts, contacts, sold products, and install
base items on the platform.
• Access the case form on the platform.
• Self-assign and start working on a case.
• View related search results.
• Add comments or work notes.
• View the activity stream, work notes, and case timelines.
• Add resolution notes, propose a solution, and close the case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

228


<!-- page 229 -->
• Create and update case tasks.
• View service definitions.
Service Model Foundation business locations
Use the business location entity to create an organizational structure that includes internal and
external business locations such as stores, branches, franchises, and dealerships.
A business location is an extension of a service organization. The business location entity
enables you to model the internal and external organizational structure involved in supporting
customers. It also enables you to give agents the right level of visibility into customer data.
With the business location entity you can:
• Create internal and external business locations using a hierarchy, with parent and child
locations.
• Associate users within a business location, which makes them staff members of that location.
• Provide staff members at a business location with access to the customer cases and
information for that location.
• Create teams of staff members to support accounts, consumers, and households.
• Provide the staff members on those teams with access that enables them to manage cases for
their accounts, consumers, and households.

Creating a business location
Maintain an organizational structure by creating internal and external business locations. To
create a business location, see Create a business location.

Accessing business locations
Managers have access to their business location and to the business locations that are
designated as child locations in the hierarchy.
• When a user is added to the Manager field, the sn_customerservice.svc_location_manager
role is automatically added to that user.
• You can add a user as the manager for multiple business locations.
Staff members with the location agent role or location consumer agent role can perform the
following actions:
• Create cases for customers in their business locations.
• Access cases where the location in the Service Organization field on the Case form matches
their business locations.
Create and manage cases for a business location
As a staff member with the location agent role, create and manage cases for your business
locations.

Before you begin

Role required: admin, sn_customerservice.svc_location_agent, and
sn_customerservice.svc_location_manager

About this task

Staff members with the location agent role can do the following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

229


<!-- page 230 -->
• View information for the customers at their location.
• Create cases for the accounts, contacts, households, and consumers at their location.
• Create consumers.
• Update cases created at their location.
A case belongs to one business location. When a case is created by a location agent or manager,
the Service Organization field on the Case form is automatically updated with the business
location that the agent or manager belongs to. If the case is reassigned, this field is updated to
show the new agent or manager.
If the location agent or manager belongs to multiple locations, the Service Organization field
may be left empty. When you fill in this field, make your selection carefully because the service
organization controls a location agent's access to cases.
The Service Organization can be set manually for a new case or changed for an existing case.
Changing the Service Organization does not change the assigned agent.
Location agents and managers can create cases for business locations without adding an
account, contact, or consumer. The location agent or manager who creates the case is added to
the Opened by field.

Procedure
1. Navigate to All > Customer Service > Cases and click Create New.
2. Optional: Select the type of case that you want to create.
3. On the form, fill in the fields.
For a description of the field values, see Case form.
4. Click Submit.
Related topics
Service Model Foundation cases
Assign responsibilities
Assign roles
Create a customer service case
Create an account staff relationship
Create a relationship between a staff member at a business location and an account.

Before you begin

Role required: admin, sn_customerservice_manager, sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and
sn_bus_loc.location_relationship_manager

About this task

You can assign users who have been added as staff members to a business location to an
account relationship.
• Administrators and customer service managers can assign a staff member from any location.
• Location managers can assign staff members from the locations that they have access to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

230


<!-- page 231 -->
Relationships are based on responsibilities. A responsibility definition describes a role or a
function that supports a customer or consumer. To create an account team member relationship,
use the Account Manager responsibility.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Internal/External Business
Locations.
2. Select either an internal or an external business location.
3. In the Account Staff Relationships related list, click New.
This related list shows the accounts that have a relationship with any staff member at that
location.
4. In the Account field, select the account to which the staff member is assigned.
5. In the Responsibility field, select Account Manager.
6. In the User field, select the staff member to fulfill the responsibility.
7. Click Submit.
The relationship is added to the Account Staff Relationships related list.
Create a consumer staff relationship
Create a relationship between a staff member at a business location and a consumer.

Before you begin

Role required: admin, sn_customerservice_manager, sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and
sn_bus_loc.location_relationship_manager

About this task

Users who have been added as staff members to a business location can be assigned a
consumer relationship.
• Administrators and customer service managers can assign a staff member from any location.
• Location managers can assign staff members from the locations that they have access to.
Relationships are based on responsibilities. A responsibility definition describes a role or a
function that supports a customer or consumer. To create a consumer relationship, use the
Relationship Manager responsibility.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Internal/External Business
Locations.
2. Select either an internal or an external business location.
3. In the Consumer Staff Relationships related list, click New.
This related list shows the consumers that have a relationship to any staff member for the
location.
4. In the Consumer field, select the consumer to which the user is assigned.
5. In the Responsibility field, select the Relationship Manager responsibility.
6. In the User field, select the staff member to fulfill the responsibility.
7. Click Submit.
The relationship is added to the Consumer Staff Relationships related list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

231


<!-- page 232 -->
Create a household staff relationship
Create a relationship between a staff member at a business location and a household.

Before you begin

Role required: admin, sn_customerservice_manager, sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and
sn_bus_loc.location_relationship_manager

About this task

Users who have been added as staff members to a business location can be assigned a
household relationship.
Relationships are based on responsibilities. A responsibility definition describes a role or a
function that supports a customer or consumer. To create a household relationship, use the
Relationship Manager responsibility.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Internal/External Business
Locations.
2. Select either an internal or an external business location.
3. In the Household Staff Relationships related list, click New.
This related list shows the households that have a relationship to any staff member for the
location.
4. In the Household field, select the consumer to which the user is assigned.
5. In the Responsibility field, select the Relationship Manager responsibility.
6. In the User field, select the staff member to fulfill the responsibility.
7. Click Submit.
The relationship is added to the Household Staff Relationships related list.
Create and manage sold products for a business location
Staff members with the location agent role can manage sold products for their business
locations.

Before you begin

Role required: sn_customerservice_manager, sn_customerservice.svc_location_agent, or admin

About this task

Staff members with the sn_customerservice_manager role can create sold products
by choosing the appropriate product model. In contrast, staff members with the
sn_customerservice.svc_location_agent role can only view the list of sold products installed at
any service organization.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Internal/External Business
Locations.
2. Select either an internal or an external business location.
3. In the Sold Products related lists, click New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

232


<!-- page 233 -->
Sold Product form
Field

Description

Name

Name of the sold product.

Product

Product model sold to the customer.

Parent Sold Product

If the sold product contains child
components, reference to another sold
product.

Service Organization

Internal or external entity that is involved in
providing service to the customer.

Note: The sold products are closely
tied to the service organization. As
an example, if you select a service
organization, all the parent sold
products come from the same service
organization.

5. Click Submit.
A sold product record is created for the selected business location.
Related topics
Create a sold product
Create and manage install base items for a business location
As a staff member with the location agent role, create and manage install base items for your
business locations.

Before you begin

Role required: sn_customerservice_manager, sn_customerservice.svc_location_agent, or admin

About this task

Staff members with the sn_customerservice_manager role create install base items
by choosing the correct configuration item, whereas the staff members with the
sn_customerservice.svc_location_agent role can view the list of install base items installed at
any service organization.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Internal/External Business
Locations.
2. Select either an internal or an external business location.
3. In the Install Base Item related lists, click New.
4. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

233


<!-- page 234 -->
Install Base Item form
Field

Description

Number

Unique ID of the install base item. The system
automatically sets this field value, but you
can change it.

Name

Name of the install base item.

Configuration Item

Reference to another sold product if the sold
product contains child components.

Service Organization

Internal or external entity that is involved in
providing service to the customer.

Owned by

Business manager of the install base item.

Supported by

Configuration item supported by.

5. Click Submit.
An install base item record is created for the selected business location.
Related topics
Create an Install base item
Service organization install base
Extend proactive customer support to the Service Model Foundation by tracking products and
services at service organizations.
Business locations are extensions of a service organization and are critical to delivering
customer service. They enable support for businesses that interact with customers through
physical channels such as stores and branches, franchises, and dealerships. Business locations
are often considered the face of a business, where consumers engage for information and
purchase, as well as post-sales and ongoing support.
Businesses have multiple products installed at these locations to serve their customers. In the
past, there was no easy way for companies to track and manage these products and services. It
was only possible to track products and services for accounts and consumers, often resulting in
broken equipment, delayed service, and lower customer satisfaction.
By extending proactive customer support to the Service Model Foundation, you can track sold
products and install base items installed at service organizations.
Starting with the Zurich release, service organizations can:
• Track and manage products and services installed at a business location.
• Enable contributors at a business location to submit cases and request help.
• Create and resolve cases for sold products and install base items deployed at a business
location.
Related topics
Sold products and install base plugins for service organizations
Assign roles

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

234


<!-- page 235 -->
Sold products and install base plugins for service organizations
Track sold products & install base items for service organizations.

Sold Products and install base plugins for service organizations
Plugins are used by service organizations to track sold products and install base items.
Plugins for sold products and install base
Plugin Name

Description

Business Location

This plugin supports the Service Model
Foundation where the corporation does
business with customers through physical
channels such as stores and branches.

[com.snc.business_location]
Customer Service Install Base Management
[com.snc.install_base]

This plugin enables customers to capture the
current state of their install base and establish
the relationship to any downstream entities
that might impact their functioning.

Related topics
Assign roles
Create and manage sold products for a business location
Create and manage install base items for a business location
Activating plugins for Customer Service Management (CSM)
In the Customer Service Management (CSM) application, you must activate the Business
Location (com.snc.business_location) and Customer Service Household (com.snc.household)
plugins to enable the Service Model Foundation feature.
Activate plugins to enable the Service Model Foundation feature
Plugin

Description

Activate business locations

Activate this plugin to manage customer
service for business locations. This plugin
enables support for businesses that interact
with customers through physical channels
such as stores, branches, franchises, and
dealerships.

Activate customer service household

Activate this plugin to manage customer
service for households. This plugin enables
you to create households, define the members
of a household, and identify relationships
between household members.

Related topics
Activate business locations
Activate customer service household
Activate business locations
Activate the Business Location plugin to manage customer service for business locations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

235


<!-- page 236 -->
Before you begin

Role required: admin

About this task

The Business Location plugin (com.snc.business_location) enables support for businesses that
interact with customers through physical channels such as stores, branches, franchises, brokers,
agencies, and dealerships. Activating the Business Location plugin (com.snc.business_location)
automatically activates the Service Organization plugin (com.snc.service_organization). It
enables support for internal and external entities in your customer service structure, such as
branches, stores, franchises, and dealerships.

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the Business Location plugin (com.snc.business_location).
3. Select Activate.
Related topics
Activate customer service household
Activate Quote Management for Business Locations
Activate the Quote Management for Business Location plugin to create and track quotes by
channel partners.

Before you begin

Role required: admin

About this task

The following items are installed with Quote Management for Business Locationspeer :
• Plugins
• Store applications
• Roles
• Scheduled jobs
• Tables
For more information, see Roles and responsibilities.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Quote Management for Business Locations plugin (sn_bus_org_qm) using the filter
criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

236


<!-- page 237 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
Quote management for business organization
Activate Opportunity Management for Business Locations
Activate the Opportunity Management for Business Location plugin to create and track
opportunities across the lifecycle of the customer journey.

Before you begin

Role required: admin

About this task

The following items are installed with Opportunity Management for Business Locations:
• Plugins
• Store applications
• Roles
• Scheduled jobs
• Tables
For more information, see Roles and responsibilities.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Opportunity Management for Business Locations plugin (sn_bus_org_opptym) using
the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
Opportunity Management for business location

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

237


<!-- page 238 -->
Activate Order Management for Business Locations
Activate the Order Management for Business Location plugin to manage the complete order
lifecycle.

Before you begin

Role required: admin

About this task

The following items are installed with Order Management for Business Locations:
• Plugins
• Store applications
• Roles
• Scheduled jobs
• Tables
For more information, see Roles and responsibilities.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Order Management for Business Locations plugin (sn_bus_org_orm) using the filter
criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
Order Management for business location
Activate customer service household
Activate the Customer Service Household plugin to manage customer service for households.

Before you begin

Role required: admin

About this task

The Customer Service Household plugin (com.snc.household) enables you to create
households, define the members of a household, and identify relationships between household
members. This plugin automatically activates the Customer Service Base Extension Entities
plugin (com.snc.cs_base_extension), which provides granular access control through
relationships, user profile attributes, and roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

238


<!-- page 239 -->
Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for the Customer Service Household plugin (com.snc.household).
3. Click Activate.
Related topics
Activate business locations
Integration with Sales and Order Management
Integrate Service Model Foundation with Sales and Order Management to enable business
locations to operate as sellers. This integration triggers sales quote generation, order capture,
and fulfillment.

Integrate with Order Management
Install the Order Management Business Locations plugin (com.snc.business_location_orm) to
integrate Service Model Foundation with Order Management. You can manage customer orders
and empower channel partner staff to create, modify, and track orders throughout the sales
process with the integration of Service Model Foundation with Order Management.
Organization staff can create orders for customers to monitor and manage the orders for their
locations effectively. To learn more about the integration of Order Management with Service
Model Foundation, see Order Management for business location.

Integrate with Quote Management
Install the Quote Management Business Organization plugin
(com.snc.business_organization_qm) to integrate Service Model Foundation with Quote
Management.
The integration of Quote Management with Service Model Foundation application helps to
update and manage integrations with downstream functionalities such as sales orders and other
related processes. To learn more about the integration with Quote Management , see Quote
management for business organization.

Integrate with Opportunity Management
Install the Opportunity Management business location plugin
(com.snc.business_organization_opptym) to integrate Service Model Foundation with
Opportunity Management.
This integration enables business location-based sales representatives to create, modify,
and track sales opportunities throughout the sales process, ensuring they can address
customer needs effectively and provide updates on opportunity status. The feature supports
business locations (such as dealerships, stores, franchises, and resellers) which play a role in
delivering customer service and driving product and service sales. For details, see Opportunity
Management for business location.
Integrated roles
Roles

Description

sn_bus_loc.org_b2b_sales_order_specialist

Role assigned to organization staff to create
and manage Leads, Quotes, Opportunities,
and Orders for accounts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

239


<!-- page 240 -->
Integrated roles (continued)
Roles

Description

sn_bus_loc.org_b2b_sales_rep

Role assigned to organization staff to create
and manage Leads, Opportunity, and Quotes
for accounts.

sn_bus_loc.org_b2c_sales_order_specialist

Role assigned to organization staff to create
and manage Leads, Quotes, Opportunities,
and Orders for consumers.

sn_bus_loc.org_b2c_sales_rep

Role assigned to organization staff to
create and manage Leads, Quotes, and
Opportunities for consumers.

sn_bus_loc.org_sales_mgr

Role assigned to organization staff to create
and manage account and consumer related
Leads, Quotes, Opportunities, and Orders for
their hierarchy.

Related topics
Order Management for business location
Quote management for business organization
Opportunity Management for business location
Order Management for business location
Integrate Service Model Foundation with Order Management to support channel sales.

Overview of the integration
Use the Order Management Business Locations plugin (com.snc.business_organization_orm) to
perform the following actions.
• Create orders for business locations
• Modify and manage orders for the business locations
• Track seller and buyer details of the order

Data model
The Customer Order Related Party [sn_ind_tmt_orm_customer_order_related_party] table is a
list of service organizations. You can add a related party record to the table to provide access to
another party that is different from the service organization associated with the customer order.
All related parties listed as Authorized organizations and associated with a particular customer
order have access to the order, the order line items, and all other related entities. Channel
partners such as referral partners, influencer partners, and more can be added as related parties
to an order.
Fields on the Customer Order Related Party table
Field

Description

Type

Customer Order

Customer order that the
related party can access.

Reference

Type

Type of related party.

Reference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

240


<!-- page 241 -->
Fields on the Customer Order Related Party table (continued)
Field

Description

Type

Responsibility

Responsibility associated with Reference
the related party.

Note: The default
responsibility is set to
default_responsibility.
Channel partner

Channel partner whose
Reference
members can access the
order when added as a related
party.

Class

Class of the record.

sys_class_name

Rank

A numerical value to establish
the priority of the relationship.

Integer

Domain

Domain of the related party
record.

Domain ID

Active

Current state of the record,
whether active or inactive.

Boolean

Related topics
Roles and responsibilities
Activate Order Management for Business Locations
Roles and responsibilities
After successful integration of Order Management with Service Model Foundation, various roles
are added to the list view menu.

Description of roles and their responsibilities
Role

Description

Organization B2B
This role
Sales Representative
enables
(sn_bus_org_orm.org_b2b_sales_rep) organization
staff to create
and manage
accountrelated
offers at
their specific
locations.
Organization B2B Approver
This role
(sn_bus_org_orm.org_b2b_approver) enables
organization
staff to

Contains roles
• Location Org Viewer
(sn_bus_loc.location_org_viewer)
• Location Order Creator
(sn_bus_loc_orm.location_order_creator)
• Location Account Viewer
(sn_bus_loc.location_account_viewer)

This role contains the following inherited roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

241


<!-- page 242 -->
approve
accountrelated
orders at
their specific
locations.
As a B2B
order
approver, you
can only view
the customer
orders
that are
associated
with your
respective
location.

• Location Org Viewer
(sn_bus_loc.location_org_viewer)
• Location Order Viewer
(sn_bus_loc_orm.location_order_viewer)
• Location Account Viewer
(sn_bus_loc.location_account_viewer)
• Business Organization B2B Approver
(sn_bus_org_orm.org_b2b_approver)

Organization B2C
This role
This role contains the following inherited roles.
Sales Representative
enables
(sn_bus_org_orm.org_b2c_sales_rep) organization
staff to create • Location Org Viewer
(sn_bus_loc.location_org_viewer)
and manage
consumer• Location Order Creator
related
(sn_bus_loc_orm.location_order_creator)
orders at
• Location Consumer Viewer
their specific
(sn_bus_loc.location_consumer_viewer)
locations.
• Business Organization B2C Approver
They can
(sn_bus_org_orm.org_b2c_approver)
also view
consumer
orders and
associated
order line
items
where both
Consumer
and Channel
partner
fields are
specified. As
a B2C Order
Approver, you
can:
• View
consumer
detailed
and related
order line
items.
• Update
editable
fields
on the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

242


<!-- page 243 -->
Customer
Order form.
• Update the
status of
orders.
Organization B2C Approver
(sn_bus_org_orm.org_b2c_approver)

This role
enables
organization
staff to
approve
consumerrelated
orders at
their specific
locations.

This role contains the following inherited roles.
• Location Org Viewer
(sn_bus_loc.location_org_viewer)
• Location Order Viewer
(sn_bus_loc_orm.location_order_viewer)
• Location Consumer Viewer
(sn_bus_loc.location_consumer_viewer)
• Business Organization B2C Sales Approver
(sn_bus_org_orm_org.b2c_sales_approver)

Organization Sales Manager
(sn_bus_org_orm.org_sales_mgr)

This role
This role contains the following inherited roles
enables
enterprise
sales persona • Location Org Hierarchy Viewer
(sn_bus_loc.location_org_hierarchy_viewer)
to create,
manage,
• Location Customer Order Agent
and approve
(sn_bus_loc_orm.location_customer_order_agent)
account and
• Location Customer Order Approver
consumer
(sn_bus_loc_orm.location_customer_order_approver)
related orders
for their
• Location Consumer Order Agent
assigned
(sn_bus_loc_orm.location_customer_order_agent)
organizational
• Location Consumer Order Approver
hierarchy.
(sn_bus_loc_orm.location_consumer_order_approver)
They
can view
consumerrelated orders
and order line
items across
both parent
and child
business
locations.
The Location
Sales
Manager has
full access to
create and
approve all
order types,
including
both B2B and
B2C orders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

243


<!-- page 244 -->
sn_bus_org_orm.org_ui

Granular
role for
organization
staff to
ensures
consistent
sales order
experience
across
all user
interfaces.

None

Apart from the functional roles, users also need to have the Business organization UI
(sn_bus_org_orm.org_ui) granular role to have a uniform experience across all user interfaces.
Create an order for business organizations
Begin the ordering process in Order Management for business organizations by selecting a
customer account or consumer and entering the required information to create a product order.

Before you begin
Plugins required:

• sn_bus_org_orm
Roles required:
• sn_bus_org_orm.org_b2b_sales_rep,
• sn_bus_org_orm.org_b2c_ sales_rep,
• sn_bus_org_orm.org_sales_mgr,
• sn_bus_org_orm.org_relationship_mgr, or
• sn_bus_loc.org_sales_mgr
• Ensure that the Business Function is set to Sales and the Business Organization is active.

About this task

When you start an order, a pop-up prompts you to enter details. The pop-up window adapts
based on your role. Either the Account or Consumer field appears.
• If you have a B2B role, you can create orders for customer accounts.
• If you have a B2C role, you can create orders for consumers.
• Managers can also view child business locations and onboard agents to a business location.

Procedure
1. In the Configurable Workspace, select the List view.
2. Navigate to Customer Orders > All and select New.
The Create a new order pop-up opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

244


<!-- page 245 -->
Create a new order

3. On the Create a new order pop-up, create order for either an account or consumer.
To

Description

a. Select Account.
Create an order for an ac­
count

b. Enter the following:
▪ Order Type: Order type can be service or customer.
▪ Contact: Name of the primary customer contact.
▪ Order action: Select the type of order action.
a. Select the Consumer name.

Create an order for a con­
sumer

b. Enter the following:
▪ Order Type: Order type can be service or customer.
▪ Order action: Select the type of order action.

4. In Order action, select Add.
5. Select the Channel partner.
◦ The Channel Partner field is available only when the Order Management for Business
Location store app (sn_bus_org_orm) is installed.
◦ The field is automatically prefilled if the agent is assigned to a single business location.
◦ If the agent is assigned to multiple business locations, the field remains empty and must be
selected manually.
◦ The field is also prefilled when an Account or Consumer is selected, based on its
associated Channel Partner.
To learn more about the Channel Partner field, see Create an order in Order Management

.

6. Select Create.

Result

The order is started and the Order Catalog opens.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

245


<!-- page 246 -->
Quote management for business organization
Integrate Service Model Foundation with Quote Management for business organizations to
streamline operations and optimize the end-to-end life cycle for quote management.

Overview of quote management for business organization
Quote Management for business organizations enables sales agents and business organization
staff to efficiently create and manage the end-to-end life cycle of quotes on behalf of customers.
Use the Quote Management Business Organization plugin (com.snc.business_organization_qm)
to perform the following actions.
• Create quotes for customers through channel partners
• Modify and manage quotes for the business organization
• Track seller and buyer details of the quote

Data model
The Quote Management application is integrated with the product offering catalog to help sales
agents build quotes easily and conveniently.
The Quote Management Customer Order Related Party table contains the following fields.
Fields on the Customer Quote Form
Field

Description

Type

Customer quote

Customer quote that the related
party can access.

Reference

Type

Type of related party.

Reference

Responsibility

Responsibility associated with the
related party.

Reference

Note: The default
responsibility is set to
default_responsibility.
Channel partner

Channel partner whose members
can access the quote when added
as a related party.

Reference

Class

Class of the record.

sys_class_name

Domain

Domain of the related party record. Domain ID

Active

State of the record, whether active
or inactive.

Boolean

Related topics
Roles and responsibilities
Activate Quote Management for Business Locations
Roles and responsibilities
After successful integration of Order Management, the following menu items and roles are added
to the list view menu.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

246


<!-- page 247 -->
Description of roles and their responsibilities
Role

Description

Location Customer Quote Agent
(sn_bus_org_qm.org_sales_mgr)

This role
enables
organization
staff to create
and manage
accountrelated
offers at
their specific
organizations.

Organization ConsumerQuote Agent
(sn_bus_org_qm.org_sales_mgr)

This role
enables
organization
staff to
approve
accountrelated
quotes at
their specific
organizations.

Relationship manager for quotes
This role
(sn_bus_org_qm.org_relationship_mgr) enables
enterprise
sales
personas
to create,
manage and
approve
account and
consumerrelated
quotes
for their
assigned
organization
hierarchy.
Organization Quote Manager
(sn_bus_loc.org_sales_mgr)

This role
enables
enterprise
sales
personas
to create,
manage,
and approve
account and
consumerrelated orders
for their
assigned

Contains roles
• Location Quote Creator
(sn_bus_org_qm.org_quote_creator)
• Location Account Viewer
(sn_bus_loc.location_account_viewer)
• Location Organization Viewer
(sn_bus_loc.location_org_viewer)

• Location Consumer Viewer
(sn_bus_loc.location_consumer_viewer)
• Location Organization Viewer
(sn_bus_loc.location_org_viewer)
• Organization Quote Creator
(sn_bus_org_qm.org_quote_creator)

• sn_bus_loc_qm.location_consumer_quote_agent
• sn_bus_loc_qm.location_customer_quote_agent
• sn_bus_loc_qm.location_customer_quote_agent

• Organization Consumer Quote Agent
(sn_bus_org_qm.org_b2b_sales_rep)
• Organization Consumer Quote Agent
(sn_bus_org_qm.org_b2b_sales_rep)
• Location Organization Hierarchy Viewer
(sn_bus_loc.location_org_hierarchy_viewer)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

247


<!-- page 248 -->
organizational
hierarchy.
sn_bus_org_qm.org_ui

Granular
role for
organization
staff to
ensure
consistent
sales quote
experience
across
all user
interfaces.

None

Note: For more information on channel partners see, Quote Management

.

Create a quote for business organizations
Create a quote and manage the price breakdown of the products by verifying product price
details. Agents can analyze price details, discuss with customers and resellers, and decide on
the proposed quote.

Before you begin

Role required: admin

About this task

The channel partners can view a detailed price breakdown for each quote line item, ensuring
transparency in net price calculations. Quotes can be exported as PDFs and shared with
customers for confirmation and signatures, improving communication and record-keeping.
Additionally, quote-related parties can be created to facilitate sharing quotes with other business
organizations in multi-partner sales scenarios.

Procedure
1. Navigate to All > Quote > New.
2. Select New.
The Quote Record page is displayed.
3. On the Quote New record form, fill in the fields.
To learn more about the fields on the form, see Create a quote
4. Select Submit.

Result

The channel partners can generate and manage sales quotes for customers, simplifying the
sales cycle.
The quote is created. The quote is added to the list seen on the Quote page. You can add a
channel partner. You can generate a PDF to share the quote with customers for their validation
and confirmation.
Opportunity Management for business location
Integrate Service Model Foundation with Opportunity Management for Business Locations to
support channel sales.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

248


<!-- page 249 -->
Overview of the integration
Use the Opportunity Management for Business Locations plugin
(com.snc.business_organization_opptym) to perform the following actions.
• Create opportunities for business locations
• Modify and manage opportunities for the business locations
• Track the end-to-end life cycle of opportunities
• Enable external channel partners to track opportunities.
To create an opportunity for business location, see Create an opportunity

.

Data model
The Opportunity Related Channel Partner [sn_bus_org_opptym_related_business_organization]
table is a list of service organizations. You can add a related party record to the table to provide
access to another party that is different from the service organization associated with the
customer opportunity. All related parties listed as Authorized organizations and associated with
a particular customer opportunity have access to the opportunity, the order line items, and all
other related entities. Channel partners such as referral partners, influencer partners, and more
can be added as related parties to an opportunity.
Fields on the Opportunity Management Related Party table
Field

Description

Type

Opportunity

Opportunity that the related
party can access.

Reference

Opportunity Role

Type of related party.

Reference

Responsibility

Responsibility associated with Reference
the related party.

Domain

Domain of the related party
record.

Domain Path

Domain ID
Domain Path

Class

Class of the record.

sys_class_name

Order

Numerical value assigned to
determine the sequence to
display the records.

Integer

Channel partner

Channel partner whose
Reference
members can access the
order when added as a related
party.

Active

Current state of the record,
whether active or inactive.

Deal registration

Reference to Deal Registration Reference
(sn_prm_dr_deal_registration).

Program

Reference to Partner Program
(sn_prm_partner_program).

Boolean

Reference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

249


<!-- page 250 -->
Fields on the Opportunity Management Related Party table (continued)
Field

Description

Type

Deal Registration Type

Reference to Deal
Reference
Registration Type
(sn_prm_dr_deal_registration_type).

Related topics
Roles and responsibilities
Activate Opportunity Management for Business Locations
Roles and responsibilities
After successful integration of Opportunity Management with Service Model Foundation, various
roles are added to the list view menu.

Description of roles and their responsibilities
Role

Description

Organization B2B Sales Representative
(sn_bus_org_opptym.org_b2b_sales_rep)

Functional
role for
creating
location
Opportunity
for account.

Organization B2C Sales Representative
(sn_bus_org_opptym.org_b2c_sales_rep)

Functional
role for
creating
location
opportunity
for
consumers.

Contains roles
• Location Org Viewer
(sn_bus_loc.location_org_viewer)

• Location Opportunity Creator
(sn_bus_org_opptym.org_opportunity_cr
• Location Account Viewer
(sn_bus_loc.location_account_viewer)

This role contains the following inherited ro
• Location Org Viewer
(sn_bus_loc.location_org_viewer)

• Location Opportunity Creator
(sn_bus_org_opptym.org_opportunity_cr
• Location Consumer Viewer
(sn_bus_loc.location_account_viewer)

Organization Sales Manager
(sn_bus_org_opptym.org_sales_mgr)

Functional
This role contains the following inherited ro
role for
location
• Location Org Hierarchy Viewer
opportunity
(sn_bus_loc.location_org_hierarchy_view
managers.
They can
• Organization B2B Sales Representative
create
(sn_bus_org_opptym.org_b2b_sales_rep
location
• Organization B2C Sales Representative
opportunities
(sn_bus_org_opptym.org_b2c_sales_rep
for accounts
and
consumers
for their
hierarchy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

250


<!-- page 251 -->
Organization Opportunity Relationship
Functional
This role contains Organization Sales Man
Manager(sn_bus_org_opptym.org_relationship_mgr) role for
(sn_bus_org_opptym.org_sales_mgr)
enterprise
partner
relationship
managers.
They’re
responsible
for building
and
managing
relationships
with multiple
channel
partners.
They can
create,
manage,
and approve
account and
consumerrelated
opportunities
within their
assigned
organizational
hierarchy.
sn_bus_org_opptym.org_ui

Granular
None
role for
organization
staff to
ensure
consistent
opportunities
experience
across
all user
interfaces.

Activate query rules
Set the query rules system property [sn_cs_queryrules.use_query_rules] value to true. For
upgrade customers, once set to true, you must migrate any changes made in Before Query
Business Rules to the Query Rules feature and validate them.
Configure forms and lists
Configure forms to add the fields and related lists that are necessary to support the business
location and household data models.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Administration > Guided Setup and select Get Started.
2. In the Service Model Foundation category, select Get Started.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

251


<!-- page 252 -->
3. Select Configure Forms and List.
4. Add the following related lists to the Consumer form for these views: Case and Workspace.
◦ Current Households
◦ Household Member > Consumer (All Households)
◦ Consumer Relationships
◦ Household Relationships
◦ Consumer Team Member > Consumer (Consumer Team)
◦ Sold Products
5. Add the Service Organization field to the Case form for these views: Case and Workspace.
6. Add the Requesting Service Organization field to the Case form for these views: Case and
Workspace.
7. Add the Updated by field to the Case form for these views: Case and Workspace.
8. Add the Household field to the Case form for these views: Case and Workspace.
9. Add the Primary Household (Household) field to the Consumer form for these views: Case
and Workspace.

Note: After the Household field is added to the Consumer form for both case and
workspace views, observe the following behavior: The form for a new consumer doesn’t
have a Primary Household field.
10. Add the following related lists to the Sold Products form for these views: Case and Workspace.
◦ All Consumers
◦ More Consumers
11. Add the Household field to the Entitlement form for these views: Case and Workspace.
12. Add the Household field to the Contract form for these views: Case and Workspace.
13. Add the Household field to the Sold Product form for these views: Case and Workspace.
14. Add the following related lists to the Service Organization form for these views: Case and
Workspace.
◦ Members
◦ Cases > Service Organization (Cases)
◦ Account Staff Relationships
◦ Consumer Staff Relationships
◦ Household Staff Relationships
15. Add the following related lists to the Household form for these views: Case and Workspace.
◦ Current Members
◦ Household Member > Household (All Members)
◦ Household Member Relationship > Household (Member Relationships)
◦ Household Team Member > Household (Household Team)
◦ Case > Household (Cases)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

252


<!-- page 253 -->
◦ Entitlement > Household (Entitlements)
◦ Contract > Household (Contracts)
◦ Sold Product > Household (Sold Products)
Create a business location
Establish internal and external locations so that users and consumers at a business location can
create accounts, contacts, consumers, and households.
Create business locations
Task

Description

Create an internal business location

Create an internal business location.

Create an external business location

Create an external business location.

Create an internal business location
Create an internal business location to enable users and consumers to create accounts,
contacts, consumers, and households.

Before you begin

Role required: admin

About this task

A business location has a manager. When you create an internal business location,
you add a user to the Manager field on the Internal Business Location form. Users
then added as internal business location managers are automatically assigned the
sn_customerservice.svc_location_manager_contributor role.
However, to assign the sn_customerservice.svc_location_manager role to the internal business
location managers, the

sn_bus_loc.int_bus_loc.onboard_location_manager_as_contributor
system property must be set to false.

Note: Only internal users can be added as managers for internal business locations.
The manager of an internal business location can access all the cases for account, household,
or consumer in the location hierarchy, including cases for child business locations. The manager
can also:
• Add staff members to business locations in the location hierarchy.
• Create account team or consumer team relationships with staff members from the location
hierarchy.
• View customer information.
• Update cases created in the location hierarchy.
• Create cases for customers in the location hierarchy.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Internal Business Locations.
2. Click New on the Internal Business Locations list.
3. Fill in the fields on the Internal Business Location form.
4. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

253


<!-- page 254 -->
The location is added to the Internal Business Locations list.
After creating an internal business location, you can add staff members to the location, create
relationships between staff members and accounts, households, and consumers, and track
the list of customers serviced by a business location.
Related topics
Create an external business location
Create an external business location
Create an external business location to enable users and consumers to create accounts,
contacts, consumers, and households.

Before you begin

Role required: admin

About this task

Both internal and external users can be added as managers for external business locations.
The manager of an external business location can access all the cases for an account,
household, or consumer in the location hierarchy, including cases for child business locations.
The manager can also:
• Create staff members for internal and external business location.
• Assign roles and responsibilities to the staff members.
• Assign staff members to the location.
• View and manage cases created in the location hierarchy.
• Submit a case on behalf of the location.

Procedure
1. Navigate to All > Customer Service > Service Organizations > External Business Locations.
2. In the External Business Locations list, click New.
3. On the form, fill in the fields.
For a description of the field values, see External Business Location form.
4. Click Submit.
The location is added to the External Business Locations list.
After creating an external business location, you can add staff members to the location and
create relationships between staff members and accounts, households, and consumers, and
track the list of customers serviced by a business location.
Related topics
Create an internal business location
Tracking the location details for a service organization
By tracking and capturing the location details for a service organization, you can provide Field
Service Management, Walk-up Experience and appointment booking capabilities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

254


<!-- page 255 -->
Overview
You can provide Field Service Management, Walk-up Experience, and appointment
booking capabilities through the service organization data model by capturing the Location
(cmn_location) table details.

Note: You must activate the service organization (com.snc.service_organization) plugin
before you can track the location details for a service organization.

Location field
By going to the service organization form, you can see that there's a Location field, where you
can add the information about your geographical location, that is, the cmn_location of the
service organization. The cmn_location on the service organization is synchronized with the
address fields, but the address fields on the service organization aren’t synchronized with the
cmn_location, which makes it only a one-way synchronization. The cmn_location is associated
with the service organization in a two-way, one-to-one relationship.

Note: Changes to the cmn_location record don’t update the address fields on the service
organization.
The address fields on the service organization record that are synchronized with the location
(cmn_location) include:
• Street
• City
• State
• Country
• Zip / Postal Code
• Latitude
• Longitude

Note: With the base system, the Location fields don’t appear on the form or list views. If
the location field on the service organization isn’t defined, an on-demand script is shipped
with the base system. The script generates the cmn_location record from the address
fields.
Common attributes of service organizations
By using common attributes to establish a unified reference architecture and data model,
you can extend the Customer Service Management data model to support your service
organizations.
You can get use cases from industries like Financial Services Operations, Healthcare and Life
Sciences, and Public Sector Digital Services, to capture common attributes for your architecture
and data model. For example, a service organization may want to capture attributes for bank
branches, hospitals, and agencies. By capturing these common attributes across industries, you
can create a unified reference architecture and data model that avoids implementing the same
attribute across different industries.
The following table lists the common attributes that have been identified across industries for the
service organization [sn_customer_service_organization] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

255


<!-- page 256 -->
List of common attributes
Field Name

Description

Email

Primary email address for the service
organization.

Identification number

ID that is used to identify the service
organization.

Type

Type of primary service organization by
industry. For example, branches, agencies,
providers, stores, and so on.

Subtype

Organization types within the industry. For
example, by using the Type and Subtype
fields, you can select the multiple types to be
used for your service organizations.

Adding and associating company records with a business location
Create a company record and associate it to an internal or an external business location.
Configuration tasks for associating company records with a business location
Task

Description

Add a new company

Create a company record that represents
vendors, manufacturers, or customers with
whom you do business.

Associate company records with a business
location

Associate company records with a business
location to indicate that a business location is
a company.

Associate company records with a business location
Associate your company records with a business location to enhance service organization data
model adoption across different industry verticals.

Before you begin

Add the Company field to an internal or an external business location form using the form layout.
For more information, see Add fields to a form layout in Table Builder .
Role required: admin

Procedure
1. Navigate to All > Customer Service > Service Organizations > Internal/External Business
Locations.
2. Select the internal or external business location from the list that you want to associate a
company record to.
3. Select the company record previously created from the Company field.
4. Select and hold (or right-click) in the header and select Save.

Result

The company record is successfully associated with a business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

256


<!-- page 257 -->
Virtual Agent support for business locations
Customer service agents receive chat requests from your business location staff members on
the CSM Agent Workspace. These agents can assist your staff members to resolve issues and
manage the cases more efficiently if your staff members fill out a pre-chat survey first.

Overview
Before your staff members can use a pre-chat survey to initiate a chat, your administrator must
activate the pre-chat configuration for the Business Location Service Portal. The preconfigured
surveys are activated by default in the base system. If your business location has upgraded the
system to manually activate the pre-chat configuration, then staff members can fill in the presurvey before the chat. To learn more about the pre-chat survey, see Pre-chat surveys.
You must also assign the service organization contributor
(sn_customerservice.service_organization_contributor) and location manager
(sn_customerservice.svc_location_manager_core) roles to the staff members who will be using
the pre-survey chat feature.
Let's say that a staff member with the correct role fills out a pre-chat survey on the Business
Location Service Portal (BLSP). The chat is then assigned to a customer service agent or Virtual
Agent via the advanced work assignment (AWA) routing. To learn more about AWA, see Exploring
Advanced Work Assignment .
Before entering into a chat conversation with the staff member, the assigned agent reviews the
context of the case so that the agent has a better understanding on how to handle the case.

Pre-chat survey
The pre-chat survey helps your staff members to fill in the details of the location and support
requirements before a chat so that an agent has context about the case and can better assist
your staff members. The pre-chat survey makes the chat more efficient and helpful to your staff.
To learn more about how a chat is initiated from the BLSP, see Chat with Virtual Agent from the
Business Location Service Portal.
The pre-chat survey isn't displayed for service organization contributors who are associated to a
single business location. The location is picked by default.
The business locations that are listed in the pre-chat configuration are limited to the locations
that are assigned to the business location manager. You can't select a child business location.
To learn more about the configuration of the pre-chat surveys, see Define pre-chat survey
configurations .
Related topics
Chat with Virtual Agent from the Business Location Service Portal
Chat with Virtual Agent from the Business Location Service Portal
Get the information that you need about a case and a case resolution by filling out a pre-survey
on the Business Location Service Portal. The pre-survey lets the customer service agent or
Virtual Agent know your location and some details about your case so that you don't have to
spend more time repeating this information.

Before you begin

Role required: Service Organization Contributor
(sn_customerservice.service_organization_contributor) or Location Manager
(sn_customerservice.svc_location_manager_core)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

257


<!-- page 258 -->
Procedure
1. In the Business Location Service Portal, select the Chat icon (

) to start a conversation.

Note: The agent chat configuration (sp_agent_chat_config) must be active for the
Business Location Service Portal.
2. From the list of locations in the pre-chat survey, select the business location that you're directly
associated to and select Submit.
A virtual agent or a customer service agent responds to your chat request.
3. When you're finished with the chat, select End Conversation.

What to do next

If the agent creates a case or links the discussion to an existing case, you can view these cases
from the Business Location Service Portal by selecting Cases.
Related topics
Virtual Agent support for business locations
Create customer projects
Create customer projects at internal or external business locations to manage location openings,
renovations, closings, or other location-specific initiatives.

Before you begin

To access customer projects and to enable required roles, make sure you enable the Customer
Project Management (com.snc.csm_ppm) plugin.
Role required: admin, it_project_manager, sn_service_org.project_manager

About this task

A customer project can be initiated by applying templates, or by importing and exporting
projects. Furthermore, cases can be created to address issues either at the project or project
task level.

Procedure
1. Navigate to Workspaces > Project Workspace.
2. Initiate a project by selecting New.
Under My projects, a list of projects associated with your role is displayed. Under All projects,
a list of all projects is displayed.
3. On the form, fill in the fields.
The following table outlines the unique fields of the form. To learn more about other fields, refer
Starting a project .
Create Project form
Field

Description

Project class

Class of the project. Select Customer
Project.

Project template

Template of a project. To create a project
from template, select a template from the list
displayed. Based on the template, project
tasks are created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

258


<!-- page 259 -->
Field

Description

Project name

Name for the project.

4. Select Confirm.
5. Select a project to see all the related tabs.

Customer Project related tabs
Related tabs

Description

Planning

In this section, you can:
◦ create or add tasks
◦ update task details
◦ create case for the project and project
tasks
◦ set deadlines using graph
◦ apply template
◦ delete, move, import, and export project
◦ launch help videos
◦ calculate completion estimates
◦ copy partial project

Details

In this section, you can view and update all
project tasks and details of the project.

Financials

Displays cost plans of the project

RIDAC

Displays risks of the project

Analytics

Enables you to track project phases,
plans, assignments, issues, time elapsed,
resources, benefits, and other details of the
project graphically.

Docs

Docs of the project

Status Reports

Reports of the project

6. Under the Details tab, fill in the other fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

259


<!-- page 260 -->
The following table outlines the unique fields of the customer project. To learn more about
other fields, see Starting a project .
Customer Project form
Fields

Description

Account

Account for the project. Select an account
from the displayed list.

Note:
◦ On selecting an account, the Service
Organization field disappears.
◦ The customer project manager can’t
access projects or project tasks
associated with service organization
project manager.
Service Organization

Service organization for the project. Select an
IBL or EBL from the displayed list.

Note:
◦ On selecting a service organization,
the Account field disappears.
◦ The service organization project
manager can’t access projects
or project tasks associated with
customer project manager.

What to do next
Create a project task from a project
Add staff members to a business location
Add users as staff members to a business location so that they can support accounts, contacts,
consumers, and households.
Add staff members to internal and external business locations
Task

Description

Add staff members to an internal business
location

Add internal users with the snc_internal role as
staff members to an internal business location.

Add staff members to an external business
location

Add both internal users with the snc_internal
role and external users with the snc_external
role as staff members to an external business
location.

Related topics
Add staff members to an internal business location
Add staff members to an external business location

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

260


<!-- page 261 -->
Add staff members to an internal business location
Add users as staff members to an internal business location to support accounts, contacts,
consumers, and households.

Before you begin

Role required: admin, sn_customerservice_manager, sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and
sn_bus_loc.location_relationship_manager

About this task

You can add internal users with the snc_internal role as staff members to an internal business
location.
• Administrators and customer service managers can add staff members to any business
location.
• Location managers can add staff members to the business locations that they have access to.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Business Locations > Internal
Business Locations.
2. Select the desired internal business locations record.
3. Click the Register Member related link to open the Register Member at Internal Business
Location record.
You can use the record to register new location staff or move existing internal or external staff
between locations managed by the Location manager, and assign responsibilities to staff
accordingly.
4. On the form, fill in the fields.
Register Member at Internal Business Location form
Field

Description

Internal Business Location

The automatically generated internal
business location.

Member

Field used to select an internal staff member
from the list of service organization internal
staff record.

Member Type

Field used to assign responsibility for the
member selected at the business location.
To learn more about responsibilities, see
Assign responsibilities.

5. Select Submit.
A member record with the selected member, member type, and business location is created.
After a member type is selected, the member is assigned a responsibility automatically.
Add staff members to an external business location
Add users as staff members to an external business location to support accounts, contacts,
consumers, and households.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

261


<!-- page 262 -->
Before you begin

Role required: admin, sn_customerservice_manager, sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and
sn_bus_loc.location_relationship_manager

About this task

You can add both internal users with the snc_internal role and external users with the
snc_external role as staff members to an external business location.
• Administrators and customer service managers can add staff members to any business
location.
• Location managers can add staff members to the business locations that they have access to.

Note: Adding new external staff members to the external business locations must be
done using the service organization external staff module.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Business Locations > External
Business Locations.
2. Select the desired external business locations record.
3. Click the Register Member related link to open the Register Member at External Business
Location record.
You can use the record to register new location staff or move existing staff between locations
managed by the Location manager, and assign responsibilities to staff accordingly.
4. On the form, fill in the fields.
Register Member at External Business Location form
Field

Description

External Business Location

The automatically generated external
business locations.

Register Staff

Field used to register new location staff or
move existing staff from external business
location hierarchy between locations.
◦ New Staff: Create a user in
Service Organization External Staff
(sn_csm_service_organization_external_staff)
table with (snc_external) role.
◦ Existing Staff: List of staff members
already working under the service
organization hierarchy.

First Name

First name of the staff member.

Last Name

Last name of the staff member.

User ID

User ID of the staff member.

Email

Email address of the staff member.

Member

Field used to select an external staff member
from the list of service organization external
staff record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

262


<!-- page 263 -->
Field

Description

Note: This field appears only when
Existing Staff is selected from the
Register staff field.
Member Type

Field used to assign responsibility for the
selected business location.
◦ None: Creates a member record.
◦ Listed Member: Creates a member record.
With the member record, a responsibility
record is created with the type as Listed
Member and the responsibility is empty.
◦ Location Contributor: Creates a member
record and along with the member record,
a responsibility record is created with
the type as Location Contributor and the
responsibility as Location Contributor.

Note: Assigning responsibility is
applicable to both existing and new
staff members.

5. Click Submit.
A new external staff member record is created for the selected external business location. The
admin must assign responsibilities to the staff members. However, if you've selected None as a
member type, then you must not create a responsibility record.
Assign responsibilities
Use the responsibility data model to assign responsibilities to a service organization (SO)
member.

Before you begin

Role required: admin

About this task

Businesses often need staff to work at more than one business location, and they can have
different responsibilities at different locations. Using the responsibility data model, an SO
member can be assigned multiple responsibilities.
The responsibility data model maintains the relationship between the SO member and
the type of responsibility within the Service Organization Member Responsibilities
[sn_csm_svc_org_member_responsibility] table.

Note: If the business location plugin is active, this feature is enabled by default. However,
for upgrade customers, the data in the [sn_csm_svc_org_member_responsibility] table will
be auto-populated for existing SO members to ensure that they retain as much access after
the upgrade. Any new records created after the Zurich release must be created using the
following steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

263


<!-- page 264 -->
Procedure
1. Navigate to All > Customer Service > Service Organizations > Internal/External Business
Locations.
2. Open the business location (internal or external) record.
3. Open the SO Member record from the Members related list.
4. Select New to create a record in the SO Member Responsibilities
[sn_csm_svc_org_member_responsibility] table.
The Service Organization Member Responsibility record shows the following fields: Member,
Type, and Order.

Note: The Member field refers to the [sn_csm_service_organization_member] table.
This field is auto-populated if the record is initiated from the SO Member related list, the
Type field refers to the [sn_customerservice_related_party_configuration] table, and the
Order field specifies the sequence in which records are displayed, organized according
to business preferences.
With the base system, users with a specific role can be assigned a particular type.
User roles and associated types
Role

Description

sn_customerservice.svc_location_agent

Location Agent

Note: This role only applies to the
internal business location.
sn_customerservice.svc_location_consumer_agent
Location Consumer Agent

Note: This role only applies to the
internal business location.
sn_customerservice.service_organization_contributor
Location Contributor
sn_customerservice.svc_location_manager_contributor
Location Manager Contributor
sn_customerservice.svc_location_manager Location Manager Fulfiller

Note: This role only applies to the
internal business location.
sn_bus_loc.location_relationship_manager Location Relationship Manager

Note: This role only applies to the
external business location.
sn_bus_loc.svc_location_support_agent

Location Support Agent

5. After you assign the required related party type, select Submit.
A new responsibility is added to the SO member.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

264


<!-- page 265 -->
Assign roles
Assign roles to internal and external users to facilitate proper access to service organizations,
business locations, and households. By assigning required roles, you can enable each user to
have the necessary permissions to perform their tasks effectively.

Before you begin

Role required: admin

About this task

The Service Model Foundation plugins add the following roles to Customer Service
Management.
Service Model Foundation roles
Role

Description

Location manager contributor

A location manager
[sn_customerservice.svc_location_manager_contributor]
contributor is employed at
the business location and
manages a business location
in the location hierarchy along
with all its child business
locations.

Contains roles

• sn_customerservice.consumer_contributor

• sn_customerservice.svc_location_manager_c

• sn_customerservice.service_organization_con
• sn_customerservice.account_contributor

A location manager
contributor performs the
following tasks:
• Manage service
organization.
• Manages staff at the
business locations.
• Track products and services
at the business locations.
• Report cases for any
account, household, or
consumer created at the
parent or any child business
locations.
Location relationship manager

A location relationship
[sn_bus_loc.location_relationship_manager]
manager is employed by the
parent business and acts
Note: This role only
as a point of contact for one
applies to the external
or more external business
business locations.
locations.

sn_customerservice.svc_location_manager_con

A location relationship
manager performs the
following tasks:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

265


<!-- page 266 -->
Service Model Foundation roles (continued)
Role

Description

Contains roles

• Manage and monitor all
activities related to products
and services at an external
business location.
• Monitor the performance of
external business locations.
• Respond to queries
on case status from
external business location
stakeholders.
Location agent

A location agent performs the
[sn_customerservice.svc_location_agent]
following tasks:

Note: This role only
applies to the internal
business location.

• sn_fsm_servicedesk_agent
• sn_esm_location_agent

• View all customer service
management (CSM)
entities.
• Create cases for any
account, household,
consumer, or service
organization.
• Fulfill cases for any account,
household, consumer, or
service organization created
at the agent’s location.

Location consumer agent

A location consumer agent
[sn_customerservice.svc_location_consumer_agent]
performs the following tasks:

Note: This role only

• View all CSM entities.

applies to the internal
business location.

• Create cases for any
account, household,
consumer, or service
organization.

• sn_fsm_servicedesk_agent
• sn_esm_location_agent

• Fulfill cases for any account,
household, consumer,
or service organization
created at the service
organization or any child
service organization.
• Assign related staff to any
account, household, or
consumer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

266


<!-- page 267 -->
Service Model Foundation roles (continued)
Role

Description

Location manager

A location manager performs
[sn_customerservice.svc_location_manager]
the following tasks:

Note: This role only
applies to the internal
business locations.

Contains roles

• sn_fsm_servicedesk_agent
• sn_customerservice.svc_location_agent

• View all CSM entities for a
related account, household,
consumer, or service
organization.

• email_client_quick_message_author

• Create, update, and close
cases for any related
account, household,
consumer, or service
organization created at the
consumer’s location.

• sn_shn.admin

Relationship agent

Manage cases for the
accounts, contacts,
[sn_customerservice.relationship_agent]
consumers, and households
that the agent has
relationships with.
It includes the following
relationships that are provided
with the Service Model
Foundation plugins:

• sn_templated_snip.template_snippet_writer

• sn_customerservice.svc_location_manager_c
• approver_user

• sn_customerservice.svc_location_consumer_

• agent_workspace_user
• sn_fsm_servicedesk_agent
• snc_internal
• sn_templated_snip.template_snippet_reader
• sn_customerservice.csm_workspace_user
• sn_shn.editor
• email_composer

• Account Manager: Creates
a relationship between
an internal user and an
account.
• Relationship Manager:
Creates a relationship
between an internal user
and a consumer or a
household.
Service Management location
agent
[sn_esm_location_agent]

A service management
location agent is an agent for
a business location.

• sn_lookup_verify_user
• assignment_workbench
• knowledge
• agent_workspace_user
• actsub_user
• template_editor
• chat_admin
• cmdb_read
• agent_schedule_user
• interaction_agent
• sn_templated_snip.template_snippet_reader

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

267


<!-- page 268 -->
Service Model Foundation roles (continued)
Role

Description

Contains roles

• sn_customerservice.csm_workspace_user
• sn_shn.editor
• email_composer
• template_editor_global
Location support agent

A location support agent is a
service organization member
[sn_bus_loc.svc_location_support_agent]
who acts as a fulfiller and can
perform the following tasks:

• sn_esm_location_agent

• sn_csm_case_types.service_definition_viewe

• View all CSM entities.
• Create and resolve cases.
• Access the CSM
Configurable Workspace.
• Use business location 360
to view details of internal
and external business
locations that they support,
sold products, location
members, install base items,
and available services.

Note: The role of
location support agent
isn’t supported for
external business
locations since case
fulfillment isn't enabled
for these locations.

Note: If contributor users, like relationship contributors, account contributors, or
consumer contributors associated with business locations, have a location contributor
(sn_customerservice.service_organization_contributor) role, they can access the business
locations.

Procedure
• You can assign roles to users using the Service Model Foundation guided setup.
• You can also assign roles to users using the ServiceNow AI Platform user
administration feature: Assign a role to a user .
Setting up assignment groups
Associate your assignment groups with an internal or an external business location. This
association forms a one-to-many (1:M) relationship, which means, one or more groups can
be associated with a service organization. This process makes it easier to route cases to the
appropriate team member using the inter-organization support capability.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

268


<!-- page 269 -->
Configuration tasks for setting up assignment groups at a business location
Task

Description

Create a group

Create a group to associate it with a service
organization.

Configuring a group

Configure a group that includes adding group
members and assigning them required roles.

Associate a group to a business location

Establish a one-to-many (1:M) relationship
between a group and a business location.

Add group members to a business location

Enroll group members to a business location
and have a dedicated group working on cases.

Create a group
Create groups to assign work to team members based on specific requirements such as skills,
location, and product models. This approach enables you to route cases to the appropriate team
members.

Before you begin

Role required: admin

Procedure
1. Navigate to All > User Administration > Groups.
2. Select New.
3. On the Group form, fill in the fields.
Group form
Field

Description

Name

The name of the group.

Group email

The group email address or the distribution
list for the point of contact, such as the group
manager.

Note: By default, the group email
address overrides the individual email
addresses of the members.
Manager

The group manager or lead associated with
the group.

Parent

The larger group to which this group belongs.
If a group has a parent, the child group
inherits the roles of the parent group. The
members of the child group aren’t members
of the parent group.

Hourly rate

The amount charged per hour to calculate
costs for the tasks assigned to the group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

269


<!-- page 270 -->
Field

Description

Description

The detailed information about the group.

4. Select Submit.

What to do next

Configure a group by adding members and assigning them appropriate roles. For more
information, see Configuring a group.
Configuring a group
Set up the group by adding members and assigning them the necessary roles. The group
members inherit the roles of the group, so you don’t have to assign roles to each member
separately. This setup enables members within a group to perform specific field service tasks,
filtered by location, skills, product models, and so on.
Add members to a group
Add a member to a group so that the member inherits all the roles assigned to the group.

Before you begin

Role required: admin

Procedure
1. Navigate to All > User Administration > Groups.
2. Select the group from the list that you want to add members to.
3. In the Group Members related list, select Edit.
4. Select and add one or more names to the Group Members List.
5. Select Save.

What to do next

Assign the required roles to the members of the group. For more information, see Assign
required roles.
Assign required roles
You can assign one or more roles to a group to grant required access to the group members.

Before you begin

Role required: admin

Procedure
1. Navigate to All > User Administration > Groups.
2. Select the group from the list that you want to add roles to.
3. In the Roles related list, select Edit.
4. Select and add the required roles to the Roles List.
5. Select Save.

Result

The roles are successfully added to the assignment group. You can now start associating
these groups to a business location. For more information, see Associate a group to a business
location.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

270


<!-- page 271 -->
Associate a group to a business location
Associate a group with the desired business location by establishing a one-to-many (1:M)
relationship. This association helps you assign cases directly to the appropriate assignment
groups.

Before you begin

Note: A group can only be associated with a single business location, but a business
location can have multiple groups.

Role required: admin

Procedure
1. Navigate to All > Customer Service > Service Organizations > Business Locations > Internal/
External Business Locations.
2. Select the internal or external business location from the list that you want to associate an
assignment group to.
3. In the Assignment Groups related list, select New.
4. On the Service Organization Assignment Group form, fill in the fields.
Service Organization Assignment Group form
Field

Description

Service organization

Auto-populated with the name of the
business location to which you’re adding an
assignment group.

Assignment group

Name of the assignment group that is to be
added.

5. Select Submit.

What to do next

Add group members to a business location. For more information, see Add group members to a
business location.
Add group members to a business location
Enroll or add group members to a business location to create a dedicated group or team focused
on specific cases.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Service Organizations > Business Locations > Internal
Business Locations.
2. Select the internal business location from the list that you want to add group members to.
3. In the Members related list, select Edit.
4. Add the users from the associated group to the Members List.
5. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

271


<!-- page 272 -->
Result

The member is successfully added to the assignment group. Based on your requirement, you
can keep adding more members to the group and assign them a dedicated task.
Setting up products and available services at a business location
By setting up the relationships between organizations and users in the Customer Service
Management (CSM) application, your organization can associate the products and services
with the service organization (SO). The SO staff can then address the customer queries about
the products and services at a business location and even raise a case on the behalf of their
customers.
Configuration tasks for setting up the products and available services at a business location
Task

Description

Create a service definition

Create a service definition record.

Service Definition form

Specify how a service organization provides
its services by configuring the Service
Organizations offering Service field in the
sn_case_type_selection table.

Associate a product with a service definition

Associate one or more products with a service
definition.

Associate service organizations with a service

Establish an association between products
and available services to service organizations
by defining the service organization criteria.

Note: These service-related capabilities are available only after activating the Customer
Service Case Types (sn_csm_case_types) plugin. The plugin is optional and must be
enabled if you want to use these capabilities with business locations.
Setting up inter-organization support
Provide your agents at a business location with the visibility into other business locations that
they support using the inter-organization support capability. This way, you can enable location
support agents to resolve cases raised by other business location.

Overview
The Service Model Foundation enables business locations to request help from others and fulfil
such requests. Besides supporting customers, business locations can also support other service
organizations.
Currently, there is no easy way for agents who are assigned to a specific business location to
access the details they need about other business locations they support, such as contact
information, install base items, or existing cases.
With the inter-organization support capabilities, you can enable your business location agents to
access additional details about the other business locations they serve, facilitating quicker and
more efficient support for the requesting service organization.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

272


<!-- page 273 -->
Note: You can activate this capability by enabling the business location
(com.snc.business_location) plugin.

Use case
Streamlined support for national retail chains: In the retail segment, store and central support
teams assist with day-to-day store operations at the market, country, or segment level. The
retailers aim to structure these teams to support only the stores or franchises within their
countries. For effective customer support, store agents need full access to the stores, but
currently, regional support agents lack full access to the service organizations, limiting their
effectiveness.
For example, the ABC retail operates with more than 150 stores nationwide. Each store has
its own dedicated support team for daily operations, while regional support teams provide
additional assistance. However, the regional location support agents currently lack full access to
the service organizations, resulting in delays and inefficiencies in addressing store issues.
With the inter-organization capability, ABC retail can:
• Setup inter-organization support for their stores by associating each store with its regional
service organization.
• Enable regional location support agents to view context about the stores they support,
including contact information, install base, and existing cases.
This way, the regional support agents can quickly access necessary information and other
details, coordinate efficiently with store agents, and resolve issues more effectively. This
improves overall store performance and customer satisfaction.

Key benefits
Inter-organization support offers the following benefits:
• Improve agent experience: Provide agents at a business location with visibility into the other
business locations they support.
• Reduce resolution time: Minimize back-and-forth communication by providing key context
alongside cases for service organizations.
• Increase operational efficiency: Define support structures for service organisations through
hierarchy or relationship-based criteria.
Configuring business locations serviced by a business location
You can track the relationship between requesting and fulfilling service organizations. You can
set hierarchy or relationship-based support criteria for your business locations.
Configuration tasks for setting up business locations serviced by a business location
Task

Description

Define the configuration type for customers or
business locations

Define the configuration type for the business
location served to provide access to the
location support agents.

Associate customers or business locations to
a service organization

Associate business locations to
service organizations using the
service organization customer criteria
[service_organization_customer_criteria] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

273


<!-- page 274 -->
Define the configuration type for customers or business locations
Define the configuration type to provide service to customers or business locations within any
service organization (SO) using the Customer Service Management (CSM) application.

Before you begin

Role required: admin, sn_customerservice_manager, sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and
sn_bus_loc.location_relationship_manager

Procedure
1. Navigate to All > Customer Service > Service Organizations > Business Locations > Internal
or External Business Locations.
2. Select the desired internal or external business locations record and go to the Configurations
tab.
3. Select the configuration type based on whether you intend to provide service to customers or
business locations within any service organization.
Configuration type

Description

Customers that are served at a business loca­
tion. The customers served can be defined
with two options:

Customers served

◦ All customers: Enables service organiza­
tion staff to create and resolve issues for all
the customers.
◦ Criteria-based: Enables service organiza­
tion staff to create and resolve issues only
for customers associated to the service or­
ganization using a criteria.
Internal or external business locations that
are served by a business location. The busi­
ness locations served can be defined with
three options:
◦ None: Exclude support for any other busi­
ness location.

Business locations served

◦ Hierarchy-based: Enables location support
agents to create and resolve cases for ser­
vice organizations through hierarchical rela­
tionships.
In other words, it is a service organization
relationship where a business location
serves every business location within its
hierarchy. For example, regional support
agents.
◦ Criteria-based: Enables location support
agents to create and resolve cases for ser­
vice organizations that meet the defined cri­
teria. For example, shared services.

4. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

274


<!-- page 275 -->
What to do next

Once the configuration is defined, you can associate your customers or business locations to a
service organization. For more information, see Associate customers or business locations to a
service organization.
Associate customers or business locations to a service organization
Associate your customers or business locations with a service organization (SO) using the
Customer Service Management (CSM) application. By establishing a relationship between your
customers or business locations and the SO, your service organization staff can create or resolve
cases for the customers and business locations raised by other business location.

Before you begin

Role required: admin, sn_customerservice_manager, sn_customerservice.svc_location_manager,
sn_customerservice.svc_location_manager_contributor, and
sn_bus_loc.location_relationship_manager

About this task

You can associate customers (accounts, consumers, and households) and business
locations (both internal and external) by using the service organization criteria
[service_organization_criteria] table. This association helps your organization to gain access to all
customers and business locations associated with a service organization.
For more information about defining service organization criteria, see Create the criteria for a
service organization.

Procedure
1. Navigate to All > Customer Service > Service Organizations > Business Locations > Internal
or External Business Locations.
2. Select the desired internal or external business locations record.
3. From the Service Organization Customer Criteria related list, select New.
4. On the form, fill in the fields.
Service Organization Customer Criteria form
Field

Service Organization Criteria

Service Organization

Active

Description

Criteria that define the customers at a service
organization.
Service organization that serves the
customers that match the criteria.
Check box to activate or deactivate the
service organization customer criteria.
By default, the active field is set to True.

Note: Only one active criterion is
enabled per table to be associated with
a service organization.

5. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

275


<!-- page 276 -->
Result

A service organization criterion is successfully defined for a business location.
Tracking the customers serviced by a business location
You can track the customers that are serviced by the business location in the Customer Service
Management (CSM) application. Your organization can associate your customers, accounts,
and households with business locations and even create or resolve cases on the behalf of
customers.
Configuration tasks for tracking the customers that are serviced by a business location
Task

Description

Create the criteria for a service organization

Create the records for the service organization
criteria that define the list of matching
customers to be associated with service
organizations.

Define the configuration type for customers or
business locations

Define the configuration type for the
customers served to provide your service
organization staff with the access needed to
help resolve cases.

Associate customers or business locations to
a service organization

Associate customers to service
organizations through the service
organization customer criteria
[service_organization_customer_criteria] table.

Create the criteria for a service organization
Define the criteria in the service organization criteria [service_organization_criteria] table so that
you can later associate your service organizations to a service or your customers to a service
organization. You do this task in the Customer Service Management (CSM) application.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Service Organizations > Administration > Service
Organization Criteria.
2. Select New.
3. On the form, fill in the fields.
Service Organization Criteria form
Field

Data type

Description

Name

String

Name of the criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

276


<!-- page 277 -->
Field

Data type

Description

Table

Table Name

Table where you must define
the criteria.
To establish customer
associations, you must select
Account, Consumer, or
Household from the dropdown list in the Table field.
Similarly, for associating
products and services,
you must choose Internal
Business Location from the
drop-down list in the Table
field.
Selecting Business Location
or Service Organization
from the drop-down list in
the Table field leads to an
error because the system
currently doesn’t support
fulfillment capabilities for
external business locations
when resolving a case.

Note: Support
can be extended
to other tables by
configuring them in the
SOCriteriaTableScript
script include.
Criteria

Conditions

Condition or query filter that
matches a list of records in
the table.

4. Select Submit.
Create relationships
Use relationships to provide internal and external users with additional access to customer data.

Before you begin

Role required: admin

About this task

With the Service Model Foundation feature, you can create relationships between the following
users:
• Between an internal user and an account, household, or consumer.
• Between two consumers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

277


<!-- page 278 -->
Relationships are based on responsibility definitions. These definitions describe a role or a
function that supports a customer. When you create a relationship, you select the users involved
in the relationship and the responsibility that one user performs on behalf of another.
The Service Model Foundation plugins provide:
• Relationships that you can create between users.
• Responsibility definitions that you can assign to a user in a relationship.
Responsibility and relationship description
Responsibility

Used in
relationship

Account
Manager

Account Team
Member

Description

Use the Account Manager responsibility to create a
relationship between an internal user and an account.
With this relationship, the internal user can:
• Create and manage cases for their accounts.
• View account information, including the related
entities for an account.
• Create and manage contacts and additional
addresses for their accounts.

Relationship
Manager

• Consumer
Team Member
• Household
Team Member

Use the Relationship Manager responsibility to create a
relationship between:
• An internal user and a consumer.
• An internal user and a household.
With this relationship, the internal user can do the
following:
• For a consumer:
◦ Create and manage cases for the consumer.
◦ View household information, including the related
entities for that consumer.
• For a household:
◦ Create and manage cases for the household.
◦ View household information, including the related
entities for that household.
◦ Create and manage household members.

Authorized
Representative

• Consumer
to Consumer
Relationship
• Household
Member
Relationship

Use the Authorized Representative responsibility
to create a relationship between two consumers,
regardless of household, or between two consumers
within the same household.
With this relationship, a consumer can:
• Create and manage cases for another consumer.
• View the information of another consumer.
• View the install base information of another consumer
and create cases for:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

278


<!-- page 279 -->
Responsibility and relationship description (continued)
Responsibility

Used in
relationship

Description

◦ Sold products
◦ Install base items

Procedure
1. Navigate to All > Customer Service > Customer Relationships.
2. Select the desired relationship.
Option

Description

Account Team Members

Create a relationship between an internal
user and an account.

Consumer Team Members

Create a relationship between an internal
user and a consumer.

Household Team Members

Create a relationship between an internal
user and a household.

Consumer Relationships

Create a relationship between two con­
sumers, regardless of household.

Household Relationships

Create a relationship between two con­
sumers within a household.

3. From the selected relationship list, click New.
4. Fill in the following fields for the selected relationship.
Relationship list form descriptions
Form

Fields

Account Team Member

◦ Account: select the account to which the internal
user is assigned.
◦ Responsibility: select the Account Manager
responsibility.
◦ User: select the internal user to fulfill the
responsibility.
◦ Type: select the type from the list of related party
configurations.
◦ Order: select the order that specifies the sequence
in which records are displayed, organized according
to business preferences.

Consumer Team Member

◦ Consumer: select the consumer to which the
internal user is assigned.
◦ Responsibility: select the Relationship Manager
responsibility.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

279


<!-- page 280 -->
Form

Fields

◦ User: select the internal user to fulfill the
responsibility.
◦ Order: select the order that specifies the sequence
in which records are displayed, organized according
to business preferences.
Household Team Member

◦ Household: select the household to which the
internal user is assigned.
◦ Responsibility: select the Relationship Manager
responsibility.
◦ User: select the internal user to fulfill the
responsibility.
◦ Order: select the order that specifies the sequence
in which records are displayed, organized according
to business preferences.

Consumer to Consumer
Relationship

◦ Consumer is: select the consumer to fulfill the
responsibility on behalf of another consumer.
◦ Responsibility: select the Authorized
Representative responsibility.
◦ of Consumer: select the consumer who is being
represented by the consumer in the Consumer is
field.

Household Member Relationship

◦ Household; select the desired household.
◦ Consumer is: select the consumer in the household
to fulfill the responsibility on behalf of another
consumer within the same household.
◦ Responsibility: select the Authorized
Representative responsibility.
◦ of Consumer: select the consumer who is being
represented by the consumer in the Consumer is
field.
◦ Type: select the type from the list of related party
configurations.
◦ Order: select the order that specifies the sequence
in which records are displayed, organized according
to business preferences.

5. Click Submit.
The relationship is added to the relationship list.
Account, Consumer, and Household Team Member relationships are also added to the
corresponding related lists on the Business Location form.
◦ Account Staff Relationships
◦ Consumer Staff Relationships
◦ Household Staff Relationships
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

280


<!-- page 281 -->
Consumer to Consumer and Household Member relationships are added to the following
related lists:
◦ Household form > Member Relationships
◦ Consumer form > Consumer Relationships
Related topics
Service Model Foundation responsibilities
Create a responsibility definition
Household-member relationship for an install base item
Your customer service managers can set up a household-member relationship among the
members of one household by using the Customer Service Management application. The
established relationship between the consumers in that household means that only the
household members can access the install base items.
The household relationship can be used to assign responsibilities between two
consumers within the same household with the Household Member Relationship table
[sn_customer_rel_household_member_relationship]. This relationship gives household
members additional access to edit and update an install base item. To learn more about how to
create a household relationship, see Create a relationship between household members.
Setting up a household-member relationship limits the access to the household members. Only
the household members can access the household install bases.
After a household-member relationship is established between two consumers, the consumer
with the authorized representative responsibility gains access to all the household install bases
only when the primary consumer is the other member in the established household-member
relationship.

Note: The authorized representative gains access to the household install bases of the
consumer that belongs to the same household.
Related topics
Create relationships
Create related party configurations
Consumer relationship for an install base item
Your customer service managers can set up a relationship between two consumers, even if the
consumers belong to different households. This relationship can be set up with the Customer
Service Management application. An authorized representative can access all the consumer
install base items that don't belong to any particular household.
A relationship can be established between two consumers by using the Consumer relationship
table [sn_customer_rel_consumer_to_consumer]. To create a relationship, see Create a
relationship between two consumers.
Authorized contacts, consumers, accounts, and members all have the Authorized Representative
responsibility and can access all the details associated to an install base item. For information on
authorized roles and responsibilities, see Create related party configurations.
After a relationship is created, all the install base items with a consumer-to-consumer
relationship are visible to the consumer on the Consumer Service Portal. This relationship
between the two consumers restricts all access to the household install base items to only those

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

281


<!-- page 282 -->
two consumers. This relationship also gives consumers additional access to edit and update the
information that is related to an install base item.
Related topics
Create related party configurations
Configure Customer Data Models for B2B2C
Configure the Customer Data Models for B2B2C application to enable business customers
to support their end consumers by creating cases and tracking the services for products and
services consumers use.
Role required: admin
The business-to-business (B2B) model supports customer accounts and the contacts within
those accounts. The business-to-consumer (B2C) model supports individual consumers.
With the business-to-business-to-consumer (B2B2C) model, you can support business
customers and third-party channel partners who, in turn, support the end consumers. This model
can be used to support:
• Employees of a business customer.
• End consumers of a business customer.
Related topics
Customer service business models
Customer service business models
Customer Service Management provides different business models that you can use to support
your business needs. Select a business model based on the type of services and support that
you provide to your customers.
Business-to-business (B2B) model
In the business-to-business (B2B) model, an account is a supported external
customer and a contact is an employee of that account. With the B2B model, you
can support accounts and contacts and also set up:
• Customer relationships
• Account teams
Business-to-consumer (B2C) model
With the business-to-consumer (B2C) model, you can support individual
consumers.
Service Model Foundation
The Service Model Foundation framework expands the business-to-business (B2B)
and business-to-consumer (B2C) models and provides the flexibility and security
needed to support:
• Business organizations with internal and external locations
• Households and consumers
• The relationships that exist between these entities
Contributor users

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

282


<!-- page 283 -->
The contributor user model provides unified customer support for internal and
external customers. With this model, you can engage middle office teams resolve
customer issues and requests.
• Enable employees to request support for themselves and external customers.
• Enable service organizations to serve one another and external customers.
• Assign tasks to middle office agents who work on specific tasks that are required
to resolve a case.
Customer Data Models for B2B2C
The Customer Data Models for B2B2C supports complex business models with multi-level
customer relationships. This model can be used to support employees of a business customer or
end consumers of a business customer.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Overview
Organizations have complex business models with multi-level relationships. These complex
structures often exist between an organization and the end consumers. In the B2B model, while
organizations do business directly with other organizations (business customers), the users
of the service provided can be different. A user can be a direct customer (B2C), or a business
customers' customer (B2B2C), or a business customer's employee (B2B2E).
With the business-to-business-to-consumer (B2B2C) model, you can support business
customers and third-party channel partners who, in turn, support the end consumers. This model
can be used to support:
• Employees of a business customer.
• End consumers of a business customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

283


<!-- page 284 -->
The business-to-business-to-consumer (B2B2C) data model supports different
multi-level relationships between a company and the following types of customers:
• Direct customer: B2C
• Business customer: B2B
◦ Business customer's customer: B2B2C
◦ Business customer's employee: B2B2E
For details on the advantages of using the B2B2C Data Model application, see the
text that follows in the Benefits section.

Benefits
• Enable service providers to manage all interactions and cases when the end consumer needs
customer service.
• Enable service provider to have a complete view of the end consumers where they hold the
relationship as direct customers (B2C) or through a business customer (B2B2C).
• Reduce costs by enabling self-service for various relationships (B2C, B2B2C, B2B2E).
To get started with this application, see Configure Customer Data Models for B2B2C.
To use this application, see Using Customer Data Models for B2B2C.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

284


<!-- page 285 -->
Activate Customer Data Models for B2B2C
You can activate the Customer Data Models for B2B2C plugin (com.sn_csm_b2b_consumers) if
®
you have the admin role. The application includes demo data and installs related ServiceNow
Store applications and plugins if they aren’t already installed.

Before you begin

Role required: admin
You must activate the Customer Service Install Base Management (com.snc.install_base) plugin
before installing Customer Data Models for B2B2C.
The Customer Data Models for B2B2C plugin provides the following roles:
• Account consumer (sn_acct_consumer.consumer)
• Account consumer agent (sn_acct_consumer.agent)
When the plugin is activated, customer service agents inherit the account consumer agent role.
Consumers who are added as account consumers are given the account consumer role.

About this task

The following items are installed with Customer Data Models for B2B2C:
• Business rules: Required account or consumer
• UI policies
◦ Table: Case
◦ Table: Interaction
◦ Table: Sold Product
◦ Table: Install Base Items
• Reference qualifiers
◦ Table: Case
◦ Table: Interaction
◦ Table: Sold Produce
◦ Table: Install Base Items

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Customer Data Models for B2B2C plugin (com.sn_csm_b2b_consumers) using the
filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

285


<!-- page 286 -->
Configure the Account and Consumer forms for B2B2C
Enable account consumers to view the Account Consumers related list for the Case and
Workspace views.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Customer > Accounts and click an account.
2. Add the Account Consumer>Account related list to the Account form for the Case and
Workspace views.
a. Select View > Case from the Additional actions menu

.

b. Select Configure > Related Lists from the Additional actions menu

.

c. Select Account Consumer>Account in the Available column and move it to the Selected
column.
d. Click Save.
e. Select View > Workspace from the Additional actions menu

.

f. Repeat steps 2b–2d.
3. Navigate to Customer Service > Consumers and click a consumer.
4. Add the Account Consumer>Account related list to the Consumer form for the Case and
Workspace views.
a. Select View > Case from the Additional actions menu

.

b. Select Configure > Related Lists from the Additional actions menu

.

c. Select Account Consumer>Account in the Available column and move it to the Selected
column.
d. Click Save.
e. Select View > Workspace from the Additional actions menu

.

f. Repeat steps 4b–4d.
Configure the Install Base Items and Sold Products lists
Enable account consumers to view the Account, Contact, and Consumer fields for the SelfService view.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Products > Install Base Items.
2. Select View > Self-Service from the Additional Actions menu
3. Click the gear icon (

.

).

4. Select the Account, Contact, and Consumer fields in the Available column and move them to
the Selected column.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

286


<!-- page 287 -->
5. Click OK.
6. Navigate to Customer Service > Products > Sold Products.
7. Repeat steps 2–5.
Configure the Case list for B2B2C
Enable account consumers to view the Account, Contact, and Consumer fields for the Customer
Self Service view.

Before you begin

Role required: admin

Procedure
1. Navigate to Customer Service > Cases > All.
2. Select View > Customer Self Service from the Additional Actions menu
3. Click the gear icon (

.

).

4. Select the Account, Contact, and Consumer fields in the Available column and move them to
the Selected column.
5. Click OK.
Customer Service Management and the CSDM guidelines
CSM enables you to provide service and support for your external customers through
communication channels such as the web, email, chat, telephone, and social media. The goal of
this use case is to understand how CSM key entities work with the core CSDM framework.

CSM use case
CSM provides proactive customer service, decreases cost of service, and provides end-toend visibility to both customer service and service delivery groups. For more information, see
Integrating with Service Portfolio Management.
For information on setting up the data, see Configure foundation data.

Results of the CSM use case
Understand the tables within the CSDM framework that are needed to support the following CSM
functionality:
• Service-aware Install Base
• Proactive Customer Service Operations
• Real Time Service Health and Outage Tracking
• Contextual Service Catalog
The following sections include details of the activities needed for the use case.
See Applying CSDM guidelines to your product — product views
Common Service Data Model use cases.

for more information on

CSM data model
CSM uses the following key entities to resolve complex end-to-end issues.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

287


<!-- page 288 -->
• A case is the primary entity of CSM. CSM uses cases to track and resolve customer questions
or issues.
• Customer information is linked to a case using associated entities such as Accounts, Contacts,
Consumers, Household, Products, and Service Contracts. This information provides the
customer service agent the information necessary to resolve customer issues.
• An account can be a customer account, a partner account, or both.
• The contact is an employee of an account. A contact record stores information about a
contact, such as the name, phone number, and email address. A contact can also have a user
ID and can log in to the customer portal.
• A consumer is a customer in the business-to-consumer (B2C) business model.
• Household defines the consumers who constitute a household, and the relationships between
household members.
• Sold Product tracks the products or services sold to an account or consumer.
• Install Base Items represent the instance of the product that has been configured for a
customer.
• Service Contract defines the type of support that customers receive. A contract can include an
account and contact or a consumer and the specific assets that are covered. A contract can
also include multiple service entitlements and SLAs.
• Entitlement specifies the type of support that a customer receives as well as the supported
communication channels.
Customer Service Management and CSDM tables
Customer Service Management manages and uses CSDM tables. Several ServiceNow products
benefit from and add value to Customer Service Management.

CSM tables managed by CSDM
CSM tables managed by CSDM

CSM references the following CSDM tables:
1. Sold Product table [sn_install_base_sold_product in CSM
Represents the product purchased by an Account or Consumer, and references the Product
Model table [cmdb_model] or Service Model table [cmdb_service_product_model] for a
Customer (Account or Consumer).
2. Install Base Item table [sn_install_base_item] in CSM
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

288


<!-- page 289 -->
Represents the products installed or in use by an account or consumer. Install Base Items
are CIs consumed by the customer and generally reference the Application Services table
[cmdb_ci_service_discovered] for SaaS products.
Multiple sold products can be used on a given Install Base Item by using the Installed Products
table [sn_install_base_m2m_installed_product].
3. A Service Model references the Service Offerings table [service_offering]. Multiple Service
Offerings can be associated with a single Service Model.
4. After the product is sold to a customer, the Sold Product table references the Service Offering
table [service_offering]. This reference helps to identify the customers subscribed to an
offering.
5. Customers can request services related to the products they have purchased by linking the
Catalog Items table [sc_cat_item] to the Product Model or Service Model by using the Productto-Catalog Items Relationships table [sn_prod_cat_rel_m2m_product_catalog_item].
6. Account table [customer_account] in CSM
Extends the Company table. The Account table can be a customer account, a partner account,
or both.
7. Contact table [customer_contact] in CSM
Extends the User table. A user is an employee of an account. A contact record stores
information about a contact, such as the name, phone number, and email address. A contact
can also have a user ID and can log in to the customer portal.
8. Consumer table [csm_consumer] in CSM
A consumer is a customer in the business-to-consumer (B2C) business model.

CSDM tables used by CSM
CSDM tables used by CSM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

289


<!-- page 290 -->
1. Company [core_company], Business Unit [business_unit], Department [cmn_department],
Location [cmn_location], Groups [sys_user_group], Users [sys_user]
2. Product Model tables [cmdb_model], and [cmdb_service_product_model]
3. Contract table [ast_contract]
4. Mapped service instance table (formerly application service) [cmdb_ci_service_discovered]
5. Configuration Item table [cmdb_ci_*]
6. Business Service table [cmdb_ci_service_business]
7. Business Service Offering table [service_offering]
8. Request Catalog table [sc_cat_item]

Products that add value to CSM
When you use CSM with other ServiceNow products, you increase the value you get from CSM.
These other ServiceNow products include:
IT Service Management (ITSM)
Services have the context of the business, applications, information, and
technologies layered beneath them.
Event Management
Enables organizations to identify service health-related issues on a single
management console. Event Management provides alert aggregation and root
cause analysis (RCA) for discovered services, application services, and automated
alert groups.
Service Portfolio Management (Service Portfolio Management)
Enables organizations to document and manage services using a standardized,
structured format.

Products that benefit from CSM
IT Service Management (ITSM)
Enables organizations to link incidents, problems, changes, and requests to cases,
and have the context of the customer (consumer or account) reporting the issue.
IT Operations Management (ITOM)
Enables organizations to identify the Install Base Items and the customers affected
by service issues. Helps organizations to provide proactive customer service.
Service Portfolio Management (Service Portfolio Management)
Enables customers that have subscribed to the Service Offering to see who owns
the service.
Customer Service Management examples
In this example, the CSDM helps the fictitious ACME technology company use CSM to manage
network monitoring services for customers.

Example scenario: Key personas and how they benefit
ACME offers a network monitoring service to its enterprise customers who can purchase either
the Platinum, Gold, or Silver offering. A customer, Boxeo, has purchased the network monitoring
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

290


<!-- page 291 -->
Platinum offering (Sold Product) and is using it in development and production environments
(Install Base Item).
CSM data model example

The key personas (customer service agents, network operations center (NOC) engineers, service
owners, and customers) can complete the following tasks:
Customer service agents can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

291


<!-- page 292 -->
• View the products and services that the customer has purchased (Sold Product) and installed
(Install Base).

• View the service offering associated with the sold product. The sold product references the
service offering.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

292


<!-- page 293 -->
• View the health status of Install Base Items

NOC engineers can: View customers affected by a service issue and inform customer service.
Specifically, they can perform the following operations:
• View the affected Install Base Items and add it to or remove it from an Account. The Install
Base item references the application service (CI). The CI it depends on should be one of the
CIs affected. The CI should also be referenced in the Alert to show that Install Base Item (and
therefore the Account or Consumer) as affected.
• Create a proactive case from an alert and inform the customer service team of the service
issue or outage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

293


<!-- page 294 -->
Service owners can: View the customers that are subscribed to a service

offering.
Customers can:
• View the install base items and details.
• View outages and service issues.

• View products they have purchased.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

294


<!-- page 295 -->
• Request services related to the products they’ve purchased.

Example CSM and CSDM use cases
Service with multiple packages
ACME offers a Credit Check Service to its enterprise customers. They can purchase
the Platinum, Gold, or Silver offering.

Service with optional components
ACME offers a Billing Service to its enterprise customers. They can purchase the
bundle or one or more of the component offerings (for example, invoices, payments,
or discounts).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

295


<!-- page 296 -->
Service with a physical product
ACME offers a Digital Printing Solution. Customers can purchase either the bundle
or the printer along with one more service offering (for example, Scan and Email
Monitoring).

Service sold to multiple customers
ACME sells a Pharmacy Manager Service to two customers: Boxeo and Avid Inc.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

296


<!-- page 297 -->
Service used by multiple customers
ACME deploys both Boxeo and Avid on the same production instance (multi-tenant
model).

Service used on-premises
ACME offers an Order Management service. This purchase is tracked in the
ServiceNow AI Platform but is used on-premises.

Additional information
For more information about the relevant CSM features and tasks, see the following topics:
Configure form views for Service Portfolio Management integration
View product information from the Customer Service Portal
Create a proactive case from an alert
Create a case for install base from the Customer Service homepage
Proactive Customer Service Operations
Service health status for install base
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

297


<!-- page 298 -->
Configure install base
Outage tracking for install base
View install base information from the Customer Service Portal
View install base information in Agent Workspace
View product information from the Customer Service Portal
View sold product information in Agent Workspace
Customer Service Management considerations
Consider these points while implementing the CSDM framework.

Considerations
• What is a Service-aware Install Base?
A Service-aware Install Base enables companies to track the digital products and services in
use. A Service-aware Install Base also tracks the relationships of the products and services to
dependent services and CIs that affect their health.
• What are Proactive Customer Service Operations?
Proactive Customer Service Operations bring CSM and Event Management together to enable
companies to proactively trigger case workflows and notify the affected customers.
• Do I must purchase CSM Professional package to use the Service-aware Install Base?
No. The Service-aware Install Base is included in the CSM base system.
• Can multiple sold products reference the same service offering?
Yes. Multiple sold products (that is, Service Models) purchased by different companies can
reference the same service offering. For example, multiple customers can purchase the same
SaaS offering with the same service commitments.
• Can multiple Install Base Items reference the same application service?
Yes. Multiple Install Base Items (either for the same account or for different accounts) can
reference the same application service. For example, a multi-tenant SaaS offering where
multiple customers (each with their own Install Base Item) are used on the same production
instance (application service).
• When do I create an incident rather than a proactive case from an alert?
Typically, some companies create an incident so that their NOC engineers can resolving the
issue. After they determine that the issue impacts multiple customers, they also proactively
create a major case and related child cases (one for each impacted customer) to notify the
affected customers. Thus, the alert, incident, and case are all linked.
Updates made by the resolving teams to the incident status or additional comments are
reflected in the case. The customer service teams use these updates to keep customers
informed.
To meet the customer notification time requirements of the SLAs, companies may also
automate creating incidents and cases from the alert. In addition, companies can also create a
proactive case from the alert while the issue is being resolved.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

298


