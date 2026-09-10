# Zurich Customer Service Management — Organize agent workspaces

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 449–598 of 2452 | Part 2 of 4

Sections: Organize agent workspaces (p299)

---

<!-- page 449 -->
Order case line item form fields (continued)
Field

Description

Approved quantity

Stores the quantity change approved by the agent.

Expected start date
Requested expected date
Approved expected date
Current shipping location

Stores the original shipping location.

Requested shipping location

Stores the requested change in shipping location.

Resolution code

Choice list indicating the resolution states for the case.

Close notes

Details about how the case was closed.

Additional comments

Customer-viewable comments added to the activity stream.

Work notes

Comments and information added to the activity stream that
are available only to internal users.

Components installed with Order Operations Case Management
Several types of components are installed with the Order Operations Case Management
application, including tables, roles, and service definitions.

Tables
The Order Operations Case Management application adds the following tables.
Order Operations Case Management tables
Table

Description

Order Case

Stores order case records. This table extends
the Case [sn_customerservice_case] table.

[sn_order_case]

Records in the Order Case table use the prefix
ORDCS.
Order Case Line
[sn_order_case_line]

Stores the case line items created for order
cases. This table extends the Case Line
[sn_case_line] table.
Requesters and fulfillers can use this table
to capture the orders and order lines as line
items on an order case for which they want to
request order changes, resolve disputes, or
make inquiries.
Records in the Order Case Line table use the
prefix ORDCSL.

The Order Operations Case Management application also uses the following tables from the
Case lines and workflows application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

449


<!-- page 450 -->
Case lines and workflows tables
Table

Description

Case Line

The Case Line table stores case line item
records. This table extends the Task table.

[sn_case_line]

The prefix for case line records is CSL.
Case Line Characteristic

The Case Line Characteristic form displays
details about a case line item on a case
record.

[sn_case_line_characteristic]

The prefix for case line characteristic records
is CSLC.
Case Line Task

The Case Line Task table stores the tasks
related to case line items. This table extends
the Case Task table.

[sn_case_line_task]

The prefix for case line task records is
CSLTASK.

Roles
The Order Operations Case Management application includes roles that provide access to order
cases and order case line items. It also updates some existing roles to provide this same access.
Order Operations Case Management roles
Role

Description

Includes roles

Order case agent

Provides create, read, and
update access to:

• sn_customerservice_agent

[sn_order_case.agent]

• Order cases
• Order case line items
• Case line characteristics
• Order case tasks

• sn_order_case.creator
• sn_order_case.writer
• sn_order.navigation_menu
• sn_order_case.delete

• Order case line tasks
Provides read access to:
• Orders
• Order line items
• Order line characteristics
Order case agent manager

Provides create, read, and
update access to:
[sn_order_case.agent_manager]
• Order cases
• Order case line items

• sn_customerservice_manager
• sn_order_case.agent
• sn_order_case.report_viewer

• Case line characteristics

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

450


<!-- page 451 -->
Order Operations Case Management roles (continued)
Role

Description

Includes roles

• Order case tasks
• Order case line tasks
This role can also override
agent actions.
Order case viewer
[sn_order_case.viewer]

Provides read access to the
following records:

sn_case_line.characteristic_viewer

• Order cases
• Order case line item s
• Case line characteristics

Order case creator
[sn_order_case.creator]

Provides create access to the
following records:
• Order cases

• sn_order_case.viewer
• sn_case_line.characteristic_creator

• Order case line items
• Case line characteristics
Order case writer
[sn_order_case.writer]

Provides write access to the
following records:
• Order cases

• sn_order_case.viewer
• sn_case_line.characteristic_writer

• Order case line items
• Case line characteristics
sn_order_case.delete

Provides delete access to
order cases and case line
items.

• sn_order_case.viewer
• sn_case_line.characteristic_delete

Note: Once a case has
been submitted, only
users with the admin role
can delete an order case
or case line items.
Order case report viewer

Report viewer role for the
Order Case and Order Case
[sn_order_case.report_viewer] Line tables. This role can view
reports for order cases.
sn_order_case.navigation_menuProvides access to Order case
navigation menus.
sn_caseline_characteristic.viewer
Provides read access to case
line characteristic records if
the user has access to the
case line items.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

451


<!-- page 452 -->
Order Operations Case Management roles (continued)
Role

Description

Includes roles

sn_caseline_characteristic.creator
Provides create access
to case line characteristic
records if the user has access
to the case line items.

sn_caseline_characteristic.viewer

sn_caseline_characteristic.writerProvides update access
to case line characteristic
records if the user has access
to the case line items.

sn_caseline_characteristic.viewer

sn_caseline_characteristic.delete
Provides delete access
to case line characteristic
records if the user has access
to the case line items.

sn_caseline_characteristic.viewer

sn_caseline_characteristic.report_viewer
Report viewer role for the
Case Line Characteristic table.
Case task agent

This role provides access to
case tasks and related case
[sn_customerservice.case_task_agent]
information.
For the Order Operations
Case Management
application, when a case line
task is assigned to a case
task agent, that agent has
read access to the following
records:

• sn_customerservice.customer_data_viewer
• sn_customerservice.csm_workspace_user
• sn_customerservice.case_contributor_editor

• Order case
• Order case line item
• Case line characteristic
When a case line task is
assigned to a case task
agent, the agent's name and
assignment group are added
to the Contributor Users and
Contributor Groups fields
on the Order case record. If
the Assigned to field on the
case line task record changes,
these fields are updated.

Service definitions and service definition categories
The Order Operations Case Management application provides the following order case service
definitions. These service definitions belong to the Orders service definition category, which
stores services for order-related issues. When creating a case, agents can select the desired
service definition in the case type selector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

452


<!-- page 453 -->
Note: The system administrator needs to activate these service definitions. Navigate to
All > Customer Service > Administration > Service Definitions and filter the list to show
service definitions from the Order Case [sn_order_case] table.
For more information about service definitions and categories, see the following topics:
• Service definitions
• Service definition categories
Order case service definitions
Service definition

Description

Sales Order Change Request

Request a change to sales order lines on a
single order or multiple sales orders.
• Type: Post Sales
• Table: Order Case [sn_order_case]
• Products: All
• Service definition category: Orders

Sales Order Dispute

Dispute an entire order or specific order lines
on an order.
• Type: Post Sales
• Table: Order Case [sn_order_case]
• Products: All
• Service Definition Category: Orders

Special handling notes configuration
The Order Operations Case Management application includes a configuration for special
handling notes on the Order Case table [sn_order_case]. To view this record, navigate to Special
Handling Notes > Configuration.
The configuration for the Order Case table includes the following related fields:
• Account
• Contact
• Product Model
• Sold Product
• Install Base
• Assigned to
This configuration includes a condition that creates special handling notes for order cases that
have a priority of P1 - Critical. It also includes the following information:
• Short description: Urgent issue reported.
• Message: This case is set as critical. Follow up immediately.
For more information, see Special handling notes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

453


<!-- page 454 -->
Order case archive rules
The Order Operations Case Management application includes archive rules that archive older
order cases.
Order Operations Case Management archive rules
Archive rule

Description

Archive Order Case

This rule archives order case records that
have been closed for more than 2 years.
Archiving these order case records also
archives the following records:
• Order case tasks
• Order case lines
• Case line characteristics
• Order case line tasks

Archive Order Case Line

This rule archives order case line records
that have been closed for more than 2 years.
Archiving these order case records also
archives the following records:
• Case line characteristics
• Order case line tasks

Order case records that have been archived for more than 5 years are deleted. Deleting these
records also deletes the following records:
• Order case tasks
• Order case line items
• Case line characteristics
• Order case line tasks

Order case workflows
The Order Operations Case Management application includes subflows that provide the
mapping between a customer order and an order case. These subflows are used when an agent
creates an order case from a customer order.
These subflows create the data mapping between two different entities: 1) the customer order
and 2) the order case. For example, when mapping a customer order to order case line items, the
entities share some fields such as Account, Contact, and Contract. The data mapping copies
these field values from the customer order to the order case line items on the order case.
• If an order case is created by selecting Create case from a customer order:
◦ The Scope of request is set to Multiple orders.
◦ The mapping copies the data from the selected order headers to create order case line
items.
• If an order case is created by selecting Create case from the Order Line Items list on a
customer order.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

454


<!-- page 455 -->
◦ The Scope of request is set to Specific line items, Single order.
◦ The mapping copies the data from selected order lines to create case line items as well as
copies the order line characteristics to case line item characteristics.
Subflows:
• Primitives - Order to order case for multiple request
◦ Inputs: Order IDs, Order Case ID
◦ Action: Create Case Line Item - Multiple Request
Creates an order case line item on the order case based on the customer order.
• Primitives - Order to order case for single request
◦ Inputs: Order ID, Order Case ID, Selected IDs
◦ Action: Create Case Line Item - Single Request
Creates order case line items based on the selected order line items from the customer
order.
To view these subflows, navigate to All > Process Automation > Workflow Studio and select
Subflows on the Workflow Studio homepage.
Case Lines and Workflows
The Case lines and workflows application provides the ability to reference multiple line items
on a case record. Agents can use these line items to capture, track, and resolve multiple related
issues in a single case.
The Case lines and workflows application provides the framework for a case type to handle
multiple related issues. One example is the Orders case type available with the Order
Operations Case Management application. This case type enables agents to create cases with
case line items for multiple orders or for multiple order lines within a single order.
Case line items enable agents to track multiple issues for the same case. Agents can resolve
these different issues, represented by case line items, independently before resolving and
closing the case. Agents can take different actions on different case line items depending on the
need.
This application supports different types of line items based on the source of the case. These
line items can include entities such as orders or order lines, invoices or invoices lines, contracts,
and sold products. Each case line item maps to an entity line (for example, an order line) and has
its own resolution process.

Benefits of using case line items
Using the Case lines and workflows application provides the following benefits:
• Identify when an order cannot be filled completely and recommend alternative items.
• Process inflight order changes and customer-initiated changes, such as changes to items,
quantities, or requested ship dates.
• Process order exceptions and manage the approval and fulfillment process.
• Manage suppliers by creating supplier cases for order-related questions, such as increasing or
decreasing quantity, quality issues, or status tracking.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

455


<!-- page 456 -->
Case lines and workflows plugin
The Case lines and workflows application (com.sn_case_line) enables the Case table to
store multiple line items on a case record. These line items are product instances and can be
extended for various entities such as orders, order lines, invoices, invoice lines, and contracts.
The case lines and workflows application includes a Case Line Items list view in the Core UI. To
access the Case Line Items list, navigate to All > Customer Service > Cases > All Line Items.
The Case lines and workflows application application also includes tables and roles. For more
information, see Components installed with Case lines and workflows.
The Case lines and workflows application is available from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Related topics
Order case pages
Case line item form
Case line task form
Case line characteristic form
Case line entitlement form
Case line record pages
The Case lines and workflows application includes record pages that display case line items,
case line characteristics, and case line tasks in CSM Configurable Workspace.
The following record pages use the CSM default record page to display case line, case line task,
and case line characteristic information in CSM Configurable Workspace.
Case line record pages
Case line item page

The case line item page shows the details
of a case line item, including customer and
product information, the requested change to
the ordered quantity, the shipping location,
and estimated dates.

Case line task page

The case line task page displays information
about a task created for a case line item.

Case line characteristic page

The case line characteristic record page
displays details about the product offering
included in a case line item.

Case line entitlement page

The case line entitlement page displays
details about an entitlement associated with a
case line item.

Case line item page
The case line item page displays information about a case line item associated with a case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

456


<!-- page 457 -->
The case line item page shows the details of a case line item, including customer and product
information, the requested change to the ordered quantity, the shipping location, and estimated
dates.

Case line item page tabs
The case line item page includes the following tabs:
• Details: Displays the case line item details, including order and account information, ordered
and requested quantities, and shipping information.
• Case Line Characteristics: Displays the specific characteristics of the case line item.
• Case Line Tasks: Displays the tasks created for the case line item.
• Case Line Entitlements: Displays the entitlements associated with the
case line item. The visibility of the Entitlements tab is controlled by the
sn_customerservice.advanced_entitlements system property.
The Entitlements tab displays the entitlements associated with the case line item. From this
tab, users can associate one or more entitlements to a case line item. The system displays
the available entitlements for a case line item based on the customer's service contracts and
accounts.

Contextual side panel
The contextual side panel on the case line item page includes different tools that agents can use
to research and resolve customer issues. The contextual side panel on the case line item page
includes the following tabs.
• Record Information
• Attachments
• Templates

Case line item page UI actions
The case line page includes the following actions.
Case line page actions
Action

Description

Create case line task

Appears in the case line item action bar.
To create a case line task:
1. Select Create case line task to display a Create New Case
Line Task record in a separate tab.
2. Enter information in this record and select Save to create the
case line task record.
Case line tasks are added to the Tasks tab on the case line
record.

Save

Appears in the case line item action bar. Selecting this action
saves changes to the case line item record.

Delete

Appears in the More actions menu. Selecting this action
displays a confirmation pop-up window. Select OK to complete
the delete action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

457


<!-- page 458 -->
Case line page actions (continued)
Action

Description

• Agent role: can delete case line item records in Draft state.
• Admin role: can delete case line item records in any state.

Case line task page
The case line task page displays information about a task created for a case line item.
Agents can use the case line task page to view information about a case line task and to assign
the task to other users.

Case line task page tabs
The case line task page includes the following tabs:
• Details: Displays the case line task details, including the parent case and case line item,
account and contact, and assigned group and user.
• SLAs: Displays the SLAs for the case line task.
• Time Worked: Displays time worked on the case line task.

Contextual side panel
The contextual side panel on the case line page includes different tools that agents can use to
research and resolve customer issues. The contextual side panel on the case line task page
includes the following tabs.
• Record Information
• Attachments
• Templates

Activity stream
The activity stream on the case line task page displays a list of activities occurring on the case
line task record.
The activity stream can be collapsed to provide a quick view of case activities or expanded to
provide more detail about individual activities.
Agents can use the activity stream to post work notes and comments about the case line task
and to view a list of the task activities.
Case line item states
A case line item can be in one of several different states as agents work to resolve a case and the
associated case line items. The case line items in a case can be in different states as the agent
works to resolve each issue.
Case line item states
State

Description

Draft

The case line item is in the Draft state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

458


<!-- page 459 -->
Case line item states (continued)
State

Description

When a case is created and is in the Draft state, the associated
case line items are also created in the Draft state.
New

The case line item is in the New state.
When a case is submitted and moved to the New state, the
associated case line items that are currently in the Draft state
are also moved to the New state.

Work in Progress

The assigned agent is working on the case line item.

Awaiting Info

The assigned agent has requested additional information
about the case line item and is waiting for a response.

Resolved - Accepted

The change to the case line item has been accepted.

Resolved - Denied

The change to the case line item has been denied.

Cancelled

The case line item has been cancelled.

Syncing the state of a case with the case line items
The Case lines and workflows application syncs the state of the case line items with the parent
case.
Case and case line item states
State

Description

Draft

When a case is created for an item with multiple lines, such as
an order, new case line items are also created. The case and
case line items are created in the Draft state.

New

When a case is submitted, the state is updated from Draft
to New. The states of the associated case line items that are
currently in the Draft state are also set to New.

Work in Progress

When an agent selects Assign to me on a case in the New
state, the state is updated from New to Work in Progress. The
states of the associated order case line items that are currently
in the New state are also set to Work in Progress.
If any of the associated case line items are set to Work in
Progress, the case is set to Work in Progress.

Resolved

When a case is set to Resolved, the status of each associated
case line item is also set to Resolved.
If all of the case line items are Resolved, the case is set to
Resolved.

Closed

If all of the case line items are in a terminal state, the case can
be set to Closed. Terminal states include:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

459


<!-- page 460 -->
Case and case line item states (continued)
State

Description

• Resolved - Accepted
• Resolved - Denied
• Cancelled
Cancelled

When a case in the Draft state is set to Cancelled, the status of
each associated case line item is also set to Cancelled.

Note: Agents can only cancel cases in the Draft state.
Creating case line items and case line tasks
Agents can create case line items for cases and create tasks for case line items.

Creating case lines
To create a case line record:
• CSM Configurable Workspace: Open a case and select New on the Case Line list action bar to
open a new case line record in the Draft state.
• Core UI: Open a case and select New on the Case Lines related list on the case record to open
a new case line record in the Draft state.
The information in the following fields is copied from the parent case:
• Account
• Contact
• Parent case
• Priority
• Assignment group
• Assigned to
If a bundled product is added to a case line item record, the system creates a case line item for
each component in the bundle after the agent saves the new case line item record. The case line
characteristics are also created for each component.

Create a case line task
The case line item record includes a Create case line task action that agents can use to create
tasks for a case line item.
1. Open a case line item record.
2. Select Create case line task to open a Create new case line task form.
Some fields on this form are auto populated with details from the Case line record.
3. Enter additional information as needed.
4. Select Save to create the case line task record.
Case line tasks appear in the Tasks tab on the case line item record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

460


<!-- page 461 -->
Case Line list action bar
In CSM Configurable Workspace, the Case Line list action bar appears at the top of the Case
Line list component on a case record.
Agents can add case lines from existing entities, such as orders or invoices, or create new case
lines.
• New: Opens a Create New Case Line record in a separate tab. Fill in the fields and select Save
to add the case line to the list.
• Add: Displays the Add lines to case modal. Select one or more lines and then select Add to
add the selected case lines to the list.
After selecting a case line, users can edit the case line details, assign a case line to themselves,
or delete a case line.
• Edit: Displays the details for the selected case line in a panel. Make the necessary changes
and select Update at the bottom of the panel.
• Assign to me: Assigns the selected case line to the current user.
• Delete: Deletes the selected case line. Select Delete all in the confirmation pop-up window.
Case Management for Invoice Operations
The Case Management for Invoice Operations application enables customer service agents to
create cases for specific lines from a single invoice or for multiple invoices.
Invoice case record

The Case Management for Invoice Operations application includes the Invoice case type. This
case type provides the ability to reference multiple invoices or invoice lines as case lines on an
invoice case record. By using case lines, agents can track multiple issues for the same invoice
case and resolve the issues in each case line independently before resolving and closing the
invoice case.
Use invoice cases to handle issues such as invoice disputes or requested corrections. With this
application, agents can create an invoice case and add the invoices or invoice lines that are
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

461


<!-- page 462 -->
being disputed or that must be corrected. Agents can work through the case, create case tasks
for other team members as needed, or assign case lines to other agents.

Benefits of using invoice cases
Businesses can encounter invoice issues for many reasons including price or quantity
discrepancies or incorrect products or services. Invoice issues can also result from incorrect
customer details such as incorrect billing or shipping locations. The following table provides
some examples of these issues and the resulting invoice cases.
Invoice case examples
Reason

Case example

Price adjustments

The quantity of items invoiced does not match what was
ordered or delivered, leading to either underbilling or
overbilling.

Price discrepancies

The amount billed does not match the agreed-upon price or
contract terms, such as incorrect discounts, tax calculations,
or unit prices.

Incorrect customer
information

The invoice contains errors in the customer's name, address,
or billing information, which can affect payment processing.

Missing or incorrect items

An invoice includes products or services that were not
delivered, or omits items that were delivered but not invoiced.

Part number or SKU errors

The part numbers or SKUs listed on the invoice do not
match the products that were ordered or delivered, causing
confusion or errors in inventory and payment processing.

Currency issues

An invoice is issued in the wrong currency or without proper
conversion rates, creating discrepancies in the payment
amount.

Incorrect unit of measure
(UOM)

The unit of measure (for example, quantity per box, per meter,
per kilogram) on the invoice is incorrect, causing confusion or
errors in pricing and quantity calculations.

Dispute on negotiated price,
discounts, or promotions

The invoice reflects a different price than what was negotiated,
or discounts and promotions are not applied, leading to a
dispute over the final amount due.

Incorrect invoice number

The invoice number does not follow the correct sequence,
leading to accounting or tracking problems.

Overview of creating an invoice case
The following table provides an overview of the process for creating an invoice case. For detailed
steps, see Create an invoice case.
Steps for creating an invoice case
Step

Description

Creating an invoice case

An agent can create an invoice case from CSM
Configurable Workspace or from the Core UI
by selecting New from the Invoice Cases list
view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

462


<!-- page 463 -->
Steps for creating an invoice case (continued)
Step

Viewing the invoice case record

Description

After creating an invoice case record, agents
can:
• Add invoices or invoice lines to the case.
• Delete invoices or invoice lines from the
case.
• Create new invoice case lines.
• Edit the details of invoice case lines.
• Assign invoice case lines to themselves.
• Create tasks for invoice case lines.

Submitting the invoice case record

Selecting Save on the Invoice case record
moves the invoice case to the Draft state.
After reviewing the record details, the agent
can select Submit on the Invoice case record
to move the invoice case and the invoice
case lines to the New state. Once in the New
state, agents can begin working to resolve the
invoice case. This includes creating tasks for
invoice case lines, assigning them to other
agents or team members, and monitoring case
progress.

Case Management for Invoice Operations plugin
Case Management for Invoice Operations (com.sn_csm_invoice) is a case management
application for handling support requests on invoices or invoice lines. This application enables
customers to process invoice service requests such as invoice disputes or invoice inquiries.

Note: The Case Management for Invoice Operations application has a dependency on
the Case lines and workflows application (com.sn_case_line).
The Case Management for Invoice Operations application includes list views for CSM
Configurable Workspace and Core UI.
• In CSM Configurable Workspace, expand the Invoice Cases list category in the Lists tab.
• In Core UI, navigate to All > Invoice Case.
The Case Management for Invoice Operations application also includes tables, roles,
service definitions, the Invoice case type, and other components. For more information, see
Components installed with Case Management for Invoice Operations.
The Case Management for Invoice Operations application is available from the ServiceNow
Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

463


<!-- page 464 -->
Invoice case pages
The Case Management for Invoice Operations application includes record pages that display
invoice cases and invoice case lines in CSM Configurable Workspace.
The Case Management for Invoice Operations application enables agents to create invoice
cases that reference customer invoices and invoice lines. Using invoice cases, agents can
manage and track customer requests and the actions taken to fulfill these requests.
Invoice cases contain invoice case lines, which represent either invoice lines from a single
invoice or multiple invoices. The Case Management for Invoice Operations application includes
the following record pages to display this information in CSM Configurable Workspace.

Invoice case record page
The Invoice case record page displays information about invoice cases and the associated list of
invoice case lines.
Invoice case record page

Customer service agents use this page to do the following:
• Add invoices or invoice lines to the invoice case.
• Delete invoices or invoice lines from the invoice case.
• Create new invoice case lines.
• Edit the details of invoice case lines.
• Assign invoice case lines to themselves.
The Case Management for Invoice Operations application uses the CSM default record page to
display Invoice case records in CSM Configurable Workspace.

Invoice case line record page
The Invoice case line record page displays information about an invoice case line associated
with an invoice case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

464


<!-- page 465 -->
Invoice case line record page

The Invoice case line record shows the details of an invoice case line, including customer and
product information, the invoiced quantity, invoice discounts, and the billing and shipping
locations. From this page, agents can select Create case line task to create tasks for invoice
case lines.
Invoice case and invoice case line states
Invoice cases and invoice case lines move through several different states as agents work to
resolve the individual case lines in invoice cases.

Invoice case states
Invoice cases can be in the states listed in the following table. Actions available on the invoice
case record enable agents to move cases from one state to another.
Invoice case states
State

Description

Draft

The invoice case is in the Draft state.
Select Submit Case on the invoice case record page to move
the invoice case and all of the invoice case lines that are
currently in the Draft state to New.

New

The invoice case has been submitted and is in the New state.
Select Assign to me on the record page to assign the case
to the logged-in user and move the invoice case and all of
the invoice case lines currently in the New state to Work in
Progress.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

465


<!-- page 466 -->
Invoice case states (continued)
State

Description

Work in Progress

The assigned agent is working on the invoice case.
Select the following actions:
• Request Information: Use this action to request additional
information from the contact or consumer. The state moves
to Awaiting Information.
• Propose solution: Use this action to propose a resolution
to the contact or consumer. The state moves from Work in
Progress to Resolved.

Awaiting Info

The agent is waiting for the contact to provide the requested
information for the invoice case.
Select Information Received to move the invoice case back to
Work in Progress.

Resolved

The agent has proposed a resolution for the invoice case to
the contact.
Select Close Case on the record page to move the invoice
case to Closed.

Closed

The invoice case has been resolved and the resolution has
been accepted by the contact.
When all of the case lines for an invoice case are in a Final
state, the case can be set to Closed. Final states include:
• Resolved - Accepted
• Resolved - Denied
• Canceled

Canceled

The invoice case has been canceled.
Select Cancel to cancel an invoice case.

Note: You can only cancel invoice cases in the Draft
state.

Invoice case line states
Invoice case lines can be in the states listed in the following table. The case lines in an invoice
case can be in different states as the agent works to resolve each issue.
Invoice case line states
State

Description

Draft

The invoice case line is in the Draft state.
When an invoice case is created and is in the Draft state, the
associated invoice case lines are also in the Draft state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

466


<!-- page 467 -->
Invoice case line states (continued)
State

Description

New

The invoice case line is in the New state.
When an invoice case is submitted and moved to the New
state, the associated invoice case lines that are currently in
Draft state are also moved to the New state.

Work in Progress

The assigned agent is working on the invoice case line.

Awaiting Info

The assigned agent has requested additional information
about the invoice case line and is waiting for a response.

Resolved - Accepted

The change to the invoice case line has been accepted.

Resolved - Denied

The change to the invoice case line has been denied.

Canceled

The invoice case line has been canceled.

Note: An agent can manually change the state of each invoice case line to Resolved Accepted, Resolved - Denied, or Canceled. When all of the invoice case lines are in one of
these states, the state of the invoice case changes to Resolved.

Syncing the state of an invoice case with the invoice case lines
State changes for an invoice case can result in state changes for the associated invoice case
lines. These changes are detailed in the following table.
Invoice case and invoice case line states
Invoice case state

Invoice case line state

Draft

Saving a new invoice case creates the case in the Draft state.
Invoice case lines for the invoice case are also created in the
Draft state.

New

When an agent submits an invoice case, the state is updated
from Draft to New. The states of the associated invoice case
lines that are currently in Draft state are also set to New.

Work in Progress

When an agent selects Assign to me on an invoice case in the
New state, the state is updated from New to Work in Progress.
The states of the associated invoice case lines are also set to
Work in Progress.
If any of the case lines are set to Work in Progress, then the
case is also set to Work in Progress.

Resolved

If a case is set to Resolved, the status of each of the case lines
is also set to Resolved.
If all of the case lines are Resolved, then the case is set to
Resolved.

Closed

When all of the case lines for an invoice case are in a final
state, the case can be set to Closed. Final states include:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

