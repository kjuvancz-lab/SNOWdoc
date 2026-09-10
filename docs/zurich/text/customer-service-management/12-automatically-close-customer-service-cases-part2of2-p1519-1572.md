# Zurich Customer Service Management — Automatically close customer service cases

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1519–1572 of 2452 | Part 2 of 2

Sections: Automatically close customer service cases (p1369); Administer Customer Contracts and Entitlements (p1371); Integrate (p1372); Integrate with IT Service Management (p1373); Integrating with Service Portfolio Management (p1398); Integrating with Continual Improvement Management (p1402); Integrating with IT Operations Management (p1403); Integrating with Customer Project Management (p1403); Integrating with Financial Management (p1420); Integrating with Adobe Experience Manager (p1423); Integrating with Computer Telephony Integration (CTI) (p1442); Integrating with Microsoft Outlook (p1454); Integrating with Safe Workplace applications (p1456); Integrating with consumer messaging apps (p1458); Integrating with Process Mining (p1468); Integrating with contact centers (p1469); Use (p1507); Manage cases (p1509)

---

<!-- page 1519 -->
Field

Description

to the Work notes list receive a notification when work
notes are added to a case task.
Additional comments

Customer-viewable comments. Each comment is
inserted into the Activity field when the user selects
Post.

4. Click Update.

Create a case task of a specific type for a customer service case
Customer service agents can create different types of case tasks by making selections from the
case task type selector screen.

Before you begin
Role required:

• sn_customerservice_agent
• sn_customerservice.consumer_agent
• sn_customerservice_manager
• sn_customerservice.svc_location_agent
• sn_customerservice.case_task_agent

About this task

The types of case tasks that agents can create depends on the configuration of the customer
service case types and service definitions features. For more information, see the following
topics:
• Configure customer service case types
• Manage customer service case types
• Configuring service definitions
In CSM Configurable Workspace, agents use the Case type selector screen to make selections
and create cases.

Procedure
1. Create a case task.
◦ Select New from a case task list.
◦ Select New from the Tasks related list tab on a case record.
◦ Select the + icon on the related records task list in the Dynamic Related Records component.
◦ Select the Task declarative action on the activity viewer.
◦ Select Create Task in a case playbook stage.
2. Make a selection in the case task type selector.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1519


<!-- page 1520 -->
◦ If you create the case task from a case task list, the Service task field on the case
task type selector shows all of the related services where the target table is Case Task
[sn_customerservice_task] and extensions of Case Task.
◦ If you create the case task from a case record, the Case task service field lists the task
services related to the case service. If the case has no service, the Service task field shows
all of the related services where the target table is Case Task [sn_customerservice_task] and
extensions of Case Task.
3. Select Create task
The case task is created with the selected task service definition. If any default values have
been defined in the case task service definition, these values are populated on the case task
record.

Create a work order for a customer service case
Create a work order for a customer service case as part of the case resolution process.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

About this task

After a work order is created, it appears in the Work Orders related list on the Case form. The
case number is also referenced on the work order.

Procedure
1. Open the desired case.
2. From the Work Orders related list, click New.
3. Fill in the fields on the Work Order form.
For more information, see Create a work order

.

4. Click Update.
Related topics
Manage work orders

Create a request on behalf of a customer or consumer
Customer service agents can create requests on behalf of customers from CSM Configurable
Workspace or from the platform interface.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

About this task

Customer service agents can browse the catalog and make a selection to create a request on
behalf of a customer.
• From CSM Configurable Workspace, agents can create requests from case and interaction
records.
• From the platform interface, agents can create requests from case records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1520


<!-- page 1521 -->
Procedure
1. Open a customer service case.
2. To create a request, do one of the following.
◦ CSM Configurable Workspace: Click the More UI Actions icon (
Request.

) and select Create

◦ Platform interface: Click the form context menu icon and select Create Request.
3. Select an item or a service from the catalog to display the item page.
4. Optional: Select the quantity.
5. To complete the request, do one of the following.
Interface

Action

Complete these steps:
a. Click Order Now.

CSM Configurable Workspace

b. Add or change the information in these
fields on the Order Confirmation pop-up
window: Request for, Delivery information,
Special instructions.
c. Click Checkout.
The system creates the request and displays
the request number. Click View Details to
open the request record.
Click Order Now.

Platform interface

The system creates the request and displays
the request number. An information message
provides a link to the case associated with
the request.

6. From the Case form, click the Requests related list to see the requests associated with the
case.

Add an entitlement to a case
Add one or more entitlements to a customer service case record in CSM Configurable
Workspace.

Before you begin

Role required: sn_esm_agent, sn_customerservice.consumer_agent

About this task

Agents can view the available entitlements on a customer service case and associate one
or more entitlements to the case. Available entitlements are associated with the account,
consumer, or contract selected on the case record.
Starting with the Zurich release, the sn_customerservice.advanced_entitlements
system property determines if agents can associate one entitlement to a case or multiple
entitlements.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1521


<!-- page 1522 -->
• If set to true, the Case Entitlements related list is visible on the Case form and the Entitlement
field is hidden. Agents can use this list to associate multiple entitlements to the case.
• If set to false, the Entitlement field is visible on the Case form and the Case Entitlements
related list is hidden. Agents can use this field to associate one entitlement to the case.
For more information, see Properties installed with Customer Service Management.

Procedure
1. Open a case record in CSM Configurable Workspace.
2. Add one or more entitlements to the case.
3. Select the Case Entitlements related list tab and then select Add.
If the record page displays the Related Lists tab in the contextual side panel, expand the Case
Entitlements list and then select View all to display the Case Entitlements list.
4. Select one or more entitlements from the Add case entitlements pop-up window.
The Add entitlements pop-up window displays the entitlements associated with the account,
consumer, product, and contract selected on the case record.
5. Select Add on the Add case entitlements pop-up window.
The selected entitlements are added to the Case Entitlements list.
6. Select Save to save the changes to the case.

Add an entitlement to a case line
Add one or more entitlements to a case line in CSM Configurable Workspace.

Before you begin

Role required: sn_customerservice_agent

Procedure
1. Open a case line record in CSM Configurable Workspace.
2. Select the Case Line Entitlements tab.
3. Select Add on the Case Line Entitlements tab.
4. Select one or more entitlements from the Add entitlements pop-up window.
The Add entitlements pop-up window displays the entitlements associated with the Account
field on the case line record and the Contract field on the parent case record.
5. Select Add on the Add entitlements pop-up window.
The selected entitlements are added to the Case Line Entitlements tab.

Close a customer service case
Close a case at any time, except when it is in the Resolved state.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

About this task

After an agent proposes a solution for a case, the state changes to Resolved and the customer
can either choose to accept or reject the solution. If accepted, the case is closed. If rejected, the
state reverts to Open.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1522


<!-- page 1523 -->
An agent or agent manager can close a case at any time, except when it is in the Resolved state,
whereas only a customer can accept or reject the proposed solution. When an agent or agent
manager closes a case, details must be included in the Resolution notes field.

Procedure
1. Open a customer service case in CSM Configurable Workspace.
2. Select the Details tab.
3. In the Closure Information section, fill in the following fields.
a. Select a code in the Resolution code field that indicates the resolution state of the case.
b. Enter any information related to the closure in the Resolution notes field.
4. Select Close Case.
Customer service satisfaction surveys
Customers can complete a satisfaction survey when they accept a case solution or close a case
from the Customer Service Portal.
When a customer accepts a proposed solution for a case by clicking Accept Solution on the
case record or closes a case by clicking Close Case, they can access a satisfaction survey in the
Customer Service Portal. Customers have the option of completing or skipping the survey.
If a customer is using the email communication channel, the system sends an email with a link to
a customer satisfaction survey when an agent closes a case. The customer can click on this link
to complete the survey.

Note: One survey can be generated per case. If a survey has already been generated for
a case, a second survey cannot be generated even if a case is reopened and closed again.
The Customer Service application includes a default survey that you can customize as needed.
To customize the default survey, navigate to Survey > View Surveys and select Customer
Service Satisfaction Survey from the list of assessment metric types. To edit the default survey,
open the survey and click the Survey Designer button.
You can also design your own survey using the survey designer tool. After designing a survey, be
sure to select a condition for triggering the survey.
Related topics
Assessments and Surveys
Service Manager dashboard

Create a consumer case from a chat
If a consumer chat results in the need to open a case, create the case directly from the
conversation.

Before you begin

Role required: sn_customerservice.consumer_agent, sn_customerservice_manager, or admin

About this task

When you create a case from a support conversation, the system copies the conversation history
to the case activity stream as comments and work notes. Future messages are tracked in the
case as well.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1523


<!-- page 1524 -->
Procedure
1. Navigate to All > Collaborate > Connect Support.
The Connect workspace opens in a new tab.
2. Click the support tab of the Connect sidebar, indicated by a headset icon.
The support tab displays Queues to which you belong. It also displays your open support
conversations under Cases. When a consumer starts a support conversation or an agent
transfers a conversation to a queue, any agent who belongs to the associated queue has
the option to accept the conversation. An agent can also request to transfer a conversation
directly to you.
3. Under Cases, open a consumer conversation.
4. At the bottom of the conversation, click the menu icon to open the Connect actions menu.
5. In the Connect actions menu, select Create Case.
The system opens a new Case form and fills in some of the fields based on the conversation
details. (For a case created from a consumer chat, the Consumer field is filled in and the Short
description field displays the initial chat request from the consumer.)
6. Complete the form as necessary and click Submit.
The system shares the record in the conversation, copies the conversation to the record
activity stream, and references the record on the Chat Queue Entry [chat_queue_entry] table.

Create a consumer case from an anonymous chat
If an anonymous chat results in the need to create a consumer case, create the case directly
from the conversation.

Before you begin

Role required: sn_customerservice.consumer_agent, sn_customerservice_manager, or admin

