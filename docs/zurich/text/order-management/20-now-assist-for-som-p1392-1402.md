# Zurich Sales and Order Management — Now Assist for SOM / Help nurture new leads / Now Assist for Order Management

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 1392–1402 of 1408

Sections: Now Assist for SOM (p1392); Explore (p1393); Configure (p1393); Use agentic workflows (p1394); Help nurture new leads (p1395); Now Assist for Order Management (p1398); Explore (p1399); Configure (p1400); Customize an order (p1400)

---

<!-- page 1392 -->
Now Assist for Sales and Order Management
(SOM)
®

Use the ServiceNow Now Assist for Sales and Order Management (SOM) application platform
AI capabilities to deliver AI-powered insights and automation to drive faster, smarter sales and
order processes.

Important:
• Some Now Assist products/features are currently unavailable for customers in the
FedRAMP, NSC DOD IL5, or Australia IRAP-Protected datacenters, self-hosted customers,
or in other restricted environments. For more information, see the KB0743854
article
in the Now Support Knowledge Base. Be sure to check for availability updates in future
releases.
• Some Now Assist products/features are currently available only for customers in some
regions. Be sure to check for availability updates in future releases.

Get started

Explore

Configure

Use

Learn more about
Now Assist for SOM

Configure the Now
Assist for SOM
application to get started

Use the Now Assist
for SOM AI agents
to complete tasks
autonomously

Troubleshoot and get help
• ServiceNow Community on AI and Intelligence
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support.
AI limitations
This application uses artificial intelligence (AI) and machine learning, which are rapidly evolving fields of study that generate predictions based on patterns
in data. As a result, this application may not always produce accurate, complete, or appropriate information. Furthermore, there is no guarantee that this
application has been fully trained or tested for your use case. To mitigate these issues, it is your responsibility to test and evaluate your use of this application for
accuracy, harm, and appropriateness for your use case, employ human oversight of output, and refrain from relying solely on AI-generated outputs for decisionmaking purposes. This is especially important if you choose to deploy this application in areas with consequential impacts such as healthcare, finance, legal,
employment, security, or infrastructure. You agree to abide by ServiceNow’s AI Acceptable Use Policy

, which may be updated by ServiceNow.

Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1392


<!-- page 1393 -->
Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to develop and improve ServiceNow technologies including ServiceNow
models and AI products. Customers can opt out of future data collection at any time, as described in the Now Assist Opt-Out page

.

Exploring Now Assist for SOM
With the Now Assist for Sales and Order Management (SOM) application, sales agents can
manage the lifecycle of leads by automating outreach, follow-up communications, demo
bookings, and handling lead disinterest or opt-outs. It can operate independently or under
human supervision, thereby streamlining engagement and demo scheduling.

Now Assist for Sales and Order Management (SOM) overview
Sales agents use the Now Assist for Sales and Order Management (SOM) AI agent collection to
complete these tasks autonomously:
1. Follow-up/Nudge Emails: Automated follow-ups at defined intervals if leads do not respond,
with escalation to sales agents for disqualification.
2. Demo Booking/Rebooking/Cancellation: Reviews lead email replies to book, reschedule, or
cancel demos, checking sales agent calendars and sending confirmations.
3. Lead Disinterest/Opt-Outs: Identifies disinterest or opt-out requests from emails, updating lead
status and ensuring compliance (for example, unsubscribe links).

Now Assist for Sales and Order Management (SOM) users
User

Description

Sales Manager/Admin

Configure the AI agents.

Sales Agent

Access to Now Assist Panel.

Now Assist for Sales and Order Management (SOM) benefits
• Accelerates sales and order processing.
• Improves accuracy and reduces operational risk.
• Enhances user productivity with intuitive AI support.

What to explore next
To learn more about configuring and using Now Assist for Sales and Order Management (SOM),
see:
• Configure Now Assist for Sales and Order Management (SOM)
• Use agentic workflows in Now Assist for Sales and Order Management (SOM)

Configure Now Assist for Sales and Order Management
(SOM)
If you have the admin role, you can configure the Now Assist for Sales and Order Management
(SOM) application so that agents can use the generative AI capabilities in the CSM Configurable
Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1393


<!-- page 1394 -->
Before you begin

Use the Now Assist Admin console to configure Now Assist for Sales and Order Management
(SOM). This console contains everything that you need to install the plugins and configure the
generative AI skills. For additional information, see Overview tab in Now Assist Admin .
Role required: admin

Procedure
1. Log in to the ServiceNow instance.
2. Install the Now Assist for Sales and Order Management (SOM) plugin (sn_som_gen_ai).
For information about the installation process, see Install Now Assist plugins .

