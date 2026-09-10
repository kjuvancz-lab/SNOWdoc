# Zurich Customer Service Management — Automate and optimize

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1602–1643 of 2452

Sections: Automate and optimize (p1602)

---

<!-- page 1602 -->
Note: The Install base item field is automatically filled in because the work order is
created directly through the install base form.
5. Select Submit.
A work order for the install base item is created and appears in the Work Order related list on
the install base form.
All work orders that are associated with a child install base item also appear in the work orders
section of the parent install base form.

Automate and optimize
®

Enhance the efficiency and effectiveness of your ServiceNow Customer Service Management
platform with automated workflows, AI-powered chatbots, predictive analytics, and data analytics
and reporting.
Automation and optimization applications
Topic

Description

Using Virtual Agent in Customer and
Consumer Service Portals

The ServiceNow Virtual Agent platform
offers user assistance through an intelligent
messaging interface that helps you to deliver
conversational support when integrated into
your Customer and Consumer Service Portals.

Using Proactive Customer Service Operations

Monitor your customers' products and
services to identify issues proactively, inform
the affected customers, and fix issues quickly.

Task Intelligence

Guided Decisions

Use the Task Intelligence features to create
field prediction and sentiment models, review
and submit values extracted by Document
Intelligence, and review task intelligence
analytics and prediction history.
• Use Guided Decisions in playbooks to
resolve cases- As an agent, work your
way through a decision tree in a playbook
to help troubleshoot a case and get
recommendations on the next possible
steps in solving the case.
• Use Guided Decisions in recommended
actions to resolve cases- As an agent, work
your way through a recommended action
of type decision tree to help troubleshoot a
case and get recommendations on the next
possible steps in solving the case.

Recommended Actions for Customer Service

Using the Recommended Actions applicationThrough the Recommended Actions
application, use the recommended actions
of type guidance and guided decision

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1602


<!-- page 1603 -->
Automation and optimization applications (continued)
Topic

Description

tree in your workspace to resolve cases
quickly. Use the field recommendation to get
recommendations on the field values. Use
the AI search option to search the relevant
resources from various sources.
Playbooks for Customer Service Management

Using Playbooks for Customer Service
Management• Customer service agents can use playbooks
to complete the tasks and activities that are
needed to resolve specific types of cases.
• Playbooks provide step-by-step guidance
through the lifecycle of a customer service
case.
• Playbooks include multiple stages and each
stage includes one or more activities for an
agent to complete.

Using Virtual Agent in Customer and Consumer Service Portals
The ServiceNow Virtual Agent platform offers user assistance through an intelligent messaging
interface that helps you to deliver conversational support when integrated into your Customer
and Consumer Service Portals.

Integration of Virtual Agent
Virtual Agent is a conversational bot platform that uses a messaging interface to provide
user assistance. When integrated with your portal, it helps automate customer interactions
and streamline tasks on your Customer and Consumer Service Portals. It builds automated
conversations with a base system that helps your users quickly obtain information, make
decisions, and perform common work tasks with Virtual Agent.
With Virtual Agent, you can offer continuous support, improve response times, and ease the
workload on your customer service team.

Activation
Virtual Agent activates automatically when you enable it for Customer Service Management
(CSM). Once activated, by default it integrates seamlessly with your CSM and CSP portals. For
more information, see Activate Virtual Agent for Customer Service Management.
Now Assist in Virtual Agent in self-service portal
Integrate the Now Assist in Virtual Agent in Virtual Agent with Customer and Consumer Service
Portals to enable generative AI skills in your conversational experiences. It helps create a
natural-language conversational experience that can improve the success of your self-service
workflows.

Now Assist benefits in self service Portals
The key benefits of adopting Now Assist in Virtual Agent for your portals include:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1603


<!-- page 1604 -->
• Conversational responses: Now Assist in Virtual Agent uses large language models (LLMs) to
deliver natural-language responses, making interactions more human-like and improving user
satisfaction.
• Improved self-service: It helps improve productivity and efficiency by providing faster answers
and recommended actions.
• Enhanced search: Enhances search capabilities by guiding users through more refined, AIdriven searches, helping them locate the information they need with greater accuracy and
efficiency. Users can also search for public content in the Now Assist in Virtual Agent and get
the search results. The source of the search results are available as internal or external with
the links to it.
Virtual Agent with Now Assist enabled in portal

Getting started with Now Assist in Virtual Agent in Customer and Consumer
Service portals
Understand the Now Assist in Virtual Agent in Customer and Consumer Service Portals.
• To enable Now Assist in Virtual Agent in your portals, verify that the Now Assist in Virtual
Agent experience is configured by virtual_agent_admin or admin. For more information, see
Configuring assistants overview .
• In the Display experience tab, remember to select Customer Service for Customer Service
Portal or Customer Support for Consumer Service Portal from the Portals tab and select the
Chat widget.
• In the Information Sources tab, you can also control the specific information available
to the assistant. You can create or select the Copy existing configuration and select the
search profile CSM Portal Default Search Application for CSM or CSP Portal Default Search
Application for CSP.

Note: Each assistant comes with its own search configuration. For a smooth experience,
if the assistant appears on a portal or mobile app that already has AI search configured,
consider duplicating that setup to maintain consistency.
Using Now Assist in portal case form
Guide requesters through a self-service flow to find solutions to their problems using Genius
Results and reduce the number of cases created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1604


<!-- page 1605 -->
A guided flow enhances the user experience by assisting requester who are facing issues and
are about to create a case. It helps them find solutions through genius results, thereby reducing
the number of cases created and the effort required by agents to close open cases.
• As a requester, you can enter your details and receive the results as part of your case creation
process.
• As a requester, you can continue with the case creation even if the results do not load and
create a case.
• As a requester, you can see the results on the same page until you submit the form or cancel
the flow.

Note: This record producer is available for Customer Support portal (CSM).
Guided Flow for Case Creation
1. Enter Your Details:
◦ Navigate to Request Something > Support > Create case for a product (Now Assist).

Note: Ensure that AI search in portals is activated. For more info, see Enable and
configure AI Search in Service Portal
◦ A single Subject field appears. Start typing your issue, and genius results, sources, related
catalog items, and knowledge articles are displayed under related content.

Note: You can also search for public content in the portal and get the search results
from within the Now Assist genius result. The source of the search results are
available as internal or external with the links to it.
2. Review Results:
◦ If no genius results are found, related content will be shown.
◦ If no results are found, a message will appear: There’s not enough description for AI to find
the results. Try using different keywords or another sentence.
3. Take Action:
◦ If you find a solution to your query, select the Cancel button to return to the homepage.
◦ If no results are found or you’re not satisfied with the result, you can get further assistance by
selecting Ask Now Assist button, that opens a contextual chat window in the Now Assist
in Virtual Agent where you can get help.

Note:
Enable enhanced chat experience from the Now Assist in Virtual Agent guided setup
for the feature to work. For details, see Display your chat assistant on a portal, channel,
or mobile app .
◦ If no relevant results are found, select the Continue with case creation button. This will
enable the Submit button and display additional fields required to submit the case form.
◦ Click Submit to create a record case.
By following this guided flow, you can enhance your user experience, find solutions more
efficiently, and reduce the number of cases created and the effort required by agents to close
open cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1605


<!-- page 1606 -->
Update the service portal chat configuration
Configure the Now Assist in Virtual Agent chat configuration to ensure Now Assist in Virtual Agent
loads on your Customer and Consumer Service Portals when CSM chat is enabled.

Before you begin

Role required: workspace_admin

