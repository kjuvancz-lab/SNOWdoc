# Zurich Customer Service Management — Contact form for Email Interaction for CSM / Email interaction sections / Feature context parameters supported in Engagement Messenger +2 more

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 2028–2042 of 2452

Sections: Contact form for Email Interaction for CSM (p2028); Email interaction sections (p2028); Feature context parameters supported in Engagement Messenger (p2031); Engagement Messenger translation tables (p2034); Customer Contracts and Entitlements reference (p2035)

---

<!-- page 2028 -->
Case Lines and workflows properties (continued)
Property

Description

• True: the related list is visible.
• False: the related list is hidden.
This property applies to both CSM Configurable Workspace
and Core UI.

Contact form for Email Interaction for CSM
The Contact form enables you to add the customer contact to the interaction record.
Contact form
Field

Description

First name

First name of the customer contact.

Last name

Last name of the customer contact.

Account

Account with which the customer contact is associated.

Title

Title of the customer contact.

Language

Preferred language of the customer for all communications and interactions.

Email

Email address of the customer contact.

Business phone Business phone number of the customer contact.
Mobile phone

Mobile phone number of the customer contact.

Time zone

Time zone of the customer contact.

Notification

Enable notifications for the customer contact using the drop-down list.

Related topics
Create a customer contact

Email interaction sections
The Email interaction sections enable you to manage information within the interaction record.
Contact form
Field

Description

Name

Name of the customer contact.

Mobile phone

Mobile phone number of the customer contact.

Business phone

Business phone number of the customer contact.

Email

Email address of the customer contact.

Street

Name of the street.

City

Name of the city.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2028


<!-- page 2029 -->
Contact form (continued)
Field

Description

State/Province

Name of the state or province.

Account

Account with which the customer contact is associated.

Contact lookup
Field

Description

Lookup by name, phone, or
email

The contact lookup component enables agents to do the
following:
• Look up a contact by name, phone number, or email
address. As the agent types characters in the search box,
matching information appears in record cards below the
search box.
• Select a contact after searching by selecting the record
card. The selected record card replaces the lookup
component.
You can also create a record to add a guest user as a contact.
For more information, see Create a customer contact.

Interaction form
Field

Description

Number

Automatically created interaction number.

Type

Type of customer interaction, which is Email.

Account

Name of the customer contact's company. This field is filled
in automatically if the information is available in the contact
record.

Contact

Name of the customer contact.

Consumer

Name of the consumer.

Guest Email

Email ID of the guest user.

Verified

Option to mark the record as verified or validated.

State

Current state of the interaction. For more information, see
Interaction states .

Assigned to

Name of the assigned user.

Consumer Profile

Information about the consumer.

Short description

Brief description of the customer issue.

Work notes

Information about the interaction and the work being done to
resolve the customer issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2029


<!-- page 2030 -->
Compose and Activity stream
Application

Description

Work notes

Internal notes documented for agent’s reference. These notes
are visible only to agents and not to the customer. When a
work note is created, it appears in the Activity stream. For
more information on work notes, see Compose a work note
for internal use.

Email

Compose and send emails without leaving the record. For
more information, see Compose an email response.

Note: The first email response that the agent sends is
used to calculate the first response time duration, which
is then populated in the First response wait time field.
Filters

Activity

Enables you to filter emails, work notes, and field changes on
the interaction.
Enables agents to view the email conversations between
the agent and customer. For more information, see Using the
activity stream in an email interaction.

Apps on contextual side panel
Application

Description

Attachments

Displays files and documents associated with the current
record or interaction.

Recommended Actions

Displays the most relevant next steps based on the current
context. For more information, see Using the Recommended
Actions application.

Consumer Verify

Confirms the identity or details of the consumer involved in
the interaction. For more information, see Lookup and verify.

Contact Verify

Confirms the identity or details of the contact involved in the
interaction. For more information, see Lookup and verify.

Response Template

Displays the response template required to respond to the
customer. For more information, see Use a response template
to compose an email or a work note.

