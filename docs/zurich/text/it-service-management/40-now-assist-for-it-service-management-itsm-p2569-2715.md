# Zurich IT Service Management — Now Assist for IT Service Management (ITSM)

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2569–2715 of 3857

Sections: Now Assist for IT Service Management (ITSM) (p2569); Explore (p2571); Configure (p2578); Use agentic AI in IT Service Management (p2626); Use generative AI skills (p2673)

---

<!-- page 2569 -->
Procedure
1. In the left navigation pane, enter sys_properties.list and press the Enter key.
2. Search and open the system property

sn_inc_uni_req.incident.universal_request.copy_fields.

3. In the Value field enter the universal request and the incident field.
For example, caller_id=opened_for means that the value of the field called_id from the
universal request form is copied to the opened_for field in the incident form.
Restrict an incident access
You can restrict an incident ticket that contains sensitive information. By marking an incident as
restricted, you limit its access for the agents.

Before you begin

Role required: admin or user

About this task

Both agents and users can mark an incident as restricted. Users can mark an incident as
restricted while creating it. An agent can also mark an incident a restricted while triaging it or
while working on it. Cases marked as restricted can only be accessed by
• Routing agents who are part of the assignment group and has sensitive agent role.
• All primary ticket agents.

Procedure
1. Navigate to All > Incident > All.
2. Open the incident record that you want to restrict.
3. On the form, click Restrict.
The restricted fields are hidden, and the form is only for view purpose.

Note: To mark the request as unrestricted only agents with the access role can modify.
4. Click Update.

Now Assist for IT Service Management (ITSM)
®

Use the ServiceNow Now Assist for IT Service Management (ITSM) application to summarize
the incident information, generate incident resolution notes, and summarize the chat for an
interaction. You can enable your agents to understand the chat and incident context so that they
can propose quicker resolutions to your requesters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2569


<!-- page 2570 -->
Get started

Explore

Configure

Use ITSM generative AI

Learn more about
Now Assist for ITSM

Configure the Now
Assist for ITSM
application to get started

Use generative AI
capabilities offered by
Now Assist for ITSM

Use agentic AI

Use the Now Assist for
IT Service Management
AI agents to complete
tasks autonomously.

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
• Contact Customer Service and Support

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2570


<!-- page 2571 -->
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
models and AI products. In addition, this application will collect incident data (for Incident Assist and Knowledge Assist) and chat transcripts (for Chat Assist).
Customers can opt out of future data collection at any time, as described in the Now Assist Opt-Out page
For more information, see the Now Assist documentation

.

.

Exploring Now Assist for IT Service Management (ITSM)
With the Now Assist for IT Service Management (ITSM) application, your agents can summarize
the chat conversations and incident details, generate the incident resolution notes to share with
other agents.

Now Assist for IT Service Management (ITSM) overview
The following generative AI capabilities are available for an agent:
• An incident summary enables your agents to understand the incident context.
• The incident resolution notes provide the context to other agents who might encounter similar
incidents.
• An interaction chat summary provides the context about the chat conversation to an agent by
specifying all points of the handoff, including the Virtual Agent conversation.

Now Assist for IT Service Management (ITSM) skills
The Now Assist for ITSM application includes the generative AI skills and features that enable
your agents to understand the chat and incident context so that they can propose quicker
resolutions to the requester.
Chat summarization
Provides an agent with a summary of a requester's Virtual Agent chat history. An
agent can also generate a summary of the entire interaction when the chat ends or
when an incident is created for further troubleshooting before or after the chat ends.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2571


<!-- page 2572 -->
Sidebar discussion summarization
Provides an agent with a summary of a requester's Virtual Agent Sidebar discussion
history. An agent can also post the summary to the incident work notes for further
troubleshooting before or after the chat ends.

Incident summarization
Enables an agent to expedite the incident troubleshooting process by reviewing
its summary that includes the issue, actions taken, and resolution. Your agent can
generate an incident summary for active incidents to understand the incident
context. Your agent can also refresh the summary, post the summary to the incident
work notes, copy the summary, and provide feedback about the summary.
The incident summary includes the information that an agent enters in the following
incident record fields:
• Short description
• Description
• Work notes
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2572


<!-- page 2573 -->
• Additional comments
• Email

Incident assist
Enables an agent to quickly obtain common incident related information
conversationally within the incident record by asking questions related to the
supported topics in the Now Assist panel.
Incident assist topics supported in the Now Assist panel include:
• Caller's assets
• Caller's recent incidents
• On-call experts from support groups
• Similar resolved incidents

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2573


<!-- page 2574 -->
Change request summarization
Enables an agent to expedite the change request process by reviewing its summary
that includes objective, plan, and risk. Your agent can generate a change request
summary for active change requests to understand the change request context.
Your agent can also refresh the summary, post the summary to the change request
work notes, copy the summary, and provide feedback about the summary.
The change request summary includes the information that an agent enters in the
following incident record fields:
• Short description
• Description
• Work notes
• Additional comments
• Risk
• Impact
• Justification
• Implementation plan
• Risk and impact analysis
• Test plan
• Backout plan
• Close code
• Close notes
• Configuration item
• Service
• Service offering
• State

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2574


<!-- page 2575 -->
• Conflict status
• Type

Change request risk explanation
Enables an agent to understand the change request risk by reviewing the
explanation for the risk rating. Your agent can generate a change request risk
explanation for change requests that have a risk rating (high, med, low). Your agent
can also copy the summary, and provide feedback about the summary.
The change request risk explanation includes the information that an agent enters
in the following incident record fields:
• Short description
• Implementation plan
• Assignment group
• Risk
Additional inputs include: similar change requests and the incidents caused by
those changes, and risk condition that was met.

Resolution notes generation
Automatically generates the resolution notes for an incident using the Now
Assist icon and provides context to the other agents who might encounter similar
incidents.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2575


<!-- page 2576 -->
Knowledge generation
Enables an agent to generate a knowledge article from an incident after proposing a
resolution or closing the incident.
The knowledge generation skill displays a pop-up window that an agent can use to
generate a knowledge article and review it before publishing the knowledge article
draft.
Knowledge article generation pop-up window

Chat reply recommendation
Enables an agent to generate a reply recommendation from a chat using the Now
Assist icon.
The chat reply recommendation skill displays a pop-up window that an agent can
use to generate a recommendation and review it before sending it as a reply to the
requester.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2576


<!-- page 2577 -->
Release notes generation for a release in Digital Product Release
Enables a product manager to generate structured release notes for a release that is
in the readiness phase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2577


<!-- page 2578 -->
The Generate release notes skill uses artifacts in the release
scope to generate the release notes that you can review it before

publishing.

Now Assist panel in Service Operations Workspace for ITSM
An agent can use the Now Assist panel in Service Operations Workspace for ITSM. This
conversational interface enables an agent to request a chat summary or incident summary and
generate the incident resolution notes. For more information about the Now Assist panel, see
Now Assist panel .
Related topics
Exploring Now Assist Admin

Configure Now Assist for IT Service Management (ITSM)
If you have the admin role, you can configure the Now Assist for IT Service Management
(ITSM) application so that agents can use the generative AI capabilities in Service Operations
Workspace for ITSM and in Core UI.

Before you begin

Role required: admin

About this task

Use the Now Assist Admin console to configure Now Assist for IT Service Management
(ITSM). This console contains everything that you need to install the plugins and configure the
generative AI skills. For additional information, see Overview tab in Now Assist Admin .
Domain separation is supported in Now Assist for IT Service Management (ITSM). For details, see
Domain separation in the Now Assist Admin console . For information on Domain separation for
the generative AI skills, see Using Now Assist for IT Service Management (ITSM) Generative AI
skills.
Here's a list of all skills supported in Now Assist for IT Service Management (ITSM):
• Chat summarization
• Sidebar discussion summarization
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2578


<!-- page 2579 -->
• Chat reply recommendation
• Incident assist
• Incident summarization

Note: The incident summarization is applicable only for incidents in the New, In
progress, On-hold, and Resolved states as long as the incident state mappings that are
provided in the base system aren’t customized.
• Resolution notes generation
• Email reply recommendation
• Knowledge article generation
• Change request risk explanation
• Change request summarization

Note: The change request summarization is applicable only for change requests in
the Assess, Authorize, Scheduled, Implement, Review, and Closed states as long as the
change request state mappings that are provided in the base system aren’t customized.
• Major Incident email content recommendation

Procedure
1. Install the Now Assist for IT Service Management plugin (sn_itsm_gen_ai).
◦ For information about the application dependencies, see Supporting information for Now
Assist for IT Service Management (ITSM).
◦ For information about the installation process, see Install Now Assist plugins

.

2. Navigate to Admin > Now Assist Admin.
3. Select the Now Assist Skills tab.
4. Activate and configure the skills for the Now Assist for ITSM features.
These features are grouped under the Technology workflow group. Each feature has its
associated skills.
5. On the tile for your skill, select Activate skill.
6. Select the inputs or triggers for the selected skill.
For information about the inputs and triggers for each skill, see Skill inputs and triggers for Now
Assist for IT Service Management (ITSM).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2579


<!-- page 2580 -->
Example Define trigger screen for the Chat summarization skill

7. After you've configured the inputs or triggers for the selected skill, select Save and continue to
go to the next step.
You can return to a previous step by using the Back button.
8. Select where you'd like to display the skill.

◦ In-product: When selected, the Now Assist skills are displayed on forms and workspaces.
For the skills that appear in-product, select the down arrow to identify the roles that can use
the skill.
◦ Now Assist panel: When selected, the Now Assist skills are available in the Now Assist
panel. If you don't see this option, you must activate the Now Assist panel. For more
information, see Turn on the Now Assist panel .
For the skills that appear in the Now Assist panel, select the down arrow to identify the roles
that can use the skill.
9. After you've configured the display for the selected skill, select Save and continue to go to the
next step.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2580


<!-- page 2581 -->
10. Review your choices and select Activate to complete the configuration.
Your skill is configured.
Related topics
Overview tab in Now Assist Admin
Configuring Now Assist Admin features

Skill inputs and triggers for Now Assist for IT Service Management (ITSM)
Get a quick overview of the skill inputs and triggers for Now Assist for IT Service Management
(ITSM). By configuring the inputs or triggers for a skill, you can determine how and when a skill is
used.

Now Assist for IT Service Management (ITSM) overview
Depending on the selected skill, you can configure the inputs or triggers. These settings
determine how and when a skill is used. An input identifies the data that is used for a skill, such
as the table and fields that are used to generate an incident summary. A trigger initiates an
action, such as when the system generates a chat summary.
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI, Google
Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist skills and
AI agents. Use the Configuration Controls in AI Control Tower
to define which options are
available, then set the skill-level preferences in the Now Assist Admin console . For more
information, see Large language models on the ServiceNow AI Platform

®

.

Incident sentiment analysis skill
Inputs for the sentiment analysis skill
Input

Description

Input table

Incident [incident]

Input fields

• Short description
• Description
• Priority
• State
• Created
• Additional comments
• Task SLA

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2581


<!-- page 2582 -->
Outputs for the sentiment analysis skill
Output

Sentiment values

Description

• Positive
• Neutral
• Negative

Sentiment trend

• Improving
• Declining
• Stable

Sentiment reasoning

Reasons for providing the sentiment value.

Scheduled job for the sentiment analysis skill
Scheduled job name

Default value

Description

Sentiment analysis scheduled True
job (incident)

Refreshes sentiments based
on the trigger frequency.

Suggested steps generation skill
Inputs for suggested steps generation skill
Input

Description

Input table

Incident [incident]

Input field

Short description
The skill uses this field to cluster incidents
based on similar incidents closed in the past.

Conditions

Filter conditions to generate the suggested
steps.
Similar incidents closed within the last 6
months are used by default to create the
incident clusters.

Major Incident email content recommendation skill

Note: When you create a Major Incident email content recommendation using the default
templates, you can use the corresponding Gen AI variables to compose the content.
Inputs for Major Incident email content recommendation skills
Input

Description

Input table

Incident [incident]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2582


<!-- page 2583 -->
Inputs for Major Incident email content recommendation skills (continued)
Input

Input fields

Description

• Short description
• Description
• Additional comments
• Work notes
• Activities

Additional fields

• Business impact
• Resolution notes

In addition to the tables and fields listed in the table above, the tables and fields listed in the
table below are also used as inputs for prompts to generate Major Incident email content
recommendation.
Additional tables used as inputs for prompts to generate Major Incident email content
recommendation
Table

Task SLA [task_sla]

Fields

• Target
• Stage
• Actual Time left
• Business Time left
• Has Breached
• Pause duration
• Pause time

Incident [incident]

• Short description
• Description
• Priority
• CI
• Activity stream

Collaboration chat [sys_cs_collab_message]

Payload

Note: You must manually select the
Collaboration chat table as an input data
so that this field is used an input for the
prompt. For information on choosing
input data, see Customize a Now Assist
for IT Service Management (ITSM) skill.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2583


<!-- page 2584 -->
Chat summarization skill
For the chat summarization skill, select the triggers that determine when a chat summary is
generated. You can also select the properties that control how a chat summary is displayed.
The following table lists the triggers that determine when a chat summary is generated and how a
chat summary is displayed.
Triggers for the chat summarization skill
Trigger

Description

Virtual Agent to Live Chat summary that is generated when the chat handoff is done from
Agent handoff
Virtual Agent to a live agent.
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
task record when a task is created.

The following table lists the property for the chat summarization skill.
Property for the chat summarization skill
Property

Description

Bulleted list

If selected, the chat summary is displayed as an unordered list.

Chat reply recommendation skill
For the chat reply recommendation skill, select the triggers that determine when a chat reply
recommendation is generated.
The following table lists the triggers that determine when a chat reply recommendation is
generated.
Triggers for the chat reply recommendation skill
Trigger

Description

User triggered

Chat reply recommendation that is generated
when the agent manually triggers the skill.

The following table lists the fields for the Now Assist icon for the chat reply recommendation skill.
Now Assist icon
Field

Description

Button Props

Trigger button properties, for example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2584


<!-- page 2585 -->
Now Assist icon (continued)
Field

Description

• Variant
• Size
• Icon
Refine Actions

Action options shown when the Refine button
is selected, for example:
• Shorten
• Elaborate

Recommendation Dialog Props

Recommendation dialog window properties,
for example: headerLabel.

WWNA Component ID

Component ID that supports the Now Assist
icon, for example: agent-chat.

Default Preset Action

Default action when the trigger button is
selected with no text in the chat window.

Table

Table used for the interaction.

Timeout Error Message

Error that displays after a timeout.

Preset Actions

Action options shown when text is entered
in the chat window and the trigger button is
selected, for example:
• Shorten
• Elaborate

Sidebar discussion summarization skill
For the Sidebar discussion summarization skill, select the triggers that determine when a Sidebar
discussion summary is generated.
The following table lists the triggers that determine when a Sidebar discussion summary is
generated.
Triggers for the Sidebar discussion summarization skill
Trigger

Description

Quick action

Sidebar discussion summary that is
generated when the live agent performs the /
summarize quick action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2585


<!-- page 2586 -->
Property for the Sidebar discussion summarization skill
Property

Description

Bulleted list

If selected, the Sidebar discussion summary is
displayed as an unordered list.

Incident summarization skill
The incident summarization skill includes the inputs that identify the table and fields that are
used when an incident summary is generated.
In this release, you can't modify a skill's input data source. The data source contains the tables
and fields that the skill relies on.
Triggers for the incident summarization skill
Trigger

Description

Assign modal

Open assign modal during save action when
assignment group or assigned to is changed.

The following table lists the inputs for the incident summarization skill.
Inputs for the incident summarization skill
Input

Description

Input table

Incident [incident]

Input fields

• Description
• Short description
• Work notes
• Additional comments
• Email

Input template states

• New
• WIP
• Resolved
• Closed

The following table lists the descriptions for the incident summarization skill.
Descriptions for the incident summarization skill
Description

Issue

Mandatory for input state

• New
• WIP

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2586


<!-- page 2587 -->
Descriptions for the incident summarization skill (continued)
Description

Mandatory for input state

• Resolved
• Closed
Key Actions Taken

• WIP
• Resolved
• Closed

Resolution

• Resolved
• Closed

Affected CIs and Impacted Services

• WIP
• Resolved
• Closed

Service Level Agreement

• WIP
• Resolved
• Closed

Child Incidents

• WIP
• Resolved
• Closed

Incident assist skill
The incident assist skill includes the incident topics to be available in the Now Assist panel.
In this release, you can't modify a skill's input data source. The data source contains the tables
and fields that the skill relies on.
Incident assist topics:
• Find similar resolved incidents
• Consult on-call experts from support groups
• Retrieve caller's assets
• Retrieve caller's recent incidents

Resolution notes generation skill
The resolution notes generation skill includes the inputs that identify the table and fields that are
used when the resolution notes are generated for an incident.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2587


<!-- page 2588 -->
In this release, you can't modify a skill's input data source. The data source contains the tables
and fields that the skill relies on.
The following table lists the triggers that determine when and how the resolution notes for an
incident are generated.
Triggers for the resolution notes generation skill
Trigger

Description

User triggered

If selected, user input is required before
resolution notes are generated.
Otherwise, resolution notes are generated
automatically by default when certain
conditions are met.

The following table lists the fields for the Now Assist icon for the resolution notes generation skill.
Now Assist icon
Field

Description

Refine Actions

Action options shown when the Refine button
is selected, for example:
• Shorten
• Elaborate

The following table lists the inputs for the resolution notes generation skill.
Inputs for the resolution notes generation skill
Input

Description

Input table

Incident [incident]

Input fields

• Description
• Short description
• Work notes
• Additional comments

Incident activity response recommendation skill
The Incident activity response recommendation skill includes the inputs that identify the table
and fields that are used when a response is generated in the work notes or comments in an
activity stream.
In this release, you can't modify a skill's input data source. The data source contains the tables
and fields that the skill relies on.
The following table lists the triggers that determine when and how the activity response for an
incident are generated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2588


<!-- page 2589 -->
The following table lists the inputs for the Incident activity response recommendation skill.
Inputs for the activity response recommendation skill
Input

Description

Input table

Incident [incident]

Input fields

• Description
• Short description
• Priority
• State
• Work notes
• Comments

Trigger
actions

The default trigger actions are as follows:
• For Work notes, the actions are Summarize actions, and Post response.
• For Additional comments, the actions are Follow up, Post response, and
Acknowledge task.

Knowledge article generation skill
The knowledge article generation skill includes the inputs that identify the table and fields that
are used when the knowledge article draft is generated for an incident.
In this release, you can't modify a skill's input data source. The data source contains the tables
and fields that the skill relies on.
The following table lists the inputs for the knowledge article generation skill.
Inputs for the knowledge article generation skill
Input

Description

Input table

Incident [incident]

Input fields

• Short description
• Description
• Resolution notes
• Work notes
• Comments

State

• Resolved
• Closed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2589


<!-- page 2590 -->
Change request summarization skill
The change request summarization skill includes the inputs that identify the table and fields that
are used when a change request summary is generated.
In this release, you can't modify a skill's input data source. The data source contains the tables
and fields that the skill relies on.
The following table lists the inputs for the change request summarization skill.
Inputs for the change request summarization skill
Input

Description

Input table

change_request

Input fields

• Short description
• Description
• Work notes
• Additional comments
• Risk
• Impact
• Justification
• Implementation plan
• Risk and impact analysis
• Test plan
• Backout plan
• Close code
• Close notes
• Service offering
• State
• Conflict status
• Type

Input template states

• Assess
• Authorize & Scheduled
• Implement & Review
• Closed

The following table lists the descriptions for the change request summarization skill.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2590


<!-- page 2591 -->
Descriptions for the change request summarization skill
Description

Objective

Mandatory for input state

• Assess
• Authorize & Scheduled
• Implement & Review
• Closed

Plan

• Assess
• Authorize & Scheduled
• Implement & Review
• Closed

Risk

• Assess
• Authorize & Scheduled
• Implement & Review
• Closed

Affected CIs

• Assess
• Authorize & Scheduled
• Implement & Review
• Closed

Impacted services

• Assess
• Authorize & Scheduled
• Implement & Review
• Closed

Close notes

Closed

Incidents caused by change

Closed

Change request risk explanation skill
The change request risk explanation skill includes the inputs that identify the table and fields
that are used when the change risk explanation is generated.
In this release, you can't modify a skill's input data source. The data source contains the tables
and fields that the skill relies on.
The following table lists the inputs for the change request risk explanation skill.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2591


