# Australia Sales Customer Relationship Management — Self-service using Business Portal / Lead-to-cash foundation apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 268–417 of 1645 | Part 2 of 5

Sections: Self-service using Business Portal (p118); Configure (p119); Lead-to-cash foundation apps (p120); Configure, price, quote apps (p199)

---

<!-- page 268 -->
Pricing Management extension points
Extension point

Description

sn_csm_pricing.DefaultCostBookExtensionPoint
Customize the logic for determining the
default cost book used by the calling
application, such as Quote Management. This
extension point changes the default cost book
logic for both the header and line of the calling
application.

sn_csm_pricing.DefaultPriceListExtensionPoint
Customize the default price list logic used by
the calling Sales CRM applications such as
Quote Management or Order Management.
This extension point changes the default logic
for both the header and line of the calling
application.

Note: If you want to create additional
context variables, use the Price List
defaulting matrix to manage the price
list default at the header level. Use this
extension point only for use cases that
can’t use the Price List defaulting matrix.
In this case, the request contains values
for all the context variables, in addition to
the default context variables.

sn_csm_pricing.ListPriceExtensionPoint

Customize the logic for determining a base
list price. Enables you to extend the pricing
engine logic and not rely on a price list and
price list line to fetch the base list price.

sn_csm_pricing.AttributeAdjustmentExtensionPoint
Customize the logic that determines the
attribute adjustments for a product offering.
You can extend the pricing engine logic
without using the Attribute Adjustment table to
fetch the adjustment values.

sn_csm_pricing.PricingAdjustmentsExtensionPoint
Customize the logic that determines price
adjustments for a product offering. Enables
administrators (partner implementers)
to extend the pricing engine logic by not
relying on the Standard and Component
Configuration Rule matrix to fetch the
adjustment values.
sn_csm_pricing.RampRenewalUpliftCalculationExtensionPoint
Customize the logic for calculating renewal
uplift pricing. Your inputs can include segment
data, unit price, and term for each ramp
segment.
External ID support in Sales CRM Pricing API
The Sales CRM Pricing API supports external IDs in pricing requests. You can use your own
custom identifiers or codes for selected reference fields instead of a ServiceNow sys_id.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

268


<!-- page 269 -->
For example, a pricing call can originate from other CRM or ERP systems that may have different
identifiers for certain objects. You can map these unique identifiers to ServiceNow reference
fields using an external ID, code, or other custom field. A pricing call can then be made using
these unique identifiers available on the external system.
You can use external codes for the following reference fields (objects), including but not limited
to:
• Product offering
• Top-level product offering
• Unit of measure
• Price list
• Cost book
• Characteristics and characteristic options
• Pricing adjustment type
• Account

Note: External IDs apply to REST API pricing requests and do not affect UIʼbased flows.
Pricing execution can use internal system IDs, external IDs, or a combination of both IDs in
pricing requests. For more information on the pricing API, see Sales CRM Pricing API .

How external IDs work in pricing requests
External IDs map to reference fields in ServiceNow reference tables. As an admin, before
submitting a pricing request, create the context variables that define the reference fields for
external IDs or codes that map to a column in a specified reference table. For more information,
see Configure context variables for external IDs.
Processing of a pricing request with external IDs involves the following phases:
Request intake
The caller sends a Pricing REST API request that can include:
• External IDs or codes
• sys_ids
• A combination of both external IDs and sys_ids
In your request, you set a request flag ("use_external_code:true") that
enables external ID support.
Resolution
For each configured reference field, the system attempts to resolve the external
value to an internal sys_id.
• Resolution is driven by context variable configuration.
• If resolution fails and no sys_id is provided, the request fails.
Account resolution using external identifiers
Accounts are resolved using context variables rather than request payload fields.
• External account identifiers are resolved before pricing execution.
• Resolved account sys_ids are used internally for pricing execution.
• Original external identifiers are retained for response construction.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

269


<!-- page 270 -->
Pricing execution
All downstream pricing logic runs only on resolved sys_ids. Pricing logic is unaware
of whether the original value was an external code or a sys_id.
Response construction
The response reflects the identifiers provided in the request (external codes or
sys_ids). Resolved sys_ids are not exposed to the caller.
Error handling
The system validates all reference identifiers during request processing. Common
errors include the following scenarios:
• External identifier does not exist in the reference table.
• External code usage is enabled but no context variable mapping exists for an
enabled field.
• Neither a sys_id nor external code is provided.
• Identifier value is not valid.
Errors are reported at the line level and identify the failed line item. Error messages
may vary depending on the configuration and validation context.
If errors occur, verify the following items:
• Context variable mappings
• External identifier values
• Request flag usage

Context variable configuration and mapping
As an admin, before submitting a REST API pricing request that uses external IDs, create the
context variables that map to columns in selected ServiceNow reference tables. For more
information, see Configure context variables for external IDs.
Configure context variables for external IDs
Set up a context variable for each external ID to be used in pricing requests and map the variable
to a reference field in a ServiceNow reference table.

Before you begin

Role required: admin

About this task

The Sales CRM Pricing API supports external IDs in pricing requests. For each external ID, define
a context variable that maps to the following:
• Source reference table
• Reference field name
For information on the pricing API, see Sales CRM Pricing API

.

Note: Only a single reference field for an external ID is supported as a key to resolve an
external ID with a sys_id. To get an accurate and valid response, the external ID or code
sent in a reference field must map to a unique record in the source reference table.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

270


<!-- page 271 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Set the application scope to Context Rule Management.
Use the scope selection menu icon
3. Select the List icon

in the header bar to select the scope.

.

4. Navigate to Context Rule Management > Context Variables.
5. Do one of the following:
◦ If creating a context variable, select New.
◦ If updating a context variable, select the variable to be updated.
6. Define or update the context variable for the external ID:
a. In the Type field, select Reference.
b. In the Label field, enter the name of the context variable to be displayed in the user
interface.
The Column name and Code fields are automatically generated based on the Label name
entered. The default value for the Type of mapping field is set to Field mapping.

Note: You can enter your own Code value to replace the system-generated code. If

the context variable is used in a published pricing or product eligibility matrix, the Code
value for the context variable can't be changed.
c. In the Context type field, select the context that indicates where the variable is retrieved
from, for example the Transaction Header or Transaction Line for an opportunity or quote.
d. In the Applicable to field, select Pricing.
e. In the Reference field in the Reference Specification section, select the source reference
table for the variable.
f. In the Pricing api key field, select the reference field to be used from the source reference
table specified in Step e.
7. Select Save.
The external ID defined by the context variable can be used in pricing requests.
Exporting and importing pricing entities
As a pricing admin, you can both export and import pricing entities between ServiceNow
instances. For example, you can promote pricing entities such as price lists from a nonproduction instance to a target production instance. Each process involves a separate set of
steps.

Before exporting and importing pricing entities
Before you export your pricing entities to a target instance, note the following prerequisites:
Import product-related entities to your target instance
Verify that your product catalog admin has first imported the product catalog base
entities, product offering catalog, and product offerings to your target instance. Your
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

271


<!-- page 272 -->
pricing entities are associated with product offerings and catalogs, so the offering
and catalog information must exist before you import pricing entities. For more
information on the product entities that must be imported to your target instance,
see Exporting and importing product catalog entities.
Export the update set for decision table changes to your target instance before exporting
the associated pricing matrix
If you have a new version of a pricing matrix that has decision table changes, such
as a reference to a new product offering, ask your admin to export the systemgenerated update set that includes the decision table changes to your target
instance. Next, you export the new pricing matrix, then import the pricing matrix to
your target instance. For more information, see Export pricing entities and Import
pricing entities.

Export and import process for pricing entities
Follow these steps to export and import pricing entities.
Export and import steps for pricing entities
Step

Description

Export pricing entities

Export pricing entities from one instance to
another. The entities are exported as JSON
and are downloaded to your local download
directory.

View export job status

Check the state of the export job.

Import pricing entities

Import pricing entities exported as JSON files
to another instance.

View import job status

Check the state of the import job.

Export pricing entities
Export pricing entities as a JSON file and save the file to your local download directory so that it
can be imported to another ServiceNow instance.

Before you begin

Before you export a new version of a pricing matrix that has an updated decision table, ask your
admin to export the system-generated update set that includes the updated decision table, to
the target instance.
Role required: sn_csm_pricing_pricelist_administrator

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Export > Export Entities.
The Export Entities list shows the previous export jobs.
3. Start an export job by selecting Export Hierarchy.
The Export Entities form opens in the Export-UI tab.
4. In Entity Type, select the pricing entity to be exported from your source instance.
The pricing entities include: Rule Matrix, Price List, Price List Line, Attribute Adjustment, Cost
Book, and Cost Book Line.
5. Select the items that you want to export and then select Export.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

272


<!-- page 273 -->
Note:
◦ Entities such as pricing matrices may have specific versions. Be sure to select a
specific version of the entity to be exported and import that version to the target
instance.
◦ If you have new versions of pricing matrices with updated decision tables that
reference new product offerings, ask your admin to export the system-generated
update set that includes the updated decision tables.
6. Give the export job a file name and description and select Submit.
The export process begins and a message displays the catalog export ID.
7. Find and view the exported JSON file by refreshing the Export Entities list and selecting the
export job.
The exported file appears in the Attachments pane.
8. Select the attachment to download the exported file.
The file is downloaded as a JSON file and saved to your local download directory.

What to do next

Import pricing entities.
Import pricing entities
Import pricing entities to a target instance by using the ServiceNow Platform import function.

Before you begin

Before you start, check your target instance and verify that certain required entities have been
imported. For example, the product offerings and product offering catalogs associated with
your pricing entities must have been previously imported to your target instance. Similarly, if
you're importing price list lines or cost book lines, the price list or cost book for those lines must
have been previously imported to your target instance. And if you're importing a new price list
matrix, your admin must have imported the associated decision table to your target instance in a
system-generated update set.
Role required: sn_csm_pricing_pricelist_administrator

Procedure
1. Go to the target instance where you want to import the pricing data.
2. Start the import process.
◦ To import pricing entities, navigate to All > Pricing > Export/Import > Import.
◦ To import context rules, navigate to All > Context Rule Management > Import.
The record for the import data source opens.
3. Attach the JSON file by selecting the Attachments
The Import Data Source pop-up opens.

icon in the header bar.

4. Select Choose file and select the JSON file you want to import.
5. When the file is uploaded, close the Attachments pop-up.
6. Under Related Links, select Load All Records.
The data from the imported file loads, and a Progress bar opens showing the
imported job. The imported data is loaded into the import set temporary table
sn_csm_pricing_import_data_source or sn_csm_ctxrul_mgt_import_data_source if you're
importing context rules.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

273


<!-- page 274 -->
Note: During the import of a pricing matrix on the target instance, an import post script
associates the reference entities in the decision table that was imported in an update set
to the appropriate pricing matrix.
7. In the Next steps section, select Run Robust Transform, then select Transform.
The progress bar shows the transform status. When the transform is complete, the imported
data is loaded into the appropriate pricing tables.
8. In the Next steps section, select the import set link to view the resulting import set.
The imported data is available in the appropriate tables.
9. In the Import Set record, open the Import Log tab to check for any errors and verify that the
transform was completed successfully.

What to do next

Certain imported pricing entities, such as price lists or cost books, are in the draft state in the
target instance. To make the imported price list or cost book active in the instance, publish them.

Configuring Quote Management - Basic
Learn how to set up Quote Management so that your sales agents can create and manage
customer quotes.
Admins and Quote Management administrators complete the following configuration tasks to set
up Quote Management.
Configuration tasks for Quote Management
Task

Description

Role

ʼunique_361

Install Quote Management
®
from the ServiceNow Store
Store. It provides these key
features for your agents:

Admin

• Build quotes with products
and pricing, then present
them to customers.
• Use the product
configurator to select simple
and configurable product
offerings.
• Add pricing adjustments to
products.
• Convert quotes to product
orders once customers
have approved.

Configuring product offerings
and catalogs

Set the roles for Quote
Management users and your
product catalog and pricing
administrators.

Admin

Create the product offerings
and catalogs, unless they've
been previously defined.

Product catalog admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

274


<!-- page 275 -->
Configuration tasks for Quote Management (continued)
Task

Description

Role

Configuring product pricing

Define the price lists, pricing
strategies, and other pricing
features that you want to
use, unless they've been
previously defined.

Pricing admin

• Set the price lists and
pricing strategies that
control how pricing is
applied to quotes.
• If you're using cost books,
create the cost books that
define the unit costs for
product offerings.
Activate cost books and cost
margins

Use the

Quote Management admin

sn_quote_mgmt_core.enable_cost_margin_calculation
system property to activate
the cost book and cost
margin features in Quote
Management. These features
enable sales agents to view
product unit costs and cost
margins when creating sales
quotes.

Activate location-based
transactions

Use the

Admin

sn_sales_common.enable_location_based_transactions
system property to activate
location-based transactions in
Quote Management.

Configure quote PDF
documents

Set up PDF template, signers,
and Docusign.

sales_operations_specialists

• Create PDF templates
• Configure DocuSign
• Set up PDF document
signers

What to do next
After completing the configuration tasks, you can start using Quote Management to build and
manage customer quotes. See Using Quote Management.
Optionally, configure Configuring Advanced Approval Management to build automated approval
workflows for customer quotes and other Sales Customer Relationship Management entities.
Related topics
Quote Experience in ServiceNow CPQ
Using Quote Management
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

275


<!-- page 276 -->
Approving or rejecting quotes
Using product offering recommendations in quotes
Sync quote and opportunity
Integrate with Contract Management Pro
With the integration of Quote Management and Contract Management Pro, sales agents can
initiate contract requests while finalizing a deal and formalizing agreements between you and
your customers.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Plugins.
2. Search for Contract Management for Sales CRM (Quote Management with Contract
Management Pro) plugin (com.sn_som_clm).

Note: To activate this plugin, there’s a dependency on the Contracts core plugin
(com.sn_cm_core). Verify that it’s installed to use the contract creation workflow from a
quote.
3. Select Activate.
4. Complete the initial configuration steps to set up this integration.
For more information on setting up Contract Management Pro, see Configuring Contract
Management Pro .
Related topics
Configuring Contract Management Pro
Initiate a contract request
Run fix scripts to update Contract Management Pro
Manually run fix scripts after you have installed the demo data.

Before you begin

Role required: admin

About this task

If the demo data was installed, the Request Type field in the demo data will remain blank.
Consequently, the field may not display the correct value to distinguish between new contracts
and amendments. To fix this, run the Populate Request Type script in CMR to ensure the request
type is set correctly.

Procedure
1. Navigate to All > Fix Script.
2. Search for Populate Request type in Contract document revision (CMR) and open the record.
3. Click Run Fix Script at the top of record, in the modal that opened up select Proceed/Proceed
in background to run the script.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

276


<!-- page 277 -->
Configure quote PDF documents
As a sales operation specialist, you can generate professional-looking PDF templates that
present quotes in a standardized format that reflects company branding and logos. You can also
set up Docusign to enable signers to sign quotes electronically and send them through email.

Create quote PDF document templates
Add customized templates to quote PDF documents using the ServiceNow document template
function.
A standard template is included with the base installation of Quote Management.
See Set up PDF document templates to learn more about PDF document templates and how they
work.

Link quote PDF documents to Docusign
Sales operation specialists can link quote PDF documents to Docusign so that signers can sign
PDF documents electronically.
See Configure DocuSign for PDF documents for more information about how to set up Docusign.

Set up quote PDF document signers
Sales operation specialist can set up PDF document signers in Quote Management. Signers can
be emailed PDF documents for review and electronic signatures. There are two types of signers,
external and internal signers.
• Contacts listed in an account linked to the quote can be external signers.
• Internal signers are all the users that have either sales_agent or sales_ops_specialist roles in
Quote Management.
See Set up PDF document signers for more information.
Set up PDF document signers
Sales operations specialists can set up signers in Quote Management so that PDF quotes can be
sent to either internal and external signers for review and signatures.

Before you begin

Role required: sales_operations_specialists

About this task

Contacts listed in the account for a quote can be external signers. The email listed with the
contact is used to send the PDF.
Internal signers are all the users that have either sales_agent or sales_ops_specialist roles.
To assign roles for internal users, see .

Procedure
1. Navigate to All > Customer Service > Accounts and select New to create an account or select
an existing account to add contacts.
2. For a new account, fill in the account information and select Save.
3. Add a contact to an existing account by selecting the account and opening the Contact tab.
4. Select New.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

277


<!-- page 278 -->
5. Fill in the information for the new contact.
6. Select Save.
When the quote is created and the account selected, the contacts in the account are available
as signers for the PDF documents. The email associated with the contact is used to send the
PDF document.
Set up PDF document templates
Sales operation specialists can set up templates for PDF documents in Quote Management.

Before you begin

Role required: sales_operation_specialist

Procedure
1. Navigate to All > Quote > Quote templates.
2. Select New.
3. Choose HTML template.
4. Use the following links to build customer PDF templates:
Links to create PDF templates
Link

Description

Document Templates

Explanation of document templates and how
the work in ServiceNow.

Configuring Document Templates

Steps to configure documents templates.

Reference for Document Templates

Additional information about document
templates.

Using Document Templates

How to use document templates.

Configure DocuSign for PDF documents
Quote operations specialists can configure PDF documents to work with Docusign to enable
customers to sign PDF documents electronically.
Role required: quote_operations_specialist

Link quote PDF documents to Docusign
Sales operation specialists can link quote PDF documents to Docusign so that signers can sign
documents electronically. The following links explain how to link PDF documents to Docusign:
• Docusign eSignature Spoke
• Set up Docusign eSignature spoke using authorization code grant
• Set up Docusign eSignature spoke using JWT grant
• Create child aliases for additional Docusign accounts
• Set up a bi-directional webhook for the Docusign eSignature spoke
• Synchronize Docusign with ServiceNow
• Activate catalog items
• Change the Docusign API version
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

278


<!-- page 279 -->
• How to automate signing requests using templates
• How to automate signing requests using templates
• How to separate Docusign account data

Configuring Quote Experience
Configuration tasks and sequence for setting up the ServiceNow CPQ Quote Experience with
Quote Experience for your organization.
Configure the Quote Experience to control the quote layout and behavior for your users — the
fields they see, how pricing is calculated, which approvals are required, and what actions are
available at each stage of the quote lifecycle.
Complete the required configuration tasks in order before you enable the quoting experience for
your users. Complete optional tasks based on your implementation requirements.

Quote Experience
Using Quote Experience, administrators can:
• Access and configure stages, associated fields, related rules, rule groups, events, layouts,
views, and personas.
• Define the sales workflow stages your organization needs and define the conditions that must
be true before a transaction can enter each stage.
• Identify the transaction-level (header) fields and transaction line-level fields to capture on
each quote.

Configuration overview
Complete the following tasks to configure the quoting experience.
• Quote transaction stages — Stages structure the quoting process into discrete phases. Each
stage can have entry criteria, rule group associations, and stage-specific layout behavior
including idle timeout and behavior on open.
• Quote transaction fields — Fields store data on a quote at the transaction (header) level and
the transaction line level. Quote Experience supports five field types: Text, Number, Boolean,
Picklist, and Date/Time.
• Quote transaction rules and rule groupings — Rules evaluate conditions and perform actions
such as hiding fields, displaying messages, filtering picklist values, and setting or clearing field
values. Rule groupings bundle rules together for assignment to stages and events.
• Quote transaction events — Events are buttons or API triggers that run rule groups, call
integrations, and drive stage transitions. Quote Experience provides system events for
common operations and supports custom events for business-specific actions.
• Quote transaction layouts — Layouts define the quote user interface, controlling which fields,
events, and UI effects appear and how the quote is organized into tiers, columnsets, and a line
item grid.
• Quote transaction views — Views control field and event access permissions for each persona
at each stage. A view defines which fields are editable, read-only, or hidden, and which events
are active or unavailable.
• Quote transaction personas — Personas represent distinct user types in the quoting
experience. Each persona is assigned to a view that defines its permissions at each stage of
the quote lifecycle.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

279


<!-- page 280 -->
• Quote transaction integrations — Integrations connect Quote Experience to external data
sources, enabling bidirectional data exchange between quotes and third-party systems using
HTTP methods, connections, and transformation templates.
• Advanced product filtering — Advanced product filtering dynamically controls which products
appear in the quote catalog based on admin-defined rules and transaction context. Requires
the enableCatalogFilter tenant setting.
• Quote Experience runtime API calls — Runtime APIs support headless quoting operations
including initializing sessions, creating transactions, running events, and adding products via
upsert.
• Quote Experience metrics API — The metrics API retrieves usage analytics including views by
user, session time, and time spent in each stage, with configurable date ranges defaulting to
the last 30 days.
Quote transaction stages
Stages represent phases in the quoting process. Each stage can have entry criteria, rule group
associations, and stage-specific layout behavior in ServiceNow CPQ.
Stages structure the quoting process into discrete phases. A typical implementation uses stages
such as Draft, Pending Approval, Approved, Contracted, and Ordered, but administrators can
add or remove stages to match their organization's selling process. A transaction is in one stage
at a time.

Stage ordering
Administrators can change the order in which stages are evaluated. In the stages list, select
a stage and select the chevron icon to access reordering controls. Use the < and > buttons to
move the stage in the sequence. The + button creates a new stage at the selected position in the
sequence.

Transitions between stages
Transitions represent structured movement from one stage to the next. A transaction cannot
automatically transition between stages without an event — such as a Submit for Approval or
Revise button — that explicitly triggers the transition. Stage transitions can also be defined for
when a new transaction is created or edited.

Entry criteria
Entry criteria are conditions that must be met before a transaction can advance to a stage.
When an event transition is set to forward, ServiceNow CPQ evaluates the entry criteria of each
succeeding stage until a stage's criteria are met. If no stage meets the criteria, no transition
occurs. When an event transition is set to backward, the transaction moves to the stage defined
by the administrator without checking entry criteria. The first stage in a process has no entry
criteria.
For example, a transaction might transition to the pending approval stage, or, if approval is not
required, it might bypass pending approval and move directly to the approved stage. This is
configured using entry criteria on the pending approval stage.

Stages and rule groupings
Rule groupings are associated with stages. They execute when the stage is transitioned to
and when users update fields or run events while in the stage. For more information about rule
groupings, see Quote transaction rules and rule groupings.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

280


<!-- page 281 -->
Stages and views
Stages enable administrators to assign distinct permissions to determine how personas view
and interact with field data at each stage. For more information about defining views for stages,
see Quote transaction views.

Behavior on open transaction
The Behavior on Open Transaction stage setting determines which rule groupings and
integrations run when a user opens a transaction in that stage. Administrators can configure the
Refresh Product Data toggle to refresh product data when the transaction opens, and can add
one or more rule groupings or integrations to run on open.

Behavior on idle timeout
The Behavior on Idle Timeout stage setting defines an event that triggers after a user remains
inactive for a specified period. Administrators can define one such event per stage. If the event
fails on its first execution, it is not retried or requeued. Supported action types are rule groups
and integrations.
Note the following guidelines when configuring idle timeout behavior:
• Set the idle time carefully to balance user convenience with session management and system
efficiency.
• Test all configured rule groups and integrations in a nonproduction environment before
enabling them in live stages.

Deleting a stage
Deleting a stage is restricted because deleting a stage that is in use by transactions can cause
data issues. Contact ServiceNow Support
if a stage deletion is required.
Quote transaction fields
ServiceNow Quote Experience supports five field types at two levels —transaction (header) and
transaction line —enabling administrators to capture all required quote data in ServiceNow CPQ.
Fields in ServiceNow Quote Experience store data on a quote. Administrators create fields at
the transaction level for deal-level data and at the transaction line level for product and pricing
data. The level at which a field is created affects its availability in rules, which also operate at
transaction or transaction line level.

Field levels
Field levels
Field level

Description

Transaction Transaction-level fields sit outside the quote lines grid. They capture information
level
about the deal as a whole, such as account, addresses, list price total, total
(header)
discount, and net total.
Transaction Transaction line-level fields sit in the quote lines grid. They can appear as column
line level
fields or as fields in the Line Details UI Effect.

Field types
ServiceNow Quote Experience supports the following field types at both levels.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

281


<!-- page 282 -->
Every field, regardless of type, includes these standard attributes and settings:
• Field name — Display label that appears in the user interface
• Variable name — Unique system identifier for the field, locked after creation (select a
descriptive name that does not require changes later)
• Default value — Value that automatically populates when a new transaction is created
• Required — Toggle that enforces validation so users must provide a value before proceeding
• Access Control — Settings that determine user permissions:
◦ Editable — Users can view and modify the field
◦ Read-only — Users can view but cannot modify the field
◦ No Access — Field is hidden from users
For details on configuring access control rules for different user groups, see ServiceNow Quote
Experience: Transaction Access Control.
Field types
Field
type

Text

Description

Stores free-form text input, such as names, descriptions, or open-ended responses.
Text fields support configurable length constraints—administrators can set a minimum
character length to ensure users enter sufficient detail and a maximum character
length to prevent long entries.

Number Stores numeric values for quantities, amounts, or calculations.
Number fields support three distinct types: Integer (whole numbers only), Decimal
(numbers with decimal places), and Currency (numbers formatted as currency).
Supports configurable minimum and maximum value constraints to validate that
users enter data within acceptable ranges.
Boolean Stores a true or false value, typically displayed as a check box or toggle switch.
You can customize the labels for each state—for example, "Yes/No," "Enabled/
Disabled," or "Active/Inactive"—to match your business terminology. You can set
a default checked state so the field comes pre-checked or unchecked when a
transaction is created.
Picklist

Stores a single selected value or multiple selected values from a defined list of
options, depending on the configuration mode selected.
When defining picklist options, you control the order in which they appear, assign
a label (the user-facing name) and value (the system identifier), designate a default
selection, provide an optional description, and include an optional image URL to
visually represent the option.
Picklist fields support a comparison type setting—select Text to compare options
as text strings or Number to compare them numerically. This setting affects how the
system processes and sorts picklist selections.

Date/
Time

Stores both date and time values in UTC format (YYYY-MM-DDTHH:MM:SSZ) to
ensure consistency across time zones.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

282


<!-- page 283 -->
Field types (continued)
Field
type

Description

You can set a default date/time value that pre-fills when a transaction is created. The
Not Before and Not After constraints restrict the date/time range users can select,
enforcing business rules such as "quotes cannot be created for dates in the past" or
"expiration dates must be within 30 days."
For detailed guidance on date and time field configuration and best practices, see
Date and time field fields.

System-provided fields
ServiceNow Quote Experience provides a set of system-provided fields at both levels that are
commonly used in transaction processing.
Transaction-level system fields cover the following categories: pricing information, opportunity
information, transaction information, and account information. For a complete list, see
Transaction-level system fields.
Transaction line-level system fields cover the following categories: pricing information,
transaction line information, configuration information, product information, and order
information. For a complete list, see Transaction line-level system fields.

Custom fields
Custom fields can be added to a blueprint through the ServiceNow Quote Experience
administration interface. Fields created through the interface are automatically associated with
the blueprint.
Related topics
Create a transaction field
Transaction-level system fields
Transaction line-level system fields
Date and time field fields
Create a transaction field
Create a custom field in ServiceNow Quote Experience to capture additional data at the
transaction (header) level or the transaction line level in ServiceNow CPQ.

Before you begin

Role required: admin

About this task

