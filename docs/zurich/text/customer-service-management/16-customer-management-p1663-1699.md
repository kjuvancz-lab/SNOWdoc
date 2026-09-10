# Zurich Customer Service Management — Customer management

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1663–1699 of 2452

Sections: Customer management (p1663)

---

<!-- page 1663 -->
Option

Description

User ID

A unique ID for the OSP agent.

Email

The OSP agent's email address.

Mobile Phone

The OSP agent's mobile phone number.

Business Phone

The OSP agent's business phone number.

Assignment Group

Select the group to which you belong.

3. Click Submit.

Note: Once onboarding is complete, a password reset email is sent to the agent's email
address.
Assign a case to an OSP agent
As an Outsourced Customer Service external manager, you can assign a case to an agent under
your group.

Before you begin

Note: The outsourced customer service external managers [sn_csm_ocs.ext_manager]
can perform their designated tasks using the Core UI as workspaces are not currently
supported.

Role required: sn_csm_ocs.ext_manager

Procedure
1. Navigate to All > Outsourced Customer Service > Cases > Unassigned.
2. Open a case.
3. Enter the name of the agent in the Assigned to field and select the agent from the list
displayed.
You can also click the Lookup using list icon (

) and select the agent.

Note: The Assignment group field is pre-populated with the group name. The list of
agents belonging to that group is displayed when you lookup.
4. Click Update.

Customer management
Enhance customer engagement and satisfaction by managing all interactions to ensure a
seamless and efficient service experience. Simplify processes, improve communication, and
provide personalized service.
Customer management
Using customer access management

Learn how customers, contributor users, and
customer service agents use customer access
management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1663


<!-- page 1664 -->
Customer management (continued)
Using Customer Contracts and Entitlements

Learn how consumers, managers, agents, and
administrators use the Customer Contracts
and Entitlements application to generate
service contracts and contract lines to work on
the services.

Create a social media profile

Users with the customer service manager
role can create a social media profile for an
account, contact, or consumer.

Create a social media log entry

Users with the customer service manager role
can create a social media log entry for a case.

Using customer data models for B2B2C

With the B2B2C model, organizations across
industries can easily configure multi-level
customer relationships and support business
customers who, in turn, support their end
consumers.

Using customer access management
Learn how customers, contributor users, and customer service agents use customer access
management.

Overview of customer access management
Customer access management enables you to support multiple contacts and consumers on
cases and sold products, providing them with varying levels of access to the case. You can also
add additional internal users to a case.
Related topics
Configuring customer access management
Restrict contact access
Add related parties to a case
Add related parties to a case to help provide the access level to the related parties, such as
contacts or consumers on a case.

Before you begin

Role required: sn_customerservice_agent

About this task

Related parties and their assigned responsibilities are part of the Customer Access Management
feature. Customer access management enables you to support multiple contacts and consumers
on cases and sold products, providing them with varying levels of access to the case. For more
information, see Configuring Customer Access Management.
Related parties that are added to cases must also be assigned the
sn_customerservice.case_authorized_contributor role.

Procedure
1. Navigate to All > Customer Service > Cases > All.
2. Select the case where you want to add related parties.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1664


<!-- page 1665 -->
3. From the Related Parties related list, select New.
4. On the form, fill in the fields.
Related Party record form
Field

Description

Type

Related party type. The related party type can be a contact, consumer, or a
contributor user.
You can select from the list of related party configurations for the cases that are
provided with the base system.
◦ Authorized Contact
◦ Authorized Consumer
◦ Authorized Contributor
◦ Listed Contact
◦ Listed Consumer

Case

Case number.

Order Specifies the sequence in which records are displayed, organized according to
business preferences.
5. Select Submit.
Related parties are added to the case.
6. Confirm that the contact or consumer selected in step 4 is assigned to the
sn_customerservice.case_authorized_contributor role.

Result

Once related parties are added to the case with a proper functional role having Authorized
Representative responsibility, they can perform the following actions.
• Close a case.
• Update customer-visible case tasks.
• Add additional comments and attachments.
• Accept or reject a solution.
• Receive notifications on case updates. To confirm that related parties receive email
notifications, add them to the email notification configuration.
1. Navigate to All > System Notification > Email > Notifications.
2. Select a notification.
3. In the Who will receive related list, select the lock icon next to Users/Groups in fields.
4. In the Available column, select Related Party Users and/or Related Party Consumers and
move them to the Selected column.
5. Select the lock icon again and update the record.
6. Repeat these steps for each of the desired notifications.
Related topics
Case update notifications

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1665


<!-- page 1666 -->
Case update notifications
Contacts, consumers, and contributor users assigned the Authorized Representative
responsibility on a case receive all email notifications sent to the case’s primary contact.
Contacts added as additional contacts to the sold product with the Authorized Representative
responsibility receive all email notifications sent to the case’s primary contact.
Consumers added as an additional consumer to the sold product with the Authorized
Representative responsibility receive all email notifications sent to the case's primary consumer.
Internal users added as related parties to a case with the Authorized Representative
responsibility receive all email notifications sent to the case’s primary contact or consumer.
For case resolved emails, related parties with the Authorized Representative responsibility can
accept or reject the proposed solution. The responses of emails from related parties are treated
similarly to the primary contact or consumer on the case.

Role assignments for authorized representatives
Related parties that are added to cases must also be assigned one of the Customer Access
Management (CAM) roles, such as the sn_customerservice.case_authorized_contributor role. For
more information, see Roles installed with Customer Access Management.

