# Zurich IT Asset Management — Contract Management / Contract renewal workflow

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 2240–2257 of 2359

Sections: Contract Management (p2240); Use the Asset Contract Overview module (p2241); Components installed with Contract Management (p2242); Contract renewal workflow (p2245)

---

<!-- page 2240 -->
Role

Description

Contains roles

Asset Management application on
your ServiceNow instance)
• asset (available only if you have
installed the Hardware Asset
Management application on your
ServiceNow instance)
Asset audit manager

This role can
create audit
[sn_audit_response.grc_asset_audit_manager] engagements,
activities,
evidence
requests, and
entity scopes.

• sn_audit.shared_manager
• sn_grc_advanced.evidence_requester

Tables installed
Table

Description

Asset Evidence

List of evidence records that you have created for all
evidence requests.

[amg_asset_evidence]
Asset Evidence Task

List of asset evidence tasks.

[amg_asset_evidence_task]
Evidence Remediation Rule
[amg_evidence_remediation_rule]
Evidence Remediation Task
[amg_evidence_remediation_task]

List of remediation rules that you have created for your
evidence records.
List of remediation tasks that are generated for all
evidence requests.

Contract Management
®

Manage and track contracts with the ServiceNow Contract Management application.
A contract is a binding agreement between two parties. In the ServiceNow platform, contracts
contain detailed information such as the following:
• Contract number
• Contract start and end dates
• Active status
• Terms and conditions statements
• Documents
• Renewal information
• Financial terms

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2240


<!-- page 2241 -->
Contract Management is active by default. If the Cost Management plugin is activated, the
Contract Management application integrates with the Cost Management plugin to associate
contracts with costs and determine the total cost of ownership. You can track recurring expenses
with expense lines. An administrator can activate the Cost Management plugin.
If you are using the Software Asset Management plugin, use the Software Licenses option.
Related topics
Create a new expense line
Terms and conditions
Software Asset Management

Use the Asset Contract Overview module
You can view information about your contract status in the Contract Management Overview
module.

Before you begin

Role required: asset, contract_manager

About this task

Because the Contract Management Overview module is a type of homepage, you can add,
delete, and rearrange reports on the page.

Procedure
1. Navigate to All > Contract > Overview.
2. Click elements within the reports to obtain more information.
Example
For example, click any of the colored bars in the Contract Expenditure by Type bar chart to
see detailed information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2241


<!-- page 2242 -->
Components installed with Contract Management
Several types of components are installed with Contract Management.
Demo data is available.

Tables installed with Contract Management
Tables are added with Contract Management.

Table

Description

Asset Covered
[clm_m2m_contract_asset]

Lists the assets covered by a contract. An asset can be
covered by multiple contracts and a contract can have
multiple assets.

Note: The contract_manager, itil, inventory_admin, or
procurement_user role can only access the reports. You
must activate the Procurement (com.snc.procurement)
plugin for the procurement_user role and the Hardware
Asset Management Professional (com.sn_hamp) plugin
for the itil and inventory_admin roles.
Asset Covered
[clm_m2m_rate_card_asset]

Lists the rate cards that apply to an asset.

Condition
[clm_condition_checker]

Lists the conditions and values for each condition checker.

Condition Checks
[clm_condition_check]

Stores conditions and values that modify specified condition
fields.

Contract [ast_contract]

Stores contract information.

Contract History
[clm_contract_history]

Stores a copy of the contract when the start date, end date,
or terms and conditions change.

Terms and Conditions
[clm_terms_and_conditions]

Lists the terms and conditions used by contracts.

Terms and Conditions
Lists all terms and conditions available for use with contracts.
[clm_m2m_contract_and_terms]
Users Covered
[clm_m2m_contract_user]

Lists the users covered by contracts.

User roles installed with Contract Management
A user role is added with Contract Management.

Role

Contains Role

Description

contract_manager financial_mgmt_user Manages the contract life cycle. Can create, edit,
and delete contracts.

Script includes installed with Contract Management
Script includes are added with Contract Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2242


<!-- page 2243 -->
Name

Description

ConditionChecks