467


<!-- page 468 -->
Invoice case and invoice case line states (continued)
Invoice case state

Invoice case line state

• Resolved - Accepted
• Resolved - Denied
• Canceled
When an agent selects Close Case on an invoice case in
the Solution Proposed state, the system updates the state to
Closed.
Canceled

When a user selects Cancel on an invoice case in the Draft
state, the system updates the state to canceled. States for the
invoice case lines associated with the invoice case are also set
to canceled.

Note: You can only cancel invoice cases in the Draft
state.
Components installed with Case Management for Invoice Operations
Several types of components are installed with the Case Management for Invoice Operations
application, including tables, roles, and service definitions.

Tables
The Case Management for Invoice Operations application adds the following tables.
Case Management for Invoice Operations tables
Table

Description

Invoice Case

Stores invoice case records. This table
extends the Case [sn_customerservice_case]
table.

[sn_csm_invoice_case]

Records in the Invoice Case table use the
prefix INVCS.
Invoice Case Line
[sn_csm_invoice_case_line]

Stores the case line items created for invoice
cases. This table extends the Case Line
[sn_case_line] table.
Requesters and fulfillers can use this table to
capture the invoices and invoice lines as line
items on an invoice case for which they want
to resolve disputes, or make inquiries.
Records in the Order Case Line table use the
prefix INVCSL.

The Case Management for Invoice Operations application also uses the following tables from the
Case lines and workflows application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

468


<!-- page 469 -->
Case lines and workflows tables
Table

Description

Case Line

The Case Line table stores case line item
records. This table extends the Task table.

[sn_case_line]

The prefix for case line records is CSL.
Case Line Characteristic

The Case Line Characteristic form displays
details about a case line item on a case
record.

[sn_case_line_characteristic]

The prefix for case line characteristic records
is CSLC.
Case Line Task

The Case Line Task table stores the tasks
related to case line items. This table extends
the Case Task table.

[sn_case_line_task]

The prefix for case line task records is
CSLTASK.

Roles
The Case Management for Invoice Operations application includes roles that provide access
to invoice cases and invoice case line items. It also updates some existing roles to provide this
same access.
Invoice Operations roles
Role

Description

Invoice case agent

The invoice case agent should
have CRUD access to the
invoice case header, invoice
case line items, read-only
access to invoices and invoice
lines, products and product
characteristics, accounts and
contacts and assignment of
invoice cases

[sn_csm_invoice.agent]

Invoice case manager
[sn_csm_invoice.manager]

Invoice case task agent

The invoice case manager
should have all the access
that invoice case agent has +
manages agents + manager
reports

The invoice case task should
have all the access to the
[sn_csm_invoice.invoice_case_task_agent]
case tasks assigned to the
agent as well as read-only
access to view the invoice
case/invoice case lines,

Includes roles

• sn_customerservice_agent
• sn_case_line.characteristic_delete
• sn_csm_invoice.creator
• sn_csm_invoice.writer
• sn_otc.ar_invoice_viewer
• sn_csm_invoice.navigation_menu

• sn_csm_invoice.agent
• sn_csm_invoice.report_viewer
• sn_customerservice_manager
• sn_case_line.characteristic_report_viewer

• sn_otc.ar_invoice_viewer
• sn_customerservice.case_task_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

469


<!-- page 470 -->
Invoice Operations roles (continued)
Role

Description

Includes roles

invoices/invoice lines that
case task is associated with
and also be able to update
worknotes and comments
In addition to the persona roles, granular roles on invoice case header and invoice case lines are
also needed.
Invoice Operations granular roles
Role

Description

Includes roles

Invoice case viewer

Read only access to
invoice case, invoice case
lines if access to invoice
case, invoice case line
characteristics if access to
case line.

sn_case_line.characteristic_viewer

[sn_csm_invoice.viewer]

Read access to invoice cases.
Invoice case creator
[sn_csm_invoice.creator]

Creating an invoice case with
invoice case lines and invoice
case line characteristics.

• sn_case_line.characteristic_creator
• sn_csm_invoice.viewer

Create access to invoice
cases.
Invoice case writer
[sn_csm_invoice.writer]

Editing an invoice case with
invoice case lines if access to
invoice case and invoice case
line characteristics if access
to case line.

• sn_case_line.characteristic_writer
• sn_csm_invoice.viewer

Write access to invoice cases.
Invoice case navigation menu

Access the invoice case
navigation menu item.
[sn_csm_invoice.navigation_menu]
Role to access the invoice
case navigation menus.
Invoice case report viewer
[sn_csm_invoice.report_viewer]

Access to invoice case
reports.
Report viewer access to
invoice cases.

Service definitions and service definition categories
The Case Management for Invoice Operations application provides the following invoice case
service definition: Invoice Disputes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

470


<!-- page 471 -->
• Type: Post-Sale
• Table: Invoice Case [sn_csm_invoice_case]
• Products: All
• Service definition category: Invoice
Agents can use this service definition to raise a dispute for one or more invoices or for specific
lines on a single invoice.
This service definition belongs to the Invoice service definition category, which stores services
for invoice-related issues. When creating an invoice case, agents can select this service
definition in the case type selector.

Note: The Invoice Disputes service definition is not active by default. To activate this
service definition, the system administrator can:
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Filter the list to show service definitions from the Invoice Case [sn_invoice_case] table.
3. Select Invoice Disputes.
4. Enable the Active check box.
For more information about service definitions and categories, see the following topics:
• Service definitions
• Service definition categories

Service level agreements (SLAs)
The Case Management for Invoice Operations application includes the following SLAs for the
Invoice Case table (sn_csm_invoice_case).

SLA

Initial Response Time for P1 and P2 cases

Description

• Start condition: State of the case is New and
Priority is P1 or P2.
• Stop condition: State is not New or Draft.
• Schedule: None (24x7).
• Duration: 4 hours.

Initial Response Time for P3 and P4 cases

• Start condition: State of the case is New and
Priority is P3 or P4.
• Stop condition: State is not New or Draft.
• Schedule: 8am-5pm weekdays excluding
holidays.
• Duration: 8 hours.
Duration: 8 hours.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

471


<!-- page 472 -->
SLA

Resolution SLA for P1 and P2 cases

Description

• Start condition: State of the case is New and
Priority is P1 or P2.
• Pause condition: State of the case is
Awaiting information.
• Resume condition: State of the case is not
Awaiting information.
• Stop condition: State of the case is
Resolved.
• Schedule: None (24x7)
• Duration: 2 days.

Resolution SLA for P3 and P4 cases

• Start condition: State of the case is New and
Priority is P3 or P4.
• Pause condition: State of the case is
Awaiting information.
• Resume condition: State of the case is not
Awaiting information.
• Stop condition: State of the case is
Resolved.
• Schedule: 8am-5pm weekdays excluding
holidays.
• Duration: ???.

Invoice case type
The Case Management for Invoice Operations application includes the Invoice case type. This
case type captures the case information for invoice-related issues.
In addition to the fields on the customer service case record, the Invoice Case table
[sn_csm_invoice_case] includes the following fields:
• Invoice number: The invoice number that the invoice case has been opened for.
• Request source: The source of the invoice case. Invoice cases can be created from the
following sources:
◦ Specific invoice lines, single invoice
◦ Invoice header details, multiple invoices
For more information about case types, see Customer service case types.
To view the Invoice case type, navigate to All > Customer Service > Case Types > Manage Case
Types and select Invoice.

Invoice case form views
The Case Management for Invoice Operations application includes form views to display invoice
cases in CSM Configurable Workspace and in the Core UI.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

472


<!-- page 473 -->
This application uses the CSM default record page to display Invoice case records in CSM
Configurable Workspace.
Invoice cases include the following related lists:
• Invoice Case Lines: Includes the individual case line records for this invoice case.
• Tasks: Includes tasks that have been created for this invoice case.
• Case Line Tasks: Includes tasks that have been created for individual case lines.
For more information, see the following topics:
• Invoice case form
• Invoice case line form

Invoice case archive rules
The Case Management for Invoice Operations application includes archive rules that archive
older invoice cases.
Case Management for Invoice Operations archive rules
Archive rule

Description

Archive Invoice Case

This rule archives invoice case records that
have been closed for more than 2 years.
Archiving these invoice case records also
archives the following records:
• Invoice case tasks
• Invoice case lines
• Case line characteristics
• Invoice case line tasks

Archive Invoice Case Line

This rule archives invoice case line records
that have been closed for more than 2 years.
Archiving these invoice case line records also
archives the following records:
• Case line characteristics
• Invoice case line tasks

Invoice case records that have been archived for more than five years are deleted. Deleting
these records also deletes the following records:
• Invoice case tasks
• Invoice case line items
• Case line characteristics
• Invoice case line tasks

Invoice case workflows
The Case Management for Invoice Operations application includes a subflow that provides the
mapping between a customer invoice and an invoice case. The subflow Primitives - AR Invoice
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

473


<!-- page 474 -->
to CSM Invoice case request creates the data mapping between two different entities: 1) the
customer invoice and 2) the invoice case.
For example, when mapping a customer invoice to an invoice case, the entities share some fields
such as Account and Contact. The data mapping copies these field values from the customer
invoice to the invoice case record.
To view this subflow, navigate to All > Process Automation > Workflow Studio and select
Subflows on the Workflow Studio homepage.
Invoice case form
The invoice case form displays details about an invoice case.
Invoice case form fields
Field

Description

Invoice Case
Number

The automatically generated record number. The prefix for
numbers from the Invoice Case table is INVCS.

Channel

The method by which the customer initiated contact and the
case was opened.
• Web (default)
• Phone
• Email
• Chat
• Social
• Community
• Alert
• Virtual Agent

Account

The name of the company that the invoice case is opened for.

Contact

The name of the customer contact for the invoice case.

Product

The product model of the asset. A model is a specific version
or configuration of an asset (for example, Apple Mac Book Pro).
If you select an asset in the Asset field and the asset has an
associated product, the Product field is automatically updated.
A product can be associated with multiple assets.

Asset

The asset tag number or the serial number of the asset
involved in this case.

Install Base

The Install base field helps you track which products and
services have been purchased by a customer, how they
have been installed or provisioned, along with the detailed
configuration for each installed item.

Partner Contact

The name of the partner contact for this invoice case.

Parent

The parent record for the invoice case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

474


<!-- page 475 -->
Invoice case form fields (continued)
Field

Description

Short description

A brief description of the issue or request.

Needs attention

When checked, the system sends a notification to the agent
in the Assigned to field. The notification includes the case
number, state, priority, and short description.

Opened

The date and time that the invoice case was opened.

Priority

The assigned priority:
• 1 — Critical
• 2 — High
• 3 — Moderate
• 4 — Low (default)

Assignment group

The assigned customer service agent group.

Assigned to

The assigned agent. If a group is selected in the Assignment
group field, the assigned agent must belong to this group.

Contract

The contract number associated with the invoice case.

Entitlement

The entitlement associated with the invoice case. The
entitlements available for selection in the reference list
channel matches the case creation channel. The available
entitlements are filtered by the settings in the Account,
Contract, Product, and Asset fields.
If only one entitlement is available for this case, it is
automatically added to the Entitlement field.

Partner

The name of the partner company.

Request source

The source of the invoice case. Invoice cases can be created
from the following sources:
• Specific invoice lines, single invoice
• Invoice header details, multiple invoices

Invoice

The invoice that the invoice case is created for.

Notes
Watch list

Users who receive notifications about this case when
additional comments are added or if the state of a case is
changed to Resolved or Closed.

Work notes list

Internal users who receive a notification about this case when
work notes are added. You can only add internal users to the
work notes list.

Additional comments
(Customer visible)

Customer-viewable comments. Each comment is inserted into
the Activity field when the user saves the record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

475


<!-- page 476 -->
Invoice case form fields (continued)
Field

Work notes (Private)

Description

Information about how to resolve the case, or steps taken to
resolve it, if applicable.
Internal users who have been added to the Work notes list
receive notifications when work notes are added to the invoice
case.

Closure Information
Closed by

The name of the user who closed the case.

Closed
Resolution code

The resolution provided for the invoice case:

Cause

Details about the cause of the issue or problem.

Resolution notes

Details about how the case was resolved.

Add resolution notes to
comments

A check box to determine if the resolution notes are added to
customer-viewable comments when the case is resolved.
If selected, the resolution notes are added to the Additional
comments (customer-visible) field.
By default, the check box is cleared.

Related Records
Incident

Displays the number of the incident record associated with
this invoice record.

Problem

Displays the number of the problem record associated with
this invoice record.

Change Request

Displays the number of the change request record associated
with this invoice record.

Caused by Change

If a case is the result of a change, this field displays the
associated change request record.

Invoice case line form
The invoice case line form displays details about an invoice case line.
Invoice case line form fields
Field

Description

Invoice Case Line
Number

The automatically generated record number. The prefix for
numbers from the Invoice Case Line table is INVCSL.

Parent case

The parent invoice case for this invoice case line record.

Account

The name of the company that the invoice case is opened for.

Contact

The name of the customer contact for the invoice case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

476


<!-- page 477 -->
Invoice case line form fields (continued)
Field

Description

Dispute code

Indicates the type of dispute for which the invoice case line
has been created.
• Incorrect product/service
• Pricing discrepancy
• Incorrect quantity
• Incorrect customer details
• Other

Short description

A brief description of the issue or request.

Description

A more detailed description of the issue or request.

Invoice line

A reference field that displays the invoice line that is being
disputed.

State

The current state of the invoice case line record:
• Draft
• New
• Work in Progress
• Awaiting Info
• Resolved - Accepted
• Resolved - Denied
• Canceled

Priority

The assigned priority:
• 1 — Critical
• 2 — High
• 3 — Moderate
• 4 — Low (default)

Assigned to

The agent assigned to the invoice case.

Assignment group

The group assigned to the invoice case.

Part number
Invoiced part number

The original part number of the invoiced good or service.

Disputed part number

The disputed part number of the invoiced good or service.

Approved part number

The approved part number of the invoiced good or service.

Quantity
Invoiced quantity

The original invoiced quantity of the invoiced good or service
billed.

Disputed quantity

The disputed quantity of the invoiced good or service billed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

477


<!-- page 478 -->
Invoice case line form fields (continued)
Field

Description

Approved quantity

The approved quantity of the invoiced good or service billed.

Amount
Invoiced amount

The amount of the invoiced good or service.

Disputed amount

The disputed amount of the invoiced good or service.

Approved amount

The approved amount of the invoiced good or service.

Discount amount
Invoiced discount amount

The invoiced discount amount of the invoiced good or service.

Disputed discount amount

The disputed discount amount of the invoiced good or service.

Approved discount amount

The approved discount amount of the invoiced good or
service.

Billing location
Invoiced billing location

The invoiced billing location of the invoice.

Requested billing location

The requested billing location of the invoice.

Shipping location
Invoiced shipping location

The original shipping location of the invoiced good or service.

Requested shipping location

The requested shipping location of the invoiced good or
service.

Resolution
Resolution code

The resolution provided for the disputed invoice line item.
• None
• Solved - Credit
• Solved - Write Off
• Solved - Settlement
• Solved - Invalid Dispute

Close notes

Additional notes made by the user who closes the case.

Notes
Additional comments
(Customer visible)
Work notes (Private)

Customer-viewable comments. Each comment is inserted into
the Activity field when the user saves the record.
Information about how to resolve the case, or steps taken to
resolve it, if applicable.

Accounts Receivable (AR) invoice table
The AR invoice (sn_otc_invoice) table stores the invoice data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

478


<!-- page 479 -->
Accounts Receivable invoice table
The following table lists the fields for AR invoice [sn_otc_invoice] table.
Accounts Receivable invoice table
Field

Data type

Description

Account

Reference Customer in the business-to-business (B2B) business model.
to
Account

Amount
invoiced with
tax (Reporting
currency)

FX
Currency

Total amount to be paid to the supplier including tax and
shipping charges. This amount is displayed in reporting
currency.

Amount
invoiced with
tax (Transaction
currency)

FX
Currency

Total amount to be paid to the supplier including tax and
shipping charges. This amount is displayed in transactional
currency.

Amount invoiced FX
without tax
Currency
(Reporting
currency)

Total amount to be paid to the supplier excluding tax and
shipping charges. This amount is displayed in reporting
currency.

Amount invoiced FX
without tax
Currency
(Transaction
currency)

Total amount to be paid to the supplier excluding tax and
shipping charges. This amount is displayed in transactional
currency.

Billing Contact

Reference The account contact to which the invoice is sent.
to
Account
Contact

Billing Location

Reference Reference to the location to which the invoice is sent.
Location

Bill to city

String

Bill to country

Reference The country to which the invoice is sent.
to Country

Bill to state/
province

String

The state to which the invoice is sent.

Bill to street

String

The street address to which the invoice is sent.

Bill to ZIP/postal
code

String

The zip code to which this invoice is sent.

Business owner

Reference A group who owns the invoice.
to User

Consumer

Reference Customer in the business-to-consumer (B2C) business model.
to
Consumer

Created

Date/Time Date on which this invoice is created.

Created by

String

The city to which the invoice is sent.

Person who created the invoice.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

479


<!-- page 480 -->
Accounts Receivable invoice table (continued)
Field

Data type

Description

Tax Code

Reference The tax code levied on the total invoice amount.
to Tax
Code

Tax Jurisdiction
Code

String

The tax code jurisdiction to which you must pay the tax.

Discount (%)

Decimal

Discount % for the discounts amount.

Discount due
date

Date

Date by which you must make payment for the discounts to be
applicable.

Discounts
Amount

FX
Currency

The discount applied on the invoice amount.

Due date

Date

Date by when you must make the payment.

Early payment
FX
discount amount Currency

The discount applied on the total invoice amount on early
payment.

ERP number

Unique number generated within the ERP system for the
invoice.This field is applicable when there’s an ERP integration.
The value is populated after the invoice is posted in the ERP
system through the integration.

String

ERP posting date Date

Date on which the invoice is posted in the ERP system.

Has changed

True/
False

Denotes if the invoice has changed.

Invoice date

Date

Date on which this invoice is created.

Invoice source

String

Name of the application associated with the invoice from where
it is sourced.

Number

String

An auto-generated number that uniquely identifies the invoice.

Other charges

FX
Currency

Additional charges incurred on the invoice.

Parent invoice

Reference Original invoice
to AR
Invoice

Payment date

Date

Payment terms

Reference Conditions applied on the payment
to
payment
terms

The date by when you must make the payment.

Remit to Contact Reference The account contacted to which the payment is made.
to
Account
Contact
Remit to
Location

Reference Reference to the location to which the payment is made.
to
Location

Remit to city

String

The city to which the payment is made.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

480


<!-- page 481 -->
Accounts Receivable invoice table (continued)
Field

Data type

Remit to country

Reference The country to which the payment is made.
to Country

Remit to state/
province

String

The state to which the payment is made.

Remit to street

String

The street address to which the payment is made.

Remit to zip/
postal code

String

The zip code to which this payment is made.

Requires
True/
acknowledgment False

Description

Invoice requires acknowledgment of receipt from recipient

Sales Order

Reference Sales order associated with the invoice.
to Order

Sales order
number

String

Sales order associated with the invoice.

Customer tax id

String

The tax ID of the customer

Customer
Contact

Reference The account contact of the customer for the invoice.
to
Account
Contact

Customer
Location

Reference Reference to the customer location for the invoice.
to
Location

Customer city

String

Customer
country

Reference The country of the customer for the invoice.
to Country

Customer state/
province

String

The country of the customer for the invoice.

Customer street

String

The street address of the customer for the invoice.

Customer zip/
postal code

String

The zip code of the customer for the invoice.

Shipping from
Location

Reference Reference to the location from which the order on the invoice is
to
shipped.
Location

Ship from city

String

Ship from
country

Reference The country from which the order on the invoice is shipped.
to Country

Ship from state/
province

String

The state from which the order on the invoice is shipped.

Ship from street

String

The street address from which the order on the invoice is
shipped.

Ship from zip/
postal code

String

The zip code from which this order is shipped.

The city of the customer for the invoice.

The city from which the order on the invoice is shipped.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

481


<!-- page 482 -->
Accounts Receivable invoice table (continued)
Field

Data type

Description

Shipping to
Contact

Reference The account contacted to which the order on the invoice is
to
shipped.
Account
Contact

Shipping to
Location

Reference Reference to the location to which the order on the invoice is
to
shipped.
Location

Ship to city

String

Ship to country

Reference The country to which the order on the invoice is shipped.
to Country

Ship to state/
province

String

The state to which the order on the invoice is shipped.

Ship to street

String

The street address to which the order on the invoice is shipped.

Ship to zip/
postal code

String

The zip code to which this order is shipped.

Shipping
Charges

FX
Currency

Shipping charges incurred for the invoice.

Short
description

String

Brief description about the invoice.

Status

String

Current state of the invoice.

Submitted by

Reference Person who submitted the invoice.
to User

Subtotal

FX
Currency

Supplier

Reference Supplier who delivers the product or service.
to
Supplier

Supplier tax id

String

The tax ID of the supplier.

Tax amount

FX
Currency

Tax applied on the invoice amount.

Tax rate decimal

Decimal

Tax rate % applied on the invoice - Tax rate in decimal if tax code
is not used.

Tax Rate String

String

Tax rate % applied on the invoice - Tax rate in string if tax code
and decimal is not used

Type

String

The type of invoice debit or credit.

The city to which the order on the invoice is shipped.

The total amount from all the invoice lines without tax and
shipping charges.

Accounts Receivable (AR) invoice line table
The AR invoice line (sn_otc_invoice_line) table stores the invoice line data.

Accounts Receivable invoice line table
The following table lists the fields for AR invoice line [sn_otc_invoice_line] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

482


<!-- page 483 -->
Accounts Receivable invoice line table
Field

Data type

Description

Invoice Number

Reference to AR
Invoice

Parent invoice number containing the invoice lines.

Invoice line
quantity

Decimal

The number of items that have been invoiced in the line.

Line item invoice FX Currency
with tax

The total cost which is being billed for this good or
service with tax.

Line item invoice FX Currency
without tax

The total cost which is being billed for this good or
service without tax.

Description

String

Brief description of the invoice line.

Line unit price

Decimal

Unit price of the line item in the invoice.

Part Number

String

SKU number from the product catalog

Line Item
Number

String

Invoice line number

Sales Order

Reference to
Order

Sales order associated with the invoice

Sales Order
Number

String

Sales order associated with the invoice

Sales Order line

Reference to
Order Line Item

Sales order line associated with the invoice line.

Sales Order line
Number

String

Sales order line associated with the invoice line

Shipping to
Contact

Reference to
Account Contact

The account contact to which the order on the invoice is
shipped.

Shipping to
Location

Reference to
Location

Reference to the location to which the order on the
invoice is shipped.

Ship to city

String

The city to which the order on the invoice is shipped.

Ship to country

Reference to
Country

The country to which the order on the invoice is
shipped.

Ship to state/
province

String

The state to which the order on the invoice is shipped.

Ship to street

String

The street address to which the order on the invoice is
shipped.

Ship to zip/
postal code

String

The zip code to which this order is shipped.

Status

String

Status of the invoice line.

Tax amount

FX Currency

Tax amount for the invoice line item.

Tax code

Reference to Tax
Code

Tax code of the invoice line.

Tax jurisdiction
code

String

Tax jurisdiction code of the invoice line.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

483


<!-- page 484 -->
Accounts Receivable invoice line table (continued)
Field

Data type

Description

Tax rate decimal

Decimal

Tax rate % applied on the invoice line - Tax rate in
decimal if tax code is not used.

Tax rate string

String

Tax rate % applied on the invoice line - Tax rate in string
if tax code and decimal is not used.

Unit of Measure

Reference to Unit

Unit of Measure for the invoice line item quantity.

Creating an invoice case
Agents can create invoice cases from the Invoice Cases list view in CSM Configurable
Workspace or the Core UI.
Agents can create invoice cases by selecting New from the Invoice Cases list view. From the
Invoice case record, agents can:
• Add invoices or invoice lines to the invoice case.
• Delete invoices or invoice lines from the invoice case.
• Create new invoice case lines.
• Edit the details of invoice case lines.
• Assign invoice case lines to themselves.
• Create tasks for invoice case lines.
Selecting Save on the Invoice case record moves the invoice case and the invoice case lines
currently in the Draft state to the New state. Once in the New state, agents can begin working to
resolve the invoice case. This can include creating tasks for invoice case lines, assigning them to
other agents or team members, and monitoring case progress.

Request source
An agent can create the following types of invoice cases:
• Cases that reference one or more invoice lines from a single customer invoice.
• Cases that reference multiple customer invoices.
The Invoice case record includes the Request source field. An agent can select the following
values in this field:
• Specific invoice lines, single invoice: The invoice case is for a single customer invoice. The
agent can select the invoice in the Invoice field.
• Invoice header details, multiple invoices: The invoice case is for multiple customer invoices.

Add invoices and invoice lines to an invoice case
Invoice cases can include a list of invoice case lines. These case lines represent either customer
invoices or invoice lines from a single customer invoice.
Once an invoice case has been created, agents can add invoices or invoice lines to the case
by selecting New from the Invoice Case Lines related list. Selecting this action displays a new
Invoice Case Line record.
The agent can select an invoice line or invoice for the Invoice Case Line record and then select
Save to add it to the invoice case as an invoice case line.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

484


<!-- page 485 -->
Create an invoice case
Create an invoice case for a customer invoice or for selected invoice lines.

Before you begin

Role required: sn_csm_invoice.agent, sn_csm_invoice.manager, admin

Procedure
1. In CSM Configurable Workspace, select New from the Invoice Cases list view.
2. Add information to the Invoice Case form, such as Account and Contact and Short
description.
3. Select an invoice number in the Invoice field.
This field is displayed if the Request source field is set to Specific invoice lines, single invoice.
4. Select Save.
Saving the Invoice Case form to creates the invoice case record in the Draft state.
5. View the invoice case record details and make any necessary changes.
You can perform the following tasks while the order case is in Draft state:
◦ Add invoices or invoice lines to the invoice case.
◦ Delete invoices or invoice lines from the invoice case.
◦ Create new invoice case lines.
◦ Edit the details of invoice case lines.
◦ Assign invoice case lines to yourself.
6. Select Submit.
Submitting the invoice case record moves the invoice case and the invoice case lines currently
in the Draft state to the New state and enables you to begin working to resolve the invoice
case.

What to do next

After submitting an invoice case, you can:
• Add an invoice case line to an invoice case
• Create a task for an invoice case line
Add an invoice case line to an invoice case
Add an invoice case line to an invoice case.

Before you begin

Role required: sn_csm_invoice.agent, sn_csm_invoice.manager, admin

