# Zurich Customer Service Management — Now Assist for CSM

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 2222–2334 of 2452

Sections: Now Assist for CSM (p2222); Explore (p2224); Configure (p2235); Use generative AI skills (p2291); Use agentic AI in CSM (p2323)

---

<!-- page 2222 -->
If you're an agent (sn_customerservice_agent) or a manager (sn_wfo_csm.manager), you both
can use real-time notifications from the application to take action on an issue. Before you can
do so, you must activate the Customer Service Mobile Plugin (com.sn_csm_mobile). For more
information about the Now Mobile for Customer Service Management, see Mobile experience for
Customer Service Management
• To get started with this application, follow the instructions in Get started with the Customer
Service mobile application.
• You can learn about the agent and manager tasks that you can perform in Use the mobile
application to perform agent and manager tasks. Additionally, you can also perform the
following tasks for Workforce Optimization for Customer Service.
Agent tasks
Agent tasks

Action

Approve or reject shift-swap
request

• Tap the notification.
• Approve or Reject the shiftswap request.

Description

Agent receives notification
that the shift swap request is
either approved or rejected.

Manager tasks
Manager tasks

Action

Approve or reject time-off
request

• Tap the notification.

Approve or reject shift-swap
request

• Tap the notification.

View critical and high priority
cases that breached SLA

Tap the notification. The case
record appears.

Description

Agent receives notification
that the time-off request is
• Approve or Reject the time- either approved or rejected.
off request.

• Approve or Reject the shiftswap request.

Agent receives notification
that the shift swap request is
either approved or rejected.

Review the case record and
take appropriate action.

Now Assist for Customer Service Management (CSM)
®

Use the ServiceNow Now Assist for Customer Service Management (CSM) application to
summarize the case information, generate the case resolution notes, and summarize the chat for
an interaction. You can enable your agents to understand the chat and case context so that they
can propose quicker resolutions to your customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2222


<!-- page 2223 -->
Get started

Explore

Configure

Learn more about
Now Assist for CSM

Configure the Now
Assist for CSM
application to get started

Use Customer Service
Management generative AI

Use generative AI
capabilities offered by
Now Assist for CSM

Use Agentic AI in CSM

Use the Now Assist for
CSM AI agents to complete
tasks autonomously

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2223


<!-- page 2224 -->
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

Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to develop and improve ServiceNow technologies including ServiceNow
models and AI products. In addition, this application will collect case information (for chat summarization, resolution notes generation, knowledge generation, call
summarization), chat transcripts (for chat recommendation), and email information (for email response). Customers can opt out of future data collection at any
time, as described in the Now Assist Opt-Out page

.

For more information, see the Now Assist documentation

.

Exploring Now Assist for Customer Service Management (CSM)
With the Now Assist for Customer Service Management (CSM) application, your agents can use
generative AI to summarize the customer chat conversations and case details to get the context
of the case. They can also generate the case resolution notes to share with the other agents and
wrap up cases faster.
Summarize a chat with Now Assist for Customer Service Management.

Now Assist for Customer Service Management (CSM) overview
The following generative AI capabilities are available for an agent:
• An interaction chat summary provides the context about the chat conversation between your
agents and customers at different points of the handoff, such as when a Virtual Agent chat
history is handed off to a live agent, or when one live agent hands off a chat history with a
customer to another live agent.
• A case summary enables an agent to gather the case context on long-running or complex
cases. Because these cases can contain a lot of information, including the conversations with
the customer or other agents, an agent can generate a summary to gain understanding faster.
• The case resolution notes can assist an agent to help wrap up cases faster and provide the
context about the case resolution to the other agents who might encounter similar issues.
• A call summary assists an agent with obtaining the key details that were discussed during the
conversations between the live agents and customers. It provides a high-level overview of the
conversation in a clear format.
• Knowledge generation can help an agent to streamline content creation. An agent can
automatically generate knowledge articles by using the relevant data from the case record
after proposing a resolution or closing the case. By not having to generate knowledge articles
manually, this feature can save your agents valuable time and effort.
• Sidebar summary captures discussions between agents, requesters, and experts, and can be
posted to case notes for further troubleshooting.
• Chat recommendation generates reply suggestions for agents using the Now Assist context
menu.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2224


<!-- page 2225 -->
• Email response generates reply suggestions for agents from existing or new emails using the
Now Assist context menu.
• Sentiment analysis helps reduce escalated cases by providing agents with the most current
sentiment on a case, based on customer interactions and the latest trends. It also offers
insights into why the sentiment is what it is today.
• Suggested steps generation resolves cases and boosts agent productivity by automatically
outlining the next best actions for unfamiliar cases in the Recommended Actions tab.
• Sentiment analysis on an account uses filters and sorting dashboards to track sentiment,
providing valuable insights and reducing escalated cases.
• Conversational subflows and actions in the Now Assist panel use natural language to trigger
subflows or actions, improving agent productivity and allowing them to complete tasks
efficiently within the panel.
• The Portal case form guides requesters through a self-service flow using Genius Results,
helping them find solutions and reducing the number of cases created.

Now Assist for Customer Service Management (CSM) skills
The Now Assist for CSM application includes the generative AI skills that enable your agents
to understand the chat and case context so that they can propose resolutions to the customer
more quickly.
Chat summarization
Provides an agent with a summary of a customer's Virtual Agent chat history,
live agent chat history, and the interaction history. Agents can view or create the
following summaries:
• Virtual Agent chat handoff summary: Summarizes the conversation when Virtual
Agent hands off a chat to a live agent and displays the summary in the Active
Chat window. An agent can view a summary of the actions that were taken by a
customer before engaging with a live agent.
• Live Agent to Live Agent handoff summary: Summarizes the conversation when a
live agent hands off a chat to another live agent and displays the summary in the
Active Chat window. An agent can view a summary of the actions that were taken
by a customer before hand off to another live agent.
• Quick action summary: Provides a summary when an agent uses the /
summarize quick action in the Active Chat window.
• Chat wrap up summary: Populates the Chat Summary and Short description
fields on the interaction record when a live agent wraps up a chat with a customer.

Note: If a chat summary isn’t available for the interaction, the Chat
Summary field doesn’t appear on the interaction record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2225


<!-- page 2226 -->
Interaction record with chat summaries

Sidebar discussion summarization
Provides an agent with a summary of the sidebar discussions between agents,
requesters, and subject matter experts. An agent can also post the summary to the
case work notes for further troubleshooting before or after the chat ends.
Sidebar discussion modal

Chat reply recommendation
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2226


<!-- page 2227 -->
Enables an agent to generate a reply recommendation from a chat using Now Assist
context menu.
The chat reply recommendation skill displays a pop-up window that an agent can
use to generate a recommendation and review it before sending it as a reply.
Now Assist context menu

Case summarization
Provides an agent with a summary of a customer service case, including the issue
and the actions taken. An agent can generate a summary of a case to understand
the case context, refresh the summary so that it includes the latest updates to the
case, and post the summary to the case work notes.
The case summarization skill generates a case summary and displays it above the
activity stream. The summary includes the information that the agent enters in the
following case record fields:
• Short description
• Description
• Work notes
• Additional comments
• Email
• Service level agreement (SLA)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2227


<!-- page 2228 -->
Case record with case summary

Email response
Enables an agent to generate an email response from an existing or new email using
Now Assist context menu.
The email response skill displays a pop-up window that an agent can use to
generate a recommendation and review it before sending it as a reply.
Now Assist context menu modal

Resolution notes generation
Enables an agent to generate the resolution notes for a case, propose the resolution
to the customer, and add the information to the case record.
The resolution notes that generation skill displays a pop-up window that an agent
can use to select a resolution code and review the resolution notes text before
proposing a resolution to a customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2228


<!-- page 2229 -->
Resolution notes generation pop-up window

Note: The resolution notes generation skill requires a minimum of 50 words
in the case record to generate the resolution notes. If the resolution notes can't
be generated, the system displays a message below the Resolution notes
field.
Knowledge generation
Enables an agent to generate a knowledge article from a case after proposing a
resolution or closing the case.
The knowledge generation skill displays a pop-up window that an agent can use
to generate a knowledge article that is based on similar cases and review it before
publishing the knowledge article draft.
Knowledge article generation pop-up window

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2229


<!-- page 2230 -->
Call summarization
Provides an agent with a call summary when the call ends and includes the main
points discussed during the call, including the issue and the actions taken. An
agent can generate a call summary of the interaction to understand the case
context and post the summary to the case work notes. An agent can view or create
the following summaries:
• Chat wrap up summary: Populates the Chat Summary and Short description
fields on the interaction record when a live agent wraps up a chat with a customer.

Note: If a call summary isn’t available for the interaction, the Chat
Summary field doesn't appear on the interaction record.

• Call summary from the Now Assist panel: Creates a summary of the conversation
between the agent and customer from the Now Assist panel by selecting
Summarize conversation.
Interaction record with call summary

Sentiment analysis on a case
Sentiment analysis helps reduce escalated cases by providing agents with the most
current sentiment on a case, based on customer interactions and the latest trends.
It also offers insights into why the sentiment is what it is today.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2230


<!-- page 2231 -->
Sentiment analysis on a case

Conversational subflows and actions in Now Assist panel
Use natural language to trigger subflows or actions, enhancing agent productivity
and allowing them to complete tasks efficiently within the Now Assist panel.
For more info, see Request the generative AI capabilities in Customer Service
Management by using the Now Assist panel.
Now Assist in Portal case form
Guide requesters through a self-service flow using Genius Results to find solutions
and reduce the number of cases created. For more info, see Using Now Assist in
portal case form.
Suggested steps generation
Suggested steps generation may help resolve cases and boost agent productivity
by outlining the next best actions for unfamiliar cases in the Recommended Actions
tab.
Suggested steps

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2231


<!-- page 2232 -->
Activity response generation
Use the activity response generation skill to automatically generate
recommendations for resolution notes, work notes, and comments. This feature
helps agents add meaningful updates to case records, improving efficiency, and
interaction. For more info, see Generate activity stream responses.
Trending topics dashboard
Get a comprehensive view of trending topics across cases along with insights
and visualizations to facilitate deeper analysis. This feature helps support teams
track trend progression, regional impact, and drill down into specific trends
using customizable filters. For more info, see View trending topics dashboard.

Sentiment analysis dashboard
Get a comprehensive view of customer sentiment across cases and
accounts. The dashboard uses Now LLM Service insights to explain sentiment
changes and lets you drill down to find root causes—helping teams take
targeted actions. For more info, see Use sentiment analysis dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2232


<!-- page 2233 -->
Now Assist in AI Search
The Now Assist in AI Search application uses Now LLM Service to extract actionable Q&A
Genius Result answers from the knowledge articles that are found in Service Portal, Virtual
Agent, Employee Center, and global searches. By using this application, an agent can improve
the customer's experience by retrieving the relevant content from the knowledge base and
generating concise answers. For more information, see Now Assist in AI Search .

Now Assist in Virtual Agent
Now Assist in the Virtual Agent guided setup can reduce the time and effort needed to deploy
Now Assist within Virtual Agent. Your administrators can configure features and skills as well
as sources of information such as knowledge bases and catalogs. For more information, see
Configure Now Assist in Virtual Agent .
With the Now Assist Multi-Turn Catalog Requests skill, your customers can engage with Virtual
Agent in a conversational manner to request catalog items. A customer can request an item and
then refine their search by providing additional information. For more information, see Multi-turn
catalog ordering .

Sensitive data handling
Personally identifiable information and other sensitive data can be masked so that it does not
appear in generative AI prompts. Placeholder text is sent with the prompt instead, and that
placeholder text is replaced with the original text after the response has been received. This
two-way masking ensures that your users see the correct values, but the Now LLM Service is not
exposed to any sensitive information. For more information, see Multi-turn catalog ordering.

Supporting information for Now Assist for Customer Service Management
(CSM)
Get a quick overview of the important information that is related to the Now Assist for Customer
Service Management (CSM) application.

Supported versions
Now Assist for CSM is supported starting with Vancouver Patch 4.

Supported language models
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI, Google
Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist skills and
AI agents. Use the Configuration Controls in AI Control Tower
to define which options are
available, then set the skill-level preferences in the Now Assist Admin console . For more
information, see Large language models on the ServiceNow AI Platform

®

.

Supported user interfaces
The Now Assist for CSM application includes the skills that are listed in the following table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2233


<!-- page 2234 -->
Now Assist for CSM supported interfaces
Interface

CSM Configurable Workspace

Skill

• Chat summarization
• Case summarization
• Resolution notes generation
• Knowledge article generation
• Call summarization
• Sidebar discussion
• Chat recommendation
• Email response
• Sentiment analysis
• Suggested steps generation
• Sentiment analysis dashboard
• Trending topics dashboard
• Activity response generation

Core UI

• Case summarization
• Resolution notes generation
• Knowledge article generation
• Sentiment analysis
• Activity response generation

Languages supported
Now Assist for CSM supports the following languages across all skills:
• German
• French
• Japanese
• Dutch
• French Canadian
• Spanish
• Brazilian Portuguese
• Italian
For more info, see Multilingual service for Now Assist applications

Role masking for Now Assist for CSM agentic workflows, AI agents, and skills
Role masking is used to restrict user access to agentic workflows, standalone AI agents, and
skills. This ensures that users only receive the permissions necessary for their tasks, enhancing
security and reducing the risk of unauthorized access.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2234


<!-- page 2235 -->
How Role Masking Works
Imagine a user assigned roles A, B, and C, where each role grants access to a specific set of
data. Normally, only if using Access Control Lists (ACLs), the user could access any data or
functions available to roles A, B, and C. With role masking applied, the user can only access data
tied to the active role, limiting exposure to unnecessary information.
Role Masking Considerations for Now Assist in CSM Skills
When a CSM skill runs, its features are initially controlled by ACL permissions, ensuring users
only access authorized data and functions. If the skill uses a Large Language Model (LLM) to
perform its task, role masking adds an extra layer of control by filtering the LLM-generated output
according to the user’s active role.
Consider a user with roles A, B, and C, each granting different privileges. If the ACLs defined in
the Case Summarization are roles A, B, and C and the masking role defined is role A, If the user
activates the Case Summarization skill, and selects Summarize, the process occurs in two steps:
1. Data Retrieval
ACL permissions for role A are applied to fetch relevant case data. This ensures the user only
sees data they are authorized to view.
2. Data Summarization
After data retrieval, an LLM summarizes the case. Role masking is then applied to the output,
tailoring the summary to the access privileges defined for role A.
By applying both ACL permissions and role masking, the system ensures a secure and granular
access control mechanism for CSM skills, protecting sensitive information while providing users
with the insights they need to perform their tasks effectively. For information on role masking,
see.

Application information
Activate the Now Assist for CSM store app (sn_csm_gen_ai) to use the chat and case
summarization skills and to generate case resolution notes.
This store app has the following dependencies:
• Customer Service (com.sn_customerservice)
• UXC Generative AI (sn_uxc_gen_ai)
Activate the applications in the following order:
1. Customer Service
2. UXC Generative AI
3. Now Assist for CSM
For more information, see Configuring Now Assist for Customer Service Management (CSM).

Configuring Now Assist for Customer Service Management (CSM)
If you have the admin role, you can configure the Now Assist for Customer Service Management
(CSM) application so that your agents can use the generative AI skills in CSM Configurable
Workspace and in Core UI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2235


<!-- page 2236 -->
Use the Now Assist Admin console to configure Now Assist for CSM. This console contains
everything that you need to install the plugins and configure the generative AI skills. For
additional information, see Overview tab in Now Assist Admin .
The following table lists the features and skills that you can access from the Now Assist Admin
console.
CSM features and skills in the Now Assist Admin console
CSM features

Chat

Skills

• Chat summarization
• Chat recommendation
• Sidebar recommendation

Case

• Case summarization
• Resolution notes generation
• Email recommendation
• Suggested steps generation
• Sentiment analysis case
• Trending topics dashboard
• Activity response generation
• Sentiment analysis dashboard

Knowledge

KB generation

Call

Call summarization

Note:
• Now LLM Service is currently the only provider for this Now Assist application's skills.
• The minimum version of the workspace required to support Now Assist for CSM features:
◦ CSM and FSM Configurable Workspace Foundation (sn_cwf_wrkspc): 24.2.1.
◦ CSM Configurable Workspace (sn_csm_wrkspc): 24.2.0.
For earlier versions, go to Application Manager

to upgrade it to a later version.

Related topics
Overview tab in Now Assist Admin
Configuring Now Assist Admin features
Using agentic AI in Now Assist for Customer Service Management (CSM)
Customer Service Management AI agent collection triage cases agentic workflow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2236


<!-- page 2237 -->
Install Now Assist for Customer Service Management (CSM)
Install required plugins and enable Now Assist for Customer Service Management (CSM) to
configure and use generative AI skills in Configurable Workspace and Core UI.

Before you begin

Role required: Admin

About this task

To get started with Now Assist, you must install at least one Now Assist application on your
instance. The Now Assist Admin console can guide your implementation, starting with
installation.
For information about the plugin dependencies and plugin activation order, see Supporting
information for Now Assist for Customer Service Management (CSM).
For information about CSM Configurable Workspace, see Set up CSM Configurable Workspace.
For information about Now Assist AI agents, see Install Now Assist AI Agents .
To access AI agents in the Now Assist panel, you need to turn on the Now Assist panel
ensure that the case summarization is active on the instance.

and

To install the Now Assist for CSM plugin (sn_csm_gen_ai), follow the procedure below.

Procedure
1. Navigate to Admin > Now Assist Admin > Settings.
2. On the Settings page, selectPlugins.
3. Select Get plugins on the card for the plugin that you want to install.
4. In the confirmation window, select Install Plugin to open the ServiceNow Store page for the
plugin in a new browser tab.
5. Install the plugin from the ServiceNow Store page.
6. Return to the Now Assist Admin console.
7. In the dialog box, select Refresh.
8. Either close the dialog box to review all of your plugins or select View all <Plugin> Assists and
Skills to review the features of your new plugin.
For more detailed information about the installation process, see Install Now Assist plugins

.

Activate Now Assist Skills
Enable Now Assist generative AI skills to provide AI-driven capabilities such as summarization,
response suggestions, and sentiment analysis.
This video provides an overview of how you can set up skills and monitor and analyze usage via
the Now Assist Admin console.
https://url.us.m.mimecastprotect.com/s/j3ebC5yz70hgOm7YWfzfZikEhy0?
domain=player.vimeo.com
Each skill is configured separately, and tailored to support agents across various platforms. The
following Now Assist skills are available to be configured for use within CSM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2237


<!-- page 2238 -->
Now Assist skill overviews
Skill

Description

Chat
Summarization

Generate condensed summaries of conversations between agents or
Virtual Agents and highlight key points for quick reference. For more
information, see Configure chat summarization.

Call
Summarization

Generate summaries of agent-customer calls within the Active Chat window
to capture key call details for better agent follow-up and record keeping. For
more information, see Configure call summarization.

Resolution Notes

Create summaries of case resolutions to help agents quickly understand
resolution details and reference notes in future similar interactions. For
more information, see Configure resolution notes generation.

Knowledge
Generation

Draft knowledge articles based on resolving case tasks for agents to review
and edit before publishing. For more information, see Configure knowledge
generation.

Chat
Help agents generate replies for chat messages based on conversation
Recommendation context. For more information, see Configure chat recommendation.
Email
Generate and refine efficient email responses based on conversation
Recommendation context. For more information, see Configure email recommendation.
Sentiment
Analysis

