# Australia Sales Customer Relationship Management — Now Assist for SFA

Source: servicenow-australia-order-management-enus.pdf | Release: australia | Pages: 1592–1606 of 1645

Sections: Now Assist for SFA (p1592); Explore (p1594); Configure (p1596); Use generative AI (p1598); Use agentic workflows (p1604)

---

<!-- page 1592 -->
U
unit of measure
Standard quantity/increment defining product offering amounts.
up-sell
Sales strategy encouraging customers to upgrade products.
upside
Opportunities with potential to close but lower certainty.

V
versioning
Tracking or managing different versions of entities in Sales Customer Relationship
Management.
volume pricing
Pricing adjustments based on item quantity.
For more information, see Configure volume pricing.

W
weighted amount
Total revenue adjusted by the probability percentage of closing the opportunity.
win rate
Performance metric reflecting successfully closed opportunities as "Won" compared to the
total number of opportunities.
won
Forecast category for successfully closed opportunities.
workflow
Defined sequence of steps automating processes in Sales Customer Relationship
Management.

X
Y
Z

Now Assist for Sales Force Automation (SFA)
®

Now Assist for Sales Force Automation (SFA) application packages ServiceNow platform AI
capabilities to deliver AI-powered insights and automation to drive faster, smarter sales and
order processes.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1592


<!-- page 1593 -->
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

Get started

Explore

Configure

Use

Learn more about
Now Assist for SFA

Configure the Now
Assist for SFA
application to get started

Use the Now Assist for
SFA AI agents to complete
tasks autonomously

Note: Depending on your license, you will have access to certain application features,
generative AI skills, agentic workflows, and AI agents. For more information, see
ServiceNow product tiers .

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

1593


<!-- page 1594 -->
Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to develop and improve ServiceNow technologies including ServiceNow
models and AI products. Customers can opt out of future data collection at any time, as described in the Now Assist Opt-Out page

.

Exploring Now Assist for SFA
With the Now Assist for Sales Force Automation (SFA) application, sales agents can manage
the lifecycle of leads by automating outreach, follow-up communications, demo bookings, and
handling lead disinterest or opt-outs. It can operate independently or under human supervision,
thereby streamlining engagement and demo scheduling.

Now Assist for Sales Force Automation (SFA) overview
Sales agents use the Now Assist for Sales Force Automation (SFA) AI agent collection to
complete these tasks autonomously:
1. Follow-up/Nudge Emails: Automated follow-ups at defined intervals if leads do not respond,
with escalation to sales agents for disqualification.
2. Demo Booking/Rebooking/Cancellation: Reviews lead email replies to book, reschedule, or
cancel demos, checking sales agent calendars and sending confirmations.
3. Lead Disinterest/Opt-Outs: Identifies disinterest or opt-out requests from emails, updating lead
status and ensuring compliance (for example, unsubscribe links).

Now Assist for Sales Force Automation (SFA) users
User

Description

Sales Manager/Admin

Configure the AI agents.

Sales Agent

Access to Now Assist Panel.

Now Assist for Sales Force Automation (SFA) benefits
• Accelerates sales and order processing.
• Improves accuracy and reduces operational risk.
• Enhances user productivity with intuitive AI support.

Now Assist for Sales Force Automation (SFA) skills
The Now Assist for Sales Force Automation (SFA) application includes the generative AI skill
that produces concise, structured summaries of opportunities in the CRM Workspace. The
opportunity summarization provides sales representatives and managers an immediate view of
key details without reviewing multiple records.
The opportunity summary draws from the following related tables by default:
• Opportunity and opportunity line items
• Activity data: touchpoints, appointments, meetings, emails, work notes, and tasks
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1594


