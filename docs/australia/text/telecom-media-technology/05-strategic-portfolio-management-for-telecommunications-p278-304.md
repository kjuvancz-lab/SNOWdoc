# Australia Telecommunications, Media, and Technology — Strategic Portfolio Management for Telecommunications / SPMT Fiber rollout template / Telecommunications Customer 360

Source: servicenow-australia-telecom-media-technology-enus.pdf | Release: australia | Pages: 278–304 of 309

Sections: Strategic Portfolio Management for Telecommunications (p278); SPMT Fiber rollout template (p279); Telecommunications Customer 360 (p279); Explore (p280); Configure (p281); Use (p293)

---

<!-- page 278 -->
Field

Description

Validity start date time

Valid date and time on which the test takes
effect.

Validity end date time

Valid date and time on which the test expires.

Description

Description of the threshold rule
consequence.

6. Select Submit.

Publish test definitions
Publish the test definitions to ensure that agents only see the approved versions of test
definitions for execution. This also helps maintain consistency and control over both current and
future test versions.

Before you begin

You must ensure that the characteristic and its options are added to the test definition for
successful publishing and operation of the tests.
Role required: admin

Procedure
1. Navigate to All > Service Test Management > Test Definitions > All.
2. Select the test definition that you want to publish.
3. Select Publish.

Note: After you publish a test definition, you can't change or delete it.
Result

The test definition is published and its state changes from Draft to Published.

Strategic Portfolio Management for Telecommunications
The Strategic Portfolio Management for Telecom is a product that inherits all features of Strategic
Portfolio Management along with the addition of two templates for Fiber Rollout and 5G Projects.
Strategic Portfolio Management for Telecommunications enables you to define and customize
the tasks and requirements for your Fiber Rollout and 5G projects. A project template defines the
basic structure of a project and can include project tasks and subtasks, attachments, checklists,
and other project information. Because projects often get repeated, templates enable you to
create, save, and reuse project structure. You can also modify existing templates, create projects
from templates, and apply templates to empty projects.

Fiber Rollout project template
The Fiber Rollout project template can address challenges customer experience due to
disjointed planning, delayed service and network delivery due to manual processes, and
delayed service impact analysis. Using this template can improve the fiber rollout process by:
• Accelerating the design process
• Defining and tracking the construction and rollout
• Providing timely notifications regarding the service delivery
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

278


<!-- page 279 -->
5G project template
Using the 5G project template can simplify and streamline the project management process by:
• Proactively identifying project tasks
• Ensuring that all critical steps in the planning process are included
• Allocating appropriate resources for target dates
• Identifying key team members and stake holders
• Reducing delays and cost overruns
• Assessing risks early in the project
• Improving cross team and cross project collaboration

Strategic Portfolio Management for Telecommunications Fiber
rollout project template
This template describes the various tasks required for a fiber rollout.
The Fiber rollout project template contains the following basic tasks:
• Plan and build the network
• Network design
• Construction and rollout
• Service delivery and activation
• Customer support
• Service readiness
• Plan for future demand and network build
You can create a project from this template or modify this template according to your
requirement. For more details on using project templates, see Project templates .

Telecommunications Customer 360
The Telecommunications Customer 360 application provides a unified interface that aggregates
data from multiple systems into a single platform. Telecommunications Customer 360 is a new
application in the Australia release.

Get started

Explore

Configure

Use

Learn about
Telecommunications
Customer 360

Setup and configure
Telecommunications
Customer 360

Use Telecommunications
Customer 360

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

279


<!-- page 280 -->
Additional resources
• Learn more about the key features, see Telecommunications Customer 360 release notes

.

• Review the multiple TM Forum (TMF) Open APIs supported for the product, see TMF APIs for
TMT.
®

• Log in to your ServiceNow account and find additional information about implementing and
deploying Telecommunications Customer 360 features at the Best Practices Library .
• Access real time courses, self-paced training, and career resources at ServiceNow University
• Find useful resources related to your role and explore best practices at ServiceNow Impact
• Connect with other Telecommunications Customer 360 users at Now Community

.
.

.

Explore Telecommunications Customer 360
Use the Telecommunications Customer 360 application to get a unified view of customer data
including account details, interaction history, product inventory, and billing, and resolve issues
faster from a single workspace.
Telecommunications Customer 360 customer service representatives can look up complete
customer details and examine history and diagnostics. They can also take actions such as
creating cases, billing inquiries, and work orders.
Telecommunications Customer 360 gives customer service representatives the information,
context, and insights to analyze customer issues and reach a resolution faster, without switching
between applications.
Key capabilities include:
• A 360-degree customer card with live information for immediate, complete context.
• A unified timeline of interactions, billing details, and live diagnostics to understand the full
history behind a customer's issue.
• AI-generated summaries of customer health, recent issues, and sentiment powered by Now
Assist.
• Actions to create cases, billing inquiries, work orders, and customer orders, with playbookdriven recommendations for customer issues.
• Data visualizations including case breakdown charts and CSAT scores.
• Data configuration for different card components and ability to gather data from different
sources.
You can access the Telecom Customer 360 page from the CSM/FSM Configurable Workspace
from an account, consumer, or contact table.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