Fields created through the ServiceNow Quote Experience administration interface are
automatically associated with the blueprint. The variable name is set at creation and cannot be
changed afterward — to change a variable name, delete the field and re-add it. The field editor
that opens after the initial save varies by field type — the following steps cover all five types.

Procedure

Create the field
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

283


<!-- page 284 -->
1. Navigate to All > CPQ Administration > Transaction > Associated Fields.
2. Select Create Field.
The New Field dialog opens.
3. In the Name field, enter the name of the new field.
As you type, the name is mirrored in the Variable Name field in camel case with spaces
and special characters removed. For example, entering Customer Billing Address
produces the variable name customerBillingAddress. To enter a custom variable
name, select the pencil icon to the right of the Variable Name field.
4. In the Level field, select whether the field is a transaction-level (header) field or a transaction
line-level field.
5. Select the field type: Text, Number, Boolean, Picklist, or Date/Time.
6. Select Save.
The field editor opens. The available options depend on the field type selected. Continue with
the section for your field type.
Configure common options
7. Optional: If the name requires updating, in the field editor, update the Name.
(Optional) The variable name shown in the field editor is locked and cannot be edited here. To
change it, delete the field and re-add it.
8. Optional: In the Description field, enter a description of the field.
9. Optional: If the field must be completed on the layout before a quote can be submitted,
enable the Required toggle.
10. In the Default Access field, set the field's access in the default view.
Option

Behavior

Editable

The field is read and write accessible on the
quote layout.

No Access

The field is hidden from the quote layout and
is not accessible through APIs.

Read Only

The field is read only on the layout.

Configure text field options
11. Optional: In the Default Value field, enter the text that the field displays by default when a
quote is created.
12. Optional: In the Minimum Field Length field, enter the minimum number of characters that a
user must enter in this field.
13. Optional: In the Maximum Field Length field, enter the maximum number of characters that a
user can enter in this field.
Configure number field options
14. Optional: Select the form the number field takes.
◦ Select Number for a plain numeric value.
◦ Select Currency for a monetary value. The unit label defaults to the currency symbol
configured for your ServiceNow CPQ site.
◦ Select Percentage for a percentage value. The unit label defaults to the percent symbol (%).
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

284


<!-- page 285 -->
15. Optional: In the Unit Label field, enter a custom label to display alongside the number value.
(Optional) For Currency and Percentage forms, the unit label is set automatically. Override it
here only if a custom label is needed.
16. Optional: In the Minimum Value field, enter the lowest value a user can enter for this field.
17. Optional: In the Maximum Value field, enter the highest value a user can enter for this field.
18. Optional: In the Default Value field, enter the number value that the field displays by default
when a new quote is created.
Configure boolean field options
19. Optional: If the field should default to True when a quote is created, enable the Default
Checked toggle.
(Optional) When the toggle is not enabled, the field defaults to False.
20. Optional: In the True Label field, enter the text to display when the field value is true.
(Optional) For example, entering Yes displays Yes on the quote layout when the Boolean value
is true.
21. Optional: In the False Label field, enter the text to display when the field value is false.
Configure picklist field options
22. In the Selection Type field, select how users choose values from this picklist.
◦ Select Single-select so users can choose one option at a time.
◦ Select Multi-select so users can choose more than one option.
23. In the Comparison Type field, select how the selected option's value is treated when used in a
rule condition.
◦ Select Text to treat the option value as a string in comparisons.
◦ Select Number to treat the option value as a numeric value in comparisons.
24. Select + Add Picklist Options to add the first option to the picklist.
25. Configure the option properties using the following fields.
Picklist option properties
Property

Description

Order

Controls the position of this option in the picklist. Lower numbers appear higher
in the list. Use increments of 10 (10, 20, 30) rather than 1, 2, 3 to leave room for
inserting options later.

Option
Label

The option name displayed to users on the quote layout.

Option
Value

The internal value that ServiceNow CPQ uses to identify this option in rules and
integrations.

Selected

When enabled, this option is the default selected value when a new quote is
created.

Description An optional description of the option, visible in the administration interface.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

285


<!-- page 286 -->
Property

Description

Image URL

The URL of a image to display in place of the option label text on the quote
layout.

26. Select Save Option to add the option to the picklist.
27. Optional: Select + Add Option to add another option and repeat the previous two steps until
all options are added.
Configure date/time field options
28. Optional: In the Default Value field, enter the default date and time for the field.
(Optional) The value is stored and displayed in UTC format: YYYY-MM-DDTHH:MM:SSZ. For
more information about date and time field behavior, see Date and time field fields.
29. Optional: In the Not Before field, enter the earliest date and time a user can select for this
field.
30. Optional: In the Not After field, enter the latest date and time a user can select for this field.
31. Select Save to save the field configuration.
The field is saved and associated with the blueprint. It appears in the Associated Fields list and
is available to add to a quote layout.

What to do next

Add the field to the quote layout to make it visible to users on the quote interface. For more
information, see Create a quote transaction layout.
Related topics
Date and time field fields
Transaction-level system fields
Transaction line-level system fields
Transaction-level system fields
Reference for the system-provided fields at the transaction (header) level in Quote Experience,
including variable names, descriptions, who can modify each field, and default values.

Field naming conventions
Quote Experience uses a consistent prefix convention for field variable names.
• System-generated header-level fields use the prefix txn. followed by the field name — for
example, txn.id.
• Custom header-level fields created by administrators use the prefix txn.custom. followed
by the field name — for example, txn.custom.quoteName.
For line-level field naming conventions, see Transaction line-level system fields.

Modifiable by
The Modifiable by column in the field tables uses the following values.
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

286


<!-- page 287 -->
The field value is set only by the application. Users cannot edit system-modifiable
fields on the quote layout, and administrators cannot set field values using
determination rules.
User
Any user with the appropriate permissions can update the field value. Determination
rule actions can also modify user-modifiable fields.

System-provided header-level fields
The following fields are available in all Quote Experience implementations.
Transaction-level system fields
Variable name

Description

Default value

txn.id

UUID of the transaction.
Uniquely identifies the
transaction record.

Auto-generated on
creation. Modifiable by:
System

txn.account.id

ID of the account used when
the transaction was created.

Empty. Expected to be
passed in on create.
Modifiable by: User

txn.opportunity.id

ID of the opportunity through
which the transaction was
created.

Empty. Expected to be
passed in on create.
Modifiable by: User

txn.pricebook.id

Pricebook associated
with the products on the
transaction.

Empty. A blank value is
interpreted as the default
pricebook. Modifiable by:
User

txn.pricing.currencyCode Currency code associated
with the products on the
transaction.

Empty. A blank value uses
the base currency for the
tenant. Modifiable by: User

txn.created

Timestamp of when the
transaction was created.

Auto-generated on
creation. Modifiable by:
System

txn.createdBy

Name of the user who
created the transaction.

Auto-generated on
creation. Modifiable by:
System

txn.modified

Timestamp of the most
recent modification to the
transaction.

Auto-generated on each
update. Modifiable by:
System

txn.modifiedBy

Name of the user who made
the most recent modification
to the transaction.

Auto-generated on each
update. Modifiable by:
System

txn.externalId

Unique identifier used to
reference the transaction in
external connections and
integrations.

Empty. Expected to be
passed in on create.
Modifiable by: User

txn.stage

Current stage of the
transaction in the quote
lifecycle.

Auto-generated. Value
depends on the stage

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

287


<!-- page 288 -->
Transaction-level system fields (continued)
Variable name

Description

Default value

configuration. Modifiable
by: System
txn.persona

Persona of the user who
performed the most recent
request on the transaction.

Auto-generated. Value
depends on the persona
configuration. Modifiable
by: System

ServiceNow SFA Fields
"The following fields are installed when ServiceNow SFA is enabled. Fields noted as "Set from
opportunity" on create are populated automatically from the source opportunity when a quote is
created.
SFA header fields
Variable name

Description

Default value

txn.displayNumber

Transaction display number.
The user-facing quote number.

Empty. Set during
create quote.
Modifiable by:
System

txn.sysId

ServiceNow system ID of the
transaction.

Empty. Set during
create quote.
Modifiable by:
System

txn.shortDescription

Short description of the
transaction.

Empty. Set from
opportunity
on create.
Modifiable by:
System

txn.contact

Contact name associated with
the transaction.

Empty. Set from
opportunity
on create.
Modifiable by:
System

txn.assignedTo

User assigned to the
transaction.

Empty. Set from
opportunity
on create.
Modifiable by:
System

txn.assignmentGroup

Assignment group for the
transaction.

Empty. Set from
opportunity
on create.
Modifiable by:
System

txn.startDate

Start date for the transaction.

Empty. Set from
opportunity
on create.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

288


<!-- page 289 -->
SFA header fields (continued)
Variable name

Description

Default value

Modifiable by:
System
txn.endDate

End date for the transaction.

Empty. Set from
opportunity
on create.
Modifiable by:
System

txn.term

Contract term in months.

Empty. Set from
opportunity
on create.
Modifiable by:
System

txn.channel

Records the channel through
which the transaction
originated.

agent_assist
Modifiable by:
System

txn.transactionType

Type of transaction. Values:
New, Amendment, Renewal.

Empty.
Modifiable by:
System

txn.transactionAction

Used to derive the transaction
type. Values: Add, Change.

add Modifiable
by: System

txn.isAutoGeneratedForRenewal Indicates whether this
transaction was automatically
generated for a renewal based
on the expiry of the original
contract.

false
Modifiable by:
System

txn.isAutoRenewContract

Indicates whether the contract
resulting from this transaction
should trigger automatic
renewal workflows.

false
Modifiable by:
System

txn.source.quote

Reference to the quote from
which this transaction was
consolidated, if applicable.

Empty.
Modifiable by:
System

txn.source.contract

Reference to the contract used
in the amendment or renewal
workflow that this transaction is
part of.

Empty.
Modifiable by:
System

ServiceNow Pricing fields
The following fields are installed when ServiceNow Pricing is enabled.
Pricing header fields
Variable name

Description

Default value

txn.pricing.extendedPrice

Total One-Time price. Empty.
An aggregate of the
Modifiable by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

289


<!-- page 290 -->
Pricing header fields (continued)
Variable name

Description

Default value

one-time price across
all lines.
txn.pricing.cost

Total One-Time Cost.
An aggregate of the
one-time cost across
all lines.

Empty.
Modifiable by:
System

txn.pricing.margin.amount

Total One-Time
Empty.
Margin. Calculated as Modifiable by:
Total One-Time Price System
minus Total One-Time
Cost.

txn.pricing.margin.percentage

Total One-Time
Margin %. Calculated
as Total One-Time
Margin divided by
Total One-Time Price
× 100.

Empty.
Modifiable by:
System

txn.pricing.netCost

Total Cost. An
aggregate of the
cumulative net cost
across all lines.

Empty.
Modifiable by:
System

txn.pricing.margin.total.amount

Total Margin Amount.
Calculated as Total
Amount minus Total
Cost.

Empty.
Modifiable by:
System

txn.pricing.margin.total.percentage

Total Margin %.
Calculated as Total
Margin Amount
divided by Total
Amount × 100.

Empty.
Modifiable by:
System

txn.pricing.annualPriceRecurring

Total Annual Price.
0 Modifiable
An aggregate of the
by: System
cumulative annual
recurring price across
all lines.

txn.pricing.netPriceRecurring

Total Monthly Price.
0 Modifiable
An aggregate of the
by: System
cumulative monthly
recurring price across
all lines.

txn.pricing.costRecurring

Total Monthly Cost.
An aggregate of the
cumulative monthly
recurring cost across
all lines.

txn.pricing.marginRecurring.amount

Total Monthly Margin. 0 Modifiable
Calculated as Total
by: System

0 Modifiable
by: System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

290


<!-- page 291 -->
Pricing header fields (continued)
Variable name

Description

Default value

Monthly Price minus
Total Monthly Cost.
txn.pricing.marginRecurring.percentage Total Monthly Margin Empty.
%. Calculated as
Modifiable by:
(Total Monthly Price
System
minus Total Monthly
Cost) divided by Total
Monthly Price.
txn.pricing.netNew.amount

Total Net New
Amount. An
aggregate of the
cumulative net price
from new root lines.

0 Modifiable
by: System

txn.pricing.source.contract.amount

Original Contract
Amount. An
aggregate of the
renewal amount from
lines. Represents
the contract value
from the original
transaction being
renewed.

0 Modifiable
by: System

txn.pricing.delta.upsellDownsellAmount Total Upsell/
Downsell Amount.
An aggregate of the
upsell or downsell
amount from lines.

0 Modifiable
by: System

txn.pricing.adjustment.renewalBasis

Renewal Adjustment
Basis. The starting
renewal price from
which to apply
adjustments.

list_price
Modifiable by:
System

txn.pricing.adjustment.renewalType

Renewal Adjustment
Type. The type
of adjustment for
renewal. Options:
Markup %, Markdown
%. Read-only when
Renewal Adjustment
Basis is List Price.

Empty.
Set from
opportunity
on create.
Modifiable by:
System

txn.pricing.adjustment.renewalValue

Renewal Adjustment
Value. The amount
of adjustment to
apply to the renewal
price, interpreted
according to the
Renewal Adjustment
Type.

Empty.
Modifiable by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

291


<!-- page 292 -->
Pricing header fields (continued)
Variable name

Description

Default value

txn.costbook

Reference to the cost Empty.
book associated with Modifiable by:
the transaction. Set
System
in the Pricing Service
response.

Approvals fields
The following field is installed when ServiceNow Approvals is enabled.
Approvals header field
Variable name

Description

Default value

txn.approvalState

Approval state of the transaction.

Empty. Modifiable by: System

PDF Document Generation fields
The following fields are installed when ServiceNow PDF Document Generation is enabled.
Document generation header fields
Variable name

Description

Default value

txn.docGen.template

Document template selection for
document generation.

Empty. Modifiable
by: User

txn.docGen.internalSigner Internal signer selection for
document generation.

Empty. Modifiable
by: User

txn.docGen.externalSigner External signer selection for
document generation.

Empty. Modifiable
by: User

Partner Management fields
The following fields are installed when ServiceNow Partner Management is enabled.
Partner Management header fields
Variable name

Description

Default value

txn.dealType

Route to market / deal type of the
transaction.

direct Modifiable by:
User

txn.routeToMarket

Route to market of the transaction.

direct Modifiable by:
User

txn.channelPartner Channel partner associated with the
transaction.

Empty. Modifiable by:
User

Sync Quote to Opportunity fields
The following field is installed when ServiceNow Sync Quote to Opportunity is enabled.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

292


<!-- page 293 -->
Sync Quote to Opportunity header field
Variable name

Description

Default value

txn.opportunity.isSynced Indicates whether the quote is synced
to the source opportunity.

Empty.
Modifiable by:
System

Related topics
Quote transaction fields
Transaction line-level system fields
Date and time field fields
Transaction line-level system fields
Reference for the system-provided fields at the transaction line level in ServiceNow CPQ
ServiceNow Quote Experience, including variable names, descriptions, who can modify each
field, and default values.

Field naming conventions
ServiceNow Quote Experience uses a consistent prefix convention for line-level field variable
names.
• System-generated line-level fields use the prefix txn.line. followed by the field name — for
example, txn.line.id.
• Custom line-level fields created by administrators use the prefix txn.line.custom.
followed by the field name — for example, txn.line.custom.agreementDiscount.
For header-level field naming conventions, see Transaction-level system fields.

Modifiable by
System
The field value is set only by the application. Users cannot edit system-modifiable
fields, and administrators cannot set them using determination rules.
User
Any user with the appropriate permissions can update the field value. Determination
rule actions can also modify user-modifiable fields.

Line identity and audit fields
Line identity and audit fields
Variable name

Description

Default value

txn.line.id

UUID of the transaction line. Must be
Auto-generated
unique across sectors and regions for one by the system.
tenant; may not be unique across tenants. Modifiable by:
System

txn.line.parent.id

ID of the parent line. Used to establish
parent-child relationships between lines
in the quote lines grid.

Empty. The user
passes this value.
Modifiable by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

293


<!-- page 294 -->
Line identity and audit fields (continued)
Variable name

Description

Default value

txn.line.created

Timestamp when the transaction line was
added.

Auto-generated
by the system.
Modifiable by:
System

txn.line.createdBy

Name of the user who added the
transaction line.

Auto-generated
by the system.
Modifiable by:
System

txn.line.modified

Timestamp when the transaction line was
last modified.

Auto-generated
by the system.
Modifiable by:
System

txn.line.modifiedBy Name of the user who last modified the
transaction line.

Auto-generated
by the system.
Modifiable by:
System

txn.line.isNew

Empty. Generated
when the line is
added. Modifiable by:
System

Indicates whether a line is new (true) or
existing (false). The value is true only
during the event that creates the line.

Product fields
Product fields are populated automatically when a product is added to the quote. Fields marked
with a refresh note are also updated when the Refresh Product Data stage setting is enabled.
Product fields
Variable name

Description

Default value

txn.line.isProduct

Boolean indicating whether the
product to be added is available in
the catalog.

false
Modifiable by:
System

txn.line.product.id

Product ID of the product added
to the line. Refreshed if Refresh
Product Data is enabled.

Autogenerated by
the system.
Modifiable by:
System

txn.line.product.name

Name of the product added to the
line. Refreshed if Refresh Product
Data is enabled.

Autogenerated by
the system.
Modifiable by:
System

txn.line.product.externalId

External ID of the product, as
defined in ServiceNow CPQ Admin
utilities. Refreshed if Refresh
Product Data is enabled.

Autogenerated by
the system.
Modifiable by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

294


<!-- page 295 -->
Product fields (continued)
Variable name

Description

Default value

txn.line.product.partnerId

Partner ID of the product, as
defined in ServiceNow CPQ Admin
utilities. Refreshed if Refresh
Product Data is enabled.

Autogenerated by
the system.
Modifiable by:
System

txn.line.product.productCode Product code of the product, as
defined in ServiceNow CPQ Admin
utilities. Refreshed if Refresh
Product Data is enabled.

Autogenerated by
the system.
Modifiable by:
System

txn.line.product.description Description of the product added
to the line. Refreshed if Refresh
Product Data is enabled.

Autogenerated by
the system.
Modifiable by:
System

Line behavior fields
Line behavior fields
Default
value

Variable name

Description

txn.line.isVisible

Controls whether the line appears in the quote
lines grid. Set to false to hide a line from the
user without deleting it.

true
Modifiable
by:
System

txn.line.isReorderable Indicates whether the line can be reordered
within the quote lines grid.

true
Modifiable
by:
System

txn.line.selected

false
Modifiable
by:
System

Used in rule conditions to perform actions on
selected lines. Set to true when a line-level
event runs on the line. Reset to false after all
event actions complete.

Configuration fields
Configuration fields are populated when a configurable product is added to the quote. Fields in
the txn.line.configuration.item.* group relate to items in the bill of materials (BOM).
These fields are empty if the line has no configuration.
Configuration fields
Variable name

Description

Default value

txn.line.isConfigured

Boolean
indicating
whether
the line is a

false
Modifiable
by: System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

295


<!-- page 296 -->
Configuration fields (continued)
Variable name

Description

Default value

configured
product or the
top-level line of
a parent-child
configuration.
Set to true
automatically
when a
configuration is
added.
txn.line.configuration.id

UUID of the
configuration.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.solutionId

UUID of the
solution the
configuration
belongs to.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.status

Configuration
validation
status.
Supports
the Validate
configured
items event
setting.

Empty.
Generated
when lines
are added.
Modifiable
by: System

txn.line.configuration.validatedAt

Date of the last
configuration
validation.
Supports
the Validate
configured
items event
setting.

Empty.
Generated
when lines
are added.
Modifiable
by: System

txn.line.configuration.item.id

Configuration
item ID in the
BOM once a
configuration is
added.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.item.price

Price of a BOM
item once a
configuration is
added.

0. Does
not exist if
there is no
configuration.
Modifiable
by: System

txn.line.configuration.item.quantity

Quantity of a
BOM item once
a configuration
is added.

0. Does
not exist if
there is no
configuration.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

296


<!-- page 297 -->
Configuration fields (continued)
Variable name

Description

Default value

Modifiable
by: System
txn.line.configuration.item.type

Type of a BOM
item once a
configuration is
added.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.item.notes

Notes for a
BOM item once
a configuration
is added.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.item.description

Description
of the BOM
item as defined
when the
configuration
item was
created.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.item.parentProduct

Configuration
item ID of
the parent
product for a
BOM item in
a parent-child
configuration.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.item.uom

Unit of measure
for the BOM
item, as defined
when the item
was created.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.item.bomType

BOM type
of the
configuration
item, as defined
when the item
was created.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.item.extPrice

Extended
price of the
BOM item, as
defined in the
extPrice
column of the
configuration
item.

0. Does
not exist if
there is no
configuration.
Modifiable
by: System

txn.line.configuration.item.orderNumber

Order number
of the BOM
item when it
was added.

Empty if no
configuration.
Modifiable
by: System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

297


<!-- page 298 -->
Configuration fields (continued)
Variable name

Description

Default value

txn.line.configuration.item.rollUpPrice

Rollup price
of the BOM
item, as
defined in the
rollupPrice
column when
the item was
created.

0. Does
not exist if
there is no
configuration.
Modifiable
by: System

txn.line.configuration.item.uniqueIdentifier Unique
identifier for
a BOM item,
used to match
configuration
items on
reconfiguration.
Cannot be
changed after
creation.

Empty if no
configuration.
Modifiable
by: System

txn.line.configuration.item.key

Empty.
Generated
when lines
are added.
Modifiable
by: System

Fallback key
used to match
BOM items on
reconfiguration
when the
unique
identifier
cannot be
used.

Fields installed with the quoting experience
The following fields are installed when the ServiceNow CPQ quoting experience is enabled and
are available to all tenants.
Core quoting experience line fields
Default
value

Variable name

Description

txn.line.account

Account associated with the Empty.
line. Set from the transaction Set from
header.
header.
Modifiable
by:
System

txn.line.contact

Contact name associated
with the line.

Empty.
Modifiable
by:
System

txn.line.displayNumber

User-facing display number
of the line.

Empty.
Modifiable

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

298


<!-- page 299 -->
Core quoting experience line fields (continued)
Variable name

Description

Default
value

by:
System
txn.line.sysId

ServiceNow system ID of the Empty.
line.
Modifiable
by:
System

txn.line.parentBomLineId

ID of the line's parent BOM
line.

Empty.
Modifiable
by:
System

txn.line.product.uom

Product unit of
measurement of the line.

Empty.
Modifiable
by:
System

txn.line.product.model

Product model associated
with the line.

Empty.
Modifiable
by:
System

txn.line.product.specification

Product specification
associated with the line.

Empty.
Modifiable
by:
System

txn.line.product.characteristics

Product characteristics of
the line.

Empty.
Modifiable
by:
System

txn.line.serviceLocation

Service location associated
with the line.

Empty.
Modifiable
by:
System

txn.line.startDate

Start date of the line.

Empty.
Modifiable
by:
System

txn.line.endDate

End date of the line.

Empty.
Modifiable
by:
System

txn.line.term

Difference in months
between the start date and
end date for the recurring
product on this line.
Calculated automatically
from the contract start date
and contract end date.

Empty.
Modifiable
by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

299


<!-- page 300 -->
Core quoting experience line fields (continued)
Variable name

Description

Default
value

txn.line.lineType

Describes the change being
made to the transaction line.
Values: New, Renew, Upsell,
Amend, Cancel, No Change.

Empty.
Modifiable
by:
System

txn.line.lineAction

Indicates the action applied
to the sold product. Values:
Add, Change, Disconnect,
No Change.

Empty.
Modifiable
by:
System

txn.line.isAutoGeneratedForRenewal

Indicates whether this line
Empty.
was automatically generated Modifiable
from a renewal workflow.
by:
System

txn.line.isAutoRenewContract

Indicates whether the
contract line is eligible for
automatic renewal based on
its expiration end date.

Empty.
Modifiable
by:
System

txn.line.source.entitlement

References the entitlement
from which this line was
renewed.

Empty.
Modifiable
by:
System

txn.line.source.soldProduct

Reference to the underlying
sold product record from
which this line was created.

Empty.
Modifiable
by:
System

txn.line.source.splitFromSoldProduct When a line is split due to
an amendment, this field
contains a reference to the
underlying sold product
record from the original
line. Used for delta pricing
calculations.

Empty.
Modifiable
by:
System

txn.line.source.contract

References the existing
contract from which this line
was derived.

Empty.
Modifiable
by:
System

txn.line.source.contract.line

Reference to the contract
line from which this line was
renewed.

Empty.
Modifiable
by:
System

txn.line.source.line

Reference to the parent line
item when a line was split
due to an amendment. Used
in the pricing payload as
split_from.

Empty.
Modifiable
by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

300


<!-- page 301 -->
Core quoting experience line fields (continued)
Default
value

Variable name

Description

txn.line.source.rootLine

Reference to the root
(original) line in a split or
amendment chain.

Empty.
Modifiable
by:
System

Pricing fields
The following fields are installed when the Pricing tenant setting is enabled.
Line-level pricing fields
Variable name

Description

Default value

txn.line.pricebook

Reference to
the price list
from which
this line's list
price is read.

Empty.
Modifiable by:
System

txn.line.pricing.extendedPrice

Extended
Price.
Calculated as
Unit Net Price
× Quantity.

Empty.
Modifiable by:
System

txn.line.pricing.cost

One-Time
Cost. Cost
for a product
that is not
recurring.

Empty.
Modifiable by:
System

txn.line.pricing.unitCost

Unit Cost. List
cost as read
from the cost
book.

0 Modifiable
by: System

txn.line.pricing.margin.amount

Unit Margin
0 Modifiable
Amount.
by: System
Calculated as
Unit Net Price
minus Unit Net
Cost.

txn.line.pricing.margin.percentage

Unit Margin %. Empty.
Calculated as Modifiable by:
Unit Margin
System
Amount
divided by
Unit Net Price
× 100.

txn.line.pricing.rollupPrice

Cumulative
One-Time
Price. An

Empty.
Modifiable by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

301


<!-- page 302 -->
Line-level pricing fields (continued)
Variable name

Description

Default value

aggregate of
the one-time
price of itself
and its child
lines.
txn.line.pricing.rollupCost

Cumulative
One-Time
Cost. An
aggregate of
the one-time
cost of itself
and its child
lines.

Empty.
Modifiable by:
System

txn.line.pricing.rollupNetCost

Cumulative
Net Cost. An
aggregate
of the onetime cost
and monthly
recurring cost
over the term.

0 Modifiable
by: System

txn.line.pricing.rollupNetPrice

Cumulative
Net Price. An
aggregate of
the unit net
price of itself
and its child
lines.

0 Modifiable
by: System

txn.line.pricing.rollupMargin.percentage

Cumulative
Margin %. An
aggregate of
the margin of
itself and its
child lines.
Calculated as
the rollup of
Unit Margin
Amount
divided by
Unit Net Price
× 100.

Empty.
Modifiable by:
System

txn.line.pricing.netPriceRecurring

Monthly
Recurring
Price. For
a recurring
product, the
monthly unit
price.

Empty.
Modifiable by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

302


<!-- page 303 -->
Line-level pricing fields (continued)
Variable name

Description

Default value

txn.line.pricing.costRecurring

Monthly
Empty.
Recurring
Modifiable by:
Cost. The
System
monthly cost
of the product.
Typically used
in margin
calculations.

txn.line.pricing.annualPriceRecurring