Adding related parties to notifications
Related parties that are added to cases can receive notifications on case updates. To confirm
related parties receive email notifications, add them to the email notification configuration.
1. Navigate to All > System Notification > Email > Notifications.
2. Select a notification.
3. In the Who will receive related list, select the lock icon next to Users/Groups in fields.
4. In the Available column, select Related Party Users and/or Related Party Consumers and
move them to the Selected column.
5. Select the lock icon again and update the record.
6. Repeat these steps for each of the desired notifications.
Adding related parties to a sold product
Add related parties to a sold product to help provide the access level to the related parties, such
as contacts, consumers, or accounts.
For example, products purchased by a customer can be tracked by multiple departments, such
as the finance team monitoring renewals and the operations team overseeing maintenance.
With Customer access management, you can add multiple related parties and provide them with
varying levels of access to the sold product. While adding related parties, you can select the
related party type and responsibility.

Task

Description

Add additional consumers for the sold product Add additional consumers for sold product
and the related entities by defining the type
and responsibility of additional consumers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1666


<!-- page 1667 -->
Task

Description

Add additional contacts for the sold product

Add additional contacts for sold product and
the related entities by defining the type and
responsibility of additional contacts.

Add additional accounts for the sold product

Add additional contacts for sold product
and the related entities by defining the type
and responsibility of additional accounts or
contacts.

Add additional consumers for the sold product
Add additional consumers for your business-to-consumer (B2C) or business-to-businessto-consumer (B2B2C) sold products by defining the type and responsibility of additional
consumers. After you add this information, additional consumers can have the same access to
the consumer associated with the sold product and the related entities.

Before you begin

Role required: admin and sn_customerservice_manager

About this task

The responsibility assigned to the additional consumer that is associated with a sold product
gets access to the sold product and the related entities, which include installed products, install
base items, and cases associated with sold products.

Procedure
1. Navigate to All > Customer Service > Products > Sold Products.
2. Select the desired record where you want to add additional consumers.
3. From the Additional Consumers related list, select New.
Starting with the Utah release, the Additional Consumers related list has been deprecated for
new customers. For upgrade customers, the Additional Consumers related list continue to be
supported along with the Sold Product Related Parties related list.
4. On the form, fill in the fields.
Consumer Sold Product record form
Field

Description

Sold Product

Products and components sold to a consumer.

Type

Related party type.

Note: By selecting the related party type, the default responsibility
mentioned in the type is added in the related party responsibility.
Consumer

Contact responsible for the sold product.

Responsibility Access level to sold product and related information.
Additional consumer with Authorized Representative responsibility requires
the sn_install_base.sold_product_authorized_consumer role to get access to
associated sold product and related entities. For details, see Roles installed
with customer access management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1667


<!-- page 1668 -->
Field

Description

Note: If the Responsibility field is empty, consumers can’t access the
sold product and associated case.
Order

Specifies the sequence in which records are displayed, organized according
to business preferences.

5. Select Submit.
Additional consumers are added to the consumer sold product.

Result

Once additional consumers are added to the sold product with a proper functional role having
Authorized Representative responsibility, they can perform the following actions.
• View the list of sold products and associated install base items.
• Create cases by selecting sold products or install bases.
• View the list of cases related to the sold products or affected install bases.
• View the list of installed products.
• Access cases associated with the sold product.
• Manage service catalog requests from the sold product.

Note:
• While creating a case for a sold product, you can only see authorized consumers on the
consumer sold product.
• If you choose someone as a consumer, you can only associate the sold products they
have full access to on the case.
Add additional contacts for the sold product
Add additional contacts for the B2B (accounts or contacts) or B2B2C sold product by defining
the type and responsibility. Once added, additional contacts have the same access to the
contact associated with the sold product and the related entities.

Before you begin

Note: Additional contacts can be enabled using the Restrict Contact Access field. For
details, see Restrict contact access.

Role required: admin and sn_customerservice_manager

About this task

The responsibility assigned to the additional contact that is associated with a sold product gets
access to the sold product and the related entities, which include installed products, install base
items, and cases associated with sold products.

Procedure
1. Navigate to All > Customer Service > Products > Sold Products.
2. Select the desired record where you want to add additional contacts.
3. From the Additional Contacts related list, select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1668


<!-- page 1669 -->
Starting with the Utah release, the Additional Contacts related list has been deprecated for
new customers. For upgrade customers, the Additional Contacts related list continue to be
supported along with the Sold Product Related Parties related list.
4. On the form, fill in the fields.
Contact Sold Product record form
Field

Description

Sold Product

Products and components sold to an account.

Type

Related party type.

Note: By selecting the related party type, the default responsibility
mentioned in the type is added in the related party responsibility.
Contact

Contact responsible for the sold product.

Responsibility Access level to the sold product and related information.
Additional contact with Authorized Representative responsibility requires
the sn_install_base.sold_product_authorized_contact role to get access to
associated sold product and related entities. For details, see Roles installed
with customer access management.

Note: If the Responsibility field is empty, contacts won’t have any
access to the sold product and associated case.
Order

Specifies the sequence in which records are displayed, organized according
to business preferences.

5. Select Submit.
Additional contacts can be added to the B2B sold product.

Note: Added contacts can be from the same account, partner account, or from contact
relationships.

Result

Once additional contacts are added to the sold product with a proper functional role having
Authorized Representative responsibility, they can perform the following actions.
• View the list of sold products and associated install base items.
• Create cases by selecting sold products or install bases.
• View the list of cases related to the sold products or affected install bases.
• View the list of installed products.
• Access cases associated with the sold product.
• Manage service catalog requests from the sold product.

Note:
• While creating a case for a sold product, you can only see authorized contacts.
• If you choose someone as a contact, you can only associate the sold products they have
full access to on the case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1669


<!-- page 1670 -->
Add additional accounts for the sold product
Add additional accounts or contacts for your business-to-business (B2B) or business-tobusiness-to-consumer (B2B2C) sold products by defining the type and responsibility of
additional accounts or contacts. Once you add accounts as related parties, all contacts
associated with the related party account can access the sold product.

Before you begin

Role required: admin and sn_customerservice_manager

About this task

The responsibility assigned to the additional accounts that is associated with a sold product gets
access to the sold product and the related entities, which include installed products, install base
items, and cases associated with sold products.

