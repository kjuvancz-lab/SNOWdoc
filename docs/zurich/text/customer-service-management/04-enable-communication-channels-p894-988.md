# Zurich Customer Service Management — Enable communication channels

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 894–988 of 2452

Sections: Enable communication channels (p894)

---

<!-- page 894 -->
The Customer Service mobile application opens in the Studio, which is a guided app creator.
For more information about using the Studio, Legacy - ServiceNow Studio .
3. Customize the application to display the desired applets and data and configure agent actions
and notifications.

Enable communication channels
Set up multiple communication channels so that customers can contact you through their
preferred methods.

Communication channels

Chat Zoom Connector

Configure communication channels,
such as email, call, chat, or social media.

Use Chat Zoom Connector to enable
customers to engage better using
video and screen sharing options.

Omnichannel Callback

Engagement Messenger

Set up Omnichannel Callback for
Customer Service Management
to enable your customers to
request a voice or video callback.

Set up Engagement Messenger
to enable your users to find the
information or service that they need
from third-party web applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

894


<!-- page 895 -->
Communication channels overview

Communication channels
Configure communication channels for users to email, call, or chat, and integrate
social media channels. This ensures users can reach your team through their
preferred method for assistance.
Chat Zoom connector
Install and set up the Chat Zoom Connector to enhance customer engagement
with video and screen sharing options. This application enables you to start Zoom
meetings directly from a chat for more effective communication.
Engagement Messenger
Learn about the stages to set up Engagement Messenger, then install and configure
it to access information and services from third-party web applications via your
customer portal. This setup helps streamline your workflow and enhance your
experience.
Omnichannel Callback
Set up and configure Omnichannel Callback for Customer Service Management
to enable customers to request voice or video callbacks. Customize the feature to
meet your organization’s needs, enhancing customer experience and optimizing
case resolution efficiency.

Configure communication channels
Configure communication channels to provide users with options to email, call, or chat with your
teams for help. You can also integrate with social media.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

895


<!-- page 896 -->
Before you begin

Role required: admin

About this task

You have the following options for setting up communication channels:

Procedure
• Set up the Customer Service email channel.
Customers can send emails to create new cases and update current cases as well as receive
email updates from agents as cases progress. Customer Service Management uses the
ServiceNow email accounts
feature to create and maintain email accounts.
◦ Configure one or more email addresses

.

◦ Configure an email address for a product.
◦ Configure an email subject line prefix
◦ Set email communication channel properties
◦ Create an email client template
◦ Create quick messages

.

.

◦ Create rules for incoming emails and create and assign cases.
• Set up the Customer Service phone channel.
External customers can reach out to customer service agents using the phone communication
channel. Customer Service Management uses both Computer Telephony Integration (CTI) and
OpenFrame to provide phone support for customers, as well as the Notify application and the
Twilio Voice product.
OpenFrame is included with Customer Service Management. The CTI Softphone plugin
(com.snc.cti) and the Customer Service CTI Demo Data (com.snc.customerservice_cti_demo)
plugin must be activated separately. The Notify plugin (com.snc.notify) is activated as part of
the CTI Softphone plugin.
◦ Set up the phone communication channel.
◦ Associate a phone number with a workflow.
◦ Create an OpenFrame configuration.
• Set up the Customer Service chat channel.
The chat communication channel uses the Connect Support feature to provide chat capability
from the Customer Service Portal and Consumer Service Portal. You can also enable Virtual
Agent to create or use predefined chatbot topics (conversations) for your users.
◦ Configure the customer service chat queue.
◦ Add an agent to the chat support assignment group.
◦ Activate Virtual Agent for Customer Service Management
◦ Activate Customer Service Virtual Agent conversations.
◦ Integrate Customer Service Virtual Agent with Facebook Messenger.
• Set up the social media integration feature to support case resolution through social media
channels.
◦ Create a social media profile for an account, contact, or consumer.
◦ Create a social media log entry for a case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

896


<!-- page 897 -->
Configuring the chat channel
®

Configure the chat channel with the ServiceNow Connect Support feature. You can also enable
Virtual Agent to create or use predefined chatbot topics (conversations) for your users. You can
also give users the option of switching to a live agent from a virtual agent.
Agents must be added to the Customer Service chat support assignment group before they can
receive chat requests. This assignment group is used by the Customer Service chat queue to
route the chat requests.
For more information, see Connect Support

and Virtual Agent

.

Pre-chat surveys
Use pre-chat surveys to capture preliminary information from a customer. From the responses
received, Advanced Work Assignment (AWA) routes chat conversations to appropriate queues
and groups. Before entering into a chat conversation, the assigned agent can review the context
of the issue.

Pre-chat features
Pre-chat surveys provide the following advantages that help agents efficiently handle chat
conversations:
Preconfigured pre-chat surveys
Pre-chat surveys determine the pre-chat questions presented to users.
Preconfigured surveys are activated by default in the base system, but in order to
avoid conflicts with previous configurations, customers who have upgraded have to
manually activate them. These preconfigured surveys are:
• CSP Pre-Chat Survey - Collects preliminary information for logged-in customers.
• CSP Anonymous Pre-Chat Survey – Collects preliminary information for users
who are not logged in.
You can define a different survey or modify these predefined surveys. For more
information, see Create chat surveys .
Routing chats to the correct queue
Advanced Work Assignment (AWA) leverages information captured through prechat surveys to route a chat to the right queue. For more information, see Work item
queues .
Identifying topics related to the chat issue
When customers enter a response to the standard pre-chat question "Please briefly
describe your issue," Natural Language Understanding can help determine the
appropriate Virtual Agent conversation topic. Relevant topics are automatically
displayed to end users (requesters) rather than prompting them to choose from a
list of conversation topics. For more information, see Define context topic intent
configurations .

Configuring Pre-chat if you have upgraded
®

Some settings need to be configured if you have upgraded your ServiceNow instance. For more
information, see Configure pre-chat after upgrading.

Plugins
You must activate the Consumer Service Portal (com.glide.service-portal.consumer-portal) and
Glide Conversation Server (com.glide.cs) plugins. To activate the plugins, see Activate a plugin

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

897


<!-- page 898 -->
Related topics
Pre-chat from the Consumer Service Portal
Configure the customer service chat queue
Define the customer service agents, default chat messages, schedule, and escalation path for
the customer service chat queue.

Before you begin

Role required: admin

About this task

The Customer Service Management chat communication channel uses the ServiceNow Connect
Support
feature.

Procedure
1. Navigate to All > Collaborate > Administration > Queues.
2. Select Customer Service from the Chat Queues list.
3. Fill in the fields, as appropriate.
Chat Queue form
Field

Description

Name

Name of the queue.

Active

Not used in Connect.

Assignment User group that contains the support staff for the queue. Any user in the group
group
can view the queue in the Connect sidebar and accept chats. No other users
can access the queue. This field must be populated.
Average
wait time

Average time it takes for an agent to accept a chat in the queue. This value is
automatically calculated. Do not manually edit.

Confirm
problem

Not used in Connect.

Escalate to

Different queue to which an agent can escalate a chat. For example, there is
a queue for high priority support chats. When a queue is defined in this field,
agents can access the Escalate option in conversations.

Initial agent Message that users see when an agent accepts their chat. For example, Thank
response
you for contacting support. We are looking into your question now and will be
with you shortly.
Not
available

Message that users see when they attempt to start a chat outside the defined
queue Schedule. You can use HTML to format the message and include links or
media.

Question

Initial phrase that users see when they start a new chat in the queue. For
example, How can I help you?

Schedule

Schedule that defines when the queue is available. Leave the field blank to
make the queue available all the time. Users cannot start a new conversation in
the queue outside the schedule hours.

4. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

898


<!-- page 899 -->
Related topics
Connect Support
Activate Virtual Agent for Customer Service Management
Activate Virtual Agent for CSM to use the predefined Customer Service Virtual Agent topics
(chatbot conversations) designed to help your customers complete common self-service tasks.

Before you begin

The Virtual Agent plugin (com.glide.cs.chatbot) must be activated. If the Virtual Agent isn’t
currently activated, contact ServiceNow to activate it.
Role required: admin

Procedure
Activate the Customer Service Virtual Agent Conversations plugin (com.sn_csm.virtualagent) to
access the predefined Customer Service topics.
Customer Service Virtual Agent conversations
Predefined Customer Service Virtual Agent chatbot conversations enable your customers to get
help with the product. Integrating Natural Language Understanding (NLU) models with your virtual
agent chatbot topics enables chatbots to analyze, understand, and navigate the user to the right
topic based on the inferred intent.
A conversation topic defines the dialog between the Virtual Agent (chatbot) and the user to
accomplish a specific goal.

Activating Virtual Agent conversations
The system administrator or a virtual agent admin must do the following to enable the chatbot
conversations:
• Enable the Glide Virtual Agent plugin (com.glide.cs.chatbot).
• Enable the Customer Service Virtual Agent Conversations plugin (com.sn_csm.virtualagent).
• Publish

the following read-only pre-defined virtual agent chatbot topics and topic blocks:

Note: You can duplicate a topic and then customize it.
◦ Check Case Status (Template)
Users can search cases and check the status of an existing case.
◦ Get Help with a Product (Template)
Users can get help on an issue with a product, search relevant knowledge articles, or create
a case for the issue.
◦ Get Help (Template)
This topic is for users who are not logged in and want to chat anonymously. Users can use
keywords and search relevant knowledge articles or choose to be transferred to a live agent.
You can integrate this topic with the Virtual agent - Facebook messaging integration to
enable chat using your messaging application.
◦ Get Help with an Order (Template)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

899


<!-- page 900 -->
Users can get help on an issue with an existing order, search relevant knowledge articles, or
create a case for the issue.
◦ Submit Request (Template)
Users can submit a request for searching and using one of the catalog items.
◦ Create Case
Creates a case from Virtual Agent when no relevant topics for the issue you have are
displayed.
◦ Update Case
Users can update a case from Virtual agent.
Your users can run the published topics in your chat support client.

Activating Virtual Agent conversations with NLU
• The Customer Service NLU Model for Virtual Agent Conversations (com.sn_csm.nlu) plugin is
automatically enabled when you enable the Customer Service Virtual Agent Conversations
plugin (com.sn_csm.virtualagent).
After you enable the plugin, you can view the following read-only intents for the Customer
Service NLU for VA models in Studio:
◦ CheckCaseStatus
◦ GetHelp
◦ GetHelpWithProduct
◦ GetHelpWithOrder
◦ SubmitRequest
Each intent corresponds to a chatbot topic. To customize an intent, you can import
an
existing intent from the Customer Service NLU for Virtual Agent model and then link the NLU
model with the associated intent for the topic .
• Enable ServiceNow NLU in the general settings

.

Related topics
Get help using virtual agent conversations
Natural Language Understanding in Virtual Agent
Integrate Customer Service Management Virtual Agent with Facebook Messenger (Legacy)
Integrate the Customer Service Virtual Agent with Facebook Messenger to enable bot
conversations in the messenger.

Before you begin

Role required: virtual_agent_admin or admin
• Install the Customer Service (com.sn_customerservice) plugin.
• Install the Customer Service Virtual Agent Conversations plugin (com.sn_csm.virtualagent).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

900


<!-- page 901 -->
• Make sure Virtual Agent is integrated with Facebook Messenger.
• Make sure you have the token and secret for the messenger.
For information on integrating the Virtual Agent with Facebook Messenger and for retrieving
the messenger token and secret, see Set up Virtual Agent integration for consumer messaging
apps .

About this task

With this integration, you can get help using Virtual Agent chatbot conversations. For more
information on getting help, see Customer Service Virtual Agent conversations .

Procedure
1. In the application navigator, enter
sys_cs_adapter_configuration_page_messenger_list.do
2. Select sample-fb-messenger-app.
You have to be in the Customer Service Virtual Agent Conversations application to edit the
record.
3. In the Messenger Page ID field, enter your company's Facebook page ID.
4. Right-click and select Save.
5. In the Provider Auth field, click the information icon and open the Message Auth record:
◦ Go to the Outbound message creation field, click the information icon and open the Token
Verification record.
◦ In the Token field, enter the token for the messenger application.
◦ Click Update.
6. In the Message Auth record:
◦ Go to the Inbound message verification field, click the information icon, and open the Hash
Message Verification record.
◦ In the Secret field, enter the app secret for the messenger application.
◦ Click Update.
Configure pre-chat after upgrading
If you have upgraded, some settings need to be configured to use pre-chat effectively.

Before you begin

Role required: admin

About this task

For information about using pre-chat surveys to capture preliminary information from a customer,
see Pre-chat surveys. If you have upgraded, you must manually adjust some settings to use Prechat most effectively.

Procedure
1. Make the predefined pre-chat surveys active.
a. Navigate to Conversational Interfaces > Pre-Chat Survey.
b. Select the CSP Pre-Chat Survey, which collects preliminary information for logged-in
customers.
c. In the form, select Active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

901


<!-- page 902 -->
d. Click Submit.
e. Repeat this process for the CSP Anonymous Pre-Chat Survey, which collects preliminary
information for users who are not logged in.
2. Disable the legacy form-based chat widget from appearing in the portal header.
a. Type sys_properties_list.do from your instance.
b. Search for the csp.legacy_chat property.
c. Set the property value to true.
d. Click Update.
The Chat option from the portal header is disabled.
3. Include the chat widget to appear on the Consumer Service Portal page.
a. Navigate to Service Portal > Agent Chat.
b. Click CSP Chat.
c. Select Active.
d. Click Submit.
The Open chat window icon that customers can use to initiate the pre-chat survey and connect
with an agent will appear in the portal header.
Configuring the email channel
You can configure an email channel to either create interactions or cases from incoming emails.
Email Interaction creates interactions from emails. Email to Case automatically creates cases
from emails. The setup process involves configuring email properties, defining flows, and setting
up notifications.
Email Interaction
Email Interaction creates an interaction from customer email. It associates the
email conversation between agent and the customer with the interaction record.
If the customer request requires investigation and resolution, a case is created.
Subsequently, email communication is tracked through the case record.
Email to case
Email to Case creates cases from incoming customer emails to streamline issue
tracking and resolution.
Email Interaction
Like chat and phone channels, Email Interaction enables agents to manage email conversations
with customers using interaction records. Agents can create cases when further investigation
is needed. This approach reduces unnecessary cases and provides a consistent design for
omnichannel interactions.
To enable Email Interaction for Customer Service Management (CSM), configure system
properties and define flows for processing incoming emails. These flows determine how emails
are converted into interactions and, if necessary, into cases.
Additionally, enabling notifications for interactions helps keep agents informed about email
responses received from customer, providing timely responses to customer inquiries.
Activate Email Interaction for CSM
Activate the Email Interaction for CSM plugin (sn_eaai_csm) for new or existing CSM customers.
This plugin includes demo data and activates related plugins if they aren’t already active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

902


<!-- page 903 -->
Before you begin

Role required: admin

About this task

The flows are deployed with Email Interaction for CSM and are enabled by default for new CSM
customers. The flows aren’t enabled by default for existing CSM customers. To manually activate
the flows, Activate a flow for Email Interaction for CSM

Procedure
1. Navigate to All > System Definition > Plugins.
The Review Installation Details dialog is displayed.
2. Find the Email Interaction for CSM using the filter criteria and search bar.
The app is available in the Store applications section.
3. Start the installation process by selecting Install.
The Review Installation Details dialog box is displayed.
4. Review the details of the installation.
5. Verify that the Install now option is selected.
6. Optional: If you want to get the demo data, select the Load demo data check box.
7. Select Install.

Result