Use agentic workflows in Now Assist for Sales and Order
Management (SOM)
Use the Now Assist for Sales and Order Management (SOM) AI agent collection to complete
tasks autonomously.
The Help nurture new leads agentic workflow works with a team of AI agents to assist you with
managing the life cycle of leads, either independently or under supervision.

Prerequisites to use an agentic workflow
The prerequisites to use an agentic workflow are as follows:
• Make sure that the Now Assist panel is turned on.
• Set up the work schedule for sales agents:
◦ Navigate to All > Agent schedule > Work schedule.
◦ Create a work schedule for sales agents.
• Duplicate the agentic workflow and activate the triggers.
Available agentic workflow for AI agent collection
Agentic workflow name

Help nurture new leads

Description

Available AI agents

• Outlines the steps required
to engage the lead with the
sales agent.

• Lead outreach AI agent

• Sends initial outreach and
follow-up emails.
• Retrieves emails, classifies
the intent, and routes it to
the right sales agent to take
action.

• Inbound email AI agent
• Appointment management
AI agent
• Lead disinterest AI agent

• Schedules, reschedules, or
deletes the appointments

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1394


<!-- page 1395 -->
Available agentic workflow for AI agent collection (continued)
Agentic workflow name

Description

Available AI agents

based on sales agent
availability.
• Manages the leads who
want to opt out or are
uninterested.

Important: By default, all agent workflow and AI agent records are read-only.
To run the AI agents autonomously, you must first duplicate the agentic workflow
then proceed with the following steps:

, and

• Activate the agentic workflow.
• Activate all agents within the agentic workflow.
• Activate the trigger to invoke the agentic workflow automatically. The triggers for each
agentic workflow must be unique. If you prefer to invoke it manually, activating the trigger
isn’t necessary.
Looking for an AI agent?
• There might be AI agents installed with the Now Assist application that are not used in agentic
workflows. To learn how to see all agents that are available on your instance, see Find AI
agents .
• To find agents that might not be installed on your instance, visit the AI Agent Marketplace
the ServiceNow Store.

on

Help nurture new leads agentic workflow
Use the Help nurture new leads agentic workflow to process the entire lead record process.

Help nurture new leads agentic workflow overview
You can use the Help nurture new leads agentic workflow to do the following:
• Proactively engage with initial leads
• Book an appointment or demo to get the lead closer to qualification
• Identify opt-outs and disinterest for lead disqualification
To modify the Help nurture new leads agentic workflow duplicate it , and adjust the settings
according to your requirements. You can activate the agentic workflow template by making
triggers active and setting the display settings to include the Now Assist panel.

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Help nurture new leads use cases
To access the use case:
1. Navigate to All > AI Agent Studio > Create and manage > Use cases.
2. Select Help nurture new leads.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1395


<!-- page 1396 -->
Help nurture new leads AI agents
The following table lists the Help nurture new leads AI agents.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.
AI agents and their roles in the Help nurture new leads use case
AI agent

AI agent role

Lead outreach AI agent

Initiates the outreach and follow-up flow. This
flow supports sales agents by sending the
initial outreach and follow-up emails.

Lead disinterest AI agent

Handles disqualification of the lead and optout requests.

Inbound email AI agent

Initiates the inbound response handler flow.
This flow supports sales agents by retrieving
and analyzing the latest email records. Based
on its analysis, it recommends necessary
actions required to move forward with the lead.

Appointment management AI agent

Assists in managing appointments for lead
records. The agent is capable of creating,
updating, or canceling appointments based
on the availability of the lead owner.

Roles required to create an agentic workflow
The roles required to activate and access the workflow are as follows.
Roles and responsibilities
Roles

Responsibilities

Sales AI admin

• Configure the agentic workflow.
• Change AI settings.
• Create and manage new workflows and AI
agents.

Sales AI user

Interact with AI using the Now Assist panel.

Activating the agentic workflow
Activating duplicated workflow
1. Navigate to the Help nurture new leads agentic workflow and duplicate it. The workflow also
duplicates any triggers associated with that agentic workflow.
2. Navigate to the duplicated workflow and activate the trigger (the lead record is created or
updated).

Note: You can activate the triggers associated with the workflow.
Activating external triggers
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1396


<!-- page 1397 -->
1. Navigate to All > System Policy > Email > Inbound actions. There are 2 inbound actions that
must be activated:
◦ Activate the Trigger agentic workflow for lead inbound action.
◦ Activate the Trigger agentic workflow for lead task inbound action.
2. Navigate to the SalesAIAgentsConstants script and change the value of
HELP_NURTURE_NEW_LEAD_FLOW_ID property to the sys_id of the duplicated agentic
workflow.
Nurturing a lead
To nurture a lead, perform the following steps:
1. Navigate to All > AI Agent Studio.
2. Review the information in the Describe and connect screen, make the necessary updates to
ensure that the use case adapts to your requirements, and then select Save and Continue.
3. In the Define trigger screen, activate the triggers that adapt to your requirements, or create
your own triggers, and then select Save and Continue.
4. In the Select display screen, perform the following steps:
a. Select where you want the use case output to be displayed.
b. Use the arrow next to it to add roles that can access the use case.