Procedure
1. Navigate to All > Customer Service > Products > Sold Products.
2. Select the record that you want to add the additional account to.
3. From the Sold Product Related Parties related list, select New.
4. On the form, fill in the fields.
Sold Product Related Party record form
Field

Description

Sold Product

Products and components that are sold to an account.

Type

Related party type.

Note: By selecting the related party type, the default responsibility
that is mentioned in the type is added in the related party responsibility.
Account

Contacts of the account responsible for the sold product.

Responsibility Access level to the sold product and related information.
Additional account with the Authorized Account responsibility requires the
sn_install_base.sold_product_authorized_contact role to get access to the
associated sold product and related entities. For details, see Roles installed
with customer access management.

Note: If the Responsibility field is empty, the accounts don't have any
access to the sold product and associated case.
Order

Specifies the sequence in which records are displayed, organized according
to business preferences.

5. Select Submit.
You can add additional accounts to the B2B sold product.

Note: Added accounts can be from the same account, partner account, or from contact
relationships.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1670


<!-- page 1671 -->
Result

After additional accounts are added to the sold product with Authorized Account responsibility,
the contacts of those accounts having a required functional role can perform the following
actions:
• View the list of sold products and associated install base items.
• Create cases by selecting sold products or install bases.
• View the list of cases that are related to the sold products or affected install bases.
• View the list of installed products.
• Access cases that are associated with the sold product.

Note:
• While creating a case for a sold product, you can only see the authorized accounts on the
account's sold product.
• If you choose an account, you can only associate a sold product that you have full access
to on the case.
Add related parties to an install base item
Add related parties to an install base item in the Customer Service Management application so
that you can enable another party to have access to an install base.

Before you begin

Role required: admin and sn_customerservice_manager

About this task

An install base-related party is a list of contacts, consumers, contributors, service organization
members, accounts, or service organizations. You add a related party to enable access to
another party that isn't the owner of the install base. Related parties associated with an install
base can access it and its related entities, including installed products, sold products, and
associated cases.

Note: You can enable additional contacts by using the Restrict Contact Access field. For
details, see Restrict contact access.

Procedure
1. Navigate to All > Customer Service > Products > Install Base Items.
2. Open an install base item from the list.
3. Select Install Base Related Parties, and select New.
4. From the Type drop-down, select the type of related party that you want to add to the install
base item.
Based on the selection that you chose, you can assign one of the combinations in the
following table:
Related Type list
Type

Functional Role

Entity

Authorized Account

Install Base
Account
Authorized Contact
(sn_install_base.install_base_authorized_contact)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1671


<!-- page 1672 -->
Type

Functional Role

Entity

Authorized Contact

Install Base
Contact
Authorized Contact
(sn_install_base.install_base_authorized_contact)

Authorized Consumer

Install Base
Consumer
Authorized Consumer
(sn_install_base.install_base_authorized_consumer)

Authorized Contributor

Install Base
User
Authorized Contributor
(sn_install_base.install_base_authorized_contributor)

Authorized Member

Install Base
Service Organization
Authorized Member
(sn_install_base.install_base_authorized_member)

Authorized Service
Organization

Install Base
Service Organization
Authorized Member
(sn_install_base.install_base_authorized_member)

Listed Account

Not applicable

Listed Contact

Not applicable

Listed Consumer

Not applicable

Listed Contributor

Not applicable

Listed Member

Not applicable

Listed Service Organization

Not applicable

Note: The Responsibility field on the Install Base-Related Parties form is automatically
populated based on the type of related party that is selected. For information on the type
of related parties, see Create related party configurations.
5. To use the Order field to specify the sequence in which records are displayed, organized
according to business preferences.
6. Select Submit.

Result

The contact is assigned as a related party to the Install base item. The contact gets access to all
the corresponding items, such as the child install base items and the cases on the install base
item form.
Restrict contact access
Restrict contact access to sold products and install bases by limiting the access for associated
contacts and their access levels for customer access management.

Before you begin

Role required: sn_customerservice_manager and sn_customerservice.customer_admin

About this task

By restricting contact access, you can limit access to entities that are based on the contacts that
are assigned to the sold products and install bases. You can't create duplicate account access
records with the same account.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1672


<!-- page 1673 -->
Procedure
1. Navigate to All > Customer Service > Administration > Manage Account Access.
2. Select New.
3. On the form, fill in the fields.
Account Access record form
Field

Description

Account Accounts that have restrictions for access to the sold products and install bases
that are based on the associated contacts and the access level.
Restrict
Contact Access that is restricted to entities based on associated contacts.
Access
If the value of the field is False, the contacts that are associated with the account
can read the sold products and install bases that are associated with the account.
If the value of the field is True, the contacts that are associated with the accounts
don’t get access to the sold products and install bases, unless they're added as a
contact on the record or as a related party. The following contacts get access to the
sold products and install bases:
◦ Contacts that are associated with the sold product and install base records.
◦ Contacts that are added as related parties with an Authorized Representative
responsibility.
◦ Contacts belonging to accounts that are added as related parties with an
Authorized Account responsibility.
4. Select Submit.
Related topics
Add additional contacts for the sold product

Using Customer Contracts and Entitlements
Learn how consumers, managers, agents, and administrators use the Customer Contracts and
Entitlements application to generate service contracts and contract lines to work on the services.
Service contracts, service contract lines, and entitlements can be created in the following ways:
• Via workflows: You can create service contracts, service contract lines, and entitlements by
using the contracts and entitlements workflow. For more information, see Creating contracts
and entitlements using workflows.

Note: When a service contract line or entitlement is created via the Sales and Order
Management workflow, the account/consumer/household details are copied from the
sold product and it inherits the state of the sold product. Further, when the state of the
contract line changes, the same state is synced back to the parent sold product.
• Via API integrations:
◦ Service Contract API
◦ Entitlement API
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1673


