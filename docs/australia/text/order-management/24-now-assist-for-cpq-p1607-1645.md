# Australia Sales Customer Relationship Management — Now Assist for CPQ / Now Assist for Order Management

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1607–1645 of 1645

Sections: Now Assist for CPQ (p1607); Explore (p1609); Configure (p1610); Use (p1613); Now Assist for Order Management (p1616); Explore (p1618); Configure (p1619); Use (p1632)

---

<!-- page 1607 -->
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

Now Assist for Configure, Price, Quote (CPQ)
®

Use the ServiceNow Now Assist for Configure, Price, Quote (CPQ) application to reduce manual
effort, improve consistency, and support faster, more accurate quote creation.

Get started
Select a tile to learn how you can use AI capabilities in CPQ workflows.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1607


<!-- page 1608 -->
Explore

Configure

Learn more about Now
Assist for Configure,
Price, Quote (CPQ)

Configure the Now
Assist for Configure,
Price, Quote (CPQ)
application to get started

Use Now Assist for
Configure, Price, Quote
(CPQ) generative AI

Use the generative AI
capabilities offered by
Now Assist for Configure,
Price, Quote (CPQ)

Note: Depending on your license, you will have access to certain application features,
generative AI skills, agentic workflows, and AI agents. For more information, see
ServiceNow product tiers .

Important:
• Not all model providers are available for customers with in-country SKUs, and some
AI products/features are currently unavailable for in-country customers. For more
information, see the KB1584492
article in the Now Support Knowledge Base. Be sure to
check for model provider availability updates in future releases.
• Some AI products/features are currently unavailable for customers in the FedRAMP, NSC
DOD IL5, or Australia IRAP-Protected data centers, self-hosted customers, or in other
restricted environments. For more information, see the KB0743854
article in the Now
Support Knowledge Base. Be sure to check for availability updates in future releases.
• Some AI products/features are currently available only for customers in some regions. Be
sure to check for availability updates in future releases.
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
accuracy, harm, and appropriateness for your use case, employ human oversight of output, and refrain from relying solely on AI-generated outputs for decisionmaking purposes. This is especially important if you choose to deploy this application in areas with consequential impacts such as healthcare, finance, legal,
employment, security, or infrastructure. You agree to abide by ServiceNow’s AI Acceptable Use Policy

, which may be updated by ServiceNow.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1608


<!-- page 1609 -->
Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to develop and improve ServiceNow technologies including ServiceNow
models and AI products. Customers can opt out of future data collection at any time, as described in the Now Assist Opt-Out page

.

Exploring Now Assist for Configure, Price, Quote (CPQ)
With the Now Assist for Configure, Price, Quote (CPQ) application, you can use generative AI to
summarize quotes and provide immediate, comprehensive visibility into key quote information
such as products, pricing, and terms. This functionality reduces errors, accelerates quote
creation, and helps teams deliver accurate quotes faster.

Now Assist for CPQ overview
The AI summarization of quotes provides sales teams and stakeholders with fast, reliable insight
into complex quote information. AI summaries help:
• Deliver fast, consistent insight into key quote details.
• Reduce manual review and speed up quote turnaround.
• Surface issues early to prevent deal delays.
• Keep teams aligned and helps move deals forward.
The Now Assist for CPQ includes Quote AI Agent that automates quote creation and modification
for faster respond to customers with fewer errors.

Now Assist for CPQ skills
The Now Assist for CPQ application includes the generative AI skill that enables quote
summarization. When activated, this skill helps agents gather context faster.
Get started by performing the following tasks:
• Configuring Now Assist for Configure, Price, Quote (CPQ)
• Summarize a quote using quote summarization

Agentic AI application for quote generation
The Quote AI Agent is part of Now Assist for CPQ that interprets sales representative intent,
retrieves opportunity and contract data, configures products, applies pricing and discounts,
generates quote documents, and drafts client emails. Sales representatives review and approve
each step before the agent proceeds. The Quote AI Agent uses an orchestrator that coordinates
seven specialized agents.
The agent compresses the quote-building lifecycle by handling repetitive, deterministic work
autonomously. A single prompt can drive multiple actions in one turn—for example, adding
several products, configuring one of them, and applying a discount—without requiring the sales
representative to issue each action separately.

Note: The Quote AI Agent uses AI to interpret intent and retrieve context. Outputs may not
reflect the full complexity of a deal. Review all agent-generated quotes before sharing them
with customers.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1609


<!-- page 1610 -->
The Quote AI Agent operates in two modes:
Autonomous
The agent completes the full sequence—opportunity context retrieval, product
addition, configuration, discounting, and document generation—without pausing for
confirmation. Use this mode for well-scoped, low-risk requests.
Human-in-the-loop
The agent pauses at predefined decision points and asks the sales representative
to confirm or adjust before continuing. Decision points include applying a discount
that exceeds a threshold, adding a product with ambiguous configuration, and
generating the final quote document.
When creating a quote from an opportunity, the agent retrieves relevant opportunity context—
including customer needs, products of interest, and expected commercial terms—to ground the
quote in the opportunity data. This context retrieval uses the Opportunity Summarization skill
when it's installed and entitled on the instance. When that skill isn't available, the agent retrieves
opportunity fields directly and constructs a structured context object without AI inference, so the
agent remains functional regardless of entitlement.
For configurable products, the agent starts a configuration session, applies your inputs as
configuration field values, and reads back the resulting bill of materials. The configured product
is added to the quote with full configuration lineage retained, so you can reconfigure it later.
The agent applies discounts at two levels:
• Header level: A discount applied to the overall quote.
• Line level: A discount applied to a specific line item.
Discounts can be in percentage or absolute terms. They can be explicit where you state
the amount directly, or implicit where the agent derives the discount from context such as a
previously negotiated rate. The agent surfaces the applied discounts back to you as part of its
response. When a discount exceeds the approval threshold, the agent notifies you and starts the
approval workflow automatically.

Configuring Now Assist for Configure, Price, Quote (CPQ)
Configure the Now Assist for Configure, Price, Quote (CPQ) application so that your agents can
use the generative AI skills in CSM Configurable Workspace and Business Portal.
Use the Now Assist Admin console to configure Now Assist for CPQ. Use the Now Assist for CPQ
plugin to install and configure the generative AI skills.

Customize a quote summarization skill in Now Assist for Configure, Price,
Quote (CPQ)
Configure the Now Assist for Configure, Price, Quote (CPQ) application so that the agent can use
the generative AI skills in the CSM/FSM Configurable Workspace and Business Portal.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Assist Admin > Now Assist Skills.
2. In the Customer workflow group, view the skills for Now Assist for CPQ under Sales CRM.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1610


<!-- page 1611 -->
3. Make a copy of an active quote summarization skill by selecting the More actions icon
then select Make a copy to create a version that you can customize.

and

4. In the General details step, fill in the fields.
a. Enter a name and description for the skill.
b. Select Save and continue to go to the next step.

Note: The More details on the skills fields are read-only.
5. In the View quote input step, configure the base input table fields and related lists for the
Quote template.

Note: The Choose base table field is ready-only.
Each skill relies on a base input table and input fields with descriptions to provide context for
the Now LLM Service to generate a response.
a. Add base input table fields by selecting New base input field.
The following table lists the base input table fields and descriptions.
Base input fields
Field

Base input field

Description

Field in the base input table whose value
this skill uses in its response.
For example, Number.

Field description

Description of the base input field value.
For example, Quote number.

b. Configure the rule conditions to filter the data by using the condition builder.
The rule conditions determine when the input template is used. By default, the record state
determines the input template that the Now LLM Service uses.
You can build the condition out further by selecting New condition set and configuring
additional parameters.
c. Select the New data source field to configure the additional input data sources, as needed.
Adding input data sources (such as the related tables, activity streams, and relationships)
provide more context to the Now LLM Service in a related list.
You can also add the rule conditions to these additional data sources.
You can build the condition out further by selecting the New condition set field and
configuring additional parameters.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1611