<!-- page 2592 -->
Inputs for the change request risk explanation skill
Input

Description

Input table

change_request

Input fields

• Short description
• Implementation plan
• Assignment group
• Risk
• Description
• Blackout plan
• Model type
• Similar change requests and the incidents
caused by those changes
• Risk condition that was met

Supporting information for Now Assist for IT Service Management (ITSM)
Get a quick overview of the important information that is related to the Now Assist for IT Service
Management (ITSM) application.

Supported versions
• For Core UI: Starting with Vancouver Patch 2
• For Service Operations Workspace for ITSM: Starting with version 6.0.0

Supported language models for all Now Assist for ITSM skills and AI agents
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI, Google
Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist skills and
AI agents. Use the Configuration Controls in AI Control Tower
to define which options are
available, then set the skill-level preferences in the Now Assist Admin console . For more
information, see Large language models on the ServiceNow AI Platform

®

.

Role masking for Now Assist for ITSM agentic workflows, AI agents, and skills
Mask roles to restrict user access to agentic workflows, standalone AI Agents, and skills. This
ensures that users receive only the necessary permissions for their tasks to enhance security
and reduce the risk of unauthorized access.
How Role Masking Works
Consider a scenario where a user is given roles A, B, and C and each role can access only a
specific set of data. Using Access Control Lists (ACLs), the user can access any data or functions
that roles A, B, and C could access. When role masking is applied, the user can only access data
specific to that role.
Role masking considerations for the Now Assist in ITSM skills
When an ITSM skill is executed, access to its features is initially governed by ACL permissions.
This ensures that users can only access the data and functions for which they are authorized. If
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2592


<!-- page 2593 -->
the skill uses a Large Language Model (LLM) to perform its function, an additional layer of access
control, which is role masking, is applied to the output generated by the LLM.
Consider a user who has been assigned multiple roles: A, B, and C, each with distinct access
privileges. If this user is logged in as role A, activates the Incident summarization skill, and
selects Summarize, the process is executed in two key steps:
1. Data Retrieval
ACL permissions associated with role A are used to fetch the relevant data from the incident
table. This ensures that the user can only access data that they are authorized to view.
2. Data Summarization
After the data is retrieved, an LLM is used for the incident summarization. Role masking
is applied to the summarization output based on the access defined for role A and the
summarized output is tailored based on the access privileges defined by role masking for role
A.
By applying both ACL permissions and role masking, the system ensures a secure and granular
access control mechanism for ITSM skills, protecting sensitive information while providing users
with the insights they need to perform their tasks effectively.
For information on role masking, see Role masking in Now Assist AI agents

.

Supported user interfaces
The Now Assist for ITSM application includes the skills that are listed in the following table.

Note: Next Experience must be enabled to use the Now Assist panel. For more
information, see Considerations for activating Next Experience

.

Now Assist for ITSM supported interfaces
Interface

Service Operations Workspace for ITSM

Features

• Incident summarization
• Resolution notes generation
• Chat summarization
• Now Assist panel
• Knowledge article generation
• Sidebar discussion summarization
• Change request summarization
• Chat reply recommendation
• Change request risk explanation
• Incident assist
• Email reply recommendation
• Major Incident Management email content
recommendation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2593


<!-- page 2594 -->
Now Assist for ITSM supported interfaces (continued)
Interface

Core UI

Features

• Incident summarization
• Resolution notes generation
• Now Assist panel
• Knowledge article generation
• Sidebar discussion summarization
• Change request summarization
• Change request risk explanation
• Incident assist
• Email reply recommendation

Configure Now Assist in Virtual Agent for ITSM
Enable your requesters to have a streamlined, conversational experience that is based on
generative AI as they submit a catalog item request in Virtual Agent. By offering this generative AI
experience, your organization can provide an additional self-service tool.

Before you begin

Role required: sn_nowassist_admin.nsa_admin
Detect and mask sensitive data using the Sensitive Data Handler so it is not viewed by the agent
or requester. For more information, see:
• Sensitive Data Handler
• Configuring Sensitive Data Handler

About this task

The generative AI capabilities can provide a human-like catalog request experience over the
Virtual Agent conversational interface. By using the generative AI capabilities with Virtual Agent,
your organization can provide a conversational experience for request submissions.
Drive productivity by providing a virtual agent on familiar channels, such as Slack, Microsoft
Teams, and Microsoft Copilot.
When you configure generative AI for catalog item request submissions, your requesters get the
following experience:
• Contextual question prompts that enable a more human-like conversation that is based on
answers to previous questions.
• Slot filling that recognizes the answers to one or more questions on the requester's input.
• Ability to answer catalog item questions.
• Ability to exit the request submission process at any point.
Although the following catalog item question types are supported in the conversation mode,
natural language responses aren't supported for them:
• Reference
• Lookup select box
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2594


<!-- page 2595 -->
• Lookup multiple choice
• Requested For
• Attachment
• Multiple choice question with more than 10 choices

Now Assist features supported in Now Assist for ITSM Virtual Agent
Feature

Topic Reference

Upload file formats such as text, PDF, Word
Upload documents in a chat
(.doc, .docx) and image files such as JPEG and
PNG.
Combine AI Search with generative AI chat
skills to speed up issue resolution and reduce
deflection to a live agent using Now Assist for
ITSM in Virtual Agent.

.

Enhanced chat

Use the structured and unstructured data from Knowledge Graph
ServiceNow records, knowledge bases, and
external sources to enhance the performance
of Now Assist in Virtual Agent, AI agents, and
generative AI skills using Knowledge Graph.
Define crawl settings for external content
connectors to crawl source systems and send
it to AI Search for indexing.

Configuring External Content Connectors

Monitor your device's performance and
diagnose potential issues.

Check device health using Now Assist for
ITSM Virtual Agent

Procedure
1. Turn on the required Virtual Agent skills: Now Assist Multi-Turn Catalog Ordering, NowAssist Q&A Genius Results, or Now Assist Topics.
2. Set up Now Assist in Virtual Agent.
For more information on how to turn on the skills and set up generative AI for Virtual Agent, see
Configuring assistants overview .

Note:
◦ Configure the required conditions for the Virtual Agent skills.
◦ ITSM Virtual Agent is now replaced with the generative AI Virtual Agent.
ITSM Virtual Agent pre-built LLM topics
ITSM Virtual Agent includes pre-built Large Language Model (LLM) topic conversations designed
to help your users complete the common IT-related tasks such as checking and resetting a
password.
LLMs are used to identify and trigger the action that a user wants to perform.
ITSM Virtual Agent pre-built LLM topics are read only and have (Template) as the suffix in their
name. To use them, duplicate the topic in the ITSM Virtual Agent conversation scope and rename
it according to your company naming conventions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2595


<!-- page 2596 -->
For ITSM Virtual Agent pre-built Natural Language Understanding (NLU) topics, see Using ITSM
Virtual Agent pre-built topics.

Check Ticket and Support Status

Check the status of your IT tickets and support
cases.
Once the conversation is initiated, it
progresses by collecting data about the ticket
one question at a time.

Note: For HR cases, an Admin must
allow Core RCA records for Read
operation and Write operation.
• sys_scope = Now Assist in Virtual
Agent
• target_scope = Human Resources:
Core
• target = Table: HR Case
• status = Allowed
• source = Script Include:
ITSMTopicsHelper
See Requested restricted caller access
(RCA)
for more information.
Show Pending Approvals

Check pending approvals that are needed
to take action upon and pick those to be
processed.
You can either Approve or Reject your tickets
by picking the list numbers provided to you by
the Virtual Agent.

Check your device's health using Digital EndUser Experience (DEX)

Use the Now Assist for ITSM Virtual Agent
to monitor your device's performance and
diagnose potential issues. See Check device
health using Now Assist for ITSM Virtual Agent
for more information.

Important: You must install DEX
to perform this action. See Install
Digital End-User Experience for more
information.

Core ITSM topics
Check IT Ticket Status

Check the status of your IT ticket.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2596


<!-- page 2597 -->
Once the conversation is initiated, it
progresses by collecting data about the ticket
one question at a time.
(Deprecated)Escalate IT Ticket

Raise the urgency of your IT ticket for a faster
resolution. Escalating a ticket priority requires
choosing the incident and verifying the
escalation.
Users must provide a justification to escalate
the incident. Virtual Agent escalates the
incident to the next urgency level. For
example, from low to medium, or from medium
to high.
If an incident is already at high-level urgency,
Virtual Agent alerts the user to this and asks if
the user would like to add a comment to help
expedite resolution.

Open IT Ticket

Open a ticket leveraging machine-learning
algorithms with application logic for predicting
similar open tickets.
Prevent users from opening duplicate
incidents by finding similar incidents and
asking if the user wants to add comments to
the similar incident.

Service Disruptions

Access all known outage information.
When a user asks if a particular system is
down, Virtual Agent returns a list of links
displaying planned or unplanned outages and
any system degradations.
Users can click the links for more detailed
information about a specific outage or
degradation, as well as click Show more when
additional outages are known.

Password reset topics
End users can initiate a password management conversation with Virtual Agent by entering the
keywords Reset, Change, Unlock, or Password.
Users who aren’t logged in can perform the Reset Password and Unlock Account actions. Users
who are logged in can perform the Change Password, Reset Password, and Unlock Password
actions.
Requirements:
• Password Reset (com.glideapp.password_reset) plugin
• Password Reset Virtual Agent Conversations (com.snc.password_reset.virtual_agent) plugin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2597


<!-- page 2598 -->
Note: For the password reset process to be available in Virtual Agent, ensure that

you selected the Enabled on Virtual Agent check box in the Password Reset process
configuration page.
For more information about the password reset process, see Password Reset for Virtual Agent

Change Password

.

Request to change your user password.
User must be logged in.

Reset Password
Unlock Account

Request to reset your user password.
Request to verify your locked user account.

The following identity verification options are supported for password reset in Virtual Agent
conversations. Custom verifications aren’t supported in Virtual Agent.
• Personal data verification: User provides specific pieces of personal data.
• Google Authenticator verification: User enters the generated code from the Google service
Authenticator mobile app.
• SMS code verification: User enters the code received via a mobile text message.
• Email code verification: User enters the code received via email.
• Security question verification: User enters the configured security question answers.
For more information, see Configure your Password Reset process

.

Actionable notification topics
ITSM Virtual Agent includes pre-built actionable notifications used to send interactive messages
to a user based on pending tasks or alerts, such as RITM and request notifications, task approval
notifications, and incident notifications.

Note: You must activate notifications in Workflow Studio. For details, see Set up
actionable notifications for ITSM Virtual Agent.
Requested items (RITMs)
Topic

RITM View Comment

Actionable notification

Notification: Requested Item commented
Sent to the approver of a Service Catalog
request.

RITM Add Comments

Notification: Requested item on behalf of
requester
Sent to the end user when a Service Catalog
request is opened on the end user's behalf.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2598


<!-- page 2599 -->
Requested items (RITMs) (continued)
Topic

View Request Details for Approver

Actionable notification

• Notification: Request approval reminder
Sent to the approver of a Service Catalog
request.
• Notification: Approval request for requests
Sent to the end user who made the change
request when an approval for a change is
requested.

View RITM Details For Approver

• Notification: Approval request for requested
items
Sent to the approver of a Service Catalog
item request.
• Notification: Requested Item approval
reminder
Sent to remind the approver of a pending
Service Catalog request.

View RITM Details For Requester

Notification: Requested item on behalf of
requester
Sent to the end user when a Service Catalog
request is opened on the end user's behalf.

Incidents
Topic

Actionable notification

Add Comment To Incident

Notification: Incident on behalf of caller
Sent to end users whenever an incident is
opened on their behalf.

Close Incident

Notification: Incident resolved
Sent to end users whenever one of their
incidents is resolved by someone other than
the end user.

Mark Incident Unresolved

Notification: Incident resolved
Sent to end users whenever one of their
incidents is resolved by someone other than
the end user.

View Comments

Notification: Incident commented

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2599


<!-- page 2600 -->
Incidents (continued)
Topic

Actionable notification

Sent to end users whenever a comment is
added to their incident by someone other than
the end user.
Resolve Incident

• Notification: Incident commented
Sent to end users whenever a comment is
added to their incident by someone other
than the end user.
• Notification: Incident on behalf of caller
Sent to end users whenever an incident is
opened on their behalf.

Task approvals
Topic

Approve Sysapproval Approver
Reject Sysapproval Approver
Show Approval Details

Actionable notification

• Notification: Other approval
Sent to the approver when a non-task record
(such as a Knowledge Base article) needs
approval.
• Notification: Task approval
Sent to the approver about a newly created
task that needs review and approval.

Customize a Now Assist Virtual Agent topic
Copy and customize a core ITSM Virtual Agent topic and use that topic to track the status of
common IT-related tasks using Now Assist.

Before you begin

Role required: sn_nowassist_admin.nsa_admin

Procedure
1. Navigate to All > Conversational Interfaces > Virtual Agent > Designer.
2. Select a topic template.
Available Core ITSM topic templates
Template

Usage

Check IT Ticket Status (Template)-LLM

Check the status and progress of IT tickets
and incidents.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2600


<!-- page 2601 -->
Template

Usage

Escalate IT Ticket (Template)-LLM

Escalate an IT ticket or incident that's already
open or by reopening a closed one.

Open IT Ticket (Template)-LLM

Create an IT ticket or incident.

Service Disruptions (Template)-LLM

Check the status of outages or service
disruptions.

3. Select a template for a topic to track the status.

Note: The images show an example of the Service Disruption flow. You can follow the
same actions for any core ITSM topic template.
4. Select the Topic actions icon at the top-right corner of the screen and select Duplicate.

5. In the Name field, enter the name for the topic you want to use for the summarization.

6. Select Save.
7. In the topic you've duplicated, select the Properties tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2601


<!-- page 2602 -->
8. Optional: Enable the following check boxes:
◦ Now Assist in Virtual Agent (default).
◦ Default Now Assist Panel - Platform.
9. Select Save.
10. Select Publish.

Note: If you have multiple topics to summarize the same skill, you can unpublish the
ones that you do not intend to use.

Customize a Now Assist for IT Service Management (ITSM) skill
If you have the admin role, you can customize a Now Assist for IT Service Management (ITSM)
skill so that agents can use the generative AI skills in Service Operations Workspace for ITSM
and in Core UI.

Before you begin

Role required: sn_nowassist_admin.nsa_admin

About this task

From the Now Assist Admin console, you can select the input tables, related lists, and fields for
each input template of the incident summarization skill.

Procedure
1. Navigate to Admin > Now Assist Admin.
2. Select the Now Assist Skills tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2602


<!-- page 2603 -->
3. In the Technology feature group, select ITSM from the product list.
4. Activate and copy the Now Assist for ITSM feature skill for customization.
a. On the feature card that is associated with the skill that you would like to activate, select
View details.
b. In the All available skills section, locate the skill that you would like to activate and select
Activate skill.
You can choose to make a copy of the skill before activating it.
for the skill in the Active skills section, and create a copy
c. Select the more actions icon
that you can customize by selecting Make a copy.
The copy that you make is listed in the Active skills section.

Note: You can only duplicate a summarization skill or the Change risk explanation
skill. The fields for the skills that you can’t duplicate have read-only values.
d. Select the copied skill from the Active skills section to open it.
A guided setup leads you through the configuration of the general details, input, availability,
display, review, and activation of the customized skill.
5. In the General details step, fill in the fields.
For information about the inputs and triggers for each skill, see Skill inputs and triggers for Now
Assist for IT Service Management (ITSM).
a. Enter a name and description for the skill.
b. Select Save and continue to go to the next step.
6. Choose input data.
Configure the base input table fields and related lists for the different input templates (New,
WIP, Resolved, and Closed states) for the skill.
Each skill relies on a base input table and input fields with descriptions to provide context for
the Now LLM Service to generate a response.
Select only those related tables that are offered with the base system as part of the input data.
a. For each input template state (New, WIP, Resolved, and Closed), select +New related table
field and configure the base input table fields.
Add multiple base input fields if more inputs are needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2603


<!-- page 2604 -->
The following table lists the base input table fields and descriptions, including a relevant
example.
Base input fields
Field

Base input field

Description

Field in the Incident table whose value this
skill uses in its response.
For example, Short description.

Field description

Description of the base input field value.
For example, Short description of
incident, provides quick info
about the issue.

b. For each input template state (New, WIP, Resolved, and Closed), configure the rule
conditions by using the condition builder to filter the data further.
The rule conditions determine when the input template is used. By default, the record state
determines the input template that the Now LLM Service uses.
The following table lists the input template states.
Input template states
State

Description

New

State is New.

WIP

State is Work in Progress.

Resolved

State is Resolved.

Closed

State is Closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2604


<!-- page 2605 -->
c. For each input template state (New, WIP, Resolved, and Closed), select +New data source to
configure the additional related table and activity stream data, as needed.
Adding the input data sources, such as the related tables and activity streams, provide more
context to the Now LLM Service in a related list.
You can also add the rule conditions to these additional related table and activity stream
data sources.

The following table lists the data sources you can add to the input data.
Additional data sources
Data source

Related Table

Description

Fields for a related list:
▪ Select related input table
▪ Related table field
▪ Field description
Configuring the related table fields follows
the same format as the base input table
fields in the Choose input step.

Activity: Email

Email that is attached to the incident in the
incident summarization.

Activity: Attachment

Summarizes attachments in the Incident
summarization skill record using Document
Intelligence. For supported types,
see Customize a Now Assist for IT
Service Management (ITSM) Incident
Summarization skill.

d. Select Save and continue to go to the next step.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2605


<!-- page 2606 -->
e. Optional: Handling custom state choices for the Change request summarization skill.

Note: When you add a new state or modify an existing state in a Change request
record, you must add the GenAI Summary Card to the Change Overview Container
record to display the Summarize button.
To add the GenAI Summary Card:
i. Navigate to All > Change > Workspace Configuration > Overview Container.
Make sure the application scope is set to Change Management for Service Operations
Workspace.
ii. In the Change Overview Containers list, select the state that you've added or modified.
iii. Add the GenAI Summary Card to the Change Overview Cards related list.

For more information, see the KB article on Handling custom state choices for the Change
request summarization skill .
7. Trigger frequency
Refreshes the sentiments for all updated incidents. You can set the trigger frequency for the
refresh using the Sentiment Analysis Scheduled Job (Incident) scheduled
job.
8. Cluster incidents
If you’re using the Suggested steps generation skill, select Launch clustering in the Record
clustering screen to group records based on similar past closed incidents.

Note:
◦ You should have at least 2000 records for successful clustering. If you get an error that
there aren’t enough records to cluster, broaden your filter criteria. You can perform this
action by setting the rule conditions to include more records or add more data.
◦ For information on troubleshooting steps to resolve issues with the Suggested steps
generation skill, see Troubleshoot Suggested steps generation skill set up .
◦ Domain separation is not supported for the Suggested steps generation skill.
To broaden the criteria:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2606


<!-- page 2607 -->
a. In the Choose input screen, select Edit

conditions.
Select Switch scope if you’re unable to edit the conditions.
b. Optional: Change the conditions as needed and select Set.
The updates you make are displayed in the GAF Suggested Steps ITSM grouping in Now
Assist Skill Config record.
9. Customize the prompt.
Review and test the prompt for each input template configuration. You can edit the prompt by
adding new predefined sections and ordering the sections as needed.
a. For each input template state (New, WIP, Resolved, and Closed), select the prompt sections
from the list of available sections to include in the generated summary.
To add a section, you must configure the relevant input data in the Choose input data step
before you do this step.
The available prompt sections that you can select:
▪ Issue
▪ Key Actions Taken
▪ Resolution
▪ Service Level Agreement
▪ Affected CIs and Impacted Services
▪ Child Incidents

Note: When there are too many child incidents and the size of the data goes
beyond the LLM token limit, the child incidents section shows the "Too much
information and cannot be shown" message.
The following table lists the mandatory prompt headers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2607


<!-- page 2608 -->
Mandatory prompt headers
Input template state

Mandatory prompt header

New

Issue

Work in progress

▪ Issue
▪ Key Actions Taken

Resolved

▪ Issue
▪ Key Actions Taken
▪ Resolution

Closed

▪ Issue
▪ Key Actions Taken
▪ Resolution