<!-- page 1674 -->
Using Contracts and Entitlements Workflows
Learn how contracts and entitlements using workflows enable you to create and manage service
contracts, service contract lines, and entitlements.
You can manage the life cycle of customer service contracts and entitlements from offer creation
to contract generation using contracts and entitlements workflows. Using workflows you can
suspend, resume, cancel, and renew multiple entities at once. You can also perform the following
functions using workflows:
• Create, suspend, resume, cancel, and renew service contracts.
• Create, modify, suspend, resume, cancel, and renew service contract lines, and entitlements.

Automatic renewal of service contracts
While creating service contracts from quote or orders, you can select the Auto-renew contract
option on a quote or order to automatically renew the contracts. When you add or delete a
contract line from these service contracts, the renewed quotes and opportunities are updated.
You can configure the auto-renewal date of the contract in the Customer Life Cycle Workflows
Policy decision table. By default, you can choose to initiate the auto-renewal 90, 60, or 30 days
before the contract end date, or on the contract creation date. For more info, see Creating
contracts and entitlements using workflows.
Automatic renewal for service contracts on quotes

In the Renewal adjustment basis field, you can select List price or Contracted price. Selecting
List price renews the contract at the market price of the contract at the time of the renewal date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1674


<!-- page 1675 -->
Renewal adjustment basis

Selecting Contracted price gives you the option to renew the contract at Markdown % or Markup
% of the current contract price. For example, if you select Markup % field and you enter 10 in
Renewal adjustment value, the service contract is renewed at 10% above the current contract
price.
Renewal adjustment type

That exact renewal date and the renewal adjustments for that service contract will be visible on
the service contract form in the Auto renewal date field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1675


<!-- page 1676 -->
Automatic renewal of service contracts

You cannot modify the renewal adjustment fields on the service contract. You can only modify
the renewal adjustment values on the quote and orders.

Updating contract end date
During quote processing, the system alerts you when the contract end date is exceeding the
product offering end date. When you submit quotes for approval, a dialog box appears alerting
you. You can select the option update contract end dates to match offering end dates to match
the contract end date to the product offering end date.
Matching the contract and product offering end dates

If you do not select this option and approve the quote, the contract end date remains the same.

Co-terminate quote lines
You can assign the same start and end dates to multiple quote lines while creating or renewing
a quote. On the Line items tab on the quote details page, select multiple quote lines and then
select Co-terminate. All the selected quote lines have the same start and end date.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1676


<!-- page 1677 -->
Co-terminate quote lines

Viewing price ramps
Customers can scale their purchases by adjusting the pricing and quantity throughout the
contract or subscription term by using Ramps feature. For more info, see Add price ramps on
a quote line item . You can view the price ramp details on the contract line. Only the active
price ramp segment is displayed on the contract line. Select a contract line and select Ramps to
view all the details of the price ramp for that contract line. You can view start and end date, term
period, ramp type (yearly or quarterly), ramp segments, and Annual percentage increase (API%).
Suspend a service contract
Suspend a service contract and its child service contract lines by creating an order on the CSM
Configurable Workspace. Suspending a service contract suspends or disables the services
specified in that service contract.

Before you begin

You can suspend a service contract when at least one of the associated root sold products is
in Active state. For product inventory records, you can suspend a service contract when the
associated product inventory record is in Active state.

Note: If you don’t create a resume order, the service contract is indefinitely suspended.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Suspend.
5. In the Suspend service contract window, enter the period of suspension for the service
contract in the Start date and time and End date and time fields.

Note: If you do not enter a value in the End date and time field, the service contract is
suspended indefinitely. You can resume the service contract manually. For more info, see
Resume a service contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1677


<!-- page 1678 -->
6. Add a reason for a suspension in the Reason for suspension field.
7. Select Suspend.
An order with the suspend action is created for that service contract.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract.

Result

With the service contract, all the associated service contract lines and entitlements are also
suspended. However, the service contract stays in the current state. If you specify an end
date and time, a resume order line item is created as a part of the same order. After this period
of suspension, the service contract and all its associated child service contract lines and
entitlement will be in Active or Draft state again. After the end date of the service contract, the
suspended service contract and all its associated child service contract lines and entitlement
move to Expired state.
Modify a service contract
Modify a service contract so that you can update its existing configurations.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Modify all lines to modify the service contract.
5. On the Configurator UI, modify the existing configurations for the service contract line.
To learn more about the Configurator UI, see Exploring Sales and Order Management .

Note: The Configurator UI is displayed only if the service contract has a single service
contract line. For multiple service contract lines, a quote or an order will be created with
contract lines in Draft or Active state.
6. Select Update.
An order or a quote will be created depending on the rules set in the Customer Life Cycle
Workflows Policy decision table. For more info, see Configuring Customer Life Cycle Workflows
Policy decision table.
◦ If the selected target entity is a quote, a quote to modify the service contract is created. You
can select the quote number from the confirmation message to view the modified quote line
items. The quote is approved and the status changes to Complete to create an order.
◦ If the selected target entity is an order, an order to modify the service contract is created. You
can click the order number from the confirmation message to view the modified order line
items.
7. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1678


<!-- page 1679 -->
Resume a service contract
Resume a service contract and its child service contract lines by creating an order on the
CSM Configurable Workspace. By resuming a service contract, you are restarting the services
specified in that service contract.

Before you begin

You can resume a service contract when at least one of the associated root sold product is in
Inactive, Canceled, or Suspended state. For product inventory records, you can resume a service
contract when the associated product inventory record is in Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Resume.
5. In the Resume service contract window, in the Start date and time field, enter when you want
to resume the service contract.
6. Add a reason for a resuming the service contract in the Reason for resumption field.
7. Select Resume.
An order for resuming the service contract is created.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract.

Result

The service contract and all its associated child contract lines and entitlements are back in
Active or Draft state, depending on the start date of the respective entity.
Renew a service contract
Renew a service contract on the CSM Configurable Workspace before the service contract
expires.