<!-- page 1612 -->
The selection of the related table fields has a direct impact on the quality of the
corresponding prompt header.
d. Select Save and continue to go to the next step.
6. Customize the prompt output.
Review and test the default prompt provided. The prompt is fixed and can’t be customized
directly within this step or from the Now Assist Admin screen.
To customize or create prompts, select Edit prompt in Now Assist Skill Kit. You are
redirected to the Now Assist Skill Kit, where you can manage prompt configurations for the
skill. For more information, see Now Assist Skill Kit .
a. Select a record in the Test output section and test the prompt response output format by
selecting Run Test.
b. Select Save and continue to go to the next step.
7. Use the Define availability section to define how the skill is available to users.
a. Configure the skill to be available to users, or select the conditions that must be met before
the skill is available.
Selecting the Customize skill availability field displays a condition builder to filter the data
further.
Select the New condition set field to configure additional conditions, as needed.
b. Select Save and continue to go to the next step.
8. Specify which users can access the skill in the Define access section.
By selecting specific roles, you're controlling who can use the skill. The roles that you choose
will also be available in the Select display step.
Default and Custom roles:
◦ If no changes are made, the default role automatically appears in User access - Access
Control List (ACL).
◦ Apply role restrictions when the skill is invoked by selecting Roles and defining which data
and resources (for example, tables) the user can access in Role restrictions to skill.

Note: If you add a role in the Define Access step, you must manually select it in the
Select Display field to make it active.

9. Configure the In-product desktop field to display the quote summarization.
a. Display Now Assist skills on the forms and workspaces by selecting the In-product desktop
field.
For the skills that appear in-product, select the arrow to identify the roles that can use the
skill.
b. Select Save and continue to go to the next step.
10. Review and activate the skill.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1612


<!-- page 1613 -->
a. Review your choices and select Activate to complete the skill customization.
b. Generate the quote summary by selecting Summarize in a quote.

Using Now Assist for Configure, Price, Quote (CPQ)
Use agents in an agentic workflow or as standalone agents to achieve specific automated
outcomes.
Use Now Assist for CPQ to generate a summary of a quote to:
• Summarize key quote components during early customer discussions or pre‑discovery.
• Provide an updated view of the quote after revisions, without requiring the review of multiple
records.
• Provide a single, consolidated snapshot of all actions, tasks, and notes derived from a quote in
one place.
• Highlight custom pricing, discounts, and negotiated changes made during the quoting
process.
• Review the quote prior to sending it to the customer to confirm accuracy and completeness.
• Support internal handoffs by summarizing the quoted offer for internal teams.

Summarize a quote using quote summarization
Summarize a quote to generate a consolidated report of a quote record to quickly understand the
quote without manually reviewing multiple fields, line items, or related records.

Before you begin

Role required: sn_sales_common.sales_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Quotes > All and select the quote to summarize.
3. In the Quote summary field, select Summarize.

The Quote summary field appears above the Quote section inside the Details tab. The
component is collapsed by default and expands to display the summary. For longer summaries
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1613


<!-- page 1614 -->
that don't fit in the window, select Show more and use the scroll bar to view the rest of the
content.

Note: Generating and displaying the summary may take several seconds.
4. Optional: When you're finished summarizing a quote, you can save it to the work notes,
expand or collapse it, provide feedback, copy it, or view information about it.
Option

Procedure

a. Select Share.
Save the summary information by adding it
to the work notes

b. In the Share to work notes dialog box, edit
the summary.
c. Select Save to work notes.
Select the expand card icon

Expand or collapse the summary

or the col­

lapse card icon
to see more details or few­
er summary details.
If you think that the summary was helpful, se­
lect the helpful icon
. If you think that the
summary wasn’t helpful, select the not helpful
icon

Provide feedback for the summary

Copy the quote summary

View the information about the quote sum­
mary

.

This feedback improves the generative AI
model and can help to improve the future
versions of this skill. The system gathers the
feedback on each generated summary and
stores it in the generative AI logs (sys_genera­
tive_ai_log_list.do).
Select the copy to clipboard icon
to use
the quote summary information for another
purpose, such as pasting into an email.
If you want to check details about the summa­
ry, select the more info icon

.

Manage quotes using the Quote AI Agent
Use the Quote AI Agent to create a quote, modify an existing quote, or review a quote that the
agent generated automatically from a trigger condition.

Before you begin

Role required: sales_agent

About this task

The Quote AI Agent supports three operations on quotes. Choose the operation that matches
your goal.
• Create—Ask the agent to build a new quote for an opportunity. The agent retrieves the
opportunity line items, builds the quote, and presents it for your review. If a primary quote
already exists, the agent uses it. If no primary quote exists, the agent creates one.
• Modify—Ask the agent to update an existing open quote. The agent interprets your request,
applies the changes, and checks that all discounts and pricing conform to company policies.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1614


<!-- page 1615 -->
• Trigger-generated—Review a draft quote that the agent created automatically when a trigger
condition was met on an opportunity, for example when the opportunity stage is set to
Propose or when a task or note contains a recognized keyword. The agent notifies you through
Microsoft Teams and Now Assist for CPQ when the draft is ready.
If a change requires approval, the agent notifies you and starts the approval workflow. If the agent
can't find enough information to continue, it sends you a message asking for the missing details.

Procedure
1. Open the starting point for your operation.
Operation

Starting point

Create a quote

Open the opportunity for which you want to create a quote.

Modify a quote

Open the quote you want to modify, or open the linked oppor­
tunity.

Review a trigger-generated
quote

Open the notification from the Quote AI Agent in Microsoft
Teams or Now Assist for CPQ, then open the opportunity
linked in the notification.

2. Open the Now Assist for CPQ chat panel.
3. Enter your request or respond to the agent, depending on your operation.
Operation

What to do

Enter your request in the chat, including the opportunity num­
ber and any pricing instructions.
Example requests:
Create a quote

◦ Create a quote for Opportunity OPT001
with a 10% discount on Visibility.
◦ Help me create a quote for Opportunity
123.
◦ Create a quote for Opportunity OPT001
and generate an email with the document.
Enter your modification request in the chat, including the
quote number and the change you want to make.
Example requests:

Modify a quote

◦ For this quote, apply a 10% discount to
all products.
◦ Remove the Visibility line item from
quote QT001.
◦ Update the quantity for Standard on
quote QT001 to 50.
◦ Change the price list on this quote to
the EMEA price list.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1615


<!-- page 1616 -->
Operation

What to do

Review a trigger-generated
quote

Review the draft quote that the agent created, including the
products, quantities, and pricing. The agent populates the
quote from the opportunity line items and may suggest relat­
ed or recommended products based on the opportunity data.
If the agent has sent a message asking for missing informa­
tion, reply in the chat with the details requested. This applies
when no opportunity line items exist and no product informa­
tion is available in the opportunity notes or tasks.

4. Review the summary that the agent presents.
For a new or trigger-generated quote, the agent shows line items, pricing, and any discounts
applied. For a modification, the agent identifies the relevant quote line items by product
name and shows you the proposed changes before applying them. If the agent needs more
information, it sends you a message before continuing.
5. Confirm the details or provide additional instructions.
◦ To add products, tell the agent which products to include.
◦ To remove products, tell the agent which products to exclude.
◦ To apply or change a discount, specify the discount amount or percentage and the products
it applies to.
◦ To change pricing, ask the agent to update the price list or individual line item prices.
◦ To accept or apply the changes as shown, confirm your approval in the chat.
6. If the agent notifies you that a discount or pricing change requires approval, wait for the
approval workflow to complete before continuing.
7. Optional: Ask the agent to generate the quote document and draft the client email.
(Optional) Example: Generate the quote document and prepare an email
for the customer.
This step applies when creating a new quote or finalizing a trigger-generated quote. Skip this
step if you're only updating an existing quote and don't need to send a new document.
8. Optional: Review the draft email and send it to the customer.

Result

The quote is created, updated, or finalized and attached to the opportunity. The agent updates
the opportunity work notes with a summary of the actions taken and notifies you through
Microsoft Teams and Now Assist for CPQ.

Now Assist for Order Management
®

Use the ServiceNow Now Assist for Order Management application to improve agent and
customer productivity and efficiency in their respective workflows.

