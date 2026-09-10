# Zurich Customer Service Management — Customer Service forms

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1921–1967 of 2452

Sections: Customer Service forms (p1921)

---

<!-- page 1921 -->
Special considerations
None.

Customer Service forms
Use forms to view and update Customer Service Management information.

Customer Service forms overview
Customer Service Management provides an intuitive platform for creating and managing forms
that enables you to submit requests, track issues, or interact with the support team. These forms
are customizable to meet the unique needs of your organization, that confirms every customer
interaction is captured accurately.
With options for creating incident reports, service requests, or even feedback forms, you
can enable your support agents to manage customer queries easily. By using dynamic form
elements, workflows, and automatic data routing, customer service teams can streamline the
support process, reduce response times, and improve customer satisfaction. Forms can be
integrated into portals, emails, or other channels, giving customers multiple ways to reach out for
help. Whether you’re addressing a simple query or managing complex service requests, these
forms help ensure that your support team is well equipped to deliver timely, effective service.

Account form
The Customer Service Management application uses the Account form to store customer
account information.
For information about creating a customer account, see Configure accounts and contacts.
Customer Service Account form fields
Field

Definition

Name

The name of the company.

Number

The automatically generated account number for this customer.

Primary
Contact

The name of a user who is the main contact for this company.

Parent
Account

The parent account for this account. Use this field to create an Account hierarchy.

Registration A unique code for this account. The customer administrator can provide this
Code
code to customers for use when requesting a login on the customer portal. The
registration code provides a method for validating the customer and the company
before the login request is granted.
Enter an alphanumeric code in this field or click the Generate Code icon to
generate a unique code.
For more information about generating unique account registration codes, see
the Account Registration code generation in Customer Service [KB0753505]
article in the HI Knowledge Base.
Customer

Denotes this account as a customer account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1921


<!-- page 1922 -->
Customer Service Account form fields (continued)
Field

Definition

Note: If you are creating a customer account, this field is enabled by
default.
Partner

Denotes this account as a partner account.
A partner can report and manage cases on behalf of customers. A partner can
also be a customer.

Note: If you are creating a partner account, this field is enabled by default.
Website

The web address for the company.

Phone

The phone number for the company.

Street

The street address of the company.

City

The city in which the company is located.

State/
Province

The state or province in which the company is located.

Zip/Postal
code

The zip code or postal code for the company.

Country

The country in which the company is located.

Notes

Any additional information about the company.

Account
Code

This field stores a unique value for each account. The value
is determined by the last used value, which is stored in the

com.snc.cs_base.last.generated.code.tree.path system
property. For more information, see Properties installed with Customer Service
Management.

Note: If this property is reset to the original value, the system attempts to
create new accounts with account codes that are already in use, which can
result in an invalid insert.

Asset form
The Asset Management application uses the Asset form to store asset information.

Field

Description

Display name Name of the asset as it appears in the record lists. This field is automatically set
when you create an asset, based on the Asset Tag and Model fields.
Model
category

Model grouping of the asset. Based on the model category you select, the asset
is linked to a configuration item.

Model

Specific product model of the asset.

Configuration CI is automatically created when you create an asset. The name that appears
Item
in this field is based on the Serial number and Model field values. Point to the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1922


<!-- page 1923 -->
Field

Description

reference icon to view the configuration item details inherited from the asset
record.
Quantity

Number of items this asset represents. An asset always has a quantity of one
unless one or more of these points are true.
• If the asset is a consumable, the quantity is unrestricted because
consumables are tracked in groups.
• If the asset is pre-allocated, the quantity is unrestricted when the Model
category and Model values are defined and Substate is set to Pre-allocated.

General
All the fields aren't available for each type of asset.
Asset tag

Alphanumeric information assigned by your organization to help track the asset.

State

Current state of the asset, such as On order or In use.

Assigned to

Person using or primarily responsible for this item. This field appears when the
asset state is In Use.

Stockroom

Name of the stockroom. This field appears only when the state of the asset is In
stock or Build.

Aisle

Aisle details of the asset within the stockroom. This field appears only when the
state of the asset is In stock or Build.

Note: This field would appear only when the Hardware Asset
Management Professional plugin (com.sn_hamp) is installed.
Space

Space details of the asset within the aisle. This field appears only when the
state of the asset is In stock or Build.

Note: This field would appear only when the Hardware Asset
Management Professional plugin (com.sn_hamp) is installed.
Managed by

Person who maintains the asset. This field value can be different from the
person in the Owned by field.

Owned by

Person who has financial ownership of the asset. This field value can be
different from the person in the Managed by field.

Parent

Parent asset of the asset. For example, a monitor or peripheral can have a
workstation as their parent asset. When a parent link is defined, the fields
related to assignment and state of the child assets is set to read-only and
are populated based on the parent assignment and state fields. For more
information, see Bundled models .

Class

Asset group, for example, base, hardware, license, or consumable.

Comments

Information about the asset that would be helpful for others to know.

Serial
number

Serial number of this asset.

Substate

Current substate of the asset. The available substate settings depend on the
state selected. For example, the Retired state contains the Substate options
Disposed, Sold, Donated, and Vendor credit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1923


<!-- page 1924 -->
Field

Description

Location

Current physical location of the asset.

Note: You can set the location to a place, floor, building, or campus.
When you set the location to any of the options except the campus,
the Location hierarchy section is shown on the asset form. The location
hierarchy shows the hierarchical relationship between the specified
location and its parent locations.
Also, when you set the Location field to a place and then set
the sn_itam_common.sn_enable_indoormap_for_assets system
parameter to true on your ServiceNow instance, a real-time location map
of the asset is shown on the asset form. The Location map doesn’t appear
by default. To view the map, select the Location map ( ) icon on the
contextual sidebar of the asset record.
Location map doesn’t appear for excluded assets.
You can also track your asset location using the Asset Indoor map in the
Asset estate view of the Hardware Asset Workspace. For more information,
see Track asset location using indoor maps .
Department

Department to which the asset belongs.

Company

Company or organization to which this asset belongs.

Assigned

Date on which the asset was assigned to a user.

Installed

Date on which the asset was installed.

Location Hierarchy
The Location Hierarchy section is available only for hardware, consumables,bundle, and pallet
assets. This section appears only under the following conditions:
• When the sn_itam_common.sn_enable_indoormap_for_assets system
parameter is set to true on your ServiceNow instance
• When you select any location except the campus
Floor

Floor where the place specified in the Location field is located.

Note: This field appears only when you select a place in the Location
field and is populated automatically based on the location.
Building/
Structure

Building to which the floor belongs.

Note: This field appears only when you select a place or floor in the
Location field and is populated automatically based on the location.

Campus

Campus where the building is located.

Note: This field appears only when you select a place, floor, or building in
the Location field and is populated automatically based on the location.
Financial
The Financial section is available only for hardware, software entitlement, and facility assets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1924


<!-- page 1925 -->
Field

Description

Request line

Requested item to which the asset is linked.

Invoice
number

Invoice under which the asset was billed.

Cost

Price at which the asset was purchased.

Vendor

Vendor from which the asset was purchased. The assets that are automatically
created from purchase orders in Procurement, the default value of the Vendor
field is the vendor specified on the purchase order.

Opened

Date on which the requested item record was opened. The system automatically
populates the field when a request line is specified.

GL account

General ledger account number with which the asset is associated.

Cost center

Group financially responsible for the asset.

Acquisition
method

The way of acquiring the asset. Base system choices are Purchase, Lease,
Rental, and Loan.
The assets that are automatically created from purchase orders in Procurement,
the default value is Purchase

Expenditure
type

The type of expenditure.
• Capex: Capital expenditure is a one-time expenditure, where the value is
realized over the years. For example, a photocopier.
• Opex: Operational expenditure is an on-going expenditure. For example,
toners for the photocopier.

Disposal
Disposal
order
number

A unique number assigned to the asset disposal order.

Note: This field appears only if you’ve installed Hardware Asset
Management from ServiceNow Store.

Disposal
vendor

The vendor assigned to carry out the asset disposal order.