Procedure
1. Open an invoice case In CSM Configurable Workspace.
2. Select the Invoice Case Lines tab and then select New.
This opens a new Invoice Case Line form in a separate sub tab.
3. Add information to the Invoice Case Line form.
4. Select Save.
The system adds the new record to the Invoice Case Lines tab on the invoice case record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

485


<!-- page 486 -->
Create a task for an invoice case line
Create a case line task for an invoice case line.

Before you begin

Role required: sn_csm_invoice.agent, sn_csm_invoice.manager, admin

Procedure
1. Open an invoice case In CSM Configurable Workspace.
2. Select the Invoice Case Lines tab and then select an invoice case line.
3. Select Create case line task.
The system opens a Create New Case Line Task form in a separate sub tab.
4. Add information to the Create New Case Line Task form.
5. Select Save.
The system adds the new task record to the Tasks tab on the Invoice Case Line record.
Service definitions
Use service definitions to create connections between products, services, and case types.
Customers can use these definitions to quickly discover and request the services they need.
Agents can use these definitions to create cases of the correct type to support those service
requests.

Overview of service definitions
The service definitions feature is available with the Customer Service Case Types plugin
(com.snc.csm_case_types). Case types enable you to address specific types of customer
requests. A case type extends the base customer service case and includes the processes,
attributes, and data required to resolve a specific type of case, such as onboarding a customer or
resolving a complaint.
A service definition describes a service that a business or organization offers to support a
product or service that they sell. Service definitions work with case types to provide different
types of service requests.
• You can create connections between products and services and the case types that support
those services. These connections streamline the case management process for requesting
and executing services and simplify service requests based on the customer's context.
• You can also create service definitions for case task types and then create parent-child
relationships between case type definitions and case task type definitions. This enables
agents to easily create case tasks of the correct type.
• You can create categories of services and then organize service definitions into logical
groupings. Agents can use these categories to quickly find the services they need.

Service definition benefits
When you create service definitions for each of the services that you offer, agents can use the
defined services to create cases and cases tasks of the correct type for customer issues and
requests. When creating these cases and case tasks, agents can do the following:
• Select from a list of available services.
• Select a category and view the available services within that category.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

486


<!-- page 487 -->
• Filter the applicable services based on the products owned by a customer.
• Create a case of the correct type based on the service requested or for the products owned by
a customer.
Customers can use service definitions to discover and request services to support their products
from the Customer and Consumer Service Portals.

Service definition categories
Service definition categories enable you to organize service definitions into logical groupings. A
category can have multiple service definitions and a service definition can belong to one or more
categories.
These categories appear on the case service selector and case task service selector. When an
agent is creating a case or case task, the agent can select a category and then view and select
from the available services within that category to create a case or case task.

Filtering service definitions
The service definitions filtering feature enables you to filter or narrow the services that are
available to agents when they are creating cases.
You can filter service definitions by creating configurations that are based on two types of
criteria: user and customer.
• User criteria: Filter service definitions by user criteria such as role, assignment group, or
specific user. For example, in a retail organization, different services are created for various
roles. Only users with specific roles, such as regional managers or operational managers, can
view and use service definitions like Product Recall or New Product Launch in Store. These
services are hidden from other agents who are not authorized to create such cases.
• Customer criteria: Filter service definitions by customer criteria such as location, customer
level, or related entities. For example, for customers with a loyalty membership, service
definitions like Free Delivery or Free Installation are made available. Customers who do not
meet these criteria will not see or have access to these services.

The service definition ID field
Starting with the Washington DC release, the ID field replaces the Number field.
• For upgrade customers, the Number field is relabeled to show that it is deprecated.
• For new customers, the Number field is not present.
For customers upgrading from Utah or Vancouver, a fix script runs automatically that adds the
ID field to records in the Service Definition [sn_case_type_selection] table. The fix script copies
the value from the Name field and adds it to the ID field, replacing white space characters with
underscores. This field has a maximum length of 40 characters.

System administrator experience
The system administrator defines the services that are offered to customers for the products
and services in the product catalog. For each service definition, the admin can complete the
following configuration tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

487


<!-- page 488 -->
Service definition configuration tasks
Task

Description

Create a service definition

The service definition record stores details about a service that
is provided to customers. This information includes a name
for the service definition, the target table, and the service
category.

Associate one or more
products

Services can be product-specific or general services can be
created and made available for all products.

Associate a case type

A case type provides the processes and data that an agent
needs to resolve a case for a specific type of service.

Associate a playbook

A playbook provides agents with step-by-step guidance for
resolving a specific type of case.

Configure default field values

Configure default values for fields in a service definition's
target table. When a record is created for this table, the system
uses these values to auto-populate record fields.

Associate a record producer

Record producers enable end users to request services from
the Customer and Consumer Portals.

Configure related services for
a service definition

Associate one or more related services with a service
definition to create parent-child relationships between service
definitions. For example, you can create service definitions for
case tasks and associate them with a service definition for a
case type.

Create a service definition
category

Create a category for service definitions. You can use these
categories to create logical groupings of service definitions.

Associate service definitions
with a category

Add service definitions to a category. A category can have one
or more associated service definitions and a service definition
can belong to multiple categories.

Add a case type to the Case
interceptor

Add case types to the Case interceptor, to configure this
feature for use in the Core UI.

Configure user criteria for a
service definition

Add user criteria to a service definition that restricts a user's
access to the service. Associate user-specific criteria such
as role, assignment group, or specific user with a service
definition to determine which users can access and use that
service to create a case.

Configure customer criteria for Add entity criteria to a service definition that restricts access
a service definition
to the service. Associate customer-specific criteria such
as location, customer level, or verified status with a service
definition to determine which customers are eligible for that
service.

Agent experience
Associating a case type with a service definition automates the case type selection process for
agents. From CSM Configurable Workspace, agents can quickly create cases of the right case
type based on customer context.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

488


<!-- page 489 -->
When creating cases, agents can select the appropriate service for a customer based on the
products that the customer owns. The Product Service Select version of the case type selector
enables agents to do the following:
• Create cases from case and case type list views.
• Create cases from several types of records:
• Select a product. The case type selector includes a This case is for an owned product check
box.
◦ If checked: Lists services relevant to the selected product.
◦ If cleared: Lists all available services.
• Select a category of services and view the services within that category.
• Select a service from the list of available services.
• Select Create Case to create a case of the case type associated with the service.
The system automatically determines the case type based on the selected service and creates
a case of that type. If the service definition has an associated playbook, the agent can use the
playbook in a tab on the case record.

Note: From the Core UI, the Case interceptor enables agents to select a service definition
for case type creation.
Associating a case task type with a service definition enables agents to create case tasks of the
right type based on the case context. The Product Service Select version of the case task type
selector enables agents to create tasks from case task lists, case records, playbook stages, and
the Dynamic Related Records tab in the contextual side panel.

Customer experience
End users can use the service definitions feature to request available services from the
Customer and Consumer Service Portals based on the products they have purchased.
• Use the portal to view the sold products or the install base items that they own.
• Select a product or an install base item and see the available services in the Services portal
widget. This widget can display product-specific services, requests for new products, and
general services.
• Select a service and launch a record producer to create a service request. When submitted,
the system automatically creates a case of the correct type.
• View a case that was created for a service request and see the Service definition field on the
case record.

Services portal widget
End users can view a list of available services for their sold products and install base items from
the Customer and Consumer Service Portals.
From the portal, an end user can navigate to a list of their sold products or install base items.
After selecting a product, the Services portal widget lists the available services. These can
include:
• Services based on a sold product or install base item
• General services
• Services for requesting new products
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

489


<!-- page 490 -->
Selecting a service from the widget displays the record producer associated with the service
definition. Depending on the record producer configuration, some of the fields are auto-filled
such as the product model or install base item and the selected service. Submitting the record
producer creates a case of the correct case type.

Note: Cases that have been created from a case type associated with a service definition
display the service definition in the Service definition field. End users can see this
information on the case records that they can access from the portal.
Related topics
Configuring service definitions
Customer service case types
Manage customer service case types
Create a customer service case of a specific type
Service definition roles
Service definition roles included with the Customer Service Case Types plugin enable users to
view, create, and update service definitions, service definition categories, and service definition
category relationships. Agents and end users can use these definitions and categories to view
and create cases based on the selected service.

Service definition roles
The following service definition roles are installed with the Customer Service Case Types
(com.snc.csm_case_types) plugin.
Roles installed with case types
Role

Description

Service definition admin

Administrator role for the
Customer Service case types
[sn_csm_case_types.service_definition_admin]
tables. Users with this role
can view, create, update, and
delete service definitions,
service definition categories,
and service definition
category relationships.
Service definition manager

Manager role for the Customer
Service case types tables.
[sn_csm_case_types.service_definition_manager]
Users with this role can
view, create, and update
service definitions, service
definition categories, and
service definition category
relationships.
Service definition viewer

Users with this role can view
service definitions, service
[sn_csm_case_types.service_definition_viewer]
definition categories, and
service definition category
relationships.

Contains roles

• sn_csm_case_types.service_definition_mana
• sn_service_org.service_criteria_delete

• sn_csm_case_types.service_definition_repor

• sn_csm_case_types.service_definition_all_tab
• sn_service_org.service_criteria_write
• sn_service_org.service_criteria_create
• sn_service_org.service_criteria_read
sn_service_org.service_criteria_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

490


<!-- page 491 -->
Roles installed with case types (continued)
Role

Description

Contains roles

Service definition report
viewer

Provides report view access
to service definition related
tables.
[sn_csm_case_types.service_definition_report_view]

None

Service definition all table
viewer

None

Provides view access to the
service definition tables.
Users with this role can view
[sn_csm_case_types.service_definition_all_table_viewer]
service definitions, service
definition categories, and
service definition category
relationships.

How users can use service definitions
In CSM Configurable Workspace, users with the admin role or one of the following agent roles
can access the Service field for cases and case tasks.
• Customer service agent (sn_customerservice_agent)
• Consumer service agent (sn_customerservice.consumer_agent)
• Customer service manager (sn_customerservice_manager)
The admin and agent roles can do the following:
• See the Service column on Case Task lists. For example, My Case Task and My Contributing
Tasks.
• See the Service field on the Case Task form.
• Select a service in the Service field and save the Case Task form.
• Create a case task and see the Service field on the Case Task form.
In the Core UI, users with the admin role or one of the agent roles listed above can do the
following:
• See the Service column on Task list.
• See the Service field on the Task form.
• Select a service in the Service field and save the Case Task form.
From the Customer and Consumer Service Portals, users with the admin role or an end user role
can see the Service field on case tasks that the user has access to. See the following table for
the end user roles that can see this field.
End users and roles that can see the Service field on case tasks
Users and Roles

Description

B2B user roles
Customer service agent
[sn_customerservice.customer]

An agent who assists customers and partners
with questions, issues, and problems.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

491


<!-- page 492 -->
End users and roles that can see the Service field on case tasks (continued)
Users and Roles

Description

Customer administrator

An administrator role for a customer account.
This user has access to all of the data within
the account.

[sn_customerservice.customer_admin]
Customer case manager
[sn_customerservice.customer_case_manager]
Partner

A customer role for managing the cases in an
account and any related child accounts.
A partner who is serving customer accounts.

[sn_customerservice.partner]
Partner administrator

An administrator role for a partner account.

[sn_customerservice.partner_admin]
Case task agent
[sn_customerservice.case_task_agent]
Case task viewer
[sn_customerservice.case_task_viewer]
Customer contacts with configured contact
relationships

A role that provides access to case tasks and
related case information.
A role that provides read-only access to all
case task records.
For more information, see Contact
Relationships.

B2C user roles
Consumer service agent
[sn_customerservice.consumer_agent]

An agent who assists consumers with
questions, issues, and problems.

Consumers with configured consumer
relationships

Use relationships to provide internal and
external users with additional access to
customer data. For more information, see
Create relationships.

Consumers who are designated as head of
household

A household is made up of a group of
consumers who live at a common address
and share products and services. A
household can have a designated head of
household and multiple current members.
For more information, see Create or update a
household.

Contributor roles
Account contributor
[sn_customerservice.account_contributor]
Consumer contributor
[sn_customerservice.consumer_contributor]

This role enables users to create cases and
case tasks for any account.
This role enables users to create cases and
case tasks for any consumer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

492


<!-- page 493 -->
End users and roles that can see the Service field on case tasks (continued)
Users and Roles

Description

Self contributor

This role enables users with snc_internal role
to create cases and case tasks for themselves.

[sn_customerservice.self_contributor]
Location manager contributor

A location manager contributor is employed
at the business location and manages a
[sn_customerservice.svc_location_manager_contributor]
business location in the location hierarchy
along with all its child business locations.
Location agent
[sn_customerservice.svc_location_agent]

• View all CSM entities.
• Create cases for any account, household,
consumer, or service organization.
• Fulfill cases for any account, household,
consumer, or service organization created at
the agent’s location.

Location consumer agent

• View all CSM entities.

[sn_customerservice.svc_location_consumer_agent]
• Create cases for any household or
consumer.
• Fulfill cases for any household or consumer
created at the agent's location.
• Assign related staff to any account,
household, or consumer.
Relationship contributor
[sn_customerservice.relationship_contributor]
Relationship agent
[sn_customerservice.relationship_agent]

This role enables users to create cases
for customers with which they have an
established relationship.
Manage cases for the accounts, contacts,
consumers, and households that the agent
has relationships with. This includes the
following relationships that are provided with
the Service Model Foundation plugins:
• Account Manager: Creates a relationship
between an internal user and an account.
• Relationship Manager: Creates a
relationship between an internal user and a
consumer or a household.

Location relationship manager
[sn_bus_loc.location_relationship_manager]

A location relationship manager is employed
by the parent business and acts as a point
of contact for one or more external business
locations.

Service organization contributor

This role enables users to create cases for
their service organization (business location)
[sn_customerservice.service_organization_contributor]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

493


<!-- page 494 -->
End users and roles that can see the Service field on case tasks (continued)
Users and Roles

Description

Case Authorized Contributor

This role provides access to add additional
comments and attachments, accept or reject
[sn_customerservice.case_authorized_contributor]
a solution, receive notifications on case
updates, close a case, and update case tasks.
Outsourced external agent
[sn_csm_ocs.ext_agent]

An Outsourced Service Provider (OSP) role.
Users with this role can fulfill the cases and
case tasks belonging to the service provider
organization they belong to.

For more information about these roles, see the following topics:
• Roles installed with Customer Service Management
• Contributor user roles
• Service Model Foundation - Assign roles
• Roles installed with customer access management
• Roles for Outsourced Customer Service
Related topics
Configuring service definitions
Customer service case types
Manage customer service case types
Create a customer service case of a specific type
Service definitions with catalog items
Enable service definitions to use service catalog items. Agents can select these catalog
items and use the associated record producers to create cases of the correct type in CSM
Configurable Workspace.
Users with the admin role can configure service definitions to use service catalog items. These
catalog items are displayed as cards in the service selector. If a service definition has more than
one associated service catalog item, the system shows all of the associated catalog items as
cards in the service selector.
When an agent selects a catalog item from the service selector, the system displays the
record producer associated with the catalog item in a workspace record page. Completing and
submitting the record producer creates a case of the correct type and displays the case in CSM
Configurable Workspace.

Configuring a service definition to use catalog items
Users with the admin role can configure a service definition to use catalog items.
1. Create a service definition or edit an existing service definition record.
2. Enable the Use service catalog item field.
3. Add the associated catalog items for this service definition to the Catalog Service
Relationships related list.
For more information, see Configuring service definitions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

494


<!-- page 495 -->
Using a service definition with catalog items to create a case
For service definitions that are configured to use catalog items, agents can create cases by
selecting a catalog item from the service selector. The system displays the record producer page
associated with the catalog item in CSM Configurable Workspace.
The agent adds information to the record producer fields and selects Submit. The system
creates the case and displays the record page for the correct case type.

Information messages
If a service definition is configured to use service catalog items but does not have any associated
catalog items in the Catalog Service Relationships related list, the system displays the following
message: "A service definition has the "Use service catalog item" field enabled but has no
associated catalog items for the user to select."
If an agent does not have access to the catalog item associated with a service definition, the
system displays following message: "You do not have access to the selected catalog item.
Request access from your manager so that you can use the catalog item to create a case."

Service Definition record
The Service Definition record includes the Use service catalog item field. When this field is
enabled, the system displays the catalog items in the service selector that are associated with
the service definition.
The Catalog Service Relationships related list stores the catalog items that are associated with
the service definition. A service definition can have one or more associated catalog items.
Users with the admin role can enable the Use service catalog item field on the Service Definition
record and associate service catalog items in the Catalog Service Relationships related list.

CSM record producer page
The CSM record producer page includes the service catalog UI Builder component, which can
be associated with a record producer and displays the record producer fields.
The CSM record producer page is displayed for all service definition records that have the Use
service catalog item field enabled and one or more associated catalog items.
Selecting a catalog item in the service selector displays the CSM record producer page in CSM
Configurable Workspace. Completing and submitting the record producer displays the record
page for the correct case type.
Default page settings:
• Page name: CSM record producer page
• Table: Record Producer [sc_cat_item_producer]
• Order: -1000
Service recommendations for interactions
Recommend the most relevant services to an agent based on the context of an interaction
record, such as the short description or description.
With Service recommendations for interactions, agents can see the recommended services in
the case type selector based on the information provided in the interaction record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

495


<!-- page 496 -->
Note: The service recommendations for interactions feature requires the Now Assist for
Customer Service Management (CSM) application.
The system displays the recommended services in a separate section at the top of the
case type selector. By default, this section shows a maximum of four recommended
services. The number of recommended services that can be displayed is controlled by the
sn_csm_case_types.top_ai_predictions_limit system property.
Case type selector with Top AI Predictions

Service recommendations for interactions properties
The Service recommendations for interactions feature includes the following properties.
Service recommendations for interactions properties
Property name

Description

sn_csm_case_types.top_ai_predictions_enabledEnables AI predictions for services and
displays those services in the case type
selector.
• Type: true|false
• Value: true
• Location: System Property [sys_properties]
table
sn_csm_case_types.top_ai_predictions_limit

Sets the maximum number of AI predicted
services to display in the case type selector.
• Type: integer
• Value: 4
• Location: System Property [sys_properties]
table

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

496


<!-- page 497 -->
Related topics
Configure service recommendations for interactions
Create a case based on service definition recommendations
Configuring service definitions
Create service definitions for the types of services required to support your products. Associate
different features such as case types, playbooks, and record producers with service definitions
so that customers can request the services they need and agents can create cases of the right
type to support those services.
System administrators can use the service definitions feature to define the services that are
offered to customers and connect those services to products, case types, playbooks, and
catalog items.
Service definition configuration tasks
Task

Description

Create a service definition

Create a definition for a service that's offered
to support a product.

Associate a product with a service definition

Configure the relationship between a product
and service.

Associate a case type with a service definition

A case type defines the case resolution
process for a service definition.

Associate a playbook with a service definition

A playbook provides step-by-step guidance
for resolving a specific type of case. Defining a
playbook record generator view enables case
creation for a requested service.

Configure user criteria for a service definition

Configure user criteria for a service definition
that restricts access to the service. Associate
user-specific criteria such as role, assignment
group, or specific user with a service definition
to determine which users can access and use
that service to create a case.

Configure customer criteria for a service
definition

Configure customer criteria for a service
definition that restricts access to the service.
Associate customer-specific criteria such as
location, customer level, or verified status
with a service definition to determine which
customers are eligible for that service.

Configure default field values for a service
definition

Configure default values for fields in a service
definition's target table. When a record is
created for this table, the system uses these
values to auto populate record fields.

Configure catalog items for a service definition End users can select a catalog item from the
service portal and use the record producer to
create the service request.
Configure related services for a service
definition

Associate one or more related services with
a service definition to create parent-child
relationships between service definitions. For
example, you can create service definitions for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

497


<!-- page 498 -->
Service definition configuration tasks (continued)
Task

Description

case tasks and associate them with a service
definition for a case type.
Associate service organizations with a service

After creating a service definition, you can
associate service organizations offering
service with a service organization.

Create a service definition category

Create a category for service definitions. You
can use these categories to create logical
groupings of service definitions.

Associate service definitions with a category

Add service definitions to a category. A
category can have one or more associated
service definitions and a service definition can
belong to multiple categories.

Add a case type to the Case interceptor

In the Core UI, the Case interceptor lists the
types of customer service cases that an agent
can create. If you create a case type and you
want that case type to appear in the Case
interceptor, you need to add it to the Case
interceptor configuration.

Create a service definition
Create a service definition record in the Customer Service Management (CSM) application to
establish connections between products, services, and case types.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

A service definition record stores the details about a service that is provided to customers. You
can create service definitions for the types of services that are required to support your products
and for cases, case types, and case tasks.
After creating a service definition, you can associate the service definition with a product. By
associating one or more related services with a service definition, you can create parent-child
relationships between the service definitions.
You can also create relationships between the service definition and other related services.
For example, you can create a service definition for a case and then create one or more service
definitions for your case tasks. Afterward, you can establish a relationship between the case
service definition and the case task service definitions.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select New.
3. In the Name field, enter a name for the service definition.
4. If necessary, modify the information in the ID field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

498


<!-- page 499 -->
The system auto-populates the ID field with the name of the service definition and replaces the
spaces with underscores. The ID can contain alphanumeric characters and underscores and
can be up to 40 characters in length.

Note: The value in this field must be unique.
5. In the Table field, select the table that the service definition is available for.
For example, if the service is available for the onboarding case type, select the Onboarding
Case [sn_onboarding_case] table.
6. Optional: In the Customer service type field, select a service type for the service definition.
A service type enables the system to show the following type of services based on the context:
◦ Pre-sale
◦ Post-sale
◦ General
7. Optional: In the Playbook record generator field, select a playbook record generator.
If a service definition has an associated playbook, the agent can use the playbook in a tab on
the case record. For more information, see Associate a playbook with a service definition.
8. Optional: In the Image field, select an image for the service definition.
Service definitions appear in the case type selector in a card view. The image appears in the
card for a service definition along with the name and description.
9. Optional: In the Default table field values field, select one or more fields and values.
Configure the default values for the fields in the target table for service definitions. When a
record is created for this table, the system uses these values to automatically fill in the record
fields. For more information, see Configure default field values for a service definition.
10. Optional: In the Order field, add an order value for the service definition.
This value determines the order in which the services are displayed in the case type selector
or other workflows. Service definitions with the lowest order value are displayed first. The
default value is 100.
◦ Service definitions with no order value appear after the ordered service definitions. These
service definitions have the lowest priority.
◦ If one or more service definitions have the same order value, the system displays the service
definitions in alphabetical order.
11. Optional: Enable the Active check box.
12. Optional: Enable the Use service catalog item check box.
When this check box is enabled, the service definition can use catalog items and their
associated record producers to create cases in CSM Configurable Workspace. The Catalog
Service Relationships related list stores the catalog items that are associated with the service
definition. For more information, see service definition use service catalog items.
13. Optional: In the Description field, add a description of the service definition.
Service definitions appear in the case type selector in a card view. The card includes the
name, description, and image for a service definition. Customer service agents can search for
services by entering keywords found in the service definition name and description.
14. Select Submit.
The service definition is added to the Service Definitions list.
Upon save, the service definition record includes the following related lists:
◦ Product Service Relationships
◦ Catalog Service Relationships
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

499


<!-- page 500 -->
◦ Service to Service Relationships
◦ Service Definition Category Relationships
◦ Reports

Result

After creating a service definition, you can perform the following configuration tasks:
• Associate one or more products with a service definition
• Create a service definition category
• Associate a product with a service definition
• Associate a case type with a service definition
• Associate a playbook record generator with a service definition
• Associate a service definitions to a service definition category
• Configure default field values for a service definition
• Configure catalog items for a service definition
• Configure related services for a service definition.
• Associate service organizations with a service.
• Add a case type to the Case interceptor.
Create a service definition category
Create a service definition category record in the Customer Service Management (CSM)
application. Then use the category to create logical groupings of service definitions.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

A category can have one or more associated service definitions and a service definition can
belong to multiple categories.
When an agent is using the case type selector to create a case, they can select a category before
selecting a service. The category acts as a filtering mechanism and reduces the number of
available services.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definition Categories.
2. From the Service Definition Categories list, select New.
3. In the Name field, enter a name for the category.
The category name can be up to 60 characters in length.
4. Optional: In the Description field, add a description of the category.
The description can be up to 4000 characters in length.
5. Optional: In the Order field, add an order number for the category.
The order value determines the order in which the categories are displayed in the case type
selector and case task type selector. The category with the lowest value is displayed first.
(Optional) The default value is 100. You do not have to set an order value for a category. If a
category does not have a value, the system displays the category in the case type selector in
alphabetical order.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

500


<!-- page 501 -->
6. Optional: Enable the Active check box.
This field is enabled by default.
7. Select Submit.
The category is added to the Service Definition Categories list.
Upon save, the new category record includes the Service Definition Category Relationships
related list, which shows the service definitions associated with the category.

Result

After creating a service definition category, you can associate service definitions with the
category. These associated service definitions are stored in the Service Definition Category
Relationships related list.
Associate a product with a service definition
After creating a service definition, you can associate one or more product models or sold
products with the definition.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

A product model or a sold product can have multiple services associated with it.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.
3. In the Product Service Relationships related list, select New.
The system displays a new Product Service Relationship record. The Service definition field is
auto-filled with the name of the selected service definition.
4. Determine if this service definition is available for all products or for a specific product.
◦ If it is available for all products, enable the All products check box and go to step 6.
◦ If it is available for a specific product, leave the check box empty and go to the next step.
5. Select the product in the Product field.
6. Select Submit.
The relationship record is added to the Product Service Relationships related list. If the
relationship is for a specific product, the name is displayed in the Product column.
Associate a case type with a service definition
After creating a service definition, you can associate a case type with the definition.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

A case type can be associated with one or more service definitions.
To see the service definitions associated with a case type, navigate to All > Customer Service
> Case Types > Manage Case Types and select a case type from the list. This information is
displayed in the Service Definitions related list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

501


<!-- page 502 -->
Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.
3. In the Table field, select the table for the case type that extends the Case table
(sn_customerservice_case).
For example, to associate the service definition with the complaint case type, select the
Complaint Case table (sn_complaint_case).
4. Select Update.
Associate a playbook with a service definition
After creating a service definition, you can associate a playbook with the definition.

Before you begin

Role required: (playbook_experience.admin + sn_csm_case_types.service_definition_manager)
or admin

About this task

Note: To see the playbook record generator field and values on the list and form view,
the service def manager needs the playbook_experience.admin role in addition to
sn_csm_case_types.service_definition_manager. Please add this role to associate a
playbook with a service definition.

A playbook provides agents with step-by-step guidance for resolving a specific type of case. If
a service definition has an associated playbook, the agent can use the playbook in a tab on the
case record.
When the agent selects Create Case on the case type selector screen, the system displays the
new case record and launches the playbook associated with the service in a tab on the record
page.

