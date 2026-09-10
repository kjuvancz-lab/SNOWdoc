# Zurich IT Service Management — Contract Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 124–170 of 3857

Sections: Contract Management (p124)

---

<!-- page 124 -->
5. Click Revert to Base System to overwrite the skipped change if it applies to form or list
customization, and note down the changes.
6. Repeat these steps for all upgrade entries with skipped changes relating to customizations.
7. In Software Asset Management Foundation plugin configuration, manually reconfigure your
original form and list customizations.
8. In Software Asset Management Foundation plugin configuration, set new field values (added
as part of the automatic changes performed by plugin activation) to take advantage of the new
features offered.
a. Navigate to Software Asset > Licensing > Software Models.
▪ Select the software product in the Product reference field.
▪ Select a discovery map, or clear the Discovery Map field and set the discovery conditions
to find all discovery models that correspond to the software model.
b. Navigate to Software Asset > Licensing > Software Entitlements (formerly Software
Licenses).
▪ Navigate to Software Asset > Licensing > Software Entitlements (formerly Software
Licenses).
▪ Select the License Metric that the software license is counted against when reconciliation
is run.
▪ Define the upgrade and downgrade scenarios covered by certain rights.
c. In the User Allocations and Device Allocations related lists (formerly User/Device
Entitlements), verify that the number of allocated rights are not more than rights owned.
If so, delete allocations so that the number of allocations does not exceed the number of
rights owned.
9. If you have entitlements that require management of license keys, you can create multiple
license keys associated to the same entitlement, as well as allocate these license keys to a
user or device.

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
Contract Management is active by default. If the Cost Management plugin is activated, the
Contract Management application integrates with the Cost Management plugin to associate
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

124


<!-- page 125 -->
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

Components installed with Contract Management
Several types of components are installed with Contract Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

125


<!-- page 126 -->
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

126


<!-- page 127 -->
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

127


<!-- page 128 -->
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

128


<!-- page 129 -->
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
• Activate the Software Asset Management Professional (com.snc.samp) plugin on your
ServiceNow instance.
If you want to manage hardware or enterprise asset contracts, request and install the Hardware
Asset Management or Enterprise Asset Management application from the ServiceNow Store
instead.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

129


<!-- page 130 -->
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
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the Overview tab. In the Contract overview section, locate the Expiring
contract widget.
Alternatively, open the Contract and lease management view and then select a tab for a
contract type, such as All or Maintenance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

130


<!-- page 131 -->
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

5. Optional: Select the Contract Renewal Request Lines tab to view the parent Contract
Renewal Request Line or existing and valid child contracts under the parent contract.
A contract renewal request line is created for each contract that is being renewed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

131


<!-- page 132 -->
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
Supply contract renewal information
Supply the contract renewal information by completing the Build renewal task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

132


<!-- page 133 -->
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
◦ In maintenance
◦ In use
• Substate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

133


<!-- page 134 -->
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
6. Edit the renewal cost of the assets.

Note: This step is applicable only if you are using the core UI or Hardware Asset
Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

134


<!-- page 135 -->
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
For more information, see Software entitlement fields

.

c. Select Save.
You can publish this entitlement after you complete the renewal request because this
entitlement is associated with an existing renewal process.
The entitlement is now listed in the Planned Entitlements list.
3. Optional: Update the existing entitlements for the draft contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

135


<!-- page 136 -->
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

136


<!-- page 137 -->
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

137


<!-- page 138 -->
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

138


<!-- page 139 -->
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

139


<!-- page 140 -->
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

140


<!-- page 141 -->
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

141


<!-- page 142 -->
Contract cancellation results (continued)
Canceled item

Contract

Result

• The renewal of immediate child contracts is
canceled when child contracts are included
in the Contract Renewal Request.
• The Contract Renewal Request Line is
canceled.
• Any initiated Contract Renewal Request by
this contract is canceled.
• The purchase order of the contract and
immediate child contracts is canceled.

Contract approval flow
Use the Contract Approval flow to get approval from the approver defined in the contract.
You can edit the existing flow or create a flow in the graphical Workflow Studio to meet your
organization's contract approval process.

Prerequisites
Ensure that the Contract Management (com.snc.contract_management) plugin is installed.

Contract Approval flow
Submit your contract for approval by selecting an approver in the contract record. This workflow
enables you to manage the terms and conditions the contract must meet to approve a contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

142


<!-- page 143 -->
Contract Approval

Contract approval process
• Select an Approver for the contract and select Submit for Review. If the contract's end date is
greater than the current date, an approval history record is automatically created to track the
status of the approval process. For more information about sending a contract for approval,
see Send the contract for approval.
• Access the contract approval history record and take an approval action. For more information
about viewing the approval history for a contract, see View approval history on contracts.
Based on the approval decision on the contract, the state and substate of the contract is
updated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

143


<!-- page 144 -->
Related topics
Send the contract for approval
Approve or reject a contract
View approval history on contracts