About this task

When you create a case from a support conversation, the system copies the conversation history
to the case activity stream as comments and work notes. Future messages are tracked in the
case as well.

Procedure
1. Respond to an anonymous chat request.
2. Chat with the user to determine the issue.
3. At the bottom of the conversation, click the menu icon to open the Connect actions menu.
4. In the Connect actions menu, select Create Case for Guest.
The system opens a new Case form and fills in some of the fields based on the conversation
details. For a case created from a guest user chat, the Short description field displays the
initial chat request from the user.
5. Complete the form as necessary and click Submit.
The system automatically shares the record in the conversation, copies the conversation to the
record activity stream, and references the record on the Chat Queue Entry [chat_queue_entry]
table.

Create a consumer record
Consumer service agents and managers can create consumer records from the Customer
Service Management application.

Before you begin

Role required: sn_customerservice.consumer_agent, sn_customerservice_manager, or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1524


<!-- page 1525 -->
Procedure
1. Navigate to All > Customer Service > Customer > Consumers.
2. Select New.
3. Fill in the fields on the Consumer form as necessary.
4. Fill in the fields on the Primary Address tab.
A consumer can have multiple addresses but only one primary address. The primary address
is stored in the Primary Address tab on the Consumer form and in the Addresses related list.
5. If desired, fill in any of the fields on the Preferences tab.
6. Select Submit.
The record is added to the Consumers table (csm_consumer). The primary address is added to
the Addresses related list and the Primary field is set to true.
Related topics
Create additional consumer addresses

Create a consumer record from an anonymous chat
If an anonymous chat results in the need to create a consumer record, create the record directly
from the conversation.

Before you begin

Role required: sn_customerservice.consumer_agent, sn_customerservice_manager, or admin

About this task
Procedure
1. Respond to an anonymous chat request.
2. Chat with the user to determine the issue.
3. At the bottom of the conversation, click the menu icon to open the Connect actions menu.
4. In the Connect actions menu, select Create Consumer and Case for Guest.
The system opens a Consumer form and fills in some of the fields based on conversation
details. For a consumer record created from a guest user chat, the First name, Last name, and
Email fields display information from the initial chat request.
Selecting this option creates a consumer record using the information provided on the record
producer and then associates the case with the newly created consumer. The Case form is
also populated with the information provided on the record producer.
5. Complete the form as necessary and click Submit.

Create additional consumer addresses
Consumers can have multiple addresses, including one primary address.

Before you begin

Role required: sn_customerservice.consumer_agent, sn_customerservice_manager, or admin

About this task

The primary address is stored in the Primary Address tab on the Consumer form and in the
Addresses related list. When you fill in the fields in the Primary Address tab and click Submit,
this information is added to the Addresses related list as the primary address, with the Primary
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1525


<!-- page 1526 -->
field set to true. Any changes made to the Primary Address fields are also updated in the related
list. A consumer can have only one primary address.
Other addresses, such as billing or shipping addresses, can be created and stored in the
Addresses related list. For these other addresses, the Primary field is set to false.

Procedure
1. Navigate to All > Customer Service > Customer > Consumers.
2. Click the number of the desired consumer.
3. In the Addresses related list, click New.
4. Fill in the fields on the Location form.
5. To denote this address as the primary address for the consumer, enable the Primary check
box.
A consumer can have multiple addresses but only one primary address.
6. Click Submit.

Respond to a case using an email quick message
Use predefined quick email messages to quickly draft replies to customers. Agents can select
predefined quick messages to add content into the message body of emails.

Before you begin

Role required: sn_customerservice_agent

About this task

Business managers and admins can set up email quick messages and predefine the content
for replying to cases. For example, you can predefine personal greetings, disclaimers, different
types of additional information, and signatures.
You can incorporate icons, business logos, pictures, HTML layout, and rich text format. You can
also configure quick messages so that only a certain user or a group can view them.
For more information, see the following topics:
• Composing emails with quick messages
• Define a quick message

Procedure
1. Open a customer service case.
2. Select the More Actions icon (

) and then select Email.

3. Select the Quick Messages drop-down menu in the Compose Email header and select a
predefined message.
The content of the quick message is inserted in the message body at the cursor location.
4. Optional: Select additional quick messages.
5. Select Send.
Related topics
Define a quick message
Composing emails with quick messages
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1526


<!-- page 1527 -->
Initiate a conference call from a case
As part of resolving a customer service case, you can initiate a conference call between involved
users.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, admin

About this task

Customer service agents can initiate a conference call from a case and add participants,
including on-call members of shift groups.

Note:
Notify must be set up before you can use Notify on task. Ensure there are Notify phone
numbers (E.164 or short code) in number groups with phone call workflows. Also ensure the
property glide.notify.task.phone_number is set to one of these Notify phone numbers.

Procedure
1. Open the desired case.
2. Click the Start Conference Call related link.
3. Select one or more Recipients to participate in the conference call.
You can add individual participants, groups, or individual phone numbers.
Related topics
Start a conference call
Start a conference call from a task

Use the Activity Stream
Enhancements to Activity stream help reduce cluttering the Activity Stream and the agent effort
to understand the case context.

Before you begin

Role required: admin

About this task

Enhancements in the Activity Stream include the following:
• Filter by post type
• Sort messages and events
• Improved email representation

Procedure
1. Open a customer service case.
You would see the Activity Stream with the filter options.
2. Click the Filter icon ( ).
The Filter sets are displayed. The conversation filter sets items such as emails, comments, and
work notes.
3. Select the Post types filters from the drop-down list.
For example, if you select Work notes, only the notes are displayed in the Activity Stream.

Note: Selecting only Field changes displays the fields in the Activity Stream.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1527


<!-- page 1528 -->
4. Select the Field changes drop-down list to filter the fields.
For example, if you select State, only the state changes are visible.
5. Click the Flagged tab to see only the flagged messages.
Flagged messages are visible to everyone who has access to the case.
6. Click the Sort icon (

) to sort the events and messages based on the timeline.

7. Click the More Options icon ( ) and select Expand all posts to view the post details or select
Collapse all posts to go back to the previous state.
8. Click Show more in an email to view the latest email response in an expanded form.
9. Click Show full conversation to view the whole email thread.
Related topics
Configure Activity stream

Resolve cases with knowledge and community content
Enable agents to resolve a case more quickly by searching for information from the knowledge
base and community and, if helpful, associating it to the case.

Before you begin

Role required: sn_customerservice_agent

About this task

The Case form displays contextual search results based on text entered in the Short Description
field. These search results provide targeted knowledge articles, pinned articles, and community
content to customer service agents.
Customer service agents can search for information that is related to a case when opening a
case or in a case that is already open. If the search results in any related content, the agent can
preview the content. If the information is relevant, the agent can mark it as helpful. Knowledge
articles can be also attached to the case.
By default, search results include knowledge articles, pinned articles, and solved community
questions and blogs. Depending on the configuration, search results can also include other
types of information, such as open and resolved cases and problems. With the Predictive
Intelligence for Customer Service Management plugin (com.snc.csm_ml), you can also view
similar cases and similar knowledge articles.
Customer service case managers can use the Demand Insights for Cases dashboard to identify
which cases have no or insufficient knowledge coverage. For more information, see Demand
Insights for Cases dashboard .

Procedure
1. Navigate to All > Customer Service > Cases.
2. Perform one of the following actions.
◦ Open a new case and start typing in the Short description field.
◦ Open an existing case and click Related Search Results.
Any matching search results are displayed in the Related Search Results section. The content
displayed depends on the permissions assigned to the agent in Knowledge and Communities.
3. Click one of the results to open the content in a pop-up window.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1528


<!-- page 1529 -->
4. Optional: Perform any of the following steps.
To

Do this

a. Click Attach next to the knowledge article you
want to attach to the case.
b. If you opened the knowledge article, click At­
tach to Case in the pop-up window.

Attach a knowledge article to the case

The knowledge article is displayed in Activities
as a work note and is visible only to customer
service agents. A link to the article is also en­
tered in the Additional comments field.
c. To make the article visible to customers, click
Post.

Note: You cannot attach Communities con­
tent to the Case form.
Mark the content as helpful for resolv­
ing the associated case

Click This helped in the pop-up window.

Scroll to previous or next result

Use the arrow keys to scroll up to the previous or
down to the next result.

5. Perform one of the following actions.
◦ If you opened a case, click Submit.
◦ If you updated an existing case, click Update.

Manage skills for a customer service case
Add or remove optional and mandatory skills for a customer service case.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, admin

About this task

Agents can also change a skill between mandatory and optional.

Procedure
1. Open the desired case.
2. Click the Task Skills related list.
3. To create a new skill:
a. Click New.
b. Select a skill in the Skill field.
c. If mandatory, click the Mandatory check box.
d. Click Save.
4. To switch the skill type:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1529


<!-- page 1530 -->
a. Click the desired skill.
b. Enable or disable the Mandatory check box.
c. Click Save.

Using Chat Zoom Connector
Initiate a Zoom meeting directly from a chat by using the Chat Zoom Connector application.
As an agent you can initiate a Zoom meeting from a chat to understand and resolve customer
issues faster through live interactions. For more information, see Initiate Zoom meetings from
chats.
By default, for each interaction record for a Zoom meeting, a Notify conference call number is
also generated. As an agent, you or the agent manager can access the recording URL of the
Zoom meeting from the activity stream of the interaction record. For more information, see
Interaction records in Agent Workspace .
As an agent manager, you can access the details of Zoom meetings initiated from a customer
chat using the Zoom interaction record. The meeting recordings are available in the interaction
record created for Zoom. For more information, see View details for Zoom meetings initiated from
chats.