280


<!-- page 281 -->
To start using Telecommunications Customer 360, see Telecommunications Customer 360 home
page.

Configure Telecommunications Customer 360
Setup and configure the Telecommunications Customer 360 application.

Activate Telecommunications Customer 360
If you have an admin role, you can activate the Telecommunications Customer 360 application.
The Telecommunications Customer 360 (com.sn_telecom_c360) plugin is available as a
separate subscription. The application includes the demo data and installations that are related
®
to ServiceNow Store applications and plugins.
The Telecommunications Customer 360 (com.sn_telecom_c360) plugin activates these related
plugins, if they aren’t already active.

Plugin / Scoped app

Details

Customer Service

com.sn_customerservice

Customer Central

com.sn_csm_customer_central

Customer Service Billing
Account

com.snc.billing_account

Order to cash common
architecture

com.sn_otc

Case management for invoice
operations

com.sn_csm_invoice

Customer Lifecycle Management com.snc.customer_lifecycle_mgmt_workflows
Workflows
Case Playbook for Complaints

com.sn_csm_complaint_caseflow

Order management for TMT

com.sn_om_tmt

Customer Service Problem
Management

com.sn_sprb_mgmt

Customer 360 data configuration com.sn_c360_dataconfig
Recommended Actions for
Telecommunications

com.snc.sn_telecom_ra

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

281


<!-- page 282 -->
Plugin / Scoped app

Details

Now Assist for
Telecommunications (optional)

com.sn_telco_gen_ai

Setup Telecommunications Customer 360
Use the Telecom Customer 360 guided setup to configure the unified customer view for your
organization. Complete the three setup tasks to define your cards and configure their data and
settings. Verify the page layout before customer service agents use it.

Before you begin

Role required: sn_telecom_c360.admin

About this task

Use the guided setup option to review the default configuration for the Telecommunications
Customer 360 view, and make changes if required. You can skip individual tasks if no changes
are needed, but all three tasks must be marked complete before the setup is finished.

Procedure
1. Navigate to All > Telecom Customer 360 > Guided Setup and select Get Started.

2. Complete the Define 360 cards task.
3. Select the 360 Cards tab.
The following cards are included with the base system:
◦ Insights
◦ Contact card
◦ Interaction history
◦ Data visualization group
◦ Billing
◦ Products
◦ All tasks
4. To update an existing card definition, select Configure, select the card you want to edit, follow
the steps on the guided setup page and select Mark as Complete.
5. Select the 360 Variables tab.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

282


<!-- page 283 -->
Card variables define the configurable properties for each card, such as data tables, query
conditions, and display fields. Review or update the variables associated with each card and
select Mark as Complete to unlock the next task.
6. To create a custom card, select Configure and then select New and fill in the required fields.
Creating a custom card only defines the card's metadata. To display the card in the Telecom
Customer 360 view, you must also add it to the page in UI Builder. See UI Builder
for details.
7. Complete the Configure 360 card data and settings task.
Use this task to configure the data, display, and visibility settings for each card for the three
supported contexts: account, consumer, and contact. Select Configure and review or update
the following:
◦ Context table, card variables, and query conditions that determine the data to be retrieved.
◦ Fields and columns to be displayed on the card.
◦ User roles to restrict access to specific users.

Note:
◦ To override or change the default card setting, clone the card setting, modify it as
required, and set a higher order than the default setting.
◦ To create a role specific experience, create card setting record, define the context table
and variables, and set a specific role and higher order than the default setting.
8. Complete the Configure 360 view task.
9. Select Configure to open the Telecom Customer 360 record page variant in UI Builder.

Note: The Telecom Customer 360 record variant is set to Read-only. Do not edit the
Telecom Customer 360 record variant directly to preserve the base configuration and
avoid upgrade conflicts. Clone the record variant, set an appropriate order, update the
variant condition and audience on the new version. See UI Builder
for details.
10. Select Mark as Complete.

Result

After the cards have been configured, customer service agents can start using the
Telecommunications Customer 360 application. See Telecommunications Customer 360 home
page for details.
Configure the Telecommunications Customer 360 variables
Configure the properties for each card, such as data tables, query conditions, and display fields.
Configure the data visualization group variables
Configure the variables in the data visualization card.

Before you begin

Role required: sn_telecom_c360.admin

Procedure
1. Navigate to All > Telecom Customer 360 > Guided Setup and select Get Started.
2. Select 360 Cards > Data visualization group.
3. Modify the following variables.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

283


<!-- page 284 -->
Variable name

Description

Saved visualizations

A list of saved visualization records to be displayed on the card.
The default values are top customer cases and the CSAT score.

PAR visualization filters

Name-value pairs that define the dynamic performance analytics
filters used to associate each visualization to the current context
record.

Related topics
Data visualization card
Configure the contact card variables
Configure the variables in the contact card.

Before you begin

Role required: sn_telecom_c360.admin

Procedure
1. Navigate to All > Telecom Customer 360 > Guided Setup and select Get Started.
2. Select 360 Cards > Contact.
3. Modify the following variables.