Note: This field appears only if you’ve installed Hardware Asset
Management from ServiceNow Store.
Vendor
disposal
order ID

Order number assigned by the vendor to carry out the asset disposal order.

Note: This field appears only if you’ve installed Hardware Asset
Management from ServiceNow Store.

Disposal
date

The date when the asset disposal order process is completed.

Note: This field appears only if you’ve installed Hardware Asset
Management from ServiceNow Store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1925


<!-- page 1926 -->
Field

Description

Disposal
reason

Text explaining why the asset is being retired.

Beneficiary

Organization that receives the asset when it’s retired.

Resale price

Value of the asset when it’s retired. For example, if the asset is donated, the
value used when reporting taxes.

Scheduled
retirement

Scheduled date on which the asset is retired.

Retired date

Actual date on which the asset was retired.

Depreciation
The Depreciation section is available only for hardware and facility assets.
Depreciation

Depreciation method that is applied. Base system choices are Declining
Balance and Straight Line. The depreciation value is defaulted from the
associated Model.

Depreciation
effective
date

Date on which the specified depreciation method begins.

Salvage
value

Estimated value of an asset at the end of its useful life. This value must be less
than or equal to the Cost of the asset.

Residual
date

Number of days that have passed since the Depreciation effective date.

Residual
value

Value in the Cost field with the depreciation method applied.

Depreciated
amount

Amount the asset has depreciated.

Contracts
The Contract section is available only for hardware, software entitlement, or facility assets.
Lease
contract

Name of the lease contract that applies to the asset.

Warranty
expiration

Expiration date of the asset warranty.

Lease
expiration
date

Date on which the contract gets expired.

Note: This field would appear only when Hardware Asset Management
(sn_hamp) is installed.

Lease term
(months)

The period in months the lease contract is active for.

Note: This field would appear only when Hardware Asset Management
(sn_hamp) is installed.

Monthly
lease
payment

Amount that you pay monthly for the contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1926


<!-- page 1927 -->
Field

Description

Note: This field would appear only when Hardware Asset Management
(sn_hamp) is installed.
Support
group

Group managing the contract covering the asset.

Like-kind
exchange

A similar asset that you want to return to the contract vendor instead of the
asset that you brought in lease.

Note: This field would appear only when Hardware Asset Management
(sn_hamp) is installed.
Supported
by

Person managing the contract covering the asset.

Activities
Work notes

Work notes are updated for the following cases:
• Updates to Assigned To, Managed To State, Substate, and Reserved fields
of asset. The columns for these fields are audited by default and any update
is recorded in the work notes.
• Work notes for hardware and software assets are updated when the asset is
received by a purchase order and transfer order. These work notes help in
tracking the life cycle of the asset.

Audit
Audit
number

Audit number of the asset.

Audit type

Type of audit that was carried out on the asset.

Last audit
date

Date on which the last audit was done.

Last audit
state

State of the last audit.

Audited by

Person who performed the last audit.

Mobile
The Mobile section is available only for the Mobile Device model category.

Note: This section appears only when Hardware Asset Management (sn_hamp) is
installed.
Carrier

Name of the carrier company.

Ownership

Ownership of the asset. The available values are:
• Employee
• Corporate

IMEI

Unique number for tracking the mobile device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1927


<!-- page 1928 -->
Field

Description

PreUser who conducted the last audit.
enrollment ID
MAC
Address

MAC address of the mobile device.

Enrollment ID User conducting the current audit.
Phone
number

Phone number associated with the mobile device.

Enrollment
name

Name of the mobile device enrollment.

Platform

Platform of the mobile device. The available options are:
• Android
• iOS
• Windows
• ChromeOS
• Other

Enrollment
state

Current enrollment state of the device. The available options are:
• Enrolled
• Unenrolled
• Expired
• Pending enrollment
• Pending unenrollment

Purchased

Date on which the mobile device was purchased.

Enrollment
date

Initial enrollment date.

Upgrade
eligible date

Date on which the mobile device is eligible for an upgrade.

Last enrolled

Date of last enrollment.

Service
contract

Contract number associated with the mobile device.

Device
activated

Activation status of the mobile device. The available options are:
• Yes- The mobile device is activated.
• No- The mobile device isn't activated.

Related links
Calculate
Depreciation

Select to calculate the depreciation amount and residual value.

Delete
Assets Only

Select to delete the assets and not the associated CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1928


<!-- page 1929 -->
Field

Description

Related lists
Assets

Assets that 's related to the asset you created.

Expense
lines

Expense line associated with the asset.

RMA

Return Merchandise Authorization associated with the asset.

Case form
The Case form displays detailed information about a customer issue or problem.
A customer service agent creates a case to identify a customer's question or issue and to track
the activities related to resolving the issue. An agent also uses a case to track communication to
and from the customer, including the communication channels being used.
Case activities include any action that is taken to resolve an issue. This can include phone calls
or emails, knowledge base research, conversations with subject matter experts, and dispatch
requests to field service agents, as well as other activities.
From the Case form, an agent can associate and store the related information, such as the
customer's name, phone number, and company; account information; product and asset
information; service contract and entitlement details, and any associated service level
agreements (SLAs).
There are several key features to a case.
• Communication between an agent and the customer or an agent and other employees within
the organization. Details of all internal and external communication are recorded on the Case
form.
• Any additional tasks that result from a case, such as a work order. Tasks are tracked from a
related list on the Case form. These tasks may be internal to the organization or they may
involve the customer.
• Information from the case that can be included in the knowledge base and used to help
resolve other cases.
There are two different Case form views: a detailed view that is available to agents and agent
managers in the Customer Service Management application and a simplified view that is
available to external customers from the Customer and Consumer Service Portals.

Agent view
The agent view of the Case form includes the following components:
• A timeline that provides a visual display of case activities.
• Referenced entities for the case including account and contact information, product and asset
information, service contract and service entitlement details, and any pertinent SLAs. Except
for SLAs, this information exists in the system and can be associated with the case by the
agent or agent manager.
• All communication about the case, both external and internal. This information is stored in
the Additional comments field (external communication), the Work notes field (internal
communication), the Resolution notes field. The Resolution notes field stores details about
the case resolution, and the Activity field, which stores all communication in a chronological
list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1929


<!-- page 1930 -->
Agents and managers can view a Case form by navigating to Customer Support > Cases and
selecting one of the following menu options:
• My Cases
• All
• Open
• Unassigned
From the Case list, select a case number to display the Case form.
Customer Service Case form (agent view)
Field

Description

Number

Automatically assigned case number.

Channel

Method by which the customer initiated contact and the case was opened.
• Web (default)
• Phone
• Email
• Chat
• Social

Contact
Local Time

Local time of the contact assigned to the case.
This is automatically filled according to the time zone set on the Contact form.
If no time zone is set on the Contact form, it is filled according to the Contact
Timezone set on the case itself.
If no time zone is set on the Contact form or in the Case form, the field is left
blank and is read-only.
If a case is closed or canceled, the Contact Local Time field is hidden.

Note: Configure the form layout to add this field to the Case form.
Contact time Contact time zone if the customer is working in a different time zone for the case.
zone
This field overrides the Contact form time zone.
If no contact local time or contact time zone is set, the instance time zone is
displayed.
After the case is created, the field is read-only.

Note: Configure the form layout to add this field to the Case form.
Account

Name of the contact's company. This field is filled in automatically if the
information is available in the contact record.

Contact

Name of the customer contact for this case.

Consumer

Name of the consumer for this case.

Service
Name of business location.
Organization
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1930


<!-- page 1931 -->
Customer Service Case form (agent view) (continued)
Field

Description

Requesting Service organization for which this case is being requested.
Service
Organization
Product

Product model of the asset. A model is a specific version or configuration of an
asset (for example, Apple Mac Book Pro).
If you select an asset in the Asset field and the asset has an associated product,
the Product field is automatically updated. A product can be associated with
multiple assets.

Asset

Asset tag number or the serial number of the asset involved in this case.

Install base

The Install base field helps you track which products and services have been
purchased by a customer, how they have been installed or provisioned, along
with the detailed configuration for each installed item.

Partner
Contact

