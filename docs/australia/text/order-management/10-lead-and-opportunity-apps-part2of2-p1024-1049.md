# Australia Sales Customer Relationship Management — Lead and opportunity apps

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1024–1049 of 1645 | Part 2 of 2

Sections: Lead and opportunity apps (p874); Configure, price, quote apps (p942)

---

<!-- page 1024 -->
Procedure
1. Open the approval request for the quote you want to reject.
2. Review the quote details and approval context to identify the reasons for rejection.
Review the following:
◦ The specific approval conditions that aren't met
◦ Policy violations or non-conformance issues
◦ Missing information or required clarifications
3. Select Reject.
A form appears to document your rejection decision.
4. In the Comments field, enter the reason for rejection and provide specific guidance for the
requester.
Provide clear, actionable feedback, for example, Discount exceeds approval threshold by 5%.
Reduce by at least 6% for tier compliance.
5. Select Submit to send the rejection.
The rejection is processed. The system:
◦ Changes the quote status to Returned for Revision
◦ Records the rejection with timestamp and comments
◦ Sends a notification to the quote requester with your rejection reason
◦ Returns the quote to the requester for editing

What to do next
• The requester makes revisions based on your feedback
• The requester resubmits the quote for approval by selecting Request Approval
• The revised quote goes through the complete approval workflow from the beginning
• You receive another approval request for the revised quote
• You can track all previous rejection comments in the approval history
The View Approval panel shows:
• All previous approval requests for the same quote
• Status of each request (approved, rejected, recalled)
• Your rejection comments and the requester's responses
• Timestamp of each approval action
View approval history and track status
Track the progress of submitted quote approval requests. View the complete history of approvals
and rejections for audit and reference.

Before you begin

Role required: approval_requester, approver, or approval_request_viewer.

About this task

The approval history shows where a request is in the approval process. The history includes
submitted requests, approver decisions, comments, and rejection reasons.
Approval requests can have the following statuses:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1024


<!-- page 1025 -->
• Pending: The request has been submitted and is awaiting an approver decision.
• Approved: The approver has approved the request.
• Rejected: The approver has rejected the request and returned it for revision.
• Recalled: The requester withdrew the approval request before a decision was made.
• Completed: All required approvals have been received and the approval process is complete.
The approval history records the following details for each approval action:
• Timestamp of the approval action
• Approver name or group that took the action
• Action taken (approved, rejected, recalled)
• Comments or notes provided by the approver
• Approval rule or condition that triggered the approval
• Approval request ID and version number

Procedure
1. Open the approval request for which you want to view approval history.
2. Select View Approval.
The approval panel opens showing the current approval status and a list of all approval
requests for this quote or order.
3. Review the current approval request details in the main approval panel.
Approval panel form
Field

Description

Request ID

Unique identifier for this approval request

Status

Current state of the approval (Pending, Approved, Rejected, Recalled,
Completed)

Assigned
Approvers

Names or groups that must approve this request

Approval
Progress

Visual indicator showing which approvers have acted and which are pending

Trigger
Conditions

The approval conditions that triggered this request (for example, Account
Exception or Discount Tier 2)

Request Date

Date and time when the request was submitted

4. View a specific approval request by selecting it from the list.
The list shows all approval requests for the current quote or order, including:
◦ Request ID number
◦ Date submitted
◦ Final status (Approved, Rejected, Recalled, or Active)
The approval panel updates to show the details of the selected approval request, including its
complete history.
5. Review the approval history timeline to see all actions taken on the request.
The history shows a chronological record of:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1025


<!-- page 1026 -->
◦ Request Submitted: Timestamp of the submission, including the requester name.
◦ Approvals Received: Each approval action taken, with timestamp and approver name.
◦ Approver Comments: Any notes or comments provided by approvers when they made their
decision.
◦ Rejections and Recalls: Any rejection or recall actions, with reason documented by the
requester or approver.
6. View detailed comments from an approver by selecting the specific approval action in the
history timeline.
The approver's decision details appear, including:
◦ Approver name
◦ Decision made (Approved, Rejected, Returned for Revision)
◦ Approval rule applied
◦ Full text of the approver's comments or rejection reason
◦ Date and time of the decision
7. If the request was rejected, review the rejection comments.
The rejection comments explain:
◦ What specific issues need to be corrected
◦ What policy violations must be addressed
◦ What information is missing from the quote
◦ What actions you should take to get the quote approved
8. Check the status of each assigned approver to monitor progress on pending requests.
The approval panel shows:
◦ Which approvers have already acted on the request
◦ Which approvers are still pending
◦ The sequence of approvals (if using approval chains)
◦ How many approvals have been completed versus the total required

What to do next