Analyze case sentiment, trends, and reasoning from case inputs, helping
agents resolve cases more efficiently. For more information, see Configure
sentiment analysis case.

Suggested steps

Generate suggested steps automatically by analyzing clusters of closed
cases with similar case resolution. For more info, see Configure Suggested
Steps Generation.

Sidebar
summarization

Generate a summary of Sidebar discussions between agents, requesters,
and subject matter experts quickly. For more info, see Configure Sidebar
Summarization.

Case
summarization

Summarize the case details and display this information on the case record,
helping the agents to come to speed quickly on cases. For more info, see
Configure Case Summarization.

Activity response Automatically generate recommendations for resolution notes, work notes
generation
and comments, helping agents add informative updates to case records For
more info, seeConfigure activity response generation.
Trending topics
dashboard

View trending topics across cases with insights and visualizations, helping
track trend progression, regional impact, and drill down into specific trends
using customizable filters. For more info see, Configure trending topics
dashboard.

Sentiment
analysis
dashboard

Gain a complete picture of customer sentiment across all cases. This
dashboard leverages LLM-powered analysis to explain sentiment trends
and their underlying drivers. Drill down into specific patterns to identify root
causes and access real-time insights that enable managers to take precise,
informed action. For more info, see Use sentiment analysis dashboard

General Configuration Steps
Each skill has it’s own configuration process. However, skill activation follows the same guided
setup. What configuring steps are required varies depending on the skill.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2238


<!-- page 2239 -->
Common Configuration components:
• Trigger: Allows you to configure the circumstances in which a skill is generated. For example,
chat summarizations can be configured to generate when the chat handoff is done from a live
agent to a live agent.
• Input: Configure the data used to create the information generated by the skill. For example,
resolution notes information is generated from the description, short description, work notes,
and the additional comments fields of existing case notes.
• Availability: customize how and when the skill capability is active and accessible. For
example, email reply recommendations can be configured to be always available, or defined
using the condition builder to determine whether or not a user can activate the skill.
• Access:determine who can access this skill. By selecting specific roles, you're controlling who
can use it. The roles you choose will also be available in the next step Select display.
• Display: determine where the skill appears. For example, the call summarization skill can be
configured to display on forms and workspaces or in the Now Assist panel.
Saving and activating the configuration setup process is the same across all Now Assist skills.
Finalize and Activate Setup
1. After selecting Review and Activate to examine changes, select Done to close the skill
configuration settings.
2. Select Skill to turn on the skill for agents and complete the configuration.
Configure chat summarization
Configure Chat Summarization to generate condensed summaries of conversations between
agents or with a Virtual Agent, highlighting key points for quick reference.
https://player.vimeo.com/video/1102593484?
h=b893388394&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Before you begin

Role required: Admin
Chat summarizations are generated when:
• The conversation ends.
• The agent uses the summarize quick action in Agent Chat.
• The user selects chat summarization or enters summarize chat in the Ask Now Assist field on
the Now Assist panel.
• A live agent transfers an interaction to a different live agent.
When an interaction is transferred from a Virtual Agent to a live agent and is at least six lines
long, the chat summarization displays in a summary card in the conversation and populates
the interaction's summarization and short description fields.

Procedure
1. Navigate to Admin > Now Assist Admin > Now Assist Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the Chat Summarization skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2239


<!-- page 2240 -->
4. Select Define Triggers and switch the toggles to choose how and when the summarization is
configured.
Triggers for the chat summarization skill
Trigger

Description

Virtual Agent to
Chat summary that is generated when the chat handoff is done from
Live Agent handoff Virtual Agent to a live agent.
Live Agent to Live
Agent handoff

Chat summary that is generated when the chat handoff is done from a
live agent to a live agent.

Quick action

Chat summary that is generated when the live agent performs the /
summarize quick action.

Chat wrap-up

Chat summary that is generated when the live agent ends the chat. The
Chat Summary field is updated for the interaction.

Short description

Short description field that is updated for the interaction when the live
agent ends the chat.

Task creation

Short description and Description fields that are auto-populated on the
task record when a task is created from an interaction.

You can also toggle the bulleted list property to display the chat summary as an unordered list.
5. Select Choose Input and review the portal and channel selections that determines where data
is pulled from.

Note: You cannot modify or deselect the default product portal data source.
Additionally, portals that are already in use by other products cannot be selected.
Table 2: Inputs for the chat summarization generation skill
Input

Description

Input fields

◦ CSM (Default portal for CSM)
◦ CSP (Default portal for CSM)
◦ AIS_ADMIN_TOOLS
◦ APM
◦ APM_PLANNER
◦ ARC
◦ ASC
◦ ASC_OLD
◦ ASP
◦ ASSIGN_INSIGHTS_OWNER
◦ BENCHMARKS
◦ BLANK
◦ BLSP
◦ BUSINESS_PORTAL
◦ CAB

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2240


<!-- page 2241 -->
Input

Description

◦ CEM
◦ CLAROTY_CTD_VR
◦ CLOUD_ADMIN_PORTAL
◦ CLOUD_PORTAL
◦ COMMUNITY
◦ COMMUNITY_CXS
◦ CONTENT_DELIVERY_DEMO
◦ CSM_OUTLOOK
◦ CSM_WALKUP
◦ DB_BUILDER
◦ DEMO_BUILDER
◦ DH_TOOLS
◦ DHAPP
◦ DHAPP_DSP
◦ DHBE
◦ DHEXECON
◦ ECDEMO_KIOSK
◦ ECK
◦ EESP
◦ ELP
◦ EMEXP
◦ ESG_REPORTING
◦ FSMCP
◦ IDEA
◦ INDEMO
◦ INDUSTRY
◦ INDUSTRYDEMO
◦ KB
◦ KIOSK
◦ LEGAL
◦ LEGAL_OUTLOOK
◦ LMP
◦ MEB
◦ MESP
◦ MOA
◦ MY_WORK_HUB
◦ NEW_HIRE
◦ PC
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2241


<!-- page 2242 -->
Input

Description

◦ PERF
◦ PPSRP
◦ PPSWORKBENCH
◦ PPT
◦ PROGRAM_STATUS
◦ PROJECT_STATUS
◦ RC
◦ SNCOUTLOOK
◦ SP
◦ SP_CONFIG
◦ SUPPLIER
◦ SVDP
◦ SWP
◦ TCP
◦ WALKUP
◦ WS
◦ WSDDEMO
◦ ECDEMO
◦ ECKDEMO
◦ ESC
◦ ESCP
6. Select Define Availability to customize how and when the skill capability is active and
accessible.
◦ Select Skill is always available so no restrictions are placed on when a skill is available.
◦ Select Customize skill availability to define conditions and use the condition builder to
configure fields and values.
7. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2242


<!-- page 2243 -->
8. Select Display to determine where the resolution notes appear.
◦ Select In-product desktop to display Now Assist skills on forms and workspaces.
◦ Select Now Assist panel to display Now Assist skills in the Now Assist panel.
9. After selecting Review and Activate to examine changes, select Done to close the Chat
Summarization generation settings.
10. Select Skill to turn on the skill for agents and complete the configuration.
Configure call summarization
Configure Call Summarization to automatically generate summaries of agent-customer calls
within the Active Chat window to capture key details for better agent follow-up and record
keeping.

Before you begin

Role required: admin
Call summarization is generated from the information that you enter in the following fields:
• Conversation Transcript
• Short Description (automatically populated at the end of call)
• Chat Summary (automatically populated at the end of call)
• Integration setup:

Note: Ensure that your telephony or call center system is integrated with ServiceNow
if call data needs to be captured directly. For more information, see Interaction Controls
Component (ICC) for voice calls and Integrating contact centers with Interaction
Controls Component (ICC) for callbacks.Additionally, set your status as Available in CSM
Configurable Workspace to be able to receive call requests from customers.
Any modifications to the names or labels of these fields can result in issues with summarization
generation.

Note: You cannot modify a skill's input data source in base system. However, you can
clone the skill in Now Assist Skill Kit.

Procedure
1. Navigate to Admin > Now Assist Admin > Now Assist Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the Call Summarization skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select Define Triggers and switch the toggles to choose how and when the summarization is
configured.
Table 1: Triggers for the call summarization skill
Trigger

Description

Live Agent to Live Call summary that is generated when the call handoff is done from a live
Agent handoff
agent to a live agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2243


<!-- page 2244 -->
Trigger

Description

Call wrap-up

Call summary that is generated when the live agent or the user ends the
chat. The Chat summary field is updated for the interaction.

Short description Short description field that is updated for the interaction when the live
agent or the user ends the call.
Task creation

Short description and Description fields that are auto-populated on the
task record when a task is created from an interaction.

You can also select toggle a property that controls how a call summary is displayed.
Table 2: Property for the call summarization skill
Property

Description

Bulleted list

Call summary as an unordered list.

5. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.
6. Select Display to determine where the resolution notes appear.
◦ Select In-product desktop to display Now Assist skills on forms and workspaces.
◦ Select Now Assist panel to display Now Assist skills in the Now Assist panel.
7. After selecting Review and Activate to examine changes, select Done to close the Call
Summarization generation settings.
8. Select Activate to turn on the skill for agents and complete the configuration.
Configure resolution notes generation
Configure the Resolution Notes skill to create concise summaries of case resolutions, helping
agents to quickly understand resolution details and support future similar interactions using
notes generated by Now Assist.
https://player.vimeo.com/video/1102610959?
h=a8ec16d88d&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Before you begin

Role required: admin
Case resolution notes are generated from the information that you enter in the following fields:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2244


<!-- page 2245 -->
• Short Description
• Description
• Work Notes
• Additional Comments
Any modifications to the names or labels of these fields can result in issues with notes
generation.

Note: It is recommended to revert to the default field name and field label for the affected
fields. To remove incompatible fields from summarization, ensure a copy of the skill has
been created, as not all fields are removable/configurable.

Procedure
1. Navigate to Admin > Now Assist Admin > Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the Resolution Notes Generation skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select Choose Input and review the tables and fields to create prompts that determines where
data is pulled from.

Note: You cannot modify the input data source.
Inputs for the resolution notes generation skill
Input

Description

Input table

Case [sn_customerservice_case]

Input fields

◦ Description
◦ Short description
◦ Work notes
◦ Additional comments
◦ Email

5. Select Define Triggers and switch the toggle to require user input before resolution notes are
created.
6. Select Define Availability to customize how and when the skill capability is active and
accessible.
◦ Select Skill is always available so no restrictions are placed on when a skill is available.
◦ Select Customize skill availability to define conditions and use the condition builder to
configure fields and values.
7. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2245


<!-- page 2246 -->
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.
8. Select Display to determine where the resolution notes appear.
◦ Select In-product desktop to display Now Assist skills on forms and workspaces.
◦ Select Now Assist panel to display Now Assist skills in the Now Assist panel.
9. After selecting Review and Activate to examine changes, select Done to close the Resolution
Notes Generation settings.
10. Select Activate to turn on the skill for agents and complete the configuration.
Skill is activated for agents and a success modal shows up with the option to Return to CSM
and to Go to Now Assist content menu.
11. Select Go to Now Assist context menu to configure the activity response generation skill's
Now Assist Context Menu in Now Assist Experience.
Related topics
Generate the resolution notes for a case by using Now Assist for Customer Service
Management (CSM)
Configure knowledge generation
Configure the Knowledge Generation skill to draft knowledge articles on resolving case tasks for
agents to review and edit before publishing.

Before you begin

Ensure that the following is set up before you activate the skill:
1. Install the Required Plugin- Now Assist for CSM plugin.
2. Enable KCS system properties: The visibility of the Create Knowledge action in CSM
Configurable Workspace depends on specific system properties and differs from its
implementation in the Core UI UI.
◦ In Core UI, the action is implemented as a UI Action.
◦ In CSM Configurable Workspace, it is implemented as a Declarative Action.
The visibility and behavior of the Create Knowledge button in the CSM Configurable
Workspace depends on two system properties:
◦ sn_customerservice.enable_knowledge_kcs: If this property is true, the button appears in
the CSM Configurable Workspace.
◦ sn_customerservice.kcs.enable_template_on_case_workspace
▪ If this property is false, the button is a UI Action and clicking it does not open a template
selector.
▪ If this property is true, the button is a Declarative Action and clicking it opens a template
selector modal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2246


<!-- page 2247 -->
If either property is disabled, the action will not appear in CSM Configurable Workspace—even
if it is visible in Core UI.
3. Activate the KCS template.
a. Navigate to All > Knowledge > Administration > Article Template.
b. Locate the KCS Article.
c. Set its status to Active.

Important:
▪▪ For Now Assist panel, if property sn_customerservice.enable_knowledge_kcs
and KCS Article Template is not enabled then it will create article using standard
template for cases.
▪ For Core UI / Workspace, if sn_customerservice.enable_knowledge_kcs and KCS
Article Template is not enabled then it will not show Create Knowledge button on
case form.
Role required: admin
The knowledge generation skill incorporates information that you enter in the following fields:
• Short Description
• Description
• Resolution Notes
• Work Notes
• Comments
Any modifications to the names or labels of these fields can quality the generation and quality of
knowledge generation articles.

Note: It is recommended to revert to the default field name and field label for the affected
fields. To remove incompatible fields from generation, ensure a copy of the skill has
been created, as not all fields are removable/configurable. Additionally, ensure that the
Knowledge Management advanced installer plugin is enabled and the following system
properties are set to TRUE:
• sn_customerservice.enable_knowledge_kcs
• kcs.enable_template_on_case_workspace

Procedure
1. Navigate to Admin > Now Assist Admin >Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the KB Generation skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select Choose Input and review the tables and fields to create prompts that determines where
data is pulled from.

Note: You cannot modify the input data source.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2247


<!-- page 2248 -->
Table 1: Inputs for the knowledge article generation skill
Input

Description

Input table

Case [sn_customerservice_case]

Input fields

◦ Short description
◦ Description
◦ Resolution notes (for cases and incidents)
◦ Work notes
◦ Comments

5. Select Define Availability to customize how and when the skill capability is active and
accessible.
◦ Select Skill is always available so no restrictions are placed on when a skill is available.
◦ Select Customize skill availability to define conditions and use the condition builder to
configure fields and values.
6. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.
7. Select Display to determine where the KB generation appears.
◦ Select In-product desktop to display Now Assist skills on forms and workspaces.
◦ Select Now Assist panel to display Now Assist skills in the Now Assist panel.
8. After selecting Review and Activate to examine changes, select Done to close the KB
generation settings.
9. Select Activate to turn on the skill for agents and complete the configuration.
Configure chat recommendation
Configure chat recommendation by defining triggers, specifying inputs, setting the display
location, and activating the feature.
https://player.vimeo.com/video/1102629744?
h=8ef1126c0e&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2248


<!-- page 2249 -->
Using the chat recommendation skill, you have the options to:
• Generate a recommended reply based on the context of the conversation.
• Refine the recommendation by elaborating or shortening the response.

Procedure
1. Navigate to Admin > Now Assist Admin >Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the Chat reply generation skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select Define Triggers and switch the toggle to choose how and when the summarization is
configured.
5. Select Choose Input and review the portal and channel selections that determines where data
is pulled from.

Note: You cannot modify or deselect default skill input data sources.
6. Select any additional data sources that you want the Large Language Model (LLM) to take into
account when generating a recommendation.
7. Select a portal for the data source to allow chat recommendation to be generated for the
conversation occurring on that portal.
This is a mandatory step. The admin must specify a portal and enable a specific channel on
the Choose Input page to enable the skill for chats sent in the selected portal or channel.
Otherwise, the agent will receive an error message: “Chat summaries won’t appear until your IT
administrator completes all the required steps involved in the setup".
8. Select Define Availability to customize how and when the skill capability is active and
accessible.
◦ Select Skill is always available so no restrictions are placed on when a skill is available.
◦ Select Customize skill availability to define conditions and use the condition builder to
configure fields and values.
9. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2249


<!-- page 2250 -->
10. Toggle Display to determine if chat recommendation appears in In-product desktop, displaying
Now Assist skills on forms and workspaces.
11. After selecting Review and Activate to examine changes, select Done to close the Chat reply
generation settings.
12. Select Activate to turn on the skill for agents and complete configuration.

Result

Chat recommendation for the workflow is active on the instance.
Configure email recommendation
Configure email reply recommendation to help agents generate and refine efficient email
responses based on conversation context.
https://player.vimeo.com/video/1102601949?
h=60957c119c&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Before you begin

Role required: admin
Email reply recommendations are generated from the information that you enter in the following
fields:
• Short description
• Description
• All journal fields
• Emails

Procedure
1. Navigate to Admin > Now Assist Admin > Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the Email Recommendation skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select Choose Input and review the tables and fields to create prompts that determines where
data is pulled from.

Note: You cannot modify the input data source.
Table 1: Inputs for the Email Recommendation generation skill
Input

Description

Input table

Case [sn_customerservice_case]

Input fields

◦ Short description
◦ Description
◦ Emails
◦ Additional Comments

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2250


<!-- page 2251 -->
Input

Description

◦ Work Notes
◦ Activity
5. Select Define Availability to customize how and when the skill capability is active and
accessible.
◦ Select Skill is always available so no restrictions are placed on when a skill is available.
◦ Select Customize skill availability to define conditions and use the condition builder to
configure fields and values.
6. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.
7. Toggle Display to determine if email recommendation appears in In-product desktop,
displaying Now Assist skills on forms and workspaces.
8. After selecting Review and Activate to examine changes, select Done to close the Email Reply
generation settings.
9. Select Activate to turn on the skill for agents and complete configuration.
Configure sentiment analysis case
Configure Sentiment Analysis to evaluate case sentiment, trends, and reasoning from case
inputs, helping agents resolve cases more efficiently.

Before you begin

Role required: admin
Sentiment analysis is generated from the information that you enter in the following fields:
• Description
• Short Description
• State
• Priority
• Additional Comments
Any modifications to the names or labels of these fields can result in issues with sentiment
analysis.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2251


<!-- page 2252 -->
The Sentiment Reasoning field in the record provides details on which factors were considered
for reasoning. This includes:
• Exact tone in the given inputs.
• Feedback in recent comment.
• Task priority.
• SLA consideration.

Procedure
1. Navigate to Admin > Now Assist Admin > Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the Sentiment analysis case skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select Define Trigger and edit the job schedule period to configure how often the skill will be
implemented.
To enable a scheduled job for a custom table, follow these steps:
a. Navigate to All > System Definition > Scheduled Jobs.
b. Search and select Sentiment analysis scheduler job CSM.
c. Replace the table name sn_customerservice_case with the name of your custom table in the
script.
d. Select Update.
5. Select General details and edit name and description of the skill.
Additional information regarding details of the skill are displayed, but cannot be edited.
6. Select Choose Input and review the tables and fields to create prompts that determines where
data is pulled from.

Note: You cannot modify the input data source.
Table 1: Inputs for the sentiment analysis skill
Input

Description

Input table

Case [sn_customerservice_case]

Input fields

◦ Description
◦ Short Description
◦ State
◦ Priority
◦ Additional Comments

7. Select Role attribution

Note: You cannot modify the input data source in base system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2252


<!-- page 2253 -->
Table 2: Inputs for the sentiment analysis skill
Input

Description

Input table

Case [sn_customerservice_case]

Requestor fields

◦ Consumer
◦ Contact
◦ Created by
◦ Opened by