b. Select Save to continue to the test response.
c. Select the incident record in the Test response section, and test the prompt response output
format by selecting Run Test.

The prompt response is shown. You can make changes to the incident state selections and
retest as needed.
d. Select Edit prompt in Now Assist Skill Kit to make necessary changes to the prompt in the
Now Assist Skill Kit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2608


<!-- page 2609 -->
e. Select Save and continue to go to the next step.
10. Define availability.
Define how the skill will be available to users.
a. Configure the skill to be always available to users, or select the conditions that must be met
before the skill is available.
Selecting Customize skill availability displays a condition builder to filter the data further.

Note: For the KB generation skill:
▪ When the incident is in resolved or closed state, the Create Knowledge button
appears.
▪ To enable the Create Knowledge button for other states, add the

com.snc.incident.create_knowledge.multistate.enable system
property and then set it for the incident states you want the Create Knowledge
button to appear. In the value column, enter the corresponding number for the
incident state. The incident state numbers are as follows:

▪ 1-New
▪ 2-In Progress
▪ 3-On Hold
▪ 6-Resolved
▪ 7-Closed
▪ 8-Canceled
You can create a custom state and add a number for that state.
▪ To create knowledge articles using Now Assist in any incident state, in the condition
builder for the KB generation skill, select the [State][is one of][New, Resolved, In
Progress, Closed, Canceled] filter condition.
b. Select Save and continue to go to the next step.
11. Select display.
Configure where to display the incident summarization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2609


<!-- page 2610 -->
a. Select either In-product, or Now Assist panel.
▪ In-product: When selected, Now Assist skills are displayed in all ITSM products (on forms
and in workspaces).
For the skills that appear in-product, select the down arrow to identify the roles that can
use the skill.
▪ Now Assist panel: When selected, Now Assist skills are available in the Now Assist panel.
If you don't see this option, you must activate the Now Assist panel. For more information,
see Turn on the Now Assist panel .
For the skills that appear in the Now Assist panel, select the down arrow to identify the
roles that can use the skill.
b. Select Save and continue to go to the next step.
12. Review and activate.
Review your choices and select Activate to complete the skill customization.
You can now select Summarize in an incident and generate the custom incident summary.

Customize a Now Assist for IT Service Management (ITSM) Incident
Summarization skill
If you have the admin role, you can customize a Now Assist for IT Service Management (ITSM)
skill so that agents can use the generative AI skills in Service Operations Workspace for ITSM
and in Core UI. Use the Now Assist Skill Kit (NASK) to customize your prompts.

Before you begin

Role required: sn_nowassist_admin.nsa_admin
You need the sn_skill_builder.admin role to customize the prompt in the Now Assist Skill Kit
(NASK).

About this task
Procedure
1. Navigate to Admin > Now Assist Admin.
2. Select the Now Assist Skills tab.
3. In the Technology feature group, select ITSM from the product list.
4. Activate and copy the Now Assist for ITSM feature skill for customization.
a. On the feature card that is associated with the skill that you would like to activate, select
View details.
b. In the All available skills section, locate the skill that you would like to activate and select
Activate skill.
You can choose to make a copy of the skill before activating it.
for the skill in the Active skills section, and create a copy
c. Select the more actions icon
that you can customize by selecting Make a copy.
The copy that you make is listed in the Active skills section.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2610


<!-- page 2611 -->
d. Select the copied skill from the Active skills section to open it.
A guided setup leads you through the configuration of the general details, input, availability,
display, review, and activation of the customized skill.
5. In the General details step, fill in the fields.
For information about the inputs and triggers for each skill, see Skill inputs and triggers for Now
Assist for IT Service Management (ITSM).
a. Enter a name and description for the skill.
b. Select Save and continue to go to the next step.
6. Choose input data.
The input data is read-only.

The following table lists the base input table fields and descriptions, including a relevant
example.
Base input fields
Field

Base input field

Description

For example, Description.
Field in the Incident table, for example,
Description. The LLM uses the values
in this field as one of inputs to generate a
response.

Field description

Description of the base input field value.
For example, Short description of
incident, provides quick info
about the issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2611


<!-- page 2612 -->
a. For each input template state (New, WIP, Resolved, and Closed), configure the rule
conditions by using the condition builder to filter the data further.
The rule conditions determine when the input template is used. By default, the record state
determines the input template that the Now LLM Service uses.
The following table lists the input template states.
Input template states
State

Description

New

State is New.

WIP

State is Work in Progress.

Resolved

State is Resolved.

Closed

State is Closed.

b. For each input template state (New, WIP, Resolved, and Closed), select +New data source to
configure the additional related table and activity stream data, as needed.
Adding the input data sources, such as the related tables and activity streams, provide more
context to the Now LLM Service in a related list.
You can also add the rule conditions to these additional related table and activity stream
data sources.
The following table lists the data sources you can add to the input data.
Additional data sources
Data source

Related Table

Description

Fields for a related list:
▪ Select related input table
▪ Related table field
▪ Field description
Configuring the related table fields follows
the same format as the base input table
fields in the Choose input step.

Activity: Email

Email that is attached to the incident in the
incident summarization.

Activity: Attachment

In the Activity stream:
▪ You can summarize attachments of type
PNG, JPEG or JPG, PDF, DOCX in the
Incident summarization skill record using
Document Intelligence.
▪ You can also extract the summarized
content from the attachment in any of
these languages:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2612


<!-- page 2613 -->
Data source

Description

▪ English
▪ Dutch
▪ French
▪ German
▪ Portuguese
▪ Spanish
When you use translate with Dynamic
Translation , you can also translate usergenerated content live on your instance in
additional languages. For more information,
see Dynamic Translation .

Note: Attachment summaries aren't
available in child incident records
and are only supported in the English
language.

c. Select Save and continue to go to the next step.
7. Customize the prompt.

Important: You need the sn_skill_builder.admin role to activate and customize the
prompt in the Now Assist Skill Kit (NASK).
To

Do this

a. Select an incident record in any of the incident states such as:
▪ New
▪ Work in progress
▪ Resolved
Evaluate a
prompt for
each input
template

▪ Closed

b. Select Run Test.
Review and test the prompt for each input template configuration and make
sure it meets your expectations.The prompt response is shown. You can make
changes to the incident state selections and retest as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2613


<!-- page 2614 -->
To

Do this

a. Select Edit prompt in Now Assist Skill Kit.
b. Select Go to Now Assist Skill

Kit.

Note:
In the Now Assist Skill Kit, you can select the more actions icon
and
Edit the
select Clone to make a copy of the prompt configuration and edit as
prompt in
needed.
the Now As­
sist Skill Kit
and test the c. In the Skill contents pane, select theInputs edit
icon and add any inputs that you'd like to add to the
prompt

prompt.
d. In the Prompt screen, select the edit icon and add the desired inputs to the

prompt.
e. Select Run test.
The prompt displays in the Test prompt screen where you can run the test.
8. In the Now Assist Admin tab, select Save and continue.
9. Define availability.
Define how the skill will be available to users.
a. Configure the skill to be always available to users, or select the conditions that must be met
before the skill is available.
Selecting Customize skill availability displays a condition builder to filter the data further.
b. Select Save and continue to go to the next step.
10. Select display.
Configure where to display the incident summarization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2614


<!-- page 2615 -->
a. Select either In-product, or Now Assist panel.
▪ In-product: When selected, Now Assist skills are displayed in all ITSM products (on forms
and in workspaces).
For the skills that appear in-product, select the down arrow to identify the roles that can
use the skill.
▪ Now Assist panel: When selected, Now Assist skills are available in the Now Assist panel.
If you don't see this option, you must activate the Now Assist panel. For more information,
see Turn on the Now Assist panel .
For the skills that appear in the Now Assist panel, select the down arrow to identify the
roles that can use the skill.
b. Select Save and continue to go to the next step.
11. Review and activate.
Review your choices and select Activate to complete the skill customization.
You can now select Summarize in an incident and generate the custom incident summary.

Customize a Now Assist for IT Service Management (ITSM) resolution notes
generation skill
If you have the admin role, you can customize a Now Assist for IT Service Management (ITSM)
skill so that agents can use the generative AI skills in Service Operations Workspace for ITSM
and in Core UI.

Before you begin

Role required: sn_nowassist_admin.nsa_admin

About this task

From the Now Assist Admin console, you can select the input tables, related lists, and fields for
each input template of the resolution notes generation skill.

Procedure
1. Navigate to Admin > Now Assist Admin.
2. Select the Now Assist Skills tab.
3. In the Technology feature group, select ITSM from the product list.
4. Activate and copy the Resolution notes generation skill.
You can choose to make a copy of the skill before activating it.
for the skill in the Active skills section, and create a copy
a. Select the more actions icon
that you can customize by selecting Make a copy.
The copy that you make is listed in the Active skills section.
b. Select the copied skill from the Active skills section to open it.
A guided setup leads you through the configuration of enabling user trigger, input,
availability, access, display, review, and activation of the skill.
5. In the Define trigger screen, enable the User triggered button if user input is required before
resolution notes are generated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2615


<!-- page 2616 -->
For information about the inputs and triggers for this skill, see Skill inputs and triggers for Now
Assist for IT Service Management (ITSM).
6. Select Save and continue.
7. Choose input data.
The skill relies on the Incident input table and following input fields to provide context for the
Now LLM Service to generate the resolution notes:
◦ Short description
◦ Description
◦ Work notes
◦ Comments
The input table and the input fields are read-only.

8. Select Save and continue.
9. Define availability.
Define how the skill will be available to users.
a. Configure the skill to be always available to users, or select the conditions that must be met
before the skill is available.
Selecting Customize skill availability displays a condition builder to filter the data further.
b. Select Save and continue to go to the next step.
10. Define access.
Define the user access and role restrictions that you need for the skill. For information on role
restrictions, see Role masking.
11. Select display.
Configure where to display the generated resolution notes.
a. Select either In-product, or Now Assist panel.
▪ In-product: When selected, Now Assist skills are displayed in all ITSM products (on forms
and in workspaces).
For the skills that appear in-product, select the down arrow to identify the roles that can
use the skill.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2616


<!-- page 2617 -->
▪ Now Assist panel: When selected, Now Assist skills are available in the Now Assist panel.
If you don't see this option, you must activate the Now Assist panel. For more information,
see Turn on the Now Assist panel .
For the skills that appear in the Now Assist panel, select the down arrow to identify the
roles that can use the skill.
b. Select Save and continue to go to the next step.
12. Review and activate.
Review your choices and select Activate to complete the skill customization. The popup that
shows that the activation was successful appears.
13. Configure the Now Assist context menu (NACM) to generate resolution notes and refine the
content.
You can also access the Now Assist context menu by doing the following:
a. In the Now Assist Admin screen, select Now Assist Experiences.
b. Select Now Assist context menu.
c. Select the Configurations tab.
d. Select Resolution notes in NACM.
e. Select the more actions icon

and select Edit configuration.

a. Select Go to Now Assist context menu.
The Resolution notes in NACM screen appears.

Note: In the General details screen:
▪ The table name is Incident by default and is read-only.
▪ The Form fields field displays the Now Assist icon (
). The default field that is
displayed is Close notes. You can change this field based on where you would like to
display the Now Assist icon (

).

b. Select Save and Continue.
The Configure experience screen displays.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2617


<!-- page 2618 -->
Note:
▪ The default action for the trigger is set to Generate resolution notes and is read-only.
▪ The default refinement actions are Shorten and Elaborate and are read-only.
▪ The Insert action is selected by default.
When the Now Assist icon ( ) is selected in the Preview panel, it shows how the
generated resolution notes content will display in NACM.
c. Select Save and continue.
The Define access screen displays.

Note: By default this screen shows that an itil user can access the Resolution notes
in NACM skill. The role restrictions defined in the Define access screen overrides
the user access defined in this screen. For information on role restrictions, see Role
masking.

d. Select Save and continue.
The Select display screen displays. The Display button is enabled by default and displays
the NACM configuration in all ITSM products.
e. Select Save and continue.
The Review and activate screen displays. In the Select a record to test configurations field,
select an incident number for which you want to preview the generated resolution notes for
the selected incident and select Preview. You can preview the generated content in NACM.
f. Select Done.

Important: For important information, see Transition to Resolution notes in NACM

.

Customize a Now Assist for IT Service Management (ITSM) Incident activity
response generation skill
If you have the admin role, you can customize a Now Assist for IT Service Management (ITSM)
skill so that agents can use the generative AI skills in Service Operations Workspace for ITSM
and in Core UI.

Before you begin

Role required: sn_nowassist_admin.nsa_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2618


<!-- page 2619 -->
About this task
Procedure
1. Navigate to Admin > Now Assist Admin.
2. Select the Now Assist Skills tab.
3. In the Technology feature group, select ITSM from the product list.
4. Select the Incident activity response generation skill and open it.
5. Choose input data.
The skill relies on the Incident input table and following input fields to provide context for the
Now LLM Service in the incident activity response:
◦ Short description
◦ Description
◦ Priority
◦ State
◦ Work notes
◦ Comments
The table input table and the input fields are read-only.

6. Define availability.
Define how the skill will be available to users.
a. Configure the skill to be always available to users, or select the conditions that must be met
before the skill is available.
Selecting Customize skill availability displays a condition builder to filter the data further.
b. Select Save and continue to go to the next step.
7. Define access.
Define the user access and role restrictions that you need for the skill. For information on role
restrictions, see Role masking.
8. Select display.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2619


<!-- page 2620 -->
a. Enable the In-product display so that the Now Assist skills are displayed in all ITSM products
(on forms and in workspaces).
For the skills that appear in-product, select the down arrow to identify the roles that can use
the skill.
b. Select Save and continue to go to the next step.
9. Review and activate.
Review your choices and select Activate to complete the skill customization. The popup that
shows that the activation was successful appears.
10. Configure the Now Assist context menu (NACM) to generate an activity response and refine
the content.
You can also access the Now Assist context menu by doing the following:
a. In the Now Assist Admin screen, select Now Assist Experiences.
b. Select Now Assist context menu.
c. Select the Configurations tab.
d. Select Incident activity response in NACM.
a. Select Go to Now Assist context menu.
The Incident activity response in NACM screen appears.

Note: In the General details screen:
▪ The table name is Incident by default and is read-only.
▪ You can configure the skill to generate a response for any of these options shown in
the table below in the work notes and comments in the incident's activity stream.

Options

Description

Acknowledge task

Acknowledge the receipt of the task record.

Post response

Generate a reply for specific questions from the user.

Summarize actions taken

Generate a summary of all actions taken.

Follow up

Ask follow-up questions.

b. Select Save and Continue.
The Configure experience screen displays.

Note:
▪ The default trigger actions are as follows:
▪ For Work notes, the actions are Summarize actions, and Post response.
▪ For Additional comments, the actions are Follow up, Post response, and
Acknowledge task.
▪ The Insert action is selected by default.
When you select the Now Assist icon in the Preview panel, it shows how the generated
activity response will display in NACM.
c. Select Save and continue.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2620


<!-- page 2621 -->
The Define access screen displays.

Note: By default this screen shows that an itil user can access the Incident activity
response in NACM skill. The role restrictions defined in the Define access screen
overrides the user access defined in this screen. For information on role restrictions,
see Role masking.

d. Select Save and continue.
The Select display screen displays. The Display button is enabled by default and displays
the NACM configuration in all ITSM products.
e. Select Save and continue.
The Review and activate screen displays. In the Select a record to test configurations field,
select an incident number for which you want to preview the activity response generated for
the selected incident and select Preview. You can preview the generated content in NACM.
f. Select Done.

Customize a Now Assist for IT Service Management (ITSM) change risk
explanation skill
Enhance the efficiency to explain the risk of a change request by adding input fields and custom
fields. You can also add more information to generate the explanation the using Now Assist for
ITSM.

Before you begin

Role required: sn_nowassist_admin.nsa_admin

About this task
Procedure
1. Navigate to Admin > Now Assist Admin.
2. Select the Now Assist Skills tab.
3. In the Technology feature group, select ITSM from the product list.
4. Activate and copy the desired Change request skill for customization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2621


<!-- page 2622 -->
a. In the Change request card, select View details.
b. In the All available skills section, locate the skill that you would like to activate and select
Activate skill.
You can choose to make a copy of the skill before activating it.
c. Select the More actions icon
for the skill in the Active skills section, and create a copy
that you can customize by selecting Make a copy.
The copy that you make is listed in the Active skills section.
d. Select the copied skill from the Active skills section to open it.
A guided setup leads you through the configuration of the general details, input, prompt,
availability, display, review, and activation of the customized skill.
5. In the General details step, fill in the fields.
For information about the inputs and triggers for each skill, see Skill inputs and triggers for Now
Assist for IT Service Management (ITSM).
a. Enter a name and description for the skill.
b. Select Save and continue to go to the next step.
6. Choose the change request input data.
Configure the base input table and fields that are used as the source to generate a response.
Each skill relies on a base input table and input fields with descriptions to provide context for
the Now LLM Service to generate a response.
Select only those related tables that are offered with the base system as part of the input data.
a. Add base input table fields.
The following Base input fields values are available by default:
▪ Short description
▪ Risk
▪ Implementation plan
▪ Description
▪ Backout plan
You can edit or remove the Implementation plan, Description, and Backout plan fields. You
can also add new fields and descriptions for them by selecting +New base input field.

Important: If you add a new field with the same name as an existing field, the name
and description of the new field will override the description of the existing field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2622


<!-- page 2623 -->
The following table lists the base input table fields and descriptions, including a relevant
example.
Base input fields
Field

Base input field

Field description

Description

Field in the Change request table, for
example, Short description. The LLM
uses the values in this field as one of inputs
to generate a response.
Description of the base input field value.
For example, Short description
field in the Change request
table provides quick info
about the issue.

b. Add additional input data sources.
The data sources could include related tables and relationships. The Change Risk Details
related input table with read-only fields is available by default. You can’t edit the existing
data source fields but you can add new related tables or relationships by selecting +New
data source and then selecting the desired option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2623


<!-- page 2624 -->
New data sources
Data source

Related Table

Description

Fields for a related list:
▪ Select related input table
▪ Related table field
▪ Field description
Configuring the related table fields follows
the same format as the base input table
fields in the Choose input step.

Important: When you add a new
related table with the same name
as an existing table, the fields and
the descriptions in the new table will
override the fields and descriptions in
the existing table.
Relationship

Relationship between the input table and
the table field.

c. Select Save and continue to go to the next step.
d. Select input data from past similar changes.
Adding tables and fields as the input data sources provides more context to the Now LLM
Service to generate the explanation.
If you turn the Use similar changes as a data source toggle button off, past similar changes
won’t be included.

Note:
▪ You must have AI Search implemented to retrieve similar changes. For more
information on AI Search, see AI Search .
▪ The search criteria to retrieve similar changes is based on the conditions set in the
Change Requests search source. For information on search source, see Search
Source form .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2624


<!-- page 2625 -->
The Short description field is available by default. You can edit or remove the following
fields:
▪ Description
▪ Risk
▪ Implementation plan
You can also add new fields and descriptions for them by selecting +New base input field.

Important: If you add a new field with the same name as an existing field, the name
and description of the new field will override the description of the existing field.
The Incident Caused by Change input table is available by default as an additional data
source. In this table, the Short description field is read only. You can edit or remove the
Description and Priority fields.

Important: When you add a new related table with the same name as an existing
table, the fields and the descriptions in the new table will override the fields and
descriptions in the existing table.

e. Select Save and continue to go to the next step.
7. Test the output.
a. Select the change record in the Test output section, and test the prompt response output
format by selecting Run Test.
If the result shows that risk isn’t calculated for the change request, then the prompt
created isn’t effective. If the output displays a prompt response, then the LLM has used
the configurations in the previous steps and has passed them to the prompt to create the
explanation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2625


<!-- page 2626 -->
b. Select Save and Continue to go to the next step.
8. Define availability.
Define how the skill will be available to users.
a. Configure the skill to be always available to users, or select the conditions that must be met
before the skill is available.
Selecting Customize skill availability displays a condition builder to filter the data further.
b. Select Save and continue to go to the next step.
9. Select display.
Configure where to display the Change request risk explanation skill.
a. Select either In-product, or Now Assist panel.
▪ In-product: When selected, Now Assist skills are displayed in all ITSM products (on forms
and in workspaces).
For the skills that appear in-product, select the down arrow to identify the roles that can
use the skill.
▪ Now Assist panel: When selected, Now Assist skills are available in the Now Assist panel.
If you don't see this option, you must activate the Now Assist panel. For more information,
see Turn on the Now Assist panel .
For the skills that appear in the Now Assist panel, select the down arrow to identify the
roles that can use the skill.
b. Select Save and continue to go to the next step.
10. Review and activate.
Review your choices and select Activate to complete the skill customization.