<!-- page 1595 -->
• Opportunity competitors and contacts
• Account or consumer table
The opportunity summary appears on the Overview page and includes the following sections:
Opportunity overview
Key details including the short description, opportunity amount, stage, account
name, and the top three line items by value. For closed opportunities, the summary
includes the outcome: won opportunities show the signed date; lost opportunities
show the lost reason, competitor, and close date.
Customer needs and pain points
The top two customer needs or pain points identified from the opportunity
description, business goals and pain points from emails, and work notes. When
sources conflict, the most recent email or work note takes precedence. The source
of each need or pain point is included in the summary.
Recent and upcoming activity
The most recent activity from touchpoints or emails, with its date and a brief
description. Also includes the next open task with its due date, or the next
scheduled touchpoint or meeting.
Risks detected from activity
Up to two risks identified from recent emails, meetings, touchpoints, and tasks.
Each risk includes the source. Risk types include unresolved technical concerns,
budget uncertainty, timeline pressure, competitor activity, negative sentiment, price
objections, and reduced scope.

CRM conversational query
CRM conversational query is an AI agent embedded in the Now Assist panel. You can ask
questions and issue commands in plain language and the agent performs the action without you
opening a form.
The agent is accessible via MCP clients (such as Claude) through the Sales CRM MCP server,
which is published in Sales common. For information on how to connect to an MCP server from
an MCP client, refer Connecting to an MCP server from an MCP client .
The agent supports the following operations on opportunity records and related entities,
including contacts, tasks, touchpoints, meetings, line items, and competitors:
• Retrieve: view pipeline snapshots, opportunity details, tasks, touchpoints, contacts, accounts,
and opportunity lines.
• Update: change field values on opportunities and related records. Multi-field updates (up
to five fields in one prompt) and relative date expressions such as "end of next month" are
supported.
• Create: add opportunities, contacts, tasks, touchpoints, and competitors.
• Delete: remove junction or child records such as opportunity competitors and associated
contacts. Parent records such as the opportunity itself, the contact record, or the product are
never deleted.

What to explore next
To learn more about configuring and using Now Assist for Sales Force Automation (SFA), see:

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1595


<!-- page 1596 -->
• Configure Now Assist for Sales Force Automation (SFA)
• Use agentic workflows in Now Assist for Sales Force Automation (SFA)

Configure Now Assist for Sales Force Automation (SFA)
If you have the admin role, you can configure the Now Assist for Sales Force Automation (SFA)
application so that agents can use the generative AI capabilities in the CSM Configurable
Workspace.

Before you begin

Use the Now Assist Admin console to configure Now Assist for Sales Force Automation
(SFA). This console contains everything that you need to install the plugins and configure the
generative AI skills. For additional information, see Overview tab in Now Assist Admin .
Role required: admin

Procedure
1. Log in to the ServiceNow instance.
2. Install the Now Assist for Sales Force Automation (SFA) plugin (sn_som_gen_ai).
For information about the installation process, see Install Now Assist plugins .

Customize the opportunity summarization skill in Now Assist for SFA
Configure the opportunity summarization skill to generate AI-powered opportunity summaries in
the CRM Workspace, including which data sources and fields contribute to the summary.

Before you begin

Use the Now Assist Admin console to configure the opportunity summarization skill. For
additional information, see Overview tab in Now Assist Admin .
Role required: admin

Procedure
1. Navigate to All > Now Assist Admin > Now Assist Skills.
2. In the Sales workflow group, locate the opportunity summarization skill for Now Assist for SFA.
3. Create a copy of the skill to customize.
a. Select the More actions icon
for the Opportunity Summarization skill, then select Make
a copy.
The copy is listed in the All section.
b. On the copied skill, select Activate skill to open and configure it.
A guided setup leads you through General details, View opportunity input, Customize
prompt output, Define availability, Define access, Select display, and Review and activate.

Note: Only one version of a skill can be active at a time. Activating a copy deactivates
any previously active version of the skill.
4. In the General details step, enter a name and description for the skill, then select Save and
continue.

Note: The More details on the skills fields are read-only.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1596


<!-- page 1597 -->
5. Configure the base input table fields and related data sources for the skill.
The skill uses the Opportunity [sfa_opportunity] table as its base input table. Select only those
related tables that are available in the base system as part of the input data.
The following table lists the base input fields and descriptions.
Base input fields
Field