Get started
Select a tile to learn how you can use AI capabilities in order management and self-service
workflows.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1616


<!-- page 1617 -->
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

Note: Depending on your license, you will have access to certain application features,
generative AI skills, agentic workflows, and AI agents. For more information, see
ServiceNow product tiers .

Important:
• Not all model providers are available for customers with in-country SKUs, and some
AI products/features are currently unavailable for in-country customers. For more
information, see the KB1584492
article in the Now Support Knowledge Base. Be sure to
check for model provider availability updates in future releases.
• Some AI products/features are currently unavailable for customers in the FedRAMP, NSC
DOD IL5, or Australia IRAP-Protected data centers, self-hosted customers, or in other
restricted environments. For more information, see the KB0743854
article in the Now
Support Knowledge Base. Be sure to check for availability updates in future releases.
• Some AI products/features are currently available only for customers in some regions. Be
sure to check for availability updates in future releases.
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
accuracy, harm, and appropriateness for your use case, employ human oversight of output, and refrain from relying solely on AI-generated outputs for decisionmaking purposes. This is especially important if you choose to deploy this application in areas with consequential impacts such as healthcare, finance, legal,
employment, security, or infrastructure. You agree to abide by ServiceNow’s AI Acceptable Use Policy

, which may be updated by ServiceNow.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1617


<!-- page 1618 -->
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
multiple products, services, and fulfillment tasks. It empowers agents to:
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
2. Fulfillment agent: Gain visibility into the fulfillment progress, spot risks early, and intervene
proactively.

Generative and agentic AI applications for enabling customer self-service
The Now Assist for Order Management includes the following applications that enable businessto-business (B2B) customers to submit order and invoice cases autonomously in simple
conversational format from the Business Portal.
Manage Order Operations
The Manage Order Operations application (com.sn_ord_ops_aias) includes the
following AI agents:
• Manage order operations AI agent: Enables B2B customers to submit order cases
autonomously from the Business Portal using natural language.
• Order exception AI voice agent: Enables B2B customers to submit order cases
using voice calls.
Get started by performing the following tasks:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1618


<!-- page 1619 -->
• Enable the manage order operations agent on the Business Portal
• Configure scripted extension points for the manage order operations agent
Manage Invoice Operations
The Manage Invoice Operations application (com.sn_inv_ops_aias) includes the
following AI agents and agentic workflow:
• Invoice dispute intake assistant AI agent: Enables B2B customers to submit
invoice dispute cases autonomously from the Business Portal using natural
language.
• Invoice dispute AI voice agent: Enables customers to submit invoice dispute
cases using voice calls.
• Invoice dispute assist agentic workflow: Enables finance agents to validate and
resolve invoice disputes using a guided experience from the Now Assist panel
in the CSM/FSM Configurable Workspace. Internally, it uses the invoice dispute
support assistant AI agent to validate invoice information, trigger API calls to
check quantity discrepancies and provide resolutions.
Get started by performing the following tasks:
• Configure AI-assisted invoice dispute intake on the Business Portal
• Configure the invoice quantity validation extension point
• Configure the invoice dispute resolution extension point
• Make the invoice dispute assist workflow available in the Now Assist panel
Related topics
Configuring Now Assist for Order Management
Using Now Assist for Order Management

Configuring Now Assist for Order Management
If you have the admin role, you can configure the Now Assist for Order Management application
so that your agents can use the generative AI skills in the CSM/FSM Configurable Workspace
and Business Portal.
Installing the Now Assist for Order Management application installs the following AI applications
and skills on your ServiceNow instance:
• Manage Order Operations (com.sn_ord_ops_aias)
• Manage Invoice Operations (com.sn_inv_ops_aias)
• Summarization for Order Management
Request the Now Assist for Order Management application from the ServiceNow Store
and
install it using the Application Manager. For more information, see Install a ServiceNow Store
application .

Configuring order summarization skill
The Now Assist skills for Sales CRM:
• Order summarization for order capture
• Order summarization for order fulfillment
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1619


<!-- page 1620 -->
For information on customizing the order summarization skill, see Customize an order
summarization skill in Now Assist for Order Management.

Note: Microsoft Azure, Amazon bedrock, Now LLM, Now LLM LTS, and Google Cloud
vertex AI are currently the providers for this Now Assist application's skills.

Configuring the Manage Order Operations application
Business-to-business (B2B) customers can submit order cases using Now Assist Virtual
Assistant from the Business Portal. Interaction channels include chat and voice options. Before
you can use the AI agents for managing order operations from the Business Portal:
• Enable the manage order operations agent on the Business Portal
• Configure scripted extension points for the manage order operations agent
• Email notifications for order cases
Enable AI voice agent support on your phone channels by installing the Now Assist Voice
[sn_voice_aia] plugin. For more information, see Deploy AI voice agents .
Configure Chat Summarization to enable the AI summarization and recommendation features in
Active Chat. For more information, see Configure chat summarization .

Configuring the Manage Invoice Operations application
Business-to-business (B2B) customers can submit invoice cases using Now Assist Virtual
Assistant from the Business Portal. Interaction channels include chat and voice options. Billing
specialists and agents can use the invoice dispute assist agentic workflow from the CSM/
FSM Configurable Workspace to resolve invoice cases. Before you can use the AI agents for
managing order operations agent in the Business Portal:
• Configure AI-assisted invoice dispute intake on the Business Portal
• Configure the invoice quantity validation extension point
• Configure the invoice dispute resolution extension point
• Make the invoice dispute assist workflow available in the Now Assist panel
Enable AI voice agent support on your phone channels by installing the Now Assist Voice
[sn_voice_aia] plugin. For more information, see Deploy AI voice agents .
Configure Chat Summarization to enable the AI summarization and recommendation features in
Active Chat. For more information, see Configure chat summarization .
Related topics
Overview tab in Now Assist Admin
Configuring Now Assist Admin features
Using Now Assist for Order Management

Customize an order summarization skill in Now Assist for Order Management
Configure the Now Assist for Order Management application so that your order agent and
fulfillment agent can use the generative AI skills in the CSM/FSM Configurable Workspace and
Business Portal.

Before you begin

Role required: admin
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1620


<!-- page 1621 -->
Procedure
1. Navigate to All > Now Assist Admin > Now Assist Skills.
2. In the Customer workflow group, view the skills for the Now Assist for Order Management
under SOM.
3. Copy the order summarization skill for customization.
a. Make a copy of an active skill by selecting either Order Summarization (Order Capture) or
Order Summarization (Order Fulfillment).

Note: Only one version of a skill can be active at a time for each skill. If you create and
activate a copy of the skill, any previously activated version of the skill is deactivated.
b. Select the More actions icon
selecting Make a copy.

for the skill, and create a copy that you can customize by

The copy that you make is listed in the All section.
c. On the copied skill, select Activate skill to open and modify it.
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
all the Now LLM Service to generate a response.
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1621


<!-- page 1622 -->
Field

Field description

Description

Description of the base input field value.
For example, Order number.

b. For each input template, configure the rule conditions by using the condition builder to filter
the data.
The rule conditions determine when the input template is used. By default, the record state
determines the input template that all Now LLM Service use.
You can build the condition out further by selecting New condition set and configuring
additional parameters.
c. Configure the additional input data sources by selecting New data source for each input
template, as needed.
Adding input data source, like the related tables, provides more context to all Now LLM
Service in a related list.
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
7. Use the Define availability section to define how the skill is available to users.
a. Configure the skill to be available to users, or select the conditions that must be met before
the skill is available.
Selecting Customize skill availability displays a condition builder to filter the data further.
Select New condition set to configure additional conditions, as needed.
b. Select Save and continue to go to the next step.
8. Specify which users can access the skill in the Define access section.
By selecting specific roles, you're controlling who can use the skill. The roles that you choose
will also be available in the Select display step.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1622


<!-- page 1623 -->
Default and Custom roles:
◦ If no changes are made, the default role sn_ind_tmt_orm.order_agent automatically appears
in User access - Access Control List (ACL).
◦ Apply role restrictions when the skill is invoked by selecting Roles and defining which data
and resources (for example, tables) the user can access in the Role restrictions to skill field.