Procedure
1. Navigate to All > Service Portal > Agent Chat.
2. To configure Now Assist in Virtual Agent loading on your Customer Service Portal:
a. On the Service Portal Agent Chat Configuration page, select Now Assist in Virtual Agent CSM Chat Config in the Name column.
b. On the form, enter a value in the Order field.

Note: To display Now Assist in Virtual Agent chat configuration prominently on the

portals, set the Order value to be either lower or better compared to the old CSM chat
configuration.
c. In the script box, replace the current script with the following script.
(function($sp) {
var configObj = {portal: $sp.getValue('url_suffix')},
isVAActive =
GlidePluginManager.isActive('com.glide.cs.chatbot');
configObj.liveagent_application = 'csm';
configObj.live_agent_only = !isVAActive;
configObj.liveagent_queue =
$sp.getDisplayValue('sp_chat_queue');
var cc = new GlideRecord('customer_contact');
cc.addQuery('sys_id', gs.getUserID());
cc.query();
if (cc.next()) {
configObj.liveagent_interaction_contact =
cc.getUniqueValue();
configObj.liveagent_interaction_account =
cc.getValue('account');
}
if (gs.isLoggedIn() &&
GlidePluginManager.isActive('com.sn_csm_b2b_consumers')) {
var consumer = new GlideRecord('csm_consumer');
consumer.addQuery('user', gs.getUserID());
consumer.query();
if (consumer.next()) {
var accounts = new
sn_acct_consumer.AccountConsumerUtil().getAccountFromConsume
r(consumer.getUniqueValue());
if (accounts.length > 0) {
if (accounts.length == 1) {
configObj.liveagent_interaction_account = accounts[0];
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1606


<!-- page 1607 -->
configObj.liveAgent_interaction_consumer =
consumer.getUniqueValue();
}
}
}
return configObj;
})($sp);
d. Select Update.
3. To configure Now Assist in Virtual Agent on your Consumer Service Portal:
a. On the Service Portal Agent Chat Configuration page, select Now Assist in Virtual Agent CSP Chat Config in the Name column.
b. On the form, enter a value in the Order field.

Note: To display Now Assist in Virtual Agent chat configuration prominently on the

portals, set the Order value to be either lower or better compared to the old CSM chat
configuration.
c. In the script box, replace the current script with the following script.
(function($sp) {
var configObj = {portal: $sp.getValue('url_suffix')},
isVAActive =
GlidePluginManager.isActive('com.glide.cs.chatbot');
configObj.liveagent_application = 'csm';
configObj.live_agent_only = !isVAActive;
configObj.liveagent_queue =
$sp.getDisplayValue('sp_chat_queue');
if (gs.isLoggedIn()) {
var consumer = new GlideRecord('csm_consumer');
consumer.addQuery('user', gs.getUserID());
consumer.query();
if (consumer.next()) {
configObj.liveAgent_interaction_consumer =
consumer.getUniqueValue();
}
}
return configObj;
})($sp);
d. Select Update.

Result

Now Assist in Virtual Agent configuration takes precedence over the standard Virtual Agent chat
configuration for the portal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1607


<!-- page 1608 -->
Now Assist conversational experience in self-service portals
Learn about the Now Assist enhanced chat feature in the Self-service portals.
Now Assist enhanced chat is a conversational support experience within a dynamic window that
also includes the ability to have multiple active conversations and superior search capabilities.
You can enable enhanced chat experience from the Now Assist in Virtual Agent guided setup.
For details, see Display your chat assistant on a portal, channel, or mobile app .

Enhanced chat experience on self-service portal
Refined portal header
Dynamically displays content based on the assigned taxonomy tags.
Effortless navigation
Easily navigate to topics and their subcategories in one place, providing a seamless
navigation experience.
Multiple chats
Engage in multiple chat conversations instead of the existing single active
conversations in the Virtual Agent.
Redefined theme
The new theme is visually appealing, engaging, and user-friendly, with a focus on
enhancing productivity.
Enhanced chat with Now Assist in Portals

Search experience
When you search for information using the Now Assist enhanced chat on your self-service
portals, you receive comprehensive and detailed answers compared to the traditional AI search.
Unlike the traditional AI search page, the Now Assist enhanced chat helps you find the
information you need and combines them into a synthesized comprehensive answer. It searches
information from KB articles, external content, Virtual Agent topics, catalog items, and people
citations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1608


<!-- page 1609 -->
The search results include links to the sources of information and related actions. When you
select the citation, different information is displayed depending on the type of source.

Using Proactive Customer Service Operations
Monitor your customers' products and services to identify issues proactively, inform the affected
customers, and fix issues quickly.
There are various different roles required for Proactive Customer Service Operations based on
the tasks you perform.
Some tasks only apply if you are using Event Management integration on CSM Agent Workspace
or the ServiceNow AI Platform interface. This is noted at the top of each task.
Roles required
Role

Tasks

evt_mgmt_admin, evt_mgmt_operator

Create alerts and proactive cases from alerts.

Note: These roles only apply if you
are using the integration with Event
Management.
sn_customerservice_agent

Propose proactive cases as major case
candidates, work on, and close proactive
cases.

sn_customerservice_manager

Review and accept a proactive case as a
major case and create child cases. Associate
outages to cases or create an outage for a
case.
Track Key Performance Indicators (KPIs) to
understand how proactive the team was in
identifying and communicating issues that
impact customers. For more information,
see Proactive Customer Service - Advanced
dashboard.

sn_majorissue_mgt.major_issue_manager

Create proactive cases. Review and accept
proactive cases as major cases and create
child cases. Associate outages to cases or
create an outage for a case.

Related topics
View the install base in CSM Configurable Workspace
View install base information from the Customer Service Portal
Create a case for install base from the Customer Service homepage
View sold product information in CSM Configurable Workspace
Create a proactive case from an alert
Create a case for customer install base affected by an alert to anticipate customer issues and
address them proactively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1609


<!-- page 1610 -->
Before you begin

Role required: evt_mgmt_admin, evt_mgmt_operator

About this task

Note: This task only applies if you are using Event Management integration on CSM Agent
Workspace or the ServiceNow AI Platform interface.
A proactive case is a case created on behalf of customers, whose install base is directly affected
by an alert. You can open a proactive case manually or through automation. Customer service
agents then work on cases. From the Alert form, you can also track the install base items affected
by the alert.
If the Create Proactive Case rule is enabled, a case is automatically created when an incident
is created from an alert and the system has determined that there are external customer install
base items affected. For more information, see Activate an alert rule to automatically create a
proactive case from an alert.
ITOM Event Management calculates the services (CIs) impacted by an alert and populates the
em_impacted_ci_table with the impacted services (CIs) and alert CI on the given alert.
The Affected Install Base related list on the Alert form displays the install base items that are
linked to the impacted services (CIs).
The Refresh Affected Install Base Items button on the Alert form recalculates the impacted
services (CIs) and updates the em_impacted_ci_table and affected install base items with the
latest changes. For more details, see Alert Impact Calculation .

Procedure
1. Navigate to All > Agent Workspace > Agent Workspace Home > Lists > All Alerts.
2. Click an alert that you want to create a case for.
3. To trace the install base items affected by the alert, click Refresh Affected Install Base Items.
These items are listed in the Affected Install Base Items related list on the Alert form. The
Affected Install Base Items list is not updated automatically, so refresh the install base items
each time you open an alert.
4. Click Create Case.

Note: If you don't see the Create Case option, click ....
5. Fill out the Short Description and other fields, as required.
6. Click Submit.
A proactive case is created and the case number is added to the Case field on the Alert form.
Case priority is set based on the severity of the alert. Customer service agents can then take
action accordingly.
Case priority based on alert severity
Alert severity

Case priority

Critical

Critical

Major

High

Minor

Moderate

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1610


<!-- page 1611 -->
Alert severity

Case priority

Warning

Low

Info

Low

Manage a proactive case created from an alert
Work on a proactive case and resolve the proactive case as you would other customer service
cases.

Before you begin
Role required:

• sn_customerservice_agent
• evt_mgmt_admin and evt_mgmt_operator have read-only access to a case created from an
alert and can add work notes, as required.

About this task

Note: This task only applies if you are using Event Management integration on CSM Agent
Workspace or the ServiceNow AI Platform interface.

Review proactive cases created from alerts using Agent Workspace. Identify customers, their
corresponding install base items affected by the issue causing the alert as well as the service
health for each affected install base item. Depending on the number of customers affected, you
can propose a proactive case as a major case.

Procedure
1. Navigate to All > Agent Workspace > Agent Workspace Home > Lists > Cases.
Alternatively, accept a proactive case from your Agent Workspace inbox.
2. Click the case you want to work on.
3. You can perform the following actions from the Case form.
Case form
Action

Description

Click Refresh Install Base Health.

Update the health status of the affected
install base items to see the real-time service
status of the account’s install base items.​

Note: To see this UI action, there must
be an account assigned to the case and
at least one install base item attached to
the case or account.
Click Affected Install Base Items.

View accounts and their corresponding
install base items affected by the alert. If you
don't see this option, click more.

Click Add or Remove.

Add or remove an affected install base item.

Click Details.

View the sold product associated to the case
as well as the alert that the case was created
from.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1611


<!-- page 1612 -->
Action

Description

Click Propose Major Case.

Propose a major case when multiple
customers are affected.

Note: If you don't see this option, click
the More UI Actions icon (

).

4. Resolve and close proactive cases in the same way as other customer service management
cases.

Note: If an alert is closed, a case is not automatically closed.
Related topics
Propose a case as a major case candidate
Close a customer service case
AWA for CSM
Review and accept a proactive case as a major case
Review and accept proactive cases as major cases using the major issue management process.

Before you begin

Role required: sn_majorissue_mgt.major_issue_manager or sn_customerservice_manager

Procedure
1. Open your workspace.
2. Navigate to Major Issue Management > Candidates.
3. Optional: Click Major Case Information > Affected Customers to view the automatically
generated list of customers affected by the issue.
4. Optional: Click Create Child Cases to create a child case for each affected customer.
5. Accept or reject the proactive case as a major case.
6. Follow the major issue management process to resolve the proactive case.

Note: If the Proactive Customer Service Operations with Event Management plugin
is activated, your system administrator may have configured workflows to automate the
creation of major cases depending on the number of accounts affected by an issue. If
your system administrator has configured workflows, major cases are created in either
Accepted, Proposed, or Created state depending on the settings. If Accepted, child
cases are automatically created.
Related topics
Major issue management overview
Create a major case
Create a major case candidate
Approve or reject a major case candidate
Create child cases for a major case

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1612


<!-- page 1613 -->
Track the service health of install base items in Agent Workspace
Track the operational status of install base items belonging to an account, to better correlate
customer issues and provide faster responses.

Before you begin

Role required: sn_customerservice_agent or sn_customerservice_manager

About this task

The service health status provides you with visibility into the service health of a customer's install
base items. The service health status is based on the severity of the impacted services being
monitored at the Network Operations Center. Refresh the service health status on the Account
and Case forms to access the real-time health status of install base items.
As a customer service agent, you can view the service health status of install base items in a
case or a customer account.

Procedure
1. Open your workspace.
2. Navigate to Lists.
3. Click an account or a case.
4. To refresh the health status of install base items on both the Account and Case form, click
Refresh Install Base Health.
5. To view the health status of an install base item on the Account form, click the Install Base
Items related list.
6. To view the health status of an affected install base item on the Case form, click the Affected
Install Base Items related list.
Related topics
Service health status for install base
Associate an outage to a major case
Associate an outage with a major case to keep customers informed about any issues affecting
their install base items.

Before you begin

Role required: sn_customerservice_manager, sn_majorissue_mgt.major_issue_manager

About this task

If there are any existing outages for services (CIs) on install base items related to the case, a
message is displayed at the top of the screen. Review the outages and add them to the case to
expose the information to customers and keep them up to date on any issues that might affect
their install base items.

Procedure
1. Open your workspace.
2. Navigate to Major Issue Management > All.
3. Select the major case that you want to add outages to.
4. On the Outages related list, select Edit.
A filter displays the outages. Only those outages related to at least one of the services (CIs)
for the install base items in the case is displayed. In this case, a CI is typically a service being
used by the customer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1613


<!-- page 1614 -->
5. Add the outages that you want to associate with the case.
6. Select Save.
◦ The outage is associated with the case and the work notes are updated accordingly.
◦ Customer service agents can view the outages for a case in the Outages related list.
Create an outage from a major case
Create an outage from a major case to keep customers informed about any issues affecting their
install base items.

Before you begin

Role required: sn_customerservice_manager, sn_majorissue_mgt.major_issue_manager

About this task

If no outages exist, you can also create outages directly from a major case to inform affected
customers.

Procedure
1. Open your workspace.
2. Navigate to Major Issue Management.
3. Create a major case or select an existing major case with no outages associated with it.
4. Select Create Outage.

Note: You can only create an outage from a case if there are no outages already
associated with it and there is at least one affected install base item associated with the
case. You can’t create an outage on a child case.
5. Fill out the fields on the Outage form, as required.
6. Select Submit.
All services (CIs) associated with the install base items in the case are associated with the
outage as Affected CIs.
Track outages for install base items
View outages associated to a case to keep customers informed about any issues affecting their
install base.

Before you begin

Role required: sn_customerservice_agent

About this task

Outages can be tracked using both proactive cases and customer-reported cases.

Procedure
1. Open your workspace.
2. Click Lists.
3. Click a proactive case.
4. Click the Outages related list to view all outage information related to the case.

Note: If the Outages related list isn't displayed, click more.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1614


<!-- page 1615 -->
Use Task Intelligence for Customer Service
Use the Task Intelligence features to create field prediction and sentiment models, review and
submit values extracted by Document Intelligence, and review task intelligence analytics and
prediction history.
Use the Task Intelligence Admin Console to create models and Document Intelligence use
cases:
• Create a model to predict record fields
• Create a model to predict case sentiment
• Create a model to detect case language
• Create a Document Intelligence use case
You can also use Task Intelligence features to complete the following tasks:
• Review and submit values predicted by Document Intelligence
• View Task Intelligence Analytics
• View Task Intelligence prediction history

Related information
For more information about Task Intelligence for Customer Service, see the following topics:
• Task Intelligence for Customer Service
• Configure Task Intelligence for Customer Service
Review and submit values predicted by Document Intelligence
Agents can extract, validate, and update the key values from valid attachments in the case using
the Document Intelligence interface.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent,
sn_csm_ml_task.ti_admin

About this task

The task definition includes an extraction mode that determines how the system handles the
extracted values: straight through processing, auto-fill, or recommendations. Regardless of the
extraction mode, agents can view valid attachments in the Document Intelligence interface and
confirm or correct the values.

Procedure
1. Open a case in CSM Configurable Workspace.
2. Select Review in DocIntel to open the Document Intelligence workspace
and view the attachments and extracted values.
In this tab:

in a separate tab

◦ Attachments appear in the list of attachments on the left side of the tab.
◦ An image of the selected attachment appears in the center of the tab.
◦ Extracted fields appear in a list on the right side of the tab.
3. Select an attachment to view an image of that attachment in the center of the tab.
4. Review the extracted fields and confirm or correct the values.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1615


<!-- page 1616 -->
a. If a value for a field is correct, select in the field and press Enter to confirm.
Confirmed values have a blue check mark.
b. If a value for a field isn’t correct, select in the field, select the correct value from the dropdown list, and press Enter.
c. If a value for a field isn’t correct and the correct value doesn’t appear in the drop-down list,
select the more actions button next to the field and select Missing in this document.
5. Select Submit to add these values to the fields on the Case form.
View Task Intelligence Analytics
View the Task Intelligence for CSM Analytics dashboard to monitor the model performance over
time, track the business value, and see what predictions your agents did or didn't use.
The dashboard uses visual representations to provide you with an overview of how each model
is performing. You can see the number of predictions from each model and the overall mean time
that it takes to resolve the cases in your organization.
The following example shows the Get an overview and See how your trained model is doing
sections within the dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1616


<!-- page 1617 -->
Task Intelligence Analytics dashboard

Get an overview
The dashboard contains visual representations that provide you with the business value of the
model.
Number of predictions
The line graph shows the number of correct predictions that agents have accepted
over time for all the categorization models combined. If the sentiment and language
models are activated, the correct predictions for those models are shown as well. As
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1617


<!-- page 1618 -->
the model continues to learn, it can increase the number of predictions that agents
accept.
Mean time to resolve (MTTR)
The line graph shows the average amount of time that it takes to resolve cases
over time. As the model makes more predictions, the MTTR should decrease as the
predictions help your agents.
The Task Intelligence Analytics page includes the following data about the predicted fields and
how they impact your business:
• The number of predicted fields.
• The number of predictions that agents used.
• The number of predictions that agents changed.

See how your trained model is doing
The dashboard uses visual representations to help you monitor the utilization of predictions by
the model over time. By selecting a specific model and output field, you can view the number of
predictions that were accepted or replaced by the agent and compare them to the baseline.
Predictions agents accepted
The widget shows the correct predictions that your agents used during case
management over time. If this number is trending downward, you can look to retrain
your model.
Predictions agents replaced
The widget shows the incorrect predictions that your agents removed during case
management over time. If this number is trending upward, you can look to retrain
your model.
Predictions the model skipped
The widget shows the number of predictions that were skipped by the model based
on the model, output field, and date range selection.
Performance overview
The performance overview table shows the mean percentage values for correct,
incorrect, and skipped data for each combination of model and output field.
Track usage of individual field predictions over time
The bar chart tracks the usage of the individual field predictions over time. Each
bar in the chart shows three components, which are the predictions accepted,
the predictions replaced, and the predictions that were skipped by the model.
A red outline around each bar represents the total number of records for each
day. To compare specific components, navigate to the legends and deselect the
ones that you don't want to include so that you can have a more customized and
focused comparison based on user preferences. By default, the view displays the
number of predictions. However, you have the option to switch to the percentage
view by toggling the Show Percentage option. In the percentage view, you can also
access the information about the baseline that was replaced and accepted, which
is derived from the training data. This option enables you to gain insights into the
performance of the model with the baseline.
Track usage of model predictions over time
The bar chart monitors the usage of the model over time and is similar to the bar
chart in the “Track usage of individual field predictions over time” data. The field
selections enable users to compare predictions over time across a maximum of
three fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1618


<!-- page 1619 -->
Note:
• When you refresh the page, the configurations, model selection, fields, usage type, and
Show percentage toggle selection are retained.
• The Model and Output field options support multi-select functionality so that you can
compare the average number of training records and analyze how your agents use the
predictions of different models. When multiple models are selected, the Compare how
agents used models' predictions section enables your agents to compare the selected
models across different usage types. The chart also supports toggling between the count
and percentage. It also displays the baselines for accepted and replaced predictions
when you’re using the percentage model.

Using Task Intelligence analytics
Navigate to All > Task Intelligence for Customer Service > Monitoring to access the Task
Intelligence Analytics page.
You can view the analytics for all of your models or each individual model. To select a model, do
the following actions:
1. Select Model to access analytics for an individual model.
2. Select a model from the list of models that have been created from the Task Intelligence Admin
Console.
3. Select Apply.
To clear the selected model, select Model and then select Clear.
View Task Intelligence prediction history
View details about historical predictions in the Predictor Result [ml_predictor_results] table.
The Predictor Result table includes entries for each prediction result, including the predicted
language, predicted and actual values, and prediction confidence. You can use the data in this
table to monitor model performance.

Note: Records are created in the Predictor Result table regardless of the model prediction
behavior, including the Testing behavior that doesn’t add prediction values to the case.

Viewing prediction data
Navigate to All > Task Intelligence for Customer Service > History to view the Predictor Result
list.
Users with the following roles can access the History module:
• Task Intelligence admin [sn_csm_ml_task.ti_admin]
• Customer Service manager [sn_customerservice_manager]
Categorization feedback captures values when the status of a case changes to Closed. It
captures these values if:
• Case categorization is active.
• The predicted field value is different from the case field value.
Categorization feedback works for record categorization solutions and for solutions with
and without attachments. Email categorization solutions are trained using data from the
Email [sys_email] table. Case categorization solutions are trained using data from the Case
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1619


<!-- page 1620 -->
[sn_customerservice_case] table or from tables that extend the Case table. Interaction
categorization solutions are trained using data from the Interaction [interaction] table.
Categorization feedback is triggered by a flow.
• When email information is used for prediction, the final input values remain empty.
• When attachment information is used for prediction, the attachment sys_ids are not included
in the final input values.
Categorization feedback stores the following values in the Predictor Result table:
• Predicted Output Value Name
• Predicted Input Value Names
• Predicted Output Value
• Predicted Input Values
• Final Input Value
• Final Output Value
• Predicted Confidence (percentage)
If the values for a case have been predicted using an email categorization solution:
• The Final Input Value remains empty because it is not expected that the agent will modify the
values of the email, such as subject and body.
• The final value in the Predicted Output Value is stored in the Final Output Value once the case
is closed.
If the values for a case or interaction have been predicted using a record categorization solution:
• The values from the fields defined in Predicted Input Value Names are stored in Final Input
Value.
• The final value in the Predicted Output Value is stored in the Final Output Value once the case
is closed.

Email sentiment replies
Duplicate entries can be posted in the Predictor Result table for email sentiment replies. To help
prevent these duplicate entries, deactivate the Predict Sentiment for Cases inbound
email action. For more information, see Inbound email actions .
View prediction on field change
Agents can use Task Intelligence to predict values for configured fields before a case is created
and after a case is created.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, ti_admin

About this task

When you create a case or after a case is created, the Task Intelligence feature predicts values
for the configured fields based on the short description or description.

Note:
• If you update the case, the values for these fields are not predicted again.
• View prediction on field change is also available for interaction records.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1620


<!-- page 1621 -->
Procedure
1. Create a case.
2. Enter information in the Short description or description field and then tab to the next field.
Based on this information, the system predicts the values for configured fields without saving
the case form.

Note: If the system cannot predict values based on the short description, these fields
remain blank.
3. Optional: Change the values in the predicted fields if needed or enter values for fields where
Task Intelligence has skipped prediction.
(Optional) The system does not overwrite user-entered values for the predicted fields.
4. Select Save.
The data is saved in the record and persisted in the predictions table. A message is displayed
to the agent indicating that the fields may have been modified, prompting them to save the
revised predictions.
View similar case recommendations
The similar case recommendation feature allows customer service agents to quickly find similar
cases that can provide helpful information about a current case. This feature can also provide
recommendations about cases that may be related to major issues.
By performing a contextual search based on a case’s short description, the system generates a
list of similar records. This provides agents with a list of cases that are similar to the current case.
These similar cases may provide helpful details or resolution information for the current case.
Task Intelligence can also suggest potential major issues and major cases.
With the similar case recommendation feature, customer service agents can:
• Identify cases similar to the current case.
• Copy resolution notes from resolved cases to the current case.
• Link the current case to a similar case.
• View a list of open and resolved cases similar to the current case and submit the current case
as a major case candidate. Three similar open and resolved cases are displayed in the list of
results.
• View one or more similar major cases, that are displayed first in the list of results. Agents can
use an available action and link the current case as a child to a major case.
When using these similarity models in the workspace, the agent can open a case record, select
the Recommendations tab in the contextual side panel, and then select the Suggested actions
sub tab to see the following:
• One for propose major case and one for similar major case card (if enabled).
• Up to three similar open case cards (number of cards displayed is customer configurable).
• Up to three similar resolved case cards (number of cards displayed is customer configurable).
Order of cards displayed in Suggested actions:
• Similar major case (if there is a major case)
• Propose major case

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1621


<!-- page 1622 -->
• Similar resolved cases
• Similar open cases
Actions on cards:
• Propose major case: The current case is proposed as a major issue.
• Copy resolution notes: Copies resolution nodes from similar case to current case (does not
copy resolution code).
• Link case: The current case is linked as a child of the similar case.
Any changes made to the current case and saved will trigger a refresh of the recommendations,
checking for both new and obsolete recommendations.
Plugins: The configuration for the similar case recommendation feature is included with the
Customer Service plugin (com.sn_customerservice). The similar case recommendation feature
has a dependency on Major Issue Management – activate the Major Issue Management plugin
(com.sn_majorissue_mgt).
For more info, see Similar case user actions

Use Guided Decisions in playbooks to resolve cases
As an agent, work your way through a decision tree in a playbook to help troubleshoot a case and
get recommendations on the next possible steps in solving the case.

Before you begin

Role required: sn_customerservice_agent

About this task

A decision tree presents a series of questions that you can answer and provide inputs where
required. The decision tree evaluates your answers and provides the next set of questions or
gives you guidance on what to do next. For example, the guidance can be to attach a knowledge
article or propose a solution to a customer to help resolve an issue.
Depending on the context of the case that you're working on, decision trees appear in playbooks
in CSM Configurable Workspace or as a recommended action in CSM Configurable Workspace.
For details on using recommended actions, see Use Guided Decisions in recommended actions
to resolve cases.

Procedure
1. Open CSM Configurable Workspace.
2. Open a case that you want to work on.
3. Select Playbook.
4. Work your way through a decision tree by providing inputs and proceeding by going to the next
or previous set of questions, or dismissing the decision tree flow.
5. Optional: In the View my responses tab, select the Edit icon
your selection or entered value.

) next to the node to modify