Name of the partner contact for this case.

Follow the
sun

Option to indicate that a case should be handed-off for global follow-up.
If a customer enters additional comments on a Priority 1 - Critical or aPriority 2 High case, or if the case is escalated, the flag is automatically selected.
The activity stream on the case form is updated with any changes.

Note: Enable the Follow the sun check box on the Customer
Service case form by setting the value of the property
sn_customerservice.FTS_flag_enabled to true. Configure the
form layout to add this field to the Case form.
Short
description

Brief description of the issue or problem.

Opened

Date and time that the case was opened.

Priority

The assigned priority:
• 1 — Critical
• 2 — High
• 3 — Moderate
• 4 — Low (default)

State

Customer service case states:
• New
• Open
• Awaiting Info
• Resolved
• Closed
• Canceled

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1931


<!-- page 1932 -->
Customer Service Case form (agent view) (continued)
Field

Description

Note: Configure the form layout to add this field to the Case form
Assignment
group

Assigned customer service agent group.

Assigned to

Assigned agent. If a group is selected in the Assignment group field, the
assigned agent must belong to this group.

Assigned on Date and time when the case is assigned.
This field is updated when a user is added or changed in the Assigned to field.
Contract

Contract number associated with this case.

Entitlement

Entitlement associated with this case. The entitlements available for selection
in the reference list channel matches the case creation channel. The available
entitlements are filtered by the settings in the Account, Consumer, and
Contract fields.
If only one entitlement is available for this case, it is automatically added to the
Entitlement field.
Starting with the Zurich release, agents can add multiple entitlements to a
case. If the sn_customerservice.advanced_entitlements system
property is set to true, the Case Entitlements related list is visible on the Case
form and the Entitlement field is hidden. For more information, see the following
topics:
• Add an entitlement to a case
• Properties installed with Customer Service Management

Partner

Name of the partner company.

Notes
Watch list

Work notes
list

Users who receive notifications about this case when additional comments are
added or if the state of a case is changed to Resolved or Closed. Select the add
me icon to add yourself to the watch list.
Internal users who receive a notification about this case when work notes are
added. You can only add internal users to the work notes list.
Select the add me icon to add yourself to the work notes list.
To enable notifications for users in the Work notes list field:
1. Navigate to the Notifications (sys_notification) table.
2. Select Case Action Status.
3. In the Who will receive tab, do one of the following:
◦ Add a user in the Users field.
◦ In the Recipients listed in fields field, add the Work notes list field.
4. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1932


<!-- page 1933 -->
Customer Service Case form (agent view) (continued)
Field

Description

Contributor
Users

When a user with the case task agent role
(sn_customerservice.case_task_agent) is assigned to a case task, the user is
added to the Contributor Users field.
If this user is removed from the Assigned to field on the Case Task form, and
they are not assigned to any other tasks for the case, thenn they are also
removed from the Contributor Users field.

Contributor
Groups

When a user with the case task agent role
(sn_customerservice.case_task_agent) is assigned to a case task, the user's
assignment group is added to the Contributor Groups field.
If this user is removed from the Assigned to field on the Case Task form, and no
other member of their assignment group is assigned to any other tasks for the
case, then the assignment group is removed from the Contributor Groups field.
If a group is removed from the Assignment group field on the Case Task
form, and the group is not assigned to any other tasks for the case, then the
assignment group is removed from the Contributor Groups field.

Additional
comments
Work notes

Customer-viewable comments. Each comment is inserted into the Activity field
when the user selects the Post button.
Information about how to resolve the case, or steps taken to resolve it, if
applicable.
Internal users who have been added to the Work notes list receive the Case
work notes added notification containing the work notes when added.
You can configure the notification, as required. The notes are viewable by the
admin, agent, and agent manager.

Activities

Records all activity associated with this case.

Resolution Information
Resolved by Agent to whom the case is assigned when the case is resolved.
Closed by

Name of the user who closed the case.

Resolution
Code

Choice list indicating the resolution states for the case.

Cause

Details about the cause of the resolution.

Resolution
notes

Details about how the case was closed. This field is mandatory if a customer
service agent or agent manager closes a case. If a customer closes a case, it is
not mandatory.

Add
resolution
notes to
comments

Option to determine if the resolution notes are added to customer-viewable
comments when the case is resolved.

This field is mandatory when an agent proposes a solution for a case.

If selected, the resolution notes are added to the Additional comments
(customer-visible) field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1933


<!-- page 1934 -->
Customer Service Case form (agent view) (continued)
Field

Description

Resolved

Date and time that the case was resolved.

Closed

Date and time that the case was closed.

Customer view
Customers can view a Case form by selecting My Cases on the customer portal and then
selecting a case number from their Case list.
The customer view of the Case form includes the following components:
• A process flow formatter that indicates the current state of the case.
• The related entity information, including account and contact information, product and asset
information, and service contract information.
• An Activity field that stores all communication for the case in a chronological list.
Case timeline
The timeline provides a visual display of case activities. The timeline appears at the top of
the Case form when viewed by an agent or manager in the Customer Service Management
application.
The timeline uses blue circles to represent case state changes and markers to represent case
activities. The information included in the timeline is also shown on the Case form in the Activity
history.
Customer Service Case Timeline

Header
The timeline header displays the time that the case began. It also displays the time that the case
was either last updated or closed.

State changes and case activities
Each state change for a case is represented by a blue circle on the timeline. Pointing to these
circles provides more information about the state change in a tooltip. For example, pointing to
the first blue circle that represents the New state displays the name of the user who created the
case and the approximate time that the case was created.
Activity lines above and below the timeline represent other case activities, including comments,
information requests, close notes, email, and phone calls. Activities performed by an agent are
shown above the timeline and activities performed by a customer are shown below. Pointing to
these activities on the timeline displays additional information.
Overlapping states and conversations are represented by thicker borders and thicker lines.
Pointing to overlapped states and conversations results in grouped tooltips.
If a case is ongoing, the end of the timeline shows the last updated activity or state change. If a
case is closed, the end of the timeline shows a blue circle that represents the Closed state.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1934


<!-- page 1935 -->
Time metric
The metric to the right of the timeline tracks the amount of time that a case is open. The date
and time that the case was opened is used as the start of the time calculation. When a case is
ongoing, the current time is used as the end time calculation. When a case is closed, the close
time is used as the end time calculation.
The metric breaks down the time by the number of minutes and hours that a case is with the
agent or with the customer. A case is considered to be with the agent when it is in the New,
Open, or Closed state.
When a case is in the Awaiting Info or Resolved state, it is considered to be with the customer.
Use the case timeline with other applications
You can use the Customer Service case timeline with other ServiceNow applications by creating
a configuration for each application and adding the ResolutionShaper field to the desired form.

Before you begin

Role required: admin

Procedure
1. Ensure that the Customer Service plugin (com.sn_customerservice) has been activated.
2. Navigate to the Resolution Shaper Configs page
(<instance>sys_resolutionshaper_config_list.do) and click New.
3. Select a table in the Task Table field.
4. Add the desired states in the Requestor States field using a comma-separated list.
For example, New,Active,Resolved,Closed.
5. Make any necessary changes to the remaining fields and click Submit.
6. Navigate to the desired form.
7. Right-click the form header and select Configure > Form Layout.
8. Using the slushbucket, select ResolutionShaper and move it to where you want the timeline to
appear.
9. Click Save.
Case process flow formatter
The process flow formatter provides a graphical summary of the stages of a customer service
case.
The process flow formatter is available in the platform interface when you select the Customer
Self Service view.
Process flow formatter

The process flow formatter appears at the top of the Case form. It highlights the current state of
the case and checks off the states through which the case has passed.
By default, the process flow formatter displays the following states:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1935


<!-- page 1936 -->
• New
• Open
• Resolved
• Closed
Related topics
Process flow formatter
Case form related lists
The Case form includes related lists that store case information and that agents can use to
perform case-related tasks.
Customer service case form related lists
Related List

Description

SLAs

The service level agreements that are associated with this case.

Tasks