Note: The conference call details of a Zoom meeting are stored in the Notify Conference
Calls [notify_conference_call] table.
As a user in the notify_admin or notify_view role, you can access the details of a Zoom meeting
by navigating to Notify > Recordings, and selecting the corresponding conference call number.
For more information, see Notify conference calls .

Chat Zoom Connector user roles
The users with the roles listed in the following table can use the Chat Zoom Connector
application.
Roles required for Chat Zoom Connector
Roles

Tasks

agent_workspace_user

Initiate a Zoom meeting from a chat to understand customer
issues and resolve issues faster through live interactions.

sn_customerservice_manager View details for Zoom meetings initiated from a customer chat
using the Zoom interaction record. The meeting recordings are
available in the interaction record created for Zoom meetings.
notify_admin, notify_view

View details for Zoom meetings initiated from a customer chat
by using Notify.

Activation information
Configure the Chat Zoom Connector application for initiating Zoom meetings from customer
chats. For more information, see Configure Chat Zoom Connector.
Related topics
Chat Zoom Connector

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1530


<!-- page 1531 -->
Initiate Zoom meetings from chats
Resolve issues faster by initiating a Zoom meeting directly from a customer chat using the Chat
Zoom Connector application.

Before you begin

Ensure that an administrator has installed and set up the Chat Zoom Connector application. For
more information, see Configure Chat Zoom Connector.
Role required: agent_workspace_user

About this task

You can use a Zoom meeting to host a screen-sharing or video conference. You can also record
the meeting and save the recordings.

Procedure
1. Navigate to Agent Workspace.
2. Accept and respond to a chat from your agent inbox.
3. Optional: Ask questions and find out more about the issue.
4. To start a Zoom session with a customer, click the quick actions icon ( ), and then select /
zoom.

Tip: You can also enter /zoom in the text field of the chat.
5. Click the send icon ( ).
A message announcing that the Zoom meeting has started and one containing the meeting
URL are posted in the chat window for both agent and customer. If the session was initiated
through the Private Chat tab, the session's URL isn't shared with the customer.
6. Click the URL to host the Zoom meeting and request the customer to click the URL too.
As a host of the meeting, you can admit participants by sharing the meeting URL with them.
The number of participants you can admit depends on your Zoom account settings.
The meeting topic is set to the number of the associated chat interaction record. The meeting
description is set to the short description of the associated chat interaction record. If the short
description of the associated chat interaction record is empty, the meeting description is
shown as a dash (-).
7. Optional: Record the meeting.
For more information, see the Zoom Help Center

.

Result

An interaction record of type Zoom is generated for the meeting that captures the Notify
conference call details for this Zoom session. A Notify administrator or agent manager can
access the conference call details associated with the Zoom meeting from the interaction record.

Note: The conference call number is a value automatically generated in the Channel

Metadata Record field on the Interaction form. For more information, see View details for
Zoom meetings initiated from chats.
The recording URL of the Zoom meeting is added to the activity stream of the interaction record.
For more information, see Interaction records in Agent Workspace .
View details for Zoom meetings initiated from chats
View details for a Zoom meeting initiated from a chat by accessing the associated interaction
record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1531


<!-- page 1532 -->
Before you begin

Role required: sn_customerservice_manager

About this task

This task provides steps for a user with the sn_customerservice_manager role to access Zoom
meeting details from an interaction record. For information about how users with other Notify
roles view Zoom meeting details, see Using Chat Zoom Connector.

Procedure
1. Navigate to Interaction > All.
2. In the Interactions list, click the link to an interaction record of type Zoom from the Number
column.

Result

The recording URL of the Zoom meeting, if available, is added as a work note and displayed in
the activity stream of the Interaction form.
On the Interaction form, you can view the details for a Zoom meeting.

Note: Your administrator might have configured the interaction record to show different
application-specific field values.
Interaction form
Field

Description

Number

Unique number to identify the interaction record.

Type

State
Opened for

Assigned to

Parent

Type of channel communication. For a Zoom meeting,
the field is automatically set to Zoom.
Different states through which the interaction
proceeds for a resolution.
Customer contact or consumer for whom the Zoom
meeting was initiated. This field is automatically set to
the Opened for field value from the chat interaction
record from which the Zoom meeting was initiated.
Agent the interaction record is assigned to. This field
is automatically set to the Assigned to field value
from the chat interaction record from which the Zoom
meeting was initiated.
Number of the chat interaction record from which this
Zoom meeting was initiated. This field is automatically
set to the number of the chat interaction record.
You may need to configure the form to add this field.
For more information, see Configure the form layout

Channel Metadata Record

.

Number of the Notify conference call. This field
is automatically set to a conference call number

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1532


<!-- page 1533 -->
Interaction form (continued)
Field

Description

associated with this meeting and stored in the Notify
Conference Calls [notify_conference_call] table.

Note: To view more details such as the meeting
URL and participant details, click the preview this
record icon ( ) for this field.
You may need to configure the form to add this field.
For more information, see Configure the form layout
Channel Metadata Table

.

Table containing a list of conference calls started
using Notify. This field is automatically set to Notify
Conference Calls [notify_conference_call].
You may need to configure the form to add this field.
For more information, see Configure the form layout

Consumer

Consumer’s account automatically set to the
Consumer field value from the chat interaction record
from which the Zoom meeting was initiated. You may
need to configure the form to add this field. For more
information, see Configure the form layout .

Contact

Customer contact automatically set to the Contact
field value from the chat interaction record from
which the Zoom meeting was initiated. You may
need to configure the form to add this field. For more
information, see Configure the form layout .

Account

User's account automatically set to the Account
field value from the chat interaction record from
which the Zoom meeting was initiated. You may
need to configure the form to add this field. For more
information, see Configure the form layout .

Short Description

Short description of the interaction.

.

Note: The short description field is empty for a
Zoom meeting.
Related topics
Initiate Zoom meetings from chats

Using CSM Configurable Workspace in Customer Service Management
Use CSM Configurable Workspace to interact with customers, create and work on cases, and
resolve questions and issues.
Customer service agents can complete most tasks in CSM Configurable Workspace, while other
tasks only apply to the platform interface. This information is noted at the top of each task.
The tables below describe some of the basic tasks that agents can perform in CSM Configurable
Workspace as well as additional features that are available for use.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1533


<!-- page 1534 -->
For additional task information, see Manage cases.
Agent tasks
Task

Description

Use Knowledge to assist Search for knowledge articles
with cases
and attach them to cases or open
articles in sub-tabs for easier
reading. Report a knowledge gap
if you can't find relevant articles
and, if permission is enabled,
create articles directly from
cases.
Respond to community
discussions

If a case is created from a
community discussion, you can
respond to the discussion from
the case.

Use response templates Quickly respond to customers
using different types of
predefined information.
Manage email tasks

Preview emails and compose
and send responses from cases.

Details

Search for knowledge articles
Open a knowledge article
Report a knowledge gap
Create a knowledge article

Respond to a community thread
from a case

Use response templates to add
information to cases and case
tasks
Compose an email from a case
Compose an email from the
ribbon component
Send an email response from a
case activity stream
Preview an email from the Emails
related list

Additional features
Feature

Description

Create a specific type of Create a case for a specific type
case
of customer issue.

Details

Create a customer service case
of a specific type

Look up a customer

Quickly look up contacts or
consumers using information
such as the name, phone
number, or record number.

Use Customer Central

Look up customer information
Use Customer Central
and recent activity to find out
more about the customer you are
assisting.

View product data

View details about customer
instances, products, and
components.

Look up and verify a contact or
consumer

View install base information
View sold product information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1534


<!-- page 1535 -->
Additional features (continued)
Feature

Description

Use playbooks

Use the step-by-step guidance
provided by playbooks to
complete tasks and resolve
cases.

Use guided decisions

A guided decision prompts
you to answer questions and
provide inputs and then offers
recommendations on the steps
needed to resolve a case.

Use recommended
actions

A recommended action is
a suggested helpful action
for resolving a case. A
recommendation can be a
guidance, guided decision, or a
suggested value for a case field.

Details

Interact with playbooks

Use Guided Decisions in
playbooks to resolve cases
Use Guided Decisions in
recommended actions to resolve
cases
Use Recommended Actions to
resolve cases

Use trending case topics Use trending case topics to
identify cases with similar issues. View trending case topics
Add trending case topics to
existing major cases
Create major cases for trending
case topics
Use estimated time to
resolve a case (ETTR)

Call back a customer

Use machine learning to
predict the estimated time to
resolve a case based on case
attributes such as the short
description, category, priority,
and assignment group.
Call a customer back either
immediately or at the date and
time requested by the customer.

Estimated time to resolve a case
Time to resolve ribbon
component

Address a callback request from
a customer

Open CSM Configurable Workspace
Open CSM Configurable Workspace so that you can work on customer service cases.

Before you begin

Role required: sn_customerservice_agent

Procedure
1. Navigate to All > Workspace Experience > Workspaces.
2. Select CSM Configurable Workspace.
The workspace opens in a new browser tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1535


<!-- page 1536 -->
Look up and verify a contact or consumer
An agent can look up contact or consumer information from a saved interaction record, review
and confirm the information, and then populate the information on the interaction record.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, admin

About this task

Agents can search for information such as name, phone number, email address, case number, or
order number.

Procedure
1. Open CSM Configurable Workspace.
2. In the contextual side panel, click the Contact Verify icon (
(

) or the Consumer Verify icon

) to access the lookup and verify feature.

3. In the Verify Contact or Verify Consumer fields, enter information such as the first few letters
of a first or last name or the first few digits of a phone or case number.
These fields use a type-ahead search feature that displays results in a list and narrows the
results as more characters are entered. Multiple display fields in the search results help
to differentiate contacts. When searching for a record number, the contact or consumer
associated with the record is returned in the search results.