Based on the approval status and history, you can:
• If approved: Proceed to complete the quote or order transaction
• If rejected: Revise the quote to address the feedback from the approver and resubmit (for more
information, see Reject or return a quote for revision)
• If pending: Wait for remaining approvers to complete their review, or contact them for status
updates
• If recalled: You can view previous approval requests to understand the decision history, then
resubmit with updates
If your approval request is pending and has exceeded the expected approval timeframe:
1. Check the approval panel for escalation status (if escalations are configured)
2. Contact the pending approver directly to request an expedited review
3. Escalate to your manager if the approval has been pending longer than your organizational
SLA
4. Contact your approval administrator for escalation options
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1026


<!-- page 1027 -->
Using Customer Contracts and Entitlements
Learn how consumers, managers, agents, and administrators use the Customer Contracts and
Entitlements application to generate customer contracts and contract lines.
Customer contracts, customer contract lines, and entitlements can be created in the following
ways:
• Via workflows: You can create customer contracts, customer contract lines, and entitlements
by using the contracts and entitlements workflow. For more information, see Creating contracts
and entitlements using workflows.

Note: When a customer contract line or entitlement is created via the Sales Customer
Relationship Management workflow, the account/consumer/household details are
copied from the sold product and it inherits the state of the sold product. Further, when
the state of the contract line changes, the same state is synced back to the parent sold
product.
• Via API integrations:
◦ Service Contract API
◦ Entitlement API
You can perform the following features using Customer Contracts and Entitlements Workflows:
• Standard renewals: A standard renewal occurs when a contract is renewed on schedule. The
system creates a new contract with the existing contract lines, entitlements, and child records,
with the new term starting immediately after the original contract ends. There is no pricing
adjustments that are needed beyond the agreed renewal terms.
• Non-standard renewals: A non-standard renewal occurs when a contract is renewed outside
of the renewal cycle. This covers three scenarios: an early renewal, a late renewal, and a shortterm renewal. For more info, see Renew a customer contract line.
• Consolidation of Contracts: You can merge multiple contracts for the same account into a
single contract. Use contract consolidation during renewal to align contract terms and combine
subscriptions into one contract. For more info, see Renew a customer contract line.
• Upsell or Downsell: You can add or reduce the quantity to an existing contract during its term.
Using Contracts and Entitlements Workflows
Learn how contracts and entitlements using workflows enable you to create and manage
customer contracts, customer contract lines, and entitlements.
You can manage the life cycle of customer contracts and entitlements from offer creation to
contract generation using contracts and entitlements workflows. Using workflows you can
suspend, resume, cancel, and renew multiple entities at once. You can view customer contract
lines as a hierarchical list that helps to view the parent and child relationship between line
items. Customer Contracts and Entitlements supports variable and derived pricing models.
Contracts and entitlements correctly reflect dynamically calculated prices, ensuring consistency
with underlying pricing logic and improving accuracy across contract‑driven workflows. For
more info, see Configuring derived pricing. You can also perform the following functions using
workflows:
• Create, suspend, resume, cancel, and renew customer contracts.
• Create, modify, suspend, resume, cancel, and renew customer contract lines, and
entitlements.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1027


<!-- page 1028 -->
Automatic renewal of customer contracts
While creating customer contracts from quote or orders, you can select the Auto-renew contract
option on a quote or order to automatically renew the contracts. When you add or delete a
contract line from these customer contracts, the renewed quotes and opportunities are updated.
You can configure the auto-renewal date of the contract in the Customer Life Cycle Workflows
Policy decision table. By default, you can choose to initiate the auto-renewal 90, 60, or 30 days
before the contract end date, or on the contract creation date. For more info, see Creating
contracts and entitlements using workflows.
Automatic renewal for customer contracts on quotes

In the Renewal adjustment basis field, you can select List price or Contracted price. Selecting
List price renews the contract at the market price of the contract at the time of the renewal date.
Renewal adjustment basis

Selecting Contracted price gives you the option to renew the contract at Markdown % or Markup
% of the current contract price. For example, if you select Markup % field and you enter 10 in
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1028


<!-- page 1029 -->
Renewal adjustment value, the customer contract is renewed at 10% above the current contract
price.
Renewal adjustment type

That exact renewal date and the renewal adjustments for that customer contract will be visible on
the customer contract form in the Auto renewal date field.
Automatic renewal of customer contracts

You cannot modify the renewal adjustment fields on the customer contract. You can only modify
the renewal adjustment values on the quote and orders.

Updating contract end date
During quote processing, the system alerts you when the contract end date is exceeding the
product offering end date. When you submit quotes for approval, a dialog box appears alerting
you. You can select the option update contract end dates to match offering end dates to match
the contract end date to the product offering end date.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1029