Use agentic AI in Now Assist for IT Service Management (ITSM)
Use the IT Service Management AI agents within an agentic workflow to complete tasks
autonomously.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2626


<!-- page 2627 -->
Agentic workflows in IT Service Management
Product

Available agentic workflows

IT Service Management application

Triage and categorize ITSM incidents
Investigate and resolve ITSM incidents
Manage Microsoft 365 group members
Generate post incident reviews
Generate change request plans
Notify users withTwilio

Change management application

Assess conflicts for a change request
Assess quality of a change request
Explain SLA
Schedule a change
Suggest configuration items for a change
request
Create outages for a change request
Create standard change request
Create standard change template proposal

Digital End-User Experience (DEX) application

DEX issue diagnosis and resolution agentic
workflow

Incident Management application

Wrap-up and resolve incident

Important considerations for using Now Assist for IT Service Management
(ITSM) agentic AI
Use the IT Service Management AI agents within an agentic workflow to complete tasks
autonomously.

Supported Large Language Models

Note:
• You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI,
Google Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist
skills and AI agents. Use the Configuration Controls in AI Control Tower
to define
which options are available, then set the skill-level preferences in the Now Assist Admin
console . For more information, see Large language models on the ServiceNow AI
®

Platform

.

• For the Now LLM Service updates, see Now LLM Service updates

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2627


<!-- page 2628 -->
Security implementation considerations
Enable security implementation to execute AI agents and agentic workflows through Access
Control Lists (ACLs) and user identities. ACLs provide the Run As capability to let agents
and agentic workflows execute actions either as a dynamic user or as an AI user. For more
information, see Implement access control in Now Assist AI agents
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .
Role masking
enables users to limit the roles and privileges of AI agents during tool execution.
AI agents that get installed with Now Assist applications are assigned pre-defined roles. If you
select Users with specific roles for user access, you must configure the security
controls to include these roles. Data access settings must also include these roles. For the
instructions to change the security controls, see Define security controls for an AI agent .

Considerations for running the autonomous AI Agents

Important: By default, all agent workflow and AI agent records are read-only.
To run the AI agents autonomously, you must first duplicate the agentic workflow
then proceed with the following steps:

, and

• Activate the agentic workflow.
• Activate all agents within the agentic workflow.
• Activate the trigger to invoke the agentic workflow automatically. The triggers for each
agentic workflow must be unique. If you prefer to invoke it manually, activating the trigger
isn’t necessary.
• Azure OpenAI is recommended for ITSM agentic workflows. For information on Large
Language Models (LLMs) for AI agents and agentic workflows, see Large language
®

models on the ServiceNow AI Platform

.

Standalone AI agents
Looking for an AI agent?
• There might be AI agents installed with the Now Assist application that are not used in agentic
workflows. To learn how to see all agents that are available on your instance, see Find AI
agents .
• To find agents that might not be installed on your instance, visit the AI Agent Marketplace
the ServiceNow Store.

on

Agentic AI in Now Assist for ITSM
Use the IT Service Management AI agents within an agentic workflow to complete tasks
autonomously.

Overview of Incident triaging and resolution agentic workflows
https://player.vimeo.com/video/1103857714?
h=d5e726919e&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2628


<!-- page 2629 -->
Agentic workflows for Now Assist IT Service Management
Agentic workflow name

Description

Available AI agents

Triage and categorize ITSM
incidents

Enables fulfillers to determine
1. Categorize ITSM incident AI
the category, subcategory,
agent
and configuration item
2. Classify service and CI AI
automatically for a given
agent
incident. After categorizing the
incident, it looks for related
3. Link major incident and link
major incidents or known
problem AI agent
problems and links them
automatically.

Investigate and resolve ITSM
incidents

Provides recommendations
for a resolution using
catalog, Knowledge, and
past incidents and sends the
information to the user.

ITSM incident resolution plan
investigation AI agent

Manage Microsoft 365 group
members

Adds or removes groups and
email distribution lists from
the Microsoft 365 group.

Microsoft 365 group
membership AI agent

Generate post incident
reviews

Generates a post-incident
report for major incidents and
notifies the fulfiller.

Post-incident review AI agent

Generate change request
plans

Generates a comprehensive
Change request plans AI
implementation, test, and
agent.
backout plan based on the
specified change request
number. It also analyzes the
potential risk and impact of a
change request and proposes
a justification.

Notify users with Twilio

Sends text messages to
recipients using Twilio.

Twilio SMS text AI agent

IT Service Management AI agent collection Triage and categorize ITSM incidents agentic
workflow
Use the Triage and categorize ITSM incidents AI agent team to assign incident categories and
subcategories. Then, assign the service, service offering, and the configuration items (CI), and
also link major incidents, and known problems autonomously.

Triage and categorize ITSM incidents agentic workflow overview
Using the Triage and categorize ITSM incidents agentic workflow, autonomously assign incident
categories by assigning a category and a subcategory to incidents based on the incident
short description. After categorizing the incident, assign the service, service offering, and
configuration item (CI) related to the incident. Then, automatically link incidents to major
incidents or known problems.
To modify the Triage and categorize ITSM incidents agentic workflow, duplicate it
the settings according to your requirements.

, and adjust

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2629


<!-- page 2630 -->
Note: You must enable the semantic indexing for the Problem table when you duplicate
the agentic workflow. For more information, see Semantic Index Field form

.

Important: When you modify an agentic workflow, AI agent, or a tool, make sure that you
update all instructions accordingly.

Important: To search for related major incidents, you must activate the Incident
Management - Major Incident Management plugin (com.snc.incident.mim). For more
information, see Activate Incident Management - Major Incident Management.

Triage and categorize ITSM incidents agentic workflow
This workflow does the following:
1. Automatically categorizes the incidents.
2. Then, assigns the related service, service offering, and configuration item (CI).
3. Then, searches for related major incidents and if found, links them to the incident.
4. If no major incidents are found, then it searches for related problems, and if found, links them
to the incident.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Triage and categorize ITSM incidents.

Important: In the Edit trigger form, make sure that the Active button is turned on to
enable the AI agent to trigger autonomously. You must enter the sys_id of the user with the
itil role when the trigger is activated.

Setting automatic or manual triggers for the agentic workflow
Based on the incident assignment, state, and priority, the Triage and categorize ITSM incidents
agentic workflow is triggered either automatically or manually.

Type of trigger

Automatic

Field values

• State is New
• Assigned to is empty
• Priority is 3, 4, or 5

• State is updated to In progress
• Assigned to is empty
• Priority is 3, 4 and 5
Manual

• State is In progress
• Assigned to isn’t empty

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2630


<!-- page 2631 -->
Setting the AI user as the Run as user
The ITSM Worker AI Agent user record is of identity type AI agent and is available by default. You
can create users of this type and assign roles to the users based on your needs.
Add the AI agent user as the Run as user:
1. Navigate to the Define key requirements screen.
2. Go to the Select the entity this agentic workflow will run as section.
3. In the Run as field, select AI user.
4. In the AI user field, select the desired AI agent user.

AI agents used in the Triage and categorize ITSM incidents agentic workflow
The Triage and categorize ITSM incidents agentic workflow uses a team of AI agents to
automatically categorize incidents, then assign the service, service offering, and configuration
item (CI) related to the incident and then links associated major incidents or known problems.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.
AI agents and their roles listed in the order of execution in the Triage and categorize ITSM
incidents agentic workflow
AI agent

AI agent role

Categorize ITSM incident AI agent

Automatically assigns incidents to categories, and
subcategories, based on the incident's short description.

Classify service and CI AI agent

Automatically assigns service, service offerings, and
configuration items (CI) to the incidents.

Link major incident or problem AI
agent

Important: To search for related major
incidents, you must activate the Incident
Management - Major Incident Management plugin
(com.snc.incident.mim). For more information, see
Activate Incident Management - Major Incident
Management.
• If this AI agent identifies a related, most similar major
incident, it automatically links it to the current incident
and ends the workflow.
• If the Major incident linker AI agent doesn't find a
related major incident, then the Incident problem linker
AI agent takes over. If it identifies any ongoing problem
that best matches the incident, then it automatically
links it to the incident.

Assigning incident categories
In the agentic workflow record:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2631


<!-- page 2632 -->
1. Review the information in the Describe and connect screen and in the Define trigger screen.
Make the necessary updates, and then select Save and Continue.
2. In the Select display screen:
a. Choose where you want the agentic workflow output to be displayed.
b. Use the arrow next to the display option to add roles that can access the agentic workflow.

Note: The itil role is added by default.
c. Select Save and test.
The agent executes the request for the agentic workflow.
Example of Triage and categorize ITSM incidents agentic workflow output in the

ServiceNow AI Agent

Studio
In the AI Agent Studio, the human agent gets notified as soon as the category
recommendation is generated so that they can follow the on-screen instructions and complete
the task. For more information, see Request the generative AI capabilities in ITSM by using the
Now Assist panel.
IT Service Management AI agent collection Investigate and resolve ITSM incidents agentic
workflow
Use the Investigate and resolve ITSM incidents AI agent team to get recommendations to resolve
an incident based on the incident number. Check for related catalog items, Knowledge articles,
and similar resolved incidents to generate resolution steps for the incident.

Investigate and resolve ITSM incidents agentic workflow overview
Using the Investigate and resolve ITSM incidents agentic workflow:
1. Check for related catalog items and select the most relevant item.
2. Check for Knowledge articles and similar incidents.
3. Get recommended steps for incident resolution.
To modify the Investigate and resolve ITSM incidents agentic workflow, duplicate it
the settings according to your requirements.

, and adjust

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2632


<!-- page 2633 -->
Important: When you modify an agentic workflow, AI agent, or a tool, make sure that you
update all instructions accordingly.

Link catalog items and Knowledge articles to incidents
When you make a query or a request in the Now Assist panel, you can get recommendations for
relevant catalog items. After you select a catalog item, the workflow uses relevant Knowledge
articles and similar incidents to get recommended steps for incident resolution.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Investigate and resolve ITSM incidents.

Setting manual triggers for the agentic workflow
The Investigate and resolve ITSM incidents agentic workflow is triggered manually based on the
following conditions:

Note: In the Define trigger screen, the value in the Run as field must be set to Assigned
to.

• State is updated to In progress
• Assigned to isn’t empty

AI agents used in the Investigate and resolve ITSM incidents agentic workflow
In the Investigate and resolve ITSM incidents agentic workflow, use specific AI agents for each
type of resolution to generate the desired recommendations.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.
AI agent and their role in the Investigate and resolve ITSM incidents agentic workflow
AI agent

ITSM incident resolution plan
investigation AI agent

AI agent role

1. Recommends catalog items related to the selected
incident.
2. Looks up similar incidents and provides an incident
resolution. The resolution can also include information
from knowledge articles.

Generating a recommendation using the Investigate and resolve ITSM incidents
agentic workflow
In the agentic workflow record:
1. Review the information in the Describe and connect screen and in the Define trigger screen,
make any necessary updates, and then select Save and Continue.
2. In the Select display screen:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2633


<!-- page 2634 -->
a. Choose where you want the agentic workflow output to be displayed.
b. Use the arrow next to it to add roles that can access the agentic workflow.

Note: The itil role is added by default.
c. Select Save and test.
The agent executes the request for the agentic workflow.
Example of Investigate and resolve ITSM incidents agentic workflow output in the

ServiceNow AI Agent Studio

In the AI Agent Studio, the human agent gets notified as soon as the recommendations to
resolve incidents get generated so that they can follow the on-screen instructions and complete
the task. For more information, see Request the generative AI capabilities in ITSM by using the
Now Assist panel.
IT Service Management AI agent collection Manage Microsoft 365 group members agentic
workflow
Use the Microsoft 365 group membership AI agent to manage users in the Microsoft 365 email
distribution list.

Manage Microsoft 365 group members agentic workflow overview
Using the Manage Microsoft 365 group members agentic workflow, add or remove names and
their email address from the Microsoft 365 email distribution list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2634


<!-- page 2635 -->
Important:
• To enable the Manage Microsoft 365 group members agentic workflow, you must
install the Microsoft Entra ID spoke. For more information, see Microsoft Entra ID Spoke
(formerly Microsoft Azure Active Directory spoke) .
• After you add or remove users to the group using the Microsoft 365 agentic workflow,
follow the instructions listed in the table.

If

You want the workflow output of adding or
removing users to go through an approval
process.

Do this

1. Add the

sn_itsm_aia.office_365_group_member_appr
system property

.

Note: This property is set to true
by default.
2. Add the

sn_itsm_aia.office_365_group_member_appr
system property

.

3. Add the sys_id of the group
that you want to use for
approvals as the value of the

sn_itsm_aia.office_365_group_member_appr
system property.
4. Add users that you'd like to approve the
output for this agentic workflow in the
Office 365 Approval group.

You don’t want the workflow output of
Set the
adding or removing users to go through an sn_itsm_aia.office_365_group_member_approv
approval process.
system property to false.

Note: The Manage Microsoft 365 group members agentic workflow doesn’t have a trigger
and is invoked manually.
To modify the Manage Microsoft 365 group members agentic workflow, duplicate it
the settings according to your requirements.

, and adjust

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Manage Microsoft 365 group members
Autonomously manage adding and removing users in a Microsoft 365 email distribution list.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Manage Microsoft 365 group members.

AI agents used in the Manage Microsoft 365 group members agentic workflow
The Microsoft 365 group membership AI agent is used to look up Microsoft 365 groups and add
or remove members from the email distribution list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2635


<!-- page 2636 -->
Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.

Add or remove group members in a Microsoft 365 group
In the agentic workflow record:
1. Review the information in the Describe and connect screen and in the Define trigger screen,
make the necessary updates, and then select Save and Continue.
2. In the Select display screen:
a. Choose where you want the agentic workflow output to be displayed.
b. Use the arrow next to it to add roles that can access the agentic workflow.

Note: The itil role is added by default. You can change the role for the agent. If you
change the role, you must also change the role in the following three flow and flow
action ACLs:
▪ sn_itsm_aia.look_up_group
▪ sn_itsm_aia.look_up_user
▪ sn_itsm_aia.manage_office_365_group_member
c. Select Save and test.
The agent executes the request for the agentic workflow.
Example of the Manage Microsoft 365 group members
agentic workflow output in the ServiceNow AI Agent

Studio
In the AI Agent Studio, the human agent gets notified as soon as one or more users are
added or removed so that they can follow the on-screen instructions and complete the task. For
more information, see Request the generative AI capabilities in ITSM by using the Now Assist
panel.
IT Service Management AI agent collection Generate post incident reviews agentic workflow
Use the Post-incident review AI agent to generate a review report after a major incident is closed.
You can review and revise this report if necessary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2636


<!-- page 2637 -->
Generate post incident reviews agentic workflow overview
Using the Generate post incident reviews agentic workflow, generate reports after an incident is
closed. The report includes the following sections:
• Executive Summary
• Customer/Service Impact
• Detailed Technical Summary
• Action Items & Prevention
The time taken to resolve incidents may be reduced, and the business impact may be minimized
when responses to major incidents are both effective and efficient. For information on how major
incidents are created, see Major Incident Management process.
To modify the Generate post incident reviews agentic workflow, duplicate it
settings according to your requirements.

, and adjust the

Important: When you modify a use case, AI agent, or tool, make sure that you update all
instructions accordingly.

Generate post incident reviews agentic workflow
Autonomously generate a report for the fulfiller once a major incident has been closed.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Post-incident reporting.

Important: In the Edit trigger form, make sure that the Active button is turned on to
enable the AI agent to trigger autonomously.

Important: To enable the display of the Generate post incident reviews agentic
workflow, you must activate the Incident Management - Major Incident Management plugin
(com.snc.incident.mim). For more information, see Activate Incident Management - Major
Incident Management.

AI agents used in the Generate post incident reviews agentic workflow
The Post-incident review AI agent is used to fetch incident details, related records, and the post
incident summary.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.

Generating the report
In the agentic workflow record:
1. Review the information in the Describe and connect screen and in the Define trigger screen,
make the necessary updates, and then select Save and Continue.
2. In the Select display screen:
a. Choose where you want the agentic workflow output to be displayed.
b. Use the arrow next to it to add roles that can access the agentic workflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2637


<!-- page 2638 -->
Note: The itil role is added by default.
c. Select Save and test.
The agent executes the request for the agentic workflow.
Example of a Generate post incident reviews agentic
workflow report in the ServiceNow AI Agent Studio

In the AI Agent Studio, the fulfiller receives a notification as soon as the report is generated,
enabling them to follow the on-screen instructions and complete the task. For more information,
see Request the generative AI capabilities in ITSM by using the Now Assist panel.
IT Service Management AI agent collection Generate change request plans agentic workflow
Use the Change request planning AI agent team to monitor similar change requests
autonomously and generate the necessary plans. This approach may help reduce the time
required for scheduling changes and managing change-related risks.

Generate change request plans agentic workflow overview
Generate the desired change plans using a team of AI agents in the Generate change request
plans agentic workflow.
To modify the Generate change request plans agentic workflow, duplicate it
settings according to your requirements.

, and adjust the

Important: In the Edit trigger form, make sure that the Active button is turned on to
enable the AI agent to trigger autonomously.

Generate change request plans agentic workflow
Autonomously generate the implementation, backout, or test change plans for a given change
request number using similar change requests. After generating the plans, complete the plan
execution by flushing the cache.
To access the agentic workflow:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2638


<!-- page 2639 -->
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Change request planning.

AI agent used in the Change request plans agentic workflow
Use the Change request plans AI agent to create implementation, backout, and test plans and
revise them for feedback. You can also do the following with this agent:
• Analyze the potential risk and impact of a change request.
• Propose justification for a change request.

Generating a change plan
In the use agentic workflow:
1. Review the information in the Describe and connect screen and in the Define trigger screen,
make the necessary updates, and then select Save and Continue.
2. In the Select display screen:
a. Choose where you want the use case output to be displayed.
b. Use the arrow next to it to add roles that can access the use case.

Note: The itil role is added by default.
c. Select Save and test.
The agent executes the request for the use case.
Example of a Generate change request plans agentic workflow output in the ServiceNow
StudioAI Agent Studio

In the AI Agent Studio, the human agent gets notified as soon as the report gets generated so
that they can follow the on-screen instructions and complete the task. For more information, see
Request the generative AI capabilities in ITSM by using the Now Assist panel.
IT Service Management AI agent collection Notify users with Twilio agentic workflow
Use the Twilio SMS text AI agent to help streamline communication processes and enhance
workflow efficiency.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2639


<!-- page 2640 -->
Notify users with Twilio overview
Using the Notify users with Twilio agentic workflow, send text messages via SMS to recipients
manually to help improve the time required for subject matter expert response.
To modify the Notify users with Twilio agentic workflow, duplicate it
according to your requirements.

, and adjust the settings

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Notify users with Twilio agentic workflow
Send messages from a Twilio number to a recipient's phone number.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Twilio texting.

Important: To enable the display of the Notify users with Twilio agentic workflow, you
must activate the Twilio Spoke plugin (sn_twilio_spoke). For more information, see .

AI agents used in the Notify users with Twilio agentic workflow
The Twilio SMS text AI agent is used to generate text using the Notify users with Twilio agentic
workflow.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.

Note: The itil role is added by default. You can change the role for the agent. If you change
the role, you must also change the role in the following two flow action ACLs:
• sn_itsm_aia.look_up_incoming_phone_numbers
• sn_itsm_aia.send_sms
In the ServiceNow AI Agent Studio, the human agent gets notified as soon as a text message is
generated so that they can follow the on-screen instructions and complete the task. For more
information, see Request the generative AI capabilities in ITSM by using the Now Assist panel.
Related topics
Configure Notify with Twilio

Using the IT Service Management Now Assist Voice AI agents
Use the Voice AI agents to create and manage tickets for any IT service-related issues such as
troubleshooting WiFi connections with voice calls.