Tasks that have been created for this case by the customer service agent
or agent manager. When you create a task or change the state of a task, the
information is recorded in the case Activity field.
When you create a case task, the system generates a task number with a prefix.
Following upgrade to the New York release:
• New case tasks use the CSTASK prefix.
• Existing tasks, regardless of state, use the TASK prefix.

Phone

The case phone log. A list of incoming or outgoing phone calls associated with
this case.

Appointments Appointments that the customer service agent makes with the customer or
others as part of resolving this case.
When you create an appointment, an appointment creation message is
recorded in the case Activity field. The user selected in the To field on the
appointment form receives an email with the appointment details.
Emails

The case email log. A list of the emails that are sent or received as part of
resolving this case.
The customer service agent or agent manager can send email from within
the case, such as updates and inquiries to customers or other employees. A
change in the state of the case triggers an automatic email to be sent to the
customer.
Customer contacts can create and update cases by email as well as receive
updates from customer service agents.

Problems

A list of problems related to this case.

Work Orders

A list of work orders created for this case.

Social Logs

A list of the communication with customers or consumers that takes place
through social media channels. The Social Log form includes the Social
Profile of the user that created the communication and the Social URL for the
conversation. Click the URL to open the conversation in a new tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1936


<!-- page 1937 -->
Customer service case form related lists (continued)
Related List

Description

Attached
Knowledge

Knowledge articles attached as a proposed solution to the case.

Knowledge
Gaps

Feedback tasks that are created when a knowledge gap is reported.

Escalations

A list of escalation records that are related to this case.

Child Cases

A list of child cases associated with this case

Requests

A list of requests associated with this case.

Blocked by

A list of blocking tasks that have been created for this case.

Related
Parties

A list of related parties, such as contacts or consumers added to the case.

Case states
A customer service case can be in one of several states as the agent gathers information and
works toward a resolution.
Customer service case states
Term

Definition

New

The initial state for a new case, which is created through any one of the channels:
customer portal, email, chat, telephone, or from the Customer Service application.
Actions the agent can take:
• Assign to me: The case is assigned to the agent and the state changes to Open.
• Accept: If assigned by the customer service manager, the agent accepts the case
and the state changes to Open.
• Update: updates the case.
• Close Case: Closes the case.
• Delete: Deletes the case.
Actions the customer can take:
• Update: updates the case.
• Close Case: Closes the case

Open

The case is assigned to an agent and the agent clicks Accept or an agent opens a
case and clicks Assign to me. Both of these actions change the state from New to
Open.
Actions the agent can take:
• Update: Updates the case.
• Request Info: The agent requests additional information from the customer. The
state changes to Awaiting Info.
• Propose Solution: The agent proposes a solution for the case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1937


<!-- page 1938 -->
Customer service case states (continued)
Term

Definition

Note: The Resolution Code and Resolution notes must be entered in the
Resolution Information tab.
The state changes to Resolved.
• Close Case: Closes the case.
• Delete: Deletes the case.
Awaiting
Info

An agent clicks Request Info, changing the state from Open to Awaiting Info.
Actions the agent can take:
• Open Case: Changes the state back to Open.
• Update: Updates the case
• Close Case: Closes the case.
• Delete: Deletes the case.
Actions the customer can take:
• Update: Once the customer updates the case, the state changes to Open.
• Close Case: Closes the case.

Resolved An agent provides a resolution code and enters resolution notes in theResolution
Information tab and clicks Propose Solution, changing the state from Awaiting Info
to Resolved.
The Resolution code and Resolution notes fields are mandatory when an agent
proposes a solution for the case.
Actions the agent can take: Update (Updates the case)
Actions the customer can take:
• Accept Solution: The customer accepts the solution proposed by the agent. The
state changes to Closed and a survey is displayed.
• Reject Solution: The customer rejects the solution proposed by the agent and the
state changes to Open.
• Delete: Deletes the case.
• Close Case: Closes the case.
Closed

After proposing a solution, an agent waits for the customer to respond.
• If the customer clicks Accept Solution, the state changes from Resolved to
Closed.
• If the customer clicks Reject Solution, the state changes from Resolved to Open.
An agent, agent manager, or a customer can close a case at any time, except when
it is in the Resolved state. When it is in the Resolved state, only a customer can
accept or reject the proposed solution.
When an agent or agent manager closes a case, details must be included in the
Resolution notes. This is not required when a customer closes a case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1938


<!-- page 1939 -->
Customer service case states (continued)
Term

Definition

A case cannot be updated once it is closed.
Related topics
State flows
Create a case for a new install base item
Create a case for a new install base item by using the case form in the CSM Agent Workspace.

Before you begin

Role required: sn_customerservice_agent or sn_customerservice.consumer_agent

Procedure
1. Navigate to All > Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, navigate to Cases > My Cases.
3. Select New.
4. Perform one of the following actions before selecting an install base item on the Create Case
form.
For a description of the field values, see Case task form.
Field

Action

Account

Select an account that has to be associated
with the install base.

Consumer

Select a consumer that has to be associated
with the install base.

Install base

Select an install base item to automatically
fill in the relevant details from the install base
form.

5. Next to the Install Base field, select the search icon
the pop-up window.

, and then select the install bases from

The pop-up window displays only the list of install base items that are related to the selected
account or consumer.
6. In the Short Description field, enter a description of the install base item.
7. Save the form.
A new case with the install base item details appears in the My cases list.
Migrating the install base information for existing cases
Your customer service agents can use the case form on the CSM Agent Workspace to add an
install base item to an existing case.
To populate existing cases with the install base information, agents can use the following sample
script:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1939


<!-- page 1940 -->
var installBaseMigrationUtil = new
sn_install_base.InstallBaseMigrationUtils();
installBaseMigrationUtil.populateInstallBaseOnCases();
The migration script populates cases with the install base information, only if the case is
associated with the install base item. To associate a case to an install base item, see Associate
multiple Install base items to a case.
Assign a partner contact on the case form
Enable Customer Service Management agents to assign partner contacts for an account that is
associated to an install base item on the case form. By adding partner contacts, you can provide
access to multiple partners to access their accounts.

Before you begin

Role required: customer service agent

Procedure
1. Navigate to CSM/FSM Configurable Workspace > Cases > My Cases.
2. Select New.
3. In the Install Base field, use the search icon
to add an install base item on the Create Case
form.
The Account and Contact fields are automatically filled from the install base form. For a
description of the field values, see Case task form.
4. In the Partner field, use the search icon to
search for a partner associated with the
selected account.
The partner in the Partner field is the partner account that is associated with the account.
5. In the Partner Contact field, enter an eligible partner contact who has the following criteria:
◦ All partner contacts of the partner account are eligible if the Restrict Account Access isn't
enabled.
◦ All partner contacts with the partner admin role are eligible if Restrict Account Access is
enabled.
◦ Partner contacts that are added as an Authorized Representative through the related party
list for the install base item.
◦ Partner contacts that are added as an Authorized Account through the related party list for
the install base item.
To add a related party to an install base item, see Add related parties to an install base item.
6. Select Submit.

Result

A partner contact is assigned to the case.

Case line item form
The case line item form displays details about a case line item on a case record.
Agents can use the case line item form to create a new case line item record and to view and edit
an existing case line item record. When editing, agents can:
• Change the reason code
• Change the Priority, Assigned to, and Contact
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1940


<!-- page 1941 -->
To access a case line item record, navigate to All > Customer Service > Cases > All Line Items
and select a record. Users with the following roles can access this list: system administrator,
customer service agent, and customer service manager.
The case line item form includes the following related lists:
• Case Line Tasks
• Case Line Characteristics
Case line item form fields
Field

Description

Number

The automatically generated record number. The prefix
for numbers from the Case Line table is CSL.

Parent case

The parent case for the case line item record. This field
is mandatory.

Parent case line

The parent case line for the case line item record. This
field supports the case lines hierarchy.

Top case line

The top case line for the case line item record. This field
supports the case lines hierarchy.

Account

The name of the company that the case is opened for.

Contact

The name of the customer contact for the case.

Product offering

This field is a reference to the Product Offering table
[sn_prd_pm_product_offering].

Product specification