6. Select the action button or dismiss the final guidance.
The Activity list is updated with the action taken.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1622


<!-- page 1623 -->
Use Guided Decisions in recommended actions to resolve cases
As an agent, work your way through a recommended action of type decision tree to help
troubleshoot a case and get recommendations on the next possible steps in solving the case.

Before you begin

Role required: sn_customerservice_agent, admin

About this task

A decision tree presents a series of questions in the contextual side panel that you can answer
and provide inputs where required. The decision tree evaluates your answers and provides the
next set of questions or gives you guidance on what to do next. For example, the guidance can
be to attach a knowledge article or propose a solution to a customer to help resolve an issue.
Depending on the context of the case that you’re working on, a decision tree can be displayed as
a Recommended Actions card in the contextual side panel of the CSM Configurable Workspace.

Procedure
1. Navigate to All > Workspace Experience > Workspaces > CSM Configurable Workspace.
2. Open a customer service case that you want to work on.
3. Select the Recommended Actions icon (
) in the contextual side panel.
Depending on the case context, the side panel might display Recommended Actions cards for
guidances and decision trees.
4. Review the Recommended Actions cards and determine whether you want to select a
recommended action that has a decision tree.
◦ To accept a recommendation, select the action button on the card.
◦ To remove a recommendation from the contextual side panel, select Dismiss on the card.
The recommendation card moves from the Current tab to the History tab.
5. Work your way through a decision tree by providing inputs and proceeding by going to the next
or previous set of questions, or dismissing the decision tree flow.
6. Optional: In the View my responses tab, select the Edit icon
your selection or entered value.

) next to the node to modify