Related Lists

Displays associated items such as emails, tasks, knowledge
articles, and open cases linked to the current interaction.
• Related Email Interactions: Lists the email interactions
linked to the current interaction.
• Emails: Displays all the emails associated with the
interaction.
• Draft Emails: Find emails that are currently being drafted
and not yet sent.
• Related Tasks: Lists all cases created out of an interaction.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2030


<!-- page 2031 -->
Apps on contextual side panel (continued)
Application

Description

• Related Knowledge Articles: Displays relevant knowledge
articles that can provide further information related to the
interaction.
• Open Cases: Shows any open cases that are related to the
consumer or contact.
Customer History

Displays customer, consumer, or account history information,
depending on the customer information provided on the
interaction record. This tab includes a search field, filter,
and date range selector that agents can use to find specific
information in the history. For more information on the
customer history, see Customer History component features.

UI Actions
Application

Description

Create Case

Enables the creation of a new case from the interaction.

Close

Closes the email interaction.

Save

Saves the updates made in the email interaction.

Associate Record

Enables associating the existing cases with the current
interaction.

Assign to me

Assigns the interaction to the current agent.

Note: Assign to me is visible only in interactions in the
New state and with the Assigned to field as empty.
Related topics
Using the email interaction page

Feature context parameters supported in Engagement Messenger
Features for contextual launch capability enable you to set the default launch screen in
Engagement Messenger.
Embed code and parameters for a feature context
Feature

CHAT

Embed code

Feature parameter description

<sys_id>

{
feature: "CHAT",
params: {
"topic_id":
"<sys_id>",
"language":
"<language_name>",

Identifies the
Virtual Agent
topic to be
included in the
chat.
<language_name>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2031


<!-- page 2032 -->
Embed code and parameters for a feature context (continued)
Feature

Embed code

”sysparm_<param_na
me>":
"<param_value>"
}
}

Feature parameter description

Default chat
language. For
example, for
French, specify
fr
<param_name>:<param_value>
Any additional
parameters to
be passed to
the Virtual Agent
topic. The name
of the parameter
should start
with sysparm.
For example,
sys_param_product_name.
<sys_id>

WORK_ORDER
{

System identifier
(sys_id) of a work
order.

feature:
"WORK_ORDER",
params: {
"table":
"wm_order",
"sys_id":
"<sys_id>"
}
}
CASE

<sys_id>

{

System identifier
(sys_id) of a case.

feature: "CASE",
params: {
"table":
"sn_customerservic
e_case",
"sys_id":
"<sys_id>"
}
}
NEW_CASE

None

{
feature:
"NEW_CASE",
params: {
}
}

CASE_LIST

None

{
feature:
"CASE_LIST",

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2032


<!-- page 2033 -->
Embed code and parameters for a feature context (continued)
Feature

Embed code

Feature parameter description

params: {
}
}
<sys_id>

VIEW_ARTICLE
{

System identifier
(sys_id) of a
knowledge
article.

feature:
"VIEW_ARTICLE",
params: {
"sys_kb_id":
"<sys_id>"
}
}

<search_term>

SEARCH
{

Term to be
searched for in
a search results
query.

feature: "SEARCH",
params: {
"q":
"<search_term>"
}
}

<search_term>

CASE_SEARCH
{

Term to be
searched for in
a case results
query.

feature:
"CASE_SEARCH",
params: {
"q":
"<search_term>"
}
}

<sys_id>

CATALOG_ITEM
{

System identifier
(sys_id) of a
catalog item.

feature:
"CATALOG_ITEM",
params: {
"sys_id":
"<sys_id>"
}
}
NEW_APPOINTMENT

None

{
feature:
"NEW_APPOINTMENT",
params: {
}
}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2033


<!-- page 2034 -->
Embed code and parameters for a feature context (continued)
Feature

Embed code

NEW_WORK_ORDER

Feature parameter description

None

{
feature:
"NEW_WORK_ORDER",
params: {
}
}

HOME