Note: If you add a role in the Define Access step, you must manually select it in the
Select Display field to make it active.

9. Configure the In-product desktop field to display the order summarization for Order
Management.
a. Display Now Assist skills on the forms and workspaces by selecting the In-product desktop
field.
For the skills that appear in-product, select the arrow to identify the roles that can use the
skill.
b. Select Save and continue to go to the next step.
10. Review and activate the skill.
Review your choices and select Activate to complete the skill customization.
Select Summarize in an order to generate the order summary.

Enable the manage order operations agent on the Business Portal
Activate and associate the manage order operations agent on the Business Portal so that your
customers can use this agent to submit order cases autonomously using Now Assist.

Before you begin

Activate and enable a chat assistant such as Now Assist in Virtual Agent to use in the Business
Portal. For more information, see Configuring assistants overview .
AI agents use role masking
to determine which users can access them. Ones installed with
Now Assist applications have specific roles that come included with the application. If you select
Users with specific roles for user access, you must configure the security controls
to include these roles. For the instructions to change the security controls, see Define security
controls for an AI agent .
Role required: sn_aia.admin

Procedure
1. Navigate to All > AI Agent Studio > Create and manage.
2. On the Manage agentic workflows and AI agents page, select the AI agents tab.
3. Select the Manage order operations agent to start configuring it.
4. On the Define the specialty page, select Save and continue.
5. From the navigation pane, select Select channels and status.
6. On the Select channels and status page, set the Engage via Virtual Agent assistants option to
Allow.
7. Specify where this AI agent is discoverable by selecting a virtual assistant from the Choose
chat assistants field.
For this use case, select Now Assist in Virtual Agent (Default).
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1623


<!-- page 1624 -->
8. Optional: Promote the agent to add it to the list of promoted topics.
a. Navigate to All > Conversational Interfaces > Virtual Agent > Designer.
b. On the Assistant Designer, select the AI agents tab.
c. Select Promoted from the More actions icon

for the manage order operations agent.

Result

The chat assistant is activated in the Business Portal.

What to do next

Customize the subject, content, or formatting of the default email templates for order cases. For
more information, see Email notifications for order cases.
Related topics
AI Agent Studio
Promote or demote LLM conversational subflows, actions, and topics in Assistant Designer
Assistant Designer Asset library

Email notifications for order cases
The manage order operations AI agent sends automated emails to your B2B customers when
an order case is opened from a Business Portal chat conversation and when the order case is
closed with a successful resolution. The Manage Order Operations application includes two
default email templates that you can customize.
The manage order operations AI agent uses default email templates to keep customers informed
at key points in the order case life cycle when the customer initiates an order exception request
from the chat assistant on the Business Portal.

Note: Email notifications aren't sent for order cases that the AI voice agent creates. If your
customer creates an order case by using the voice assistant, the order case agent provides
the case number over the call.
Default email templates for order cases
Email template name

When the email is sent

What the email includes

ordercase.opened.for.customer When the manage order
operations AI agent opens a
new order case for the customer
from a Business Portal chat
conversation.

The order case number and
a link that the customer can
use to view the case on the
Business Portal.

order.exception.case.closed

The order case number, the
resolution details, and the
quote details when a quote
was generated for the case.

When the order case is closed
and resolved successfully.

To customize the subject, content, or formatting of these default email templates, see Apply a
template to an email notification .
The application scope must be set to Manage Order Operations. You can change the application
scope using the application picker

in the Unified Navigation bar.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1624


<!-- page 1625 -->
Related topics
Email templates

Configure scripted extension points for the manage order operations agent
Configure scripted extension points so that the manage order operations chat assistant can
check product availability, validate order exception requests for delivery, quantity, and shipping
location, and evaluate quote thresholds against your external inventory, ERP, or pricing systems.

Before you begin

The application scope must be set to Manage Order Operations. You can change the application
scope using the application picker

in the Unified Navigation bar.

Role required: admin

About this task

The demo data for the manage order operations agent includes sample implementations of the
following scripted extension points.

Extension
point

API name

Order
sn_ord_ops_aias.orderExceptionCheckEP
exception
check

Purpose

Validate quantity, delivery
availability, and shipping
location for order line
items.

Threshold sn_ord_ops_aias.ThresholdCheckForQuote Determine whether
check for
a requested quantity
quote
change crosses the
configured threshold for
quote-side handling.
To enable real-world functionality such as querying on-hand quantities, delivery dates, location
feasibility, and quote thresholds from external Enterprise Resource Planning (ERP) or pricing
systems like SAP or Oracle, replace each demo implementation with your custom logic.

Procedure
1. Log in to the ServiceNow instance.
2. Navigate to All > Scripted Extension Points > Scripted Extension Points.
3. In the API Name field, search for a scripted extension point you want to configure.
4. View the sample script included in the demo data by selecting the API name of the extension
point.
5. Create your own implementation of the selected extension point by selecting the Create
implementation related link.
6. On the Script Include form for your chosen extension point, fill in the fields.
For a description of the Script Include form fields, see Script includes .
7. Edit the function in your extension-point implementation to apply your own logic, using the
following function signatures.

checkOrderExceptionReq
Placeholder function meant to be overridden. Use this placeholder to implement
the logic to:
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1625


<!-- page 1626 -->
◦ Validate the requested quantity for the specified order line items.
◦ Confirm delivery availability for the order line items.
◦ Validate the requested shipping location for the order line items.
Input:
{
"<selectedLineNumber>": {
"lines": { "<line_sys_id>": { "product_offering":
<Product offering sys_id of the order line item> } },
"requested_changes": {
"requested_quantity": <New quantity requested by the
customer>,
"requested_shipping_location": <sys_id of the
requested shipping location>,
"requested_expected_date": <Requested delivery date in
yyyy-MM-dd format>
}
}
}
Output:
{
"<selectedLineNumber>": {
"canChangeQty": <Boolean; true if the quantity change
is permitted>,
"approvedQty": <Integer representing the approved
quantity>,
"isQuantityError": <Boolean; true if the quantity
check failed>,
"quantityErrorMsg": <Error message string for quantity
check failures>,
"canChangeLocation": <Boolean; true if the shipping
location change is permitted>,
"isLocationError": <Boolean; true if the location
check failed>,
"locationErrorMsg": <Error message string for location
check failures>,
"canExpedite": <Boolean; true if the requested
expedition date is achievable>,
"earliestDelivery": <Earliest possible delivery date
in yyyy-MM-dd format>,
"isDateError": <Boolean; true if the expedition date
check failed>,
"dateErrorMsg": <Error message string for expedition
date check failures>
}
}

isAboveQuoteThreshold
Placeholder function meant to be overridden. Use this placeholder to implement
the logic to:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1626


<!-- page 1627 -->
◦ Compare the requested quantity change against your configured price or
quantity threshold.
◦ Return whether the request requires quote-side handling.
Input:
casePayload:
{
"<selectedLineNumber>": {
"lines": { "<line_sys_id>": {
"quantity": <Current quantity on the order line>,
"product_offering": <Product offering sys_id of the
order line item>
} },
"approved_changes": {
"quantity": <New approved quantity for the line>,
"expected_date": <New approved delivery date in
yyyy-MM-dd format>,
"location": <sys_id of the approved shipping location>
}
}
}
threshold: <Numeric threshold value
supplied by the caller, resolved from
sn_ord_ops_aias.OrderExceptionConstants.PRICE_THRESHO
LD>
Output:
<Boolean; true if any selected line's quantity delta
exceeds the supplied threshold and the change should
be routed for quote-side handling, false otherwise>
8. Select Update.
9. Optional: Validate your implementation by requesting order changes from the Business Portal
using the Now Assist Virtual Assistant.
For more information, see Request order changes using Now Assist Virtual Assistant.
Related topics
Using extension points to extend application functionality
Creating and adding a scripted extension point

Configure AI-assisted invoice dispute intake on the Business Portal
Activate and associate the invoice dispute intake assistant AI agent on the Business Portal so
that your customers can submit invoice cases autonomously using Now Assist Virtual Assistant.