<!-- page 1030 -->
Matching the contract and product offering end dates

If you do not select this option and approve the quote, the contract end date remains the same.

Co-terminate quote lines
You can assign the same start and end dates to multiple quote lines while creating or renewing
a quote. On the Line items tab on the quote details page, select multiple quote lines and then
select Co-terminate. All the selected quote lines have the same start and end date.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1030


<!-- page 1031 -->
Co-terminate quote lines

Viewing price ramps
Customers can scale their purchases by adjusting the pricing and quantity throughout the
contract or subscription term by using the Ramps feature. For more info, see Add price ramps
on a quote line item. You can view the price ramp details on the contract line. Only the active
price ramp segment is displayed on the contract line. Select a contract line and select Ramps to
view all the details of the price ramp for that contract line. You can view start and end date, term
period, ramp type (yearly or quarterly), ramp segments, and Annual percentage increase (API%).
You can also process early renewal and early termination of contract lines with ramps. For more
info, see, Renew a customer contract line and Modify a customer contract line.
Add contract lines to a customer contract
Add one or more contract lines to a customer contract on the CSM Configurable Workspace.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract to
add more contract lines.
4. On the Customer Contract form, select Customer Contract Lines related list.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1031


<!-- page 1032 -->
5. Select New.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to create new customer contract line is
created.
◦ If the selected target entity is an order, an order to create new customer contract line is
created.
◦ If the selected target entity is an opportunity, an opportunity to create a new customer
contract line is created.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
create the customer contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
The Existing contract field will refer the current customer contract. All the other fields like
Contract start date, Contract end date, and contract renewal fields will be auto-populated with
the current contract details.
6. In the Catalog tab, add products to the new quote or order that is created.
For more info, see Add products to a quote.
7. Select Submit for approval.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
On the Customer Contract Line related list, a new customer contract line is created and added.

Result

The new customer contract line is added to the contract and is visible on the selected target
entity. The new customer contract line is synced with auto-renewal quote or opportunity that is
generated for the contract. When the associated customer contract is auto renewed, the new
customer contract line is automatically renewed and added to the renewal quote or opportunity.
Renew
Renew customer contracts, contract lines, and entitlements.
Renewing a customer contract, contract line, or entitlement initiates the configured renewal
workflow and generates a new renewal record as applicable. The workflow carries forward
relevant terms, pricing, and relationships to ensure continuity. Renewal maintains life cycle
history while enabling ongoing service and billing processes.
Renew a customer contract line
Renew a customer contract line on the CSM Configurable Workspace. You can renew the
services specified in the customer contract line and its associated child customer contract lines
and entitlements.

About this task

You cannot renew a customer contract line when it is in Canceled state or it does not have an
end date.
The order processing for product inventory based contract lines are executed according to the
fulfillment flow defined by the customer for these offerings being renewed.

Before you begin
Role required:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1032


<!-- page 1033 -->
• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote or opportunity, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, navigate to Contracts and Entitlements > Customer Contracts.
3. In the customer contract lists, select the customer contract that you want to renew.
4. In the customer contract lines related list, select the customer contract lines that you want to
renew.
5. Select Renew.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to renew the customer contract line is created.
You can select the quote number from the confirmation message to review the renewal
quote. After the quote is approved and the status is updated to Complete, an order is
created for further processing.
◦ If the selected target entity is an order, an order to renew the customer contract line is
created. You can select the order number from the confirmation message to review the
renewal order.
◦ If the selected target entity is an opportunity, an opportunity to renew the customer contract
is created. You can select the opportunity number from the confirmation message to review
the renewal opportunity.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
renew the customer contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.

Note: If you select a quote or an opportunity, the line items with same product
offerings and configuration will be consolidated into a single quote or opportunity line.
The consolidated line item reflects the total quantity of all the combined items. For
more info, see Consolidate quotes.
If more than 20 contract lines are renewed, the target entities are created asynchronously. You
can configure the threshold value for the number of contract lines.
6. Perform an early or late renewal on the customer contract line.
In early renewal, you can terminate the contract before the expiry date and create a new
contract with the desired start date. For late renewal, you can renew expired contracts that are
not renewed.
◦ Select a date before the contract expiry date in the Renew from field to perform an early
renewal. Two quote or order line items are created. One change order or quote line is
created with the modified expiry date of the current service contract line. A new renewal
quote or order line is created with the new start date.
◦ For an expired contract line, enter a new date to renew the service contract line in the Start
from field. A new renewal quote or order line is created with a new start date.
◦ For a ramped contract line, select a date before the contract expiry date in the Renew from
field to perform an early renewal. The contract line splits into two contract lines. One contract

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1033