Checks for matching conditions, such as for contract expirations
and license compliance, defined in the Condition Checks
[clm_condition_check] table.

ContractManagementUtils Utilities that manage contract management actions, such as state
transitions.

Client scripts installed with Contract Management
Client scripts are added with Contract Management.

Name

Table

Description

Calculate Tax
Contract
Calculates the Tax cost field and the Total cost field on the
Cost - Base cost [ast_contract] Contract form when the Payment amount field changes.
Calculate Tax
Cost - Sales tax

Contract
Calculates the Tax cost field and the Total cost field on the
[ast_contract] Contract form when the Sales tax field changes.

Calculate Tax
Cost - Tax rate

Contract
Calculates the Tax cost field and the Total cost field on the
[ast_contract] Contract form when the Tax rate field changes.

Ensure discount Contract
Ensures that the Discount field does not contain a value less
is valid percent [ast_contract] than zero or greater than 99.
Renew Cost
Adjustment

Contract
Sets the Percentage field on the Contract form to zero if the
[ast_contract] user sets a dollar amount for the cost adjustment.

Renew Cost
Percentage

Contract
Sets the Amount field on the Contract form to zero if the user
[ast_contract] enters a percentage for the cost adjustment.

Tax exempt/
rate

Contract
Changes all tax-related fields on the Contract form to read[ast_contract] only if the Tax Exempt check box is selected.

Tax rate/exempt Contract
Changes all tax-related fields on the Contract form to
[ast_contract] writeable if the Sales Tax check box is selected.

Business rules installed with Contract Management
Business rules are added with Contract Management.

Name

Table

Description

Calculate
projected
costs
(Reports)

Contract [ast_contract]

Calculates the projected monthly and annual
costs for a contract when costs or payment
schedule changes.

Calculate
totals with
tax

Contract [ast_contract]

Calculates the Tax cost and Total cost fields
for a contract when the contract is created or
updated.

Contract
history

Contract [ast_contract]

Stores history when the start, end, or terms and
conditions of a contract change.

Create
approval
record

Contract [ast_contract]

Updates contract Terms and Conditions and
starts the contract approval workflow when a
contract is sent for review.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2243


<!-- page 2244 -->
Name

Table

Description

Flag
Terms and Conditions
Sets the Use flag on a Terms and Conditions
terms and [clm_m2m_contract_and_terms] record to true after the record is associated
conditions
with a contract or to false after the record is
disassociated from a contract.
Activate
count for
manual
licenses

Software License Instance
Calculates and updates the number of
[ast_license_software_instance] computers a particular license is installed on
when a software license instance is created or
deleted.

Manage
contract
lifecycle

Contract [ast_contract]

This business rule:
• Updates the end date of a contract when a
contract extension has been approved.
• Renews the contract, updating its start date,
end date, and base cost (if cost adjustments
must be applied) when a contract renewal has
been approved and the renewal has reached
its start date.
• Runs the condition checks to evaluate if
dates need to be changed when a contract
is approved, or an extension or renewal is
approved, or the start or end dates have
changed.

Post
outage to
news

Service [cmdb_ci_service]

Posts a news article on the knowledge table
when there is an outage.

Update
contract
cost per
asset

Asset Covered
[clm_m2m_contract_asset]

Updates the cost per unit value based on the
total cost and number of assets associated to
the contract.

Update
contract
lifetime
cost

Contract Rate Card
[fm_contract_rate_card]

Calculates the lifetime cost of the contract by
calculating the sum of the contract expense
lines.

Updates
after
contract
dates
change

Contract [ast_contract]

Updates the Date added and Date removed
fields for all assets and users associated with a
contract if the contract end date changes.

Updates
Contract Rate Card
after rate
[fm_contract_rate_card]
card dates
change

Updates the related contract assets and users
linked to the rate card when the end date is
changed.

Verify
contract’s
start and
end dates

Contract [ast_contract]

Validates contract start and end dates and
contract renewal start and end dates.

Verify
purchase

Contract [ast_contract]

For contracts with the contract model Purchase
Agreement, the business rule validates that the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2244


<!-- page 2245 -->
Name

Table

agreement
discount
price

Description