This field is a reference to the Product Specification
table [sn_prd_pm_product_specification].

Product model

This field is a reference to the Product Model table
[cmdb_model].

Short description

A brief description of the case line item record.

State

A case line item record can be in any of the following
states:
• Draft
• New
• Work in Progress
• Awaiting Info
• Resolved - Accepted
• Resolved - Denied
• Canceled
If all of the case line items on a record are in one of the
following terminal states, the system syncs the record
state to the case line item state:
• Resolved - Accepted
• Resolved - Denied
• Canceled

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1941


<!-- page 1942 -->
Case line item form fields (continued)
Field

Description

Actions such as Submit Case and Assign to me change
the state of the case and the case lines.
Priority

The priority of the case line record:
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low
• 5 - Planning

Assigned to

The agent assigned to the case line item record.

Request reason code

The reason for the requested change. Can be different
for each case line item.
• Increase Demand
• Change in Contract
• Initial input incorrect
• None

Sold product

This field is a reference to the Sold Product table
[sn_install_base_sold_product].

Install base

This field is a reference to the Install Base Item table
[sn_install_base_item].
If the Account field is populated, this field displays the
install base items for the selected account.

Asset

This field is a reference to the Asset table [asset].
If the Account field is populated, this field displays the
assets for the selected account.
If the Product model field is populated, this field
displays the assets associated to the selected product
model.
If both the Account and Product model fields are
populated, this field displays the assets associated with
selected account and product model.

Resolution code

A code that indicates the resolution state of the case
line item record.
• Change approved
• Added replacement product

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1942


<!-- page 1943 -->
Case line item form fields (continued)
Field

Description

Resolution Notes

The agent can use this field to specify how they reached
the decision to either accept or deny a change to a case
line item.

Contributor Users

This field is populated when a case line task is assigned
to a case task agent.

Contributor Groups

This field is populated when a case line task is assigned
to a case task agent.

Work notes

Enables users to post work notes to the record.

Case line task form
The case line task form displays details about a case line task associated with a case line item on
a case record.
Case line task form fields
Field

Description

Number

The automatically generated record number. The prefix
for numbers from the Case Line Task table is CSLTASK.

Parent case

The parent case of the case line item.

Account

The name of the company that the parent case is
opened for.

Contact

The name of the customer contact for the parent case.

Case line

The number of the case line item that the task is created
for.

State

The state of the case line task:
• Open
• Closed

Priority

The priority of the case line task:
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low

Assignment group

The assigned customer service agent group.

Assigned to

The agent assigned to the case line task.

Subject

The subject of the case line task.

Description

A longer, more detailed description of the case line task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1943


<!-- page 1944 -->
Case line task form fields (continued)
Field

Description

Work notes list

A list of users who are interested in the case task. These
users receive a notification when work notes are added
to the case task.

Work notes

Information about the case task and the steps taken to
resolve it. Work notes are posted to the activity stream
and are visible only to internal users.

Additional comments

Customer-viewable comments and information about
the case task. Additional comments are posted to the
activity stream.

Case line characteristic form
The case line characteristic form displays details about the product offering included in a case
line item.
Case line characteristic form fields
Field

Description

Number

The automatically generated record number. The prefix
for numbers from the Case Line Characteristics table is
CSLC.

Case line

The case line item that this characteristic belongs to.
This field is a reference to the Case Line table.

Characteristic

This field is a reference to the Characteristic table
[sn_prd_pm_characteristic].

Characteristic option

This field is a reference to the Characteristic Option
table [sn_prd_pm_characteristic_option].

Characteristic value

The value of a characteristic.

Case line entitlement form
The case line entitlement form displays information about an entitlement associated with a case
line item.
Case line entitlement form fields
Field

Description

Case line

The case line that the entitlement is associated with.

Entitlement

The selected entitlement.

Domain

The domain that the entitlement belongs to.

Case Report form
The Case Report form includes reporting-related fields that are derived from case records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1944


<!-- page 1945 -->
The Case Report table (sn_customerservice_case_report) extends from the Customer Service
Case table (sn_customerservice_case). This table stores KPIs and metrics for case records and
includes the following calculated metrics which are displayed on the Customer Service Manager
dashboard.
• Agent Reassignment Count
• First Contact Resolution
• Reopen Count
The Customer Service Manager dashboard includes the First Call Resolution indicator, which
shows the percentage of cases that were resolved during the first contact with the customer. The
percent change in the current period appears under the total percentage. The value for the First
Call Resolution indicator is returned by the CaseReportUtils script include.
Customer Service Case Report form fields
Field

Definition

Number

The automatically generated case report number.

First Contact
Resolution

Records whether a case was resolved during a customer’s first contact with
an agent.
This field can have one of the following values:
• 0: None (default value)
• 1: True
• 2: False
For more information about how this field is calculated, see First Call
Resolution (FCR) metric below.

Agent
Reassignment
Count

The number of times that a case has been reassigned to a different agent.
The default value is 0.

Reopen Count

The number of times a case has been closed and reopened. The default
value is 0.

Skipped by
Prediction

Used to identify cases that are skipped by the Predictive Intelligence feature.
The default value is false (disabled).

Case

The case for which this case report was generated.

Customer
Satisfaction
Score

The customer gives the customer satisfaction score on accepting the case
resolution.

Time to Resolve

Time taken by an agent to resolve the case. Calculated as the difference
between the case resolved time and case created time.

First Call Resolution (FCR) metric
The First Call Resolution (FCR) metric relates to the number of times that a customer request is
resolved during the first contact with an agent. Out of box, the First Call Resolution script returns
a value of true or false.
FCR is true if a record has one update. For example, if the state of a new case is set to Closed
and then updated or saved, the FCR value is True.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1945


<!-- page 1946 -->
FCR is false if:
• A case is reopened.
• The state of a case is updated to Awaiting Info.
• An Openframe phone record exists for the case and the date of that record is prior to the case
resolution date.
• An email log exists for the case, the email was not created by the system, and the email
creation date is prior to the case resolution date.
• A work order entry exists for the case and the date of that work order is prior to the case
resolution date.

Case task form
The case task form displays information about case tasks, which are created and assigned to
users to complete the work necessary to resolve customer service cases.
The case task form includes the following fields.
Case task form fields
Field

Description

Number

The automatically assigned case task number.

Parent case

The number of the parent case. This can be a case from
the Case [sn_customerservice_case] table or any child
tables of the Case table.

Parent

The number of the parent record if the task is created
from a type of record other than a case. This field is
populated when a case task is created from a non-case
record such as an incident, problem, change, or request.
This field is a reference to the Task [task] table.

Note: You may need to configure the case task
record to display the Parent field.
Contact

The contact for the parent case. This field is a reference
to the Contact [customer_contact] table.

Account

The account for the parent case. This field is a reference
to the Account [customer_account] table.

Consumer

The consumer for the parent case. This field is a
reference to the Consumer [csm_consumer] table.

Subject

The subject of the case task.

Description

A description of the work that needs to be done in order
to complete the case task.

Service

If a service has been selected for a case task,
the service is displayed in this field. The Service
field is a reference to the Service Definitions table
(sn_case_type_selection).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1946


<!-- page 1947 -->
Case task form fields (continued)
Field

Description

Note: The Customer Service plugin
(com.sn_customerservice) and the
Customer Service Case Types plugin
(com.snc.csm_case_types) are required for the
Service field to appear on case task lists and
forms.
Priority

The assigned priority of the case task:
• 1 - Critical
• 2 - High
• 3 - Moderate
• 4 - Low (default)

State

The current state of the case task:
• Open
• Closed

Assigned to

The assigned user.

Service

This field is a reference to the Service [cmdb_ci_service]
table.

Work notes list

Internal users who receive a notification about this case
when work notes are added. You can only add internal
users to the work notes list.

Work notes

Information about the case task, such as steps taken
toward resolution. Internal users who have been added
to the Work notes list receive a notification when work
notes are added to a case task.

Additional comments

Customer-viewable comments. Each comment is
inserted into the Activity field when the user selects
Post.

Visible to customer

If this check box is enabled, the case task is visible to
end users from the Customer or Consumer Portals.