Before you begin

You cannot renew a service contract when it is in Canceled state or it does not have an end date.
The order processing for product inventory based contracts are executed according to the
fulfillment flow defined by the customer for these offerings being renewed.
Role required:
• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote or opportunity, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Renew.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1679


<!-- page 1680 -->
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to renew the service contract is created. You
can select the quote number from the confirmation message to review the renewal quote.
After the quote is approved and the status is updated to Complete, an order is created for
further processing.
◦ If the selected target entity is an order, an order to renew the service contract is created. You
can select the order number from the confirmation message to review the renewal order.
◦ If the selected target entity is an opportunity, an opportunity to renew the service contract is
created. You can select the opportunity number from the confirmation message to review the
renewal opportunity.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
renew the service contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
5. After the order line items are fulfilled, set the status to Completed.
A new service contract is created.

Result

A new service contract is created in the Draft state. You can view more details in the Renewal
History related list.
Cancel a service contract
Create an order to cancel a service contract and its child service contract lines on the CSM
Configurable Workspace. By canceling a service contract, you are terminating the services
specified in that service contract.

Before you begin

You can cancel a service contract when at least one of the associated root sold product is in
Active or Suspended state. For product inventory records, you can cancel a service contract
when the associated product inventory record is in Active or Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select Cancel.
All the associated service contract lines and entitlements will also be cancelled and will be set
to the Cancelled state.
5. In the Cancel service contract window, in the Start date and time field, enter the date when the
service contract will be cancelled.
6. Add a reason for a cancellation in the Reason for cancellation field.
7. Select Cancel.
An order with the cancel action is created for that service contract.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1680


<!-- page 1681 -->
Result

With the service contract, all the associated service contract lines and entitlements are also
cancelled and will be in Cancelled state.
Suspend a service contract line
Suspend a service contract line and its child service contract lines by creating an order on the
CSM Configurable Workspace. By suspending a service contract line, you are suspending or
disabling the services and characteristics associated with that service contract line.

About this task
Before you begin

You can suspend a service contract line when the associated root sold product is in Active state.
For product inventory records, you can suspend a service contract line when the associated
product inventory record is in Active state.

Note: If you don’t create a resume order, the service contract line is indefinitely
suspended.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. Select the service contract line from the service contract lines related list, that you want to
suspend.
5. Select Suspend.
6. In the Suspend service contract line window, enter the period of suspension for the service
contract line in the Start date and time and the End date and time field.

Note: If you do not enter a value in the End date and time, the service contract line
will be suspended. You can manually resume the service contract by using the resume
option. For more info, see Resume a service contract line
7. Add a reason for a suspension in the Reason for suspension field.
8. Select Suspend.
An order with the suspend action is created for that service contract line.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract line.

Result

With the service contract line, all the associated entities in the hierarchy are also suspended. If
you specify an end date and time, a resume order line item is created as a part of the same order.
After this period of suspension, the service contract line will be in Active state again. After the
end date of the service contract, the suspended service contract line and all its associated child
service contract lines and entitlement move to Expired state.
Modify a service contract line
Modify a service contract line so that you can update its existing configurations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1681


<!-- page 1682 -->
Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. In the service contract lines related list, select one ore more service contract line that you want
to modify the characteristics and line items for.
5. Select Modify to modify the selected service contract lines.
6. On the Configurator UI, modify the existing configurations for the service contract line.
To learn more about the Configurator UI, see Exploring Sales and Order Management .

Note: The Configurator UI is displayed only if you select a single service contract line. If
you selected multiple service contract lines, the order or quote created is displayed.
7. Select Update.
An order or a quote will be created depending on the rules set in the Customer Life Cycle
Workflows Policy decision table. For more info, see Configuring Customer Life Cycle Workflows
Policy decision table.
◦ If the selected target entity is a quote, a quote to modify the service contract line is created.
You can click the quote number from the confirmation message to view the modified quote
line items. The quote is approved and the status changes to Complete to create an order.
◦ If the selected target entity is an order, an order to modify the service contract line is created.
You can click the order number from the confirmation message to view the modified order
line items.
8. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract line.
Resume a service contract line
Create an order to resume a service contract line and its child service contract lines on the CSM
Configurable Workspace. By resuming a service contract line, you are restarting the services
specified in that service contract line.

Before you begin

You can resume a service contract line when the associated root sold product is in Inactive,
Cancelled, or Suspended state. For product inventory records, you can resume a service
contract line when the associated product inventory record is in Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1682


<!-- page 1683 -->
4. In the service contract lines related list, select the service contract line that you want to
resume.
5. Select Resume.
6. In the Resume service contract line window, in the Start date and time field, enter when you
want to resume the service contract line.
7. Add a reason for a resuming the service contract line in the Reason for resumption field.
8. Select Resume.
An order for resuming the service contract line is created.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract line.

Result

With the service contract line, all the associated entities in the hierarchy are also back in Active
or Draft state, depending on the start date of the respective entity.
Renew a service contract line
Renew a service contract line on the CSM Configurable Workspace. You can renew the services
specified in the service contract line and its associated child service contract lines and
entitlements.

About this task

You cannot renew a service contract line when it is in Canceled state or it does not have an end
date.
The order processing for product inventory based contract lines are executed according to the
fulfillment flow defined by the customer for these offerings being renewed.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote or opportunity, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, navigate to Contracts and Entitlements > Service Contracts.
3. In the service contract lists, select the service contract that you want to renew.
4. In the service contract lines related list, select the service contract line that you want to
resume.
5. Select Renew.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to renew the service contract line is created.
You can select the quote number from the confirmation message to review the renewal
quote. After the quote is approved and the status is updated to Complete, an order is
created for further processing.
◦ If the selected target entity is an order, an order to renew the service contract line is created.
You can select the order number from the confirmation message to review the renewal order.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1683