Contract Management use
Users with the contract_manager role can use the Contract Management application to create
various types of contracts, such as leases, warranties, maintenance, and service.
You can add the following information to contracts.
• Assets covered by the contract
• Users covered by the contract
• Terms and conditions associated with the contract
• Other documents related to the contract
Track the various stages of a contract from draft to closure by viewing contract history and
running reports. Adjust, extend, and renew active contracts.
Contract life cycle
From creation until closure, contracts follow a life cycle that determines which fields can be
edited.
When a contract is in Draft state, almost all fields on the contract record can be edited. After a
contract moves past the Draft state, certain date, renewal, extension, and financial fields become
read-only. The State field and Substate field are read-only.
The Contract Compliance Checks schedule job runs on the Contract [ast_contract] table
automatically each night. For more information about the scheduled job, see Use Condition
Check Definitions. The scheduled job performs the following actions:
• Changes the contract state to Active if the contract is approved and reaches the specified
start date.
• Renews the contract if the contract is approved for renewal and reaches the specified start
date.
• Changes the contract state to Expired if the contract state is Active and reaches the end date.
The system property contract_compliance_check_job.enable_override enables
the Contract Compliance Checks job to override checks in a hierarchy. By default, this system
property is set to True. When checks are defined on the same field of the parent and child tables,
the Contract Compliance Checks job performs the following:
• For the records on the parent table, the condition check on the table sets the field with the
value specified in the condition.
• For the records on the child table, the condition check on the child table overrides the parent
table condition and sets the field value on the child table accordingly.
For example, when a check is defined on the Description field of the Contract (parent) and
Lease (child) tables, the field on the Lease table is set to the value specified in the child table
condition. To disable the contract compliance check override functionality, set the system
property contract_compliance_check_job.enable_override to False.
Expense lines are only generated from contracts that are active or expired.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

144


<!-- page 145 -->
Contract states
State

Description

Draft

User adds information about the contract and specifies an approver.

Active

Contract was approved and has reached the specified start date.

Expired

Contract reached the specified end date. Expired contracts with an active renewal
workflow that are waiting for approval have a substate of Awaiting Review. Expired
contracts with an active renewal workflow where the renewal was approved, but the
renewal date hasn’t yet passed, have a substate of Renewal Approved. Expired
contracts with no active renewal or extension pending workflow have an empty
substate.

Canceled Contract was discontinued and is no longer active.
In addition to a state, a contract can also have a substate.
Contract substates
Substate

Description

Awaiting Review

Contract is being prepared for review.

Under Review

Contract sent to the approver and the approver is reviewing the contract.

Approved

Contract reviewed and accepted by the approver.

Rejected

Contract reviewed and declined by the approver.

Renewal Approved

Contract renewal approved by the approver.

Renewal Rejected

Contract renewal rejected by the approver.

Renewal in process

Contract renewal is in progress through the contract renewal workflow.

Renewed

Contract renewal is complete through the contract renewal workflow.

Extension Approved Contract extension approved by the approver.
Extension Rejected

Contract extension rejected by the approver.

None

No substate is specified.

Contracts
A contract is a binding agreement between two parties.
In the ServiceNow AI Platform, contracts contain detailed information such as contract number,
start and end dates, active status, terms and conditions statements, documents, renewal
information, and financial terms.
Working with contracts includes the following tasks and processes.
Create a contract
Create a contract with various contract models, which would act as a binding agreement
between the two parties.

Before you begin
Role required:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

145


<!-- page 146 -->
• For Core UI and Hardware Asset Workspace: admin, contract_manager
• For Enterprise Asset Workspace: sn_eam.enterprise_admin,
sn_eam.enterprise_asset_manager
• For Software Asset Workspace: sam_admin, sam_user

About this task

If a contract has one or more associated rate cards, the fields on the Contract form can’t be
edited.

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you’re using the Core UI, navigate to All > Contract and select a contract type, such as
Insurance, Maintenance, or Service, or select All.
◦ If you’re using Hardware Asset Workspace, navigate to the Contract management view and
then select the All contracts tab.
◦ If you’re using Enterprise Asset Workspace, open the Contract and lease management view
and then select the All contracts tab.
◦ If you’re using Software Asset Workspace, navigate to License operations > Contracts >
Software contracts and select New.
2. Select New.
3. On the form, fill in the fields.
Not all fields appear on all contract type forms.
Contract or Create New Contract form
Field

Description

Contract
model

Model the contract is assigned to.

Vendor

Vendor responsible for the contract.

For example Lease, Maintenance, Warranty, Service Contract Software
License, or Subscription.

This field is required when Purchase Agreement or NDA is selected from
Contract model.
Contract
number

Number assigned to the contract by the vendor (required).

Name

Name of the contract.

Parent
contract

Parent contract of the new contract, if applicable. You can select a parent
contract from the contract lookup list.

Start date

Date on which the contract takes effect.
This field is required when Purchase Agreement or NDA is selected from
Contract model.

End date

Date on which the contract expires. Leave the end date empty to create an
open-ended contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

146


<!-- page 147 -->
Field

Description

This field is required when Purchase Agreement or NDA is selected from
Contract model.
State

Current state of the contract.
◦ Draft
◦ Active
◦ Expired
◦ Canceled

Substate

Current substate of the contract.
◦ Awaiting Review
◦ Under Review
◦ Approved
◦ Rejected

Contract
Person responsible for managing the contract and interacting with the vendor.
administrator
Approver

User who approves or rejects the contract.
This list is filtered to only show users with the itil role.

Business
owner

User who manages the contract from a business perspective.

Agreement
type

Agreement type of license:
◦ Enterprise
◦ SaaS
◦ Subscription
This field appears only when Maintenance and Software License is selected
from Contract model.