Managing IT-related issues using Voice AI agents
Using the Now Assist for ITSM Voice AI agents, you can do the following:
• Create incidents and manage tickets using voice calls.
• Use generic queries such as, "Is there an update to my ticket from yesterday?" or "What's the
status of my VPN ticket?" and get responses in the context of your questions.
• Escalate a ticket to a higher priority or add a comment to the ticket.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2640


<!-- page 2641 -->
To modify the Voice AI agents, duplicate it, and adjust the settings according to your
requirements.

Important:
• When you modify an AI agent, or a tool, make sure that you update all instructions
accordingly.
• In the Define availability screen for the AI agent, make sure that the Status field is
enabled to activate the AI agent.

Note: The Voice AI agents are installed with the IT Service Management AI voice agent
collection application (sn_itsm_voice_aia).
Voice AI agents and their roles
Voice AI agent

Voice AI agent role

Create incidents with voice AI
agent

Creates an incident using voice.

Manage tickets with voice AI agent

Manages tickets using voice.

Note: When you install the IT Service Management AI voice agent collection application
(sn_itsm_voice_aia) along with the demo data, you can activate the demo agents.
Voice AI demo agents and their role
Voice AI agent

Request catalog item with voice AI agent

Voice AI agent role

• For software-related categories, the AI agent
submits the requested item for the user.
• For non-software categories, the AI agent emails
a catalog item link to the user to submit the item.

Password reset with voice AI agent

Fetches the information to reset your password in
one of the following ways:
• Provides the instructions from the knowledge
article to reset the password in an email.
• Provide the reset password link by SMS.
• Reads out the URL for the reset password by
voice.

Troubleshoot Outlook issue with voice AI
agent

Searches the knowledge base to troubleshoot
outlook issues.

Creating Voice AI agents to search knowledge articles
You can use Voice AI agents to get answers to your questions or resolve issues using knowledge
base articles.
For Voice AI agents to search knowledge base articles:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2641


<!-- page 2642 -->
1. Define the knowledge base articles.
2. Define the search profile in AI search to search the knowledge base articles. For information on
AI search, see Search profiles in AI Search
3. Create the search retrieval tool to use the search profile in the Voice AI agent. For information
on search retrieval, see Add a search retrieval to an AI agent

Requester AI Agents for Now Assist in Virtual Agent
Use AI agents in Virtual Agent to autonomously resolve tasks.

Platform Requester AI agents
View tickets and make updates to them from Now Assist in Virtual Agent, the Now Assist panel, or
Microsoft Teams using the Request Status AI agent. For more information, see Platform Request
status AI agent .

ITSM AI agents used in Virtual agent
The DEMO Password reset agent is a demo AI agent that provides requesters with password
reset instructions for the account that they need help with. The agent guides the users with these
instructions from KB articles in their self-service portal. When you install the Now Assist for IT
Service Management plugin (sn_itsm_gen_ai) along with the demo data, you can use the DEMO
Password reset agent to provide you with password reset instructions.

Note: The agent is shipped inactive by default.
To activate, in the Select channels and status screen:
• Enable the Allow button in the Engage via Virtual Agent assistants section.
• In the Chat assistants field, select Now Assist in Virtual Agent (default) to use the AI
agent from the Virtual Agent.
• In the Activation status section, enable the This AI agent is active button.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2642


<!-- page 2643 -->
The DEMO Password reset agent uses the ESC Portal Default Search Profile.

Agentic AI Now Assist for change management
Use the ITSM change management agentic workflows to manage and complete tasks
autonomously in the Change Management application.

Important:
To access the change request agentic workflows, make sure that you install the following
applications:
1. Now Assist for IT Service Management (ITSM) (sn_itsm_gen_ai) plugin.
2. Change Management application. For more information, see Configuring Change
Management.

Note:
• Before you begin, review these Important considerations for using Now Assist for IT
Service Management (ITSM) agentic AI.
• For all available ITSM Agentic AI applications, see Use agentic AI in Now Assist for
IT Service Management (ITSM).

Agentic workflows for the change management application
Agentic workflow name

Description

Available AI agents

Assess conflicts for a change
request

Runs conflict detection
for change requests and
assesses conflicts, identifies
affected CIs and impacted
services

Change conflict assessor AI
agent

Assess quality of a Change
Request

Assesses information quality
for new change requests by
analyzing closed change
requests with matching
descriptions.

Change quality assessor AI
agent

Explain SLA

Provides insight into priority
SLAs, task assignment, and
frequency of pause and

Explain SLA

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2643


<!-- page 2644 -->
Agentic workflow name

Description

Available AI agents

resume events of SLA for an
incident, problem, case, or
change request.
Schedule a change

Schedule change requests
by identifying the available
schedule slots.

Schedule Change Request AI
agent

Suggest configuration items
for a change request

Recommends configuration
items during change creation.

Change CI suggestion AI
agent

Create outages for a change
request

Associates outages with a
change request quickly.

Change outage assistant AI
agent

Create standard change
request

Creates a standard, normal, or Standard change template
emergency change request in recommender AI agent
a conversational way.

Create standard change
template proposal

Creates a change template
proposal record based on
similar change requests.

Standard change template
proposal AI agent

IT Service Management AI agent collection assess conflicts for a change request agentic
workflow
Use the assess conflicts for a change request agentic workflow to run conflict detection for
change requests and assess conflicts, and identify affected configuration items (CIs) and
impacted services.

Assess conflicts for a change request agentic workflow overview
Using the assess conflicts for a change request agentic workflow, you can run conflict detection
for change requests to view existing conflicts and the summary of conflict types, affected CIs,
and impacted services.
The summary of each conflict type generated using the assess conflicts for a change request
agentic workflow includes the following sections:
• Affected CI
• Conflicting change
• Maintenance or blackout schedules
You can also use the workflow to rerun conflict detection.

Note: The assess conflicts for a change request agentic workflow doesn’t have a trigger
and is invoked manually.
To modify the assess conflicts for a change request agentic workflow, duplicate it
the settings according to your requirements.

, and adjust

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Assess conflicts for a change request
Autonomously assess conflicts for change requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2644


<!-- page 2645 -->
Note: The workflow can be accessed by roles contained within the sn_change_write or itil
roles.
To access and configure the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Assess change request conflicts.

AI agent used in the assess conflicts for a change request agentic workflow
The Change conflict assessor AI agent is used to identify conflict types and summarize the
impacted schedules, CIs, and services related to the change request.

Important: The configuration item, planned start, and end date values must be available
for the change request before running the conflict detection using the AI agent. If no
information is available, the agent asks you to provide them.

View conflicts using the assess conflicts for a change request agentic workflow
In the agentic workflow record:
1. Review the information in the Describe and connect screen and in the Define trigger screen,
make the necessary updates, and then select Save and Continue.
2. In the select a UI display screen, turn on the Display option to add the icon for the Now Assist
panel in the menu bar.
3. Select Save and test.
The agent executes the request for the agentic workflow.

Example of the assess conflicts for a change request agentic workflow output in
®
the ServiceNow AI Agent Studio

Access and use assess conflicts for a Change request agentic workflow from the Now Assist
panel.
You can add a query using the change request number to use the AI agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2645


<!-- page 2646 -->
For the query instruction, follow the steps specified in the List of steps field of the Define key
requirements screen of the agentic workflow record.
In the AI Agent Studio, the human agent gets notified as soon as a text message is generated so
that they can follow the on-screen instructions and complete the task. For more information, see
Request the generative AI capabilities in ITSM by using the Now Assist panel.
IT Service Management AI agent collection assess quality of a change request agentic
workflow
Use the assess quality of a change request agentic workflow to assess the quality of a change
request, analyze the information available in the fields, and generate suggestions to improve the
information in the fields.

Assess quality of a change request agentic workflow overview
Using the assess quality of a change request agentic workflow, you can assess the quality of a
change request based on the information available in the fields. You can also simultaneously
generate suggestions for good quality, holistic information that can be provided in the fields to
improve the quality of a change request. You can use the workflow to assess the quality of a new
change request, or improve the information available for an existing change request that is not in
the closed state.
To evaluate the quality of information in a change request, the workflow finds similar closed
change requests with matching descriptions, and the close code marked as successful. On
the basis of the matching change request, the workflow generates a quality report of the
descriptions, planning, risk, and impact information. The generated quality assessment contains
the assessed fields, the justification for the quality marking, and the suggestions to improve the
existing information.

Note: The assess quality of a change request agentic workflow doesn’t have a trigger and
is invoked manually.
To modify the assess quality of a change request agentic workflow, duplicate it , and adjust
the settings according to your requirements. To clone an agentic workflow that is available by
default, you must execute the semantic index for similarChangeRequests. The Business Rule
([Chg Quality] Trigger semantic index) that is available by default that activates this workflow
doesn’t run automatically for cloned cases, so you must activate it manually or execute the script
in the business rule to confirm that the index is performed.

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Assess the quality of a change request
Autonomously assess the quality of change requests, and generate suggestions to improve
information in fields.

Note: The workflow can be accessed by the sn_uxc_gen_ai.sn_aia_chg_quality role that is
available as a part of the itil or sn_change_write role.
To access and configure the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Assess quality of a Change Request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2646


<!-- page 2647 -->
AI agent used in the assess quality of a change request agentic workflow
When provided with the details of a change request, the change quality assessor AI agent
automatically analyzes the quality of the information available in a closed change request
containing matching descriptions, and provides suggested values.
The quality assessment using the agent can provide information and suggested values regarding
the following areas:
• Short description
• Description
• Implementation plan
• Backout plan
• Test plan
• Risk and impact analysis
• Justification
The assessment report is generated for the overall change request and all the areas mentioned.
The quality assessment categorizes the information under the Excellent, Very good, Good, Fair,
Poor, Very Poor, or Incomplete categories. If the quality of the change request and all of its fields
are assessed to be Excellent, no suggestions are provided. The work notes field for the change
request is updated with the quality assessment report generated using the agent. You can also
review the report generated in the work notes field in the ai_change_quality_score table.

Assess the quality of information using the assess quality of a change request
workflow
In the agentic workflow record:
1. Review the information in the Describe and connect screen and in the Define trigger screen,
make the necessary updates, and then select Save and Continue.
2. In the Select a UI display screen turn on the Display option to add the icon for the Now Assist
panel in the menu bar.
3. Select Save and test.
The agent executes the request for the agentic workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2647


<!-- page 2648 -->
Example of the assess quality of a change request agentic workflow output in
®
the ServiceNow AI Agent Studio

Access and use assess quality of a change request agentic workflow from the Now Assist panel.
You can add a query using the change request number to use the AI agent. You can enter the
number of the field from the list of suggestions, add relevant keywords, or provide custom
responses to the agent to update the field values. The agent asks for a confirmation before
updating the fields.
For the query instruction, follow the steps specified in the List of steps field of the Define key
requirements screen of the agentic workflow record.
In the AI Agent Studio, the human agent gets notified as soon as a text message is generated so
that they can follow the on-screen instructions and complete the task. For more information, see
Request the generative AI capabilities in ITSM by using the Now Assist panel.
IT Service Management AI agent collection explain SLA agentic workflow
Use the explain SLA agentic workflow to analyze a Service Level Agreement (SLA) and gain
insight into the SLA assignment, task ownership, and pause and resume events in the SLA
duration for a task, such as an incident, problem, case, or change request.

Explain SLA agentic workflow overview
The explain SLA agentic workflow begins with identifying the most important SLA associated with
a task. By default, the matched SLA is the SLA that would be breached first. However, a different
SLA can also be identified based on your SLA timer configuration. The workflow then suggests
a few standard questions about the identified SLA. Based on the questions asked, the workflow
explains the SLA breakdown by assignment, SLA duration, and provides insight into the task
ownership, reassignment, and causes for the SLA breach.
The explain SLA agentic workflow can be used in the following scenarios:
• Before an SLA is breached, assigned users can gain an insight into the time elapsed and
potential for the SLA breach. The assigned user can track gaps with previous assignments
and SLA ownership if the SLA breakdown shows multiple reassignments across teams and

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2648


<!-- page 2649 -->
repeated pauses in the SLA. Based on requirements, the user can ask the agent questions to
plan the handling of the incident or task in adherence to the SLA timelines.
• After an SLA is breached, users or groups can investigate the possible causes of the breach,
reassignment patterns, and users who were assigned for the longest duration. The agent
can also provide information on the factors contributing to the SLA breach. Based on the
information, the SLA can be monitored and configured for better handling of tasks, and
improved assignment plans can be created.

Note: The explain SLA agentic workflow doesn’t have a trigger and is invoked manually.
To modify the explain SLA agentic workflow, duplicate it
your requirements.

, and adjust the settings according to

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Explain SLA
Autonomously generate an explanation for the SLA breakdown.

Note: The workflow can be accessed by the sn_uxc_gen_ai.sn_aia_sla_explain role that is
available as a part of the itil role.
To access and configure the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Explain SLA.

AI agent used in the explain SLA agentic workflow
The explain SLA AI agent provides a list of suggested questions that you can ask the agent to get
a detailed explanation about the SLA. You can also add custom questions regarding the SLA.
The following SLA details can be traced by conversing with the agent:
• Reason for choosing the SLA for the given task
• SLA target and vendor values
• If the SLA is likely to breach
• Time elapsed for the SLA
• Number of times the SLA has paused or resumed, and their details
• User and group assignments for the SLA
• SLA assignment and breach patterns

Generating SLA information using the explain SLA agentic workflow
In the agentic workflow record:
1. Review the information in the Describe and connect screen and in the Define trigger screen,
make the necessary updates, and then select Save and Continue.
2. In the Select a UI display screen, turn on the Display option to add the icon for the Now Assist
panel in the menu bar.
3. Select Save and test.
The AI agent executes the request for the agentic workflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2649


<!-- page 2650 -->
®

Example of the explain SLA agentic workflow output in the ServiceNow AI
Agent Studio

Access and use the explain SLA agentic workflow from the Now Assist panel.
You can add a query using the change request number to use the AI agent. You can enter
the number from the suggested questions, add keywords from the questions, or ask custom
questions to the agent.
For the query instruction, follow the steps specified in the List of steps field of the Define key
requirements screen of the agentic workflow record.
In the AI Agent Studio, the human agent gets notified as soon as a text message is generated so
that they can follow the on-screen instructions and complete the task. For more information, see
Request the generative AI capabilities in ITSM by using the Now Assist panel.
IT Service Management AI agent collection schedule a change agentic workflow
Use the schedule a change agentic workflow to schedule change requests by identifying the
available schedule slots.

Schedule a change agentic workflow overview
Use the schedule a change agentic workflow to schedule change requests in the slots available.
If the planned start and end dates are provided, the workflow helps schedule the change request
on or after the planned start date, at the earliest time slot available. The workflow helps align
slots in the future dates by monitoring possible conflicts and upcoming blackout or maintenance
schedules.

Note: The schedule a change agentic workflow doesn’t have a trigger and is invoked
manually.
To modify the schedule a change agentic workflow, duplicate it
according to your requirements.

, and adjust the settings

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2650


<!-- page 2651 -->
Schedule a change request
Autonomously schedule change requests by identifying the available slots.

Note: The workflow can be accessed by the sn_itsm_aia.sn_aia_chg_schedule role that is
available as a part of the itil role.
To access and configure the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Schedule a change request.

AI agent used in the schedule a change agentic workflow
The Schedule Change Request AI agent can help you schedule a change request in the
following scenarios:
• If the duration provided is not sufficient for managing the change request, the agent suggests
updating the schedule accordingly.
• If there are scheduled CIs in the existing change, the agent suggests an alternate schedule
within the next 90 days while also adhering to existing blackout and maintenance schedules.

Schedule slots using the schedule a change agentic workflow
In the agentic workflow record:
1. Review the information in the Describe and connect screen and in the Define trigger screen,
make the necessary updates, and then select Save and Continue.
2. In the Select a UI display screen, turn on the Display option to add the icon for the Now Assist
panel in the menu bar.
3. Select Save and test.
The AI agent executes the request for the agentic workflow.
®

Example of the schedule a change agentic workflow output in the ServiceNow
AI Agent Studio

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2651


<!-- page 2652 -->
Access and use the schedule a change agentic workflow from the Now Assist panel.
You can add a query using the change request number to use the AI agent.
For the query instruction, follow the steps specified in the List of steps field of the Define key
requirements screen in the agentic workflow record.
In the AI Agent Studio, the human agent gets notified as soon as a text message is generated so
that they can follow the on-screen instructions and complete the task. For more information, see
Request the generative AI capabilities in ITSM by using the Now Assist panel.
IT Service Management AI agent collection suggest configuration items for a change request
Use the suggest configuration items for a change request agentic workflow to make the process
of selecting configuration items during change creation conversational, intuitive, and efficient for
users.

Suggest configuration items for a change request agentic workflow overview
The suggest configuration items for a change request agentic workflow lets users quickly find
and link relevant configuration items (CIs) to a change request from the Now Assist panel. The
workflow analyzes change request content and suggests appropriate CIs.
To modify the suggest configuration items for a change request agentic workflow, duplicate it
and adjust the settings according to your requirements.

,

Note: The workflow can be accessed by the itil role.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Suggest configuration items for a change request.

Important: In the Edit trigger form, make sure that the Active button is turned on to
enable the AI agent to trigger autonomously.

AI agent used in the suggest configuration items for a change request agentic
workflow
You can access the change CI suggestion AI agent in the Define key requirements screen by
scrolling to the Add AI agents that can perform these steps section. The change CI suggestion
AI agent assists users in identifying and associating appropriate configuration items (CIs) with
specific change requests. This agent analyzes the content of the change request and suggests
relevant configuration items to the user.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.

Use the suggest configuration items for a change request agentic workflow
1. Review the information in the Define key requirements screen and make the necessary
updates, and then select Save and Continue.
2. In the Select display screen, turn on the Display option to add the icon for the Now Assist
panel in the menu bar.
3. Select Save and test.
The agent executes the request for the workflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2652


<!-- page 2653 -->
Example of the suggest configuration items for a change request agentic
®
workflow output in ServiceNow AI Agent Studio

4. Access and use the suggest configuration items for a change request agentic workflow from
the Now Assist panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2653


<!-- page 2654 -->
You can query in the Now Assist panel with the change request number. For the query
instructions, read the steps specified in the List of steps field of the corresponding AI agent
(change CI suggestion AI agent).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2654


<!-- page 2655 -->
Example of the suggest configuration items for a change request agentic
workflow output in the Now Assist panel

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2655


<!-- page 2656 -->
IT Service Management AI agent collection create outages for a change request
Use the create outages for a change request agentic workflow so users can associate outages
with a change request easily in a conversational and intuitive way.

Create outages for a change request agentic workflow overview
The create outages for a change request agentic workflow lets users quickly create outages for a
change request from the Now Assist panel.
The workflow first examines the current change record to determine if any outages are already
linked to it. If no outages are found, it retrieves the planned start and end dates from the change
request. In cases where these dates aren’t specified in the change request, the workflow
prompts the user to input the necessary dates. Next, the workflow creates an outage record
for the change request. If a configuration item (CI) is present, it attaches the affected CIs to
the outage record. The workflow then checks whether there’s an impacted service associated
with the change record. If a service exists, it asks the user if the impacted service should be
linked to the affected configuration items within the outage record. This conversational and
automated approach helps streamline the process, enabling users to associate outages with
change requests while recording relevant data.
To modify the create outages for a change request agentic workflow, duplicate it
settings according to your requirements.

, and adjust the

Note: The workflow can be accessed by the itil role.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Create outages for a change request.

Important: In the Edit trigger form, make sure that the Active button is turned on to
enable the AI agent to trigger autonomously.

AI agent used in the create outages for a change request agentic workflow
You can access the change outage assistant AI agent in the Define key requirements screen by
scrolling to the Add AI agents that can perform these steps section. The change outage assistant
AI agent assists users in creating outages for change records. The agent creates outage records
for the change request based on the CIs that are as being impacted by the change request.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.

Use the create outages for a change request agentic workflow
1. Review the information in the Define key requirements screen and make the necessary
updates, and then select Save and Continue.
2. In the Select display screen, turn on the Display option to add the icon for the Now Assist
panel in the menu bar.
3. Select Save and test.
The agent executes the request for the workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2656


<!-- page 2657 -->
Example of the create outages for a change request agentic workflow output in
®
ServiceNow AI Agent Studio