Variable name

Description

Data table

The table to retrieve customer fields from (for example,
customer_account)

Data table query

Query condition that filters the data table to the current context
record.

Fields

Comma separated list of fields to display on the card. Default
fields are Mobile phone, Phone, Email, Street, City, State/Province.

Avatar field

The field from the data table to be used as the avatar image for
the card.

Show avatar

Controls whether the avatar is displayed.

Related topics
Contact card
Configure the billing card variables
Configure the variables in the billing card.

Before you begin

Role required: sn_telecom_c360.admin

Procedure
1. Navigate to All > Telecom Customer 360 > Guided Setup and select Get Started.
2. Select 360 Cards > Billings.
3. Modify the following variables.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

284


<!-- page 285 -->
Variable

Description

Billing account table

The table from which the billing accounts
are to be retrieved. The default is
sn_billing_account_billing_account.

Billing account table query

Query condition that filters the billing account table to
accounts associated with the current context record.

Billing account dropdown field

The field from the billing account table to use as the
account label in the drop down filter.

Invoice table

Based on the selected billing account, the table from
which the invoices are to be retrieved.

Invoice case table query

Query condition that filters the list of invoices for the
selected billing account.

Invoice header field

The field from the invoice table used to display the
header label for each invoice row.

Invoice fields

The fields to be displayed for each billing invoice.
Default includes invoice number, invoice date, due
date, and payment date.

Invoice search field

The search criteria to be used to filter the list of billing
accounts to be displayed.

Related topics
Billing card
Configure the insights card variables
Configure the variables in the insights card.

Before you begin

Role required: sn_telecom_c360.admin

Procedure
1. Navigate to All > Telecom Customer 360 > Guided Setup and select Get Started.
2. Select 360 Cards > Insights.
3. Modify the following variables.

Variable name

Description

Enable proactive trigger This variable is enabled by default. If this variable is inactive,
the insights are not automatically generated when you open the
customer or consumer account. After you open the account, select
Generate telecom customer 360 insights to generate the insights
for the account.
Related topics
Insights card

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

285


<!-- page 286 -->
Configure the products card variables
Configure the variables that control what data the products card displays and how users can
search and filter sold products.

Before you begin

Role required: sn_telecom_c360.admin

Procedure
1. Navigate to All > Telecom Customer 360 > Guided Setup and select Get Started.
2. Select 360 Cards > Products.
3. Modify the following variables.

Variable

Description

Product data table

Table used to retrieve product list items. Must be the sold
product table (sn_install_base_sold_product) or a
child table extending from this table. Custom tables that extend
from the sold product table are also supported.

Product data table query

Query condition that filters the product table to the current
context record. By default, products that have a parent sold
product are excluded.

Primary filter

Field used as the primary filter at the top of the card. Defaults to
product location.

Heading field

Field displayed as the heading of each product list item.
Defaults to the sold product name.

Subheading field

Field displayed as the subheading of each product list item.
Defaults to the product specification category.

Product search field

Search criteria used to filter the list of sold products displayed.

Avatar field

Field used for the product avatar image. Defaults to the product
model category image. If no value is specified, a default image
appears.

Enable search on product
characteristics

Flag that enables search by product characteristics. Select
this flag to enable search against product characteristic values
in addition to the product search field. Search is performed
against characteristic values only.

Related topics
Products card
Configure the all tasks card variables
Configure the variables in the all tasks card.

Before you begin

Role required: sn_telecom_c360.admin

Procedure
1. Navigate to All > Telecom Customer 360 > Guided Setup and select Get Started.
2. Select 360 Cards > All tasks tabset.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

286


<!-- page 287 -->
3. Modify the following variables.

Variable

Description

Tab tables

The list of task tables to display as tabs. Each entry
corresponds to one tab in the card. To add tab, add
the table name and specify a query condition. To
remove a tab, delete its entry from the list.

Task table query conditions

Query conditions that filter each task table to records
related to the current context record. For example,
filter cases by matching the case account sys_id to
the current account sys_id.

Related topics
All tasks card

Extension points in Telecommunications Customer 360
Use scripted extension points to configure the display of the cards on the Telecommunications
Customer 360 consumer page.
To access the available extension points, type sys_extension_point.list in the
application navigator and select Enter. You can create multiple implementations for each
extension point and provide an order number for each implementation. The implementation that
has the lowest order number is executed.
Telecommunications Customer 360 extension points
Extension point

Description

sn_telecom_c360.ContactCardDataProvider
Control the data displayed on the Contact card for
an account, consumer, or contact record. You can
customize which fields appear, override the card
title and avatar logic, or change how the editable
state is determined.
sn_telecom_c360.InsightCardDataProviderControl the configuration for the Customer insight
card and shows AI-generated insights. You can
customize which Now Assist skill configuration
is used and whether insights are triggered
automatically when the card loads.
sn_telecom_c360.DataVisualizationDataProvider
Define which reports appear on the Data
visualization card and how context record values
are mapped to report filters. You can add custom
filter logic or support filter types not handled by the
default implementation.
sn_telecom_c360.BillingsDataProvider