<!-- page 1034 -->
line has the early renewal end date that you selected and the second contract line has the
original end date with State as Canceled and Quantity as Zero. The remaining segments are
canceled and their quantities are zero.
7. After the order line items are fulfilled, set the status to Completed.
A new customer contract line is created.

Result

The new customer contract line is created with the renewed contract line in the Draft state. You
can see more details in the Renewal History related list.
Renew an entitlement
Renew an entitlement on the CSM Configurable Workspace.

Before you begin

You cannot renew an entitlement when it is in Canceled state or it does not have an end date. For
more info, see Order fulfillment.
The order processing for product inventory based entitlements are executed according to the
fulfillment flow defined by the customer for these offerings being renewed.
Role required:
• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote or opportunity, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to renew.
5. Select Renew.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to renew the entitlement is created. You can
select the quote number from the confirmation message to review the renewal quote. After
the quote is approved and the status is updated to Complete, an order is created for further
processing.
◦ If the selected target entity is an order, an order to renew the entitlement is created. You can
select the order number from the confirmation message to review the renewal order.
◦ If the selected target entity is an opportunity, an opportunity to renew the entitlement is
created. You can select the opportunity number from the confirmation message to review the
renewal opportunity.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote
to renew the entitlement are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
6. After the order line items are fulfilled, set the status to Completed.
A new entitlement is created.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1034


<!-- page 1035 -->
Result

The new entitlement is created in the Draft state. You can see more details in the Renewal History
related list.
Modify
Modify Customer contracts, contracts lines, and entitlements.
Modifying customer contracts, contracts lines, and entitlements applies the requested changes
and updates the record based on configured amendment rules. Modifications can impact terms,
pricing, dates, or related records while preserving life cycle history.
Modify a customer contract
Modify a customer contract so that you can update its existing configurations.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract.
4. Select Modify all lines to modify the customer contract.
5. On the Configurator UI, modify the existing configurations for the customer contract line.
To learn more about the Configurator UI, see Exploring Sales Customer Relationship
Management.

Note: The Configurator UI is displayed only if the customer contract has a single
customer contract line. For multiple customer contract lines, a quote or an order will be
created with contract lines in Draft or Active state.
6. Select Update.
An order or a quote will be created depending on the rules set in the Customer Life Cycle
Workflows Policy decision table. For more info, see Configuring Customer Life Cycle Workflows
Policy decision table.
◦ If the selected target entity is a quote, a quote to modify the customer contract is created.
You can select the quote number from the confirmation message to view the modified quote
line items. The quote is approved and the status changes to Complete to create an order.
◦ If the selected target entity is an order, an order to modify the customer contract is created.
You can click the order number from the confirmation message to view the modified order
line items.
7. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the customer contract.
Modify a customer contract line
Modify a customer contract line so that you can update its existing configurations.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1035


<!-- page 1036 -->
Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract.
4. In the customer contract lines related list, select one or more customer contract lines that you
want to modify.
5. From the Modify list, select one of the options to perform one of these actions:
◦ If you select Modify entire line, the Configurator UI is displayed. Modify the existing
configurations for the customer contract line.

Note: The Configurator UI is displayed only if you select a single customer contract
line. If you selected multiple customer contract lines, the order or quote created is
displayed.
◦ If you select Modify quantity, you can reduce or increase the quantities of the products
specified in the selected contract lines. For more info, see Upsell or Downsell a customer
contract line.

Note: You cannot modify quantity on a ramped contract line.
◦ If you select Modify end date, you can select an earlier end date or a later end date than
the current end date to perform an early termination or extension of a contract line. For a
ramped contract line, you can only select a date before the contract expiry date in the End
date field to perform an early termination. The contract line splits into two contract lines. One
contract line has the new end date that you selected and the second contract line has the
original end date with State as Canceled and Quantity as Zero. The remaining segments are
canceled and their quantities are zero.
6. Select Update.
An order or a quote is created depending on the rules set in the Customer Life Cycle
Workflows Policy decision table. For more info, see Configuring Customer Life Cycle Workflows
Policy decision table.
◦ If the selected target entity is a quote, a quote to modify the customer contract line is
created. You can select the quote number from the confirmation message to view the
modified quote line items. The quote is approved and the status changes to Complete to
create an order.
◦ If the selected target entity is an order, an order to modify the customer contract line is
created. You can select the order number from the confirmation message to view the
modified order line items.
7. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the customer contract line.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1036


<!-- page 1037 -->
Modify an entitlement
Modify an entitlement associated to an account so that you can update its existing
configurations.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to modify the
characteristics for.
5. Select Modify.