4. Access and use the create outages for a change request agentic workflow from the Now Assist
panel.
You can query in the Now Assist panel with the change request number. For the query
instructions, read the steps specified in the List of steps field of the corresponding AI agent
(change outage assistant AI agent).
Example of the create outages for a change request agentic workflow output in
the Now Assist panel

IT Service Management AI agent collection create standard change request
Use the create standard change request agentic workflow to help users create a standard,
normal, or emergency change request in a conversational and intuitive way.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2657


<!-- page 2658 -->
Create standard change request agentic workflow overview
The create standard change request agentic workflow assists users in creating change requests
quickly and efficiently. On initiation, the workflow prompts users to select the specific type of
change they want to request - standard, normal, or emergency.
• If the user selects standard, they’re prompted to provide additional information about the
change request. On receiving this information, the workflow first retrieves historical template
data from previous change requests. It analyzes the data, and recommends suitable templates
that closely match the user’s current scenario. The workflow also generates direct links for
users to create change records based on the suggested templates.
• If the user selects normal or emergency, the workflow directly generates a link for users to
create a normal or emergency change request record.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Create standard change request.

Note: The workflow can be accessed by the sn_change_write and itil role.
To modify the create standard change request agentic workflow, duplicate it , and adjust the
settings according to your requirements. The create standard change request agentic workflow
doesn’t have a trigger and is invoked manually.

Important: In the Edit trigger form, make sure that the Active button is turned on to
enable the AI agent to trigger autonomously.

AI agent used in the create standard change request agentic workflow
You can access the standard change template recommender AI agent in the Define key
requirements screen by scrolling to the Add AI agents that can perform these steps section.
When a user asks for help in the Now Assist panel to create a change request of type standard,
the agent retrieves historical template data from previous change requests. By analyzing this
data, it suggests suitable templates that closely match the user’s current scenario. Then, it
generates links for users to create change records based on these suggested templates. If a user
asks for help with creating a normal or emergency change request, then the agent generates a
link directly to create a normal or emergency change request.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.

Use the create standard change request agentic workflow
1. Review the information in the Define key requirements screen and in the Define trigger screen,
make the necessary updates, and then select Save and Continue.
2. In the Select display screen, turn on the Display option to add the icon for the Now Assist
panel in the menu bar.
3. Select Save and test.
The agent executes the request for the workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2658


<!-- page 2659 -->
Example of the create standard change request agentic workflow output in the
®
ServiceNow AI Agent Studio

4. Access and use the create standard change request agentic workflow from the Now Assist
panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2659


<!-- page 2660 -->
You can query in the Now Assist panel to create a change request. For the query instructions,
read the steps specified in the List of steps field of the corresponding AI agent (standard
change template recommender AI agent).
Example of the create standard change request agentic workflow output in the
Now Assist panel

IT Service Management AI agent collection create standard change template proposal
Use the create standard change template proposal agentic workflow to help users quickly create
a change template proposal record based on similar change requests.

Create standard change template proposal agentic workflow overview
The create standard change template proposal agentic workflow lets users quickly create a
change template proposal record from the Now Assist panel. The workflow analyzes similar
change requests and lists them to the user. The user can select the preferred change request
and the content for template generation, and the workflow then creates a proposal record with
the specified values.
Using this agentic workflow, you can quickly propose a change template for a change request
that you frequently create. This template is later sent for approval to the change management
team, which reviews the request and approves the template as part of the approval process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2660


<!-- page 2661 -->
To modify the Create standard change template proposal agentic workflow, duplicate it , and
adjust the settings according to your requirements. The Create standard change template
proposal agentic workflow doesn’t have a trigger and is invoked manually.

Note: The workflow can be accessed by the change_manager and itil role.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Create standard change template proposal.

Important: In the Edit trigger form, make sure that the Active button is turned on to
enable the AI agent to trigger autonomously.

AI agent used in the create standard change template proposal agentic
workflow
You can access the standard change template proposal AI agent in the Define key requirements
screen by scrolling to the Add AI agents that can perform these steps section. When a change is
provided, this agent finds similar changes and lists them. The user can then select the preferred
change request and the content for template generation, and the agent then creates a proposal
record with the specified content.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.

Use the create standard change template proposal agentic workflow
1. Review the information in the Define key requirements screen and make the necessary
updates, and then select Save and Continue.
2. In the Select display screen, turn on the Display option to add the icon for the Now Assist
panel in the menu bar.
3. Select Save and test.
The agent executes the request for the workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2661


<!-- page 2662 -->
Example of the create standard change template proposal agentic workflow
®
output in ServiceNow AI Agent Studio

4. Access and use the create standard change template proposal agentic workflow from the Now
Assist panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2662


<!-- page 2663 -->
You can query in the Now Assist panel with the change request number. For the query
instructions, read the steps specified in the List of steps field of the corresponding AI agent
(standard change template proposal AI).
Example of the create standard change template proposal agentic workflow
output in the Now Assist panel

Agentic AI in Digital End-User Experience
Use the Digital End-User Experience (DEX) agentic workflow to diagnose and resolve issues on
DEX monitored devices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2663


<!-- page 2664 -->
Important: To access the DEX issue diagnosis and resolution agentic workflow, make
sure that you install the following applications:
• Now Assist for IT Service Management (ITSM) (sn_itsm_gen_ai) plugin.
• Digital End-User Experience application. For more information, see Install Digital EndUser Experience and Configuring Digital End-User Experience.

Note:
• Before you begin, review these Important considerations for using Now Assist for IT
Service Management (ITSM) agentic AI.
• For all available ITSM agentic AI applications, see Use agentic AI in Now Assist for IT
Service Management (ITSM).
The DEX issue diagnosis and resolution agentic workflow enables service desk agents to
diagnose issues based on real-time insights into device and application health and resolve
these issues using targeted resolution plans directly from the workspace.
The agentic workflow uses two AI agents to conduct root cause analysis for incidents and
provide issue resolution plans.
• DEX diagnosis AI agent
• DEX resolution plan AI agent
DEX issue diagnosis and resolution agentic workflow
Use the Digital End-User Experience (DEX) issue diagnosis and resolution agentic workflow from
the Now Assist panel to diagnose and resolve common issues on DEX monitored devices.

DEX issue diagnosis and resolution agentic workflow overview
Using the DEX issue diagnosis and resolution agentic workflow:
• Get automated diagnoses for incidents on DEX monitored end-user devices. Root cause
analysis is generated based on sources like device health check data from 24 hours before the
incident to incident time and similar past incidents.
• Get resolution plans for detected device issues based on remedial actions and self-help
instructions, past incident resolutions, and Knowledge Base articles.
• Provide approval and have the resolution summary automatically stamped to the Work notes of
an incident record.

Applications required to access the agentic workflow
To access the DEX issue diagnosis and resolution agentic workflow, make sure that you install
the following applications:
• Now Assist for IT Service Management (ITSM) (sn_itsm_gen_ai) plugin.
• Digital End-User Experience application. For more information, see Install Digital End-User
Experience and Configuring Digital End-User Experience.

Roles required to access the agentic workflow
To use the DEX issue diagnosis and resolution agentic workflow, you must have one of the
following role combinations:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2664


<!-- page 2665 -->
• sn_dex.service_desk_user and ITIL
• sn_dex.engineer and ITIL

Additional requirements to access the agentic workflow
The DEX issue diagnosis and resolution agentic workflow provides incident diagnosis and
resolution only when the following requirements are met.
• The agentic workflow must be activated. For more information, see Activate an agentic
workflow template .
• The incident number must be valid.
• The incident record must be associated with a single, DEX monitored physical endpoint or
device. Only one device configuration item (CI) must be configured either as the primary CI in
the Configuration item field or in the Affected CIs list.
• The device associated with the incident must have a DEX compatible operating system. For
more information, see DEX system requirements.
• The incident must be created within the past month. Incidents older than one month cannot be
diagnosed and resolved using the agentic workflow.
• To make sure that the correct agentic workflow is initiated, include the phrase "diagnose and
resolve" in your Now Assist panel prompt.

Accessing the agentic workflow
Service desk agents can access the agentic workflow from the Service Operations Workspace by
using the Now Assist panel.
Administrators can access the agentic workflow from the AI Agent Studio.
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select DEX issue diagnosis and resolution workflow.

AI agents used in the DEX issue diagnosis and resolution agentic workflow
In the DEX issue diagnosis and resolution agentic workflow, two AI agents are used for incident
diagnosis and resolution on DEX monitored devices.
AI agents and their roles listed in the order of execution in the DEX issue diagnosis and
resolution agentic workflow
AI agent

AI agent role

DEX diagnosis AI agent

Performs root cause analysis of the issue by
using data from sources such as device health
check metrics, device or service events, and
similar past incidents. It then provides the
diagnosis, highlighting affected components,
data sources, and patterns.
If there is insufficient or inconclusive data, the
agent returns a message stating no diagnosis
is possible and specifies the additional
information required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2665


<!-- page 2666 -->
AI agents and their roles listed in the order of execution in the DEX issue diagnosis and
resolution agentic workflow (continued)
AI agent

AI agent role

DEX resolution plan AI agent

Collects DEX resolutions that include remedial
actions and self-help instructions, past
incident resolutions, and Knowledge Base
articles. It then generates a resolution plan
with actionable steps to resolve the incident
and prompts for confirmation about updating
the resolution in the Work notes field of the
incident record.
If no resolution is found for an incident,
the agent returns a message stating so.
The incident would then require manual
investigation and resolution.

Generating an incident diagnosis and resolution plan in the Service Operations
Workspace
Service desk agents can use the agentic workflow to generate incident diagnosis and resolution
plan from the Service Operations Workspace.
1. In the Service Operations Workspace, open the incident record from the Incidents list.
2. Select the Now Assist icon

to open the Now Assist panel.

3. Type your prompt that includes the phrase "diagnose and resolve". For example, Diagnose and
resolve this incident.
After the resolution plan is generated, you can execute it directly from the Investigation tab of the
incident record. For more information, see Incident investigation with DEX.
Example of DEX issue diagnosis and resolution agentic workflow output in Service

Operations

Workspace
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2666


<!-- page 2667 -->
Generating an incident diagnosis and resolution plan in the ServiceNow AI
Agent Studio

Note: Make sure that you have the required privileges to test the agentic workflow and
generate incident diagnosis and resolution plan from the AI Agent Studio.
In the agentic workflow record:
1. Review the information in the Define key requirements screen, make updates if necessary, and
then select Continue.
2. In the Define user access screen, review or add roles that can access the use case, and then
select Continue.
3. In the Define data access screen, review the user identity for the AI agent, make updates if
necessary, and then select Continue.
4. In the Define trigger screen, make updates if necessary, and then select Continue. For more
information about defining triggers, see Create an agentic workflow .
5. In the Select display screen, choose where you want the agentic workflow output to be
displayed, and then select Save and test.
6. In the Test details screen, enter your prompt in the Task field, and then select Continue to Test
Chat Response.
Example prompt: Diagnose and resolve incident number.
The agent executes the request for the agentic workflow.
Example of DEX issue diagnosis and resolution agentic workflow output in the ServiceNow

AI Agent

Studio

Agentic AI Now Assist for Incident Management
Use the ITSM Incident Management agentic workflows to manage, resolve and close incidents
and incident tasks autonomously.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2667


<!-- page 2668 -->
Important:
To access the agentic workflow for Incident Management, make sure that you install the
following applications:
1. Now Assist for IT Service Management (ITSM) (sn_itsm_gen_ai) plugin.
2. Incident Management application. For more information, see Configuring Incident
Management.

Note:
• Before you begin, review these Important considerations for using Now Assist for IT
Service Management (ITSM) agentic AI.
• For all available ITSM Agentic AI applications, see Use agentic AI in Now Assist for
IT Service Management (ITSM).
The Wrap-up and resolve incident agentic workflow enables users to generate resolution notes
and select resolution code to resolve an incident. Attach the Knowledge Base (KB) article or
create a draft Knowledge article. Attach a Known Error (KE) article to the incident record when
the resolution code is selected as Known Error. Update duplicate incident information when the
resolution code is Duplicate.
The agentic workflow uses the following AI agents:
• Incident resolution details AI agent
• Incident knowledge article AI agent
• Incident known error article AI agent
IT Service Management AI agent collection Wrap-up and resolve incident agentic workflow
Use the Wrap-up and resolve incident agentic workflow to generate resolution notes and select
resolution code to resolve an incident. Attach the Knowledge Base (KB) article or create a draft
Knowledge article. Attach a Known Error (KE) article to the incident record when the resolution
code is selected as Known Error. Update duplicate incident information when the resolution code
is Duplicate.

Wrap-up and resolve incident agentic workflow overview
Using the Wrap-up and resolve incident agentic workflow:
1. Generate resolution notes (root cause and resolution steps) based on the work notes and
comments in the activity stream of the incident record and select a resolution code.
2. Update duplicate incident information to the incident record when the resolution code is
Duplicate.
3. Check for relevant available KE articles and attach any of them to the incident record when the
resolution code is Known Error.
4. Check for relevant available KB articles and attach any of them to the incident record.
5. Create a draft KB and attach it to the incident record if necessary.
To modify the Wrap-up and resolve incident agentic workflow, duplicate it
settings according to your requirements.

, and adjust the

Important: When you modify an agentic workflow, AI agent, or a tool, make sure that you
update all instructions accordingly.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2668


<!-- page 2669 -->
Resolve incidents and link a KB or KE article
When you make a query or a request in the Now Assist panel, resolution notes are generated
based on the work notes and the comments from the activity stream of the incident record. You
can select any resolution code from the available resolution codes. You can update the duplicate
incident information to the incident record if the resolution code is selected as Duplicate.
You can also attach any of the KE articles from the similar KE article recommendations to
the incident record if the resolution code is selected as Known Error and then resolve the
incident. After the incident is resolved, you can attach any of the KB articles from the similar
recommended KB articles to the incident record. You can also select to create a draft KB article.
To access the agentic workflow:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Wrap up and resolve incident.

AI agents used in the Wrap-up and resolve incident agentic workflow
In the Wrap-up and resolve incident agentic workflow, specific AI agents are used for each type
of resolution to generate the desired recommendations and output.

Important: In the Define availability screen for the AI agent, make sure that the Status
field is enabled to activate the AI agent.
AI agents and their roles listed in the order of execution in the Wrap-up and resolve incident
agentic workflow
AI Agent

Incident resolution details AI agent

AI Agent role

1. Generates and recommends resolution
notes based on the work notes and
comments in the activity stream. After you
approve, the resolution notes are added to
the incident record.
2. Provides the available resolution codes to
select. After selection, the codes are added
to the incident record.
3. Updates duplicate incident information to
the incident record if the selected resolution
code is Duplicate.

Incident knowledge article AI agent

1. Resolves the incident and then searches
and recommends similar KB articles. You
can select any of the recommended KB
articles or enter any KB article irrespective of
any similar KB articles found which are then
attached to the incident record.
2. If no similar KB articles are available or
you don’t want to select from the available
similar KB articles, you can still choose to
create a draft KB article anyway. You can
provide the input as Draft in the Now Assist

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2669


<!-- page 2670 -->
AI agents and their roles listed in the order of execution in the Wrap-up and resolve incident
agentic workflow (continued)
AI Agent

AI Agent role

panel. In such a case, the AI agent drafts
and recommends a KB article that you can
link to the incident record.
Incident known error article AI agent

Searches for and recommends similar KE
articles if the resolution code is Known Error.
You can select any of the recommended KE
articles that are then attached to the incident
record and the incident is resolved. If no
relevant KE articles are available, you can
enter any KE article, which is then attached to
the incident record.

Set up the Wrap-up and resolve incident agentic workflow
To use the Wrap-up and resolve incident agentic workflow, you must confirm or perform the
following:
1. The Now Assist for IT Service Management plugin (sn_itsm_gen_ai) plugin is installed and
configured.
2. Navigate to All > Now Assist admin > Skills and enable the following skills and options:
a. On the Now Assist skills tab, select ITSM and then activate the Resolution notes generation
and KB generation skill. For more information, see Skill inputs and triggers for Now Assist for
IT Service Management (ITSM).
b. On the Now Assist Experience tab, enable the Now Assist panel for users.
c. Select the CI Admin console link, and then enable the Now Assist panel.
For more information, see Configure Now Assist for IT Service Management (ITSM).

Use the Wrap-up and resolve incident agentic workflow
In the agentic workflow record:
1. Review the information in the Define key requirements screen (workflow description and list of
steps field) and in the Add a preferred trigger screen, make any necessary updates, and then
select Save and Continue.

Note: You can only edit the information in this record in the IT Service Management AI
agent collection application scope.
2. In the Select a UI display screen:
a. Choose where you want the agentic workflow output to be displayed. Possible values:
▪ Now Assist panel
▪ Virtual Agent

Note: You can use Now Assist panel to access the agentic workflow. When selected,
the Now Assist panel icon can be accessed from the menu bar.
b. Use the arrow next to it to add roles that can access the agentic workflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2670


<!-- page 2671 -->
Note: The itil role is added by default. Any role that you add in this field can use the
Wrap-up and resolve incident agentic workflow. For example, from the Now Assist
panel.
c. Select Save and test.
The agent executes the request for the agentic workflow.
Example of the Wrap-up and resolve incident agentic workflow output in the ServiceNow

AI Agent

Studio
3. Access and use the Wrap-up and resolve incident agentic workflow from the Now Assist panel.
You can query in the Now Assist panel to use the agentic workflow. For the query instruction,
follow the steps specified in the List of steps field of the Define key requirements screen in the
agentic workflow record.
Example of the Wrap-up and resolve incident output in the Now Assist Panel

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2671


<!-- page 2672 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2672


<!-- page 2673 -->
Based on the query, the different AI agents work on the incident record. Depending on the
various workflow stages and the resolution codes selected for an incident, the AI agents can
either operate individually in sequence or collaborate simultaneously to deliver the desired
outcome.
For example, when generating resolution notes, adding resolution notes and codes or updating
duplicate incident information to the incident record, the Incident resolution details AI agent
is used. For more information on how to query using the Now Assist panel, see Request the
generative AI capabilities in ITSM by using the Now Assist panel.

Using Now Assist for IT Service Management (ITSM) Generative AI
skills
If you have the itil role, you can summarize the chat interactions with a requester, summarize
an incident, and generate resolution notes by using the Now Assist for IT Service Management
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2673


<!-- page 2674 -->
(ITSM) application. You can also understand the chat and incident context and propose
resolutions more quickly to the requester.

Note:
• If you want a subset of users with itil role to access the Now Assist for IT Service
Management (ITSM) skills, you can create a role or a group for those users. For more
information, see Create a new role or a group to access Now Assist skills .
• By default, all skills exist in the global domain. When you use Now Assist in a domainseparated environment, users are only able to access data in their domain. For example,
if a user uses the summarization skill, Now Assist only uses material that exists in the
user's domain when generating that summary. Additionally, there is no co-mingling of
data for domain-separated instances when using generative AI skills. The data resides
only on the instance, and the shared services used for generative AI do not persist any
requests (prompts) and responses. For more information, see Domain separation in the
Now Assist Admin console . (Note that global domain is not the same as global scope.
For more information, see Exploring Next Experience pickers .)
•

Important: Some Now Assist skills, agents, and agentic workflows are now turned
on by default. The new default behavior works as follows:
New customers
When you install a Now Assist product, designated skills, agents, or
agentic workflows are turned on automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills, agents, or agentic workflows that are
currently enabled and customized.
An AI asset is turned on if:
◦ The Now Assist plugin is installed, but the asset was never turned on.
◦ An admin has never adjusted roles for the skill.
An AI asset is not turned on if:
◦ The asset was previously turned on, and then turned off again.
◦ An admin has adjusted roles for the asset.
For more information, see Now Assist skills, agents, and agentic workflows on by
default .

Now Assist for ITSM skill summary
Skill Name

Description

Link

Chat
summarization

Summarizes the Virtual Agent chat
conversation between a live agent and a
requester in Service Operations Workspace
for ITSM.

Summarize a chat
conversation

Sidebar
discussion
summarization

Generates summaries of Sidebar chat
discussions between agents, requesters, and
subject matter experts.

Summarize a sidebar
discussion

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2674


<!-- page 2675 -->
Now Assist for ITSM skill summary (continued)
Skill Name

Description

Link

Incident
summarization

Generates summaries of incident details to
quickly understand the incident context and
respond to a requester’s inquiries.

Summarize an incident
by using Now Assist for
IT Service Management
(ITSM)Summarize an
incident