8. Select Define Availability to customize how and when the skill capability is active and
accessible.
◦ Select Skill is always available so no restrictions are placed on when a skill is available.
◦ Select Customize skill availability to define conditions and use the condition builder to
configure fields and values.
9. Select Enable dashboard to see sentiment analysis across cases.
10. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.

11. Toggle to determine if chat recommendation appears in In-product desktop, displaying Now
Assist skills on forms and workspaces.
12. After selecting Review and Activate to examine changes, select Done to close the Sentiment
Analysis generation settings.
13. Select Activate to turn on the skill for agents and complete the configuration.
Trouble?
Troubleshooting information:
• Ensure that CSM/FSM Configurable Workspace Foundation plugin version is 25.1.4
• To access the Sentiment field, refer to the information available at these KB links:
◦ Sentiment analysis card is missing in case records in both CSM UI16 and workspace UIs
upon Now Assist CSM Sentiment Analysis feature activation .
◦ Sentiment analysis card display on a record in CSM workspace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2253


<!-- page 2254 -->
Change an insight to use a different field for sentiment analysis
Change a sentiment analysis insight to display sentiment data from a different field, such as
changing from channel to consumer, requiring updates to both the UI Builder component and
Now Assist Skill Kit.

Before you begin

Role required: admin or maint
General ServiceNow platform knowledge is required for this procedure.

About this task

For sentiment analysis insights, changing the field requires modifications to both the UI Builder
component and the associated Now Assist Skill Kit skill. It involves cloning components, creating
new skills, and modifying scripts. This procedure ensures proper configuration of the sentiment
analysis insight with a different field.
The different UI Builder Component names for Sentiment analysis dashboard are OOB
Sentiment Analysis Dashboard, Sentiment Over Time Visualization, Sentiment Breakdown
Visualization, Sentiment Top Drivers Insight (Negative sentiment and Positive sentiment drivers),
Sentiment by Assignment Group Insight, Sentiment After Escalation Insight, Sentiment by
Channel Insight.

Procedure
1. Navigate to All > UI Builder.
2. Under Components tab search for the corresponding component.
For example, open Sentiment by Channel Insight. Make a clone if needed.
3. Duplicate

Sentiment by Channel Insight

4. Rename all components to your desired field (for example, Consumer) or create a generalized
component name.
Update the following:
◦ UIB component name (in Settings) and Save
◦ Stylized text title (in Editor)
5. In the Get Sentiment by Field Data resource, change the Field(s) value to your desired field
ID.
For example, consumer.
6. In a new tab or window, navigate to All > Now Assist Skill Kit.
7. Under ServiceNow skills, search for Sentiment by Channel Insight.
8. Select Clone to clone the skill under your desired field name.
9. Under the Tool editor, select SentimentChannelScript and open the tool.
10. Replace every instance of the existing field (contact_type) with your desired field (consumer).
11. Select Continue till the Edit script tool guided set up reaches summary page.
12. Select Save changes.
13. In the Prompt editor tab, replace every instance of "channel" except the very last occurrence
in {{SentimentChannelScript.output}}.
14. Select Finalize prompt.
15. Publish the prompt.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2254


<!-- page 2255 -->
16. Navigate to the sys_one_extend_capability table and find the record corresponding to the Now
Assist Skill Kit skill you just created.
Right click to copy the sys_id.
17. Return to the UI Builder page and in the Get Sentiment Insight by Capability ID data resource,
paste the copied sys_id from previous step into the Capability ID field.
18. Select Save.
Now add
the newly created component to any base system dashboard page or your own
custom page, using other nearby insights as reference for the correct event handler and
optimization setup.
The sentiment analysis insight now uses the specified field to display data and the associated
Now Assist skill has been properly configured.
Related topics
Add a new filter
Change graph visualization
Configure Suggested Steps Generation
Configure suggested steps generation to analyze clusters of similar cases and suggest next
steps for case resolution for accelerated and consistent agent case troubleshooting.

Before you begin

Role required: admin
Suggested steps are generated from the records identified based on the information that you
enter in the following fields:
• Short Description
• Edited Conditions

Procedure
1. Navigate to Admin > Now Assist Admin > Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the Suggested Steps Generation skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select Choose Inputs and review the tables and fields to create prompts that determines
where data is pulled from.

Note: You cannot modify the input data source.
Inputs for the suggested steps generation skill
Input

Description

Input
table

Case [sn_customerservice_case]

Input
fields

◦ Short description
◦ Edited Conditions: Edit the conditions to update the filter and ensure that only
relevant and up-to-date records are used.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2255


<!-- page 2256 -->
5. Select Record Clustering to group records by similarity based on the adjusted inputs in the
previous step.

Note: Record clustering allows you to add the job in the queue, providing you with the
ability to leave the page while the task is running in the background. You will be notified
when the task is complete.
6. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.
◦ For customizing access control, see Customize access control for suggested steps
7. Toggle Display to determine if suggested step recommendations appear in In-product
desktop, displaying Now Assist skills on forms and workspaces.
8. After selecting Review and Activate to examine changes, select Done to close the Suggested
Steps Generation settings.
9. Select Activate to turn on the skill for agents and complete the configuration.
Make suggested steps available on CSM Workspace
Learn how to enable the suggested steps generation in the CSM Workspace after skill activation.

Before you begin

Role required: admin
After activating the Suggested steps generation feature in the Now Assist Admin console, follow
the steps outlined to make the skill available in CSM Configurable Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2256


<!-- page 2257 -->
Procedure
1. Navigate to All > UI Builder.
2. Go to Experiences > CSM/FSM Configurable Workspace > Record > Front-line Case

Page.
3. In the left content navigation pane, scroll down and select Recommended Action 1.
4. In the right pane, clear the checkbox Hide recommended

actions.
5. Select Save to apply the changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2257


<!-- page 2258 -->
Result

Recommended Actions will be displayed in the CSM/FSM Configurable Workspace and you can
see the Suggested steps generation skill under it.
Customize access control for suggested steps
Replace the default sn_esm_agent role with a custom role.

Before you begin

Role required: admin

Procedure
1. Update role permissions
In the sys_user_role table, open your custom role and add sn_gaf.data_writer to the Contains
Role related list.
2. Update ACLs
In the sys_security_acl table, filter for ACL names starting with gaf_suggested_steps_csm. Add
your custom role to each of the four matching records.
3. Configure skill access
In Now Assist Admin, complete the setup for the CSM Suggested Steps Generation skill:
◦ Add your custom role in the Define Access step.
◦ Add the same role in the Select Display step.

Result

By default, the sn_esm_agent role is used. These steps allow you to configure a custom role if
needed.
Configure Sidebar Summarization
Configure sidebar summarization to generate summaries of sidebar discussions for quick agent
understanding, allowing for faster collaboration.

Before you begin

Role required: admin
Sidebar summarization is generated from the information within selected tables containing
specific case, incident, or interaction information.

Procedure
1. Navigate to Admin > Now Assist Admin > Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate Skill for the Sidebar Summarization skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select Define triggers and switch the toggles to choose how and when the summarization is
configured.
Table 1: Triggers for the sidebar summarization skill
Trigger

Description

Quick
action

Sidebar summary that is generated when the live agent performs the /
summarize quick action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2258


<!-- page 2259 -->
You can also select toggle a property that controls how a sidebar summary is displayed.
Table 2: Property for the sidebar summarization skill
Property

Description

Bulleted list

Sidebar summary as an unordered list.

5. Select Choose tables to select the tables from which summaries for Sidebar discussions are
generated.
Table 3: Tables for the sidebar summarization skill
Label

Name

Change Phase

change_phase

Change Request

change_request

IMAC

change_request_imac

Change Task

change_task

Chat Queue Entry

chat_queue_entry

Incident

incident

Incident Task

incident_task

Interaction

interaction

Knowledge Feedback Task

kb_feedback_task

Problem

problem

Problem Task

problem_task

Request

sc_request

Requested Item

sc_req_item

Catalog Task

sc_task

Standard Change Proposal

std_change_proposal

6. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2259


<!-- page 2260 -->
7. Toggle Select display to determine if sidebar summarization appears in In-product desktop,
displaying Now Assist skills on forms and workspaces.
8. After selecting Review and Activate to examine changes, select Done to close the sidebar
summarization generation settings.
9. Select Activate to turn on the skill for agents and complete the configuration.
Configure Case Summarization
Configure case summarization to generate and display case summaries for agents and control
who can access them in production.

Before you begin

Role required: admin
Case summarization relies on a base input table and its associated field inputs with descriptions
to provide the context for a generated summary. Choose your base table, and view the
associated base input fields within the provided input templates. Record state determines which
input template is used when generating a summary.
Provided input templates:
• Case new
• Case work in progress
• Case resolved
Any modifications to the names or labels of the fields within these templates can result in issues
with notes generation.

Procedure
1. Navigate to Admin > Now Assist Admin > Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate skill for the Case summarization skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select General details and edit name and description of the skill.
Additional information regarding details of the skill are displayed, but can’t be edited.
5. Select Choose Input and review the tables and fields to define the prompts that determine
where data is pulled from.
You can modify the rule conditions to determine when the input template is used. Additional
data sources can be added via related tables as well.
Table 1: Inputs for the case summarization generation skill
Input template data

Base input field

Base input fields

◦ Description
◦ Short description
◦ State

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2260


<!-- page 2261 -->
Input template data

Base input field

◦ Work notes
◦ Additional comments
Listed rule conditions to the input table

Default is determined by record state.

‑1 Additional data source: Related table

◦ Task SLA -> Task
◦ SLA definition
◦ Stage
◦ Breach time

‑2 Additional data source: Related table

◦ Case -> Parent
◦ Number
◦ Short description
◦ State
◦ Assigned to
◦ Additional comments
◦ Work notes

‑3 Additional data sources

Activity is listed as 'Email.'

6. Select Customize prompt to evaluate the generated outputs of case summaries.
Evaluate the prompt used for each of the input templates by selecting an existing record to test
the output. The review and modify the prompt after evaluating the output results, edit it within
the Now Assist Skill Kit.
7. Select Define availability to customize how and when the skill capability is active and
accessible.
◦ Select Skill is always available so no restrictions are placed on when a skill is available.
◦ Select Customize skill availability to define conditions and use the condition builder to
configure fields and values.
8. Select Define triggers to determine how the skill will be triggered.
◦ Select Automatic to see the case summary of a record automatically generated when the
user lands on a record page.
◦ Select User trigger to create a case summary of a record when the user opens a record page
and selects the Summarize button.
9. Select Define access to determine who can access this skill.
By selecting specific roles, you are controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agentautomatically appear in Define
access and Select display.
◦ If custom roles were added before the upgrade, they’re updated automatically by a script.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2261


<!-- page 2262 -->
◦ If new roles are created after the upgrade, you can manually add them in both the Define
access and Select display.

Note: In the Select display step, you can only choose roles that were added in the

Define access step. If you add a role in Define access, you still must manually select it
in Select display to make it active.
10. Select Display to determine where the skill appears.
◦ Select In-product desktop to display Now Assist skills on forms and workspaces. Then,
select the roles for whom the skill will be displayed.
◦ Select Now Assist panel to display Now Assist skills in the Now Assist panel.
11. After selecting Review and activate to examine changes, select Done to close the case
summarization generation settings.
12. Select Activate to turn on the skill for agents and complete the configuration.
Related topics
Summarize a call by using Now Assist for Customer Service Management (CSM)
Configure activity response generation
Set up the activity response generation skill in the Now Assist Admin console to enable
automated responses in comments and work notes.

Before you begin

Role required: admin

About this task

Use the Now Assist Admin console for configuring the activity response generation skill by
selecting inputs, defining access, and activating the skill.

Procedure
1. Navigate to All > Now Assist Admin > Skills.
Access the skills configuration page.
Verify you have admin role.
2. Select the Customer workflow and choose CSM
This determines the product context for the skill.
Workflow and product must match your configuration requirements.
3. Activate skill for the activity response generation skill.
Each skill has a guided setup with multiple steps.
A check symbol next to each step indicates whether its setup is complete, partially complete,
or incomplete. After configuring a step, select Save and continue to move forward, or Back to
return to a previous step.
4. Select General details and edit name and description of the skill.
Additional information regarding details of the skill are displayed, but can’t be edited.
5. Select Choose Input and review the tables and fields to create prompts that determine where
data is pulled from.

Note: You can’t modify the input data source.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2262


<!-- page 2263 -->
Inputs for the Activity response generation skill
Input

Description

Input table

Case [sn_customerservice_case]

Input fields

Description, Short Description, Additional
comments, Work notes, State, Priority.

6. Select Define access to determine who can access this skill.
By selecting specific roles, you’re controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’re updated automatically by a script.
◦ If new roles are created after the upgrade, you can manually add them in both the Define
Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the

Define Access step. If you add a role in Define Access, you still must manually select it
in Select Display to make it active.
7. Toggle Select display to determine if activity response generation skill appears in In-product
desktop, displaying Now Assist skills on forms and workspaces.
8. After selecting Review and Activate to examine changes, select Done to close the activity
response generation settings.
9. Select Activate to turn on the skill for agents and complete the configuration.
Skill is activated for agents and a success modal shows up with the option to Return to CSM
and to Go to Now Assist content menu.
10. Select Go to Now Assist context menu to configure the activity response generation skill's
Now Assist Context Menu in Now Assist Experience.
Related topics
Generate activity stream responses
Configure trending topics dashboard
Configure the trending topic dashboard to identify clusters of related records, visualize their
volume and sentiment over time, and leverage AI-generated insights to proactively resolve
issues and improve operational efficiency.

Before you begin

Role required: admin
Trending topics dashboard is generated from the information that you enter in the short
description field.

Note: Any modifications to the names or labels of these fields can result in issues with
trending topics in the dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2263


<!-- page 2264 -->
Procedure
1. Navigate to All > Now Assist Admin > Skills.
2. Select the Customer workflow, and CSM as the product.
3. Activate skill for the Trending topics dashboard skill.
Each skill has a guided setup with multiple steps. A check symbol next to each step indicates
whether its setup is complete, partially complete, or incomplete. After configuring a step, select
Save and continue to move forward, or Back to return to a previous step.
4. Select General details and edit name and description of the skill.
Additional information regarding details of the skill are displayed, but can’t be edited.
5. Select Cluster Input and review the tables and fields to create prompts that determine the
source from which the data is pulled.
You can’t modify the input data source.
Inputs for the trending topics dashboard skill
Input

Description

Input table

Case [sn_customerservice_case]

Input fields

Short description

6. Select Record clustering to group records by similarity based on the adjusted inputs in the
previous step.
Record clustering enables you to add the job in the queue, providing you with the ability to
leave the page while the task is running in the background. You are notified when the task is
complete.
7. Select Define access to determine who can access this skill.
By selecting specific roles, you’re controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_customerservice_manager automatically appear
in Define Access and Select Display.
◦ If custom roles were added before the upgrade, they’re updated automatically by a script.
◦ If new roles are created after the upgrade, you can manually add them in both the Define
Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the

Define Access step. If you add a role in Define Access, you still must manually select it
in Select Display to make it active.
8. Toggle Select display to determine if trending topics dashboard skill appears in In-product
desktop, displaying Now Assist skills on forms and workspaces.
9. Select roles for whom trending topics dashboard are displayed.
The user roles added in the Define access step for each ACL(access control list) can be
selected in this step.
10. After selecting Review and Activate to examine changes, select Done to close the activity
response generation settings.
11. Select Activate to turn on the skill for agents and complete the configuration.
Skill is activated for agents.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2264


<!-- page 2265 -->
Related topics
View trending topics dashboard
Add a new filter
Add a new filter to a UI Builder dashboard to enable users to refine data views based on
additional fields such as consumer, product, or other custom fields.

Before you begin

Role required: admin or maint
If the Components tab in UI Builder is not available, run provided background script to enable the
component view for maint users.
var gr = new GlideRecord('sys_properties');
gr.setValue("sys_scope", "e9b68250cdffe4e1c64e494026ec6e9a");
gr.setValue("name", "sn_cb_experiences.uib.enable.cb");
gr.setValue("write_roles", 'maint');
gr.setValue("value", "true");
gr.insert();

About this task

Filters allow users to refine dashboard data by specific fields. This procedure demonstrates
how to add a new filter to any base system dashboard such as trending topics dashboard or
sentiment analysis dashboard by duplicating and configuring an existing filter carousel item.

Procedure
1. Navigate to All > UI Builder and select a UIB component.
2. Under Components tab search for the corresponding component.
The different UI Builder Component names:
◦ Trending topics dashboard: OOB Trending Topics Dashboard, Top Trends, Trending topics
by Field Insight (accounts, products, assignment group, channels), OOB Topic Details
Dashboard, Topic Over Time Visualization, Topic Breakdown Visualization, Topic Affected
Regions Visualization.
◦ Sentiment analysis dashboard: OOB Sentiment Analysis Dashboard, Sentiment Over
Time Visualization, Sentiment Breakdown Visualization, Sentiment Top Drivers Insight
(Negative sentiment and Positive sentiment drivers), Sentiment by Assignment Group
Insight, Sentiment After Escalation Insight, Sentiment by Channel Insight.
If working with the base system component, create a clone before making modifications.
3. Select a Filter Carousel Item 2 in the component tree.
from the context menu.
4. Duplicate the component
Drag the duplicated filter to reorder it as needed within the carousel.
5. Select the newly created filter in the left panel.
The configuration panel displays on the right side.
6. Under Filter source, change the Table name to Trending topic record.
7. Change the Field to your desired field.
For example, enter Consumer.
8. Select Apply.
9. Under UI element, change the Filter label field to match your desired field name.
For example, enter Consumer.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2265


<!-- page 2266 -->
10. Rename the component ID to match the field using lowercase and dashes.
For example, enter filter_consumer
11. Copy this ID to the clipboard for use in subsequent steps.
12. Select Apply.
13. Select Save.
14. In the top left of the screen, open the hamburger menu and select Open component record.
15. In the Composition section, search for your component ID.
16. Open the search function using Cmd+F (Mac) or Ctrl+F (Windows).
17. Paste the component ID from step 10 using Cmd+V (Mac) or Ctrl+V (Windows).
18. Press Return (Mac) or Enter (Windows) to search.
19. Open the search function again using Cmd+F (Mac) or Ctrl+F (Windows).
20. Enter filterId in the search box.
21. Press Return (Mac) or Enter (Windows) to perform the search.
22. Locate the value field under the filterId property.
23. Change the final value to the filterId from step 10.
For example, enter filter_consumer. The filterId can be any unique value.
24. Select Update to save.
The new filter is now configured and ready to use on the dashboard.

Result

The new filter appears in the dashboard filter carousel and enables users to filter data by the
specified field.

Important: If you plan to make additional changes to the original component, refresh the
UI Builder component page to prevent losing the changes made in steps 6-10.
Related topics
Change graph visualization
Change an insight to use a different field for trending topics
Change graph visualization
Change a graph visualization to a different type within the same graph group, such as converting
a horizontal bar chart to a vertical bar chart or an area chart to a line chart.

Before you begin

Role required: admin or maint

About this task

This procedure allows you to change a graph to a different visualization type within the same
group. The following are similar groups of graphs:
• Scores: Single score, Dial, Gauge
• Time series: Area, Column, Line, Scatter, Spline, Step
• Bars: Horizontal bar, Vertical bar, Pareto
• Pies and donuts: Donut, Pie, Semi Donut
• Multidimensional charts: Pivot table, Heatmap, Bubble
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2266


<!-- page 2267 -->
Tip: Changing between graphs in the same group is very easy. For example, an area chart
can be converted to any other time series chart such as spline, column, or line.