The Email Interaction for CSM plugin is successfully installed.
View the service channel configured with Email Interaction for CSM
View the service channel configured during the installation of the Email Interaction for CSM
application. This service channel facilitates the routing of email interactions through Advanced
Work Assignment.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Advanced Work Assignment > Settings > Service Channels.
2. View the Email service channel.
Configure Advanced Work Assignment for routing email interactions
Configure Advanced Work Assignment (AWA) to route email interactions automatically to your
agents, based on their availability, capacity, and optionally, skills.

Before you begin

Role required: admin

About this task

The Service channel Email is configured during the installation of the Email Interaction for CSM
application.‑If you want to create service channels for email, follow the procedure.
You can use the Advanced Work Assignment (AWA)
to users based on their availability and capacity.

feature to automatically assign work items

AWA assigns work items using assignment groups, so it's important that your users and groups
are set up correctly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

903


<!-- page 904 -->
• Determine the assignment group to use in the AWA service channel configuration and add
users to this group.
• Confirm that the users have at least one of the roles: sn_customerservice.consumer_agent or
sn_customerservice_agent.
Setting up a service channel involves multiple steps, which are detailed in the procedure.
Once the service channel setup is complete, you can use AWA to assign newly created email
interactions that either unassigned or satisfy the conditions specified in the service channel.

Procedure
1. Create the email service channel.
a. Navigate to All > Advanced Work Assignment > Settings > Service Channels > New
b. Fill in the fields on the Service Channel form.
Service channel form
Field

Description

Name

Name of the service channel that you’re
configuring. For example, Custom-Email.

Inbox order

Order in which channel items appear in
the user inbox. The Inbox Order field is
an integer field type . This field can store
whole numbers.

Application

Name of the application. For the Email
Interaction channel, select Email Interaction
for CSM.

Active

Option for activating the service channel.
When you select this option, the associated
queues for the service channel can start
accepting work items.

Short description

Brief description of the service channel.

Table

Table that stores the service channel
records. To route email interactions, select
the Interaction table.

Assign to field

Field that references the user that the item
is assigned to. For the Interaction table, this
field is the Assigned to field (assigned_to)
field.

Assignment group field

Field that references the assignment
group that the item is assigned to. For
the Interaction table, this field is the
Assignment group field field.

Advanced condition

Advanced conditions that apply to the
channel.

Default work item size

Amount of a user's capacity that is used if
this work item is assigned. The default is 1.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

904


<!-- page 905 -->
Field

Description

Default capacity

Number of items automatically assigned to
agents (pending overrides). The default for
this field depends on the type of work item.

Utilization condition

Condition that determines what constitutes
an active item that counts toward user
workload/capacity.

c. Select Submit.
The system adds the Email Interaction channel to the Service Channels list. For more
information, see Create or configure a service channel .
2. Configure the layout for the email interaction inbox card.

Note: The Inbox layouts are configured during the installation of the Email Interaction
for CSM application.
‑If you want to create Inbox layouts follow the procedure in Create or modify an inbox layout
for Email service channel, available by default, or Custom-Email service channel.
3. Create a queue for the email interaction service channel.
a. In the Queue related list of the service channel, select New.
b. On the form, fill in the fields.
Queue form
Field

Description

Name

Name of the queue. For example, Email
Queue.

Short description

Brief explanation of the queue. For example,
"Assign email interactions to front-office
users".

For more information about configuring a queue, see Create a work item queue

.

c. Select Submit.
4. Create an assignment rule for the queue.
a. Navigate to All > Advanced Work Assignment > Settings > Assignment Rules.
b. Select New.
c. On the form, fill in the fields.
New assignment rules field description
Field

Description

Name

Name of the assignment rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

905


<!-- page 906 -->
Field

Description

Short description

Brief description of the assignment rule.
For example, Assign the email interactions
based on this configuration.

Assign by

Type of assignment. Select Most Capacity,
which routes a work item to the user who
has the greatest availability for handling the
work.

Allow agents to reject

Option to enable agents to reject work items
in their inbox.

For more information about creating an assignment rule, see Configure agent assignment
rules .
5. Create a group for the queue.
a. Navigate to All > Advanced Work Assignment > Management > Groups.
b. Select New.
c. On the Group form, fill in the fields.
For more information about creating a group, see Create or change groups for Advanced
Work Assignment queues .
d. Select Submit.
e. Select the group to display the Group form.
f. In the Group Members related list, add users to the group.
The users that you add to the group for the Email Interaction Assignment queue require the
roles.
▪ Customer agent (sn_customerservice_agent)
▪ Consumer agent (sn_customerservice.consumer_agent)
▪ AWA agent (awa_agent)
6. Associate the assignment rule with the queue.
a. Navigate to All > Advanced Work Assignment > Settings > Queues.
b. Select the queue.
For example, Email Queue.
c. In the Assignment Eligibility related list on the Queue form, select New.
d. In the Agent assignment rule field, select the assignment rule.
e. In the Groups field, select the assignment group.
f. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

906


<!-- page 907 -->
7. Activate the service channel.
a. Navigate to All > Advanced Work Assignment > Settings > Presence States.
b. Select the Available presence state.
c. Add the email service channel to the Selected column.
d. Select Update.

Result

After the service channel is activated, you can use it to assign work items. For more information,
see Service channels .
Configure flows for incoming emails that create and update interactions
The default email flows are available once you activate the Email Interaction for CSM application.
Enable the email flows to activate email processing for automatic creation and updating
interactions.
• Create Interaction from Email: Creates an interaction of type Email for each new inbound
email from a customer.
• Update Interaction from Email: Updates the interaction with the reply email received from the
customer.
If a reply email is received on a closed interaction, a new interaction of type Email is created. It
includes the link to the previous closed interaction.
• Update Case via Reply for EmaiI: Updates the case record with the reply email received from
Customer on the case.
This flow creates an interaction of type Email if a reply email is received on the closed case
record. The new interaction includes a link to the closed case.
Alternatively, customers can use Inbound Actions to create and update email interactions.
The execution order of the Inbound Flows takes a higher precedence over Inbound Actions
meaning that when an email flow executes, it helps prevent execution of Inbound Actions.
Activate a flow for Email Interaction for CSM
Activate flows for customers who have the Email Interaction for CSM application configured,
enabling efficient workflow automation.

Before you begin

Role required: admin

About this task

For new CSM customers, the inbound actions are activated by default. Existing CSM customers
should activate email interaction related flows and deactivate the case related flows.

Procedure
1. Navigate to All > Process Automation > Workflow Studio.
2. Open a flow from the available flows.
◦ Create Interaction from Email
◦ Update Interaction from Email
◦ Update Case via Reply for EaaI
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

907


<!-- page 908 -->
3. Select AND.
4. Select the filter condition: To contains customerservice@example.com.

Note: customerservice@example.com is a sample email address. Specify the actual
email address that should be configured as the default for creating email interactions.
5. Activate the selected flow by selecting Activate.

Result

All the available flows are activated.
Define a custom flow to create or update email interactions
Define email-related business processes using Workflow Studio. This tool enables you to
manage emails along with your customer service processes through a visual interface without
having to design or request complex scripts.
Create an interaction
Create an interaction record to capture customer details.

Before you begin

Role required: workspace_admin, awa_agent, sn_customerservice_consumer_agent, or
sn_customerservice_agent

Procedure
1. Navigate to All > Process Automation > Workflow Studio.
2. Create a flow.
a. Select Flows.
b. Select New.
c. Select Flow.
d. In the Flow name field, enter the flow name.
e. Select the application scope from the Application list.
f. In the Description field, enter the description.
g. Select Show additional properties.
To know more about additional properties, see Create a flow in Workflow Studio

.

h. Select Build flow.
3. Create a trigger.
a. Select Add a Trigger.
b. Search and select Application.
c. Select Inbound Email.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

908


<!-- page 909 -->
d. Select Email conditions with AND operator.
▪ Select Type is received.
▪ Select Receive type is New.
▪ Select To contains customerservice@example.com.

Note: customerservice@example.com is a sample email address. Specify the actual
email address that should be configured as the default for creating email interactions.
e. Leave the Reply Record Type as empty.
f. Select Done.
4. Select Add an Action, Flow Logic, or Subflow and select any of the following.
◦ Action
◦ Flow Logic
◦ Subflow

Note: After you have created action entries, you can select multiple actions using
Select multiple.

5. Optional: Add error handler.
a. To enable the error handling, slide the ERROR HANDLER toggle switch.
b. Select Add an Action, Flow Logic, or Subflow and select any of the following.
◦ Action
◦ Flow Logic
◦ Subflow
6. Verify the email flow and modify it if necessary.
7. Select Save.
8. Select Activate.
9. From the confirmation dialog box, select Activate.
Related topics
Create a flow in Workflow Studio
Update an interaction
Modify existing interaction records, verifying that all email communication details are updated.

Before you begin

Role required: admin, workspace_admin, awa_agent, sn_customerservice_consumer_agent, or
sn_customerservice_agent

Procedure
1. Navigate to All > Process Automation > Workflow Studio.
2. Create a flow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

909


<!-- page 910 -->
a. Select Flows.
b. Select New.
c. Select Flow.
d. In the Flow name field, enter the flow name.
e. Select the application scope from the Application list.
f. In the Description field, enter the description.
g. Select Show additional properties.
To know more about additional properties, see Create a flow in Workflow Studio

.

h. Select Build flow.
3. Create a trigger.
a. Select Add a Trigger.
b. Search and select Application.
c. Select Inbound Email.
d. Select Email conditions with AND operator.
▪ Select Type is received.
▪ Select Receive type is Reply.
e. Leave the Reply Record Type as empty.
f. Select Done.
4. Select Add an Action, Flow Logic, or Subflow and select any of the following.
◦ Action
◦ Flow Logic
◦ Subflow

Note: After you have created action entries, you can select multiple actions using
Select multiple.

5. Optional: Add error handler.
a. To enable the error handling, slide the ERROR HANDLER toggle switch.
b. Select Add an Action, Flow Logic, or Subflow and select any of the following.
◦ Action
◦ Flow Logic
◦ Subflow
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

910


<!-- page 911 -->
6. Verify the email flow and modify it if necessary.
7. Select Save.
8. Select Activate.
9. From the confirmation dialog box, select Activate.
Related topics
Create a flow in Workflow Studio
System properties for configuring Email Interaction
You can manage certain workflows based on the system properties, such as enabling or
disabling the creation of email interactions for guest users. You can set an inactivity period after
which email interactions are automatically closed.
Navigate toAll>System Properties>All Properties‑.
Alternatively, in your instance, enter sys_properties.list in the filter navigator and
customize the Email Interaction system properties.
System Properties for Email Interaction
Property

Description

sn_eaai_csm.create_interaction_for_non_matched_user

Enable or disable in
for a non-matched