Note: Delete characters from the field to clear the search results.
4. Select the desired result from the list.
This action displays information about the selected contact or consumer in a verification card.
If the information is not correct, repeat steps 2 through 4.
5. Click Verify to confirm the selected contact or consumer.
This action does the following:
◦ Populates the Account and Contact or Consumer fields on the interaction record.
◦ Enables the Verified check box.
6. Optional: You can look up and verify another contact or consumer by repeating steps 2
through 4 and entering different search information.
7. Click Save to save the interaction record and refresh the related lists.
Related topics
Lookup and verify
Create a contact or consumer using Lookup and verify
An agent can create a contact or consumer from the Lookup and verify feature in the Contextual
side panel.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, admin

About this task

Agents can use the Lookup and verify feature to search for contacts and consumers. After
verifying a user's information, agents can populate that information on the interaction record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1536


<!-- page 1537 -->
If an agent can't find a contact or consumer, they can create a record for that user from within the
Lookup and verify feature.

Procedure
1. Open CSM Configurable Workspace.
2. From a saved interaction record, click one of the following icons in the Contextual side panel to
access the Lookup and verify feature.
◦ Verify Contact icon (
◦ Verify Consumer icon (

)
)

3. Enter user information in one of the following fields: Verify Contact or Verify Consumer.
This information can include the first few letters of a first or last name or the first few digits of a
phone or case number.
4. If you cannot locate the contact or consumer and choose to create a record, click Create
Contact or Create Consumer.
The system displays the Create Contact or Create Consumer form in the Contextual side
panel.
If the Account field on the Interaction record is populated when you click Create Contact, the
Account field on the Create contact form is populated with the same information.
5. Add information to the fields on the form and click Create.
The system performs the following actions:
◦ Saves the contact or consumer record.
◦ Creates and displays the contact or consumer card.
◦ Adds the information to the interaction record.
Related topics
Lookup and verify
Look up and verify a contact or consumer
View the install base in CSM Configurable Workspace
View a customer’s install base in CSM Configurable Workspace to quickly identify the support
they require as well as the opportunities for adoption and upsell.

Before you begin

Verify that the Customer Service Install Base Management plugin (com.snc.install_base) is
activated.
Role required: sn_customerservice_agent

About this task

You can view information about a customer's purchased products and services, delivery details,
and additional components that are available for the product models.

Procedure
1. Open CSM Configurable Workspace.
2. Select the account that you want to view the install base for.
3. Select the Install Base related list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1537


<!-- page 1538 -->
4. Scroll through the Sold Products tree view to view the details about the sold product and the
list of install base items that belong to it.

5. On the form header, select the Hierarchy icon
to see the full product model that the sold
product is part of.
The product model hierarchy opens in a separate window. Unpurchased product components
have a shopping cart icon next to them.

6. View the install base items and related lists in the configurable workspace by navigating to
Products > Install Base item.
7. View the details of the install base item by opening an install base item.

Note: You can also use the right navigation pane to view the install base items and
related list.
View sold product information in CSM Configurable Workspace
Enable customer service agents or managers to view the sold products and the service offerings
associated to the sold product for an account or consumer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1538


<!-- page 1539 -->
Before you begin

Role required: sn_customerservice_agent

About this task

Customer service agents can view which service offerings are associated to the sold products
affected by an issue. They can also see the service commitments and availability.

Procedure
1. Open CSM Configurable Workspace.
2. Open a customer service case.
3. Click Sold Products to view the sold product associated to the case and the service offering
associated to it.
4. Click the service offering to view the service commitments associated to it.
Search for knowledge articles in CSM Configurable Workspace
Search for knowledge articles in Agent Assist, including similar knowledge articles.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, admin

About this task

Agent Assist displays contextual search results based on text entered in the Short description
field on the Case form. These search results include knowledge articles and other types of
information, such as open or resolved cases and community content. You can narrow the list of
results by selecting a specific type of information to view.

Note: With the Predictive Intelligence for Customer Service Management plugin
(com.snc.csm_ml), you can also view Similar Knowledge Articles.

Procedure
1. Open CSM Configurable Workspace.
2. Open a customer service case.
3. Perform one of the following.
◦ In the Agent Assist panel, click the search resource icon (

) and select a search source.

▪ Knowledge Articles
▪ Similar Knowledge Articles
◦ In the Recommended Actions - Search tab, search with a keyword and select the Search
source as Knowledge to filter the knowledge articles.
For more information on how to enable Recommended Actions - AI Search and disable
Agent Assist, see Enable AI search in Recommended Actions.
4. Select a knowledge article.
5. Click Attach.
Depending on your configuration, you can add a link or embed an article directly into the
Additional comments (customer visible) portion of the activity stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1539


<!-- page 1540 -->
Open a knowledge article in a sub-tab
Search for a knowledge article in Agent Assist or Recommended Actions - AI Search and then
open the article in a sub-tab.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, admin

Procedure
1. Open CSM Configurable Workspace.
2. Open a customer service case.
3. Perform one of the following actions in the Contextual side panel:
◦ In the Agent Assist tab, select an article from the default search or search for something
specific using the search bar and then select an article.
◦ In the Recommended Actions - Search tab, search for the desired article and select the
Search source as Knowledge to filter the knowledge articles.
For more information on how to enable Recommended Actions - AI Search and disable
Agent Assist, see Enable AI search in Recommended Actions.
4. View the article in the Contextual side panel.
After viewing the article, you can also perform the following actions:
◦ Select Attach to attach the article to the case. Add any additional comments in the Attach
Article pop-up window and then select Attach Article. The article is attached to the case
and added to the Attached Knowledge related list.
◦ Select Flag to flag the article. Add a comment in the Flag Article pop-up window and then
select Save. This action generates a feedback task for the knowledge article.
◦ Select the knowledge article link below the article title to open the article in a separate tab.
You can also select the More Actions menu and then select Full View.
◦ Select the More Actions menu and then select Helpful to mark the article as helpful.
Create a knowledge article from a case
Reuse information from a customer service case by creating knowledge articles from customer
service cases.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, admin

About this task
Your administrator must enable creation of articles from customer service cases

.

Procedure
1. Open CSM Configurable Workspace.
2. Open a customer service case.
3. Click the More UI Actions icon (

).

4. Click Create Knowledge Article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1540


<!-- page 1541 -->
This creates a new knowledge article in a sub-tab. By default, the new article is created from
the KCS Article template. The following information is copied from the case to the knowledge
article:
◦ Short description
◦ Source
◦ Cause
◦ Close notes
5. In the Knowledge base field, enter the name of the knowledge base in which you want this
article to display.
6. Optional: Edit the knowledge article.
7. Click Save.
Report a knowledge gap
If you cannot find relevant knowledge articles that could help resolve a case, you can report a
knowledge gap.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
sn_customerservice_manager, workspace_admin, admin

About this task

You can search for and attach knowledge articles to a customer service case. If you cannot find
any relevant articles, you can report a knowledge gap. If you have permission, you can also
create a knowledge article.
Customer service case managers can use the Demand Insights for Cases dashboard to identify
which cases have no or insufficient knowledge coverage. For more information, see Demand
Insights for Cases dashboard .

Procedure
1. Open CSM Configurable Workspace.
2. Open a customer service case.
3. Optional: Search for existing knowledge articles or create a knowledge article to help resolve
a case.
4. Click the More UI Actions icon (
) and then click Report Knowledge Gap.
In the platform interface, click the Report Knowledge Gap related link on the Case form and
provide information in the resulting pop-up window.
The system opens a new knowledge feedback task in a sub-tab. The short description from the
case is copied to the Description field on the task.
5. Optional: Edit the knowledge feedback task description.
6. Click Save.
The task is added to the Knowledge Gaps related list on the Case form.
Respond to a community thread from a case
For cases that are created from a community discussion, customer service agents can view and
respond to the discussion in a new browser tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1541


<!-- page 1542 -->
Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
workspace_admin, admin

About this task

Cases that have been created from a community discussion have the Channel field set to
Community.

Procedure
1. Open CSM Configurable Workspace.
2. Open a case that was created from a community discussion.
3. Click the More UI Actions icon (
) and select Show Community Thread.
This UI action is only available if the Channel is Community.
4. View the community discussion in a new browser window and respond as necessary.
Use response templates to add information to cases and case tasks
Customer service agents can copy content from response templates and add it to cases and
case tasks.

Before you begin

Role required: sn_customerservice_agent with the sn_templated_snip.template_snippet_reader
role

About this task

The contextual side panel in CSM Configurable Workspace gives you access to information that
can help you resolve customer service cases. It includes a column of icons that you can click
to access different types of information. Clicking the response templates icon shows reusable
messages that you can copy and paste into cases and case tasks.

Procedure
1. Open CSM Configurable Workspace.
2. Open a customer service case or case task.
3. In the contextual sidebar, click the response templates icon (

) to display a list of templates.

4. In the Response Templates side panel, search for a template.
5. Select a template and then click Copy to clipboard.
6. Paste the template text into the Work notes field or the Additional comments field.
Related topics
Response templates
Use Customer Central
Get a quick overview of key customer information and recent customer activity to help you find
out more about the customer contacting support.

Before you begin

Role required: sn_customerservice_agent
Role required if using the Walk-up Experience for business locations:
sn_customerservice.svc_location_agent, sn_customerservice.svc_location_manager, or
sn_customerservice.svc_location_consumer_agent.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1542


<!-- page 1543 -->
About this task

Use customer central to get a quick insight into key customer information and recent activity from
the customer, who is contacting support. You can filter by date or facet to access the information
you require.

Note: Accounts require contact information to display account information in Customer
Central.
In CSM Configurable Workspace, you can access Customer Central from within the Interaction,
Contact, Account, or Consumer records.