Procedure
1. Navigate to All > UI Builder
2. Under Components tab select the corresponding component that contains the graph you want
to change.
For example, open Topic Over Time Visualization.
If needed, create a clone of the component before making changes.
3. Select the graph on the left panel that you want to change.
4. Locate the Data visualization type field.
5. Change the graph type to a different visualization within the same graph group.

Important: Ensure the new graph type is within the same group as the original graph
type. Converting across different graph groups is very difficult and may require significant
programming changes.
6. Select Save.
The graph visualization type is updated and displays data in the new format.
Related topics
Configure trending topics dashboard
Add a new filter
Change an insight to use a different field for trending topics
Change an insight to use a different field for trending topics
Change the field used in a trending topics insight to display data from a different field, such as
changing from Assignment Group to Consumer or Product.

Before you begin

Role required: admin or maint

About this task

For trending topics insights, it is simple to change the field being analyzed. This procedure
allows you to duplicate an existing insight and modify it to use a different field while preserving
optimization and formatting.
The different UI Builder Component names for Trending topics dashboard are OOB Trending
Topics Dashboard, Top Trends, Trending topics by Field Insight (accounts, products, assignment
group, channels), OOB Topic Details Dashboard, Topic Over Time Visualization, Topic Breakdown
Visualization, Topic Affected Regions Visualization.

Procedure
1. Navigate to All > UI Builder.
2. Under Components tab search for the corresponding component.
For example, open OOB Trending Topics Dashboard. Make a clone if needed.
it.
3. Select Insight Carousel Item 1 and duplicate
Drag the newly duplicated component to reorder as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2267


<!-- page 2268 -->
4. Select the component within the carousel item and on the right-hand panel, change the field to
your desired field ID.
5. Select Save.
The insight now displays trending topics data based on the newly specified field.
Related topics
Configure trending topics dashboard
Change graph visualization
Add a new filter
Additional skill input and trigger information
Enable remaining Generative AI Skills within Now Assist CSM, and reference summarized details
to complete setup.

Overview of skills and triggers
Depending on the selected skill, you can configure inputs or triggers. These settings determine
how and when a skill is used. An input identifies the data that is used for a skill, such as the table
and fields that are used to generate a case summary. A trigger initiates an action, such as when
the system generates a chat summary.

Sidebar discussion summarization skill
For the sidebar discussion summarization skill, select the triggers that determine when a sidebar
discussion summary is generated.
The following table lists the triggers that determine when a sidebar discussion summary is
generated.
Triggers for the sidebar discussion summarization skill
Trigger

Description

User triggered

Sidebar discussion summarization that is
generated when the agent manually triggers
the skill.

Case sentiment analysis skill
The case sentiment analysis skill includes the inputs and outputs that identify the table and
fields that are used when a case sentiment is generated.
The following table lists the inputs for the case sentiment analysis skill.
Inputs for the case sentiment analysis skill
Input

Description

Input table

Case [Case]

Input fields

• Short description
• Description
• Priority

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2268


<!-- page 2269 -->
Inputs for the case sentiment analysis skill (continued)
Input

Description

• State
• Task creation date
• Activities
• Task SLA

The following table lists the outputs for the case sentiment analysis skill.
Outputs for the sentiment analysis skill
Output

Description

Sentiment values

• Very positive
• Positive
• Neutral
• Negative
• Very negative

Sentiment trend

• Improving
• Declining
• Stable

Sentiment reasoning

Reasons for provide the sentiment value.

The following table lists the scheduled job for the sentiment analysis skill
Scheduled job for the sentiment analysis skill
Scheduled job name

Default value

Description

Sentiment analysis scheduled True
job (case)

Refreshes sentiments on the
Trigger frequency screen for
the Sentiment analysis skill.

Update sentiment historical
records

When active, calculates
sentiment and sentiment
trends for historical records.

False

Suggested steps generation skill
The following table lists the suggested steps generation skill

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2269


<!-- page 2270 -->
Inputs for suggested steps generation skill
Input

Input table
Input field

Description

sn_customerservice_case
Short description
The skill uses this field to cluster cases based
on similar cases closed in the past.

Conditions

Filter conditions to generate the suggested
steps.
Similar cases closed or resolved within the
last 6 months are used by default to create the
case clusters.

Configure service recommendations for interactions
Configure the service recommendations for interactions skill in the Now Assist Admin console to
streamline case creation. This skill reduces cognitive effort, saves time, and promotes accurate
case routing.

Before you begin

Role required: admin

About this task

Use the Now Assist Admin console for configuring the service recommendations for interactions
skill by specifying the roles permitted to use the skill and the role restrictions.

Procedure
1. Navigate to All > Now Assist Admin > Skills.
Access the skills configuration page.
Verify you have admin role.
2. Select the Customer workflow and choose CSM
This determines the product context for the skill.
Workflow and product must match your configuration requirements.
3. Select Turn on to activate skill for the service recommendations for interactions skill.
4. Select Add user access to determine who can access this skill.
Default and Custom Roles:
◦ If no changes are made, the default roles
sn_csm_case_types.service_definition_viewerand sn_esm_agent
automatically appear in Add user access.
◦ If custom roles were added before the upgrade, they’re updated automatically by a script.
◦ If new roles are created after the upgrade, you can manually add them in Add user access.
5. Configure role restrictions to define which data and resources the skill can access when
invoked (default: sn_csm_case_types.service_definition_viewer).
6. Select Turn on to activate the skill.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2270


<!-- page 2271 -->
A screen appears showing Successfully activated.
7. Select Back to skills to return to the skills menu.

What to do next

Clone the skill to ground it in your environment for your specific needs.
Related topics
Clone the Now Assist for CSM skills
Customizing a Now Assist for CSM skill

Banners in Now Assist for Customer Service Management (CSM)
Banners display information about generative AI skills and the form fields that are generated or
predicted by the those skills.

Overview of banners
The generative AI banner displays information about the fields on a form that are generated or
predicted by the skills available with Now Assist for CSM. Messages that appear in the banner:
• Alert agents when fields are being generated or predicted and when the process is complete.
• Remind agents to review the information in these fields.
• Inform agents if fields cannot be generated or predicted.
Messages also include links to the fields that are generated or predicted by Now Assist for CSM.
Generative AI banner in CSM Configurable Workspace

Links to generated or predicted fields
Messages displayed in the generative AI banner can include links to the fields that are generated
or predicted by AI. For case records, this includes fields such as the case description and short
description. For interaction records, this includes fields such as the short description and chat
summary.
When an agent selects a link in the message, that field is highlighted on the form. If an agent
modifies the field and saves the record, the link to that field is removed from the message.
Restoring the field to the original value returns the link to the message.

Setting default record pages
A record page provides the base structure for how a record is displayed in CSM Configurable
Workspace. When the system displays information in CSM Configurable Workspace, such as
case records and interactions, it uses the pages that have been set as the default record pages.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2271


<!-- page 2272 -->
Set the following pages as the default record pages in UI Builder:
• CSM default record page: Includes specific features for case management.
• CSM Interaction record page: Includes CSM-specific features for interaction management.
These pages support the Now Assist for Customer Service Management (CSM) functionality in
CSM Configurable Workspace, including the display of the generative AI icon and banner. For
more information, see Set record page order.

Configure the Propose Solution UI action and declarative action
Add generative AI-specific functionality to the Case form by configuring the Propose Solution
UI action and declarative action that are included with the Now Assist for Customer Service
Management (CSM) application.

Before you begin

Role required: admin

About this task

The Customer Service Management application includes a Propose Solution UI action that
agents can use to propose a solution for a customer service case.
The Now Assist for Customer Service Management (CSM) application includes the following
actions that provide generative AI-specific functionality. Agents can use these actions to
propose solutions that include AI-generated resolution notes:
• Propose Solution declarative action: Generates resolution notes in CSM Configurable
Workspace.
• Propose Solution UI action: Generates resolution notes in Core UI.

Note: These actions are inactive by default.
To use the generative AI functionality, you must deactivate the Propose Solution UI action for
Customer Service Management and then activate the Propose Solution UI action and declarative
action for Now Assist for CSM. After being activated, these actions are available to customer
service agents for assigned cases that are in the Open state.

Procedure
1. Deactivate the Propose Solution UI action for the Customer Service Management application.
a. Navigate to All > System Definition > UI Actions to display the UI Actions list.
b. Configure the list to show the Application column.
For more information on how to configure a list, see Configure the list layout

.

c. Filter the list to display Propose Solution in the Name field.
d. Select the Propose Solution UI action for the Customer Service application.
e. Clear the Active check box.
f. Select Save.
The system returns you to the UI Actions list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2272


<!-- page 2273 -->
2. Activate the Propose Solution UI action for the Now Assist for CSM application to use this
functionality in Core UI.
a. From the UI Actions list, select the Propose Solution UI action for the Now Assist for CSM
application.
b. Select the Active check box.
c. Select Save.
The system returns you to the UI Actions list.
3. Enable the Propose Solution declarative action for the Now Assist for CSM application to use
this functionality in CSM Configurable Workspace.
a. Navigate to the sys_declarative_action_assignment.list to display the Action Assignments
list.
b. In the Action label column, select Propose Solution.
c. Enable the Active check box.
d. Select Save.
The system returns you to the Action Assignments list.

Customize a case summarization skill in Now Assist for Customer Service
Management (CSM)
If you have the admin role, you can customize a Now Assist for Customer Service Management
(CSM) skill so that agents can use the generative AI skills in CSM Configurable Workspace and in
Core UI.

Before you begin

Role required: admin

About this task

From the Now Assist Admin console, you can select the input table, related records, and fields for
each input template of the case summarization skill, and then configure the prompt headers to
include them in the general summary.

Procedure
1. Navigate to All > Now Assist Admin > Features to access the Now Assist Features tab of the
Now Assist Admin console.
2. In the Customer workflow group, view the skills for the Now Assist for CSM features.
3. Activate and copy the Now Assist for CSM feature case summarization skill for customization.
a. On the feature card that is associated with the skill that you would like to activate, select
View details.
b. In the All available skills section, locate the skill that you would like to activate and select
Activate skill.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2273


<!-- page 2274 -->
Note: Only one version of a skill can be active at a time for each table. If you
create and activate a copy of the skill, any previously activated version of the skill is
deactivated. The copied skill can be activated with the parent skill.
You can choose to make a copy of the skill before activating it.
for the skill in the Active skills section, and create a copy
c. Select the More actions icon
that you can customize by selecting Make a copy.
The copy that you make is listed in the Active skills section.
d. Select the copied skill from the Active skills section to open it.
A guided setup leads you through the configuration of the general details, input, prompt,
availability, display, review, and activation of the customized skill. If you complete the entire
walk-through, the case summarization skill is activated.
4. In the General details step, fill in the fields.
For information about the inputs and triggers for each skill, see Additional skill input and trigger
information.
a. Enter a name and description for the skill.
b. Select Save and continue to go to the next step.
5. View the input data for each skill, such as the base input fields and related lists for the different
input templates (Case new, Case work in progress, or Case resolved states).
You can change the base input table and add case extension tables for the copied skill. To
create an extended table, select New on the Tables list page, and select the table to extend
from the Extends table search field. This option is only available when you’re creating a table,
because it incorporates all of the fields of the original table and creates system fields for the
new table.
Configure the base input table fields and related lists for the different input templates (Case
new, Case work in progress, or Case resolved states) for the skill.
Each skill relies on a base input table and input fields with descriptions to provide context for
the Now LLM Service to generate a response.
Select only those related tables that are offered as the base system as part of the input data.
a. For each input template state (New, Work in progress, or Resolved), select +New base input
field and configure the base input table fields.
Add multiple base input fields, as necessary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2274


<!-- page 2275 -->
View input step

The following table lists the base input table fields and descriptions, including a relevant
example.
Base input fields
Field

Base input field

Description

Field in the case table whose value this skill
uses in its response.
For example, Short description.

Field description

Description of the base input field value.
For example, Short description
of case, provides quick info
about the issue.

b. For each input template state (New, Work in progress, or Resolved), configure the rule
conditions by using the condition builder to filter the data.
The rule conditions determine when the input template is used. By default, the record state
determines the input template that the Now LLM Service uses.
You can build the condition out further by selecting +New condition set and configuring
additional parameters.
The following table lists the input template states.
Input template states
State

Description

New

State is New.

Work in progress

State is Work in Progress.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2275


<!-- page 2276 -->
State

Description

Resolved

State is Resolved.

c. For each input template state (New, Work in progress, or Resolved), select +New data
source to configure the additional related table and activity stream data, as needed.
Adding input data sources, like the related tables and activity streams, provide more context
to the Now LLM Service in a related list.
You can also add the rule conditions to these additional data sources.
The selection of the related table fields may have a direct impact on the quality of the
corresponding prompt header. For example, if a prompt header requires a specific field
from the related table, but that field isn’t selected as input, the summary for that prompt
header will contain missing information. For example, as a base case, you see one related
table, such as a Service level agreement (SLA), that includes all the required fields and
filtering conditions for the prompt header. The SLA prompt header is preselected to help
you understand how the related table, its fields, and the prompt header work together to
produce a summary. You can use the SLA as a reference to configure the other related tables
to determine which fields to select and which description adds the requirements of their
respective prompt headers. Apply any additional conditions to filter the data further.
d. Select Save and continue to go to the next step.
6. Customize the prompt.
Review and test the default prompt provided. The prompt is fixed and cannot be customized
directly within this step or from the Now Assist Admin screen.
To customize or create new prompts, select Edit prompt in Now Assist Skill Kit. This will
redirect you to the Now Assist Skill Kit, where you can manage prompt configurations for
the skill. For more info, see Now Assist Skill Kit
a. For each input template state (New, Work in progress, or Resolved), select the prompt to
include in the generated summary.
b. Select Save to continue to the test response.
c. Select a case record in the Test response section, and test the prompt response output
format by selecting Run Test.
d. Select Save and continue to go to the next step.
7. Define how the skill is available to your users.
a. Configure the skill to be always available to users, or select conditions that must be met
before the skill is available.
Selecting Customize skill availability displays a condition builder to filter the data further.
b. Select Save and continue to go to the next step.
8. Select Define access to determine who can access this skill.
By selecting specific roles, you're controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2276


<!-- page 2277 -->
◦ If no changes are made, the default role sn_esm_agent will automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they’ll be updated automatically by a script.
◦ If new roles are created after the upgrade, you’ll need to manually add them in both the
Define Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.
9. Configure where to display the case summarization.
a. Select either In-product or Now Assist panel.
▪ In-product: When selected, the Now Assist skills are displayed on the forms and
workspaces.
For the skills that appear in-product, select the down arrow to identify the roles that can
use the skill.
▪ Now Assist panel: When selected, the Now Assist skills are available in the Now Assist
panel.
If you don't see this option, you must activate the Now Assist panel. For more information,
see Turn on the Now Assist panel .
For the skills that appear in the Now Assist panel, select the down arrow to identify the
roles that can use the skill.
b. Select Save and continue to go to the next step.
10. Review and activate the skill.
Review your choices and select Activate to complete the skill customization.
You can now select Summarize in a case to generate the case summary.

Domain separation in Now Assist for Customer Service Management (CSM)
Domain separation allows users to separate data, processes, and administrative tasks into
logical groupings known as domains. Domain separation enables users to independently
manage skill configurations, data visibility, and other settings within each domain.
Setting up domain separation for Now Assist for CSM involves requesting activation of a plugin,
setting options, and assigning users and records to domains.
Domain separation is possible at the skill level and at the individual configuration level. When
using the guided setup in the Now Assist Admin console, each configuration option has its own
record that you can separate by domain. To create a record in a different domain, you must set up
the skill in the scope of your preferred domain.
Global domain is the default domain, and all new domains are created under it. New domains
inherit the settings from the global domain if users don’t override the settings in the new domain.
Do the following task to set up domain separation:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2277


<!-- page 2278 -->
1. Request domain separation. For more information, see Request domain separation

.

2. Create a domain by creating an account for CSM
3. Configure skills in the domain for Now Assist for CSM.

More information
• Domain separation setup and administration. See Domain separation setup and
administration .
• Benefits of domain separation. See Benefits of domain separation

.

• Domain separation and Customer Service Management (CSM). See Domain separation and
Customer Service Management.
Create a domain by creating an account for Now Assist for Customer Service Management
(CSM)
Create a domain by creating an account in the account table in the Customer Service
Management (CSM) application. By creating an account, you also create a domain. If you have
the admin role, you can create multiple domains by creating different accounts as needed.

Before you begin

Role required: admin

About this task
Enable the csm_auto_account_domain_generation system property. This system
property is installed with the CSM application and is available only after the domain separation
plugin is active. When this property is enabled (the value is set to True), the CSM application
automatically creates a domain of the same name when a new account is created.

Note: Enabling this property doesn’t add domains for existing accounts. It only creates
the domains for new accounts. Adding domains for existing accounts requires a migration
script.
When creating a domain, follow these general guidelines:
• Only one domain can be the default domain.
• Only one domain can be the primary domain.

Procedure
1. Change the current domain to the domain that you want by selecting the domain under the
domain scope.
For example, if you want to create a domain under the global scope that would inherit its
settings by default, select the global domain in the domain scope. If you want to create a child
domain under a specific parent domain, change the domain scope to that parent domain.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2278


<!-- page 2279 -->
Example of the different domains under domain scope

2. Navigate to All > Customer Service > Customer > Accounts or All > customer_account.list.
3. In the Accounts table, create an account by selecting New.
4. Create a domain with the same name as the account by selecting Save.
Different domain names

For example, when you create an account named ParentDomain under the global scope, you
also create a domain with the same name. All the domains that are created under the global
scope will be under the TOP (top level) domain. If you create an account called ChildDomain
within the ParentDomain domain, the domain with the same name is also created under the
ParentDomain domain.
5. Navigate to All > Domain Admin > Domains.
The domains can be viewed in the Domain table, or you can directly create a domain in the
Domain table.
Domain form
Field

Description

Name

Unique name for the domain.

Type

Domain type that describes the domain.
By default, the domain types are Vendor,
Customer, and MSP. You can also add your
own choices.

Primary

Option to select if this domain is to be the
top-level domain in the hierarchy. The toplevel domain only has child domains and no
parent domains.

Default

Domain that is to be the default domain for
your hierarchy.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2279


<!-- page 2280 -->
Field

Description

Parent

Name of the domain that is higher in the
hierarchy. This field must have a value for the
domain to appear in the domain map.

Active

Option to make the domain available for use.
You must select this option for this domain to
appear in the domain map.

Description

Description for the domain.

Each domain record can also have several related records:
◦ Companies
◦ Contains Domains
◦ Contained By
6. Create a domain in the Domain table by selecting New.
7. Add the field values and select Submit.
The domain has been created.
8. Create users in the Users table under each domain.
9. After adding the field values, select Submit.
10. Assign the appropriate roles and groups to the users.
For example, if you create an Agent user in the ParentDomain, they have access to both the
ParentDomain and ChildDomain. However, an Agent user that you create in the ChildDomain
only has access to the ChildDomain.
11. Select Save.

What to do next

To change the domain hierarchy, go to the Contains Domains related list. Select the domain
records that are the child (contained) domains of the contained relationship.
Configure skills in a domain for Now Assist for Customer Service Management (CSM)
Activate the skills with different skill configurations in each domain in the Now Assist for
Customer Service Management (CSM) application.

Before you begin

Role required: admin

About this task