Commitment Amount committed to spend with this vendor during this time period, from the
start to the end of the contract.
This field appears only when Purchase Agreement is selected from Contract
model.
Discount

Discount the vendor has agreed to provide.
This field appears only when Purchase Agreement is selected from Contract
model.

Process non- Option to process both contractual and non-contractual Service Level
contractual
Agreements (SLAs).
SLAs
This field appears only when Service Contract is selected from Contract
model.
Description

Detailed description of the contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

147


<!-- page 148 -->
Field

Description

Financial section
Invoice
payment
terms

Terms that explain how to pay the contract. For example, Net Monthly
Account or Net 30.

Payment
schedule

Schedule that defines when to make payments. For example, Monthly or
Annually.

Payment
amount

Amount that has been paid on the contract to date.

Applicable
taxes

Indicates if the contract is exempt from taxes or subject to sales tax.

Effective tax
rate

Effective tax rate to apply to the total cost, if applicable. Effective tax rate is
usually the average tax rate charged.
This field appears only when Sales is selected from Applicable taxes.

Tax cost

Total cost of the tax.
This field appears only when Sales is selected from Applicable taxes.

Total cost

Final cost of the contract after adjustments have been applied. If a contract
has one or more rate cards, this field shows the combined value of all rate
cards.
This field appears only when Sales is selected from Applicable taxes.

Vendor
account

Vendor account associated with the contract.

PO Number

Purchase order number assigned to the contract.

Cost center

Cost center that is financially responsible for the asset.

Has rate card Check box to indicate whether the contract has an associated rate card.
Renewal section
Automatically Indicates if the contract can be renewed or extended at the end of its term.
renew
Options

Duration of the contract renewal or extension. For example, 1 year.

Renewal
start date

Date on which the contract renewal or extension takes effect.

Renewal end Date on which the contract renewal or extension ends.
date
Cost
adjustment
type

Type of cost adjustment applied to the contract.
◦ Fixed
◦ Manual
◦ CPI (Consumer Price Index)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

148


<!-- page 149 -->
Field

Description

Cost
adjustment
amount

Numerical increase or decrease in price of contract. To indicate a decrease in
price, enter a negative number. Either a Cost adjustment or Cost adjustment
percentage can be specified, but not both.

Cost
adjustment
percentage

Percentage increase or decrease in price of contract. To indicate a decrease
in price, enter a negative percentage. Either a Cost adjustment or Cost
adjustment percentage can be specified, but not both.

Terms and Conditions section
Terms and
conditions

Specific legal information in the contract.

4. Save the form.
◦ If you’re using Core UI, right-click the form header and select Save.
◦ If you’re using Hardware Asset Workspace, Software Asset Workspace, or Enterprise Asset
Workspace, select Save.
5. Continue entering information in the related lists or tabs that appear.
Contract form related lists or tabs
Related list or tab

Description

Assets Covered

Lists all assets covered by this contract.

Users Covered

Lists all users covered by this contract.

Contract used by

Lists all configuration items (CI) used in this contract.

Terms and Conditions

Lists all terms and conditions of this contract.

Expense Lines

Lists all expense lines in this contract.

Contract History

Displays the changes to the start and end dates of this contract and
changes to the terms and conditions.

Approval History

Lists all approvals for this contract.

Service Offerings

Lists all service offerings from this vendor.
Activate Service Portfolio Management to see this related list.

Service Commitments
for Contracts

Lists all service commitments for this vendor's offerings.
Activate Service Portfolio Management to see this related list.

6. Perform one of the following actions.
◦ Select Update to save and exit the contract.
◦ Select Submit for Review to send a notification to the approver.
Related topics
Models
Service Portfolio Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

149


<!-- page 150 -->
Add a commitment to a service offering
Contract renewal workflow
Contracts
Create a software maintenance contract example
One common use case for the Contract Management application is creating a contract to track
maintenance payments for enterprise software. You can use this example to learn how to create
a software maintenance contract.

Before you begin

Role required: contract_manager or admin

About this task

The goal of this example is to create a contract that shows the total amount of maintenance that
must be paid for the software application, independent of different license purchases made over
time. The Software Asset Management plugin must be activated to use this example.

Procedure
1. Create an application model, adding a Name and specifying Software License in Model
categories.
2. Create a software model, adding a Name and Model Number, and selecting the application
model created in step 1.
3. Create a new software entitlement by selecting the software model created in step 2.
4. Navigate to Contract > Contracts > Maintenance.
5. Click New and enter the following information.
Option

Description

Agreement Type

Select Enterprise.

Application Model

Select the application model created in step
1.

6. Right-click the form header and click Save.
A number of related lists and sections appear.
7. In the Asset Covered related list, click New and enter the following information.
Option

Description

Asset

Select the software license created in step 3.

Date added

Enter the value.

8. Click Submit.
9. Continue completing the form with the following information.
Option

Description

Payment schedule

Select Annually.

Payment amount

Enter the value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

150


<!-- page 151 -->
10. Complete the other fields as appropriate.
11. Click Update.
12. Submit the contract for review.
Related topics
Software Asset Management
Add an asset to a contract
You can associate contracts with specific assets, including software licenses.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task