Discount field does not contain a value less than
zero or greater than 99.

Contract renewal workflow
Use the contract renewal workflow to renew contracts that are nearing their expiry date or
are already expired. This workflow enables you to renew contracts through a streamlined and
managed process.
Renew your contracts by creating, validating, approving, and activating a contract record that
references the original contract. This workflow enables you to manage related entities like
hardware assets, software entitlements, terms and conditions, and rate cards.

Note: The contract renewal workflow supports Software license, Subscription contract,
Maintenance, and Warranty contract models.
Complete the following tasks in the contract renewal workflow to renew your contracts:
1. Contract renewal request: Create a contract renewal request for contracts that are nearing
their expiry date or are already expired.
2. Contract selection: Renew multiple child contracts under the parent contract.
3. Build renewal: Supply the contract renewal information.
4. Asset selection: Add or remove hardware or enterprise assets from the contract renewal
process, and view the assets carried over to the new contract.
5. Software assets selection: Add or remove software entitlements that you want to include in the
contract renewal process, and view the entitlements carried over to the new contract.
6. Terms and conditions: Update the terms and conditions in your new contract, and view the
terms and conditions carried over to the new contract.
7. Rate cards: Add rate card details to the new contract to track contract expenses.
8. Renewal confirmation: Review the renewal details after completing all the details of a contract.
9. Renewal approval: Approve or reject a contract renewal request for all Contract Renewal
Request Lines.
10. Renewal purchase order: Receive the purchase order for assets covered in the contract.

Note:
• You can't edit a task after you close it.
• You can cancel a contract renewal process for a Contract, Contract Renewal Request,
Contract Renewal Request Lines, and Contract Renewal tasks. For more information, see
Results of canceling a contract renewal process.

Prerequisites
Before using the contract renewal workflow, you must complete the following prerequisites:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2245


<!-- page 2246 -->
• Activate the Software Asset Management Professional (com.snc.samp) plugin on your
ServiceNow instance.
If you want to manage hardware or enterprise asset contracts, request and install the Hardware
Asset Management or Enterprise Asset Management application from the ServiceNow Store
instead.
• Enable the sn_contract_enable_renewal_flow system property.

Note: If you’re already using Software Asset Management, Hardware Asset
Management, or both, this system property is set to false. If you’re a new user, this system
property is set to true.

Domain separation
Domain separation with data separation is supported for the contract renewal workflow with the
following requirements:
• The request is created in the domain of the contract that initiated the renewal process.
• Request lines are in the domain of the contract of the request line.
• Tasks are created in the domain of the contract being renewed.
The sn_contract_enable_renewal_flow system property also supports domain
separation.

Create a contract renewal request
Create a contract renewal request for contracts that are nearing their expiry date or are already
expired.

Before you begin

Role required: asset, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task

You can create a renewal request only for Maintenance, Warranties, Subscriptions, and Software
Licenses. If you have installed only the Software Asset Management application, you can
renew Subscriptions, Maintenance, and Software Licenses contracts. If you have installed only
the Hardware Asset Management application, you can renew Maintenance and Warranties
contracts. If you have installed only the Enterprise Asset Management application, you can
renew Maintenance and Warranties contracts.

Procedure
1. Open the list of contracts that you want to renew.
◦ If you are using the core UI, navigate to All > Contracts > Contract Renewal.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the Overview tab. In the Contract overview section, locate the Expiring contract
widget.
Alternatively, open the Contract management view and then select a tab for a contract type,
such as All or Maintenance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2246


<!-- page 2247 -->
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the Overview tab. In the Contract overview section, locate the Expiring
contract widget.
Alternatively, open the Contract and lease management view and then select a tab for a
contract type, such as All or Maintenance.
2. Select the contract that you want to renew with a type of either Maintenance, Warranties,
Subscriptions, Software Licenses, or Service.
3. Click Renew for the selected contract.
4. Submit the contract renewal request.
◦ If you are using the core UI or Hardware Asset Workspace, click OK.
The contract renewal request includes the following information:
▪ An auto-generated unique number
▪ The Stage indicating the type of task in the contract renewal process
▪ Reference to the contract for which you have requested the renewal
▪ Date and time when the request was created
◦ If you are using the Enterprise Asset Workspace, the Renew the Contract dialog box
appears. In the dialog box, fill in the fields and then click Submit for review.
Renew the Contract dialog box
Field