Base input field

Description

Field in the base input table whose value the
skill uses in its response.
For example, Number.

Field description

Description of the base input field value.
For example, Opportunity number.

a. Select +New base input field and configure the fields for the opportunity input template.
Add multiple base input fields as needed.
b. Configure rule conditions using the condition builder to filter the data for the input template.
Rule conditions determine when the input template is used. Select New condition set to add
additional parameters.
c. Add additional data sources by selecting New data source for each related table to include,
such as opportunity line items, emails, tasks, touchpoints, meetings, work notes, contacts,
competitors, and the account table.
Adding related table data sources provides more context to the AI model and improves
summary quality.
The selection of related table fields directly affects the quality of the generated summary.
d. Select Save and continue.
6. Customize the prompt output.
Review and test the default prompt. To customize prompts, select Edit prompt in Now Assist
Skill Kit. For more information, see Now Assist Skill Kit .
a. Select a record in the Test output section and test the prompt response by selecting Run
Test.
b. Select Save and continue.
7. Define when the skill is available to users in the Define availability section.
a. Configure the skill to be available to all users, or select Customize skill availability to set
conditions using the condition builder.
Select New condition set to add additional conditions as needed.
b. Select Save and continue.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1597


<!-- page 1598 -->
8. Specify which users can access the skill in the Define access section.
Select Roles to restrict skill access by role. If you add a role in this step, you must also select it
in the Select display step to make it active.
9. Configure the In-product desktop field to display the opportunity summary in the CRM
Workspace.
a. Select In-product desktop to display the skill on opportunity forms and workspaces.
Select the arrow to identify which roles can use the skill in-product.
b. Select Save and continue.
10. Review your configuration and select Activate to complete the skill setup.
The opportunity summary appears on the Overview page of each opportunity in the CRM
Workspace.

Using generative AI in Now Assist for Sales Force Automation
(SFA)
Now Assist for Sales Force Automation (SFA) includes a generative AI skill that summarizes
opportunities in the CRM Workspace. The summary synthesizes emails, meetings, touchpoints,
work notes, and line items into a deal overview. In domain-separated environments, the skill uses
only data within the user's domain.

Skills reuse
By default, all skills are in the global domain. When you use Now Assist in a domain-separated
environment, users can only access data within their domain. For example, if a user uses the
summarization skill, Now Assist only uses material that exists within the user's domain when
generating that summary. Additionally, there is no co-mingling of data for domain-separated
instances when using generative AI skills. The data resides only on the instance, and the shared
services used for generative AI do not continue any requests (prompts) and responses. For more
information, see Domain separation in the Now Assist Admin console .
The Now Assist for Sales Force Automation (SFA) application includes the generative AI skill that
produces concise, structured summaries of opportunities in the CRM Workspace. Opportunity
summary is an AI-generated panel on the opportunity overview page that synthesizes emails,
meetings, touchpoints, work notes, and line items into a concise deal overview. Use opportunity
summary to:
• Understand the current state of a deal at a glance, without opening multiple records.
• Surface the top customer needs and pain points identified across recent emails and meetings,
with inline source attribution.
• Review the most recent and upcoming activity on an opportunity in a single view.
• Share deal context quickly by copying the summary or pushing it to work notes.
• Keep summaries current by refreshing on demand to reflect the latest opportunity data.

Summarize an opportunity using Now Assist for SFA
Generate an AI-powered summary of an opportunity in the CRM Workspace to get an immediate
view of key details, customer needs, recent activity, and risks without reviewing multiple records.

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1598


<!-- page 1599 -->
Before you begin

Note: The opportunity summarization skill must be active before users can generate
summaries. Contact your admin if the Opportunity Snapshot panel does not appear on the
Overview page.

Role required: sn_sfa.sales_rep, sn_sfa.sales_manager

