# Zurich Sales and Order Management — Enable manage order operations agent / Create ATP API calls / Summarize an order

Source: servicenow-zurich-order-management-enus.pdf | Release: zurich | Pages: 1403–1408 of 1408

Sections: Enable manage order operations agent (p1403); Create ATP API calls (p1404); Use (p1405); Summarize an order (p1406); AI agents in Order Management (p1407)

---

<!-- page 1403 -->
Default and Custom roles:
◦ If no changes are made, the default role sn_ind_tmt_orm.order_agent automatically appears
in User access - Access Control List (ACL).
◦ Select Roles to apply role restrictions whenever the skill is invoked, defining which data and
resources (for example, tables) it can access in Role restrictions to skill.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in the Define Access step, you must manually
select it in Select Display to make it active.

9. Configure In-product desktop to display the order summarization for Order Management.
a. Select In-product desktop to display Now Assist skills on the forms and workspaces.
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
Role masking
enables users to limit the roles and privileges of AI agents during tool execution.
AI agents that get installed with Now Assist applications are assigned pre-defined roles. If you
select Users with specific roles for user access, you must configure the security
controls to include these roles. Data access settings must also include these roles. For the
instructions to change the security controls, see Define security controls for an AI agent .
Role required: sn_aia.admin

Procedure
1. Navigate to All > AI Agent Studio > Create and manage.
2. On the Manage agentic workflows and AI agents page, select the AI agents tab.
3. Select the Manage order operations agent to start configuring it.
4. On the Define the specialty page, select Save and continue.
5. From the navigation pane, select Select channels and status.
6. On the Select channels and status page, set the Engage via Virtual Agent assistants option to
Allow.
7. Select a virtual assistant that this AI agent should be made discoverable in from the Choose
chat assistants.
For this use case, select Now Assist in Virtual Agent (Default).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1403


<!-- page 1404 -->
8. Optional: Promote the agent to add it to the list of promoted topics.
a. Navigate to All > Conversational Interfaces > Virtual Agent > Designer.
b. On the Assistant Designer, select the AI agents tab.
c. Select Promoted from the More actions icon

for the Manage order operations agent.

Result

The chat assistant is activated in the Business Portal.
Related topics
AI Agent Studio
Promote or demote LLM conversational subflows, actions, and topics in Virtual Agent
Designer
Assistant Designer Asset library

Configure ATP API for the manage order operations agent
Create an Available-to-Promise (ATP) API call that enables the manage order operations agent
to check product availability and determine the earliest possible delivery date when customers
request expedited shipping.

Before you begin

The application scope must be set to Order Exception AI Agents.
Role required: admin

About this task

The demo data for the manage order operations agent includes a sample implementation called
orderExpeditionCheckDemo as part of the sn_ord_ops_aias.orderExpeditionCheckEP extension
point. To enable real-world functionality such as checking on-hand quantities and delivery dates
from external Enterprise Resource Planning (ERP) systems like SAP or Oracle, you should replace
the demo data implementation with your custom ATP API.

Procedure
1. Log in to the ServiceNow instance.
2. Navigate to All > Scripted Extension Points > Scripted Extension Points.
3. Search for the sn_ord_ops_aias.orderExpeditionCheckEP scripted extension point in the API
Name field.
4. Select sn_ord_ops_aias.orderExpeditionCheckEP to view the sample script included in the
demo data.
5. Select the Create implementation related link to create your own implementation of the
sn_ord_ops_aias.orderExpeditionCheckEP extension point.
6. On the Script Include orderExpeditionCheckEP form, fill in the fields.
For a description of the Script Include form fields, see Script includes

.

7. Edit the getAvailability function in the script to implementate your own logic for checking
product availability and delivery dates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1404


<!-- page 1405 -->
Function name Description

getAvailability

Input and output

Placeholder function meant
to be overridden. Use this
placeholder to implement
the logic to:

Input: The getAvailability function takes
the order number of the Customer order
record and the revised date requested by the
customer as input.

◦ Query external inventory
or ERP systems.

Output:

◦ Determine if the product is
available.

{
"isAvailaible": <true/false
– denotes if stock is
available>,
"earliestDelivery": <earliest
delivery date in yyyy-MM-dd
format>,
"isError": <true/false –
denotes if there is any
failure in the API call>,
"errorMessage": <error
message string in case of
failure>

◦ Calculate the earliest
delivery date based on the
requested date and stock
levels.

}
8. Select Update.
9. Optional: Validate your implementation by requesting order changes from the Business Portal
using the Now Assist Virtual Assistant.
For more information, see Request order changes using Now Assist for Order Management.
Related topics
Using extension points to extend application functionality
Creating and adding a scripted extension point