Note: You can only modify entitlements associated with an account. You cannot modify
entitlements associated to customer contract lines.
6. On the Configurator UI, modify the existing configurations for the selected entitlement.
To learn more about the Configurator UI, see Exploring Sales Customer Relationship
Management.
7. Select Update.
An order or a quote will be created depending on the rules set in the Customer Life Cycle
Workflows Policy decision table. For more info, see Configuring Customer Life Cycle Workflows
Policy decision table.
◦ If the selected target entity is a quote, a quote to modify the entitlement is created. You can
click the quote number from the confirmation message to view the modified quote line items.
The quote is approved and the status changes to Complete to create an order.
◦ If the selected target entity is an order, an order to modify the entitlement is created. You can
click the order number from the confirmation message to view the modified order line items.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the entitlement.
Suspend
Suspend Customer contracts, contract lines, and entitlements.
Suspending a customer contract, contract line, or entitlement to pauses the life cycle processing
and related service activities. During suspension, associated workflows, renewals, and
dependent records are paused based on configuration.
Suspend a customer contract
Suspend a customer contract and its child customer contract lines by creating an order on
the CSM Configurable Workspace. Suspending a customer contract suspends or disables the
services specified in that customer contract.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1037


<!-- page 1038 -->
Before you begin

You can suspend a customer contract when at least one of the associated root sold products is
in Active state. For product inventory records, you can suspend a customer contract when the
associated product inventory record is in Active state.

Note: If you don’t create a resume order, the customer contract is indefinitely suspended.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract.
4. Select Suspend.
5. In the Suspend customer contract window, enter the period of suspension for the customer
contract in the Start date and time and End date and time fields.

Note: If you do not enter a value in the End date and time field, the customer contract
is suspended indefinitely. You can resume the customer contract manually. For more info,
see Resume a customer contract.
6. Add a reason for a suspension in the Reason for suspension field.
7. Select Suspend.
An order with the suspend action is created for that customer contract.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the customer contract.

Result

With the customer contract, all the associated customer contract lines and entitlements are
also suspended. However, the customer contract stays in the current state. If you specify an
end date and time, a resume order line item is created as a part of the same order. After this
period of suspension, the customer contract and all its associated child customer contract
lines and entitlement will be in Active or Draft state again. After the end date of the customer
contract, the suspended customer contract and all its associated child customer contract lines
and entitlement move to Expired state.
Suspend a customer contract line
Suspend a customer contract line and its child customer contract lines by creating an order on
the CSM Configurable Workspace. By suspending a customer contract line, you are suspending
or disabling the services and characteristics associated with that customer contract line.

About this task
Before you begin

You can suspend a customer contract line when the associated root sold product is in Active
state. For product inventory records, you can suspend a customer contract line when the
associated product inventory record is in Active state.

Note: If you don’t create a resume order, the customer contract line is indefinitely
suspended.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1038


<!-- page 1039 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract.
4. Select the customer contract line from the customer contract lines related list, that you want to
suspend.
5. Select Suspend.
6. In the Suspend customer contract line window, enter the period of suspension for the
customer contract line in the Start date and time and the End date and time field.

Note: If you do not enter a value in the End date and time, the customer contract line
will be suspended. You can manually resume the customer contract by using the resume
option. For more info, see Resume a customer contract line
7. Add a reason for a suspension in the Reason for suspension field.
8. Select Suspend.
An order with the suspend action is created for that customer contract line.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the customer contract line.

Result

With the customer contract line, all the associated entities in the hierarchy are also suspended. If
you specify an end date and time, a resume order line item is created as a part of the same order.
After this period of suspension, the customer contract line will be in Active state again. After the
end date of the customer contract, the suspended customer contract line and all its associated
child customer contract lines and entitlement move to Expired state.
Suspend an entitlement
Suspend an entitlement by creating an order on the CSM Configurable Workspace. By
suspending an entitlement, you are suspending or disabling the services and characteristics
associated with that entitlement.

Before you begin

You can suspend an entitlement when the associated root sold product is in Active state. For
product inventory records, you can suspend an entitlement when the associated product
inventory record is in Active state.

Note: You can only suspend entitlements associated with an account. You cannot
suspend entitlements associated to customer contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to suspend.
5. Select Suspend.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1039


<!-- page 1040 -->
6. In the Suspend entitlement window, enter the period of suspension for the entitlement in the
Start date and time and the End date and time field.

Note: If you do not enter a value in the End date and time, the entitlement will be
suspended You can resume the entitlement manually by using the resume option. For
more info, see Resume an entitlement.
7. Add a reason for a suspension in the Reason for suspension field.
8. Select Suspend.
An order with the suspend action is created for that entitlement.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the entitlement.

Result