<!-- page 1684 -->
◦ If the selected target entity is an opportunity, an opportunity to renew the service contract is
created. You can select the opportunity number from the confirmation message to review the
renewal opportunity.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
renew the service contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
6. Perform an early or late renewal on the service contract line.
In early renewal, users can terminate the contract before the expiry date and create a new
contract with the desired start date. For late renewal, users can renew expired contracts that
are not renewed.
◦ Select a date before the contract expiry date in the Renew from field to perform an early
renewal. Two quote or order line items are created. One change order or quote line is
created with the modified expiry date of the current service contract line. A new renewal
quote or order line is created is created with the new start date.
◦ For an expired contract line, enter a new date to renew the service contract line in the Start
from field. A new renewal quote or order line is created with a new start date.
7. After the line items are fulfilled, set the status to Completed.
A new service contract line is created.

Result

The new service contract line is created with the renewed contract line in the Draft state. You can
view the new renewal line items in the Renewal History related list.
Cancel a service contract line
Create an order to cancel a service contract line and its child service contract lines on the CSM
Configurable Workspace. By canceling a service contract line, you are canceling or disabling the
services and characteristics associated with that service contract line.

Before you begin

You can cancel a service contract line when the associated root sold product is in Active or
Suspended state. For product inventory records, you can cancel a service contract line when the
associated product inventory record is in Active or Suspended state.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract.
4. In the service contract, select the service contract line from the service contract lines related
list, that you want to cancel.
5. Select Cancel.
6. In the Cancel service contract line window, in the Start date and time field, enter the date
when the service contract line will be disabled.
7. Add a reason for a cancellation in the Reason for cancellation field.
8. Select Cancel.
An order with the cancel action is created for that service contract line.
9. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
The modifications are visible on the service contract line.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1684


<!-- page 1685 -->
Result

With the service contract line, all the associated entities in the hierarchy are also cancelled and
move to Cancelled state.
Upsell or Downsell a service contract line
Upsell or downsell a service contract line on the CSM Configurable Workspace. You can reduce
or increase the quantities of the products specified in the service contract line.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the list view, navigate to Contracts and Entitlements > Service Contracts.
3. In the service contract lists, select the service contract that you want to update.
4. In the service contract lines related list, select one or more service contract lines that you want
to modify.
5. From the Modify entire line list, select Modify quantity.
6. In the Modify quantity dialog box, you can swap the values
fully or partially in the Quantity field for both the contract

lines.
For example, if one product has a quantity of 100 and another has 30, you can perform either
a full swap or a partial swap. In the screenshot above, a full swap is completed by updating
the Quantity field of the first contract line to 130 (adding the 30 units from the second line)
and setting the second contract line’s quantity to 0. The Change field reflects the change in
quantity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1685


<!-- page 1686 -->
You can also perform a partial swap. For instance, you can update the second contract line
from 30 to 20, and add the remaining 10 units to the first contract line, increasing it from 100 to
110.
7. Select the start date of the new service contract line from the Effective from field.
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
In case of partial swap, two new service contract lines with the modified quantities are created
with the Start date as the Effective from date. The end date of the existing contract line is
updated. In case of full swap, one new service contract line with the modified quantity is
created with the Start date as the Effective from date. The end date of the existing contract
line is updated.

Note: You can perform a partial or a full swap with a new product from the catalog by
following the same procedure.
Modify an entitlement
Modify an entitlement associated to an account so that you can update its existing
configurations.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to modify the
characteristics for.
5. Select Modify.

Note: You can only modify entitlements associated with an account. You cannot modify
entitlements associated to service contract lines.
6. On the Configurator UI, modify the existing configurations for the selected entitlement.
To learn more about the Configurator UI, see Exploring Sales and Order Management .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1686


<!-- page 1687 -->
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
Suspend an entitlement
Suspend an entitlement by creating an order on the CSM Configurable Workspace. By
suspending an entitlement, you are suspending or disabling the services and characteristics
associated with that entitlement.

Before you begin

You can suspend an entitlement when the associated root sold product is in Active state. For
product inventory records, you can suspend an entitlement when the associated product
inventory record is in Active state.

Note: You can only suspend entitlements associated with an account. You cannot
suspend entitlements associated to service contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to suspend.
5. Select Suspend.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1687


<!-- page 1688 -->
Result

If you specify an end date and time, a resume order line item is created as a part of the same
order. After this period of suspension, the entitlement will be in Active state again. After the end
date of the entitlement, the suspended entitlement will move to Expired state.
Resume an entitlement
Resume an entitlement by creating an order on the CSM Configurable Workspace. By resuming
an entitlement, you are restarting the services and the characteristics specified in that
entitlement.

Before you begin

You can resume an entitlement when the associated root sold product is in Inactive, Cancelled,
or Suspended state. For product inventory records, you can resume an entitlement when the
associated product inventory record is in Suspended state.

Note: You can only resume entitlements associated with an account. You cannot resume
entitlements associated to service contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
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
Renew an entitlement
Renew an entitlement on the CSM Configurable Workspace.

Before you begin

You cannot renew an entitlement when it is in Canceled state or it does not have an end date.
The order processing for product inventory based entitlements are executed according to the
fulfillment flow defined by the customer for these offerings being renewed.
Role required:
• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote or opportunity, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1688


<!-- page 1689 -->
Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
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
◦ If the selected target entity is an opportunity, an opportunity to renew the service contract is
created. You can select the opportunity number from the confirmation message to review the
renewal opportunity.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
renew the service contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
6. After the order line items are fulfilled, set the status to Completed.
A new entitlement is created.

Result

The new entitlement is created in the Draft state. You can see more details in the Renewal History
related list.
Cancel an entitlement
Cancel an entitlement by creating an order on the CSM Configurable Workspace. By canceling
an entitlement, you are canceling or disabling the services and characteristics associated with
that entitlement.

Before you begin