Note: The sales_agent is the default role for the use case.
c. Select Save and test.
The agent executes the testing in AI Agent Studio for the use case.
In the Now Assist panel, the agent receives a notification as soon as the interaction is generated,
which enables them to follow the on-screen instructions and complete the task. For more
information, see Request the generative AI capabilities in Customer Service Management by
using the Now Assist panel .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1397


<!-- page 1398 -->
Now Assist for Order Management
®

Use the ServiceNow Now Assist for Order Management application to improve agent and
customer productivity and efficiency in their respective workflows.

Get started

Explore

Configure

Learn more about
Now Assist for
Order Management

Configure the Now Assist
for Order Management
application to get started

Use Now Assist for Order
Management generative AI

Use generative AI
capabilities offered
by Now Assist for
Order Management

Important:
• Not all model providers are available for customers with in-country SKUs, and some Now
Assist products/features are currently unavailable for in-country customers. For more
information, see the KB1584492
article in the Now Support Knowledge Base. Be sure to
check for model provider availability updates in future releases.
• Some Now Assist products/features are currently unavailable for customers in the
FedRAMP, NSC DOD IL5, or Australia IRAP-Protected data centers, self-hosted
customers, or in other restricted environments. For more information, see the
KB0743854
article in the Now Support Knowledge Base . Be sure to check for availability
updates in future releases.
• Some Now Assist products/features are currently available only for customers in some
regions. Be sure to check for availability updates in future releases.
• Some AI products and skills are not available in Regulated Markets. For more information,
see KB2593939: Regulated Markets AI Products/Skills Not Available . Be sure to check
for availability updates in future releases.

Troubleshoot and get help
• ServiceNow Community on AI and Intelligence
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support.
AI limitations
This application uses artificial intelligence (AI) and machine learning, which are rapidly evolving fields of study that generate predictions based on patterns
in data. As a result, this application may not always produce accurate, complete, or appropriate information. Furthermore, there is no guarantee that this
application has been fully trained or tested for your use case. To mitigate these issues, it is your responsibility to test and evaluate your use of this application for
accuracy, harm, and appropriateness for your use case, employ human oversight of output, and refrain from relying solely on AI-generated outputs for decision-

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1398


<!-- page 1399 -->
making purposes. This is especially important if you choose to deploy this application in areas with consequential impacts such as healthcare, finance, legal,
employment, security, or infrastructure. You agree to abide by ServiceNow’s AI Acceptable Use Policy

, which may be updated by ServiceNow.

Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to develop and improve ServiceNow technologies including ServiceNow
models and AI products. Customers can opt out of future data collection at any time, as described in the Now Assist Opt-Out page

.

Exploring Now Assist for Order Management
With the Now Assist for Order Management application, you can use generative AI to summarize
complex orders involving multiple products, services, and fulfillment tasks for faster, more
accurate decision-making and improved customer responsiveness.

Now Assist for Order Management overview
AI summarization of orders provides a real-time, consolidated view of complex orders spanning
multiple products, services, and fulfilment tasks. It empowers agents to:
• Enhance the customer experience with timely updates, clear communication, and seamless
handoffs that lead to better satisfaction.
• Track changes and validate details to maintain consistency and transparency.
• Minimize errors and improve communication across suppliers and partners.
• Monitor tasks that are at risk of missing deadlines and take corrective action early.
• Assign tasks to appropriate resources based on priority and skill.
• Make rapid prioritization decisions to avoid delays.

Now Assist for Order Management skills
The Now Assist for Order Management application includes the generative AI skill that enables:
1. Order agent: Quickly check order status, identify issues, and resolve them without navigating
to multiple tabs or line items.
2. Fulfillment agent: Gain visibility into the fulfilment progress, spot risks early, and intervene
proactively.

Standalone AI agents in Order Management
Enable business-to-business (B2B) customers to submit order cases autonomously in simple
conversational format from the Business Portal by simply describing their needs in natural
language using the manage order operations agent. For more information, see Request order
changes using Now Assist for Order Management.
Get started by performing the following tasks:
• Enable the manage order operations agent on the Business Portal
• Configure ATP API for the manage order operations agent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1399