If you specify an end date and time, a resume order line item is created as a part of the same
order. After this period of suspension, the entitlement will be in Active state again. After the end
date of the entitlement, the suspended entitlement will move to Expired state.
Resume
Resume customer contracts, contract lines, and entitlements.
Resuming customer contracts, contract lines, and entitlements updates the record status and
reactivates associated life cycle workflows. Resuming restores service delivery and allows
renewals, amendments, and related transactions to continue based on configuration.
Resume a customer contract
Resume a customer contract and its child customer contract lines by creating an order on the
CSM Configurable Workspace. By resuming a customer contract, you are restarting the services
specified in that customer contract.

Before you begin

You can resume a customer contract when at least one of the associated root sold product is
in Inactive, Canceled, or Suspended state. For product inventory records, you can resume a
customer contract when the associated product inventory record is in Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract.
4. Select Resume.
5. In the Resume customer contract window, in the Start date and time field, enter when you
want to resume the customer contract.
6. Add a reason for a resuming the customer contract in the Reason for resumption field.
7. Select Resume.
An order for resuming the customer contract is created.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the customer contract.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1040


<!-- page 1041 -->
Result

The customer contract and all its associated child contract lines and entitlements are back in
Active or Draft state, depending on the start date of the respective entity.
Resume a customer contract line
Create an order to resume a customer contract line and its child customer contract lines on
the CSM Configurable Workspace. By resuming a customer contract line, you are restarting the
services specified in that customer contract line.

Before you begin

You can resume a customer contract line when the associated root sold product is in Inactive,
Cancelled, or Suspended state. For product inventory records, you can resume a customer
contract line when the associated product inventory record is in Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract.
4. In the customer contract lines related list, select the customer contract line that you want to
resume.
5. Select Resume.
6. In the Resume customer contract line window, in the Start date and time field, enter when you
want to resume the customer contract line.
7. Add a reason for a resuming the customer contract line in the Reason for resumption field.
8. Select Resume.
An order for resuming the customer contract line is created.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the customer contract line.

Result

With the customer contract line, all the associated entities in the hierarchy are also back in Active
or Draft state, depending on the start date of the respective entity.
Resume an entitlement
Resume an entitlement by creating an order on the CSM Configurable Workspace. By resuming
an entitlement, you are restarting the services and the characteristics specified in that
entitlement.

Before you begin

You can resume an entitlement when the associated root sold product is in Inactive, Cancelled,
or Suspended state. For product inventory records, you can resume an entitlement when the
associated product inventory record is in Suspended state.

Note: You can only resume entitlements associated with an account. You cannot resume
entitlements associated to customer contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1041


<!-- page 1042 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to resume.
5. Select Resume.
6. In the Resume entitlement window, in the Start date and time field, enter when you want to
resume the entitlement.
7. Add a reason for a resuming the entitlement in the Reason for resumption field.
8. Select Resume.
An order for resuming the entitlement is created.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the entitlement.

Result

The entitlement is back in Active or Draft state, based on the start date of the entitlement.
Cancel
Cancel customer contracts, contract lines, and entitlements.
Cancel a customer contract
Create an order to cancel a customer contract and its child customer contract lines on the CSM
Configurable Workspace. By canceling a customer contract, you are terminating the services
specified in that customer contract.

Before you begin

You can cancel a customer contract when at least one of the associated root sold product is in
Active or Suspended state. For product inventory records, you can cancel a customer contract
when the associated product inventory record is in Active or Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract.
4. Select Cancel.
All the associated customer contract lines and entitlements will also be cancelled and will be
set to the Cancelled state.
5. In the Cancel customer contract window, in the Start date and time field, enter the date when
the customer contract will be cancelled.
6. Add a reason for a cancellation in the Reason for cancellation field.
7. Select Cancel.
An order with the cancel action is created for that customer contract.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the customer contract.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1042


<!-- page 1043 -->
Result

With the customer contract, all the associated customer contract lines and entitlements are also
cancelled and will be in Cancelled state.
Cancel a customer contract line
Create an order to cancel a customer contract line and its child customer contract lines on the
CSM Configurable Workspace. By canceling a customer contract line, you are canceling or
disabling the services and characteristics associated with that customer contract line.

Before you begin

You can cancel a customer contract line when the associated root sold product is in Active or
Suspended state. For product inventory records, you can cancel a customer contract line when
the associated product inventory record is in Active or Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Customer Contracts.
3. In the Contracts and Entitlements - Customer Contracts list, select the customer contract.
4. In the customer contract, select the customer contract line from the customer contract lines
related list, that you want to cancel.
5. Select Cancel.
6. In the Cancel customer contract line window, in the Start date and time field, enter the date
when the customer contract line will be disabled.
7. Add a reason for a cancellation in the Reason for cancellation field.
8. Select Cancel.
An order with the cancel action is created for that customer contract line.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the customer contract line.