By default, the skill configurations in the domains inherit the settings from the global domain
unless they’re overridden by the new configurations in that domain.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2280


<!-- page 2281 -->
Procedure
1. Change the current domain to the domain that you want to activate the skills in by selecting the
new domain.
Domain scope

For example, if you want to configure the skill in ParentDomain, change the domain scope to
ParentDomain.
2. Navigate to All > Now Assist Admin Console > Features > Features.
3. In the Now Assist Admin console, select the global skill configuration to activate it within the
current domain and to set up its own unique skill configuration.
As shown in the following example, a modal pop-up window confirms that the skill
configuration is being edited in the current domain. This action creates a skill configuration that
overrides the existing global configuration. The active skill configuration in use is derived from
the global domain and shares the same name as the global skill configuration.
Edit skill in a domain

4. Proceed to the guided setup by selecting Yes, edit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2281


<!-- page 2282 -->
The configuration setup applies to the current domain and is inherited by its child domain.
The name of the skill changes to <Skill Name> for <Domain Name>. For example, if the
skill configuration - Case summarization for ParentDomain is activated, it overrides the
global setting and applies to both the ParentDomain and ChildDomain. However, if the skill
configuration Case summarization for ChildDomain is activated in ChildDomain, it only applies
to ChildDomain.

Note: The activation order must follow Global > Parent domain > Child domain to ensure
a proper inheritance and overrides. If the child skill configuration in the child domain
is activated before the parent domain, the parent skill configuration can't override the
existing skill configuration in the child domain. Consequently, both the parent skill and
the child skill remain active in the child domain and the result is a misconfiguration.
New skill configuration name

More information about domain separation for CSM can be found in Domain separation and
Customer Service Management

Configure Now Assist for Customer Service Management (CSM) in Virtual
Agent
Use Now Assist for CSM in Virtual Agent to provide users a content-driven generative AI
experience.

Before you begin

Role required: admin
To ensure LLM-based appointment booking works in Customer Service Management, the
following apps are required:

About this task

There are 6 main steps to configure Now Assist for CSM in Virtual Agent:
1. Activate Virtual Agent for Customer Service Management (CSM).
2. Configure Now Assist in Virtual Agent.
3. Install Conversational Appointment Booking.
4. Enable Walk-up Experience Appointment Booking.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2282


<!-- page 2283 -->
5. Configure API credentials for OpenAI

.

6. Enable Schedule a Walk-up Appointment topic in the Virtual Agent.

Procedure
1. Navigate to All > Conversational interfaces > Virtual Agent > Designer.
2. Locate and select Schedule a Walk-up Appointment topic under Now LLM.
3. Select the Properties tab.
4. Locate the check box labeled Now Assist for Virtual Agent under Select LLM assistant to make
topic available.
5. Select Save.
6. Select Publish.

Result

The topic is available and active in the chat window.

Customize access control for conversational flows
You must define an access control list (ACL) for conversational flows. An ACL enables you to
restrict who is able to access and execute a skill to only users with the correct role.

Before you begin

Role required: admin
The following flows include default ACLs for the sn_esm_agent role:
• Add Comment to Task
• Add Work Note to Task
• Create Task for Case
• Reassign Case

Note: An Access Control List (ACL) is already configured for these flows. The steps
outlined below are only required if the customer intends to use these flows with a custom
role.
To assign a custom role, follow the procedure:

Procedure
1. Navigate to sys_security_acl table.
2. Filter by these ACL names:
3. Add your custom role to each ACL record.

Clone the Now Assist for CSM skills
The clone feature enables you to create a copy of a Now Assist skill so that you can experiment
with skill settings and configure the skill to fit your business needs.
Role required: admin
The skills that come with the Now Assist applications have default configurations that are
optimized to serve the most common use cases. If you want to change the skill settings, you can
edit a skill with the Now Assist Admin console or Now Assist Skill Kit and you can create a copy
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2283


<!-- page 2284 -->
of the skill. Creating a copy leaves the original skill configuration intact in case you want to use it
later or want to create another copy from the original. You can activate and configure the copies
of the skills by using the same guided setup as the default skills.
Use Now Assist Skill Kit to create and publish custom prompts and skills for Now Assist for CSM,
including the cloned skills from Now Assist Admin console.
Unified Admin Experience for GenAI Skills:
• Previously, skills cloned in Now Assist Admin console could not be edited in Now Assist Skill
Kit, creating a fragmented setup process. With the new unified admin experience, users
can manage GenAI skills seamlessly in Now Assist Skill Kit. This includes adding necessary
headers as input, configuring or editing prompts, and maintaining all settings in a single
location.
• The unification migrates the Now Assist Admin console setup experience to Now Assist Skill Kit
for all Now Assist for CSM cloned skills.
There are 2 ways to clone Now Assist for CSM skills:
1. Make a copy of a Now Assist skill

from Now Assist Admin console.

https://player.vimeo.com/video/996395898?
h=e609c55303&badge=0&autopause=0&player_id=0&app_id=58479
2. Now Assist Skill Kit

Clone from Now Assist Skill Kit.

https://player.vimeo.com/video/985874233?
h=2ccc18794b&badge=0&autopause=0&app_id=58479
Customizing a Now Assist for CSM skill
Learn how to access, activate, and customize a Now Assist for CSM skill using the Now Assist
Admin console and Now Assist Skill Kit.
Role required: admin
Now Assist for CSM provides base system skills that can be tailored to meet specific business
requirements. Customization ensures that skills align with your organization's workflows, data
sources, and user roles. There are two main ways to customize:
• Using Now Assist Admin console: Modify base system skills, input configurations, and display
settings.
• Using Now Assist Skill Kit: Build and publish custom skills for advanced use cases by
customizing inputs and prompts, and then publish it. You can also use the Now Assist Skill Kit
to clone base system skills, as long as they are the latest versions created after the release of
the Now Assist Skill Kit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2284


<!-- page 2285 -->
Access and activate a skill in Now Assist Admin console
1. Navigate to All > Now Assist Admin console > Skills.
2. Select the Now Assist Skills tab.
3. Select Customer > CSM
4. Choose the skill you want to configure.
5. Select Activate Skill.
6. Go through the guided set up steps and activate the skill.
7. To customize the base system skills:
a. Make a copy of the skill as you cannot directly modify the base system skill.
b. Edit the copied skill's name so it is more descriptive for the LLM.
c. Adjust input configurations by adding fields or creating a new data source.
d. Test the skill with a sample record.

Tip:
▪ ISelect Edit prompt in Now Assist Skill Kit to edit the prompt in Now Assist Skill Kit.
▪ You need the sn_skill_builder.admin role to edit the prompt in the Now Assist Skill Kit
(NASK).
▪ To edit a prompt, locate the prompt for the specified provider, clone it, apply the
necessary changes, add pre or post processors and conditions as needed, finalize
and publish the updated prompt, and then return to test changes on Now Assist
Admin console.
e. Customize how and when the skill capability will exist and be available.
f. Choose how the skill will be triggered.
g. Define who has access to this skill. Roles selected here will be available in the Select
display step.
h. Select where to display the skill- In-product, or in Now Assist panel.
i. Under each display type, open the chevron and specify user roles by entering role names in
the User roles field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2285


<!-- page 2286 -->
j. Review your choices and select Activate to complete the skill customization.

Note: For more information, see Customize a case summarization skill in Now Assist
for Customer Service Management (CSM).

Access and clone base system skills with the Now Assist Skill Kit
1. Navigate to All > Now Assist Skill KIt.
2. Under the ServiceNow skills tab, select the prompt you want to edit in Now Assist Skill Kit

.

Note: You need the sn_skill_builder.admin role to activate and customize the prompt in
the Now Assist Skill Kit (NASK).
3. Create a clone

for the selected skill by selecting the overflow icon

4. Enter a name, description and provider to clone the skill.
5. In the Skill contents pane, select theInputs edit icon and add any inputs that you like to add to
the prompt.
6. In the Prompt screen, select the edit icon and add the desired inputs to the prompt or Create
a new prompt.
7. Test

the prompt.

8. Evaluate

the prompt.

9. Finalize and publish

the skill from the Now Assist Skill Kit.

Warning: Once finalized, you won't be able to edit this version of the prompt. You can
always update and create a new version, or clone and create a new prompt.
10. Test the changes on associated records.
11. Activate

it in the Now Assist Admin console and set display options.

Note: This is not required for all skills.
Customize Now Assist context menu for skills
If you have the admin role, you can customize a Now Assist for Customer Service Management
(CSM) skill so that agents can use the generative AI skills in CSM Configurable Workspace and in
Core UI.

Before you begin

Role required: admin

Note:
The Now Assist context menu configuration is accessible through the Now Assist
Experiences in Now Assist Admin console. After activating the relevant skills, users are
prompted to visit the Case NACM Config however, in the base system , configuration is
already active. By default, it is configured to utilize extended tables for the resolution notes
and activity response generation skill that is provided in the base system.
Case NACM Config is currently only available for resolution notes and activity response
generation skill.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2286


<!-- page 2287 -->
Procedure
1. Navigate to All > Now Assist Admin > Experiences.
2. Select Now Assist context menu.
3. Open the Configuration tab to view all the existing configurations.
4. Find the configuration name Case NACM Config.
5. Under Action, select the

icon

6. Select Edit configuration.
7. In the guided setup, go to General details and customize the table name.
8. Select the Record form fields for table form use cases.
The form fields are active for close notes, additional comment and work notes.
9. Select Save and continue.
10. Select Configure Experience, to configure the actions for the context menu trigger button and
dialog.
There are separate configurations for close notes, additional comment and work notes. Default
action configured is Generate resolution notes.
a. Configure the Actions to Generate resolution notes, Shorten and Elaborate.
b. Configure the Refinement actions to Shorten and Elaborate.
c. Configure the Actions for generated content to Insert.
In the preview you can see how the Now Assist context menu button will look like after
configuration.
By default, the Enable support for extended tables toggle is turned on and this configuration
is shipped as active in the base system. This is to support sparkle on extended table on same
field. Once the skill is active, this experience is available.
11. Select Define access to determine who can access this skill.
By selecting specific roles, you are controlling who can use it. The roles you choose will also be
available in the next step Select display.
Default and Custom Roles:
◦ If no changes are made, the default role sn_esm_agent automatically appear in Define
Access and Select Display.
◦ If custom roles were added before the upgrade, they are updated automatically by a script.
◦ If new roles are created after the upgrade, you can manually add them in both the Define
Access and Select Display.

Note: In the Select Display step, you can only choose roles that were added in the
Define Access step. If you add a role in Define Access, you still need to manually
select it in Select Display to make it active.
12. Select Display to determine where to display the Case NACM Config.
◦ Select In-product desktop to show Case NACM Config in all customer products on forms and
workspaces.
◦ Select roles for whom NACM config will be displayed.
13. After selecting Review and Activate to examine changes, select Done to close the Case
NACM Config settings.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2287


<!-- page 2288 -->
Set up Now Assist in the portal case form
Configure the Now Assist in portal case form to minimize case creation when a resolution already
exists in the current knowledge base or external sources.
https://player.vimeo.com/video/1143919831?
h=e548d4951c&amp;badge=0&amp;autopause=0&amp;%E2%80%A6

Before you begin

Role required: admin

About this task

This configuration involves setting up the record producer, configuring related lists and variables,
testing the configuration, and relating the catalog to the portal.

Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > Record Producers.
2. Search and open the record producer Create case for a product (Now Assist).
The base system configuration details display.
3. Select Copy to duplicate the record producer.
This creates a new version you can customize for your use case.
4. Enter a Name.
This is the title the customers see in the portal.
5. Set the Table name to a specific case type.
6. Modify the Short description and Description to match your use case.
7. Scroll to review the variables list and update as required.
For example, update the client scripts, change variables, add user criteria UI policies, and
virtual agent topics and catalogs. You will find variables called AI Search Assist and AI Genius
Results options in your configuration. Do not delete Start, AI Search Assist, AI Genius Results
Options, and Continue with Record Creation to maintain the experience. These variables
leverage the AI Search genius result widget found under AI Search Assist record producer
configurations.
8. Select Save after completing all changes in the record producer configuration.
9. Select Try It to preview the record producer.
10. Navigate to All > AI Search > AI Search Assist > Record Producer Configuration to edit the
record producer configuration that we previously duplicated.
11. Select New.
12. On the Record Producer Configuration form, fill in the following fields.
Field

Value

Search application information

Search Application

Select the configuration for a portal that in­
cludes Now Assist Q&A Genius Results. As an
example, you might select the Service Portal
Default Search Application configuration.

Record producer information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2288


<!-- page 2289 -->
Field

Value

Record producer

Select a record producer. As an example, you
might select the Create case for a product
record producer.

Search variable

Select the name of the field that you want to
search and generate Genius Results from. As
an example, you might select the Description
field as your search variable.

13. Select Submit.
14. Navigate to Service Portal > Portal to connect the record producer to a catalog and Portal.
15. Search for the portal configuration and select it.
16. Scroll down to note the Catalog and Taxonomy topics.
17. Select the Taxonomy value.
18. Select a topic under Child Topics.
19. Select the Enable AI Search check box.
20. Select a pre-configured Search Application – CSM Portal Default Search Application.
21. Select Update.
22. Return to the record producer.
23. Edit the Catalog field to include the catalog we noted from the Portal settings.
24. Select Assigned Topics and add the relevant topic to ensure the record producer appears in
the correct location of the portal.
25. Select Save.
26. Navigate to the Portal and under Catalogs verify that the record producer appears under the
specified topic.

Note: Ensure the catalog you related to the record producer is also related to the portal
and fully published.
27. Navigate to the Service Portals.
28. Open the catalog and go to the record producer you created.

Result

The Now Assist Case in form portal is now configured and available for use.
Related topics
Using Now Assist in portal case form

Configure AI Search to use with the Troubleshooting steps identification AI
agent
Configure AI Search with the Troubleshooting steps identification AI agent to fetch the relevant
cases and knowledge articles that could help solve your issue.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2289


<!-- page 2290 -->
About this task

This AI agent relies on AI Search for fetching the relevant cases and knowledge articles that
could help solve your issue. For more information on configuring AI Search, see Using AI Search
with CSM Configurable Workspace and Semantic index configuration for indexed sources .

Procedure
1. Navigate to All > AI Search > Indexed Sources > [CSM AIS] Case.
2. In the Semantic Index Configuration related list, select Body.
3. Select Active.
4. Select Save.
Configure the Troubleshooting steps identification AI agent to use the Search retrieval tool
Configure the Troubleshooting steps identification AI agent to use the Search retrieval tool to
fetch relevant cases and knowledge articles, including their attachments, to help solve your
issue.

Before you begin

Role required: admin

About this task

The Search retrieval tool is configured to use the [CSM AIS] Configurable Workspace Search
Config AI search profile. By default, this profile is linked to the Case and Knowledge search
sources, which are defined in the [CSM AIS] Case and Knowledge Table indexed sources. For
more information, see Indexed sources in AI Search .

Procedure
1. Navigate to All > AI Search > Indexed Sources > New.
2. On the form, fill in the Name, Source, and Retention Policy fields and select Submit.
For a description of the field values, see Indexed Source form .
3. In the Semantic Index Configuration related list, select New and fill in the details as needed.
For a description of the field values, see Semantic Index Configuration form .
4. In the Semantic Index Fields related list, select New and add the fields of the table that you
want included in your search.
For a description of the field values, see Semantic Index Field form .
5. Navigate to All > AI Search Sources > New.
6. On the form, fill in the Name, Indexed Source, and Conditions fields.
For a description of the field values, see Search Source form .
7. Navigate to All > AI Search > Search Profile > [CSM AIS] Configurable Workspace Search
Config.
8. In the Search Sources related list, select Link Existing and then link the previously created
search source.
9. Activate the [CSM AIS] Configurable Workspace Search Config AI search profile by selecting
Publish.
10. Navigate to All > AI Agent Studio > Overview > Explore All.
11. On the AI agents tab, navigate to Troubleshooting steps identification AI agent > Add tools
and information > Search retrievals and select Get Similar cases and Relevant knowledge
articles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2290


<!-- page 2291 -->
12. In the Edit search retrieval window, add the previously created indexed source into Search
sources and then specify what to search for in the Fields returned and Semantic index fields.
For a description of the field values, see Add a search retrieval to an AI agent .
13. Select Save.

Result

The Troubleshooting steps identification AI agent can now use the Search retrieval tool to fetch
the relevant information from additional sources.

Using Now Assist for Customer Service Management (CSM)
If you have an agent role, you can summarize the customer chat conversations, summarize the
case details, and generate the case resolution notes with the Now Assist for Customer Service
Management (CSM) application.

Skills reuse
By default, all skills exist in the global domain. When you use Now Assist in a domain-separated
environment, users are only able to access data within their domain. For example, if a user uses
the summarization skill, Now Assist only uses material that exists within the user's domain when
generating that summary. Additionally, there is no co-mingling of data for domain-separated
instances when using generative AI skills. The data resides only on the instance, and the shared
services used for generative AI do not persist any requests (prompts) and responses. For more
information, see Domain separation in the Now Assist Admin console . (Note that global domain
is not the same as global scope. For more information, see Exploring Next Experience pickers .)
Summarize your chat conversations to understand the chat context quicker:
• Summarize the chat between the Virtual Agent and the customer when the chat is handed off
to a live agent.
• Summarize the chat between a live agent and a customer when a chat is handed off to another
live agent or when an agent wraps up the conversation and ends the interaction.
• Summarize the chat at any point during the conversation using the /summarize quick action.
Summarize the case details to understand the case context quicker. These summaries are useful
for long-running or complex cases that include multiple conversations between agents and
customers.
Generate the case resolution notes to wrap up cases faster. When you're ready to propose a
solution to a customer, this feature can generate resolution notes and add them to the Case form.
The resolution notes also provide the context about the case resolution to other agents who
might encounter similar issues.

Summarize a chat conversation by using Now Assist for Customer Service
Management (CSM)
Generate a summary of the Virtual Agent chat history and the chat conversation between a
live agent and a customer by using the chat summarization skill in the Now Assist for Customer
Service Management (CSM) application.
Summarize a chat with Now Assist for Customer Service Management

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2291


<!-- page 2292 -->
About this task

The chat summarization skill enables you to do the following actions:
• Summarize the Virtual Agent chat history and provide a summary of the actions taken by the
customer before the customer engages with a live agent.
• Summarize the live agent and customer chat history, including the actions taken by the
customer before the live agent hands off the call to another live agent and the customer
engages with the new agent.
• Summarize the chat at any point during the conversation using the /summarize quick action.
• Summarize the chat between a live agent and a customer when a chat is handed off to another
live agent or when an agent wraps up the conversation and ends the interaction.

Note: You can also generate a chat summary on demand from the Now Assist panel.
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. In CSM Configurable Workspace, open a chat from your inbox.
The chat summarization skill creates an inline summary in the Active Chat window. This
summary includes the customer’s issue and the actions that the customer has taken before
the customer engaged with a live agent. The summary appears in the Active Chat window and
is identified by the Now Assist icon (

) and the AI chat summary label.

Interaction record with chat summaries

3. Optional: Provide feedback for the chat summary by selecting the helpful icon (
helpful icon (

) or not

) on the summary card.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2292