Case Type form
Use the Case Type form to manage the settings for a case type.
To access a Case Type form, navigate to Customer Service > Case Types > Manage Case Types
and select a case type from the list.
Customer Service Case Type form fields
Field

Definition

Table

The table for the case type that extends the Case table
(sn_customerservice_case).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1947


<!-- page 1948 -->
Customer Service Case Type form fields (continued)
Field

Definition

Category

An optional category for a case type. When creating cases, customer service
agents can filter the available case types by category in the Select Case Type
popup window.
The Customer Service Case Types plugin (com.snc.csm_case_types) includes the
following categories:
• Onboarding
• Complaint
• Orders
• General

Subtype

An optional sub-category for a case type. When creating cases, customer service
agents can filter the available case types by category and then by subtype in the
Select Case Type popup window.
The Subtype field displays fields from the selected Table that are of the following
type:
• Choice list
• Reference

Short
A brief description of the case type.
description

Related links
The Case Type form includes the following related links:
• View Case Type Configuration: View the current configuration for this case type table.
• Launch Guided Setup for Case Types: Go to the Case Types setup tasks in Customer Service
Guided Setup.
• Launch Guided Setup for AWA: Go to the Advanced Work Assignment (AWA) setup tasks in
Agent Workspace Guided Setup.
• Launch Guided Setup for Agent Workspace: Go to the Agent Workspace for CSM setup tasks
in CSM Guided Setup.

Related lists
The Case Type form related lists display items configured for the case type table. Use the related
lists to create additional configurations.
• Record Producers
• State Flows
• Special Handling Notes
• Notification Triggers
• SLAs
• Email Templates

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1948


<!-- page 1949 -->
• Quick Messages
• Reports

Contact Relationship form
The Customer Service Management application uses the Contact Relationship form to store
information about the account, contact, and assigned responsibility in a contact relationship.
Contact Relationship form fields
Field

Definition

Account

The account to which the contact is assigned. This field is automatically filled
in.

Contact

The customer contact selected to fulfill the role or responsibility.
The Contacts list includes contacts from any related partner or account as well
as contacts from the account hierarchy.

Responsibility The role or responsibility selected for this customer contact.

Note: As part of creating a responsibility definition, the admin can
specify if the responsibility is unique. If so, the responsibility can only be
assigned to one contact per account. For more information, see Create
account teams.

External Business Location form
In the Customer Service Management (CSM) application, the Service Model Foundation uses
the External Business Location (EBL) form to store information about an external business
location. This information includes the staff members assigned to that location, cases, sold
products, and install base items created for customers.
External Business Location form fields
Field

Definition

Number

Automatically generated number of the
external business location. By default, location
numbers start with the prefix EBL.

Name

Name of the external business location.

Type

Type of organization. Select any one of the
following:
• Business location: Physical location of a
business where a business operates
• Business group: An organization that might
also consist of a collection of parent and
child companies operating as a single entity.

Business function

Type of functions offered at a business
location. Select the following business
function:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1949


<!-- page 1950 -->
External Business Location form fields (continued)
Field

Definition

• Service: Select this type if a business
location provides service-related functions,
such as providing support, or resolving
cases for accounts, consumers, or other
business locations.
• Sales: Select this type if a business
location provides sales-related activities,
such as creating or managing orders,
generating quotes, handling opportunities
or leads, managing pricing, offering product
recommendations, or supporting accountbased selling for accounts, consumers, or
other business locations.
• Service and Sales: Select both service and
sales if the business location is providing
both service-related and sales-related
activities.

Note: You can create and manage
orders and cases by selecting both
types of business functions.
Manager

Manager of the external business location.

Note: Both internal and external users
can be added as managers for external
business locations.
Parent Business Location

Parent of the business location. Use this field
to create a parent-child hierarchy.

Street

Street address of the external business
location.

City

City where the external business location is
located.

State/Province

State or province where the external business
location is located.

ZIP/Postal code

ZIP code or postal code for the external
business location.

Customers served

Types of customers who are served at a
business location. Customers served can be
defined using two options:
• All Customers: Enables service organization
staff to create and resolve issues for all the
customers.
• Criteria-based: Enables service
organization staff to create and resolve

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1950


<!-- page 1951 -->
External Business Location form fields (continued)
Field

Definition

issues only for customers associated with
the service organization using a criteria.
Associate a channel partner to add roles in
the Service Organization tab.
Website

Web address for the internal business
location.

Email

Email ID used by the internal business
location.

Phone

Phone number for the internal business
location.

Open date

Date on which the business location becomes
operational and available for customers.

Close date

Date on which the business location
becomes non-operational and unavailable for
customers.

Note: The closed date must not be
earlier than the open date.
Status

Current status of the business location
whether In progress, Operational, nonoperational, or closed.

Description

Description of the business location.

External business location related lists
The External Business Location form includes the following related lists.
Related lists for the External Business Location form
Related list

Description

Members

Internal and external users who have been
added as staff members at this business
location.
• Staff members can create cases for
customers at their business locations.
• Staff members can access customer
cases and information where the Service
Organization field on the Case form
matches their business locations.
For more information about adding staff
members to an external business location, see
Add staff members to a business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1951


<!-- page 1952 -->
Related lists for the External Business Location form (continued)
Related list

Description

Child External Business Locations

List of external business location records.
For more information about creating external
business locations, see Create an external
business location.

Assignment Groups

List of all associated assigned groups of the
internal business location.
For more information, see Setting up
assignment groups.

Available Services

List of services supported by the business
location.
For more information, see Setting up products
and available services at a business location.

Customer Projects

List of all projects assigned to the business
location. Select a project to see Project Tasks,
Sub Projects, and Cases assigned to the
project.

Note:
• A location manager can see projects
of their respective and child business
locations. To learn more about roles,
see Service Model Foundation roles.
• A list of project tasks under the
customer project tab is visible only if
the Visible to Customer is selected
during project task creation.
To learn more about project creation, see
Create customer projects.
To learn more about project task creation, see
Create a project task from a project .
Service Organization Customer Criteria

List of customers supported by an external
business location.
For more information about associating
customer criteria to an external business
location, see Define the configuration type for
customers or business locations.

Cases Requested by Location

Cases that have been created and requested
by this location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1952


<!-- page 1953 -->
Related lists for the External Business Location form (continued)
Related list

Description

For more information about assigning cases to
an external business location, see Create and
manage cases for a business location.
Cases Assigned to Location

Cases that have been created and assigned to
this location.
For more information about creating and
managing cases, see Create and manage
cases for a business location.

Note: This tab appears only if the
business function is set as Service.
Account Staff Relationships

Relationships that have been created between
staff members and accounts at this location.
Account staff relationships are created using
the Account Manager responsibility.
For more information about creating an
account staff relationship, see Create an
account staff relationship.

Consumer Staff Relationships

Relationships that have been created between
staff members and consumers at this location.
Consumer staff relationships are created using
the Relationship Manager responsibility.
For more information about creating a
consumer staff relationship, see Create a
consumer staff relationship.

Household Staff Relationships

Relationships that have been created between
staff members and households at this location.
Household staff relationships are created
using the Relationship Manager responsibility.
For more information about creating a
household staff relationship, see Create a
household staff relationship.

Sold Products

Sold products that have been created for
customers at this location.
To learn more about creating and managing
sold products for an external business
location, see Create and manage sold
products for a business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1953


<!-- page 1954 -->
Related lists for the External Business Location form (continued)
Related list

Description

Install Base Items

Install base items that have been created for
customers at this location.
For more information about creating and
managing install base items for an external
business location, see Create and manage
install base items for a business location.

Related topics
Create an internal business location
Service Model Foundation relationships

Household form
Service Model Foundation uses the household form to store details about a consumer
household, including its members, their relationships, and any cases, entitlements, or contracts
associated with them.
Household form fields
Field

Definition

Name

The name of the household.

Number

The automatically generated number of the household. By default, household
numbers start with the prefix HOLD.

Head of
household

The consumer in charge of the household.
• When creating a household record, select a consumer from the Consumer
table.
• When updating an existing household record, select a consumer from the
current members of the household.