Customize how billing accounts and invoices are
retrieved for the Billings card. You can change how
billing accounts are linked to the context record,
add custom invoice filtering or sorting logic, or
adjust how invoice amounts and statuses are
displayed.

sn_telecom_c360.ProductsServicesDataProvider
Customize how the Products & services card
retrieves product inventory data, applies filters, and
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

287


<!-- page 288 -->
Telecommunications Customer 360 extension points (continued)
Extension point

Description

creates change orders. You can add support for
different product tables, change how filter options
are built, or modify the change order creation logic.
sn_telecom_c360.AllTasksDataProvider

Customize which task tables appear on the All
tasks card and what actions are available in the
card header. You can add or remove task tables,
apply custom filters, or change the create action
configuration.

sn_telecom_c360.ProductsRelatedDataProvider
Add custom pill types to individual product rows on
the Products & Services card. Each implementation
provides data for one type of related record (such
as cases or incidents) linked to a sold product.
sn_telecom_c360.CardViewModel

Control whether a specific card is visible on the
Customer 360 workspace. Implement isMatch to
identify which card your view model applies to, and
implement isVisible to define the conditions under
which that card should be shown. By default, any
card with no matching view model is visible.

sn_telecom_ra.UseCaseGuidanceNAPConfig
Configure behavior for use case guidances
that trigger agentic workflows. Implement
canInteractWithUser to control whether
the agent can interact with the human agent in the
panel. Implement forceNewConversation
to control whether a new conversation is created.
Implement getWindowConfigOverrides
to provide window configuration overrides for the
panel.
sn_telecom_c360.VoiceInteractionDataProvider
Control the behavior of the Customer 360 record
page when opened as a sub page from a voice
interaction. Implement the provided methods to
customize the consumer lookup alternate flow and
to control which cards or layout columns are hidden.
Related topics
Using extension points to extend application functionality
Using scripted extension points in server-side scripts
Using UI extension points in server-side UI macros
Using client extension points in client-side UI scripting

Add the Customer 360 tab to a record page
Add the Customer 360 tab to any record page using either the page collection approach or the
manual component approach, depending on your page type and required features.
Use the following guidance to determine which approach to use:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

288


<!-- page 289 -->
• Page collection approach: Use this approach to add the Customer 360 tab to a record page
along with the Recommended Actions and Run Diagnostics icons in the contextual side panel.
See Add Telecom Customer 360 to any record page.
• Manual component approach: Use this approach to manually add the Telecommunications
Customer 360 component as a tab to any other record page in the CSM/FSM Configurable
Workspace. See Add the Telecom Customer 360 component to a record page.
Related topics
Add Telecom Customer 360 to any record page
Add the Telecom Customer 360 component to a record page
Add Telecom Customer 360 to any record page
Follow this procedure to add the Customer 360 to any record page and enable recommended
actions and diagnostics in the contextual side panel.

Before you begin

Role required: sn_telecom_c360.admin

About this task

This variant provides two page collections that can be added to any record page:
• Telecom Customer 360 Main Tabs: Adds a Customer 360 tab to the main tab area of the
record page.
• Telecom Customer 360 Contextual Side Panel Tabs: Adds Recommended Actions and Run
Diagnostics icons to the contextual side panel.

Note:
• The Telecom Customer 360 tab and contextual side panel icons are visible only to users
with the sn_telecom_c360.user role.
• The Recommended Actions and Run Diagnostics options are displayed only if the record
context is a consumer or a customer account.

Procedure
1. Add the Telecom Customer 360 Main Tabs page collection to the main tab area.
a. In UI Builder, open the record page where you want to add the page collection.
b. In the content tree, select Main Tab and select Add.
c. Select Add a page collection and select Next.
d. Select Telecom Customer 360 Main Tabs and select Continue.
When this page collection is added, the Telecom Customer 360 component and the
Telecom Customer 360 Tabs Controller are added.
2. Add the Setup Customer360 Context data resource to the record page.
This data resource identifies whether the record is associated with a consumer or an account
and provides the table name and sysID for the Customer 360 component. For details on
configuring this data resource, see Add the Setup Customer360 Context data resource.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

289


<!-- page 290 -->
3. Locate the Telecom Customer 360 Tabs Controller and associate the table and sysID to the
output of the Setup Customer360 Context data resource.
4. Add the Telecom Customer 360 contextual side panel tabs page collection to the tab sidebar.
a. In the content tree, select Tab Sidebar and select Add.
b. Select Add a page collection and select Next.
c. Select Telecom Customer 360 contextual side panel tabs and select Continue.
d. Locate the Telecom Customer 360 Data Controller and associate the following inputs with
the outputs of the Telecom Customer 360 Tabs Controller:
▪ AllProductsList
▪ ConfigSettingID
▪ productTable

Result