Before you begin
AI agents use role masking
to determine which users can access them. Ones installed with
Now Assist applications have specific roles that come included with the application. If you select
Users with specific roles for user access, you must configure the security controls
to include these roles. For the instructions to change the security controls, see Define security
controls for an AI agent .

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1627


<!-- page 1628 -->
Activate and enable a chat assistant such as Now Assist in Virtual Agent to use in the Business
Portal. For more information, see Configuring assistants overview .
Role required: sn_aia.admin

Procedure
1. Navigate to All > AI Agent Studio > Create and manage.
2. On the Manage agentic workflows and AI agents page, select the AI agents tab.
3. Select the Invoice Dispute Intake Assistant agent to start configuring it.
4. On the Define the specialty page, select Continue.
5. From the navigation pane, select Select channels and status.
6. On the Select channels and status page, set the Engage via Virtual Agent assistants option to
Allow.
7. To specify where this AI agent is discoverable, select a virtual assistant from the Choose chat
assistants field.
For this use case, select Now Assist in Virtual Agent (Default).
8. Select Save and test.
9. Optional: Promote the agent to add it to the list of promoted topics.
a. Navigate to All > Conversational Interfaces > Virtual Agent > Designer.
b. On the Assistant Designer, select the AI agent tab.
c. Locate the Invoice Dispute Intake Assistant AI agent and select Promoted from the More
actions icon

.

Result

The chat assistant is activated in the Business Portal.
Related topics
AI Agent Studio
Promote or demote LLM conversational subflows, actions, and topics in Assistant Designer
Assistant Designer Asset library

Configure the invoice quantity validation extension point
Implement the invoice quantity check extension point to enable the invoice dispute intake
assistant AI agent to validate a customer's quantity dispute claim by reconciling it with delivered
quantity data from your Enterprise Resource Planning (ERP) or inventory system.

Before you begin

The application scope must be set to Manage Invoice Operations. You can change the
application scope using the application picker

in the Unified Navigation bar.

Role required: admin

About this task

The demo data for the Manage Invoice Operations application includes a
sample implementation called invoiceQuantityCheckDemo as part of the
sn_inv_ops_aias.invoiceQuantityCheckEP extension point. To enable real-world
validation of quantity disputes against your external ERP system or inventory delivery records,
replace the demo implementation with your own custom logic.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1628


<!-- page 1629 -->
The demo implementation also illustrates a fallback pattern. When sold product information
is unavailable on an invoice line, the function validates the disputed quantity against the
corresponding sales order line quantity instead. You can mirror this pattern in your custom
implementation when applicable.

Procedure
1. Log in to the ServiceNow instance.
2. Navigate to All > System Extension Points > Scripted Extension Points.
3. Search for the sn_inv_ops_aias.invoiceQuantityCheckEP scripted extension
point in the API Name field.
4. View the sample script included in the demo data by selecting
sn_inv_ops_aias.invoiceQuantityCheckEP.
5. Create your own implementation of the extension point by selecting the Create
implementation related link.
6. On the Script Include form, fill in the fields.
For a description of the Script Include form fields, see Script includes

.

7. Override the functions in the script to implement your logic for validating the customer's
quantity dispute claim.