• Type: Boolean (tr

• Default value: tru

• Location: All> Sy
All Properties.

sn_eaai_csm.period_of_customer_inactivity_to_close_interaction Set the inactivity pe

which an interactio
email is received fro
• Type: Integer
• Default value: 5

• Location: All> Sy
All Properties.

sn_eaai_csm.email_addresses

Specify the default
creating email inter
contain a comma-s
email addresses. Em
of these addresses
interactions.
• Type: String

• Default value:
customerservice@

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

911


<!-- page 912 -->
System Properties for Email Interaction (continued)
Property

Description

Note:

customerser
is a sample e

• Location: All> Sy
All Properties.

period_for_reminders_to_customers_interaction

Specify the numbe
an automatic email
to customers. This v
how long the system
receiving the last em
from the customer b
reminder. Reminde
interactions that are

Note: The val

positive intege
to 0 or a negati
system default
• Type: Integer
• Default value: 2

• Location: All> Sy
All Properties.
sn_eaai_csm.email.reroute.enabled

Enable or disable th
interactions that are

• Type: Boolean (tr

• Default value: fals

• Location: All> Sy
All Properties.

Related topics
Display the most recent reply in the Activity stream
Configure an ongoing notification for email interactions
Configure an ongoing notification for email interactions. Configure the ongoing menu item on the
toolbar in the CSM Configurable workspace for agents.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

912


<!-- page 913 -->
Procedure
1. Navigate to All > Advanced Work Assignment > Settings > Presence States.
2. From the Service channels section, from the Available list, select Email (or a custom email
channel) and Chat – Asynchronous.
3. Add the selected items to the Selected list.
4. Select Update.
Enable agents to respond to customers with email activity history
Enable agents to respond to customers with email activity history, which is created by
embedding a mail script in an email client template.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Email Client > Email Client Templates.
2. Search and select Email response to customer.

Note: If a message appears about the application scope, select here to be able to edit
the record.
3. In the Body HTML field, enter <div id="collapsible-content">
${mail_script:get_email_interaction_activity_history_for_reply}</
div>.

Note:
◦ The number of emails in the activity history matches the value set in the system property,
number_of_activities_in_notification.
◦ You can also create a client template and map it to the Interaction table. For more
information, see Create an email client template .
4. Select Update.

Result

The get_activity_of_case_and_related_interaction_for_email script retrieves and formats cases
and related interaction email history, adding it to the email client in the agent workspace. The
content is hidden behind ellipses within a DIV tag with the ID “collapsible-content".
Related topics
Send case email replies containing interaction emails in activity history
Configure email notifications for an interaction
Set up email notification to determine whether they should be sent to the contact, consumer, or
guest.

Before you begin

Role required: admin

About this task

Email notifications that are available by default:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

913


<!-- page 914 -->
• Interaction created for consumer
• Interaction created for guest
• Interaction created for contact
You can customize the existing notification or create a notification. For more information, see
Email and SMS notifications .

Procedure
1. Navigate to All > System Notifications > Email > Notifications.
2. Select the Show column search row icon (

).

3. In the Name column, search and select for any of the following notification.
◦ Interaction created for consumer
◦ Interaction created for guest
◦ Interaction created for contact
4. To disable notifications, update Active to False.
a. Select here.
b. Clear the Active check box.
c. Select Update.
5. To include different content, update the email template.
a. Select What it will contain.
b. Remove the exiting template from the Email template field.
c. Search and select the email template.
Alternatively, in the Message HTML field, enter the content for the email template.
d. Select Update.
Configure email reminders for an interaction
Set up automatic email reminders to notify customers to respond to interactions that are in the
On Hold state due to pending customer responses.

Before you begin

Role required: admin

About this task

Email notifications that are available by default:
• Email reminder for consumer
• Email reminder for guest
• Email reminder for contact
You can customize the existing notification or create a notification. For more information, see
Email and SMS notifications .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

914


<!-- page 915 -->
Procedure
1. Navigate to All > System Notifications > Email > Notifications.
2. Select the Show column search row icon (

).

3. In the Name column, search and select for any of the following notifications.
◦ Email reminder for consumer
◦ Email reminder for guest
◦ Email reminder for contact
4. To turn off notifications, update Active to False.
a. Select here.
b. Clear the Active check box.
c. Select Update.
5. To include different content, update the email template.
a. Select What it will contain.
b. Remove the exiting template from the Email template field.
c. Search and select the email template.
Alternatively, in the Message HTML field, enter the content for the email template.
d. Select Update.
Enable Recommended Actions for an email interaction
Help the agent to find relevant resources based on the context of an email by enabling
recommended actions.

Before you begin

Role required: admin

About this task

For more information, see Configuring Recommended Actions.

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select CSM Interaction context.
3. Set the Active column as true.
Customize the email interaction experience
Customize the Email Interaction record page in UI Builder for agents.

Before you begin

Role required: admin

About this task
For more information on UI Builder, see UI Builder

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

915


<!-- page 916 -->
Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. On the UI Builder page, select Experiences tab.
3. On the Experiences page, search and select CSM/FSM Configurable Workspace.
4. Navigate to Pages and variants > Record > Email Interaction Page.
5. Select the Open menu icon (

).

6. Select Duplicate variant.
For more information, see Create a page variant

.

7. On the Tell us about your variant screen, enter Custom Email Interaction Page in
the Name field.

Note: Don’t change the Conditions field.
8. Select Create.
The Page variant opens.
9. Select the Settings tab.
10. Enter a lower value in the Order field.
For example, -1100.
11. Select Save.

Result

You can customize the page in the UI builder.
Customize the New Activity marker for an email interaction
Customize the New Activity marker in UI Builder to differentiate between the latest activities for
agents.

Before you begin

A duplicate variant must be configured by an administrator. If the duplicate variant isn’t
configured, you can't enable or disable the New Activity marker. For more information, see
Customize the email interaction experience.
Role required: admin

About this task
For more information on UI Builder, see UI Builder

.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. On the UI Builder page, select Experiences tab.
3. On the Experiences page, search and select CSM/FSM Configurable Workspace.
4. Navigate to Pages and variants > Record > Email Interaction Page.

Note: The Email Interaction Page variant is the newly created variant.
5. Select Editor.
6. In the Content section, search and select Activity Stream 1.
7. In the Activity Stream 1 panel, navigate to Configure > Display
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

916


<!-- page 917 -->
Note: If a message appears about the application scope, select here to be able to edit
the record.
8. Turn on the Show New Activity Marker toggle switch.
9. Select Save.

Result

You can view the New Activity marker in the email conversation within the activity stream.
Customize an email compact header for an email interaction
Customize an email compact header within the UI Builder to view information such as the email
subject, sender, and receiver in a compact format.

Before you begin

A duplicate variant must be configured by an administrator. If the duplicate variant isn’t
configured, you can't enable the email compact header. For more information, see Customize the
email interaction experience.
Role required: admin

About this task
For more information on UI Builder, see UI Builder

.

Note: By default, Show Email Compact Header is enabled for Email Interaction for CSM.
Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. On the UI Builder page, select Experiences tab.
3. On the Experiences page, search and select CSM/FSM Configurable Workspace.
4. Navigate to Pages and variants > Record > Email Interaction Page.

Note: The Email Interaction Page variant is the newly created variant.
5. Select Editor.
6. In the Content section, search and select Activity Stream 1.
7. In the Activity Stream 1 panel, navigate to Configure > Display

Note: If a message appears about the application scope, select here to be able to edit
the record.
8. Turn on the Show Email Compact Header toggle switch.
9. Select Save.

Result

You can view information such as the email subject, sender, and receiver in a compact format
within the activity stream.
Customize showing a full conversation in UI Builder
Customize the show full conversation feature in UI Builder to display the entire email thread
between the customer and agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

917


<!-- page 918 -->
Before you begin

A duplicate variant must be configured by an administrator. If the duplicate variant isn’t
configured, you can't enable Show full conversation. For more information, see Customize the
email interaction experience.
Role required: admin

About this task
For more information on UI Builder, see UI Builder

.

Note: By default, Enable Email Show full conversation is enabled for Email Interaction for
CSM.

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. On the UI Builder page, select Experiences tab.
3. On the Experiences page, search and select CSM/FSM Configurable Workspace.
4. Navigate to Pages and variants > Record > Email Interaction Page.

Note: The Email Interaction Page variant is the newly created variant.
5. Select Editor.
6. In the Content section, search and select Activity Stream 1.
7. In the Activity Stream 1 panel, navigate to Configure > Display

Note: If a message appears about the application scope, select here to be able to edit
the record.
8. Turn on the Email Show Full Conversation toggle switch.
9. Select Save.

Result

You can view the entire conversation within the activity stream.
Email to case
Set up email addresses that customers can use to submit cases to your team. To help direct
cases to specific teams, you can designate email addresses to specific products. While agents
work on the cases, they can also email customers with updates and proposed solutions.
Customer Service Management uses the Email Accounts application
to create and maintain
email accounts. The system administrator can create multiple incoming email addresses that
customers can use to communicate with customer service agents. The system administrator can
also create one outgoing email address.
After the incoming and outgoing email addresses are created, the system administrator can set
the following properties for the email communication channel:
• Establish one of the incoming email addresses to automatically create a case.
• Enable a prefix to include in the subject line of an email to any of the incoming email addresses
that automatically creates a case.
• Create cases for customers who are not currently in the system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

918


<!-- page 919 -->
The system administrator can also create a channel configuration to associate any of the
incoming email addresses with specific products.
Related topics
Configure an email address for a product
Email accounts
Configure an email address for a product
Configure an email address that creates a case for a specific product.

Before you begin

Role required: admin

About this task

Create a configuration that links a product to a specific email address. This configuration is
created in the Channel Configuration (sn_customerservice_channel_config) table.

Procedure
1. Navigate to All > Customer Service > Administration > Channels.
2. Select New.
3. On the Channel Configurations form, fill in the fields.
Channel Configurations form
Field

Description

Name

Name of the email configuration.

Channel Configuration type. Set this field to Email
Type
Product

Product model associated with this email configuration.

Active

Option to activate the email configuration.

Email
Email address for this configuration. Enter one of the incoming email addresses
address that the administrator created using the Email Accounts application.
4. Select Submit.
Configure an email subject line prefix
Configure a prefix to include in an email subject line that creates a case.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Customer Service > Administration > Properties.
2. In the Email subject prefix format for new case field, enter the prefix.
The default prefix is Case:.
3. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

919


<!-- page 920 -->
Customer service email properties
Users with the system administrator role can set several properties for the Customer Service
Management email communication channel.
After creating the incoming and outgoing email addresses that customers use to communicate
with customer service agents, the system administrator can set the following email-specific
properties.
Navigate to Customer Service > Administration > Properties to access these properties.
Customer Service Management email properties
Property

Definition

Case email address

One of the incoming email addresses that automatically
creates a customer service case.

[glide.cs.email.case_queue_address]

For incoming email, the system checks the address to
see if it matches the address in the Case email address
property. If yes, the system creates a customer service
case. If it does not match, or if this property is not set,
the system then checks the Email subject prefix format
for new case property.
Email subject prefix format for new
case
[glide.cs.email.new_case_prefix]

The prefix included in the subject line of an email to
any of the incoming email addresses that automatically
creates a customer service case. This field is
automatically set to Case: as the default prefix.

Create case for non matched user

Enable the creation of new customer service cases
when emails are received from users with email
[sn_customerservice.email.create_case_for_non_matched_user]
addresses that do not currently exist in the system.
Number of activities

Indicates the number of activities (emails and
comments) in the activity history that are included in the
[number_of_activities_in_notification] email notifications and replies. The default value is 3.
Include system emails in email
notifications

Indicates whether system emails are included in email
notifications. The default value is false.

[include_system_emails_in_notification]
Number of activities in reply
number_of_activities_in_reply
Email history notifications

Number of additional comments and emails included in
Reply/Reply-All templates (-1 means all)

By default, the email history shows the
last three messages in the case record. To
show all activities on a case record in email
replies and email notifications, add this script
${mail_script:get_emails_comments_activity_history
to the email reply system property (reply-received)
and the case commented system property
(case.commented.for.customer).
For more information, refer to Configure email and
comment notifications
.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

920


<!-- page 921 -->
Disable email responses from the case activity stream
Disable email responses from the case activity stream. Stop agents from interacting with
customers directly.

Before you begin

Role required: admin

About this task

By default, customer service agents can respond to cases using options within a customer email
thread instead of having to use another email client. Agents can use the Reply, Reply All, and
Forward buttons in the case activity stream to respond to customer emails.
You can disable this feature and hide these buttons from the Agent Workspace or Configurable
Workspace application.

Procedure
1. Navigate to All and enter sys_properties.list.
The System Properties page opens.
2. Select New.
3. Create a system property with the name

sn_agent_workspace.activity_email_options_enabled.

4. Set the value to false.
5. Select Submit.

Result

Users with the role sn_customerservice_agent are now unable to reply to or forward emails.
Configure rules for incoming emails that create and assign cases
Create your email-related business processes using Inbound Email Flows. After you receive an
email on a specified support email address, you can define rules to create cases and assign the
cases to specific teams.
In previous releases, incoming emails were processed through inbound email actions. Admins
created separate email actions to support different business flows using scripts.
Inbound Email Flows provide powerful configuration capabilities to manage emails along with
your customer service processes through a visual Flow Designer interface. Business managers
can define inbound email flows without having to depend on admins or developers to write
complex scripts. Email flows use conditional logic to incorporate multiple business processes in
one flow.

Note: The Email conditions under the Inbound Email trigger are case-sensitive. Review
your flow designer conditions and consider lowercase and uppercase options depending
on how the sender puts the email address in the headers.
The following example email flows are available by default after you activate the Customer
Service Management plugin. Enable the email flows for activating the email processing rules to
automatically create and update cases.
• Create case from email
• Update case using Reply

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

921


<!-- page 922 -->
Note:
• The execution order of the inbound email flows takes a higher precedence than inbound
actions (that is if an email flow executes, it avoid execution of inbound actions).
• The user who sends an email should have the necessary roles to perform operations
specified in the flow, or else the operation stops while executing.
The following example email flows are installed with the platform. These flows aren’t required for
any of the CSM email processing rules:
• Handle email replies
• Logging a problem
Related topics
Define rules to process incoming emails
Activate Customer Service Management
Define rules to process incoming emails
Define your email-related business processes using Inbound Email Flows. Manage emails along
with your customer service processes through a visual Flow Designer interface without having to
design or request complex scripts.

Before you begin

Role required: admin, sn_customerservice_manager

About this task

Email flows use conditional logic to incorporate multiple business processes in one flow. When
designing inbound email flows, note the following:
• The execution order of the inbound email flows takes a higher precedence than inbound
actions.That is, if an email flow executes, it prevents the execution of inbound actions.
• The user who sends an email should have the necessary roles to perform operations specified
in the flow or the operation will stop.

Procedure
1. Create an inbound email flow.
a. Navigate to All > Process Automation > Flow Designer.
b. Select one of the following flows.
▪ Create Case from Email: Creates a case when a user sends a new email.
▪ Update Case via Reply: Updates a case when you use the reply option.
c. Select Edit Flow.
d. Select the Inbound Email trigger.
e. Modify the default email filter conditions or select New Criteria to add conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

922


<!-- page 923 -->
f. Select a Reply Record Type table.
g. Select Done.
2. Edit the flow.
a. Select an existing action and expand it.
b. Provide information for the action or select the add icon (+) to add a new action, flow logic, or
subflow.
c. Select Done.
3. Finalize the rule.
a. Verify the email flow and modify it if necessary.
b. Select Save.
c. Select Activate.
4. Select Activate.
The defined inbound email flow is activated.

Result

The defined inbound email flow is activated.
Related topics
Building flows
Building custom actions
Configure email and comment notifications
Add a script to the email reply or case comment template to include all activities (emails and
comments) on a case record in email replies and in email notifications.

Before you begin

Role required: admin

Procedure
1. Update comment notifications.
a. Navigate to All > System Notifications > Notifications.
b. In the Email template column, enter case.commented.for.customer.
c. In the case.commented.for.customer system
property, add the following script to the Message HTML field:
${mail_script:get_emails_comments_activity_history}.
d. Save the field.
2. Update email notifications.
a. Navigate to All > Email client templates > Reply.
b. In the reply-recieved system property, add the following script to the Body HTML field:
${mail_script:get_emails_comments_activity_history}.
c. Save the field.

Result

All emails and comments are now included in the email replies and notifications.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

923


<!-- page 924 -->
Send case email replies containing interaction emails in activity history
Include emails from related interactions in agent case email responses to provide full context of
prior email communications. The history is created by embedding an email script within an email
client template.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Email Client > Email Client Templates.
2. Search and select reply-for-customer-service.

Note: If a message appears about the application scope, select here to be able to edit
the record.
3. On the Content tab, in the Body HTML field, enter <div id="collapsiblecontent">
${mail_script:get_activity_of_case_and_related_interaction_for_email}</
div>.

Note:
◦ The number of emails in the activity history matches the value set in the system
properties, include_system_emails_in_notification and
number_of_activities_in_reply.
◦ You can also create a client template and map it to the Interaction table. For more
information, see Create an email client template .
4. Select Update.

Result

The get_activity_of_case_and_related_interaction_for_email script retrieves and formats cases
and related interaction email history, adding it to the email client in the agent workspace. The
content is hidden behind ellipses within a DIV tag with the ID “collapsible-content".
Related topics
Enable agents to respond to customers with email activity history
Configuring the phone channel
Configure phone support for customers with Computer Telephony Integration (CTI) and
OpenFrame.
Create an OpenFrame configuration
This configuration specifies the OpenFrame window settings as well as the URL to
be launched within OpenFrame.
Configure OpenFrame events
Use OpenFrame events to achieve better integration between Advanced Work
Assignment (AWA) and Computer telephony integration (CTI) and aide in improved
call routing.
Related topics
Notify
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

924


<!-- page 925 -->
Create an OpenFrame configuration
This configuration specifies the OpenFrame window settings as well as the URL to be launched
within OpenFrame.

Before you begin

Role required: admin

About this task

As part of the OpenFrame configuration, users with the admin role can select one or more user
groups. Access to the configuration is limited to the users that have the openframe user role and
that belong to the selected groups.

Procedure
1. Navigate to All > OpenFrame > Configurations to display the OpenFrame Configurations list.
2. Click New.
3. Fill in the fields, as appropriate.
OpenFrame Configuration form
Field

Description

Name

The name of the OpenFrame configuration.

Title

The title that appears in the OpenFrame window header.

Subtitle

The subtitle that appears in the OpenFrame window header.

Order

The order number for the configuration.
If users have multiple OpenFrame configurations, they can only access the
configuration with the lowest order number.

Note: When upgrading, the Order field for the existing default
OpenFrame configuration is set to 1.
Enable
collapsed
view

Enables the expand and collapse capability for the OpenFrame window.
When collapsed, users can still access call control actions. The default
setting is False.

Show
presence
indicator

Enables the indicator that displays agent availability.

User Group

The user groups selected for this configuration. Access to this configuration is
limited to the users that have the openframe user role and that belong to the
selected groups.

Note: If you do not select any groups, the configuration is available to
all users with the openframe user role.
URL

The URL to be launched within OpenFrame. This URL can be an absolute path
or a path that is relative to the ServiceNow instance.

Active

Denotes this configuration as active.

Width

The width of the OpenFrame window.

Height

The height of the OpenFrame window, not including the OpenFrame header
height.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

925


<!-- page 926 -->
Field

Description

Icon Class

The class of icons used for the OpenFrame window (retina-icons.css). Only
supports icon-phone and icon-video values.

Title Icon

The icon displayed on the OpenFrame window header.

Configuration Can be used to store any JSON encoded string.

Note: Several fields on the OpenFrame Configuration form can also be set by using the
OpenFrame API. These fields include: Title, Subtitle, Width, Height, and Title Icon.
4. Click Submit.
Related topics
openFrameAPI - Client
OpenFrame events for work items, agent presence, and interactions
Use OpenFrame events to achieve better integration between Advanced Work Assignment
(AWA) and Computer telephony integration (CTI) and aide in improved call routing.
OpenFrame events are enabled by default when your administrator installs the Openframe
plugin (com.sn_openframe) and Advanced Work Assignment for CSM plugin (com.sn_csm.awa).

Note: The Advanced Work Assignment for CSM (com.sn_csm.awa) plugin is automatically
installed with the Customer Service plugin (com.sn_customerservice).
As a CTI developer, ensure that you subscribe to the following events by using the subscribe
method of the openFrameAPI. For more information, see openFrameAPI - Client .
OpenFrame events
Event

Description

openframe_awa_agent_presence

Events are sent to OpenFrame when an agent's
presence state changes.

openframe_awa_workitem_offered

Events are sent to OpenFrame when a work item is
offered to an agent.

openframe_awa_workitem_accepted Events are sent to OpenFrame when a work item is
accepted by an agent.
openframe_awa_workitem_rejected

Events are sent to OpenFrame when a work item is
rejected by an agent.

openframe_agent_off_interaction

Events are sent to OpenFrame indicating the presence
of an agent on chat as off or available.

Add and activate an OpenFrame configuration by navigating to OpenFrame > Configurations.
For more information, see Create an OpenFrame configuration.

Sample payloads
Refer to the sample payloads for each event as described in the following table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

926


<!-- page 927 -->
Events and their sample payloads
Event

openframe_awa_agent_presence

Sample payload

{
"result":{
"presence":{
"name":"Available",
"sys_id":"0b10223c57a313005ba
aaa65ef94f970",
"available":true,
"channels":[
{
"name":"Case",
"available":true,
"sys_id":"d4a675e3739713004a9
05ee515f6a7e7",
"restrict_update":false
},
{
"name":"Phone",
"available":true,
"sys_id":"f6281cc393353300908
13a53177ffb32",
"restrict_update":false
},
{
"name":"Chat",
"available":true,
"sys_id":"27f675e3739713004a9
05ee515f6a7c3",
"restrict_update":false
}
]
}
}
}

openframe_awa_workitem_offered

{
"result": {
"workItem": {
"sys_id":
"14c86c40a1650610f87701807d9b
c0be",
"size": 1,
"serviceChannel": {
"name": "Chat",

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

927


<!-- page 928 -->
Events and their sample payloads (continued)
Event

Sample payload

"sys_id":
"27f675e3739713004a905ee515f6
a7c3"
},
"document": {
"sys_id":
"aa582040a1650610f87701807d9b
c076",
"table": "interaction"
},
"previousWorkItem":
"7c78a440a1650610f87701807d9b
c02b",
"isQueueTransferred":
true,
"isAutoAccepted": true
}
}
}
openframe_awa_workitem_accepted

{
"result": {
"workItem": {
"sys_id":
"14c86c40a1650610f87701807d9b
c0be",
"size": 1,
"serviceChannel": {
"name": "Chat",
"sys_id":
"27f675e3739713004a905ee515f6
a7c3"
},
"document": {
"sys_id":
"aa582040a1650610f87701807d9b
c076",
"table": "interaction"
},
"previousWorkItem":
"7c78a440a1650610f87701807d9b
c02b",
"isQueueTransferred":
true,
"isAutoAccepted": true
}
}
}

openframe_awa_workitem_rejected

{
"payload":{

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

928


<!-- page 929 -->
Events and their sample payloads (continued)
Event

Sample payload

"workItem":{
"sys_id":"66c4071d1bf66410b8e
3ea06624bcb59",
"size":1,
"serviceChannel":{
"name":"Case",
"sys_id":"d4a675e3739713004a9
05ee515f6a7e7"
},
"document":{
"sys_id":"b6a4c31d1bf66410b8e
3ea06624bcb93",
"table":"sn_customerservice_c
ase"
},
"rejection":{
"reason":"Not my
expertise",
"sys_id":"31e3fa29b38023002e7
b6e5f26a8dc17"
}
}
}
}
openframe_agent_off_interaction

{
"result":{
"interaction":{
"sys_id":"da1dc9651bbe6410b8e
3ea06624bcb51",
"number":"IMS0000050",
"type":"chat",
"reason":"INTERACTION_INACTI
VE"
}
}
}

Related topics
OpenFrame overview
Social media integration
Support case resolution through social media communication channels.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

929


<!-- page 930 -->
When working with customers or consumers to create and resolve cases, agents can
select Social as the communication channel and add a social profile to the Case form. Any
communication with customers or consumers that takes place through social media is recorded
on the Case form in the Social Logs related list.
Customer service managers can create one or more social profiles for a user by recording a
user's social profile information on a specific social media channel such as Twitter or Facebook.
Managers can create social profiles for accounts, contacts, and consumers from the Social
Profiles related list on the entity form. Agents have read-only access to these profiles.

Integration with Customer Service Management
The social media communication channel is integrated with the following Customer Service
Management forms: Case, Account, Contact, and Consumer.
On the Case form, the Channel field includes the Social option. Selecting this option adds the
Social Profile field to the Case form, in which you can select a specific social media channel. The
Social Logs related list captures the details of social media conversations.
The Account, Contact, and Consumer forms include the Social Profiles related list. Customer
service managers can create one or more profiles for each of these entities.

Plugins
The Customer Service Social Integration plugin (com.sn_cs_social) is activated as part of the
Customer Service Management plugin.

Tables
The Customer Service Social Media plugin adds the following tables.
Customer Service Management Social Media Plugin Tables
Table

Description

Social Channels

Stores the social channels, which are brought
in by the social integration tool.

[sn_app_cs_social_social_channel]
Social Profiles
[sn_app_cs_social_social_profile]
Social Logs
[sn_app_cs_social_social_log]

Stores the social profiles created for each
customer contact or consumer.
Stores the details of social media
conversations related to cases.

Chat Zoom Connector
Resolve issues quickly and engage better with customers with video and screen sharing options
®
in Zoom using the ServiceNow Chat Zoom Connector application.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

930


<!-- page 931 -->
Overview
The Chat Zoom Connector application integrates the chat communication channel with the
Notify communication channel by managing and initiating a Zoom meeting directly from a chat.
An interaction record is created for each Zoom meeting initiated from a chat.
As an agent, you can use the Chat Zoom Connector application to initiate Zoom meetings from a
customer chat and optionally record the meeting.
As an agent manager, you can access an interaction record of type Zoom to view the meeting
details such as the meeting URL, participants, and recording.
As a customer, you can join a Zoom meeting with an agent regardless of whether you have a
Zoom account.
To get started with the Chat Zoom Connector application, see Configure Chat Zoom Connector.

Key features
• Initiate Zoom meetings using the Quick Actions list in chats.
• Track Zoom meetings as interactions on the ServiceNow platform.
• Track participants in Zoom meetings.
• Post the meeting recording to the interaction activity stream.

Example scenario
The following example scenario shows the use of the Chat Zoom Connector application in
resolving a configuration issue with an agent initiating a Zoom meeting directly from a customer
chat.
Agent resolving a customer issue over Zoom

1. A customer engages with Support over chat to report an issue for a product.
2. An agent receives the chat request and realizes that the issue can be resolved through a minor
configuration change.
3. The agent initiates a Zoom meeting using the Quick Actions list in the chat and invites the
customer to join the meeting.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

931


<!-- page 932 -->
Note: The customer does not need a Zoom account to join the meeting.
4. The customer shares the screen over Zoom and the agent guides the customer on updating
the configuration and resolves the issue.
Configure Chat Zoom Connector
Install and set up the Chat Zoom Connector application to interact with customers using Zoom
meetings initiated from a chat.

Before you begin

Role required: admin

About this task

This task provides general steps to set up the Chat Zoom Connector application for initiating
Zoom meetings from a chat.

Procedure
1. Integrate the Zoom account of your company with your ServiceNow instance using the Zoom
spoke.
For more information, see Set up the Zoom spoke.
2. Set up the Notify Zoom connector in Zoom for associating the Notify communication channel
with Zoom meetings.
The conference call details of the Zoom meetings are stored in the Notify Conference Calls
[notify_conference_call] table. For more information, see Set up Notify Zoom connector .
3. Install the Chat Zoom Connector application.
For more information, see Install a ServiceNow Store application

.

Note: The Chat Zoom Connector application installs the
CSMZoomInteractionImpl script include, which is

preconfigured for the Customer Service application. It also installs the
sn_chat_zoom.ZoomInteractionExtPoint extension point, which enables the
copying of any application-specific fields from the parent chat interaction record to the
Zoom interaction record. For more information, see Configure application-specific field
values for Zoom interactions.
4. Activate the Zoom quick action.
For more information, see Activate the quick action for Zoom meetings.
Related topics
Chat Zoom Connector
Using Chat Zoom Connector
Configure application-specific field values for Zoom interactions
Use scripted extension points to enable the copying of application-specific field values to
interaction records for Zoom meetings initiated from chats.

Before you begin

Role required: admin
Install the Chat Zoom Connector application. For more information, see Install a ServiceNow
Store application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

932


<!-- page 933 -->
About this task

You can enable the copying of any application-specific fields from a
parent chat interaction record to its Zoom interaction record by using the
sn_chat_zoom.ZoomInteractionExtPoint extension point. The parent chat is the chat
from which the Zoom meeting was initiated.
By using extension points, you can easily integrate customizations without having to alter the
base code. You can extend standard base functionality using customized scripts. For more
information, see Using extension points to extend application functionality .
An implementation is available in the base system for scripted extension points. You can modify
the data and add additional fields.

Procedure
1. Navigate to All > System Extension Points > Scripted Extension Points.
2. In the API Name column, search for and select sn_chat_zoom.ZoomInteractionExtPoint.
3. On the Extension Point form, select a script include to use the
sn_chat_zoom.ZoomInteractionExtPoint extension point.
◦ Create and register a custom script include.
For more information, see Registering custom script includes against the scripted extension
points.
◦ Modify the existing script include by going to the Implementations related list and selecting
a script include in the Class column. The script includes are displayed in the Class column.

Note: By default, the ZoomInteractionExtPoint and

CSMZoomInteractionImpl script includes that use the
sn_chat_zoom.ZoomInteractionExtPoint extension point are available for
Global and Chat Zoom Connector applications.
▪ The ZoomInteractionExtPoint script include for the Global application
copies the field values from the parent chat interaction record to the Zoom
interaction record.
▪ If the Customer Service application is installed, the CSMZoomInteractionImpl
script include for the Chat Zoom Connector application copies the value of the
Consumer, Account, and Contact fields from the interaction record of the parent
chat to the Zoom interaction record. The CSMZoomInteractionImpl script
include is available only when the Customer Service application is installed.
4. Include application-specific fields by adding the

sn_chat_zoom.ZoomInteractionExtPoint extension point in the script include.
You can create multiple implementations for an extension point and provide an order number
for each implementation. The implementation that has the lowest order number is executed
first.

5. On the Extension Point form, select Update.
Activate the quick action for Zoom meetings
Activate the Zoom quick action to initiate Zoom meetings using the quick action from a chat.

Before you begin

Install the Chat Zoom Connector application. For more information, see Install a ServiceNow
Store application .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

933


<!-- page 934 -->
Role required: admin

About this task

By default, the Zoom quick action is inactive. Activate this quick action to enable agents to initiate
Zoom meetings from a chat.

Procedure
1. Navigate to All > Quick Actions > Actions.
2. In the Name column, search for and select Zoom.
3. On the Quick Action form, select the Active check box.
4. Click Update.

Result

By default, the Zoom quick action is associated with chats when the Chat Zoom Connector
application is installed. In addition, if the Conversational SMS service channel application is
installed, the quick action is also associated with SMS conversations. For more information, see
Conversational SMS service channel
andQuick actions
.

Set up Engagement Messenger
Understand the stages involved in setting up Engagement Messenger before you add it to your
customer service web portal.
After you install the Engagement Messenger application in your instance, you’re ready to
configure it. You can also watch the academy video
to understand the overall functionality of
Engagement Messenger.
The configuration process involves the following tasks:
®

1. Install the Engagement Messenger application from the ServiceNow Store.
2. Create Engagement Messenger module.
◦ Configure the theme and styling of how Engagement Messenger appears to your customers
◦ Configure how Engagement Messenger behaves when your customer uses it
◦ Configure how Engagement Messenger works for your customers
For more information, see Configure Engagement Messenger.
3. Create identity providers to enable an authenticated user experience. See Create an identity
provider (IdP) for Engagement Messenger.
If you want to enable only a guest user experience for your customer service portal, you can
ignore this step and move on to step 4.
4. Create cross-origin resource sharing (CORS) rules for the REST API. See Configure a CORS
rule for Engagement Messenger.
5. Add HTTP response headers for your Engagement Messenger. See Create HTTP response
headers for Engagement Messenger.
6. Configure the system properties to enable virtual agent chat, multi-provider SSO, and to set a
user session time-out value. For more information, see Engagement Messenger properties.
7. Configure a custom URL to load Engagement Messenger on third-party websites. For more
information, see Enable Engagement Messenger on a website when third-party application
cookies are blocked.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

934


<!-- page 935 -->
8. Configure the deep linking feature to launch a specified feature in Engagement Messenger.
For more information, see Deep linking feature in Engagement Messenger.
9. Activate an Engagement Messenger module.
10. Embed Engagement Messenger in your web application.
®

11. Embed messenger in your native iOS mobile app using Now Mobile SDK. For information, see
the Embed Engagement Messenger in a native iOS app using Now Mobile SDK [KB1587276]
article in the Now Support Knowledge Base.
®

12. Embed messenger in your native android mobile app using Now Mobile SDK. For more
information, see the Embed Engagement Messenger in a native android app using Now Mobile
SDK [KB1587611]
article in the Now Support Knowledge Base.
Engagement Messenger for Customer Service Management
®

By using the ServiceNow Engagement Messenger application, your customers use self-service
to find the information or service that they need from your third-party web applications that are
outside of the ServiceNow environment.

Request apps from the ServiceNow Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Engagement Messenger benefits
With the Engagement Messenger application, you can manage how your customers use your
web applications and services from one central location. You can also configure the behavior
and styling of the messenger and deploy the configuration on the websites or mobile sites of
your choice.
Engagement Messenger provides the following benefits:
• Let your customers access your services from within an integrated messenger in your thirdparty websites.
• Integrate customer support capabilities via a no or low-code configuration.
• Meet your customer needs faster with these pre-packaged features:
◦ Case management including case types
◦ Service catalog requests
◦ Virtual and live agent chat
◦ Field service management
◦ Appointment booking for field service
◦ Walk-up appointment booking
®

◦ Knowledge article search that is powered by ServiceNow AI Search
For more information about the Engagement Messenger application, see Features of
Engagement Messenger.
To get started with the Engagement Messenger application, see Set up Engagement Messenger.
Features of Engagement Messenger
Understand what the Engagement Messenger application can provide to your customers.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

935


<!-- page 936 -->
After you create and configure the Engagement Messenger module, you can customize it for
your customers. For example, you can change the display order of any of these features on the
home page of the messenger. Also, you can enable or disable any of these features to suit your
customer's needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

936


<!-- page 937 -->
Engagement Messenger features

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

937


<!-- page 938 -->
Greeting
You can display the user greeting, which also includes a greeting message, on the
header of the messenger. You can customize the way you want to greet your guest
users and the users who sign in to your website.
Knowledge
You can select a knowledge base for your search results or choose to display
featured articles on the home page of the messenger. You can also add multiple
knowledge bases to suit your customer base.

Note: To add knowledge bases to the Engagement Messenger module,
you must manually assign the knowledge_admin role to the Engagement
Messenger admin [sn_csm_ec.ec_admin] user.
Search
®

The ServiceNow AI Search capability that is used in the Engagement Messenger
application uses the knowledge bases that you selected for your messenger.
When a customer searches for information using the Search widget on the
messenger, the displayed results are from the articles in the knowledge bases that
are associated to your messenger module.
Customers can open the articles from the search results to get the information they
need. They can also provide feedback to the article directly from the messenger
to indicate whether the article was helpful or not. This feedback helps you to
understand which articles are the most helpful so that you can improve those
articles that weren’t helpful.

Note:
• If the Service Portal - Restricted Pages plugin (com.glide.serviceportal.pages.restricted) is activated in your ServiceNow instance, AI Search
functionality will not work in Engagement Messenger for unauthenticated
users.
If this plugin is not activated, then the AI Search functionality works for both
unauthenticated and authenticated users.
• You must configure AI Search in your ServiceNow instance and then
enable Typeahead Search and AI Search Assist widgets so that the
unauthenticated users can use the AI search feature from Engagement
Messenger.
For more information on enabling Typeahead Search and AI Search
Assist widgets for Engagement Messenger, see Enabling AI search in the
Customer and Consumer Service Portals for unauthenticated users.
For more information of AI Search configuration, see Configuring AI
Search .
Case management
You can manage your customer cases on the messenger. This feature is available
only for authenticated users of your website.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

938


<!-- page 939 -->
By using the Cases widget on the messenger, your customers can submit a case to
request help with something or to report an issue. Submitted cases can be assigned
to a customer service agent and tracked to a resolution.
Case management

Whenever your customers return to the customer portal and log in, they are notified
of any updates to the cases that they created. They can also view the details of all
the cases and requests that they have previously submitted and track their status.
Some cases would require action from the submitted user, asking them to provide
more information about the help they need or to review a solution that the support
team has provided. Customers can perform all these actions directly from within the
messenger.
Catalogs
You can associate pre-defined catalogs with your Engagement Messenger.
Customers can browse through the list of available catalog items. From this list of
catalog items, they can choose to request a service or create a ticket. The requests
that the customer makes can be tracked to a resolution using the case management
feature.
Whenever your customers return to the customer portal and log in, they are notified
of any updates to the requests that they have previously submitted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

939


<!-- page 940 -->
Catalog feature

Field service management
The field service feature enables your customer to request a technician visit to
service their issue. By selecting a product or service that they need help with
and their location, customers can submit a request for a technician visit. While
submitting the request, customers can also add any supporting attachments that
they think might help the support team understand the issue before a technician is
allotted for the visit.
All technician requests are stored as work orders in your ServiceNow instance so
that they can be tracked to completion.
The Work Order will have the location where the customer has raised a request.
Geo-location services must be enabled for the technicians so that customers
can track the live location and know the estimated time of arrival (ETA) of their
technician. For more information, see Field service feature configuration.

Note:
• Verify that the Field Service Management - Customer Experience plugin
(com.snc.fsm_customer_experience) is active in your ServiceNow instance.
• The field service feature is available only for users who log in to the
Engagement Messenger and not for guest users.
Walk-up appointments
The walk-up feature enables your customers to book an appointment to visit one
of your stores, service centers, and the like. Customers can view the support
centers near them and select one to schedule an appointment to visit. Once an
appointment is scheduled, customers receive a confirmation email.
Customers who log in into your website can view a list of scheduled appointments
directly from this widget on the Engagement Messenger home page. They can
modify or cancel existing appointments. They also receive notification emails on the
following status of their walk-up appointment:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

940


<!-- page 941 -->
• They're ready to be assisted by an associate of the support center
• A walk-up interaction is assigned to an associate of the support center
• A walk-up interaction is closed
Customers who don’t log in can use the confirmation email to view and modify their
appointments.

Note: To enable a walk-up feature for your customers, verify that you activate
the following plugins in your ServiceNow instance:
• Walk-up for CSM plugin (com.snc.walkup_for_csm) for authenticated users
• Guest Walk-up Experience for Customer Service plugin
(sn_guest_walkup_cs) for unauthenticated users
Virtual and live agent chat
The chat feature enables support agents to interact with customers to resolve their
issue by creating incident or case records or to transfer chats to another agent or
queue if needed. Chat feature support is enabled for both authenticated and guest
(unauthenticated) users.
Virtual and live agent chat
Customers can use the Chat widget on the messenger to interact with
a virtual or live customer support agents in your organization. This
way, your customers can get immediate responses to their queries or
issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

941


<!-- page 942 -->
Live agent chat

Engagement Messenger also provides contextual chat functionality.
From any case details page, your customers can directly start a chat
that opens with the context of that specific case.

Note: Chat is available when you activate the Glide
Virtual Agent plugin (com.glide.cs.chatbot) and set the

com.glide.cs.embed.csp_frame_ancestors system
property value to 'self' <your website URL>.
Now Assist in Virtual Agent with Engagement Messenger
Now Assist in Virtual Agent offers a conversational support experience
that improves the chat experience in Engagement Messenger
by delivering prompt answers to user questions. When enabled,
Now Assist in Virtual Agent provides your users with an interactive
generative AI experience. A friendly, natural language conversation
that is easier to understand and helps users to be more comfortable
with chatting to a bot.
By integrating generative AI chat capabilities, Now Assist in Virtual
Agent enhances the user experience in Engagement Messenger. It
improves asynchronous messaging, enabling users to resolve issues
more quickly and efficiently. These capabilities help speed up issue
resolution and increase efficiency by reducing the number of incoming
queries that must be diverted to a live agent. To know more about Now
Assist in Virtual Agent, see Exploring Now Assist in Virtual Agent .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

942


<!-- page 943 -->
Getting started with Now Assist in Virtual Agent in Engagement
Messenger:
• To enable Now Assist in Virtual Agent chat support in Engagement
Messenger, verify that the Now Assist in Virtual Agent experience is
configured by virtual_agent_admin or admin. For more information,
see Configuring assistants overview .
• You can create or use an existing assistant by navigating to All >
Conversational Interfaces > Assistants. For more information, see
Create a chat assistant .
• Once you select an assistant navigate to the Display experience
tab to configure the Engagement Messenger module. In the Portals
tab, select the Engagement Messenger module from the Add portal
list and select the Standard chat as the experience. For more
information, see Display your chat assistant on a portal, channel, or
mobile app .

Note: Each assistant comes with its own search configuration.
For a smooth experience, if the assistant appears on a portal
or mobile app that already has AI search configured, consider
duplicating that setup to maintain consistency.

Asynchronous chat
Engagement Messenger supports communication at different time
intervals, enabling your support agents and end users to participate
in long-running conversations without having to be online at the same
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

943


<!-- page 944 -->
time. For more information about asynchronous conversation, see
Asynchronous Chat .
Configure asynchronous chat on Engagement Messenger by setting
the web client as a messaging channel. For more information, see
Configure asynchronous chat for the web channel .
Message preview
• Enable preview to see previews of unread chat
message text, tables, links, HTML content, cases,
knowledge cards, and images shared by the support
agent without opening a message. The complete HTML
content or video, and multiple unread messages, can
be seen only when the user accesses the message.
• Asynchronous chat supports emojis sent by an
agent in the message preview for a more interactive
conversation. For more information on how to use
emojis in Agent chat, see Using emojis in Agent Chat

.

Previews

Offline message support
Offline chat support enables users to view messages
sent by the support agent while they were offline. The
chat widget notification shows the total number of unread
messages in real-time when the user revisits the website.
Offline message support

Chat messages history
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

944


<!-- page 945 -->
Users can close and reopen the chat window as needed
without losing context or progress so an accidental
messenger closure doesn’t reset the chat session.

Note: You can set a specific timeout to manage the idle
conversation. By default, if the requester doesn’t respond to
an agent message within two days, the conversation status
changes to Closed Abandoned and the chat session is ended.
As an admin, you can override the conversation idle timeout
period for a web channel by setting the value in the Conversation
Idle Timeout field in the Messaging Channels [sys_cs_channel]
table. For details, see Closing Virtual Agent and Live Agent
conversations .
Configurable Cards
The Configurable Cards enables you to add custom features to Engagement
Messenger. It enables Engagement Messenger to serve as a one-stop solution for
accessing all the information. You can embed portal page, featured links, and data
from any table on the messenger using the Configurable Cards.
Portal page feature card
Allows you to embed any portal page or catalog item on Engagement
Messenger. The embedded page opens within the messenger when
the user selects the feature card.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

945


<!-- page 946 -->
Portal configuration

Featured links
Enables you to add a list of links to website on Engagement
Messenger. The link opens in a new browser tab when accessed using
the feature card on messenger's home page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

946


<!-- page 947 -->
Featured links

Data from any table feature card
The feature card enables you to embed data from any table on
Engagement Messenger. The added records appear as a card with a
title or links on a messenger's home page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

947


<!-- page 948 -->
Data from any table

Proactive updates and reminders
Engagement Messenger provides your customers updates and reminders in the
following scenarios so that you can keep your customers updated even if they are
not accessing the messenger directly.
• Reminder for an upcoming walk-up appointment, according to the walk-up feature
configuration
• Reminder for an upcoming technician visit
• Updates on a case
• Update on a chat
According to the configuration of Engagement Messenger behavior, the count of the
updates is displayed on the messenger widget on your customer support webpage.
If the customer navigates away from your website, the count of updates is also
displayed on the browser tab.
To learn how to start configuring Engagement Messenger for your third-party website, see Set up
Engagement Messenger.
Related topics
Exploring AI Search
Case management for Customer Service Management
Virtual Agent
Using Walk-up Experience
Knowledge Management
Field Service Management
Install the Engagement Messenger application
Install the Engagement Messenger application from the ServiceNow Store if you have the admin
role.

Before you begin

Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product or
application .
Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

948


<!-- page 949 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Engagement Messenger application (sn_csm_ec) using the filter criteria and search
bar.
You can search for the application by its name or ID. If you can't find the application, you might
have to request it from the ServiceNow Store.
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released
apps, see the ServiceNow Store version history release notes .
3. In the Application installation dialog box, review the application dependencies.
Dependent plugins and applications are listed if they’ll be installed, are currently installed, or
must be installed. If any plugins or applications must be installed, you must install them before
you can install the Engagement Messenger application.
4. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
5. Select Install.

Result

The following items are installed with Engagement Messenger:
• Plugins
• Roles
• Tables
For more information, see Components installed with Engagement Messenger.

What to do next
• If you want to enable Virtual Agent chat support in the Engagement Messenger, activate the
Glide Virtual Agent plugin (com.glide.cs.chatbot).
For more information, see Activate Virtual Agent

.

• Get started with Engagement Messenger. For more information on how to get started, see Set
up Engagement Messenger.
Configure Engagement Messenger
Create a Engagement Messenger module and configure its behavior, appearance, and styling.
By creating a messenger module, you can customize the appearance and behavior according to
your organizational branding and to suit your customer needs.

Before you begin
• Install the Engagement Messenger application.
• Gather or prepare the following items:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

949


<!-- page 950 -->
◦ Image files for your logo and messenger launcher icon. The images must be
in .jpg, .png, .bmp, .gif, .jpeg, .ico, or .svg file format.
◦ Color names and hex codes for branding to configure the styling of the messenger user
interface.
• Role required: sn_csm_ec.ec_admin

Procedure
1. Navigate to All > Engagement Messenger > Modules.
2. Choose to create an Engagement Messenger module or edit an existing module.
◦ To create a module, select New.
◦ To edit an existing module, select Edit in the Edit module column of your messenger module.
The guided configuration view is displayed.
3. In the guided configuration view, navigate through Module, Appearance, Behavior, Features,
and Implement.
4. On the form, fill in the fields.
Engagement Messenger module form
Field

Description

Module
Module name

Unique name for your messenger module.

Short description

Brief description of the messenger module.

Appearance
Logo

Logo that is displayed in the header of the
messenger on your website.
The recommended size and dimensions are:
◦ Size (in bytes): approximately equal to 2 KB
◦ Height (in pixels): 30–55
◦ Width (in pixels): 30–55

Note: If no logo is selected, the Home
icon ( ) is displayed as a default logo
in the header of the messenger.
Launcher icon

Icon that is displayed as the messenger
option on your website. On your website,
selecting this icon launches the messenger.
The recommended size and dimensions are:
◦ Size (in bytes): approximately equal to 1 KB
◦ Height (in pixels): 24–60

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

950


<!-- page 951 -->
Field

Description

◦ Width (in pixels): 24–60
◦ Use a circular icon with a transparent
background

Note: The grid size range of a launcher
icon is from 24X24 to 60X60. Any
deviation from the defined range
rescales automatically to fit the launcher
icon size.
Launch icon position

Allow module to expand to full-height

Horizontal margin (in pixels)

Position of the messenger launch icon on
your website.
Option for enabling the messenger module to
expand to the full height of the browser tab.
Distance from the right or left of the browser
tab for the placement of the messenger
launcher icon.
The distance is calculated from right or left
based on your input for the field Launch icon
position.
For example, if you set the launch icon
position as Right and the Horizontal offset
as 50, then the launch icon is placed at
a distance of 50 px from the right of the
browser tab.
The maximum value for this field is 70 px.

Vertical margin (in pixels)

Distance from the bottom of the browser tab
for the placement of the messenger launch
icon.
The maximum value for this field is 70 px.

Primary color

Primary color for styling the header or buttons
in your messenger.
For example, this color is used for user action
buttons such as the Submit, Yes, or OK.

Primary font color

Secondary color

Text color that is used on UI elements that
use the primary color.
Secondary color for styling your messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

951


<!-- page 952 -->
Field

Description

For example, this color is used for user action
buttons such as Cancel or No.
Secondary font color

Tertiary color

Text color that is used on UI elements that
use the secondary color.
Tertiary color for styling your messenger.
For example, this color is used to mark
customer cases with tags such as Action
required.

Tertiary font color
Theme

Text color that is used on UI elements that
use the tertiary color.
Theme for other styling options of the
messenger.
This field is automatically set to CWF
Engagement Messenger Theme.
If you want to select a different theme, ensure
that the theme that you select here must
match certain criteria. For more information,
see Engagement Messenger module theme
requirements.

Note: If the value for the Primary color, Secondary color, or Tertiary color fields

is set to color names, such as Pink, the Engagement Messenger UI doesn’t display
these colors correctly. As a workaround, you can enter the hexadecimal values of these
colors. For example, use ‑FFC0CB for Pink.
Behavior
Notification
Enable notifications on launcher icon

Option to enable in-app pop-up notification
alert message when a new message is
received.

Enable sounds

Option to get the notification alert sound.

Enable notifications in browser tab

Option to get the notification alert on the
browser tab when the concerned web page
isn’t opened.

Enable user behavior tracking

Option for enabling the collection of user
experience analytics from users of your
Engagement Messenger.
This option is available only if you activate
the Service Portal Analytics plugin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

952


<!-- page 953 -->
Field

Description

(com.glide.service-portal.analytics) in your
ServiceNow instance.

Note: If you update your Engagement
Messenger module name after user
behavior tracking is enabled, the User
Experience Analytics dashboard would
show the original module name, not the
updated name.
As an administrator, you can configure the Proactive Recommendations feature for
Engagement Messenger. For more information, see Proactive Recommendations
configuration for Engagement Messenger.
Features
See Feature configuration for Engagement Messenger.
Implement
Website URLs

Comma-separated list of URLs of the
websites where you want to deploy the
messenger.
For example, https://
www.example.com, https://
www.yourwebsiteurl.com

Authentication type

Authentication type for this embedded
messenger. Select one of the following
options:
◦ None
◦ Security assertion markup language
(SAML)-based
◦ Open ID connect (OIDC)-based
If you want to enable only the guest user
experience for the messenger in your
website, set this field to None.
Ensure that you create an identity provider
(IdP) for the authentication type you select
in this field. For more information, see Create
an identity provider (IdP) for Engagement
Messenger.

Advanced branding
Hyperlink text color

Text color used for hyperlinks in messenger.

Navigate-back icon

The icon appears in the messenger header
that enables the user to navigate to the
previous page. The icon size is 24X24.

Close icon

This icon appears in the messenger header
that enables the user to close messenger.
The icon size is 16X16.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

953


<!-- page 954 -->
Field

Description

List search icon

The icon appears in the messenger header
that enables searching through a list. The
icon size is 16X16.

Expand icon

The icon appears in the header that enables
the user to expand the messenger to access
information. The icon size is 16X16.

Collapse icon

The icon appears in the messenger header
that enables the user to collapse an
expanded messenger. The icon size is 16X16.

Start-chat icon

The icon appears in the messenger header
that enables the user to start a chat with an
agent regarding their ticket or technician visit.
The icon size is 16X16.

Filter menu icon

The icon appears at the top of the list page
that enables the user to apply filters to get
desired result. The icon size is 24X24.

Applied-filters icon

The icon appears at the top of the list page
and shows applied filters icon in messenger.
The icon size is 24X24.

Note: The advanced branding configuration is only available in the form view.
5. Select Save.
6. Select Email instructions to notify your security administrator to complete the following tasks:
a. Create an identity provider (IdP) for Engagement Messenger.
b. Configure a CORS rule for Engagement Messenger.
c. Create HTTP response headers for Engagement Messenger.

Note: Engagement Messenger extends service portal capabilities that don’t support
domain separation. For more information, see Domain separation and Service Portal
However, other tables that are used in Engagement Messenger may support domain
separation according to the configurations with which they're created.

.

Result

A new messenger configuration is created and listed in the Modules module of the Engagement
Messenger application.

What to do next
1. Engagement Messenger properties.
2. configure the features of Engagement Messenger.
3. Share the messenger module code with your developer using the Email code to embed
Engagement Messenger in your website.
4. Following are the advanced formatting changes that are available as an optional configuration
in Engagement Messenger:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

954


<!-- page 955 -->
◦ Engagement Messenger module theme requirements to reuse Service Portal theme to
customize the visual appearance in Engagement Messenger.
◦ Default font sizes for search result text in Engagement Messenger.
Engagement Messenger module theme requirements
You can set a theme that you can apply to an Engagement Messenger module. A theme enables
you to define additional styling of Engagement Messenger in your website.
You can select the theme for your Engagement Messenger in the Appearance section of the
guided configuration.
Engagement Messenger theme

A theme that you want to use for your messenger module must meet the following criteria:
• The header must be set as CWF EC Header
• It must contain the JS include /scripts/sn_csm_ec.js
• It must contain the CSS includes cwf_ec_theme_inline_css and sp-theme-la-

jolla.css

Default font sizes for search result text in Engagement Messenger
Define normal and genius search result font sizes to change text appearance in Engagement
Messenger on different devices.

Note: The ec_admin role is required to change the default configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

955


<!-- page 956 -->
Search types and default configurations in Engagement Messenger
Search type

Normal search for Knowledge Base and
Catalog

Default configuration

The default normal search result font size
settings are:
• Large for title
• Medium for summary

Note:
• This setting for knowledge
bases is found in the

em_kb_search_template
template script.
• This setting for Catalog is found in the

em_catalog_search_template
template script.

The default auto-spell correction text font size
is medium.

Note: The default configuration is set in
the Faceted Search widget.
Genius search for Knowledge Base and
Catalog

The default genius search result font size
settings are:
• Small for identifier
• Large for heading
• Medium for summary

Note:
• This setting for knowledge
bases is found in the

em_qa_genius_results_template
template script.
• This setting for Catalog is found in the

em_catalog_genius_results_template
template script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

956


<!-- page 957 -->
Normal search result text appearance in Engagement Messenger

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

957


<!-- page 958 -->
Genius search result text appearance in Engagement Messenger

Change the default chat mode for the Chat feature
Set either asynchronous chatting through a chat window or synchronous mode through
messaging as the default chat mode of the Chat feature.

Before you begin

Role required: sn_csm_ec.ec_admin

Procedure
1. Navigate to All > Engagement Messenger > Modules.
2. On the Engagement Messenger Modules page, in the Edit module column, select Edit.
3. On the Configure Engagement Messenger Module page, select Features.
4. Enable the Chat feature by turning on Chat in the Feature settings pane.
5. On the Chat form, in the Global chat settings section, select Change the default mode for
chatting.
The Messaging Channel page opens in a new tab.
6. In the Type field, select the default chat mode.
◦ To enable synchronous chat to engage in real-time conversation through a chat window,
select Chat.
◦ To enable asynchronous chat to engage in long-running conversations through messaging
without being online concurrently, select Messaging.
For more information, see Configure asynchronous chat for the web channel

.

7. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

958


<!-- page 959 -->
Configure email notifications for unread chat messages
Send email summaries with all unread messages when the user isn’t active during a chat
conversation for a specified duration.

Before you begin

Role required: sn_csm_ec.ec_admin

About this task

You can send email summaries to an authenticated user or users who are verified by a live agent.

Procedure
1. Navigate to All > Engagement Messenger > Modules.
2. On the Engagement Messenger Modules page, in the Edit module column, select Edit.
3. On the Configure Engagement Messenger Module page, select Features.
4. Enable the Chat feature by turning on the Chat in the Feature settings pane.
5. On the Chat form, in the Global chat settings, select Email notifications for unread
messages.
The Missed activity emails page opens in a new tab.
6. Enable the sending of chat email notification by turning on the Missed activity email option.
7. In the Offline threshold drop-down list, set the time duration that the user is inactive before
sending the email notification.
◦ 15 minutes (default)
◦ 2 hours
◦ 8 hours
◦ Custom
8. Select Save.

Result

Automatically sends email notifications of missed chat messages at the specified time interval.
Enable Engagement Messenger on a website when third-party application cookies are
blocked
Configure a custom URL for the ServiceNow instance that helps prevent web browsers from
blocking Engagement Messenger when cross-origin iframes and third-party cookies are blocked.

Before you begin

You must activate the Custom URL (com.snc.customurl) plugin. For more information, see
Activate custom URLs .
Role required: admin

About this task

The latest versions of browsers including Safari and Chrome have enhanced browser security
features. By default, the browser security features block third-party cookies that help prevent
the loading of a third-party application on a website. If you don’t use a custom URL, the browser
treats the messenger as a third-party application when embedded inside a parent website. To
prevent messenger from getting blocked by the browser, you need to set a custom URL for the
ServiceNow instance to match the messenger domain with the website domain. Using custom
URL, browser treats messenger as a first-party application rather than a third-party application.
The web browser's security restrictions block messenger for the following reasons:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

959


<!-- page 960 -->
• Web browser blocks cross-origin iframes when the domain of the URL used in the iframe does
not match the domain of the website itself.

Note: Engagement Messenger uses an iframe to load messenger’s interface on a third–
party website.
• Web browser treats messenger’s cookies as the third-party cookies and blocks them.

Note: Engagement Messenger uses cookies to enable features like authentication,
recommendations, proactive help and so on.

Note: Custom URL is primarily configured to get a branded URL for the ServiceNow
instance, Portals, and EM module that matches with your domain URL.
You must add a CNAME record to your website domain’s DNS records where Engagement
Messenger is embedded and set it as your ServiceNow instance URL. For example, in the name
server for acme.com, create an entry
support.acme.com 300 IN CNAME acme.servicenow.com
where acme.service-now.com is the ServiceNow instance and acme.com is your website
on which Engagement Messenger is integrated.

Procedure
1. Navigate to All > Custom URL > Custom URLs.
2. Select New.
3. On the Custom URL form, in the Domain name field, enter the CNAME record (your custom
URL) that you have set as the ServiceNow instance URL.
4. Select Create.

Note: The new custom URL takes approximately six hours for activation.
5. Optional: After the custom URL is active, on the Custom URL form, select the Set instance
URL check box to enable the custom URL as an instance URL.
6. In a text editor, open the HTML file of the web page on your website where you integrate
Engagement Messenger.
7. In the code, replace the existing website URL with a custom URL.
8. Save the file.

Result

Engagement Messenger loads on a third-party website.

Example:

The following code includes a sample URL that contains support.acme.com as a custom
URL.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

960


<!-- page 961 -->
Custom URL in code

Related topics
Set a custom URL as the instance URL
Custom URLs association to your instance
Custom URL errors and fixes
Update Engagement Messenger launch URLs to the latest version
Update the version of Engagement Messenger in the code used to embed Engagement
Messenger in your website or to launch features automatically with Engagement Messenger.

Before you begin

Role required: Website administrator

Procedure
1. Open the HTML file of the web page on the website where you integrate Engagement
Messenger.
2. Change the existing version number to v=3.1.
For

example:
3. Save the file.
Engagement Messenger properties
You can configure the system properties for your Engagement Messenger module so that you
can enable Virtual Agent chat, multi-provider SSO, and set a user session time-out value.

Properties installed with Engagement Messenger
After you configure an Engagement Messenger module, set the following system properties that
are based on your configuration of the messenger module.

Tip: In the navigation filter, enter sys_properties.list to view the list of all the
system properties and search for the property that you want to update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

961


<!-- page 962 -->
Properties and descriptions of the Engagement Messenger module
Property

Description

com.glide.cs.embed.csp_frame_ancestors

After activating the Glide Virtual Agent plugin
(com.glide.cs.chatbot), you must use the

com.glide.cs.embed.csp_frame_an

system property to enable the configuration o
frame-ancestors policy for the website where
to host Engagement Messenger.
Set the value of the

com.glide.cs.embed.csp_frame_an

system property 'self' <your website URL
example, 'self' https://www.example.c
• Type: string
• Value: self
• Location: System Properties

glide.authenticate.multisso.enabled

Set the

glide.authenticate.multisso.ena

system property to true to enable multiple pro
SSO.
• Type: true | false
• Value: self
• Location: System Properties

Note: If you want to enable only a guest

experience for your customer service por
can ignore this configuration.
User session time-out glide.ui.session_timeout

Set a user session timeout value for the
glide.ui.session_timeout system pr
to a value that is greater than or equal to your
time-out.
• Type: integer
• Value: 30
• Location: System Properties

Note: If you want to enable only a guest

experience for your customer service por
can ignore this configuration.

sn_customerservice.emails.customportal

Set the URL of your third-party customer supp
so that the notification emails that your custom
contain URLs that redirect them to the exact re
record that they submitted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

962


<!-- page 963 -->
Properties and descriptions of the Engagement Messenger module (continued)
Property

Description

These notification emails are sent in scenarios
submitting a case, requesting a service, reque
field technician, or booking a walk-up appoint
• Type: string
• Value: None
• Location: System Properties

For example, if your customer support portal is
https://www.example.com/support
then set the property value to https://
www.example.com/support.

sn_csm_ec.proactive_inactivity_time

Set the inactive period (in seconds) to trigger
help in Engagement Messenger.
• Type: integer
• Value: 2
• Location: System Properties

glide.knowman.serviceportal.use_numbered_url The property contains a comma-separated lis

service portal record sys_ids. For any portal re
specified in this property, the article link will b
displayed with the sysparm_number URL para
instead of sys_kb_id.
• Type: string
• Value: None
• Location: System Properties

Feature configuration for Engagement Messenger
Configure the features of Engagement Messenger so that you can change the default settings to
suit your customer needs.

Before you begin

Role required: sn_csm_ec.ec_admin
You must configure Engagement Messenger before configuring its features. For more
information, see Configure Engagement Messenger.

About this task

Configure how the features of Engagement Messenger appear to your customers, their display
arrangement, and their behavior.
Use the Features section of the guided configuration to customize the messenger configuration.
View a live preview of how the Engagement Messenger would look like in your third-party
website. You can also watch the academy video
to understand the overall functionality of
Engagement Messenger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

963


<!-- page 964 -->
Procedure
1. Navigate to All > Engagement Messenger > Modules.
2. In the Edit module column of the messenger module that you want to configure, select Edit.
The guided configuration view is displayed.
3. From the Features section of the guided configuration, enable or disable a feature by using the
toggle (
) on the feature card.
4. Open one of the following features and modify the values:
◦ Greeting: See Greeting feature configuration.
◦ Knowledge: See Knowledge feature configuration.
◦ Search: See Search feature configuration.
◦ Case: See Case management feature configuration.
◦ Catalog: See Catalog feature configuration.
◦ Field service: See Field service feature configuration.
◦ Walk-up: See Walk-up feature configuration.
◦ Chat with an agent: See Chat feature configuration form fields.

Note:
▪ The knowledge article, catalog item, and case links sent by an agent can be opened
within Engagement Messenger. You can configure how links should be open in a
messenger. For more information, see Create a smart link preference .
▪ You can also enable the Now Assist in Virtual Agent in Engagement Messenger by
Configuring assistants overview
and then Display your assistant
in Engagement
Messenger.
◦ Configurable Cards: See Configurable Cards feature configuration.
◦ Callback: See Callback feature configuration form.
5. Optional: You can also add a feature in the Features section using Configurable Cards.
a. Select Add custom feature.
b. Enter the feature name and select the feature type.
c. Select Add.
For more information, see Configurable Cards feature configuration.
6. Select Update.
7. Optional: Change the display order of the features by reordering the feature cards.
You can see the modified home page layout of your Engagement Messenger in the live preview
of the module.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

964


<!-- page 965 -->
Engagement Messenger features

Note: Engagement Messenger extends service portal capabilities that don't support
domain separation. For more information, see (Domain separation and Service Portal
However, other tables that are used in Engagement Messenger may support domain
separation according to the configurations with which they're created.

).

What to do next

Create an identity provider (IdP) for Engagement Messenger
Enable AI Search in Engagement Messenger for unauthenticated users
Enable the AI Search experience in Engagement Messenger so unauthenticated users can see
the most relevant set of search results.

Before you begin

You must configure AI Search for the Engagement Messenger before enabling AI Search for an
unauthenticated user. For more information, see Search feature configuration.
Role required: admin

About this task

As an admin, you must enable the EC AI Homepage Search, Typeahead Search, and AI Search
Assist widgets in Engagement Messenger to enable the AI Search capability for unauthenticated
users.

Procedure
1. Navigate to Service Portal > Widgets.
2. Search for and open the EC AI Homepage Search widget.
3. Select the Public check box.
4. Select Update.

What to do next

Enable the Typeahead Search and AI Search Assist widgets. For information, see Enable AI
search in the Customer and Consumer Service Portals for unauthenticated users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

965


<!-- page 966 -->
Configure the default behavior of Engagement Messenger
Configure the default behavior of Engagement Messenger to set the default settings for
Notification, Recommendations, and Proactive.

Before you begin

Configure Engagement Messenger.
Use Engagement Messenger embed Code to integrate proactive recommendations on a web
page.
Role required: sn_csm_ec.ec_admin

Procedure
1. Navigate to All > Engagement Messenger > Modules.
2. Select the Engagement Messenger module you want to install on your website.
3. In the Edit module column, select Edit.
4. In the Configure Engagement Messenger module, select the Behavior tab.
5. In the Behavior tab, configure the Recommendations and Proactive settings to define the
Engagement Messenger functions.
For more information, see Proactive Recommendations configuration for Engagement
Messenger.

Note: For information about how to customize the Notification behavior, see Configure
Engagement Messenger.
6. Select Save.
Proactive Recommendations configuration for Engagement Messenger
The Proactive Recommendations feature enables you to show context-based suggestions in real
time and to configure the recommendations experience on Engagement Messenger.

Note: To integrate Proactive Recommendations on a web page, you need to enable
recommendations in the embed code of Engagement Messenger.
Recommendations setting configuration form
Field

Description

Enable recommendation

Option to show or hide the recommendations.

Title text

Title of the recommendation screen in the
messenger.

Subtitle text

Helpful text about the recommendations that
displays at the top of the recommendations
screen.

Show the search bar

Option to display the search bar on the
Recommendation page that enables you to
search content in addition to the provided
recommendations.

Maximum number of recommendations

The maximum number of recommendations to
be shown on the recommendations screen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

966


<!-- page 967 -->
Recommendations setting configuration form (continued)
Field

Description

Link text for additional recommendations

Text for the link that enables the user to view
an additional recommendations.

Link text for Engagement Messenger

Text displayed in the footer of the messenger
to enable navigation to the Engagement
Messenger home page. Use the [[display
text]] format to add a clickable link to
messenger.

• If AI Search does not return any recommendations, then the Engagement Messenger home
page is displayed.
• You need to enable AI Search to make Recommendations available to users.

Proactive setting configuration form
Field

Description

Type

Type of display to show the suggestions
proactively on messenger after 30 seconds
of inactivity. Select None to disable proactive
behavior.

Choose an animation type

The type of animation for the launcher icon
that activates when the user is inactive.
• Ripple (like a wave)
• Bounce

Show a tooltip above the icon

Option to show the tooltip message above the
launcher icon.

Tooltip text

The message displayed on the tooltip.

Offer search
Title text

Title of the widget that appears when Offer
search is selected as the proactive help type.

Subtitle text

Description of the widget that appears on the
widget body and appears below the title text.

Placeholder text

Placeholder text that appears in the search
box.

Offer chat
Title text

Title of the widget in the messenger.

Subtitle text

Description of the widget in the messenger.

Chat button label

Label of the button that is displayed for the
user to start the conversation.

Offer the recommendation you configured
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

967


<!-- page 968 -->
Proactive setting configuration form (continued)
Field

Description

Select the Offer the recommendation you configured option to show the knowledge
article and catalog items recommendations proactively as per the configuration in the
Recommendations section.

Note: AI Search needs to be enabled for Offer search and Offer the recommendation
you configured options.
Use Engagement Messenger embed Code to integrate proactive recommendations on a web
page
Modify the embed code of Engagement Messenger to enable recommendations and pass the
search query for recommendations based on AI Search.

Before you begin
• Embed Engagement Messenger in your web application.
• Activate an Engagement Messenger module.
• Role required: sn_csm_ec.ec_admin

Procedure
1. Navigate to All > Engagement Messenger > Modules.
2. Select the Engagement Messenger module you want to install on your website.
3. In the Edit module column, click Edit.
4. In the Configure Engagement Messenger module, select the Implement tab.
5. In a text editor, open the HTML file of the web page on your website where you integrate
Engagement Messenger.
6. In the Implement tab, copy the code from the Embed code section.
7. Paste the code you copied into the text file before the closing body tag.
8. Enable recommendations for a specific page in messenger by adding the parameter
enableRecommendations: true in the embed code.
In the website where you integrate Engagement Messenger, when the user enters a search
term in messenger, by default the website URL slug (last part of the URL) will be considered the
search query. The URL slug conditions for the search query entered in the messenger search
bar are as follows:
◦ If a single forward slash is at the end of the URL, then no search term is picked. For example,
https://example.service-now.com/.
◦ If a term is surrounded by forward slashes at the end of the URL, the enclosed text is
considered to be a search term. For example, in the URL https://example.servicenow.com/product-xyz/, product xyz is considered a search term.
◦ If a single forward slash is followed by text, that text is considered to be a search term. For
example, in the URL https://example.service-now.com/search_string
search string is considered as a search term.
The URL slug is used to deduce the search query as follows:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

968


<!-- page 969 -->
◦ All the special characters are replaced by a space. For example, in the URL https://
example.service-now.com/product-xyz, the search term is "product xyz".
◦ Any file extension is ignored. For example, in the URL https://example.servicenow/product.html, the search term is "product".
9. Enable recommendations at the module level.
a. Navigate to All > Engagement Messenger > Modules.
b. Select your Engagement Messenger module.
c. Click Edit.
d. In the Configure Engagement Messenger module, select the Behavior tab.
e. Enable the Enable recommendations toggle switch.
10. Optional: Add custom logic for passing a search query parameter to the AI Search by passing
a function callback as the value for a parameter getAISRecommendationsContext.
The following example shows the modified code to generate proactive recommendations with
the custom logic for passing a search context query.
‹script
src="https://
example.service-now.com/scripts/sn_csm_ec.js"></script>
‹script>
SN_CSM_EC.init({
moduleID:"https://instancename.service-now.com/<sys_id>",
loadFeature: SN CSM EC. loadEMFeature(),
enableRecommendations: true,
getAISRecommendationsContext: function
getSearchQuery(){
//Insert your code here to fetch the search
query string return product xyz
}
};
</script>
11. Save and publish the HTML file.

Result

Engagement Messenger shows recommendations based on the context provided by the thirdparty website.

Example:

The following example shows the modified code to generate default proactive recommendations
for the default context.
‹script
src="https://
example.service-now.com/scripts/sn_csm_ec.js"></script>
‹script>
SN_CSM_EC.init({
moduleID:"https://instancename.service-now.com/<sys_id>",
loadFeature: SN CSM EC. loadEMFeature(),
enableRecommendations: true
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

969


<!-- page 970 -->
};
</script>
Create an identity provider (IdP) for Engagement Messenger
Create an IdP for your Engagement Messenger so that you can enable customer authentication.
You can create an IdP for either the OpenID Connect (OIDC) or Security Assertion Markup
Language (SAML) authentication type.

Before you begin

Role required: admin

About this task

If you previously configured an IdP, you can ignore this task and reuse the existing IdP.

Note: If you have configured multiple IdPs on your instance and want to select a specific
IdP for your Engagement Messenger module, do the following:
• Enable Engagement Messenger on a website when third-party application cookies are
blocked
• Custom URL with Identity Provider
• If you have multiple IdPs on your instance:
◦ In case of OIDC authentication type, the generated ID token should contain the client
ID of a IdP record against which authentication is required.
◦ In case of SAML authentication type, set the particular IDP record as Auto-redirect IdP.

Note: For more information, see Setting up auto login and logout for Engagement
Messenger

.

Procedure
1. Navigate to All > Engagement Messenger > Administration > Identity Providers.
2. Select New.
3. Select either OpenID Connect or SAML.
◦ If you select OpenID Connect, follow the procedure in Create an OpenID Connect (OIDC)
configuration for Single Sign-On (SSO) .
◦ If you select SAML, follow the procedure from step 3 in Create and update identity
providers .

What to do next
• When customers sign in to your website where the Engagement Messenger module is
deployed, they must also be authenticated within the messenger. User authentication is done
by using the same IdP that authenticated the customer's login into your website.
You must verify that the customers of your website are also added in your OIDC or SAML
authentication provider for the ServiceNow instance.
• Enable cross-domain requests between Engagement Messenger and your website. For more
information, see Configure a CORS rule for Engagement Messenger.
Related topics
How to set up OIDC provider on ServiceNow instance
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

970


<!-- page 971 -->
Configure a CORS rule for Engagement Messenger
Configure a cross-origin resource sharing (CORS) rule to enable cross-domain requests between
Engagement Messenger and your website where you want to deploy the messenger.

Before you begin

Role required: admin
You must complete the following tasks:
• Configure Engagement Messenger.
• Create an identity provider (IdP) for Engagement Messenger.

About this task

Use the Engagement Messenger API and your website URL to create a CORS rule.

Procedure
1. Navigate to All > Engagement Messenger > Administration > CORS Rules.
2. Click New.
3. On the form, fill in the fields.
CORS Rule form
Field

Description

Name

Unique name for the CORS rule.

Application

Application scope for this record.

REST API

Engagement Messenger REST API that this
CORS rule applies to.
Set this field to Engagement Center API
[sn_csm_ec/engagement_center_api].

Domain

Domain that sends the request to this REST
API. Set this field value to the URL of the
website where you want to deploy the
messenger.
For example, https://www.example.com.

Max age

Number of seconds to cache the client
session. After an initial CORS request, further
requests from the same client within this time
do not require a preflight message.
If you do not specify a value, the default
value of 0 indicates that all requests require a
preflight message.

HTTP Methods

Allowed HTTP methods. Enable the GET and
POST methods.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

971


<!-- page 972 -->
Field

HTTP Headers

Description

Comma-separated list of HTTP headers to
send in the response. You can leave this field
empty.

4. Select Submit.

What to do next

Create HTTP response headers for Engagement Messenger.
Create HTTP response headers for Engagement Messenger
Configure a name-value pair for HTTP response headers for the Engagement Messenger
module. The ability to configure and pass response headers enables special handling of the
page content by a client, which is most typically a browser.

Before you begin
• Configure Engagement Messenger.
• Create an identity provider (IdP) for Engagement Messenger.
• Configure a CORS rule for Engagement Messenger.
• Role required: admin

About this task

Use the Engagement Messenger API and your website URL to create a CORS rule.

Procedure
1. Navigate to All > Engagement Messenger > Administration > HTTP Response Headers.
2. Select New.
3. On the form, fill in the fields.
HTTP Response Header form
Field

Description

Active

Option for indicating that this HTTP response
header configuration is active.

Application

Application scope for this record.

Applies to

Type of record that the HTTP response
header configuration applies to.
Select Specific Type to indicate that this
HTTP response header configuration is for
the specific type and record that you select in
the Type and Record fields.

Type

Type of record that the HTTP response
header configuration applies to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

972


<!-- page 973 -->
Field

Description

Select Service Portal to indicate that the
records are related to the Service Portal.
Record

Engagement Messenger module record that
the HTTP response header configuration
applies to.
Select a record:
a. Select the Search ( ) icon to access the
Select the document pop-up form.
b. In the Table name field, ensure that the
value is set to Service Portal.
c. In the Document field, select the Search
(

) icon.

d. From the list of Service Portal records,
select the messenger module that you
configured.
e. Select OK.
Name

Name for the name-value pair for the HTTP
response header.
Set this field value to Content-SecurityPolicy.

Value

Value for the name-value pair for the HTTP
response header.
Set this field value to frame-ancestors 'self'
<enter your website URL>.
For example, frame-ancestors 'self' https://
www.example.com.

Description

Detailed description for the HTTP response
header.

What to do next

Activate an Engagement Messenger module.
Related topics
HTTP Response Headers
Activate an Engagement Messenger module
Activate the Engagement Messenger module that you configured so that you can embed it in
your website.

Before you begin

Role required: sn_csm_ec.ec_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

973


<!-- page 974 -->
Perform the following tasks:
• Configure Engagement Messenger.
• Create an identity provider (IdP) for Engagement Messenger.
• Configure a CORS rule for Engagement Messenger.
• Create HTTP response headers for Engagement Messenger.

About this task

Unless you activate a messenger module, it would not be available for your customers to use
from within your third-party website.

Procedure
1. Navigate to All > Engagement Messenger > Modules.
2. In the Edit module column of the messenger module that you want to activate, click Edit.
The guided configuration view is displayed.
3. Select the Implement step.
4. Select Activate.
Activate Engagement Messenger module

What to do next

Embed Engagement Messenger in your web application.
Embed Engagement Messenger in your web application
Embed the source code of the messenger module that you configured in your website so that
you can enable your customers to start using Engagement Messenger in your website.

Before you begin
• Activate an Engagement Messenger module.
• Role required: sn_csm_ec.ec_admin

About this task

Copy the source code of the messenger module that you activated and paste it in the HTML file
of the website where you want to deploy the messenger.
Next, depending on the authentication type that you selected for your configured messenger
module, you may have to write code for functions to get the ID token and to start and stop the
session for a logged-in user in the messenger.

Procedure
1. Navigate to All > Engagement Messenger > Modules.
2. In the Edit module column of the messenger module that you want to install in your website,
click Edit.
The guided configuration view is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

974


<!-- page 975 -->
3. Click the Implement tab.
4. If you have done any changes to the Security settings section, click Save.
The code of the Engagement Messenger module is updated.
5. Scroll down to the Embed code section and click Copy code.
6. Open the HTML file of your website and paste the copied code before the closing body tag.
7. For a messenger module with OIDC-based or SAMl-based authentication, complete the
following configuration.
Authentication type

Action

a. Write code for the

getTokenCallBack() function.

b. Call the SN_CSM_EC.onLogin() func­
tion whenever users log in to your website.

OIDC-based

This function enables authenticated users
to log in to Engagement Messenger seam­
lessly when they log in to your website.
c. Call the SN_CSM_EC.onLogout() func­
tion whenever users log out from your web­
site.
This function enables authenticated users
to seamlessly log out from Engagement
Messenger and your website.
a. Call the SN_CSM_EC.onLogin() func­
tion whenever users log in to your website.
This function enables authenticated users
to log in to Engagement Messenger seam­
lessly when they log in to your website.

SAML-based

b. Call the SN_CSM_EC.onLogout() func­
tion whenever users log out from your web­
site.
This function enables authenticated users
to seamlessly log out from Engagement
Messenger and your website.

Note: For more information about setup for OIDC and SAML-based authentication, see
Setting up auto login and logout for Engagement Messenger [KB1560205]
Now Support Knowledge Base.

article in the

8. If you enabled the walk-up feature for unauthenticated users, uncomment the
//guestWalkupBaseUrl code line and complete the configuration by entering the base
URL of your customer support portal.
For example, if your customer support portal is https://www.example.com/support, then
update the code to guestWalkupBaseUrl = https://www.example.com/support

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

975


<!-- page 976 -->
Copy Engagement Messenger code

9. Optional: To modify the embed code to set the preferred language in which Engagement
Messenger is displayed, do one of the following.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

976


<!-- page 977 -->
Option

Description

lang: {ISO-locale code}

Enables you to load Engagement Messenger
with a fixed language.

setLang : getEMLanguage

Allows you to dynamically switch the lan­
guage in which Engagement Messenger is dis­
played. The getEMLanguage value can re­
turn any ISO-locale code which can be used
for messenger language.

The setLang : getEMLanguage function takes preference when both parameters are
available. However, if the user has set the preferred language in the [sys_user_preference]
table, Engagement Messenger will be displayed in that language.

Note: Beginning with the Zurich release, the upgraded customers can also modify the
embed code to enable language switching.
10. Optional: Open the website to which you added the Engagement Messenger code to verify
that the launcher icon is available and click the icon to verify that it launches Engagement
Messenger.
11. Optional: Modify the embed code of Engagement Messenger to integrate Proactive
Recommendations on a web page.
For more information on using Engagement Messenger to integrate Proactive
Recommendations on a web page, see Use Engagement Messenger embed Code to integrate
proactive recommendations on a web page.

What to do next

Open the website that you added the Engagement Messenger code to and verify that
the launcher icon of the messenger is available. Click the icon to launch the Engagement
Messenger.
You can also embed Engagement Messenger in your native iOS and android applications using
Now Mobile SDK:
• Embed Engagement Messenger in a native iOS app using Now Mobile SDK [KB1587276]
• Embed Engagement Messenger in a native android app using Now Mobile SDK [KB1587611]
Deep linking feature in Engagement Messenger
Set a workflow as a default launch screen in Engagement Messenger either using custom code
or a parameterized URL.
The deep linking capability enables you to customize the home page of Engagement Messenger
so that you can launch a specified feature every time the messenger is accessed. The feature
is launched through variables in a structured URL or in custom code through launch entries that
contain substitution variables.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

977


<!-- page 978 -->
Deep linking launch screens

The deep linking capability supports the launch of View Article, New Case, Case List, Search,
Case Search, Catalog Item, New Appointment, New Work Order, Default Home, Work Order,
Virtual Agent and Live Agent chat features and display in Engagement Messenger.

Note: Beginning with the Zurich release, in Virtual Agent and Live Agent chats, if a user
is engaged in an ongoing conversation and tries to contextually open a topic then the
following options are shown:
• Continue chat
• New Chat

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

978


<!-- page 979 -->
Switching chat

Launch a feature in Engagement Messenger using custom code
Use the custom code to enable the deep linking and launch a feature in Engagement Messenger
integrated with your website.

Before you begin

Configure Engagement Messenger.
Embed Engagement Messenger in your web application.
Role required: ec_admin and website administrator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

979


<!-- page 980 -->
About this task

Note:

If you’re using existing code, verify that you update the script to show v=3.1. For example:
<script
src="https://
example.service-now.com/scripts/sn_csm_ec.js?v=3.1"></scri
pt>
<script>
SN_CSM_EC.init({
moduleID:
"https://example.service-now.com/#aeff0547dd393010f87734cef
087e2ba",
loadFeature: SN_CSM_EC.loadEMFeature()
});
</script>

Procedure
1. Navigate to Engagement Messenger > Modules.
2. In the Configure Engagement Messenger Module, open the Implement tab.
3. Copy the code from the Embed code section.
4. In a text editor, open the HTML file of the web page on your website where you integrate
Engagement Messenger.
5. Paste the code that you copied before the closing body tag.
6. Define the feature context and specify the variables for the feature.
Use the following format to define a feature context:
{
feature: "<feature_name>",
openOnLoad: <true/false>,
params: {
"<param_name>": "<param_value>",
"<param_name>": "<param_value>
}
}
In the format, specify the feature variables.
feature
The feature name. For more information, see Feature context parameters
supported in Engagement Messenger .
openOnLoad
Include this option and set it to true only if you want Engagement Messenger
to open automatically. The default setting for this option is for Engagement
Messenger not to open automatically.
<param_name>": "<param_value>
Name and value of a parameter associated with the feature. For more information,
see Feature context parameters supported in Engagement Messenger.
7. Create a custom wrapper function to pass the feature context to the SN_CSM_EC.init
function of the embed code.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

980


<!-- page 981 -->
For example, the following code uses the chatFeatureContext() custom wrapper
function for the chat feature context.
function chatFeatureContext(){
return {
feature: "CHAT",
openOnLoad: false,
params: {
"topic_id": "8708db281bd5b81080df6247b04bcb79",
"language": "fr"
}
}
}
8. Replace the SN_CSM_EC.loadEMFeature() function with a custom wrapper function that
you created in step 7.
For example, in the following code, the chatFeatureContext() wrapper function is
passed as the value of the loadFeature attribute.
SN_CSM_EC.init({
moduleID: "https://example.service-now.com/#<module_id>",
loadFeature: chatFeatureContext()
});
9. Save the file.
10. Optional: Verify that the designated feature launches.
a. Open the website in which you embedded Engagement Messenger.
b. Select the launcher icon.
c. Verify that Engagement Messenger launches feature you configured in the embed code.

Result

The feature you specified in the embed code is launched by default when Engagement
Messenger is opened in the website in which it’s embedded.

Example:

The following code initiates the chat feature by default. It also shows how to trigger a Virtual
Agent topic by default when chat is loaded by passing the system identifier (sys_id) of the topic.
You can also specify a language to initiate chat in that language.
<script
src="https://
example.servicenow.com/scripts/sn_csm_ec.js?v=3.1"></script>
<script>
function chatFeatureContext(){
return {
feature: "CHAT",
openOnLoad: false,
params: {
"topic_id": "8708db281bd5b81080df6247b04bcb79",
"language": "fr"
}
}
}
SN_CSM_EC.init({
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

981


<!-- page 982 -->
moduleID:
"https://example.service-now.com/#d27c94d6db403810a2a6a0ced3961
9da",
loadFeature: chatFeatureContext()
});
</script>
function

chatFeatureContext(): The wrapper function for chat context.
feature

CHAT: The chat feature for initiating Virtual Agent or Live Agent chat.
openOnLoad

false: Disable the automatic launch of Engagement Messenger.
topic_id

8708db281bd5b81080df6247b04bcb79: The module system identifier
(sys_id).
language

fr: Sets the default chat language to French.
Launch a feature in Engagement Messenger using URL parameters
Use URL parameters in your website's URL to enable the deep linking and launch a feature in
Engagement Messenger integrated with your website.

Before you begin

Configure Engagement Messenger.
Embed Engagement Messenger in your web application.
Role required: ec_admin and website administrator

About this task

You can use URL parameters to display specific feature in Engagement Messenger. When
the URL is accessed, it opens your website and automatically loads the specified feature in
Engagement Messenger. For example, you can embed the URL in an email to share a knowledge
article from Engagement Messenger.

Note:
If you are using existing Embed code, ensure that you update the script to include v=3.1.
For example:

Procedure
1. Navigate to Engagement Messenger > Modules.
2. In the Configure Engagement Messenger Module, open the Implement tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

982


<!-- page 983 -->
3. Copy the code from the Embed code section.
4. In a text editor, open the HTML file of the web page on your website where you integrate
Engagement Messenger.
5. Paste the code you copied before the closing body tag.
6. Save the file.
7. Modify the website URL to include the feature.
https://website/page.html?feature=<FEATURE_NAME>&<PARAM_NAME1>=
<PARAM_VALUE1>&<PARAM_NAME2>=<PARAM_VALUE2>
<FEATURE_NAME>
The feature name. For information, see Feature context parameters supported in
Engagement Messenger.
<param_name1>=<param_value1>
Name and value of a parameter associated with the feature. To define multiple
parameters, use the same format. For more information, see Feature context
parameters supported in Engagement Messenger.
8. Optional: Verify that the URL launches the designated feature automatically.

Result

The feature you included in the URL is set as the default launch screen in Engagement
Messenger.

Example:

The following sample URL includes a system identifier (sys_id) for a knowledge article that will
automatically display when the website is launched.
https://mywebsite/page.html?feature=VIEW_ARTICLE
&sys_kb_id=ec7617461b01f01080df6247b04bcbaf

Configuring Omnichannel Callback for Customer Service Management
Configure various aspects of Omnichannel Callback for Customer Service Management to
enable callback feature based on the specific requirements of your organization.
Installing and configuring Omnichannel Callback for Customer Service Management enables
your customers to request a callback from various channels such a Virtual Agent, the Customer
Service Portal, and Engagement Messenger.
The configuration process consists of the configuration tasks listed in the following table.
Configuration tasks
Task

Description

Install Omnichannel Callback for Customer
Service Management

Install the Omnichannel Callback application
(sn_callback).

Configure the callback behavior for
Omnichannel Callback for Customer Service
Management

Configure the various aspects of callback such
as max retry attempts and expire time.

Publish the Virtual Agent topics for callback

Publish the callback virtual agent topics to
display the callback option to customers on
Virtual Agent clients.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

983


<!-- page 984 -->
Configuration tasks (continued)
Task

Description

Callback feature configuration form

Configure the callback feature in Engagement
Messenger.

Omnichannel Callback for Customer Service Management
Omnichannel Callback for Customer Service Management enables a callback option to be
provided for customers when there is a long wait time for a live agent.
Omnichannel Callback for Customer Service Management offers an option for customer service
agents to call customers back when the wait time for agents is long or agents are unavailable. For
more information, see Omnichannel Callback .
Install Omnichannel Callback for Customer Service Management
You can install the Omnichannel Callback for Customer Service Management application
(sn_callback) if you have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Omnichannel Callback for Customer Service Management
application
listing in the ServiceNow Store for information on dependencies, licensing or subscription
requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with the Omnichannel Callback for Customer Service
Management application:
• Plugins
• Store applications
• Scheduled jobs - Send reminder for scheduled Callback tasks

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Omnichannel Callback for Customer Service Management application (sn_callback)
using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

984


<!-- page 985 -->
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Related topics
Implement the Interaction Controls Component (ICC) for contact center voice call and callback
integration
Plugin requirements for voice and callback integrations with contact centers
Publish the Virtual Agent topics for callback
Publish the Virtual Agent topics for callback to help your customers request a callback from
agents when there’s a long wait time to reach a live agent or agents are unavailable.

Before you begin

Ensure that the Conversational appointment booking application is installed.
Role required: virtual_agent_admin or admin

About this task

Deploy the inactive topic to save it and make it available to users on Virtual Agent clients.

Procedure
1. Navigate to All > Conversational Interfaces > Virtual Agent > Designer.
2. In the Topics page, publish the following topics.
◦ Request a callback
◦ Reschedule a callback
◦ Cancel a callback
3. In the Header bar for the topic, select Publish.
If you're using NLU discovery, the Choose what to publish dialog box appears. Select the
available items to publish with the topic, such as the NLU model and language mappings, and
then click Publish.

Note: If the Publish Model option is unavailable, the model may need some work. For
example, the model may not have enough intents or may need more utterances for some
intents. Fix these issues before proceeding. Also, if a model language is unavailable, the
language-specific model has never been published. Publish it from NLU Workbench. For
more information, see Model management .
For topics, the topic state is Active and the Published state changes to just now.
4. If you published a conversation topic, verify that your keywords or NLU utterances for the topic
work as expected.
a. Return to the Topics page, and then click Test Active Topics.
b. In the conversation window, enter keywords or NLU utterances that correspond to the topic
intent to verify that the topic opens.
For the pre-built Virtual Agent topics, the bot returns a list of topics that match the entered
keyword or utterance.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

985


<!-- page 986 -->
Result

The topics are published and are available for use in calling topics.
Configure the callback behavior for Omnichannel Callback for Customer Service
Management
Configure the callback behavior of the callback, such as the maximum number of retry attempts
or the expiration time, in Omnichannel Callback for Customer Service Management.

Before you begin

Role required: admin

Procedure
1. In the navigation filter, enter sys_properties.list.
2. In the Name search field, enter sn_callback.
3. Configure any of the properties listed in the following table.
Callback properties field description
Property

Default
Description
value

sn_callback.callback_expire_time

60

Callback timeout in minutes after which
the callback task is closed.

sn_callback.callback_max_retry_attempts 5

Maximum retry attempts after which the
callback task is closed.

sn_callback.enable_scheduled_callback

Option to enable scheduled callbacks by
enabling customers to select a time slot
for callback.

true

Implement the Interaction Controls Component (ICC) for contact center voice
call and callback integration
Implement prebuilt, certified integrations with Contact Center as a Service (CCaaS) providers
®
using the ServiceNow voice reference architecture.

About this task

The Interaction Controls Component (ICC) feature enables CCaaS providers to display native
voice and callback integrations so agents can manage customer calls directly from their
configurable workspace.
For more information, see Interaction Controls Component (ICC) for voice calls and Integrating
contact centers with Interaction Controls Component (ICC) for callbacks.
The voice controls and callback controls display under the following conditions:
• When the interaction is a phone call, voice controls display. When the interaction is a phone
call that is associated with a callback task, the callback controls display.
• The Enable interaction controls field is enabled on the OpenFrame Configuration record that
allows the admin to configure the Agent Workspace to display voice interaction components.
• The agent is a member of the user group specified on the OpenFrame Configuration record. If
no user group is specified, all agents can access the CSM voice interaction record page.
• Ensure the certified third-party App Store plugin is installed. For Example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

986


<!-- page 987 -->
◦ Unified Experience from Genesys
◦ Unified Experience from Genesys - Core

Before you begin

Ensure the Interaction Controls Component (ICC) plugin (com.app_interaction_control) is
installed to use the ICC voice features for CCaaS.
Role required: admin

Procedure
1. Navigate to All > OpenFrame > Configurations.
2. Create a new configuration record for the specific CCaaS provider.
Some CCaaS providers can include OpenFrame configurations for their plugin.
3. Turn on the interaction controls for OpenFrame by selecting the Enable interaction controls
check box.
4. From the User Group column, select a group and move it to the selected column.
This is the group of users to whom the OpenFrame configuration applies.
5. Unlock the URL field.
6. In the URL field, enter a third-party URL.
CaaS providers have specific configuration requirements for their plugins. Refer to the relevant
contact center documentation for setup instructions.
7. Select Update.

What to do next

Refer to Plugin requirements for voice and callback integrations with contact centers for
dependencies and address all prerequisite requirements to access the ICC features.
Plugin requirements for voice and callback integrations with contact centers
For the Interaction Controls Component (ICC) call features to work, you must have a combination
®
of plugins that can be downloaded from the ServiceNow Store and CCaaS providers.
The CCaaS providers must integrate with the ServiceNow platform. Additionally, they must
®
submit their plugin for certification, to be made available for use from the ServiceNow Store.

Note: Verify plugin dependencies against the store listing to ensure you're using the latest
compatible versions.
The following plugins are required to deploy the call control integration with the contact center
platform:
• Interaction Controls Component (ICC) (sn_int_control)
The following plugin and app dependencies are installed as part of the ICC plugin:
Plugin dependency:
◦ Glide Conversation Server (com.glide.cs)
◦ Glide Conversation Server Custom Adapter (com.glide.cs.custom.adapter)
◦ Appointment Booking (com.snc.appointment_booking) is required for callback integrations.
◦ Openframe (com.sn_openframe)
App dependency:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

987


<!-- page 988 -->
◦ External Agent Management Util Pack
◦ Contact Center Integration Core
◦ Omnichannel Callback
◦ OpenFrame

(sn_external_agent)

(sn_ct_ctr_it_core)

(sn_omni_callback)

(sn_openframe)

• Advanced Work Assignment
The External Routing Support

plugin is required for callback integration with contact centers.

• Customer Service Management (CSM)
• Agent Workspace, as well as any workspace that works with Agent Chat, Email Interaction, or
Messages.
• Products with Contact Center Integration Core

Plugin

◦ Application Spoke Selector
◦ External Agent Management Util Pack

Note: Address the Contact Center Integration Core plugin dependencies prior to
downloading the plugin.
In addition to the preceding requirements, Install Omnichannel Callback for Customer Service
Management for callback integration with contact centers.
Set default workspace for CCaaS
Configure and set a default workspace for contact center agents to let them navigate back to a
workspace integrated with Interaction Controls Component (ICC), from any other unsupported
workspace.

Before you begin

An interaction can be opened and details displayed in any workspace within the ServiceNow
instance. However, if the workspace isn't integrated with ICC, then the global call controls
supported by the ICC integration doesn't display in the workspace, rendering the workspace as
unsupported.
Promote the Interaction Controls Component (ICC) plugin (com.app_interaction_control) is
installed to use the ICC voice features for CCaaS.
Role required: admin
Configure the default workspace via OpenFrame within your ServiceNow instance as follows.

Procedure
1. Navigate to All > OpenFrame > Configurations.
2. Create a configuration record for the specific CCaaS provider.
Some CCaaS providers can include OpenFrame configurations for their plugin.
3. Turn on the interaction controls for OpenFrame by selecting the Enable interaction controls
check box.
4. Checking the Enable interaction controls check box displays the Default Experience field.
5. Click the Search icon to search through the list of available supported workspaces and select
the workspace you want to set as default.
6. From the User Group column, select a group and move it to the selected column.
This user group refers to the group of users to whom the OpenFrame configuration applies.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

988