Procedure
1. In the CRM Workspace, open the opportunity to summarize.
2. Select the Overview tab.
The Opportunity Snapshot panel appears and displays the AI-generated summary. The
summary loads automatically when the page opens. Generating and displaying the summary
may take several seconds.
3. Optional: To generate a new summary, select Refresh in the Opportunity Snapshot panel.
Use this option after significant updates to the opportunity, such as new emails, meetings, or
changes to line items.
4. Optional: After reviewing the summary, take any of the following actions.
Option

Procedure

Select the expand icon
Expand or collapse the summary

icon
tails.

to show more or fewer summary de­

Select the helpful icon
Provide feedback on the summary

or the collapse

if the summary was

useful, or the not helpful icon
if it was not.
This feedback helps improve the AI model for
future summaries.

Copy the summary

Select the copy to clipboard icon
to copy
the summary text for use in another context,
such as an email or a note.

View summary details

Select the more info icon
to check details
about how the summary was generated.

Result

The Opportunity Snapshot panel displays a structured summary with up to four sections:
opportunity overview, customer needs and pain points, recent and upcoming activity, and risks
detected from activity. Sections without data are not displayed.

Note: The summary is generated by AI and may not reflect all available information.
Review AI-generated content before acting on it.

Manage opportunity records
Retrieve, update, create, and delete opportunity records and related CRM data from an MCP
client using plain language.

Before you begin

Role required: admin

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1599


<!-- page 1600 -->
About this task

All changes go through the same server-side business rules, validation scripts, and access
controls that apply on the standard form. Every create, update, or delete action requires explicit
confirmation before the agent commits.

Procedure
1. Connect through your MCP client.
For information on how to connect to an MCP server from an MCP client, refer Connecting to
an MCP server from an MCP client
2. Type a natural language prompt for the operation you want to perform.

Operation

Retrieve

What to type

Examples by data type:
Pipeline
"Show me all my open opportunities" or
"What's my pipeline split by stage?"
Product catalog
"Search the product catalog for enterprise
storage solutions" or "What products are
available in the networking category?"
Opportunity detail
"I'm getting on a call with <company name> —
fetch the open opportunity details."
Opportunity lines
"Show me all line items on the <company
name> opportunity" or "Fetch the products
being sold in OPTY100001."
Tasks — today
"What tasks do I have today including
overdue?"
Tasks — overdue
"Show me all my overdue tasks."
Tasks — by opportunity
"Show me all open tasks for the <company
name> opportunity."
Touchpoints
"Show me all touchpoints logged against
<company name> in the last month."
Touchpoint — notes
"Fetch my last touchpoint for the <company
name> opportunity" or "Show me the
description of the discovery call touchpoint
on OPTY100001."
Contacts

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1600


<!-- page 1601 -->
Operation

What to type

"Fetch all the stakeholders for this
opportunity" or "Who are my contacts at
<company name>?"
Competitors
"Fetch all competitors for the <company
name> opportunity" or "Who are the
competitors on OPTY100001?"
Accounts
"Show me all accounts I own."
Update

Examples by field or entity:
Opportunity lines
"Update the quantity of the Pro License on the
<company name> deal to five."
Stage
"Move the <company name> Q3 deal to
Proposal/Price Quote" or "Move OPTY100001
to the next stage."
Forecast category
"Change the forecast category on the
<company name> deal to Commit."
Close date
"Push the close date for <company name> to
end of next month." Relative expressions such
as "Q3 end" or "next Friday" are supported.
Close dates can't be set in the past.
Deal size
"Set OPTY100001 amount to 350K."
Formatted inputs such as $350,000 and
0.35M are supported.
Work notes
"Add a note to <company name>: 'Budget
confirmed, decision in 30 days.'" Notes are
appended and never overwritten.
Custom or default fields
"Set next steps on <company name>: 'Send
revised proposal by Friday'" or "Update loss
reasons on OPTY100001."
Multi-field (up to five fields)
"Update <company name>: stage to
Negotiation, close date to June 30, forecast to
Commit."
Owner
"Reassign the <company name> deal to Alex
Johnson."

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1601


<!-- page 1602 -->
Operation