Linking a contract with assets clarifies what the contract legally covers.

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract Management > Contract > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Add assets to the contract.
◦ If you are using the core UI, use the following steps:
a. In the Assets Covered related list, click New.
b. In the Asset field, select a specific asset that is covered by the contract.
c. In the Date added field, select the date the asset was added to the contract.
The date can be in the past, the present, or the future.
d. (Optional) In the Date removed field, select the date the asset was, or will be, removed
from the contract.
Specifying the Date added and Date removed fields is useful for reporting.
e. Click Submit.
◦ If you are using the Hardware Asset Workspace or Enterprise Asset Workspace, use the
following steps:
a. In the Assets Covered tab, click New.
b. In the dialog box, select the check box for each asset that you want to add to the contract.
c. Click Add.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

151


<!-- page 152 -->
Add a user to a contract
A contract can cover specific users. For example, you may use a contract to hire a group of
temporary workers.

Before you begin

Role required: contract_manager or admin

Procedure
1. Navigate to Contract Management > Contract > All.
2. Select a contract.
3. In the Users Covered related list, click New.
4. In the User field, select a specific user covered by the contract.
5. In the Date added field, select the date the user was added to the contract.
The date can be in the past, the present, or the future.
6. Optional: In the Date removed field, select the date the user was, or will be, removed from the
contract.
Specifying the Date added and Date removed fields can be useful for reporting.
7. Click Submit.
Add a configuration item to a contract
Contracts can be associated with configuration items. You can link a contract with configuration
items to clarify what the contract legally covers.

Before you begin

Role required: admin or contract_manager

Procedure
1. Navigate to Contracts > All.
2. Select a contract.
3. Optional: In the CIs Covered related list, select New to create a configuration item.
4. In the CIs Covered related list, select Edit.
5. In the Collection configuration items list on the left, double-click a configuration item name.
The item is added to the CIs Covered List on the right.
6. Select Save.
Add a document to a contract
Contracts can be associated with documents. Linking a contract to related documents helps
keep all relevant information about a contract together and easily accessible.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

152


<!-- page 153 -->
Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to All > Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Add a document to the contract.
◦ If you are using the core UI, use the following steps:
a. Click the Manage Attachments (

) icon on the form header.

b. In the Attachments dialog box, click Choose file to search for and select the document
that you want to add to the contract.
◦ If you are using the Hardware Asset Workspace or Enterprise Asset Workspace, use the
following steps:
a. Click the Attachment (

) icon on the sidebar of the contract record.

b. In the Attachments window, click Select to search for and select the document that you
want to add to the contract.
Adjust a contract
After creating a contract, you can change the start date, end date, or payment amount for a
contract.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task

To adjust a contract, the State should be Active. If the end date of a contract changes, the end
date of any associated assets changes to match the new end date.

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract in the Active state.
3. Click Adjust.
4. In the Adjust the Contract dialog box, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

153


<!-- page 154 -->
Adjust the contract fields
Field

Description

Contract Start
Date

Date on which the contract takes effect.

Contract End
Date

Date on which the contract expires.

Contract
Payment
Amount

Total amount paid for the contract. If the contract has one or more rate
cards, this field shows the total of all rate card base costs.

5. Click Submit Adjustments.
Renew a contract
After you have created a contract or the contract has expired, you can renew the contract.

Before you begin