Street

The street address of the household.

City

The city in which the household resides.

State/
Province

The state or province in which the household resides.

ZIP/Postal
code

The ZIP code or postal code for the household.

Country

The country in which the household resides.

Notes

Additional information about the household.

Household related lists
The Household form includes the following related lists.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1954


<!-- page 1955 -->
Household form related lists
Related list

Description

Current Members

The consumers who are current members of
the household.

All Members

Current and past members of a household.
As members are added or removed from a
household, the member history is retained in
this related list.

Member Relationships

Relationships that have been created between
members of this household.
Member relationships are created using the
Authorized Representative responsibility.
Household members that have an Authorized
Representative relationship with another
household member can act on behalf of
that member and can manage cases for that
member.

Household Team

Relationships that have been created between
internal users and this household.
Household staff relationships are created
using the Relationship Manager responsibility.
Internal users that have a Relationship
Manager relationship with a household can
manage all the cases for that household.

Cases

Cases that have been created for this
household and the members of this
household.

Related topics
Create or update a household

Internal Business Location form
In the Customer Service Management (CSM) application, the Service Model Foundation uses
the Internal Business Location (IBL) form to store information about an internal business location.
This information includes the staff members assigned to that location, cases, sold products, and
install base items created for customers.
Internal Business Location form fields
Field

Definition

Number

Automatically generated number of the internal business location. By default, the
location numbers start with the prefix IBL.

Name

Name of the internal business location.

Type

Type of organization. Select any one of the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1955


<!-- page 1956 -->
Internal Business Location form fields (continued)
Field

Definition

• Business location: Physical location of a business where a business operates
• Business group: An organization that might also consist of a collection of parent
and child companies operating as a single entity.
Business
function

Type of functions offered at a business location. Select the following business
function:
• Service: Select this type if a business location provides service-related
functions, such as providing support, or resolving cases for accounts,
consumers, or other business locations.
• Sales: Select this type if a business location provides sales-related activities,
such as creating or managing orders, generating quotes, handling opportunities
or leads, managing pricing, offering product recommendations, or supporting
account-based selling for accounts, consumers, or other business locations.
• Service and Sales: Select both service and sales if the business location is
providing both service-related and sales-related activities.

Note: You can create and manage orders and cases by selecting both
types of business functions.
Manager

Manager of the internal business location.

Note: Only internal users can be added as managers for the internal
business locations.
Parent
Internal
Business
Location

Parent of the business location. Use this field to create a parent-child hierarchy.

Street

Street address of the internal business location.

City

City where the internal business location is located.

State/
Province

State or province where the internal business location is located.

ZIP/Postal
code

ZIP code or postal code for the internal business location.

Customers Type of customers who are served at a business location. The customers served
served
can be defined with two options:
• All Customers: Enables service organization staff to create and resolve issues
for all the customers.
• Criteria-based: Enables service organization staff to create and resolve issues
only for customers associated with the service organization using certain
criteria.
Associate a channel partner to add roles in the Service Organization tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1956


<!-- page 1957 -->
Internal Business Location form fields (continued)
Field

Definition

Website

Web address for the internal business location.

Email

Email ID used by the internal business location.

Phone

Phone number for the internal business location.

Open date

Date on which the business location becomes operational and available for
customers.

Close date

Date on which the business location becomes non-operational and unavailable
for customers.

Note: The closed date must not be earlier than the open date.
Status

Current status of the business location whether In progress, Operational, nonoperational, or closed.

Description Description of the business location.

Internal business location related lists
The Internal Business Location form includes the following related lists.
Internal business location related lists
Related list

Description

Members

Internal users (users with the snc_internal role)
who have been added as staff members at this
business location.
• Staff members can create cases for
customers at their business locations.
• Staff members can access customer
cases and information where the Service
Organization field on the Case form
matches their business locations.
For more information, see Add staff members
to a business location.

Child Internal Business Locations

List of internal business location of the current
parent business location.
For more information, see Create an internal
business location.

Child External Business Locations

List of external business location of the current
parent business location.
For more information, see Create an external
business location.

Assignment Groups

List of all associated assigned groups of the
internal business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1957


<!-- page 1958 -->
Internal business location related lists (continued)
Related list

Description

For more information, see Setting up
assignment groups.
Available Services

List of services supported by the business
location.
For more information, see Setting up products
and available services at a business location.

Service Organization Customer Criteria

List of customers that are supported by an
internal business location.
For more information, see Define the
configuration type for customers or business
locations.

Customer Projects

List of all projects assigned to the business
location. Select a project to see Project Tasks,
Sub Projects, and Cases assigned to the
project.

Note:
• A location contributor manager or
location relationship manager can
see projects of their respective and
child business locations. To learn
more about roles, see Service Model
Foundation roles.
• A list of project tasks under the
customer project tab is visible only
if the Visible to Customer field is
selected during project task creation.
To learn more about project creation, see
Create customer projects.
To learn more about project task creation, see
Create a project task from a project .
Cases Requested by Location

List of all cases requested by the internal
business location to work.
For more information, see Create and manage
cases for a business location

Cases Assigned to Location

Cases that have been created and assigned to
this location.
For more information, see Create and manage
cases for a business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1958


<!-- page 1959 -->
Internal business location related lists (continued)
Related list

Description

Note: This tab appears only if the
business function is set as Service.
Account Staff Relationships

Relationships that have been created between
staff members and accounts at this location.
Create account staff relationships by using the
Account Manager responsibility.
For more information, see Create an account
staff relationship.

Consumer Staff Relationships

Relationships that have been created between
staff members and consumers at this location.
Create consumer staff relationships by using
the Relationship Manager responsibility.
For more information, see Create a consumer
staff relationship.

Household Staff Relationships

Relationships that have been created between
staff members and households at this location.
Create household staff relationships by using
the Relationship Manager responsibility.
For more information, see Create a household
staff relationship.

Sold Products

Sold products that have been created for
customers at this location.
For more information, see Create and manage
sold products for a business location.

Install Base Items

Install base items that have been created for
customers at this location.
For more information, see Create and manage
install base items for a business location.

Related topics
Create an internal business location
Service Model Foundation relationships

Queue registration form for recommendation process
The Recommended Actions use the queue registration form to create queues for
recommendation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1959


<!-- page 1960 -->
Queue Registration form
Field

Description

Suffix

Suffix of the queue. For example, ra_processor_queue_1.

Application

Associated application name or identifier.

Queue

Title of the selected queue. For example,
sn_nb_action.ra_processor_queue_1.

Automatic Job Scheduling

Option to enable the automated job schedule for the queue.

Event Processing Order

Sequence in which events are processed.

Job Configuration type

Definition of how jobs are configured or processed.

Scale Factor

Number of polling jobs created for a particular queue.

Note:
Each application node gets a job and an order
according to queue. The customer can increase the
value up to a maximum of 3. Increasing the scale factor
creates more polling jobs according to application
node for that queue.
For configuring queues, Only one queue with two scale
factor and a 5-second poll interval is shipped out of the
base system.
For a higher load, adjust scale factors accordingly.
Poll Interval

The poll interval is the waiting time before the queue is
processed. It determines how often the queue is polled, that
is, how frequently new events are fetched.
Decreasing the value to a lower number might cause
acquiring most of the worker threads. Those threads are
picked for RA use-case and can cause delays to other tasks
on the instance.
The poll interval displays the duration in:
• Days: Shows the number of days the queue has been
added.
• Hours: Indicates the duration (in seconds, minutes, or
hours) that an event has been in the queue once added.

Description

Additional details about the queue.

Service Definition form
In the Customer Service Management (CSM) application, the Service Definition form displays
information about a service definition configuration. This information record stores the details
about a service that is provided to customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1960


<!-- page 1961 -->
Service Definition form
Field

Description

Number (deprecated)

The unique number of the service definition record.

Note: Starting with the Washington DC release, this
field has been replaced with the ID field.
Name

The name of the service definition.

ID

The ID of the service definition.
The system auto-populates the ID field with the name of the
service definition and replaces the spaces with underscores.
The ID can contain alphanumeric characters and underscores
and can be up to 40 characters in length.