Result

With the customer contract line, all the associated entities in the hierarchy are also cancelled
and move to Cancelled state.
Cancel an entitlement
Cancel an entitlement by creating an order on the CSM Configurable Workspace. By canceling
an entitlement, you are canceling or disabling the services and characteristics associated with
that entitlement.

Before you begin

You can cancel an entitlement when the associated root sold product is in Active or Suspended
state. For product inventory records, you can cancel an entitlement when the associated product
inventory record is in Active or Suspended state.

Note: You can only cancel entitlements associated with an account. You cannot cancel
entitlements associated to customer contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1043


<!-- page 1044 -->
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to cancel.
5. Select Cancel.
6. In the Cancel entitlement window, in the Start date and time field, enter the date when the
entitlement will be disabled.
7. Add a reason for a cancellation in the Reason for cancellation field.
8. Select Cancel.
An order with the cancel action is created for that entitlement.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the entitlement.

Result

The entitlement is permanently cancelled and will move to Cancelled state.
Add Covered Products using Contracts and Entitlement Workflow
Covered products refers to specific products or order line items that are included in a customer
contract. These items are linked to the contract to define what is covered for service or
maintenance. Covered products can be directly tracked through the contract records, facilitating
changes and visibility of what is covered.
Agents in Order management can select the products to be covered by a contract when the
order is captured for the contract offering. To manually associate a covered product with a
contract line, see the Add covered products to order line items
You can also modify the covered products added to a contract line. You can add new covered
products to that contract line or entitlement and remove the existing covered products.
Upsell or Downsell a customer contract line
Upsell or downsell a customer contract line on the CSM Configurable Workspace. You can
reduce or increase the quantities of the products specified in the customer contract line.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

About this task

https://player.vimeo.com/video/1185322362?
h=80bb86b2dd&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, navigate to Contracts and Entitlements > Customer Contracts.
3. In the customer contract lists, select the customer contract that you want to update.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1044


<!-- page 1045 -->
4. In the customer contract lines related list, select one or more customer contract lines that you
want to modify.
5. From the Modify entire line list, select Modify quantity.
6. In the Modify quantity dialog box, you can swap the values fully or partially in the Quantity field
for both the contract lines.

For example, if one product has a quantity of 100 and another has 30, you can perform either
a full swap or a partial swap. In the screenshot above, a full swap is completed by updating
the Quantity field of the first contract line to 130 (adding the 30 units from the second line)
and setting the second contract line’s quantity to 0. The Change field reflects the change in
quantity.
You can also perform a partial swap. For instance, you can update the second contract line
from 30 to 20, and add the remaining 10 units to the first contract line, increasing it from 100 to
110.
7. Select the start date of the new customer contract line from the Effective from field.
8. Select Modify.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ In case of a partial swap, three quote lines are created. You can select the quote number
from the confirmation message to view the quote line items. The quote is approved and the
status changes to Complete to create an order with three order line items.
◦ In case of a full swap, two quote lines are created. You can select the quote number from the
confirmation message to view the quote line items. The quote is approved and the status
changes to Complete to create an order with two order line items.
9. In the Line Items related list, select the State value of the parent order lines and set them to
Completed.
In case of partial swap, two new customer contract lines with the modified quantities are
created with the Start date as the Effective from date. The end date of the existing contract
line is updated. In case of full swap, one new customer contract line with the modified quantity

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1045


<!-- page 1046 -->
is created with the Start date as the Effective from date. The end date of the existing contract
line is updated.

Note: You can perform a partial or a full swap with a new product from the catalog by
following the same procedure.
Add a sold product or install base item to a customer contract
Add the sold products or the install base items covered to customer contracts, contract lines, or
entitlements.

Before you begin

Role required: sn_customerservice_manager

About this task

Sold products are products and components that have been sold to an account or a consumer
and can have multiple contracts. An install base item is an instance of sold product that has
been provisioned for an account or consumer.
Associating sold products or install base items to a Customer Contracts and Entitlements entity
helps keep a track of the products or install base items that are serviced to a customer under that
entity.
A sold product or an install base item can be added to a Customer Contracts and Entitlements
entity in the Draft, Active, or Suspended states.

Note: If an entity is deleted, the related sold product or install base item covered is also
deleted.

Procedure
1. Navigate to the ServiceNow AI Platform interface or the CSM Configurable Workspace.
Interface

Action

ServiceNow AI Platform interface

Navigate to All > Customer Service > Con­
tracts and Entitlements.