None

{
feature: "HOME",
params: {
}
}

Related topics
Launch a feature in Engagement Messenger using custom code

Engagement Messenger translation tables
Engagement Messenger uses the [sys_translated_text] and [sys_ui_message] tables to store
translated text.
Each translated field on every row has one or more entries in the this table, one per language for
which ServiceNow provides a translation.
Translation tables used by Engagement Messenger
Table

Description

Translated Text
[sys_translated_text] Stores translations for configurable fields such as User Greeting and
Search Message. These fields are configured in Engagement Messenger
module configuration and have the field type translated_text.
The main fields of this table are:
• Document: Internal identifier of the feature instance record this
translation applies to.
• Field name: Title or subtitle field from feature instance record.
• Language: Language the text is translated into.
• Table Name: Name of the feature instance.
• Value: Translated text that the user sees.
For details about translating text content into different languages, see
Translated text table
and Translating text fields .
Message
[sys_ui_message]

Stores translations for static messages in Engagement Messenger.
For more information about the Message table, see Message table

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2034


<!-- page 2035 -->
Note: For information about Virtual Agent chat translation, see Virtual Agent translation
tables

Customer Contracts and Entitlements reference
Reference topics provide additional information on service contract life cycle and forms available
within the Customer Contracts and Entitlements application.

What to explore next
To learn more about configuring and using Customer Contracts and Entitlements, see:
• Configure Customer Contracts and Entitlements
• Using Customer Contracts and Entitlements

Service contract life cycle
A service contract goes through the various states in each phase of its life cycle.
In each state, a service contract is enabled to perform certain actions as mentioned in the
following table.
Service contract life cycle, related states, and actions that it can perform
Life-cycle

State

A service contract is
generated.

Draft

Action

• The start and end dates of the service contract can be
modified such that the child records' dates are within
the date range.
• The related contract lines and entitlements can be
added, removed, or modified.
• The sold product/install base item covered can be
added or removed.

Service contract gets
activated on the date of
activation.

Active

• Modifications to the service contract can be done
manually, via integration and via Sales and Order
Management workflow.
• The start date can't be modified.
• The end date can be extended and should be greater
than the current date.
• Service contract line items can be added.
• The sold product/install base item covered can be
modified.

Service contract is
deactivated on the date
of expiration.

Expired

No action.

Service contract is
canceled.

Canceled No action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2035


<!-- page 2036 -->
The service contract line items and entitlements also perform similar actions in the respective
states.
When a parent entity moves to the Expired state, the child entities inherit the same state. For
example, when a service contract expires, the related contract lines and entitlements also expire.
However, the state change of a child entity doesn't affect it parent entity.
The sold product or install base item referenced either in the contract line or an entitlement must
be in the same state as the entity where it's referenced.

Suspended state
When a sold product is suspended, the related service contract lines and entitlements, in the
Draft or Active states, move to the Suspended state as well.
A suspended service contract line or entitlement is paused for any activity, except the following:
• Editing the field values.
• Creating records in the corresponding related lists.
On resuming the sold product, the related service contract line item or entitlement acquires the
state depending on its start and end dates. For example, a resumed entitlement that has its start
date in the past and its end date in the future, acquires the Active state.
Exceptionally, when a contract line or entitlement in the Suspended state has reached its end
date, it moves to the Expired state automatically.

Date validations
A service contract line associated with a service contract must be created within the service
contract's start and end dates. Any modification to the dates of service contract lines must
comply with the date range of the parent service contract.

Service contract form
The Customer Contracts and Entitlements application uses the Service contract form to create
service contracts.
Service Contract form
Field

Description

Name

The name of the service contract.

Number

The internal unique identification number that is generated when the service
contract is created. This number isn’t editable.

Contract
The externally assigned identification number assigned to the service contract.
Reference
Account

The name of the account associated with the service contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2036


<!-- page 2037 -->
Service Contract form (continued)
Field

Description