Description

Approver

User who approves or rejects the contract renewal request.

Options

Duration of the contract renewal.

Renewal start Date on which the contract renewal begins.
date
Renewal end
date

Date on which the contract renewal ends.

Cost
adjustment
type

Type of cost adjustment that is applied to the contract. The options are
Fixed, Manual, and CPI (consumer price index).

Cost
adjustment
percentage

Percentage increase or decrease in the contract price. To indicate a
decrease in price, enter a negative percentage.

Note: You can specify either a cost adjustment percentage or cost
adjustment amount on a contract renewal request. You cannot specify
both.

Cost
adjustment
amount

Numerical increase or decrease in the contract price. To indicate a
decrease in price, enter a negative number.

Note: You can specify either a cost adjustment percentage or cost
adjustment amount on a contract renewal request. You cannot specify
both.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2247


<!-- page 2248 -->
5. Optional: Select the Contract Renewal Request Lines tab to view the parent Contract
Renewal Request Line or existing and valid child contracts under the parent contract.
A contract renewal request line is created for each contract that is being renewed.
6. Optional: View all open contract renewal flow tasks and the details of each contract renewal
task by selecting the Open Tasks tab.
7. Optional: View all contract renewal flow tasks and the details of each contract renewal task by
selecting the All Tasks tab.

Result

The substate of the contract that is being renewed is set to Renewal in process.

What to do next

If the parent contract doesn't have child contracts, select the Build renewal task.
If the parent contract has child contracts, select the Contract selection task.

Renew multiple child contracts
Renew multiple child contracts under the parent contract by using the Contract selection task.

Before you begin

Role required: asset, contract_manager

About this task

This task is created only when the contract that you want to renew has valid child contracts
supported by the contract renewal workflow that are not already renewed or in draft state.

Procedure
1. On the Contract form, select the Contract Renewal Requests tab in the Related Links section
to view the list of contract renewal requests.
2. Select a renewal request.
3. View all the child contracts linked to the selected contract by selecting the Renewal contracts
tab on the Contract Renewal Task form.
4. Indicate the child contracts you want to renew.
a. Open the record by selecting the preview icon

besides a child contract.

b. Choose whether to include child contracts for renewal by entering Yes or No in the Renewal
Decision field.
You must provide a value for the Renewal decision field for each child contract.
5. Select Update.
The Renewal decision column in the Renewal contracts tab displays your decision.
6. Select Close Task.

Result

The contract renewal request lines for parent and child contracts are listed in the Contract
Renewal Request Lines tab. Each contract request line has its own flow of tasks.

What to do next

Supply contract renewal information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2248


<!-- page 2249 -->
Supply contract renewal information
Supply the contract renewal information by completing the Build renewal task.

Before you begin

Role required: asset, contract_manager

About this task

Each contract renewal request line has its own flow of tasks.

Procedure
1. On the Contract Renewal Request Line form, select the Build renewal task number.
2. On the Contract Renewal Task form, select the Renewal contract details tab.
3. Provide the contract renewal information.
You must fill in all the required fields before you close the task. If you are renewing the child
contract, you must provide the end date and start date within the range of the start date and
end date of the parent contract.

Note: The Contract approver field is displayed only for the parent contract. The same
Contract approver value is filled in automatically for any child contracts.
4. Select Close Task.

Result

New draft contracts are created.

What to do next

Add or remove assets for a contract renewal

Add or remove assets for a contract renewal
Add or remove hardware or enterprise assets from the contract renewal process. You can also
view the hardware or enterprise assets carried over to the new contract.

Before you begin

To add or remove hardware assets from the contract renewal process, request the Hardware
Asset Management application from the ServiceNow Store . To add or remove enterprise assets
from the contract renewal process, request the Enterprise Asset Management application from
the ServiceNow Store .
Role required: asset, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task