<!-- page 1400 -->
Configuring Now Assist for Order Management
If you have the admin role, you can configure the Now Assist for Order Management application
so that your agents can use the generative AI skills in CSM Configurable Workspace and in
Platform.
Installing the Now Assist for Order Management application installs the following AI agents on
your ServiceNow instance:
• Manage order operations AI agent
• Summarization for Order Management agent
Request the Now Assist for Order Management application from the ServiceNow Store
and
install it using the Application Manager. For more information, see Install a ServiceNow Store
application .
The Now Assist skills for SOM:
• Order Summarization for Order Capture
• Order Summarization for Order Fulfillment

Note:
Azure, Amazon bedrock, Now LLM, Now LLM LTS, and Google Cloud vertex AI are currently
the providers for this Now Assist application's skills.

Configuring standalone AI agents
Business-to-business (B2B) customers can submit order cases using Now Assist from the
Business Portal. Interaction channels include chat and voice options. Before you can use the
manage order operations agent in the Business Portal:
• Enable the manage order operations agent on the Business Portal
• Configure ATP API for the manage order operations agent
Enable AI voice agent support on your phone channels by installing the Now Assist Voice
[sn_voice_aia] plugin. For more information, see Deploy AI voice agents .
Related topics
Overview tab in Now Assist Admin
Configuring Now Assist Admin features
Standalone agents in Order Management

Customize an order summarization skill in Now Assist for Order
Management
If you have the admin role, you can configure the Now Assist for Order Management application
so that your order agent and fulfillment agent can use the generative AI skills in CSM
Configurable Workspace and in Platform.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1400


<!-- page 1401 -->
Procedure
1. Navigate to All > Now Assist Admin > Now Assist Skills.
2. In the Customer workflow group, view the skills for the Now Assist for Order Management
under SOM.
3. Copy the order summarization skill for customization.
a. Choose either Order Summarization (Order Capture) or Order Summarization (Order
Fulfillment) to make a copy of an active skill.

Note: Only one version of a skill can be active at a time for each skill. If you create and
activate a copy of the skill, any previously activated version of the skill is deactivated.
b. Select the More actions icon
selecting Make a copy.

for the skill, and create a copy that you can customize by

The copy that you make is listed in the All section.
c. Select Activate skill on the copied skill to open and modify it.
A guided setup leads you through configuring General details, View order input, Customize
prompt output, Define Availability, Define access, select display, and Review and activate of
the skill to be customized.
4. In the General details step, fill in the fields.
a. Enter a name and description for the skill.
b. Select Save and continue to go to the next step.

Note: The More details on the skills fields are read-only.
5. Configure the base input table fields and related lists for the different input templates (Product
Order Capture or Service Order Capture) for the skill.

Note: The Choose base table field is ready-only.
Each skill relies on a base input table and input fields with descriptions to provide context for
all the LLM Services to generate a response.
Select only those related tables that are offered as the base system as part of the input data.
a. Select +New base input field and configure the base input table fields for each input
template (Product Order Capture or Service Order Capture).
Add multiple base input fields, as necessary.
The following table lists the base input table fields and descriptions.
Base input fields
Field

Base input field

Description

Field in the base input table whose value
this skill uses in its response.
For example, Number.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1401


<!-- page 1402 -->
Field

Field description

Description

Description of the base input field value.
For example, Order number..

b. For each input template, configure the rule conditions by using the condition builder to filter
the data.
The rule conditions determine when the input template is used. By default, the record state
determines the input template that all LLM services use.
You can build the condition out further by selecting +New condition set and configuring
additional parameters.
c. For each input template, select +New data source to configure the additional input data
sources, as needed.
Adding input data source, like the related tables, provides more context to all LLM services in
a related list.
You can also add the rule conditions to these additional data sources.
The selection of the related table fields has a direct impact on the quality of the
corresponding prompt header.
d. Select Save and continue to go to the next step.
6. Customize the prompt output.
Review and test the default prompt provided. The prompt is fixed and can’t be customized
directly within this step or from the Now Assist Admin screen.
To customize or create prompts, select Edit prompt in Now Assist Skill Kit. You are
redirected to the Now Assist Skill Kit, where you can manage prompt configurations for the
skill. For more information, see Now Assist Skill Kit .
a. For each input template (Product Order Capture or Service Order Capture), select a record in
the Test output section and test the prompt response output format by selecting Run Test.
b. Select Save and continue to go to the next step.
7. Define how the skill is available to your users in the Define availability section.
a. Configure the skill to be available to users, or select the conditions that must be met before
the skill is available.
Selecting Customize skill availability displays a condition builder to filter the data further.
Select +New condition set to configure additional conditions, as needed.
b. Select Save and continue to go to the next step.
8. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles that you choose will also
be available in the Select display step.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1402