Incident
reassignment
summarization

Provides information about the incident when
assigning it to another agent or assignment
group by summarizing all actions until hand
off.

Summarize an incident on
reassignment

Change request
summarization

Quickly captures the important details of a
change request including the current status.

Summarize a change
request

Change request
risk explanation

Explains the risk assessment of a change
request to help agents understand potential
impacts.

Explain a change request
risk

Resolution notes Automatically generates the resolution notes
generation
for an incident on demand using the Now
Assist context menu (NACM).

Generate the resolution
notes

Knowledge
article
generation

Creates knowledge articles from incidents to
help deflect future similar issues.

Generate a knowledge
article

Chat reply
Generates a reply based on the context of the
recommendation chat conversation using the Now Assist icon.

Generate a chat reply
recommendation

Email response
generation

Generate an email as a recommendation
Generate an email response
based on the context of the incident using the
Now Assist icon.

Major
Creates a draft version of an email to
Incident email
communicate with stakeholders on a major
recommendation incident using an email template.

Generate a Major Incident
email recommendation

Incident Q&A

Allows agents to obtain common incidentrelated information conversationally to get
quick answers.

Ask questions on an
incident

Generative AI
capabilities
request

Enables users to request contextual
generative AI capabilities such as a chat
summary, incident summary, or incident
resolution notes in a conversational manner.

Request generative AI
capabilities

Incident
deflection with
self-service

Deflects incidents by providing self-service
solutions.

Deflect an incident with selfservice

Sentiment
analysis

Enables users to make informed decisions on Analyze sentiments
incidents based on requester's sentiment and
the reasoning behind it.

Suggested steps Generates suggested steps automatically by
generation
analyzing clusters of closed incidents with
similar incident resolution.

Generate suggested steps

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2675


<!-- page 2676 -->
Now Assist for ITSM skill summary (continued)
Skill Name

Description

Link

Activity stream
response
generation

Automatically generates a response in an
incident record activity stream.

Generate a response in the
activity stream

Release notes
generation

Generates structured release notes for a
release using AI-driven summarization.

Generate release notes for a
release

Summarize a chat conversation by using Now Assist for IT Service
Management (ITSM)
Summarize the Virtual Agent chat conversation between a live agent and a requester in
Service Operations Workspace for ITSM. You can generate the summary by using the chat
summarization skill in Now Assist for IT Service Management (ITSM).

Before you begin
Role required: itil

About this task

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. The new default
behavior works as follows:
New customers
When you install a Now Assist product, designated skills are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills that are currently enabled and customized.
A skill is turned on if:
• The Now Assist plugin is installed, but the skill was never turned on.
• An admin has never adjusted roles for the skill.
A skill is not turned on if:
• The skill was previously turned on, and then turned off again.
• An admin has adjusted roles for the skill.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

In a Virtual Agent conversation, when a requester chooses to connect to a live agent, a chat
interaction appears in your inbox. When you accept the interaction, a summary of the Virtual
Agent conversation is generated. You can request more details from the requester to resolve the
issue.
You can also summarize the chat interaction when the chat ends or when an incident is created
for further troubleshooting before or after the chat ends. The summary includes all points of the
handoff, including the Virtual Agent conversation, and provides a context of the interaction to you
and the other agents who might want to refer to it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2676


<!-- page 2677 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Open the inbox and accept the chat interaction.
In the Active Chat section of the interaction, a summary of the Virtual Agent conversation is
generated. The summary includes the actions taken before the requester engaged with the
live agent. With this information, you can get an overview of what the requester has already
mentioned in the Virtual Agent conversation and troubleshoot the issue.
3. Chat with the requester to get any additional details about their question or issue.
For example, if the requester is having an issue with hardware, you may need the hardware
model number and serial number.
4. Summarize the chat while interacting with the requester by using the /summarize quick
action in the Active Chat section.
5. End the chat by selecting End Chat.
The Short description and Chat Summary fields are updated for the interaction.

6. Optional: Review the text in the Short description or Chat Summary fields and edit if
necessary.
(Optional) For example, you might want to make the summary more descriptive.

Note: Because the information in these fields is automatically generated, it's a good
idea to review the text and make sure it's accurate.
7. Select Save.
8. Optional: If you think that you need further help after the initial troubleshooting before or after
ending the chat, create an incident from the interaction by selecting Create incident.
◦ When you create an incident before ending the chat, the Short Description and Description
fields of the incident are updated with the interaction summary and saved.
◦ When you create an incident after ending the chat, the following information is generated:
▪ The Chat summary field of the interaction is updated with the interaction summary.
▪ The Short Description and Description fields of the incident are updated with the
interaction summary and saved.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2677


<!-- page 2678 -->
Summarize a Sidebar discussion by using Now Assist for IT Service
Management (ITSM)
Generate a summary of Sidebar discussions between agents, requesters, and subject matter
experts by using the Sidebar discussion summarization skill in the Now Assist for IT Service
Management (ITSM) application.

Before you begin
• Next Experience must be enabled to summarize Sidebar discussions in Core UI. For more
information, see Considerations for activating Next Experience .
• The Sidebar Chat Summarization skill must be enabled. For more information, see Activate a
Now Assist skill .
Role required: itil

About this task

You can do these actions by using the Sidebar discussion summarization skill:
• Summarize the Sidebar discussion at any point during the discussion.
• Share the Sidebar discussion to the work notes.
• Provide feedback for the summary.

Note: The Sidebar discussion summarization skill is on the Chat skill card in the
Technology group.
You can use Sidebar discussion summarization for any task table that you have enabled Sidebar
on.
Summarizing Sidebar chats integrated with Microsoft Teams is supported. For more information,
see Sidebar and Microsoft Teams .

Procedure
1. Navigate to Workspaces > Service Operations Workspace and open an incident that
supports Sidebar discussion and summarization.
2. Choose an existing discussion, or start a new discussion.
3. Generate a summary of the Sidebar discussion during the conversation either by either
entering /Summarize in the Active Sidebar discussion window, or by selecting the quick
action icon

and selecting Summarize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2678


<!-- page 2679 -->
The Sidebar discussion summary appears in the Discussion that is summarized by the Now
Assist modal.
4. Add the summary to the incident work notes, and provide feedback about it.
Option

Procedure

a. Select Share to Work notes.
Save the summary information by adding it
to the incident work notes

b. In the Share Incident summary as Work
notes dialog box, edit the summary, if need­
ed.
c. Select Save to Work notes.
If you'd like to provide feedback, select either
the helpful icon (
(

Provide feedback for the summary

), or the not helpful icon

)

This feedback improves the generative AI
model and can help to improve future ver­
sions of this skill.
The system gathers the feedback on each
generated summary and stores it in the gener­
ative AI logs (sys_generative_ai_log_list.do).

Summarize an incident by using Now Assist for IT Service Management
(ITSM)
Quickly understand the incident context and respond to a requester’s inquiries by using the
incident summarization skill in the Now Assist for IT Service Management (ITSM) application.

Before you begin
Role required: itil

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2679


<!-- page 2680 -->
About this task

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. The new default
behavior works as follows:
New customers
When you install a Now Assist product, designated skills are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills that are currently enabled and customized.
A skill is turned on if:
• The Now Assist plugin is installed, but the skill was never turned on.
• An admin has never adjusted roles for the skill.
A skill is not turned on if:
• The skill was previously turned on, and then turned off again.
• An admin has adjusted roles for the skill.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

An incident summary provides you with a concise summary of an incident. The summary is
based on the incident state and is generated from the information that you enter in the following
fields:
• Short description
• Description
• State
• Priority
• Work notes
• Additional comments
• Resolution notes (for a resolved incident)
For information about the incident states, see Life cycle of an Incident.
You can summarize an incident in Core UI and Service Operations Workspace for ITSM.

Procedure
1. In Core UI or Service Operations Workspace for ITSM, open an incident that is assigned to you.
2. Select Summarize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2680


<!-- page 2681 -->
◦ In Core UI, the summary appears in a banner of the incident record.

◦ In Service Operations Workspace for ITSM, the summary is generated in the Overview tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2681


<!-- page 2682 -->
You can provide feedback by selecting the thumbs up or thumbs down icon. You can also
share the summary using the Share button.

3. Optional: When you're finished summarizing an incident, you can add it to the work notes,
expand or collapse it, provide feedback, copy it, or view information about it.
Option

Procedure

a. Select Share as Work notes.
Save the summary information by adding it
to the incident work notes

b. In the Share Incident summary as Work
notes dialog box, edit the summary.
c. Select Save to Work notes.

Expand or collapse the summary

Select the expand card icon ( ) to view the
complete summary or the collapse card icon
(

) to view a collapsed summary.

If you think that the summary was helpful, se­
Provide feedback for the summary

lect the helpful icon (
). If you think that the
summary wasn’t helpful, select the not helpful
icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2682


<!-- page 2683 -->
Option

Procedure

Note: This feedback improves the
generative AI model and can help to im­
prove future versions of this skill.

Copy the incident summary
View the information about the incident
summary

If you want to reuse the summary, select the
copy to clipboard icon (

).

If you want to check some details about the
summary, select the more info icon (

).

Summarize an incident when reassigning it by using Now Assist for IT Service Management
(ITSM)
Provide information about the incident when assigning it to another agent or assignment group
by summarizing all actions until hand off. For example, an agent can summarize an incident when
reassigning it to another agent if the incident is incorrectly assigned or needs troubleshooting by
another agent or assignment group.

Before you begin
Role required: itil

About this task

You can reassign an incident in Core UI and Service Operations Workspace for ITSM.

Procedure
1. In Core UI or Service Operations Workspace for ITSM, open an incident that is assigned to you.
2. Perform one of the following steps.
Option

Description

From the Overview tab of an incident in Ser­
vice Operations Workspace for ITSM

Select Reassign.

From the Details tab of an incident in Ser­
vice Operations Workspace for ITSM

Core UI

a. Edit the Assigned to or Assignment group
fields.
b. Select Save.
a. Edit the Assigned to or Assignment group
fields.
b. Select Update or right-click the header
menu and select Save.

A summary of the incident is generated in the Work notes field in the Assign dialog box.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2683


<!-- page 2684 -->
Note: If your system administrator has enabled the glide.ui.advanced system

property and if the incident is saved without any changes to the Assigned to or
Assignment group fields, the Assign dialog box isn't displayed and the incident is saved
directly.
3. Edit the Assigned to or Assignment group fields if necessary.
4. Select Save.
The generated incident summary is posted as work notes for the incident.

Summarize a change request by using Now Assist for IT Service Management
(ITSM)
Quickly capture the important details of a change request, including the current status, by using
the change request summarization skill in the Now Assist for IT Service Management (ITSM)
application.

Before you begin
Role required: itil

About this task

A change request summary provides you with a concise summary of a change request. The
summary is based on the change request state and is generated from the information that you
enter in the following fields:
• Short description
• Description
• Work notes
• Additional comments
• Risk
• Impact
• Justification
• Implementation plan
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2684


<!-- page 2685 -->
• Risk and impact analysis
• Test plan
• Backout plan
• Close code
• Close notes
• Service offering
• State
• Conflict status
• Type
For information about the change request states, see State progression for normal, standard, and
emergency changes.
You can summarize a change request in Core UI and Service Operations Workspace for ITSM.

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. The new default
behavior works as follows:
New customers
When you install a Now Assist product, designated skills are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills that are currently enabled and customized.
A skill is turned on if:
• The Now Assist plugin is installed, but the skill was never turned on.
• An admin has never adjusted roles for the skill.
A skill is not turned on if:
• The skill was previously turned on, and then turned off again.
• An admin has adjusted roles for the skill.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

Procedure
1. In Core UI or Service Operations Workspace for ITSM, open a change request that is assigned
to you.
2. Select Summarize.

Note: The Summarize UI action isn’t available for the New or Canceled state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2685


<!-- page 2686 -->
The summary appears in a banner on the change request record in Core

UI.
The summary appears in the Overview tab on the change request record in Service
Operations Workspace.

You can provide feedback by selecting the thumbs up or thumbs down icon. You can also
share the summary using the Share button.
3. Optional: When you're finished summarizing a change request, you can add it to the work
notes, expand or collapse it, provide feedback, copy it, or view information about it.
Option

Procedure

a. Select Share as Work notes.
Save the summary information by adding it
to the change request work notes

b. In the Share Change Request summary as
Work notes dialog box, edit the summary.
c. Select Save to Work notes.

Expand or collapse the summary

Select the expand card icon ( ) to view the
complete summary or the collapse card icon
(

) to view a collapsed summary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2686


<!-- page 2687 -->
Option

Procedure

If you think that the summary was helpful, se­
lect the helpful icon (
). If you think that the
summary wasn’t helpful, select the not helpful
Provide feedback for the summary

icon (

).

Note: This feedback improves the
generative AI model and can help to im­
prove future versions of this skill.

Copy the change request summary
View the information about the change re­
quest summary

If you want to reuse the summary, select the
copy to clipboard icon (

).

If you want to check some details about the
summary, select the more info icon (

).

Explain the risk of a change request by using Now Assist for IT Service
Management (ITSM)
Quickly generate the explanation of the calculated risk rating for a change request by using
the change request risk explanation skill in the Now Assist for IT Service Management (ITSM)
application.

Before you begin
Role required: itil

About this task

Data from these input fields in the change request input table is used to explain why a change
risk is rated high, medium, or low:
• Short description
• Implementation plan
• Assignment group
• Risk
• Description
• Blackout plan
• Model type
Additional inputs include:
• Similar change requests and the incidents caused by those changes
• Risk condition that was met
• Risk assessment
By default, the assessment uses the top five normalized risk values sorted in descending
order. If there’s a tie between the two values, the one with the lower order number is used. For
information on risk assessment, see Risk assessment.
You can also add custom input fields.
You can generate the explanation of the calculated risk rating for a change request in Core UI
and Service Operations Workspace for ITSM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2687


<!-- page 2688 -->
Procedure
1. In Core UI or Service Operations Workspace for ITSM, open a change request that is assigned
to you.
2. Select the Now Assist icon

for the Explain Risk field.

Note: The Now Assist icon

isn’t available if the risk for the change request hasn’t

already been calculated.
The risk explained by Now Assist appears in a window on the change request record.

3. Optional: Elaborate or shorten the risk explained by Now Assist.
◦ To lengthen the generated response, select Refine > Elaborate.
◦ To shorten the generated response, select Refine > Shorten.
4. Optional: When you're finished generating the explanation for a change request risk rating,
you can provide feedback, copy it, or view information about it.
Option

Procedure

If you think that the change request risk ex­
planation was helpful, select the helpful icon

Provide feedback for the change request
risk explanation

(
). If you think that the change request
risk explanation wasn’t helpful, select the not
helpful icon (

).

Note: This feedback improves the
generative AI model and can help to im­
prove future versions of this skill.

Copy the change request risk explanation

If you want to reuse the change request risk
explanation, select the copy to clipboard icon
(

View the information about the change re­
quest risk explanation

).

If you want to check some details about the
change request risk explanation, select the
more info icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2688


<!-- page 2689 -->
Generate the resolution notes for an incident by using Now Assist for IT
Service Management (ITSM)
Automatically generate the resolution notes for an incident on demand using the Now Assist
context menu. You can improve the quality of the resolution notes by providing a summary of the
root cause and the steps taken to resolve the issue. Generating resolution notes lets you provide
information about the incident resolution to other agents who might encounter similar issues.

Before you begin
Role required: itil

About this task

You can do these actions by using Now Assist icon:
• Generate resolution notes that are based on the information in the incident.
• Refine the resolution notes by elaborating or shortening them.
Incident resolution notes are generated from the information that you enter in the following fields:
• Short description
• Description
• State
• Work notes
• Additional comments

Note: To change resolution notes generation from automatic to manual (requiring user
input), set the trigger for the skill in the Now Assist Admin console.
You can generate incident resolution notes in Core UI and Service Operations Workspace for
ITSM.

Procedure
1. In Core UI or Service Operations Workspace for ITSM, open an incident that is assigned to you.
2. Select Resolve.
◦ When you select Resolve, the large loader icon
generated by Now Assist. The small loader icon
filled on the incident.

displays when the notes are being
displays when resolution notes are pre-

◦ For automatic resolution notes generation, the Resolution notes field is updated in the
Resolve dialog box using Now Assist.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2689


<!-- page 2690 -->
◦ For user-triggered resolution notes, manual resolution notes are generated by selecting
inside the Resolution notes field, and then selecting the Now Assist icon

.

Resolution notes are generated in the Now Assist dialog box.
You can perform these actions on the resolution notes:
▪ Select Refine: To elaborate or shorten.
▪ Select Insert: To paste into the Resolve window.
(Optional) When you're finished generating the resolution notes manually, you can provide
feedback, copy it, or view information about it.

Option

Procedure

Provide feedback for the resolution notes

If you think that the resolution notes were
helpful, select the helpful icon ( ). If you
think that the resolution notes were not
helpful, select the not helpful icon (

).

Note: This feedback improves the
generative AI model and can help to
improve future versions of this skill.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2690


<!-- page 2691 -->
Option

Procedure

Copy the resolution notes

If you want to reuse the resolution notes,
select the copy to clipboard icon (

View the information about the resolution
notes

).

If you want to check some details about the
resolution notes, select the more info icon
(

).

3. Optional: Review the resolution summary in the Resolution notes field and make any
necessary corrections.

Note: Because the information in these fields is automatically generated, it's a good
idea to review the text and make sure it's accurate.
4. Update the resolution code in the Resolution code field and select Resolve.
A resolution code categorizes how the incident is resolved. For example, Known error and
Solved (Permanently).
The resolution information is updated and the state of the incident is set to Resolved.
5. In Core UI or Service Operations Workspace for ITSM, resolve the incident by changing its
state.
Interface

Procedure

a. Change the state to Resolved. The Resolve
dialog box is displayed with the generated
resolution notes.
Core UI

Service Operations Workspace for ITSM

b. Update the resolution code and select Re­
solve. The resolution summary is displayed
in the Resolution Information tab on the In­
cident form.
In the Details tab of the incident, change the
state to Resolved. The resolution summary is
updated in the Resolution section of the De­
tails tab.

Generate a knowledge article from the Service Operations Workspace for
ITSM and classic environment by using Now Assist
As an agent or knowledge writer, quickly generate knowledge articles from resolved and
closed incidents within the Service Operations Workspace for ITSM application and classic
environment by using the Now Assist application.

Before you begin
https://player.vimeo.com/video/1009282001?
h=fc84a7cd87&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
You can generate a knowledge article in any incident state that is set by your administrator
using the com.snc.incident.create_knowledge.multistate.enable system
property.The incident must also not have an existing knowledge article that is associated with it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2691


<!-- page 2692 -->
Important:
• Install the applications and plugins listed in the tables below and update them to the
corresponding store app version before configuring the Knowledge Generation skill.
• For information on the plugin version numbers that correspond to
the release you’re installing, see https://store.servicenow.com/store/
app/2c09636e1be06a50a85b16db234bcb74 versionSummary
• For knowledge management, you must install and update the following store apps to the
corresponding application version.

Store application name

Plugin ID

Now Assist in Knowledge Management [appknowledge-gen-ai]

sn_km_gen_ai

Knowledge Capabilities in UI Builder [appknowledge-uib]

sn_km_uib

• For ITSM Service Operations Workspace, you must install and update the following store apps
to the corresponding application version.

Application name

Plugin ID

Service Operations Workspace ITSM
Applications

sn_sow_itsm_cont

Now Assist for IT Service Management (ITSM) sn_itsm_gen_ai
Service Operations Workspace Core

sn_sow

Record Page for Service Operations
Workspace

sn_sow_record

Service Operations Workspace ITSM
Common

sn_sow_itsm_common

Incident Management for Service Operations sn_sow_inc
Workspace
Interaction Management for Service
Operations Workspace

sn_sow_interaction

To enable an agent to see the Now Assist experience on the Create Article page, configure the
following knowledge base generation criteria:
• Install the knowledge skills. For more information, see Configure Now Assist for IT Service
Management (ITSM).
• Make sure that the following criteria are in place in the Now Assist Admin console:
◦ Specify the table record and input fields.
◦ Specify the conditions for the skill availability from the list of attributes.
◦ Specify that the knowledge base generation feature for the In-product or Now Assist panel is
displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2692