Note:
• A service contract can be associated with either an account or a consumer.
• An account can be created if no account is found by selecting New on the
Account form. For more information on the fields in the Account form, see
Account form.
Consumer The name of the consumer associated with the contract.

Note: If no consumer record is found, you can create a consumer and add it
to the service contract. For more information, see Create a consumer record.
State

The current state of the service contract:
• Draft
• Active
• Expired
• Canceled
• Suspended

Start date

The activation date of the service contract.

End date

The date when the service contract ends.

Renewal
root

A service contract can be renewed multiple times. Renewal root refers the service
contract reference of the first or base service contract.

Renewed
from

A service contract can be renewed multiple times. Renewed from field refers to the
previous service contract that was renewed.

Service contract line form
You can create service contract lines in the Customer Contracts and Entitlements application by
using the Service Contract Line form.
Service Contract Line form
Field

Description

Name

The name of the service contract line.

Contract

The internal unique identification number that is generated when the service
contract is created. This number isn’t editable.

Parent
The internal unique identification number of the parent service contract line that
contract line is associated with the child service contract line.
Account

The name of the account associated with this service contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2037


<!-- page 2038 -->
Service Contract Line form (continued)
Field

Description

Note:
• A service contract can be associated with either an account or a
consumer.
• An account can be created if no account is found by selecting New on
the Accounts form. For more information on the fields in the Account
form, see Account form.
Location

The service or installation location.

Product
The product specification that is mapped to the sold product.
specification
Number

The internal unique identification number of the service contract line that is
generated when it is created. This number isn’t editable.

Consumer

The name of the consumer associated with this contract.

Note: If no consumer record is found, you can create a consumer and
add it to the service contract. For more information, see Create a consumer
record.
State

The current state of the contract line:
• Draft
• Active
• Expired
• Canceled
• Suspended

Note:
• The state of the service contract line is inherited from its parent service
contract.
• Suspended state is only applicable when the contract line item is created
via the Sales and Order Management workflow.
Start date

The date of activation of the service contract line.

End date

The date when the service contract line expires.

Product

The product model that is mapped to the product offering for the sold product.

Product
offer

The product offering that is mapped to the sold product.

Sold
product

The name of the sold product that is added to the contract line.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2038


<!-- page 2039 -->
Service Contract Line form (continued)
Field

Description

Note:
• When the service contract line item is created via the Sales and Order
Management workflow, this field displays the sold product name from
which the contract line is generated.
• When service contract lines are created via integration, the field
becomes invalid.
Renewal
root

A service contract line can be renewed multiple times. Renewal root refers the
service contract line reference of the first or base service contract line.

Renewed
from

A service contract line can be renewed multiple times. Renewed from field refers
to the previous service contract line that was renewed.

You can see the pricing information on a contract line for subscription contracts that helps you in
reviewing your contract information.
Subscription & Pricing
Term (Months)

Validity period of having access to the service
or product.

Subscription Start Date

Start date of the contract subscription.

Subscription End Date

End date of the contract subscription.

Price List

Price list associated for servicing the product.

Unit net price

The price for each unit within the product
offering. The net price of a single unit of the
sold product.

Pricing method

The pricing method for the selected sold
product. It can be one-time or recurring. Onetime pricing charges one fee for the product
offering. Recurring pricing lets you set the
pricing periodicity.

Periodicity

The frequency of the pricing method. It can be
monthly, quarterly, semiannually, or annually.
This field becomes valid only when the
method in the Pricing method field is a
recurring payment.

One Time Price

Represents one-time charges to be paid for
the product or service.

Monthly Recurring Price

Represents the price that the customer is
supposed to pay monthly during usage of the
product.

Annual Recurring Price

Represents the price to pay annually during
usage of the product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2039


<!-- page 2040 -->
Subscription & Pricing (continued)
Cumulative one-time price

Represents one-time charges to be paid for
the parent line and all the child line items.

Cumulative monthly recurring price

Represents monthly price for the parent line
and all the child line items

Cumulative annual recurring price

Represents annual price for the parent line
and all the child line items.