<!-- page 2293 -->
This feedback improves the generative AI model and can help to improve the future versions
of this skill. The system gathers the feedback on each generated summary and stores it in the
generative AI logs (sys_generative_ai_log_list.do).
4. Chat with the customer to get any additional details about their question or issue.
For example, if the customer is having an issue with the hardware, you may need the hardware
model number and serial number.
5. In the Active Chat window, use the /summarize quick action to summarize the chat during
the conversation with the customer.
The chat summarization skill creates an additional inline summary in the Active Chat window.
This quick action is helpful if you want to summarize long or detailed customer conversations.
6. Optional: If Live Agent to Live Agent handoff is enabled, transfer a chat to another agent after
accepting an incoming chat with the following steps:
a. Select the Transfer to Agent icon

to transfer the interaction to another agent.

b. Select the name of another live agent.
c. The second live agent selects Accept to join the chat.
Another summary of the chat is created when the conversation moves from one live agent to
another live agent.
7. End the chat conversation by selecting End Chat.
The chat summarization skill updates the Short description and Chat Summary fields on the
interaction record when you end the chat.

Note: If a chat summary isn’t available for the interaction, the Chat Summary field
doesn’t appear on the interaction record.
8. Review the text in the Short description and Chat Summary fields and make any necessary
corrections.
Because the information in these fields is automatically generated, it's a good idea to review
the text and make sure it's accurate.
9. Select Save.

What to do next

If necessary, you can create a case from an interaction record. The system uses the information
from the Short description and Chat Summary fields on the interaction record to populate the
Short description and Description fields on the case record.
The system displays the Now Assist icon ( ) next to these fields and removes the icon if the
agent makes changes to the fields and saves the record.

Summarize a Sidebar discussion by using Now Assist for Customer Service
Management (CSM)
Generate a summary of the Sidebar discussions between agents, requesters, and subject
matter experts by using the chat summarization skill in the Now Assist for Customer Service
Management (CSM) application.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2293


<!-- page 2294 -->
About this task

You can do these actions by using Sidebar discussion summarization:
• Summarize the Sidebar discussion at any point during the discussion using the /Summarize
quick action.
• Share the Sidebar discussion to the work notes.
• Provide feedback for the summary.

Note: The Sidebar discussion summarization skill is on the chat skill card in the Customer
group.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace and open a customer service
case that supports Sidebar discussion and summarization.
2. Choose an existing discussion, or start a new discussion.
Start a new discussion by doing these actions:
a. Select Discuss.
b. In the Start a Sidebar discussion modal, add participants.
c. Select Start Discussion.
Sidebar discussion modal

3. Generate a summary of the Sidebar discussion during the conversation either by using the
Summarize quick action (enter /Summarize in the Active sidebar discussion window), or by
selecting the quick action icon

.

4. After summarizing the Sidebar discussion, you can add it to the case work notes, and provide
feedback about it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2294


<!-- page 2295 -->
Option

Procedure

a. Select Share as Work notes.
Save the summary information by adding it
to the case work notes

b. In the Share Case summary as Work notes
dialog box, edit the summary.
c. Select Save to Work notes.
If you'd like to provide feedback, select either
the helpful icon (

) or the not helpful icon

).
Provide feedback for the summary

This feedback improves the generative AI
model and can help to improve the future
versions of this skill. The system gathers the
feedback on each generated summary and
stores it in the generative AI logs (sys_genera­
tive_ai_log_list.do).

Generate a chat reply recommendation by using Now Assist for Customer
Service Management (CSM)
Generate a reply based on the context of the chat conversation using Now Assist icon. Chat reply
recommendations can help provide agents with quick replies to common questions.

Before you begin

Role required: admin

About this task

You can do these actions by using the Now Assist icon:
• Generate a recommended reply that is based on the context of the conversation.
• Refine the recommendation by elaborating or shortening the response.

Note: The Chat reply recommendation skill is on the Chat skill card in the Customer
group.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Open the inbox and accept the chat interaction.
In the Active Chat section of the interaction, a summary of the Virtual Agent conversation is
generated. The summary includes the actions that were taken before the requester engaged
with the live agent. With this information, you can get an overview of what the requester has
already mentioned in the Virtual Agent conversation and troubleshoot the issue.
3. Chat with the requester to get any additional details about their question or issue, if needed.
For example, if the requester is having an issue with hardware, you may need the hardware
model number and serial number.
4. In the chat message window, either type a response, or leave blank, and then select the Now
Assist icon

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2295


<!-- page 2296 -->
Now Assist icon Modal

Chat message window

Now Assist icon

Provides the option to refine your response:
◦ Elaborate
◦ Shorten
Typed response

Provides the option to change your tone:
◦ Casual
◦ Formal
◦ Sympathetic

Left blank

Generates a recommended reply that is
based on the context of the conversation up
to this point.

The reply response appears in the Now Assist icon modal.
5. Review the generated reply and select Refine to modify the response, or select Insert to paste
the response into the chat message window.
If the reply response was refined, you can toggle between versions.
6. In the chat message window, select Send.
7. End the chat by selecting End Chat.
Related topics
https://www.youtube.com/watch?v=6A5jwZFOPR4

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2296


<!-- page 2297 -->
Summarize a case by using Now Assist for Customer Service Management
(CSM)
Generate a summary from the fields that you selected on the case record and quickly
understand the case context by using the case summarization skill in the Now Assist for
Customer Service Management (CSM) application.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

About this task

The case summarization skill provides you with a concise summary of a customer service case,
including the issue, actions taken, and resolution details. With this skill, you can do the following
tasks:
• Generate an initial summary of a case so that you can understand the case context.
• Summarize all the work that has been done on a case.
The case summarization skill is available in CSM Configurable Workspace and in Core UI.
• In CSM Configurable Workspace, you use the Case summary by Now Assist component to
generate a summary. This component appears above the activity stream.

Note: You can also generate a case summary on demand from the Now Assist panel.
• In Core UI, you select the Summarize button on the case record to generate a summary.
The case summarization skill checks the case record to determine if there is enough information
available to create a summary:
• When an agent opens the case record.
• When an agent refreshes the case record page
If there is enough data, the Case summary component displays the Summarize button. If there is
not enough data, the component displays a message in place of the button.

Procedure
1. Navigate to Workspaces > CSM Configurable Workspace and open a customer
service case.
2. In the Case summary by Now Assist component, select Summarize.
The Case summary by Now Assist component appears above the activity stream. The
component is collapsed by default and expands to display the summary. For longer summaries
that don't fit in the window, select View more and use the scroll bar to view the rest of the
content.

Note: Generating and displaying the summary may take several seconds.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2297


<!-- page 2298 -->
Case record with case summary

3. Optional: When you're finished summarizing a case, you can add it to the case work notes,
expand or collapse it, provide feedback, copy it, or view information about it.
Option

Procedure

a. Select Share as Work notes.
Save the summary information by adding it
to the case work notes

b. In the Share Case summary as Work notes
dialog box, edit the summary.
c. Select Save to Work notes.
Select the expand card icon (

Expand or collapse the summary

) or the col­

lapse card icon (
) to see more details or
fewer summary details.
If you think that the summary was helpful, se­
lect the helpful icon (
). If you think that the
summary wasn’t helpful, select the not helpful
icon (

Provide feedback for the summary

Copy the case summary

).

This feedback improves the generative AI
model and can help to improve the future
versions of this skill. The system gathers the
feedback on each generated summary and
stores it in the generative AI logs (sys_genera­
tive_ai_log_list.do).
Select the copy to clipboard icon (
) to use
the case summary information for another pur­
pose, such as pasting into an email.

View the information about the case summa­ If you want to check some details about the
ry
summary, select the more info icon (
).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2298


<!-- page 2299 -->
Generate an email response by using Now Assist for Customer Service
Management (CSM)
Generate an email response that is based on the case and email context by using the Now Assist
icon. With email response, agents can create quick emails or responses, helping minimize errors
and ramp up productivity.
https://player.vimeo.com/video/1129307545?
h=ee0d47dd56&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479%2Fembed

Before you begin

Role required: admin

About this task

An agent can do these actions by using the Now Assist icon:
• Generate a recommended email response that is based on the case and email context.
• Generate recommended email for new, forwarded, and finishing draft emails.
• Refine the recommendation by elaborating or shortening the response.
• Availability of email template recommendations while composing an email.

Note: The email response skill is on the Case skill card in the Customer group.
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace and open a customer service
case that supports the email response.
2. Choose how to compose an email.
Method

Description

a. Select Compose email.
b. Write six or more words and then select the
words that you just wrote to see the Now As­
sist icon
Compose email from More actions

c. Select the Now Assist icon
response.

to generate a

d. Select Refine to shorten or elaborate the
content.
e. Get a recommendation that is based on the
existing context.
a. In the activity stream, select an existing
email that you want to reply to.
Compose an email from Activity stream

b. Position your cursor within the email mes­
sage window to see the Now Assist icon

.

c. Select the Now Assist icon
to receive a
recommendation that is based on the exist­
ing context.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2299


<!-- page 2300 -->
3. In the email message window, either type a response, or leave blank, and then select the Now
Assist

.
Now Assist icon modal

Email message window

Now Assist icon

Provides the option to refine your response:
◦ Elaborate
◦ Shorten
Typed response

Provides the option to change your tone:
◦ Casual
◦ Formal
◦ Sympathetic

Left blank

Generates a recommended email response
that is based on the context of the email up to
this point.
◦ Shows email template recommendations
while composing an email.

Use template

◦ Generates reply suggestions in the com­
pose area using preconfigured templates,
including headers, footers, and signatures.

4. Update the selected text with refined text by selecting Replace.
5. Review the generated email response and select Refine to modify the response, or select
Insert to paste the response into the chat message window.
6. Select Send Email or discard the draft if you don’t like the recommendation.

Generate the resolution notes for a case by using Now Assist for Customer
Service Management (CSM)
Generate the resolution notes for a case, propose the resolution to the customer, and add the
resolution information to the case record by using the resolution notes generation skill in the Now
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2300


<!-- page 2301 -->
Assist for Customer Service Management (CSM) application. By generating the resolution notes,
you can wrap up cases faster and provide information about the case resolution to other agents
who might encounter similar issues.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

About this task

In CSM Configurable Workspace and Core UI, you can generate the resolution information for
a case by selecting Propose Solution on the case record. This UI action displays the Propose
Solution modal. Using this modal, you can select a resolution code, add information about the
cause of the issue, and review and edit the resolution notes text.

Note: The Propose Solution UI action is available to the customer service agents who
have assigned cases in the Open state.
You can also generate resolution information on demand from the Now Assist panel.

Note: The resolution notes generation skill requires a minimum of 50 words in the case
record to generate the resolution notes. If the resolution notes cannot be generated, the
system displays a message below the Resolution notes field.

Note: You can skip this if you are using the Now Assist Content menu experience for
Resolution Notes Generation skill.

Procedure
1. In CSM Configurable Workspace, open a customer service case.
2. Select Propose Solution.
The system generates a resolution summary and displays the information in the Propose
Solution modal, which includes the following fields:
◦ Resolution code
◦ Cause
◦ Resolution notes
If the Resolution notes field on the case record is empty, the resolution notes generation skill
adds the information to this field in the modal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2301


<!-- page 2302 -->
Propose Solution modal

3. Select a Resolution code for the case.
A resolution code describes how the case was resolved. For example, common resolution
codes include:
◦ Solved: Fixed by Support/Guidance provided
◦ Solved: Fixed by closing related PRB
◦ Solved by customer
4. Optional: If you know the cause of the customer's issue, add it to the Cause field.
For example, a customer's issue may be the result of a software upgrade.
5. In the Resolution notes field, review the resolution summary and make any necessary
corrections.
Because the information in this field is automatically generated, it's a good idea to review the
text and make sure it's accurate. Any changes that you make are saved when you save the
case record.
6. Optional: If you want to add the resolution information to the case activity stream, select the
Add resolution notes to comments check box.
Selecting this check box makes the resolution notes available to anyone who can view the
case activity stream.
7. Select Propose.
◦ The system populates the fields in the Closure Information section of the case record with
the information from the Propose Solution modal.
◦ The case moves to the Resolved state.
◦ The resolution is proposed to the customer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2302


<!-- page 2303 -->
Generate resolution notes in case form
Use the Now Assist context menu in the resolution notes field of the case form in both Core UI
(UI16) and Workspace to create resolution note.

Before you begin

Role required: admin

About this task

In both the CSM Configurable Workspace and Core UI, you can generate resolution notes for a
case by using the Now Assist context menu within the resolution notes field in the case form.
An agent can do these actions by using the Now Assist icon

:

• Generate resolution notes based on the case context.
• Refine the recommendation by elaborating or shortening the content.

Note: The case must be in the open state.
Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace and open a customer service
case that is in an open state.
2. Navigate to the Resolution notes field in the case form.
3. Select the Now Assist icon
Now Assist icon

.

generates a recommended text that is based on the context of the case.

Generate resolution notes using the Now Assist icon

4. Select Insert to add the generated content into the resolution notes field.
5. Optional: Review the generated content and select Refine to modify the content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2303


<!-- page 2304 -->
You get the option to either elaborate or shorten the content as needed.
Refine resolution notes using the Now Assist icon

Generate a knowledge article from the CSM Configurable Workspace and
classic environment with Now Assist
Generate the knowledge articles for resolved and closed cases within the CSM Configurable
Workspace and classic environment with Now Assist.

Before you begin

To generate a knowledge article for a case, the case must be in the Resolved and Closed state,
and must not already have a knowledge article linked to it. Although the Create Knowledge
button appears in other states, it won’t trigger the skill. In those cases, clicking the button just
opens the KB article form for manual entry.
Ensure that Configure knowledge generation is set up.

Important:
•◦ For Now Assist panel, if property sn_customerservice.enable_knowledge_kcs and KCS
Article Template is not enabled then it will create article using standard template for
cases.
◦ For Core UI / Workspace, if sn_customerservice.enable_knowledge_kcs and KCS
Article Template is not enabled then it will not show Create Knowledge button on case
form.
Make sure that your administrator enables Now Assist experience on the Create Article page to
ensure that the following knowledge base generation criteria is configured:
• The KB generation skill is activated.
• In the Now Assist Admin console, ensure that the following criteria are in place:
◦ Specify the table record and input fields.
◦ Specify the conditions for the skill availability from the list of attributes.
◦ Display the knowledge base generation feature In-product and specify the Now Assist panel.
• To manage who can access knowledge bases and knowledge articles, you can set
permissions to define which users or user groups have the ability to read or contribute to the
content. For more info, see Managing access to knowledge bases and knowledge articles
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2304


<!-- page 2305 -->
Role required: agent

About this task

In CSM Configurable Workspace and classic environment, you can generate the knowledge
article information for a case by selecting Create Knowledge on the case record. This UI action
displays the Use Al to draft this article modal. By using this modal, you can choose to write the
article yourself or draft an article with Now Assist and review and edit the knowledge article text.

Note:
The Create Knowledge UI action is available to the customer service agents who have
assigned cases in the Resolve or Close state. You can also generate knowledge article
information on demand from the Now Assist panel. For more information, see Knowledge
article generation.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Open a case that is assigned to you.
The case record status should be either resolved or closed.
3. Create the article by selecting Create Knowledge from the UI actions for the case record.

Note:
The Create Knowledge UI action is only visible when a case doesn't have an existing
knowledge article that is associated with it.
Alternative way to trigger the skill Request the generative AI capabilities in Customer
Service Management by using the Now Assist panel.
4. In the Create article modal, select a knowledge base and an Article template, if displayed.

Note: If no options are displayed, the default template selected by your administrator in
the Now Assist Admin console is used.
5. Select Create Article.
6. In the Use Al to draft this article modal, select Yes, draft with Now Assist.
Modal to draft article using AI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2305


<!-- page 2306 -->
7. Optional: In the new modal, search for similar cases that can be used to generate the article;
otherwise, select Cancel.
Additional relevant tasks

The completed article is displayed in the chosen template with a success message "This
article was drafted by Now Assist. Be sure to review it for accuracy before saving."

Note:
◦ If no similar cases exist, this modal doesn’t appear, and the article is created. The
generated article, based on the chosen relevant records, is linked to both the account
case and all the relevant cases selected. Similar cases are populated by the AI Search
profile titled [KM] Multi-task Article Generation.
◦ You can select up to five additional relevant cases in the new modal to generate the
article.
◦ You can modify the draft before saving it. The article appears in a new tab with a unique
ID number for the knowledge article and is attached to the parent record.
◦ If Now LLM Service fails to generate a result, an error message is displayed.
◦ When creating an article by using Now Assist, after the process is triggered, it can't be
stopped. Now Assist continues to generate the article even if you close the modal.
8. Select the Knowledge Base and the Language in the pop-up window What language should
Now Assist draft this article in.
9. Select Continue.
The article is generated in the selected knowledge base and language, and the content is
displayed in that same language.
10. Select some text in the KB article and then select the Now Assist icon

.

Now Assist icon
generates a recommended text that is based on the context of the selected
content in the article up to that point. You can refine your response by selecting to elaborate or
shorten the selected text.
11. Select Insert to paste the generated response.
12. Review the Now Assist generated article and select Save or Publish.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2306


<!-- page 2307 -->
The Now Assist success message disappears which means that it’s no longer a Now LLM
Service generated article.

Note: Now Assist icon

is also available for the published KB articles.

Related topics
Now Assist in Knowledge Management

Summarize a call by using Now Assist for Customer Service Management
(CSM)
Generate a summary of the call conversation between a live agent and a customer by using the
call summarization skill in the Now Assist for Customer Service Management (CSM) application.

Before you begin

To make the skill available in the Now Assist Admin console, install Install ServiceNow Voice
applications .
Role required: sn_customerservice_agent, sn_customerservice.consumer_agent, sn_csm_agent

About this task

The call summarization skill enables you to do the following actions:
• Summarize the call between a live agent and a caller when either the caller or the agent wraps
up the conversation and ends the interaction.
• Generate a call summary on demand from the Now Assist panel. For more information, see
Request the generative AI capabilities in Customer Service Management by using the Now
Assist panel.
• When real-time transcription is enabled, agents can see a transcript of the voice calls
while interacting with the customers. With real-time transcription, an agent gets a better
understanding of the customer issues, and a manager gains insights into the customer trends
and agent training gaps.
• When real-time transcription is disabled, agents don't see the conversation panel. Once the
transcripts are ready, agents can see a Now Assist banner showing field predictions being
generated. Then, another banner shows up with the predicted fields.
• A call summary is available for both outbound and inbound calls. For more information, see
Real time transcriptions for ServiceNow Voice for Customer Service Management .
• Dynamic translation is supported for call summarization.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Set your status as Available in CSM Configurable Workspace so that you can receive a call
request when a customer calls in and requests to speak to an agent.
The call summarization skill creates an inline summary in the Active Chat window. This
summary includes the transcript of the conversation between the agent and the customer.
3. Chat with the customer to get any additional details about their question or issue.
In the Active Chat window, a transcript of the call conversation with the customer is created.
For example, if the customer is having an issue with the hardware, you may need the hardware
model number and serial number.
4. Optional: If enabled, transfer a call to another agent after accepting an incoming call and do
the following actions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2307


<!-- page 2308 -->
You need to have Advanced Work Assignment set up for an agent-to-agent transfer. For more
information, see advanced work assignment setup .
a. From the keypad, select Quick connects while you’re still connected to the customer.
b. Select the name of another live agent.
c. Select Call.
▪ If the second agent selects Join, the second agent joins the conversation with both the
first agent and the customer. The customer can have a conversation with both agents.
▪ If the second agent selects Swap, the second agent joins the conversation while the first
agent is put on hold. The customer is in a conversation with the second agent only.
▪ The Assigned to field is updated with the new agent’s name and a summary card of the
call is created in the conversation thread when the call is transferred from one live agent to
another.
5. End the conversation by selecting End call.
The call summarization skill updates the Short description and Chat Summary fields on the
interaction record when you end the call.