What to type

Contact role
"Change Alex Smith's role on <company
name> from Influencer to Decision Maker."
Competitor details
"Mark Salesforce as the incumbent on
the <company name> opportunity" or
"Set Oracle's incumbent status to false on
OPTY100001."
"Update the product family for Salesforce on
the <company name> deal to Sales Cloud."
"Set the product offering for Oracle on
OPTY100001 to Fusion CRM."
Task — close
"Mark my <company name> follow-up task as
complete."
Task — notes
"Add a note to my <company name> call task:
'Left voicemail, retry Thursday.'"
Task — reassign
"Reassign my <company name> follow-up
task to Alex Johnson."
Touchpoint — complete
"Mark my <company name> touchpoint from
yesterday as completed."
Touchpoint — outcome
"Set the outcome of my last <company name>
call to Positive."
Touchpoint — notes
"Update the notes on the last <company
name> call: 'Champion requested a revised
proposal.'"
Contact fields
"Update Alex Smith's mobile to +1-555-0199"
or "Change Alex Smith's title to Chief
Procurement Officer."
Create

Examples by record type:
Opportunity
"Create a new opportunity for <company
name>, $200K, closing in June." The account
must already exist; if it's not found, the agent
asks you to clarify.
Opportunity lines

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1602


<!-- page 1603 -->
Operation

What to type

"Add the Enterprise Storage 10TB product to
the <company name> opportunity" or "Add
two units of the Pro License to OPTY100001."
Opportunity competitor
"Add Salesforce as a competitor on the
<company name> deal" or "Add Oracle to the
competitor list for OPTY100001 with product
family CRM."

Note: The agent prevents duplicate
competitor entries on the same
opportunity.
Opportunity contact with role
"Add Jane Smith as the economic buyer on
<company name>." If the contact doesn't
exist, the agent asks whether to create one.
Opportunity task
"Create a follow-up task on <company name>
for next Monday." Relative due dates such as
"next Thursday" are supported. The task is
assigned to you by default.
Touchpoint — call or meeting
"Log a 30-minute discovery call with Jane
Smith at <company name> today."
Touchpoint — notes
"Add a note to my <company name>
touchpoint from yesterday: 'Budget
confirmed, decision expected in 30 days."
Contact
"Create a contact: John Doe, VP Sales at
<company name>, john@abcd.com."
Delete

Supported operations:
Opportunity lines
"Remove the Basic Support package from the
<company name> opportunity."
Opportunity competitor
"Remove Salesforce from the <company
name> competitor list" or "Delete Oracle as a
competitor on OPTY100001."
Opportunity associated contact
"Deactivate Jane Smith from the <company
name> opportunity" or "Disassociate John
Doe from OPTY100001."

3. Optional: Provide any additional information the agent asks for.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1603


<!-- page 1604 -->
Note:
◦ For create operations, the agent asks for missing mandatory fields one at a time.
◦ For update operations, it resolves ambiguous record references by asking you to select
from a list.
◦ Field-type validations run before any change is committed; if a value is invalid, the
agent returns an error and suggests a correction.
4. For create, update, and delete operations: review the confirmation card and confirm to commit.

Note: The confirmation card shows what will change before anything is saved or
deleted. For update operations, it shows the old and new value for each field. Retrieve
operations return results directly without a confirmation step.
The agent performs the operation and returns the result. For create operations, it returns the
record name and a link. For delete operations, it confirms the record was removed. If you don't
have the required access, the agent returns a permission denied message.

Use agentic workflows in Now Assist for Sales Force Automation
(SFA)
Use the Now Assist for Sales Force Automation (SFA) AI agent collection to complete tasks
autonomously.
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
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1604


<!-- page 1605 -->
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
There might be AI agents installed with the Now Assist application that are not used in agentic
workflows. To learn how to see all agents that are available to you, see Find AI agents .

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

Help nurture new leads AI agents
The following table lists the Help nurture new leads AI agents.
© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1605


<!-- page 1606 -->
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

© 2026 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1606