Note: This is an optional task.
Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.
3. Select a playbook record generator in the Playbook record generator field.
This field is a reference to the Playbook Experience Record Generator table
(sys_playbook_experience_record_generator). For more information, see Playbook record
generator
4. Select Update.
Associate a service definition with a service definition category
After creating a service definition category, you can associate one or more service definitions
with the category.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

502


<!-- page 503 -->
About this task

Service definition categories enable you to organize service definitions into logical groupings. A
category can have multiple service definitions and a service definition can belong to one or more
categories.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definition Categories.
2. Select a category from the Service Definition Categories list.
3. In the Service Definition Category Relationships related list, select New.
4. Select a service definition in the Service Definition field.
5. Select Submit.
The service definition is added to the Service Definition Category Relationships related list.
Configure user criteria for a service definition
After creating a service definition, configure user-specific criteria to control which users can
access and use that service definition to create a case.

Before you begin

Role required: admin, sn_csm_case_types.service_definition_admin, or
sn_csm_case_types.service_definition_manager

About this task

You can associate user-specific criteria such as role, assignment group, or specific user with a
service definition to determine which users can access and use that service to create a case.
For example, you can configure user criteria for service definitions like Product Recall or New
Product Launch in Store so that only regional managers or operational managers in designated
groups can use those services to create cases.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.
3. In the Service Definition User Criteria related list, select New.
The system displays a new Service Definition User Criteria record. The Service definition field
is auto-filled with the name of the selected service definition.
4. In the User criteria field, select a user criteria record.
These records are stored in the User Criteria [user_criteria] table.
You can also create a user criteria record by selecting New on the User Criteria pop-up window
and filling in the fields on the User Criteria form.
For more information about the fields on this form, see User criteria form

.

5. Enable the Active check box.
6. Select Submit.
Configure customer criteria for a service definition
After creating a service definition, configure customer-specific criteria to determine which
customers are eligible for that service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

503


<!-- page 504 -->
Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

You can associate customer-specific criteria such as location, customer level, or related entities
with a service definition that determine which customers are eligible to receive that service.
For example, you can configure customer criteria for service definitions like Free Delivery or
Free Installation so that only customers who are loyalty members are eligible to receive these
services.
You can associate several criteria, or conditions, with a single service definition. Customers need
to match only one of these conditions to have access to the service.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.
3. In the Service Definition Customer Criteria related list, select New.
The system displays a new Service Definition Customer Criteria record. The Service definition
field is auto-filled with the name of the selected service definition.
4. In the Customer criteria field, select a customer criteria record.
These records are stored in the Entity Criteria [sn_req_criteria_customer_condition] table.
You can also create a customer criteria record by selecting New on the Entity Criteria pop-up
window and filling in the fields on the Entity Criteria form.
For more information, see Create entity criteria.
5. Enable the Active check box.
6. Select Submit.
Create entity criteria
Create an entity criteria record to define customer-based conditions, either for selected accounts
(B2B) or consumers (B2C). These criteria can be applied to filter which customers are eligible for
specific services.

Before you begin

Role required:sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

You can select entity criteria records when you configure customer criteria for a service
definition. The system uses this configuration to determine which customers are eligible for that
particular service.

Note: Entity criteria records are available for all CSM applications.
Procedure
1. Navigate to All > Service request operations > Entity criteria.
2. Select New.
3. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

504


<!-- page 505 -->
Entity criteria form
Field

Description

Name

Name of the entity criteria.

Condition for

The type of customer for which the condition applies.
There are two types of customers:
◦ Select Account for B2B customers.
◦ Select Consumer for B2C customers.

Condition on

The table on which the conditions in the condition
builder apply. For example, Customer Account
[customer_account].
The selected table determines the visibility of the
Customer field and the available elements in that field.

Condition

Use the condition builder to select the conditions that
apply to this entity criteria record, such as location or
account type.

Customer field

Field that references the account, consumer, or other
selection in the Condition for field from the table
selected in the Condition on field.
For example:
◦ If Condition for is set to Account and if
Condition on is set to Account Address
[account_address_relationship], then you can select a
field like Account.
◦ If Condition for is set to Consumer and if Condition
on is set to Interaction [interaction], select a field like
Consumer.

4. Select Submit.
Configure default field values for a service definition
Configure default values for fields in a service definition's target table. When a record is created
for this table, the system uses these values to auto populate record fields.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

The target table for a service definition is stored in the Table field. The table selected in this field
is the Case table or a table that extends the Case table. When a record is created for the target
table, the system auto populates fields with the default values.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

505


<!-- page 506 -->
3. In the Default table field values field, select a field and a value.
Each time you select a field, an additional selection option becomes available.
4. Optional: To remove a field, select the Delete button next to the field value.
5. When you are finished selecting fields and values, select Update.
Configure catalog items for a service definition
After creating a service definition, you can associate one or more catalog items with the
definition.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

A catalog item is a product or service that is available within a service catalog. A record producer
is a specific type of catalog item that enables users to create task-based records.
From the Customer and Consumer Portals, end users can select available services from the
Services portal widget. Selecting a service displays the record producer associated with the
service definition. Submitting the record producer creates a case of the correct case type.
A variable set for service definitions is available with the Customer Service Case Types plugin
(com.snc.csm_case_types). This variable set populates the service definition based on the
product and/or service selected on the record producer.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.
3. In the Catalog Service Relationships related list, select New.
The system displays a new Catalog Service Relationship record. The Service definition field is
auto-filled with the name of the selected service definition.
4. Select a catalog item in the Catalog Item field.
5. Select Submit.
The catalog item is added to the to the Catalog Service Relationships related list.
Related topics
Service Catalog items
Create or edit a catalog item
Configure related services for a service definition
After creating a service definition, you can associate one or more related services with the
service definition. This creates a parent-child relationship between service definitions.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

When creating relationships between services on the Service to Service Relationship record,
only one relationship between the related service definition and the service definition can exist.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

506


<!-- page 507 -->
Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.
3. In the Service to Service Relationships related list, select New.
The system displays a new Service to Service Relationship record. The Service definition field
is auto-filled with the name of the selected service definition.
4. Select a related service in the Related service definition field.
From the Service Definitions pop-up window, you can select the target table in the Table field
and then select from the list of related services for that table.

Note: You cannot relate the same service to a parent service more than once.
5. Select Submit.
The related service is added to the to the Service to Service Relationships related list. The
Table column displays the name of the target table for the related service.
Associate service organizations with a service
Associate your service organizations with a service by using the Customer Service Management
(CSM) application. With this association, your service organization (SO) staff can address
customer queries for products and services offered at the business location and can raise a case
on the behalf of the customer.

Before you begin

Role required: sn_csm_case_types.service_definition_manager,
sn_csm_case_types.service_definition_admin, or admin

About this task

An SO can have multiple services associated with it. A service-to-service organization
criteria association is contained in the Service Organizations offering Service
[service_organizations_offering_service] table.

Procedure
1. Navigate to All > Customer Service > Administration > Service Definitions.
2. Select a service definition.
3. In the Service Organizations offering Service related list, select New.
4. On the form, fill in the fields.
Service Organizations offering Service form
Field

Data type

Description

Service organization criteria

Reference

Criteria to define the service
organizations that provide the
service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

507


<!-- page 508 -->
Field

Data type

Description

Note: For more
information about the
criteria for the service
organization, see Create
the criteria for a service
organization.

Service definition

Reference

Service that the service
organizations provide.

Note: The Service

definition field is
automatically filled
in with the name of
the selected service
definition.
Active

True/False

Check box to activate or
deactivate the service
organization criteria.
By default, the active field is
set to True.

Note: Only one active
criterion is enabled per
table to be associated to
a service definition.
5. Select Submit.
The service organization criteria are added to the Service Organizations offering Service
related list.
Add a case type to the Case interceptor
In the Core UI, the Case interceptor lists the types of customer service cases that an agent can
create. If you create a case type and you want that case type to appear in the Case interceptor,
you need to add it to the Case interceptor configuration.

Before you begin

Role required: sn_csm_case_types.service_definition_admin or admin

About this task

When an agent creates a case, they can select the case type from the Case interceptor.

Procedure
1. Navigate to All > System Definition > Interceptors.
2. Select the Case interceptor from the Interceptors list.
3. In the Answers related list, select New.
4. Select Simple questions to redirect the URL.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

508


<!-- page 509 -->
5. Fill in the fields on the Answer form.
Answer form fields and descriptions
Field

Description

Name

Enter a unique name for the case type. For example,
Complaint.

User Prompt

The description that the agent sees in the interceptor when
they create a case.

Target URL

The target URL of the form view that should open for the
selected case type.

Order

The order in which the case type appears in the interceptor.

6. Select Submit.

CSM Configurable Workspace
CSM Configurable Workspace is a user interface that provides customer service agents with the
tools they need to assist customers, answer questions, and resolve issues quickly and efficiently.
CSM Configurable Workspace

CSM Configurable Workspace provides agents with a unified workspace to handle customer
requests. Agents can manage cases, accounts, and contacts from multiple channels, like email,
voice, and chat on a single screen, eliminating the need to switch between tabs.

CSM Configurable Workspace features
Key features of CSM Configurable Workspace include list views for managing cases, interactions,
and other records and tabs for multitasking. It also provides agents with the ability to access
customer history and context without leaving the main screen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

509


<!-- page 510 -->
CSM Configurable Workspace features
Feature

Description

Unified workspace

Provides the tools and information that an agent needs into a
single, customizable interface.

List views

Provide filtered lists of cases, interactions, and other records
such as accounts and contacts. Agents can also create and
save their own lists.

Multi-tab interface

Tabs and subtabs enable agents to work on multiple cases,
tasks, and other customer records within a single browser
window. Agents can quickly move between records without
losing their place.

Contextual display

Agents get a complete view of a customer's history, including
interactions, products, and cases.

Channel integration

Agents can manage customer interactions from various
channels, including email, chat, and phone, all within the same
interface.

Contextual side panel

A configurable panel that provides agents with additional
tools and information such as search, Recommended Actions,
attachments, and templates.

AI tools

Summarize interaction chats and calls, summarize case
information, and generate case resolution notes.

For more information, see CSM Configurable Workspace features.

CSM Configurable Workspace benefits
The ServiceNow Configurable Workspace UI
is designed to improve user efficiency and
facilitate resolutions. CSM Configurable Workspace, which is built from the Configurable
Workspace UI, is specifically designed for customer service agents.
CSM Configurable Workspace brings together customer information, case management, and
collaboration tools into a single window. This user experience enables agents to manage several
cases and interactions across different channels at the same time.
CSM Configurable Workspace presents the Core UI lists and forms in one interface and
consolidates multiple tabs into a single, focused work area. From this single view, agents can:
• Work on multiple issues concurrently in an intuitive layout, reducing context and tab switching.
• Resolve issues faster with automated suggestions powered by machine learning.
• Get notified of potential major incidents based on issue frequency and impact.
• Keep informed of updates and surface important insights with a live activity feed and analytics.
For more information, see CSM Configurable Workspace overview.

Application information
The CSM Configurable Workspace application (com.snc.uib.csm_agent_workspace) is activated
with the Customer Service plugin (com.sn_customerservice).
Starting with the Yokohama release, CSM Configurable Workspace has a dependency on the
Customer Central plugin. For more information, see Customer Central plugin.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

510


<!-- page 511 -->
The CSM Configurable Workspace application is available from the ServiceNow Store.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Related topics
List of workspaces
CSM Configurable Workspace overview
CSM Configurable Workspace is a ServiceNow workspace specifically designed for customer
service agents. This workspace is designed to improve user efficiency and facilitate resolutions
and can be configured using UI Builder.
The configurable workspace UI
provides a suite of tools in a single focused work area. It
displays the lists and forms that agents are used to working in within the Core UI. It also includes
features that enable agents to be more efficient, manage multiple cases, and quickly orient
themselves to the current task.

CSM Configurable Workspace and UI Builder
ServiceNow configurable workspaces use content pages to display list, table, and record
information. These pages contain layouts and components that provide building blocks for
creating user interfaces.
Some record pages are provided with the CSM Configurable Workspace application, such as the
CSM default record page and the CSM Interaction record page.
You can customize these content pages and create content pages for workspaces using UI
Builder , a web user interface builder. With UI Builder, you can:
• Create pages and page variants, tailoring workspace pages for multiple user roles.
• Configure page layouts, containers, and components, drawing from the library of reusable Next
Experience components.
• Customize components for page layouts, content, data visualization, messaging, and
navigation.
For more information about working with content pages and components, see the following
topics:
• CSM Configurable Workspace record pages
• Creating pages and page variants
• Work with components

.

• Next Experience Components documentation

.

Viewing information in CSM Configurable Workspace
Agents can view information in different ways in CSM Configurable Workspace including landing
pages and dashboards, list pages, and record pages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

511


<!-- page 512 -->
Viewing information in CSM Configurable Workspace
Information

Description

Landing pages

Landing pages provide agents with a starting point to get
into their work. These pages can include filtered lists such as
assigned cases and case tasks, key performance indicators
(KPIs), and other metrics. Agents can quickly scan the
information presented on a landing page and prioritize cases
and case tasks, access records, and track their performance.

Dashboards

Dashboards provide an overview of information such as
filtered lists, reports, and performance analytics. Dashboards
are flexible and easily customizable so agents can display the
information they need.

List pages

A list displays records from a database table. CSM
Configurable Workspace uses list pages to display list
information such as cases and case tasks. These pages are
designed to help agents navigate, filter, and manage records.

Record pages

A record displays the information from one record in a
database table. CSM Configurable Workspace uses record
pages to provide the base structure for how that information
is displayed. Record pages include elements such as layouts,
containers, and components to display record information.

Configurable workspace tutorials
The following tutorials describe the different parts of a workspace and give you an overview of
how a workspace works.
• Workspace tutorial for agents starting with a record
• Workspace tutorial for agents starting with a chat
CSM Configurable Workspace features
Agents can use several different features available in CSM Configurable Workspace to assist
customers and resolve cases.

CSM Configurable Workspace interface features
Use these topics to get an overview of the CSM Configurable Workspace interface, landing
pages, and forms.
Overview of CSM Configurable Workspace features
Feature overview

Description

CSM workspace landing pages

Provides customer service agents with an overview of
their new, assigned, and high priority cases, plus the
cases assigned to their groups.

CSM workspace form headers

Provides an overview of configurable form headers, the
primary and secondary values included in the headers,
and where this information appears.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

512


<!-- page 513 -->
Overview of CSM Configurable Workspace features (continued)
Feature overview

Description

CSM workspace form features

Provides an overview of agent actions, account
hierarchy, special handling notes, related lists, and
Agent Assist.

CSM workspace form ribbon and
components

Provides agents with a quick overview of the case
details. Components in the form ribbon display relevant
information about the case, including a contact or
consumer summary, a timeline, and SLA details.

Additional features
A number of additional features are available for use with CSM Configurable Workspace.
Additional features for CSM Configurable Workspace
Feature

Description

AWA for CSM

Use Advanced Work Assignment (AWA) to
automatically assign work items to agents
based on their availability, capacity, and skills.

Chat summarization

Use chat summarization to automatically
create summaries of chat conversations.

Workforce Optimization for Customer Service

Use Workforce Optimization to manage and
maintain the productivity of your workforce.
Efficiently route work to your team, manage
your team's skills and schedules, and monitor
their performance.

Customer Central

Use Customer Central to provide agents with
all of the information about a customer in one
central location. This feature enables agents
to quickly zoom in on the customer issue and
provide efficient and supportive service.

Customer Service Case Types

Use case types to handle different types of
customer issues. A case type identifies the
processes and the data needed to resolve a
specific type of issue, such as a lost or missing
credit card.

Proactive Customer Service Operations

Use this feature to track the digital services
used by your customers and to proactively
create cases for service disruptions.

Playbooks for Customer Service Management

Use playbooks to provide step-by-step
guidance for completing the tasks needed
to resolve specific types of customer service
cases.

Guided Decisions for Customer Service
Management

Use guided decisions to resolve complex
cases faster and more efficiently by guiding
customer service agents through a structured
troubleshooting process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

513


<!-- page 514 -->
Additional features for CSM Configurable Workspace (continued)
Feature

Description

Lookup and verify

Use this feature to enable agents to quickly
look up contacts or consumers using
information such as the name, phone number,
or record number.

Case action status

Use the case action status feature so that
agents can easily identify cases that need
attention.

Estimated time to resolve a case

Use machine learning to predict the estimated
time to resolve a case (ETTR) based on case
attributes such as the short description,
category, priority, and assignment group.

CSM Configurable Workspace landing pages
A landing page is an initial view of your workspace. Landing pages present content tailored to a
user’s assigned role and provide the information they must get started with their work.
Landing pages can include filtered lists, KPIs, and other features that enables you to access
information from one location. CSM workspace landing pages provide customer service
agents and managers with lists of assigned cases and case tasks as well as agent, group, and
organization metrics.
Agents use landing pages as a starting point to get into their work, where they can quickly scan
and prioritize cases and case tasks, access records, and track their performance.

CSM Configurable Workspace landing pages
Several landing pages are available for CSM Configurable Workspace.
CSM Landing Page and CSM Landing Page - Premium
These landing pages use components to display lists and metrics. The admin
configures this information in UI Builder
and can create different landing pages for
different audiences.
Two versions of the landing page are available based on plugin activation. For more
information, see CSM workspace landing page plugins.
CSM Dashboards
This landing page uses dashboards to display information. You can duplicate the
provided dashboards and modify them as desired or create dashboards and then
share these dashboards with other users.

CSM workspace landing page plugins
The following table describes the plugin requirements for the CSM workspace landing pages.
CSM landing page plugin requirements
Landing Page

Plugin requirements

CSM Landing Page

Available with the CSM Configurable
Workspace plugin (sn_csm_wrkspc).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

514


<!-- page 515 -->
CSM landing page plugin requirements (continued)
Landing Page

Plugin requirements

CSM Landing Page - Premium

Available with the following plugins:
• CSM Configurable Workspace
(sn_csm_wrkspc)
• Performance Analytics - Content Pack Customer Service Management - Advanced
(com.snc.pa.customer_service_advanced)

CSM Dashboards

Available with the CSM Configurable
Workspace plugin (sn_csm_wrkspc).

CSM Landing Page
The CSM Landing Page provides users with lists of assigned cases and case tasks as well as
agent, group, and organization metrics.
Customer service agents and managers can use the CSM Landing Page to quickly scan and
prioritize work, access records, and track performance. Administrators can customize landing
pages in UI Builder
to meet their unique business needs.
The CSM Landing Page includes components that display case information, plus visualizations
that further break down the component data. Each of the visualizations is connected to a data
source. For example, the High priority cases component includes visualizations for P1 and
escalated cases, plus cases that need attention.

Note: To ensure the High priority cases component filters correctly, install the Customer
Service Case Action Status (com.snc.csm_action_status) plugin. This plugin adds the
missing action_status field, which isn't included with the CSM plugin by default. Also,
ensure your instance is on Xanadu Patch 7 or later.
The CSM Landing Page is available with the CSM Configurable Workspace (sn_csm_wrkspc)
plugin. This landing page is the default landing page for CSM Configurable Workspace.

Note: Upgrade customers who haven’t customized the existing CSM Configurable
Workspace landing page are automatically upgraded to the landing page available with the
Zurich release. Upgrade customers who have customized the existing CSM Configurable
Workspace landing page must manually accept the Zurich landing page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

515


<!-- page 516 -->
CSM landing page - Assigned cases and case tasks

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

516


<!-- page 517 -->
CSM landing page - Performance metrics

CSM Landing Page sections and components
The CSM Landing Page includes different sections and components that display important
items, record lists, and performance data.
CSM Landing Page and CSM Landing Page - Premium sections and components
Section

Description

Important Items

This section includes single score cards that display an
agent's most important items to work on.
• High priority cases: Includes P1 cases, escalated
cases, and cases that need attention.
• SLA breached or due today
• Cases not updated in >3d
• Case tasks
• Unassigned cases: Cases that are unassigned and
belong to one of the agent's assignment groups.
Selecting a score card displays a list of records with the
appropriate filter conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

517


<!-- page 518 -->
CSM Landing Page and CSM Landing Page - Premium sections and components (continued)
Section

Description

Cases

This section includes two lists of records:
• My active cases
• My team's cases
Selecting a case number opens a new tab and displays
the case record.

Performance

This section includes indicators that track the agent's
performance.
• Met SLA (last 7 days)
• Reopened cases (last 30 days)
The following indicators are available in the
Performance section with activation of the Performance
Analytics - Content Pack - Customer Service
Management - Advanced plugin:
• CSAT: Customer satisfaction score based on cases
assigned to the agent for the last 7 days.
• Response time
• Resolution time
Select an indicator to display either a filtered list of
records or a KPI details page.

Organization's Performance

This section includes indicators that track the
organization's performance.
• CSAT: Customer satisfaction score for the last 7 days.
• New vs closed cases: Daily aggregation of new and
closed cases for the last 7 days.
Select an indicator to view a KPI details page.

Note: This section is available for the CSM
Landing Page - Premium, which requires activation
of the Performance Analytics - Content Pack Customer Service Management - Advanced plugin.

Create a landing page for CSM Configurable Workspace
Use UI Builder to create landing pages for your agents. For more information, see Create a CSM
Configurable Workspace landing page.

Create multiple landing pages
You can create multiple landing pages. However, only a single landing page is displayed for a
user. The landing page that is displayed depends on the following settings:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

518


<!-- page 519 -->
• The setting of the Active field. This field must be set to true for a landing page to be displayed.
• The Order of the landing page. Pages with a lower-order value take precedence over pages
with a higher-order value. The active page with the lowest order number is displayed.
• If permissions are defined, users can see a landing page if they have the required role or are a
member of the required assignment group. Multiple roles and assignment group conditions are
treated as OR conditions.
CSM Landing Page - Premium
The CSM Landing Page - Premium provides users with lists of assigned cases and case tasks as
well as agent, group, and organization metrics.
Customer service agents and managers can use the CSM Landing Page - Premium to quickly
scan and prioritize work, access records, and track performance. Administrators can customize
landing pages in UI Builder
to meet their unique business needs.
The CSM Landing Page - Premium includes components that display case information, plus
visualizations that further break down the component data. For example, the High priority cases
component includes visualizations for P1 and escalated cases, plus cases that need attention.
It also includes additional indicators and visualizations in the Performance and Organization's
Performance sections. Each of the visualizations is connected to a data source.
The CSM Landing Page - Premium is available with the following plugins:
• CSM Configurable Workspace (sn_csm_wrkspc)
• Performance Analytics - Content Pack - Customer Service Management - Advanced
(com.snc.pa.customer_service_advanced)

Note: Upgrade customers who haven’t customized the existing CSM Configurable
Workspace landing page are automatically upgraded to the landing page available with the
Zurich release. Upgrade customers who have customized the existing CSM Configurable
Workspace landing page must manually accept the Zurich landing page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

519


<!-- page 520 -->
CSM landing page - Assigned cases and case tasks

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

520


<!-- page 521 -->
CSM landing page - Performance metrics

CSM Landing Page - Premium sections and components
The CSM Landing Page includes different sections and components that display important
items, record lists, and performance data.
CSM Landing Page and CSM Landing Page - Premium sections and components
Section

Description

Important Items

This section includes single score cards that display an
agent's most important items to work on.
• High priority cases: Includes P1 cases, escalated
cases, and cases that need attention.
• SLA breached or due today
• Cases not updated in >3d
• Case tasks
• Unassigned cases: Cases that are unassigned and
belong to one of the agent's assignment groups.
Selecting a score card displays a list of records with the
appropriate filter conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

521


<!-- page 522 -->
CSM Landing Page and CSM Landing Page - Premium sections and components (continued)
Section

Description

Cases

This section includes two lists of records:
• My active cases
• My team's cases
Selecting a case number opens a new tab and displays
the case record.

Performance

This section includes indicators that track the agent's
performance.
• Met SLA (last 7 days)
• Reopened cases (last 30 days)
The following indicators are available in the
Performance section with activation of the Performance
Analytics - Content Pack - Customer Service
Management - Advanced plugin:
• CSAT: Customer satisfaction score based on cases
assigned to the agent for the last 7 days.
• Response time
• Resolution time
Select an indicator to display either a filtered list of
records or a KPI details page.

Organization's Performance

This section includes indicators that track the
organization's performance.
• CSAT: Customer satisfaction score for the last 7 days.
• New vs closed cases: Daily aggregation of new and
closed cases for the last 7 days.
Select an indicator to view a KPI details page.

Note: This section is available for the CSM
Landing Page - Premium, which requires activation
of the Performance Analytics - Content Pack Customer Service Management - Advanced plugin.

Create a landing page for CSM Configurable Workspace
Use UI Builder to create landing pages for your agents. For more information, see Create a CSM
Configurable Workspace landing page.

Create multiple landing pages
You can create multiple landing pages. However, only a single landing page is displayed for a
user. The landing page that is displayed for you depends on the following settings:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

522


<!-- page 523 -->
• The setting of the Active field. This field must be set to true for a landing page to be displayed.
• The Order of the landing page. Pages with a lower-order value take precedence over pages
with a higher-order value.
• If permissions are defined, you can see a landing page if you have the required role or are a
member of the required assignment group. Multiple roles and assignment group conditions are
treated as OR conditions.
Dashboard landing pages
Enable your users to display, customize, and share dashboards in CSM Configurable Workspace
and use these dashboards as landing pages.
Workspace dashboards enable users such as agents and managers to configure and customize
their own metrics. These users can switch between available dashboards and modify dashboard
lists and metrics to track important information. They can also share dashboards with coworkers
and across teams.
To display workspace dashboards, system administrators activate the CSM Dashboards landing
page variant and configure user privileges. When configured, users included in the page
audience see the Dashboard Overview landing page in CSM Configurable Workspace and the
default dashboards included with that page.
The dashboards are represented by tiles on the Dashboard Overview landing page. The
individual tiles show the title, the creator, whether the dashboard is certified, and an indication
that the logged in user has bookmarked the dashboard.

Benefits of dashboard landing pages
Using a dashboard as a landing page gives your users more flexibility. Being able to easily
customize a dashboard makes the page much more usable. Users can create their own lists
and metrics to display the information they need and then share these dashboards with other
users. As an example, teams can share a single dashboard or new agents can modify a shared
dashboard to create their own. It is much faster to create dashboards because they do not
require configuration by a system administrator.