Note:
If a call summary isn’t available for the interaction, the Chat Summary field doesn’t
appear on the interaction record.
6. Review the text in the Short description and Chat Summary fields and make any necessary
corrections.
Because the information in these fields is automatically generated, human review of the text is
necessary to ensure its accuracy.
7. Select Save.
Interaction record with call summary

What to do next

If necessary, you can create a case from an interaction record. The system uses the information
from the Short description and Chat Summary fields in the interaction record to populate the
Short description and Description fields in the case record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2308


<!-- page 2309 -->
The system displays the Now Assist icon ( ) next to these fields and removes the icon if the
agent changes the fields and saves the record.

Using conversational search in Now Assist panel
Get common case-related information from the KBs within the case record by asking questions in
the Now Assist panel.
Agent Interaction with Now Assist panel and Knowledge Bases (KBs): As an agent, you should
be able to ask questions within the Now Assist panel (NAP) to find any relevant information. If
the answer to your question is available in the KBs, it is displayed within the Now Assist panel.
Additionally, the sources from where the information is derived is also shown. If the answer is not
available within the KB search, you are redirected to the global search experience.
Benefits
• Efficiency: Agents can quickly find answers without leaving the Now Assist panel.
• Transparency: Sources of information are clearly indicated, enhancing trust.
• Comprehensive Search: If the answer isn't found in the KBs, agents are redirected to a global
search to ensure no information is missed.
• Customer Support: Agents can quickly resolve customer issues by accessing detailed and
accurate information and enhancing the customer experience.
To use the feature, do the following:
1. In Core UI or CSM Workspace, open a case that is assigned to you.
2. From the header menu, select the Now Assist icon to open the Now Assist panel.
3. In the Now Assist panel, type in a question related to a case.

Using scheduling assistant via GenAI in Virtual Agent
Book, reschedule, and cancel appointments with Virtual Agent conversations using Now Assist.
Set up a new appointment, modify an existing one, or cancel an appointment with a streamlined
and user-friendly flow.
Virtual Agent conversations supported by Now Assist uses Large Language Model (LLM) to
communicate with customers.

Booking Appointments
To book a new appointment:
1. Initiate the Conversation: The logged-in user contacts your business via your portal. User starts
a chat with the Virtual Agent through the Now Assist panel. The user enters the appointment
booking request into the chat, and the Virtual Agent uses Large Language Model (LLM)to
understand the request.
2. Provide Details: The Virtual Agent asks the user to share the necessary details such as the
date, time, location and purpose of the appointment. The user chooses the purpose, a location
and a date and time slot for the appointment.

Note: If the time provided by the user has a conflict with the location's calendar, the
Virtual Assistant opens the calendar for the requester to choose a new time.
3. Confirm the Appointment: The Virtual Agent confirms the details and books the appointment in
the user’s calendar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2309


<!-- page 2310 -->
Rescheduling Appointments
To reschedule an existing appointment:
1. Start the Chat: The logged-in user contacts your business via your portal. The user enters the
appointment booking request into the chat, and the Virtual Agent uses Large Language Model
(LLM)to understand the request.
2. Specify the Appointment: The user chooses an appointment to reschedule.
3. New Details: The Virtual Agent shares the new dates and times for the rescheduled
appointment. User chooses a date and time for the rescheduled appointment.
4. Confirmation: The Virtual Agent updates the calendar and confirms the new appointment
details.

Canceling Appointments
To cancel an appointment:
1. Begin the Conversation: The logged-in user contacts your business via your portal. The user
enters the appointment booking request into the chat, and the Virtual Agent uses Large
Language Model (LLM) to understand the request.
2. Identify the Appointment: User chooses the date and time of the appointment they wish to
cancel.
3. Confirm Cancellation: The Virtual Agent removes the appointment from the user’s calendar
and confirm the cancellation.
Now LLM Service ensures that these interactions are smooth and efficient, allowing you to
manage your schedule with ease.

Suggested steps generation in Now Assist for Customer Service Management
(CSM)
Generate suggested steps automatically by analyzing clusters of closed cases with similar case
resolution in the Now Assist for Customer Service Management (CSM) application.

Before you begin

Role required: sn_esm_agent

About this task

The system uses data from the Short description field and the filter conditions set in the case
input table to generate the suggested actions based on similar past resolved cases. These steps
outline the next best actions that agents can take as part of resolving cases.
If suggested steps are available for a case, Now Assist for CSM generates and displays these
steps in a card at the top of the Recommended Actions tab in the contextual side panel.

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Using the List icon

, open a case that is not in Closed or Complete state.

3. Select the Recommendations icon in the contextual side panel to display the Recommended
Actions tab.
The system displays the Suggested steps by Now Assist card at the top of the tab.
4. In the Suggested steps by Now Assist card, select Generate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2310


<!-- page 2311 -->
The steps to resolve the case appears in the Recommendations window in the case record.
This action may take a few minutes.
Suggested steps by Now Assist

Analyze sentiments in Now Assist for Customer Service Management (CSM)
Make informed decisions on cases based on requester's sentiment and the reasoning behind it
in the Now Assist for Customer Service Management (CSM) application.

Before you begin

Role required: sn_esm_agent role

Procedure
1. Navigate to the case or case form in the Core UI or in CSM Configurable Workspace.

To

Navigate in Core UI

Do this

a. Go to All > Cases
The case list view appears.

You can analyze the Sentiment and
Sentiment trend for the case list.
b. Select a case.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2311


<!-- page 2312 -->
To

Do this

The case form view appears.

c. In the Sentiment field, select the information
icon
to see the reasons for the
sentiment.

Navigate in CSM Configurable Workspace

a. Go to Workspaces > CSM Configurable
Workspace
b. Select the List icon

.

c. Go to Cases > Open
The CSM Configurable Workspace list view
appears.

d. Select a case.
The CSM Configurable Workspace form
view appears.

e. Select the information icon
reasons for the sentiment.

to see the

2. Optional: In Core UI or CSM Configurable Workspace list view, you can sort the cases based
on the sentiment scale (Very Positive, Positive, Neutral, Negative, or Very Negative) and the
sentiment trend.
3. Optional: Manually refresh a sentiment.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2312


<!-- page 2313 -->
a. In the Core UI or in CSM Configurable Workspace, enter a comment in the Additional
Comments field.
b. In the CSM Configurable Workspace interface, a red dot appears on the information icon
next to the sentiment.
c. Select the information icon
and then select the refresh icon
to see the updated
sentiment scale (Very Positive, Positive, Neutral, Negative, or Very Negative)and sentiment
trend.

Request the generative AI capabilities in Customer Service Management by
using the Now Assist panel
Request the contextual generative AI capabilities, such as a chat summary, case summary, case
resolution notes, call summary, or knowledge article generation in the CSMCustomer Service
Management application by using the conversational interface in the Now Assist panel.

Before you begin

Make sure that Next Experience is enabled in the instance. For more information, see Next
Experience UI .
Make sure that AI search
and Now Assist in Virtual Agent
conversational subflows and actions to work.

are enabled in the instance for the

Role required: sn_customerservice_agent, sn_customerservice.consumer_agent

About this task

You can use the Now Assist panel in CSM Configurable Workspace to request a chat, call or case
summary, generate case resolution notes and knowledge article, ask a question about a case,
Use AI agents to complete cases and use conversational subflows and actions.
For more information about the Now Assist panel, see Now Assist panel
activating the Now Assist panel, see Turn on the Now Assist panel .

. For information about

Procedure
1. Navigate to Workspaces > CSM/FSM Configurable Workspace.
2. Log in to an instance where the Now Assist for CSM application is installed.
3. Request the generative AI capabilities in CSM for an interaction or case by selecting the Now
Assist icon

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2313


<!-- page 2314 -->
Now Assist panel

4. After you request the generative AI capabilities, you can summarize a chat for an interaction,
summarize a chat for a case created from an interaction, summarize a case, generate the
resolution notes for a case, summarize a call, generate a knowledge article, ask questions
about a case, use AI agents to complete cases, and complete tasks with conversational
subflows and actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2314


<!-- page 2315 -->
Option

Description

a. Open the interaction.
b. From the header menu, select the Now As­
Summarize the chat for an interaction

sist icon

.

c. In the Now Assist panel, select Chat Sum­
marization. A summary of the chat conver­
sation with the live agent is displayed.
a. Open the case that was created from an in­
teraction.
Summarize the chat for a case that is creat­
ed from an interaction

b. From the header menu, select the Now As­
sist icon

.

c. In the Now Assist panel, select Chat Sum­
marization. A summary of the chat conver­
sation with the live agent before the case
was created is displayed.
a. Open the case.

Summarize a case

b. From the header menu, select the Now As­
sist icon

.

c. In the Now Assist panel, select Summarize
a record.
a. Open the case.
Generate case resolution notes

b. From the header menu, select the Now As­
sist icon

.

c. In the Now Assist panel, select Generate
resolution notes.
a. Open the case.
b. From the header menu, select the Now As­
Summarize a call

sist icon

.

c. In the Now Assist panel, select Summarize
conversation. A call summary of the conver­
sation with the live agent is generated on
the details page.
a. Open the case.
b. From the header menu, select the Now As­

Generate a knowledge article

sist icon

.

c. In the Now Assist panel, select Generate Ar­
ticle. A knowledge article is drafted for the
case using task data, comments, and work
notes from the activity stream.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2315


<!-- page 2316 -->
Option

Description

a. Open the case.
b. From the header menu, select the Now As­
Ask questions about a case

Use AI agents to complete cases

sist icon

.

c. In the Now Assist panel, enter a case assist
topic question and select a case assist top­
ic. Information requested about the case is
shown.
a. Get notified when an AI agent use case is
triggered.
b. Follow the onscreen instructions to com­
plete the task.

5. You can also use the Now Assist panel to type in a question related to a case and complete
tasks with conversational subflows and actions.
Available actions and subflows

Example questions that can be asked

Action- Add comments to task

I want to add comments to a case

Action- Add work notes to task

I want to add work notes to a case

Subflow- Create task for case

I want to create a task for a case

Subflow- Reassign case

I want to reassign a case

Information requested about the case is shown. Conversational subflows and actions capture
users' intents when requesting to run specific subflows and actions, along with all necessary
details for those subflows and actions. This streamlines the user experience by enabling them
to accomplish everything in one place within the Now Assist panel.

Use sentiment analysis dashboard
Visualize and interpret customer sentiment across cases using the sentiment analysis
dashboard and GenAI insight cards.
The sentiment analysis dashboard provides a comprehensive view of customer sentiment
across cases and accounts. It includes visualizations, filters, and GenAI-generated insights to
help identify sentiment trends, root causes, and performance across channels and assignment
groups.

Entry Point Widget
The sentiment snapshot widget can be accessed from the CSM/FSM configurable workspace
home page. It displays a preview of the dashboard of the sentiment trend over time, using the
average sentiment score per day. You can access more detailed information by selecting View
dashboard and navigate to the details page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2316


<!-- page 2317 -->
Note:
• The sentiment analysis dashboard can only be managed by customer service managers.
The sentiment analysis case skill must be activated so that future cases can pick up
sentiment.
• The entry point in Core UI to access the sentiment analysis dashboard is Customer
Service > Now Assist Dashboards > Sentiment Analysis Dashboard.
Sentiment analysis dashboard

In-depth View Page – Data Visualizations
Function

Description

Sentiment
trend

Displays the average sentiment score per day over time.

Record
details

Displays the distribution of cases from very positive up to very negative.

Sentiment Displays sentiment breakdown by Region, Assignment Group, Account, Agent,
breakdown Category, Product, Channel, Priority, State, and also includes average sentiment
and total records data.
Bar Chart

Displays sentiment split across categories in Record details.

Chart
Toggle

Switches between line and bar chart views in Sentiment trend and Record
details.

Time
Filters

Supports Last 7 days, Last 30 days, Last 3 months, Last 6 months, and custom
range filtering options.

GenAI generated Insight Cards
GenAI insights provide explanations for sentiment trends and root causes in different cases.
These include:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2317


<!-- page 2318 -->
• Negative sentiment drivers: Displays factors that most frequently influence negative customer
sentiment. The insight is across the date range and displays a reason why cases in these
categories were showing that sentiment.
• Positive sentiment drivers: Displays factors that most frequently influence positive customer
sentiment. The insight is across the date range and displays a reason why cases in these
categories were showing that sentiment.
• Top negative assignment groups: Displays agent assignment groups with the highest levels of
negative customer sentiment.
• Sentiment change after escalation: Displays the comparison of customer sentiment before
and after a case escalation.
• Number of cases by channel: Displays the distribution of customer sentiment across different
communication channels.

Note:
All five of these insights look into each case's short description and the last 10 days of
comments and work notes to generate these insights.
You can select Related records to open a new page with a list that shows the
corresponding cases referenced in the graph. You can select the refresh icon
latest update.

to see the

Related topics
Exploring Now Assist for Customer Service Management (CSM)

View trending topics dashboard
Identify clusters of related records and visualize their volumes and sentiment trends over time
using the trending topics dashboard and GenAI-generated insights.
The trending topics dashboard provides visibility into emerging issues across cases. It includes
interactive widgets, filters, and GenAI-generated insights to help identify trends, understand root
causes, and improve efficiency.

Widget Overview
Function

Description

Trending
Topics
Widget

The trending topics widget can be accessed from the CSM/FSM configurable
workspace home page and provides an overview of current trends. You can
access more detailed information by selecting View dashboard and navigate to
the details page.

Data Scope The widget displays topics that have at least one open case and a minimum of two
total records.
Interactivity When you select on a topic, the dashboard opens pre-filtered topic details for that
specific topic.
Refresh
button

Selecting the Refresh icon updates the data for the top 10 trends, ensuring you
have the most current information at your fingertips.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2318


<!-- page 2319 -->
In-depth View Page Structure
The in-depth view page is divided into two sections: Data Visualizations and GenAI Insight
Cards.
Trending topics dashboard

Data Visualizations – List View
Displays the top 10 trending topics with the following attributes:
• Topic description
• Total records
• Total record change
• Affected accounts
• Number of agents
• Customer sentiment
Filters include:
• Region, Assignment Group, Account, Agent, Category, Product, Channel, Priority, State
• Time period: Last 7 days, Last 6 months, Last 30 days, Last 3 months, Last 12 months, and
Custom range
You can select a topic description link to further in-depth view into the trends over time based on
the following filters:
• Region, Assignment Group, Account, Agent, Category, Product, Channel, Priority, State.
• Time period: Last 7 days, Last 6 months, Last 30 days, Last 3 months, Last 12 months, and
Custom range
The dashboard provides several key features to analyze and understand record trends and case
status.
Trend over time:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2319


<!-- page 2320 -->
• Record Trend Chart: Visualize the total records on a specific date.
• Record Details Chart: Examine the case status of various cases on a particular date.
Trend Breakdown: Trend analysis can be segmented by multiple categories, including, Region,
Assignment Group Account Agent Category Product Channel Priority State.
Affected regions trend insights: For each region, you can view:
• Average trend score
• Record count by trend bucket
This breakdown provides a detailed understanding of trends across different dimensions and
regions.

GenAI generated Insight Cards
Automatically generated insights give you information about general trends and include:
• Most impacted accounts - Accounts impacted by the highest volume of records among the
top 10 trends. Top insight for the top account with the highest number of cases are displayed.
• Most impacted products- Products impacted by the highest volume of records among the top
10 trends. Top insight for the top product with the highest number of cases are displayed.
• Most impacted assignment groups - Assignment groups impacted by the highest volume
of records among the top 10 trend. Top insight for the top assignment group with the highest
number of cases are displayed.
• Most impacted channels - Channels impacted by the highest volume of records among the
top 10 trends. Top insight for the top channel with the highest number of cases are displayed.
You can select Related record to open a new page with a list that shows the corresponding
cases referenced in the graph and select the refresh icon

to see the most recent update.

Related topics
Configure trending topics dashboard

Generate activity stream responses
Generate recommendations for work notes or comments in a case record using Now Assist and
add them to enhance the quality of your interactions with the user.

Before you begin

These skills are inactive by default. Your administrator must enable the skills that you want to use.
Role required: sn_esm_agent

Procedure
1. Navigate to a case record in the CSM/FSM Configurable Workspace or Core UI where you want
to generate work notes or comments using Now Assist.
2. Select Compose, then select Compose Comments or Compose Work Notes from the drop
down in front line case page.
If you haven’t switched to the front line case page, you can also do the same actions in Work
notes or Comments tabs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2320


<!-- page 2321 -->
a. Select the Sparkle icon

.

The following four options appear:
▪ Acknowledge task: Confirm receipt and understanding of the customer’s request or issue.
▪ Follow up: Reconnect with the customer to check progress or ensure resolution.
▪ Post response: Provide a clear, timely reply to the customer’s query or concern.
▪ Summarize actions taken: Create a summary of all steps taken to resolve the case.

Note: The options display based on the configurations by your admin. Under work
notes only 3 options are available – Post response, Summarize actions taken and
Follow up.
b. Select one of the options based on the type of response you want Now Assist to generate.
The response appears in the Now Assist Context Menu (NACM).
c. You can select the Refine menu and elaborate, shorten, or change the tone of the response.
3. Select Insert.
Related topics
Configure activity response generation

Create a case based on service definition recommendations
Use Now Assist to view AI-predicted service recommendations based on the context of an
interaction record, such as the short description or description, and create cases based on these
recommendations.

Before you begin

These skills are inactive by default. Your administrator must enable the skills that you want to use.
Role required: sn_esm_agent

Procedure
1. Navigate to an interaction record in the CSM/FSM Configurable Workspace or Core UI where
you want to create a case based on a service recommendation using Now Assist.
2. Select Create Case.
The case type selector modal displays, with the AI predictions section at the top of the modal.
3. Select a service from the AI predictions, and then select Create case.
A case is created for the selected service.

Using Troubleshooting steps identification AI agent
The Troubleshooting steps identification AI agent fetches the context from a case, identifies the
missing context by comparing it with knowledge articles, similar cases, and standard operating
documents, and then proposes additional troubleshooting steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2321


<!-- page 2322 -->
Troubleshooting steps identification AI agent overview

This agent is typically used in standalone mode. Any agentic workflow that interacts with
Customer Service Management (CSM) cases can use it.
This AI agent does the following actions:
• Gathers the context from the case, including the attempted steps.
• Identifies the missing context by analyzing the similar cases, knowledge base articles, and
Standard Operating Procedure (SOP) documents that are attached to knowledge base articles.
• Proposes additional troubleshooting steps.
Agentic workflows can access this AI agent in Core UI or CSM/FSM workspace.

Configure AI Search for the Troubleshooting steps identification AI agent
You must configure AI Search so that this AI agent can fetch similar cases and relevant
knowledge articles For more information, see Configure AI Search to use with the
Troubleshooting steps identification AI agent and Configure the Troubleshooting steps
identification AI agent to use the Search retrieval tool.

Limitations
The document types supported for AI Search and document processing are:
• Microsoft Word (.docx)
• Plain Text (.txt)
• Portable Document Format (.pdf)
When fetching text from knowledge articles, this AI agent can fetch only the article_body field
from the kb_knowledge table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2322