Role required: admin, contract_manager (core UI or Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task
• When a contract is renewed, a new contract isn't created. Instead, the same contract is
updated with renewal information.
• The changes to the start date and end date of a contract is captured in the Contract History
tab.
• Contract information and history is retained when a contract is renewed. If the end date of the
contract changes, the end date of any associated assets changes to match. You can renew a
contract that meets the following conditions.
◦ State is Active or Expired
◦ Substate is None or Rejected
• If the system property sn_contract_enable_renewal_flow is enabled, the contract
renewal workflow is available for maintenance & warranty contracts. For more information, see
Contract renewal workflow.

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
Alternatively, select the Overview tab of the Contract management view. In the Contract
overview section, locate the Expiring contract widget to view the list of contracts that are
expiring.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

154


<!-- page 155 -->
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
Alternatively, select the Overview tab of the Contract and lease management view. In the
Contract overview section, locate the Expiring contract widget to view the list of contracts
that are expiring.
2. Select a contract in the Active or Expired state.
3. Click Renew.
4. On the Renew the Contract form (core UI) or dialog box (Hardware Asset Workspace and
Enterprise Asset Workspace), fill in the fields.
Renew the Contract fields
Field

Descriptions

Approver

User who approves or rejects the contract.

Options

Length of time for the renewal, in years.

Renewal
start date

Date on which the renewed contract takes effect.

Renewal
end date

Date on which the renewed contract expires.

Cost
Type of cost adjustment applied to the renewed contract: None, Fixed, Manual,
adjustment or CPI.
type
Cost
Percentage increase or decrease in price of the renewed contract. To indicate a
adjustment decrease in price, enter a negative percentage. A Cost adjustment amount or
percentage Cost adjustment percentage can be specified, but not both.
Cost
Numerical increase or decrease in price of the renewed contract. To indicate a
adjustment decrease in price, enter a negative number. A Cost adjustment amount or Cost
amount
adjustment percentage can be specified, but not both.
5. Perform one of the following steps.
◦ To save all entered data and change the substate to Under Review, click Submit for Review.
The contract is sent to the specified Approver.
◦ To save all entered data and change the substate to Awaiting Review, click Save. The
Renew button is available to submit the renewed contract for review later.
6. Change any information on the Contract form, as necessary.
7. Click Update.

What to do next

If you selected the Save option, ensure that you click Renew when you are ready to submit the
contract renewal for approval.
Cancel a contract
You can cancel a contract when the State is Active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

155


<!-- page 156 -->
Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task

After a contract is canceled, the following process occurs.
• The contract State changes to Canceled.
• Condition checkers are changed to inactive.
• Renew and Extend buttons become inactive.
• Contract rate cards become inactive.

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Click Cancel Contract.
4. Click Yes to confirm the contract cancellation.
Verify contract administrator assignment for notification
An event runs automatically each night to send reminders to contract administrators about
contract expiration dates so they can renew or renegotiate the contract. You can verify that the
right contract administrator is assigned to the contract.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task

When the contract.expiration event runs on the Contract [ast.contract] table each night, an email
message is sent to the person identified as the contract administrator. This email is sent at the
following times.
• 90 days ahead of the contract expiration date
• 60 days ahead of the contract expiration date
• 30 days ahead of the contract expiration date
• On the contract expiration date
A user with the admin role can edit the contract.expiration condition check that processes
contract notifications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

156


<!-- page 157 -->
Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Check that the Contract administrator field contains the correct name.
A single name can be specified.
Related topics
Condition check definitions
Email and SMS notifications
Send the contract for approval
You can send a contract that is in Draft state for approval.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract in the Draft state and Awaiting Review substate.
3. Select an Approver for the contract.
4. Click Submit For Review.
An email message is sent to the selected approver and the contract Substate changes to
Under Review.
Related topics
Contract approval flow
Approve or reject a contract
If you are the contract manager, you can approve or reject a contract.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

157


<!-- page 158 -->
Procedure
1. Open the list of contract and contract renewal requests.
◦ If you are using the core UI, navigate to All > Contract > My Approvals.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the My approvals tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the My contract approvals tab.
2. Select a contract in the Requested state.
3. Approve or reject the contract.
◦ Approve the contract.
▪ To approve the contract in the core UI, click Approve. The contract Substate changes to
Approved.
▪ To approve the contract in the Hardware Asset Workspace or Enterprise Asset Workspace,
set the State field to Approved.
◦ Reject the contract.
▪ To reject the contract in the core UI, click Reject and enter a rejection reason in the
Comments field. The contract Substate changes to Rejected.
▪ To reject the contract in the Hardware Asset Workspace or Enterprise Asset Workspace,
set the State field to Rejected.
4. Click Update (core UI) or Save (Hardware Asset Workspace and Enterprise Asset Workspace).
◦ A contract with the state set to Draft and a start date set in the future is kept in Draft until the
start date is reached. If the contract has a Substate of Approved, the system changes the
State to Active and removes the Substate value.
◦ When a contract with a State of Draft and a Start Date set to a date in the past is approved,
the contract State is automatically set to Active and Substate is left blank.
Related topics
Contract approval flow
View approval history on contracts
You can view the approval history for a contract in the Approval History related list on the
Contract form.

Before you begin

Role required: workflow_admin, admin, or sn_eam.enterprise_admin (Enterprise Asset
Workspace only)

About this task

After a contract is sent to an approver for review, the approver name cannot be changed. If the
approver rejects a contract, the same approver or a different approver can be specified before
the contract is sent for approval again. Once the contract has been reviewed and approved,
approval history records are automatically listed in the Approval History related list on the
Contract form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

158


<!-- page 159 -->
Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Select the Approval History tab.
4. Click a record to view the approval details.
Related topics
Contract approval flow
Terms and conditions
You can add terms and conditions to a contract to keep all documentation that is relevant to a
contract in one location.
The terms and conditions can be searched and used in reports. If multiple terms and conditions
records are added to a single contract, set an order for the records so they appear in a specific
sequence. The terms and conditions fields become read-only after a contract is sent for
approval.
Users with the contract_manager role can read contract history and add terms and conditions.
There are three procedures involved in adding terms and conditions to a contract:
Create a terms and conditions record
You can create a terms and conditions record to add to a contract.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

Procedure
1. Open the list of terms and conditions for your contracts.
◦ If you are using the core UI, navigate to All > Contract > Contracts > Terms & Conditions.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the Terms and conditions tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the Terms and conditions tab.
2. Click New.
3. On the Terms and Conditions form (core UI) or Create New Terms and Conditions form
(Hardware Asset Workspace and Enterprise Asset Workspace), fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

159


<!-- page 160 -->
Terms and Conditions or Create New Terms and Conditions form
Field

Description

Number

Unique ID used for the terms and conditions. This field is automatically
generated.

Name

Name for the terms and conditions.

Contract

Link to the contract.

Used

Check box to indicate if the terms and conditions are associated with contract.

Description Details of the terms and conditions.
4. Click Submit (core UI) or Save (Hardware Asset Workspace and Enterprise Asset Workspace).
Add terms and conditions to a contract
After you create a terms and conditions record, add the record to a contract that is in the
Awaiting Review, Rejected, Renewal Rejected, or Extension Rejected substate.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task

Terms and Conditions can only be added to a contract when it is being created. After the
contract is approved, the terms and conditions cannot be changed.

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Add terms and conditions to the contract.
◦ If you are using the core UI, use the following steps:
a. In the Terms and Conditions related list, double-click Insert a new row.
b. Click the reference lookup icon and select a terms and conditions record from the list.
c. (Optional) Enter a number in Order to specify the sequence in which the record should
appear in the terms and condition document.

Note: If you attempt to enter a duplicate terms and conditions record for a contract
and save the record, an error message appears and the new duplicate record is not
added.
◦ If you are using the Hardware Asset Workspace, use the following steps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

160


<!-- page 161 -->
a. On the Terms and Conditions tab, click Add.
b. When prompted, provide the required information.
◦ If you are using the Enterprise Asset Workspace, use the following steps:
a. On the Terms and Conditions tab, click Add.
b. In the dialog box, select the check box for each term and condition that you want to add.
c. Click Add.
Build a terms and conditions document within a contract
After adding one or more terms and conditions records to a contract, you can build a terms and
conditions document within the contract.

Before you begin

Role required: admin, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

About this task

The terms and conditions records are added in the sequence specified in the Order field.

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract Management > Contract > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Verify that one or more terms and conditions records have been added to the Terms and
Conditions tab.
4. On the Terms and Conditions tab, build the terms and conditions for the contract.
◦ If you are using the core UI, click the Build Terms and Conditions related link.
◦ If you are using the Hardware Asset Workspace or Enterprise Asset Workspace, click Build
Terms and Conditions.
All records from the Terms and Conditions list are added to the Terms and Conditions for the
contract.
5. Click Update.
Create a contract rate card
You can create rate cards to track contract expenses. Rate cards help to record and allocate
costs.

Before you begin

You must activate the Cost Management plugin to use rate cards.
Role required: financial_mgmt_user, asset, or contract_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

161


<!-- page 162 -->
About this task

A contract rate card provides detailed price information for a contract and enables you to
generate expense lines for recurring expenses automatically. There can be multiple rate cards for
the same contract.
Consider the following case: an organization has a contract with a third-party company, which
oversees technical operations in the organization's data centers. The contract costs to use a
specific server model in the New York data center are different from using the same server model
in the Madrid data center. There are two rate cards to detail these costs separately.

Procedure
1. Navigate to Contract Management > Contract > All.
2. Select a contract.
3. In the Contract Rate Cards related list, click New.
4. On the Contract Rate Card form, fill in the fields.
For a description of the field values, see Contract Rate Card form.
5. Click Submit.
Related topics
Allocating expenses
Use business services with expenses
Contract Rate Card form
The Contract rate card form enables you to generate expense lines for recurring expenses
automatically by providing detailed price information for a contract. There can be multiple rate
cards for the same contract.

Field

Description

Number

Contract rate card number.

Contract

Internal contract number.

Summary
type

Contract rate card type. Categorizing rate cards can be useful for reporting. Select
Grow Business, Run Business, or Transform Business.

Name

Descriptive name for the contract rate card.

Active

Option that indicates whether the rate card is available for use.

Short
Brief description of the contract rate card.
description
Start date

Date on which the contract rate card becomes active. Expense lines are
generated for the costs incurred beginning on the date specified. For financial
calculations to work, the date cannot be before the start date of the contract.

End date

Date on which the contract rate card becomes inactive. For financial calculations
to work, the date cannot be after the end date of the contract. If no value is
entered, the date is automatically set to the end date of the contract if the contract
has an end date. No expense lines are generated for costs incurred after the end
date.

Interval

The amount of time between rate card charges. For example, Monthly, Quarterly,
or Annually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

162


<!-- page 163 -->
Field

Description

Cost
center

The cost center financially responsible for the rate card.

Last
processed

The most recent date on which the rate card was charged.

Next
process

The next date on which the rate card will be charged.

Description Detailed information about the rate card.
Sales tax

Option that indicates whether to apply sales tax to the total cost.

Tax rate

The effective tax rate to apply to the total cost. This tax rate is usually the average
tax rate charged.

Distribute
cost

The method for distributing the amount listed in the Base cost field and
generating expense lines.

Value

Type of value to use when Allocate and distribute cost based on value is
selected in the Distribute cost field.

Base cost

The amount that must be paid before taxes.

Tax cost

Total cost of the tax.

Total cost

Final cost of the rate card after adjustments such as taxes have been applied.

Create a new expense line
Typically, expense lines are automatically generated based on assets or users, but you can
create a new expense line manually if needed.

Before you begin

Role required: asset, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract Management > Contract > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. In the Expense Lines related list (core UI) or tab (Hardware Asset Workspace and Enterprise
Asset Workspace), click New.
4. Complete the form.
Expense line table
Field

Description

Number

The unique number identifying the expense line.

Date

The date on which the expense line was created.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

163


<!-- page 164 -->
Field

Description

Rate Card

The identification number of the rate card to which the expense line is
associated.

Rate type

The rate type that is considered during the expense line generation. This field
is read-only.

Source ID

The identification number of the item associated with the expense line. If
this field is filled in, corresponding information is automatically added to the
Source fields on this form.

Amount

The monetary value of the item specified in the Source ID field. Enter a
negative value to indicate a credit.

Process date The date the expense line is processed.
Inherited

Check box that indicates whether the expense line is on another expense
line.

State

The current state of the expense line, either Pending or Processed.

Summary
type

The expense line category: Grow Business, Run Business, or Transform
Business. Categorizing expense lines can be useful for reporting.

Short
description

A brief description of the expense line.

Asset

The identification number of the asset associated with the expense line, if
any.

Fixed asset

Fixed asset that contains the asset in this expense line. A fixed asset is a
container that holds one or more individual assets, including hardware or
software assets. The system auto-populates this field with the appropriate
fixed asset if the named Asset is contained within that fixed asset.

Contract

The identification number (not the contract number) of the contract
associated with the Asset, if any.

User

The name of the user associated with the Asset, if any.

Configuration The name of the configuration item associated with the expense line, if any.
Item
Task

The identification number of the task associated with the expense line, if any.

Cost center

The cost center financially responsible for the item identified in Source ID, if
any.

5. Click Submit (core UI) or Save (Hardware Asset Workspace and Enterprise Asset Workspace).
Generating expense lines based on assets or users
An expense line is an expense amount at a given point in time and the record that incurred or
generated the expense. You can generate expense lines based on assets or users assigned to
the contract.

Before you begin

Role required: financial_mgmt_user, asset, or contract_manager

About this task

Generating expense lines is a three-step procedure.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

164


<!-- page 165 -->
Procedure

Add a user or asset to a contract
You can add a user or asset to a contract to generate expense lines.

Before you begin

Role required: asset, financial_mgmt_user (core UI and Hardware Asset Workspace only),
contract_manager (core UI and Hardware Asset Workspace only), sn_eam.enterprise_admin
(Enterprise Asset Workspace only), or sn_eam.enterprise_asset_manager (Enterprise Asset
Workspace only)

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract Management > Contract > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Add assets or users to the contract.
◦ If you are using the core UI, use the following steps:
a. In the Assets Covered or Users Covered related list, click New.
b. Specify an Asset or User.
c. Specify a Date Added.
d. Click Submit.
e. (Optional) Repeat the previous steps to add more assets or users to the contract.
◦ If you are using the Hardware Asset Workspace or Enterprise Asset Workspace, use the
following steps:

Note: You cannot add users to a contract in the Enterprise Asset Workspace.
a. In the Assets Covered or Users Covered tab, click New.
b. In the dialog box, select the check box for each asset or user that you want to add to the
contract.
c. Click Add.
Create a rate card and assign a user or asset
You can assign a user or asset when you create a rate card. You can only assign the user or asset
that is assigned to the contract.

Before you begin

Role required: financial_mgmt_user, asset, or contract_manager

Procedure
1. Navigate to Contract Management > Contract > All.
2. Select a contract with an assigned user or asset.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

165


<!-- page 166 -->
3. In the Contract Rate Cards related list, click New.
4. Specify a Start date.
For financial calculations to work, the date cannot be before the start date of the contract.
5. Right-click the header bar and select Save.
6. In the Asset Covered or Rate Card Users related list, click New.
7. Select the Asset or User who is assigned to the contract.
Only assets and users associated with the parent contract are listed.
8. Specify a Date Added.
9. Click Submit.
Configure rate card expense generation
After assets or users are added to the rate card, you can use the Distribute cost field in the
Financial section of the contract to generate rate card expenses.

Before you begin

Role required: financial_mgmt_user, asset, or contract_manager

Procedure
1. Navigate to Contract > Contracts > All.
2. Select the contract to generate expenses.
3. In the Contract Rate Card related list, select a rate card.
4. In Distribute cost, select one of the following options to distribute the amount listed in Base
cost.
Option

Description

Select Allocate and distribute cost per asset.
Split expense lines evenly across assets

For example, with a $100 Base cost and two
assets, two expense lines for $50 are creat­
ed.
Select Allocate and distribute cost based on
value:.

Split expense lines across assets based on
asset value

The Value field displays with Cost and Resid­
ual Cost options. The cost is derived from
the Cost or Residual Cost field on an asset
record. If there are multiple assets on the rate
card, the cost or residual cost is distributed
based on the value of the assets.
For example, if you select the Cost option
with a $100.00 Base cost, one asset worth
$70, and one asset worth $30, two expense
lines are created, one for $70 and one for
$30.

Split expense lines evenly across users

Select Allocate and distribute cost per user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

166


<!-- page 167 -->
Option

Description

For example, with a $100 Base cost and two
users on the contract, two expense lines for
$50 are created.
Allocate the cost to the contract instead of
the individual assets

Select Allocate cost to contract.

5. Select Update.
Expense lines are automatically generated by a scheduled job for costs incurred between
the rate card Start date and End date. The scheduled job, Process FM Costs, runs
on the Contract [ast_contract] table once per day. This scheduled job runs forward and
generates additional records from the Next Process [next_process] time. Expense lines are
only generated from contracts with the Active or Expired state. You may want to generate
expense lines for expired contracts to track previous expenses.
Related topics
Contract life cycle
View contract expense lines
Use the Expense Lines related list or tab to view and audit all the expenses recorded for a given
contract.

Before you begin

Role required: asset, financial_mgmt_user (core UI and Hardware Asset Workspace only),
contract_manager (core UI and Hardware Asset Workspace only), sn_eam.enterprise_admin
(Enterprise Asset Workspace only), or sn_eam.enterprise_asset_manager (Enterprise Asset
Workspace only)

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. Select the Expense Lines related list (core UI ) or tab (Hardware Asset Workspace and
Enterprise Asset Workspace).
4. Select an expense line record to view.
Information such as expense line details, total cost of the contract, and the contract current
value is listed.
Monitor a contract
You can monitor contracts by viewing contract history and creating contract reports.

Before you begin

Role required: asset, contract_manager (core UI and Hardware Asset Workspace
only), sn_eam.enterprise_admin (Enterprise Asset Workspace only), or
sn_eam.enterprise_asset_manager (Enterprise Asset Workspace only)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

167


<!-- page 168 -->
About this task

If changes are made to a contract start date, end date, or terms and conditions, a copy of the
contract is automatically saved and placed in contract history. This is useful for tracking changes
to a contract and keeping an audit trail. Configure the Contract History related list or tab to
include columns for creation and update so you can easily see who edited the contract.

Procedure
1. Open the list of contracts that are used across your deployment.
◦ If you are using the core UI, navigate to Contract > Contracts > All.
◦ If you are using the Hardware Asset Workspace, open the Contract management view and
then select the All contracts tab.
◦ If you are using the Enterprise Asset Workspace, open the Contract and lease management
view and then select the All contracts tab.
2. Select a contract.
3. View the Contract History related list (core UI) or tab (Hardware Asset Workspace and
Enterprise Asset Workspace) and perform one of the following actions.
◦ If earlier versions of the contract exist, click a date in the Contract Starts column to view a
version.
◦ If an earlier version of the contract does not exist, change the contract's Start date or End
date. Right-click in the header bar and select Save. In the Contract History related list, click
a date in the Contract Starts column to view the earlier version.
Run a contract report
A variety of contract reports are available to help track and manage contracts.

Before you begin

Role required: contract_manager or admin

Procedure
1. Navigate to All > Reports > View / Run.
2. Select one of the following reports to run.
Contract reports
Report

Description

Active
Contracts by
Cost Per Unit

All active contracts grouped in ascending order by average cost per unit.

Active
Contracts by
Lifetime Cost

All active contracts with an associated rate card grouped in ascending order
by total cost. Total cost is measured from the beginning of the contract to the
report run date.

Active
Contracts by
Monthly Cost

All active contracts grouped in ascending order by cost per month.

Active
Contracts by
Vendor

All active contracts alphabetically by vendor.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

168


<!-- page 169 -->
Report

Description

Active
Contracts by
Yearly Cost

All active contracts grouped in ascending order by cost per year.

All Contracts
by State

Contracts grouped by state, such as Draft, Active, or Expired, in bar chart
format

Asset
Contracts by
Type

All active contracts for assets grouped by type, in pie chart format.

Asset
Contracts List

All active contracts for assets by contract number.

Contract
Expenditure
by Type

Total contract expenses by type, such as lease, maintenance, or warranty, in
bar chart format.

Contract
Expenditure
by Vendor

Total costs of all contracts associated with a specific vendor, in bar chart
format.

Contract
Pipeline
Report

All contracts with a state of Draft, Active, or Expired and a substate of
Awaiting Review or Under Review, in bar chart format.

Expiring
Contracts

All contracts expiring in the next 90 days.

Condition check definitions
Condition check definitions enable you to define logical conditions that indicate when to change
a field value in a record.
A scheduled job, called Contract Compliance Checks in System Scheduler >
Scheduled Jobs, evaluates these condition check definitions daily by running the condition
checker. When this job is run, the ConditionChecks Script Include is triggered that runs the
Condition Check Definitions. Use this condition checker to check start dates and end dates and
to set expiration levels for contracts.
For example, a contract has a start date of March 1. When the condition checker runs on March 1,
it verifies that the contract Substate is Approved and sets the contract State to Active based on
the Start Date field.
The daily condition checker sets the appropriate expiration level for active contracts based on
the contract End Date. The expiration level can be viewed in the Contracts list. Knowing the
expiration level can help contract managers renew or extend a contract before it expires.
Define a condition check
You can define a condition check to change values in a contract when the Contract
Compliance Checks scheduled job runs each night.

Before you begin
Procedure
1. Navigate to All > Contract > Administration > Condition Check Definitions.
2. Click New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

169


<!-- page 170 -->
3. Complete the form.
Condition check definition fields
Field

Description

Table

The table to which the condition applies. For a contract check definition, select
Contract [ast.contract].

Category

The category for the condition check. Select Contract or None. The category is
used for organizing information and reporting.

Condition The field to be updated, typically Expiration level or State.
field
Event
name

The name for the event to be fired when this condition changes the value of
the field. Create a name using this syntax: <table_name>.<condition_field>, for
example, contract.validation.

Order

The order in which the conditions are evaluated.

4. Right-click the header bar and click Save.
The Conditions related list appears.
5. In the Conditions related list, click New.
6. Complete the form.
Conditions fields
Field

Description

Name

The value the field is set to, if the expiration conditions are met.

Condition The associated condition check.
check
Table

The table associated with the condition check.

Event
name

The name of the event this condition triggers.

Expiration The condition that must be true for the Condition check field to be set to this
Condition value (the Name).
Add as many conditions as are needed.
Compliant System field. Do not use.
state
Order

The order in which the conditions are evaluated. The first condition that is found
to match, where the Expiration Condition is true, is used, and no others are
checked.

7. Click Submit.
The Condition Checks form reopens with the new condition listed in the related list.
8. Optional: Continue adding conditions as needed, following the steps above.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

170