Application information
The CSM Dashboards landing page variant is included with the CSM and FSM Configurable
Workspace Foundation plugin (com.snc.uib.cwf_workspace).
The CSM Configurable Workspace application, which includes the CSM and FSM Configurable
®
Workspace plugin, is available from the ServiceNow Store.
The default dashboards available with this landing page variant are available depending on
user role. Some of these dashboards require additional plugins to see all of the dashboard
information. These plugins include:
• Performance Analytics - Content Pack - Customer Service (com.snc.pa.customer_service)
• Performance Analytics – Content Pack – Customer Service Management – Advanced
(com.snc.pa.customer_service_advanced)
• Performance Analytics Premium for Customer Service (com.snc.pa.premium.cs)
• Performance Analytics - Content Pack – Advanced Work Assignment (com.snc.pa.awa)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

523


<!-- page 524 -->
Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Activating the CSM Dashboards landing page variant
The CSM Dashboards landing page variant is an optional page variant for the CSM/FSM
Configurable Workspace experience. By default, this page variant is marked as inactive and
has an order value of 0. When activated and set to the lowest order number, the system uses the
CSM Dashboards landing page in place of the default CSM Landing Page for the users included
in the page audience.

Note: The default landing page, Dashboard Overview, and the default dashboards
included with that page are available in read-only mode and are provided as examples.
It is recommended that you create and customize duplicates of the landing page and
dashboards.
For more information about activating a page variant and setting the order, see Set record page
order.

User roles for the Dashboard Overview landing page
By default, the Dashboard Overview landing page is available to users with the following roles:
• admin
• sn_customerservice_agent
• sn_customerservice.consumer_agent
• sn_customerservice_manager

Note: Users with other roles, such as location agents or relationship agents, continue to
see the CSM Landing Page.

The system administrator can change these default roles by configuring the page audience. For
more information, see the following topics:
• Learn about audiences
• Add an audience to your UI Builder page
Roles determine view access for the dashboards available with the Dashboard Overview landing
page. For details, see Default dashboards.
The service management agent role (sn_esm_agent) contains the data visualizations creator
role (viz_creator), which is a role associated with the Visualization Designer and Visualization
Library. Users with the viz_creator role can create visualizations. The customer service agent
(sn_customerservice_agent) and consumer service agent (sn_customerservice.consumer_agent)
roles contain the sn_esm_agent role. For more information, see Data visualizations in Platform
Analytics .

Dashboard Overview landing page default dashboards
Four dashboards are available with the Dashboard Overview landing page. These dashboards
are available in read-only mode for all users, including the admin role. Users can duplicate these
dashboards and make the desired changes to the duplicate dashboards.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

524


<!-- page 525 -->
Note: These dashboards are also available from Platform Analytics experience

.

The Dashboard Overview landing page includes the following dashboards for agents.
• Customer Service Agent
• Customer Service Agent – Advanced
The Dashboard Overview landing page includes the following dashboards for managers and
admins.
• Customer Service Agent
• Customer Service Agent – Advanced
• Customer Service Manager
• Customer Service Manager – Advanced
CSM Configurable Workspace landing page dashboards
Landing page

Customer Service Agent

Details

Available with the CSM Configurable Workspace
(com.snc.uib.csm_agent_workspace) plugin.
Out of box, the Customer Service Agent dashboard includes
the widgets on the My Work tab.

Note: The tab is not visible because it is the only tab on
the dashboard.
Activating the Performance Analytics - Content Pack Customer Service (com.snc.pa.customer_service) plugin
provides the complete Customer Service Agent dashboard
with all tabs.
Customer Service Agent Advanced

Available with the following plugins:
• CSM Configurable Workspace
(com.snc.uib.csm_agent_workspace)
• Performance Analytics – Content Pack –
Customer Service Management – Advanced
(com.snc.pa.customer_service_advanced)
Activating the Performance Analytics - Content Pack –
Advanced Work Assignment (com.snc.pa.awa) plugin adds two
additional widgets to the Organizational Trends tab:
• My Cases with Problems
• My KBs Created

Customer Service Manager

Available with the following plugins:
• CSM Configurable Workspace
(com.snc.uib.csm_agent_workspace)
• Performance Analytics - Content Pack - Customer Service
(com.snc.pa.customer_service)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

525


<!-- page 526 -->
CSM Configurable Workspace landing page dashboards (continued)
Landing page

Details

Activating the Performance Analytics - Content Pack Customer Service (com.snc.pa.customer_service) plugin
provides the complete Customer Service Manager dashboard
with all tabs.
Customer Service Manager Advanced

Available with the following plugins:
• CSM Configurable Workspace
(com.snc.uib.csm_agent_workspace)
• Performance Analytics – Content Pack –
Customer Service Management – Advanced
(com.snc.pa.customer_service_advanced)
Activating the Performance Analytics - Content Pack –
Advanced Work Assignment (com.snc.pa.awa) plugin adds
the Work Assignment Analytics tab to the Customer Service
Manager - Advanced dashboard.

Certifying a dashboard
Users with the admin role can certify a dashboard to indicate that it is company-approved
and recommended for use. The default dashboards available from the Dashboard Overview
landing page are certified and admins cannot change this setting. Admins can only certify new
dashboards. For more information, see Certify a Platform Analytics dashboard .

Working with dashboards
Agents can create their own dashboards and share those dashboards with other agents or
assignment groups. For example, agents can create dashboards with metrics and lists that
support specific assignments, such as a temporary weekend assignment.
From the Dashboard Overview landing page, managers and agents can do the following:
• View the default dashboards available for their role.
• Filter the available dashboards.
• Select a dashboard tile to display the dashboard in a new tab. If more than one dashboard is
available, the user can switch between the available dashboards by making a selection from
the dashboard picker.
• Duplicate and customize the default dashboards.
• View dashboard details such as the dashboard name, description, and visibility.
• Edit dashboards using a configuration panel.
• Share dashboards with other users or groups and grant edit or view-only rights.
• Create new dashboards.
• Create and share visualization elements from the Platform Analytics Workspace

.

See the task descriptions in the following table for more information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

526


<!-- page 527 -->
Dashboard landing page user tasks
Task

Description

View the default dashboards
available for your role

1. Select Workspaces > CSM/FSM Configurable Workspace.
The Dashboard Overview landing page displays the
available dashboards.
2. Select a dashboard tile to display the dashboard in a new
tab.

View dashboard details

1. Select a dashboard.
2. Select the info icon (

Filter dashboards

) to open the Details panel.

Several filter options are available on the Dashboard Overview
landing page. Users can filter the available dashboards in the
following ways:
• By name or owner (in the search bar)
• Recent: shows recently created dashboards
• Bookmarked: shows only your bookmarked dashboards.
• Certified: shows only the dashboards that have been
certified by an administrator.
• Created by me: shows only the dashboards that you have
created.
• Shared with me: shows only the dashboards that have been
shared with you.
• All: shows all dashboards that you have access to.

Duplicate a dashboard

1. Select the More actions menu (

).

2. Select Duplicate.
3. In the Duplicating dashboard pop-up window, enter a New
name and a Description.
4. Select Duplicate on the pop-up window.
5. To access the duplicated dashboard:
◦ Select Open it in the information message.
◦ Select the dashboard tile on the Dashboard Overview
landing page.
For more information, see Duplicate a Platform Analytics
dashboard .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

527


<!-- page 528 -->
Dashboard landing page user tasks (continued)
Task

Edit a dashboard

Description

1. Select Edit.
2. Select the desired dashboard tab.
3. Edit an existing element or add a new element. For more
information about these tasks, see Edit Platform Analytics
dashboards .

Share a dashboard

1. Select the More actions menu (

).

2. Select Share.
3. In the Share Dashboard pop-up window, add users, groups,
or roles in the Grant access to field.
4. If desired, enable the check box that enables permissions
for the dashboard.
5. Select either Add as viewer or Add as editor.
6. The selected users, groups, or roles are added to the
Manage Access section. From here, you can change the
permissions.
7. Click Confirm.
For more information, see Share a Platform Analytics
dashboard .
Create a dashboard

1. From the Dashboard Overview landing page, select Create
new dashboard.
2. From the New dashboard pop-up window, select In-line
editor.
3. Provide a Name and a Description and select Create new
dashboard. The new dashboard opens in the editing mode.
4. Add new elements to the dashboard. For more information
about this step, see see Create a dashboard with the in-line
editor .
When you create a dashboard with the in-line editor, several
elements are available to help you organize and populate the
information on your dashboard. For more information, see
Exploring Platform Analytics dashboards .

Print a dashboard

1. Select the More actions menu (

).

2. Select Printer friendly.
For more information, see Print a Platform Analytics
dashboard .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

528


<!-- page 529 -->
Dashboard landing page user tasks (continued)
Task

Description

Bookmark a dashboard

1. Select the More actions menu (

).

2. Select Add to bookmarks.
For more information, see Bookmark a Platform Analytics
dashboard .
CSM Configurable Workspace form headers
Form headers in CSM Configurable Workspace provide a quick glance of case, account, or
contact information.
Form headers include a primary value and several secondary values. You can configure the
information included in the form header for the Case, Account, and Contact forms.
Form header values
Form

Primary Value

Case

Short description

Secondary Values

• Account and contact (B2B)
• Consumer (B2C)
• Priority
• State

Account

Account

Primary contact

Contact

Contact

Account

Displaying form header secondary values
You can configure the form header to display secondary values either below the primary value
or in the Contextual side panel. The record_secondary_values_location property
controls this setting.
Case form header secondary values displayed below the primary value

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

529


<!-- page 530 -->
Case form header secondary values displayed in the Contextual side panel

See the following topics for more information about configuring form headers in CSM
Configurable Workspace:
• Set up a form header in CSM Configurable Workspace
• Display the form ribbon and form header secondary values in the Contextual side panel

Note: One form header configuration, CSM/FSM Configurable Workspace Header
Config, is included with CSM Configurable Workspace.

Form header components
For CSM Configurable Workspace, the form header is made up of individual components that
can be configured with UI Builder .
Individual components provide customers with flexible and granular configuration options.
Customers can control the placement, size and spacing of these components, giving them the
ability to show additional information that agents may need.
The Data Value Block component is used to display secondary values in the form header and the
Contextual side panel. .
CSM Configurable Workspace form ribbon and components
The form ribbon provides includes components that display relevant information about a case
and provide agents with a quick overview of the case details. These components can include a
contact or consumer summary, a timeline, and SLA details.
In addition to viewing case information, agents can use links in the ribbon components to place
phone calls or create email messages. Agents can also show or hide the ribbon as needed by
clicking a button at the top of the ribbon.

Customer Service Management ribbon components
For Customer Service Management, you can configure the ribbon for the Case form to include
one or more of the available ribbon components:
• Customer 360
• Timeline

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

530


<!-- page 531 -->
• Active SLAs
• Time to resolve component

Customer 360 ribbon component
The Customer 360 component displays customer information such as the contact or consumer
name, email address, and phone numbers.
Customer 360 ribbon component

You can configure the Customer 360 component to display different fields, such as the fields
described in the following table.

Field

Description

Header

The header includes customer information.
• For B2B customers: Displays either the Primary
Contact or Contact.
• For B2C customers: Displays the Consumer.
• For internal contacts with the proxy contact role
(sn_customerservice.proxy_contact): Displays the
Internal contact.

Note: Requires the CSM Extension for Proxy
Contacts (com.snc.csm_proxy_contacts) plugin.
Avatar

A graphic representation of the customer's identity, such
as an image or icon.

Name

The customer's name.

Title

The customer's title.

Account

For B2B customers, the account associated with the
contact.

Phone numbers
• For contacts: Mobile phone and Business phone
• For consumers: Mobile phone and Home phone
Email address

The customer's email address.

The Customer 360 component supports dot walking on selected reference tables. You can
display fields from these tables:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

531


<!-- page 532 -->
• User [sys_user]
• Contact [customer_contact]
• Consumer [csm_consumer]
If you configure the Customer 360 component to display information from a dot-walked field, the
label for that field shows the Column name instead of the Table.Column name.

Note: For B2B customers, the Customer 360 component can also include colored tags
that indicate Very Important Person (VIP) accounts and escalated accounts.
From the Customer 360 component, agents can perform the following actions.

Action

Description

Email a contact or consumer

Agents click the address in the Email field to send an email
to the contact or consumer. This action opens a new email
in the email editor with the following fields auto-populated:
• To: the contact or consumer email address
• Subject: the case number and short description

Call a contact or consumer

If phone integration is enabled, agents click a number
in one of the phone number fields to call the contact or
consumer. The OpenFrame window displays information
about the contact or consumer name and the account.

View the account record

Agents click the Account link to open the account record.

Timeline ribbon component
The timeline component displays a chronological summary of case activities, including case
state changes and interactions between the agent and the requester (typically the customer). It
also shows how much time that the fulfiller and requester spent on the case.

Note: The workspace administrator can select the agent role when configuring the
timeline component attributes.
Timeline ribbon component

The timeline uses icons to display events and colors to show ranges of time, such as when the
case is with the agent or the customer. Agents can point to event icons in the timeline to display
tooltips with additional information.

Note: The timeline component uses the resolution shaper configuration for the selected
entity table, for example, the Case table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

532


<!-- page 533 -->
The timeline includes the following features:
Timeline features
Timeline feature

Description

Global start and end dates

The global start date is the date that the case
was created. The global end date is the date
that the case was closed.

Start and end dates

The start and end dates that identify a specific
window of time on the timeline. The default
window is one week.
• The default end date is the current date.
• The default start date is the current date
minus 7 days.

Header

A configurable title for the timeline. With the
system administrator role, you can add a title
in the Name field on the Ribbon Setting form.

Legend

Click Show Details to display event and range
summary information.
Legend summary information

Events

Events are represented on the timeline using
icons. Each type of event has a corresponding
unique icon. The time that an event occurred
is also captured so that events are displayed
on the timeline in chronological order.

Grouped events

Events that occur close together can be
grouped and represented using a group
icon. When events are grouped, the timeline
displays a badge icon with the number of
events in the group.

Event summaries

Event summaries appear in the timeline
legend. Each summary lists the event and the
number of times it occurred.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

533


<!-- page 534 -->
Timeline features (continued)
Timeline feature

Description

Note: An event summary includes
occurrences of the event over the life of
the object visualized on the timeline.
Time ranges

Time ranges are represented on the timeline
using colors. Each range has a corresponding
unique color and a start and end time. The
following default ranges include:
• Green: with the agent
• Blue: with the customer

Time range summaries

Time range summaries appear in the timeline
legend. Each summary lists the range, the
corresponding color, and the total duration.

Note: A range summary includes
occurrences of the range over the life of
the object visualized on the timeline.
Tooltips

Point to event icons to display additional
information.

Zoom

Zoom in on the timeline to see more details in
a smaller time window or zoom out to see more
events in a larger time window.
• Click the zoom in or zoom out icons on the
timeline.
• Use the zoom in and zoom out features on
the keyboard (Ctrl + + and Ctrl + -).
• Use the zoom in and zoom out features on
the cursor.

Pan

Pan left and right to view newer or older
events.
• Pan left in the timeline to view older events
by clicking the left caret icon (<). Panning to
the left stops when the timeline reaches the
specified global start date.
• Pan right in the timeline to view newer
events by clicking the right caret icon (>).
Panning to the right stops when the timeline
reaches the specified global end date.

Reset the timeline

Click Now to reset the timeline to the default
view after panning or zooming. The timeline

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

534


<!-- page 535 -->
Timeline features (continued)
Timeline feature

Description

resets using the time that the button was
clicked as the end date and time.
Messages

The timeline displays messages for the
following events:
• There is no data to be displayed.
• The timeline experiences a loading error.

Active SLA component
The Active SLA component displays active SLAs for the case, including time remaining, the SLA
state, and any breaches. If a case has multiple SLAs, the SLA with the most imminent deadline is
shown first. Pointing to the SLA component displays left and right navigation arrows that agents
can use to view the other SLAs.
SLA ribbon component

Color coding within the component indicates the time remaining for the SLA:
• Green: 0–50%
• Yellow: 50–75%
• Orange: 75–99%
• Red: 100% or breached

Time to resolve component
The time to resolve component displays the estimated time required for an agent to resolve the
case.

Note: The time to resolve component requires the Predictive Intelligence for Customer
Service Management plugin (com.snc.csm_ml). For more information, see Estimated time to
resolve a case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

535


<!-- page 536 -->
Time to resolve component

In this image, the estimated time that the agent will need to resolve the opened case is 0 to 2
days. Hence, the upper bound value is displayed. The estimated time is calculated from the time
the case was created. If the range for example, is between 2 to 4 days, both the lower and upper
bound values are displayed.
The Time to resolve component also displays the prediction for SLA breach if the case is
attached to an SLA.
Following are a list of SLA messages displayed and the action required when they appear.

SLA messages

Task

No resolution SLA exists for this case

Set the value in the Target field to Resolution
in the SLA Definition form.

Repair resolution SLA to add breach time

Click Repair on the Task SLA form.

Highly likely to breach resolution SLA

None

Highly unlikely to breach resolution SLA

None

Likely to breach resolution SLA

None

Unlikely to breach resolution SLA

None

Configuring ribbon components
You can configure ribbon components as follows:
• For CSM Agent Workspace, you can configure the ribbon layout if you have the workspace
administrator role (workspace_admin). This includes the components to display in the ribbon,
the order in which the components appear, and the component width. You can also configure
display attributes for some of the components.
For some of the components, you can also configure attributes, such as the fields to include in
the Customer 360 component.
• For CSM Configurable Workspace, you can create a ribbon setting and add that setting
to a ribbon configuration. For more information, see Set up a ribbon configuration in CSM
Configurable Workspace.

Note: One ribbon configuration, CSM/FSM Configurable Workspace Ribbon Config,
is included with CSM Configurable Workspace.
You can also display the form ribbon in the Contextual side panel. For more information, see
Display the form ribbon and form header secondary values in the Contextual side panel.
Ribbon configurations in CSM workspaces support domain separation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

536


<!-- page 537 -->
CSM Configurable Workspace form features
CSM Configurable Workspace form features include account hierarchy, special handling notes,
and agent actions.

Account hierarchy
From the Account form, customer service agents can click the open hierarchy icon ( ) in
the Name field to see the parent-child account relationships in the Account Hierarchy pop-up
window. The account hierarchy is available for accounts that have a parent or child account.
CSM Workspace Account Hierarchy pop-up window

The account hierarchy uses a tree structure to show the parent, child, and sibling accounts.
The parent view displays the current account, the parent account (if applicable), and any child
or sibling accounts. The full view displays the entire structure of the organization from the root
account. The current account is highlighted in the account structure.
Customer service agents can:
• Expand and collapse the tree structure.
• Switch between the parent view and the full view of the account hierarchy.
• Click an account to open the Account form in a sub tab.
For information about creating an account hierarchy, see Account hierarchy.

Special handling notes
Special handling notes bring important information about individual records to the attention of
the customer service agent. If special handling notes are available for a record, these notes are
displayed in a pop-up window when the record is opened in a CSM workspace. Notes can also
be displayed in an embedded list or a related list on a record form. Notes are ordered by priority
in the pop-up window and in lists.
Agents can see the priority, short description, and message for each note. A note can be
assigned one of the following priorities, which also have associated colors.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

537


<!-- page 538 -->
• Priority 1 — red
• Priority 2 — orange
• Priority 3 — purple
• Priority 4 — gray
Special handling notes pop-up window

Agents can:
• Dismiss individual notes. When all notes are dismissed, the pop-up window closes.
• Close the window.
In the Special Handling Notes module on the platform interface:
• Users with the sn_shn.admin role can configure special handling notes and specify properties.
• Users with the sn_shn.admin or sn_customerservice_manager roles can create special
handling notes.
For more information about configuring the special handling notes feature, see Special handling
notes overview.

Agent actions
Actions available to customer service agents appear in the form header as buttons or menu
items.
For CSM Configurable Workspace, you can link UI actions to form actions. For more information,
see Set up a form action in CSM Configurable Workspace.
The Create Knowledge action requires the following setup:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

538


<!-- page 539 -->
• Activate the Knowledge Management Advanced Installer plugin
(com.snc.knowledge_advanced.installer).
• Set the sn_customerservice.enable_knowledge_kcs property to true.
• Set the KCS Article template to true (navigate to Knowledge > Administration > Article
Templates).

Agent assist
Agent assist is available on the Interaction form in CSM Configurable Workspace. Users with
the customer service agent role (sn_customerservice_agent) can use Agent assist to search
for information from an interaction. By default, the available search sources include Knowledge
articles, Service Catalog, and ServiceNow Community blogs and posts.
For more information on how to enable Recommended Actions - AI search and disable Agent
Assist, see Enable AI search in Recommended Actions.
CSM Configurable Workspace chat session tabs
Use visual indicators on chat session tabs, such as colors and icons, to alert agents to unread
chat messages and SLA threshold timers.
The chat session tabs feature helps agents to manage multiple interactions efficiently.
Agents can use visual indicators to reduce the risk of threshold timer breaches, improve chat
prioritization, and optimize response times. This feature enables agents to multitask effectively
while maintaining service level commitments.
The chat session tabs feature introduces a color-coded system for chat session tabs in CSM
Configurable Workspace based on configured Service Level Agreement (SLA) thresholds.
Additional visual indicators alert agents about unread messages, chat status, and unsaved
changes. These visual cues help agents to prioritize their interactions by tracking chat duration
and alerting them when conversations require immediate attention.

Benefits
The chat session tabs feature provides customers with the following benefits.
• Improved prioritization: Agents can visually track the SLA status of each chat by glancing at the
tab color and use that information to prioritize customer responses.
• Agent multitasking: Tab color changes and real time notifications help agents to handle
multiple interactions simultaneously, minimizing the risk of missing crucial chats.
• Agent productivity: The system helps agents respond more efficiently by highlighting
conversations based on urgency, improving customer engagement and satisfaction.

Key features
Chat session tabs provide the following key features.
Chat session tab features
Feature

Description

Real-time duration tracking for chat sessions

This feature actively tracks the duration of a
chat and alerts the agent when predefined
SLA thresholds are reached.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

539


<!-- page 540 -->
Chat session tab features (continued)
Feature

Description

• The timer begins when a customer sends
a message to an agent and the tab for that
chat interaction is inactive.
• The inactive tab cycles through different
colors to alert the agent to the unread
message and the approaching SLA
thresholds.
• The timer resets once the agent engages
with the tab.
SLA threshold timers

System administrators can configure a
minimum of one and a maximum of three
levels of SLA threshold timers.
When the admin selects a workspace and
enables the Session Tab Enabled button, the
system adds the first level automatically. Then
they can add one or two additional levels if
desired.
For each level, the admin can select a timer
value and tab color.

Tab colors

Tab colors indicate the status of a chat with
one or more unread messages.
Inactive tabs with unread messages change
color to highlight critical wait times. System
administrators can select a different color for
each configured SLA threshold level.

Unread message counters

Inactive tabs display a counter that shows the
number of unread chat messages.
The counter uses a background color that is a
darker shade of the configured tab color.

Tab messages

Messages on the chat session tabs appear
below the customer name and notify the agent
of the following chat conditions:
• Chat is in wrap-up
• Chat has ended
Agents see the appropriate message on the
tab depending on the condition of the chat.

Unsaved changes indicator

A gray circle on a chat session tab indicates
that there are unsaved changes on the tab.
The circle disappears once the changes are
saved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

540


<!-- page 541 -->
SLA threshold timers
System administrators can configure up to three levels of SLA threshold timers for inactive chat
session tabs. For each level, admins can set a timer and select a unique tab color.
These timers alert agents to unread messages in inactive chats by changing the tab color. If
an agent leaves a customer’s chat unanswered beyond the length of time defined in these
threshold timers, the system changes the tab color.
Chat session tab SLA threshold levels
Level

Description

Level 1: warning

This timer alerts the agent to an SLA breach by changing the
color of an inactive tab when it reaches the selected duration.
Default setting: 30 seconds after the first new message is
received.

Level 2: critical

This timer alerts the agent to a critical SLA breach by changing
the color of an inactive tab when it reaches the selected
duration.
The default setting is 1 minute after the first new message is
received.

Note: The length of time for the Level 2 timer must be
greater than the Level 1 timer.
Level 3: severe

This timer alerts the agent to a severe SLA breach by changing
the color of an inactive tab when it reaches the selected
duration.
The default setting is 2 minutes after the first new message is
received.

Note: The length of time for the Level 3 timer must be
greater than the Level 2 timer.
For more information, see Configure chat session tabs.

Tab colors
The chat session tabs feature uses tab background colors to provide information at a glance.
Colors indicate tab status such as the active tab and inactive tabs that have one or more unread
messages.
• Active tab: A white background indicates the active tab. This is the tab where the agent is
currently working.
• Inactive tabs: A colored background indicates an inactive tab that has one or more unread
messages. Tabs transition to different colors to highlight chats that have reached the
configured SLA thresholds.
System administrators can configure up to three SLA threshold levels for chat session tabs. For
each level, the admin can set a timer for the threshold level and select a background tab color.
Agents see different colors in the chat session tabs based on the threshold timer value.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

541


<!-- page 542 -->
The background tab color changes when an inactive tab with unread messages reaches the
first SLA threshold level. The tab maintains the current color until the timer reaches the next
configured SLA threshold level.
For more information, see Configure chat session tabs.

Unread message counters
Each inactive tab includes a counter that displays the number of unread chat messages.
The counter uses a background color that is a darker shade of the configured tab color.
Chat session tab unread message counters

When a chat message is received, the counter updates to display the total number of unread
messages. After selecting the tab, an agent can see the unread messages in the chat window.
Selecting an inactive tab clears the tab color and resets the unread messages counter. The
threshold timer and counter restart when the agent navigates away from the tab.
When a customer ends a conversation or a chat session times out, the tab color changes to blue
and the unread messages counter disappears.

Viewing unread messages
When an agent selects an inactive tab and returns to a chat conversation, they can see
the unread messages in the chat window. This window uses a separator between the older
messages and the unread messages and displays the time when the first unread message was
sent. This separator appears if there is a time difference greater than 30 seconds between the
first new message and the last previous message.

Maximum number of tabs
An agent can have a maximum of 10 tabs open at one time. If an agent attempts to open
additional tabs, the system displays a message that advises to close one or more tabs before
opening a new tab.

Transferring chats
There are two ways to transfer a chat from one agent to another: manual transfer and automatic
transfer.
Chat session tabs for transferred chats
Transfer type

Description

Manual transfer

When an agent manually transfers a chat to another agent and
the new agent accepts the chat:
• The unread messages counter is not displayed on the chat
session tab.
• The separator is not displayed between new and older
messages. The interaction is treated as new for the receiving
agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

542


<!-- page 543 -->
Chat session tabs for transferred chats (continued)
Transfer type

Description

• The new agent experiences the tab color changes as
configured by the admin when new messages arrive from
the customer.
• The new agent sees the unread messages counter update
when new messages arrive.
Automatic transfer