Annual
Recurring
Price.
Calculated
as Monthly
Recurring
Price × 12
months.

0 Modifiable
by: System

txn.line.pricing.rollupExtendedPriceRecurring Cumulative
Empty.
Monthly Price. Modifiable by:
Calculated as System
Net Unit Price
per month ×
Quantity.
txn.line.pricing.rollupCostRecurring

Cumulative
Empty.
Monthly Cost. Modifiable by:
An aggregate System
of the monthly
recurring cost
of itself and its
child lines.

txn.line.pricing.rollupAnnualPriceRecurring

Cumulative
Empty.
Annual Price. Modifiable by:
An aggregate System
of the annual
recurring price
of itself and its
child lines.

txn.line.pricing.adjustment.manual

Manual
Adjustment.
Stores the
calculated
adjustment
amount
derived
from manual
adjustments
on the line.

0 Modifiable
by: System

txn.line.pricing.adjustment.net

Net
Adjustment.
Total

0 Modifiable
by: System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

303


<!-- page 304 -->
Line-level pricing fields (continued)
Variable name

Description

Default value

adjustment
amount for the
line. Includes
manual
adjustments
and any
auto-applied
adjustments
per pricing
rules.
txn.line.pricing.adjustment.unit

Unit
Adjustment.
Calculated
as Total
Adjustment
divided by
Quantity.

0 Modifiable
by: System

txn.line.pricing.priceAdjustments

JSON store
for price
adjustments,
consumed
by the
adjustments
UI.

Empty.
Modifiable by:
System

txn.line.pricing.isDerived

Flag indicating 0 Modifiable
whether this
by: System
product's
price is
derived
from other
products
on the
transaction.

txn.line.pricing.adjustment.renewalBasis

Renewal
Adjustment
Basis.
Specifies
the starting
renewal
price to use.
List Price or
Net Price of
last ramp
segment.
Overrides
the headerlevel setting if
specified.

list_price
Modifiable by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

304


<!-- page 305 -->
Line-level pricing fields (continued)
Variable name

Description

Default value

txn.line.pricing.adjustment.renewalType

Renewal
Adjustment
Type.
Indicates
whether
the renewal
adjustment
value is a
percentage
or absolute
amount.

Empty.
Modifiable by:
System

txn.line.pricing.adjustment.renewalValue

Renewal
Adjustment
Value. The
percentage
or amount
to adjust
the renewal
price by,
according to
the Renewal
Adjustment
Type.

Empty.
Modifiable by:
System

txn.line.source.rollupPrice

Renewal
0 Modifiable
Amount.
by: System
Reference to
the original
cumulative net
price prior to
renewal.

txn.line.pricing.delta.priceTreatment

Delta Price
list_price
Treatment.
Modifiable by:
Determines
System
the pricing
treatment
applied to the
line based
on line type,
action, and
whether
product offer
characteristics
have
changed.

txn.line.pricing.delta.netPrice

Delta Unit
Net Price.
Calculated
as Current
Unit Net Price

Empty.
Modifiable by:
System

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

305


<!-- page 306 -->
Line-level pricing fields (continued)
Variable name

Description

Default value

minus Original
Unit Net Price.
txn.line.pricing.delta.price

Delta OneEmpty.
Time Price.
Modifiable by:
Calculated as System
Current OneTime Price
minus Original
One-Time
Price.

txn.line.pricing.delta.rollupNetPrice

Delta
Empty.
Cumulative
Modifiable by:
Net Price.
System
Calculated
as Current
Cumulative
Net Price
minus Original
Cumulative
Net Price.

txn.line.pricing.delta.rollupPriceRecurring

Delta Monthly
Recurring
Price.
Calculated
as Current
Monthly
Recurring
Price minus
Original
Monthly
Recurring
Price.

txn.line.delta.upsellDownsellAmount

Upsell or
Empty.
Downsell
Modifiable by:
Amount.
System
Calculated as
the Current
Cumulative
Net Price
minus Original
Cumulative
Net Price.

Empty.
Modifiable by:
System

Opportunity sync fields
The following field is seeded when the Opportunity Sync tenant setting is enabled.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

306


<!-- page 307 -->
Opportunity sync line field
Variable name

Description

Default value

txn.line.opportunity.lineItem Reference to the opportunity line Empty.
item this line is synced to.
Modifiable by:
System
Related topics
Quote transaction fields
Transaction-level system fields
Date and time field fields
Date and time field fields
Reference for how date and time fields behave in ServiceNow CPQ ServiceNow Quote
Experience rules and scripts, including comparison operators, null handling, and supported
aggregate functions.

Date and time fields in quoting
Date and time fields in ServiceNow CPQ serve two primary purposes in a quoting context.
Term calculations
Calculate contract terms, start and end dates, renewal dates, and subscription
lengths. Blank or null date values can affect term accuracy — use system defaults
such as the current date, or flag missing values using error messages in rules.
Audit events
Track activities such as quote creation, pricing changes, and approval events.
Missing dates indicate incomplete data and should be flagged for review.

Date and time formats
ServiceNow Quote Experience supports the following date and time formats.
Date and time field formats
Format type

Format pattern

Example

Date only

YYYY-MM-DD

2024-11-07

Date and time

YYYY-MM-DDTHH:MM:SS

2024-10-22T14:30:00

UTC (stored format)

YYYY-MM-DDTHH:MM:SSZ

2024-10-22T14:30:00Z

Date-only fields are time-zone agnostic. All date and time values are stored in Coordinated
Universal Time (UTC) to avoid time-zone discrepancies. Administrators can choose whether to
include the time component when configuring a date/time field.
In the ServiceNow Quote Experience layout, the field type value that controls display behavior is:
• "type":"Date" — displays only the date component.
• "type":"DateTime" — displays both date and time components.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

307


<!-- page 308 -->
Null and blank date behavior in scripts
Blank and null date values follow specific comparison rules in ServiceNow Quote Experience
scripts and rule conditions.
• Blank/null dates compare as false unless compared directly to another blank value.
• The default value of a date field is empty (null) unless a default is specified in the field
configuration.
The following examples show blank date comparison outcomes.
Blank date comparison examples
Expression

Result

Explanation

date123 = ""

true

A blank date compared to a blank string
evaluates to true.

date123 != ""

false

A blank date compared as not-equal to
blank evaluates to false.

Supported comparison operators
The following comparison operators are supported for date and time field values in rule
conditions and scripts.
Date comparison operators
Operator

Behavior

<

Less than. Always evaluates to false when either operand is
blank or null.

<=

Less than or equal to. Always evaluates to false when either
operand is blank or null.

>

Greater than. Always evaluates to false when either operand is
blank or null.

>=

Greater than or equal to. Always evaluates to false when either
operand is blank or null.

=

Equal to. Evaluates to true only when both operands are blank.

!=

Not equal to. Evaluates to false when either operand is blank or
null.

Aggregate functions for date fields
The following aggregate functions are supported for date field values. Use these in determination
rule scripts to calculate date values across transaction lines.
Supported aggregate functions for date fields
Function

Behavior

Notes

Max

Returns the latest date in the set.

Supported.

Min

Returns the earliest date in the set.

Supported.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

308


<!-- page 309 -->
Supported aggregate functions for date fields (continued)
Function

Behavior

Notes

Count

Counts non-empty date values in
the set.

Supported.

Sum

Not applicable to date values.

Not recommended — may trigger
compile-time errors.

Avg

Not applicable to date values.

Not recommended — may trigger
compile-time errors.

Date calculation script example
The following script calculates the difference between a start date and an end date in months
and days, and stores the result in a subscription term field. Use this pattern in a determination
rule action to populate a summary field from two date inputs.
// Calculates the difference between start and end dates in
months and
// days. Stores the result in Subscription Term (Months).
var yearsDiff =
txn.custom.endDate.getFullYear() txn.custom.startDate.getFullYear();
var monthsDiff =
txn.custom.endDate.getMonth() txn.custom.startDate.getMonth();
var totalMonths = yearsDiff * 12 + monthsDiff;
var startDay = txn.custom.startDate.getDate();
var endDay = txn.custom.endDate.getDate();
var daysInMonth = new Date(
txn.custom.endDate.getFullYear(),
txn.custom.endDate.getMonth() + 1,
0
).getDate();
var dayFraction = (endDay - startDay + 1) / daysInMonth;
totalMonths += dayFraction;
return Math.floor(totalMonths * 1000) / 1000;
Related topics
Quote transaction fields
Transaction-level system fields
Transaction line-level system fields
Create a transaction field
Quote transaction rules and rule groupings
Rules in ServiceNow Quote Experience evaluate conditions and perform actions on quote fields
and layouts. Rule groupings bundle rules together to run at stages and events in ServiceNow
CPQ.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

309


<!-- page 310 -->
Rules in ServiceNow Quote Experience govern what actions occur when a user interacts with the
quote interface. Rules are similar to configuration rules — each rule has three components: level,
conditions, and actions.

Rule components
Level
Determines whether the rule runs at the transaction level or the transaction line
level. The level dictates which fields can be used in conditions and actions.
• Transaction-level rules can use transaction-level fields in both conditions and
actions.
• Transaction line-level rules can use transaction-level and line-level fields in
conditions, but only transaction line-level fields in actions.
Conditions
Determine when a rule executes its actions. If conditions evaluate to TRUE, actions
execute. If conditions evaluate to FALSE, actions don't execute. The following
condition logic options are available.
Always True
Executes the rule every time a user makes a change to the quote
interface.
Any Conditions are Met
Executes the rule if any condition evaluates to TRUE. Conditions are
logically OR'd together.
All Conditions are Met
Executes the rule if all conditions evaluate to TRUE. Conditions are
logically AND'd together.
Custom Logic
Enables parentheses and a mixture of AND and OR operators to build a
custom logic expression — for example, Cond_1 AND (Cond_2 OR
Cond_3).
Advanced Function
Enables a script that returns TRUE or FALSE to control whether the
rule executes.
Each individual condition tests a field against an operator and a value. Use + Add
Condition to add multiple conditions to a rule.
Actions
Define what the rule does when it executes. A rule can have one or more actions,
and a single rule can include actions of different types. For full parameter details for
each action type, see the Action types section below.

Action types
The following action types are available in ServiceNow Quote Experience rules. Each type has a
distinct set of parameters configured in the rule editor.
Hiding
Hides a field on the quote layout when the rule conditions are met. The only
parameter is the field to hide — use the field search box in the action editor to select
it.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

310


<!-- page 311 -->
Message
Displays a text message to the user on the quote layout. The following parameters
are available.
Message type
Set using the I want to display menu. The four message types are:
• Info — circular blue icon and blue message text. Icon and text color
cannot be changed.
• Warning — triangular yellow icon and yellow message text. Icon and
text color cannot be changed.
• Error — triangular red icon and red message text. Icon and text color
cannot be changed.
• Custom — configurable icon and text color.
Message location
Set using the Show the message on field. Messages can be attached
to a field, or to a layout component such as a tier or a columnset.
Message content
Enter the text to display in the Message Content field. Enable the
Advanced toggle to use a script to build the message content
dynamically.
Save behavior
Use the When Message is Displayed field to determine whether the
transaction can be saved when the message is visible.
Exclusion
Hides or disables one or more menu options in a picklist field. Exclusion and
Inclusion actions share the same parameter set.
Target field
Select the picklist field whose options to exclude using the For this
Field menu.
Options to exclude
Select the picklist options to exclude using the I want to exclude these
options menu. Select options one at a time. Enable the Advanced
toggle to use a script to determine which options are excluded.
Excluded option treatment
Use the For excluded options menu to choose how excluded options
appear:
• Hide them — removes excluded options from the menu.
• Disable them — retains excluded options in the menu in a disabled
state.
Behavior when excluded option is already selected
Use the If any are already selected menu to control what happens
when the user has already selected an option that the rule excludes:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

311


<!-- page 312 -->
• Leave unchanged — retains the excluded item as the selected value.
• Deselect them — removes the selection and requires the user to
choose another option.
• Select the first valid option instead — removes the selection and
replaces it with the first available option after the rule executes.
Inclusion
Shows or enables one or more menu options in a picklist field. Inclusion and
Exclusion actions share the same parameter set — in an Inclusion action, options
not specified for inclusion are treated as excluded. For parameter descriptions, see
the Exclusion action above.
Determination
Sets or clears the value of a field. The following parameters are available.
Target field
Select the field to act on using the For this Field menu.
Set or clear
Under I want to…, define whether to set a value or clear the field, and
whether to allow or prevent the user from editing the field after the rule
modifies it.
User-modified value handling
The If user has modified values menu controls whether to retain a
value the user already entered or override it with the rule's value. When
user values are retained, the When user values are retained menu lets
you optionally show the user a recommendation message about the
field value.
Value to assign
Define the value in the Use this value field. Enable the Advanced
toggle to use a script — including aggregate functions — to calculate
the value.

Aggregate functions in determination actions
Aggregate functions are script functions available in determination rule actions. They perform
math calculations on transaction line fields and store results in a header field or a transaction
line field. Aggregates enhance automation, optimize pricing calculations, and improve data
organization in quoting workflows.

Note: Aggregate functions always run, even when they have no child lines to aggregate.
If an aggregate function has no default value set and there are no children, it returns null.
Lookup functions without children return an empty array. To avoid downstream errors,
always set a default value or handle empty array responses in any logic that depends on
aggregate output.
Avg, Count, Min, Max, Sum
Aggregate the value of a transaction line field across all lines and store the result in
the target header field.
return
txn.line.functions.<function>(txn.line.<fieldVarName>)
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

312


<!-- page 313 -->
Values for <function>: avgField, countField, minField, maxField,
sumField.
AvgIf, CountIf, SumIf
Apply a filter to the transaction line field values, then perform the calculation on
the remaining lines and store the result in the target header field. Text conditional
checks are case sensitive.
txn.line.functions.<function>(txn.line.<fieldVarName>,
<condition> [, <default>])
Values for <function>: avgFieldIf, countFieldIf, sumFieldIf.
Example condition expressions:
• booleanField = true
• txn.line.functions.sumChildrenField(txn.line.<fieldVarName>)
> 0
If there are no children to aggregate and the default value is undefined, the function
returns null.
SumChildren
Aggregates the value of a line field across all child lines and stores the result in the
immediate parent line field.
txn.line.functions.sumChildrenField(txn.line.<fieldVarN
ame>)
Lookup functions
Retrieve values rather than computing totals. Lookup functions return either a
single value or an array of values from transaction line fields, enabling dynamic
use in pricing calculations, validation rules, and output documents. Lookup
aggregations dynamically adjust when line items are removed — references to
deleted transaction lines are cleared automatically.
Lookup functions follow a structured naming convention.
• lookup returns an array. lookupFirst returns a single value.
• Context: no context suffix = all lines. Children suffix = child line items only.
• Condition: no suffix = no filter. If suffix = conditional filter applied.
Basic lookup functions:
• txn.line.functions.lookupField(<field>) — array of values from
the specified field across all lines.
• txn.line.functions.lookupFirstField(<field> [,
<default>]) — first matching value, with optional default.
• txn.line.functions.lookupChildrenField(<field>) — array of
values from child line items.
• txn.line.functions.lookupFirstChildrenField(<field> [,
<default>]) — first matching value from child line items, with optional default.
Conditional lookup functions (text comparisons are case sensitive):
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

313


<!-- page 314 -->
• txn.line.functions.lookupFieldIf(<field>, <condition>)
• txn.line.functions.lookupFirstFieldIf(<field>,
<condition> [, <default>])
• txn.line.functions.lookupChildrenFieldIf(<field>,
<condition>)
• txn.line.functions.lookupFirstChildrenFieldIf(<field>,
<condition> [, <default>])
Lookup functions store retrieved values in intermediate fields, making them
available for further calculations and automation. Using intermediate fields offers
the following benefits.
• Minimizes redundant calculations by storing commonly referenced values.
• Maintains a consistent set of field values across pricing and quoting processes.
• Enables dynamic updates to dependent fields, ensuring real-time accuracy in
pricing and approvals.
Code examples:
var taxCodes =
txn.line.functions.lookupFieldIf("taxCode",
txn.line.amount > 0);
var firstPrice =
txn.line.functions.lookupFirstField("price", 0);
var childService =
txn.line.functions.lookupChildrenField("serviceType");
var totalTax =
txn.line.functions.lookupFirstField(txn.line.taxAmou
nt, 0);
return totalTax * 1.05; // Applies a 5% surcharge based
on retrieved tax amount
The following example calculates the sum of list prices for lines whose BOM type is SALES. The
BOM type is a system-derived line field that reflects the type set when the configuration item was
created.
The determination rule uses the sumFieldIf function at the draft stage with this script:
return txn.line.functions.sumFieldIf(
txn.line.pricing.list,
txn.line.configuration.item.bomType == 'SALES'
);

Note: The conditional check is case sensitive. Use 'SALES', not 'sales'. Incorrect
casing produces no error but returns a sum of 0 because no lines match.
With lines whose BOM types are SALES (values 40,000 / 2,500 / 1,000 / 2,500) and one nonSALES line (0), the field correctly returns $46,000.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

314


<!-- page 315 -->
Rule groupings
Rule groupings are collections of rules that execute together. A rule grouping can contain both
transaction-level and transaction line-level rules. Rule groupings are assigned to stages and
events. When a stage is entered or an event fires, the associated rule groupings execute —
including all rules within them that meet their conditions.
For rules to execute on a quote, an administrator must associate a rule grouping with a stage or
event. Using rule groupings allows the same set of rules to be reused across multiple stages and
events without duplicating rule definitions.
For information about creating a rule grouping and associating rules with it, see Create a
transaction rule grouping.
Create a transaction rule
Create a rule in ServiceNow Quote Experience to define conditions and actions that control field
behavior and layout presentation on a quote in ServiceNow CPQ.

Before you begin

The fields to use in rule conditions and actions must exist before creating the rule. For more
information, see Create a transaction field.
Role required: admin

About this task

Rules are created through the ServiceNow Quote Experience administration interface and
consist of a level, conditions, and one or more actions. The rule editor opens after the initial save
— the name, description, and active state are all editable there. For full descriptions of each
action type and its parameters, see Quote transaction rules and rule groupings.

Procedure

Create the rule
1. Navigate to All > CPQ Administration > Transaction > Related Rules.
2. Select + New Rule.
3. In the New Rule window, enter the rule name and verify the variable name.
The variable name is set in camel case from the name you enter. To use a custom variable
name, select the pencil icon to the right of the Variable Name field.
4. Select the rule level.
◦ Select Transaction to create a rule that uses transaction-level fields in both conditions and
actions.
◦ Select Transaction Line to create a rule that can use transaction-level and line-level fields in
conditions but only line-level fields in actions.
5. Select Save.
The rule editor opens. The Name, Description, and Active toggle are available at the top of the
page.
6. Optional: Enter a description of the rule in the Description field.
Define the conditions

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

315


<!-- page 316 -->
7. In the Take Action When menu, select the condition logic method.
Option

Behavior

Always True

Rule executes every time a user makes a
change to the quote interface. No conditions
to define.

Any Conditions are Met

Rule executes if any one condition is TRUE
(OR logic).

All Conditions are Met

Rule executes only when all conditions are
TRUE (AND logic).

Custom Logic

Enables parentheses and mixed AND/OR log­
ic — for example, Cond_1 AND (Cond_2
OR Cond_3).

Advanced Function

Enables a script that returns TRUE or FALSE
to control rule execution.

8. Optional: If using a condition-based logic method, select + Add Condition and define each
condition.
(Optional) For each condition, use the field menu to select the ServiceNow Quote Experience
field to test, choose the operator, then set the test value. Repeat for each additional condition.
Add a hiding action
9. Optional: In the Actions area, select Hiding.
10. Optional: In the field search box, search for and select the field to hide on the quote layout.
Add a message action
11. Optional: In the Actions area, select Message.
12. Optional: In the I want to display menu, select the message type.
◦ Select Info for a circular blue icon and blue text.
◦ Select Warning for a triangular yellow icon and yellow text.
◦ Select Error for a triangular red icon and red text.
◦ Select Custom for a configurable icon and text color.
13. Optional: In the Show the message on field, specify where the message appears on the
quote layout.
(Optional) Messages can be attached to a field, or to a layout component such as a tier or a
columnset.
14. Optional: In the Message Content field, enter the text of the message to display.
(Optional) Enable the Advanced toggle to write a script that builds the message content
dynamically.
15. Optional: In the When Message is Displayed field, set whether the transaction can be saved
when the message is visible.
Add an exclusion or inclusion action

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

316


<!-- page 317 -->
16. Optional: In the Actions area, select Exclusion or Inclusion.
17. Optional: In the For this Field menu, select the picklist field whose options to exclude or
include.
18. Optional: In the I want to exclude/include these options menu, select the picklist options one
at a time.
(Optional) Enable the Advanced toggle to use a script to determine which options are
excluded or included.
19. Optional: In the For excluded options menu, choose how excluded options appear to the
user.
◦ Select Hide them to remove excluded options from the menu.
◦ Select Disable them to retain excluded options in the menu in a disabled state.
20. Optional: In the If any are already selected menu, choose what happens when an excluded
option is already selected by the user.
◦ Select Leave unchanged to keep the excluded item as the selected value.
◦ Select Deselect them to clear the selection and require the user to choose another option.
◦ Select Select the first valid option instead to clear the selection and replace it with the first
available option after the rule executes.
Add a determination action
21. Optional: In the Actions area, select Determination.
22. Optional: In the For this Field menu, search for and select the field for the rule to act on.
23. Optional: Under I want to…, select whether to set or clear the field value, and whether to allow
or prevent the user from editing the field after the rule modifies it.
24. Optional: In the If user has modified values menu, choose whether to retain the value the
user entered or override it with the rule's value.
(Optional) When user values are retained, use the When user values are retained menu to
optionally show the user a recommendation message about the field value.
25. Optional: In the Use this value field, define the value to assign.
(Optional) Enable the Advanced toggle to enter a script — including aggregate functions — to
calculate the value. For aggregate function syntax and examples, see Quote transaction rules
and rule groupings.
Add additional actions and save
26. Optional: To add another action of any type to this rule, return to the Actions area and repeat
the steps for the relevant action type above.
(Optional) A single rule can contain multiple actions of different types.
27. Verify that the Active toggle is enabled, then select Save.
The rule is saved and appears in the Related Rules list. It is available to add to a rule grouping.

What to do next

Add the rule to a rule grouping so that it can be assigned to stages and events. For more
information, see Create a transaction rule grouping.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

317


<!-- page 318 -->
Create a transaction rule grouping
Create a rule grouping to bundle rules together for assignment to stages and events in
ServiceNow CPQ.

Before you begin

The rules to include in the grouping must exist before you create the rule grouping. For more
information, see Create a transaction rule.
Role required: admin

About this task

Rule groupings bundle transaction-level and transaction line-level rules together so they execute
as a unit. A rule grouping can contain rules of both levels. Once created, rule groupings are
assigned to stages and events — the grouping executes when the stage is entered or the event
fires, running all rules within it that meet their conditions.
For a conceptual overview of how rule groupings relate to stages and events, see Quote
transaction rules and rule groupings.

Procedure
1. Navigate to All > CPQ Administration > Transaction.
2. Select Rule Groupings in the left menu, then select + New Rule Grouping.
3. In the New Rule Grouping window, enter a name for the rule grouping and verify the variable
name.
The variable name is set in camel case from the name you enter. To use a custom variable
name, select the pencil icon to the right of the Variable Name field.
4. Select Save.
The rule grouping editor opens.
5. To associate rules with the grouping, select + Associate Rules.
A slide-out panel opens, showing available rules in the Results column.
6. Select + next to a rule in the Results column to move it to the Selected column.
7. Repeat the previous step for each rule to include in the grouping.
A rule grouping can include both transaction-level and transaction line-level rules.
8. Select Done.
The rule grouping editor displays the rules added to the group. The rule grouping is saved and
available for assignment to stages and events.

Result

The rule grouping appears in the Rule Groupings list and is available to assign to a stage or
event. All rules in the grouping execute when the stage is entered or the event fires, subject to
each rule's own conditions.

What to do next

Assign the rule grouping to a stage or event so that its rules execute during the quote lifecycle.
• To assign to a stage, see .
• To assign to an event, see Create an event.
Transaction events
Events trigger rule groups, integrations, and stage transitions on a quote. ServiceNow Quote
Experience provides system events and supports custom events in ServiceNow CPQ.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

318


<!-- page 319 -->
Events are activated by buttons on the Quote layout or API calls on the quote layout and typically
helpuserscan transition quotes from one stage to another. When an event fires, it can run rule
groupings, call integrations, and trigger stage transitions.

Header-level system events
System events are standard behaviors provided by default. When Transaction Manager is
embedded in Sales CRM, the user sees buttons on the quote interface corresponding to
transaction-level events.
Transaction-level system events:
Create Transaction
Triggered to create a new transaction.
Update Transaction
Allows editing an updating a transaction.
Copy Transaction
Clones a transaction and its line items.
Upsert Lines
Manages the creation and update of transaction lines after the user browses
the catalog to add new lines or reconfigures an existing line. Upsert Lines runs
automatically after the user finishes selecting products from the catalog, configuring
products, or reconfiguring a line. Although it works on lines, it operates at the
transaction level on all lines. For more information about UI effects, see Quote
transaction layouts.
Delete Transaction
Triggered to delete an existing transaction.
Transaction line-level system events are represented as buttons on the quote lines grid:
Clone Line
Clones a line and its children. Only top-level lines in the transaction can be cloned.
Header-level rules also apply after cloning.
Delete Lines
Deletes one or more selected lines from the transaction. Line IDs can also be
passed in headless mode.
Reconfigure
Re-configure one or more selected lines from the transaction. Line IDs can also be
passed in headless mode.

Event APIs
Event APIs are authorized via session cookie only.

Warning: Avoid building a scenario in which the user initiates an event that fires an event
API on the same transaction. Because both the quote interface and the APIs act on the
same record simultaneously, such an implementation can result in unpredictable behavior.

Event setting: Validate configured items
The Validate configured items setting on custom header events validates product
configurations in the transaction when the event executes. Validation occurs before event
actions, which execute regardless of the validation outcome.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

319


<!-- page 320 -->
The setting includes a validity period that excludes products validated within a specified time
frame. For example, if the validity period is 15 days and a product was validated 7 days ago, that
product is not revalidated. If a product was validated 20 days ago, it is revalidated.
Two line-level system fields support this function: txn.line.configuration.status
(Boolean) and txn.line.configuration.validatedAt (date).
Related topics
Create an event
Create an event
Create a custom event in ServiceNow Quote Experience to trigger rule groupings, integrations,
and stage transitions based on business-specific requirements in ServiceNow CPQ.

Before you begin

Any rule groupings or integrations to assign to the event must exist before creating the event.
Role required: admin

Procedure
1. Navigate to All > CPQ Administration > Transaction > Events.
2. Select + New Event.
3. In the Name field, enter the name of the new field.
The variable name is set in camel case from the name you enter. For example,
entering Total of Manufacturing Lines produces the variable name
totalOfManufacturingLines. To use a custom variable name, select the pencil icon to
the right of the Variable Name field.
4. Select the event level and then select Save.
◦ Select Transaction for a header-level event that appears as a button at the top of the quote.
◦ Select Transaction Line for a line-level event that appears on individual lines in the quote
lines grid.
The event editor opens. By default, new events have their event access set to No Access.
5. Select Edit Event Access, change the access level to Active, and select Done.
6. Optional: In the Actions area, select + Add New Action and choose either a rule grouping or
an integration to assign to the event.
(Optional) Multiple rule groupings and integrations can be assigned to the same event.
7. Optional: To configure the event to transition the quote to another stage, enable the
Transition toggle and set the transition direction (forward or backward in the stage sequence).
8. Select Save.
The new event appears in the events list at the transaction or transaction line level, depending
on the level chosen.