7. Select the action button to apply the resolution or take the action proposed.
8. Optional: Continue reviewing the Recommended Actions cards and accept or dismiss them
as needed to resolve the issue.

Using the Recommended Actions application
Through the Recommended Actions application, use the recommended actions of type
guidance and guided decision tree in your workspace to resolve cases quickly. Use the field
recommendation to get recommendations on the field values. Use the AI search option to search
the relevant resources from various sources.

Recommended actions
Recommended actions appear as cards in the contextual side panel of your workspace.
Depending on the open record type, these cards contain information to help find the fastest
resolution path, minimizing time spent researching and gathering information from different
sources.
You can take three types of actions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1623


<!-- page 1624 -->
• Guidance: An action that can be performed or helpful information to share.
• Decision tree: A guided flow to follow that walks you through a series of questions that help
you determine the appropriate action.
• Field recommendations: Recommended values to use for the fields in the record.
Recommended field values are auto-filled or shown as messages underneath the fields for
the new records. The recommended field values are shown as messages only underneath the
fields for the existing records.
Recommended action cards in a workspace

Recommended action cards display the following information:
• Hint that briefly describes the recommendation.
• Preview that shows a short summary of the recommended action, which can include an image
and links to helpful articles.
• Options to accept or dismiss the action.
When multiple cards are displayed, they’re arranged according to the Order value set when they
were created.