When a chat is automatically transferred to another agent or to
a queue:
• The unread messages counter is not displayed on the chat
session tab. All messages in the chat are in an unread state
for the new agent.
• The separator is not displayed between new and older
messages. The interaction is treated as new for the receiving
agent.
• The new agent experiences the tab color changes as
configured by the admin when new messages arrive from
the customer.
• The new agent sees the unread messages counter update
when new messages arrive.

If a chat is transferred to a queue, SLA threshold timers and tab colors are applicable to the next
agent who picks up the case.
When an agent seeks help from a colleague or manager using the Agent Whisper
feature,
the SLA threshold timers and tab behavior are applicable only for the owner agent and not for
anyone else participating in the interaction.

Configuring the chat session tabs feature
Users with the system administrator role can enable the chat sessions tab feature and configure
SLA threshold timers for chat sessions from the Conversational Interfaces (CI) Admin console.
When this feature is enabled, chat session tabs display colors to indicate the chat status. These
colors are determined by SLA threshold timers that alert agents to impending SLA breaches.
For more information, see Configure chat session tabs.
Configure chat session tabs
Configure settings such as duration and color for the chat SLA threshold timers for a selected
workspace in the Conversational interfaces (CI) Admin Console. These timers alert agents to
unread messages in inactive chats.

Before you begin

Role required: admin

About this task

Enable the chat session tabs feature and select the workspace that the feature applies to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

543


<!-- page 544 -->
You can configure a minimum of one and a maximum of three chat SLA threshold timers for a
workspace. These timers alert agents to unread messages by changing the tab colors of the
inactive chats.

Procedure
1. Navigate to All > Conversational Interfaces > Settings.
This displays the CI Admin Experience with the Settings tab selected.
2. Select Agent Chat on the left side of the CI Admin Experience.
This displays the Agent Chat settings screen.

Note: If you don’t have the required permissions to modify these settings, the following
message appears: You do not have the required permissions to
modify these settings. Please contact your administrator.
3. In the Session Tab Settings section, enable the Activate button in the upper right corner and
select Save.
This is a global switch that enables the feature for an instance.
4. Select CSM/FSM Configurable Workspace in the Select a workspace for tab settings field.
This is the workspace for which you want to enable the chat session tabs feature.
5. Enable the Session Tab Enabled button and select Save.
This enables the chat session tabs feature for the selected workspace and adds the Level 1
timer automatically.
When enabled, inactive tab colors change color to alert agents to unread messages. You can
configure a minimum of one and a maximum of three SLA threshold timers that alert agents to
impending SLA breaches.

Note: Disabling the Session Tab doesn’t remove the saved workspace. The workspace
remains available and can be accessed later.
6. Configure up to three SLA threshold breach warnings.
a. Select the length of the timer for the SLA breach warning (Level 1).
This timer alerts the agent to an SLA breach by changing the color of an inactive tab when it
reaches the selected duration. The default setting is 30 seconds after the first new message
is received.
b. To configure a second SLA breach warning, select Add Level.
c. Select the length of the timer for the SLA breach warning (Level 2).
This timer alerts the agent to a critical SLA breach by changing the color of an inactive tab
when it reaches the selected duration. The default setting is 1 minute after the first new
message is received.

Note: The length of time for the Level 2 timer must be greater than the Level 1 timer.
d. To configure a third SLA breach warning, select Add Level.
e. Select the length of the timer for the SLA breach warning (Level 3).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

544


<!-- page 545 -->
This timer alerts the agent to a severe SLA breach by changing the color of an inactive tab
when it reaches the selected duration. The default setting is 2 minutes after the first new
message is received.

Note: The length of time for the Level 3 timer must be greater than the Level 2 timer.
7. Select the tab color for each of the configured SLA threshold breach warnings in the Tab color
field and then select Apply.
You must select a unique tab color for each warning level. After applying your selection, you
can see a preview of the tab with the selected color.
8. Select Save.
The workspace is added to the Configured workspaces list in the Session Tab Settings section.
Edit or remove chat session tabs
Edit the settings for configured SLA threshold levels, add or remove SLA threshold levels, or
remove workspaces from the Configured workspaces list in the Conversational interfaces (CI)
Admin Console.

Before you begin

Role required: admin

About this task

The Session Tabs Settings section of the Agent Chat settings screen lists the workspaces that
have configured SLA threshold levels. Under the Configured workspaces heading, you can see
a list of the configured workspaces and the SLA threshold levels that have been configured for
each workspace.
From this section, you can do the following:
• Remove a workspace from the Configured workspaces list.
• Edit the SLA threshold levels for a workspace:
◦ Update the timer value and tab color for an SLA threshold level.
◦ Add or remove an SLA threshold level.

Procedure
1. Navigate to All > Conversational Interfaces > Settings.
This displays the CI Admin Experience with the Settings tab selected.
2. Select Agent Chat on the left side of the CI Admin console.
This displays the Agent Chat settings screen.
3. Scroll to the Session Tab Settings section to view a list of configured workspaces.
This list displays the workspaces that have been configured for the instance. It also displays
the SLA threshold levels that have been configured for each workspace.
4. To edit a workspace, select Edit.
The details of the configured SLA threshold timers are displayed in the Set SLA Levels section.
a. From Set SLA Levels section, you can perform the following tasks:
▪ Update the timer value for an SLA threshold level.
▪ Update the tab color for an SLA threshold level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

545


<!-- page 546 -->
▪ Add an SLA threshold level.
▪ Remove an SLA threshold level.
b. Select Save on the Agent Chat settings screen to save your changes.
5. To remove a workspace from the Configured workspaces list:
a. Select Remove for the desired workspace.
b. In the confirmation pop-up window, select Remove workspace.
The workspace is removed from the Configured workspaces list in the Session Tab Settings
section.
Notifications for agent mentions in records
Agents collaborating on records may need to notify teammates about specific updates or
actions. By using the at key (@) to mention another agent in a comment, work note, or supported
text field, the system automatically sends a workspace notification to the mentioned agent. This
helps promote timely awareness and response without relying on separate communication
channels.

About the feature
When an agent is mentioned using the at key (@), the system automatically sends a workspace
notification to the mentioned agent. The notification includes a header and a message:
• The header contains:
◦ The name of the agent who mentioned them.
◦ The record ID and type.
• The message contains:
◦ The short description, subject, or problem statement of the record.
◦ A direct link to the record.
Notification format: "You have been mentioned by [Name] in the [Table Name] record [Record ID]."

Key capabilities
• Supports mention across multiple record types.
• Sends individual notifications to each mentioned agent, even when multiple agents are tagged
in one comment.
• Enables agents to configure notification preferences and set "Do Not Disturb" hours.
• Redirects agents only to records that they can access.
Organize records tabs with ServiceNow Link Manager
Use the ServiceNow Link Manager feature to manage and organize browser tabs within a
ServiceNow instance.
The ServiceNow Link Manager feature is designed to enhance user productivity by managing
and organizing browser tabs within a ServiceNow instance. This feature ensures that links
opened within an instance are consolidated into a single workspace. It is supported on the latest

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

546


<!-- page 547 -->
versions of Google Chrome, Microsoft Edge, and Mozilla Firefox. ServiceNow Link Manager is
useful for users who need to keep track of numerous open tabs during their workday.

Key features
ServiceNow Link Manager includes the following features:
• Tab consolidation: Automatically consolidates new ServiceNow-related tabs into an existing
open ServiceNow tab, preventing browser clutter.
• Cross-platform support: Supports opening shared record links across environments such as
Gmail, Microsoft Teams, Microsoft Outlook, and other web platforms linked to ServiceNow.
• User-friendly interface: Easy to enable and disable directly from the Chrome extension
settings in the browser.

Frequently Asked Questions
FAQs for ServiceNow Link Manager
Question

Answer

What happens if I turn off ServiceNow Link
Manager?

Turning off ServiceNow Link Manager reverts
to the default behavior, where each clicked
link opens a new tab.

Is the extension available on other browsers?

The extension is currently supported across
multiple browsers - Google Chrome, Mozilla
Firefox, and Microsoft Edge.

If I have several tabs open and then enable
the ServiceNow Link Manager, what will
happen?

The existing tabs remain unchanged. Any new
links open within the most recent tab in your
current workspace.

Can I choose which tabs to consolidate or
does ServiceNow Link Manager automatically
consolidate all ServiceNow tabs?

ServiceNow Link Manager automatically
consolidates all ServiceNow-related tabs.
There is currently no option available to select
specific tabs for consolidation.

Does ServiceNow Link Manager affect my non- No. ServiceNow Link Manager only affects
ServiceNow tabs?
ServiceNow-related tabs. Non-ServiceNow
tabs continue to function as usual.
Will ServiceNow Link Manager slow down my
browser performance?

ServiceNow Link Manager is designed to
operate efficiently without significantly
impacting your browser’s performance.
However, if you experience any slowdowns,
consider limiting the number of active
extensions or tabs.

Can I temporarily disable ServiceNow Link
Manager without uninstalling the extension?

Yes, you can easily toggle ServiceNow Link
Manager on or off from the extension settings
without uninstalling the entire extension.

If I am working with multiple ServiceNow
instances, can I customize which instance
ServiceNow Link Manager consolidates tabs
into?

Currently, ServiceNow Link Manager
consolidates tabs within each ServiceNow
instance independently. If you have multiple
instances open, the link will open in the most
recently used instance.

Does the extension work with customized
URLs or older browser versions?

ServiceNow Link Manager extension works
only with base system workspace URL

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

547


<!-- page 548 -->
FAQs for ServiceNow Link Manager (continued)
Question

Answer