Using Now Assist for Order Management
Use agents in an agentic workflow or as standalone agents to achieve specific automated
outcomes.
If you have an agent role, you can summarize the order details and generate the order resolution
notes with the Now Assist for Order Management application.
Summarize complex orders across products, services, and fulfillment tasks, enabling agents to
quickly understand status, take the right actions, and avoid navigating fragmented views to make
next steps easier and improving productivity.

Standalone AI agents
There might be AI agents installed with the Now Assist application that are not used in agentic
workflows. To learn how to see all agents that are available to you, see Find AI agents .
For information on the standalone Order Management AI agents, see Standalone agents in
Order Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1405


<!-- page 1406 -->
Summarize an order using Summarization for Order Management
Generate a summary of a complex order for faster, more accurate decision-making and improved
customer responsiveness.

Before you begin

Role required: sn_ind_tmt_orm.order_agent, sn_ind_tmt_orm.order_fulfilment_agent
For admin, when both the skills are active, the order capture skill takes precedence.

Procedure
1. Navigate to Workspaces > CSM Configurable Workspace and open a Customer
Orders.
2. In the Customer Order summary by Now Assist, select Summarize.
The Customer Order summary by Now Assist appears above the activity stream. The
component is collapsed by default and expands to display the summary. For longer summaries
that don't fit in the window, select View more and use the scroll bar to view the rest of the
content.

Note: Generating and displaying the summary may take several seconds.
3. Optional: When you're finished summarizing an order, you can add it to the work notes,
expand or collapse it, provide feedback, copy it, or view information about it.
Option

Procedure

a. Select Share to work notes.
Save the summary information by adding it
to the work notes

b. In the Share summary as Work notes dialog
box, edit the summary.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1406


<!-- page 1407 -->
Standalone agents in Order Management
Use AI agents in Order Management to complete sales and order-related tasks autonomously.

Standalone agents in Order Management
The manage order operations agent is available in the Now Assist for Order Management
application. You can enable AI voice agents and provide a conversation experience to customers
via phone. For more information, see Deploy AI voice agents .

Request order changes using Now Assist for Order Management
Request expedited delivery for your order in natural language using the Now Assist Virtual
Assistant on the Business Portal.

Before you begin

The following applications must be installed and configured on your ServiceNow instance:
• Now Assist for Platform (sn_genai_platform)
• Now Assist for Order Management (sn_now_assist_om)
• Order Case Self Service (sn_ord_case_ss)
A working Available-to-Promise (ATP) API call must be configured to query your external
inventory systems. For more information, see Configure ATP API for the manage order operations
agent.
Role required: sn_customerservice.customer

About this task

When you submit a request through the Virtual Assistant, the AI agent performs the following
actions behind the scenes to help you quickly and efficiently:
• Checks account information and order history.
• Validates the intent of the request. For example, if you enter expedite in the Virtual Assistant,
the AI agent confirms that you’re requesting expedited order delivery for your open orders.
• Confirms the order number and your change request.
• Calls the external ATP API to validate inventory availability and feasibility of the request. For
example, the AI agent makes an ATP API call to an external ERP system to check if the ordered
item is in stock for early delivery.
• Creates an order case in the ServiceNow system with requested details. If ATP call fails and
the customer request is not feasible to fulfill, the AI agent still creates an order case so that the
order case agent can review the request in the CSM Configurable Workspace and provide a
resolution.
• Posts the summary of the conversation as a work note in the the order case, which can only be
viewed by the agents from the CSM Configurable Workspace.

Procedure
1. Log in to the Business Portal.
2. Select the Now Assist icon

to launch the Now Assist chat panel.

3. In natural language, submit a request that you would like for your order.
Example
For example, enter "Please expedite my order".
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1407


<!-- page 1408 -->
4. If your request is interpreted correctly by the AI agent, provide your confirmation.
Example
You can enter "That's correct" in the response.
5. Verify the order details that are displayed and specify an order that you’re requesting changes
for.
6. Specify a date thatyou want your order to be delivered or provisioned by.
The manage order operations agent validates whether your order can be expedited and
fetches the earliest possible delivery date by triggering an ATP API call.
7. When asked about the feasible options, accept or reject the proposal in natural language.
The AI agent creates an order case with a system-generated number starting with the prefix
ORDCS. It also provides the order case link that you can select to view the order case details
on the Business Portal.
Related topics
Configure Now Assist for Sales and Order Management (SOM)

Using the AI voice agents for Now Assist for Order Management
Use the AI voice agents to create and manage cases for any order-related issues such as
expediting orders with voice calls.

Managing order-related issues using AI voice agent
Using the manage order operations AI voice agent, you can do the following:
• Expedite order delivery dates for orders that are not in the Draft state
• Use generic keywords such as Expedite delivery or Faster delivery and get responses from an
agent in the context of your questions
The AI voice agent then creates an order case based on an agreement of proposed delivery
dates with the customer, and shares the order case number with the customer over the phone
call.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1408