You can cancel an entitlement when the associated root sold product is in Active or Suspended
state. For product inventory records, you can cancel an entitlement when the associated product
inventory record is in Active or Suspended state.

Note: You can only cancel entitlements associated with an account. You cannot cancel
entitlements associated to service contract lines.
Role required: sn_customerservice_manager and sn_ind_tmt_orm.order_agent

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace.
2. In the list view, select Customer > Accounts.
3. Open the account that the entitlement belongs to.
4. In the entitlements related list, select the entitlement that you want to cancel.
5. Select Cancel.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1689


<!-- page 1690 -->
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
Add contract lines to a service contract
Add one or more contract lines to a service contract on the CSM Configurable Workspace.

Before you begin
Role required:

• To create an order, you need sn_customerservice_manager and sn_ind_tmt_orm.order_agent.
• To create a quote, you need sn_customerservice_manager and
sn_sales_common.sales_agent.

Procedure
1. Navigate to All > CSM/FSM Configurable Workspace..
2. In the Contracts and Entitlements list, select Service Contracts.
3. In the Contracts and Entitlements - Service Contracts list, select the service contract to add
more contract lines.
4. On the Service Contract form, select New.
The target entity is created depending on the rules set in the Customer Life Cycle Workflows
Policy decision table. For more info, see Configuring Customer Life Cycle Workflows Policy
decision table.
◦ If the selected target entity is a quote, a quote to create new service contract line is created.
◦ If the selected target entity is an order, an order to create new service contract line is
created.
◦ If the selected target entity is an opportunity, an opportunity to create a new service contract
line is created.
◦ If the selected target entity is an opportunity and a quote, both opportunity and quote to
create the service contract are created. You can navigate to the opportunity and quote by
selecting the numbers from the confirmation message.
The Existing contract field will refer the current service contract. All the other fields like
Contract start date, Contract end date, and contract renewal fields will be auto-populated with
the current contract details.
5. In the Catalog tab, add products to the new quote or order that is created.
For more info, see Add products to a quote .
6. Select Submit for approval.
7. In the Order Line Items related list, double-click the State value of the parent order line and set
it to Completed.
On the Service Contract Line related list, a new service contract line is created and added.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1690


<!-- page 1691 -->
Result

The new service contract line is added to the contract and is visible on the selected target entity.
Add Covered Products using Contracts and Entitlement Workflow
Covered products refers to specific products or order line items that are included in a service
contract. These items are linked to the contract to define what is covered for service or
maintenance. Covered products can be directly tracked through the contract records, facilitating
changes and visibility of what is covered.
Agents in Order management can select the products to be covered by a contract when the
order is captured for the contract offering. To manually associate a covered product with a
contract line, see the Add covered products to order line items
You can also modify the covered products added to a contract line. You can add new covered
products to that contract line or entitlement and remove the existing covered products.
Add a sold product or install base item to a service contract
Add the sold products or the install base items covered to service contracts, contract lines, or
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

2. Add the sold product or install base item covered to service contracts, contract lines, or
entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1691


<!-- page 1692 -->
Add to

Procedure

a. In the list view, navigate to Contracts and
Entitlements > Service Contracts.

Note: In the ServiceNow AI Platform
Service Contracts

interface, select Service Contracts in
the navigation menu.
b. Select the service contract that you want to
add the sold product or install base item to.
c. From the Products Covered or Install Base
Items Covered related list, select New.
a. In the list view, navigate to Contracts and
Entitlements > Service Contracts.

Note: In the ServiceNow AI Platform

interface, select Service Contracts in
the navigation menu.
b. Select the service contract that has the re­
quired contract line.
Service Contract Lines

c. From the Service Contract Lines related list,
select the contract line that you want to add
the sold product or install base item cov­
ered to.
d. From the Sold Product Covered or Install
Base Items Covered related list, select
New.

Note: When a sold product or an in­
stall base item covered is added to a
contract line, it's not added to the relat­
ed entitlements.
a. In the list view, navigate to Contracts and
Entitlements > Service Contracts.

Note: In the ServiceNow AI Platform
Entitlements

interface, select Service Contracts in
the navigation menu.
b. Select the service contract that has the re­
quired contract line.
c. From the Service Contract Lines related
list, select the contract line that has the re­
quired entitlement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1692


<!-- page 1693 -->
Add to

Procedure

d. From the Entitlements related list, select
the entitlement that you want to add the
sold product or install base item to.
e. From the Sold Product Covered or Install
Base Items Covered related list, select
New.
You can also directly navigate to Entitlements
form as follows:
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
◦ The state of the entity shouldn't be Expired or Cancelled.
3. On the Sold Product Covered form, fill in the fields.
For a description of the field values, see Sold product form.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1693


<!-- page 1694 -->
Procedure
1. Navigate to the ServiceNow AI Platform interface or the CSM Configurable Workspace.
Interface

Action

Platform interface

Navigate to All > Customer Service > Con­
tracts and Entitlements > Service Contracts.

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

Service Contracts

b. From the Service Contract Lines related list,
select the contract line that has the entitle­
ment.
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
If you have used the Service Contracts menu to record the usage, then select Update to save
the contract line and then the service contract.

Create a social media profile
Users with the customer service manager role can create a social media profile for an account,
contact, or consumer.

Before you begin

Role required: sn_customerservice_manager or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1694


<!-- page 1695 -->
Procedure
1. Navigate to an Account, Contact, or Consumer record.
◦ Customer Service > Customer > Accounts
◦ Customer Service > Customer > Contacts
◦ Customer Service > Customer > Consumers
2. In the Social Profiles related list on the selected record, click New.
3. Fill in the fields on the Social Profile form, as appropriate.
Social Profile form fields and definitions
Field

Definition

Channel

The social media channel for this profile. For example, Twitter or Facebook.

Note: This field is a reference to the Social Channels
[sn_app_cs_social_social_channel] table.
Social ID