Note: The value in this field must be unique.
Table

The table that the service definition is available for, either the
Case table or a table that extends the case table.
For example, if the service is available for the onboarding case
type, select the Onboarding Case [sn_onboarding_case] table.

Customer service type

The type of service:
• Pre-sale
• Post-sale
• General
A service type enables the system to display services based
on the context.

Playbook record generator

The playbook record generator associated with the service
definition.
If a service definition has an associated playbook, the agent
can use the playbook in a tab on the case record. For more
information, see Associate a playbook with a service definition.

Image

The image associated with the service definition.
Service definitions appear in the case type selector or case
task type selector in a card view. The image appears in
the card for a service definition along with the name and
description.

Order

This value determines the order in which the services are
displayed in the case type selector or other workflows. Service
definitions with the lowest order value are displayed first. The
default value is 100.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1961


<!-- page 1962 -->
Service Definition form (continued)
Field

Description

• Service definitions with no order value appear above the
ordered service definitions.
• If one or more service definitions have the same order value,
the system displays the service definitions in alphabetical
order.
Active

Enables the service definition.

Use service catalog item

This check box enables the admin to specify the service
definitions that launch record producers.

Description

The description of the service definition.
Service definitions appear in the case type selector in a card
view. The card includes the name, description, and image for
a service definition. Customer service agents can search for
services by entering keywords found in the service definition
name and description.

Default table field values

One or more fields and default values from the target table (the
table that you selected in the Table field). When a record is
created for the target table for service definitions, the system
uses these values to automatically fill in the record fields.

After creating and saving a service definition, the following related lists are available on the
Service Definition form:
• Product Service Relationships
• Catalog Service Relationships
• Service to Service Relationships
• Service Definition Category Relationships
• Reports

Sold product form
Descriptions of the fields on the sold product form.
Sold Product
Field

Description

Name

Name of the product or service sold.

Parent Sold Product

Parent of the sold product, if applicable.

Account

Account that is associated with the sold
product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1962


<!-- page 1963 -->
Sold Product (continued)
Field

Description

Note: If you select an account, the

Household, Service Organization,
and Consumer fields are hidden. The
Consumer field is active only when the
B2B2C plugin is installed.
Billing account

Enables direct reference to the associated
Billing Account on the Sold Product entity
®
within ServiceNow CRM allowing agents to
access financial information instantly during
service delivery.

Contact

Contact that is primarily responsible for the
sold product.

Note: Only the contacts that belong
to the chosen account are shown in the
Contact column.
Consumer

Consumer that is associated with the sold
product.

Note: This field is active only when the
B2B2C plugin is installed.
Product

Product model that the sold product belongs
to.

Household

Household to which this sold product belongs
to.

Note: If you select a household, the
Service Organization, Account, and
Contact fields are hidden.
Service Organization

Internal or external entity that is involved in
providing a service to the customer.

Note: If you select a service

organization, the Household, Account,
Contact, and Consumer fields are
hidden. The Service Organization field is
active only when the service organization
plugin is installed.
Service Offering

Service offering that is associated with the
sold product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1963


<!-- page 1964 -->
Sold Product (continued)
Field

Description

Note:
• The Service Offering field may not
appear by default in the user interface.
If it doesn't appear, add the Service
Offering field by using the form layout.
• If the product model already has a
service offering that is associated with
it, this field is automatically populated.
Product Offering

Product offering that is associated with a sold
product.

Note: The Product Offering field
appears only to CSM agents, managers,
and the contributor persona.
Quantity

Quantity of a product that is sold to a
customer.

Unit of measurement

Measurement of entitlements and products
that a customer has purchased.

Note: The Unit of measurement field
appears only to CSM agents, managers,
and the contributor persona.
Offering type

Type of product offer that is associated to a
sold product.

Note: Only the sold products that have
an offering type as product appear in
the sold product related lists on the
Accounts page.
The default value of the field remains as
Product.
Relationship type

Relationship of a sold product that supports
implicit entitlements.

Note: The default value of the
Relationship field is None.
Product location

The service location of the sold product.

Start and end dates

The existing Add order to Sold product to
create Sold product state is changed to In
Preparation if the start date >current date. If
current_date >= start_date and
current_date <= end_date then the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1964


<!-- page 1965 -->
Sold Product (continued)
Field

Description

state is changed to Active. If current_date
> end_date then the state is changed to
Expired.
Product specification

The product specification associated with a
sold product.

Note: The Product specification
field is available only if you have the
Product Catalog Management Core
(com.sn_prd_pm) plugin and is not
available on the form by default.
Provider service organization

The service organization that sells and
supports the products or services owned by
the customer.

Note: New fields are added to enhance the traceability for subscription-based products.
Add columns to the Sold Product base table and use the Split from and Split from Root
fields to track lineage during upsells, downsells, and expiration date changes ensuring
accurate order management, compliance, and analytics.

Subscription & Pricing
Field

Description

Term (months)

Validity of a product or service in terms of
number of months.

Subscription start date

Start date of access to a product or service.

Subscription end date

End date of access to a product or service.

Price list

Price list used to derive prices while
purchasing a product or service.

Unit net price

Net price of a single unit of a sold product.

Pricing method

Periodicity

Pricing method associated to a sold product,
whether recurring or one-time.
Frequency of the pricing method, whether it’s
weekly, monthly, annually, and so on.

Note: You can set periodicity only if the
pricing method is recurring.
One time price

One-time price to be paid for the usage of a
product or service.

Monthly recurring price

Price to be paid on a monthly basis for the
usage of a product or service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1965


<!-- page 1966 -->
Subscription & Pricing (continued)
Field

Description

Annual recurring price

Price to be paid on a yearly basis for the usage
of a product or service.

Cumulative one time price

One-time price to be paid for the parent line
and all the child line items.

Cumulative monthly recurring price

Price to be paid on a monthly basis for the
parent line and all child line items.

Cumulative annual recurring price

Price to be paid on a yearly basis for the
parent line and all child line items.

Cumulative net price

Total value of the sum of cumulative one-time
net price and cumulative monthly recurring
price multiplied by term.
Cumulative net price = Cumulative one time
price +Cumulative monthly recurring price *
Term

Unit base price

Allow users to capture the base price of the
specific sold product.

Sales agreement line

Allow users to capture the sales agreement
directly when creating a sold product.

Unit list price

Allow users to capture the list price of the
specific sold product.

Task Plan Template form
The Task Plan Template form displays details about a task plan template record.
The Task Plan Template form includes the following fields on the Details tab. After creating and
saving a task plan template record, the system adds the Template Items tab to the form.
Task Plan Template form fields
Field

Description

Name

The name of the task plan template

Number

The automatically generated record number.

Short description

A brief description of the task plan template.

Target record

You can apply the task plan template to an existing record in
the selected table. TheTarget table can be any extension of
the Task [task] table.

Note: This field can be empty.
Active

Enables or disables the task plan template record.

State

The task plan template can be in one of the following states:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1966


<!-- page 1967 -->
Task Plan Template form fields (continued)
Field

Description

• Draft
• Published
Set conditions

Use the condition builder to create one or more conditions that
determine when the template is applicable.

Template item form
The Template item form displays details about a template item for a task plan template.
The Template item form includes the following fields on the Details tab.
Template item form fields
Field

Description

Number

The automatically generated record number.

Short description

A brief description of the template item.

Table

Select a table in which the system creates the template item
record when the task plan template is applied.
For example, if the template item is a case task, the
system should create that item in the Case Task table
[sn_customerservice_task].

Task plan template

Displays the number of the parent task plan template for this
template item.

Order

The order in which the template item appears in the
hierarchical list.

Parent

If the template item is a child of another template item, this
field displays the parent item number.

Parent field identifier

The column on the selected table that captures the
relationship to the parent template item.

Fields

This field appears when you select a table in the Table field.
Specify the fields and the field values that the system should
use to create the template item record. Use the +|x buttons to
add and delete rows.

Template item condition form
The Template item condition form displays displays the conditions that apply to a that template
item.
The Template item condition form includes the following fields on the Details tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1967