Procedure
1. Open CSM Configurable Workspace.
2. On the Interaction, Contact, Account, or Consumer record, select Customer Information to
view key information on the customer.
3. On the Interaction, Contact, Account, or Consumer record, select Customer History to view
recent activity from the customer or chat summary between the agent and customer.
4. Create a case or close the record.
View trending case topics
Analyze the backlog of cases and identify clusters of cases that point to similar underlying
issues.​

Before you begin

Role required: sn_majorissue_mgt.major_issue_manager

About this task

View a list of clusters and cluster concepts.
• Cluster concepts list the top ten most recurring words that appeared in the short description of
the cases.
• Cluster size indicates the number of cases in the cluster.
• Cluster quality gives a percentage value of how similar the cases are.

Procedure
1. Open CSM Configurable Workspace.
2. Navigate to Lists > Trending Case Topics > Last 1 week.

What to do next

Click a Cluster Id to view the Cluster Summary form details, Related Cases and Related Major
Cases.
You can also create a major case for trending case topics.
Add trending case topics to existing major cases
Work through cases more efficiently and resolve similar cases at once by identifying any existing
major cases that the backlog of cases can be linked to.

Before you begin

Role required: sn_majorissue_mgt.major_issue_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1543


<!-- page 1544 -->
Procedure
1. Open CSM Configurable Workspace.
2. Navigate to Lists > Trending Case Topics > Last 1 week.
3. Click a Cluster Id.
4. On the Related Major Cases related list, check if there are any existing related major cases.
5. On the Related Cases related list, select the cases you want to add as child cases in the
existing major case.
6. Click Edit.
7. In the Parent field, copy the number of the major case to add the child cases to.
8. ClickUpdate.
Create major cases for trending case topics
Work through cases more efficiently and resolve similar cases at once by creating major cases to
add the backlog of cases to.

Before you begin

Role required: sn_majorissue_mgt.major_issue_manager

About this task

If you didn't find an existing major case to add the trending case topics to and you think the
cluster qualifies as a major case, you can create a major case, as applicable.

Procedure
1. Open CSM Configurable Workspace.
2. Navigate to Lists > Trending Case Topics > Last 1 week.
3. Click a Cluster Id.
4. On the Related Major Cases related list, check if there are any existing related major cases.
5. If there are no related major cases, click Create Major Case.
A major case is created.
All related child cases are linked as child cases to the major case if the Parent field in the case
is empty and the case is in Open state.

What to do next

To access the major case, click the link in the confirmation message that a major case has been
created.
Manage email tasks
You can compose, reply to, and preview emails directly from cases in CSM Configurable
Workspace. This capability helps you save time and effort instead of having to address and send
a separate email message.
You can perform the following email tasks from cases in CSM Configurable Workspace:
• Compose an email from a case
• Compose an email from the ribbon component
• Send an email response from a case activity stream
• Preview an email from the Emails related list
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1544


<!-- page 1545 -->
Compose an email from a case
As an agent, you can compose emails directly from cases within a ServiceNow instance. This
capability helps you view and send emails to two different customers simultaneously which
saves time and effort.

Before you begin

Role required: sn_customerservice_agent

About this task

You can compose large emails easily in a full screen view which opens up in a new tab.

Procedure
1. Open CSM Configurable Workspace.
2. Select and open the case for which you want to compose an email.
The case opens in a new top-level tab.
3. Click the More UI Actions
icon and select Compose Email.
The New Email screen opens in full view in a new sub-tab below the Case tab. The To field is
pre-filled with the customer's email id and the Subject field contains the original case number
and issue. For more information, see Compose an email .
4. Compose your email and click Send.

Note: You can also click Save to save the email and send it later. These drafts are

available in the Draft Emails related list. To access the draft in the email compose tab,
click the More UI Actions

icon and select View Draft to see the saved draft.

Related topics
Compose an email from the ribbon component
Compose an email from the ribbon component
As an agent you can compose emails directly from cases within CSM Configurable Workspace
without having to use an external email client. This capability helps you view and send emails to
two different customers simultaneously which saves time and effort instead of having to address
and send a separate email message.

Before you begin

Role required: sn_customerservice_agent

About this task

You can compose large emails easily in a full screen view which opens up in a new tab.

Procedure
1. Open CSM Configurable Workspace.
2. Select and open the case for which you want to compose an email.
The case opens up in a new tab.
3. In the ribbon component, click the contact's email address.
The New Email screen opens in full screen in a new tab. The To field is pre-filled with the
customer's email id and the Subject field contains the original case number and issue. For
more information, see Compose an email .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1545


<!-- page 1546 -->
4. Compose your email and click Send.

Note: You can also click Save to save the email and send it later. These drafts are
available in the Draft Emails related list.
Related topics
Compose an email from a case
Compose an email from an email template
As an agent, you can compose emails using email templates. These templates contain default
values for fields that you can easily add to email messages in the Compose panel on case
records.

Before you begin

Role required: sn_customerservice_agent

About this task

Default values in email templates can include the recipients (email addresses in the To, Cc, and
Bcc fields), the sender, the subject of the email, and text to include in the message body. For
more information, see Email templates feature.

Procedure
1. Open CSM Configurable Workspace.
2. Open a case.
3. Select the Email tab in the Compose panel.
4. Select the Email Templates tab in the contextual side panel.
The system displays the available email templates.
5. Select the desired template.
The selected template card expands to show the template details.
6. Select Apply Template.
The system populates the values for the configured fields in the email. If these fields already
contain values, applying the selected template overwrites these values.
7. Optional: Add text for the body of the email in the text field.
8. Select either Save as draft or Send Email.
The system stores draft emails in the Draft Emails tab on the case record.
Send an email response from a case activity stream
Respond to cases using options within a customer email thread. You may not require using
another email client which saves time and effort.

Before you begin

Role required: sn_customerservice_agent

About this task

You can read and respond to large emails easily in a full screen which opens up in a new tab.
Responding to a customer's email from within a case using the reply, reply all, or forward options,
includes the content from previous conversation thread. These options are available by default.
An admin can disable these options. For more information, see Disable email responses from the
case activity stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1546


<!-- page 1547 -->
Procedure
1. Open CSM Configurable Workspace.
2. Select and open the case from the activity stream for which you want to send or forward a
response.
The case opens up in a new tab.
3. Click Reply in the Activity Stream to write a response to the customer or click the
icon and
select Reply All to reply to all the customer email ids mentioned in the original email or select
Forward to forward the email to any other email ids not mentioned earlier.
4. Based on the selection, the Reply Email, Reply All Emails, and Forward Email screens opens in
full screen in a new tab.

Note: You can click the

icon to add attachments from the file system or delete
attachments already associated with the existing case.
5. Compose your email and click Send.
Related topics
Activity formatter
Email properties
Preview an email from the Emails related list
Preview emails directly from within cases. With this capability, you can select case-related emails
and read the details in full view.

Before you begin

Role required: sn_customerservice_agent

About this task

For information about adding or modifying actions on a form, see the following topics:
• Customizing your workspace with declarative actions
• Create a UXF client action for forms
• Declarative actions glossary

Procedure
1. Open CSM Configurable Workspace.
2. Select and open a case.
The case opens up in a new tab.
3. Select the Emails tab.
4. Select an email to preview from the Emails list.
The email opens in a sub tab and displays the details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1547


<!-- page 1548 -->
5. Select Reply or Reply All to reply to the message you’re viewing or select Forward to forward
the email.
Initiate SMS conversations from CSM Agent Workspace
Compose an SMS message from CSM Agent Workspace to interact with a customer contact or a
consumer regarding customer service cases.

Before you begin

Role required: agent_workspace_user
Ensure that an administrator has configured the Conversational SMS Integration with Twilio
application. For more information, see Conversational SMS Integration with Twilio .

Procedure
1. Navigate to All > Workspace Experience > Workspaces > Agent Workspace Home.
2. On the Agent Workspace Home page, navigate to Agent Workspace > Lists > Interactions >
My Interactions.
3. In the My Interactions list, modify an existing interaction or create another interaction.
◦ To modify an existing interaction, select the interaction number in Number column of the My
Interactions list.
◦ To create another interaction, click New in the My Interactions list.
4. On the Details tab of the workspace form, fill in the details for a new interaction or modify the
details.
For more information about the form, see CSM workspace form features.

Note: The user profile associated with an interaction is configured by an administrator

by using the AgentInitiatedConversationUtil extension point. By default, the
AgentInitiatedMessagingUtilExtPointImpl script include that implements
the AgentInitiatedConversationUtil extension point is available for the
Conversational SMS Integration with Twilio application. For more information, see
Associate user profiles on messaging interactions .
5. Click Compose SMS.
6. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1548


<!-- page 1549 -->
Compose SMS form
Field

Description

From

Provider phone number of the SMS channel.
◦ If there is only one provider phone number, the From list is automatically set
to the provider phone number.
◦ If there are multiple providers configured for the SMS channel, you can select
a phone number in the From list.

To

Phone number of the consumer or customer contact.
The phone number is in the E.164 format and automatically set to the phone
number of the consumer or customer contact associated with the interaction
record.
By default, the user profiles for consumers and customer contacts and the
format of their phone numbers are validated for the SMS channel.
If you select Other from the To list, you can manually enter a phone number
of the consumer or customer contact. Any manually entered phone number is
automatically converted to the E.164 format. For more information, see Phone
number fields .

Message

Message to be sent to the consumer or customer contact.

Attachment File to be sent as an attachment.
Click Attach File to browse and select a file.

Note: By default, you can attach only images to the message. However,
an administrator can configure the Attachment API to upload more file
types. For more information, see Attachment - POST /now/attachment/
upload .

7. Click Send.

Result

The interaction record of type messaging is created or updated based on the workflow as
discussed in the following table.
Messaging interaction record workflows and results
Workflow

No active interaction record available

Results

• A new interaction record of type messaging
for the SMS channel is automatically created
and assigned to the agent.
• The agent is added to the Live Group Profile
[live_group_profile] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1549