You will see the Customer 360 tab on the record page to which the page collections have been
added. When you navigate to this tab, the Recommended Actions and Run Diagnostics options
appear in the contextual side panel.
Related topics
Telecommunications Customer 360 component
Add the Telecom Customer 360 component to a record page
Add the Setup Customer360 Context data resource
Telecommunications Customer 360 component
Telecom Customer 360 is a UI Builder component that provides a comprehensive 360 degree
view of a customer record in the CSM/FSM Configurable Workspace. You can embed this
component as a tab on the record page of any customer record.
All cards that appear on the Telecommunications Customer 360 home page are displayed on the
Telecom Customer 360 component page with a few changes.
• The header information is not included as the component appears as a tab on the application
record page.
• The All tasks card has a Tasks header and a Create option.
• The Run diagnostics option is not available on the Products card.
• The Related items contextual sidebar is not displayed.
The Customer 360 tab has been added to the complaint case. In this example, the complaint
case record page includes a Customer 360 tab that displays a 360-degree view of the account
or consumer associated with the case.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

290


<!-- page 291 -->
Add the Telecom Customer 360 component to a record page
Add the Telecom Customer 360 component to a record page in UI Builder so that customer
service representatives can see the 360-degree consumer or account view in the context of the
record they are working on.

Before you begin

Role required: sn_telecom_c360.admin

About this task

Add the Telecom Customer 360 component as a dedicated tab on a record page in the CSM/
FSM Configurable Workspace. The component displays configurable cards scoped to a single
customer record. Cards cover customer contact details, products and services, billing, tasks,
interaction history, data visualizations, and Now Assist AI insights.

Important: This procedure adds the component as a standalone tab. If you are adding
the component to a CSM case record page and want Recommended Actions and Run
Diagnostics to work in the contextual side panel, use the page collection approach instead.
See Add Telecom Customer 360 to any record page.
After adding the component, you must also add the Setup Customer360 Context data resource
to the page. This data resource resolves the record to the associated account or consumer.
Without it, the component context can't be determined. See Add the Setup Customer360
Context data resource.
The component can be added only as a new tab on the record page. You can't embed it within an
existing tab.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select Experiences.
3. Select CSM/FSM Configurable Workspace from the list.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

291


<!-- page 292 -->
4. Open any existing record page, or create a record page, add a tab to the page, and then add
the Telecom Customer 360 component.
For detailed instructions on how to add a component, refer to the UI Builder
documentation.
5. Add the Setup Customer360 Context data resource to enable the Telecom Customer 360
component to display the correct consumer or account view.
See Add the Setup Customer360 Context data resource for details.
6. Configure the Telecom Customer 360 component properties.
Set the following three properties. Leave all other component properties at their default values.

Label

Name

Value

Table

Table

Select the table output of the Setup Customer360
Context data resource.

Sys ID

sysId

Select the sysId output of the Setup Customer360
Context data resource.

Card definition
map

cardDefinitionMap
A JSON object that maps each card key to the sys ID of
the card definition record to display. See the following
example:
{
"insights":
"<sys_id_of_insights_card>",
"contact":
"<sys_id_of_contact_card>",
"interaction":
"<sys_id_of_interaction_history_car
d>",
"billings":
"<sys_id_of_billing_card>",
"products":
"<sys_id_of_products_card>"
}

Note: The Card definition map uses the sysIds from the
sn_c360_dataconfig_card table.

Result

When you navigate to a record on the page where the component is added, the new tab displays
the Telecom Customer 360 view for the account or consumer associated with that record. To
change the cards that are displayed or the data shown on each card, update the card settings as
described in Configure the Telecommunications Customer 360 variables.

What to do next

Add the Setup Customer360 Context data resource to the page. For more information, see Add
the Setup Customer360 Context data resource.
Add the Setup Customer360 Context data resource
Add the Setup Customer360 Context data resource to the record page to enable the Telecom
Customer 360 component to display the correct consumer or account view.

Before you begin

Role required: sn_telecom_c360.admin
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

292


<!-- page 293 -->
About this task

The Setup Customer360 Context data resource resolves the record on the page to the
associated account or consumer and provides the table name and sys ID to the Telecom
Customer 360 component. The data resource reads the account and consumer fields on the
record and returns the populated reference.
• If only the account field is populated, the data resource returns the account table and the
account sys ID. The component displays the 360 view for that account.
• If only the consumer field is populated, the data resource returns the consumer table and the
consumer sys ID. The component displays the 360 view for that consumer.

Procedure
1. In the Data and scripts section, select Add data resource.
2. Select the Setup Customer360 Context data resource.
3. Configure the data resource with the following inputs:
◦ Table: The table of the record page where the component is placed. Select the page
parameter that contains the table name.
◦ Sys ID: The sys ID of the record on the page. Select the page parameter that contains the
record sys ID.
4. Save the page.

What to do next

Configure the Telecom Customer 360 component properties. For more information, see
Configure the Telecommunications Customer 360 variables.

Use Telecommunications Customer 360
Use Telecommunications Customer 360 to view and manage customer information from a single
view.

Telecommunications Customer 360 home page
Telecommunications Customer 360 consolidates customer information, interaction history,
products, and billing into a single view. The view displayed is based on the record type which can
be account, consumer, or contact.
To view the page, navigate to the CSM/FSM Configurable Workspace and select an account,
consumer, or a contact from the List view.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

293