What to do next

Add the event to the quote layout to make it available as a button to users. For more information,
see Create a quote transaction layout.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

320


<!-- page 321 -->
Quote transaction layouts
Layouts define the quote user interface in ServiceNow Quote Experience, controlling which
fields, events, and UI effects are visible and how the quote is organized for users in ServiceNow
CPQ.
Layouts in ServiceNow Quote Experience retain much of the look and feel of the configuration
experience. Layouts can be managed in the administration interface using the visual layout
editor or directly in YAML. The visual layout editor is selected by default. The option to edit
layouts in JSON is retired in favor of the visual editor.

Layout formats
Layouts can be edited using the visual editor or in YAML. The visual editor provides a graphical
interface for building layouts without editing code. Administrators can toggle to YAML using the
view toggle in the layout subheader. The YAML for each element is also accessible in the Raw
Value section of the element properties. Changes take effect when the layout is saved and the
blueprint is deployed.
If errors exist in the YAML, the Save button is disabled. To identify errors, select the error
messages button in the subheader, or check for red marks in the YAML view .

Layout and stage mapping
A layout's variable name maps it to a stage. To associate a layout with a specific stage, use the
stage variable name as the layout name. A layout named layout maps to any stage that has no
specific layout defined. The text default is appended to all layout variable names.
The following example shows how stages map to layouts when stages are named Draft,
Approved, and Fulfilled, and layouts are named Draft and Layout.
Stage-to-layout mapping example
Stage

Layout used

Draft

draft

Approved

layout

Fulfilled

layout

The Line Detail layout displays details of a selected line in the quote lines grid, opened via the
Line Detail UI effect. Its variable name must end with _linedetail and follows the same
stage mapping convention. For example, a Line Detail layout for the Draft stage must be named
draft_linedetail.

Layout settings
Access layout settings by selecting the gear icon in the layout subheader. The following settings
are available.
Branding
Customizes the quote header appearance.
Currency Display
Sets the currency display style: code, symbol, or neither.
When price is 0, display
Sets the behavior when a price value is zero.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

321


<!-- page 322 -->
When price is undefined, display
Sets the behavior when a price value is undefined.
Allow selecting disabled options
Users can select disabled picklist options. Useful for displaying an explanation
message when a disabled option is selected.
Highlight field changes
Briefly highlights fields when their values are updated by rules or integrations.
Enable this setting when concurrent users are expected or when fields update
frequently.
Hide Header
Hides the header section of the layout.

Layout structure
Layouts are organized using tiers, columnsets, and a line item grid.
Tiers
Tiers are the top-level sections of the layout hierarchy. Use tiers to organize
transaction information into logical groups that are easier to find and understand.
Columnsets, nested tiers, or a line item grid can be placed within a tier. A line
item grid must be the only element in its tier. Tier types include Accordion,
Expandable, Tabs, Vertical tabs, Headings, and Pages. The type and depth of a tier
are configured on the Tier Definition tab.
Columnsets
Columnsets organize fields and events horizontally within a tier. Multiple
columnsets in the same tier arrange content vertically. Fields, images, text, and
buttons can be added within a columnset.
Fields are added to the elements array of a columnset. After adding a field,
additional field properties can be set on the Edit Field Info tab. Changing a field
display type to "text area" enables users to resize the field .
Events are represented as buttons in a columnset. To add an event, add a button
to a columnset and enable the Event Button setting, then select the event from the
Event picklist.
Line item grid
The line item grid displays the product and pricing information for the transaction
lines. By default, the layout editor includes a line item grid with three sections:
• Line item grid header — buttons that appear above the grid at runtime.
• Line item grid column — fields that appear as columns in the grid.
• Line level buttons — buttons that appear on each individual line in the grid.
The following layout properties apply to the line item grid and must be defined in the
main YAML editor. Each property is enabled when its value is true.
• showLineNumbers — enables user-friendly sequential line numbers for visible
lines. Numbering resets when a filter or search is applied.
• supportLongText — enables a popover on a field when the user selects it.
• autoScrollIntoView — automatically scrolls the view to keep the
transaction body and line item grid in sync .
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

322


<!-- page 323 -->
Line numbering options
Three options are available for displaying line numbers in the quote lines grid. The
showLineNumbers layout property is the preferred option for most implementations: it
performs efficiently and has no line limit .
showLineNumbers layout property
Displays sequential line numbers for visible lines (1, 2, 3). Numbers reset when a
filter or search is applied to the grid. No line limit. Use this method when there is no
line limit requirement.
txn.line.orderNumber system field
Displays hierarchical line numbering for all lines — for example, 1, 1.1, 2, 2.1, 2.2, 2.2.1.
Numbers do not reset when a filter or search is applied. Maximum of 2,000 lines.
The field has the same layout properties as other line-level fields and is added in
the lineGrid section of the layout.

Note: To enable this field, submit a request to customer support through the
ServiceNow CPQ Support portal.
txn.line.number system field
Displays sequential line numbering for all lines (1, 2, 3). Numbers do not reset when
a filter or search is applied. Maximum of 2,000 lines. The field has the same layout
properties as other line-level fields and is added in the lineGrid section of the
layout.

Note: To enable this field, submit a request to customer support through the
ServiceNow CPQ Support portal.

Line-level button icons
Line-level event buttons in the line item grid can display an icon from the SLDS Utility library.
Icons must be defined in the YAML, either in the Raw Value section of the line button properties
or in the main YAML editor using the icon property.
Available line-level button icons
Icon value

Description

automate

Hollow gear

buyer_group_qualifier Three people with a check mark
chevrondown

Chevron pointing down

chevronleft

Chevron pointing left

chevronright

Chevron pointing right

chevronup

Chevron pointing up

choice

Option button

clear

White X on solid background

clock

Clock

close

X icon

custom_apps

Wrench

delete

Trash can

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

323


<!-- page 324 -->
Available line-level button icons (continued)
Icon value

Description

down

Triangle pointing down

edit

Pencil

favorite

Star

left

Triangle pointing left

lightning_extension

Lightning bolt and gear

right

Triangle pointing right

question

Question mark

search

Magnifying glass

settings

Solid gear

target_mode

Arrow pointing at center of target

threedots

Three horizontal dots

threedots_vertical

Three vertical dots

Product list search
The Product List Search object defines the runtime UI for the add lines and product search flow.
Properties are configured in three locations.
UI effect button properties
Configure on the button that carries the Product Search UI effect.
• UI Effect Target — how the product search opens (slideout or modal).
• Show Products — adds the Products tab to the search.
• Show Favorites — adds the User Favorites tab to the search.
• Action Location — placement of action buttons on the product search display
(footer, header, or both).
Product List Search object properties
Configure on the Product Search object in the layout.
• Primary Default Sort — up to two sort parameters. Available fields: modified,
created, Name (default), partnerId, productCode, description,
unitPrice, externallyConfigurable. Sort order per parameter: asc or
desc.
• Search on Submit — determines whether search results update as the user types
or only when the user selects Submit.
Field-level properties
Configure on each field in the Product List Search object.
• Column Width — CSS-compatible value to define the column width.
• Alignment — alignment of the column header and values.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

324


<!-- page 325 -->
• Enable Sorting — when enabled, the column can be sorted .
• Enable Long Text Popover — when enabled, displays a popover when the user
selects a value in the field.

UI effects
UI effects add specific functionality to a layout button. Users can customize existing UI effects but
cannot create new ones. When a UI effect and an event are both present on the same button,
the UI effect runs after the event. For full parameter reference, access conditions, and code
examples, see ServiceNow Quote Experience layout UI effects.
The following UI effect types are available.
URL
Opens the associated URL inline, in a modal, in a slideout panel, or in a new tab or
window. Field values can be passed dynamically into the URL using curly braces.
Anchor
Navigates to a specified element ID within the transaction layout. Opens related
parent elements in tabs or an accordion structure.
Product search
Opens the product catalog and starts the Add Products flow. Must be added to a
gridHeaderButtons element. Implicitly runs the upsertLines event.
Line detail
Opens the line detail layout for a selected line. Must be on a line-level button.
Opens in a modal, slideout, or line drawer.
Reconfigure
Opens selected products in the Configurator for reconfiguration. Can be on a
line-level or header-level button. At the header level, requires a selection of lines.
Implicitly runs the upsertLines event.
Add favorite
Opens a window to describe and create a favorite from the selection. Can be on a
line-level or header-level button. At the header level, requires a selection of lines.

Note: To share favorites across users, a tenant setting must be enabled.
Contact customer support to enable favorites sharing.
Manage favorites
Opens the Favorites Manager in a modal, slideout, or inline view.
Refresh session
Checks whether the session has been modified and, if so, refreshes the session ID
and merges changes.
Export lines
Exports to a CSV file all lines that meet the current sort, filter, and column visibility
settings. Must be on a header-level button.
Show tier
Opens the line item grid in full screen when target = fullScreen and
location = lineItems. Can work with any tier; for full screen, set the location
to the tier variable name of the line items.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

325


<!-- page 326 -->
Theming
ServiceNow Quote Experience layouts can be customized with themes by setting properties
in the layout YAML or JSON. Themes are enabled using the Customize Theme tab. For the full
theme property reference, including button, input, label, and header styling, see ServiceNow
Quote Experience layout UI effects.

Stage progress chevron
The Stages Progress Chevron component displays a horizontal chevron bar that shows a
transaction's progression through its stages. It can be defined statically using a fixed stage list
or dynamically using custom picklist fields, and is configured through the layout YAML or JSON.
For configuration options, combination rules, and CSS theming variables, see Stage progress
chevron.

YAML reference snippets
Layout structure:
# Layout version
version: 1
# Layout identifiers
label: Example layout
variableName: default_ExampleLayout
# Tier definitions
tierDef:
- depth: 1
representation: BasicContainer
# Layout
layout:
label: layoutsection
variableName: layoutsection
tiers:
- label: tier1
variableName: tier1
depth: 1
Columnset with fields:
columnSets:
- elements:
- type: field
columnOrder: 1
variableName: txn.opportunity.id
- type: field
columnOrder: 1
variableName: txn.custom.opportunityName
- type: field
classInfo: mw20
columnOrder: 1
variableName: txn.custom.primaryContact
variableName: col1
Field properties:
fields:
- type: Text
label: Custom line field
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

326


<!-- page 327 -->
variableName: txn.line.custom.customText
- type: ReadOnlyText
label: TXN Number
variableName: txn.custom.tXNNumber
Line item grid with line-level and header buttons:
- depth: 1
label: Line Items
lineGrid:
columns:
- order: 1
variableName: txn.line.product.name
- order: 2
variableName: txn.line.product.partnerId
showLineNumbers: true
lineLevelButtons:
- icon: settings
label: Line Details
uiEffect:
type: lineDetail
target: slideout
variableName: reconfig
- event: cloneLine
label: Clone Lines
variableName: cloneLine
- label: Add To Favorites
uiEffect:
type: addFavorite
variableName: addFavorites
gridHeaderButtons:
- label: Add Lines
uiEffect:
type: productSearch
target: slideout
options:
products: true
favorites: true
variableName: productSearch
- label: Reconfigure Lines
uiEffect:
type: reconfigure
target: slideout
variableName: reconfig
autoScrollIntoView: true
variableName: lineItems
Product list search:
productList:
columns:
- label: Product ID
sortable: true
variableName: id
- label: Product Name
variableName: name
- label: Product description
variableName: description
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

327


<!-- page 328 -->
supportLongText: true
- label: Price
variableName: unitPrice
defaultSort:
- externallyConfigurable,desc
- name
Related topics
Create a quote transaction layout
ServiceNow Quote Experience layout UI effects
Stage progress chevron
Create a quote transaction layout
Create a layout in ServiceNow Quote Experience to define the quote interface for a stage in
ServiceNow CPQ.

Before you begin

The stages the layout maps to must exist. For more information, see .
Role required: admin

About this task

A layout's variable name determines which stage it is associated with. The variable name cannot
be changed after the layout is saved — to change it, delete the layout and create a new one. An
existing layout can be copied using the Save As function in the layout editor. For a description of
layout elements and their properties, see Quote transaction layouts.

Procedure
1. Navigate to All > CPQ Administration > Transaction.
2. Select Layouts in the left menu, then select + Add Layout.
3. In the Name field, enter the layout name.
To associate the layout with a specific stage, enter the stage variable name as the layout name.
A layout named layout applies to all stages with no specific layout assigned. To create a Line
Detail layout for a stage, append _linedetail to the stage variable name — for example,
draft_linedetail.
The visual layout editor opens with a default layout containing the main tier, a line item grid,
and a product search capability.
4. Optional: Add tiers to the layout to organize the quote header sections.
Select the tier type and depth on the Tier Definition tab. Tier types include Accordion,
Expandable, Tabs, Vertical tabs, Headings, and Pages. A line item grid must be the only
element in its tier.
5. Optional: Add columnsets within tiers to arrange fields and events horizontally.
Fields and events are arranged vertically using multiple columnsets in the same tier. Add
fields, images, text, and buttons within each columnset.
6. Optional: To add an event button in a columnset, use substeps to: add a button, enable the
Event Button setting, and select the event from the Event picklist.
7. Optional: In the line item grid header section, add buttons to appear above the grid at runtime.
To add a product search button, add a button and set its UI effect to Product Search. Configure
target as a slideout or modal, Show Products, Show Favorites, and Action Location in the
button properties. For more information about UI effect properties, see ServiceNow Quote
Experience layout UI effects.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

328


<!-- page 329 -->
8. Optional: In the line item grid column section, add, remove, and order the fields that appear as
columns in the grid.
For each column field, set Column Width, Alignment, Enable Sorting, and Enable Long Text
Popover in the field properties.
9. Optional: In the line level buttons section, add buttons to appear on each individual line in the
grid.
To add an icon to a line-level button, define the icon property in YAML using a value from the
SLDS Utility library. For available icon values, see Quote transaction layouts.
10. Optional: To enable line numbering, switch to YAML view and add the showLineNumbers:
true property to the line item grid definition.
For a comparison of line numbering options including txn.line.orderNumber and
txn.line.number system fields, see Quote transaction layouts.
11. Optional: Select the gear icon in the layout subheader and configure the available layout-level
settings.
Settings include Currency Display, Allow selecting disabled options, Highlight field
changes, and Hide Header.
12. Optional: To customize the visual appearance of the layout, open the Customize Theme tab
and configure theme properties.
For the full theme property reference, see ServiceNow Quote Experience layout UI effects.
13. Optional: Select the view toggle in the subheader to switch to YAML view and edit the layout
directly.
If errors exist in the YAML, the Save button is disabled. Select the error messages button in the
subheader to identify errors, or check the YAML editor for red error indicators. YAML reference
snippets are available in Quote transaction layouts.
14. Select Save.
The layout is saved. The blueprint must be deployed for the layout to take effect at runtime.

What to do next

Deploy the blueprint to apply the updated layout at runtime.
ServiceNow Quote Experience layout UI effects
Reference for UI effect types, parameters, access conditions, and YAML and JSON code
examples for configuring button behavior in ServiceNow Quote Experience layouts in
ServiceNow CPQ.

UI effects overview
UI effects are layout elements that add specific functionality to a button. Administrators can
customize existing UI effects but can't create new ones. When a UI effect and an event are both
present on the same button, the UI effect runs after the event.
A UI effect is defined by a combination of parameters. All UI effects have a type. Some also
have a target, location, or options.

UI effect parameters
UI effect parameter values
Parameter

Possible values

type

url, anchor, productSearch, lineDetail, reconfigure,
addFavorite, manageFavorites, refreshSession, showTier,
exportLines

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

329


<!-- page 330 -->
UI effect parameter values (continued)
Parameter

Possible values

target

inline, tab, window, modal, slideout, lineDrawer, fullScreen

location A URL or an element ID in the layout.
options

Depends on the UI effect type. See the following type reference.

Note: Layout JSON is not validated and some parameter combinations aren't supported.
Unsupported combinations may fail without indicating errors.

UI effect type reference
url
Opens a URL inline, in a tab, in a window, or in a modal or slideout iframe. Requires
a location value containing the URL. Use curly braces to pass field values
dynamically into the URL — for example, https://example.com/search?
q={txn.custom.searchTerm}. Common use cases include passing values to
output documents or opening record pages in external systems.
anchor
Navigates to a specified element ID in the layout. Focuses or scrolls to the element
and opens related parent elements in tabs or an accordion structure. Set target
to inline. Requires a location value containing the element ID.
productSearch
Opens the product catalog and starts the Add Products flow. Implicitly runs the
upsertLines event. Must be added to the gridHeaderButtons element.
Target options: slideout or modal.
Options:
• products: true — shows the Products tab.
• favorites: true — shows the User Favorites tab.
• actionLocation: footer | header | both — placement of the
action buttons (Add Line, Configure, Done Configuring, Cancel). Defaults to
footer if not specified.
lineDetail
Opens the line detail layout for a selected line. Must be on a line-level button. Target
options: modal, slideout, lineDrawer.
reconfigure
Opens selected products in the Configurator for reconfiguration. Implicitly
runs the upsertLines event. Can be on a line-level or header-level button.
At the header level, requires a selection of lines. Target options: modal,
slideout, lineDrawer. Supports the same actionLocation option as
productSearch.
addFavorite
Opens a window to describe and create a favorite from the line selection. Can be on
a line-level or header-level button. At the header level, requires a selection of lines.
No other properties are supported.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

330


<!-- page 331 -->
Note: To share favorites across users, a tenant setting must be enabled.
Contact customer support to enable favorites sharing.
manageFavorites
Opens the Favorites Manager. Target options: modal, slideout, inline.
refreshSession
Checks whether the session has been modified and, if so, refreshes the session ID
and merges changes. No additional parameters required.
exportLines
Exports to a CSV file all lines that meet the current sort, filter, and column visibility
settings. Must be on a header-level button. No additional parameters required.
showTier
Opens a tier in full screen. To open the line item grid in full screen, set target:
fullScreen and location to the tier variable name of the line items (typically
lineItems). Works with any tier.

Implicit event calls
Some UI effects run a related event automatically. The productSearch and reconfigure UI
effects both implicitly call the upsertLines event when triggered.

Access conditions
Access to a UI effect can't be controlled in the same way as access to an event. There are no UI
settings comparable to the event access settings for UI effects directly.
However, access to a UI effect can be changed by its context or by related events.
• When a UI effect has an implicit event associated with it, the access conditions of that
event determine the access conditions of the button and UI effect. To restrict when a
productSearch UI effect can be triggered, apply those restrictions to the upsertLines
event.
• A reconfigure button in the line item grid is hidden on lines that aren't configurable. At the
header level, it is enabled only when every selected line is configurable.
• When a button has both an event and a UI effect, access is determined by the intersection of
their individual access settings. If either the event or the UI effect is disabled or hidden, the
entire button is disabled or hidden.

Code examples
Product search (YAML):
type: button
variableName: addLines
label: Add Lines
uiEffect:
type: productSearch
target: slideout
Product search with favorites enabled (YAML):
type: button
variableName: addLines
label: Add Lines
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

331


<!-- page 332 -->
uiEffect:
type: productSearch
target: slideout
options:
products: true
favorites: true
Line details drawer (YAML):
lineLevelButtons:
- icon: settings
label: reconfig
uiEffect:
type: lineDetail
target: lineDrawer
variableName: reconfig
Reconfigure (YAML):
lineLevelButtons:
- icon: settings
label: Reconfigure
uiEffect:
type: reconfigure
target: modal
variableName: reconfig
Open URL in new tab with dynamic field value (YAML):
columnorder: 1
label: Google it
type: event
variableName: LinkToSite
uieffect:
type: url
target: tab
location: "https://google.com/search?q={txn.custom.search}"
Add to favorites (YAML):
label: Add To Favorites
uiEffect:
type: addFavorite
variableName: addFavorites
Manage favorites (YAML):
label: Manage Favorites
uiEffect:
type: manageFavorites
target: slideout
variableName: manageFavorites
Refresh session (YAML):
type: button
variableName: Refresh
label: Refresh
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

332


<!-- page 333 -->
uiEffect:
type: refreshSession
Export lines (YAML):
label: Export Lines
uiEffect:
type: exportLines
variableName: exportLines
Related topics
Quote transaction layouts
Create a quote transaction layout
Stage progress chevron
Reference for configuring the Stages Progress Chevron component in ServiceNow Quote
Experience layouts, including static and dynamic configuration options, combination rules, and
CSS custom property theming in ServiceNow CPQ.

Purpose
The Stages Progress Chevron component displays a horizontal chevron bar that visually
represents a transaction's progression through its quote lifecycle stages. The component is
placed at the root level of the layout YAML or JSON, alongside header or tierDef. It can be
defined statically, dynamically, or as a combination of both methods.

Static configuration
Use static configuration to define a fixed list of stages for the chevron. Each stage requires a
value and a display label.
YAML:
stageProgress:
stageList:
- value: draft
label: Draft
- value: stage2
label: Stage 2
# add more stages as needed
currentStage: draft
stageList
Defines each stage's value and display label in the chevron.
currentStage
Highlights the active stage in the chevron. If omitted, defaults to txn.stage,
which allows the same layout to be used across multiple stages.

Dynamic configuration
Use dynamic (picklist-based) configuration to populate the chevron from custom transaction
fields. This method supports exclusion rules to hide or disable specific stages and determination
rules to set the current stage value.
YAML:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

333


<!-- page 334 -->
stageProgress:
stageListField: txn.custom.stageList
currentStageField: txn.custom.stageList
stageListField
Specifies the custom field that provides the list of available stages.
currentStageField
Specifies the custom field that contains the current stage value. Determination rules
are useful when multiple stages should display as a single chevron step.

Combination and fallback rules
Static and dynamic configurations can be mixed. The following rules apply when both are
present or when values are omitted.
• A static stageList can be combined with a dynamic currentStageField.
• If neither stageList nor stageListField is defined, nothing displays in the chevron.
• If neither currentStage nor currentStageField is defined, txn.stage is used by
default.
• If both a static and a dynamic version of the same property are present, the dynamic version
takes precedence.

CSS custom property theming
The stage progress chevron supports theming using CSS custom properties. The following table
lists the relevant variables. Inspect the element in your browser to explore additional custom
properties.
CSS custom properties for the stage progress chevron
Variable

Description

--lgk-ProgressStep-chevron-size

Overall chevron size.

--lgk-ProgressStep-chevron-width

Fixed width for each chevron.

--lgk-ProgressStep-chevron-minWidth Minimum width per chevron.
--lgk-ProgressStep-chevron-padding

Padding inside each chevron.

--lgk-ProgressStep-chevrondisabled-opacity

Opacity for disabled or inactive chevrons.

--lgk-ProgressStep-incompletebackgroundColor

Background color for incomplete steps.

--lgk-ProgressStep-incompletechevron-color

Chevron icon color for incomplete steps.

--lgk-ProgressStep-currentbackgroundColor

Background color for the current step.

--lgk-ProgressStep-current-chevron- Chevron icon color for the current step.
color
--lgk-ProgressStep-chevron-labelfontSize

Font size for stage labels in the chevron.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

334


<!-- page 335 -->
CSS custom properties for the stage progress chevron (continued)
Variable

Description

--lgk-ProgressStep-chevron-labelfontWeight

Font weight for stage labels in the
chevron.

Related topics
Quote transaction layouts
Create a quote transaction layout
ServiceNow Quote Experience layout UI effects
Quote transaction views
Views control how users with specific personas can view and modify fields and events at each
stage of a quote in ServiceNow CPQ.
Views allow ServiceNow Quote Experience administrators to control how users with various
personas can view and modify fields and events at various stages of a transaction. A persona
can be assigned to only one view. The Views list page in the administration interface shows all
configured views. Selecting a view's name displays its defined access privileges.

Field access
The Fields tab in a view shows the field access privileges for that view. The leftmost column
lists all field names at both transaction level and transaction line level. Stages appear in the top
row, enabling per-stage access to be defined for each field. Use the Filter field to filter by field
name or variable name, and use the adjacent menu to show all fields, transaction-level only, or
transaction line-level only.
Field access values are:
• Editable (Read/Write)
• Read Only
• No Access
Persona assignment is managed by selecting the pencil icon next to Associated Personas. A
persona can only be assigned to one view.

Note: Field and event access values cannot be modified in the administration interface.
They can only be modified by importing a blueprints.zip file containing updated CSV
files.

Event access
The Events tab shows the access privileges for each event in the blueprint. As with fields, event
access is defined per stage. Event access values are Active or No Access.

View configuration files
Views are created and modified using three files included in the blueprints.zip file.
Fields CSV file
Defines the field access rights for each transaction-level and transaction line-level
field at each stage. The file is located in the blueprints/default/views
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

335


<!-- page 336 -->
folder of the blueprint ZIP file. Modified values are entered without an asterisk (*);
original values include an asterisk.
Events CSV file
Defines the event access rights for each transaction-level and line-level event
at each stage. Located in the same blueprints/default/views folder.
Modified values are entered without an asterisk.
Views YAML file
Defines the view name, variable name, the variable names of any associated
personas, and the locations of the field and event CSV files within the blueprint ZIP.
If multiple views are defined, the information for each view is repeated in this file.
Create a transaction view
Create or modify a ServiceNow Quote Experience view by editing the fields CSV, events CSV, and
views YAML files and importing them through the blueprint ZIP in ServiceNow CPQ.

Before you begin

The personas to associate with the view must exist. For more information, see Create a
transaction persona.
Access to the Matrix Loader for blueprint import is required.
Role required: admin

About this task

View field and event access values cannot be modified in the ServiceNow Quote Experience
administration interface. All changes are made by editing the CSV and YAML files in the blueprint
ZIP and importing the updated file. ServiceNow Quote Experience provides a default view file set
as a starting point for new views.

Procedure
1. Obtain a copy of the default view files from the blueprints/default/views folder of
your existing blueprint ZIP.
2. Edit the fields CSV file to set the access level for each field at each stage.
Enter modified values without an asterisk (*). Leave unmodified values with their asterisk.
Access level values are Editable, Read Only, and No Access.
3. Edit the events CSV file to set the access level for each event at each stage.
Access level values for events are Active and No Access. Enter modified values without an
asterisk.
4. Edit the views YAML file to define the view name, variable name, the variable names of the
personas assigned to the view, and the locations of the fields and events CSV files.
5. Place the updated files in the blueprints/default/views folder of the blueprint ZIP
file.
6. Import the updated blueprint ZIP file using the Matrix Loader.
7. Deploy the blueprint to apply the view changes.
The updated view takes effect when the blueprint deployment completes.
Quote transaction integrations
Integrations connect ServiceNow Quote Experience to external data sources, enabling the
exchange of data between quotes and third-party systems such as Salesforce in ServiceNow
CPQ.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

336


<!-- page 337 -->
ServiceNow Quote Experience integrations define the information needed to connect to an
external data source, extract data from it, and map that data into ServiceNow Quote Experience
fields. Integrations can also extract data from ServiceNow Quote Experience and send it to a
third-party environment. Before an integration can be defined, the administrator must first create
a connection to the target environment.