The user's name or handle for the selected social media channel.

Contact

If created from the Contact form, this field displays the name of the contact.

Consumer If created from the Consumer form, this field displays the name of the consumer.
Account

If created from the Account form, this field displays the name of the account.

Profile
URL

The link to the user's social media account.

4. Click Submit.
Related topics
Social media integration

Create a social media log entry
Users with the customer service manager role can create a social media log entry for a case.

Before you begin

Role required: sn_customerservice_manager or admin

About this task

If necessary, a customer service manager or administrator can create an entry on the Social
Logs related list. The entries on this list are typically populated by the social integration tool.

Procedure
1. Navigate to the desired Case form.
2. From the Social Logs related list, click New.
3. Fill in the fields on the Social Log form, as appropriate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1695


<!-- page 1696 -->
Social Log form fields and definitions
Field

Definition

Social
Profile

The social profile for the customer contact or consumer.

Agent

The agent participating in the conversation.

Social URL

The URL for the social conversation. Clicking this URL opens the conversation in
a new tab.

Document

The related case number.

Message

The details of the conversation.

4. Click Submit.

Using customer data models for B2B2C
With the business-to-business-to-consumer (B2B2C) model, organizations across industries can
easily configure multi-level customer relationships and support business customers who can
support their end consumers.

Understanding the B2B2C model
The B2B2C model involves interactions where a business sells products or services to another
business, which then provides these products or services to the end consumer. The functionality
supports multi-layered relationships by capturing and organizing relevant data across both
business entities and end consumers.

Benefits
• Improved Data Accuracy: By structuring data methodically, it confirms that information is
accurate and up-to-date, reducing errors and enhancing decision-making capabilities.
• Enhanced Customer Insights: The data models provide a holistic view of both business
customers and end consumers, enabling a better understanding of customer needs and
preferences.
• Operational Efficiency: Streamlined data management processes lead to faster service
delivery and issue resolution, improving overall operational efficiency.
• Scalability: As businesses grow, the data models can be scaled to accommodate more
customers and complex relationships without compromising on data integrity.
• Personalized Service: With detailed customer data, businesses can offer tailored services and
solutions, leading to higher customer satisfaction and loyalty.
Associating entities with account consumers
Topic

Associate an account with consumers

Description

Enable customer service managers to identify
the end consumers who are using products or
services and track customer information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1696


<!-- page 1697 -->
Associating entities with account consumers (continued)
Topic

Associate sold products with account
consumers

Associate install base items with account
consumers

View install base information as an account
consumer

View sold products information as an account
consumer

Description

Enable customer service managers to track
sold products or services by associating sold
products or services with account consumers.
Enable customer service managers to track
the instances provisioned by associating
install base items with account consumers.
Track the instances provisioned for your
account and which products or services run
on them by viewing a list of install base items.
Track the products or services sold to your
account by viewing the list of sold products
from the Customer Service Portal.

Associate an account with consumers
Enable customer service managers to identify the end consumers who are using products or
services and track customer information.

Before you begin

Role required: sn_customerservice_manager

Procedure
1. Navigate to All > Customer Service > Accounts.
2. Select an account.
3. Select the Consumers related list.
4. Select New to add an existing or new consumer.
Options and procedure
Option

Add an existing consumer

Procedure

a. In the Consumer field, select the Lookup
using list icon (

).

b. Select a consumer from the list.
Add a new consumer

a. In the Consumer field, select the Lookup
using list icon (

).

b. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1697


<!-- page 1698 -->
Option

Procedure

c. On the Consumer form, fill in the fields.
d. Select Submit.
5. Select Submit.

Result

The selected consumer is associated with the account.
Associate sold products with account consumers
Enable customer service managers to track sold products or services by associating sold
products or services with account consumers.

Before you begin

Role required: sn_customerservice_manager

Procedure
1. Navigate to All > Customer Service > Products > Sold Products.
2. Select a product that doesn’t have a consumer associated with it yet.
3. Either add an existing consumer or a new one.
Options and procedure
Option

Add an existing consumer

Procedure

a. In the Consumer field, select the Lookup
using list icon (

).

b. Select a consumer from the list.
Add a new consumer

a. In the Consumer field, select the Lookup
using list icon (

).

b. Select New.
c. On the Consumer form, fill in the fields.
d. Select Submit.
4. Select Update.

Result

The product is associated with the consumer.
Associate install base items with account consumers
Enable customer service managers to track the instances provisioned by associating install base
items with account consumers.

Before you begin

Role required: sn_customerservice_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1698


<!-- page 1699 -->
Procedure
1. Navigate to All > Customer Service > Products > Install Base Items.
2. Select an item that doesn’t have a consumer associated with it yet.
3. Either add an existing consumer or a new one.
Actions and procedure
Action

Add an existing consumer

Procedure

a. In the Consumer field, select the Lookup
using list icon (

).

b. Select a consumer from the list.
Add a new consumer

a. In the Consumer field, select the Lookup
using list icon (

).

b. Select New.
c. On the Consumer form, fill in the fields.
d. Select Submit.
4. Select Update to save your changes.
View install base information as an account consumer
Track the instances provisioned for your account and which products or services run on them by
viewing a list of install base items.

Before you begin

Role required: sn_acct_consumer.consumer

About this task

View the list of install base items information from the Customer Service Portal.
Note: The Entitlements widget and the Contracts widget aren’t visible for account
consumers.

Procedure
1. Navigate to the Customer Service Portal.
2. Select Support > Install Base.
The system displays a list of install base items that belong to your account.
3. Select an install base to view its details.

Note: The default view is the form view. If you switch to the list view, the Account

and Consumer fields aren’t displayed. See Configure the Install Base items and Sold
Products lists for details.
View sold products information as an account consumer
Track the products or services sold to your account by viewing the list of sold products from the
Customer Service Portal.

Before you begin

Role required: sn_acct_consumer.consumer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1699