The active and valid assets from the contract that are being renewed are carried over to the new
contract, and are listed in the Assets Covered tab. Valid hardware and enterprise assets are the
assets that are not removed from the contract before the end date, and are in the following states
or substates:
• State
◦ In stock
◦ In transit

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2249


<!-- page 2250 -->
◦ In maintenance
◦ In use
• Substate
◦ Available
◦ Reserved
◦ Pending transfer
◦ None
◦ Pending repair
◦ Pending install
Invalid assets are not carried over to the draft contract and you must add them manually.

Procedure
1. Open the assets selection task or contract for which you want to add assets.
◦ If you are using the core UI or Hardware Asset Workspace, select the assets selection task
number on the Contract Renewal Request Line form.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view. Select the All contracts tab and then open the contract that you want to add assets to.
2. Select the Assets Covered tab.
3. If you are using the core UI or Hardware Asset Workspace, click Edit.
4. Update the hardware or enterprise assets in the contract.
Interface

Action

Core UI

Indicate the assets that you want to cover by
moving assets to the Assets Covered List or
removing them.
Add or remove assets from the existing list to
indicate the assets you want to cover.

Hardware Asset Workspace

◦ To add an asset, select Add and provide
the required asset information.
◦ To remove an asset, select it and select Re­
move.
Add or remove assets from the existing list to
indicate the assets you want to cover.

Enterprise Asset Workspace

◦ To add an asset, click Add. In the Add as­
sets dialog box, select the check box for
each asset that you want to add and then
click Add.
◦ To remove an asset, select the check box
for that asset and then click Remove.

5. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2250


<!-- page 2251 -->
6. Edit the renewal cost of the assets.

Note: This step is applicable only if you are using the core UI or Hardware Asset
Workspace.
a. Select the asset that you want to update the renewal cost for.
b. In the Renewal cost field, update the renewal cost of the asset.
c. Click Update.
7. Click Save.
8. If you are adding assets through the asset selection task on the Contract Renewal Request
Line form, click Close Task.

Result

The Payment amount field in the Financial tab of the draft contract shows the total renewal cost
of the hardware or enterprise assets you selected.

What to do next

Add or remove entitlements for a contract renewal

Add or remove entitlements for a contract renewal
Add or remove software entitlements that you want to include in the contract renewal process by
using the Software assets selection task. You can also view the entitlements carried over to the
new contract.

Before you begin

The Software Asset Management Professional (com.snc.samp) plugin must be activated.
Role required: sam_user, contract_manager

About this task

The entitlements with the following license types are carried over to the new contract:
• Perpetual and maintenance
• Perpetual and software assurance
• Only perpetual

Procedure
1. On the Contract Renewal Request Line form, select the Software assets selection task number.
2. Create an entitlement if you don't have any entitlements carried over to the draft contract.
a. On the Contract Renewal Task form, select Create Entitlement in the Planned Entitlements
tab.
b. On the Software Entitlement form, fill in the required fields.
For more information, see Software entitlement fields.
c. Select Save.
You can publish this entitlement after you complete the renewal request because this
entitlement is associated with an existing renewal process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2251


<!-- page 2252 -->
The entitlement is now listed in the Planned Entitlements list.
3. Optional: Update the existing entitlements for the draft contract.
Interface

Action

a. Select Edit.
Core UI

b. Indicate the entitlements that you want to
cover by moving them to the Planned Enti­
tlements or removing them.
(Optional) Add or remove entitlements to indi­
cate the entitlements you want to cover.

Hardware Asset Workspace

◦ To add an entitlement, select Add and pro­
vide the required information.
◦ To remove an entitlement, select it and se­
lect Remove.

4. Select Save.
5. Select Close Task.

What to do next

Update terms and conditions

Update terms and conditions
Update the terms and conditions in your new contract. You can also view the terms and
conditions carried over to the new contract.

Before you begin

Role required: asset, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

Procedure
1. Open the task or contract for which you want to add terms and conditions.
◦ If you are using the core UI or Hardware Asset Workspace, select the Terms and conditions
task number on the Contract Renewal Request Line form. Select the Renewal contracts
terms tab and then click Edit.
◦ If you are using the Enterprise Asset Workspace, navigate to the Contract and lease
management view and then select the All contracts tab. Open the enterprise asset contract
that you want to add terms and conditions to and then select the Terms and Conditions tab.
2. Update the terms and conditions in the contract.
Interface