Connection types
ServiceNow Quote Experience supports two connection types.
Salesforce
Connects to a Salesforce environment. No additional authentication details are
required — ServiceNow CPQ handles authentication and knows the required
endpoints automatically.
External
Connects to any third-party site. Supported authentication methods are None,
Bearer Token, and OAuth. For Bearer Token, provide the authentication token. For
OAuth, provide the Client ID, Client Secret, and Token URL. Also requires the Host
URL, the Path to the endpoint, and any additional headers required by the thirdparty site.

Integration settings
When creating an integration, the following settings are available in the Integration Editor.
HTTP Method
The operation to perform: GET, POST, PATCH, PUT, or DELETE, depending on the
endpoint being used.
Line Item Details to Include
Defines which line items the integration works with: Selected Lines, Modified Lines,
or Deleted Lines.
Additional Path
The query command to execute on the third-party site. For Salesforce connections,
this is typically a SOQL query. For other platforms, it may be a standard SQL query.
Timeout
The time in milliseconds that the request waits for a response before declaring an
error.
Async
When enabled, runs the query asynchronously in the background so the user can
continue working while the integration executes.
Headers
Static text or ServiceNow Quote Experience header field values can be included in
headers using handlebar syntax: {{txn.fieldname}}. Static key-value pairs
can also be set, or both methods can be combined.

Transformation template
The transformation template defines the mapping between third-party data and ServiceNow
CPQ fields. It uses JSON with Mustache (handlebar) syntax for dynamic field extraction. The
following example maps Salesforce fields to ServiceNow Quote Experience fields.
{
"fields": [
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

337


<!-- page 338 -->
{
"variableName": "txn.custom.tXNNumber",
"value": "{{#each records}}{{Name}}{{/each}}"
},
{
"variableName": "txn.opportunity.id",
"value": "{{#each
records}}{{LGK__OpportunityId__c}}{{/each}}"
},
{
"variableName": "txn.custom.primaryContact",
"value": "{{#each records}}{{Contact.FirstName}}{{/each}}"
}
]
}
Use the Sample Return Data and Transformation Result areas to test and troubleshoot an
integration. Paste the query response from a tool such as Postman into the Sample Return Data
area and select Run Transformation to verify that the mapping produces the expected output.
Create a connection for ServiceNow Quote Experience calls
Add a connection in ServiceNow CPQ to define the host, path, and authentication credentials
used when ServiceNow Quote Experience calls an external system during a transaction.

Before you begin

Role required: admin

About this task

Connections are used in transaction rules only. Each connection stores the host URL, an optional
path, and authentication credentials. When you configure an integration in ServiceNow Quote
Experience, you select a connection and ServiceNow CPQ uses the stored credentials to
authenticate outbound requests during a transaction.
To call an external system from a configuration rule instead, configure an external connection. For
more information, see Set up External connections for configuration rules.
The following authentication types are available: bearer token, OAuth client credentials, and JWT
client credentials.

Procedure
1. Navigate to All > CPQ Administration > Utilities > Connections.
2. Select +New to create a new connection.
3. In the Name field, enter a display name for the connection.
4. In the Host field, enter the base URL of the external system you want to connect to.
5. In the Variable name field, enter a unique system identifier for the connection.
This value must be unique across all connections in your instance.
6. In the Path field, enter the path to append to the host URL for the target endpoint.
7. In the Description field, enter additional information about the connection.
8. In the Integration type field, select External.
9. In the Authentication type field, select the credential method that the external system
requires, then complete the fields for that authentication type.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

338


<!-- page 339 -->
Authentication type

Fields to complete

Bearer token

In the Authentication token field, enter the to­
ken used to authenticate outbound requests.
◦ Client ID: the client identifier issued by the
external system.
◦ Client secret: the credential used with the
client ID to obtain an access token.

OAuth client credentials

◦ Token URL: the URL on the external system
where an access token is requested.
◦ Scope (optional): the permissions granted
to the token on the external system, if re­
quired.
◦ Client ID: the client identifier issued by the
external system.
◦ Private key: the private key used to sign
the JWT assertion.

JWT client credentials

◦ Token URL: the URL on the external system
where an access token is requested using
the signed JWT.
◦ Scope (optional): the permissions granted
to the token by the external system, if re­
quired.

10. Optional: In the Additional headers field, enter any HTTP headers to include in outbound
requests.
(Optional) Enter one header per line. Use quoted keys and values in the following format:
"header-name" "header-value"
For example:
"x-api-version" "2"
"x-tenant-id" "acme-corp"
11. Select Save.

Result

The connection is saved and available for selection when configuring integrations.
Related topics
Configuring OAuth client credentials with JWT on ServiceNow
Create a ServiceNow Quote Experience integration
Create an integration in ServiceNow Quote Experience to define the connection, settings, and
field mapping that exchanges data between a quote and an external system in ServiceNow CPQ.

Before you begin

A connection to the target environment must exist before you create an integration. For more
information, see Create a connection for ServiceNow Quote Experience calls.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

339


<!-- page 340 -->
Role required: admin

About this task

Integrations define how ServiceNow Quote Experience exchanges data with external systems.
Each integration specifies the HTTP operation, which lines to include, how to authenticate via
a connection, and how to map external data to ServiceNow CPQ fields using a transformation
template. Integrations are assigned to stages and events to trigger them during the quote
lifecycle.

Procedure
1. Navigate to All > CPQ Administration > Transactions > Integrations
2. Select + Add Integration.
3. Enter a name and verify the variable name, then select Save.
The variable name is set in camel case from the name you enter. To use a custom variable
name, select the pencil icon to the right of the Variable Name field before saving.
The Integration Editor opens.
Configure integration settings
4. In the HTTP Method field, select the operation to perform on the third-party endpoint.
◦ Select GET to retrieve data from the external system.
◦ Select POST to send new data to the external system.
◦ Select PATCH to partially update a record on the external system.
◦ Select PUT to replace a record on the external system.
◦ Select DELETE to remove a record on the external system.
5. In the Line Item Details to Include field, select which quote lines the integration works with.
◦ Select Selected Lines to operate on the lines the user has selected.
◦ Select Modified Lines to operate on lines that have changed in the current session.
◦ Select Deleted Lines to operate on lines that have been removed from the quote.
6. In the Additional Path field, enter the query command to execute on the third-party site.
For Salesforce connections, this is typically a SOQL query. For other platforms, it may be a
standard SQL query.
7. In the Timeout field, enter the number of milliseconds the request waits for a response before
declaring an error.
8. Optional: Enable the Async toggle to run the integration in the background so the user can
continue working while the request executes.
9. Optional: In the Headers area, configure the headers to include with the request.
(Optional) Three approaches are available and can be combined.
◦ ServiceNow Quote Experience field values — Reference transaction-level field values
in a header using handlebar (Mustache) syntax: {{txn.fieldname}}. For example,
{{txn.account.id}} passes the account ID from the quote header into the request
header.
◦ Static key-value pairs — Enter fixed header keys and values directly, such as an
authorization token or a content type override.
◦ Combined — Mix static values and field references in the same header configuration.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

340


<!-- page 341 -->
10. In the connection selector, choose the connection to the target environment from the list of
previously created connections.
Connections are created in the Utilities area. If the required connection does not appear,
create it first. For more information, see Create a connection for ServiceNow Quote Experience
calls.
Define the transformation template
11. In the Transformation Template area, enter the JSON that maps external data to ServiceNow
CPQ fields, or maps ServiceNow CPQ data to external system fields.
The template uses JSON with Mustache (handlebar) syntax to extract values from the external
response. Each object in the fields array contains a variableName (the ServiceNow CPQ
field that receives the data) and a value (the expression that identifies the external field to
extract from). Use {{#each records}} and {{/each}} to iterate over records in the
query response.
The following example maps three Salesforce fields to ServiceNow CPQ transaction fields.
{
"fields": [
{
"variableName": "txn.custom.tXNNumber",
"value": "{{#each records}}{{Name}}{{/each}}"
},
{
"variableName": "txn.opportunity.id",
"value": "{{#each
records}}{{LGK__OpportunityId__c}}{{/each}}"
},
{
"variableName": "txn.custom.primaryContact",
"value": "{{#each
records}}{{Contact.FirstName}}{{/each}}"
}
]
}
In this example, each variableName is a ServiceNow CPQ field that receives the extracted
value. The {{#each records}} / {{/each}} block iterates over each record in the
query response and extracts the named Salesforce field.
12. Optional: To verify the transformation template before saving, paste a sample query response
into the Sample Return Data area, then select Run Transformation below the Transformation
Template area.
(Optional) To obtain sample response data, run the same query in a tool such as Postman
where you can view and copy the full response, then paste it into the Sample Return Data
area.
The query response data runs through the transformation template and the mapped output is
displayed in the Transformation Result area. If the result does not match the expected field
values, review the template syntax and field variable names.
13. Select Save.
The integration is saved and available to assign to stages and events.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

341


<!-- page 342 -->
What to do next

Assign the integration to an event or a stage to trigger it during the quote lifecycle.
• To assign to an event, see Create an event.
• To assign to a stage, see .
Quote transaction personas
Personas define distinct user types in the quoting experience, controlling what users can view
and edit on a quote at each stage in ServiceNow CPQ.
ServiceNow Quote Experience uses personas to represent the distinct roles found in a sales
organization, such as a sales representative or a sales manager. Each persona has customized
access to data — controlling what users with that persona can view and edit and how the layout
appears at each stage of the quote lifecycle.

Persona behavior
A persona is assigned to a view, which defines the field and event access privileges for users
with that persona at each stage. A user account can be assigned to only one persona. Personas
are assigned to views, and a persona can only be assigned to one view.

Personas and blueprints
Personas aren't part of the ServiceNow Quote Experience blueprint. They are not included in
the blueprint export file. When a blueprint is migrated to a new environment, personas must be
recreated in that environment.

User access prerequisite
To assign a user account to a persona, the user must first be created using the User Access
function in Utilities. User accounts that aren't in the User Access list can't be assigned to a
persona.
Create a transaction persona
Create a persona in ServiceNow Quote Experience to define a user type and assign user
accounts to it in ServiceNow CPQ.

Before you begin

User accounts to assign to the persona must be created in the User Access function in Utilities
before they can be assigned to a persona.
Role required: admin

Procedure
1. Navigate to All > CPQ Administration > Transaction > Personas.
2. Select + New Persona.
3. In the Name field, enter the name of the new persona.
The name is mirrored in the Variable Name field in camel case with spaces and special
characters removed. For example, entering Eastern Sales Manager produces the
variable name easternSalesManager. To use a custom variable name, select the pencil
icon to the right of the Variable Name field.
4. Select Save.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

342


<!-- page 343 -->
5. Select + Associate User to assign user accounts to the persona.
The Associate Users control appears, listing user accounts eligible for assignment.
6. Select the check box next to each user account to assign, then select Done.
Each user account can be assigned to only one persona in ServiceNow Quote Experience.
7. When prompted to confirm the assignment, select Confirm.
The assigned user accounts appear in the Username list for the persona. To see the new
persona in the Personas list, select Personas in the admin menu.

What to do next

Assign the persona to a view to define its field and event access at each stage. For more
information, see Create a transaction view.
Advanced product filtering for quotes
Advanced product filtering dynamically controls which products appear in the quote catalog
based on admin-defined business rules and transaction context in ServiceNow CPQ.
Advanced product filtering enables administrators to dynamically filter the product catalog
using business rules. Filtering logic runs during the Add Lines operation in ServiceNow Quote
Experience. The feature supports real-time data synchronization from managed tables and
maintains sub-second search performance even with catalogs of more than a million products.

Use cases
Advanced product filtering is useful when catalog visibility must be controlled based on factors
such as:
• Country, region, or compliance constraints
• Product availability or configuration status
• Transaction-specific input fields, such as customer segment or deal type

Key features
Advanced product filtering features
Feature

Description

Advanced filter rule search

Contextual product filtering with sub-second results.

Real-time data sync

Managed table and rule changes take effect immediately
without redeployment.

Rule-based filtering engine

Include and exclude products using dynamic logic.

No-code admin experience

UI-based rule builder with column mapping and conditions.

Catalog scale

Performance maintained with more than one million products.

Prerequisites
The following must be enabled before using advanced product filtering.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

343


<!-- page 344 -->
• The tenant setting enableCatalogFilter must be set to ON. Submit a request to DevOps
to enable this setting.
• The ServiceNow Quote Experience module must be enabled to ensure the Add Lines
operation uses the defined product filter rules.

Managed table data synchronization
Product filter rules that reference managed tables do not need to be redeployed
when only the managed table data changes. This behavior is enabled when the
filterrules.scheduler.enable = true setting is active. The system syncs updated
managed table data every 15 minutes, making the latest information available during product
filtering.

Note: Any change made to a product filter rule itself — not just the referenced table data —
must be redeployed for it to take effect.
Create a product filter rule
Create a product filter rule in ServiceNow CPQ to dynamically include or exclude products from
the quote catalog based on managed table data and transaction context.

Before you begin

The enableCatalogFilter tenant setting must be enabled. Submit a request to DevOps to
enable this setting.
A managed table containing the reference data for filtering must exist. For more information, see
the managed table configuration steps in Advanced product filtering for quotes.
Role required: admin

Procedure
1. Navigate to Products > Product Filter Rules.
2. Before creating a filter rule, define or verify the managed table that contains the reference data
for filtering.
a. Navigate to the Tables tab in ServiceNow CPQ Admin.
b. Create or upload a table containing the business logic, such as region-to-product mapping
or availability flags.
c. Verify that the table includes at least one column that can be mapped to the product catalog,
such as Region, SKU, or Product Family.
d. Deploy the table to make it available for use in filter rules.
3. Select Create New Rule.
4. Enter a Rule Name, a Variable Name, and a Description for the rule.
5. In the Reference Table field, select the managed table that contains the filtering reference
data.
6. Define the filter conditions using fields from the managed table and transaction data to specify
when the rule applies.
7. Map the columns by matching the reference table columns to the corresponding product
catalog columns.
For example, map the Region column in the managed table to the Region column in the
product catalog.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

344


<!-- page 345 -->
8. Set the rule behavior.
◦ Select Include to show only products that match the filter condition.
◦ Select Exclude to hide products that match the filter condition.
9. Select Save to store the rule.
10. Toggle the Active button to mark the rule as ready for deployment.
11. Select Deploy to apply the rule.
The rule is active. Only products matching the filter logic are displayed when users open the
catalog from within a quote.
ServiceNow Quote Experience: Transaction Access Control
ServiceNow Quote Experience controls access at two levels: record access, which determines
who can view or modify a quote, and field access, which controls the fields a user sees within
a quote. Record access can be managed by your CRM or natively within ServiceNow Quote
Experience.
ServiceNow Quote Experience supports two approaches to record access control:
• CRM-managed access control, where the CRM system determines which records a user can
access.
• Quote-managed access control, where access is controlled through functionality native
to ServiceNow Quote Experience. This approach is recommended only for headless
implementations.
The appropriate model depends on your implementation architecture and on which system acts
as the source of truth for user access.

Field access control
Regardless of the record-level approach you use, field access is managed in CPQ Administration
through the Views and Personas features of the quote blueprint. For more information, see Quote
transaction views and Quote transaction personas.

CRM-managed access control
When ServiceNow Quote Experience is deployed with Sales CRM, record access is managed
through standard ServiceNow AI Platform table access controls (ACLs). The access controls on
the quote tables determine whether a user can create, read, update, or delete a quote record,
and ServiceNow Quote Experience validates access based on those permissions.
For more information on the roles that govern quote access, see Components Installed with
Quote Management.

Note: On the opportunity record, the fields shown in the quote list are governed by the
quote table ACLs.

Quote-managed access control
In quote-managed access control, access is governed by functionality native to ServiceNow
Quote Experience rather than by the CRM. This approach improves security and compliance
by giving you precise control over who can view and edit each quote, and is recommended
for headless implementations, where it can limit a list of quotes to those the current user is
authorized to access.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

345


<!-- page 346 -->
Quote-managed access control is governed by a tenant setting and is turned off by default.
When the setting is inactive, all users can access all quotes.

Access levels
When quote-managed access control is active, each user has one of the following access levels.
Admin
• Can view and edit all quotes.
• Can grant full access to other users.
• Can revoke full access, but not owner status.
• Cannot be removed.
Owner
• Assigned to the creator of a quote.
• Can view and edit the owned quote.
• Can grant or revoke full access.
• Cannot be removed if they are the last owner.
Full access
• Can view and edit specified quotes.
• Can grant or revoke full access for other users.

Manage quote-managed access
You manage quote-managed access from the runtime UI.
Any user with access can grant or remove access for other users. However, admins and owners
cannot have their access removed. When a user without access tries to open a restricted quote,
an error is displayed.
When quote-managed access control is enabled on an instance that already contains quotes,
the creator of each quote automatically becomes its owner, and any user who has edited a quote
receives full access.

API support
You can grant or revoke quote-managed access through API calls. You can also use the API to
retrieve the list of quotes a user can access and to return a history of users who were granted or
revoked access. For a Postman collection of ServiceNow Quote Experience access control API
calls, contact support.
Quote Experience metrics API
Reference for the Quote Experience metrics API, including query parameters, default behavior,
and metric definitions for views, session time, and stage time in ServiceNow CPQ.

Overview of metrics
The Quote Experience metrics API retrieves usage data on transactions, including views by
user, session time by user, and stage time. Administrators and implementers use this API to
understand how users interact with quotes and how long transactions spend at each stage.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

346


<!-- page 347 -->
You can query a single transaction by providing its transaction ID. If no transaction ID is provided,
the API returns data for all transactions within the specified time period.

Endpoint
GET {{baseUrl}}/api/txn/metrics/v1/overview

Query parameters
Metrics API query parameters
Parameter

Type

Required

Description

txnId

String

No

The ID of the transaction to query. When
provided, the response contains metrics
for that transaction only. When omitted,
the response contains metrics for all
transactions in the specified time period.

days

Integer

No

The number of days to include in the
query, counting back from toDate. The
queried period is (toDate - days)
→ toDate. Defaults to 30 when not
specified.

toDate

Timestamp

No

The end date and time for the query
period in UTC format — for example,
2025-09-18T15:28:04Z. When
omitted, the current time is used.

Required headers
Request headers
Header

Value

X-Logik-Customer-Id

Your tenant ID.

Content-Type

application/json

Example call
curl -X GET \
"{{baseUrl}}/api/txn/metrics/v1/overview?txnId={{transactionId}
}&days=30&toDate=2025-09-18T15:28:04Z" \
-H "X-Logik-Customer-Id: <tenant-id>" \
-H "Content-Type: application/json"

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

347


<!-- page 348 -->
Metric definitions
ServiceNow Quote Experience metrics
Metric

Description

Unit

Notes

Views by user

The total number of
sessions for a user in the
specified time period.

Count

When filtered to a single transaction
using txnId, sessions are counted
for that transaction only.

Session time by
user

The average time per
session for each user in
the specified time period.

Minutes

Sessions are calculated using
activity windows based on common
events, including transaction created
or edited, stage enter or exit, upsert
lines, and custom transaction events.
A session ends five minutes after the
last recorded event.
When filtered to a single transaction,
the total time for a user can be
calculated as: views per user
× session time per user.

Stage time

The average time a
transaction spends in a
specified stage.

Minutes When filtered to a single transaction,
the metric reflects the time that
specific transaction spent in the
specified stage.

Related topics
ServiceNow Quote Experience runtime API calls
ServiceNow Quote Experience runtime API calls
Reference for the runtime APIs used in the ServiceNow Quote Experience, including their
purposes, responses, and a Postman collection for testing in ServiceNow CPQ.

API overview
ServiceNow CPQ APIs are divided into two categories: runtime APIs and admin APIs. Runtime
APIs are the same APIs used in the runtime quote experience. The following table lists the
runtime APIs for ServiceNow Quote Experience.
ServiceNow Quote Experience runtime APIs
API action

Purpose

Response

Initialize a session

Initializes a session to establish a
context for executing transaction
events, managing state, and
processing subsequent API calls. Can
initialize for an existing transaction.
If no transaction is specified, a new
transaction is created.

Returns a session ID,
a transaction ID, and
transaction information.

Delete a session

Deletes a session to securely end user
activity, clear session-specific data,
and free up system resources.

Session is deleted. No
information is returned.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

348


<!-- page 349 -->
ServiceNow Quote Experience runtime APIs (continued)
API action

Purpose

Response

Create a transaction

Creates a transaction, providing the
object to manage the transaction
lifecycle, configure and add products,
and determine pricing.

Returns a transaction ID and
transaction information.

Run events on a
transaction

Triggers a specified system or custom
Varies by event.
event on a transaction to execute
predefined logic or workflows, such as
editing field values, initiating approvals,
versioning transactions, and validating
configurations.

Add products to a
transaction (upsert)

Adds one or more products to a
transaction, enabling dynamic
configuration and pricing updates
based on the product's attributes.

Get a list of
transactions

Retrieves a list of transactions,
A list of transactions
enabling users to view, manage, or take with transaction IDs and
action on existing transactions.
metadata.

Get details of a
transaction

Retrieves the header information of a
transaction, including stage, account,
and summary-level data.

All header field data for the
transaction.

Get a transaction's
lines

Retrieves the line item details for
a transaction, including product
data, quantities, pricing, and custom
attributes for each line.

All line-level field data for the
transaction.

Returns updated transaction
data with the additional
products.

Note: Event APIs are authorized via session cookie only. Avoid building a scenario in
which the user initiates an event that also fires an event API on the same transaction —
such an implementation can result in unpredictable behavior.

Additional APIs
For details about the API that retrieves metrics for transactions, see Quote Experience metrics
API.

Postman collection
The following Postman collection provides ready-to-use API requests for the ServiceNow Quote
Experience runtime APIs.
{
"info": {
"_postman_id": "0112bd72-984c-4285-a40f-5724e5d799cb",
"name": "1 - ServiceNow Quote Experience Headless Runtime
APIs",
"schema":
"https://schema.getpostman.com/json/collection/v2.1.0/collectio
n.json",
"_exporter_id": "40935282"
},
"item": [
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

349


<!-- page 350 -->
{
"name": "Initialize a session",
"request": {
"method": "POST",
"header": [{"key": "Origin","value":
"{{baseUrl}}","type": "text"}],
"body": {
"mode": "raw",
"raw": "{\"id\": \"{{transactionId}}\", \"stateful\":
false}",
"options": {"raw": {"language": "json"}}
},
"url": {"raw": "{{baseUrl}}/api/t","host":
["{{baseUrl}}"],"path": ["api","t"]}
}
},
{
"name": "Create a new transaction",
"request": {
"method": "POST",
"header": [{"key": "Origin","value":
"{{baseUrl}}","type": "text"}],
"body": {
"mode": "raw",
"raw": "{\"stateful\": false}",
"options": {"raw": {"language": "json"}}
},
"url": {"raw": "{{baseUrl}}/api/t","host":
["{{baseUrl}}"],"path": ["api","t"]}
}
},
{
"name": "Run an event (using existing session)",
"request": {
"method": "POST",
"header": [{"key": "Origin","value":
"{{baseUrl}}","type": "text"}],
"body": {
"mode": "raw",
"raw": "{\"context\": {\"session\":
\"{{session}}\"}}",
"options": {"raw": {"language": "json"}}
},
"url": {
"raw":
"{{baseUrl}}/api/t/{{transactionId}}/events/test_event_transiti
ons",
"host": ["{{baseUrl}}"],"path":
["api","t","{{transactionId}}","events","test_event_transition
s"]
}
}
},
{
"name": "Upsert lines",
"request": {
"method": "POST",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

350


<!-- page 351 -->
"header": [
{"key": "Content-Type","value": "application/json"},
{"key": "Origin","value": "{{baseUrl}}","type":
"text"}
],
"body": {
"mode": "raw",
"raw": "{\"context\": {\"stateful\":
false},\"items\": [{\"configurationId\":
\"626923a6-2bab-4755-90ae-60d40bbb55c4\"},{\"id\":
\"SimpleProductId\"}]}",
"options": {"raw": {"language": "json"}}
},
"url": {
"raw":
"{{baseUrl}}/api/t/{{transactionId}}/events/upsertLines",
"host": ["{{baseUrl}}"],"path":
["api","t","{{transactionId}}","events","upsertLines"]
}
}
},
{
"name": "Copy transaction",
"request": {
"method": "POST",
"header": [{"key": "Origin","value":
"{{baseUrl}}","type": "text"}],
"body": {
"mode": "raw",
"raw": "{\"context\": {\"stateful\": false}}",
"options": {"raw": {"language": "json"}}
},
"url": {
"raw":
"{{baseUrl}}/api/t/{{transactionId}}/events/copyTransaction",
"host": ["{{baseUrl}}"],"path":
["api","t","{{transactionId}}","events","copyTransaction"]
}
}
},
{
"name": "Delete session",
"request": {
"method": "DELETE",
"header": [{"key": "Origin","value":
"{{baseUrl}}","type": "text"}],
"url": {"raw": "{{baseUrl}}/api/t/{{session}}","host":
["{{baseUrl}}"],"path": ["api","t","{{session}}"]}
}
},
{
"name": "Get transaction",
"request": {
"auth": {"type": "bearer","bearer": [{"key":
"token","value": "{{adminToken}}","type": "string"}]},
"method": "GET",
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

351


<!-- page 352 -->
"header": [{"key": "Origin","value":
"{{baseUrl}}","type": "text"}],
"url": {"raw":
"{{baseUrl}}/api/txn/{{transactionId}}","host":
["{{baseUrl}}"],"path": ["api","txn","{{transactionId}}"]}
}
},
{
"name": "Get transaction lines",
"request": {
"auth": {"type": "bearer","bearer": [{"key":
"token","value": "{{adminToken}}","type": "string"}]},
"method": "GET",
"header": [
{"key": "Origin","value": "{{baseUrl}}","type":
"text"},
{"key": "Cookie","value":
"SESSION=05eb312c-e0a9-4340-b0ae-cfcc8db9e36f;","type": "text"}
],
"url": {"raw":
"{{baseUrl}}/api/txn/{{transactionId}}/lines","host":
["{{baseUrl}}"],"path":
["api","txn","{{transactionId}}","lines"]}
}
}
],
"auth": {
"type": "bearer",
"bearer": [{"key": "token","value":
"{{runtimeToken}}","type": "string"}]
},
"variable": [
{"key": "session","value": "","type": "string"},
{"key": "transactionId","value": "","type": "string"}
]
}
Sync Primary Quote to Opportunity
Designate a quote as primary and sync the quote's lines to the opportunity. When sync is
enabled, any changes to the quote's lines are synced to the source opportunity lines. An
opportunity can have only one quote marked as primary and enabled for sync.

Before you begin

Role required: admin
Before configuring the sync feature, complete the following instance setup:
1. Activate the Quote Experience plugin (App ID: sn_quote_mgmt_adv).
2. Submit a support ticket requesting to enable the Sync Quote to Opportunity tenant setting.
3. When the tenant setting is enabled, export and import the transaction blueprint.

About this task

The sync feature uses the following system objects to control the sync between a primary quote
and its source opportunity.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

352


<!-- page 353 -->
System objects for sync to opportunity
Type

Display name

Variable name

Field

Is Synced to Opportunity

txn.opportunity.isSynced

Field

Opportunity Line Item

txn.line.opportunity.lineItem

Event

Enable Sync to Opportunity

txn.syncToOpportunity.enable

Event