<!-- page 2693 -->
• Configure the Create Article feature to apply the supported template, Incident-KCS article HTML, or Standard article.
• Currently, only the Create Article experience is available.
Role required: itil

About this task

In the Service Operations Workspace for ITSM and classic environment, you can generate the
knowledge article information for an incident by selecting Create Knowledge on the incident
record. This UI action displays the Use Al to draft this article modal. By using this modal, you
can choose to write the article yourself or draft an article and then you can review and edit the
knowledge article text.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Open an incident that is assigned to you.
In the incident record, resolve and close the incident.
3. Create the article by selecting the Create knowledge option from the UI action drop-down
menu in the incident.

Note:
◦ The Create knowledge UI action is only visible when an incident doesn't have an
existing knowledge article that is associated with it.
◦ When the Create knowledge action is initiated, it gets redirected to an interceptor
page. A series of steps is then executed within the Knowledge Management
application .
This includes determining if the following actions must be done:
▪ Display the write option using Now Assist.
▪ Present a list of similar records.
▪ Generate a submission record if the glide.knowman.submission.workflow
property is enabled.
◦ If you encounter a duplicate Create Knowledge button, see the Resolving duplicate
Create Knowledge actions
community article for the resolution.
4. In the Knowledge article interceptor page, select a knowledge base and an article template.
The KCS template (Incident-KCS article - HTML) is available when the KCS integration for
incident management (com.snc.incident.knowledge) plugin is installed. If the plugin isn’t
installed, the article is generated using the Standard article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2693


<!-- page 2694 -->
Knowledge article interceptor page for Service Operation Workspace

Knowledge article interceptor page in Core UI

5. Select Next.

Note: When you use the standard template, the content from the incident's

Description, Resolution, and Additional comments fields are populated in the Issue,
Resolution, and Additional comments sections respectively in the article body of the
standard template.

6. In the Use AI to draft this article? modal, choose to write the article yourself, or draft an article
with Now Assist.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2694


<!-- page 2695 -->
7. Optional: If you’re drafting the article with Now Assist, you can choose up to five relevant
tasks for the creation of the article, and select Use selected tasks to help draft new article;
otherwise, select Cancel.

When creating an article that includes information that spans multiple similar incidents, a
single article is created containing the details from the selected incidents.
The article appears in a new tab, has a unique ID number for the knowledge article, and is
attached to the parent record.
8. Review the article and edit it if necessary.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2695


<!-- page 2696 -->
9. Select Save or Publish.
◦ The Now Assist success message disappears indicating that it’s no longer a Now Assist
generated article.
◦ If Now LLM Service fails to generate a result, you see an error message.
◦ When creating an article using Now Assist, the process once triggered can’t be stopped.
Now Assist continues to generate the article even if you close the dialog box.
◦

Note: You can edit a knowledge article in an incident using the Edit knowledge
article button. This button displays under the following conditions:
▪ When the incident is in resolved or closed state or for
any state your system administrator has enabled the

com.snc.incident.create_knowledge.multistate.enable system
property.
▪ If you have only one article attached to the incident.
Related topics
Now Assist in Knowledge Management

Generate a chat reply recommendation by using Now Assist for IT Service
Management (ITSM)
Generate a reply based on the context of the chat conversation using the Now Assist icon. Chat
reply recommendations provide agents with quick replies to common questions.

Before you begin
Role required: itil

About this task

You can do these actions by using Now Assist icon:
• Generate a recommended reply that is based on the context of the conversation.
• Refine the recommendation by elaborating or shortening the response.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2696


<!-- page 2697 -->
Note: The Chat reply recommendation skill is on the Chat skill card in the Technology
group.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Open the inbox and accept the chat interaction.
In the Active Chat section of the interaction, a summary of the Virtual Agent conversation is
generated. The summary includes the actions taken before the requester engaged with the
live agent. With this information, you can get an overview of what the requester has already
mentioned in the Virtual Agent conversation and troubleshoot the issue.
3. Chat with the requester to get any additional details about their question or issue, if needed.
For example, if the requester is having an issue with hardware, you may need the hardware
model number and serial number.
4. In the chat message window, either type a response, or leave blank, and then select the Now
Assist icon

.

Chat message window

Now Assist icon

Typed response

Provides the option to refine your response.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2697


<!-- page 2698 -->
Chat message window

Now Assist icon

◦ Elaborate
◦ Shorten

Left blank

Generates a recommended reply based on
the context of the conversation up to this
point.

The reply response appears in the Now Assist context menu modal.

5. Review the generated reply and select Refine to modify the response, or select Insert to paste
the response into the chat message window.

Note: If the reply response was refined, you can toggle between versions.
6. In the chat message window, select Send.
7. End the chat by selecting End Chat.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2698


<!-- page 2699 -->
Generate an email response by using Now Assist for IT Service Management
(ITSM)
Generate an email as a recommendation based on the context of the incident using the Now
Assist icon. Email responses can help agents save time and learn efficient ways to respond to
requesters.

Before you begin

An admin must activate the email response skill. For more information, see Configure email reply
recommendation in the Now Assist Admin console .
Role required: itil

About this task

As an agent, you can do these actions using the Now Assist icon:
• Generate an email response as a recommendation based on the context of the incident and
the email.
• Generate an email response as a recommendation for replies to new, forwarded, and draft
emails.
• Refine the recommendation by elaborating or shortening the response.
• Get email template recommendations while composing an email.

Procedure
1. In Core UI or Service Operations Workspace for ITSM, open an incident that is assigned to you.
2. Start composing an email using the More actions icon or from the activity stream.
Method

Instructions

a. Select Email.
b. Write six or more words and then select the
words.
The Now Assist icon appears.
c. Select the Now Assist icon.
Compose email using More actions icon

Now Assist creates an email response as a
recommendation.
d. Select Refine and then select Shorten or
Elaborate depending on whether you want
a more concise or a lengthy response.
Get an email response as a recommenda­
tion for the agent to ask more questions or
sent notes to an end user.

Compose an email from Activity stream

a. In the activity stream, select an existing
email that you want to reply to.
b. Position your cursor within the email mes­
sage window to see the Now Assist icon

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2699


<!-- page 2700 -->
Method

Instructions

c. Select the Now Assist icon
to get an
email response as a recommendation for
the agent to ask more questions or sent
notes to an end user.
3. In the email message window, either type a response or leave it empty, and then select the
Now Assist

icon.

Email response screen in Service Operations Workspace

Email response screen in Core UI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2700


<!-- page 2701 -->
Email message window

Now Assist icon

Provides the option to refine your response:
◦ Elaborate

Typed response

◦ Shorten
Generates an email response as a recom­
mendation that is based on the context of the
email up to this point.

Left blank

4. Update the selected text with refined text by selecting Replace.
5. Review the generated email response and select Refine to modify the response, or select
Insert to paste the response into the chat message window.
6. Select Send email or discard the draft if you don’t like the recommendation.

Generate a Major Incident email content recommendation by using Now
Assist for IT Service Management (ITSM)
Create a draft version of an email to communicate with stakeholders on a major incident
using an email template. You can complete field values in the template using an AI-generated
response. Use different GenAI variables in the template types for efficient communication with
the requesters.

Before you begin

Note: An admin must activate the Incident Management - Major Incident Management
plugin (com.snc.incident.mim) installed to enable the Major Incident Management email
content recommendation skill. For more information on activating the plugin, see Activate
Incident Management - Major Incident Management.
Role required: major_incident_manager

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Using the List icon (

), open a major incident.

3. Select the Communicate tab.
4. Select Compose in any task where the channel is email.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2701


<!-- page 2702 -->
Note: The default template defined for the selected task displays in the Email template
field. You can choose any template and any type of communication plan within the
template for your communication.
The following four types of communication plans are available by default:
◦ Ad hoc AI
◦ Business user AI
◦ End user AI
◦ Technical AI
For more information, see these KB articles:
◦ Email templates and Gen AI variables
◦ Persona as an input for Gen AI email templates
5. Compose and send the email.
a. In the To field, enter one or more email addresses of the users you have to communicate
with.
b. In the Subject field, enter a short reason for the communication.
c. In the body of the email, enter the message you want to communicate.
d. Select Send.

Ask questions about an incident by using the Now Assist panel
Quickly obtain common incident related information conversationally within the incident record
by asking questions in the Now Assist panel.

Before you begin
Role required: itil

About this task

Incident assist topics in the Now Assist panel include:
• Caller's assets
◦ A caller must be associated with the incident to retrieve caller's assets.
◦ Incident number must be provided, unless triggered from the incident record.
• Caller's recent incidents (within the past 7 days)
◦ A caller must be associated with the incident to retrieve caller's recent incidents.
◦ Incident number must be provided, unless triggered from the incident record.
• On-call experts from support groups
◦ Ability to search on-call experts that are in any support group.
◦ Group members are configured in On-Call Scheduling > On-Call Schedules.
• Similar resolved incidents
◦ Similar incidents must be resolved or closed.
◦ Incident number must be provided, unless triggered from the incident record.
You can ask questions about an incident by using the Now Assist panel in Core UI and Service
Operations Workspace for ITSM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2702


<!-- page 2703 -->
Procedure
1. In Core UI or Service Operations Workspace for ITSM, open an incident that is assigned to you.
2. From the header menu, select the Now Assist icon

to open the Now Assist panel.

3. In the Now Assist panel, either type in a question related to an incident assist topic, or select
Answer questions about an incident and select an incident assist topic to ask about.

Note: Incident assist uses the Similar Resolved Incidents search profile with the
incident index source. For information on indexed sources, see Managing indexed
sources from the AI Search Admin console .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2703


<!-- page 2704 -->
Information requested about the incident is shown.

Request the generative AI capabilities in ITSM by using the Now Assist panel
Use the Now Assist panel to request the contextual generative AI capabilities in IT Service
Management (ITSM) such as a chat summary, incident summary, or incident resolution notes in a
conversational manner. You can also add comments and work notes. These capabilities provide
you with a quick resolution to issues.

Before you begin

Make sure that Next Experience is enabled in the instance. For information about enabling Next
Experience, see Considerations for activating Next Experience . For information about Next
Experience, see Next Experience UI .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2704


<!-- page 2705 -->
Role required: itil

About this task

You can access the Now Assist panel from the Core UI or Service Operations Workspace for
ITSM to request generative AI capabilities for Now Assist for ITSM skills. For information about
these skills, see Skill inputs and triggers for Now Assist for IT Service Management (ITSM).
Using the Now Assist panel saves time for an agent; for example, the agent can quickly learn the
details of an incident by reading the incident summarization. The summarization gives enough
details about the associated interaction so that the requester doesn't have to repeat the same
information to the agent. For information about the Now Assist panel, see Now Assist panel .
For information about how to activate the Now Assist panel, see Turn on the Now Assist panel

.

Procedure
1. Log in to an instance where Now Assist for IT Service Management (ITSM) is installed.
2. Request generative AI capabilities to summarize a chat for an interaction, summarize a chat for
an incident that was created from an interaction, summarize an incident, or generate incident
resolution notes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2705


<!-- page 2706 -->
Now Assist panel for ITSM skills

Option

Description

a. Open the interaction.
b. From the header menu, select the Now As­
Summarize the chat for an interaction

sist icon (

).

c. In the Now Assist panel, select Chat Sum­
marization. A summary of the chat conver­
sation with the live agent is displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2706


<!-- page 2707 -->
Option

Description

a. Open the incident that was created from an
interaction.
Summarize the chat for an incident that is
created from an interaction

b. From the header menu, select the Now As­
sist icon (

).

c. In the Now Assist panel, select Chat Sum­
marization. A summary of the chat conver­
sation with the live agent before the inci­
dent was created is displayed.
a. Open the discussion.
b. From the header menu, select the Now As­

Summarize a Sidebar discussion

sist icon (

).

c. In the Now Assist panel, select Sidebar Dis­
cussion Summarization. A summary of the
discussion with the live agent is displayed.
a. Open the incident.
b. From the header menu, select the Now As­
Summarize an incident

sist icon (

).

c. In the Now Assist panel, select Summarize
a record. An incident summary that helps
you quickly understand the incident con­
text is generated.
a. Open the change request.
b. From the header menu, select the Now As­

Summarize a change request

sist icon (

).

c. In the Now Assist panel, select Summarize
a change request. A change request sum­
mary that helps you quickly understand the
change request context is generated.
a. Open the change request.
b. From the header menu, select the Now As­
sist icon (

Change risk explanation

).

c. In the Now Assist panel, select Explain
change risk. An explanation of the change
request risk that helps you quickly under­
stand the change request risk rating is gen­
erated.
a. Open the incident.

Generate incident resolution notes

b. From the header menu, select the Now As­
sist icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2707


<!-- page 2708 -->
Option

Description

c. In the Now Assist panel, select Generate
resolution notes. The incident resolution
notes that provide a summary of the steps
taken to resolve the issue are generated.
a. Open the incident.
b. From the header menu, select the Now As­
Generate a knowledge article

sist icon (

).

c. In the Now Assist panel, select Generate Ar­
ticle. A Knowledge article is drafted for the
incident using task data, comments, and
work notes from the activity stream.
a. Open the chat message window.
b. From the header menu, select the Now As­

Generate chat reply recommendation

sist icon (

).

c. In the Now Assist panel, select Generate
Chat Reply Recommendation. The reply
that provides a recommendation for the is­
sue in the chat is generated.
a. Open the incident.
b. From the header menu, select the Now As­
sist icon (

Ask questions about an incident

Use AI agents to complete tasks

).

c. In the Now Assist panel, either type in an
incident assist topic question, or select An­
swer questions about an incident, and se­
lect an incident assist topic. Information re­
quested about the incident is shown.
a. Get notified when an AI agent completes
work on a use case.
b. Follow the on-screen instructions to com­
plete the task.
a. In the Now Assist panel, enter a phrase re­
lated to a comment or work note.
The conversational flow for adding a com­
ment or work note is triggered.

Add comments or work notes to a task
record

b. Follow the on-screen instructions to com­
plete the task.

Note: You must have the itil role to add
work notes.
For more information, see Conversational ac­
.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2708


<!-- page 2709 -->
Use self-service to deflect incidents in a ServiceNow portal using Now Assist
Designed to reduce the number of incidents to be resolved by deflecting issues with self-service.

Before you begin

Role required: none

Procedure
1. Navigate to a ServiceNow portal.
2. Select the Create Incident with the Now Assist record producer.
3. In the Please describe your issue below field, enter the issue
you'd like to resolve and click outside of the field to generate the

results.
Now Assist AI generates the results based on available knowledge articles and catalog items.
4. Resolve the issue or track it with an incident.
To

Do this

a. Select Proceed with incident creation.
Track the issue with an incident

Additional fields such as Urgency are
added to the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2709


<!-- page 2710 -->
To

Do this

b. In the Urgency field, select the level of im­
portance to address the issue.
You can also select the Add attachments
icon and add files related to the issue.
c. Select Submit.
The incident is created and automatically
assigned to you. If you aren’t ready to cre­
ate the incident, select Save as Draft to sub­
mit it later.
Resolve the issue

Select Solution found and use the AI-generat­
ed solution to resolve the issue.

Analyze sentiments in Now Assist for IT Service Management (ITSM)
Make informed decisions on incidents based on requester's sentiment and the reasoning
behind it in the Now Assist for IT Service Management (ITSM) application.

Before you begin
Role required: itil

Procedure
1. Navigate to the incident list or incident form in the Core UI or in Service Operations Workspace
for ITSM.
To

Do this

a. Go to All > Incident > All.
The incident list view ap­

Navigate in Core UI
pears.
You can analyze the Sentiment and Senti­
ment trend for the incident list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2710


<!-- page 2711 -->
To

Do this

b. Select an incident.
The incident form view appears.
c. In the Sentiment field, select the informa­
tion icon (
sentiment.

) to see the reasons for the

Note: If the Sentiment field does not
appear, you must configure the form
layout. For more information, see Con­
and add the
Sentiment field.
a. Go to Workspaces > Service Operations
Workspace.
b. Select the list icon (

).

c. Go to Incidents > Open.
The Service Operations Work­
space for ITSM list view ap­
Navigate in Service Operations Workspace
for ITSM
pears.
d. Select an incident.
The Service Operations Workspace for
ITSM form view appears.
e. Select the information icon (
reasons for the sentiment.

) to see the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2711


<!-- page 2712 -->
To

Do this

Note: If the Sentiment field does not
appear, you must configure the form
layout. For more information, see Con­
and add the
Sentiment field.

2. Optional: In the Core UI or in Service Operations Workspace for ITSM list view, you can sort
the incidents based on the sentiment and the sentiment trend.
3. Optional: Manually refresh a sentiment.
a. In the Core UI or in Service Operations Workspace for ITSM, enter a comment in the
Additional Comments field.
b. In the Service Operations Workspace for ITSM interface, a red dot appears on the
information icon (

) next to the sentiment.

c. Select the information icon ( ) and then select the refresh icon (
sentiment and sentiment trend.

) to see the updated

Suggested steps generation in Now Assist for IT Service Management (ITSM)
Generate suggested steps automatically by analyzing clusters of closed incidents with similar
incident resolution in the Now Assist for IT Service Management (ITSM) application.

Before you begin
Role required: itil

About this task

Data from the short description field and the filter conditions set in the incident input table are
used to generate the clusters based on similar past resolved incidents.

Note: Out-of-the-box (OOTB) suggested steps are configured to work with itil roles. With
Named Access Accounts (NAA), you can restrict access to this skill for a different role.
However, itil is still required because the Group-Action framework skills used by Suggested
Steps enables to access the incidents. For most scenarios, changing the ACL role on Now
Assist Admin is sufficient. However, you can also restrict individual skills to specific roles.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Using the List icon (

), open an incident that is not in Closed or Complete state.

).
3. Select the Recommendations icon (
The Recommended actions tab displays.
4. In the Suggested steps by Now Assist card, select Generate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2712


<!-- page 2713 -->
The steps to resolve the incident appear in the Recommendations window in the incident
record. This action may take a few minutes.

Generate a response in the activity stream
Automatically generate a response in an incident record activity stream using the Incident
activity response generation skill. Add them to the work notes or comments to enhance the
quality of your interactions with the user.

Before you begin

These skills are inactive by default. Your administrator must enable the skills that you want to use.
Role required: itil

Procedure
1. Navigate to an incident record in the SOW or Core UI where you want to generate work notes or
comments using Now Assist.
2. Do the following in the Work notes or Comments field:
a. Select the Now Assist icon (

).

The following four options appear:

Note: The options are displayed based on the configurations by your admin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2713


<!-- page 2714 -->
Options

Description

Acknowledge task

Acknowledge the receipt of the task record.

Post response

Generate a reply for specific questions from the
user.

Summarize actions taken

Generate a summary of all actions taken.

Follow up

Ask follow-up questions.

b. Select one of the options based on the type of response that you want Now Assist to
generate.
The response appears in the Now Assist context menu (NACM).
c. You can select the Refine menu and elaborate, shorten, or change the tone of the response.
3. Select Insert.

Generate release notes for a release
Generate structured release notes for a release using AI-driven summarization, reducing manual
effort and improving clarity for stakeholders. The release notes are generated from the release
scope.

Before you begin
Required applications and plugins:
• Digital Product Release version 2.3 or later.
For more information, see Digital Product Release.
• Now Assist for ITSM plugin (sn_itsm_gen_ai) version 12.0.0 or later.
For more information, see Now Assist for IT Service Management (ITSM).
Configuration:
• The Generate Release Notes skill must be active.
For more information about activating a Now Assist skill for ITSM, see Configure
Now Assist for IT Service Management (ITSM).
• The release phase set as the release readiness must be in progress or
completed.
Role required: sn_dpr_model.product_manager

About this task

The release notes are generated using the release scope data for the release:
• Product enhancements and work items
• Incidents
• Problems
• Requests

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2714


<!-- page 2715 -->
Procedure
1. Navigate to Workspaces > Digital Product Release Workspace.
2. Select the releases icon (

).

3. Select a release from the list to open.
4. Select the Release notes section to manage release notes.
5. Select Generate to create the release notes using AI-driven summarization.
Depending on the number of items in the release scope, this process might take some
time. You can choose to close this section and proceed with other work as needed.
After the release notes are generated and ready for review, you receive an email

notification.
The release notes are generated and

displayed.
6. Review the AI-generated release notes for accuracy and make changes, if necessary.
7. To save the release notes, select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2715