Action

Core UI

Indicate the terms and conditions that you
want to cover by moving them to the Terms
and Conditions List or removing them.

Hardware Asset Workspace

Add or remove terms and conditions from the
draft contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2252


<!-- page 2253 -->
Interface

Action

◦ To add a term and condition, select Add
and provide the required information.
◦ To remove a term and condition, select it
and select Remove.
Add or remove terms and conditions from the
draft contract.

Enterprise Asset Workspace

◦ To add a term and condition, click Add. In
the dialog box, select the check box for
each term and condition that you want to
add and then click Add.
◦ To remove a term and condition, select the
check box for that term and condition and
then click Remove.

3. Select Save.
4. If you are adding terms and conditions through the Terms and conditions task on the Contract
Renewal Request Line form, click Close Task.

Result

Multiple terms and conditions are displayed in the Terms and Conditions tab of the contract.

What to do next

Add rate cards to the new contract

Add rate cards to the new contract
Add rate card details to the new contract by using the Rate cards task to track contract expenses.

Before you begin

The Cost Management (com.snc.cost_management) plugin must be active.
Role required: asset, contract_manager

About this task

The rate card details aren't carried over to the new contract.
Adding rate card details to a contract isn't a required procedure. You can close this task if you do
not need to add a rate card to the draft contract.

Procedure
1. On the Contract Renewal Request Line form, select the Rate cards task number.
2. On the Contract Renewal Task form, select the Renewal rate cards tab.
3. Select New.
4. On the Contract Rate Card form, fill in the financial details.
For a description of the field values, see Contract Rate Card form.
5. Select Submit.
6. Select Close Task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2253


<!-- page 2254 -->
Result

The rate card is attached to the draft contract.

What to do next

Review contract renewal details

Review contract renewal details
Review the renewal details after completing all the details of a contract by using the Renewal
confirmation task. You can then either approve them or mark the details for further review.

Before you begin

Role required: asset, contract_manager

About this task

This task must be completed before the contract renewal request is eligible for approval.

Procedure
1. On the Contract Renewal Request Line form, select the Renewal confirmation task number.
2. On the Contract Renewal Task form, verify the renewal details.
3. Optional: Review the list of entitlements in the draft contract by accessing the Planned
Entitlements tab.
4. Determine whether to close this task.
Result of review

Action

The details are accurate

Select Yes.
a. Select No.

The details are not accurate

b. On the Renewal confirmation task form, nav­
igate to the contract by clicking the preview
icon next to the Renewal contract field.
c. Update the contract details as necessary.
d. Navigate to the Renewal confirmation task
form.
e. Select Yes.

5. Select Close Task.

Result

When you have closed the task, the Contract Renewal Request Line processing is complete
because all the contract renewal tasks are closed. The stage of the Contract Renewal Request
Line is set to Awaiting approval. After all the Contract Renewal Request Lines are processed for a
contract renewal request, the Approval task is created under Contract Renewal Requests.

What to do next

Approve or reject a contract renewal request

Approve or reject a contract renewal request
Approve or reject a contract renewal request for all Contract Renewal Request Lines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2254


<!-- page 2255 -->
Before you begin

The Renewal approver field must contain a value. If you need to change the approver, navigate to
the parent contract and adjust the value there.
Role required: asset_manager (core UI and Hardware Asset Workspace only), contract_manager
(core UI or Hardware Asset Workspace only), sn_eam.enterprise_admin (Enterprise Asset
Workspace only), or sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

Procedure
1. Verify your contract renewal details.
◦ If you are using the core UI or Hardware Asset Workspace, select the Open Tasks tab on the
Contract Renewal Request form. Select the contract renewal request number to view the
contract renewal details and then click Close Task.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view. Select the All contracts tab and then open the enterprise asset contract that you want
to renew. View the contract renewal details in the Renewal section of the Details tab.
An approval request is triggered and the substate of the draft contract changes to Under
review.
2. Open the list of contract and contract renewal requests.
◦ If you are using the core UI or Hardware Asset Workspace, navigate to All > Contract > My
Approvals.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the My contract approvals tab.
3. Select the contract renewal request waiting for approval.
4. Evaluate any contract renewal request lines and contract renewal tasks.
5. Either approve or reject the contract renewal request.
Action