Primary and secondary actions
The recommendation that you select determines what is displayed next in the contextual side
panel or subtab and how the record is updated. Some actions involve a single selection that is
performed immediately such as Acknowledge, Attach and add link in comment. Other actions
might have secondary actions that you can enable after selecting the primary action in the card.
The following table explains a few primary and secondary actions.
Recommended Actions
Primary action

Secondary action

Guidance name

Select the View and
attach article to
open the knowledge
article in the side
panel for review.

Select secondary actions,
such as Dismiss to cancel the
recommendation or Attach article
to attach it to the case or select an
option from the More actions icon

Review and attach article

(

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1624


<!-- page 1625 -->
Recommended Actions (continued)
Primary action

Secondary action

Guidance name

Select back to go back to the
recommended cards list.
Select Attach
and add link
in comment
to compose a
comment and Post
comments.

Select secondary actions from the

Attach and share article

More actions menu (

Note: The primary and
secondary actions are
configurable.

Recommended Actions process
Recommended Actions
Item

Single-click action

Description

• The guidance moves to the in-progress or completed state.
• A message indicates that the action was performed or
completed. The system updates the record accordingly.
• The selected recommendation card moves from the
Recommended actions or Search tab to Action history.
The card displays the action performed for the
recommendation and any outputs, such as a credit report
and credit score generated for the customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1625


<!-- page 1626 -->
Recommended Actions (continued)
Item

Contextual side panel or subtab
action

Description

• When the action button is selected, the guidance doesn't
move to the in-progress state. Other users can still see and
act on this guidance.
• When the action button is selected in the detail
experience, the guidance moves to in-progress or
completed state.
• A message indicates that the action was performed or
completed. The system updates the record accordingly.
• The selected recommendation card moves from the
Recommended actions or Search tab to Action history.

Note: For the guided decision trees, when the preview
button is selected, the guidance opens in the side panel
and moves to the in-progress state.
Error handling

If an action ends up in the error state, the following occurs:
• An error notification is shown. The system updates the
record accordingly.
• The card displays the error state for the recommendation.
• When dismissed, the card moves to action history.

Field recommendations
Field recommendations are messages that display either under fields on a form or auto-fill a
recommended value within the field. For example, a field recommendation can recommend an
assignment group based on the text in a case's short description.
You can read the description of the recommendation and use the recommended value in the
fields.

AI search
AI search enables you to search for the relevant resources to resolve cases or customer issues.
Depending on the AI search configuration, the AI search tab displays search results, genius
result answers, or both. AI search results appear in the form of guidances that you can act on.
Genius result answers are the most relevant answers or the top results for the search query
along with the action that you can take directly from the card.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1626


<!-- page 1627 -->
AI search cards in a workspace

Elements on the AI search cards
Element

Description

Search count

Displays counts of the total number of
matching search results. The search filters
show the number of matching results for each
search source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1627


<!-- page 1628 -->
Elements on the AI search cards (continued)
Element

Description

Note: The Search results that are
displayed and the total search count
might vary due to security permissions
or if the search result has already been
executed. The executed guidances are
moved to Action history and reflect in
the total search count but the executed
guidances won't show up in the search
results.
Search bar

Accepts the search query that produces the
search results. You can modify this search
query and search again to view different
results.

Search filters

Displays filter options for refining search
results by search source.

Full view search

Displays the search results in a new subtab
with an expanded view.

Sort search results

Sorts the search results based on the selected
option.

Search result cards

Displays the search icon, search source, title,
summary field values, and text snippet for
each search result, with search query terms
highlighted in title and text snippets. You can
select a result to view its source record in full
or select the action to act on the guidance.

Genius result cards

Displays the genius result icon, title, summary
of the answer, and an action to take on the
genius result card.

Note: Genius result cards do not always
show a summary of the answer.
Show more

Displays more search results.

Use Recommended Actions to resolve cases
As an agent, you can use Recommended Actions to help address customer issues and resolve
cases quickly.

Before you begin

Role required: sn_nb_action.next_best_action_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1628


<!-- page 1629 -->
Procedure
1. Navigate to All > Workspace Experience > Workspaces > CSM Configurable Workspace.
2. Open a customer service record that you want to work on.
3. Select the Recommended Actions icon (

) in the contextual side panel.

4. Select the Recommended Actions tab.
Depending on the record context, cards for guidances, decision trees, or both are displayed.
5. Review the Recommended Actions cards and do one of the following:
a. To accept a recommendation, select the action button on the card.
The result depends on the type of recommendation:
Recommended action results
Selected recommendation Description

Result

Decision tree

A guided flow presents a series
After your inputs, the system
of questions in the contextual
provides a guidance that you
side panel that you can answer to can select.
get to the appropriate guidance.

Guidance

A recommendation for handling
the case, for example:

The system performs the
action. For example:

▪ View and attach a knowledge
article

▪ Knowledge article
guidance: The article
opens in the Current tab
of the contextual side
panel or in a subtab for
review. You can then
choose a secondary
action for handling the
case.

▪ Attach and add link in
comment
▪ Read article
▪ Attach and add link in email
▪ Add link in work note
▪ Copy link

▪ External request guidance:
A subtab opens in the
▪ Submit an external request for
record to enter more
an item, such as a credit report
information needed for the
or loan application.
request, such as a loan
▪ Create a work order to handle
application.
the case.
b. To remove a recommendation from the contextual side panel, select Dismiss on the card.
The recommendation card moves from the Recommended Actions tab to the History tab.
6. Continue reviewing the Recommended Actions cards and accept or dismiss them as needed
to resolve the issue.
Use Recommended Actions to attach knowledge articles to chat
As an agent, use chat in Recommended Actions to resolve issues of the customers by attaching
knowledge articles.

Before you begin

Role required: sn_nb_action.next_best_action_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1629


<!-- page 1630 -->
Procedure
1. Navigate to All > Workspace Experience > Workspaces > CSM Configurable Workspace >
Inbox.
2. Change the status from Offline to Available to see all the active chats.
3. Select Accept to start a chat conversation with a customer.
The active customer chat session and corresponding chat details are displayed in a new
subtab.
4. Select the Recommended Actions icon (
) in the contextual side panel.
Based on the issue, the Share KB in chat interactions guidance cards are displayed.
5. Review the Recommended Actions cards.
6. Select Send in chat from the side panel to send the respective knowledge article to the
customer.
The Send in chat, part of Share KB in chat interactions guidance, is disabled for the inactive or
concluded

chats.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1630


<!-- page 1631 -->
The knowledge article number and its' link is sent to the customer in the public chat, by default.
Additionally, the used recommended card is moved to the history.
7. Following are the other secondary actions.
Secondary Actions
Actions

Description

Send in private chat

Select this action if the customer is
restricted to the article and to share the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1631


<!-- page 1632 -->
Actions

Description

selected article privately to an internal

agent.
Copy Link

Select this action to copy the link of the
selected article.

Read article

Select this action to read the article and to
select a secondary action. Here, you can
also Read article in full view,Mark article
as helpful, Flag article, Send in private chat
and, Copy link.

8. Continue reviewing the Recommended Actions cards and accept them as required, to resolve
the issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1632


<!-- page 1633 -->
Related topics
Share KB in chat interactions guidance
Use AI search in Recommended Actions to resolve cases
As an agent, use AI search in Recommended Actions to help address customer issues and
resolve cases quickly.

Before you begin

Role required: sn_nb_action.next_best_action_user

Procedure
1. Navigate to All > Workspace Experience > Workspaces > CSM Configurable Workspace.
2. Open the customer service record.
3. Select the Recommended Actions icon (

) in the Contextual Side Panel.

4. Select the Search tab.
5. In the Search bar field, enter your search query.
6. Select the Search icon ( ) or press Enter.
The AI search results or genius results or both are displayed as cards.
The relevancy score displays on the search result recommendation cards in the Search tab for
following guidances provided with the base system. The relevancy score indicates how well a
search result matches the agent’s query.
◦ Default guidance for search results
◦ Attach and share article
◦ Share KB in chat interactions
◦ All no-code guidances (Link incident to current case, Link problem to current case, and Link
change request to current case).

Note: The relevancy score displays only when the Show relevancy score for results
check box is enabled in the Context form. For more information, see Create a context in
Recommended Actions.
7. Optional: Select the Filters button, select a search source to filter the results and then select
Apply.
(Optional) The number of search sources selected appear on the Filter button once you apply
the filters. The following table shows the actions that you can perform on the search results in
the Filters section in the Search tab.

Note: When top N results are enabled, the Filters button and the Sort icon does not
appear. For more information, see Create a context in Recommended Actions.
Actions in the Filters section in the Search tab
Action

Description

Filter search results corresponding to
multiple sources

The list of search sources of all the search
results appear in the Source section in the
Filters module. You can filter the search
results by selecting multiple sources at the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1633


<!-- page 1634 -->
Action

Description

same time. The source type appears on the
search results.
(Optional) When one or more sources are
selected, all the facets corresponding to all
these selected sources appear enabling you
to select field values to refine your search
results further. For more information on facet
filters, see the following row.
Filter search results at facet-level

(Optional) The dynamic facet filter options
enable you to refine the search results by
field value. The facets that appear depends
on the sources you select.
To expand or collapse a facet, select the
+ (plus) or - (minus) symbol by its name.
When a field value under a facet of a source
is selected, the remaining sources are
deselected automatically and their respective
facets also disappear. As a result, you’ll
be able to refine search results at facetlevel for one source type only. The field
values selected appear under the Any
of the following selected section and its
corresponding source appears under the All
of the following selected section.

Sort search results

The following options are available by default:
◦ Most relevant: The most relevant records
are displayed on the top. This option is
selected by default.
◦ Updated (oldest): The least recently
updated records appear on the top.
◦ Updated (newest): The recently updated
records appear on the top.

Remove the filters applied

Removes all the applied filters, when you
select the Clear all button.

8. Review the search result or genius result cards and select the applicable result by selecting
the action button to address the customer issue.
The result card moves from the Search tab to Action history.
9. Optional: Select the full view search icon to get a detailed view of the search results in the
Search page.

Note: When top N results are enabled, the Filters button and the Sort icon does not
appear on the Search page. For more information, see Create a context in Recommended
Actions.
The following table shows the actions that you can perform on the search results on the
Search page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1634


<!-- page 1635 -->
Filters on the Search page
Action

Description

Filter search results corresponding to
multiple sources

The list of search sources of all the search
results appear in the Source section in the
Filters module. You can filter the search
results by selecting multiple sources at the
same time. The source type appears on the
search results.
(Optional) When one or more sources are
selected, all the facets corresponding to all
these selected sources appear enabling you
to select field values to refine your search
results further. For more information on facet
filters, see the following row.

Filter search results at facet-level

(Optional) The dynamic facet filter options
enable you to refine the search results by
field value. The facets that appear depends
on the sources you select.
To expand or collapse a facet, select the
+ (plus) or - (minus) symbol by its name.
When a field value under a facet of a source
is selected, the remaining sources are
deselected automatically and their respective
facets also disappear. As a result, you’ll
be able to refine search results at facetlevel for one source type only. The field
values selected appear under the Any
of the following selected section and its
corresponding source appears under the All
of the following selected section.

Sort search results

The following options are available by default:
◦ Most relevant: The most relevant records
are displayed on the top. This option is
selected by default.
◦ Updated (oldest): The least recently
updated records appear on the top.
◦ Updated (newest): The recently updated
records appear on the top.

Remove the filters applied

Removes all the applied filters, when you
select the Clear all button.

Hide the Filters section

Hides the filters section when you select the
Hide filters button.

Display the Filters section

Displays the filters section when you select
the Show filters button.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1635


<!-- page 1636 -->
Using Playbooks for Customer Service Management
Customer service agents can use playbooks to complete the tasks and activities that are needed
to resolve specific types of cases.
A playbook provides step-by-step guidance through the lifecycle of a customer service case.
A playbook includes multiple stages and each stage includes one or more activities for an agent
to complete. When using a playbook, agents can:
• View the playbook stages and activities.
• Select an activity and perform the work necessary to complete that activity.
• Mark an activity as complete and move to the next activity or stage.
• Complete the stages and activities necessary to resolve the case.
Several features are available to agents when using a playbook, depending on the playbook
configuration.
Playbooks for CSM tasks
Create a record using a playbook

If a playbook is configured to use the record
generator feature, customer service agents
can create a record using a playbook activity.

Filter playbook activities

Filter the activities in playbook stages by the
selected user or activity state.

Using the activity stream in the contextual side Customer service agents can access the
panel
activity stream in the contextual side panel
to communicate with requesters and make
internal notes about the work done on a
record.
Viewing dynamic related records in the
contextual side panel

Customer service agents can view dynamic
related records that dynamically change
based on the context of the current record or
playbook activity.

Viewing ribbon information in the contextual
side panel

Customer service agents can view ribbon
information in the contextual side panel,
including the case overview and timeline,
Customer 360, and SLAs.

Add an optional activity

Add optional activities to different stages in a
playbook as needed. For example, a customer
may want to schedule an appointment to visit
a location.

Summarize a case

Use the Now Assist for CSM case
summarization skill to summarize the case
details and display this information on the
case record.

Related topics
Playbooks in Customer Service Management
Configure Playbooks for Customer Service Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1636


<!-- page 1637 -->
Create a record using a playbook
Create a record using a playbook activity instead of a record form.

Before you begin

Role required: sn_customerservice_agent

About this task

If a playbook is configured to use the record generator feature, customer service agents can
create a record using a playbook activity. Creating a record from a list or form, or from an activity
in another playbook, opens the playbook and initiates the first activity. This activity guides an
agent through the record creation process.
With additional configuration, you can also create a case from any of the following records that
opens a playbook and initiates the first activity:
• Interaction
• Case
• Account
• Consumer
To create cases in this way, the following configuration is required:
• Enable the Create Case button from the Customer Service Case Types application for each of
these records. This enables agents to create a specific type of case.
See Configure customer service case types for more information about using the Customer
Service guided setup and the Case Types category to configure case type UI actions.
• Configure the playbook to use the playbook record generator.
For more information about configuring this feature, see Playbook record generator

.

Procedure
1. Navigate to a list or form in CSM Configurable Workspace.
For example, navigate to the All Onboarding Cases list.
2. Select New.
If you selected New from the All Onboarding Cases list, the Onboarding playbook opens and
initiates the first activity for collecting customer information.
3. Fill in the fields on the first activity card.
4. Select Continue.
The system uses the customer information to create a case. The case number is added to the
tab and the first activity in the first playbook stage is marked as complete. The second activity
is highlighted as the current activity.
5. Collect additional customer information, if needed, and select Save.
6. Continue using the playbook stages and activities to resolve the customer's issue and
complete the case.
Filter playbook activities
Filter the activities in the playbook stages by the selected user or activity state.

Before you begin

Role required: sn_customerservice_agent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1637


<!-- page 1638 -->
About this task

When an agent filters the activities in playbook stages:
• The stages containing activities that match the filter conditions are automatically expanded.
• The activities that match the filter conditions are displayed within the expanded stages.
If the current activity is included in the filtered results, it remains highlighted. If it isn't included,
the first activity in the filtered results is highlighted.

Procedure
1. Open a case record that has an associated Playbook and select the Playbook tab.
2. Select the filter icon (

) at the top of the playbook lifecycle to open the context menu.

3. Select one or more of the following filter choices:
◦ A user in the Assigned to section.
◦ An activity state in the State section.
4. Click outside the context menu to close the menu and apply the filter.
5. To clear the playbook activity filter, click the filter icon and clear the current selections in the
context menu.
Related topics
Using the activity stream in the contextual side panel
Viewing dynamic related records in the contextual side panel
Viewing ribbon information in the contextual side panel
Add an optional activity
Summarize a case
Create a record using a playbook
Using the activity stream in the contextual side panel
Customer service agents can access the activity stream in the contextual side panel in CSM
Configurable Workspace.
The activity stream enables agents to communicate with requesters and make internal notes
about the work done on a record. The activity stream updates when the current activity in the
playbook is updated.
Click the Activity stream icon (

) in the contextual side panel to access the activity stream.

Agents can perform the following tasks in the activity stream.
What agents can do in the activity stream
Task

View posts for the case or case task

Description

The current activity in the playbook work area
determines the information that is displayed in
the activity stream.
Scroll through the posts in the Activity section
to view case or task information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1638


<!-- page 1639 -->
What agents can do in the activity stream (continued)
Task

Description

Click Case or Task at the top of the activity
stream to switch views.
Add work notes or comments

In the Compose section:
1. Select the type of activity: Work notes or
Comments.
2. Add the information to the text field.
3. Click Post Work Notes or Post Comments.
The post is added to the Activity section.

Filter posts
Click the filter icon ( ) at the top of the
Activity section to display the filter selections:
• Post types: Select the types of posts to
view, such as work notes or attachments.
• Field changes: Select specific fields to view
information in posts for only those fields.
• Flagged: Enable this button to view posts
that have been flagged as important.
• Filter sets
Sort posts

Click the Sort icon ( ) to sort posts by
newest to oldest or oldest to newest.

Expand and collapse posts

Click the More options icon (
and collapse posts.

) to expand

• Expand all posts: Expands posts to view
additional details.
• Collapse all posts: Returns posts to their
previous state.
Compose emails

Send emails from the Activity stream without
leaving the case view.
In the Compose section:
1. Select the Email tab.
An email draft opens where you can send an
email.
2. Compose your email and click Send Email.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1639


<!-- page 1640 -->
Related topics
Filter playbook activities
Viewing dynamic related records in the contextual side panel
Viewing ribbon information in the contextual side panel
Add an optional activity
Summarize a case
Create a record using a playbook
Viewing dynamic related records in the contextual side panel
Customer service agents can view dynamic related records in the contextual side panel in CSM
Configurable Workspace. This feature displays related records that dynamically change based
on the context of the current record or playbook activity.
Agents can view, search, and sort the records in the Related Records tab in the contextual side
panel. These records appear in the Related Records tab as read-only cards.
The Related Records tab displays related records that dynamically change based on the context
of the current record or playbook activity. The records that are displayed in the Related Records
tab depend on the following settings:
• The related record contexts and definitions that have been configured for a record or playbook
activity.
• The agent's access permissions to data.
Depending on the related record configuration for the source record or playbook activity, agents
can see the following types of related records:
• SLAs
• Emails
• Escalations for the case or customer (account and contact or consumer).
• Blocked By
• Sold Products
• Install Base Items
• Active Contracts
• Active Entitlements
• Special Handling Notes
• Tasks
What agents can do in Related Records
Task

View related records in the
contextual side panel

Steps

Select the Related Records tab (
Records list.

) to view the Related

Related records appear in the list in a card format. The
initial set of records displayed in the list is determined
by the record type selected. The displayed records can
be changed using the filter located at the top of the list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1640


<!-- page 1641 -->
What agents can do in Related Records (continued)
Task

Select the type of related record to
view

Steps

Use the filter at the top of the Related Records list to
select the type of related records to view. Agents can
also use the filter to see the current selection.
1. Click the Filter icon (

).

2. Select a record type from the drop-down menu.
The drop-down menu includes the related lists that have
been configured for the parent record.
Search the related records list

Use the search field at the top of the Related Records
list to perform a text search. Records that match the
search text are highlighted.
1. Enter the search text in the search field at the top of
the Related Records list.
2. Select the search icon.
If the search field is grayed out, search is not available
for the selected type of related records.

Open a related record in a subtab

Open the related record list in a list
view in a subtab

Create a new record for the selected
related list

Select a card in the Related Records list to open the
record in a subtab under the parent record. In the
subtab, the agent can view the record details and
perform available actions.
Select the list view icon (
) to display the related
records in a list view in a subtab under the parent
record.
Create a new record for the record type currently
selected in the Related Records list. This action opens a
new record form in a subtab under the parent record.
1. Select the Create record icon (
Related Records list.

) at the top of the

2. Fill in the fields on the record form and select Save.
Related topics
Filter playbook activities
Using the activity stream in the contextual side panel
Viewing ribbon information in the contextual side panel
Add an optional activity
Summarize a case
Create a record using a playbook

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1641


<!-- page 1642 -->
Viewing ribbon information in the contextual side panel
Customer service agents can view ribbon information in the contextual side panel in CSM
Configurable Workspace.
Click the Record information icon (

) in the contextual side panel to view ribbon information.

Agents can see the following information:
• Case overview: Displays an overview of the case details, including the case priority and state.
• Customer 360: Displays customer information such as the contact or consumer name, email
address, and phone numbers.
• Timeline: Displays a chronological summary of case activities, including case state changes
and interactions between the agent and the customer. It also shows how much time that the
agent and customer spent on the case.
• SLAs: Displays active SLAs for the case, including time remaining, the SLA state, and any
breaches.
Related topics
Filter playbook activities
Using the activity stream in the contextual side panel
Viewing dynamic related records in the contextual side panel
Add an optional activity
Summarize a case
Create a record using a playbook
Add an optional activity
Add optional activities to different stages in a playbook. Although customer processes follow a
certain structure, optional tasks may be necessary in some instances. For example, a customer
may want to schedule an appointment to visit a location.

Before you begin

This feature must be configured by an administrator. If optional activities aren’t configured for
a playbook, the Add Activity menu item isn’t available. For more information, see Configure
playbook stage and activity visibility.
Role required: agent

About this task

You can add some optional activities to any stage while you can add others only to a single
stage. You can't insert an optional activity as the first activity in a stage or between two
completed activities. An approval request optional activity is supported only for a business-tobusiness (B2B) use case.
An agent or a fulfiller can insert an approval request optional activity during a playbook run
in process-based page variants for complaint case type (in the triage and research stage) or
onboarding case type (in the due diligence stage).

Procedure
1. Open a playbook in CSM Configurable Workspace.
2. Find a stage by selecting the More actions menu.
3. Select Add Activity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1642


<!-- page 1643 -->
Add Activity isn’t displayed if no optional activities are available in this stage.
4. In the location that you want to add the activity to the playbook, select + Add activity here.
In the modal that opens, you can see the placeholders where you can insert an activity.
5. Select the activity that you want to add to the playbook.
6. Select Done.
Summarize a case
Enable your agents to summarize the case details and to display this information on the case
record by using the Now Assist for CSM case summarization skill.

Overview
The case summarization skill helps agents to come up to speed quickly on customer service
cases. With this skill, agents can:
• Quickly generate the summaries of the customer service cases to understand the case
context.
• Provide a summary of the actions taken and the resolution details.

Generating a case summary
Agents can use the case summarization skill to generate a case summary that includes
information from the following case record fields:
• Short description
• Description
• Priority
• State
The summary also includes information from the case activity stream. Agents generate a case
summary by using the Case summary by Now Assist component on the case record in CSM
Configurable Workspace.

Note: The case summary component appears below the playbook activity picker in the
side panel in the process-based pages and it appears above the activity stream in the CSM
default record page.

Case summary by Now Assist component
In CSM Configurable Workspace, agents use the Case summary by Now Assist component to
generate a summary. The case summary component is collapsed by default. When an agent
generates a case summary by selecting Summarize, the component expands to display the
summary information, including a description of the issue, the actions taken, and the next
steps. For longer summaries, select View more and use the scroll bar to view the content. After
generating a summary, the agent can:
• Review the summary information and edit as needed.
• Provide feedback on the generated summary.
• Add the summary information to the case work notes.
• Copy the summary information to the clipboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1643