<!-- page 1550 -->
Messaging interaction record workflows and results (continued)
Workflow

An active interaction record associated with a
live agent exists

Results

• The interaction details are appended to
the existing interaction record for the SMS
channel.
• If the message was initiated by an agent
not associated with the existing interaction
record, the agent is added to the Live Group
Profile [live_group_profile] table. However,
there's no change in assignment of the
interaction.

An active interaction record associated with
the virtual agent exists

• The existing interaction record with the
virtual agent is closed.
• A new interaction record of type messaging
for the SMS channel is automatically created
and assigned to the agent.
• The agent is added to the Live Group Profile
[live_group_profile] table.

An active interaction record associated with a
different user exists

• The existing interaction record with the
earlier user is closed.
• A new interaction record of type messaging
for the SMS channel is automatically created
and assigned to the agent.
• The user profile associated with the existing
interaction record is deactivated.
• The user profile currently associated with
the new interaction record is created.
• The agent is added to the Live Group Profile
[live_group_profile] table.

Initiate messaging conversations from CSM Configurable Workspace
Compose an SMS message from CSM Configurable Workspace to interact with a customer
contact or a consumer regarding customer service cases.

Before you begin

Ensure that an administrator has completed the following tasks:
• Configured the Agent-Initiated Messaging Interface application. For more information, see
Agent-initiated messaging interface .
• Configured at least one qualifying messaging channel for the agent-initiated messages. For
more information, see Determine whether messaging channels are available for agent-initiated
messages .
Role required: agent_workspace_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1550


<!-- page 1551 -->
Procedure
1. Navigate to All > Workspace Experience > Workspaces > CSM Configurable Workspace
Home.
2. On the CSM Configurable Workspace Home page, navigate to Lists > Interactions > My
Interactions.
3. In the My Interactions list, select the interaction number in Number column of the My
Interactions list.

Note: Ensure that the interaction type is other than messaging and the interaction state
is not closed complete or closed abandoned.
4. On the Details tab of the workspace form, fill in the details for a new interaction or modify the
details.
For more information about the form, see CSM workspace form features.

Note: The user profile associated with an interaction is configured by an administrator
by using the

sn_agent_initiated.AgentInitiatedMessagingUserDocument
extension point. The AgentMessagingInteractionUserDocument script include
that implements the

sn_agent_initiated.AgentInitiatedMessagingUserDocument
extension point is available for the Agent-Initiated Messaging Interface application. For
more information, see Associate user profiles with agent-initiated messages .
5. Click Compose Message.
6. On the form, fill in the fields.
Compose Message form
Field

Description

Channel

Messaging channel that is installed with the application available for a service
channel.
For example, select SMS to send an SMS message. The SMS messaging
channel is available when an administrator has installed the Conversational
SMS service channel
application.
An administrator can configure whether a messaging channel is available
for agent-initiated messages. For more information, see Determine whether
messaging channels are available for agent-initiated messages .

To

Recipient ID of the consumer or customer contact, or when both are not
available the recipient ID of the user for which the interaction was opened.
The recipient ID is pre-populated from the User [sys_user] table record of the
consumer, customer contact, or opened for user.
If the entered ID is a phone number, it must be an E.164-compliant phone
number or is automatically converted to the E.164 format. For more information,
see Phone number fields .
An administrator can configure the format of the recipient ID based on the
selected channel and associate user profiles with agent-initiated messages. For
more information, see Validate recipient IDs for agent-initiated messages
and
Associate user profiles with agent-initiated messages .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1551


<!-- page 1552 -->
Field

Description

If you select Other from the To list, you can manually enter a ID of the consumer
or customer contact. Any manually entered phone number is automatically
converted to the E.164 format. For more information, see Phone number fields .

Note: The Other list value appears only when an administrator has
configured the option to enter recipient ID manually for the messaging
channel. For more information, see Set up agent-initiated message
interface for a messaging channel .
From

Provider ID of the messaging channel.
◦ If there is only one provider configured for the channel, the From list is
automatically set to the provider ID.
◦ If there are multiple providers configured for the channel, you can select an ID
in the From list.

Message

Message to be sent to the recipient.

Attachment File to be sent as an attachment.
Click Attach File to browse and select a file.

Note: By default, you can attach only images to the message.
7. Click Send.

Result

The interaction record of type messaging is created or updated based on the workflow as
discussed in the following table.
Messaging interaction record workflows and results
Workflow

No active interaction record available

Results

• A new interaction record of type messaging
for the channel is automatically created and
assigned to the agent.
• The agent is added to the Live Group Profile
[live_group_profile] table.

An active interaction record associated with a
live agent exists

• The interaction details are appended to the
existing interaction record for the channel.
• If the message was initiated by an agent
not associated with the existing interaction
record, the agent is added to the Live Group
Profile [live_group_profile] table. However,
there's no change in assignment of the
interaction.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1552


<!-- page 1553 -->
Messaging interaction record workflows and results (continued)
Workflow

Results

An active interaction record associated with
the virtual agent exists

• The existing interaction record with the
virtual agent is closed.
• A new interaction record of type messaging
for the channel is automatically created and
assigned to the agent.
• The agent is added to the Live Group Profile
[live_group_profile] table.

An active interaction record associated with a
different user exists

• The existing interaction record with the
earlier user is closed.
• A new interaction record of type messaging
for the channel is automatically created and
assigned to the agent.
• The user profile associated with the existing
interaction record is deactivated.
• The user profile associated with the new
interaction record is created.
• The agent is added to the Live Group Profile
[live_group_profile] table.

Create a work plan in Customer Service Management (CSM) Configurable Workspace
Create a work plan in the Customer Service Management (CSM) Configurable Workspace so that
your agents can fulfill and implement the maintenance requirements for an install base item.

Before you begin

Role required: sn_customerservice_agent and sn_fsm_planned_wm.planned_work_admin

Procedure
1. Navigate to All > Workspaces > CSM/FSM Configurable Workspace.
2. In the list view, navigate to Customer > Accounts.
3. Open an account and navigate to the Install Base Items related list.
4. Open an install base item from the list.
5. On the Planned Maintenance tab, open Work plans and select New.
6. On the form, fill in the fields.
Work plan form on the Customer Service Configurable workspace
Field

Description

Name Name of the work plan.
Type

Type of trigger that determines when work should be performed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1553


<!-- page 1554 -->
Field

Description

◦ Model based: Base the work plan on a specified model of a CI.
◦ General: Base the work plan on a table and filter.
◦ Install base: Base the work plan on specified models of install base items

Note:
◦ Model-based plans apply only to hardware models, specifically ones that
have at least one model category defined.
◦ The Install base plan type is available only if the Customer Service Install
Base Management (com.snc.install_base) plugin is activated.
Model One or more product catalog items that you can select to identify the configuration
items (CIs) or install base that require maintenance. When you select a model, the
associated table appears in the Table field. For example, if you select a specific PC
model, the Table field displays Computer [cmdb_ci_computer]. This field appears if
you selected either the Model based or Install base type. For Install base type. The
Table field automatically fills in an appropriate table based on the selected model.
7. Select Save.

Result

You created a work plan in Customer Service Management (CSM) Configurable Workspace.

Using Business Location 360
Enable customer service agents to get a comprehensive, 360-degree view of the business
location issues, so that they get the required contextual data to effectively resolve the reported
issues within the Customer Service Management (CSM) application.

Overview of Business Location 360
By using the Service Model Foundation data model framework, your location staff members can
request assistance for their operations either from the central support team or peer business
locations. To handle these cases effectively, customer service agents require a complete, 360°
view of the business location.
The Business Location 360 template enables agents to get a comprehensive view that includes
the crucial contextual information that they need for resolving reported issues. Your administrator
can customize the Business Location 360 template to add data sources, show additional
information, or represent entities like stores, government agencies, healthcare organizations,
automotive dealerships, or departments. For more information about configuring the Business
Location 360 template, see CSM Configurable Workspace page templates.

Note: Your administrator can activate the Business Location 360 capabilities by using the
Business Location (com.snc.business_location) plugin.
This example shows the Business Location 360 page with the 360-view of different widgets like
the products installed, point of contact, services offered, and more. These components enable
customer service agents to get a comprehensive, 360-degree view of the business location
issues to help them effectively resolve the reported issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1554


<!-- page 1555 -->
Business Location 360 page

Benefits of using Business Location 360
By using the Business Location 360, your location staff members get the following benefits:
• Contextual information about an issue. Your customer service agents can view the contextual
information about an issue and then create cases about a business location all from one place.
• Visibility into issues and trends. Your customer service managers can visually identify storespecific issues and broader trends.
• Ability to configure actions and pages. Your administrators can configure additional actions
and pages based on the Business Location 360 template.
Related topics
Access Business Location 360 as a customer service agent
Access Business Location 360 as a customer service manager
Business Location 360 components
Business Location 360 components
Customer service agents can resolve reported business location issues by using different
components on the Business Location 360 page in the Customer Service Management (CSM)
application.

Components on the Business Location 360 page
The following list of components are on the Business Location 360 page:
• Location information
• Point of contact
• Products installed
• Services offered
• All staff
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1555


<!-- page 1556 -->
• Key performance indicators (KPIs)
◦ Number of P1 cases
◦ Number of cases by priority
◦ Service level agreements (SLAs) breached
• Task tab
◦ Cases
◦ Work orders
• Customer tab
◦ Customers
◦ Accounts
◦ Households

Note: You can customize these components according to your requirements by using the
Business Location 360 template. The Business Location 360 template enables agents to
get a comprehensive view that includes the crucial contextual information that they need
for resolving reported issues. Your administrator can customize the Business Location 360
template to add the data sources, show the additional information, or represent the entities
like stores, government agencies, healthcare organizations, automotive dealerships, or
departments.