checkInvoiceQuantityWithInvoiceCase
Placeholder function meant to be overridden. Use this placeholder to implement
the logic to validate quantity disputes across multiple invoice lines associated
with an invoice case.
Input:
{
"invoiceNumber": <Invoice number of the customer
invoice record>,
"verifiedInvoiceLineDetails": <Array of invoice
line details>
Output:
{
“invoiceLineNumber”: <Invoice line number against
which the dispute was raised>,
“disputedQuantity”: <Disputed quantity claimed by the
customer, as available in the invoice case line>
}

checkInvoiceQuantity
Placeholder function meant to be overridden. Use this placeholder to implement
the logic to validate a quantity dispute by reconciling the customer's claimed
quantity against your ERP or inventory delivery records.
Input:
{
"invoiceNumber": <Invoice number of the customer
invoice record>,
"invoiceLineNumber": <Invoice line number of
the customer invoice line record against which the
dispute was raised>,
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1629


<!-- page 1630 -->
"userEnteredQty": <Disputed quantity claimed by
the customer>
}
Output:
{
"invoiceLineNumber": <Invoice line number against
which the dispute was raised>,
"invoiceQty": <Actual quantity on the invoice line
record>,
"deliveredQty": <Integer representing the disputed
quantity claimed
by the customer>,
"qtyMatch": <Boolean; true if the customer's
dispute claim is valid, false if the invoiced and
claimed quantities match>,
"isError": <Boolean; true if the API call failed,
false if the API call was successful>,
"errorMessage": <Error message string to handle
failure scenarios>
}
8. Select Update.
9. Optional: Validate your implementation by submitting an invoice dispute from the Business
Portal using the Now Assist Virtual Assistant.
For more information, see Dispute invoice issues using Now Assist Virtual Assistant.
Related topics
Using extension points to extend application functionality
Creating and adding a scripted extension point

Configure the invoice dispute resolution extension point
Implement the invoice case resolution extension point to enable the invoice dispute intake
assistant AI agent to resolve a validated quantity dispute by issuing a credit note or placing an
order for the disputed quantity.

Before you begin

The application scope must be set to Manage Invoice Operations. You can change the
application scope using the application picker

in the Unified Navigation bar.

Role required: admin

About this task

The demo data for the Manage Invoice Operations application includes a
sample implementation called invoiceCaseResolutionEP as part of the
sn_inv_ops_aias.invoiceCaseResolutionEP extension point. To enable real-world
resolution of validated invoice disputes, such as issuing credit notes or placing orders through
your external systems, replace the demo implementation with your own custom logic.

Procedure
1. Log in to the ServiceNow instance.
2. Navigate to All > System Extension Points > Scripted Extension Points.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1630


<!-- page 1631 -->
3. Search for the sn_inv_ops_aias.invoiceCaseResolutionEP scripted extension
point in the API Name field.
4. View the sample script included in the demo data by selecting
sn_inv_ops_aias.invoiceCaseResolutionEP.
5. Create your own implementation of the extension point by selecting the Create
implementation related link.
6. On the Script Include form, fill in the fields.
For a description of the Script Include form fields, see Script includes

.

7. Override the processInvoiceDisputeResolution function to implement your
resolution logic for validated invoice quantity disputes.

processInvoiceDisputeResolution
Placeholder function meant to be overridden. Use this placeholder to implement
the logic to resolve a validated invoice quantity dispute by processing the
customer's preferred resolution option, such as issuing a credit note or placing an
order for the disputed quantity.
Input:
{
"invoiceCase": <Invoice case number of the invoice
case record>,
"resolutionOption": <String value representing the
resolution option selected by the customer>,
"conversationSummary": <Optional. String
containing the summarized transcript of the complete
conversation.>
}
Output:
{
"hasResolved": <Boolean; true if the resolution
was processed successfully, false if the resolution
failed>,
"creditNote": <String containing the generated
credit note number>,
"orderNumber": <String containing the generated
order number>
}
8. Select Update.
9. Optional: Validate your implementation by submitting an invoice dispute from the Business
Portal and selecting a resolution option using the Now Assist Virtual Assistant.
For more information, see Dispute invoice issues using Now Assist Virtual Assistant.
Related topics
Using extension points to extend application functionality
Creating and adding a scripted extension point

Make the invoice dispute assist workflow available in the Now Assist panel
Configure the invoice dispute assist agentic workflow in AI Agent Studio to make it available to
agents in the Now Assist panel in the CSM/FSM Configurable Workspace.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1631


<!-- page 1632 -->
Before you begin

The application scope must be set to Manage Invoice Operations. You can change the
application scope using the application picker

in the Unified Navigation bar.

Role required: sn_aia.admin

About this task

Agentic workflows that are installed with Now Assist applications aren’t automatically activated.
You must activate the invoice dispute assist agentic workflow before it can be used in the Now
Assist panel. After you enable the workflow, you can optionally promote it to make it appear as a
suggested topic in the Now Assist panel for faster access.

Procedure
1. Navigate to All > AI Agent Studio > Create and manage.
2. On the Manage agentic workflows and AI agents page, select the Agentic workflows tab.
3. Select the Invoice Dispute Assist agentic workflow.
4. From the navigation pane, select Select channels and status.
You could leave the settings in the remaining tabs at their default values.
5. On the Select channels and status page, enable the Engage via Now Assist panel option.
6. Select Save and test.
7. Optional: Promote the agentic workflow to add it to the list of suggested topics in the Now
Assist panel.
a. Navigate to All > Conversational Interfaces > Virtual Agent > Designer.
b. On the Assistant Designer page, select the Agentic workflows tab.
c. Narrow your search by selecting Now Assist Panel - Platform (default) from the Select
assistant drop-down menu.
d. Locate the Invoice Dispute Assist agentic workflow and select Promoted from the More
actions icon
.
The invoice dispute assist agentic workflow appears as a promoted topic in the Now Assist
panel, making it directly accessible to agents without requiring a search.

What to do next

Configure Chat Summarization to enable the summarization and recommendation features in
Active Chat. For more information, see Configure chat summarization .
Related topics
Activate an agentic workflow template

Using Now Assist for Order Management
Use agents in an agentic workflow or as standalone agents to achieve specific automated
outcomes.

Enhancing agent productivity in Order Management workflows
Order summarization
Use Now Assist for Order Management to summarize complex orders across
products, services, and fulfillment tasks, enabling you to quickly understand status,
take the right actions, and avoid navigating fragmented views to make next steps
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1632


<!-- page 1633 -->
easier and improving productivity. For more information, see Summarize an order
using Summarization for Order Management.
Bulk order updates
Manage order updates, such as applying bulk changes to order line items, removing
order lines, or creating an order case, without navigating between individual
records. For more information, see Manage order updates with Now Assist.

Managing order cases using Now Assist
Business-to-business (B2B) customers can request changes to their unfulfilled orders from the
Now Assist Virtual Assistant in the Business Portal using chat and voice channels.
• Request order changes using Now Assist Virtual Assistant
• Request order changes via calls

Managing invoice cases using Now Assist
B2B customers can dispute invoice cases from the Now Assist Virtual Assistant in the Business
Portal using chat and voice channels.
• Dispute invoice issues using Now Assist Virtual Assistant
• Dispute invoice cases via calls
Now Assist for Order Management includes the invoice dispute assist agentic workflow. Billing
specialists can invoke the invoice dispute assist agentic workflow from the Now Assist panel to
review the invoice case, validate the dispute, view similar cases, and complete resolution actions
using a guided experience. Using an agentic workflow helps reduce manual investigation,
improves consistency, and helps agents resolve invoice disputes efficiently while keeping
customers informed throughout the process. For more information, see Resolve invoice disputes
using agentic workflow.
Email notifications are sent to the customer when an invoice case is created or closed, but only
for cases initiated through the Now Assist Virtual Assistant in the Business Portal. Notifications
are triggered for the following closure outcomes: Credit note issued or replacement order placed.
Case closure can be performed either by the customer using the Now Assist Virtual Assistant in
the Business Portal, or by a billing specialist from the Now Assist in the CSM/FSM Configurable
Workspace.
Related topics
Find AI agents

Summarize an order using Summarization for Order Management
Generate a summary of a complex order for faster, more accurate decision-making and improved
customer responsiveness.

Before you begin

Note: When both the skills are active, the order capture skill takes precedence.

Role required: sn_ind_tmt_orm.order_agent, sn_ind_tmt_orm.order_fulfilment_agent

Procedure
1. In the CSM Configurable Workspace, select the List

view.

2. Navigate to Customer Orders > All and select the order to summarize.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1633


<!-- page 1634 -->
3. In the Customer Order summary by Now Assist, select Summarize.

The Customer Order summary by Now Assist appears above the activity stream. The
component is collapsed by default and expands to display the summary. For longer summaries
that don't fit in the window, select View more and use the scroll bar to view the rest of the
content.

Note: Generating and displaying the summary may take several seconds.
4. Optional: When you're finished summarizing an order, you can add it to the work notes,
expand or collapse it, provide feedback, copy it, or view information about it.
Option

Procedure

a. Select Share to work notes.
Save the summary information by adding it
to the work notes

b. In the Share summary as Work notes dialog
box, edit the summary.
c. Select Save to work notes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1634


<!-- page 1635 -->
Option

Procedure

Select the expand card icon
Expand or collapse the summary

or the col­

lapse card icon
to see more details or few­
er summary details.
If you think that the summary was helpful, se­
lect the helpful icon
. If you think that the
summary wasn’t helpful, select the not helpful
icon

Provide feedback for the summary

Copy the order summary

View the information about the order sum­
mary

.

This feedback improves the generative AI
model and can help to improve the future
versions of this skill. The system gathers the
feedback on each generated summary and
stores it in the generative AI logs (sys_genera­
tive_ai_log_list.do).
Select the copy to clipboard icon
to use
the order summary information for another
purpose, such as pasting into an email.
If you want to check details about the summa­
ry, select the more info icon

.

Request order changes using Now Assist Virtual Assistant
Request an expedited delivery, a quantity change, or a shipping location change for your order in
natural language using the Now Assist Virtual Assistant on the Business Portal.

Before you begin

The following applications must be installed and configured on your ServiceNow instance:
• Now Assist for Platform (sn_genai_platform)
• Now Assist for Order Management (sn_now_assist_om)
• Order Case Self Service (sn_ord_case_ss)
The scripted extension points that the chat assistant uses to validate order exception requests
such as delivery availability, quantity, shipping location, and quote threshold must be configured.
For more information, see Configure scripted extension points for the manage order operations
agent.
Role required: sn_customerservice.customer

About this task

When you submit a request through the Virtual Assistant, the AI agent performs the following
actions behind the scenes to help you quickly and efficiently:
• Checks account information and order history.
• Validates the intent of the request, which can be an expedited delivery, a quantity change, or
a shipping location change. For example, if you enter expedite, change quantity, or
ship to a different location in the Virtual Assistant, the AI agent confirms the
request type for your open orders.
• Confirms the order number and your change request.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1635


<!-- page 1636 -->
• After you confirm all the requested changes, creates an order case in the ServiceNow CRM
and stamps the requested changes on the requested fields of the order case lines.
• Calls the configured scripted extension points to validate inventory availability, quantity
feasibility, shipping location feasibility, and quote thresholds for the request. For example,
the AI agent calls orderExceptionCheckEP to check whether the ordered item is in stock for
early delivery, or ThresholdCheckForQuote to determine whether a quantity change requires
a quote. If you approve the validation results, the AI agent stamps the approved values on the
approved fields of the order case lines.
• Posts the summary of the conversation as a work note in the order case, which can only be
viewed by the agents from the CSM Configurable Workspace.

Procedure
1. Log in to the Business Portal.
2. Launch the Now Assist chat panel by selecting the Now Assist icon

.

3. In natural language, submit a request that you would like for your order.
Example
For example, enter Expedite my order, Increase the quantity on my order,
or Change the shipping location for my order.
4. If the AI agent interprets your request correctly, provide your confirmation.
Example
You can enter That's correct in the response.
5. Verify the order details that are displayed and specify an order that you’re requesting changes
for.
6. Select the order line item that you want to change or enter the product name.
If the selected line item is part of a bundle, the AI agent automatically includes the parent,
child, and sibling lines of the bundle in your request. If the selected line item is independent,
the AI agent applies the request only to that line.
You can request multiple exception types (an expedited delivery, a quantity change, and a
shipping location change) on the same order line.
7. Specify the details of your change when prompted.
◦ Revised delivery date for expedited delivery
◦ New quantity for a quantity change
◦ New shipping address for a shipping location change
The manage order operations AI agent validates feasibility for your request by calling the
configured scripted extension points. For an expedited delivery, the agent fetches the earliest
possible delivery date. For a quantity change, the agent validates the requested quantity and
determines whether the change requires a quote. For a shipping location change, the agent
validates whether the new location is serviceable.
After you confirm the requested changes, the AI agent creates an order case with a systemgenerated number starting with the prefix ORDCS and stamps the requested changes on the
requested fields of the order case lines. You receive an email confirming that your order case
has been opened and is under review.
8. When asked about the feasible options, accept or reject the proposal in natural language.
If you approve the validation results, the AI agent stamps the approved values on the approved
fields of the order case lines and posts a summary of the conversation as a work note on the
case. The AI agent provides the order case link so that you can view the case details on the
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1636


<!-- page 1637 -->
Business Portal. If you reject the validation results, the AI agent offers to connect you to a live
agent and the order case remains in progress.
9. If the AI agent prompts you for a quote, indicate whether you need a quote for your change.
The AI agent prompts you for a quote when the requested change exceeds the configured
price threshold. If you decline the quote, the AI agent offers to connect you to a live agent and
the order case remains in progress.
10. If a quote is created, review the proposed quote and accept or reject it.
If you accept the quote, the quote moves to the Accepted state, the order case is closed, and
the order case lines are moved to the Resolved Accepted state. The quote details are recorded
in the resolution code and resolution note. You receive a confirmation email with the order
case resolution and quote details.
If you reject the quote, the AI agent offers to connect you to a live agent and the order case
remains in progress.
Related topics
Configure Now Assist for Sales Force Automation (SFA)

Request order changes via calls
Use the AI voice agents to expedite delivery, change quantity, or change the shipping location for
an order by using voice calls. The voice agent captures your request and creates an order case
for an order case agent to resolve.

Before you begin

Role required: sn_customerservice.customer

About this task

Using the order exception AI voice agent, you can do the following:
• Submit order exception requests for orders that are not in the Draft state, including expedited
delivery, a quantity change, or a shipping location change
• Use generic keywords such as Expedite delivery, Faster delivery, Change quantity, or Ship to a
different location and get responses from an agent in the context of your questions

Procedure
1. Call the customer support number of the Business-to-business (B2B) seller.
2. When connected to the AI voice agent, state your intent for the order change, which can be to
expedite delivery, change the quantity, or change the shipping location.
Example
For example, say "I need to request expedited shipping for my order", "I need to change the
quantity on my order", or "I need to ship my order to a different address".
3. Verify your identity when prompted by entering your phone number on the phone keypad,
followed by the pound key.
4. Enter your soft PIN on the phone keypad, followed by the pound key.
5. Provide the order number that you want to change when prompted.
Example
For example, say "I need to expedite order ORD0000523", "I need to change the quantity on
order ORD0000523", or "I need to change the shipping location for order ORD0000523".

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1637


<!-- page 1638 -->
6. Specify the details of your change when prompted, which could include the revised delivery
date for expedited delivery, the new quantity for a quantity change, or the new shipping
address for a shipping location change.
Example
For example, say "I need it delivered by the end of this week", "I need to increase the quantity
to 50 units", or "Ship it to my Boston warehouse instead".
The AI voice agent captures your request without performing inventory, quantity, or quote
validation, and then offers to create an order case for an order case agent to resolve in the
CSM Configurable Workspace.
7. Confirm when the agent asks whether you want to create a case for your order change request.
Example
For example, say "Yes, please go ahead and create the case".

Result

The AI voice agent creates an order case for your request, with a system-generated number
starting with the prefix ORDCS, and provides you with the case number over the call. Make a
note of the case number, because no email confirmation is sent for order cases that are created
through the voice channel.

Dispute invoice issues using Now Assist Virtual Assistant
Dispute invoice issues such as quantity discrepancies in a guided conversational flow using Now
Assist Virtual Assistant from the Business Portal, without needing to contact support.

Before you begin

The following applications must be installed and configured on your ServiceNow instance:
• Now Assist for Platform (sn_genai_platform)
• Now Assist for Order Management (sn_now_assist_om)
• Invoice Case Self Service (sn_invoice_case_ss)
Role required: sn_customerservice.customer

About this task

When you describe your issue on the Now Assist panel, the AI agent validates the dispute using
an Available-to-Promise (ATP) API call and presents resolution options, such as a credit note or
fulfillment of outstanding items.
If you express dissatisfaction or explicitly request human assistance at any point, the AI agent
transfers the conversation to a human agent.

Procedure
1. Log in to the Business Portal.
2. Launch the Now Assist chat panel by selecting the Now Assist icon .
Now Assist uses the context of the current page to tailor its responses and offer support. For
example, launching it from an invoice details page offers help in the context of that invoice.
3. In natural language, describe the invoice issue you want to dispute.
Example
For example, enter I want to dispute an invoice for incorrect quantity.
A list of invoices related to your account is displayed.
4. If the invoice you want to dispute is listed, confirm by responding affirmatively.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1638


<!-- page 1639 -->
Example
For example, select Proceed with ARINV0001003.
Alternatively, you can provide a different invoice number or enter product name or invoice date
to help identify your invoice.
The AI agent validates and fetches the invoice details along with the invoice lines.
5. Select the invoice line you want to dispute.
The AI agent validates the invoice line details and displays the following information:
◦ Invoice line number
◦ Product
◦ Quantity
6. If the invoice line you want to dispute is correct, select Yes.
7. Describe the issue when prompted.
Example
For example, to dispute quantity mismatch, you can enter I ordered 10 items, but
received only 9.
The AI agent validates the dispute by triggering an ATP API call. Depending on the outcome,
one of the following happens:
◦ Validated: An invoice case is created with the state set to Work in Progress and the
agent presents resolution options for the quantity discrepancy. You also receive an email
notification with the case details.
◦ Not validated: The agent notifies you that the dispute could not be confirmed. If you disagree
with the outcome, you can request to chat with a human agent.
8. If the dispute is not validated, select one of the following options.
◦ Upload a delivery note as additional proof of your claim.
◦ Connect with a live agent for further assistance.
9. If you opted to upload a delivery note, upload the document when prompted.
Supported formats include PDF, JPG, and PNG. The maximum file size is 5 MB.
The AI agent uses extracts the following details from the uploaded document:
◦ Invoice number
◦ Order number, if available
◦ Description
◦ Product offer or sold product
◦ Quantity
The AI agent compares the received quantity on the delivery note against the invoiced
quantity.
10. If the dispute is validated, select a resolution option for the quantity discrepancy.
Option

Description

Receive a credit note for the missing quanti­
ty

Request a credit for the disputed quantity

Receive or order the remaining quantity

Request delivery of the remaining items

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1639


<!-- page 1640 -->
If you're not satisfied with the resolution options, you can request to be transferred to a human
agent. The AI agent uses sentiment analysis to detect dissatisfaction. You can also explicitly
ask to chat with a human agent. For example, you can enter I'd like to speak with
an agent or select Connect with a live agent.
Depending on the resolution option you select, a credit note is issued or an order for the
outstanding items is created. The invoice case state is updated to Closed.

Result

When the dispute is resolved, an email notification is sent to you with a summary and a hyperlink
to the case.
Related topics
Resolve invoice disputes using agentic workflow

Dispute invoice cases via calls
Use the AI voice agents to create and manage cases for invoice-related issues such as disputing
order quantity with voice calls.

Before you begin

Role required: sn_customerservice.customer

Procedure
1. Call the customer support number of the B2B seller.
2. When connected to the Voice AI agent, state your intent to dispute an invoice.
Example
For example, say I want to dispute an invoice or I have an issue with the quantity in my invoice.
3. Provide the invoice number associated with the issue when the agent asks for it.
4. State the dispute reason when prompted.
Example
For example, say The quantity on the invoice is higher than what we received.
5. Confirm the invoice line or lines affected by the dispute.
6. Review the dispute summary read back by the agent and confirm that the details are correct.
Example
For example, say Yes, that's correct to confirm.

Result

The AI voice agent then creates an invoice case corresponding to the disputed invoice, and
provides the invoice case number to the customer over the phone call.

Resolve invoice disputes using agentic workflow
Resolve invoice dispute cases using Now Assist directly from the CSM/FSM Configurable
Workspace.

Before you begin

The invoice dispute assist agentic workflow must be made available on the Now Assist panel.
For more information, see Make the invoice dispute assist workflow available in the Now Assist
panel.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1640


<!-- page 1641 -->
Now Assist for CSM must be installed to enable generative AI capabilities in the CSM/FSM
Configurable Workspace. For more information, see Install Now Assist for Customer Service
Management (CSM) .
Chat Summarization must be configured to use the summarization and recommendation
features. For more information, see Configure chat summarization .
Role required: awa_agent, sn_csm_invoice.agent, sn_otc.accounts_receivable_agent, and
now_assist_panel_user

About this task

When a customer escalates an invoice dispute to a human agent either through a Virtual
Assistant handoff or by contacting support directly, you can launch the Now Assist panel from
the CSM/FSM Configurable Workspace to help accelerate resolution. The invoice dispute
assist agentic workflow fetches the invoice case details, finds similar resolved cases, validates
the dispute using an API call, and guides you through closing the case with the appropriate
resolution.
When a customer is transferred from the Virtual Assistant, the interaction record opens
automatically with a conversation summary, giving you full context of the dispute discussed on
the Virtual Assistant side.
You can also use the summarize and chat recommendation features in the Active Chat to
improve productivity. For more information, see Summarize a chat conversation by using Now
Assist for Customer Service Management (CSM)
and Generate a chat reply recommendation
by using Now Assist for Customer Service Management (CSM) .

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. If you're assisting a customer via the live chat, accept the chat.
a. Select the Inbox icon

.

b. Change the status to Available to be able to accept the live chat.
c. Join the chat by selecting Accept.
The Active Chat panel opens with an AI-generated summary of the conversation between
the AI agent and the customer, including the disputed invoice number and the issue
described by the customer. The associated interaction record opens alongside.
d. Access the invoice case details by selecting the Related Tasks tab.
The case number, priority, state, and short description details are displayed for the
associated invoice case.
3. Launch the Now Assist panel by selecting the Now Assist icon .
The Now Assist panel is context-aware. When you launch it from an open interaction record or
invoice case record, it tailors its responses to that record.
4. Launch the invoice dispute assist agentic workflow using either methods.
◦ Select the Invoice Dispute Assist pill in the Now Assist panel.
◦ Type your query in natural language, for example, Help me resolve this invoice
dispute.
The invoice dispute assist agentic workflow invokes the invoice dispute support assistant AI
agent. The AI agent fetches the invoice case and prompts you to confirm if it's valid.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1641


<!-- page 1642 -->
5. If the invoice case fetched by the AI agent is correct, select Yes.
Otherwise, enter the invoice case you need help with.
The AI agent validates the invoice case and then provides you the options for resolving the
case.
6. Select Find similar cases to view previously resolved cases with a similar dispute pattern.
The AI agent lists similar cases from the same account, matched by common dispute types
and resolution patterns, such as credit note or replacement order, to help you determine the
appropriate course of action.
7. Select Validate invoice dispute to verify the customer's claim.
The AI agent triggers an ATP API call to cross-check the claimed quantity against delivery
records and returns a validation status. If delivery records are unavailable, the AI agent
validates the dispute against the original order line quantity. If validated, the invoiced and
delivered quantities are displayed for your review.
8. Optional: Select View invoice details to review the invoice number, status, account, and
associated invoice lines before closing the case.
9. If everything looks good, select Close the case and choose a resolution option.
◦ Select Issue a credit note for the missing quantity to generate a credit for the disputed
quantity.
◦ Select Place an order for the remaining quantity to fulfill the outstanding items.
◦ Select Close the case as invalid dispute if the validation confirms that the customer's claim
is invalid or not supported.
The invoice case State is changed to Closed and the Resolution code is auto-populated
depending on the resolution. Based on the selection, credit note number or order details are
posted to the Resolution notes and Work notes of the invoice case.

Result

When the dispute is resolved, the invoice case is closed with the resolution details documented
in the case notes, and an email notification is sent to the customer with a summary and a
hyperlink to the case.
Related topics
Using Now Assist for Customer Service Management (CSM)
Summarize a chat conversation by using Now Assist for Customer Service Management
(CSM)

View customer context for an order exception chat
View the customer's account and contact details on the interaction record and the AI-generated
chat summary in the Active Chat panel when the order exception AI agent hands off a chat to a
live agent in the CSM/FSM Configurable Workspace.

Before you begin

Chat Summarization must be configured by your admin to enable the AI summarization
and recommendation features in Active Chat. For more information, see Configure chat
summarization .
Role required: sn_order_case.order_agent, awa_agent, and now_assist_panel_user

About this task

When a customer's chat for an order exception is escalated to a live agent, the agent can accept
the chat from the CSM/FSM Configurable Workspace Inbox. After the agent accepts the chat, the
Active Chat panel opens with an AI-generated summary of the conversation between the order
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1642


<!-- page 1643 -->
exception AI agent and the customer, and the associated interaction record opens alongside
with the customer's account and contact details already populated.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Accept the order exception chat from the Inbox.
a. Select the Inbox icon

.

b. Change the status to Available so that you can accept the live chat.
c. Join the chat by selecting Accept.
The Active Chat panel opens with an AI-generated summary of the conversation between
the order exception AI agent and the customer. The associated interaction record opens
alongside, with the customer's Account and Contact fields populated from the chat that the
customer initiated on the Business Portal.
3. Review the AI-generated chat summary in the Active Chat panel to understand the customer's
request and what the order exception AI agent has done so far.
Related topics
Order Operations Case Management

Manage order updates with Now Assist
Use Now Assist for Order Management to manage order updates, such as applying bulk changes
to order line items, removing order lines, or creating an order case, without navigating between
individual records.

Before you begin

Role required: sn_ind_tmt_orm.order_agent.

About this task

The Order Assistant Agent is a context-aware assistant that works inside the order workspace
and helps order agents perform order updates while working on a single order. In this task, you
can use Now Assist for Order Management to:
• Bulk apply a discount to all order lines.
• Update the shipping address for all order lines.
• Update quantity for order lines.
• Delete order lines.
• Create order case.
Some bulk update actions offer an undo option immediately after the change is applied. Undo
is available only within the current Now Assist chat and only for supported actions, such as
updating quantity or shipping address.
Bulk quantity updates apply to top-level (parent) order lines. Child order lines reflect the change
through the parent relationship and aren’t updated directly.
The actions available in Now Assist depend on the current state of the order.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1643


<!-- page 1644 -->
Order state

Actions available to the order agent

Draft

• Bulk update quantity
• Update shipping address
• Apply bulk discount
• Delete an order line item

New

• Bulk update quantity
• Update shipping address
• Apply bulk discount
• Delete an order line item
• Create case for order
• Create a case for order lines

Acknowledged

• Create case for order
• Create case for order lines

Note: For best results, start a new Now Assist chat for each bulk action. Long
conversations can reduce accuracy overtime.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Select the List

icon.

3. Navigate to Orders > All
4. Select an order.
5. Select the Now Assist

icon to launch the Now Assist panel.

6. In the Now Assist panel, start Assistance for orders (Order Assistant Agent).
7. If prompted, confirm the order number (or enter a different order number).
8. Choose the order update that you want to perform.
Action

What to do in Now Assist

Bulk update quantity

a. Enter the new quantity value when prompt­
ed.
b. Confirm the bulk update.

Bulk update shipping address

a. Provide the complete shipping address
when prompted.
b. Confirm the bulk update.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1644


<!-- page 1645 -->
Action

What to do in Now Assist

a. Enter the discount percentage when
prompted.
Apply bulk discount

b. Choose how to handle lines with manual ad­
justments (if prompted).
c. Confirm the bulk update.

Delete order line

Specify the top-level order line you want to re­
move when prompted, then confirm the dele­
tion.

Create Order case

Describe the issue with the order when
prompted, review the generated summary,
then confirm to create the order case.

9. Review the order lines to verify the update was applied.

What to do next

After updating quantity or shipping address, you can keep the changes or undo them when
prompted.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1645