patterns and doesn’t support customized
URLs. It currently supports the following
patterns:
CSM workspaces:
"patterns": [
{
"name": "cwf",
"match":
"https://*/now/cwf/*"
},
ITSM workspace:
"patterns": [
{
"name": "sow",
"match":
"https://*/now/sow/*"
}

Note: The extension doesn’t work on
older browser versions that don't support
Manifest V3. Make sure you're using
the latest version of Google Chrome,
Microsoft Edge, or Mozilla Firefox.
Open new cases in the same tab with ServiceNow Link Manager for Google Chrome
Follow the steps below to install, activate, and use ServiceNow Link Manager in Google Chrome.

Before you begin

Role required: admin

Installing ServiceNow Link Manager
Procedure
1. Select the Extensions icon in Chrome browser and select Manage Extensions.
2. In the left panel, select Chrome Web Store to open it in a new tab.
3. In the search bar, type ServiceNow Link Manager.
4. Select the extension in the results and select Add to Chrome.
5. Once installed, the extension appears in your extensions list. It is enabled by default. You can
toggle it to on or off as needed.

Activating ServiceNow Link Manager
Procedure
1. Select the ServiceNow Settings icon in the top-right corner of your Chrome browser.
2. From the drop down menu, locate the ServiceNow Link Manager toggle switch and turn it on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

548


<!-- page 549 -->
Note: The ServiceNow Link Manager extension turns on automatically in CSM and ITSM
Workspace. It doesn't run in other ServiceNow workspaces.

Using ServiceNow Link Manager
Links typically open in a new browser tab. When ServiceNow Link Manager is activated, links
consolidate into an already open ServiceNow workspace tab. This consolidation applies whether
the link is clicked within ServiceNow itself or from an external site such as Gmail, Microsoft
Teams, or Microsoft Outlook.
Open new cases in the same tab with ServiceNow Link Manager for Microsoft Edge
Follow the steps below to install and activate ServiceNow Link Manager in Microsoft Edge.

Before you begin

Role required: admin

Installing ServiceNow Link Manager
Procedure
1. Select the Extensions icon in Microsoft Edge and select Manage Extensions.
2. Open the Edge Add-ons site, search for ServiceNow Link Manager, and select Get
3. In the pop-up that appears, select Add to confirm.
4. Once installed, the extension appears in your extensions list. It is enabled by default. You can
toggle it to on or off as needed.
5. You can pin the extension next to the address bar for quick access.

Activating ServiceNow Link Manager
Procedure
1. Select Settings and more icon in the top-right corner and then Extensions.
2. Locate the ServiceNow Link Manager toggle switch and turn it on.

Note: The ServiceNow Link Manager extension turns on automatically in CSM and ITSM
Workspace. It doesn't run in other ServiceNow workspaces.

Using ServiceNow Link Manager
Links typically open in a new browser tab. When ServiceNow Link Manager is activated, links
consolidate into an already open ServiceNow workspace tab. This consolidation applies whether
the link is clicked within ServiceNow itself or from an external site such as Gmail, Microsoft
Teams, or Microsoft Outlook.
Open new cases in the same tab with ServiceNow Link Manager for Mozilla Firefox
Follow the steps below to install and activate ServiceNow Link Manager in Mozilla Firefox.

Before you begin

Role required: admin

Installing ServiceNow Link Manager
Procedure

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

549


<!-- page 550 -->
1. Select the Menu icon in Mozilla Firefox and select Add-ons and themes.
2. Open the Add-ons for Firefox site, search for ServiceNow Link Manager, and select
Add to Firefox.
3. In the pop-up that appears, select Add to confirm installation.
4. Once installed, the extension appears in your add-ons list. It is enabled by default. You can
toggle it to on or off as needed.
5. You can pin the extension to the toolbar for quick access.

Activating ServiceNow Link Manager
Procedure
1. Select the Menu > Add-ons and themes > Extensions.
2. Locate the ServiceNow Link Manager toggle switch and turn it on.

Note: The ServiceNow Link Manager extension turns on automatically in CSM and ITSM
Workspace. It doesn't run in other ServiceNow workspaces.

Using ServiceNow Link Manager
Links typically open in a new browser tab. When ServiceNow Link Manager is activated, links
consolidate into an already open ServiceNow workspace tab. This consolidation applies whether
the link is clicked within ServiceNow itself or from an external site such as Gmail, Microsoft
Teams, or Microsoft Outlook.
CSM Configurable Workspace form templates
Create and edit form templates for use in CSM Configurable Workspace and then use the
templates to automatically populate fields on records.
Form templates simplify the process of creating and submitting new records by populating
fields with selected values. In CSM Configurable Workspace, form templates are available in the
Templates tab in the contextual side panel. From the Templates tab, you can do the following:
• View template cards that display information including the template name, description, and
when the template was last used.
• View different lists of templates, including Favorites, My Templates, and All.
• Mark templates as Favorites by selecting the star icon on the template card.
• Sort the available templates alphabetically or by last used.
• Create a new template by selecting the Create icon (+) at the top of the Templates tab.
• Edit an existing template by selecting the More actions icon on the template card and then
selecting Edit.

Templates tab
The Templates tab in the contextual side panel includes form templates that are available to the
current user. This tab includes three lists of templates:
• Favorites: Templates that the user has marked as a favorite by selecting the star icon on the
template card. The templates that are added to this list are accessible across different records.
• My Templates: Templates created by the user.
• All: All templates available to the user.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

550


<!-- page 551 -->
Within each list of templates, users can do the following:
• Search for templates by entering a keyword in the search box.
• Sort the available templates, either last used or alphabetically, by making a selection from the
drop-down menu.
Templates tab with template cards

Template cards
The Templates tab displays a card for each template in a list. These cards provide information
about the templates, including:
• A multi-line description of the template.
• A timestamp that shows when the template was last used.
• A star icon that you can use to mark a template as a favorite.

Template form
The template form is used to create and edit templates. This form includes two collapsible form
sections:
• Details: Includes information about the template, such as the template name and the table that
the template applies to.
• Template: Includes the selected fields and the configured values for those fields which are
applied to a record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

551


<!-- page 552 -->
Template form

The Template section includes a row for each field that has been added to the template. These
rows are numbered for readability and easy reference. The fields and configured values in each
row are also labeled for readability.
• Field: The field to update on the record.
• Update to: The value to use for that field.
The template form is available when creating a new template from a case or interaction or editing
an existing template. The template form tab header displays a description of the current action:
• Create new template: The system displays this tab header when you create a template.
• Edit template: The system displays this tab header when you save the changes to a new
template or when you edit a template.

Using form templates to create comments and work notes
You can create and use form templates that add content to the Additional comments and
Work notes fields on a case record and then post that content to the activity stream. Selecting
a template displays a modeless dialog with the template content. For more information, see
Modeless dialogs.
Chat summarization
Use the chat summarization feature to automatically create summaries of chat conversations.
The chat summary enables an agent to quickly gain an understanding of the interaction without
reading the entire transcript of the conversation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

552


<!-- page 553 -->
At the completion of a chat conversation, the system automatically generates a chat summary
and adds it to the Chat summary field on the Interaction record. This summary is created from
the transcript of the chat conversation.
The system calls the chat summary prediction, which generates the summary from
predicted values and updates the Chat summary field. It also displays the summary as a top
recommendation for this field.
An agent can modify and save the information in the Chat summary field. To revert the summary
to the predicted value, the agent can select the value in the top recommendation.
The chat summarization feature works with or without chat wrap-up enabled. For more
information, see Interaction wrap up .

AI indicators
When the system generates a summary and automatically populates the Chat summary field, it
also does the following:
• Displays an AI icon above the field which indicates that the summary is generated by AI.
• Displays a banner at the top of the Interaction record. The message in the banner advises the
agent to check the summary and update the information if it is not accurate.
The agent can dismiss the banner. If the agent manually updates the Chat summary field, the AI
icon is no longer displayed.
Interaction wrap up with modeless dialog
Interaction wrap up provides agents with dedicated time after each call or chat to finalize
interaction details. Agents can use this time to wrap up their work before starting a new
conversation.
When interaction wrap up is enabled, an interaction record moves from the Work In Progress
state to the Wrap Up state at the end of a customer conversation. This configurable period of time
enables agents to complete tasks such as posting work notes and updating record information
before moving on to assist other customers.
While in the Wrap Up state, an agent’s capacity is not reduced until the state of the interaction
moves to Closed Complete.

Interaction wrap up features
Interaction wrap up includes several configurable features:
• Wrap-up codes: Agents can select from a list of codes that provide information about how the
interaction was resolved.
• Wrap-up notes: Agents can provide additional information about the interaction resolution.
• Wrap-up timer: Displays the duration of the wrap-up period. When the end of the duration is
reached, the system automatically ends the wrap-up period and saves the wrap-up data with
the default code and notes field blank.
• Wrap-up modeless dialog: Displays when the agent ends an interaction. Includes the wrap-up
timer and fields for the wrap-up code and notes.
Interaction wrap up also includes wrap-up segments, which store interaction wrap-up data. Wrap
up segments enable multiple wrap ups per interaction. For example, when one agent transfers an
interaction to another agent and each agent completes a wrap up for the same record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

553


<!-- page 554 -->
Interaction wrap-up benefits
Interaction wrap up provides agents with dedicated time to complete their work on an interaction.
If enabled, a wrap-up timer displays the remaining time in the wrap-up period. Agents can
complete and submit the wrap-up data within the wrap-up period or allow the system to
automatically complete the wrap-up period when the time expires.
Managers can configure the length of the wrap-up period for their agents. Managers can
also access reports on wrap-up time usage and effectiveness and use analytics to track data
accuracy and agent productivity improvements.
Admins can set and manage wrap-up time limits for voice and chat interactions and create wrapup codes. Agents can quickly select from a list of available codes during wrap-up.

Wrap-up codes
Wrap-up codes provide information about how an interaction was resolved. Agents can select a
wrap-up code when wrapping up an interaction in CSM Configurable Workspace. When wrap-up
codes are enabled, agents can select a code from the configured list in the wrap-up modeless
dialog.
System administrators can create wrap-up codes. From the Interaction Wrap Up Configuration
record, system administrators can also do the following:
• Enable wrap-up codes.
• Select the wrap-up codes that are available to agents in the wrap-up modeless dialog.
• Select a default wrap-up code.
For more information, see the following topics:
• Create an interaction wrap-up configuration
• Create interaction wrap up codes
• Enable interaction wrap up codes

Wrap-up timer
The interaction wrap up timer displays a countdown of the wrap-up period. The wrap-up timer
starts when the wrap up period begins.
Agents can complete their work within the wrap-up period and submit the wrap-up data. If agents
do not complete their work, the system automatically ends the wrap-up period and saves the
wrap-up data with the default code and notes field blank.
Depending on the settings in the Interaction Wrap Up Configuration record, the wrap-up timer
appears on an interaction record in one of two locations:
• In the wrap-up modeless dialog: The timer is displayed in the modeless dialog if wrap-up
codes are enabled.
• In the interaction record header secondary values. The timer is displayed in the secondary
values if wrap-up codes are not enabled.
The system administrator can configure the display of the wrap-up timer by enabling the Show
duration to agent field on the Interaction Wrap Up Configuration record.
The timer counts down the amount of time specified in the Duration in seconds field. The
background color of the wrap-up timer changes as it counts down the duration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

554


<!-- page 555 -->
Background color

Description

Green

Time remaining is between 100% to 50% of duration.

Yellow

Time remaining is between 50% and 25% of duration.

Orange

Time remaining is between 25% and 0% of duration.

Red

When the timer reaches 0.00, the display turns red and then
disappears. The system updates the state of the interaction record to
Closed Complete.

Wrap-up notes
Agents can provide additional information about the interaction resolution in the wrap-up notes.
After selecting a code in the wrap-up modeless dialog, agents can add this information in the
Notes field.

Wrap-up modeless dialog
When wrap-up codes are enabled in the Interaction Wrap Up Configuration record, the system
displays the wrap-up modeless dialog during the wrap-up period.
The wrap-up modeless dialog includes the following fields:
• Wrap up timer (when configured)
• Wrap up code
• Notes
The agent can select a code and add wrap-up notes and then select Submit & close to complete
the interaction. The wrap-up data is saved in a segment record and the state of the interaction
changes to Closed Complete.
If the wrap-up time expires before the agent selects Submit & close, the system closes the
modeless dialog and saves the wrap-up data with the default code and no notes.
Agent actions that impact the wrap-up modeless dialog:

Action

Result

Initiating an outbound conversation during the The system ends the countdown and closes
wrap-up period
the modeless dialog.
Changing the agent status during the wrap-up
period

The system ends the countdown and closes
the modeless dialog.

Logging out during the wrap-up period

If an agent logs out during the wrap-up period
without selecting Submit & close, the wrap-up
time continues. If the agent does not log back
in, the system closes the wrap-up.

Closing the interaction while in wrap up mode

The system displays a warning message. If the
agent still wants to close the interaction, the
system submits the wrap-up using the default
wrap-up code.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

555


<!-- page 556 -->
Action

Result

Transferring a call to another agent

Each agent’s wrap-up period begins the
moment they exit the call. This behavior
applies to both warm and cold transfers.
When a call is transferred from one agent to
another, each agent’s wrap-up period begins
the moment they exit the call.

Cancelling an inbound or outbound call

When a caller cancels an inbound call that
hasn’t been connected to an agent or agent
cancels an outbound call, wrap-up is not
initiated.

Wrap-up segments
The system stores interaction wrap-up data in wrap-up segments. Storing the data in segments
enables multiple wrap-ups per interaction. For example, when one agent transfers an interaction
to another agent, each agent can complete a wrap-up for the same interaction record.
Interaction wrap-up segment records are stored in the Interaction Wrap Up Segment table
[interaction_wrap_up_segment]. Customer and consumer agents have read access to this table.

My Wrap Ups list
The My Wrap Ups list displays a list of all wrap-up records for the current user. To access this
list in the Lists tab, navigate to Interactions > My Wrap Ups. This list view includes a link to the
interaction record, the wrap-up state (In progress or Complete, and the wrap-up code and notes.
The following roles have access to the My Wrap Ups list:
• Customer service agent (sn_customerservice_agent)
• Consumer service agent (sn_customerservice.consumer_agent)
• System administrator (admin)

Wrap up controller
There are two different controllers for interaction wrap up:
• Interaction UI controller: Original controller; includes legacy wrap-up functionality.
• Wrap up controller: New controller introduced in Yokohama; includes wrap-up codes and the
wrap-up modeless dialog.
The Wrap up controller includes output properties that determine where the wrap-up timer is
displayed: in the modeless dialog or in the interaction header secondary values. The Wrap up
controller also controls how the timer is updated.
The CSM Interaction record page and the CSM voice interaction record page include an input
property that determines the wrap-up functionality: disableLegacyWrapUpLogic.
• If set to false: the wrap-up functionality remains the same. For upgrade customers, this
prevents conflicts with the current or custom wrap-up functionality. The default value of this
property is false.
• If set to true: the interaction record page uses the new wrap-up functionality.
To edit this property:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

556


<!-- page 557 -->
1. In UI Builder, select the CSM/FSM Configurable Workspace experience.
2. Select the CSM Interaction record page.
3. In the Data and scripts section on the left side, select CSM Interaction Record to open the Edit
CSM Interaction Record modal.
4. In the Configure tab of the modal, enable or disable the disableLegacyWrapUpLogic property.

Interaction record pages
The wrap-up controller, wrap-up codes, and wrap-up modeless dialog are available on the
following record pages in CSM Configurable Workspace:
• CSM Interaction record page
• CSM Voice interaction record page
Customer Central
Customer Central provides customer service agents with all the information about the customer
in one central place. It enables them to quickly zoom in on the customer issues and provide
efficient and supportive service to their customers.
Customer service agents or location agents can view customer central on the interaction, case,
account, contact, or consumer records in CSM Configurable Workspace in the form of two views:
Customer Information and Customer History.
Starting with the Yokohama release, the Customer History component displays customer activity
information on some record pages in CSM Configurable Workspace.

Customer Information view
The Customer Information view displays key information about the customer and a view of all
recent customer touch points with the service organization. It contains a number of predefined
lists, records, reports, and report groups that are highly configurable, or you can create your own.
You can also configure the number of days to display the data for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

557


<!-- page 558 -->
Customer History view
The Customer History view displays all the recent customer touch points with the service
organization in the form of an activity feed. On the left-hand side, there are facets, or categories
of information. The data in the activity feed is displayed based on the facet you select. It contains
a number of predefined facets and activities that are highly configurable, or you can create your
own. You can also select a date range to display the data for.

Chat summarization
Agents can see an AI-generated chat summary instead of a full transcript so that they can quickly
understand the past interaction and resolve a customer issue. An interaction chat summary in
the Customer History tab provides the context about the chat conversation between the agents
and customers.
An AI icon and tooltip are displayed before the summary which indicate that the summary is
generated by Now Assist.
This feature has the following dependencies:
• Now Assist for CSM (sn_csm_gen_ai)
• UXC Generative AI (sn_uxc_gen_ai)
When these plugins are not installed or the chat summary is unavailable, agents can see the
entire conversation transcript to access the chat history.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

558


<!-- page 559 -->
Customer History component
The Customer History component displays customer, consumer, or account history information,
depending on the field selections on the interaction record. This component displays the
information previously displayed in the Customer Activity tab.

The Customer History component includes the Customer tab. This tab displays customer,
consumer, or account history information, depending on the customer information provided on
the interaction record. This tab includes a search field, filter, and date range selector that agents
can use to find specific information in the history.
The Customer History component is available on the following record pages in CSM
Configurable Workspace:
• Front-line case page: Appears in the contextual side panel.
• CSM voice interaction record page: Appears in the left pane.
Users with the system administrator role can add this component to a record page in UI Builder
and configure the component properties.
The Customer History component can be configured to display a Call Transcript tab. This
tab displays the text of the live call transcript when a conversation record is present for the
interaction.

Note: The Call transcript tab is visible to users if configured in the provider application
associated with the interaction.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

559


<!-- page 560 -->
• This tab displays the text of the call transcript when a conversation record is present for the
interaction.
• This tab displays the following text when a conversation record is not present for the
interaction record: Call transcript not available yet.
The Call transcript tab is visible to users if configured in the provider application associated with
the interaction.
For more information about the Customer history component, see the following topics:
• Customer History component features
• Configuring the Customer History component
• Next Experience Components documentation

Customer Central plugin
The Customer Central application (com.sn_csm_customer_central) is activated with the
CSM Configurable Workspace application (com.snc.uib.csm_agent_workspace). The
CSM Configurable Workspace application is activated with the Customer Service plugin
(com.sn_customerservice).
Starting with the Yokohama release, the Customer Central application
(com.sn_csm_customer_central) has moved to the ServiceNow Store. Any new enhancements to
this application are delivered through the Customer Central store app.

Request apps from the ServiceNow Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Related topics
Configure Customer Central
Use Customer Central
Customer History component features
Customer service agents can use several features in the Customer History component to view
customer, consumer, or account history information.

Search
The search icon lets agents perform keyword-based searches to find activities such as
interactions, cases, and work orders by entering keywords or partial matches. For example,
entering connect displays cases with terms like connect, connected, or connection.
• The search bar appears automatically when the page loads on these pages, Front-line case
page, CSM default record page, and Default Interaction page.
• The search bar is hidden by default on all other pages. Select the search icon anytime to show
or hide it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

560


<!-- page 561 -->
Filter
Agents can use the filter icon next to the search bar to quickly filter and view relevant case data.
Selecting the filter icon displays the results in the Customer History component.

Facets have been replaced by a filter icon. If the Enable facets check box is selected in UI
builder, the system displays facets on the left of the CSM voice interaction record page. If this
check box is not selected, the system displays a filter icon. Selecting the filter icon displays the
selectable facets.
When an agent selects a facet:
• The selected facet name appears below the search bar and the system displays the current
results.
• Selecting a new facet replaces the current results with the new facet's results.
• Only one facet can be selected at a time.

Note:
• For new customers: Filter icons are displayed by default.
• For existing customers: Facets or filters appear based on screen size.

Customer History access
Starting with the Yokohama release, the Front-line case page includes the Customer History
component. This component ensures that agents can easily view customer details without
navigating away from the case page.
Select the Customer History tab in the contextual side panel to access customer history.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

561


<!-- page 562 -->
Cases facet
The Cases facet has been updated to improve case categorization for agents. This helps agents
quickly filter the cases based on their status directly within the Customer History component.

The facet is divided into two subcategories:
• Open Cases
• Resolved Cases

Resizable layout blocks
The Resizable Layout Blocks feature enables agents to adjust the size of page panel for better
visibility. Agents can resize any block (left, center, or right) by following these steps:
1. Click the edges of the block.
2. Drag to adjust the size as needed.
This feature is available across record pages in CSM Configurable Workspace and enables
agents to optimize their workspace based on their needs.

Real-Time updates in Customer History
The Customer History view updates in real time. When an agent adds a new case or interaction,
a new activity is created. If another agent has the same customer record open, the view
automatically refreshes to show the new activity. You don’t need to refresh the page manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

562


<!-- page 563 -->
Note:
• The view refreshes only for new activities created in the [sn_actsub_activity] table that
are linked to the currently open customer record.
• Changes to existing records or knowledge articles do not trigger a refresh.
• The view updates only for the specific record that you're viewing. For example, if you’re
viewing a contact, updates to the associated account won’t appear unless you open the
account record directly.
• Real-time updates are supported only on the Front-line case page and CSM default
record page.

Filter activities by time
Agents can use the date range icon to filter customer activities by day, month, quarter, or yearbased on the configuration set by the admin. The date range icon appears next to the search bar:
• If Day is configured, select a specific date to view activities for that day.
• If Month, Quarter or Year is configured, activities appear grouped by the selected time. The
activity list updates based on the selected filter.
Configuring the Customer History component
Users with the admin role can configure several properties for the Customer History component.

Refresh requested
The Customer History component refreshes automatically, eliminating the need for manual page
refreshes.
The Refresh requested property captures the last refresh timestamp and triggers events such as
Context Refresh Requested whenever the value changes. Admins can configure custom event
handlers to adjust the refresh behavior as needed.
Refresh requested property

This property can be set for the following record pages:
• Front-line case page
• CSM default record page
To configure this property on the Front-line case page:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. Open the Front-line case page.
4. Select the Customer History component.
5. Navigate to the Properties panel.
6. Capture the last refresh timestamp by enabling the Refresh Requested property.
7. Customize the refresh behavior by adding or modifying event handlers under the Events tab.
To configure this property on the CSM Default Record page:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

563


<!-- page 564 -->
1. Select Customer Central.
2. Open the Customer history section.
3. Navigate to the Properties panel.
4. Capture the last refresh timestamp by enabling the Refresh Requested property.
5. Customize the refresh behavior by adding or modifying event handlers under the Events tab.

Header title
The Customizable Customer Activity Title feature enables admins to rename the Customer
History title directly from the interface.
To change the title:
1. In the right navigation pane, navigate to the Component visibility settings.
2. Change the title according to user preferences by editing the Header title property.
This customization option is available on all pages where the Customer History component is
used.

Show bordered icons
The Show bordered icons check box enables admins to customize icon borders in the interface.
• Set to true: Enables bordered icons
• Set to false: Disables bordered icons
Show bordered icons check box

Admins can adjust this setting based on their preferences.

Page design
The Page Design feature introduces a drag-and-drop interface for easier customization of page
layouts. Admins can add, position, and resize components directly on the page without using
tabs.
To use this feature:
1. On the left navigation pane, select +Add Content.
2. In the toolbox window that appears, enter Customer history component and then
select and drag it.
The Customer History component is now available in the toolbox.

Presets
Admins can choose from two new presets for the Customer History component on the Front-line
case page to better manage how customer data is displayed.
• Customer history for record page with lazy load
• Customer history for record page
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

564


<!-- page 565 -->
To apply a preset:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. Open the Front-line case page.
4. Select the Customer History component.
5. Select the existing preset in the configuration panel.
6. In the Select a preset window, choose All under Controller to view available presets.
7. Select one of the new presets to update how customer activity is displayed.
Default values are set for all fields to help prevent errors by ensuring that fields are never left null
or empty.

New empty state for context fields
New empty state for context fields

On the agent side, when viewing a case, customer history or activity data loads automatically
if available. If there’s no activity, the system shows No activities found. If no account,
contact, or consumer is selected, it displays No customer identified yet. This
behavior is part of the empty state feature, guiding users to select or add context (account,
contact, or consumer) to proceed.
Admins can now configure cases to handle scenarios where customer contact or name fields are
empty. Instead of leaving the fields empty, the system prompts users to add the relevant account
or contact information.

Show with activity creation date
The Show with activity creation date property, available in UI Builder, enables admins to control
how timestamps are displayed in the Customer History tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

565


<!-- page 566 -->
• When enabled: Both the timeline and side timestamp display the activity creation date. For
example, if a record (such as a case or interaction) was created 10 days ago but updated today,
both will show today’s date.
• When not enabled (default behavior): Both the timeline and side timestamp display the original
record creation date. So, in the same example, the record would continue to show as being
created 10 days ago, even if it was updated today.

Activity time period
The Activity time period field in the Customer History component enables admins to define how
customer activities are grouped for agents in the CSM Workspace. By default, activities appear
by day, but you can change this to group them by quarter or by year.
To configure the filter in the Front-line case page:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. Open the Front-line case page.
4. Select the Customer History component.
5. Navigate to the Properties panel.
6. From the Activity time period drop-down, select one of the following options:
◦ Day: Enables an additional field where you can enter a date in DD:MM:YYYY format.
◦ Monthly: Groups activities by month.
◦ Quarter: Groups activities by calendar quarter.
◦ Year: Groups activities by calendar year.
To configure this property on the CSM default record page:
1. Select Customer Central.
2. Open the Customer History section.
3. Navigate to the Properties panel.
4. From the Activity time period drop-down, select one of the following options:
◦ Day: Enables an additional field where you can enter a date in DD:MM:YYYY format.
◦ Monthly: Groups activities by month.
◦ Quarter: Groups activities by calendar quarter.
◦ Year: Groups activities by calendar year.

Display search field
The Display search field property controls whether the search bar in the Customer History
component appears when the page loads.
• The property is enabled by default on the Front-line case page, CSM default record page, and
Default Interaction page, so agents see the search bar open automatically.
• It is disabled by default for all other pages, where only the search icon appears.
Agents can always toggle the search icon to view the search bar, regardless of the setting.
You can modify the default behavior by enabling or disabling the property for specific pages,
depending on how you want the agents to access the search bar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

566


<!-- page 567 -->
Lookup and verify
The lookup and verify feature enables customer service agents to quickly look up contacts or
consumers using information such as the name, phone number, or record number.
This feature simplifies the process of looking up and verifying contact or consumer information.
Agents can use it as follows:
• If an interaction record is already populated with contact or consumer information from a chat
or phone call, the agent can review the information and confirm that it is correct.
• If no customer or consumer information is available, the agent can search for this information,
select and confirm the information. and populate the interaction record.

Note: If this information has already been verified, such as through a customer portal
login or authentication by Virtual Agent or by an IVR, the Verified check box on the
interaction record is checked.
Agents can access the search window on the interaction record as follows:
• CSM Configurable Workspace: By clicking the Verify Contact icon (
icon (

) or the Verify Consumer

) in the contextual side panel.

• CSM Agent Workspace: By clicking the Lookup Contact and Lookup Consumer buttons.
Agents can perform a type-ahead search across multiple configurable fields such as name,
phone number, email address, and record number. From the search results list, agents can select
a result to display detailed information for the contact or consumer in a verification card. Once
verified, the system adds the information to the interaction record and checks the Verified check
box.

Plugins
The lookup and verify feature is included with the Customer Service (com.sn_customerservice)
plugin. This plugin provides the configuration for contact and consumer lookup as well as
Lookup Contact and Lookup Consumer UI actions that can be added to the interaction record in
CSM Configurable Workspace.

Note: These actions are not enabled by default. The workspace admin can enable these
actions as part of the lookup and verify feature configuration.

Contact and consumer configurations
Two lookup and verify configurations are provided with the feature, one for contacts and one for
consumers. Navigate to Workspace Experience > Lookup and Verify > Configuration to access
the Lookup and Verify Configurations list.

Note: To see the contact and consumer lookup and verify configurations, you must
activate the CSM Lookup and Verify plugin (com.snc.sn_csm_lookup_verify).
For each configuration, the workspace administrator can:
• Enable the configuration and display the related UI action on the interaction record.
• Enter the minimum number of characters to start the type-ahead search.
• Enter the maximum number of search results returned.
• Select the primary and secondary fields to include in the search results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

567


<!-- page 568 -->
• Select the fields to display on the verification card.
• View the lookup tables.

Note: Customers can contact ServiceNow to make changes to the search fields.
Using Lookup and verify in CSM workspaces
Agents can use the lookup and verify feature in CSM workspaces.
• CSM Configurable Workspace: agents search for contact or consumer information using the
contextual side panel.
• CSM Agent Workspace: agents search for contact or consumer information using the Verify
Contact or Verify Consumer pop-up windows on the interaction form.
The search field provides type ahead search that displays results in a list and narrows the
results as more characters are entered. Selecting a result from the list displays more detailed
information about the contact or consumer in a verification card.
The search feature searches multiple configured fields such as name, account, phone number,
and record number.
• For phone numbers and record numbers, it uses an "exact match" search.
• For other fields, it uses a "starts with" search.

Verification cards
After selecting a search result, detailed information about the contact or consumer is displayed
in a verification card. From this card, the customer service agent can review and confirm the
information by clicking Verified.

Tables
The lookup and verify feature uses the following tables:
• Lookup and Verify Configurations (sn_lookup_verify_config)
• Lookup Tables (sn_lookup_verify_search_on_table)
Related topics
Look up and verify a contact or consumer
Case action status
The case action status feature displays the status of cases in the Case list. With this feature,
customer service agents can easily identify cases that need attention.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

568


<!-- page 569 -->
Action status column on the Case list

Action status column
The case action status feature provides visual indicators in the Action status column on the
My Cases and My Open lists to highlight case status. In addition to the colored indicators, the
Action status column also displays a brief status message.
Action status column indicators and messages
Indicator

Status message

Description

Blue

Needs attention

A blue indicator highlights cases that need
attention, such as cases that have been
updated by customers or internal users and
are waiting for input or review.

Red

• Blocked internally
• Blocked by
customer

A red indicator highlights cases that are
blocked, such as cases that have open related
task records or are waiting for customer
feedback.

• Blocked internally
and by customer

Actionable case flows
The case action status feature uses actionable case flows to automatically determine the action
status for customer service cases. These flows create and resolve blocking tasks for different
case-related actions and update the action status indicators. Certain agent actions trigger these
case flows, which in turn create and resolve the blocking tasks. Customer service agents and
managers can also manually set the action status for cases by enabling the Needs Attention
field on the Case form.
For more information, see the following topics:
• Actionable case flows
• Configure actionable case flows

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

569


<!-- page 570 -->
Blocking tasks
A blocking task is something that prevents an agent from making progress toward case
resolution. For example, a case might have one or more open related case task records or be
waiting for customer feedback.
Certain agent actions trigger case flows that create and resolve blocking tasks for customer
service cases. These tasks determine the case action status. Additionally, there are actions that
resolve these blocking tasks, such as the customer responding to an agent’s question or an
internal user resolving a problem task. For more information, see Blocking tasks.

Blocked by related list
The case action status feature adds the Blocked by related list to the workspace view of the
Case form. Blocking tasks for a case appear in this list. When the system adds a blocking task to
a case, it also adds one of the following blocking reasons:
• Need information from the customer
• Need task resolution
• Need PRB workaround
• Other

Note: When a problem is associated with a case, the blocking reason is set to Needs task
resolution. The agent can update this reason to Need PRB workaround if necessary.
When a blocking task is resolved:
• The Unblocked By field displays the user who performed the unblocking action.
• The Unblocked On field displays the date that the blocking task was resolved.
• The Needs Attention field for the case is enabled.

Notifications
Agents can receive notifications on their preferred channel when a blocking task for an assigned
case is resolved. Agents can also receive notifications when the Needs Attention field for an
assigned case is enabled.

Note: Notifications are not sent to the user who updated the record.
Users with the admin role can configure notification triggers by navigating to Agent Workspace >
Notification Triggers > Case Action Status Trigger.
Related topics
Configure case action status
Administering case action status
Third-party data integration for CSM
The third-party data integration feature enables you to retrieve data from third-party applications
and display the data in Agent Workspace for CSM without having to store it in your ServiceNow
instance.
Many enterprise customers use ServiceNow applications as part of their IT ecosystems. In these
environments, ServiceNow applications coexist with other applications and exchange data
through different types of integrations. For customer service agents who typically use a wide
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

570


<!-- page 571 -->
variety of applications, this can create a fragmented experience that impacts agent productivity
and increases customer wait time.
A frequent integration takes place between ServiceNow and Salesforce applications. In this
integration, customers use Salesforce to manage pre-sales activities and ServiceNow to manage
post-sales activities. These post-sales activities represent service assurance.
To provide high quality service, agents using the Customer Service Management (CSM)
application need a complete understanding of the customer's context, and this includes access
to customer data maintained in other systems. A common example of this integration is enriching
a CSM customer profile by providing a list of opportunities related to the customer's account.
These opportunities are retrieved from Salesforce in real time and are presented in Agent
Workspace for CSM.
Using the third-party data integration feature, data from third-party applications can be retrieved
as needed. Agents can view the data in lists and forms. This feature uses remote tables to store
the third-party data in memory on the application server. Remote tables are useful for data that
changes frequently because the data is retrieved in real-time when a user accesses the data
from the ServiceNow AI Platform.

Activating third-party data integration
The following plugins are required to implement third-party data integration:
• Remote Tables (com.glide.script.vtable): Adds the Remote Table Script Definition table
(sys_script_vtable) and adds the Remote Table flag to the Tables (sys_db_object) table. Active
on the base instance.
• OAuth 2.0 (com.snc.platform.security.oauth): Adds the OAuth-related tables and extension
points needed to support OAuth 2.0 –JWT Bearer grant type. Active on the base instance.
• IntegrationHub (com.glide.hub.integrations): Provides the ability to build reusable integrations
with third-party systems and call them from anywhere in the platform. IntegrationHub
requires subscription and is available in several subscription packages. Different packages
allow for different levels of automation and provide different subsets of predefined thirdparty integrations, or spokes. For more information, see Request IntegrationHub
and
IntegrationHub available spokes .
• Customer Service (com.sn_customerservice)

Configuring third-party data integration
Users with the system administrator role can configure the necessary components to enable
third-party data integration for Agent Workspace for CSM. At a high level, the configuration steps
include:
• Setting up the OAuth 2.0 – JWT Bearer grant type, which provides the connection between
the ServiceNow instance and the third-party application.
• Setting up aliases to manage connection information and credentials when integrating with
external systems and providing alias reference to the IntegrationHub action.
• Creating a remote table to store the third-party data.
• Creating a remote table script definition that maps the data from the third-party application
table to the remote table.
• Configuring ACLs for the remote table to provide user access to the third-party data.
• Configuring the lists and forms that display data from the remote table.
For more information, see Configure third-party data integration for CSM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

571


<!-- page 572 -->
Using third-party data integration
Within Agent Workspace for CSM, agents can use this feature to:
• View read-only data from third-party applications in lists and forms.
• View data from multiple third-party applications in one browser tab.
• View data from third-party applications in pop-up windows, sub tabs, and related items using
iframes.
• Open links to third-party application records from forms.

Domain separation
Remote table script definitions are domain separated. If users do not have access to the same
domain as the remote table script definition record, they cannot access records from the remote
table specified in the script definition.
The data within the remote table is not domain separated.
For more information, see Domain separation and remote tables

.

Related documentation
• Authentication and credentials
◦ Set up OAuth provider with JWT Bearer grant type
◦ Credentials and connection information
• IntegrationHub
• Flow Designer
• Retrieving external data using remote tables and scripts
• Salesforce spoke
Third-party data integration solution overview
A typical enterprise ecosystem includes enterprise resource planning (ERP), sales management,
and service management systems. There are multiple options for implementing the integrations
between these systems.
In this example, the ERP system manages customer data (for example, Accounts).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

572


<!-- page 573 -->
When a new account is acquired, it is created first in the ERP system and then account data is
transferred to Salesforce and ServiceNow (1).
During this process, new accounts are created in Salesforce and ServiceNow. The ServiceNow
account record is updated with the Salesforce account ID attribute that holds the reference to
the Salesforce account record. The Salesforce account ID is later used to match account records
between ServiceNow and Salesforce and also to retrieve opportunity data from Salesforce.
When an agent accesses an account in Agent Workspace for CSM, a list of related opportunities
for this account is retrieved from Salesforce in real-time and presented to the agent.
This example assumes that the flow has been implemented and executed and that the
ServiceNow account records contain valid Salesforce account IDs. This example also uses the
following configuration:
• Connectivity between a ServiceNow and Salesforce.
• Integration using Integration Hub and remote tables.

Integration architecture
ServiceNow integrates with Salesforce through the OAuth 2.0 Bearer Token Flow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

573


<!-- page 574 -->
Integration architecture

Remote tables and IntegrationHub architecture

Third-party data integration components
These components require configuration by the system administrator to use third-party data
integration with Agent Workspace for CSM.

OAuth 2.0 –JWT Bearer grant type
JWT Bearer is the OAuth 2.0 grant type supported for the third-party data integration feature.
It allows server-to-server API interactions between the ServiceNow instance and external API
providers without requiring any user intervention.
The third-party application admin is used as the subject claim of the JWT that the ServiceNow
instance creates and passes to the third-party application instance. This is done to get the
access token which is used to make the REST API call to fetch records from the third-party
application table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

574


<!-- page 575 -->
Credentials and connections
IntegrationHub takes advantage of aliases to manage connection information and credentials
when integrating with external systems. Using an alias eliminates the need to configure
multiple credentials and connection information profiles when using multiple environments.
IntegrationHub only requires an alias, which then resolves to use the correct credentials and
connection information during runtime.
For more information, see the following topics:
• Introduction to credentials, connections, and aliases
• Create connection attributes for IntegrationHub

Remote tables
The Tables (sys_db_object) table contains a record for each table in the database, including
remote tables. For remote table records, the Remote Table flag is checked on the record form.
The columns in a remote table are mapped to the columns in a third-party application table from
which the data is being pulled. The remote table script definition stores this information. Table
definitions for remote tables reside on the ServiceNow AI Platform. The table rows, or external
records, are stored in memory while a user views the data in a list or form.
For more information about remote tables, see Create a remote table

.

When creating a remote table for use with IntegrationHub, pay special attention to the caching
interval and choose an interval based on your workflow and the volatility of the third-party data.
If the caching interval is too short, this can result in unnecessary connections to the third-party
application. If the caching interval is too long, this can result in out-of-date third-party data being
presented in Agent Workspace for CSM.

Remote table script definitions
Use a script definition to retrieve and cache data for a remote table by running the script against
an external data source. Remote table script definitions store the following information:
• Name
• Active
• Table
• Script
• Cache TTL
• Domain
• Domain path
For more information about script definitions, see Create a script definition for a remote table

.

Third-party data integration sample remote table script
The remote table script can be designed to pull records from a third-party application. This script
is called when a query to access data in the remote table is made.
In order to use a remote table with IntegrationHub, you need to identify the IntegrationHub spoke
that works with the third-party application. The spoke consists of the Flow Designer actions that
were created to bring various subsets of the data from that application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

575


<!-- page 576 -->
For example, if you need to bring account information from the Salesforce application, you would
use the Salesforce spoke and the Get All Accounts action. See below for an example of the
remote table script that accesses this action.
(function executeQuery(v_table, v_query) {
try {
// prepare inputs for the spoke actions
// Get All Accounts action does not have any inputs).
var inputs = {};
// call spoke action
var outputs = sn_fd.FlowAPI.executeAction(
"sn_salesforce_spok.get_all_accounts", inputs);
// check if Action was completed successfully
if (outputs.status != "Success") {
throw new Error(outputs.errorMessage);
}
// extract payload from the action outputs
var accounts = outputs.accounts.data;
// map action output data to the remote table columns and
Sys Id
for (var i = 0; i < accounts.length; i++) {
v_table.addRow({
"u_sf_account_id": accounts[i].name,
"u_sf_account_name": accounts[i].label,
// assign remote table Sys Id to the primary key of the
third-party
// record
"sys_id": accounts[i].name,
});
}
// process errors
} catch (error) {
gs.addErrorMessage("Error trying to retrieve Salesforce
Accounts." +
"Please contact System Administrator.");
gs.addErrorMessage("System Error: " + error.message);
}
})(v_table, v_query);

Note: Not all IntegrationHub actions can be invoked from the remote table scripts.
Specifically, Data Stream Actions cannot be called from the scripts. If the action you would
like to use is a Data Stream Action, you might need to create your own action based on the
REST step. An easy way to create an action is to copy an existing action and then modify
it to accomplish your goal. You can find an example of custom spoke actions in this topic:
Create Salesforce spoke actions to retrieve Opportunities for use in the remote table
definition.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

576


<!-- page 577 -->
Configure third-party data integration for CSM
Configure the required components to enable the third-party data integration feature for Agent
Workspace for CSM.

Before you begin

Role required: admin

Procedure
1. Identify the third-party application.
a. Verify that it has the corresponding IntegrationHub spoke and that it is activated on your
instance.
b. Follow the setup instructions specific to the spoke.
For example, for the Salesforce spoke, follow the instructions in the Set up Salesforce
spoke
topic.
2. Identify the spoke action that retrieves the desired third-party data.
You can find the list of available actions in the spoke documentation. If an action that performs
the desired task does not exist, you can create your own action by copying an existing action
and modifying it to suit your needs. You can find an example of the custom spoke actions in
Create Salesforce spoke actions to retrieve Opportunities for use in the remote table definition.

Note: Data Stream Actions cannot be used with the remote table.
3. Create the remote table on your ServiceNow instance to expose the data from the application
through the GlideRecord interface.
4. Create the remote table script definition to map the data from the third-party table to the
remote table.
a. Configure error messages if the spoke action call results in an error.
This error is picked up by the form, list, and field elements and is displayed for the end user
when an error occurs. These error messages distinguish between cases where the response
from the third-party application has no data and an error while fetching data from the thirdparty application.
b. Configure ACLs on the remote table to provide users and roles with read access to the thirdparty data.
c. Configure ACLs to revoke CREATE, WRITE, and DELETE access on the remote table for all
users.
5. Configure the lists, forms, and fields that pull data from the remote table.
Once the remote table is set up, you can access data using the GlideRecord interface.
a. Use Agent Workspace components to embed third-party pages and reports in iframes as
popups or related items.
b. Configure UI actions on forms to create deep links to the records in the third-party
application.
6. Perform some lightweight data synchronization prior to using the feature.
For example, pull in account data from a third-party application using an import set. In the
example provided, the Account (customer_account) table has an Account Id column, which
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

577


<!-- page 578 -->
is populated with the Id of the account in the third-party application instance. This column is
used as the foreign key to pull opportunities for the corresponding account on the third-party
application instance.
Reference Salesforce integration using remote tables
In this example, the Customer Account table is extended to include an associated Salesforce
Account ID which, in turn, is used to retrieve Salesforce opportunities associated with this
account. The remote table is used to hold the retrieved opportunity data.
Use the steps and the examples in the following topics to create a reference Salesforce
integration using remote tables.
• Using the IntegrationHub Salesforce spoke.
• Using remote tables and the Salesforce spoke. Identify or create an IntegrationHub action that
you can use to test the third-party data integration. Then use this action in the remote table
definition.
• Using a related list to create the connection between the customer account and the Salesforce
opportunities.
Using remote tables and the Salesforce spoke
Create Salesforce spoke actions that you can use to test the third-party data integration. Then
use these actions in the remote table definition.
Using the IntegrationHub Salesforce spoke
Use the Salesforce spoke to integrate a Salesforce account with your ServiceNow instance.

Before you begin

Role required: admin

Procedure
To configure the Salesforce spoke, follow the instructions in Set up the Salesforce spoke

.

Related topics
Using remote tables and the Salesforce spoke
Connect Customer Account and Salesforce Opportunities using a related list
Create Salesforce spoke actions to retrieve opportunities
The Salesforce spoke provides actions to retrieve metadata of the opportunity record and create
a new opportunity.
Other than Data Stream Actions, there is no action to get a set of the opportunity records based
on a given search criteria. You must create your own actions to accomplish the stated goal of the
reference example. See Reference Salesforce integration using remote tables.
To create a new action, copy an existing action and modify it to suit your needs. For example, you
can copy the Get All Accounts action and modify it to retrieve opportunity records.
For this example, you will create three new Salesforce spoke actions:
• Get All Opportunities
• Get Opportunities for Account Id
• Get Opportunity Details
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

578


<!-- page 579 -->
Each action includes three steps:
1. A pre-processing script step that creates a query.
2. A REST step that executes the query.
3. A post-processing script step that evaluates the response from the query.

Note: You can test all actions from the Flow Designer before you attempt to connect them
to the remote table.
Get All Opportunities custom action
The Get All Opportunities action retrieves opportunity records from the Salesforce application.
This action is invoked when you view the remote Opportunity table.

Action inputs
The Get All Opportunities action takes a single integer parameter that identifies the maximum
number of records to be returned by the query. The REST-based actions can’t accommodate
pagination and, for this reason, it’s important to limit the number of records returned from the
third-party application. It isn’t recommended to place more than 1,000 records in the remote
table. The default number of records is 500.

Pre-processing step
The pre-processing script step takes the action input as its own.

The pre-processing script creates a SELECT query for all opportunities limited by the maximum
number of records allowed. This query is based on the Salesforce Object Query Language
(SOQL).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

579


<!-- page 580 -->
(function execute(inputs, outputs) {
outputs.query =
"query/?q=SELECT+Name,Id,AccountId,CloseDate,Amount,” +
“StageName,Probability,Type+FROM+Opportunity”;
outputs.query = outputs.query +
“+LIMIT+” +
inputs.max_number_of_opportunity_records;
})(inputs, outputs);
You must specify the fields from the opportunity records that you’re interested in. This example
uses the following fields: Name, Id, Account Id, Close Date, Amount, Stage Name, and Probability.
To see the full list of available fields, use the Get Opportunity Fields action.
You can also control the ordering of the query search by adding the ORDERED BY keyword and
value for ASC or DESC order direction. For example, you can add the following line to the script
before the line specifying the LIMIT. It makes the query return the first 500 records with the most
recent Close Date.
outputs.query = outputs.query + “+ORDERED+BY+CloseDate+DESC”;
The pre-processing output is a query.

REST step
The REST step is a standard REST step from the Salesforce spoke REST-based actions. You don’t
need to make any changes. Make sure that it points to the correct Connection Alias.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

580


<!-- page 581 -->
Post-processing step
The post-processing script step takes the action input and REST step output as its inputs.

The post-processing script checks the query response for errors, sets the error message if
needed, extracts opportunity data from the response body, and creates an information message
to indicate that not all data was retrieved from the Salesforce due to the number of records
limitation.
(function execute(inputs, outputs) {
try{
var response = JSON.parse(inputs.res_body);
} catch(e) {
outputs = errorHandler(inputs, outputs);
}

function createOutputJson(inputs, outputs) {
try{
outputs.records = { data: response.records };
outputs.status = "Success";
if ( outputs.records.data.length ==
inputs.max_number_of_opportunity_records ) {
outputs.info_message = "Opportunity retrieve operation
was “ +
“limited to" +
inputs.max_number_of_opportunity_records +
" records.";
}
} catch(e) {
outputs = errorHandler(inputs, outputs);
}
return outputs;
}

function errorHandler(inputs, outputs) {
outputs.status = "Error";
outputs.error_message = "Unknown Error. “ +
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

581


<!-- page 582 -->
“Please check error log for more
information";
if(inputs.res_body.contains("message"))
outputs.error_message = response[0].message;
return outputs;
}
if(inputs.status_code == "200")
outputs = createOutputJson(inputs, outputs);
else
outputs = errorHandler(inputs, outputs);
})(inputs, outputs);
The following are outputs of the post-processing step.

Action outputs
Action outputs consist of the query status, error and information messages, and opportunity
records. See the preceding screenshot for the action outputs.
Get Opportunities for Account Id custom action
The Get Opportunities for Account Id action retrieves opportunity records for the specific
Salesforce account. This action is invoked when the agent views a Salesforce opportunity
available for the customer account based on the Salesforce account associated with it.
This action is similar to the Get All Opportunities action.

Action inputs
In addition to the maximum number of records to be returned by the query, this action also takes
a Salesforce Account Id as input to be used as a query parameter. The value of this parameter
is provided by the relationship that links the customer account and the Salesforce opportunity
through the associated Salesforce Account Id. For more information, see Create defined related
lists.
The specific relationship needed for the reference example is also described in the Using
a related list to create the connection between the Customer Account and Salesforce
Opportunities topic.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

582


<!-- page 583 -->
The Salesforce Account Id action input parameter has no default value.

Action Outline with Inputs: Pre Processing script, REST step, Post Processing script. Action Input
showing Label, Name, Type, and a toggle for Mandatory.

Pre-processing step
The pre-processing script step takes the action input as its own.

The Pre-Processing step script creates a SELECT query similar to the one created for the Get All
Opportunities action with the addition of the check against the Salesforce Account Id.
(function execute(inputs, outputs) {
outputs.query =
"query/?q=SELECT+Name,Id,AccountId,CloseDate,Amount,” +
“StageName,Probability,Type+FROM+Opportunity”
+
"+WHERE+AccountId='" +
inputs.salesforce_account_id + "
“+LIMIT+” +
inputs.max_number_of_opportunity_records;
})(inputs, outputs);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

583


<!-- page 584 -->
The pre-processing output is a query, similar to the Get All Opportunities action.

REST step, post-processing step, and action outputs
These steps and outputs are the same as for the Get All Opportunities action.
Get Opportunities Details custom action
The Get Opportunities Details action retrieves a single Opportunity record from the Salesforce
application based on the record Id. This action is invoked when the user opens the form for the
Opportunity record in the remote table.

Action inputs
The Get Opportunities Details action takes a single integer parameter that identifies the
Salesforce Account ID. This parameter is set by the form based on the sys_id that was provided
to the remote table in the remote table script. For more information, see Example script that
queries the Opportunity table.

Pre-processing step
The pre-processing script step takes the action inputs as its own.

As with other actions, the pre-processing step creates an opportunity query for the specific
parameter. In this case, the match is done against the opportunity record Id. Do not worry about
the LIMIT in this query because it returns at maximum a single record.
(function execute(inputs, outputs) {
outputs.query =
"query/?q=SELECT+Name,Id,AccountId,CloseDate,Amount,” +
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

584


<!-- page 585 -->
“StageName,Probability,Type+FROM+Opportunity”
+
"+WHERE+Id='" +
inputs.salesforce_opportunity_record_id + "'";
})(inputs, outputs);
The pre-processing output is a query similar to the other custom actions.

REST step, post-processing step, and action outputs
These steps and outputs are the same as for the other custom actions except there is no
maximum number of records parameter and no information message.
Remote tables and definition
Once you have the spoke custom actions working, you need to create a remote table that
describes the schema for the data to be retrieved from the Salesforce Opportunity table.
Create a remote table as shown in the following example.

Create the script definition for the remote table (u_st_salesforce_opportunity), which does the
following:
• Uses the spoke custom actions to pull data from the Opportunity table in the Salesforce
instance.
• Maps the response from Salesforce into the remote table columns.
Example script that queries the Opportunity table
This example script queries the opportunity table using the Get All Opportunities, Get
Opportunities for Account Id, and Get Opportunity Details custom actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

585


<!-- page 586 -->
The example script consists of three distinct parts:
1. The first part selects the correct custom action and prepares inputs for it.
2. The second part makes a call to the action.
3. The third part processes the outputs of the action.

Selecting a spoke action and preparing the inputs
In this section of the script, select one of the three custom actions that you are prepared to get
opportunities from the Salesforce application:
• Get All Opportunities
• Get Opportunities for Account Id
• Get Opportunity Details
You can decide which action to call based on the parameters included in the v_query function
argument.
/****** Choose action and prepare action inputs *****/
var action = null;
var inputs = {};
// look up opportunity by salesforce record id
if (v_query.isGet()) {
action = "get_opportunity_details";
inputs.salesforce_opportunity_record_id = v_query.getSysId();

// look up opportunities by salesforce account id
} else if (v_query.getParameter("u_sf_account_id")) {
if (v_query.getParameter("u_sf_account_id") == "undefined")
{
gs.addInfoMessage(“Opportunities cannot be retrieved
because “ +
“this “Account does not have associated
“
+
“Salesforce Account. Please contact
System “ +
“Administrator.");
return;
} else {
action = "get_opportunities_for_account_id";
inputs.salesforce_account_id =
v_query.getParameter("u_sf_account_id");
}
// look up all opportunities
} else {
action = "get_all_opportunities";
}
Note that this script configures an information message if the Salesforce account is undefined
when it’s required by the action. The undefined value comes from the relationship that is
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

586


<!-- page 587 -->
described in Using a related list to create the connection between the Customer Account and the
Salesforce Opportunities.
When the Salesforce account is undefined, there’s nothing to query for in this case and the
function returns without calling the spoke action.

Calling the spoke action
In this section of the script, call the action using the names of the Salesforce spoke and the
selected action and store the outputs of the call.
/***** Call action *****/
var outputs =
sn_fd.FlowAPI.executeAction("sn_salesforce_spok." +
action, inputs);

Processing the action output
In this section of the script, process the outputs starting with the check for errors.
/***** Process action outputs *****/
if (outputs.status != "Success") {
throw new Error(outputs.error_message);
}
If the query doesn’t return any errors, the script must process the returned records and add
them as rows into the remote table. Map the Salesforce Opportunity fields into the remote table
columns.
var opportunities = outputs.opportunities.data;
for (var i = 0; i < opportunities.length; i++) {
var opportunity = opportunities[i];
v_table.addRow({
"u_sf_amount": opportunity.Amount,
"u_sf_close_date": opportunity.CloseDate,
"u_sf_name": opportunity.Name,
"u_sf_probability": opportunity.Probability + "%",
"u_sf_account_id": opportunity.AccountId,
"u_sf_stage": opportunity.StageName,
“u_sf_type": opportunity.Type,
"sys_id": opportunity.Id,
});
}
Note that the Salesforce opportunity record Id is assigned to the remote table sys_id. This
verifies that lists and forms for the remote table function properly and that we are able to extract
the record Id using v_query.getSysId() the next time that the remote table script is
invoked.
Then display the information message if it was passed by the query.
if (outputs.info_message) {
gs.addInfoMessage(outputs.info_message);
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

587


<!-- page 588 -->
Putting the remote table script sections together
The three sections of the script are included in the try-catch block to provide for error handling.
(function executeQuery(v_table, v_query) {
try {
// place code here from: <Selecting a spoke action and
preparing the inputs>
// place code here from: <Calling the spoke action>
// place code here from: <Processing the action output>
} catch (error) {
gs.addErrorMessage("Error retrieving Salesforce
Opportunities. “ +
“Please contact System Administrator.");
gs.addErrorMessage("System Error: " + error.message);
}
})(v_table, v_query);
Connect Customer Account and Salesforce Opportunities using a related list
Use a related list to link the Customer Account table with Salesforce Account Id, and the
Salesforce Opportunity remote table with the same Account Id.
In this example, create a relationship called Opportunities. Choose the Account table in the
Applies to table field and the remote opportunity table in the Queries from table field. For more
information, see Create defined related lists .

Add the following code in the Query with field:
(function refineQuery(current, parent) {
var sf_account_id = new
String(parent.u_salesforce_account_id);
if (sf_account_id.length == 0)
sf_account_id = "undefined";
current.addQuery("u_sf_account_id", sf_account_id);
})(current, parent);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

588


<!-- page 589 -->
This code checks for the presence of the Salesforce Account Id in the Account table and, if it's
missing in the record, sets it to undefined. The code also includes a query for the Opportunity
table column that holds the Salesforce Account Id for the value of this Id from the Account table.
This query is invoked when the user opens the list of opportunities associated with the customer
account. To see how it is used in the remote table script, see Selecting a spoke action and
preparing the inputs.
Set up CSM Configurable Workspace
Set up CSM Configurable Workspace for your agents so they can engage with customers,
answer questions, create cases, and resolve issues.
Complete the following tasks to set up CSM Configurable Workspace:
1. Activate the Customer Service plugin (com.sn_customerservice).
2. Set up CSM Configurable Workspace using guided setup.
3. Set up communication channels and routing.
4. Set up additional components specific to CSM Configurable Workspace.

Activate the plugin
Activating the Customer Service plugin (com.sn_customerservice) provides the CSM
Configurable Workspace functionality. For more information, see the following topics:
• Activate Customer Service Management
• Plugins activated with Customer Service Management

Set up CSM Configurable Workspace using guided setup
You can set up CSM Configurable Workspace by using the Customer Service Management
Guided Setup. To use the guided setup:
1. Navigate to Customer Service > Administration > Guided Setup.
2. Select Get Started on the Welcome page.
3. Scroll through the list of guided setup categories until you reach the CSM Configurable
Workspace category.
4. Select Get Started in the CSM Configurable Workspace category.
The CSM Configurable Workspace category includes one task for the Configurable Workspace
Guided Setup.
5. Select Configure to go to the Configurable Workspace Guided Setup.
6. Select Get Started.
The Configurable Workspace Guided Setup includes a sequence of workspace configuration
tasks.
Configurable Workspace configuration tasks
Task

Description

Branding and theming

A theme sets the visual style of a configurable workspace
experience and provides a consistent look and feel across all
pages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

589


<!-- page 590 -->
Configurable Workspace configuration tasks (continued)
Task

Description

• View the brand and theme setting in your workspace
experience
• Working with themes in Next Experience
Tab Settings

Configure the following in the Tab Settings category:
• Configure a New Record menu by adding a table that
agents can select to create new records in a configurable
workspace.
• Select a Service Catalog for your agents to use with a
configurable workspace.

Lists

Configure list categories, filtered lists, and tailor lists to show
specific items by user role in a configurable workspace.
• Create list categories
• Create filtered lists

Forms

Configure the way forms appear for your agents or workers in a
configurable workspace. You can also configure the fields that
appear on the form to be different depending on the record
type and user roles. For more information, see Administering
forms for Configurable Workspace .

Additional Forms
Configuration

Configure templates that agents can use to pre-populate
fields and UI actions to make a configurable workspace more
interactive. For more information, see Administering forms for
Configurable Workspace .

Search

Define search sources that your agents can query in a
configurable workspace. Agents can use these keywords to
search for specific records or knowledge articles.
• Configuring search in Next Experience
• AI search in Recommended Actions

Configurable Workspace
Notifications

Determine the conditions when notifications display in a
configurable workspace, such as when a record updates or a
record assigns to a user.

Advanced Work Assignment
(AWA)

Set up Advanced Work Assignment
to automatically route
tasks and interactions to the right agents.

Configurable Workspace
Agent Chat

Configure Agent Chat to enable live agents to chat with
customers and manage various conversation features for
agents and end users. For more information, see Setting up
Agent Chat .

Playbook

Playbooks display business process workflows in a simple
task-oriented view. These step-by-step procedures guide

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

590


<!-- page 591 -->
Configurable Workspace configuration tasks (continued)
Task

Description

users through workflows that address commonly encountered
situations. For more information, see Building Playbooks .

Configuring workspace pages in UI Builder
You can use UI Builder to configure the pages and components that display information in CSM
Configurable Workspace including the following:
• Landing pages
• Record pages
• Customer Central – Customer Information tab
For more information, see the Manage UI Builder pages and page variants
Builder
documentation.

topic in the UI

Set up communication channels and routing
Enable agents to chat with customers or to receive and place customer calls. You can also set
up routing that automatically directs chats to the appropriate agents. For more information, see
Setting up Agent Chat .

Set up additional CSM Configurable Workspace components
Complete these tasks to set up the components that are specific to CSM Configurable
Workspace.
Additional CSM Configurable Workspace configuration tasks
Task

Description

Create or modify a landing page

The landing page is an agent's initial view of
the workspace. The CSM Landing Page is
included with the Customer Service plugin.
You can modify this landing page or you can
create and modify a page variant in UI Builder.

Set up a ribbon configuration in CSM
Configurable Workspace

The form ribbon includes components that
display information about a record. You can
add the Customer 360, Timeline, and SLA
components to the Case form ribbon. You can
also configure attributes for the Customer 360
and Timeline components.

Set up a form header in CSM Configurable
Workspace

Configure form headers that provide a
quick summary of case, account, or contact
information.

Set up a highlighted value in a form header in
CSM Configurable Workspace

Configure fields that appear as highlighted
values in form headers in CSM Configurable
Workspace.

Set up a form action in CSM Configurable
Workspace

Create form actions that link to UI actions
so that you can use the UI actions in CSM
Configurable Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

591


<!-- page 592 -->
Additional CSM Configurable Workspace configuration tasks (continued)
Task

Description

Display the form ribbon and form header
Configure the form ribbon and the secondary
secondary values in the Contextual side panel values that appear in a form header to
display in the Contextual side panel in CSM
Configurable Workspace.
Display field values as interaction record tab
titles

Display field values, such as contact or
consumer names, as titles on interaction
record tabs in CSM Configurable Workspace.

Enable the Create Case UI action for case type Enable the Create Case UI action for case
selection
type selection for one or more selected tables.
Configure tabs in the contextual side panel

Use the inlineTabExclusion UX page
property to prevent tabs from appearing in the
configurable side panel in CSM Configurable
Workspace.

Configure service catalogs for CSM
workspaces

Customer service agents use service catalogs
to fulfill catalog item requests. You can
configure the Service Workspace Portal to use
the catalogs that contain the desired items.

CSM Configurable Workspace record pages
A record page provides the base structure for how a record is displayed in CSM Configurable
Workspace. This structure includes records such as cases, tasks, and interactions.

Record page overview
Record pages include elements such as layouts, containers, and components to display
record information. Some record pages leverage additional logic using presets, controllers, and
extension points. Pages with preset and controller logic benefit from reusability because they
automatically inherit styling, events, and data binding. This reusability simplifies configuration
and makes the pages upgrade friendly.
Several record pages are included with CSM Configurable Workspace. You can use these
record pages as is or you can customize them to suit your needs. For more information about
customizing record pages, see Manage UI Builder pages and page variants .

Record pages available with CSM Configurable Workspace
Several record pages are included with CSM Configurable Workspace.
CSM Configurable Workspace record pages
Page

Description

CSM default record page

This page provides the basic structure
for case management, including record
information, chat and phone features, and
suggestions for resolving issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

592


<!-- page 593 -->
CSM Configurable Workspace record pages (continued)
Page

Description

Note: Use this page to display
generative AI elements and functionality
available with Now Assist for Customer
Service Management (CSM).
Front-line case page

This page is designed for front-line agents. It
provides a simplified case view that enables
agents to gather context quickly, categorize
cases, and provide prompt responses to
customers.

CSM Interaction record page

This page includes CSM-specific features for
interaction management, including interaction
information and related search results. It also
enables agents to accept and respond to live
chats, calls, email, and SMS messages.

Note: Use this page to display
generative AI elements and functionality
available with Now Assist for Customer
Service Management (CSM).
Email interaction record page

This page enables agents to manage
email conversations with customers using
interaction records.

CSM voice interaction record page

This page provides a component that
customers can use for integration with Contact
Center as a Service (CCaaS) providers. It
provides an interface that agents can use to
handle customer phone calls.

CSM centered chat interaction record page

This page provides a chat component in the
center of the workspace that agents can use to
handle customer chat conversations.

Record default

This page provides the basic structure for a
record page, including record information, a
communication interface, and suggestions for
issue resolution. This page is also known as
the standard record page.

Note: The Record default page is no
longer supported with patches and fixes.
Interaction record page

This page provides the basic structure for
an interaction record, including interaction
information and related search results.

Note: The Interaction record page is no
longer supported with patches and fixes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

593


<!-- page 594 -->
Record page elements
Record pages are made up of different elements that determine how record information is
displayed in CSM Configurable Workspace.
Record page elements
Element

Description

Layouts

The metadata that determines how components are
positioned on a page and what CSS rules apply. Layouts
enable you to create useful and visually appealing pages.

Containers

A container holds one or more components on a page.
Think of a container as an area of the page where you add
information, images, or functionality (your components).

Components

Components are the building blocks that you use to create
pages. End users, such as agents, use components to view
and interact with data. Commonly used components include
Heading, Image, List, Form, and Button.
For more information about components and component
®

configuration, see the ServiceNow Developer site

.

Presets

A preset is a set of instructions that define configuration
values for a specific component. A preset also specifies how a
component connects to a controller. Using presets can simplify
component configuration and enable you to avoid manual data
binding.

Controllers

A controller combines the complex business logic, including
data brokers, state parameters, scripting, and event
management, into a single entity. Presets use the data in a
controller to auto-configure a component.

Extension points

An extension point enables subpages, such as viewports and
page collections, to inherit controllers from the parent page.
Extension points also improve the ability to upgrade.

Determining which record page is used
Record pages include several settings that the system uses to determine which record page to
use when displaying information in CSM Configurable Workspace.
• Active: A record page can be active or inactive. The system evaluates active pages when
determining which page to use.
• Order: A record page has an order value. The system uses this order value when determining
which page to use. The page with the lowest order value is the default record page.
• Conditions: A record page can have one or more conditions that determine when it’s used.
For example, a record page can have a condition that specifies a table, such as the Interaction
[interaction] table. This condition limits the use of the page to records from the Interaction
table.
• Audience: A record page can have a specified audience. This audience determines who can
see the page. If no audience is specified, all users can see the page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

594


<!-- page 595 -->
The system chooses a record page by evaluating the conditions, order values, and audience on
the available active pages.
• If there are no active pages with conditions or audience, the system chooses the page with the
lowest order value.
• If there’s an active page with one or more conditions and those conditions are met, the system
chooses that page.
• If there are two active pages with the same conditions, the system chooses the page with the
lowest order value.
• If an audience is specified, only those users can see the record page.

Default record pages
Each record page has an order value and the page with the lowest order number is the default
record page.
New zBoot customers see the following pages by default:
• CSM default record page
• CSM Interaction record page
Upgrade customers retain their custom record pages. However, the following pages are no longer
supported with patches and fixes:
• Record default
• Interaction record page
For more information about setting the default record pages, see Set record page order.
Front-line case page
The Front-line case page provides a simplified case view that enables front-line agents to quickly
gather context, categorize cases, and provide prompt responses to customers.
The Front-line case page focuses on the essential functionality that front-line or tier 1 agents
need:
• Looking up and verifying customer information
• Scanning the activity stream
• Viewing related information
• Searching for knowledge articles
The Front-line case page is included with the CSM Configurable Workspace application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

595


<!-- page 596 -->
Front-line case page

Front-line case page variant
The Front-line case page variant is included with the CSM Configurable Workspace application.
This variant includes the following settings.
Front-line case page variant settings
Setting

Description

Active

Enabling the Active check box makes the page variant
available to the selected audience. The Front-line case page
variant is active for new and upgrade customers.
The active setting combined with the page order determines
the page that CSM Configurable Workspace uses to display
record information. For more information, see Set record page
order.

Order

Each record page has an order which indicates the page
priority. The lower the number, the higher the priority.
The default order for the Front-line case page variant is 1000.

Conditions

Conditions determine when a page variant is displayed.
The Front-line case page has the following condition:
table=sn_customerservice_case
This condition limits the use of the Front-line case page variant
to records from the Case [sn_customerservice_case] table and
tables that extend the Case table.

Audience

The audience determines who can see the page variant. The
Front-line case page has the following audience: CSM - Frontline Agent
This audience includes the sn_cwf_wrkspc.frontline_agent
role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

596


<!-- page 597 -->
Front-line case page variant settings (continued)
Setting

Description

For more information, see Learn about audiences

.

To access the settings for this page variant:
1. Navigate to All > Now Experience Framework > UI Builder.
2. Select the CSM/FSM Configurable Workspace experience.
3. In the Record section of the Pages and variants list, select Front-line case page.
4. Select Settings at the top of the page.

Roles
The CSM Configurable Workspace application includes the following role: Front-line agent role
(sn_cwf_wrkspc.frontline_agent). Agents with this role have access to the Front-line case page in
CSM Configurable Workspace.
The Front-line case page variant includes the CSM - Front-line Agent audience, which includes
the sn_cwf_wrkspc.frontline_agent role.

Note: To make the Front-line case the default page, the system administrator can set the
page to active and set it to the lowest page order.

Front-line case page components
The Front-line case page includes the following components.

Component

Description

Form heading

The form heading displays the case short description and also
includes the action bar and record tags.

Record tags

Agents can create multiple tags for a record and then use the
tags to group and organize records.
For more information, see Group and find records using tags in
workspace .

Action bar

The action bar contains the actions available to users while
working on case records. The specific actions are determined
by factors such as the user role, case state, and other
attributes.
• In-progress Actions: Provides a list of minimized modeless
dialogs and includes a badge that displays the number of
items in the list. From this list, an agent can select an item to
open the minimized comment, work note, or email.
• Create: Create records such as work orders, incidents, and
requests.
• Manage case: Perform case management actions such as
accepting a case or requesting information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

597


<!-- page 598 -->
Component

Description

• Save: Save changes to the case record.
• More Actions: Perform additional actions such as proposing
a major case or reporting a knowledge gap.
Contact lookup

Agents can use the contact lookup component to do the
following:
• Search for a contact.
• Link or unlink a contact.
• Edit and save a linked contact record.
• Select a reference field on a lookup card, such as a contact
name, to open the reference in a sub-tab.
• Select an email address on a lookup card to open a draft
email in the email composer in a sub-tab.
• Select a phone number on a lookup card to make a call.
The contact lookup component displays information in record
cards. These cards display contact information and provide
quick access to details such name, email, and phone.
For more information, see the Contact and consumer lookup
components section below.

Consumer lookup

Agents can use the consumer lookup component to do the
following:
• Search for a consumer.
• Link or unlink a consumer.
• Edit and save a linked consumer record.
• Select a reference field on a lookup card, such as a
consumer name, to open the reference in a sub-tab.
• Select an email address on a lookup card to open a draft
email in the email composer in a sub-tab.
• Select a phone number on a lookup card to make a call.
The consumer lookup component displays information in
record cards. These cards display consumer information and
provide quick access to details such name, email, and phone.
For more information, see the Contact and consumer lookup
components section below.

Case details

The case details component includes collapsible sections for:
• Case
• Notes
• Closure Information
• Related Records

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

598