Location information
The location information component displays the location information details for the record. The
following example shows a location information component that displays the name and type of
the location, the address, email, phone number, and the manager's name.
Location information component

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1556


<!-- page 1557 -->
The Email and Phone links are clickable. When you select these links, the information is copied
to the clipboard.

Note: If your administrator hasn't enabled Computer Telephony Integration (CTI), your
contact numbers are copied to the clipboard instead of calling the numbers directly. For
more information about integrating Computer Telephony Integration (CTI), see Computer
Telephony Integration .
On the location information link, navigate to the business location hierarchy view page by
selecting the view hierarchy icon

.

The following example shows a business location parent-child hierarchy with multiple nodes.
Business Location Hierarchy page

You can use this page to visualize the parent-child hierarchy structure, search for business
locations, and perform different contextual actions on the nodes. You can also perform the
following different contextual actions on the node:
• Set the node as a home or parent node.
• View the location details.
• Create a case from the node.
You can get the location details of the node that you select. Also, if there’s a black dot on any
node, it signifies a business location issue.

Note: The business location hierarchy page displays a maximum of 250 nodes. You can
use the search functionality to find the node that you’re looking for.

Point of contact
The point of contact component displays the primary points of contact that are available at a
business location. The following example shows that the point of contact component can display
the different points of contact at a business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1557


<!-- page 1558 -->
Point of contact component

Selecting View all takes you to the Business Location member page where you can get the
details of all the points of contact at a business location.

Note: By default, only three users are displayed.
Products installed
The products installed component displays the information about the install base items at a
business location. For example, you can see the install base name, product model name, and the
status on this component. The following example shows the products installed component that
provides information about the listed install bases at a business location.

Note: You can access this component only after your administrator activates the
Customer Service Install Base Management plugin (com.snc.install_base).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1558


<!-- page 1559 -->
Products installed component

If the listed products display Issue reported in the highlighted text, it indicates that there’s an
active case reported for that install base item. The products within this component are sorted in
the following order:
• Install base items with a recently reported case.
• Recently deployed install base items.
You can view the product details or create a case by selecting the Overflow icon

.

Selecting View all takes you to the Products installed page where you can get the details of all
the products installed at a business location.

Note: By default, only three products are displayed.
Services offered
The services offered component displays the list of services that are offered at a business
location. The following example shows the Services offered component that provides information
about the list of all service names and the types that are available at a business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1559


<!-- page 1560 -->
Services offered component

Note: By default, only three services are displayed and these services are sorted in the
ascending order.

All staff
The all staff component displays the list of the staff members who are working at a business
location and includes both the internal and external staff members. The following example shows
the All staff component.
All staff component

Selecting View all takes you to the All staff page where you can get the details of all the staff
members that are available at a business location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1560


<!-- page 1561 -->
Note: By default, only three staff members are displayed and these services are sorted in
the ascending order of user name.

KPIs
The KPI components are performance analytic indicators that display multiple types of
information that are related to a case such as the following KPIs that are shipped out of the base
system:
• Number of P1 cases
• Number of cases by priority
• SLAs breached
The following example shows a list of the different KPIs. The list includes the number of P1 cases,
the number of cases by priority, and the SLAs that were breached.
KPIs component

These KPIs are filtered to show the current business location-related details. Your administrator
can customize these KPIs according to your location's requirements by using the UI Builder .

Task tab
The task tab component displays the following cases and work- order tabs where you can see
the cases and work orders that are associated with a business location:
• Cases tab. Displays the active cases that have a requesting service organization as the current
business location order by the date that the case was last updated. The account, consumer,
and household fields are empty.
• Work orders tab. Displays the work orders that have the service organization as the current
business location. For this type of work order, the household field is empty and the state field
isn’t completed. the state field is completed with errors, or the state field is closed.
The following example shows a list of the cases that are associated with a business location.
Task tab component

Note: A maximum of five records are displayed per page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1561


<!-- page 1562 -->
Customer tab
The customer tab component displays the list of consumers, accounts, and households that are
associated with a business location:
• Consumers tab. Displays all the consumers or a filtered list of consumers. This information is
based on the supported consumers that are associated with the business location.
• Accounts tab. Displays all the accounts or a filtered list of accounts. This information is based
on the supported accounts that are associated with the business location.
• Households tab. Displays all the households or a filtered list of households. This information is
based on the supported households that are associated with the business location.

Note: You can access this component only after the Customer Service Household
plugin (com.snc.household) is activated.
• Internal Business Locations tab. Displays all the internal business locations or a filtered list
of internal business locations. This information is based on the supported internal business
locations that are associated with the business location.
• External Business Locations tab. Displays all the external business locations or a filtered list
of external business locations. This information is based on the supported external business
locations that are associated with the business location.
The following example shows a list of the consumers that are associated with a business
location.
Customer tab component

Note: A maximum of 10 records are displayed per page.
Related topics
Using Business Location 360
Access Business Location 360 as a customer service agent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1562


<!-- page 1563 -->
Access Business Location 360 as a customer service manager
Access Business Location 360 as a location service agent
Access Business Location 360 as a customer service agent
Access the business location 360 page in the Customer Service Management (CSM) application
as a customer service agent. You can get a comprehensive, 360-degree view of the business
location issues all in one place.

Before you begin

Role required: sn_customerservice_agent, svc_location_consumer_agent,
sn_customerservice.svc_location_agent, and admin

About this task

As a customer service agent (sn_customerservice_agent), you can use the business location
details to provide the case resolutions or create cases for a business location.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. On the Lists tab, select Cases > All.
3. In the Cases list, select a case record with a business location.
4. Access the Business Location 360 page by selecting the Business Location tab.
Related topics
Business Location 360 components
Access Business Location 360 as a customer service manager
Access Business Location 360 as a location service agent
Access Business Location 360 as a customer service manager
Access the business location 360 page in the Customer Service Management (CSM) application
as a customer service manager. You can get a comprehensive, 360-degree view of the business
location issues all in one place.

Before you begin

Role required: sn_customerservice_manager, svc_location_consumer_agent,
sn_customerservice.svc_location_agent, and admin

About this task

As a customer service manager (sn_customerservice_manager), you can view the issues that are
reported at your individual business locations and across hierarchies.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. On the CSM/FSM Configurable Workspace Lists tab, select Service Organizations > Internal/
External Business Locations.
3. In the Internal/External Business Locations list, select a record.
4. Access the Business Location 360 page by selecting the Business Location tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1563


<!-- page 1564 -->
Related topics
Business Location 360 components
Access Business Location 360 as a customer service agent
Access Business Location 360 as a location service agent
Access Business Location 360 as a location service agent
Access the business location 360 page in the Customer Service Management (CSM) application
as a customer service agent. You can get a comprehensive, 360-degree view of the business
location issues all in one place.

Before you begin

Role required: sn_customerservice_agent, svc_location_consumer_agent,
sn_customerservice.svc_location_agent, and admin

About this task

As a customer service agent (sn_customerservice_agent), you can use the business location
details to provide the case resolutions or create cases for a business location. As a location
service agent, you can view supported business locations based on supported business
location criteria on the business location 360 page for external locations.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. On the Lists tab, select Cases > All.
3. In the Cases list, select a case record with a business location.
4. Access the Business Location 360 page by selecting the Business Location tab.
Related topics
Business Location 360 components
Access Business Location 360 as a customer service agent
Access Business Location 360 as a customer service manager

Outsourced Service Provider agent tasks
Outsourced service provider agents (OSPs) extend the capabilities and reach of an
organization’s customer service operations by providing basic customer service to customers
and consumers.
Some key functions that outsourced service provider agents can perform include the following.
Outsourced service provider agent tasks
Task

Create work order

Escalate a case

Description

An OSP agent can create a work order so that
it can be assigned to a Field Service agent.
An OSP agent can escalate a case when
unable to resolve or fulfill a case for various
reasons such as technical limitations,
knowledge gaps, or access restrictions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1564


<!-- page 1565 -->
Outsourced service provider agent tasks (continued)
Task

Description

View account or consumer assets

An OSP agent can view the assets owned
by an account or consumer which helps in
creating or fulfilling a case.

View account contracts

As an OSP agent, you can view contracts
owned by accounts or consumers in order to
create or fulfill a case.

View customer or consumer data

As an OSP agent, you can view the customer
or consumer data to fulfill cases.

Create a case task

An OSP agent creates a case task after a case
has been assigned. As an agent, you can work
on the case adding work notes and additional
comments.

Assign a case

Assign a case to yourself or another
Outsourced Service Provider (OSP) agent
within the organization to start working on the
case or to fulfill the case.

Create an appointment

As an agent, you can create an appointment
for the requester of a case.

Transfer a case

The OSP agent or manager, if unable to
resolve a case, transfers the case manually to
an enterprise's internal agent.

View cases

As an OSP manager or agent, you can view all
application modules with the list of cases for
customers, consumers, and products served
by your organization.

View case related emails and respond

As an OSP agent, you can view the list of
emails related to a case that is assigned to
you. You can respond to a case by creating a
new email and sending it to the stakeholders
of a case.

Report knowledge gap from a case

When an OSP agent has a knowledge gap
which impacts the ability to resolve a case, the
agent can report the knowledge gap.

Propose a major case

Close a case

Contextual search

As an OSP agent, you can propose a major
case from the existing customer service case
assigned to you.
Users with OSP agent role can propose a
solution to a case and close the assigned
cases.
Users with OSP agent role can search for
related information to fulfill a case. The

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1565


<!-- page 1566 -->
Outsourced service provider agent tasks (continued)
Task

Description

search results returned are the list of entities
that the agent is entitled to as per the data
governance.
View list of entitlements

As an OSP manager or agent, you must view
entitlements for an account or consumer to
create or fulfill cases.

Create work order
An OSP agent can create a work order so that it can be assigned to a Field Service agent.

Before you begin