<!-- page 294 -->
The page displays the following cards:
• Insights: Displays an AI generated summary of the customer health and top customer issues.
• Data visualization card: Visualizations showing issues and CSAT score.
• Contact card: Primary account holder's account, contact, or consumer information.
• Customer history card: A timeline of past interactions across phone and chat channels.
Additional interaction channels can be configured.
• Products card: Displays a list of all the sold products associated with the account, consumer, or
contact.
• Billing card: Billing account details, invoices, and payment status for the account, contact, or
consumer.
• All tasks card: Quick-create options for service problem cases, work orders, invoice cases,
complaint cases, customer orders, and standard cases.

Related items
The Related items in the contextual sidebar provides quick access to related records and
customer activity for the current account, consumer, or contact. Default related list items have
been configured for account, consumer, and contact records but can be modified.
To configure the list of related items that appears, navigate to All > Customer service >
Customer. Then select Account, Consumer, or Contact, add, or remove a related list from the
view to update it in the contextual panel.

Note: The related items that appear are determined by the related lists configured in the
Customer 360 view. See Setup Telecommunications Customer 360 for details.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

294


<!-- page 295 -->
Tasks
You can perform the following tasks on this page by selecting an option from the Create drop
down list. You will either see a dialog box or a new page where you can enter information related
to the selected option.
• Service Problem Case: See Create a service problem case from the workspace.
• Case: See Create a service problem case in the Customer Service Portal.
• Customer Order: See Configuring Order Management
• Work Order: See Create a work order

.

.

• Complaint Case: See Case Playbook for Complaints
• Invoice Case: See Create an invoice case

.

.

Note: The options that appear in the Create drop down list are based on the tables
configured in the Tab tables field in the all tasks card settings. See All tasks card for details.
Insights card
The card provides AI-generated customer health insights and recent customer issue insights for
a consumer or a customer account.
The following insights are displayed on the card:
• Customer health: Displays the overall customer health trend based on cases and sentiment
data analyzed over the past 30 days. If no sentiment data or closed cases are available, the
card displays a message indicating that no data is available for analysis.
• Top recent customer issues: Displays a summary of recent customer issues based on open
cases and service problem cases associated with the consumer or customer account. The
summary includes:
◦ A one to two line overview of the most common or significant issues.
◦ A list of individual issues, each showing the case or service problem number, opened date,
priority, status, assigned to, and details.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

295


<!-- page 296 -->
You can configure variables such as tables, display fields, and query conditions. See Configure
the insights card variables for details.
Data visualization card
The data visualization card provides key customer metrics with case breakdowns and customer
satisfaction score.
The following visualizations are displayed for the account, consumer, or contact record:
• Case breakdown donut chart: Displays the total number of cases associated with the current
record as a donut chart, broken down by case type (for example, Issue and Facility Issue). The
total case count is shown in the center of the chart. Each segment represents a case category
and is color-coded.
• Customer Satisfaction Score (CSAT): Displays the average CSAT data for the current record as
a single numeric score with a trend line based on when the data was last collected. The CSAT
score is based on satisfaction surveys submitted by customers. The score displayed is the
average across all surveys taken by the relevant contact for the current record:
◦ Account Score is calculated from surveys taken by the account's primary contact.
◦ Contact context: Score is calculated from surveys taken directly by that contact.
◦ Consumer context: Score is calculated from surveys taken by the primary user associated
with the consumer record.
You can configure variables such as tables, display fields, and query conditions. See Configure
the data visualization group variables for details.
You can add custom visualizations to the data visualizations card. For details, see Platform
Analytics experience .

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

296


<!-- page 297 -->
Contact card
The contact card displays the primary customer identification information for the account,
consumer, or contact.
The contact card displays the following for each context:
• Avatar: An optional image configured when the card was setup.
• Interactions badge: A count of the recent interactions gathered from the Interaction history
table.
• Contact information: Includes personal information like Mobile phone, Phone, Email, Street,
City, and State/Province.
Use the Edit icon to modify any information on the card and select Save to save and update the
card.

Note: The Edit option is available only for users with the
sn_customerservice_manager role.
You can configure variables such as tables, display fields, and query conditions. See Configure
the contact card variables for details.
Customer history card
This card displays recent customer activity associated with the account, consumer, or contact.
Activity types include chat and phone interactions, as well as cases, contracts, work orders, and
other activity types that you have configured.
All closed interactions associated with the account, consumer, or contact are grouped by date
and sorted with the most recent date shown first. Each interaction entry show:
• Channel icon: A visual indicator of the activity type.
• Interaction number: A link that opens up the full interaction record (for example, IMS0000011).
• Short description: A brief summary of the interaction, including the contact name and the
agent assigned to the interaction.
• Relative timestamp: How long ago the interaction occurred (for example, "about a month ago").

Note: You can customize the interaction details that are displayed. See Configuring the
Customer History component

for details.

You can do the following:
• Search: Enter a key word to display interactions meeting the search criteria.
• Filter: Specify filters to view activity by type, such as chat, phone, cases, or contracts.
• Date range: Browse interactions by date.
• View more: 10 interactions are displayed by default. Select View More to view additional
interactions.
The information displayed in the customer history is based on the facets configured for
the activity contexts in the Customer Central
module. For more details on configuring the
information displayed, see Create facets for activity contexts .
Products card
The products card displays a list of all products associated with the account, consumer, or
contact.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