Cumulative net price

Represents the total price of the contract line
by calculating the roll-up amount of all root
lines.

Note: When a service contract line item is created manually, the Pricing method, Unit

net price, and Periodicity fields are invalid. They’re only applicable when the contract line
is created by the Sales and Order Management workflow or by integration. In that case,
these fields are auto-populated with the details from the related sold product. The start and
end dates of a child service contract line must be in between the start and end date of the
associated parent service contract line.

Entitlement form
The Entitlement form can be used to create entitlements in Customer Contracts and
Entitlements.
Entitlement form
Field

Description

Name

The name of the entitlement.

Product

The product associated with the entitlement.

Contract

The internal unique identification number that is generated when the service
contract is created. This number isn’t editable.

Account

The name of the account associated with this contract.

Note:
• A service contract can be associated with either an account or a
consumer.
• An account can be created if no account is found by selecting New on
the Accounts form. For more information on the fields in the Account
form, see Account form.
Location

The service or installation location.

Product
The product specification that is mapped to the sold product.
specification
Note: Configure this field manually on the entitlement form using form
layout.
Consumer

The name of the consumer associated with this contract.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2040


<!-- page 2041 -->
Entitlement form (continued)
Field

Description

Note: If no consumer record is found, you can create a consumer and
add it to the service contract. For more information, see Create a consumer
record.
Service
The name of the related service contract line.
contract line
State

The current state of the entitlement:
• Draft
• Active
• Expired
• Canceled
• Suspended

Note: The state of the entitlement is inherited from its parent contract line.
Start date

The entitlement activation date.

End date

The date when the entitlement ends.

Sold
entitlement

The name of the sold product that is added to the entitlement.

Note:
• If the entitlement is created manually, this field remains read-only.
• The field must have the same state as its related entitlement.
• The field becomes invalid when entitlements are created via integration.

Product
offer

The product offering that is mapped to the order line item.

Renewal
root

An entitlement can be renewed multiple times. Renewal root refers the
entitlement reference of the first or base service entitlement.

Renewed
from

An entitlement can be renewed multiple times. Renewed from field refers to the
previous entitlement that was renewed.

You can see the pricing information on an entitlement for subscription contracts that helps you in
reviewing your contract information.
Subscription & Pricing
Term (Months)

Validity period of having access to the service
or product.

Subscription Start Date

Start date of the contract subscription.

Subscription End Date

End date of the contract subscription.

Price List

Price list associated for servicing the product.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2041


<!-- page 2042 -->
Subscription & Pricing (continued)
Unit net price

The price for each unit within the product
offering. The net price of a single unit of the
sold product.

Pricing method

The pricing method for the selected sold
product. It can be one-time or recurring. Onetime pricing charges one fee for the product
offering. Recurring pricing lets you set the
pricing periodicity.

Periodicity

The frequency of the pricing method. It can be
monthly, quarterly, semiannually, or annually.
This field becomes valid only when the
method in the Pricing method field is a
recurring payment.

One Time Price

Represents one-time charges to be paid for
the product or service.

Monthly Recurring Price

Represents the price that the customer is
supposed to pay monthly during usage of the
product.

Annual Recurring Price

Represents the price to pay annually during
usage of the product.

Cumulative one-time price

Represents one-time charges to be paid for
the parent line and all the child line items.

Cumulative monthly recurring price

Represents monthly price for the parent line
and all the child line items

Cumulative annual recurring price

Represents annual price for the parent line
and all the child line items.

Cumulative net price

Represents the total price of the contract line
by calculating the roll-up amount of all root
lines.

Sold Product Covered form
The Customer Contracts and Entitlements application uses the Sold Product Covered form
to add sold products or install base items that are covered to the Customer Contracts and
Entitlements entities.
For information about adding sold products or install base items that are covered, see Add a sold
product or install base item to a service contract.
Sold Product Covered form
Field

Description

Contract

The reference number of the associated service contract.

Sold
Product

The products that are sold to a customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2042