Disable Sync to Opportunity

txn.syncToOpportunity.disable

Integration Sync to Opportunity

txn.syncToOpportunity.updateStatus

To configure the feature, add a button for each sync event to the layout, configure the event
properties, and optionally restrict event access by stage.
The following snapshot helps you understand the event configuration to sync the quote to

opportunity.

Procedure

Add buttons to the layout
1. Navigate to All > CPQ Administration > Transaction and open the blueprint.
2. Select Layouts.
3. Add a button to the layout for each sync event: Enable Sync to Opportunity and Disable Sync
to Opportunity.
Configure the Enable Sync to Opportunity event
4. Open the properties for the Enable Sync to Opportunity event.
5. Add the Sync to Opportunity integration (txn.syncToOpportunity.updateStatus)
to the event.
6. Set the Event Access for the event.
Configure the Disable Sync to Opportunity event
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

353


<!-- page 354 -->
7. Open the properties for the Disable Sync to Opportunity event.
8. Add the Sync to Opportunity integration (txn.syncToOpportunity.updateStatus)
to the event.
9. Set the Event Access for the event.
(Optional) Restrict event access by stage
10. Optional: In Views, adjust the access to the sync events for each stage.
This configuration lets you set the sync events to No Access on specific stages.

Result

When a user selects Enable Sync to Opportunity, the quote's lines sync to the source
opportunity lines, and subsequent changes to the quote's lines continue to sync. When a user
selects Disable Sync to Opportunity, the sync stops.
Configure transaction-to-quote field mapping
When you use Sales CRM capabilities such as opportunity management, advanced approvals,
or PDF document generation, ServiceNow CPQ Microservices sync data to the ServiceNow
platform. This sync is set up automatically, but custom transaction fields require you to configure
the data mapping.

Before you begin

Role required: admin
Verify that you have the permissions required to add columns on ServiceNow tables.
Activate the Quote Experience plugin (App ID: sn_quote_mgmt_adv).

About this task

Custom transaction fields are mapped to columns on one of two ServiceNow tables:
• Quote — captures header-level quote data.
• Quote Lines — captures individual line data.
To configure the mapping, create a column on the target ServiceNow table, create the
corresponding field on the blueprint, map the field to the column, and then deploy the blueprint.
Complete the following phases in order.
Consider the following when you map transaction fields:
• Header-level transaction fields can be mapped only to the Quote table.
• Line-level transaction fields can be mapped only to the Quote Lines table.
• The External Field Mapping options are filtered to the column types supported by the current
field type.
• Columns that are already mapped to a field aren't displayed.
• If you use a ServiceNow table column that has a list specification, you must add all valid
choices for data to sync properly. For example, the choices for the State column on the Quote
table must be updated to match the values of the txn.stage field.

Procedure
1. Navigate to All > System Definition > Tables.
2. Search for and select the table to add the column to.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

354


<!-- page 355 -->
Select Quote for header-level data or Quote Lines for line-level data.
3. On the table record page, in the Table Columns related list, select New.
4. Configure the new column and select Save.
5. Navigate to Product Catalog Management > Offerings > CPQ Administration.
6. Select the transaction.
7. Add a new field on the blueprint.
For more information, see Create a transaction field.
8. Open the field properties page for the new field.
9. In the External Field Mapping property, select the Quote or Quote Lines column to map the
field to.
10. Select Save.
11. Deploy the blueprint.

Result

The custom transaction field is mapped to the selected ServiceNow table column, and data
syncs between the transaction and the quote record.
Configure quote document generation
The Generate PDF Document feature generates a PDF document of the current quote based
on the selected template. After the document is generated, it is available in the Attachments
section of the Contextual Side Panel (CSP). To enable this feature, an administrator configures a
custom integration and a custom event that initiate the document generation process.

Before you begin

Role required: admin
Before you configure the document generation feature, complete the following instance setup:
1. Activate the Quote Experience plugin (App ID: sn_quote_mgmt_adv).
2. Submit a support ticket requesting to enable the Document Generation tenant setting.
3. When the tenant setting is enabled, export and import the transaction blueprint.
You must also create a document template before you configure this feature. Document
templates are created and managed outside ServiceNow CPQ Administration. For instructions,
see Configure quote PDF documents.

About this task

The document generation feature uses the following system fields to determine the template and
signers for the generated document.
System fields for document generation
Type

Display name

Variable name

Field

Document Template

txn.docGen.template

Field

Document External Signer

txn.docGen.externalSigner

Field

Document Internal Signer

txn.docGen.internalSigner

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

355


<!-- page 356 -->
To configure the feature, update the system fields, create a custom integration and a custom
event in the blueprint, and then deploy the blueprint. Complete the following phases in order.

Procedure
1. Navigate to All > CPQ Administration > Transaction.
2. On the blueprint, select Fields.
3. For each system field listed in the preceding table, set the Default Access to Editable.
4. Add each system field to the transaction layout.
5. Create a custom integration.
For more information, see Quote transaction integrations
6. Configure the following integration settings.
Integration settings
Setting

Value

HTTP Method

POST

Additional Path

/api/sn_quote_mgmt_adv/v1/quotes/
{{txn.id}}/documents

Timeout

5000

Line Item Details to Include

None

Async

Disabled

Headers

Not applicable

7. Leave the Request Transformation unconfigured.
No request transformation is required for this integration.
8. For Connection to Endpoint, select serviceNowJwtConnection.
9. Leave the Response Transformation unconfigured.
No response transformation is required for this integration.
10. Create a custom event.
11. In the event properties, set Event Access to Active.
12. Associate the integration you created with the event.
13. Add a button to the layout to trigger the event.
a. Enable the event button.
b. From the Event picklist, select the event you created in Phase 3.
14. In Views, adjust the access to the event for each stage.
15. Select Save.
16. Select Deploy to deploy the blueprint.

Result

When a user selects the generate-document button on a quote, the integration generates a PDF
document from the selected template and attaches it to the quote. The document is available in
the Attachments section of the Contextual Side Panel (CSP).

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

356


<!-- page 357 -->
Create an order from a quote
The Sales CRM Quote experience supports creating an order from the current quote.

Before you begin

Role required: admin
Activate the following plugins:
• Quote Experience plugin (App ID: sn_quote_mgmt_adv).
• Order Management plugins

About this task

The create-order-from-quote capability requires a custom integration and a custom event
configured in the blueprint. Complete the following phases in order, and then deploy the
blueprint.

Procedure
1. Create a custom integration.
For more information about integrations, see Quote transaction integrations.
a. Configure the following integration settings.
Integration settings
Setting

Value

HTTP Method

POST

Additional Path

/api/sn_quote_mgmt_adv/v1/quotes/
{{txn.id}}/orders

Timeout

5000

Line Item Details to Include

None

Async

Disabled

Headers

Not applicable

b. Leave the Request Transformation unconfigured.
No request transformation is required for this integration.
c. For Connection to Endpoint, select serviceNowJwtConnection.
d. Leave the Response Transformation unconfigured.
No response transformation is required for this integration.
2. Create a custom event.
a. In the event properties, set Event Access to Active.
b. Associate the integration you created with the event.
c. Add a button to the layout to trigger the event.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

357


<!-- page 358 -->
d. Enable the event button.
e. From the Event picklist, select the event you created.
f. In Views, adjust the access to the event for each stage.
g. Select Save.
The layout is saved.
h. Select Deploy on the blueprint.

Result

When a user selects the create-order button on a completed quote, the integration calls
the Order Management create-order API and creates an order from the quote data. Orders
associated with the current quote appear in the Related Lists: Orders section of the Contextual
Side Panel (CSP).

What to do next

After you deploy the blueprint, configure the quote-to-order field mapping to define how quote
data maps to the resulting order.

Configuring Advanced Approval Management
Install the Advanced Approval Management application to build workflows that automate the
approval process for Sales Customer Relationship Management entities such as customer
quotes.

Configuration overview
Advanced Approval Management configuration overview
Configuring the Advanced Approval Management involves the following sections:
• Environment Setup: Establish the system foundation by installing required plugins, enabling
approval functionality, and configuring the user interface.
• Approval Configuration: Create business-specific approval rules, conditions, and workflows for
your entities (for example, quotes, orders) that requires approval management.
1. Install Advanced Approval Management.
You can install the Advanced Approval Management application (sn_adv_appr_mgmt) if you
have the admin role.

Note: The plugin for the Sales Customer Relationship Management application for
which you are creating workflows, such as Quote Management, must also be installed.
2. Create an approval configuration.
Create an approval configuration for a Sales Customer Relationship Management entity,
such as quotes. An approval configuration contains the approval elements that you define
to automate approval workflows: conditions that trigger approval workflows, approval rules,
approval chains, and approval users and groups. Starting with the 1.0.1 release, you can enable
certain features for the configuration, namely approval request consolidation, escalations, and
email reminder features.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

358


<!-- page 359 -->
3. Create conditions that trigger approval workflows.
Define one or more conditions that apply company policies, such as legal or pricing guidelines,
to trigger an approval workflow. Also enable the smart reapprovals feature, which allows
previous approvals to be used for a resubmitted approval.
4. Create approval rules.
Create approval rules that define the approval criteria and approvers for an approval step.
5. Create approval chains.
Optionally create approval chains that control the sequence in which two or more approvals
are run.
6. Define an approval user.
Define the approver and the associated approval rule that they review during the approval
process.
7. Define an approval group.
Define the group that can approve requests for a specified approval rule.
8. Set up approval notifications to deliver approval status to requesters and inform approvers of
approval rejections.
You can customize these system notifications if needed.
9. Configure granular delegation rules for an approver if your organization uses Employee Service
Management and your approvers want to delegate approval tasks when they're not available or
away from work.

Configuration workflow
The following workflow illustrates the end-to-end process for configuring the Advanced Approval
Management:
1. Complete all environment setup tasks to establish the system foundation.
2. Create an approval configuration for your entity (quote, order, or other Sales Customer
Relationship Management entity).
3. Define trigger conditions that specify when approval workflows should be initiated.
4. Create approval rules that define approval criteria and assign approvers.
5. Optionally create approval chains to orchestrate complex multi-step approval sequences.
6. Assign individual approvers and approver groups to approval rules.
7. Configure system notifications to inform requesters and approvers of approval status.
8. Configure granulation delegation if your organization is using Employee Service Management
and your approvers want to delegate their approval tasks to another employee.
Install Advanced Approval Management
You can install the Advanced Approval Management application (sn_adv_appr_mgmt) if you
®
have the admin role.The application includes demo data and installs related ServiceNow Store
applications and plugins if they are not already installed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

359


<!-- page 360 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Advanced Approval Management
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Advanced Approval Management:
• Roles
• Tables
• Scheduled jobs
For more information, see Components installed with Advanced Approval Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Advanced Approval Management application (sn_adv_appr_mgmt) using the filter
criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you is displayed.
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

What to do next

Create an approval configuration
Related topics
Using Advanced Approval Management
Advanced Approval Management
Set up the environment to manage approvals
Complete the setup tasks before creating approval configurations and workflows. These
prerequisites enable the approval system for a ServiceNow CPQ implementation.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

360


<!-- page 361 -->
Before you begin

Role required: admin or sn_adv_appr_mgmt.approval_rule_admin

About this task

Set up the environment to administer and manage approvals.

Procedure
1. Install the required plugins.
a. Navigate to All > System Definitions > Plugins.
b. Search for and install the following plugins, if not already installed:
▪ Advanced Approvals Plugin: Provides the core approval management framework. For more
information, see Install Advanced Approval Management
▪ Quote Management - Advanced (App id: sn_quote_mgmt_adv): Required for approving
transactions.
c. Confirm that all plugins show as active in the Plugins list.
All required plugins are installed and active in your system.
2. Enable the approval tenant setting in your microservices instance.
a. Contact ServiceNow Customer Support to enable the approval tenant setting for your
microservices instance.
b. When contacting support, provide the following information:
▪ Your ServiceNow instance name
▪ Request to enable: "Microservices Approval Tenant Setting"
▪ Confirmation that Advanced Approvals and Advanced Code plugins are installed
c. Wait for the support team to confirm the setting is active.
d. After the setting is enabled, verify that the approval interface and approval-related UI
components are visible by navigating to the approval configuration areas.
The approval tenant setting is enabled in your microservices instance, and the approval
system is ready for configuration.
3. Export and re-import the blueprint to seed approval system fields, events, and integrations.
a. Navigate to All > CPQ Administration > Transaction > Blueprint.
b. Select Export.
The export process creates a backup of your current blueprint configuration.
c. Navigate to All > CPQ Administration > Utilities > Matrix Loader.
d. Import the blueprint.
The components such as system events (Preview, Request, Approve, Cancel/Reject, View),
integrations (Data flow integration between your microservices and the approval system),
rules (Validate Approval Submission, Validate Approval Completion, Validate Approval
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

361


<!-- page 362 -->
Revision), rule groups (Approval Submission, Approval Completion, and Approval Revision),
and field (Approval state) are added.
e. Verify that approval events and integration rules are now available in the UI by navigating to
All > CPQ Administration > Transaction.
The blueprint import completes, and all approval system events and integrations are seeded
in your instance. These system events and integrations are now available for use in approval
rules and configurations.
4. Configure UI effects and layout for the approval experience.
For more information, see Configure approval events.
5. Set up stage transitions for the approval workflow.
For more information, see Configure stages and entry criteria.
6. Create the web embeddable module for the approval interface.
a. Navigate to All > Web Embeddables > Home Page.
b. Create a web embeddable module.
Web embeddables are reusable UI components that can be embedded in multiple places.
For approvals, this creates a reusable approval interface component.
c. Name the module (for example, "Advanced Approvals" or "Approval Interface").
d. Select Advanced Approvals as the component type.
e. Configure the component properties and save.
The web embeddable is created, and a SYS ID is generated for the module.
f. Copy the SYS ID of the created embeddable module.
g. Navigate to All > UI Builder > CSM/FSM Configurable Workspace.
h. Select Quote Transaction Default component.
i. Locate the seismic_components_property_list field.
j. Add an entry with the embeddable SYS ID for approvals.
The web embeddable module for approvals is created and configured. The approval interface
is now embedded in your microservices instance and ready for use.
7. Verify all prerequisites are complete.
a. Confirm all plugins are active and installed.
b. Verify that the approval tenant setting is enabled in your instance.
c. Check approval system events and integrations are visible in the Advanced Approvals
configuration area.
d. Confirm UI buttons and approval interface components are visible in your quote or order
forms.
e. Verify stage transitions are correctly configured and appear in the configuration UI.
All prerequisites are verified and complete. Your instance is now ready for approval rule
configuration.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

362


<!-- page 363 -->
What to do next

Proceed with the following tasks:
• Create an approval configuration
• Create conditions that trigger approval workflows
• Create approval rules
• Create approval chains
• Define an approval user
• Define an approval group
After approvals are configured, end users can submit approval requests using the approval
interface. For user-facing tasks, see Submit a quote for approval and Review and approve a
submitted quote.
Configure approval events
Configure the approval system events that control the approval buttons and stage transitions for
a ServiceNow CPQ implementation.

Before you begin

Role required: admin or sn_adv_appr_mgmt.approval_rule_admin
The environment setup must be complete so that the approval system events, integrations, rules,
and fields are seeded in your instance. For more information, see Set up the environment to
manage approvals.

About this task

Configure these events. Do not create additional ones. The events fall into two groups based on
how they are triggered.
Approval event groups
Event

Trigger type

Preview Approval
Layout
(txn.approval.preview)button
View Approval
(txn.approval.view)

Layout
button

What you configure

Event access rules that control when the button
is visible, plus a layout button with a UI effect that
opens the embedded SN approval component.

Request Approval
Fired
The stage transition that occurs after the action
(txn.approval.request)by the
completes. No layout button is needed.
embedded
component
Approve Approval
Fired
(txn.approval.approve)by the
embedded
component
Cancel Approval
Fired
(txn.approval.cancel) by the
embedded
component

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

363


<!-- page 364 -->
Procedure

Configure the Preview Approval event (txn.approval.preview). The UI effect on the
Preview Approval button opens the embedded SN approval component in Preview mode,
showing the seller which approvals are triggered and who the approvers are before submitting.
The Request Approval button inside this component triggers the Request Approval event.
1. Configure the event access that controls when the Preview Approval button is visible.
a. Navigate to Admin > Transaction > Events.
b. Open the Preview Approval event (txn.approval.preview).
c. Select Edit Event Access in the top right.
d. Configure the visibility condition to show this event when txn.approvalState equals empty
("") or draft.
The Preview button appears only when no approval is in progress.
e. Select Save.

Tip: The preceding conditions reflect the default. Adjust them to match your stage
structure—for example, if there are additional stages where the Preview button should or
should not appear, add or modify conditions accordingly.
2. Add the Preview Approval button to the layout.
a. Navigate to Admin > Transaction > Layouts and open your layout.
b. In the Header Buttons section, add a new button and label it Preview Approval or a label of
your choice.
c. In Button Properties, enable the Event Button toggle, then in the Event field select Preview
Approval.
This links the button visibility to the event access rules you configured.
d. Enable the UI Effect Button toggle, then set the UI effect properties:
▪ Set UI Effect Type to Approvals.
▪ Set UI Effect Target to Modal or Slideout, depending on your preferred display.
▪ Set Mode to Preview.
e. Select Save.
The Preview Approval button appears in draft state and opens the embedded approval
component in Preview mode.
Configure the View Approval event (txn.approval.view). The UI effect on the View
Approval button opens the embedded SN approval component in Status mode, showing the
current approval status, approver details, history, and a Recall button for pending approvals. The
Recall button inside this component triggers the Cancel Approval event.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

364


<!-- page 365 -->
3. Configure the event access that controls when the View Approval button is visible.
a. Open the View Approval event (txn.approval.view).
b. Select Edit Event Access in the top right.
c. Configure the visibility condition to show this event when txn.approvalState is not empty and
not draft—for example, when it equals requested, approved, recalled, or rejected.
The View button appears only after an approval is initiated.
d. Select Save.

Tip: You control which approval states cause this button to appear. For example, if you
do not want the View button visible after an approval is fully completed, you can exclude
the approved state from the condition.
4. Add the View Approval button to the layout.
a. In your layout, go to Header Buttons and add a new button.
b. Label it View Approval or a label of your choice.
c. In Button Properties, enable the Event Button toggle, then in the Event field select View
Approval.
d. Enable the UI Effect Button toggle, then set the UI effect properties:
▪ Set UI Effect Type to Approvals.
▪ Set UI Effect Target to Modal or Slideout.
▪ Set Mode to Status.
e. Select Save.
The View Approval button appears after an approval is initiated and opens the embedded
approval component in Status mode.
Configure the stage transitions for the action events. The Request Approval, Approve Approval,
and Cancel Approval events are fired automatically by the embedded SN component when
the seller or approver takes an action. Each event runs txn.approval.getState—a
built-in integration that fetches the current approval state from ServiceNow—and updates the
txn.approvalState field. No layout button is needed for these events.
5. Configure the stage transition for the Request Approval event (txn.approval.request).
This event is triggered when the seller selects Request Approval inside the embedded SN
component.
a. Navigate to Admin > Transaction > Events.
b. Open the Request Approval event (txn.approval.request).
c. Scroll to the Stage Transition section.
d. Enable the Transition after actions toggle.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

365


<!-- page 366 -->
e. Set After all actions run, transition to to forward.
f. Select Save.

Tip: If your stage sequence differs from the default, verify the forward transition points
to the correct next stage. You can also add a Rule Grouping action on this event if
additional rules need to run at submission time.
When a seller submits a request, the transaction moves forward to the Pending Approval stage.
6. Configure the stage transition for the Approve Approval event (txn.approval.approve).
This event is triggered when all required approvers approve the request, either inside the
embedded SN component or by email. It updates txn.approvalState to approved.
a. Open the Approve Approval event (txn.approval.approve).
b. Scroll to the Stage Transition section.
c. Enable the Transition after actions toggle.
d. Set After all actions run, transition to to forward.
e. Select Save.

Tip: If you have additional stages between Pending Approval and Approved, verify the
forward transition lands on the correct destination. Entry criteria on the Approved stage
validates the state before allowing entry regardless.
When all approvers approve, the transaction moves forward to the Approved stage.
7. Configure the stage transition for the Cancel Approval event (txn.approval.cancel).
This event is triggered when the seller selects Recall inside the embedded SN component
(Status mode), or when an approver rejects the request, ending the approval cycle. It updates
txn.approvalState to recalled or rejected accordingly.
a. Open the Cancel Approval event (txn.approval.cancel).
b. Scroll to the Stage Transition section.
c. Enable the Transition after actions toggle.
d. Set After all actions run, transition to to backward.
e. Set If available from current stage, go back to to Draft.
f. Select Save.

Tip: If you want the transaction to return to a different stage on recall or rejection—for
example, a dedicated Rejected stage rather than Draft—change the target stage here and
verify that stage exists in your blueprint with appropriate entry criteria.
On recall or rejection, the transaction returns to the Draft stage so the seller can make changes
and resubmit.

Result

All five approval events are configured. The Preview and View buttons appear in the layout
according to the approval state, and each action event moves the transaction to the correct
stage.

What to do next

Configure the stages and entry criteria that validate each approval state transition. For more
information, see Configure stages and entry criteria.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

366


<!-- page 367 -->
Configure stages and entry criteria
Configure the stages and entry criteria that validate each approval state transition, ensuring a
transaction can enter a stage only when its approval state confirms it belongs there.

Before you begin

Role required: admin or sn_adv_appr_mgmt.approval_rule_admin
You have configured the approval events and their stage transitions. For more information, see
Configure approval events.

About this task

Stage entry criteria act as the validation gate for each approval state transition. When an action
event fires and updates txn.approvalState, the stage transition configured on that event attempts
to move the transaction. The destination stage accepts the transaction only if its entry criteria
conditions are met—ensuring the transaction cannot enter a stage unless the approval state
confirms it belongs there. Rule groups are assigned to events to run the appropriate approval
validation rules each time an event is triggered.
Stages are fully customizable and managed by your admin. You can create as many stages
as your process requires and name them as needed. This guide uses the following example
structure: Draft → Pending Approval → Approved → Completed.
Example stage configuration
Stage

Entry criteria (txn.approvalState)

Draft

None (initial stage)

Pending Approval

Equals requested

Approved

Equals approved

Completed

Per your process

Procedure
1. Navigate to All > CPQ Administration > Transaction > Stages.
The Stages list opens.
2. Create or confirm your stages, then configure each one with its entry criteria and rule grouping.
For the example structure, ensure the following stages are present: Draft, Pending Approval,
Approved, and Completed. Configure each stage and its associated event as described in the
following substeps.
a. Configure the Draft stage and its rule grouping: on the Cancel Approval event
(txn.approval.revision), associate the Approval Revision rule grouping, then select Save.
No entry criteria are required because the Draft stage is the initial stage. The Draft stage
is the starting point and the stage a transaction returns to after a recall or rejection. The
Approval Revision rule group is assigned to the Cancel Approval event so that the correct
validation rules run whenever that event fires and returns the transaction to Draft.

Tip: If you have chosen a different stage as the recall or rejection destination, point
the Cancel Approval event's stage transition at that stage. The Approval Revision rule
group remains on the event.
b. Configure the Pending Approval stage and its rule grouping.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

367


<!-- page 368 -->
i. Open the stage.
ii. Set Allow Entry When to All Conditions Are Met with the condition Approval State
(txn.approvalState) Equals requested.
iii. Select Save.
iv. On the Request Approval event (txn.approval.submission), associate the Approval
Submission rule grouping.
v. Select Save.
The transaction enters this stage after the seller submits a request for approval. The entry
criteria validates that txn.approvalState has been set to requested by the Request Approval
event before allowing entry—preventing a transaction from being manually moved to this
stage without a legitimate approval request in flight. The Approval Submission rule group is
assigned to the Request Approval event so its validation rules run when the event fires.

Tip: Set this entry condition on whichever stage you designated as the submission
destination in the Request Approval event transition, and keep the Approval
Submission rule group on the event. You can also add further entry conditions here if
your process requires additional validation before an approval request can proceed.
c. Configure the Approved stage and its rule grouping.
i. Open the stage.
ii. Set Allow Entry When to All Conditions Are Met with the condition Approval State
(txn.approvalState) Equals approved.
iii. Select Save.
iv. On the Approve Approval event (txn.approval.completion), associate the
Approval Completion rule grouping.
v. Select Save.
The transaction enters this stage after all required approvers have approved. The entry
criteria validates that txn.approvalState has been set to approved by the Approve Approval
event. The Approval Completion rule group is assigned to the Approve Approval event so its
validation rules run when the event fires.

Tip: Set this entry condition on whichever stage you designated as the approval
completion destination in the Approve Approval event transition, and keep the
Approval Completion rule group on the event.
Each stage accepts a transaction only when its entry criteria are met, and the assigned rule
group runs its validation rules each time the stage is entered.

Result

The approval stages are configured with entry criteria and rule groups. Each stage accepts
a transaction only when the approval state confirms it belongs there, and the appropriate
validation rules run on entry.

What to do next

After approvals are configured, end users can submit approval requests using the approval
interface. For user-facing tasks, see Submit a quote for approval and Review and approve a
submitted quote.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

368


<!-- page 369 -->
Create an approval configuration
Create an approval configuration for a Sales Customer Relationship Management entity, such as
quotes.

Before you begin

Role required: sn_adv_appr_mgmt.approval_rule_admin or
sn_adv_appr_mgmt.approval_rule_writer

About this task

An approval configuration is a container for the workflow elements that you define for a specified
entity, such as the conditions that trigger approval workflows for related approval rules. You can
also enable certain features for the configuration:
• Allow email consolidation: Option that consolidates multiple, separate approval request
emails for the same approver (or group) into a single approval request email, instead of
sending multiple individual approval request emails. Consolidated email approval requests are
held until the final relevant approval sequence for that approver is ready. The approval engine
then routes the consolidated request to the approver (or group).
• Escalations: Enable escalations, which is a mechanism for reassigning an approval request
to another approver when the original approver does not take action within a defined time. If
you enable this feature, you also define the escalation details in approval rules, such as the
escalation assignee and length of time allowed for approval completion before the request is
reassigned.
• Auto reminders for approval tasks: Option that enables approval reminder notifications to be
sent automatically to approvers, based on a reminder schedule that you set.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Advanced Approvals > All Approval Configurations.
4. Select New.
On the Approval Configuration form, fill in the fields to create a configuration for an entity, such
as quotes. For field descriptions, see the Approval Configuration form.
5. Select Save.
The approval configuration for the specified entity is created.

Note: A Sales Customer Relationship Management entity can have only one approval
configuration.

What to do next

Create conditions that trigger approval workflows
Create conditions that trigger approval workflows
Define one or more conditions that apply company policies, such as legal guidelines or pricing
rules, to trigger an approval workflow. Also enable the smart reapprovals feature, which allows
previous approvals to be used for a resubmitted approval.

Before you begin

Before creating conditions, consider the business thresholds that determine when an approval
is required, such as a certain discount percentage for quote line items or a minimum deal size
amount.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

369


<!-- page 370 -->
Verify that you have the associated items (fields) that represent the business thresholds in the
entity table for the approval configuration, such as the Quote [sn_quote_mgmt_core_quote] table
or through dynamic attributes defined in a Dynamic Schema. For more information on dynamic
attributes, see Dynamic Schema .
Role required: sn_adv_appr_mgmt.approval_rule_admin,
sn_adv_appr_mgmt.approval_rule_writer