Approve the request by selecting Approve

Reject the request by selecting Reject

Result

◦ The substate of the draft contract changes
to Approved.
◦ The Renewal purchase order task or the
Manual purchase order task is created.
◦ The renewal request gets terminated.
◦ The substate of the draft contract changes
to Renewal rejected.

6. Optional: Go to the Approval History tab to view the approval or rejection history of the
contract and child contracts.

What to do next

Receive a purchase order for contract assets

Receive a purchase order for contract assets
Receive the purchase order for assets covered in the contract by using the Renewal purchase
order task. This task is available if you have added at least one hardware asset, created an
entitlement, or selected an existing entitlement that is in the Build state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2255


<!-- page 2256 -->
Before you begin

This task is not created if you haven't selected or added any hardware assets or entitlements or
the Procurement plugin (com.snc.procurement) is not active. You must instead manually track the
financial expenses.
Role required: procurement_user

Procedure
1. On the Contract Renewal Request form, select the Open Tasks tab.
2. Select the contract renewal request number.
3. Select the Purchase orders tab.
4. Select the purchase order number to capture the financial transactions of the contract.
For every asset record covered under a contract, a purchase order line item is created. The
cost of each purchase order is the renewal cost of each asset covered.
The purchase order line items are created for the entitlements that are in the Build state. Each
entitlement added in the Planned Entitlements tab corresponds to a unique purchase order
line.
5. Select Order.
6. Select Receive to receive the purchase order for assets covered by the contract.
Receiving the purchase order only updates the assets and does not create an entitlement.

Result

The draft entitlement is published and the status is set to In use.
The purchase order receipt is listed in the Receiving Slips tab.
The status of the purchase order and purchase order line items shows as Received. The state
of the Renewal purchase order task automatically changes to Closed Complete. The contract
renewal request flow is complete.
The substate of the old contract is set to Renewed. A contract history record is created that
displays the start and end dates of the old contract and the renewed contract, and the renewal
date. You can view the entire history of the contract by selecting the Contract History tab in the
Related Links section.
After you receive the purchase order, the state of the renewal contract is no longer Draft and
the contract becomes active. If the start date of the renewed contract has been reached but the
purchase order has not been received, the status of the contract renewal request remains set to
Draft. After the new contract becomes active, the old contract becomes expired and the covered
assets have an end date.

Results of canceling a contract renewal process
Cancelling a contract renewal process results in a change in the state of Contract, Contract
Renewal Request, Contract Renewal Request Lines, and Contract Renewal tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2256


<!-- page 2257 -->
Contract cancellation results
Canceled item

Contract Renewal Request

Result

• The entire renewal request is canceled.
• The substate of the contract that is being
renewed is cleared.
• All the draft contracts are canceled.

Contract Renewal Request Line

• The Contract Renewal Request Line is
canceled.
• When all Contract Renewal Request Lines
are canceled, the Contract Renewal Request
is canceled.
• The renewal of immediate child draft
contracts is canceled.

Contract Renewal Task

• The Contract Renewal Task and the Contract
Renewal Request Line are canceled.
◦ If the Contract Renewal Request has only
one Contract Renewal Request Line, the
stage of the Contract Renewal Request
changes to Canceled.
◦ If the Contract Renewal Request has
multiple Contract Renewal Request
Lines, the stage of the Contract Renewal
Request doesn’t change.
• The renewal of immediate child draft
contracts is canceled.
• The state of the draft contract changes to
Canceled.
• The state of the tasks that are already
closed does not change.
• The state of the open tasks changes to
Closed Incomplete.
• Rate cards are attached to the draft contract
become inactive.
• The state of the contract that was being
renewed moves to the original state and the
substate is cleared.
• The associated entitlements with the
Contract Renewal Task are removed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2257