297


<!-- page 298 -->
The top 5 active sold products sorted by state and name are displayed. For each sold product,
the following details are displayed:
• Heading: The name of the sold product by default. Configurable to any field from the product
data table.
• Subheading: The product specification category by default. Configurable to any field from the
product data table.
• Count indicators: Shows the count of the following related records associated with the sold
product:
◦ Cases
◦ Service problem cases
◦ Incidents
◦ Test results
Each related record indicator shows the total count. Select a record indicator to view a pop-up
dialog box listing showing the top 3 records sorted by created date. Select the link to drill down
to the record page.

Note: Only top-level sold products are shown in the table. Products with a parent sold
product are excluded.
You can do the following:
• Filter the list of sold products displayed by Location but this can be configured.
• Specify a search criteria to view the list of sold products that meet the criteria. You can search
either by name or product characteristic values.

Note: Search by product characteristic values is available only if the Enable search
on product characteristics flag is enabled. For more information, see Configure the
products card variables.

• Select the

icon to drill down to the sold product record page.

• Select the Run diagnostics icon to run diagnostics against a sold product.
• If there are more than 5 sold products, select View all to view all the products on the Sold
Product page. Product actions, including Modify, are also available for each product in the
View all list.
• You can modify the existing configurations, suspend, resume, or disconnect the sold products
and their hierarchy. Select the

icon and select one of the following actions:

◦ Modify: This opens the page for the selected product. Modify the details as required and
select Update. This creates a customer order record with the associated line items.
◦ Suspend: Create an order to suspend a sold product and its hierarchy. Specify the Start
date and time, the Reason for Suspension, and select Suspend.
◦ Resume: Create an order to resume a sold product and its hierarchy. If a sold product is in an
Inactive or Suspended state, specify the Start date and time and select Resume.
◦ Disconnect: Disconnect a sold product and its services after fulfillment. Specify the Start
date and time, the Reason for disconnection, and select Disconnect.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

298


<!-- page 299 -->
Note: These actions are available only for customer accounts.
You can perform these actions for multiple sold products from the View all list. For more details
about these actions and the required conditions, see Customer Life Cycle Management
Workflows .

Run diagnostics
Use this option to initiate service tests such as a speed test or connection test against a
customer's sold products. Tests must be configured against the sold product's model ID before
they appear as available options.
You can run diagnostics from:
• A specific product: Select the Run diagnostics icon on a sold product list item. The available
tests configured against that product's model ID are shown.
• Page level: Select Run diagnostics without a product selected. All sold products associated
with the current account are listed. The agent selects a product, and the available tests for that
product are shown.
After selecting a test and initiating it, a confirmation is shown that the test has been initiated.
Once a test is run, the result is created as a record. Refresh the page to view the test results
counter updated. Select the test results to view the top 3 three test results sorted by creation
date. Select the link to drill down to the record page.
You can configure variables such as tables, display fields, and query conditions. See Configure
the products card variables for details.
Related topics
Creating pages and page variants
Billing card
The billing card displays a list of the customer's billing accounts and invoices.
The billing card displays billing accounts and invoices associated with the current account,
consumer, or contact record. For each billing account, the following details are displayed:
• Billing account name: Displays the list of billing accounts associated with the record. If multiple
billing accounts exist, use the drop-down list to switch between them. To view invoices for a
specific account in the hierarchy, select a child account from the drop-down list to filter the
invoice list.
• Invoices: Displays the list of invoices for the selected billing account, including invoice number,
invoice date, due date, and payment date.
You can do the following:
• Search: Enter a number to display invoices associated with the account.
• Filter: Specify filters in the drop down list to view parent and child accounts.
• View all: 5 invoices are displayed by default. Select View all to view additional invoices.
• Select the

to drill down to the invoice record page.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

299


<!-- page 300 -->
• Select Create invoice case to create an invoice case for the billing account. See Create an
invoice case
for details.
• Select the Refresh icon to refresh the invoice list to reflect any newly added records or any
changes made to the invoices.
You can configure variables such as tables, display fields, and query conditions. See Configure
the billing card variables for details.
All tasks card
The All tasks card aggregates tasks from multiple configurable tables and displays them in a
tabbed layout.
Each tab corresponds to a task type and shows the records related to the current account,
consumer, or contact. The tabs shown depend on the plugins are installed on the instance.
By default, service problem cases, cases, customer orders, work orders, complaint cases, and
invoice cases are displayed if the following plugins are installed:
• Customer Service Problem Management (sn_sprb_mgmt)
• Customer Service (com.sn_customerservice)
• Order Management (sn_ind_tmt_orm)
• wm_order, (global)
• Case Playbook for Complaints (sn_complaint)
• Case Management for Invoice Operations (sn_csm_invoice)
You can do the following:
• Select the gear icon to personalize the columns that are displayed in each tab.
• Add filters to the columns to customize the list of records displayed.
• Select a link to drill down to the related record page.
You can configure variables such as tables, display fields, and query conditions. See Configure
the all tasks card variables for details.