CSM Configurable Workspace

◦ Navigate to All > Workspace Experience
> Workspaces > CSM Configurable Work­
space.
◦ In the list view, navigate to Contracts and
Entitlements.

2. Add the sold product or install base item covered to customer contracts, contract lines, or
entitlements.
Add to

Procedure

a. In the list view, navigate to Contracts and
Entitlements > Customer Contracts.
Customer Contracts

Note: In the ServiceNow AI Platform

interface, select Customer Contracts
in the navigation menu.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1046


<!-- page 1047 -->
Add to

Procedure

b. Select the customer contract that you want
to add the sold product or install base item
to.
c. From the Products Covered or Install Base
Items Covered related list, select New.
a. In the list view, navigate to Contracts and
Entitlements > Customer Contracts.

Note: In the ServiceNow AI Platform

interface, select Customer Contracts
in the navigation menu.
b. Select the customer contract that has the
required contract line.
Customer Contract Lines

c. From the Customer Contract Lines related
list, select the contract line that you want
to add the sold product or install base item
covered to.
d. From the Sold Product Covered or Install
Base Items Covered related list, select
New.

Note: When a sold product or an in­
stall base item covered is added to a
contract line, it is not added to the relat­
ed entitlements.
a. In the list view, navigate to Contracts and
Entitlements > Customer Contracts.

Note: In the ServiceNow AI Platform

interface, select Customer Contracts
in the navigation menu.
b. Select the customer contract that has the
required contract line.
Entitlements

c. From the Customer Contract Lines related
list, select the contract line that has the re­
quired entitlement.
d. From the Entitlements related list, select
the entitlement that you want to add the
sold product or install base item to.
e. From the Sold Product Covered or Install
Base Items Covered related list, select
New.
You can also directly navigate to Entitlements
form as follows:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1047


<!-- page 1048 -->
Add to

Procedure

a. In the list view, navigate to Contracts and
Entitlements > Entitlements.

Note: In the ServiceNow AI Platform
interface, select Entitlements in the
navigation menu.

b. Select the entitlement that the sold product
or install base item must be added to.
c. From the Sold Product Covered or Install
Base Items Covered related list, select
New.

Note:
◦ You can either add a sold product or an install base item to the Customer Contracts
and Entitlements entity.
◦ The state of the entity shouldn't be Expired or Canceled.
3. On the Sold Product Covered form, fill in the fields.
For a description of the field values, see Sold product form

.

4. Select Submit.
Record the usage on the entitlement
Record the consumption or usages made out of the total characteristic quantities allotted for an
entitlement.

Before you begin

Role required: sn_customerservice_manager, sn_customerservice_agent and
sn_customerservice.consumer_agent

About this task

When an entitlement moves to the Active state, usage records are created. You can update
the usage records on the basis of units or quantities used as and when the customer uses the
services. For example, if a characteristic includes 50 visits to the customer, then the Total units
field displays 50 and the Used units field is updated after each visit. Managers can create and
update usage records for an entitlement but agents can only update the Used units field.

Procedure
1. Navigate to the ServiceNow AI Platform interface or the CSM Configurable Workspace.
Interface

Action

Platform interface

Navigate to All > Customer Service > Con­
tracts and Entitlements > Customer Con­
tracts.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1048


<!-- page 1049 -->
Interface

Action

CSM Configurable Workspace

◦ Navigate to All > Workspace Experience
> Workspaces > CSM Configurable Work­
space.
◦ In the list view, navigate to Contracts and
Entitlements > Entitlements.

2. Record the usage on an entitlement.
From

Do this

a. Select the contract that has the entitlement
that you want to track the usage on.

Customer Contracts

b. From the Customer Contract Lines related
list, select the contract line that has the enti­
tlement.
c. From the Entitlements related list, select
the entitlement.
d. From the Entitlement Usages related list,
open the usage record.

Entitlements

a. Select the entitlement that you want to
track the usage on.
b. From the Entitlement Usages related list,
open the usage record.

3. On the Entitlement Usage form, fill in the Used units field.
4. Select Update.
5. On the Entitlement page, select Update to save the entitlement.
If you have used the Customer Contracts menu to record the usage, then select Update to
save the contract line and then the customer contract.

Using Sales Agreement Management
Learn how managers, agents, and administrators use the Sales Agreement Management
application to generate sales agreements from quotes.
To create a sales agreement from a quote, the following conditions must be met:
• Make sure that the selected quote is not converted to another sales agreement. You cannot
create multiple sales agreements from a single quote.
• The quote is in a closed or complete state.
• A sales agreement can be created from a quote that is for an account, not a consumer.
The Sales agreement window has the following tabs that help you create and manage your sales
agreement.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1049