Role required: sn_csm_ocs.ext_agent and you must have installed Customer Service
Management with Field Service Management plugin.

Procedure
1. Go to My Cases and open a case.
2. Click Work Orders related list.
3. Click New.
4. Click Submit.
5. View work order status to update the customer of the status.

Note: You cannot create a new work order until the previous one is closed or deleted.
Escalate a case
An OSP agent can escalate a case when unable to resolve or fulfil a case for various reasons
such as

Before you begin

Role required: sn_csm_ocs.ext_agent

Procedure
1. Navigate to All > Outsourced Customer Service > Cases > My Cases.
2. Click Escalate Case related link.
3. Fill in the fields on the Escalation form, as appropriate.
Option

Description

Request Source

If Customer or Internal

Reason

Reason for escalation such as inactivity, lack
of progress, or customer imposed deadline.

Escalation Severity

Severity of escalation such high, medium,
and so on.

Escalation Template

An escalation template determines how an es­
calation request is processed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1566


<!-- page 1567 -->
Option

Description

Watch list

Add users to the escalation template watch
list. These users receive notifications for all es­
calations that use this escalation template.

Escalation Justification

Additional information that explains why this
escalation is needed.

4. Click Submit.
View account or consumer assets
An OSP agent can view the assets owned by an account or consumer which helps in creating or
fulfilling a case.

Before you begin

Role required: sn_csm_ocs.ext_agent

Procedure
1. Navigate to All > Outsourced Customer Service > Cases.
2. Open a case and click the preview icon next to the Account or Consumer field.
3. Click Open Record.
4. Click Assets related list.
The list of assets belonging to the account or consumer is visible.
5. Click on an asset to view the read-only fields.
View account contracts
As an OSP agent, you can view contracts owned by accounts or consumers in order to create or
fulfill a case.

Before you begin

Role required: sn_csm_ocs.ext_manager/sn_csm_ocs.ext_agent

Procedure
1. Open the case form.
2. Click the Preview icon next to the Account or Consumer field.
3. Click Contracts related list.
4. View the list of assets belonging to an account or consumer and fulfill a case.
View customer or consumer data
As an OSP agent, you must view the customer or consumer data to fulfill cases.

Before you begin

Role required: sn_csm_ocs.ext_manager or sn_csm_ocs.ext_agent

Procedure
1. Navigate to Outsourced Customer Service > Cases > All.
2. Open a case and click the preview icon next to the Account or Contact field.
3. Click Open Record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1567


<!-- page 1568 -->
The following related lists are visible for you to work on and fulfill the cases:
◦ Contacts
◦ Addresses
◦ Cases
◦ Assets
◦ Contracts
◦ Entitlements
◦ Account Relationships
◦ Sold Products and
◦ Install Base
Create a case task
An OSP agent creates a case task after a case has been assigned. As an agent, you can work on
the case adding work notes and additional comments.

Before you begin

Role required: sn_csm_ocs.ext_agent

Procedure
1. Navigate to All > Outsourced Customer Service > Cases > My Cases and open a case.

Note: The timeline of the case is displayed at the top of the case form.
2. Click Tasks related list.
3. Click New to create a new task.
The Edit button allows you to add existing case tasks to a case from the Collection list.
4. Fill in the fields on the new record form, as appropriate.
Option

Description

Subject

Subject for the case.

Description

Description for the case.

Work notes list

Work notes for the case

Email address

Email id of the customer.

Additional comments

Comments related to the case, if any.

5. Click Submit.

Note: You can also close the case task.
Assign a case
Assign a case to yourself or another Outsourced Service Provider (OSP) agent within the
organization to start working on the case or to fulfill the case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1568


<!-- page 1569 -->
Before you begin

Role required: sn_csm_ocs.ext_agent

Procedure
1. Navigate to Outsourced Customer Service > Cases > All.
2. Click and open a case from the available list.
3. Click Assign to me.

Note: If the case is already assigned, the Assign to me button isn’t available.
Create an appointment
As an agent, you can make an appointment with the requester of a case.

Before you begin

Role required: sn_csm_ocs.ext_manager or sn_csm_ocs.ext_agent

Procedure
1. Navigate to All > Outsourced Customer Service > My Cases.
2. Open a case.
3. Click Appointments related list.
4. Fill in the fields on the Appointment form, as appropriate.
Field

Description

To

The customer's name.

Enter email address

Email id of the customer.

Start time

Select the start time and date.

End time

Select the end time and date.

Reminder (minutes)

Select reminder for the appointment.

Subject

Enter the subject

Location

Enter location.

Message

Enter message for the appointment.

5. Click Submit and the appointment appears under Appointments related list in Ready state .
6. Edit the appointment and click Send activity to send the appointment to the specified email
address.

Note: You can also cancel the appointment using the Cancel appointment related link.
Transfer a case
The OSP agent or manager, if unable to resolve a case, transfers the case manually to an
enterprise's internal agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1569


<!-- page 1570 -->
Before you begin

Role required: sn_csm_ocs.ext_manager or sn_csm_ocs.ext_agent

About this task

You can transfer a case by selecting the reason for transfer, adding transfer notes, and transfer
the case manually. The case is transferred based on the default assignment group setup while
defining an OSP. Else, the case is transferred based on AWA or assignment rules, that have been
previously setup.

Procedure
1. Navigate to All > Outsourced Customer Service > Cases > My Cases.
2. Open a case that you want to transfer.
3. Cick Transfer Case.
4. Select the reason for transferring the case from the Reason drop-down list.
5. Enter additional information regarding the case in the Notes field.
6. Click Save.
The case is transferred successfully to the enterprise's internal manager. When you go back
to All cases and view the case, you can view the transfer information under Outsourced Case
Transfer Request related list.
View cases
OSP manager or agent, you must be able to view all application modules with the list of cases for
customers, consumers, and products served by your organization.

Before you begin

Role required: sn_csm_ocs.ext_manager or sn_csm_ocs.ext_agent

Procedure
1. Navigate to All > Outsourced Customer Service > Cases.
You must be able to see My Cases, All, Open, and Unassigned cases. Users who aren’t
authorized or who don’t belong to this OSP won’t see any case.

Note: As an OSP manager you can view cases that are assigned to the groups you
manage.
2. Select All, open a case, and assign the case to yourself.
The Assigned to field is pre-filled with your name.
View case related emails and respond
As an OSP agent, you can view the list of emails related to a case that is assigned to you. You can
respond to a case by emailing stakeholders.

Before you begin

Role required: sn_csm_ocs.ext_agent

Procedure
1. Navigate to All > Outsourced Customer Service > Cases > My Cases.
2. Open a case that you want to respond to.
3. Select Emails related list.
The list of emails sent earlier if any, is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1570


<!-- page 1571 -->
4. Select New Email to create an email.
The recipient fields are pre-filled. You can add additional recipients if required.
5. Enter the body text in the Compose Email window.
6. Select the Attachment icon (

) if you want to add an attachment to the email.

7. Select Send.
Report knowledge gap from a case
An OSP agent can report a knowledge gap for a case.

Before you begin

Role required: sn_csm_ocs.ext_agent

Procedure
1. Navigate to All > Outsourced Customer Service > Cases > My Cases.
2. Open a case.
3. Is knowledge available for the case in the Knowledge Gaps related list.
4. Click Report Knowledge Gap related link.
5. Enter the description.
6. Click Submit.
A knowledge gap is created and you can view it under the Knowledge Gaps related list.
For more details, see Report a knowledge gap
Propose a major case
As an OSP agent, you can propose a major case from the existing customer service case
assigned to you.

Before you begin

Role required: sn_csm_ocs.ext_agent

About this task

Cases in these states can be proposed as a major case candidate:
• New
• Open
• Awaiting Info
Cases that are Resolved, Closed, or Canceled can’t be proposed as a major case candidate.
When proposing a case as a major case candidate, agents can specify the reason or justification
for the case in the Propose Major Case pop-up window. Information provided in the Work notes
and Business Impact fields are added to the Case form.

Procedure
1. Navigate to All > Outsourced Customer Service > Cases > My Cases.
2. Open a case.
3. Right-click on the case form.
4. Select Propose Major Case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1571


<!-- page 1572 -->
5. In the Propose Major Case pop-up window, enter a reason for the proposal in the Work notes
field.
You can also choose to enter the business impact of the selected case in the Business Impact
field.
6. In the Propose Major Case pop-up window, enter a reason for the proposal in the Work notes
field.
7. Optional: Enter the business impact of the selected case in the Business Impact field.
This information is added to the Case form in the Work notes field and the Business Impact
field in the Major Case Information section.
8. Select Propose.
An entry is added to the Work notes on the Case form that the case was proposed as a major
case candidate. The information entered in the Propose Major Case pop-up window is also
added to the Case form.
Close a case
Users with OSP agent role can propose a solution to a case and close the assigned cases.

Before you begin

Role required: sn_csm_ocs.ext_agent

Procedure
1. Navigate to All > Outsourced Customer Service > Cases > My Cases.
2. Open a case.
3. Click the Closure information tab on the case form.
4. Select the Resolution code from the drop-down list.
5. Enter the cause for resolution and notes if any in the Cause and Resolution notes fields.
6. Select the Add resolution notes to comments check box, if desired.
7. Click Close Case.
The case state changes to Closed state.
Contextual search
An OSP agent can search for related information to fulfill a case. The search results returned are
the list of entities that the agent is entitled to according to the data governance.

Before you begin

Role required: sn_csm_ocs.ext_agent

Procedure
1. Navigate to Outsourced Customer Service > Cases > All.
2. Open a case to see the related search results according to the case description.
View list of entitlements
As an OSP manager or agent, you must view entitlements for an account or consumer to create
or fulfil cases.

Before you begin

Role required: sn_csm_ocs.ext_manager or sn_csm_ocs.ext_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1572