View interaction record
Use this option to view and manage customer phone interaction records.

Before you begin
• Interaction Controls Component plugin (com.app_interaction_control) plugin must be installed.
• Role required: sn_telecom_c360.admin, sn_telecom_c360.user

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace > Interactions > All Interactions.
2. Select an interaction from the list of consumer phone interaction records displayed.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

300


<!-- page 301 -->
3. Select the Verify and open details option to verify the details and open the consumer record
page.

Note:
◦ The Verify and open details option is displayed only if the Verified check box has not
been selected in the Interaction record page.
◦ This page is a variant of the Customer Service Management voice interaction page.
The Open Frame configuration with the Interaction Controls component must be active
for this page to display. This configuration is shipped with demo data and is active by
default. For setup prerequisites and configuration details, see CSM voice interaction
record page .
Related topics
Telecommunications Customer 360 home page
Creating pages and page variants

Recommendations panel
The Recommendations panel displays Knowledge Base article suggestions and enables you to
search for Knowledge Base articles and trigger agentic workflows.
The Recommendations panel is available in the contextual side panel on the
Telecommunications Customer 360 home page. It contains two tabs:
• Suggested actions: Knowledge Base articles that are available as part of demo data.
• Search: Enter a search term to find Knowledge Base articles and, when the ServiceNow
Otto for Telecommunications, Media, and Technology (TMT) application is installed, agentic
workflows that match the term.

Suggested actions
If demo data is installed, the Suggested actions tab displays Knowledge Base articles relevant to
the current account or consumer.
When demo data is not installed, no rule mappings exist and the Suggested actions tab is empty.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

301


<!-- page 302 -->
To open the full content of a suggested Knowledge Base article, select Open record on the
article.

Search
By default, a non-AI recommended action context is installed that supports Knowledge Base
article search only. When you enter a search term, the results show matching Knowledge Base
articles with a Knowledge badge. Select Open record on a result to view the article.

When the ServiceNow Otto for Telecommunications, Media, and Technology (TMT) is installed,
AI recommended action contexts are installed and the default non-AI recommended action
contexts are deactivated. When you enter a search term, the results show both Knowledge Base
articles and matching agentic workflows with an option to trigger them.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

302


<!-- page 303 -->
Note:
• You can view the agentic workflows only if you have the sn_aia_viewer role.
• You can execute a workflow only if you have the sn_nb_action.next_best_action_user role
and at least one of the roles defined for the specific agentic workflow.

The Trigger Workflow button is enabled only when all of the following conditions are true:
• You have the now_assist_panel_user role, which lets you open the Now Assist panel.
• A record exists in the sys_gen_ai_skill table for the agentic workflow. Without this record, the
agentic workflow appears in the search results, but the Trigger workflow option is turned off.
• You have at least one of the roles defined for the specific agentic workflow. The role list is
configured on the Workflow Role Masking Configuration related list of the use case record, in
an Agent Access Role Configuration with the Limit To Roles action.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

303


<!-- page 304 -->
Select Trigger Workflow to open the Now Assist panel and run the workflow. Your search term is
passed to the workflow as the initial user prompt.
If the rule mapping for the workflow includes a context data input, that JSON string is also passed
into the workflow as context memory.
For example, if you search for suggest configuration items for change
request CHG0001234 and select Trigger Workflow, the workflow opens in the AI Admin
Hub with that full string as the initial prompt. The workflow uses the change request number
directly to find relevant configuration items.
To map the context data input for a workflow, open the recommendation rule record and populate
the Context Data guidance input with an optional JSON string. Alternatively, open the search
result mapping record and populate the Context Data guidance input. For more information, see
Launch agentic workflow guidance.
Related topics
ServiceNow Otto for Telecommunications, Media, and Technology (TMT)
Telecommunications Customer 360 home page
Launch agentic workflow guidance
Launch agentic workflow guidance is a configuration record that determines which agentic
workflow runs when a user selects it from the Recommended Actions panel. It also defines what
context data is passed to the workflow during execution.
The Launch Agentic Workflow guidance is available if Generative AI Controller is installed. It
supports three inputs:
• Use Case: The specific agentic workflow to run.
• Context Data: An optional JSON string that is passed into the workflow as context memory
when the workflow runs. Context data is background data and does not appear in the
Recommended Actions panel or affect how recommendations are displayed.
• Objective: The objective or the request provided to the workflow.

Mapping guidance inputs
You can map guidance input in two ways, depending on how the workflow is triggered in the
Recommended Actions panel:
• Recommendation rule: Open the context record under Recommended Actions, open or
create a rule, and add a recommendation with the Guidance action type and Launch Agentic
Workflow as the action. After saving, the guidance inputs appear. Populate each input field as
needed. You can use data pills to dynamically populate the value from the current record.
• Search result mapping: Open the search result mapping record for the workflow and populate
the guidance inputs.
For more information about mapping guidance inputs, see Map AI search results with guidance
inputs in Recommended Actions .
Related topics
Recommendations panel

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

304