Note: If you have the admin role, you can use scripts to specify approval conditions if the

Advanced condition option is turned on. Only users with the admin role can enter scripted
conditions.

About this task

Use conditions to define company policies or guidelines for certain functional areas such as
finance or legal departments. The advanced approval engine evaluates these conditions and if
applicable, triggers the appropriate approval workflow.
Conditions are based on attributes for a Sales Customer Relationship Management entity or
dynamic attributes defined in a Dynamic Schema. For example, quote attributes are derived
from the Quote [sn_quote_mgmt_core_quote] table and can include items such as discount
percentage, total quote value (ACV or ARR), total margin, payment terms, contract term length,
country or geographic location, currency, product SKUs, customer risk flags, ramp pricing
indicators, and custom fields.

Note: If you have the admin role, you can turn on the Advanced condition option to
specify trigger conditions using scripts. If you use the advanced condition feature, you can't
enter conditions using the condition builder.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Advanced Approvals > Approval Trigger Conditions.
4. In the Name field, enter the name for the conditions that trigger an approval.
For example, if you want to trigger approvals for quotes that have low margins, you might name
the condition Low Margin Quote.
5. In Approval configuration, select the configuration for the Sales and Order Management
entity, such as Quote.
The Condition section opens for adding trigger conditions.
6. If you don't want the trigger condition to be active, unselect the Active field.
By default, the trigger condition is Active.
7. In the Condition section, add one or more conditions that must be met to trigger approvals.
Specify a condition by selecting the Field and Operator, and entering a value for the operator.
For example, you can specify a condition that requires approvals when the discount for a
quote line item is 20% or higher: [Discount percentage] [greater than or is]

[20]
For basic information on setting conditions, see Condition builder . For more information on
the available operators, see Operators available for filters and queries .
8. If you have the admin role and want to specify trigger conditions using scripts, turn on the
Advanced condition field.
The Condition section is replaced by the following fields for entering scripted conditions:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

370


<!-- page 371 -->
◦ Description: Enter the name of the scripted condition.
◦ Scripted condition: Use the JavaScript Syntax Editor to enter the script with the trigger
conditions.
9. For approval resubmissions, indicate whether approvals granted previously for an approval
request can be used by selecting Smart re-approval.
The Smart condition section opens for specifying any conditions that must be met for previous
approvals to be reused for resubmitted approval requests.
10. In the Smart condition section, add one or more conditions for Smart approval resubmissions
that must be met to control whether previous approvals can be reused for the approval
request.
For example, you could specify a condition that reapproval is required only if the discount
increases by more than 2% from the last approved value.
11. If you have the admin role and want to specify trigger smart conditions using scripts instead of
using the condition builder, turn on the Advanced condition field.
The Smart condition section is replaced by the following fields for entering scripted conditions:
◦ Description: Enter the name of the scripted condition for Smart re-approvals.
◦ Scripted condition: Use the JavaScript Syntax Editor to enter the script with the conditions
for the re-approvals.
12. Select Save.

What to do next

Create approval rules.
Create approval rules
Define rules for approval workflows. An approval rule identifies the functional approver for
the workflow, such as a Finance Manager or Operations Manager. The rule also associates
approvers with the appropriate approval trigger conditions, and defines escalation details for
reassigning approvals to another approver for the rule.

Before you begin

Role required: sn_adv_appr_mgmt.approval_rule_admin or
sn_adv_appr_mgmt.approval_rule_writer

Note: To use the Advanced rule option to define the functional approver using a script,
you must have the admin role.

About this task

Approval rules define the approvers for the rule, associate the trigger conditions to the rule,
and provide escalation rules for the rule if escalations are enabled in your configuration. The
escalation feature enables you to reassign an approval request to another approver when the
original approver does not approve or reject a request within a timeframe that you define.

Note: If you have the admin role, you can use a script to identify the functional approver
for the rule. For details, see the Create Approval Rule form.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Advanced Approvals > Approval Rules.
4. Select New.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

371


<!-- page 372 -->
5. On the Create New Approval Rule form, fill in the fields.
For field descriptions, see Create Approval Rule form.
6. Select Save.

Result

The approval rule, when used in an approval workflow, is depicted as a step (card) in the
workflow interface. The card provides details of the rule and approvers in the approval step. You
can also review the steps in an approval configuration by navigating to Advanced Approvals >
Approval Steps in the workspace.

What to do next

Create approval chains (optional).
Create approval chains
Optionally create approval chains that control the sequence in which two or more approval rules
(steps) are run.

Before you begin

Role required: sn_adv_appr_mgmt.approval_rule_admin,
sn_adv_appr_mgmt.approval_rule_writer

About this task

Use chains to control the execution of approval steps that are run based on the approval rule
order:
• Within a chain, steps run sequentially.
• Across chains, chains can run sequentially or in parallel, based on the chain order value.
Chains with the same order value run in parallel.
• If you don't define chains, approval rules run in parallel.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Advanced Approvals > Approval Chain.
4. Select New.
5. Enter the Name of the approval chain.
6. Enter the Order in which the approval chain is to be run.
For example, entering 1 as the Order indicates that this chain is run first in the approval
workflow sequence.
7. Select the Approval configuration that identifies the Sales Customer Relationship
Management entity for the approval workflows, such as Quote.
Define an approval user
Define an approver in Advanced Approval Management and the associated approval rule that
they review during the approval process.

Before you begin

Create the approval rule to be associated with the approver.
Role required: sn_adv_appr_mgmt.approval_rule_admin,
sn_adv_appr_mgmt.approval_rule_writer
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

372


<!-- page 373 -->
About this task
An approval user is a user of your instance
as defined in the User [sys_user] table. An approval
user can be a dynamic approver, who can approve requests based on certain conditions that you
set. For example, a dynamic user could be a user tied to a particular territory or a manager based
on your organization's hierarchy.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Advanced Approvals > Approval Users.
4. Select New.
5. In the Approval rule field, select the approval rule associated with the approver user.
6. In the User field, select the user who is the approver for the specified approval rule.

Note: Approval users must have the sn_adv_appr_mgmt.approval_request_approver
role assigned to them.
7. Select Save.

What to do next

Define an approval group.
Define an approval group
Define the approval group, such as a contract or finance group, and the associated approval rule
that they review during the approval process.

Before you begin

Define the approval rule associated with this approval group.
Groups are set up in the Group [sys_user] table. For more information on creating groups, see
Create a user group .
Role required: sn_adv_appr_mgmt.approval_rule_admin,
sn_adv_appr_mgmt.approval_rule_writer

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List icon

.

3. Navigate to Advanced Approvals > Approval Groups.
4. Select New.
5. In the Approval rule field, select the approval rule associated with the approver.
6. In the Group field, select the group who approves the approval step controlled by the selected
approval rule.

Note: The members of the group must have the
sn_adv_appr_mgmt.approval_request_approver role assigned to them.
7. Select Save.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

373


<!-- page 374 -->
Override an approver
Override the approver in an approval step if the approval is no longer required, to help prevent
the approval workflow from being blocked.

Before you begin

Role required: approval_admin (platform role) and sn_adv_appr_mgmt.approval_request_writer

About this task

As an approval admin with the approval request writer role, use this procedure to bypass or
override the approver in an approval step that is no longer needed. The approval step must be in
the Requested state.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the

List icon.

3. Navigate to the approval request.
Access the request by navigating to the transaction entity and selecting the Approvals tab
for the transaction. For example, navigate to Quotes > All, select the quote, and select the
Approvals tab to open the approval workflow.
4. In the approval step card, select the More options menu and select Override.
5. In the Override approval dialog box, select Approve or Reject in the Approval decision field.
a. If you select Approve, enter a comment and select Submit.
The step record is updated and the workflow advances to the next step, which is in a
requested state.
b. If you select Reject, enter a comment explaining the reason for rejection and select Submit.
The step record is updated and the step state changes to Canceled, and the workflow stops.
A rejection notification is sent to the requester, to change the approval request as needed
and resubmit.
Notifications in Advanced Approval Management
In Advanced Approval Management, as an approval request moves through the approval
process, notifications about the status of the approval request are sent automatically to approval
requesters and approvers.

Overview of approval notifications
The notification framework handles various approval scenarios in the approval process,
including approvals for simple or consolidated approval requests, approval reminders,
escalations, and approval overrides. The following system notifications are automatically
activated with Advanced Approval Management:
• Advanced Approval Request
• Approval Reminder
• Approval Escalation
• Approval Request for Override
• Notify approval req requester
• Notify approval req approvers
Advanced Approval Request notifications
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

374


<!-- page 375 -->
The Advanced Approval Request notification informs approvers when an approval
request has been submitted by a sales agent (requester). There are two types of
approval request notifications: simple and consolidated.
Approval request notification examples

• Simple approvals: A notification is sent to each approver when an approval
request is submitted, as shown in the following example. The approver can
approve or reject the approval request from the notification.

Note: Ad-hoc approvers receive a simple approval notification and can
approve or reject the request from the notification. Ad-hoc approvers can
also approve or reject a request from a step in the General chain in the
approval workflow interface. For more information on configuring ad-hoc
approvers, see Add ad-hoc approvers to an approval request.
• Consolidated approvals: When an approver receives multiple approval requests
for approvals within the same set of approvals, the system can consolidate those
requests into a single notification email, if your approval rules admin has turned
on the email consolidation feature in your approval configuration.
An approver can use the links in the consolidated notification to accept or reject
requests individually or approve all or reject all requests. Approvers can also reply
to the consolidation email and use reply-based commands to approve or reject

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

375


<!-- page 376 -->
individual requests or all requests. When approvers approve or reject a request,
the body of the reply notification is prefilled, indicating approval or the reason for
rejection.
Both simple and consolidated approval emails are handled through a single
notification definition, with different rendering logic used to generate the
appropriate message format. These approval request emails can be delivered as
mobile push notifications, if approvers are using the ServiceNow Mobile app, and
Advanced Approval push notifications is set as a push notification channel in their
notification preferences.

Note: Ad-hoc approvers receive a simple approval notification. Or they can
approve or reject a request from a step in the General chain in the approval
workflow interface. For more information on ad-hoc approvers, see Add ad-hoc
approvers to an approval request.
Approval Reminder
Approval Reminder notifications are sent to approvers automatically when the
Send auto reminders and Reminder schedule features are set in the approval
configuration by your approval rule admin. Each reminder is a separate email and
is sent at the time specified in the reminder schedule, which is triggered by a
scheduled job.
The system generates the first reminder, subsequent reminders, and a final
reminder that could lead to escalation, if the escalation feature is set for the
approval configuration. For details on setting approval reminders, see Create an
approval configuration.
Approval Escalation
If the escalation feature is enabled in your approval configuration, an Approval
Escalation notification is sent to an approver when they do not act on an approval
request within the scheduled timeframe. The notification indicates that the approver
no longer needs to approve the final request. Escalation assignees also receive an
escalation notification from which they can accept or reject the request.
Approval Request for Overrides
With overrides, an approval admin for the ServiceNowAI platform who also has
the requester role can approve or reject an approval request on behalf of other
approvers. For example, the approval admin might need to unblock an approval
step when the step is no longer needed. The approval admin uses the Override
option in the step card in the approval workflow interface.
When an override occurs, original approvers receive a notification stating that
their action is no longer required because the approval was overridden. For more
information on overrides, see Override an approver.
Notify approval request approvers
When a requester recalls an approval request, the Notify approval request
notification informs approvers that the approval request has been recalled.
Notify approval request requester
When changes in the state of an approval request occur, the Notify approval request
notification informs requesters when the state changes to approved, rejected, or
recalled.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

376


<!-- page 377 -->
Notification prerequisites
For successful delivery of advanced approval notifications to approvers and requesters, verify
that certain notification properties and notification preferences are set.
• As an admin, do the following:
◦ Enable the email sending (Outbound Email Configuration) and email receiving (Inbound
Email Configuration) properties. For information on setting these properties, see Email
properties .
◦ Consider reviewing the default notifications for Advanced Approval Management by
navigating to All > Notifications > System Notifications and filter the list by Advanced
Approval Management.
For example, if you want to control conditions for sending a notification, review the
conditions in the When to send related list for a notification. If you want to change content
in a notification, review the associated email template for the notification. To learn more, see
Email and SMS notifications .
• As approvers and requesters, verify that you’re receiving the default system notifications in the
Advanced Approvals notification category and that the notifications are being delivered using
your preferred channels.
For example, if you're an approver and you want Advanced Approval Request notifications
®
to be delivered as push notifications on the Now Mobile application, verify that push
notifications are set up as a channel preference for the Advanced Approval Request
notification.
To learn more about managing notification categories and setting notification preferences and
channels, see Exploring preferences .
Configure granular delegation rules for an approver
Set up delegation rules that enable an approver in Advanced Approval Management to assign a
delegate who can accept or reject approval requests on behalf of the approver.

Before you begin

The Granular Delegation (com.glide.granular_service_delegation) application must be installed
and configured on your instance.
Set the application scope in your instance to Advanced Approval Management.
Role required: admin or delegation_admin

About this task

As an admin, setting up granular delegation involves identifying the advanced approval records
to which a delegation rule applies. You then specify the conditions that identify the type of
approvals that can be delegated and the users who can approve or reject delegated approval
tasks.

Procedure
1. Navigate to All > Granular Delegation > Delegation Rule Tables.
2. Select New to specify the Advanced Approval Management table that defines the approval
steps for which the delegate will be an approver.
Fill in the form.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

377


<!-- page 378 -->
a. In the Table field, select the Approval Step [sn_adv_appr_mgmt_approval_step] table.
b. Turn on the Active field.
c. Select Submit.
3. Navigate to All > Granular Delegation > Delegation Rules.
4. Select New to define the delegation rule that identifies the approver for whom the delegate will
replace.
a. In the Name field, enter the functional role, for example Sales manager.
b. Enter the conditions that determine the role for which delegation occurs in the Approval Step
[sn_adv_appr_mgmt_approval_step] table.
Example
For example, you can specify delegation for the Sales Manager by specifying the condition
[Approval rule] [is] [Sales Manager].
c. Turn on the Approvals field and the Assignments field.
d. Select Submit.
The Short description field is automatically populated, identifying the delegation for the
Approval Step table and the conditions you entered.
5. Create the new delegate to define the employee who will be the delegate for the approver.
For details on defining the delegate see, Create a delegate . You specify the employee who
will serve as the delegate, the start and end dates for delegation, and other options, such as
the option to send the delegate a copy of the notifications that the approver receives.

Result

After setting up the delegation capability for an approver, the approver can delegate advanced
approval requests to another employee by using Employee Center, if both the approver and
delegate use Employee Center. For information on delegating tasks to another employee, see
Delegate on-demand tasks .

Configuring Advanced Approval Management AI
Install and set up the Advanced Approval Management AI application, which enables advanced
approval users to manage quote approvals by using an MCP-compatible client such as Claude.

Configuration overview
1. Install Advanced Approval Management AI.
2. Connect the Sales CRM MCP server to the MCP client.
Install Advanced Approval Management AI
You can install the Advanced Approval Management AI application (sn_adv_apr_mgt_ai) if you
®
have the admin role.The application includes demo data and installs related ServiceNow Store
applications and plugins if they're not already installed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

378


<!-- page 379 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Advanced Approval Management AI application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The MCP tools for Advanced Approval Management AI are installed with Advanced Approval
Management AI:
For more information on the MCP tools installed, see Components installed with Advanced
Approval Management AI.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Advanced Approval Management AI application (sn_adv_apr_mgt_ai) using the filter
criteria and search bar.
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

What to do next
• Assign the MCP-related roles to your requesters and approvers. For information on the MCP
roles available, see Components installed with MCP Server Console .
• Verify that your MCP server is connected to an MCP client. For more information, see Connect
to an MCP server from an MCP client.

Configure Customer Contracts and Entitlements
Use the Customer Contracts and Entitlements application to configure and display customer
contracts and entitlements.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

379


<!-- page 380 -->
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
• Product Catalog
Management Core
[com.sn.prd_pm]

Entitlements Verification

Provides APIs to verify entitlement.​

[com.sn_ent_verify]

Customer Contracts and
Entitlements
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
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

380


<!-- page 381 -->
The following roles are added with the activation of the Customer Contracts and Entitlements
plugins.
Roles installed
Role

Description

Contains role

Targeted pers

sn_pss_core.service_contract_viewer

Performs read
operation on:

• sn_prd_pm.characteristics_viewer

• sn_custom

Characteristic viewer

Consume

• sn_prd_pm.product_catalog_viewer

• sn_custom

Product catalog viewer

Customer

Service contract viewer

• customer
contracts
• Contract lines
• Entitlements
• Characteristics

• sn_custom

• Entitlement
usages

Customer

sn_pss_core.service_contract_manager Performs create/ sn_pss_core.service_contract_viewer
read/update
Service contract manager
Service contract viewer
operations on:

sn_custome

CSM Manag

• Customer
contracts
• Contract lines
• Entitlements
• Characteristics
• Entitlement
usages
sn_pss_core.pss_integrator
Integration user

Performs create/ sn_customerservice.manager
read operations
CSM Manager
by using rest
endpoints
on customer
contracts and
entitlements.

sn_pss_core

Integration U

The following tables are added with the activation of the Customer Contracts and Entitlements
application.
Tables installed
Table name

Description

Characteristics

Stores the characteristic values for entitlements or
customer contract lines.

[sn_pss_core_entitlement_characteristic]
Entitlement Usage
[sn_pss_core_contract_entitlement_usage]

Stores the values used by end customers for
entitlement characteristics.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

381


<!-- page 382 -->
Tables installed (continued)
Table name

Description

Service Contract

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
The default view on customer contracts and entitlements in Customer Service Management
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
product and customer orders. With this plugin, you can efficiently
handle the order orchestration, data enrichment, and composition to
ensure an accurate and timely fulfillment.

After installing the Contracts and Entitlement Workflows plugin (com.sn_contract_ent_wf), the
following plugins are automatically installed:
Dependent plugins
Plugin

Description

Customer Contracts and Entitlements
(com.sn_pss_core)

Provides foundational objects to manage customer
contracts and entitlements.

Lead to Cash Core (com.snc.l2c_core)

Enables customers to compose Sales CRM flows.

Customer Life Cycle Management
Workflows (com.snc.l2c_cust_flows)

Provides workflows to manage the life cycles of
sold products and install base items.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

382


<!-- page 383 -->
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

The workflow enables automatic creation of a customer contract, customer
contract lines, and the entitlements for those contract lines.

Implicit
offerings

Implicit entitlements and customer contract lines are not shown on order
lines. These offers can be marked as implicit when they do not need to be
configured while capturing the order and are available as part of a package.
These entitlements and customer contract lines are automatically created as a
part of this workflow.

Creating a contract from an order
For every order with multiple product offerings, a single contract with multiple contract lines is
created. As part of the order processing, a sold product is generated for every order line.

Creating contracts from product inventory records
If the system property sn_ind_tmt_orm.enable_prod_invt_for_order_management is set to
true, order fulfillment workflows create product inventories based on customer orders, product
offerings and specifications. On creation of a product inventory, contract lines and entitlements
will be created. When a product inventory undergoes a state change, the associated contract
lines and entitlements are synced. For more information, see Product inventory configurations .
Product inventory records trigger updates to contracts and entitlements under the following
conditions:
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
and modifying customer contracts, customer contract lines, and entitlements. Based on this
decision table, you can create a quote, an order, an opportunity, or an opportunity and a quote
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

383


<!-- page 384 -->
together while renewing or modifying a customer contract. For a target entity, you can also select
when you want to initiate the renewal of the customer contract.
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
sn_opty_mgmt_core_opportunity_line_item
Opportunity

Note: You cannot create
opportunities for modifying process.
sn_quote_mgmt_core_quote_line_item,sn_opty_mgmt_core_opportunity_line_item
Opportunity and quote together

Note: You cannot create
opportunities and quotes for modifying
process.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

384


<!-- page 385 -->
Note: To create an opportunity or opportunity and quote together during renewal, the
admin needs to set up the following records:
• Sales Cycle Type: In the Code field, enter RENEW and set the Active option to True. For
more info, see Create a sales cycle for an opportunity.
• Opportunity Stage: In the Name field, enter Develop and set the Active option to True. For
more info, see Create opportunity stages.
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
application to enable users to create entitlements and customer contracts for users.

Task

Description

Create a characteristic

Create a characteristic to add to an entitlement.
A characteristic refers to the specific attributes or
properties that define the entitlement.

Create a user

Add a user to your instance to enable them to log in
and use designated application features. After adding
the user, you make them approver to review customer
contracts.

Assign a role to a user

Assign roles to users. Use this feature to grant the
sn_customerservice_manager (CSM manager) role to
a newly added user and authorize them to make an
informed judgment to review a customer contract.

Create customer accounts

Create an account and associate it to a customer
contract.

Note: On the Accounts form,
to view the customer contracts,
remove the contract-related
lists and configure the customer
contracts related list.
Create a consumer record

Create a consumer record in Customer Service
Management. A consumer can be associated with
a customer contract in the Customer Contracts and
Entitlements application.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

385


<!-- page 386 -->
Task

Description

Create a sold product

Create a record for a product that is sold to an
account or a consumer. A sold product can be
associated with multiple contracts.

Create an install base item

Create a record for an install base item that is sold to
an account or a consumer. An install base item can be
associated with multiple contracts.

Create a characteristic
Create a characteristic that can be associated with an entitlement or customer contract line.

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

Configure Sales Agreement Management
Use the Sales Agreement Management application to create sales agreements between a buyer
and a seller for future transactions.

Activate Sales Agreement Management
As an admin, you can activate the following plugins to enable users to create and manage sales
agreements. For more information, see Activate a plugin .

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

386


<!-- page 387 -->
Sales Agreement Management plugins
Plugin

Description

Sales Agreement Data Model
[com.sn_sales_agmt_core]

This plugin provides
foundational objects to
manage sales agreements.

Dependency

• Product Catalog
Management
Core[com.sn_prd_pm]​
• Price Management
[com.sn_csm_pricing]

Sales Agreement
Management
[com.sn_sales_agmt_wf]

This plugin provides workflow
to create and manage sales
agreements.

• Sales Agreement
Data Model
[com.sn_sales_agmt_core]
• Lead to Cash Core
[com.sn_l2c_core]​
• Quote Management
Application
[com.sn_l2c_quote_mgmt]

Note: You need
to install the Quote
Management
Application plugin
separately.

For more information on the installed roles and tables, see Components installed with Sales
Agreement Management. To view sales agreements from an account, you must manually
configure the sales agreement related list on the Account form.

Request apps from the ServiceNow Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Quote creation via Self-Service
The Quote Self-Service plugin (com.sn_quote_self_service) enables users to create and manage
quotes. Users can track quote status, browse catalogs, configure items, and apply discounts
through a guided quote creation playbook.

Key benefits of creating quotes via Self-Service
The Quote Self-Service application (com.sn_quote_self_service) offers the following benefits:
• A guided quote creation playbook simplifies the quoting process.
• Self-service catalog browsing, product configuration, and quote building reduces quote
turnaround time from days to minutes.
• Users can directly edit, revise, apply discounts, and download without requesting changes
through internal teams.
• Audit trail and version history for revised quote prompting trust and transparency.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

387


<!-- page 388 -->
For information about the Quote creation via Self-Service fields, see Quote creation via SelfService fields.
.

Set up Quote Self-Service
To install Quote Self-Service, see Install Quote Self-Service.
Install Quote Self-Service
Quote Self-Service is automatically installed when you install the Quote Management
application. If you install a different application, you must add the Quote Self-Service as a plugin
dependency before installation.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Depending on your entitlements, you must install demo data after installation.
Role required: admin

About this task

The following items are installed with Self-service quote.
• Plugins
• Store applications
For more information on viewing components that are installed with an application, see Find
components installed with an application .

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Quote Self-Service application (com.snc.quote_self_service) using the filter
criteria and search bar.
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they are already installed or require
installation.
4. Install demo data based on your entitlements.
Demo data install task

Description

a. Select the Load Demo Data option.
If demo data is available and you want to in­
stall it

b. Select Install.

Warning: If you don't load the demo
data during installation, it's unavailable
to load later.

If the Load Demo Data option isn't available
but you want demo data

Load the demo data after installing.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

388


<!-- page 389 -->
Demo data install task

Description

a. Install
com.sn_quote_self_service..
b. In the filter, enter v_plugin.list and
press Enter.
c. Under Related Links, select Install Demo
Data Only.

Single sign-on (SSO) integration
If you intend to use ServiceNow CPQ for a headless use case (such as exposing ServiceNow
CPQ on a website or eCommerce platform), please fill out and submit an SSO Setup Request
Form that details the identity provider (IdP) you are using for single sign-on (SSO).
This process involves:
• Creating an app for ServiceNow CPQ in your IdP tool of choice. See the steps and links below.
• Sharing parameters and users from the app with the ServiceNow CPQ team. The team will
complete the provisioning process using the parameters that you send.
• Testing and confirming that the SSO redirect works as expected.
Note the following considerations:
• ServiceNow CPQ can now support SSO with any IdP that supports OAuth2 with OpenID
Connect (OIDC).
• ServiceNow CPQ is not compatible with SAML.
• Your IdP client must be up to date.
• Users who have been added to ServiceNow CPQ before SSO was implemented may need to
be added again.
• These steps are not required if you are using ServiceNow CPQ with Salesforce.

Configuring Google SSO
ServiceNow CPQ supports Google for both personal and business single sign-on. If you use
Google IdP for identity verification, all we need are the names and email addresses of your users.

Configuring Okta SSO
To set up an application that supports the Authorization code flow for ServiceNow CPQ, start by
following the Okta Developer instructions: Implement authorization by grant type: set up your
app
For the redirect URL, specify your ServiceNow CPQ URL, append /login/oauth2/code/,
and then append your -okta subdomain. So if your URL is example.test.cpq, your redirect
URL would be https://example.test.cpq/login/oauth2/code/example-okta.
Note your client ID, client secret, redirect URL, and Okta domain.

Note: To confirm that your Okta domain is accurate, you can confirm that the OpenID
connection metadata is visible by visiting https://{oktaDomain}/.well-known/
openid-configuration. You should see a JSON file with information about the
authorization server endpoints.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

389


<!-- page 390 -->
Provide these values together with any user details, such as name and email, for users that you
want to test with. The ServiceNow CPQ team will schedule a brief call with you to obtain your
client secret. The team will complete the provisioning process from there.

Note: Users' email addresses will be used for authentication. These are case sensitive, so
make sure that the email addresses you provide are accurate.
When your ServiceNow CPQ point of contact has confirmed that setup is complete, try to visit
your tenant-specific ServiceNow CPQ URL. You should see a redirect flow that brings you to an
Okta consent screen to allow access to your ServiceNow CPQ app.

Configuring Entra ID SSO
Register an app by following the instructions on the following Microsoft Entra documentation
website:
Register an application in Microsoft Entra ID
In the Redirect URI section of the Microsoft Entra registration page, in the Select a platform
menu, select Web. For the redirect URI, enter your tenant-specific URL, append /login/
oauth2/code/, and then append <your subdomain>-entra. For example, if your URL
is example.test.cpq, your redirect URI is https://example.test.cpq/login/
oauth2/code/example-entra.
Make sure to select ID tokens on the Authentication tab of your app. For more information
about OIDC, see the following Microsoft Entra documentation website: OpenID Connect on the
Microsoft identity platform .
Note your client ID, client secret, and your Authority URL.