<!-- page 2323 -->
Access control lists (ACLs)
Access Control Lists (ACLs) are preconfigured for the troubleshooting steps identification AI
Agent, including their associated flows and actions. By default, ACLs are configured for the
sn_esm_agent role. Customers can modify these ACLs to align with their specific business
requirements and security policies.
To manually update ACLs for custom roles:
1. Go to the sys_security_acl table.
2. Use filters to locate ACLs related to your use case, AI agent, and internal flows or actions.
3. Add your custom role to each relevant ACL record.
Related topics
AI Agent Studio
Find AI agents
Now Assist AI agents
Install Now Assist AI agents

Using agentic AI in Now Assist for Customer Service Management
(CSM)
The Customer Service Management (CSM) AI Agent Collection provides a set of prebuilt, fully
configured AI agents and agentic workflows designed to address common Customer Service
Management scenarios.
These model examples combine autonomous and supervised flows to perform multi-step actions
using advanced reasoning, triggered by customer cases, conversations, or detected intents.
Built on the ServiceNow AI Platform, the agents leverage capabilities such as Knowledge Graph,
Flow Designer, scripting, Topics, Catalog Items, Retrieval-Augmented Generation (RAG), record
operations, web search, and generative inputs. Powered by AI Agent Fabric and Workflow Data
Fabric, the collection operates seamlessly across systems without dependency on data location,
while Guardian enforces guardrails for security and compliance. By offering ready-to-use building
blocks, it helps guide and automate complex processes, reduce agent friction, and free human
agents to focus on higher-value work—ultimately accelerating resolution times and enhancing
customer experience.
Available agentic workflows for Customer Service Management agent collection
Agentic workflow

Description

Triage cases

Handles end-to-end case
or case type validation,
creation, verification, and
escalation. It can also retrieve
relevant context and details
from the provided case
or interaction to address
customer inquiries directly
and avoid unnecessary case
creation.

Available AI agents

• Triage cases WrapUp
• Context validator
• Informational queries
• Case creation
• Entity extraction
• Document verification
• Email response

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2323


<!-- page 2324 -->
Available agentic workflows for Customer Service Management agent collection
(continued)
Agentic workflow

Description

Provide customer 360 insights Provides agents with realtime, context aware responses
to queries on customer
data, case details, product
information, catalog entries,
and interaction history, using
multi-turn Q&A to maintain
conversational context and
accuracy.
Complaint Case AI Agent
collection

Available AI agents

• Customer insight AI Agent
• Case action AI Agent

Automate and enhance
the complaint resolution
process by gathering missing
information, detecting
customer sentiment,
categorizing complaints,
and proposing resolutions.
It supports human agents by
managing complaint intake,
triage, research, resolution,
and ongoing communication,
reducing manual effort and
case closure time.

Supported Large Language Models

Note:
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI,
Google Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist
skills and AI agents. Use the Configuration Controls in AI Control Tower
to define
which options are available, then set the skill-level preferences in the Now Assist Admin
console . For more information, see Large language models on the ServiceNow AI
®

Platform

.

Security implementation considerations
Enable security implementation to execute AI agents and agentic workflows through Access
Control Lists (ACLs) and user identities. For more information, see Implement access control in
Now Assist AI agents

Considerations for running the autonomous AI Agents

Important: By default, all agentic workflows and AI agent records are read only.
To run the AI agents autonomously, you must first duplicate the agentic workflow
proceed with the following steps:

, and then

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2324


<!-- page 2325 -->
• Activate the agentic workflow.
• Activate all agents within the agentic workflow.
• Activate the trigger to invoke the agentic workflow automatically. If you prefer to invoke it
manually, activating the trigger isn’t necessary.

Standalone AI agents
Looking for an AI agent?
• There might be AI agents installed with the Now Assist application that are not used in agentic
workflows. To learn how to see all agents that are available on your instance, see Find AI
agents .
• To find agents that might not be installed on your instance, visit the AI Agent Marketplace
the ServiceNow Store.

on

Customer Service Management AI agent collection triage cases agentic
workflow
Use CSM AI agents agentic workflow to process all routine cases coming in through email and
other offline channels and increase agent productivity through faster resolution.

Triage cases overview
Using the Triage cases agentic workflow, handle end-to-end validation, creation, verification,
and escalation of cases or case types. Get the correct information from the case or interaction to
answer customer questions directly and reduce the number of cases that must be created.
Refer to the information provided here on agents, tools, and triggers that are related to the Triage
cases agentic workflow in AI agents for Customer Service Management.
To modify the Triage cases agentic workflow duplicate it , and adjust the settings according to
your requirements. You can activate the agentic workflow template by making triggers active and
setting the display settings to include the Now Assist panel.

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Triage cases agentic workflow
Triage and provide faster resolution for all the routine cases coming in through email and other
offline channels.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Triage cases.

Access control lists (ACLs)
Access Control Lists (ACLs) are preconfigured to support the Triage use case, including AI
agents and their associated flows and actions, such as the Document Verification Agent. By
default, ACLs are configured for the sn_esm_agent role. Customers can modify these ACLs
to align with their specific business requirements and security policies. For more information,
Configure security controls for a skill .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2325


<!-- page 2326 -->
When updating the agent role for the Triage Cases Agentic Workflow, it’s important to also
update the corresponding Access Control Lists (ACLs) to ensure proper permissions. To
manually update ACLs for custom roles:
1. Go to the sys_security_acl table.
2. Use filters to locate ACLs related to your use case, AI agent, and internal flows or actions.
3. Add your custom role to each relevant ACL record.

Triage cases AI agents
The following tables list the agents that are used in the Triage cases agentic workflow.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.
AI agents and their roles in the Triage cases agentic workflow
AI agent

AI agent role

Triage cases WrapUp

Wrap up the case triage process using the
Triage Cases Wrapup AI Agent. It synthesizes
the execution details and posts the summary
to the work notes of the source record to
ensure traceability and closure.

Context validator

Validate the content of a record using the
Context Validator AI Agent. It analyzes
sentiment and identifies a list of intents from
the input record. Invoke this agent whenever
record content requires validation and intent
classification.

Informational queries

Create a summary of all answers related to
informational intent using the Informational
Queries AI Agent. It retrieves a list of all
intents, then processes each informational
intent individually before generating the
final summary. Invoke this agent whenever
a consolidated response to informational
queries is required.

Case creation

Automate and manage the end-to-end
process of case creation using the Case
creation AI agent. Invoke this agent whenever
a case needs to be created.

Entity extraction

Extract entities from emails and documents
using the Entity Extraction AI Agent. It matches
the extracted entities against a predefined
allowlist of fields to ensure relevance and
accuracy. Invoke this agent whenever entitylevel information needs to be identified and
structured from unstructured content.

Document verification

Verify documents on a record using the
Document Verification AI Agent to determine
whether they match the required list for the
case type. It identifies any missing documents

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2326


<!-- page 2327 -->
AI agents and their roles in the Triage cases agentic workflow (continued)
AI agent

AI agent role

or verification failures. Invoke this agent
whenever document validation is needed.
Email response

Generate and send email responses using
the Email Response AI Agent. It acts as a
response assistant to draft, display, and
deliver email replies. Invoke this agent
whenever an automated email response is
required.

Role masking
Required role: B2B agents (sn_customerservice_agent) and B2C agents
(sn_customerservice.consumer_agent)

Important: To access data in the agentic workflow, the admin role must include the
specified roles under Contains roles.

Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .
In the data access settings, you must also add the necessary roles to access the cases that need
triaging. For example, you can add the csm role to the agentic workflow's list of approved roles so
that it can access case records.

Triaging the case
In the triaging the case agentic workflow, perform the following steps:
1. In Define key requirements the workflow’s purpose is clearly described and its steps with
specific actions and criteria for each is outlined.
2. In the Define security controls screen, you can set the access at user and data level.
a. Define user access: Specify which users can access and interact with the agentic workflow.
Once you save your selections, the system automatically generates an Access Control List
(ACL).
b. Define data access: Choose the user identity under which the Provide customer 360
insights agentic workflow will run. This determines the roles and associated data access
permissions.

Note: Choose the user identity this agentic workflow should run as to determine the
roles and the data access permissions derived from them. Remember, when agentic
workflows can access data, they can also share that data with the human user who
interacts with them. Agent level role mask are: B2B agents (sn_customerservice_agent)
and B2C agents (sn_customerservice.consumer_agent).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2327


<!-- page 2328 -->
a. In Add triggers you can set up optional triggers to launch the agentic workflow automatically
without a user request. Triggers can be based on conditions or schedules you define and
initiate agentic AI experiences.
b. In Select channels and status, you can choose the channels where this agentic workflow
will be available to engage with users who initiate interactions. Toggle the display for Engage
via the Now Assist panel to see the agentic flow in Now Assist panel.

Note: To turn off the agentic workflow, toggle off Engage via the Now Assist panel.
c. Select Save and test.
The agent executes the testing in AI Agent Studio for the agentic workflow.
Example of a Triage cases agentic workflow testing in AI Agent Studio

In the Now Assist panel, the agent receives a notification as soon as the interaction is generated,
which enables them to follow the on-screen instructions and complete the task. For more
information, see Request the generative AI capabilities in Customer Service Management by
using the Now Assist panel.

Customer Service Management AI agent collection provide customer 360
insights
Provide Customer 360 insights agentic workflow is a GenAI-powered assistant that helps agents
answer natural language questions about customers, cases, products, catalogs, and past
interactions with a seamless multi-turn Q & A experience.
This workflow enables agents to retrieve case details, customer information, and perform actions
such as case creation, modification, escalation, and closure using natural language queries. It
supports real-time context-aware responses and respects role-based access controls.

Provide customer 360 insights agentic workflow overview
The Provide Customer 360 insights agentic workflow is a GenAI-powered assistant that helps
agents to resolve cases more efficiently and effectively. By answering natural language questions
about customers, cases, products, catalogs and past interactions, it provides contextual insights
that enable agents to make informed decisions and solve issues faster. It provides a seamless,
multi-turn Q&A experience, helping agents to:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2328


<!-- page 2329 -->
• Ask follow-up questions and get context-aware responses in real time.
• Access critical customer details and history to make informed decisions.
This feature consolidates scattered user and case data, providing agents with timely, accurate
insights to make informed decisions, reducing Mean Time To Resolve (MTTR) and helping to
solve issues. If something isn’t found, the GenAI responds clearly. For example, “I couldn’t find
any recent catalog interactions for this customer". If the question is outside its scope, it redirects.

Provide Customer 360 insights agentic workflow
Customer 360 insights agentic workflow is set up as a promoted asset in the Now Assist panel.
This workflow manages all case-related queries and actions, including retrieval of case details,
history, timelines, assignments, status, customer information, sentiment analysis, related cases,
knowledge articles, and case updates. It supports natural language requests for specific case
numbers, aggregates comprehensive case and customer data, analyzes historical patterns
and sentiment, and executes case management operations such as creation, modification,
escalation, and closure.

Role masking
Required role: B2B agents (sn_customerservice_agent) and B2C agents
(sn_customerservice.consumer_agent)

Important: To access data in the agentic workflow, the admin role must include the
specified roles under Contains roles.

Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .
In the data access settings, you must also add the necessary roles to helps agents to resolve
cases more efficiently and effectively. For example, you can add the csm role to the agentic
workflow's list of approved roles so that it can access case records.

Setup Provide customer 360 insights Agentic Workflow
To configure the Provide customer 360 insights agentic workflow, perform the following steps:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Provide Customer 360 insights.
3. In Define key requirements the workflow’s purpose is clearly described and its steps with
specific actions and criteria for each is outlined.
4. In Define security controls you can set the access at user and data level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2329


<!-- page 2330 -->
a. Define user access: Specify which users can access and interact with the agentic workflow.
Once you save your selections, the system automatically generates an Access Control List
(ACL).
b. Define data access: Choose the user identity under which the Provide customer 360
insights agentic workflow will run. This determines the roles and associated data access
permissions.

Note: Choose the user identity this agentic workflow should run as to determine the
roles and the data access permissions derived from them. Remember, when agentic
workflows can access data, they can also share that data with the human user who
interacts with them. Agent level role mask are: B2B agents (sn_customerservice_agent)
and B2C agents (sn_customerservice.consumer_agent).
5. In Add triggers you can set up optional triggers to launch the agentic workflow automatically
without a user request. Triggers can be based on conditions or schedules you define and
initiate agentic AI experiences.
6. In Select channels and status, you can choose the channels where this agentic workflow will
be available to engage with users who initiate interactions. Toggle the display for Engage via
the Now Assist panel to see the agentic flow in the Now Assist panel.

Note: To turn off the agentic workflow, toggle off Engage via the Now Assist panel.
7. Select Save and test.
The agent executes the testing in AI Agent Studio for the agentic workflow.
Example of Provide customer 360 insight agentic workflow testing in AI Agent
Studio

In the Now Assist panel, the agent receives a notification as soon as the interaction is generated,
which enables them to follow the on-screen instructions and complete the task. For more
information, see Request the generative AI capabilities in Customer Service Management by
using the Now Assist panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2330


<!-- page 2331 -->
Access Control lists (ACLs)
Access Control Lists (ACLs) are preconfigured to support the Provide customer 360 insights
use case, including AI agents and their associated flows and actions, such as the Customer
insights Agent. By default, ACLs are configured for the sn_esm_agent role. Customers can modify
these ACLs to align with their specific business requirements and security policies. For more
information, Configure security controls for a skill .
When updating the agent role for the Provide customer 360 insights Agentic Workflow, it is
important to also update the corresponding Access Control Lists (ACLs) to ensure proper
permissions. To manually update ACLs for custom roles:
1. Go to the sys_security_acl table.
2. Use filters to locate ACLs related to your use case, AI agent, and internal flows or actions.
3. Add your custom role to each relevant ACL record.

AI agents used in Provide customer 360 insights agentic workflow
The following tables list the agents that are used in the Provide customer 360 insights agentic
workflow.
AI agents and their roles in the Provide customer 360 insights agentic workflow
AI agent

Actions

Case action AI Agent

Perform customer-related actions, including
case operations such as creating case tasks
and updating work notes.

Customer insight AI Agent

Answer questions related to the record
by retrieving comprehensive information,
including customer details (name, contact info,
location, history, cases, orders) and case data
(next steps, actions, assigned agent, notes,
documents, tasks, resolutions), along with
other relevant attributes.

Use Provide customer 360 insights Agentic Workflow
The Provide customer 360 insights agentic workflow in Now Assist for Customer Service
Management (CSM) gives agents contextual, GenAI-driven insights about customers directly
within a case. By selecting the Now Assist icon
in a case record, agents can access the Now
Assist panel that delivers real-time insights based on customer data.
Agents can ask natural language questions, such as "What products is this customer currently
using?" The AI agent responds with accurate, contextually relevant answers and maintains
conversational context across multiple questions.
Key features
Feature

Details

Contextual Insights

AI retrieves and summarizes information from
multiple sources, including:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2331


<!-- page 2332 -->
Key features (continued)
Feature

Details

• Case details (status, priority, age, assignees,
notes).
• Customer info (account details, recent
activity).
• Products and services they own.
• Catalog items they interacted with.
• Past interactions (calls, chats, emails).
• Actions taken (resolution steps, escalations,
KBs shared).
Handling

If data is unavailable or ambiguous, AI
communicates clearly, for example, I couldn’t
find any recent catalog interactions for this
customer. For out-of-scope questions GenAI
declines and redirects.

Security

GenAI respects role-based access controls
and does not surface restricted information.

Feedback Loop

Agents can give thumbs up or thumbs down or
flag inaccurate responses for retraining.

Customer Service Management accelerate complaint case handling AI agent
collection
The Accelerate complaint case handling agents can work alongside human complaint agents to
intake complaints, triage complaints, and answer research queries. The agents review previously
attempted troubleshooting steps and propose resolution plans based on similar complaint cases
or knowledge articles.
The Accelerate complaint case handling collection includes AI agents and a specialized AI
workflow that systematically analyzes complaint cases, determines optimal processing paths,
and coordinates seamless hand-offs between specialized sub-agents. This agent excels at
complaint intake, contextual triage, prioritization logic, and ensuring comprehensive case
resolution based on case state, complexity factors, and historical resolution patterns.

AI agents used in the Accelerate complaint case handling collection and the
Accelerate complaint case handling agentic workflow
The accelerate complaint case handling collection and agentic workflow uses a team of AI
agents to triage customer complaints, and help research customer cases. The complaint case
intake agent is not part of the agentic workflow, since it is used with Virtual Agent.
To install the AI agents for the Accelerate complaint case handling collection, see Install the Now
Assist for Complaint Case (CSM) application.
For more information on configuring the Accelerate complaint case handling agentic workflow,
see Configure the Accelerate Complaint Case Handling agentic workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2332


<!-- page 2333 -->
AI agents and their roles listed in the order of execution
Agent

Description

Complaint case intake agent

Manages customer complaints by collecting
relevant information, such as customer
details, the nature of the complaint, and any
supporting documentation, before initiating
the resolution process.

Complaint case triage agent

Derives category, subcategory, and priority
of the case. The agent also analyzes tone,
sentiment, word choice, and speech patterns
to detect frustration of the customers. It uses
this information to determine the priority of the
case.

Complaint case research agent

Helps the human agent by providing the
best answer to research queries. It retrieves
relevant knowledge base articles and
similar cases, and if needed, gets relevant
information from other systems to give
accurate answers and create case tasks
based on the context.

Install the Now Assist for Complaint Case (CSM) application
You can install the Now Assist for Complaint Case (CSM) application (sn_cmpl_gen_ai) if you
®
have the admin role.The application installs related ServiceNow Store applications and plugins
if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Complaint Case AI Agents collection
application listing in the ServiceNow
Store for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following item is installed with Now Assist for Complaint Case (CSM): Plugin: Complaint Case
AI Agent collection (sn_complaint_ai)

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Now Assist for Complaint Case (CSM) application (sn_cmpl_gen_ai) using the filter
criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
A list of the versions available to you are displayed.
3. Select a version from the list and select Install.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2333


<!-- page 2334 -->
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.
Configure the Accelerate Complaint Case Handling agentic workflow
Configure the Accelerate Complaint Case Handling agentic workflow by defining key
requirements and security controls. The workflow is then tested and made available through
various channels.

Before you begin

Role required: admin

Procedure
1. Navigate to All > AI Agent Studio > Create and manage..
2. Select Accelerate Complaint Case Handling.
3. Define the key requirements.
For more information on defining key requirements, refer to General guidelines for creating AI
agents and agentic workflows .
a. Write a clear description and list of steps.
b. Add AI agents that can perform these steps or ask Now Assist to suggest AI agents.
c. From the list, select any LLM providers that this agentic workflow does not support.
d. Select Save and continue.
4. Define the security controls for this workflow.
a. Define user access.
These include the following:
▪ Any authenticated user: Any logged-in user can access this AI agent.
▪ Users with specific roles: select specific roles that can access this AI agent.
▪ Public: anyone can access this AI agent, even if they are not logged in.
b. Define data access: Select the user identity type this agentic workflow will run as.
These include the following:
▪ Dynamic user: This can be the sys_user of a trigger, agentic workflow, or user that passes
its roles to this AI agent.
▪ AI user: This is a type of sys_user only for agentic workflows and AI agents, with predefined roles.
c. Select Save and continue.
5. Optional: Add triggers.
(Optional) You can add triggers if you want an agentic workflow or AI agent to launch according
to pre-defined rules, and you want to spare your users the effort of reaching out for help, add a
trigger.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2334