Note: Make sure you note the client secret at this time. It won't be available to you later.
For information about how to validate your Authority URL, see "Find your app's OpenID
configuration document URI" at the Microsoft Entra documentation website: OpenID Connect on
the Microsoft identity platform . To get the correct issuer in the metadata, make sure to include
/v2.0 at the end. You should be able to see the metadata and validate your issuer URL by
visiting it in a browser with /.well-known/openid-configuration appended to it. For
example: https://login.microsoftonline.com/c7dd9346-1cfc-4bd8-a34ca066c8bc0477/v2.0/.well-known/openid-configuration.

Note: It may be possible to directly associate your users with the application via the
Manager > Users and groups > Add user/group option in your application.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

390


<!-- page 391 -->
Optionally, add an app role for the users whom you wish to test with. For more information, see
"Add a user account to your directory, and add that account to an appRole" on the following
Microsoft Entra documentation website: Add sign-in with Microsoft Entra account to a Spring web
app
On the SSO Setup Request Form, provide the client ID, Authority URL, and redirect URl together
with user details (email, name) for the users you wish to test with. The ServiceNow CPQ team will
schedule a brief call with you to obtain your client secret.
By default, each user’s emails will act as their identifiers, but it may be possible to use a different
identifier in a user profile. The fields that can be used as identifiers are limited by what’s available
at the user_info endpoint defined in the well-known/openid-configuration URL described
above. For more information about the user_info endpoint, see the following Microsoft Entra
documentation website: Microsoft identity platform UserInfo endpoint .
Once your ServiceNow CPQ point of contact has confirmed that setup is complete, try to visit
your tenant-specific ServiceNow CPQ URL. You should see a redirect flow that brings you to an
Entra ID consent screen to allow access to your ServiceNow CPQ app.
Troubleshooting
Issue

The issuer does not match the expected
value. For example, the issue is
sts.microsoft.net instead of
login.microsoftonline.com.

Admin is redirected to http://cpq.ai, despite
being set up correctly.

Resolution

• Make sure that your issuer URL includes /
v2.0 after the tenant ID.
• Update the application manifest to set the
accessTokenAcceptedVersion to 2.
In your manifest, set the

acceptMappedClaims parameter to true
in your manifest.

Configuring another IdP
ServiceNow CPQ can now support SSO with any IdP that supports OAuth2 with OpenID Connect
(OIDC). In the SSO Setup Request Form, provide details about your preferred IdP tool and our
team will connect with you to ensure it is properly integrated with ServiceNow CPQ.

Configuring ServiceNow CPQ Configurator
Learn how to set up products, rules, pricing, and layouts in ServiceNow CPQ using configuration
engine. You can define how users select, customize, and validate products during the quoting
process.

Configuration workflow
The following workflow describes the tasks involved in configuring and using ServiceNow CPQ to
configure customizable products when embedded in Sales Customer Relationship Management.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

391


<!-- page 392 -->
ServiceNow CPQ workflow for generating product blueprints and configuring
customizable products


<!-- page 393 -->
Key components of the configurator (continued)
Component

Description

Product lists

Display the configuration BOM to the user.

Tables and table queries

Store and retrieve supporting data during configuration.

Set repeaters

Combine set functionality with flexible layouts.

Associated picklist sets

Dynamically sized sets based on menu choices.

Field grids

Tabular field groups for structured data entry.

Advanced product actions

Scripts to define which line items are sent to the configuration
BOM.

Twinning

Copies Salesforce quote data into ServiceNow CPQ fields.

Enrichments

Scripts that run outside the rules engine during configuration.

External connections

Connect to third-party data sources to retrieve configuration
data.

Build your first configuration
To build your first configuration:
• Upload a sample blueprint using the Matrix Loader. See Configure the Matrix Loader.
• Create a configurable product in Salesforce CPQ (SFDC) and associate it with your blueprint,
or create a configurable product offering in Product Catalog Management. See Create
configurable product offerings and associated blueprints.
• Launch the configuration experience by adding the product to a quote and verifying that the
blueprint-driven UI works as expected. See Set up blueprints.

Examples of commerce logic in action
Sales enablement
A sales rep enters requirements, such as the number of users. ServiceNow CPQ
applies rules and generates a valid configuration instantly, and the results flow into
Salesforce CPQ quotes.
Headless eCommerce
A customer answers guided questions in a web storefront, ServiceNow CPQ
delivers a tailored recommendation, and the customer purchases without sales
intervention.
Manufacturing integration
A complex product configuration produces both a Sales BOM and a Manufacturing
BOM. The Sales BOM passes to Salesforce CPQ, and the Manufacturing BOM flows
to ERP for production planning.
Setting up configurable products
A configurable product links a blueprint to the configuration experience for the product. You can
set up configurable products in headless environments using CSV uploads or in Salesforceintegrated environments through product associations.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

393


<!-- page 394 -->
Configurable products serve as the bridge between ServiceNow CPQ blueprints and the
configuration experiences that end users interact with. The setup process varies depending on
your environment type.

Headless environment setup
In headless environments, configurable products link blueprints to configurations that launch
when end users select products. You set up configurable products by uploading a CSV file with
product information through the Products tab in the Utilities section of the ServiceNow CPQ
navigation pane. When you set the "configurable" field to TRUE in the CSV file, the configurable
product is automatically created in the ServiceNow CPQ environment.

Salesforce integrated environment setup
In Salesforce-integrated environments, configurable products link ServiceNow CPQ blueprints to
Salesforce Product2 records. In the context of Salesforce CPQ, a configurable product serves as
the entry point to a ServiceNow CPQ configuration experience. After you define the configurable
product, end users see the appropriate ServiceNow CPQ configuration experience when they
select the Product2 record from the Product Selection step in Salesforce CPQ.
The setup process depends on when your ServiceNow CPQ Salesforce Managed Package was
installed:
• June 2022 or later: Associate Product2 records with blueprints through the SFDC Products tab
and the Associate Blueprint function.
• Before June 2022: Enable external configuration on the Salesforce Configurable Products tab
and add blueprints through the View Setup link.
Multiple Salesforce Product2 records can be linked to one blueprint, but a configurable product
cannot be associated with more than one blueprint.
Related topics
Set up a configurable product in a headless environment
Set up a configurable product in a Salesforce-integrated environment
Set up blueprints
Set up a configurable product in a headless environment
Configure a product links a blueprint to the configuration experience in a headless environment.

Before you begin

Role required: admin

About this task

In headless use cases, the configurable product links the blueprint that you created in
ServiceNow CPQ to the configuration that launches for end users when they select the product.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

394


<!-- page 395 -->
Procedure
1. Navigate to the Products tab in the Utilities section of the ServiceNow CPQ navigation pane.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

395


<!-- page 396 -->
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

396


<!-- page 397 -->
2. Select the tab for the product that you want to configure.
3. Upload a CSV file with the required headers and product information.
The CSV file must include the following headers with appropriate information for your product:

If configurable is set to TRUE, the configurable product is automatically created in the
ServiceNow CPQ environment.
Set up a configurable product in a Salesforce-integrated environment
Configure a Salesforce product to use external configuration with ServiceNow blueprints when
using current Salesforce Managed Package installations.

Before you begin

Role required: admin

About this task

If your ServiceNow CPQ SF Managed Package was installed in June 2022 or later, follow these
steps to associate a configurable product with a blueprint.

Note: If your ServiceNow CPQ SF Managed Package was installed before June 2022, see
Set up a configurable product in legacy Salesforce environment.

Procedure
1. On the Salesforce Products tab, locate the Product2 record to connect to a ServiceNow CPQ
configuration experience (blueprint).
2. Associate the Product with a Price Book entry.
The amount can be $0.00, but a value must be entered.
3. Set the product to Active and Enabled, then select Save.
4. On the SFDC Products tab, select the list view to ServiceNow CPQ View.
5. Locate the Product Name of the Product2 record created in step 3, then select the Click Here
link under View ServiceNow CPQ Setup column.
6. Select Associate Blueprint.
7. Select the desired blueprint, then select Save.
Related topics
Set up a configurable product in a headless environment
Set up blueprints
Set up a configurable product in legacy Salesforce environment
Set up external product configuration in Salesforce to connect with ServiceNow blueprints when
using legacy managed package installations.

Before you begin

Your Salesforce Managed Package must be installed before June 2022.
Role required: admin
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

397


<!-- page 398 -->
About this task

A configurable product associates a blueprint with the configuration experience for the product.
Use this procedure for environments with Salesforce Managed Packages installed before June
2022.

Procedure
1. Navigate to the Salesforce Configurable Products tab.
2. Enable external configuration by selecting Enable External Configuration.
3. Locate the Product2 record to connect to a ServiceNow CPQ configuration experience.
4. Select the Externally Configurable check box for the product.
5. Save the configuration by selecting Save.
6. Access the blueprint setup by selecting the View Setup link for the configured product.
7. Add a blueprint by selecting Add Blueprint.
8. Select the desired blueprint from the available options.
9. Complete the setup by selecting Save.
Related topics
Set up a configurable product in a Salesforce-integrated environment
Set up a configurable product in a headless environment
Set up blueprints
Set up blueprints
Blueprints define the structure of a configuration experience in ServiceNow CPQ. They act
as containers that bring together fields, rules, layouts, and configurable products, enabling
administrators to design, deploy, and manage complete configuration workflows across
environments.
The blueprint defines the configuration experience. It acts as a container for all the parts
necessary to be plugged in for the end- user interface. Because ServiceNow CPQ rules and
fields are global, they can be used to facilitate any number of configuration experiences. The
blueprint record allows the administrator to associate the subset of the fields and rules that are
relevant to the configuration experience it represents. Further, the blueprint defines layouts and
configurable products.
Unlike fields and rules, layouts can only be associated with one blueprint. A layout is defined and
built in the context of, and to explicitly support, one blueprint — one configuration experience.
However, a blueprint may have multiple layouts.
For Salesforce-integrated organizations, the configurable product element determines the SFDC
Product2 record that, when quoted in Salesforce, launches the configuration experience defined
by a blueprint. Multiple configurable products can launch the same blueprint. However, each
configurable product can only be associated with one blueprint.
For a step-by-step guide to creating a blueprint, see Create a blueprint.

The blueprint definition page
The blueprint definition page holds all of the different elements that are associated with the
blueprint. Each tab indicates the number of elements associated if relevant. Clicking each shows
specific metadata and lets you search by name or variable name, or edit each element in the
blueprint.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

398


<!-- page 399 -->
The Associated Fields tab
This tab shows all of the fields that have been associated with the blueprint. The name, type,
variable name, description, and last modified date of the fields are shown to the admin on this
page, as well as the username of the user that last modified the field. You can also drill down to
specific field types associated to the blueprint, such as sets, product pickers, and system fields.

• Standard: Shows global fields associated with the blueprint.
• Sets: Shows the sets and set subfields associated with the blueprint. Once a set is associated,
each subfield added is automatically associated with the blueprint.
• Product Pickers: Shows the product pickers and product picker subfields associated with the
blueprint.
• System: Automatically associated with each blueprint. If integrated with Salesforce, these
fields pull data automatically upon initialization without the need to specify it in an external
connection.
To learn more about fields and how to associate them with blueprints, see Configure fields.

The Related Rules tab
This tab shows all of the rules that are related to the blueprint. Unlike fields, rules connect to
a blueprint automatically as long as every field referenced by the rule is associated with the
blueprint. The name, variable name, description, action types, and last modified date of the rules
are shown to the admin on this page, as well as the username of the user that last modified the
rule.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

399


<!-- page 400 -->
Active: Shows what rules are currently set to active in their definition. When a rule is active, it
is included as a valid rule during deployment and enacts its Actions when its Conditions are
fulfilled during runtime.
Inactive: Shows what rules are currently set to inactive in their definition. They are still related to
the blueprint and is included if the blueprint is exported, but they aren't valid when deployed and
don't enact their actions during runtime.

Layout
This tab hows all of the layouts that have been created for the blueprint. The most recently
modified layout is the layout generated unless otherwise specified. The name, variable name,
last modified date, and the username of the user that last modified the layout are located on this
page.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

400


<!-- page 401 -->
The Configurable Product tab
This tab shows the configurable products that are linked to the blueprint. Calling a runtime API
with any of the associated configurable products with the blueprint, or configuring from the
product through a third-party such as Salesforce, immediately launches the blueprint. The name
and product ID are present, and an admin can delete a product by clicking the Trash icon on the
left.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

401


<!-- page 402 -->
The Deployments tab
This tab shows the fifty most recent deployments for the blueprint. The blueprint name, variable
name, and last deployment date and time are visible here, along with the username of the user
that last deployed the blueprint.

You can also see a list of the environment’s most recent deployments in the Utilities menu on the
Deployment page. See Viewing blueprint deployments.

The Enrichments tab
This tab shows the enrichment scripts that have been created for the blueprint. These scripts run
outside of the rules engine and enact their functions on their own areas, such as on initialization,
BOM response, validation, or picklist extension pricing. An admin can edit these scripts or delete
them using the Trash icon on the far left. For more information about enrichment scripts, see Set
up External connections for configuration rules.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

402


<!-- page 403 -->
Deploying a blueprint
ServiceNow CPQ configuration experiences are deployed (made available to application
end users) at the blueprint level. Administrator edits to fields, rules, layouts, and configurable
products are not visible to the end user until deployed.
To deploy a blueprint, in the Blueprints list administration page, check the box to the left of the
blueprint to deploy, and then select Deploy. (You can also select Deploy in the blueprint itself.)

The blueprint administration list page shows the deployment status of each blueprint. Icon key:
Deployed
Not deployed
Expiring Soon
In production sector environments provided to ServiceNow CPQ customers, once a blueprint is
deployed, it remains deployed, no matter its end-user activity.
In test sector environments provided to ServiceNow CPQ partners, blueprints are automatically
un-deployed after a period of thirty days with no end-user engagement. Redeploying the
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

403


<!-- page 404 -->
blueprint or launching a configuration of the blueprint resets the thirty-day period after
ServiceNow's database syncs each evening.
In demo sector environments, blueprints are automatically un-deployed every weekend.
After a blueprint is deployed, a notification alerts you to the status of the deployment process
(either In Progress or Completed).

Related topics
Create a blueprint
Testing in non-production environments before migration
ServiceNow CPQ fields, system fields, and partner fields
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

404


<!-- page 405 -->
Configure fields
Boundaries and limits
Create a blueprint
Create a blueprint to standardize product configurations and reduce setup time. Blueprints
define the structure, behavior, and configuration experience for your product models, ensuring
consistency across your catalog.

Before you begin

Role required: admin

About this task

Blueprints serve as reusable templates that streamline product creation and ensure consistent
configuration experiences. Use blueprints to define product hierarchies, set default values, and
establish configuration rules that apply across multiple products.

Procedure
1. In the ServiceNow CPQ Admin navigation pane, select Blueprints.

2. Select New.

3. Complete the blueprint form.
Blueprint form
Field

Description

Name

Unique identifier for the blueprint. Use a descriptive name that indicates the
product type or category

Description Brief explanation of the blueprint's purpose and the types of products it
supports
Variable
Name

Enter a variable name for the blueprint.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

405


<!-- page 406 -->
4. Select Submit.
The blueprint is created and appears in the Blueprints list.

Result

You can now use the blueprint as a template when creating new products. The blueprint ensures
consistent configuration options and reduces manual setup time for similar products.
Related topics
Export a blueprint
Import a blueprint
Export a blueprint
Download a blueprint as a ZIP file to move it between instances or create a backup copy.

Before you begin

Role required: admin

Procedure
1. Next to the blueprint name, select the check box.

2. In the top right, select Export.

Monitor the notifications bell icon. The first notification indicates that the export process has
started. When the export is complete, a second notification indicates that the blueprint is
ready for download.
3. In the Notifications menu, select Download.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

406


<!-- page 407 -->
The blueprint downloads as a ZIP file to your local machine.

What to do next

Import a blueprint
Related topics
Testing in non-production environments before migration
Import a blueprint
Import a blueprint by uploading it as a ZIP file.

Before you begin

Role required: admin

Procedure
1. In your Salesforce org, create the configurable product that you want to migrate the
configuration to.
2. Note the Product2 ID of the product in the org.
You can find the Product2 ID by selecting the product in Salesforce and locating the ID in the
URL.

3. Unzip the blueprint ZIP file you downloaded.
4. In the unzipped blueprint folder, open the blueprint.yaml file for editing.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

407


<!-- page 408 -->
Locate
the line that reads -id: <oldProduct2Id>.
5. In the -id line, replace the Product2 ID from the old org with the new one you created, and save
the blueprint.yaml file.

6. Rezip your exported blueprint with the updated blueprints.yaml file, blueprints folder, fields
folder, and rules folder.
You will drag the ZIP file into the file upload area in the Matrix Loader in a later step.
7. Open the Matrix Loader from the Admin area of the environment you are migrating the
blueprint into.
8. Drag the ZIP file into the file upload area in the Matrix Loader.

9. In the new org, navigate to Utilities > Settings.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

408


<!-- page 409 -->
10. Check the value in the Product ID field.
If it's set to Product Code, the process is complete.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

409


<!-- page 410 -->
11. If the Product ID field is set to Partner Id, for all the product rules in your blueprint, replace the
Product ID in their actions with the Product2 IDs of the products in the new org.

What to do next

Keep the following notes in mind:
• After the import, configurable product IDs will not be the same as in the original blueprint. They
are unique across organizations. To keep the references in rules accurate, if the setting for the
Product Id field is set to Product Code, you can create configurable products as needed and
assign them the same product code.
• Importing a blueprint does not replace the current blueprint if it already exists in the target
environment. Any items removed in the older environment, such as rules, must be manually
removed in the target environment unless they are specified in the YAML file.
Related topics
Migrate a blueprint between environments
Export a blueprint
Testing in non-production environments before migration
Test configurators in a non-production environment before migrating them to production. The
configurators support revenue-critical processes, validate all changes outside production and
promote them using controlled environment-to-environment migrations.
ServiceNow CPQ configurators should be tested in non-production environments before they are
migrated to a production environment and made available to end users.
ServiceNow CPQ configurators are key to organizations' revenue production processes.
Therefore, you must take care to ensure all configurators work as expected before they are
introduced to sales users, partners, and customers. All ServiceNow CPQ implementations have
at least one non-production environment for this purpose. Some customer IT organizations have
development processes that require a larger development stack.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

410


<!-- page 411 -->
Because all maintenance and development must be tested in a non-production environment
before promotion, this also means that:
• Migrations must take place only in the production environment. No manual work ever occurs
there.
• Environment-to-environment migration is an essential element of any administration project.
Related topics
Migrate a blueprint between environments
Migrate a blueprint to an SFDC-integrated destination
The fullBlueprintMigration parameter
Migrate a blueprint between environments
Move blueprints between ServiceNow CPQ environments to maintain consistent configuration
management. Export, update, and import blueprint packages using the Matrix Loader to promote
tested configurations from development to production.

Before you begin

Review ServiceNow CPQ upgrade windows, described in ServiceNow CPQ Upgrade Schedule.
Schedule your migration to avoid published upgrade windows. If you have questions regarding
this topic, contact your customer Support team.
Role required: admin

About this task

Understand the following terms:
• Source: The environment from which functionality is migrated.
• Destination: The environment to which functionality is migrated.
• Migration package: The file or files exported from the source environment to be imported to the
destination environment.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

411


<!-- page 412 -->
Procedure
1. Export the blueprint from the source environment.
a. In the source environment, select the blueprint to move.

b. Select Export.

The first notification indicates that the export process has started. After the export
completes, a second notification indicates that the blueprint is ready for download. Watch
for notifications on the bell icon in the lower-left corner.
c. In the bell icon menu, select the Download link.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

412


<!-- page 413 -->
d. Save the blueprint to your local machine or a central repository such as Git.
If your environment is integrated with Salesforce and you are migrating the blueprint for the
first time, verify the prerequisites. Then perform step 1 in Migrate a blueprint to an SFDCintegrated destination.
2. Modify the migration package.
a. Unzip the blueprint ZIP file you downloaded in step 1.
The file unzips to a blueprint.yaml file.

b. Open the blueprint.yaml file in a text editor.
When migrating a blueprint to a destination with an earlier version, add the following line to
the bottom of the file to avoid conflicts:
fullBlueprintMigration: true
Sample edited blueprint.yaml file:
--blueprints:
- variableName: someBlueprint
related Fields:
- field1
- field2
- field3
lastModifiedBy: dev5@dev.logik.io
name: someBlueprintName
description: BP description goes here
relatedSets: null
scripts: null
layouts: null
products: null
productPickers: /fields/productPickers.yaml
sets: null
fieldOptions: /fields/fieldOptions.csv
rules: /rules/rules.csv
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

413


<!-- page 414 -->
fields: /fields/fields.csv
fullBlueprintMigration: true
For a description of how this parameter affects the blueprint migration, see The
fullBlueprintMigration parameter. If your environment is integrated with Salesforce and you
are migrating the blueprint for the first time, perform step 2 in Migrate a blueprint to an SFDCintegrated destination.
c. Save your edits and close the blueprint.yaml file.
3. Compress all components of the migration package to a new ZIP file.
Include blueprint.yaml, the blueprints folder, the fields folder, the rules folder, and
any other artifacts from the migration package. Do not include the parent folder.

Warning: When compressing, select only the contents of the unzipped blueprint
export, not the parent folder itself. If the parent folder is selected, you receive an error
when uploading to the ServiceNow CPQ Admin.

4. Migrate components related to the blueprint to the production tenant.
For example, migrate managed tables and external connections used by the blueprint.
5. Import the blueprint to the destination environment.
a. Log in to the administration area of the ServiceNow CPQ destination environment.
b. Open the Matrix Loader.
c. Drag the edited migration package ZIP file into the Matrix Loader drop area.
d. Select Next, then select Import.
If you encounter errors after the import, follow the on-screen instructions to review the error
logs.
6. Test the migration.
a. If your environment is integrated with Salesforce and you are migrating the blueprint for the
first time, perform steps 3 and 4 in Migrate a blueprint to an SFDC-integrated destination.
b. Review your migrated blueprint from the end-user UI in the destination ServiceNow CPQ
environment.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

414


<!-- page 415 -->
Related topics
ServiceNow CPQ Upgrade Schedule
Migrate a blueprint to an SFDC-integrated destination
Migrate a blueprint to an SFDC-integrated destination
Migrate a CPQ blueprint to a Salesforce-integrated ServiceNow CPQ environment. Recreate
configurable products, update Product2 IDs, and verify connections for accurate data mapping
and integration between Salesforce and ServiceNow CPQ.

Before you begin

If needed, perform the steps mentioned in the Migrate a blueprint between environments
topic.in .
If needed, install the ServiceNow CPQ Managed Package for Salesforce in the destination. For
installation instructions, see Installation and setup guide for environments linked to Salesforce
orgs.
Confirm that the appropriate Salesforce users have access to ServiceNow CPQ.
Role required: admin

Procedure
1. In your destination SFDC org, recreate the configurable product that is associated with the
blueprint on the source SFDC org.
a. Note the Product2 ID of this product in the new org.
To view the Product2 ID, select the product in Salesforce and view the value in the URL.
b. In the migration package, open the blueprint.yaml file.
c. In the blueprint.yaml file, locate the line that reads -id: <oldProduct2Id.
d. Replace the Product2 ID from the old org with the new one that you just created, and save
the blueprint.yaml file.
2. Add all other products from the old org that were referenced in any product rules.
You must create pricebook entries for all your products! These records will be auto-replicated
in our ServiceNow CPQ product cache every fifteen minutes. Wait at least fifteen minutes
before continuing with the tests described in the following steps.
3. Test the destination by walking through quote creation and configuration.
4. Confirm that external or SFDC API calls complete successfully and point to the right external
system endpoints.
See External Connections setup in ServiceNow CPQ Admin.

What to do next

After the import, configurable product IDs will not be the same as in the original blueprint. They
are unique across organizations. To keep the references in rules accurate, create configurable
products as needed and assign them the same product code if the ProductId field is set to
Product Code.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

415


<!-- page 416 -->
Related topics
Testing in non-production environments before migration
Migrate a blueprint between environments
Installation and setup guide for environments linked to Salesforce orgs
Migrating a blueprint from test to production
You can migrate a blueprint from a test environment to a production environment using the
Matrix Loader or REST API automation.
ServiceNow CPQ administrators have two ways to migrate a blueprint from test to production: by
using the Matrix Loader, and by using REST API automation.
• Matrix Loader migration: From ServiceNow CPQ admin interface, an admin can export
a blueprint or blueprints to a ZIP file. The admin can then import these artifacts into the
production environment. Create configurable product and associate it with the blueprint in the
production environment. You can do this afterward or create the product and edit the blueprint
yaml file with the new SFDC product2 id, product code, or partner id before deployment.
• REST API automation: Robust REST API capabilities enable implementers and customers to
automate test-to-production migration in a CI/CD process.
Related topics
Testing in non-production environments before migration
The fullBlueprintMigration parameter
Learn the effects of enabling or disabling the fullBlueprintMigration parameter on sources in
various configurations. The fullBlueprintMigration parameter controls how thoroughly a blueprint
is updated during migration.

The fullBlueprintMigration parameter
When migrating an edited blueprint from a source environment to a destination environment
where an earlier version of the same blueprint exists, fullBlueprintMigration: true
instructs the destination environment to perform the migration more aggressively than it
otherwise would. In the matrix below, common scenarios performed on the source environment
blueprint are noted in the first column. The destination environment performs the corresponding
migration task according to the true or false setting of fullBlueprintMigration, corresponding to
the rightmost columns.
Effects of the fullBlueprintMigration parameter

The effect of the fullBlueprintMigration parameter when set to true or false
Activity on source
before migration

Parameter = false

Parameter = true

Picklist option
deleted

Picklist option
retained on
destination

Picklist option deleted on destination

Rule removed from
blueprint [see Note
below]

The rule remains
associated to

Rule removed from blueprint on destination

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

416


<!-- page 417 -->
Effects of the fullBlueprintMigration parameter

The effect of the fullBlueprintMigration parameter when set to true or false
(continued)
Activity on source
before migration

Parameter = false

blueprint on
destination

Parameter = true

Note: If the rule is not associated with any
other blueprint on the destination, the rule
is removed from the global rule list on the
destination,

Rule action removed
from rule

Rule Action
retained on
destination

Rule Action deleted on destination

Product is removed
from ProductList
on Simple Product
Action

Product remains
in ProductList on
destination

Product is removed from ProductList on destination

Notes
ServiceNow CPQ administrators do not directly associate or remove rules to or from blueprints.
Instead, a rule is associated with a blueprint only if all its referenced fields are associated
with the blueprint. Therefore, the admin manipulates a rule's association with a blueprint by
associating or removing (deassociating) its fields. A rule will be removed from a blueprint in
several circumstances, including:
• A field referenced by the rule is removed from the blueprint.
• In the rule, the admin adds a reference to a field that is not associated with the blueprint.
• A new rule action that references a field not associated with the blueprint, is added to the rule.
• The rule condition is modified to include a reference to a field that is not associated with the
blueprint.
Related topics
Testing in non-production environments before migration
Viewing blueprint deployments
The Deployments page shows the fifty most recently deployed blueprints together with their
timestamps and associated users.
In ServiceNow CPQ Admin's Utilities menu, the first visible page is the Deployments page.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

417


