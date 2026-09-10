# Zurich Customer Service Management — Implement Intelligence

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 989–1138 of 2452 | Part 1 of 2

Sections: Implement Intelligence (p989); Set up self-service (p1182)

---

<!-- page 989 -->
7. Unlock the URL field.
8. In the URL field, enter a third-party URL.
CaaS providers have specific configuration requirements for their plugins. Refer to the relevant
contact center documentation for setup instructions.
9. Select Update.

Implement Intelligence
Integrate intelligence features to automate routine tasks and provide relevant content, enabling a
quicker, more personalized customer experience.

Recommended Actions

Machine learning

Set up recommended
actions and field
recommendations to help
agents resolve cases
effectively and efficiently.

Utilize machine learning
solutions to analyze
and classify cases
and automate tasks.

Now Assist for
Customer Service
Management (CSM)

Use Now Assist for
CSM to enhance user
productivity and efficiency
through conversation and
proactive experiences
using generative AI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

989


<!-- page 990 -->
Implement intelligence overview

Recommended Actions
Set up recommended actions and field recommendations to resolve cases more
effectively. The Recommended Actions application displays relevant actions based
on the context of a record and enables you to perform AI-driven searches for
pertinent resources. This functionality helps you quickly access and act on the most
relevant information, enhancing your efficiency in addressing customer issues.
Machine learning
Use machine learning solutions in Customer Service Management to handle case
creation, assignment, and resolution. Implement these solutions to analyze and
classify cases, automate tasks, and streamline processes.
Now Assist for Customer Service Management
Use the Now Assist for Customer Service Management (CSM) to boost productivity
and efficiency with generative AI. This tool enhances user interactions by
summarizing case information, generating resolution notes, and providing chat
summaries. It also helps you quickly understand chat and case context, enabling
faster and more accurate customer resolutions.

Configuring Recommended Actions
Use the Recommended Actions application to display relevant actions to agents based on a
context of a record or enable agents to perform an AI search to find relevant resources. Agents
can quickly and easily take action to help customers and resolve their issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

990


<!-- page 991 -->
Recommended Actions in CSM Configurable Workspace

With Recommended Actions:
• Provide agents with optimal action in a context of a record.
• Enable agents to focus their attention to the critical call-to-action.
• Allow agents to take an action in a contextual side panel or in a subtab.
• Enable agents to troubleshoot and provide a resolution to customers.
• Rank actions that agents can take based on a configurable logic.
• Recommend a value for a field on a form.
• Enable agents to use AI search to find the most relevant resources.

Example scenarios for implementing Recommended Actions
Use Recommended Actions to provide the following recommendations:
• Apply resolution from a solved case: Recommend agents to apply resolution from a similar
solved case and then close the case.
• Reassign case: Recommend a field value for the Assignment group field so that the case is
assigned to the relevant team.
• View and attach article: Recommend a Knowledge article relevant to the customer issue so
that agents can view and attach the article to the current case.
• Review a refund request. Recommend a decision tree for agents to work through to determine
if the customer is eligible for a refund.
For end-to-end configurations of recommended actions for specific scenarios, see Example
configurations of recommended actions.

Action types for Recommended Actions
With the Recommended Actions application, you can create the following types of actions for
agents to take. For more information, see Recommended Actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

991


<!-- page 992 -->
Action type

Guidance

Description

An action that an agent can take or information they can share.
For example, guidance can recommend that an agent can
attach a knowledge article in comment, work note, or mail of a
case or create a work order.

Guided decision tree

A guided flow to follow. A decision tree is a multi-step process
that includes a series of questions and answers and results in
guidance.

Field recommendation

A recommended value to use for a field. For example, this type
of action can recommend the assignment group based on the
text in the case short description.

AI search
Agents can enter their queries in the search bar to access AI-powered search results. The
most relevant answers for the search query appear as genius result cards. Agents can take the
actions from the search cards directly to resolve an issue. For more information, see AI search in
Recommended Actions.
Benefits of AI search integration with Recommended Actions
• Unified search and recommendations: This integration combines AI-driven search
capabilities with proactive recommendations, providing a unified toolset for
agents.
• Contextual intelligence: The system leverages contextual data to deliver highly
relevant search results and recommendations tailored to each case.
• Proactive recommendations: Agents receive actionable suggestions to accelerate
case resolution, based on real-time case context.
• Seamless workflow: The integration streamlines the user workflow by providing
access to search and recommendations within a single interface.

Using recommended actions
Agents can access recommended actions in a workspace such as CSM Configurable Workspace
by selecting the Recommended Actions icon (
) in the contextual side panel. For more
information, see Using the Recommended Actions application.

Setting up recommended actions
Set up the Recommended Actions application so that you can create actions of type guidance or
field recommendation. An admin can complete the following setup tasks.
Steps to set up the Recommended Actions application
Setup task

Description

Install the Recommended Actions application

Download the Recommended Actions
®
application from the ServiceNow Store.

Assign roles to Recommended Actions users

Assign roles to your users to control access
to Recommended Actions features and
information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

992


<!-- page 993 -->
Steps to set up the Recommended Actions application (continued)
Setup task

Description

Configuring the Recommended Actions
application

Configure recommended actions to create
a context, rule, and recommendations with
action types such as guidance and field
recommendation.

Note: The Guided Decisions
application (sn_gd_core) is required to
create guided decision trees.

Note: To ensure Recommended Actions loads automatically and performs optimally,

enable the Enable prefetch check box and verify that the Get recommendations data
broker exists under Data Resources. This enhancement applies only to the Front-line Case
page and CSM default record page and requires Recommended Actions to be enabled
on the page. If you have any custom variants created before this enhancement, you must
manually enable these settings.

Note: If Recommended Actions doesn't appear on a variant of a record page (such as the
CSM default record page, CSM Interaction record page, or Front-line case page), ensure
that the variant is marked active. For detailed steps, see Restore Recommended Actions on
record page variants after upgrade.

Integrating decision trees in recommended actions
Optionally, set up the Guided Decisions Experience application so that you can create decision
trees and then integrate them in recommended actions. Admins can complete the following
setup tasks.
Steps to integrate decision trees in recommended actions
Setup task

Description

Install the Guided Decisions Experience
application

Install the Guided Decisions Experience
®
application from the ServiceNow Store. This
application enables you to configure decision
trees that you can use as recommendations.

Configuring decision trees

Configure decision trees that agents can use
to troubleshoot solutions for customer issues.

Add Guided Decisions to Recommended
Actions

Add decision trees to recommended actions,
so that agents can take relevant action during
troubleshooting based on a record context.

Request apps from the ServiceNow Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Recommended Actions
Use Recommended Actions to display relevant actions to agents based on a context of a record
or recommend a value for a field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

993


<!-- page 994 -->
Action types in Recommended Actions
Action type

Guidance

Description

Use cases

A guidance is an action that an agent
can take or information that an agent
can share.

• Mary created a case to report
an issue with a router. The
agent assigned to this case
is recommended to apply a
resolution from a solved case
to resolve the customer issue.
The resolution notes and a
resolution code from the solved
case are copied into the Closure
Information section of the
current case.

• Guidances appear as cards in the
contextual side panel in a workspace.
• Agents can access these cards by
selecting the Recommended Actions
icon in the side panel.
• Agents can perform the action by
selecting the button on the card.

Field
A field recommendation is a value that
recommendation is recommended for a field.
Depending on the configuration,
the recommended field values are
auto-filled or shown as messages
underneath the fields for the new
records. The recommended field
values are shown as messages only
underneath the fields for the existing
records.
• You can configure the fields with the
text and values that appear in the
messages.
• You can also configure a confidence
threshold to auto-fill a recommended
value.

• Paul, who has an account with
StellarVest bank created a case
to report a loss of credit card.
The agent assigned to this case
is recommended to create a
work order to dispatch a new
credit card for Paul.

• An agent wants to reassign
the case to a different team
who is better equipped to
resolve a customer issue. A
field recommendation can
recommend the assignment
group based on the text in the
case short description.
• While interacting with a
customer, an agent creates a
case on behalf of the customer.
Based on the short description
the agent enters in the case
form, the values for the
fields Product, Assignment
group, and Assigned to are
recommended to the agent.

• You can configure a preference to
auto-fill a recommended value.
Decision tree

A decision tree is a guided flow for
agents to follow. A decision tree is a
multi-step process that asks a series of
questions. Based on the answers that
an agent enters, a guidance is provided.

Rina created a case to report
that their phone isn’t charging.
The agent assigned to the
case is recommended to use a
decision tree that asks a series
of questions to troubleshoot the
issue with the phone and provides
a guidance in the end.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

994


<!-- page 995 -->
Action type

Description

Use cases

Note: The Guided Decisions
application (sn_gd_core) is
required to create decision trees.
Actions of the type Guidance and Guided Decision Tree are displayed as cards within the
contextual side panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

995


<!-- page 996 -->
Recommended actions - guidance card

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

996


<!-- page 997 -->
Actions of the type Field Recommendation are auto-filled in the fields or appear as messages
under the fields on a record form. Agents can follow the recommendations and select these field
values.
Field recommendation messages in the Incident form

For more information, see Creating guidance and field recommendation in Recommended
Actions.

Elements for configuring recommended actions
Configuring a recommended action is a multi-step process that involves:
Context
A context enables agents to see recommended actions for a record in that table
when certain rules are met. For more information, see Contexts in Recommended
Actions.
Context input
A context input enables you to utilize the entities other than the context table to
define rules, recommendations, and resource generators so that recommendations
are updated dynamically as the context changes. For more information, see Context
inputs in Recommended Actions.
Rule
A rule is a set of conditions that applies to a context and determines when a
recommended action appears for records in the context table. For more information,
see Rules in Recommended Actions.
Recommendation
A recommendation is a way to suggest an action to an agent. You can create
recommendations with action types of guidance and field recommendation. For
more information, see Recommendations in Recommended Actions.
Resource generators
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

997


<!-- page 998 -->
Resource generators provide helpful information for guidance and field
recommendations. The resource generators use decision table, flow, scripts,
Predictive Intelligence framework, or AI search capabilities to generate resources.
For example, a resource generator can provide a knowledge article link that can
then be used as a recommended action for a case. For more information, see
Resource generators in Recommended Actions.
Arbitration parameters
Arbitration parameters determine the frequency of issues or the priority order of the
recommended actions so that agents get the guidance that they must help resolve
customer issues.
Contexts in Recommended Actions
A context enables agents to see recommendations for records from a table when certain rules
are met. These recommendations can help agents by suggesting actions to take based on the
record context.
Contexts are created for tables, such as the Case [sn_customerservice_case] table or the
Incident [incident] table. Creating a context includes the following steps:
• Selecting a table.
• Creating Context inputs. A context input enables you to utilize the entities other than the
context table to define rules, recommendations, and resource generators.

Note: Creating context inputs is not mandatory.
• Creating rules for the context. A rule shows recommendations to agents with certain roles for
records that meet certain conditions.
• Creating recommendations for the rules. A recommendation is a way to suggest a helpful
action to an agent.
The Recommended Actions application includes a context record, Case Context, that you can
use to create recommendations for cases.
The Recommended Actions application supports multiple context records per table, enabling
users to create different experiences based on criteria such as user attributes or domains.
The Recommended Actions component can be configured in UI Builder to use the active
context record. The recommendations and AI Search results adjust dynamically according to the
configured active context.

Context form
You can access context records by navigating to All > Recommended Actions > Contexts. The
Contexts list displays a brief description of each context and the table that the context applies to.
The Context form includes the name and description of the context, the selected table, parent
context, and a search application configuration for AI search. When you create a context, provide
this information and save the record. After saving, the Context form displays the following related
lists.
• Rules: Displays the rules that have been created for the context, including the selected user
roles. You can create a rule only from the Rules related list on the Context form. For more
information on rules, see Rules in Recommended Actions.
• Recommendations: Displays the recommendations associated with the context rules,
including the action type and action. You can create a recommendation only from the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

998


<!-- page 999 -->
Recommendation related list on the Rule form. For more information on the recommendations,
see Recommendations in Recommended Actions.
• Search result mapping: Displays mappings between AI search outputs and Recommended
Actions inputs.
• Inherited rules: Displays the rules inherited from the parent context. The Inherited rules
related list appears only for the contexts that have the parent context assigned. For more
information on how the parent context rules are inherited by the child context, see Apply rules
to tables extended from the context table.
• Extended contexts: Displays all the contexts which use the current context as a parent
context. This related list appears only for the parent contexts.
• Context Inputs: Displays all the context inputs which can be used in defining rules,
recommendations, and resource generators. This related list appears only when a parent
context is not defined.
The Contexts list includes an Active column. You can use this column to view and set the Active
value for a context record. The Context form includes an Active field that you can use to activate
or deactivate a context record.

Refresh interval field
The Refresh interval field on the Context form determines how frequently recommendations are
refreshed for the context. The default value for this field is 12 hours and the minimum value is 10
minutes.

Note: You must configure the form view to display the Refresh interval field.
Synchronous and asynchronous modes of evaluation for Recommended Actions
As an admin, you can configure the loading behavior at the context level for Recommended
Actions, by choosing between synchronous and asynchronous modes. In synchronous mode,
recommendations are loaded before the page becomes interactive, ensuring a complete view
is available before any action is taken. In asynchronous mode, recommendations load in the
background without blocking the user interface, allowing agents to start interacting with the
record immediately. Each mode is tailored to meet different performance and user experience
requirements.
The Asynchronous Evaluation check box in the Context form, when selected enables
the agents to make updates and perform actions on the case or incident record while the
recommendations load on the contextual side panel. By selecting this field, an admin or RA
author can enable asynchronous processing for recommended actions.
The sn_nb_action.async_ra_timeout system property specifies the timeout duration
(in seconds) for an asynchronous process to generate the recommendations. This value serves
as a guideline for managing execution time and preventing excessive delays. The default
value is set to 30 seconds, and the maximum value can be 180 seconds. If the generation of
recommended actions takes more than 30 seconds, the Retry button on the contextual side
panel appears. The retry process starts in synchronous mode - it runs directly during user
interaction instead of processing asynchronously.

Inheriting the rules and recommendations from hierarchical contexts
The Parent context field appears only when the table selected in the Table field has one or more
parent tables for which context is defined. Using the Parent context field, you can import it's
active rules and recommendations into the extended context. When you click the search icon
in Parent context field, the list of contexts of parent tables is displayed. You can select any one
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

999


<!-- page 1000 -->
parent context from the list. The rules that are inherited appear in the Inherited Rules related list.
For more information on how to configure rules so that the recommendations are inherited by the
extended context, see Apply rules to tables extended from the context table.

Note:
• If you configure context inputs for a context, you cannot add a parent context. To add a
parent context, you must delete the already existing context inputs.
• When a parent context is defined, the Context inputs related list does not appear.
For more information on how context inputs limit the inheritance of the parent context's rules and
recommendations, see Context Input configuration limitations.

Example: Inheriting the rules and recommendations from hierarchical contexts
Consider the following tables and their contexts, rules, and recommendations. Table 1 is the
parent table for Table 2 and Table 3. Table 3 is the parent table for Table 4. Table 2 is the parent
table for Table 5.
Tables and their contexts
Table

Context

Rule

Recommendation

Table 1

Context 1 (Active)

Rule 1 (Active)

Recommendation 1

Table 2

Context 2 (Inactive)

Rule 2 (Inactive)

Recommendation 2A
and Recommendation
2B

Table 3

Context 3 (Active)

Rule 3 (Active)

Recommendation 3

Table 4

Context 4 (Active)

Rule 4 (Active)

Recommendation 4

Table 5

Context 5 (Active)

Rule 5 (Active)

Recommendation 5

In the Context form:
• Scenario 1: When you add Context 3 in the Parent context field of Context 4, the Rule 3 and
Recommendation 3 are inherited by Context 4.
• Scenario 2: When you add Context 2 in the Parent context field of Context 5, the Rule 2 and its
recommendation 2A and 2B aren’t inherited by Context 5 as the Rule 2 is inactive.

Creating multiple context records for the same table
Starting with v14.0 of Recommended Actions, the Avoid duplicate active entry
for context business rule allows the creation of more than one context per table. You
can create more than one context for the same table. This enables you to configure precise
recommendations for various types of records in the same table.
The following are use cases where you can create different contexts for the same table:
Use case 1: Different roles may interact with the same table but need tailored actions or
views.
Consider the Interaction table. The same interaction data can be worked upon
differently based on the user persona.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1000


<!-- page 1001 -->
• Context A: Show field recommendations for resolution, or related change tasks/
catalog items, or standard knowledge articles for the IT Support Agent on the
Interaction record page.
• Context B: Surface similar resolved case or relevant knowledge article
recommendations for the Customer Service Support Agent on the Interaction
record page.
Use case 2: Each context may use a different Predictive Intelligence model or AI model
variant for recommendations.
Enables testing and adoption of ML models in parallel without conflict.
• Context A: Use similarity model for Recommended Actions.
• Context B: Use classification model for categorization or assignment.
Use case 3: Users may access the same record through different channels—chat, email,
voice, etc., requiring tailored recommendations.
Entry points provide different signals and user intent.
• Context A: When the case is created via Chat Agent, recommend and share the
KB article in chat action.
• Context B: When the case is accessed via Phone Support, surface KB articles and
enable sharing via SMS channel.

Configuring a context record for the Recommended Actions component
When configuring the Recommended Actions component in UI Builder, users with the
Recommended Actions admin role (next_best_action_admin) can set a component input
property to map the active context record to the component.
On the Config tab for the Recommended Actions component, enter the sys id of the active
context record in the Context Sys id field. For more information about configuring UI Builder
components, see Components documentation .

Note: If the Context Sys id field is empty, the system uses the latest context record for that
entity to map to the Recommended Actions component.

Case Context record
The Recommended Actions for Customer Service application adds the Case Context record
for the Case table [sn_customerservice_case]. This record is active by default (Active=true).
For more information on the Case Context record, see Contexts in Recommended Actions for
Customer Service.
If an upgrade customer has one or more context records for the Case table available on their
instance, the system runs a fix script that deactivates the out-of-box Case Context record (sets
the Active field to false).

Note: Ensure that the correct context record for the Case table is active.
Related topics
Create a context in Recommended Actions
Create a rule in Recommended Actions
Create a recommendation in Recommended Actions
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1001


<!-- page 1002 -->
Rules in Recommended Actions
A rule is a set of conditions that applies to a context. A rule shows recommendations to agents
with certain roles for records that meet certain conditions.
Creating a rule includes the following steps:
• Selecting the user roles that can see the recommendations associated with the rule.
• Defining the conditions that apply to the context records and context inputs.
• Creating recommendations for the rule. A recommendation is a way to suggest a helpful action
to an agent. A rule can have multiple recommendations.
The Recommended Actions application includes one context record, case context, that you
can use to create recommendations for cases. For example, following are some guidance
recommendations:
• Case field level recommendations: This rule includes one recommendation to predict a value
for the Assignment group field on the Case form.
• Case side panel recommendations: This rule includes recommendations to view and attach a
knowledge article to a case and to attach and add a link to a knowledge article in a comment,
work note, or email.

Apply rules to tables extended from the context table
The rule created in the parent context are inherited by the extended context when you select
the Apply to tables extended from the context table check box in a rule. The rules inherited from
the parent context appear in the Inherited Rules related list of the extended context. Therefore,
the recommendations of these rules are passed on to the extended context. Along with the
recommendations of the context table, the recommendations of the active rules from the parent
context are inherited by the extended context.

Rule form
The Rule form provides information about the rule, including a description, the selected user
roles, and conditions that apply to the table in the associated context.
When you create a rule, provide this information and save the record. After saving, you can see
the Recommendations related list.
You can access the rule records by navigating to All > Recommended Actions > Rules. New rules
can only be created from within a context. For more information, see Create a rule.
Rule form fields
Field

Description

Name

The name of the rule.

Context

The context that this rule is associated with.
This field is auto-populated from the Context
form.

Roles

The user roles that can see recommendations
for this rule.

Description

A brief description of the rule.

Advanced Condition

The conditions that apply to the records from
the context table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1002


<!-- page 1003 -->
Rule form fields (continued)
Field

Description

If a context input is available for the context,
you can build conditions on it along with the
context table.
Fields affecting this rule

Fields from the context table that need to be
monitored. Changes to these fields generate
recommended actions of the type field
recommendation for unsaved records.

Active

When enabled, the rule is active.

Apply to tables extended from the context
table

When enabled, the rule is applied to tables
that are extended from the context table.

Order

Determines the order in which the rule is
applied.

Related topics
Create a rule in Recommended Actions
Recommendations in Recommended Actions
A recommendation is a way to suggest a helpful action to an agent. A recommendation includes
the action and any relevant resources and inputs.
There are three types of recommendations that are provided to agents:
• Guidance: An action that an agent can take or information that they can share.
• Decision tree: A guided flow to troubleshoot an issue and provide a solution.
• Field recommendation: A recommended value to use for a field.

Creating a recommendation
When you create a recommendation, you can select the type from the New Recommendation
screen. This screen lists the available types.

Selecting a type on the New Recommendation screen takes you to the Recommendation form.
The selected type is added to the Action type field on the Recommendation form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1003


<!-- page 1004 -->
Recommendation form
The Recommendation form provides information about a recommendation, including the
selected action and any inputs and resource generators that the action requires.
When you create a recommendation, you select an action type and an action. The next steps
depend on the action type that you select. For example, guidances and field recommendations
require action inputs while decision trees don’t.
When you create a recommendation, provide this information and save the record. After saving,
you can see the Action inputs form section. Inputs are parameters that go into an action and
enable agents to complete that action. You can select relevant inputs manually, from the context
record, context inputs, or from the resource generator.
You can access the recommendation records by navigating to All > Recommended Actions
> Recommendations. New recommendations can be created only inside the rules. For more
information, see Create a recommendation.
Recommendation form fields
Field

Description

Rule

The name of the rule for the context. This field is read-only.

Context

The name of the context that the Rule belongs to. This field is
read-only.

Name

The name of the recommendation.

Action type

The type of recommendation:
• Guidance
• Decision tree
• Field recommendation
This field is automatically filled with the selection from the New
Recommendation screen.

Action

The action to select for the recommendation. The available
actions are determined by the selection in the Action type
field.
You can also create an action for the selected action type of
guidance, decision tree, or field recommendation.

Resource generator

The resource generator to select from the Resource generators
list. You can also create a resource generator.
Guidances and field recommendations can use resource
generators to find relevant resources for the action inputs.
If you change the value in the Resource generator field, you
must save the recommendation to use the resource generator.

Recommendation hint

Text that tells the agent why a recommendation is being
suggested. Hints apply to action types of guidance and
decision tree.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1004


<!-- page 1005 -->
Recommendation form fields (continued)
Field

Description

The hint appears at the top of the action cards in the
Recommended Actions side panel.
Order

The order of the recommendations inside the rule.

Active

When enabled, the recommendation is active.

Action inputs

Action types and actions require inputs. These inputs are the
parameters that enable agents to complete an action. You
can choose static values for action inputs, or you can use a
resource generator to supply values.
If a context input is available for the context, it appears in the
pill picker of the fields in Action inputs section.

Group

Group created by a defined grouping strategy that displays
relevant recommendations together.

Note: You might need to configure the

Recommendation form to display the Group field. This
field is available by default for Workforce Optimization for
ITSM users.

Note: The Action type, Action, and Recommendation hint fields aren’t shown for the

AI search resource generator. You can configure the Action type and Action fields, and
mapping between AI search outputs and guidance actions inputs in the Search result
mapping related list.
Context inputs in Recommended Actions
A context input enables you to associate entities beyond just the context table with a context
ensuring that recommendations are updated dynamically as the context evolves.
You can create a context input from the Context inputs related list in the Context form. These
dynamic JSON-based context inputs enable you to include real-time updates such as user
selections, additional table records, and so on, to refine recommendations and support multiple
active contexts. This enhances recommendation relevance and operational efficiency. For
example, you can create a context input for the Incident table and use in the Case context
record.

Note: You can create multiple active context inputs for a context.
The following data types are supported for a context input:
• String
• List
• Integer
• Long
• Choice
• True- false
• Reference
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1005


<!-- page 1006 -->
• Reference dot walked
• Sys id

Configuring a context using a context input
Configuring a context using context inputs includes the following steps:
• Creating a context input. For more information on how to create a context input, see Create a
context input in Recommended Actions.

Note:
◦ If a context has a parent context defined, you can’t create context inputs for it.
◦ You can have multiple active context inputs simultaneously.
• Mapping the context input to the following according to your requirement:
◦ default search term by adding it in the Contextual AI Search Config section on Context form.
◦ rules by using it in the condition builder on Rules form.
◦ recommendations by adding it in fields of the Action inputs section on Recommendations
form.
◦ resource generators by adding it in the fields of Generator inputs section on Resource
Generators form.
• Adding the JSON-format of the context inputs to the Recommended Actions component
for the required record pages in the UI Builder. For more information, see Configuring
Recommended Actions UIB component for context inputs.
The context inputs appear along with the context table in the appropriate fields of Rule,
Recommendation and Resource generator forms so that you can include the data other than that
of the context table to update the recommendations.

Configuring Recommended Actions UIB component for context inputs
As an RA author or admin, you must add the JSON-format of the context inputs in the Context
input field of Recommended Actions UIB component to pass the values. You can get the JSONformat of the context input by selecting the Copy input JSON button on the Context input related
list in the Context form. The JSON-format includes all the active context inputs. When a context
input is deleted or deactivated after configuring the Recommended Actions UIB component, an
empty value is passed for these context inputs in UIB from the upcoming iterations.

Context Input configuration limitations
The limitations for context inputs configuration are as follows:
• You can either define a parent context or configure context inputs for a context.
• When context inputs are defined for a parent content, then it's rules and recommendations
cannot be inherited by its child contexts. In other words, the parent context does not appear in
the Parent context field of the Child context.
• To define context inputs for a context which has a parent context defined already, delete the
parent context in the Parent context field so that the Context inputs related list appears. And in
the Context inputs related list, select the New button to create context inputs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1006


<!-- page 1007 -->
• When a context input is defined for a parent context which has a child context associated,
then the parent-child context link is broken. In the child context, the inherited rules and
recommendations will be removed from the Inherited Rules and Recommendations related list
respectively.
Guidances in Recommended Actions
A guidance is an action that an agent can take or information that an agent can share as they
work to resolve tasks, such as customer service cases.
Guidances appear as cards in the contextual side panel in a workspace. Agents can access
these guidance cards by selecting the Recommended Actions icon in the contextual side panel.
Agents can then perform the actions by selecting a button on a card.
Recommended actions guidance cards

Guidances include actions such as sharing a knowledge article, creating a case task or a work
order, or copying the resolution notes from a similar case. For a detailed list of guidances, see the
following table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1007


<!-- page 1008 -->
Guidances in Recommended Actions
Guidance

Description

Apply resolution from a solved case

Applies the resolution from an existing solved
case.

Attach and share article

Enables the agent to attach a knowledge
article to a case and share the article with the
customer.

Communicate workaround

Communicates a workaround to the customer.

Copy resolution notes

Copies the resolution notes from the
recommended case to the current case.

Create work order

Creates a work order for a case.

Default guidance for search results

Default guidance that can be used for any
search sources that don't have dedicated
mapped guidances. For more information, see
the following topics:
• Automatically map AI search results with
guidance inputs
• Default guidance for search results
.

Link case

Links the current case as a child of the
recommended case.

Link case to existing defect

Links a case to an existing defect.

Open collab chat

Opens the collaboration chat modal.

Propose major issue

Proposes the current case as a major case.

Propose resolution

Proposes a resolution for a case.

Read message to customer

Directs the agent to read a message to the
customer.

Reassign case

Reassigns the case to a different assignment
group.

Review and attach article

Enables the agent to review and attach a
knowledge article to a case.

Share KB in chat interactions

Shares a knowledge article in the chat window
in an interaction record.

Similar major case

Displays similar major cases.

Attaching and sharing knowledge articles
Agents can use two different guidances to view and attach knowledge articles to task records
and chat interaction records and share articles with customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1008


<!-- page 1009 -->
Guidances for attaching and sharing knowledge articles
Guidance

Description

Attach and share article

This guidance recommends knowledge
articles to an agent who is working on a task,
such as a case record. The guidance displays
relevant articles and enables the agent to
select an article and share it in a comment, a
work note, or an email:
• Attach and add link in comment
• Add link in work note
• Attach and add link in email

Share KB in chat interactions

This guidance recommends knowledge
articles to an agent who is working on a chat
interaction. The guidance displays relevant
articles and enables the agent to select an
article and share it in the chat conversation
using Add link in message feature.

Configuring Recommended Actions guidances
Recommended Actions is a component that you can add to a record page in UI Builder . You
can find information about configuring the Recommended Actions component, including the
properties and events, in the Next Experience Components
documentation.
The Recommended Actions component includes two views: a preview view (card view) and a
detail view (full article view). How these views are displayed is determined by the Recommended
Actions configuration. For more information, see the following topics:
• Create a guidance in Recommended Actions
• Configure a guidance preview experience
• Customize a guidance preview experience in UI Builder
• Customize a guidance detail view in U Builder
The Recommended Actions component includes Recommended Action Specific Configuration
property. Users with the administrator role can use this property to configure the following
settings:
• Select which type of experience to uptake on a record page: modal or modeless dialog.
• Select which of the guidance actions to show or hide.
• Order the guidance actions to determine the primary action (displayed as a button on the
guidance card) and secondary actions (displayed on the overflow menu).
The Recommended Action Specific Configuration property is available in the Configure tab of
the Recommended Actions component and includes expandable sections for each guidance.

Access to internal field values for predicted records
When accessing data for a predicted record within the Recommended Actions framework,
the system provides the internal field values, in addition to display values, through standard
guidance inputs. The system does so without requiring data brokers or custom scripts. By
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1009


<!-- page 1010 -->
enabling direct access to internal values, the framework can support more complex logic, reduce
performance bottlenecks, and verify consistent UI behavior across languages.
For catalog items:
• When the catalog item type field is used in a catalog item prediction, the system returns the
internal value (for example, the catalog item or order guide) along with the sys_id.
• When the catalog item type field is accessed in a translated environment, the system relies on
the internal field value instead of the display value to verify the language settings do not affect
condition fulfillment.
For custom guidances based on the incident state:
• When custom guidance logic is applied to a predicted incident with a specified state, the
system accesses the internal value of the incident’s state field directly.
• When the state field is required for custom actions like linking an incident as a parent
or copying resolution notes, the internal value should be accessible without causing UI
performance issues or delays.
Attach and share article guidance
The Attach and share article guidance recommends relevant knowledge articles to customer
service agents and enables them to share the selected articles in comments, work notes, or
email.
The Attach and share article guidance recommends relevant knowledge articles based on
the text in the case short description. Agents can view the recommended articles and share a
selected article with the customer.
The agent can view the knowledge articles in a card format in the contextual side panel or
expand a selected card to see an article in a detail view. The card view provides a condensed
view of articles for quick scanning. The detail view provides the full content of the selected article
for further reading.
Each card contains a primary action. The default primary action is Attach and add link in
comment. Secondary actions are available in the More actions menu in the upper right corner of
the card:
• Add link in work notes
• Attach and add link in email
The same primary and secondary actions are available in the expanded detail view. The system
administrator can configure the primary and secondary actions in the Recommended action
specific configuration property. For more information, see Configuring guidances in UI Builder.
The relevancy score displays on the Attach and share article guidance in the Search tab of the
Recommended Actions contextual side panel. It indicates how well a search result matches the
agent’s query.

Modal and modeless dialog experiences
The agent can share the article in a comment, a work note, or an email using the primary and
secondary actions. Two different experiences are available for this guidance depending on the
record page you are using in the CSM Configurable Workspace:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1010


<!-- page 1011 -->
• Modeless dialogs: This experience is available for record pages that support modeless
dialogs (for example, the Front-line case page). Modeless dialogs are windows that overlay
the main window content. Agents can move modeless dialogs around the window so they can
interact with the window content and overlay content at the same time.
• Modals: This experience is available for record pages that support modals (for example, the
CSM default record page). With modals, agents must complete the action within a modal
before continuing to interact with the window content, which is the default experience.
The system administrator can configure the modal and modeless dialog experiences in the
Recommended Action Specific Configuration property. For more information, see Configuring
guidances in UI Builder.
If a record page supports the modeless dialog experience, selecting an action on a guidance
card opens the corresponding modeless dialog. If a record page does not support the modeless
dialog experience, the guidance uses the modal experience.

Note: The result of guidance actions is the same in the modeless dialog and modal
experiences, but when the actions are completed differs.

Public and private knowledge articles recommendations for case records
Some knowledge articles that appear in the search results display a lock icon in the upper left
corner. The presence or absence of the lock icon determines the audience for the article and
how an agent can share the article.
The KnowledgeGuidanceUserResolver extension point is shipped with
the base system. This extension point allows business units (BUs) to return the
requester and primary action based on their logic by creating the implementation
in this extension point. You can create an implementation by selecting the Create
Implementation link in the KnowledgeGuidanceUserResolver extension point. The
CSMKnowledgeGuidanceUserResolver implementation for the Case table and its
extended tables is shipped with the base system. This implementation identifies the primary
requesters for a case record based on the Contact, Partner Contact, Consumer and Internal user
fields in the Case table. The primary action is determined based on the channel type of the case
record.

Note: The Internal user field is checked only when the Service Organization
(com.snc.service_organization) plugin is installed.
Lock icon
Agents can’t share locked articles with customers as the customers do not have
access to these locked article. The Attach and add link in email and Attach and
add link in comment actions are not available when a lock icon is present on a
guidance card. The following table shows the primary and secondary actions in
preview and detail view on the guidance card:
Primary and secondary actions in preview and detail view on the guidance card
Action type

Description

Preview
Primary actions

The default primary action is Read
article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1011


<!-- page 1012 -->
Primary and secondary actions in preview and detail view on the guidance card
(continued)
Action type

Secondary actions

Description

• Share in work notes
• Copy Link

Detail view
Primary actions

Secondary actions

The default primary action on the
guidance card is Read article in full
view.
• Share in work note
• Copy Link
• Flag article
• Mark as helpful

No lock icon
Agents can share these articles with both customers and internal users. The
following table shows the primary and secondary actions in preview and detail view
on the guidance card:
Primary and secondary actions in preview and detail view on the guidance card
Action type

Description

Preview
Primary action

The default primary action by channel:
• Email channel: Attach and add link in
email
• Other channels: Attach and add link
in comment

Secondary actions (available in the
more options menu)

• Read article
• Attach and share in work notes
• Share in email
• Flag article
• Mark as helpful

Detail view
Primary action

The default primary action:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1012


<!-- page 1013 -->
Primary and secondary actions in preview and detail view on the guidance card
(continued)
Action type

Description

• Email channel: Attach and add link in
email
• Other channels: Attach and add link
in comment
Secondary actions (available in the
more options menu)

• Read article
• Attach and share in work notes
• Share in email
• Flag article
• Mark as helpful
• Read article in full view

Attach and add links in comments
Use this action to attach a knowledge article to a case record and share the link in the activity
stream. The behavior of the action depends on the modal or modeless dialog experience.

Experience

Description

Modal

This action does the following:
• Opens the Compose a comment modal.
• Inserts the article link in the Comments field.
The agent can add information to the Comments field and
select Post Comments.
• The knowledge article is attached to the case record.
• The activity stream is updated with the article attachment (as
an internal post).
• The comment and the link are posted to the activity stream
(as an external post).
• The guidance is marked as complete and moved to the
Recommended Actions History tab.
This action is available as the primary action on the knowledge
article card.

Note: This guidance is available by default.
Modeless dialog

This action does the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1013


<!-- page 1014 -->
Experience

Description

• Attaches the article to the case record. The article is
available in the Attached Knowledge related list.
• Updates the activity stream with the article attachment as an
internal post.
• Marks the guidance as complete and moves it to the History
tab.
• Opens the Compose a comment modeless dialog.
• Inserts the article link in the Comments field.
The agent can add information to the Comments field and
select Post Comments. The comment is posted to the activity
stream as an external post.

Add link in work note
Use this action to attach a knowledge article to a case record in the work notes. The behavior of
the action depends on the modal or modeless dialog experience.

Experience

Description

Modal

This action does the following:
• Opens the Compose a work note modal.
• Inserts the article link in the Work notes field.
The agent can add information to the Work notes field and
select Post work notes (private) to post the work note and the
link to the activity stream as an internal post.
• The activity stream is updated with the article attachment as
an internal post.
• The guidance is marked as complete and moved to the
Recommended Actions History tab.
This action is available as a secondary action in the More
actions menu.

Note: This guidance is available by default.
Modeless dialog

This action does the following:
• Opens the Compose a work note modeless dialog.
• Inserts the article link in the Work notes field.
The agent can add information to the Work notes field and
select Post work notes (private) to post the work note and the
link to the activity stream as an internal post. The guidance is
marked as complete and moved to the History tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1014


<!-- page 1015 -->
Attach and add links in emails
Use this action to attach a knowledge article to a case record and share the link in an email. The
behavior of the action depends on the modal or modeless dialog experience.

Experience

Description

Modal

This action does the following:
• Opens the Email compose modal.
• Inserts the article link in the body of the
email.
• If available, an email template auto-fills
modal fields.
The agent can add information to the email
and select Send email.
• The email is sent.
• The knowledge article is attached to the
case and is available in the Attached
Knowledge related list.
• The activity stream is updated with the
article attachment (as an internal post).
• The guidance is marked as complete and
moved to the Recommended Actions
History tab.
This action is available as a secondary action
in the More actions menu.

Note: This guidance is available
by default with the modeless dialog
experience. For the modal experience,
it must be configured by the system
administrator.
Modeless dialog

This action does the following:
• Attaches the article to the case record.
The article is available in the Attached
Knowledge related list.
• Updates the activity stream with the article
attachment as an internal post.
• Marks the guidance as complete and moves
it to the History tab.
• Opens the Email compose modeless dialog.
• Inserts the article link in the body of the
email.
• If available, an email template auto-fills email
fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1015


<!-- page 1016 -->
Experience

Description

The agent can add information to the email
and select Send email.

More actions menu
The More actions menu on a guidance card includes several actions in addition to Add link in
work notes and Attach and add link in email.
In the card view, these actions include:
• Read article
• Copy link
In the detail view, these actions include:
• Read article in full view
• Copy link
• Mark article as helpful
• Flag article
Share KB in chat interactions guidance
The Share KB in chat interactions guidance recommends relevant knowledge articles to
customer service agents and enables them to share the articles in chat conversations on chat
interaction records.
The Share KB in chat interactions guidance recommends relevant knowledge articles to agents
who are working on chat interactions. The guidance surfaces relevant knowledge articles based
on the text in the interaction short description. Agents can view the recommended articles and
share a selected article in the chat conversation.
The Share KB in chat interactions guidance enables automatic search results for knowledge
articles by using the text in the interaction Short description field. The first article listed is the
most relevant result. Agents can also manually search for articles.

Note: If there’s no text in the Short description field, no search results are displayed.
This guidance includes the following actions for sharing:
• Send in chat: Agents can share the article with customers.
• Send in private chat: Agents can only share the article with internal users such as other agents
or managers. Customers can’t access locked articles. Private chat messages use a yellow
background.
The relevancy score displays on the Share KB in chat interactions guidance in the Search tab of
the Recommended Actions contextual side panel. It indicates how well a search result matches
the agent’s query.

Public and private knowledge articles
Some knowledge articles that appear in the search results display a lock icon in the upper left
corner. The presence or absence of the lock icon determines the audience for the article and
how the agent can share the article.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1016


<!-- page 1017 -->
• Lock icon: The guidance card has a Send in private chat action. Agents can’t share locked
articles with customers.
• No lock icon: The guidance card has a Send in chat action. Agents can share these articles
with both internal users and customers.

Send in chat
When an agent selects Send in chat:
• An information message is displayed.
• The number of the knowledge article is inserted in the chat.
• The knowledge article preview card is inserted in the chat. The card includes a link to the
article and the article short description.

Send in a private chat
When an agent selects Send in private chat:
• The number of the knowledge article is inserted in the chat along with the lock icon.
• The knowledge article preview card is inserted in the chat along with the lock icon. The card
includes a link to the article and the article short description.
• The entries use a yellow background indicate that it’s a private chat.
Share knowledge articles in phone interactions
During a phone conversation, agents can send helpful knowledge base (KB) articles to
customers through SMS using the Add link in message option.

Before you begin

Required plugins: To enable the Add link in message functionality, install the following plugins:
• Conversational SMS Service Channel (sn_awa_sms_int)
• Agent Messaging Component (sn_agent_messaging)
• Agent-Initiated Messaging Interface (sn_agent_initiated)
• SMS Adapter Plugin (for example, sn_sms_aws_adapter, or any other supported SMS adapter)

Note: The system supports multiple SMS adapters. Verify that your selected adapter is
compatible with the Conversational SMS framework.
If the required plugins are not installed, the Add link in message action is not available. Instead,
the system displays other guidance actions such as:
• Copy link (default primary action)
• Read article in full view
• Mark article as helpful
• Flag article
Role required: none

Procedure
1. Select Add link in message in the interaction record.
The Compose Message modal opens with a preview to the article and a pre-filled message.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1017


<!-- page 1018 -->
2. Customize the message as needed.
3. Review how the To field is populated.
During phone interactions, the system auto-populates the To field using the following order:
◦ If the Contact field is populated, the phone number from that contact is used.
◦ If the Contact field is empty, the system uses the phone number from the Opened For field.
◦ If both fields are empty, agents can manually enter a valid phone number.
4. Optional: If an agent manually changes the phone number in the To field:
◦ The system treats it as a new interaction.
◦ The previous message is logged as sent to the original number.
◦ The new message is tracked separately to maintain clarity on what was shared and with
whom.
5. Select Send to send the message to the customer.
6. After the message is sent:
◦ A confirmation appears in the Notifications panel.
◦ Select View interaction from the notification to open the related interaction record.
◦ The message also appears in the Active SMS side panel.
Share knowledge articles in messaging-type interactions
Agents can share helpful knowledge base (KB) articles with customers during messaging-type
interactions. Using the Add link in message option, agents can insert article links directly into the
conversation to provide timely, contextual assistance.

Before you begin

Required plugins: To enable the Add link in message functionality, install the following plugins:
• Conversational SMS Service Channel (sn_awa_sms_int)
• Agent Messaging Component (sn_agent_messaging)
• Agent-Initiated Messaging Interface (sn_agent_initiated)
• SMS Adapter Plugin (for example, sn_sms_aws_adapter, or any other supported SMS adapter)

Note: The system supports multiple SMS adapters. Verify that your selected adapter is
compatible with the Conversational SMS framework.
If the required plugins aren’t installed, the Add link in message action isn’t available. Instead, the
system displays other guidance actions such as:
• Copy link (default primary action)
• Read article in full view
• Mark article as helpful
• Flag article
Role required: none

Procedure
1. Select Add link in message in the interaction record.
The Compose Message modal opens with a preview to the article and a pre-filled message.
2. Customize the message as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1018


<!-- page 1019 -->
3. Review how the To field is populated.
The system auto-populates the To field using the following order:
◦ If the Contact field is populated, the phone number from that contact is used.
◦ If the Contact field is empty, the system uses the phone number from the Opened For field.
◦ If both fields are empty, agents can manually enter a valid phone number.

Note:
The To field is visible only in new interactions. In existing interactions, it’s hidden, and
the message box shows only the KB article link and the interaction details appear in the
modal.
4. Optional: If an agent manually changes the phone number in the To field:
◦ The system treats it as a new interaction.
◦ The previous message is logged as sent to the original number.
◦ The new message is tracked separately to maintain clarity on what was shared and with
whom.
5. When the Add link in message action is used during a messaging-type interaction:
◦ If an interaction is already in progress, the KB article link is added directly to the existing
message.
◦ If no interaction is active, the system creates a new interaction to deliver the KB article.
6. Select Send to send the message to the customer.
7. After the message is sent:
◦ A confirmation appears in the Notifications panel.
◦ Select View interaction from the notification to open the related interaction record.
◦ The message also appears in the Active SMS side panel.
Default guidance for search results
The Default guidance for search results is a guidance that can be used for any search sources
that don't have mapped guidances.
Using AI search results in Recommended Actions requires a search application configuration.
For each search source in that configuration, the admin creates a mapping from the search result
to an action.
Starting with the Yokohama release, the Recommended Actions application automatically
creates the mapping between search results and actions.
When an admin creates or updates the search application configuration for a context record, the
system automatically creates search result mapping records for each of the search sources in
that configuration.
• If a search source does not have an existing mapping to an action, the system maps the search
source to the default guidance.
• If a search source has an existing mapping to a specific action, the system keeps that mapping
and does not overwrite it with the default guidance.
The default guidance enables agents to view search results for any type of record. The agent can
view the search results in the Recommended Actions tab in the contextual side panel in CSM
Configurable Workspace. Search results are displayed in a card format.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1019


<!-- page 1020 -->
The default guidance is available on the following pages:
• CSM default record page
• Front-line case page
• CSM Interaction record page of type chat, video, email, and Walkup

Default guidance card
The preview card for the default guidance displays information about the search result.

The preview card for the default guidance includes the following elements.

Element

Description

Search icon

The search icon appears at the top of the card along with
the hint text. The icon is made up of a magnifying glass with
a sparkle. This icon makes it easy for customers to identify
search results from suggested actions.

Hint text

Text that provides context for the guidance. The icon and hint
text appear together at the top of the card above the title.

Title

The title appears at the top of the card.

Relevancy score

The relevancy score displays on the Share KB in chat
interactions guidance in the Search tab of the Recommended
Actions contextual side panel. It indicates how well a search
result matches the agent’s query.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1020


<!-- page 1021 -->
Element

Description

Record fields

Relevant fields related to the guidance content are displayed
on the card. These fields provide key information about the
guidance content.
For example, a preview card for a knowledge article includes
fields for the article number and author while the preview
card for a case includes fields for the case number, state, and
priority.

Dismiss

Agents can use this action to move the guidance from the
Suggested actions tab to the Actions history tab. After
selecting Dismiss, the agent receives a notification that the
guidance has been moved.
To view the Actions history tab, click the clock icon in the
upper right corner of the Recommendations panel.

Open record

Agents can use this action to open the associated record in
a sub tab. Agents can view the record details in the sub tab
without navigating away from the main window.

Related topics
Automatically map AI search results with guidance inputs in Recommended Actions
Resource generators in Recommended Actions
Resource generators in Recommended Actions provide resources that you can use as inputs to
actions such as guidances and field recommendations.
Resource generators provide resources such as a knowledge article, a set of cases, or a field
value that you can use in recommendations. Agents can use these recommendations in the
Recommended Actions panel in a workspace such as CSM Configurable Workspace.
Another way to think of a resource generator is as a function with inputs and outputs. For
example, you can create a resource generator that predicts a knowledge article and then use
that knowledge article as a recommended action for a case.
You can select a resource generator from the list or create a resource generator. For a complete
list of resource generators that are included with the Recommended Actions application, see
Components installed with Recommended Actions.

Resource generator types
The Recommended Actions application provides the following resource generator types:
• Decision table
• Flow
• Scripting
• AI search
The Recommended Actions - Advanced application provides the following additional resource
generator types:
• Classification
• Similarity
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1021


<!-- page 1022 -->
• Similarity with Trend
• Task Intelligence Classification
• Task Intelligence Similarity
• Task Intelligence Similarity with Trend
These resource generator types are based on the Predictive Intelligence framework that you can
use to create machine learning solutions.

Resource generator type

Definition

Decision table

Returns the results of the selected decision table. Use
decision tables to help you resolve a complex decision that
depends on multiple inputs and predetermined outputs. For
example, a decision table might require inputs such as age,
location, and health history to provide suggestions for different
aspects of health insurance. You can use these suggestions,
which are the outputs of the decision table, as action inputs for
a recommendation.
For more information, see Decision Tables

Flow

Returns recommendations generated by executing the
selected subflow. Use subflows to define logic and automate
outputs for the resource generators. For example, you can
find relevant KB articles using inputs such as product name,
activation state, and publishing status. You can then propose
to attach these KB articles as a recommended action.
For more information, see Flow Designer

Scripting

.

Returns recommendations generated by executing the
selected script include. You must create an implementation of
the ScriptingGeneratorFactory template to use a script include
in the Scripting resource generator type.
For more information, see Script includes

AI search

.

.

Returns the AI search results and genius results based on realtime data and insights regardless of the search source. These
results are relevant to the context of a record. This resource
generator type requires the following inputs:
• Search field - The field on which the AI search is performed.
• Top N results - The number of records to return from the AI
search.
For example, you can configure AI search to recommend a KB
article or similar case based on the relevancy and context of
the short description. For more information, see AI Search .

Classification

Uses machine learning algorithms to recommend field values
during record creation. This resource generator type requires
the following inputs:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1022


<!-- page 1023 -->
Resource generator type

Definition

• Classification definition - The Predictive Intelligence
classification model to return the predicted values or record
references for a field on a table.
• Top N Results - The number of values or records to return
from the relevant records predicted by the classification
definition.
For example, you can configure the classification solution to
recommend a value for the category or assignment group
based on the short description. For more information, see
Predictive Intelligence .
Similarity

Identifies existing records with similar values to a context
record. You must create a word corpus that acts as a
vocabulary for the machine learning system to compare
trained records. This resource generator type requires the
following inputs:
• Similarity definition - The similarity solution definition to
return records that are relevant to the context record.
• Top N Results - The number of records to return from the
relevant records predicted by the similarity definition.
For example, you can find similar resolved cases to propose
a resolution as a recommended action. For more information,
see Predictive Intelligence .

Similarity with Trend

Uses a trend definition to find commonality in the records
returned by the similarity solution. You can configure the
trend definition using a common condition, common field, or
common reference, and a threshold value for the minimum
number of records that must follow a trend.
This resource generator type requires the following inputs:
• Similarity definition - The similarity solution definition to
return records that are relevant to the context record.
• Trend definition - The trend definition to filter the relevant
records that follow a trend.
For example, you can find similar major incidents with a trend.
Then, you can propose to link the current context record to this
major incident.

Task Intelligence
Classification

Uses machine learning models created in Task Intelligence
Admin Console to recommend field values. The models
provide flexible options to either auto-fill values on the record
form or to provide recommendations depending on the
sensitivity of those fields.

Note: The field values are not recommended for fields
when the TI model is in the background mode.
This resource generator type requires the following inputs:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1023


<!-- page 1024 -->
Resource generator type

Definition

• Solution: The solution contains configuration for
recommended input fields and recommended output
fields for prediction. The solution also contains preference
whether the fields are auto-filled or a recommendation
message is displayed. The Task Intelligence classification
model predicts multiple values or record references for
fields on a table.
• Top N Results - The number of values or records to
return from the relevant records predicted by the solution
definition.
For example, you can configure the Task Intelligence
classification solution to recommend a value for the category
or assignment group based on the short description. For more
information, see Task Intelligence .

Note: The Task Intelligence Admin Console
(com.sn_ti_admin) plugin must be installed for selecting
the Task Intelligence Classification resource generator
type.

Task Intelligence Similarity

Identifies existing records with similar values to a context
record. Uses machine learning models created in the Admin
Console to recommend field values.
This resource generator type evaluates the results of the Task
Intelligence Admin Solution and returns the predicted values/
records for multiple fields.
This resource generator type requires the following inputs:
• Model: Reference to the Task Intelligence Admin Similarity
model.
• Top N Results: The number of values or records to return
from the relevant records predicted by the solution
definition.
This resource generator type returns the following outputs:
• Predicted value: For non-reference type fields, the Task
Intelligence Admin Solution returns a predicted value.
• Predicted record: For reference type fields, the Task
Intelligence Admin Solution returns a predicted record.
For more information, see Task Intelligence

Task Intelligence Similarity
with Trend

.

This resource generator evaluates the trend on the results of TI
Similarity prediction.
Using the solution (sn_ti_admin_solution) and trend
(sn_nb_action_trend_definition) definitions, this resource
generator type identifies records similar to the context record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1024


<!-- page 1025 -->
Resource generator type

Definition

Further, it analyzes these similar records to determine if they
follow the specified trend.
This resource generator type requires the following inputs:
• Solution: Reference to the Task Intelligence Admin Similarity
Model.
• Top N Results: Specifies the number of predicted values/
records to be sent to the similarity prediction server.
• Trend definition: Reference to the Trend Definition
(sn_nb_action_trend_definition) table.
This resource generator type returns the following outputs:
• Count: Number of total records found in the trend.
• Oldest created record: Oldest record in the trend.
• Highest confidence record: Reference of the highest
confidence ML result record.
• Qualified Records Sys IDs: List of sys IDs of all qualified
records.
For more information, see Task Intelligence

.

Timeout handling for resource generators
The Recommended Actions application uses a subflow API with a defined timeout when calling
Machine Learning (ML) resource generators. This timeout ensures the RA generation engine
prioritizes faster response times by terminating stalled ML prediction calls.
The subflow has a timeout setting of 1 second. If there is a delay and the predict call times out,
the system generates a message.
The subflow applies to the following ML-based resource generators:
• Similarity
• Task Intelligence Similarity
• Similarity with Trend
• Task Intelligence Similarity with Trend
The sn_nb_action_adv.similarity_prediction.timeout system property
controls the timeout value of the subflow. The default value is set to 1000ms.
Related topics
Create a resource generator in Recommended Actions
Domain separation and Recommended Actions
Domain separation is supported for Recommended Actions. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Basic
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1025


<!-- page 1026 -->
• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Overview
The tables and data in the application are domain separated. Recommendation authors can
only see the context applicable to them based on the domain. In runtime, recommendations are
evaluated in the user context and data is created in the corresponding domain applicable to the
user.

How domain separation works in Recommended Actions
To use domain separation in the Recommended Actions application, you can create separate
Context records for each domain. Context serves as a starting point in Recommended Actions.
All other configurations such as Rule, Recommendation, and Resource Generator can then be
associated with the domain of the corresponding context record.
Runtime evaluation and generation of recommendations are user-specific. The user's domain
is selected and the corresponding Rules applicable to the user are evaluated to give final
recommendations to the end user. Execution records created use the same domain of the
context that are applicable for the given user.

Domain-separated tables
When you create related entities for a context, the domain for the related entities is set to the
domain of the context. The following tables in the application are domain separated:
• Context
• Recommended Action Rule
• Recommendation
• Resource generator
• Recommendation group
• Search result recommended action mapping
• Recommended Action Context
• Recommended Action Execution
• Recommended Action Order
• Field recommendation
• Field recommendation input
• Field recommendation definition
• Resource generator type
• Resource generator type input
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1026


<!-- page 1027 -->
• Recommendation grouping strategy
• Action Type Definition
• Trend Definition
Related topics
Domain separation for service providers
Queues for Recommendation Actions Application
Admins and Recommended Actions administrators can configure queues to manage the
asynchronous evaluation of recommendations.

Access Path and Role Requirements
To view or manage the queue, navigate to the following location in the application:
Navigate to All > System Policy > Queue Registry
Required Roles: admin or sn_nb_action.next_best_action_admin.

Default Queue Configuration
The Recommended Actions application includes a preconfigured queue by default, for
processing actions efficiently.
• Queue Name: sn_nb_action.ra_processor_queue_1
• Scale Factor: 2
• Polling Interval: 5 seconds

Optimizing Queue Configuration for Lower Latency
To enhance responsiveness and reduce latency in action processing, consider increasing the
Scale Factor, such as from 2 to 3
• Queue Name: sn_nb_action.ra_processor_queue_1.
• Updated Scale Factor: 3
• Polling Interval: 5 seconds

Considerations for Scaling
Increasing the Scale Factor enables the queue to process more items concurrently and reducing
latency. However, it also increases demand on system resources such as CPU and memory.
AI search in Recommended Actions
Enable agents to use AI search in Recommended Actions to find relevant resources or
resolutions for customer issues.
AI search results and genius results are displayed in the Search tab of the Recommended
Actions component in the contextual side panel. Agents can initiate actions from the search
cards directly to resolve an issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1027


<!-- page 1028 -->
The search results from the configured search sources are displayed in the form of cards. These
cards are previews of search records. You can select the card to view the record details or
directly take actions through the cards. The most relevant answers are displayed as top results in
the form of genius result cards.
AI search harnesses advanced machine learning algorithms and natural language processing
capabilities to comprehend user queries and provides the most relevant search results that can
be employed to resolve issues effectively. For more information on:
• AI search and its features, see AI Search

.

• enabling AI search for Next Experience, see Enable AI Search for Next Experience

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1028


<!-- page 1029 -->
AI search features
• Highlights search query terms that appear in the search results.
• Displays the most relevant results first with machine learning relevancy. Machine learning
automatically tunes and improves the search result relevancy score for each search profile
based on the answers agents select.
• Displays the best answers as genius result cards.

AI search benefits
• Maximizes efficiency: Use AI search integration to reduce task resolution time and improve
agent productivity.
• Leverages contextual intelligence: Make the most of context-aware searching to provide
accurate and timely responses.
• Provides summarization: Configure genius results to get large language model-based
knowledge summarization to align with your content and information needs.

Configuring AI search in Recommended Actions
Steps to configure AI search in Recommended Actions include enabling the AI search tab,
mapping the AI search results with guidance inputs, and customizing the Recommended Actions
component. Advanced customization options include adjusting the number of results to view on
a page, identifying genius results to add to the search profile, and configuring search sources.
For more information, see Configuring AI search in Recommended Actions.

Using AI search in Recommended Actions
Enable customer service agents to use AI search for faster access to relevant information and
take appropriate actions to resolve customer issues. For more information, see Use AI search in
Recommended Actions to resolve cases.
• Accessing AI search: Agents can access the AI search tab in the contextual side panel of the
workspace.
• Finding context-aware results: Agents can enter their search queries in the search bar. AI
search uses natural language processing to understand user queries and considers task
context to produce relevant results.
• Showing AI search results: Review AI search results and take actions directly from the search
cards.
• Showing genius results: Agents can view the most relevant results at the top based on criteria
defined in the genius results configuration, drawing their attention to the most relevant
information first.
• Narrowing search results: Agents can select a search source from the Search filter field to
display results only from that search source and then return to viewing all matching records.
• Viewing results count: The search tab shows counts of the total number of matching search
results. The search filters show the number of matching results for each search source.

Note: Search results displayed and the total search count may vary due to security
permissions or if the search result has already been executed. The executed guidances
are added to the Activity stream and moved to the Actions history. Executed guidances
will be included in the total search count but will not show up in the search results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1029


<!-- page 1030 -->
AI Search event and action logs for AI Search usage in Recommended Actions
AI search event and action logs capture user interactions and search activities, providing data for
AI search analytics dashboards.

Search event and action logs
The logging of search-related events within a search system focuses on how search queries,
results, and user interactions are recorded in various tables for analytics purposes.
• Search event logging: The search events logging, including search queries, results, and user
actions, by queuing events and processing them into dedicated tables. The search events
are queued in the Queued Signal Events table first and then when they’re processed, they’re
moved into the search events table.
• Event logging triggers: The search events, search source events, and search signal events
tables capture details like query changes, sources of results, and applied facet filters. The
logging occurs not only when searches happen but also when filters, facets, or sorts are
applied, ensuring comprehensive capture of user interactions with search features.
Events are queued and then processed into the following tables:
◦ Search Events table [sys_search_event]: Logs search queries, user info, and result status.
◦ Search Source Events table [sys_search_source_event]: Captures the origin of the query (for
example, catalog item).
◦ Search Signal Events table [sys_search_signal_event]: Logs facet filters the facet filters
applied on the results for a search query and source mappings.
For more information on the preceding tables, see Search Suggestions tables

.

• Search result action logging: Separate tables exist for logging clicks and actions on search
results, including distinctions between normal and genius result actions, with multiple entries
for multiple actions on a single source. When you interact with a search result, such as clicking
on a link or performing an action, these actions are recorded. For the preview experience,
actions like drill down are automatically logged to avoid duplication. This data is then used to
populate analytics dashboards, either prebuilt or custom, enabling you to track and analyze
the interactions with search results effectively.
For custom guidances, you must emit the log search result event with the appropriate
payload structure, which includes action-related data. Emitting action details in the payload
is optional. Without it, events are still logged but lack specific action information, preventing
duplication by using unique action IDs. Custom guidance actions require emitting events with
a provided payload structure to log action details, while out-of-the-box guidances handle this
automatically. For payload structure, see Custom action log payload structure.
◦ Search Result Events table [sys_search_signal_result_event]: Stores signal data for search
results that you select.
◦ Search Result Event Actions table [sys_search_signal_result_event_action]: Stores signal
data for user interactions with search results.
◦ Genius Result Actions table [sys_search_genius_result_event_action]: Stores signal data for
user interactions with Genius Result answer cards.
For more information on the preceding tables, see Search signal tables

.

• AI search analytics: The logged data is then used to populate the AI search analytics
dashboards, either prebuilt or custom, enabling you to track and analyze the interactions with
search results effectively. For more information on the AI search analytics dashboard, see
AI Search analytics dashboard . You can view the CSM workspace-related AI Search usage
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1030


<!-- page 1031 -->
within Recommended Actions in the AI Search Analytics dashboard by selecting the [CSM
AIS] Configurable Workspace Search Config option in the application drop-down on the topright.

Custom action log payload structure
For custom action logging, that is, for the action you create on a guidance preview experience,
you must emit an event with a payload structure that includes action-related data. Other common
fields such as applied filters and views are handled by the system. If the payload is empty, the
event will still be logged, but the action details won’t be available. This structured payload is
crucial for building detailed analytics dashboards, as it provides specific information about user
interactions with custom actions.
api.emit(LOG_SEARCH_RESULT_EVENT, {actionData: {actionName:
actionId}})
For more details on how to configure the payload for custom actions, see Customize a guidance
preview experience in the UI Builder.
Example configurations of recommended actions
This example documentation demonstrates end-to-end configurations of recommendations with
actions of type guidance, decision tree, or field recommendation to help you get started with
Recommended Actions.
Recommended actions examples
Scenario

Description

Troubleshoot a failed credit card transaction

A decision tree that helps agents troubleshoot
a failed credit card transaction. This decision
tree asks a series of questions and based on
the answers entered, provides a resolution,
such as track the failed transaction, dispatch a
new credit card, or provide further assistance.

Recommend an assignment group for a router
issue

A field recommendation that recommends
a value for the Assignment group field so
that the agent can assign the case to the
appropriate team to resolve the customer
issue faster.

Link the current case to the similar major case

A guidance that recommends linking the
current case to the recommended similar
major case so that the business owner can
identify the trend and take corrective actions.

Example: Troubleshoot a failed credit card transaction
Learn how process analysts or business owners configure a recommended action that uses a
decision tree to troubleshoot a failed credit card transaction.

Problem scenario
Paul was trying to purchase a smart watch using his StellarVest bank credit card. But the
transaction failed at the time of payment. Paul created a case in the StellarVest bank customer
support portal seeking assistance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1031


<!-- page 1032 -->
In this scenario, the agent assigned to the Paul’s case is recommended to use a decision tree
to troubleshoot the failed credit card transaction. The decision tree collects user, credit card,
and transaction details. If money was debited, transaction tracking is initiated. However, if no
money was debited, the agent provides a failure code, which determines what guidance is
provided. Examples of potential guidances include: reassigning the case, creating a work order,
or assigning the case to an IT technician.

Configuring a recommended action for troubleshooting a failed credit card
transaction
Help process analysts configure a recommended action of type decision tree that enables
agents to troubleshoot a failed credit card transaction reported by customers.

Task

Description

Creating a decision tree

Create a decision tree that enables agents
to ask a series of questions to customers.
Based on the answers provided, agents
can troubleshoot and provide resolution to
customer issues. For more information about
how to configure a decision tree in Decision
Tree Builder, see Troubleshoot a failed credit
card transaction decision tree.

Create a rule from the Case context record

Create a rule to show recommendations for
active cases that meet the condition specified
in this rule.

Create a recommendation with the decision
tree as an action type

Create a recommendation that uses decision
tree to troubleshoot a failed credit card
transaction.

Create a recommendation with the decision tree as an action type
Create a recommendation to select Troubleshoot credit card transaction failure decision tree as
an action type.

Before you begin

Role required: sn_nb_action.next_best_action_author, admin

About this task

New recommendations can only be created inside the rules.

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select the Case context.
3. Select Active rule from the Rules related list.
4. In the Recommendations related list, select New.
5. In the New Recommendation screen, select A guided flow to follow to create a
recommendation of type decision tree.
A new Recommendation form is displayed with the Rule, Context, and Action type fields auto
populated.
6. In the Name field, enter Troubleshoot credit card transaction failure.
7. In the Action field, select the action.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1032


<!-- page 1033 -->
The available actions are determined by the selection in the Action type field.
a. In the Action field, select the lookup icon.
In the resulting pop-up window, the Table name field is auto populated with the table that
stores the available actions for the selected action type.
b. In the Document field, select the Troubleshoot credit card transaction failure decision tree
by clicking the lookup icon.
For more information about how to create this decision tree, see Create Troubleshoot credit
card transaction failure decision tree.
c. Select OK.
8. In the Recommendation hint field, enter Troubleshoot credit card transaction
failure.
The hint explains to agents why a recommendation is being suggested.
9. Select Update.
Example: Recommend an assignment group for a router issue
Learn how process analysts or business owners configure a recommended action of type
field recommendation to recommend an assignment group for a router issue. This field
recommendation uses a resource generator of type decision table that takes the router model
and router issue as inputs and provides an assignment group as a result.

Problem scenario
QuantumLink Technologies, a newcomer to the networking equipment market, places a strong
emphasis on customer satisfaction and resolving customer issues promptly. The business
owners are committed to provide excellent customer service so that their business can thrive.
Alisha, one of the business owners at QuantumLink Technologies, sets up a recommended
action that recommends a value for the Assignment group field based on the product model and
problem specified by customers.
Rohit, a customer who recently purchased a QuantumLink router, is facing intermittent
connectivity issues with his router. He creates a case on QuantumLink Technologies' customer
support portal. John is frustrated by the disruptions in his internet service and is seeking a swift
resolution to confirm uninterrupted connectivity for his home and work needs.
John Jason, the agent assigned to this case is recommended a field value for an assignment
group so that this case can be assigned to the appropriate team and the issue can be resolved
quickly.

Configuring a recommended action for recommending an assignment group for
a router issue
Help Alisha configure a recommended action of type field recommendation that recommends an
assignment group for a router issue.

Task

Description

Creating a decision table for recommending
assignment groups

Configure a decision table that takes product
and problem as inputs to provide the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1033


<!-- page 1034 -->
Task

Description

assignment group as an output. You can use
this decision table in a resource generator.
Configure a resource generator for providing
assignment group as an outcome

Configure a resource generator that you can
use while configuring a field recommendation
to provide the appropriate assignment group
for the router issue.

Create a field recommendation for
recommending assignment group field value

Create an action of type field recommendation
for recommending a field value for the
assignment group.

Create a rule from the Case context record

Create a rule to show recommendations for
active cases that meet the condition specified
in this rule.

Create a recommendation with the field
recommendation as an action type

Create a recommendation to surface the
recommendation for the assignment group
field value on a case record.

Creating a decision table for recommending assignment groups
Create a decision table with name Assignment group for a router issue that provides an
assignment group as a result for a given product and problem combination.
This decision table requires two inputs:

Input

Type

Product

String

Problem

String

For the result, create the Assignment group column with Result type selected as Reference and
Result table selected as Group [sys_user_group].
Configure the decision table conditions, results, and values as displayed in the following table.
For more information, see Decision Tables .
Sample decision table: Assignment group for a router issue
Condition columns

Result column

Product

Problem

Assignment gro

Router M-series

Internet connectivity issue

Router-M-Team

Router M-series

Router is heating up

Router-M-Team

Router M-series

Network outage

Router-M-Team

Router M-series

Security concerns

Router-M-Team

Router N-series

Internet connectivity issue

Router-N-Team

Router N-series

Router is heating up

Router-N-Team

Router N-series

Network outage

Router-N-Team

Router N-series

Security concerns

Router-N-Team

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1034


<!-- page 1035 -->
Configure a resource generator for providing assignment group as an outcome
Configure a resource generator of type decision table that provides an assignment group for a
given router model and associated issue.

Before you begin

Role required: sn_nb_action.next_best_action_author, sn_nb_action.resource_generator_author,
admin

Procedure
1. Navigate to All > Recommended Actions > Resource Generators.
2. Select New from the Resource Generators list.
3. In the Name field, enter Assignment group for router issue RG.
4. In the Context field, select Case context.
5. In the Generator type field, select Decision table.
6. In the Generator field, select the Assignment group for a router issue decision table.
7. Save the record to display the generator inputs.
8. On the Generator input form, fill in the fields.
a. Select the pill picker next to the field.
b. In the Product field, select Context: Case > Product > Display name.
c. In the Problem field, select Context: Case > Short description.
9. Select Update.

Result

What to do next

Create a field recommendation that you can use while creating recommended action for
recommending assignment group field value.
Create a field recommendation for recommending assignment group field value
Create a field recommendation that you can select when configuring a recommended action.
This field recommendation suggests an assignment group field value on a case record for a
router issue.

Before you begin

Use the CSM default record page or the CSM Interaction record page to display field
recommendations in CSM Configurable Workspace. For setting the CSM default record page or
the CSM Interaction record page as the default page, see Set record page order.
Role required: sn_nb_action.next_best_action_author, or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1035


<!-- page 1036 -->
About this task

Creating a field recommendation involves two main steps:
• Creating inputs for the field recommendation.
• Creating instructions about how to recommend values by configuring a definition for each field.

Procedure
1. Navigate to All > Recommended Actions > Action Types > Field Recommendations.
2. Select New on the Field Recommendations list.
3. In the Name field, enter Field recommendation for assignment group.
4. In the Table field, select Case [sn_customerservice_case] so that you can populate
field recommendation for the Assignment group field on a case record.
5. Save the record to display the related lists.
6. In the Field Recommendation Inputs related list, select New to create an input.
a. In the Type field, select Reference.
b. In the Label field, enter Assignment group.
The Column name field is auto-filled.
c. In the Reference specification related list, configure the following fields.

Field

Action

Reference

Select the Group [sys_user_group]
table.

Reference qual condition

Select the Active | is | true condition.

d. Select Update.
7. In the Field recommendation definitions related list, select New to create a definition.
a. In the Name field, enter Assignment group for router issue definition.
b. In Field, select the Assignment group field.
c. In the Recommendation message field, enter You can assign this issue to
and use the pill-picker to add the recommended value Field recommendation inputs >
Assignment group as part of the message.

Note: If the resource generator returns an empty field value, the recommendation
message isn’t displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1036


<!-- page 1037 -->
d. In the Recommendation Method list, select Recommend only.
e. Select Submit.
Create a recommendation with the field recommendation as an action type
Create a recommendation to select the field recommendation as an action type for
recommending a value for the Assignment group field on a case record.

Before you begin

Role required: sn_nb_action.next_best_action_author, admin

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select Case context.
3. In the Rules related list, select Active rule.
4. In the Recommendations related list, select New.
5. From the New Recommendation screen, select A field value to use.
A new Recommendation form is displayed with the Rule, Context, and Action type fields auto
populated.
6. In the Name field, enter Recommend assignment group for router issue.
7. In the Action field, select an action.
a. In the Action field, select the lookup icon.
In the resulting pop-up window, the Table name field is auto-populated with the table that
stores the available actions for the selected action type.
b. In the Document field, select the Field recommendation for assignment group field
recommendation.
c. Select OK.
8. In the Resource generator field, select the Assignment group for router issue RG resource
generator.
9. Save the record to display the Action inputs form section.
10. Define the action inputs.
a. Select the pill picker next to the field.
b. In the Assignment group field, select Resource generator > Assignment group: Group.
11. Select Update.
Example: Link the similar major case to the current case
Learn how process analysts or business owners configure a recommended action of type
guidance to propose a major case that can be linked to the current case. This guidance uses
a resource generator of type similarity with trend to recommend the similar case that has a
common trend.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1037


<!-- page 1038 -->
Problem scenario
Isabella owns a thriving E-commerce business that specializes in selling handmade artisanal
products. As the business grows, Isabella recognizes the increasing importance of providing
exceptional customer service to maintain customer satisfaction and loyalty. Isabella understands
that addressing customer issues effectively and promptly is crucial for the success of the
business.
Daniel, a process analyst on the Isabella's team identifies the most common and critical issues
that their customers report and create major cases for them. So that whenever a customer
creates a case, it can be linked to the similar major case. This process helps them understand
the pattern, identify the root cause, take corrective actions, and apply similar solutions.
Daniel identifies the following major issues:
• Missing items in the order
• Wrong items received
• Damaged or defective products
• Refund requests
• Billing discrepancies or errors
• Difficulty applying discount codes
• Difficulty reaching customer support
Now, Daniel configures a guidance that recommends a similar major case to the agent who is
working on a new case created by a customer. The guidance provides an action to the agent to
link the recommended major case to the current case.

Configuring a recommended action for linking the similar major case to the
current case
Help Daniel configure a recommended action of type guidance that uses Similarity with Trend
resource generator to link the major case to the current case.

Task

Description

Configuring a subflow for the guidance action
automation

Configure a subflow that you can use in a
guidance to link the proposed major case to
the current case automatically on a click of an
action button.

Configure a resource generator for providing a
similar major case to the current case

Configure a resource generator of type
similarity with trend that provides a similar
major case to the current case.

Create a guidance for linking the similar major
case to the current case

Create a guidance to link the similar major
case to the current case by configuring
guidance inputs, preview experience, and
guidance action.

Create a rule from the Case context record

Create a rule to show recommendations for
active cases that meet the condition specified
in this rule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1038


<!-- page 1039 -->
Task

Description

Create a recommendation with guidance as an Create a recommendation to select the
action type
Guidance as an action type for linking a major
case to the current case record.
Configuring a subflow for the guidance action automation
Configure a subflow that you can use in a guidance to automatically link the proposed major case
to the current case on a click of an action button.
Configure and publish a subflow with the following inputs and action. For more information, see
Create a subflow in Workflow Studio .

Field

Value

Description

Name

Link major case

-

Subflow Inputs & Outputs > Inputs

• Current case

Input type: Ref

• Major case
Actions

Update Record

Update case re
case as the pa

Configure a resource generator for providing a similar major case to the current case
Configure a resource generator of type similarity with trend that provides a similar major case to
the current case.

Before you begin
• Ensure Predictive Intelligence is active and set up on your instance. See Install Predictive
Intelligence .
• Ensure you have a Predictive Intelligence subscription.
• Train the Major issue detector similarity solution with the existing customer cases. For more
information, see Create and train a similarity solution .
• Create a trend definition with the name Major issue trends to define how many records that
have something in common constitute a trend, for example, six or more records with common
field values.
Role required: sn_nb_action.next_best_action_author, sn_nb_action.resource_generator_author,
admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1039


<!-- page 1040 -->
Procedure
1. Navigate to All > Recommended Actions > Resource Generators.
2. Select New from the Resource Generators list.
3. In the Name field, enter Similar major case.
4. In the Context field, select Case context.
5. In the Generator type field, select Similarity with Trend.
6. Save the record to display the generator inputs.
7. On the Generator input form, fill in the fields.
Field

Action

Similarity definition

Select the similarity solution, Major Issue De­
tector.

Trend definition

Select the trend definition, Major issue
trends.

8. Select Update.
Create a guidance for linking the similar major case to the current case
Create a guidance for linking the similar major case to the current case by configuring guidance
inputs, preview experience, and guidance action.

Before you begin

Role required: sn_nb_action.next_best_action_author, admin

Procedure
1. Navigate to All > Recommended Actions > Action Types > Guidances.
2. Select New in the Guidances list.
3. In the Name field, enter Link similar major case.
4. In the Description field, enter This guidance recommends to link the
identified similar major case to the current case..
5. Create the following inputs for the guidance.
Inputs are the variables or information that the system needs to perform the guidance. You
can use inputs in multiple places such as the guidance preview experience and the guidance
actions.
a. In the Guidance Input tab, select New.
b. In the Label field, enter Current case.
c. In the Type field, select Reference.
d. In the Reference Specification related list, in the Reference field, select the Case table.
e. Select Submit.
f. In the Guidance Input tab, select New again.
g. In the Label field, enter Major case.
h. In the Type field, select Reference.
i. In the Reference Specification related list, in the Reference field, select the Case table.
j. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1040


<!-- page 1041 -->
6. Configure the preview experience.
a. In the Preview Title field, enter Link to this major case.
b. In the Fields to display, select the parent case input.
c. In the Message field, enter This is the similar Major case predicted
that you can link to the current case.
7. Save the guidance record to display the Guidance Actions related list.
8. Configure a guidance action.
a. In the Guidance Actions form section, select New.
b. In the Action Label field, enter Link major case.
c. In the Call to Action Label field, enter Link major case.
d. In the Action Behaviour field, select Single-click.
e. In the Guidance Action Automation field, select the Link major case subflow.
f. In the Completion Message field, enter The suggested major case is linked!
g. Save the record to display the flow inputs.
h. In the Automation Flow Inputs related list, fill in the fields.

Input

current case

Action

i. Select the pill picker next to the field.
ii. Select Guidance inputs > Current case.

major case

i. Select the pill picker next to the field.
ii. Select Guidance inputs > Major case.

Create a rule from the Case context record
Create a rule to show recommendations for active cases that meet the condition specified in this
rule.

Before you begin

Role required: sn_nb_action.next_best_action_author, admin

About this task

New rules can only be created from context records.

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select the Case context.
The Case context is available by default.
3. In the Rules related list, select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1041


<!-- page 1042 -->
4. In the Name field, enter Active rule.
5. In the Roles field, select the Edit User Roles
icon and then select Customer
service agent [sn_customerservice_agent] and Consumer service agent
[sn_customerservice.consumer_agent].
The selected user roles can see recommendations for this rule.
6. Select Done on the Roles pop-up window.
7. In the Condition field, use the condition builder to add the condition "Active | is | true".
Agents can see recommendations for the records in the context table that meet this criteria.
8. Optional: Enable the Apply to tables extended from the context table check box, so that the
rule and its recommendations are applied to tables that are extended from the context table.
For more information, see Apply rules to tables extended from the context table.
9. In the Field affecting this rule field, select Short description from the slush bucket.
10. Select Submit.
Create a recommendation with guidance as an action type
Create a recommendation to select the Guidance as an action type for linking a major case to the
current case record.

Before you begin

Role required: sn_nb_action.next_best_action_author, or admin

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select Case context.
3. In the Rules related list, select Active rule.
4. In the Recommendations related list, select New.
5. From the New Recommendation screen, select A specific action to take or information to
review.
A new Recommendation form is displayed with the Rule, Context, and Action type fields auto
populated.
6. In the Name field, enter Link major case to current case.
7. In the Action field, select an action.
a. In the Action field, select the lookup icon.
In the resulting pop-up window, the Table name field is auto-populated with the table that
stores the available actions for the selected action type.
b. In the Document field, select the Link similar major case guidance.
c. Select OK.
8. In the Resource generator field, select the Similar major case resource generator.
9. Save the record to display the Action inputs form section.
10. Define the action inputs.
a. Select the pill picker next to the field.
b. In the Assignment group field, select Resource generator > Assignment group: Group.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1042


<!-- page 1043 -->
11. In the Action Inputs related list, fill in the fields.

Input

Current case

Action

a. Select the pill picker next to the field.
b. Select Context: case.

Major case

a. Select the pill picker next to the field.
b. Select Resource generator > Highest confidence record: case.

12. Select Update.
Install the Recommended Actions application
You can install the Recommended Actions application (sn_cs_nb_action) if you have the admin
role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Recommended Actions
application listing in the ServiceNow Store for information
on dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with Recommended Actions:
• Store applications: Recommended Actions
• Roles
• Tables
For more information, see Components installed with Recommended Actions.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Recommended Actions application (sn_nb_action) using the filter criteria and search
bar.
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

1043


<!-- page 1044 -->
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Components installed with Recommended Actions
Several types of components are installed with the Recommended Actions application, including
tables, roles, guidances, resource generators, and scheduled jobs.

Tables
The Recommended Actions application adds the metadata tables described in the following
table.
Tables installed with Recommended Actions
Table

Description

Context

Stores contexts for tables such as
case, incident, and problem for which
recommendations are generated.

[sn_nb_action_rule_context]
Recommendation
[sn_nb_action_recommended_action]
Action Type Definition

Stores recommendations, which include
action type, action, and resource generator
information.

[sn_nb_action_type_definition]

Stores action type definitions such as
guidances, guided decision trees, and field
recommendations.

Field Recommendation

Stores field recommendations.

[sn_nb_action_field_recommendation]
Field Recommendation Definition

Stores field recommendation definitions.

[sn_nb_action_field_recommendation_definition]
Field Recommendation Input

Stores inputs for field recommendations.

[sn_nb_action_field_recommendation_input]
Resource Generator

Stores resource generators.

[sn_nb_action_resource_generator]
Resource Generator Type
[sn_nb_action_resource_generator_type]

Stores resource generator types such as flow,
decision table, scripting, similarity, similarity
with trend, and classification.

Resource Generator Type Input

Stores inputs for resource generators types.

[sn_nb_action_generator_type_input]
Trend Definition

Stores trend definitions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1044


<!-- page 1045 -->
Tables installed with Recommended Actions (continued)
Table

Description

[sn_nb_action_trend_definition]
Rule
[sn_nb_action_condition_based_rule]
Recommended Action Rule

Stores rules, which include a condition and
roles for the context.
Stores recommended action rules records.

[sn_nb_action_rule_base]
Conditional Rule
[sn_nb_action_conditional_rule]
Decision Table Rule
[sn_nb_action_decision_table_rule]
Recommended Action Input Generator
[sn_nb_action_input_generator]
Search result recommended action mapping
[sn_nb_action_search_result_ra_mapping]

Stores conditional rules. This table is no longer
supported.
Stores decision table rules. This table is no
longer supported.
Stores input generator records. This table is no
longer supported.
Stores mapping between search result outputs
and action inputs.

Roles
The Recommended Actions application includes the roles described in the following table.
Roles installed with Recommended Actions
Role

Description

Recommended Actions admin Grants administrator access
to the Recommended Actions
[sn_nb_action.next_best_action_admin]
application.
Recommended Actions author Can create recommended
actions.
[sn_nb_action.next_best_action_author]

Contains roles

sn_nb_action.next_best_action_author

• sn_nb_action.resource_generator_author
• sn_gd_guidance.guidance_manager
• sn_nb_action.next_best_action_user
• sn_gd_core.decision_tree_author

Recommended Actions user

Can use recommended
actions.
[sn_nb_action.next_best_action_user]
Resource Generator author

Grants access to configure
resource generators.
[sn_nb_action.resource_generator_author]

sn_gd_core.decision_tree_author

• flow_operator
• decision_table_reader
• platform_ml_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1045


<!-- page 1046 -->
Roles installed with Recommended Actions (continued)
Role

Description

Contains roles

• sn_nb_action.trend_definition_author
• sn_ti_admin.tia_user
Trend Definition author

Grants access to configure
trend definitions.
[sn_nb_action.trend_definition_author]

None

Guidances
The Recommended Actions application includes the guidances described in the following table.
Guidances installed with Recommended Actions
Guidance

Apply resolution from a solved case

Communicate Workaround

Description

Enables agents to apply a resolution from
a recommended solved case by clicking
Resolve case button on a card, which
copies the resolution notes and a resolution
code from the solved case into the Closure
Information section of the current case. The
state of the current case changes to resolved.
Enables agents to communicate a workaround
from a recommended problem record by
clicking a Communicate workaround button
on a card, which opens the guidance in the
side panel.
The guidance shows the workaround from
the problem record and provides a note field
for the agent to add additional notes. The
workaround and notes are added in the work
notes and the problem record is linked to the
current case.

Create case task

Create Work Order

Enables agents to create a case task for the
current case by clicking a Create button on
a card, which opens the guidance in the side
panel where the agent can enter a subject for
a new case task and submit it.
Enables agents to create a work order for a
case by clicking a Create button on a card.
Creates a work order task and opens the task
in a subtab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1046


<!-- page 1047 -->
Guidances installed with Recommended Actions (continued)
Guidance

Link to existing defect

Link to existing open case

Offer Recommendation
Propose Resolution

Read message to customer

Reassign case

Review and attach article

Description

Enables agents to link an existing defect to
the current case by clicking a Link to defect
button on a card, which links the defect to the
case and updates the work notes.
Enables agents to link the current case to an
existing open case by clicking a Link to this
case button on a card, which sets the open
case as the parent of the current case.
Enables agents to recommend upgrade of a
product to provided product model.
Enables agents to enter resolution notes and
a resolution code for a case by clicking a
Propose Solution button on a card.
Enables an agent to indicate that a message
was read to a customer during a call by
clicking the Mark as read button on a card,
and adding the message to the work notes.
Enables agents to reassign the current case
to a recommended assignment group by
clicking the Reassign button on a card, which
opens the guidance in a side panel where the
agent can enter notes. The current case is
reassigned to a different assignment group
and the work notes are updated.
Enables agents to review a recommended
knowledge article in the contextual side panel
by clicking a Review and attach article button
on a card, which opens the article in the side
panel.
In the side panel, agents can do the following:
• Review the article.
• Attach the article to the case.
• Mark the article as helpful.
• Open the article in a subtab.

Resource generators
The Recommended Actions application includes the resource generators described in the
following table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1047


<!-- page 1048 -->
Resource generators installed with Recommended Actions
Resource generator

Description

Find most read KB
Article for Product

Finds the most read KB article for the selected product. You can use this
KB article to attach to a case as a recommended action.

Find Matching PRB
with workaround

Finds a matching problem record that has a workaround. You can
propose to share the workaround from this case as a recommended
action.

Find Matching PRB Finds a matching problem record without a workaround. You can propose
without workaround to link to this problem record as a recommended action.
Configuring the Recommended Actions application
As an admin, configure the Recommended Actions application to display relevant actions to your
agents based on a record context.

Recommended actions
You can configure recommended actions by following these steps.
Steps to configure Recommended actions
Step

Description

Create a context

A context enables agents to see recommendations for records
from a specific table, such as the Case table.

Create a context input

A context input enables you to associate entities beyond
just the context table with a context ensuring that
recommendations are updated dynamically as the context
evolves.

Note: This step is not mandatory.
Create a rule for a context

A rule is a set of conditions that applies to a context and
determines when a recommended action appears.
When you create a rule:
• Select conditions that apply to the context table.
• Select the roles that have access to the recommended
actions.

Note: New rules can only be created from within a
context.
Create a recommendation for
a rule

A recommendation is a way to suggest an action to an agent.
Create a recommendation by selecting one of
the recommendation types available on the New
Recommendation screen:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1048


<!-- page 1049 -->
Steps to configure Recommended actions (continued)
Step

Description

• Guidance
• Guided decision tree
• Field recommendation

Note: New recommendations can only be created from
within a rule.

Action types
With the Recommended Actions application, you can create the following types of actions for
agents to take.
Action types in the Recommended actions application
Action type

Guidance

Description

An action that an agent can take or information that they can
share. For example, a guidance can recommend that an agent
can view and attach a knowledge article to a case or create a
work order.

Guided decision tree

A guided flow to follow. A decision tree is a multi-step process
that includes a series of questions and answers and results in
guidance.

Field recommendation

A recommended value to use for a field. For example, this type
of action can recommend the assignment group based on the
text in the case short description.

For more information, see Creating guidance and field recommendation in Recommended
Actions.

Resource generators
Configure resource generators to provide information that you can use as inputs to actions such
as guidances and field recommendations. Configuration of decision trees don’t require resource
generators. For more information, see Create a resource generator in Recommended Actions.

Arbitration parameters
Configure arbitration parameters to determine the frequency of issues or the priority order of the
recommended actions so that agents get the guidance that they must help resolve customer
issues. For more information, see Configure the arbitration parameters in Recommended
Actions.
Create a context in Recommended Actions
Create a context for an individual table, such as the Case table. Contexts store information
including the recommended actions that agents can use and the rules that determine when
those actions are available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1049


<!-- page 1050 -->
Before you begin

Role required: sn_nb_action.next_best_action_author, or admin

About this task

A context enables agents to see recommendations for a specific type of record when certain
rules are met. These recommendations can help agents by suggesting actions to take based on
the record context.

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select New on the Contexts list.
3. Fill in the fields on the form.
Context form
Field

Description

Name

Name for the context.

Table

Table for which the context applies to.
If you select a table that already has
a context, then a warning message is
displayed.

Description

Brief description about the context.

Active (Optional)

Check box to make the context active.

Asynchronous Evaluation

When selected, enables asynchronous
mode of evaluating recommendations
on the contextual side panel in the CSM
Workspace. That is, this mode enables
agents to work on the case or incident record
while the recommendations load on the
contextual side panel. For more information,
see Synchronous and asynchronous modes
of evaluation for Recommended Actions.

Exclude fields

Fields of the context table that do not
trigger the Recommendations refresh in the
Configurable CSM Workspace, when these
fields are updated. Add the context table
fields that do not impact recommendations
generation.

Parent Context Config
Parent context

Enables you to choose which parent table's
rules and recommendations must be applied
to the context you are working with.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1050


<!-- page 1051 -->
Field

Description

Note:
◦ This field appears when the selected
table has a parent table with context
defined.
◦ This field does not show the parent
context which have context inputs
configured.
◦ If parent context is set, the Context
inputs related list does not appear.
Inherit exclusions from parent context

When selected, includes the exclusion fields
of the parent context table to prevent the
trigger of the Recommendations refresh in
the CSM Configurable Workspace.

Note: This field appears only when a
context is added in the Parent context
field.
Contextual AI Search Config
Search Application Configuration (Optional)

Search application configuration that
specifies AI Search as the search engine and
the settings to use for the search.
You can configure the search result
display and refinement settings in the
search application configuration. For
more information, see Search application
configurations .
The [CSM AIS] Configurable Workspace
Search Config search application
configuration is provided with the CSM
Configurable Workspace store application.
To access this configuration, navigate to
AI Search > Search Experience > Search
Applications.
For more information about AI search
configurations, see Configuring AI Search in
Recommended Actions.

Default search term

Search term that appears by default.
You can map the context input from the pill
picker.

Grouping strategy (Optional)

Strategy for grouping recommendations.
For example, you can define a grouping
strategy to group recommendations that have
similar criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1051


<!-- page 1052 -->
Field

Description

Note: You might need to configure the

Context form to display the Grouping
strategy field. This field is available by
default for ITSM Workforce Optimization
users.
Refresh interval (Optional)

This value determines how often
recommendations are refreshed for the
context. The default value for this field is 12
hours and the minimum value is 10 minutes.

Note: You might need to configure

the Context form to display the Refresh
interval field.
Show relevancy score for results

Displays the relevancy score on the search
results and recommendations in the
Recommended Actions contextual side
panel.

Top N results

Limits the number of search results displayed
in the AI search tab of Recommended
Actions to the top N results for improved
precision and easier management. The
number of results that appear is determined
by the Search Results Limit value which
can be updated by opening the Search
Application in the Search Application
Configuration.

4. Select Save.
After saving the context record, the system displays the Rules and Recommendations related
lists.

What to do next
• Configure context inputs. For more information, see Create a context input in Recommended
Actions.
• Use the Rules related list to view or create rules for this context. For more information on how to
create a rule, Create a rule in Recommended Actions.
• Use the Recommendations related list to view the recommendations related to the context
rules. You can only create a recommendation from within the rule. For more information on how
to create a recommendation within a rule, see Create a recommendation in Recommended
Actions.
• Use the Search result mapping related list to view or create mappings between AI search
outputs and guidance inputs.
Related topics
Contexts in Recommended Actions

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1052


<!-- page 1053 -->
Create a context input in Recommended Actions
As an admin or RA author, create a context input for a context and use it in rule condition builder,
resource generator input and recommendation-action mappings.

Before you begin

Role required: sn_nb_action.next_best_action_author, or admin

About this task

After creating context inputs, you must configure the RA UIB component to pass the context
input values. For more information, see Configuring Recommended Actions UIB component for
context inputs.

Note:
Creating context inputs is not mandatory. You can create context inputs for a context only
when you want to include or map parameters other than the context table.

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Open a context that you want to edit.
3. On the Context inputs related list, select New.

Note: The Context inputs related list appears only when a parent context is not mapped
to the context. For more information on the context input configuration limitations, see
Context Input configuration limitations.
4. In the form, fill in the fields.

Field

Description

Type

Field type of the input such as Choice,
Reference, String, List, Integer, etc.
Depending on the field type that you select,
you might need to configure additional
settings in the related tabs. For example, if
you select Reference as the field type, you
need to select a reference table.

Application

Scoped application name.
The applicable name is populated by default.

Label

Name of the context input.
The Column name field is auto-filled.

Active

Enabling the Active check box makes the
context input available for use in the context.

5. Provide the necessary details in the related tabs.
The related tabs that display vary based on the field type selected in the Type field. For more
information on the data types, see Field types reference .
6. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1053


<!-- page 1054 -->
Result

The context input appears in the appropriate fields of rules, recommendations, and resource
generators.
• Default search term pill picker in the Contextual AI Search Config section of Context form.
• Advanced Condition drop-down field of the Rule form.
• Pill pickers in the Action inputs section of the Recommendation form.
• Default search term pill picker in the Contextual AI search configuration section of the Context
form.
• Pill pickers in the Generator inputs section of the Resource generator form.

What to do next

Use the context inputs for creating the conditions in rules, and action inputs in recommendations
and generator inputs in resources generators.
Create a rule in Recommended Actions
Create a rule for a context that determines when recommended actions are made available to
agents.

Before you begin

Role required: sn_nb_action.next_best_action_author, or admin

About this task

New rules can be created from the context records only.

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select a context.
3. In the Rules related list, click New.
4. Select the rule that you want to update.
5. Enter a name and a description for the rule.
6. In the Roles field, select the user roles that can see recommendations for this rule.
7. Click Done on the Roles pop-up window.
8. In the Advanced Condition field, use the condition builder to add one or more conditions that
apply to the records for this context.
Agents can see recommendations for the records in the context table that meet this criteria.
If a context input is available for the context, you can build conditions on it along with the
context table.
9. Optional: Enable the Apply to tables extended from the context table check box, so that the
rule and its recommendations are applied to tables that are extended from the context table.
For more information, see Apply rules to tables extended from the context table.
10. In the Fields affecting this rule field, add fields from the context table that must be monitored
for changes.
Changes to these fields generate recommended actions of the type field recommendation for
unsaved records.
11. Fill in the remaining fields on the form, as needed.
For more information about these fields, see Rule form.
12. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1054


<!-- page 1055 -->
Create a recommendation in Recommended Actions
Create a recommendation with an action type of guidance, field recommendation, or guided
decision tree to suggest helpful actions to agents.

Before you begin

Role required: sn_nb_action.next_best_action_author, or admin

About this task

You select an action type and action as part of creating a recommendation. The next steps
depend on the action type that you select. For example, guidances and field recommendations
need action inputs as a next step, while guided decision trees don’t.
For the AI search resource generator, you can select guidances only as action types in the
Search result mapping related list. You must map the fields from the search source table with
guidance action inputs for AI search or fields from the genius result configuration with guidance
action inputs for genius results.
Then you define the action inputs, which are the parameters that enable agents to complete an
action. You can select static values for inputs or use a resource generator to supply values.

Note: New recommendations can only be created inside the rules.
Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select a context.
3. Select a rule in the Rules related list.
4. In the Recommendations related list, select New.
5. Select the type of recommendation to create from the New Recommendation screen.
◦ A specific action to take or information to review (guidance)
◦ A guided flow to follow (guided decision tree)
◦ A field value to use (field value recommendation)
A new Recommendation form is displayed with the Rule, Context, and Action type fields auto
populated.
6. In the Name field, enter a name for the recommendation.
7. In the Action field, select an action.
The available actions are determined by the selection in the Action type field.
a. In the Action field, select the lookup icon.
In the resulting pop-up window, the Table name field is auto populated with the table that
stores the available actions for the selected action type.
b. In the Document field, select the desired action by clicking the lookup icon.
You can also create an action of type guidance, field recommendation, or guided
decision tree. For more information, see Creating guidance and field recommendation in
Recommended Actions.
c. Select OK.
d. Save the record to display the Action inputs form section.
After selecting the action type and action, saving the record displays the required action
inputs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1055


<!-- page 1056 -->
8. Optional: In the Resource generator field, select or create a resource generator and then save
the record.
(Optional) For more information, see Create a resource generator in Recommended Actions.
Guidances and field value recommendations can use resource generators to find relevant
resources for the action inputs.
The Action type, Action, and Recommendation hint fields are not available for AI search
resource generator. You can select the action type as a guidance and an action when you
configure the search result mapping for AI search. For more information, see Map AI search
results with guidance inputs in Recommended Actions.
9. For guidances and guided decision trees: in the Recommendation hint field, enter a hint text.
The hint explains to agents why a recommendation is being suggested.
10. Optional: Select a group in the Group field to show relevant recommendations together.

Note: You might need to configure the Recommendation form to display the Group field.
This field is available by default for ITSM Workforce Optimization users.
11. Define the action inputs.
Action types and actions need inputs. These parameters enable agents to complete an action.
You can choose static values for action inputs or you can use a resource generator to supply
values.
Option

Description

Use a static value

Enter the value in the field in the input field or
use the lookup icon to select a value from the
list.
a. Select the pill picker next to the field.
▪ The context is available in the pill picker.

Use a pill picker

▪ If you selected a Resource generator,
the outputs from the generator are avail­
able in the pill picker.
▪ If an active context input is available for a
context, the context input appears in the
pill picker.
b. Select the outputs from the pill picker.

12. Select Update.
Creating guidance and field recommendation in Recommended Actions
Create guidances and field recommendations that you can use to configure recommended
actions.

Configuring guidances
When you create a guidance, you configure several different aspects of that guidance:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1056


<!-- page 1057 -->
Guidance configuration steps
Feature

Configure inputs and outputs for a guidance.

Description

• Inputs: The variables or information that the
system must perform the guidance.
• Outputs: the result of the guidance.

Configure a preview experience for a
guidance.

A preview on the card that is displayed to the
agent can include:
• A hint that briefly tells the agent what the
guidance is about
• A preview message that describes the
guidance in more detail
• The action that the agent can take

Configure a detail experience for a guidance.

Configure a primary call to action for a
guidance.

Configure the behavior of a guidance.

A detailed message that is displayed for
guidances that open in the contextual side
panel or in a subtab.
A guidance can have multiple actions, with
one identified as the primary action and
optional secondary actions.
Determines how the system executes a
primary action after the agent selects the
action button on the card.
• Single click: Initiates and completes the
action and moves the card to the History tab
in the Recommended Actions panel. This
behavior is useful for simple actions such as
escalating a case.
• Open in the contextual side panel: Expands
the action and displays information about
that action in the Recommended Actions
panel. This behavior is useful for actions
such as reviewing the content in an article
before attaching it to a case.
• Open in a sub tab: Opens the action in a
subtab under the case tab. This behavior is
useful for guidances that require the agent
to select and submit additional information,
such as filling out the fields on a form.

Customize the preview experience and the
detail experience of a guidance

Options to customize the following items in the
UI Builder:
• Preview experience: The preview of the
recommendation card includes a hint, an
icon, a message, and an action button.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1057


<!-- page 1058 -->
Guidance configuration steps (continued)
Feature

Description

The preview of the card shows up in the
contextual side panel.
• Detail experience: The detail experience
of the guidance includes the drill down
actions. It opens in the contextual side panel
or in a subtab.

Configuring field recommendations
Field recommendation suggests a value for a field in the record form. Creating a field
recommendation involves two main steps:
• Selecting the inputs for the recommendation.
• Creating the instructions about how to use those inputs.
Create a field recommendation in Recommended Actions
Create a field recommendation that you can select when configuring a recommended action.
Field recommendations auto-fill a value or suggest a value for a field. For example, this type of
action can recommend the assignment group based on the text in the case short description.

Before you begin

Use the CSM default record page or the CSM Interaction record page to display field
recommendations in CSM Configurable Workspace. For setting the CSM default record page or
the CSM Interaction record page as default page, see Set record page order.
Role required: sn_nb_action.next_best_action_author, admin

About this task

Creating a field recommendation involves two main steps:
• Creating inputs for the field recommendation.
• Creating instructions about how to recommend values by configuring a definition for each field.
Depending on the configuration, the recommended field values are auto-filled or shown as
messages underneath the fields for the new records. The recommended field values are shown
as messages only underneath the fields for the existing records.

Procedure
1. Navigate to All > Recommended Actions > Action Types > Field Recommendations.
2. Click New on the Field Recommendations list.
3. In the Name field, enter a name for the field recommendation.
4. In the Table field, select a table.
This table includes the field for which you’re configuring a recommended value.
5. Save the record to display the related lists.
6. In the Field Recommendation Inputs related list, select New to create an input.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1058


<!-- page 1059 -->
a. In the Type field, select the field type for the input.
b. In the Label field, enter a label for the input.
c. In the Column name field, enter a column name.
This name should use lower case letters and underscores. For example,
confidence_score.
d. Configure the settings for the input in the related lists.
These settings and related lists are determined by the selection in the Type field. For
example, if you select Reference as the input type, you must configure:
▪ The table and any conditions for the reference field.
▪ The type of list to use.
▪ A default value.
e. Click Submit.
7. In the Field recommendation definitions related list, select New to create a definition.
a. In the Name field, enter a name for the definition.
b. Select the Field to be recommended and save the record to see additional details.
c. In the Recommendation message field, add the message that is recommended underneath
the field on the form.
You can include the recommended value as part of the message by using the pill-picker.

Note: If the resource generator returns an empty field value, the recommendation
message is not displayed.
d. In the Recommended value field, use the pill-picker to select a value.
e. In the Recommendation Method list, select one of the options that auto-fills the value or
recommends the value as a message.
Recommendation Method list fields and descriptions
Field

Description

Recommend only

Displays a recommendation message for the
field.

Autofill as per the confidence threshold

▪ Confidence: Field that provides the
confidence score.
Enter a static value or use the pill-picker to
select an input that you configured in the
Field recommendation inputs related list.
▪ Confidence threshold for direct
assignment: Confidence threshold for
the recommendation. If the confidence

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1059


<!-- page 1060 -->
Field

Description

score is more than the threshold value,
the recommended value is auto-filled.
Otherwise, a message is displayed.
Autofill as per the resource generator
preference

Recommendation Preference: Field that
has "true" or "false" value for preference. If
this value is true, the recommended value
for the field is auto-filled. Otherwise, a
message is displayed.
Enter a static value or use the pill-picker to
select an input that you configured in the
Field recommendation inputs related list.

f. Click Submit.
Create a guidance in Recommended Actions
Create a guidance that you can select when creating a recommendation in Recommended
Actions.

Before you begin

Role required: sn_nb_action.next_best_action_author, or admin

Procedure
1. Navigate to All > Recommended Actions > Action Types > Guidances.
2. Create a guidance.
a. Select New in the Guidances list.
b. In the Name field, enter a name for the guidance.
c. In the Description field, enter a brief description of the guidance.
d. Optional: Make the guidance available to multiple agents working on the case by selecting
the Action available to multiple users check box.
When this option isn’t selected, only one agent can work on any guidance. When the first
agent works on the guidance and the state is in-progress, completed, or error, the other
agents can't see this guidance.
e. Optional: Select Allow users to re-run the guidance to enable agents to go back to the
previous node or edit the previous nodes in the runtime experience of a decision tree.
This field is only displayed when the Guided Decisions Experience plugin (sn_ga_exp) is
installed.
f. Optional: Select Hide completed guidance to hide the guidance recommended for a case
resolution.
In other words, the completed guidance in the View my response section of a Decision Tree
is not displayed for the agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1060


<!-- page 1061 -->
Note: This field is visible only when the Guided Decision Experience plugin is
installed. You may need to configure the form to add this field.
g. Select Submit.
3. Open the guidance that you want to update.
4. Create one or more inputs for the guidance.
Inputs are the variables or information that the system needs to perform the guidance. You
can use inputs in multiple places such as the guidance preview experience and the guidance
actions.
a. In the Guidance Input tab, select New.
b. In the Label field, enter a name for the input.
c. In the Type field, select the field type of the input.
Depending on the field type that you select, you might need to configure additional settings.
For example, if you select Reference as the field type, you need to select a reference table.
d. If the guidance input requires an action by the agent, such as adding information to a field,
select the Is form field check box.
e. Optional: Enter a Default value.
f. Select Submit.
5. Optional: Create one or more outputs for the guidance.
Outputs are the desired result of the guidance action. For example, if a guidance action
creates a case task, the output of that action can return a reference to the case task that was
created.
a. In the Guidance Output tab, select New.
b. In the Label field, enter a name for the output.
c. In the Type field, select the field type of the output.
Depending on the field type that you select, you might need to configure additional settings.
For example, if you select Reference as the field type, you need to select a reference table.
d. Optional: Enter a Default value.
e. Select Submit.
6. Configure the detail experience for the guidance in the Detail Experience tab.
The detail experience is a message that is displayed for guidances that opens in the
contextual side panel or in a subtab.
a. In the Title field, add a title for the guidance in the detailed view.
b. In the Guidance Message field, provide a message for the detail view.
7. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1061


<!-- page 1062 -->
Configure guidance actions in Recommended Actions
Configure the actions that an agent can perform for a Recommended Actions guidance.

Before you begin

Role required: sn_nb_action.next_best_action_author, admin

Procedure
1. Navigate to All > Recommended Actions > Action Types > Guidances.
2. Select a guidance from the Guidances list.
3. In the Guidance Actions form section, click New.
4. On the Guidance Action form, fill in the fields.
Field names on the Guidance Action form
Field

Description

Guidance

The guidance that this action is associated with. This field is
read only.

Action label

A name for this guidance action.

Call to Action Label

The label for the action button that appears on the
recommendation card in the contextual side panel. For
example, Review and attach article or Propose Solution.

Action Behavior

The selected behavior for the guidance action:
◦ Single click: The action is initiated and completed with
one click and the card moves to the History tab in the side
panel. Useful for simple actions such as escalating a case.
◦ Open in Contextual Side Panel: The action opens in a
detailed view within the side panel. The agent can review
the details in the side panel, such as reviewing the content
of a knowledge base article.
◦ Open in Sub Tab: The action opens in a separate tab.

Note: Actions that open in the contextual side panel
or in the subtab don’t move to the in-progress state. The
action moves to the in-progress or completed state only
when the agent clicks the action button in the detail
view.
Primary

Denotes the guidance action as a primary action. This field is
enabled by default.
A primary action highlights the action that the agent should
take and makes that action available as a button on the
recommendation card.

Note: A guidance can have only one primary guidance
action.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1062


<!-- page 1063 -->
Field

Description

If this field is not selected, the guidance action is a
secondary action available through the more actions menu
on the recommendation card.
Application

The application that this guidance action is associated with.
This field is read only.

Guidance Action Automation

The flow associated with this guidance action.

Order

The order of the action.

Completion Message

The message that appears at the top of the recommendation
card when the guidance action is complete. For example, KB
article was shared.

5. Depending on the selected flow in the Guidance Action Automation field, you can configure
flow inputs and guidance outputs.
◦ Configure flow inputs in the Automation Flow Inputs tab.
◦ Configure outputs in the Guidance Outputs tab.
These fields can contain static text, dynamic content (field values from guidance inputs),
or a combination of static text and dynamic content. To use dynamic content, select the pill
picker icon next to the field and select a guidance input from the list.
6. Click Submit.
Configure a guidance preview experience
Configure a preview experience that conveys relevant information about the guidance action to
the agent before a recommendation is triggered. This information appears on the Recommended
Actions card in the contextual side panel.

Before you begin

Role required: sn_nb_action.next_best_action_author, admin

About this task

A guidance preview includes the following elements:
• A title
• Fields to display
• A message made up of text and HTML content, including images, videos, and links
You must configure at least one of these elements to save the guidance preview. This action
prevents the guidance from appearing empty in the contextual side panel.

Procedure
1. Navigate to All > Recommended Actions > Action Types > Guidances.
2. Select a guidance from the Guidances list.
3. Select the Preview Experience tab.
4. In the Preview Title field, add a title for the guidance preview.
This field can contain static text, dynamic content (field values from guidance inputs), or a
combination of static text and dynamic content. To select dynamic content as a field value:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1063


<!-- page 1064 -->
a. Select the pill picker icon next to the Preview Title field.
b. Select a guidance input from the list. You can drill down to another level to find the input you
want.

5. Select fields to display in the guidance preview.
a. In the Fields To Display field, click the lock icon to unlock the field.
b. Move the required fields from the Available column to the Selected column.
You can select up to four fields.
c. Use the up and down arrows to arrange the selected fields.
d. Click the lock icon again to lock the field.
6. In the Message field, create a message for the guidance preview.
You can use the tools available in the rich text editor to create and format the message. This
field can include text and HTML content like images, videos, and links.
7. Click Submit.
Customize a guidance preview experience in the UI Builder
Customize a preview of a Recommended Actions card that displays in the contextual side panel
using UI Builder. The preview experience includes a hint, an icon, a message, and an action
button.

Before you begin

Role required: sn_nb_action.next_best_action_author and ui_builder_admin, admin

About this task

You begin by creating a UI page variant of a guidance preview experience. When you create a
UI page variant from a page template, you start with a base structure that you can customize. By
using the component properties, you can change how your recommendation card preview looks.

Procedure
1. Navigate to All > Recommended Actions > Action Types > Guidances.
2. Select a guidance from the Guidances list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1064


<!-- page 1065 -->
3. Select Create preview UI to create a UI page variant of a guidance preview experience.
This page includes an empty customExpProps container with the properties listed in
the following table during run-time. The Recommended Actions framework passes the
customExpProps object as a property to the custom experience.
Preview experience properties
Property

Description

sysId

ID of the recommendation.

name

Title of the preview experience.

description

Message for the preview experience.

recommendationHint

Text that tells the agent why a recommendation is being
suggested.

callToActions

Settings for the guidance action.

actionTypeLabel

Label for the recommended action type.

icon

Icon for the recommendation card.

actionStateLabel

External name of the action state.

actionStateValue

Internal name of the action state.

previewFields

The fields to display in the guidance preview experience.

errorMessage

Error message to display when the recommendation fails
to display.

ariaHidden

On the Recommended Actions grouped list, the sncarousel component passes this property to each card
to determine if the content is hidden within the carousel.
If the card is hidden, you can use this value to set ariahidden or disable any actionable component to true and
avoid accessibility issues.

useCase

Search/RA tab where the guidance is getting rendered.

actionInputs

Guidance Inputs.

actionTypeSysId

Sys Id of the recommendation type.

actionId

Sys Id of the recommendation.

table

Recommended Actions Context table.

tableSysId

Recommended Actions Context table record sys_id.

renderer

Component responsible to render the detailed
experience

secondaryCallToAction

Secondary actions to be shown on card.

isGenius

Is genius result card, used in Search tab genius result.

contextSysId

Recommended Actions context sysId.

actionConfigurations

Recommended Actions actionConfigurations property
value. The Value field is empty by default.

isFullSearchView

If search displayed in full search view of side panel view,
the value is true.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1065


<!-- page 1066 -->
Property

Description

contextInputs

Recommended Actions contextInput property value.
To get the predefined syntax, navigate to All > >
Recommended Actions > Context > Context Inputs and
copy the JSON format of the context inputs.

The following example shows properties and sample values for the preview experience.
"customExpProps": {
"sysId": "e8421a2a436f0210f81d92621ab8f2da",
"name": "Attach and share article",
"description": null,
"recommendationHint": "Knowledge",
"callToActions": [
{
"label": "",
"name": "",
"id": "1e8392aa436f0210f81d92621ab8f291",
"actionBehavior": "contextual_side_panel",
"primary": "true",
"order": "100",
"completionMessage": "Knowledge article
successfully attached."
}
],
"recommendationAction": "",
"actionTypeLabel": "Guidance",
"icon": "magnifying-glass-sparkle-outline",
"actionStateLabel": "New",
"actionStateValue": "new",
"previewFields": null,
"attributes": "",
"errorMessage": "",
"ariaHidden": false,
"useCase": "search",
"actionInputs": {},
"actionTypeSysId": "",
"actionId": "",
"table": "sn_customerservice_case",
"tableSysId": "",
"renderer": "sn-guidance-experience-connected",
"secondaryCallToAction": {},
"isGenius": false,
"contextSysId": "",
"actionConfigurations": {},
"isFullSearchView": false
}
4. Select Edit preview in UI Builder.
The UI page variant opens in UI Builder, where you can add and configure components to
customize the look and feel of the preview experience. For more information, see Working with
components in the UI Builder .
5. Bind the preview experience properties to your preview UI.
Data bindings are in the Config tab of the configuration panel in UI Builder. For more
information, see Data resources in UI Builder .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1066


<!-- page 1067 -->
6. Add and bind scripts to components in your preview UI to dispatch events by using an event
handler to execute or skip a recommendation with a corresponding payload.
The following table shows the list of events that are emitted with respect to the actions perform
by an agent:
Preview experience events
Events handled

Description

ON_SINGLE_CLICK_ACTION_INITIATE

Initiates and completes the action when
an agent selects the action button. This
event passes the following parameters in the
payload:
api.emit(
‘ON_SINGLE_CLICK_ACTION_INIT
IATE‘, {
sysId:
api.context.props.customExpP
rops.sysId,
name:
api.context.props.customExpP
rops.name,
actionStateValue:
api.context.props.customExpP
rops.actionStateValue,
actionMetadata:
api.context.props.customExpP
rops.callToActions[0] ,
table:
api.context.props.customExpP
rops.table,
tableSysId:
api.context.props.customExpP
rops.tableSysId,
contextSysId:
api.context.props.customExpP
rops.contextSysId,
actionType:
api.context.props.customExpP
rops.actionTypeSysId,
actionInputs:
api.context.props.customExpP
rops.actionInputs,
formFieldInputs:
{ <actionInputs key>:
<actionInputs value> },
actionId:
api.context.props.customExpP
rops.actionId,
name:
api.context.props.customExpP
rops.name,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1067


<!-- page 1068 -->
Events handled

Description

actionMetadata:
api.context.props.customExpP
rops.callToActions[0],
actionStateValue:
api.context.props.customExpP
rops.actionStateValue,
}
)
The formFieldInputs contains the
actionInputs, which must be updated
when the event is emitted.
ON_DRILL_DOWN_ACTION_INITIATE

Expands the action and displays more
actions or information after an agent selects
the primary action button. This event passes
the following parameters in the payload:
api.emit(
‘ON_DRILL_DOWN_ACTION_INITI
ATE ‘, {
table:
api.context.props.customExpP
rops.table,
tableSysId:
api.context.props.customExpP
rops.tableSysId,
actionType: <sys_id
for "Guidance" action type/
e38f55b9b72120107d472397ee11
a9be>,
actionInputs:
api.context.props.customExpP
rops.actionInputs,
formFieldInputs:
{"<actionInputs Key>":"<new
value which needs to be
set>"},
actionId:
api.context.props.customExpP
rops.actionId,
sysId:
api.context.props.customExpP
rops.sysId,
name:
api.context.props.customExpP
rops.name,
actionStateValue:
api.context.props.customExpP
rops.actionStateValue,
actionMetadata:
api.context.props.customExpP
rops.callToActions[0],

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1068


<!-- page 1069 -->
Events handled

Description

renderer:
api.context.props.customExpP
rops.renderer,
contextSysId:
api.context.props.customExpP
rops.contextSysId,
sysId:
api.context.props.customExpP
rops.sysId,
name:
api.context.props.customExpP
rops.name }
)
DISMISS_ACTION_CLICK

Cancels the action.
api.emit(
‘DISMISS_ACTION_CLICK‘, {
sysId:
api.context.props.customExpP
rops.sysId
}
)

ACTION_TRIGGERED_PROPAGATION

Enables user to add UI-specific behavior for
guidance actions. This event propagates the
payload details to the parent where this event
can be handled.
api.emit(
‘SN_NEXT_BEST_ACTION_LIST_CO
NNECTED#ACTION_TRIGGERED_PROP
AGATION' ‘, {
"actionSysId":
api.context.props.customExpP
rops.actionId
"actionName":
api.context.props.customExpP
rops.actionConfigurations[api
.context.props.customExpProps
.actionId ][“actionName”]
"actionType": "guidance",
"eventName":
"<eventName>",
"payload": {
}
}

LOG_SEARCH_RESULT_EVENT

Adds the search result logs to the Queued
Signal Events [sys_signal_event_queue]
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1069


<!-- page 1070 -->
Events handled

Description

api.emit(LOG_SEARCH_RESULT_EV
ENT, {actionData:
{actionName: actionId}})
For more information, see Define and bind client scripts to components

.

Customize a guidance detail experience in the UI Builder
Customize how your detail experience looks in the contextual side panel or in a subtab of the
Recommended Actions card using UI Builder. The detail experience can include things such as
user inputs and drill down actions.

Before you begin

Role required: sn_nb_action.next_best_action_author and ui_builder_admin, admin

About this task

You begin by creating a UI page variant of a guidance detail experience. When you create a UI
page variant from a page template, you start with a base structure that you can customize. By
configuring the components and using the component properties, you can change how your
detail experience looks in the contextual side panel or in a subtab.

Procedure
1. Navigate to All > Recommended Actions > Action Types > Guidances.
2. Select a guidance from the Guidances list.
3. Select Create detail UI to create a UI page variant of a guidance detail experience.
This page includes an empty container with the properties listed in the following table.
Detail experience properties
Property

Description

guidanceInputs

The inputs required to perform the guidance.

guidanceOutputs

The outputs of the guidance.

status

The status of the guidance.

guidanceMessage

The message for the detail experience.

guidanceActions

The guidance actions in the detail view.

errorMessages

The error message to display when the recommendation
fails to display.

The following example shows properties and their sample values for the detail experience.
{
"guidanceInputs": {},
"guidanceOutputs": {
"meta": []
},
"status": "waiting",
"guidanceMessage": "",
"guidanceActions": [
{
"label": "Attach",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1070


<!-- page 1071 -->
"action_sys_id":
"1e8392aa436f0210f81d92621ab8f291",
"variant": "primary",
"isExecuted": false,
"completionMessage": "Knowledge article
successfully attached.",
"action_behaviour": "contextual_side_panel",
"primary": true
}
],
"errorMessage": "",
"actionConfigurations": {},
"guidanceId": "",
"tableName": "sn_customerservice_case",
"bare": true,
"scrollable": "none"
}
4. Select Edit detail in UI Builder.
The UI page variant opens in UI Builder, where you can add and configure components to
customize the look and feel of the detail experience. For more information, see Working with
components in the UI Builder .
5. Bind the preview experience properties to your custom detail UI.
Data bindings are located in the Config tab of the configuration panel in UI Builder. For more
information, see Data resources in UI Builder .
6. Add and bind scripts to components in your custom detail UI to dispatch events by using an
event handler to execute, skip, or mark complete a recommendation with a corresponding
payload.
Detail experience events
Events handled

Description

GUIDANCE_ACTION_CLICKED

The action that is selected. This event passes the
action selected to the payload.
api.emit(
‘GUIDANCE_ACTION_CLICKED’,{
model: {
fields: [{'name':
'input',
'value': '100'}]
},
action:
api.context.props.guidanceActions.f
ind(action => action.label ==
"guidance action label");
}
);

Note: In the guidanceActions[n] property
in the response, provide the index number of the
action that you want to apply.
SKIP_GUIDANCE

Skips the guidance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1071


<!-- page 1072 -->
Events handled

Description

api.emit(
‘SKIP_GUIDANCE’
);
GUIDANCE_MESSAGE_PUBLISHED Passes data to an upstream application.
api.emit(
‘SN_GUIDANCE_EXPERIENCE_CONNECTED#G
UIDANCE_MESSAGE_PUBLISHED’,
{
name:'decision-tree-payload'
jsonPayload: jsonObject
}
);
GUIDANCE_MARK_COMPLETE

Marks a custom guidance as completed.
api.emit(
'GUIDANCE_MARK_COMPLETE'
);

GO_BACK_GUIDANCE

Goes back to the previous node in a decision tree.
api.emit(
‘GO_BACK_GUIDANCE’
);

ACTION_TRIGGERED_PROPAGATIONEnables you to add UI specific behavior for guidance
actions. This event propagates the payload details to
the parent where this event can be handled.
api.emit(
‘SN_NEXT_BEST_ACTION_LIST_CONNECTED
#ACTION_TRIGGERED‘, {
"actionSysId":api.context.props.gui
danceId,
"actionName":
api.context.props.actionConfigurati
ons[api.context.props.guidanceId][“a
ctionName”]
"actionType": "guidance",
"eventName": "<eventName>",
"payload": {}
For more information, see Define and bind client scripts to components

.

Create a resource generator in Recommended Actions
Create resource generators that you can use to provide resources for recommendations from
Recommended Actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1072


<!-- page 1073 -->
Before you begin

The Task Intelligence Admin Console (com.sn_ti_admin) plugin must be installed for selecting
the Task Intelligence Classification resource generator type.
Role required: sn_nb_action.next_best_action_author, sn_nb_action.resource_generator_author,
admin

Procedure
1. Navigate to All > Recommended Actions > Resource Generators.
2. Select New from the Resource Generators list.
3. In the Name field, enter a name for the resource generator.
4. In the Context field, select a context.
5. In the Generator type field, select a generator type.
Different types of generators are available that you can use. Some of the generator types
require an additional selection in the Generator field.
For example, if you choose flow as the generator type, you must also select the specific flow to
use. Selecting the lookup icon opens a pop-up window that you can use to select the required
flow.
For more information, see Resource generator types.
6. If applicable, in the Generator field, select a generator.
7. Save the record.
8. On the Generator input form, fill in the fields.
For a description of the field values, see Resource generator inputs form.
The fields that appear in this form section are determined by the selections in the Generator
type and Generator fields.
9. Select Update.
Resource generator inputs form
The form provides information about the generator type and generator inputs.

Resource Generators form fields
The Task Intelligence Admin Console (com.sn_ti_admin) plugin must be installed for selecting
the Task Intelligence Classification resource generator type.

Note:
• You can enter static values for the generator input fields. If the Generator type is Flow or
Decision table, you can use the pill picker to select dynamic values. The context record is
available for selection in the pill picker.
• If the context inputs are defined for a context, they appear in the pill picker for selection.
The context inputs are supported for Flow and Decision table generator types only.
Generator input form
Generator type

Generator inputs

Description

Flow

Generator

The subflow for the resource generator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1073


<!-- page 1074 -->
Generator input form (continued)
Generator type

Generator inputs

Description

Inputs for flow

Inputs for the selected subflow.

Generator

The decision table for the resource
generator.

Inputs for decision table

Inputs for the selected decision table.

Similarity definitions

The similarity solution definition to find
records that are relevant to the context
record.

Top N Results

The number of records to return from
the most relevant records found by the
similarity solution definition.

Scripting

Script include

The script include record, which
is an implementation of the
ScriptingGeneratorFactory template.

AI search

Search field

The context field on which the AI search
is performed.

Top N results

The number of records to return from the
AI search.

Similarity definitions

The similarity solution definition to find
records that are relevant to the context
record.

Trend definitions

The trend definition you want to
associate with this solution definition.

Classification definition

The classification definition with a
classification solution to return the
predicted values or record references
for a field on a table.

Top N Results

The number of values or records to
return from the values or records
predicted by the classification definition.

Solution

The solution record that contains
configuration for recommended input
fields and recommended output fields
for prediction. The solution also contains
preferences whether the fields are autofilled or recommendation messages are
displayed.

Top N Results

The number of values or records
to return from the relevant records
predicted by the solution definition.

Decision table

Similarity

Similarity with Trend

Classification

Task Intelligence
Classification

Configure the arbitration parameters in Recommended Actions
Configure the recommended actions by the frequency of issues or by the order of priority so that
your agents get the guidance that they must help resolve customer issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1074


<!-- page 1075 -->
Before you begin

Role required: sn_nb_action.next_best_action_author

About this task

A mathematical formula determines the priority of the recommended actions that are displayed
to the agents. For most cases, you should use the default values to ensure that the relevant
recommended actions are available for a given context. If you want to alter the frequencies, you
can modify the values.
The recommended actions in the New state appear by ranking. For example, the score for these
actions is calculated by the order of frequency and the priority order of the rule.

Procedure
1. Navigate to All > Recommended Actions > Arbitration Configuration.
2. On the Arbitration Configuration form, fill in the fields.
Arbitration Configuration form
Field

Description

Rule Order Weight
(sn_nb_action.rule_order_weight)

Weight given to an action based on the
priority of the rule that recommends it. The
default value is 0.9.

Recommendation Order Weight
Weight given to an action based on the
(sn_nb_action.recommendation_order_weight) priority of the rule that recommends it. The
default value is 0.9.
Frequency Weight
(sn_nb_action.frequency_weight)

Weight applied based on the number of times
an action is recommended across rules. The
default value is 1.5.

3. Select Save.
Configure force refresh for recommendations
Configure the Trigger Recommendation Refresh data broker to refresh and update the
recommendations based on the results from UI events for precise recommendations. Similarly,
use the ForceRefreshRecommendations method for configuring an explicit refresh
mechanism.

Before you begin

Role required: sn_nb_action.next_best_action_author, or admin

About this task

Prior to the Zurich family release, the recommendations often remain outdated due to refresh
triggers being tied only to updates on primary context records. Starting with the Zurich family
release, you can configure explicit and event-driven refreshes for various context updates
beyond just the primary context table to improve recommendations relevance.
• Explicit refresh mechanism: Enables you to trigger recommendation refreshes manually,
independent of internal context changes, addressing scenarios where event-driven updates
are insufficient.
Call the ForceRefreshRecommendations method. The
ForceRefreshRecommendations method is shipped with the base system as part of the
NextBestActionServiceImpl script include.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1075


<!-- page 1076 -->
ForceRefreshRecommendations method:
sn_nb_action.NextBestActionService().forceRefreshRecommendation
s(input.ruleContextSysIds, input.currentRecordSysId,
input.refreshAllUsers);
• Event-driven refresh: Implements automatic recommendations updates triggered by
predefined system events such as attribute changes on related tables or user interactions like
button clicks or tab navigation.
Configure the Trigger Recommendation Refresh data broker of a UI component in
the UI builder. This data broker is shipped with the base system and is available for all the UI
components of the record pages. Perform the following steps to configure this data broker.

Procedure
1. Navigate to All > Now Experience Framework > UI builder.
2. In the UI builder, open the Workspace experience which you want update.
3. Open the record page containing the UI component for which you want to configure the data
broker.
4. In the content tree, select a UI component.
A panel opens on the right with Configure, Style and Events tabs.
5. In the Events tab, select Execute Data Resource - Trigger Recommendation Refresh 1.
6. On the Configure modal, set the following properties.
Configure modal
Property

Description

Rule Context SysIds

Sysid of the rule context records that
must be applied to the UI component. The
recommendations of these rules are reflected
in the recommendations tab when the event
is triggered.
This property is of String array type.

Current Record SysId

Sysid of the record to which you want to
associate the UI event.
This property is of String type.

Refresh All Users

Refreshes recommendations for all the active
agents, when set to true. By default, the value
is set to false.
This property is of Boolean type.

7. Optional: In the When to trigger drop-down, select one of the following.
Option

Description

Always

Triggers the refresh every time there’s an up­
date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1076


<!-- page 1077 -->
Option

Description

Triggers the refresh when the defined condi­
tion is met.
Conditional

(Optional) Define the condition in the Event
Handler condition field.

8. Select Apply in the Configure modal.

Result

When the configured component is triggered, the recommendations are refreshed and updated
accordingly in the CSM/FSM Configurable Workspace.
Configuring AI search in Recommended Actions
As an admin, configure AI search in Recommended Actions to enable agents to perform an AI
search to find relevant resources.
You can configure AI search in Recommended Actions by performing these procedures.
Steps to configure AI search
Step

Action

Enable the AI search tab in UI
builder

Deselect the Hide Search button in UI Builder to display the AI
search tab in the contextual side panel of your workspace.

Create a context and
select a search application
configuration

• Create a context so that agents can see recommendations
for records from a specific table, such as the Case table.

Map AI search results
with guidance inputs in
Recommended Actions

Map AI search results with guidance inputs to enable the AI
search results to be displayed with appropriate actions.

Automatically map AI search
results with guidance inputs

Automatically create AI search results for a search
configuration application in Recommended Actions.

• Select a search application configuration to specify AI
search as the search engine. This configuration includes
search sources and genius result configurations.

Configuring genius results
In the search profile of your selected search application configuration, link the following Genius
Result configurations to display actionable top results. For more information, see Link a Genius
Result configuration to a search profile .

Genius Result configuration

Description

Catalog item

Displays top search results from the Catalog
Item [sc_cat_item] table. Each answer card
shows a single CI record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1077


<!-- page 1078 -->
Genius Result configuration

Description

People

Displays top search results from the User
[sys_user] table. Each answer card shows a
single user record.

Q&A

Displays top search results extracted from
HTML fields of records on the Knowledge
[kb_knowledge] table and tables that extend
it. Each answer card shows a topic snippet
and an answer snippet extracted from a single
knowledge article.

Now Assist Q&A

Displays the top search results extracted
from the HTML fields of the records on the
Knowledge [kb_knowledge] table and the
tables that extend it. Each answer card shows
an answer snippet extracted by Now LLM from
a knowledge article. For reference, the answer
card also includes a link the user can select to
view the source knowledge article.

Note: Now Assist in the AI Search
application (com.ais_assist) is required
to link the Now Assist Q&A Genius Result
configuration to your search profile. For
more information, see Now Assist in AI
Search .

Customizing Recommended Actions UIB component for AI search
Customize the Recommended Actions UIB component to align with your organization's
requirements:
• Modify titles for the main heading, Recommended Actions tab, and Search tab.
• Modify the order of the Recommended Actions and Search tabs.
• Hide or show Recommended Actions and Search tabs.
For more information, see Recommended Actions UIB setup

.

Explore advanced customization options, such as adjusting the number of results to view on a
page, identifying genius results to add to the search profile, and configuring search sources. For
more information, see Configuring AI Search .
Map AI search results with guidance inputs in Recommended Actions
Create mappings between AI search results and guidance inputs to recommend relevant actions
to agents using AI search or enable agents to use AI search to search for the relevant resources.

Before you begin

Role required: sn_nb_action.next_best_action_author, admin

Procedure
1. Navigate to All > Recommended Actions > Contexts.
2. Select a context for the AI search.
If a message appears about the application scope, select here to be able to edit the record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1078


<!-- page 1079 -->
3. In the Search Application Configuration field, select the Lookup using list icon
and select
either the base system CSM Configurable Workspace Search Config or a custom configuration
that specifies AI search as the search engine and contains your desired search settings.
You can configure the search result display and refinement settings in the search application
configuration. For more information, see Search application configurations .
The [CSM AIS] Configurable Workspace Search Config search application configuration
is provided with the CSM Configurable Workspace store application. To access this
configuration, navigate to AI Search > Search Experience > Search Applications.
4. In the Search result mapping related list, select New.
5. In the Action type field, select Guidance as an action type.
6. In the Action field, select an action to associate with the guidance.
The available actions are determined by the selection in the Action type field.
).
a. In the Action field, select the Lookup using list icon (
In the resulting pop-up window, the Table name field is auto-populated with the table that
stores the available actions for the selected action type.
b. In the Document field, select the Lookup documents using list icon (
action.

) and then select the

c. Select OK.
d. Save the record.
Saving the record displays the required action inputs.
7. Configure the AI search result type.
Option

Steps

a. In the Map genius result field, select No to enable AI
search result mapping to guidance inputs.
Map genius result: No

b. In the Search source table field, select a source table to
map the required fields to guidance inputs.
This field shows all the source tables mapped to the
search profile of your search application configuration.
a. In the Map genius result field, select Yes to enable ge­
nius result mapping to guidance inputs.

Map genius result: Yes

b. In the Genius result configuration field, select a genius
result configuration to map the return fields to guidance
inputs.
This field shows return fields of the genius result config­
uration that is linked to the search profile of your search
application configuration. For more information, see AI
.

8. Save the record.
The AI search parameters display in the pill picker.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1079


<!-- page 1080 -->
9. Map the action inputs.
Action types and actions need inputs. These parameters enable agents to complete an action.
You can choose static values for action inputs or you can use the pill picker to supply dynamic
values.
Option

Steps

Use a static value

Enter a value in the input field or use the lookup icon to se­
lect a value from the list.
a. Select the pill picker next to the field.

Use a pill picker

▪ The context is available in the pill picker.
▪ The outputs from the search source table or genius re­
sult configuration are available in the pill picker.
b. Select the output from the pill picker.

10. Select Update.
Automatically map AI search results with guidance inputs in Recommended Actions
Automatically create AI search results for a search configuration application in Recommended
Actions.
Search application configuration records specify the search engine and settings to use for
search in Recommended Actions. When you choose AI search as an application's search
engine, you can configure the search results and map them to specific actions.
Starting with the Yokohama release, the Recommended Actions application automatically
creates the mapping between search results and actions.
When an admin creates or updates the search application configuration for a context record, the
system automatically creates search result mapping records for each of the search sources in
that configuration.
• If a search source does not have an existing mapping to an action, the system maps the search
source to the Default guidance for search results guidance.
• If a search source has an existing mapping to a specific action, the system keeps that mapping
and does not overwrite it with the default guidance.
Mapping records are stored in the Search result recommended action mapping table
(sn_nb_action_search_result_ra_mapping) and are displayed in the Search result mapping
related list on the context record.
When a context record is saved or updated and search result mappings are created, the system
displays a message: "Based on the selected Search Application Configuration the Search Result
Mapping list has been updated. Please review!"

Adding new search sources
Admins can add search sources to the search profile of a search application configuration. If a
new search source is added to the configuration selected for a context record, the system does
the following:
• Creates a new record in the Search result to recommended action mapping table
(sn_nb_action_search_result_ra_mapping) for the added search source.
• Maps the search source to the Default guidance for search results.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1080


<!-- page 1081 -->
When a search source is deleted from the search profile, the system removes the
corresponding record from the Search result to recommended action mapping table
(sn_nb_action_search_result_ra_mapping).

Refreshing the Search result mapping related list
The system stores search result mapping records in the Search result to recommended action
mapping table and displays them in the Search Result Mapping related list on the context record.
The Search Result Mapping related list includes a Refresh button that admins can use to create
search result mapping records for the search sources within a selected search application
configuration in a context record. Selecting Refresh generates mapping records for any missing
search result mappings in the search application configuration and associates them with the
Default guidance for search results guidance.

Note: Refreshing the Search Result Mapping list does not override existing customerdefined mappings.
Newly created mapping records are active by default. Admins can control which search sources
are displayed to agents by enabling or disabling the Active field on the mapping records.

Search result recommended action mapping table
The Search result recommended action mapping table
(sn_nb_action_search_result_ra_mapping) stores the mapping between search sources and
actions. Records in this table include an Active field which the admin can use to manage the
activation state of search result mappings. When a new record is created in this table, the Active
field is set to true by default.
When an agent performs a search in the Recommended Actions search component in CSM
Configurable Workspace, the system displays the search sources that are marked as active in
the search result mapping configuration. Inactive search sources are excluded from the search
results.
Changes in the search result mapping, such as activating or deactivating a search source, are
automatically reflected in the search results.
When the Active field is disabled for a search source, an admin can create a new mapping for
that source. A search source can have multiple search result mapping records, but only one can
be active at a time.

Conditional UI display for search result mapping
The Recommended Actions context record includes the Search application configuration field.
When an admin selects a configuration in this field, the search result mapping records for the
configuration are displayed in the Search result mapping related list. If the Search application
configuration field is empty, the Search result mapping related list does not appear on the
context record.
Enable AI search in Recommended Actions
As an admin, you can enable the Recommended Actions - AI search on the Front-line case
page, CSM default record page, and CSM Interaction page (for chat, video, walk-up, and email
channels) by setting the hideAgentAssistShowRA UX page property to true.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1081


<!-- page 1082 -->
About this task

The Recommended Actions - AI search is available for the following pages:
• CSM default record page
• Front-line case page
• CSM Interaction record page for chat, video, email, and walk-up channels
The following table shows how you can avail Recommended Actions - AI search feature:
Recommended Actions AI search - version compatibility
Version

Feature availability

New customers starting with Yokohama
release

Recommended Actions - AI Search is an
integral part of the Contextual Side Panel by
default. No additional manual configuration is
required.

Customers who on-boarded before Yokohama
release

Agent Assist is enabled by default with the
option to manually migrate to Recommended
Actions - AI search.
To migrate from Agent Assist to
Recommended Actions - AI Search create
and set the hideAgentAssistShowRA UX
page property to True.

Note: If you already created this
property for enabling Recommended
Actions in the chat interaction record,
you need not create it again.

Procedure
1. Navigate to All.
2. Search for sys_ux_page_property.LIST and press Enter.

Note: If the hideAgentAssistShowRA UX page property already exists, you need
not create it again.
3. Select New.
4. Fill in the fields on the form.
UX page property form
Field

Description

Page

Page for which the property is applicable.
Select CSM/FSM Configurable
Workspace.

Name

Name of the page property. Give the name as
hideAgentAssistShowRA.

Type

True or False

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1082


<!-- page 1083 -->
Field

Description

Value

Enables or disables the property. Set the
value to true to enable the property.

Application

Application scope in which the property is
being created.

Description

Brief description of the UX page property that
you are creating.

5. Select Save.
Enable full view search for Recommended Actions in a configurable workspace
The full view search feature displays the AI search results in a new subtab with an expanded
view. Use the following information to enable this feature in any configurable workspace.

Before you begin

Role required: admin

About this task

AI search results appear in the Recommended Actions tab in the contextual side panel in the
form of guidances that you can act on. Selecting the Full view search icon displays the AI search
results in a new subtab with an expanded view.
When a user selects the Full view search icon, the Recommended Actions application
dispatches an event called RECOMMENDED_ACTIONS ACTION_CLICKED with a type of
raExpandedSearch. This event needs to be handled in the corresponding team layer that wants
to uptake the full view search page. The following code snippet provides an example about how
to navigate to the page with the correct properties.
if (event.payload.actionProps.type == 'raExpandedSearch') {
const { contextTable, contextId, contextSysId,
searchTerm,selectedFilterTab,selectedFacetOptions,
selectedSortOption,actionConfigurations } =
event.payload.actionProps;
helpers.navigate.to('ra-expanded-search',
{ 'contextTable':
contextTable, 'contextId': contextId }, {'contextSysId':
contextSysId,
'searchTerm': searchTerm, 'selectedFilterTab':
selectedFilterTab,
'selectedFacetOptions': selectedFacetOptions,
'selectedSortOption':
selectedSortOption, 'actionConfigurations':
JSON.stringify(actionConfigurations)}, false, false, 'current');
}
Use the following steps to define the full view search page in a configurable workspace.

Procedure
1. Navigate to UI Builder and select your workspace experience.
2. Create a new page with the following URL path: ra-expanded-search.
This is the path that you will use in the above script to open the full view search page. For more
information, see Create a blank page
in the UI Builder documentation.
3. Select the following required parameters for the page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1083


<!-- page 1084 -->
◦ contextTable
◦ contextId
4. Optional: Select the following optional parameters for the page.
◦ contextSysId
◦ searchTerm
◦ selectedFilterTab
◦ selectedFacetOptions
◦ selectedSortOptions
◦ actionConfigurations
5. Open the page variant that you created in step 2 by navigating to the sys_ux_screen.list and
selecting the page variant from the UX Screens list.
6. Use a copied version of the page definition created by RA for full view search.
For example, Recommended Actions Expanded Search Default (sysId b646da9443a8c2108d82c8641ab8f2f3.

Note: It's not advised to use the mentioned page definition directly.
7. Create a viewport inside the page variant to load the guidance detailed experience to make it
work in the full view search page.
a. Create an app route record by navigating to sys_ux_app_route.list and selecting New.
b. Fill in the fields based on how you have configured the full view search page.
c. Select Submit.

Note: Be sure to use a different route/parent macroponent composition element ID to
avoid any conflicts with the CSM Recommended Actions Full View Search page.
Recommended Actions for Customer Service
Use Recommended Actions for Customer Service to display relevant actions to agents based on
the context of a record.
The Recommended Actions for Customer Service application displays recommendations
for case records in CSM Configurable Workspace. Agents can take the actions provided by
the recommendations to help customers and resolve their issues. Agents can also use this
application to perform an AI search to find relevant resources.
The Recommended Actions for Customer Service application provides predefined guidances
and recommendation context records tailored for Customer Service Management. It also
provides workspace configurations that automatically display recommended actions and search
results in the contextual side panel.
For more information about recommended actions and AI search results, see Recommended
Actions.

Context records
The Recommended Actions for Customer Service application provides context records for the
Case and Interaction tables. A context enables agents to see recommendations for records from
a specific table when certain rules are met.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1084


<!-- page 1085 -->
• Case Context record
• Interaction Context record

Guidances
The Recommended Actions for Customer Service application includes custom guidances for the
following tables:
• Knowledge
• Case
• Incident
• Problem
• Change Request
These guidances enable search results from the corresponding search source tables for the
Case Context record. Customer service agents can see these results in the Recommended
Actions tab in the contextual side panel.

Plugin
The Recommended Actions for Customer Service application (app-cs-recommended action) is
available from the ServiceNow Store .
This application has a dependency on the Recommended Actions application.

Request apps from the ServiceNow Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Contexts in Recommended Actions for Customer Service
A context enables agents to see recommendations for records from a table when certain rules
are met. These recommendations can help agents by suggesting actions to take based on the
record context.
The Recommended Actions for Customer Service application provides context records for the
Case and Interaction tables.

Case Context record
The Recommended Actions for Customer Service application provides the Case Context record
for the Case table.
Context records include rules and recommendations. The Case Context record also includes
search result mapping records for the search source tables. The following tables are mapped to
specific guidance actions:
• Knowledge
• Case
• Incident
• Problem
• Change Request
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1085


<!-- page 1086 -->
The remaining tables are mapped to the Default guidance for search results guidance action.

Interaction Context record
The Recommended Actions for Customer Service application includes a context record and
search mapping record that automatically displays search results from the Knowledge table for
chat interaction records.
The Interaction Context record enables search based on the short description of the interaction
record and displays relevant articles. The search mapping record maps knowledge results to the
Share KB in chat interactions guidance. During chat interactions, the system accurately displays
knowledge results in the Search tab in the contextual side panel.
The Recommended Actions for Customer Service application also includes a search mapping
record that maps all search source tables, with the exception of the Knowledge table, to the
Default guidance for search results guidance action. During chat interactions, the system
accurately displays results for the search source tables in the Search tab.
Follow these steps to enable recommendations in the contextual side panel for chat interactions:
1. Navigate to All > Recommended Actions > Contexts > CSM Interaction context.
2. Enable the Active check box.
3. Select Update.

Fix script
The Recommended Actions for Customer Service application includes a fix script that checks for
existing context records associated with the same table as the Interaction Context record.
• If one or more records for the same table are found, the Interaction Context record is
deactivated.
• If no existing context records for the same table are found, the Interaction Context record
remains active.
This avoids duplicate or conflicting context records.

Activating or deactivating context records
When activating or deactivating context records, the system displays alert messages so that
contexts can be managed effectively without causing conflicts.
If multiple contexts are activated for the same table, the system alerts the admin to specify the
correct contextSysID property in the Recommended Actions component on record pages for the
referenced table.
If an admin activates multiple contexts for the same table, the system displays a message
advising the admin to specify the correct contextSysID property on the Recommended Actions
component for all record pages that reference this table.
The message includes information about how to configure the contextSysID property on the
Recommended Actions component and what happens if the correct context is not specified.
The system logs all context activation and deactivation events along with the displayed alerts.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1086


<!-- page 1087 -->
Guidances in Recommended Actions for Customer Service
A guidance is an action that an agent can take or information that an agent can share as they
work to resolve tasks, such as customer service cases. Guidances appear as cards in the
contextual side panel in a workspace.
The Recommended Actions for Customer Service application includes custom guidances for the
following tables:
• Knowledge
• Case
• Incident
• Problem
• Change Request
These guidances enable search results from the corresponding search source tables for the
Case Context record. Customer service agents can see these results in the Recommended
Actions tab in the contextual side panel.

Knowledge guidance
The Case Context record includes a search result mapping record for the Knowledge table that
maps search results to the Attach and share article guidance. When an agent is viewing a case
record, preview cards for Knowledge search results in the Recommended Actions tab include the
Attach and share article action.

Case guidance
The Case Context record includes a search result mapping record for the Case table. This record
maps search results from the Case table to the Case resolution guidance.
The Case resolution guidance is configured with dynamic actions that are determined by the
state of the case returned by the search. These actions include:
• Link as parent case: This action links the recommended case as a parent to the current case.
(The current case is a non-major case and the recommended case is major/non-major).
• Link as child case: This action links the recommended case as a child to the current case. (The
current case is a major case and the recommended case is a non-major case.)
• Copy resolution: This action copies the resolution code and resolution notes from the
recommended case to the current case. This action is available when the recommended case
is in the Closed or Resolved state.

Note: If the current case and the recommended case are both major cases, no action is
included on the preview card.
The preview card for the case resolution guidance includes the case title and number, the
current state and priority, the case description, and the dynamic action.

Interaction guidance
The Case Context record includes a search result mapping record for the Incident table. This
record maps search results from the Incident table to the Link incident to current case guidance.
Agents can link the recommended incident by selecting the Link incident action on the preview
card in the Recommended Actions tab. This action does the following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1087


<!-- page 1088 -->
• Updates the Incident field on the case record with the incident number.
• Adds an entry to the work notes.
• Displays a message when the incident is successfully linked. A message is also displayed if
the linking fails.
The preview card for the Link incident to current case guidance includes the incident title and
number, the current state and priority, and a brief description of the incident.

Problem guidance
The Case Context record includes a search result mapping record for the Problem table.
This record maps search results from the Problem table to the Link problem to current case
guidance.
Agents can link the recommended problem by selecting the Link problem action on the preview
card in the Recommended Actions tab. This action does the following:
• Updates the Problem field on the case record with the problem number.
• Adds an entry to the work notes.
• Displays a message when the problem is successfully linked. A message is also displayed if
the linking fails.
The preview card for the Link problem to current case guidance includes the problem title
and number, the current state, the number of related incidents, and a brief description of the
problem.

Change request guidance
The Case Context record includes a search result mapping record for the Change Request table.
This record maps search results from the Change Request table to the Link change request to
current case action.
Agents can link the recommended change request by selecting the Link change request action
on the preview card in the Recommended Actions tab. This action does the following:
• Updates the Change Request field on the case record with the change request number.
• Adds an entry to the work notes.
• Displays a message when the change request is successfully linked. A message is also
displayed if the linking fails.
The preview card for the Link change request to current case guidance includes the change
request title and number, the current state, the risk level and type of change, and a brief
description of the change request.
Recommended Actions in the chat interaction record
The Recommended Actions feature is available by default in the contextual side panel for chat
interaction records.
This feature appears as the first tab in the contextual side panel and is available for interactions
of type chat.
The Recommended Actions feature is enabled by default for new (zboot) customers. This feature
replaces Agent Assist, which is disabled from the contextual side panel.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1088


<!-- page 1089 -->
The Recommended Actions feature includes two tabs:
• Recommendations: displays relevant actions based on the context of the chat interaction
record.
• Search: displays relevant search results based on the short description of the chat interaction
record.

hideAgentAssistShowRA UX page property
Enabling Recommended Actions for chat interaction records is controlled by the
hideAgentAssistShowRA UX page property, which is only available for new customers.
Existing customers that want to disable Agent Assist in the contextual side panel and enable
Recommended Actions can create this UX page property.
1. Navigate to All > Now Experience Framework > Experiences.
2. Select CSM/FSM Configurable Workspace.
3. Select New in the UX Page Properties related list.
4. Create the property with the following values:
a. Name: hideAgentAssistShowRA
b. Type: true | false
5. Set the property to true.
6. Select Save.

Recommended Actions component contextSysId property
The Recommended Actions (RA) component includes the contextSysId property, which
determines the rules and data sources that are evaluated to provide recommendations and
search results. This property is automatically set to the default context for case records and
displays accurate recommendations and search results on the Front-line case page.
This change to the contextSysId property only applies to new customer instances where the
Recommended Actions component is added to the Front-line case page. Existing customers are
not impacted.

Machine learning solutions for Customer Service Management
Machine learning in Customer Service Management helps with case creation, assignment, and
resolution.

Task Intelligence for Customer Service

Use the following AI capabilities to automate
several routine tasks across the case life cycle
and enable agents to focus on complex case
resolution.
• Record categorization
• Sentiment analysis
• Language detection
• Document intelligence

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1089


<!-- page 1090 -->
Predictive Intelligence for CSM solution
definitions

Use predictive intelligence solution definitions
to assist agents with a variety of tasks.
Solution definitions predict one or more output
fields based on a configured input field.

Trending case topics

Identify clusters of cases with similar issues
and pinpoint factors that drive up case
volume. Each cluster of cases represents a
trending case topic.

Similar case recommendations

Enable customer service agents to easily
find similar cases that can provide helpful
information about cases they are currently
working on.

Estimated time to resolve a case

Predict the estimated time to resolve a case
based on attributes such as the case short
description, category, priority, and assignment
group.

Predictive Intelligence for case management

Predict values for a case, such as the category,
priority, and assignment group, based on
information entered in the short description.

Auto-responder notifications

Use auto-responder notifications to share
relevant content in email notifications that can
help deflect cases.

Task Intelligence for Customer Service
Task Intelligence for Customer Service offers several AI capabilities such as language detection,
record categorization, Sentiment Analysis, and Document Intelligence. These capabilities
automate several routine tasks across the case lifecycle and enable agents to focus on complex
case resolution.
Task Intelligence features on the Case form

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1090


<!-- page 1091 -->
Task Intelligence for Customer Service features
Feature

Record categorization

Description

Task Intelligence for Customer Service provides the following
types of categorization:
• Multi-lingual record categorization: Use a machine learning
model that understands English, French, German, and
Spanish to evaluate text in emails and records created
in different languages and to predict and automatically
populate fields on records in the Case table, tables that
extend the Case table, and the Interaction table.
This feature uses one machine learning model to support
multiple languages so you no longer need one model per
language. The model can also support additional languages
on demand.
• Attachment-based record categorization: Use a
machine learning model to parse email or record text and
attachments and automatically populate fields on case and
interaction records based on signals contained in the text.
This feature evaluates text in the email subject and body,
the record short description and description, and the
attachments and uses all of this information to predict
field values. As a result, you can integrate predictions with
any routing engine and automatically route records to the
appropriate service desk based on these values.

Sentiment Analysis

Detect and display the initial and ongoing sentiment of
customer service cases by evaluating the following text:
• Email subject and body
• Case short description and description
Help agents gauge customer emotions and better prioritize
their work while enabling them to provide more empathetic
and compassionate customer experiences.
Sentiment Analysis is currently available in English.

Language detection

Identify the language used to create a customer service case
and add the language to the Language field for the case
record. This feature can identify up to 20 different languages.
Add the identified language to the case as a skill, which is
stored in the Task Skills table. This table can be configured as
a related list on the Case form.
Use the identified language to route cases to assignment
groups and agents with the necessary language skills.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1091


<!-- page 1092 -->
Task Intelligence for Customer Service features (continued)
Feature

Document Intelligence

Description

Document intelligence reduces the time needed to resolve
the case by automating some of the routine case tasks, which
enables agents to focus on more complex case resolution.
Extract relevant information from PDF and image files, such as
credit card numbers, vendor names, or customer addresses,
and add that information to fields on the case.

Task Intelligence Admin
Console

The Admin Console provides a business friendly interface
that you can use to create, train, and deploy machine learning
models to predict field values for records, extract sentiment,
and detect language.
The models provide flexible options to either auto-fill values on
the records or to provide recommendations only, depending
on the sensitivity of those fields. An option is also available to
run the model in the background only for monitoring purposes.

DocIntel Admin experience

The Document Intelligence application includes the DocIntel
Admin experience, which provides an easy-to-use interface
that you can use to do the following:
• Create and configure document processing use cases
• Monitor the performance of Document Intelligence use
cases
For more information, see Create a Document Intelligence use
case.

Similar case recommendation

Use the Similar Case Recommendation feature to quickly
locate similar cases that offer valuable insights into the current
issue. Also, use this feature to suggest cases that might be
related to major problems, helping you provide more informed
and efficient support.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Task Intelligence for Customer Service application
The Task Intelligence for Customer Service application (com.snc.csm_ml_task) is available from
the ServiceNow Store. This application has the following plugin dependencies:
• Predictive Intelligence for Customer Service Management (com.snc.csm_ml)
• Customer Service (com.sn_customerservice)
• Skills Management (com.snc.skills_management)
• Dynamic Translation (com.glide.dynamic_translation)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1092


<!-- page 1093 -->
• ServiceNow Language Detection Service Spoke (com.glide.language_detection_spoke)
• Predictive Intelligence - Task Intelligence (com.glide.platform_ml_task)
• Admin Center for Task Intelligence (com.sn_ti_admin)

Configuring Task Intelligence for Customer Service
After installing the Task Intelligence for Customer Service application, you can configure the
different features and use the Task Intelligence Admin Console to create models. For more
information, see:
• Install and configure Task Intelligence features
• Set up and deploy Task Intelligence models

Using Task Intelligence for Customer Service
Use the Task Intelligence features to complete the following tasks:
• Create field prediction and sentiment models for case and interaction records
• Review and submit values extracted by Document Intelligence
• Review Task Intelligence analytics and prediction history
For more information about these tasks, see Use Task Intelligence for Customer Service.
Record categorization
The record categorization feature included with Task Intelligence for Customer Service uses
machine learning models to evaluate text, predict field values, and automatically populate fields
on case and interaction records.
Record categorization supports multiple languages and can scan attachments in addition to
evaluating text from emails and records. Use this feature to categorize cases, case types, and
interactions from multiple channels including email, web, and chat.
You can use the results of the categorization to automatically route records to the right service
desk, which avoid the need for multiple email inboxes and RPA bots. Auto- routing also frees up
your employees to work on other tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1093


<!-- page 1094 -->
Case form with predicted and recommended field values

Predicted field values
On case and interaction records, the fields that contain predicted values are identified with an AI
icon and label (
). These fields also include an information icon that displays a message with
additional context about the predicted values.

Note: in CSM Configurable Workspace, the AI icon is persistent over the life-cycle of the
record. In Core UI, the AI icon is removed when the agent changes the field value.
In CSM Configurable Workspace and Core UI, the fields on the record that contain predicted
values are identified with the Predicted or Recommended messages.

Recommended field values
Fields that are predicted by AI include recommended values. When an agent selects a predicted
field, the system displays a drop-down list that includes the top three recommendations at the
top of the list followed by all other values. This feature is available for the following types of fields:
• Choice lists
• Single lookup
• Multi lookup
• Single and multi text fields
If the top three recommendations aren’t available, the system displays a message in the Top
Recommendations section of the dropdown list that no predictions are available. The other
values follow this message.
The agent can select any value from the dropdown list, either one of the top three recommended
values or one of the other values. The agent can also type in the field and filter the results in the
dropdown list, except the top three recommendations which are always displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1094


<!-- page 1095 -->
Note: The top three recommendations remain in the dropdown list through the case life
cycle regardless of the selected field value.

Filtering inactive field values from predictions
Enable the sn_csm_ml_task.case.categorization.enable_inactive_filter
to remove inactive field values from predictions. The default setting for this property is false.

AI prediction banner
When a case record includes a categorization prediction, the system displays a banner at the top
of the record. The banner is displayed when there is atleast one field with auto-fill predictions in
categorization models. The banner is displayed for records in the Case table and extensions of
the Case table.

Note: The banner is displayed in CSM Configurable Workspace and in the Core UI.
The system displays the banner when there is at least one field with an auto-fill prediction in
categorization models or when one of the extracted fields hasn’t been reviewed by the agent.
The banner is displayed for records in the Case table.

Note: If the agent changes the predicted value, the banner is removed. If all predicted
fields are recommended, the banner isn’t displayed.
The banner can be enabled or disabled by the sn_csm_ml_task.ui.banner.enabled
system property.

Prediction feedback
The system stores feedback on prediction results in the Predictor Result [ml_predictor_results]
table. ml_admin role can access the table and view the results.
• Autofill: A value is considered to be predicted correctly (set to true) if the predicted value and
the final value are the same.
• Recommendation: A value is considered to be predicted correctly if any one of the predicted
values matches the final value.
The Predictor Result table also stores information about skipped and failed predictions. For
more information about this table, see Components installed with Task Intelligence for Customer
Service.

Multi-lingual record categorization
Use a machine learning model that understands the following languages to evaluate text in
emails and records created in different languages and to predict and automatically populate
fields on cases, case types, and interactions.
• English
• French
• German
• Spanish
Multi-lingual record categorization uses one machine learning model that is trained to
understand multiple languages. This model can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1095


<!-- page 1096 -->
• Understand the text in emails and records.
• Evaluate the text and predict field values.
• Add the predicted values to fields on cases, case types, and interactions.
Multi-lingual record categorization can support the following additional languages on demand:
• Arabic
• Chinese (PRC)
• Chinese (Taiwan)
• Dutch
• Italian
• Japanese
• Korean
• Polish
• Portuguese
• Russian
• Thai
• Turkish

Note: If you must evaluate emails or cases in these additional languages, reach out to the
product team for support.

Attachment-based record categorization
Attachments can include valuable signals that help support desks to categorize and route
records automatically. To take advantage of attachment information, you can use a machine
learning model to parse email and record text and attachments and automatically populate fields
on cases, case types, and interactions based on signals contained in the text.
The model can predict information about a case based on:
• Text in the subject line and body of a customer email.
• Text in the short description and description of a case or interaction.
• Text in email and record attachments.

Note: The model can be configured to use different fields for prediction.
Attachment-based categorization uses all of this information to predict field values. As a result,
you can automatically route records to the appropriate service desk based on these values.
Related topics
Configure record categorization
Task Intelligence Admin Console
Create a model to predict record fields
Sentiment Analysis
Sentiment Analysis can help you gauge customer emotions, enabling you to provide more
empathetic and compassionate customer experiences.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1096


<!-- page 1097 -->
Use the sentiment analysis feature included with Task Intelligence for Customer Service to:
• Evaluate email and case text.
• Identify the current sentiment of new cases.
• Identify the ongoing sentiment of updated cases.
• Display this information to agents and managers.
Case list with sentiment fields

Agents can use current case sentiment to prioritize their work and ongoing sentiment as it trends
over time to see if cases are moving in the right direction.
Managers can use sentiment to route cases to agents with the right empathy skills, monitor
cases and reassign as needed, and avoid escalations. Manager can also identify coaching
opportunities by looking at cases that ended on a negative sentiment.

Note: In the Zurich release, the sentiment analysis feature can predict sentiment for cases
created in English.

Sentiment analysis machine learning models
Sentiment analysis uses a pre-trained machine learning model to evaluate email and case text
and predict sentiment. This analysis takes place when a case is created and when it is updated
by the customer.
Sentiment analysis for cases
Cases scenario

When a case is created

Description

The sentiment analysis model evaluates the following text
to make a prediction:
• Text in the subject line and body of emails.
• Text in the short description and description of cases.
If the model can make a prediction, it returns the following
information:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1097


<!-- page 1098 -->
Sentiment analysis for cases (continued)
Cases scenario

Description

• A sentiment label and corresponding sentiment level.
◦ Positive (1.0)
◦ Neutral (0.5)
◦ Negative (0.0)
• A confidence level for the prediction.
If the model can make a prediction, the sentiment is
added to the Original sentiment field.
If the model can't make a prediction, the Original
sentiment is not set.
This system stores the sentiment prediction information in
the Predictor Results for Task table.
When a case is updated

The sentiment analysis model evaluates the following text
to make a prediction:
• The text from the body of a reply email.
• Comments that a customer adds to the case.
If the model can make a prediction, it returns the following
information:
• An updated sentiment label and corresponding
sentiment level.
• A confidence level for the prediction.
The system:
• Updates the Current sentiment field with the current
sentiment.
• Compares the updated current sentiment to the original
current sentiment, calculates the change in sentiment,
and updates the Sentiment over time field.
◦ If there is an increase in the score, the Sentiment
over time field shows Improving.
◦ If there is a decrease in the score, the Sentiment over
time field shows Declining.
◦ If there is no change in the score, the Sentiment over
time field continues to display the previous value.

Note: If the Original sentiment is Neutral

and the Current sentiment is Neutral, then the
Sentiment over time is Neutral.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1098


<!-- page 1099 -->
Sentiment analysis for cases (continued)
Cases scenario

Description

If the model can't make a prediction, no information gets
recorded and the value in the Current sentiment field
remains the same.
For more information about the pre-trained machine learning model, see Create a model to
predict case sentiment.

Prediction feedback
The system stores feedback on prediction results in the Predictor Result [ml_predictor_results]
table. Users with the ml_admin role can access the table and view the results. For sentiment
analysis:
• The default value in the Predicted correctly field for each sentiment prediction is set to true.
• The Final input value and Final output value fields remain empty because sentiment analysis
predictions do not collect feedback from agents.
The Predictor Result table also stores information about skipped and failed predictions. For
more information about this table, see Components installed with Task Intelligence for Customer
Service.
Related topics
Configure Sentiment Analysis
Configure Sentiment Analysis
Create a model to predict case sentiment
Language detection
The language detection feature uses a pre-trained model to detect the language used to create
customer service cases. You can configure the model to add the language to the Language field
on the case record and/or add the language as a skill for the case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1099


<!-- page 1100 -->
Agents can save time by not having to manually select the language for each case or rely on a
manual process for case routing. You can use the language skill stored in the Task Skills table to
route cases to the assignment groups and agents with the necessary language skills.
• Cases can be routed automatically with Advanced Work Assignment (AWA)

.

• Cases can be assigned to agents based on language skills using the assignment workbench.
• Cases can be assigned based on the value in the Language field.

Note: Routing based on detected language must be configured separately.
The language detection feature supports 20 different languages. For details, see Languages
supported by Task Intelligence .

Language detection flow
Detecting the language used to create a case is based on a flow, Task Intelligence Case
Language Detected, which is available with the Task Intelligence for Customer Service
application. This flow is triggered at case creation with the condition that at least one of these
case fields is not empty:
• Short description
• Description
When a case is created, the system calls the Detect Language action in the Dynamic Translation
spoke
which evaluates the text and returns the detected language.
If the returned language confidence is above the defined confidence threshold, the system
performs a check to see if the language exists in the Languages [sys_language] table. It performs
this check by matching the language code to the value in the ID field.
If the language exists in the Languages table, the system does the following, depending on the
language detection model configuration:
• Adds the language to the Language field in the Case table.
• Stores the prediction results in the Predictor Results for Task table [ml_predictor_results_task].
• Stores the language skill in the Task Skills table [task_m2m_skill].
For more information, see Create a model to detect case language.

Prediction results
The system stores feedback on prediction results in the Predictor Result [ml_predictor_results]
table. Users with the ml_admin role can access the table and view the results.
For language detection, the Predictor Result table stores the prediction results from the
Language Detection Service spoke. The Detected Language field stores the language returned
by the Language Detection Services spoke.
The Predictor Result table also stores information about skipped and failed predictions. For
more information about this table, see Components installed with Task Intelligence for Customer
Service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1100


<!-- page 1101 -->
Related topics
Configure language detection
Task Intelligence Admin Console
Create a model to detect case language
Document Intelligence for Customer Service
Use the Document Intelligence for Customer Service feature to extract relevant information from
email and case attachments, such as credit card numbers or customer addresses, and add that
information to cases.
Document Intelligence for Customer Service extracted fields

Agents can review values for extracted fields and make corrections as needed by accessing the
Document Intelligence interface directly from the case. From this interface, agents can confirm
correct values, fix incorrect values, and continue to train the model. This HITL/Human In the
Loop interaction of verifying the recommended values enables agents to refine the model and
continually improve performance.

Predicted field values
In CSM Configurable Workspace and Core UI, the fields on the Case form that contain Document
Intelligence predicted values are identified with an AI icon ( ) and label. These fields also
include an information icon that displays a message with additional context about the predicted
values.

Note: The system displays the AI icon automatically. The agent doesn’t need to refresh
the record page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1101


<!-- page 1102 -->
In CSM Configurable Workspace and Core UI, the fields on the Case form that contain Document
Intelligence predicted values are identified with the message Predicted from DocIntel.

Prediction banner
The system displays a banner at the top of a case record that contains one or more Document
Intelligence field predictions. The banner is displayed:
• When there is at least one field with an auto-filled prediction from a categorization model.
• When one or more of the extracted fields haven’t been reviewed by the agent.
• When the fields are being updated.
• When the fields can’t be generated or predicted.
Once an agent reviews the field, the banner is removed.
The banner is displayed for records in the Case table, extensions of the Case table, and
interaction records. The banner is displayed in the Core UI and CSM Configurable Workspace.
The banner can be enabled or disabled by the sn_csm_ml_task.ui.banner.enabled
system property.

DocIntel Admin experience
The DocIntel Admin experience provides an easy-to-use interface that you can use to do the
following:
• Create and configure document processing use cases
• Monitor the performance of Document Intelligence solutions
The DocIntel Admin experience is available with the Document Intelligence Admin
(com.snc.docintel_admin) store app. This app automatically activates the flows and properties
required by Document Intelligence for Customer Service.
Access the DocIntel Admin experience through the Task Intelligence Admin Console:
1. Navigate to Task Intelligence for Customer Service > Setup.
2. In the Explore related applications section of the console, select Open DocIntel in the
Document Intelligence card.

Note: If Document Intelligence Admin isn’t installed, the home page displays a link that
you can use to download and activate the application.
For more information, see the following topics:
• Create a Document Intelligence use case
• Monitor Document Intelligence performance
.

Use Cases list
From the DocIntel Admin experience, select Use Cases in the header to display a list of the use
cases. The Use Cases list uses a default filter with an OR condition to show use cases for:
• Application = Task Intelligence for Customer service -or• MLUC ID = MLUC CSM-00003
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1102


<!-- page 1103 -->
Note: The user can’t modify these filter conditions from the advanced view.
Each use case has an MLUC ID number that is automatically assigned when the use case is
created. This ID number is used for machine learning usage tracking. The Task Intelligence for
Customer Service application manages the MLUC ID for Document Intelligence for Customer
Service use cases.

Document classification
With the system administrator role, you can create document classification use cases
and
define the classes or categories for the AI to detect and apply to documents. This process is
useful in situations where there are multiple types of documents that must be evaluated.
Set up a document classification use case in the following steps.
1. Create a document classification use case.
Define the name and properties for the use case.
2. Create a document class.
Define the classes or categories that the AI learns to detect and apply to documents.
3. Create a document task
class.

for document classification and upload sample documents for each

4. Train a use case.
Initiate a training job to provide user inputs from completed document tasks to the AI for
continuous improvement.
Related topics
Document Intelligence
Configure Document Intelligence for Customer Service
Review and submit values predicted by Document Intelligence
How Document Intelligence for Customer Service works
Document Intelligence for Customer Service performs a series of steps to extract relevant
information from email and case attachments and add that information to fields on the case
record.

Use cases
A use case, previously known as a task definition, is a template that is used to define the
structure of a type of document you want to process. A use case is made up of the use case
record and its related fields, field groups, integrations, flows, and all the related machine learning
(ML) models. For more information, see Set up document extraction use cases .
Document Intelligence use case components
Component

Description

Fields

Identifies a field that you want to extract a value for. A use
case includes the list of fields to extract from case and email
attachments and a mapping of the extracted values to fields in
the Case table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1103


<!-- page 1104 -->
Document Intelligence use case components (continued)
Component

Description

Field groups

Field groups help Document Intelligence extract data from
documents with tables, check box lists, and other logical
groupings of fields.

Document tasks

A document task includes one or more attached documents
that are used to train the use case to identify and extract
the correct information. Document tasks are stored in the
Document Tasks related list on the Use Case form.
The Document Intelligence feature creates these tasks for
each case with valid attachments. Each task trains the model.
In CSM Configurable Workspace, agents can view these tasks,
confirm or correct extracted values, and continue to train the
model.

Integrations

Select conditions that tell the Document Intelligence feature
when to extract values. The system creates tasks for those
cases that meet the specified conditions.
For example, you can add a condition on the Category field
where [Category] [is] [Credit Card].
At run time, the system evaluates the active use cases
and identifies the use case to use for the case based on
the integration. The first active use case that matches the
integration for the case or case type is selected.
If there are use cases for the case or case type but none that
match the integrations, then no use case is selected.
You can create one integration for a use case. If a use case has
more than one integration, the system uses the latest one.

Note: When creating an integration, make sure that the
Create Flow check box remains unchecked.

Users with the ti_admin role or the ti_analyst role can create use cases for cases and for case
types. At run time, the system identifies the correct use case based on the case or case type
when a case is created and has a valid attachment. If there is no use case for a specific case
type, the system goes up in the hierarchy chain until it finds a use case to use.
Use cases are stored in the Use Case (di_task_definition) table.

Extraction modes
A use case includes an extraction mode that determines how the data is extracted in the
document task and how the task is processed. The mode changes the behavior of the fields in
the Document Intelligence workspace.
DocIntel uses the following extraction modes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1104


<!-- page 1105 -->
Document Intelligence use case extraction modes
Extraction mode

Recommendation

Definition

Provides recommendations for the extracted
fields in the Document Intelligence workspace.
Agents can choose the recommended value
for a field or manually enter a value. All fields
must be reviewed.
Recommendations are ordered based on
how confident the AI is in the prediction. As
Document Intelligence continues processing
your documents, recommendations can
improve over time.

Auto-fill

Adds values for the extracted fields in the
Document Intelligence workspace. All fields
must be reviewed.
Auto-fill works only if the AI has enough
confidence to make the prediction. You can
change the confidence threshold by updating
the Auto-fill threshold field in the use case.

Fully automated
(Straight through processing)

DocIntel extracts the data for all fields
and processes the document task if the
confidence scores for all required fields are
above the defined confidence threshold.
DocIntel becomes more confident over time,
as it processes more and more documents.
Choose Fully automated mode for frequently
processed documents or if you’re confident in
the system.

Extraction labels
In CSM Configurable Workspace, the fields on the Case form that contain Document Intelligence
predicted values are identified with an AI icon ( ) and label. These fields also include an
information icon that displays a message with additional context about the predicted values.
In Core UI, the fields on the Case form that contain Document Intelligence predicted values are
identified with the message Predicted from DocIntel.
• For Fully automated mode, the message appears below each extracted field returned by the
task. The values and messages for each field are added to the case before the agent views the
case record.
• For the other extraction modes, the message appears below the extracted fields after the
agent reviews the extracted values in the Document Intelligence interface, confirms or corrects
values, and submits those values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1105


<!-- page 1106 -->
Predicted field values
In CSM Configurable Workspace, the fields on the Case form that contain Document Intelligence
predicted values are identified with an AI icon ( ) and label. These fields also include an
information icon that displays a message with additional context about the predicted values.
In Core UI, the fields on the Case form that contain Document Intelligence predicted values are
identified with the message Predicted from DocIntel.

Performance
The Document Intelligence for Customer Service feature needs time to identify cases with
attachments, scan the attachments, and make recommendations for case fields. The response
time also depends on factors such as case with attachment volume and data center location.
The system displays notifications to the user for the following scenarios:
• If the extraction fails.
• If the extraction is too slow.
• If there are no attachments.
• If there are unexpected attachments.

How it works
When a case is created, Document Intelligence for Customer Service checks to see:
• If the case has one or more attachments.
• If the attachment types are specified in the

sn_csm_ml_task.case.docintel.parsing_supported_types system property.

If yes, the feature:
• Identifies the right use case to use based on the case or case type and the use case
integrations.
• Creates a task using the use case, the sys_id of each attachment, and the case reference.
• Sends the task, attachment sys_ids, and case reference as inputs to the prediction model.
• Uses optical character recognition (OCR) solutions to extract data from the documents.
• Sets the status of the task to Done once the solution has completed.
• If the extraction mode in the use case is set to Fully automated, the extracted values are added
to the case.
• If the extraction mode is set to Autofill or Recommendation, the agent can validate the
extracted values in the Document Intelligence workspace.
The agent can open a case and review the predicted fields or review the prediction task by
selecting Review in DocIntel and opening the Document Intelligence workspace
interface in a
separate tab. From this interface, agents can:
• Review each predicted field.
• Confirm correctly predicted values.
• Update incorrect or missing values.
• Submit the changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1106


<!-- page 1107 -->
Similar case recommendation
The Similar Case Recommendation feature enables customer service agents to quickly locate
similar cases that offer valuable insights into the current issue.
This feature also suggests cases that might be related to major problems, helping agents provide
more informed and efficient support.
With the Similar Case Recommendation feature, agents can:
• Identify similar cases.
• Copy resolution notes from resolved cases.
• Link the current case to a similar one.
• View and submit the current case as a major case candidate. The system displays three similar
open and resolved cases.
• View similar major cases first and link the current case as a child to a major case.
When using similarity models in the workspace, the agent can:
1. Open a case record.
2. Select the Recommendations tab in the contextual side panel.
3. Choose the Suggested Actions sub-tab to see:
◦ A card to propose a major case and a card for similar major cases (if enabled).
◦ Up to three similar open case cards (customer-configurable).
◦ Up to three similar resolved case cards (customer-configurable).
For more info, see View similar case recommendations
Task Intelligence Admin Console
Use the Task Intelligence Admin Console to create, train, and deploy machine learning models
that predict different types of information for case and interaction records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1107


<!-- page 1108 -->
From the Admin Console, you can set up predictive models, preview the agent's experience, view
when the models are active, and track model performance.
The Admin Console provides tools that you can use to create and implement machine learning
models in just a few steps. Each model follows a six-step process.
Steps to create and implement machine learning models
1. Select a model to use as a starting point.

Select the model based on what you want the
model to do. For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1108


<!-- page 1109 -->
Steps to create and implement machine learning models (continued)
• Use the field prediction model to make
field value predictions that you can use to
categorize cases and interactions.
• Use the case sentiment model to predict
sentiment at any point from case creation to
case resolution.
2. Define the purpose of the model.

Tell the model when you want it to make
predictions and what you want it to predict.
For example, predict the category and priority
when a new case is created.

3. Select the data used to train the model.

Train the model using selected data, such
as the text in the case short description and
description, so it can learn patterns in the data.
Then test the model to see how well it works.

4. Assess the model's results.

View test results to see how your well the
model performed. These results indicate how a
model will perform after being deployed.

5. Select preferences for prediction results.

Add predictions directly to record fields, show
predictions as recommendations, or monitor
predictions in the background.

6. Deploy the model.

Review your selections and start using the
model.

You can also use the Task Intelligence Admin Console to access related applications. For more
information about using the console, see the following topics:
• Create a model to predict record fields
• Create a model to predict case sentiment
• Create a model to detect case language
• Create a Document Intelligence use case
Machine learning model setup and behavior
Set up models to predict field values and sentiment for customer service cases.

Training a model
Training a machine learning model is when the model learns patterns in past data to make
predictions for new data. Models are trained using a lot of data so that they can learn patterns
and the large data set makes the learned patterns statistically significant.

Setting up a field prediction model
Users with the ml_admin role can create and train a machine learning model to predict field
values from the Task Intelligence Admin Console.
Using the field prediction model as a starting point, you can choose the training data set that the
model learns from. The model can be trained using data from the following tables:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1109


<!-- page 1110 -->
• Email [sys_email] table
• Case [sn_customerservice_case] table
• Tables that extend the Case table
• Interaction [interaction] table
Models can also be trained using data from email or case attachments.
You then direct the model to learn a pattern between two types of fields from that data:
• Output fields are the fields that you want your model to predict. For example, the Category and
Priority fields for cases.
• Input fields are the fields that the model uses as a basis for predictions. For example, text in
the subject and body of an email.
You can use the recommended input fields or you can modify these fields and add your own
preferences.
If the model is configured to use text from attachments, the system performs the following steps
when a case or interaction is created:
• The system checks the record for attachments with supported content types and file
extensions. It ignores the attachments that have unsupported file extensions.
• If the record has attachments in a supported format, the system parses the text and sends it as
an input to the categorization model, along with text from the input fields.
• If the record does not have attachments, or no attachments in a supported format, the system
sends text from the input fields to the categorization model.
Supported content types and file extensions are stored in the

sn_csm_ml_task.categorization.allowed_content_types system property. For
more information, see Components installed with Task Intelligence for Customer Service.

Supporting multiple languages
Categorization supports multiple languages including attachments, if the models are configured
to include attachments. The categorization model returns the predicted language and stores it in
the Detected Language field in the Predictor Result [ml_predictor_results] table.

Setting up a case sentiment model
The case sentiment model is pre-trained with a large data set to learn communication patterns.
This data comes from customer emails and case descriptions and comments and reflects typical
communication between agents and customers.
• Email: The model uses the text in the subject and body of the initial email to predict sentiment
when the case is created. Text from the body of subsequent emails is used to update the
prediction.
• Cases: The model uses the text in the case short description and description to predict
sentiment when the case is created. Comments added to the case are used to update the
prediction.
The case sentiment model supports case types. When setting up a sentiment model, you select
the table on which to run sentiment analysis. You can select:
• The Case table
• Tables that extend the Case table
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1110


<!-- page 1111 -->
Note: The sentiment analysis feature supports one level of custom extension from the
Case table.
Install the Task Intelligence for Customer Service application
You can install the Task Intelligence for Customer Service application (com.snc.csm_ml_task) if
you have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Task Intelligence for Customer Service
application listing in the ServiceNow
Store for information on dependencies, licensing or subscription requirements, and release
compatibility.
• The minimum version of the workspace required to support Task Intelligence for Customer
Service application is CSM and FSM Configurable Workspace Foundation (sn_cwf_wrkspc):
24.2.1.
• To enhance ML functionality, we need to set up three Access Control Lists (ACLs) within the
Customer Service application. These ACLs are essential for granting the platform_ml_read role
the necessary read access to the sn_customerservice_case table and its associated fields. For
more information, see KB1705485
Role required: ti_admin

About this task

The following items are installed with Task Intelligence for Customer Service:
• Store applications: Task Intelligence for Customer Service
• Roles
• Tables
• Properties
• Flows
• Scheduled jobs
For more information, see Components installed with Task Intelligence for Customer Service.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Task Intelligence for Customer Service application (com.snc.csm_ml_task) using the
filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1111


<!-- page 1112 -->
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Components installed with Task Intelligence for Customer Service
Several types of components are installed with the Task Intelligence for Customer Service
application, including tables, roles, properties, flows, and scheduled jobs.

Tables
The Task Intelligence for Customer Service application uses the following tables.
Tables installed with the Task Intelligence for Customer Service application
Table

ML Solution
[ml_solution]

Description

The ML Solution table stores trained machine learning
solutions.
Activating the Task Intelligence for Customer
Service application (com.snc.csm_ml_task)
creates a record in this table for the pre-trained
sentiment analysis machine learning solution:
ml_x_snc_global_global_sentiment.

ML Sentiment
[ml_sentiment]

This table stores machine learning sentiment
information and includes the following fields:
• Original sentiment: The sentiment that is predicted
when the case is created.
• Current sentiment: The sentiment that is predicted
when the case is updated.
• Sentiment over time: Displays the sentiment trend
prediction as an agent works to resolve the case. To
be able to calculate a value for this field, there needs
to be a minimum of two sentiment predictions.
The system uses the following formula used to
determine the sentiment trend:

(currentSentiment originalSentiment) >
0 ?'improving' :'declining';
Predictor Result
[ml_predictor_results]

This table stores prediction results and feedback for
record categorization, sentiment analysis, and language
detection. This includes skipped and failed predictions
that result from prediction requests.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1112


<!-- page 1113 -->
Tables installed with the Task Intelligence for Customer Service application (continued)
Table

Description

For case categorization:
• The Default confidence and Predicted confidence
fields store confidence values returned by the
categorization machine learning models.
• For cases created from email, the Source ID field
includes a reference to the sys_email record and
the Predicted Table field includes a reference to the
sys_email table.
For sentiment analysis:
• The default value in the Predicted correctly field for
each sentiment prediction is set to true.
• The Final input value and Final output value fields
remain empty because sentiment analysis predictions
do not collect feedback from agents.
For language detection:
• The Predictor Result table stores the prediction
results from the Language Detection Service spoke.
• The Detected Language field stores the language
returned by the Language Detection Services spoke.
The Predictor Result table includes the Skipped field,
which is a true|false field.
• True: The prediction was skipped.
• False: The prediction was not skipped.
For more details about skipped predictions, see Logic
for Skipped field values below.

Note: The Predictor Result list includes a filter on

the Capability field, which displays results where
the capability is Classification. Remove this filter to
display all of the prediction results.
Case
[sn_customerservice_case]

The Case table stores customer service case records.
This table is the recipient for case categorization
predictions.
The Language field has been added to the Case table.
This field is a reference to the Language [sys_language]
table. This field is populated with the prediction made by
the language detection spoke and stores the language
that was used to create the email or case.
The Case table is added with the Customer Service
(com.sn_customerservice) plugin.

Task

The Task table is one of the core tables provided with
the ServiceNow base system.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1113


<!-- page 1114 -->
Tables installed with the Task Intelligence for Customer Service application (continued)
Table

Description

[task]

The sentiment analysis feature adds the Sentiment
column to the Task table. This column is a reference to
the Task ML Sentiment [task_ml_sentiment] table.

Task ML Sentiment
[task_ml_sentiment]

This table stores sentiment predictions. The reference
to the prediction record is stored in the Sentiment field
in the Task table. This table is an extension of the ML
Sentiment [ml_sentiment] table.
The Task column in the Task Sentiment table is a
reference to the Task [task] table and is used for domain
separation.

Task Skills
[task_m2m_skill]

The Task Skills table stores skills for the Customer
Service Management application.
The language detection feature links language skills to
new customer service cases by saving the detected
language in the Task Skills table.
The Task Skills table lists customer service cases and
the language skill detected and assigned to each case.

Logic for Skipped field values
Prediction preference

Top 1 prediction

Top 3 (at least 1
prediction)

Skipped

Autofill

Yes

Yes

False

Empty

Yes

True

Yes

Yes

False

Empty

Yes

False

Empty

Empty

True

Yes

Yes

False

Empty

Yes

False

Empty

Empty

True

Prediction unsuccessful

NA

NA

True

Prediction error

NA

NA

True

Recommendations

Monitor only

Tables installed with Document Intelligence for Customer Service
The Document Intelligence for Customer Service application uses the following tables

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1114


<!-- page 1115 -->
Tables installed with the Document Intelligence for Customer Service application
Table

Description

DocIntel Use Case

Stores Document Intelligence use cases for the Case
table (sn_customerservice_case) or case type tables
that extend the Case table.

[di_task_definition]
DocIntel Task
[di_task]

Stores Document Intelligence tasks.
The is_stp field controls straight through processing.
When this field is set to true, straight through processing
is enabled for the task.
The agent_input field is set to true if an agent makes
changes to predicted values in the DocIntel tab.

Note: You can track tasks from the ML Solusions
table (ml_solution.list).
Integration Setup

Stores use case filters that are applied to cases.

[di_integration_setup]

The Target Table field stores the target for the predicted
fields, either the Case table (sn_customerservice_case)
or a case type table.

Field

Stores the keys to be extracted by Document
Intelligence.

[di_key]
Field Value
[di_extracted_value]

Stores the extracted values for the keys in a use case
task.

Roles
The Task Intelligence for Customer Service application includes the following roles.
Roles installed with Task Intelligence for Customer Service
Role

Description

Task Intelligence admin

Can create, train, and retrain
machine learning models.
This role can also deploy and
delete models.

[sn_csm_ml_task.ti_admin]

Task Intelligence analyst
[sn_csm_ml_task.ti_analyst]

Can create, train, and retrain
machine learning models.

Contains roles

• sn_docintel.admin
• sn_ti_admin.tia_admin
• sn_customerservice.case_viewer

• sn_customerservice.case_viewer
• sn_ti_admin.tia_analyst
• sn_docintel.manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1115


<!-- page 1116 -->
Roles installed with Task Intelligence for Customer Service (continued)
Role

Description

Contains roles

• ml_admin

[sn_ti_admin.tia_admin]

• platform_ml_read
ml_admin

[sn_ti_admin.tia_analyst]

ml_report_user

[sn_ti_admin.tia_user]
Task sentiment viewer
[task_ml_sentiment_viewer]

Provides read access to
records in the Task Sentiment
[task_ml_sentiment] table if
the user has read access to
the associated task records.
This role is added to the
following roles:
• sn_customerservice_agent
• sn_customerservice.consumer_agent

Note: The sn_docintel.extraction_agent role is added to the customer service
agent role (sn_customerservice_agent) and the consumer service agent role
(sn_customerservice_consumer_agent).

Properties
The Task Intelligence for Customer Service application includes the following properties.
Properties installed with Task Intelligence for Customer Service
Property

sn_csm_ml_task.logging.verbosity

Description

The log verbosity for the Task Intelligence for
Customer Service application. This property
has the following values:
• error: Show only critical errors which may
prevent the search from completing.
• warn: Show warning which indicates
possible unexpected changes in behavior
while searching. Also shows errors.
• info: Show progress messages as the Code
Search application searches for results. Also
shows errors and warnings.
• debug: Show information that may be useful
while debugging the application. Also shows
errors, warnings, and info messages.
• off: Do not generate logs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1116


<!-- page 1117 -->
Properties installed with Task Intelligence for Customer Service (continued)
Property

Description

The default setting is info.
Categorization properties

sn_csm_ml_case.case.categorization.mlpredictor.enabled
Enables categorization predictions for
customer service cases. The default setting is
false.

sn_csm_ml_task.categorization.attachment.max_size
Determines the maximum size of an
attachment that can be parsed by
categorization machine learning models. The
maximum supported size is 500kb. The default
setting is 450kb.

sn_csm_ml_task.categorization.allowed_content_types

Controls the content types and file extensions
that are supported by the ML predictor for
categorization with attachment.
By default, the following attachment types
can be used with attachment-based case
categorization predictions: pdf, xls, xlsx, docx,
and csv.
To configure content types:
• Leave the property blank to allow all of the
supported file extensions. This is the default
setting.
• Create a subset of the default values by
entering a comma-separate list of content
types and file extensions. For example,
application/pdf,text/csv.

sn_csm_ml_task.categorization.flow_start_time.threshold

Sets the max waiting threshold for
categorization predictions that include
attachments. The default value is 10 minutes.
If the call to the API does not return a
prediction before the maximum waiting
threshold is reached, predictions are made
without the attachment text. These predictions
are based on text from the subject and body
of the email or the case short description and
description.

sn_csm_ml_task.categorization.case.delay_attachment_fetch
Adds a 1-second delay before fetching valid
attachments for Task Intelligence when cases
are created from email.

sn_csm_ml_task.case.categorization.enable_inactive_filter
Enable this property to remove inactive field
choices from predictions. The default setting is
false.
Sentiment analysis properties
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1117


<!-- page 1118 -->
Properties installed with Task Intelligence for Customer Service (continued)
Property

Description

sn_csm_ml_task.case.sentiment.mlpredictor_enabled
Enables sentiment predictions for customer
service cases. The default setting is false.
To enable sentiment predictions, set this
property to true.

Note: This property is automatically set
to true when a sentiment model is trained
and deployed from the Task Intelligence
Admin Console.
Language detection properties

sn_csm_ml_task.case.language.mlpredictor.enabled

Enables language detection for customer
service cases. The default setting is false. To
enable language detection, set this property to
true.

Note: This property is automatically
set to true when a language detection
module is tested and deployed from the
Task Intelligence Admin Console.

sn_csm_customerservice.case.ml.language.detection.threshold

Controls the threshold for language prediction.
The default value for this property is 0.70.
Predictions with a confidence level greater
than the threshold are saved in the Predictor
Results (ml_predictor_results_task) table
and the Task Skills (task_m2m_skill) table.
Predictions with a confidence level less than
the threshold are only saved in the Predictor
Results (ml_predictor_results_task) table.

sn_csm_ml_task.case.languagedetection.default_confidence
Stores the confidence level threshold for the
language detection feature. The default value
is 0.7.
Document Intelligence properties

sn_csm_ml_task.case.docintel.mlpredictor.enabled
Enables Document Intelligence for Customer
Service Management.

Note: This property is activated
automatically when the user creates a
use case.

sn_csm_ml_task.case.docintel.parsing_supported_types

Contains a list of the supported attachment
types:

image/png,image/
jpeg,application/pdf
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1118


<!-- page 1119 -->
Properties installed with Task Intelligence for Customer Service (continued)
Property

Description

sn_csm_ml_task.straight_through_processing_max_waiting_threshold
Defines the maximum waiting time for a
straight through processing task to finish. The
default time is 5 minutes.

If a use case is configured to use the straight
through processing prediction mode, the
agent can see the relevant fields on the Case
form automatically populated within 5 minutes
of case arrival.
If this threshold is exceeded, the values are
skipped. However, the agent can still view the
task in the DocIntel tab and manually extract
the values.

sn_csm_ml_task.case.delay_attachment_fetch
Waits for several milliseconds before fetching
valid attachments for Task Intelligence for
Customer Service when a case is created from
email.

Note: This property is disabled by
default. If you notice that attachments
are being missed for cases created from
email, enable this property.

Flows
The Task Intelligence for Customer Service application includes the following flows.
Flows installed with Task Intelligence for Customer Service
Flow

Task Intelligence Sentiment
[new_task_intelligence]

Task Intelligence Sentiment Case Update
[task_intelligence_case_update_flow]

Task Intelligence Inbound Email Reply
[task_intelligence_inbound_email_reply]

Task Intelligence Case Language Detection
[task_intelligence_case_language_detection]

Description

This flow is inactive out of box and is
activated after setting up models on the Task
Intelligence Admin Console.
This flow is inactive out of box and is
activated after setting up models on the Task
Intelligence Admin Console.
This flow is inactive out of box and is
activated after setting up models on the Task
Intelligence Admin Console.
Language detection determines the language
used to create a case.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1119


<!-- page 1120 -->
Flows installed with Task Intelligence for Customer Service (continued)
Flow

Description

Depending on configuration, the system can
add this value to the Language field on the
Case form. This field is a reference to the
Language [sys_language] table. It can also add
the language as a skill to the Task Skills related
list on the Case form.
This flow is automatically activated when a
language detection module is trained and
deployed from the Task Intelligence Admin
Console.
Task intelligence - DocIntel at case creation
Task Intelligence - DocIntel Process Extracted
Values

This flow is inactive out of box.
This flow is inactive out of box.

Machine learning models
The sentiment analysis feature uses the ml_x_snc_global_global_sentiment
machine learning model. This model is provided with the Task Intelligence for Customer Service
application.

Scheduled job for categorization solution training
The system administrator can run the Categorization solution training scheduled
job on demand.

Note: It is recommended that you import a training data set to the Case table
[sn_customerservice_case] to support the initial training of the Categorization machine
learning model. The training data set should be tailored to the Case fields that you want to
predict and include additional case records that have the correct labels (i.e., the expected
field values) for the specific fields being predicted. By creating this data set, you leverage
your own data to train the algorithm to predict on the fields you select.
The system administrator can set the following parameters before running the scheduled job.
Parameters for Scheduled jobs
Parameter

Description

trainNewSolution

Set to true to train a new solution. Set to false
to retrain a solution and add the name of the
solution in the existingSolutionName
parameter.

inputFields

The fields that are used to train the model. For
example:
["short_description","description"];

outputFields

The fields to be predicted. For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1120


<!-- page 1121 -->
Parameters for Scheduled jobs (continued)
Parameter

Description

["priority","category"];
encodedQuery

The query that is applied to the data used for
training.

existingSolutionName

The name of an existing solution. Add a name
to this parameter if retraining a solution.

To determine when a solution is ready to be used for categorization predictions, the system
administrator can check the status of the scheduled job. Once the state is Solution Complete,
the solution can be used for predictions.

Scheduled job for publishing previously deployed models
The system administrator can run the Deploying Task Intelligence for Customer
Service Management after upgrading the Task Intelligence for Customer service plugin.
This scheduled job verifies if there are previously deployed models for record categorization,
sentiment analysis, language detection, and Document Intelligence and publishes these models.
Configure Task Intelligence for Customer Service
Install the Task Intelligence for Customer Service application and configure the different features:
record categorization, language detection, Sentiment Analysis, and Document Intelligence for
Customer Service.

Install and configure Task Intelligence features
Complete the following tasks to install Task Intelligence for Customer Service and configure the
features.
Task Intelligence feature configuration
Task

Description

Install the Task Intelligence for
Customer Service application

You can install the Task Intelligence for Customer
Service application (com.snc.csm_ml_task) if you have
the admin role.

Configure record categorization

Activate the required plugins and import training data.
Then you can create and train a model to predict field
values.

Configure Sentiment Analysis

Activate the required plugins, enable the sentiment
analysis property, and assign roles. Then you can train a
model to predict case sentiment.

Configure language detection

Activate the required plugins and the ServiceNow
translator to use the language detection feature. Then
you can set up a model to detect the case language.

Configure Document Intelligence for
Customer Service

Enable Document Intelligence for Customer Service and
create use cases to extract data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1121


<!-- page 1122 -->
Set up and deploy Task Intelligence models
Once you have completed the configuration tasks, you can use the Task Intelligence Admin
Console to set up and deploy models for record categorization, sentiment analysis, and
language detection. You can also use the Task Intelligence Admin Console to access the
Document Intelligence Admin interface, which you can use to create document processing use
cases.
Model deployment in Task intelligence
Task

Description

Create a model to predict record
fields

Create and train a model to predict fields for cases and
interactions.

Create a model to predict case
sentiment

Edit and test the pre-trained sentiment model to predict
sentiment for customer service cases.

Create a model to detect case
language

Edit and test the pre-trained model to detect the
language used to create customer service cases.

Create a Document Intelligence use
case

Create a use case to identify the information to extract
from email and case attachments.

Create a model to predict similar
cases

Test and edit the pre-trained similar cases model for
predicting similarity in customer service cases and
create a new model for custom cases.

Edit a model

Edit the case models that have already been trained and
deployed. Change the model configurations, view the
updated training results, and redeploy the model.

Export a model

Export a Task Intelligence model to another instance.

Create a custom similar case model

Set up a training model to help it recognize similarities
between two types of tables by comparing their fields.
The model looks at the prediction fields of a prediction
table and the training fields of a training table. It uses
the similarities in these fields to predict similar records.

Related topics
Task Intelligence for Customer Service
Use Task Intelligence for Customer Service
Configure record categorization
Activate the required plugins, import training data, and create and train a model to predict field
values for case and interaction records.
Steps to configure record categorization
Step

Ensure that your instance is set up for
Predictive Intelligence (PI).

Description

Predictive Intelligence is a ServiceNow
platform feature that provides a layer of
artificial intelligence, which serves as a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1122


<!-- page 1123 -->
Steps to configure record categorization (continued)
Step

Description

framework for machine learning models. For
more information, see Predictive Intelligence
Activate the Task Intelligence for Customer
Service application (com.snc.csm_ml_task).

.

The Task Intelligence for Customer Service
application enables customers to create and
train categorization machine learning models.
This application automatically activates the
following plugins:
• Predictive Intelligence for Customer Service
Management (com.snc.csm_ml)
• Customer Service
(com.sn_customerservice)
• Skills Management
(com.snc.skills_management)
• Dynamic Translation
(com.glide.dynamic_translation)
• ServiceNow Language
Detection Service Spoke
(com.glide.language_detection_spoke)
• Predictive Intelligence - Task Intelligence
(com.glide.platform_ml_task)
• Admin Center for Task Intelligence
(com.sn_ti_admin)

Import a training data set.

You can use the record categorization
feature with the Case table
[sn_customerservice_case], tables that extend
the Case table, and the Interaction table
[interaction].
It is recommended that you import a training
data set into the desired table to support the
initial training of a categorization model.

Note: This data should include case
types if you have tables that extend the
Case table.
The training data set should be tailored to
the fields that you want to predict. It should
also include additional records that have the
correct labels (for example, the expected field
values) for the fields being predicted.
Creating a training data set enables you to
leverage your own data to train the algorithm
to predict on the fields you select.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1123


<!-- page 1124 -->
Steps to configure record categorization (continued)
Step

Description

1. Identify the table and the fields that you
want your model to predict.
2. Select the table and records for training the
model.
3. Identify the fields in the selected table as
the input values to be used for training the
model.
Set up and deploy at least one categorization
model.

For details, see Create a model to predict
record fields.

Related topics
Record categorization
Configure Sentiment Analysis
Activate the required plugin, enable the sentiment analysis property, and assign roles to use the
sentiment analysis feature.
Follow the steps in the table below to configure the sentiment analysis property for cases.
Sentiment analysis configuration steps
Step

Ensure that your instance is set up for
Predictive Intelligence (PI).

Activate the Task Intelligence for Customer
Service application (com.snc.csm_ml_task).

Description

Predictive Intelligence is a ServiceNow
platform feature that provides a layer of
artificial intelligence, which serves as a
framework for machine learning models. For
more information, see Predictive Intelligence

.

The Task Intelligence for Customer Service
application enables customers to leverage
machine learning algorithms in Customer
Service Management. The sentiment analysis
feature is included with this application.
This application automatically activates the
following plugins:
• Predictive Intelligence for Customer Service
Management (com.snc.csm_ml)
• Customer Service
(com.sn_customerservice)
• Skills Management
(com.snc.skills_management)
• Dynamic Translation
(com.glide.dynamic_translation)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1124


<!-- page 1125 -->
Sentiment analysis configuration steps (continued)
Step

Description

• ServiceNow Language
Detection Service Spoke
(com.glide.language_detection_spoke)
• Predictive Intelligence - Task Intelligence
(com.glide.platform_ml_task)
• Admin Center for Task Intelligence
(com.sn_ti_admin)
Configure the Case list and Case form to
display the sentiment analysis fields.

The sentiment analysis feature adds the
following fields:
• Original sentiment
• Current sentiment
• Sentiment over time
Configure these fields for each of the following
interfaces as needed:
• CSM Configurable Workspace
• CSM Agent Workspace
• Core UI Platform interface

Use the Task Intelligence Admin Console to
create and deploy a sentiment model.

See Create a model to predict case sentiment.

Configure sentiment analysis fields
The sentiment analysis feature uses the following fields to display sentiment prediction
information on Cases list and Case form:
• Original sentiment
• Current sentiment
• Sentiment over time
Add the sentiment fields to Case list views and to the Case form for CSM Configurable
Workspace, CSM Agent Workspace, and Core UI.
• In CSM Configurable Workspace, these fields appear as secondary values in the configurable
form header. You can configure secondary values to display either below the primary value
at the top of the form or in the Record Information tab in the contextual side panel. (For more
information, see Display the form ribbon and form header secondary values in the Contextual
side panel.)
• In CSM Agent Workspace, these fields appear in the Case form header.
• In Core UI, these fields appear on the Case form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1125


<!-- page 1126 -->
Sentiment analysis fields
Field

Description

Original sentiment

The sentiment that is predicted when a case is created.
The values for this field include:
• Positive
• Neutral
• Negative

Current sentiment

The most recent sentiment prediction for the case. This
prediction is assessed when a case is created and
updated. The values for this field include:
• Positive
• Neutral
• Negative
When a case is created, the Original sentiment and
Current sentiment are assigned the same value.
When a case is updated, the Original sentiment
remains the same and the Current sentiment is
updated with the most recent prediction.

Sentiment over time

A trend indicator that reflects the change in sentiment
as a case is updated. The values for this field include:
• Improving
• Neutral
• Declining
This field requires a minimum of two sentiment
predictions in order to calculate a value.

Configure sentiment fields for CSM Agent Workspace
To add the sentiment fields to the Case list:
1. Enter sys_aw_list.list in the application navigator and press Enter.
2. Click All from the Case [sn_customerservice_case] table.
3. Click the lock icon next to the Columns field.
4. Select and move the sentiment fields from the Available column to the Selected column.
5. Click the lock icon again.
6. Click Update.
To add the sentiment fields to the Case form header:
1. Select CSM Workspace as the application scope.
2. Navigate to All > Now Experience Framework > Configuration Settings > UX Form Header.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1126


<!-- page 1127 -->
3. In the Table column of the Form Headers list, select sn_customerservice_case.
If adding sentiment fields for a case type, select the case type table that extends the Case
table.
4. Click New in the Secondary Values related list.
5. Select the desired sentiment field in Field field and click Submit.
6. Repeat step 5 for the remaining sentiment fields.
7. Click Update on the Form Header form.

Configure sentiment fields for CSM Configurable Workspace
To add the sentiment fields to the Case list:
1. Enter sys_ux_list.list in the application navigator and press Enter.
2. Click All from the Case [sn_customerservice_case] table.
3. Click the lock icon next to the Columns field.
If adding sentiment fields for a case type, select the case type table that extends the Case
table.
4. Select and move the sentiment fields from the Available column to the Selected column.
5. Click the lock icon again.
6. Click Update.
To add the sentiment fields to the Case form header:
1. Select CSM Workspace as the application scope.
2. Navigate to All > Now Experience Framework > Configuration Settings > UX Form Header.
3. In the Table column of the Form Headers list, select sn_customerservice_case.
4. Click New in the Secondary Values related list.
5. Select the desired sentiment field in Field field and click Submit.
6. Repeat step 5 for the remaining sentiment fields.
7. In the UX header Configurations list, click Edit.
8. In the Collection field, add CSM/FSM Configurable Workspace Header Config.
9. Click Update on the Form Header form.

Configure sentiment fields for Core UI
To add the sentiment fields to the Case list:
1. Navigate to Customer Service > Cases > All.
2. Right-click the list header and select the desired list view.
3. Right-click any column heading and select Configure > List Layout.
4. Select and move the fields from the Available column to the Selected column.
5. Click Save.
To add the sentiment fields to the Case form:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1127


<!-- page 1128 -->
1. Navigate to Customer Service > Cases > All.
2. Open a case.
3. Right-click the form header and select Configure > Form Layout.
4. Select and move the fields from the Available column to the Selected column.
5. Click Save.
Related topics
Sentiment Analysis
Configure language detection
Activate the required plugins and flows to use the language detection feature.
For more information about the languages supported by language detection, see this topic:
Languages supported by Task Intelligence .
Follow the steps in the table below to configure the language detection feature for cases.
Language detection configuration steps
Step

Ensure that your instance is set up for
Predictive Intelligence (PI).

Description

Predictive Intelligence is a ServiceNow
platform feature that provides a layer of
artificial intelligence, which serves as a
framework for machine learning models. For
more information, see:
• Predictive Intelligence
• Machine learning solutions for Customer
Service Management

Activate the Task Intelligence for Customer
Service application (com.snc.csm_ml_task).

The Task Intelligence for Customer Service
application enables customers to leverage
machine learning algorithms in Customer
Service Management. The sentiment analysis
feature is included with this application.
This application automatically activates the
following plugins:
• Predictive Intelligence for Customer Service
Management (com.snc.csm_ml)
• Customer Service
(com.sn_customerservice)
• Skills Management
(com.snc.skills_management)
• Dynamic Translation
(com.glide.dynamic_translation)
• ServiceNow Language
Detection Service Spoke
(com.glide.language_detection_spoke)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1128


<!-- page 1129 -->
Language detection configuration steps (continued)
Step

Description

• Predictive Intelligence - Task Intelligence
(com.glide.platform_ml_task)
• Admin Center for Task Intelligence
(com.sn_ti_admin)
Activate the ServiceNow translator.

To activate the translator:
1. Navigate to Dynamic Translation >
Translator Configurations.
2. Select ServiceNow in the list of
configurations.
3. Enable the Active check box and click
Update.

Related topics
Language detection
Configure Document Intelligence for Customer Service
Enable Document Intelligence for Customer Service and create use cases to extract data.
Document Intelligence for Customer Service configuration steps
Step

Ensure that your instance is set up for
Predictive Intelligence (PI).

Activate the Task Intelligence for Customer
Service application (com.snc.csm_ml_task).

Description

Predictive Intelligence is a ServiceNow
platform feature that provides a layer of
artificial intelligence, which serves as a
framework for machine learning models. For
more information, see Predictive Intelligence

.

The Task Intelligence for Customer Service
application enables customers to create use
cases for Document Intelligence and extract
relevant information from PDF and image files.
This application automatically activates the
following plugins:
• Predictive Intelligence for Customer Service
Management (com.snc.csm_ml)
• Customer Service
(com.sn_customerservice)
• Skills Management
(com.snc.skills_management)
• Dynamic Translation
(com.glide.dynamic_translation)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1129


<!-- page 1130 -->
Document Intelligence for Customer Service configuration steps (continued)
Step

Description

• ServiceNow Language
Detection Service Spoke
(com.glide.language_detection_spoke)
• Predictive Intelligence - Task Intelligence
(com.glide.platform_ml_task)
• Admin Center for Task Intelligence
(com.sn_ti_admin)
Activate the Document Intelligence Admin
application (com.snc.docintel_admin)

The Document Intelligence Admin application
enables customers to create and configure
use cases for extracting data.
Activating this application automatically
activates the properties and flows used by
Document Intelligence for Customer Service.

(Optional) Configure the
Supported attachment types for Document
sn_csm_ml_task.case.docintel.parsing_supported_types
intelligence include:
system property.
• image/png
• image/jpeg
• application/pdf
You can configure the property to use a subset
of these attachment types.
Use the DocIntel Admin experience to create
one or more use cases.

• Create a use case that identifies the
information to extract from email and case
attachments.
• Define the fields to be extracted.
• Select conditions for a use case that tell the
Document Intelligence feature when to run.
For more information, see Create a Document
Intelligence use case.

Document Intelligence for case types
When you create a case type that extends the Case [sn_customerservice_case] table, you need
to configure the Review in DocIntel UI action for the case type table.
Related topics
Document Intelligence for Customer Service
Review and submit values predicted by Document Intelligence
Document Intelligence
Create a model to predict record fields
Create and train a model to predict fields for case and interaction records.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1130


<!-- page 1131 -->
Before you begin
Role required: ml_admin, ti_admin
About this task
The field prediction model is a guide that includes some recommended settings.
You can use these settings, such as the recommended input fields, or add your own
preferences.
You can create and train multiple field prediction models for cases, case types, and
interactions.

Set up your model
1. Navigate to All > Task Intelligence for Customer Service > Setup to access the Task
Intelligence Admin Console.
2. Select Set up model on this model: Predict field choices to reduce handle time.
This opens the model and displays the first of five pages. Each page in the model asks you
questions and helps you select the information you need to build an effective model.

Define the purpose
Select the table and the trigger for the model's predictions.

You can have the model predict case or interaction fields when a new customer email arrives or
when an interaction is created. Base your decision on the data that your model should use to
make the predictions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1131


<!-- page 1132 -->
Select the table and trigger
Choose the type of table that has the fields
you want to predict

Select the table type:
• Cases
• Interactions
The model uses data from the selected table
to make predictions.

Choose the moment or channel that should
trigger a prediction

Select the trigger for the prediction:
• Cases
• Emails
• Interactions

Choose to include optional training inputs

Enable the check box to include attachments
when training the model.
Email and record attachments can have
information that is useful for routing records
correctly.

1. Choose a table type for the model.
2. Choose the prediction trigger.
3. If desired, enable the check box to include attachment data.
Include text from email or record attachments if this information is useful for making
predictions. The model can evaluate attachment data, along with email or record text, to make
predictions.
4. Select Save & continue.

Train your model
Select the input fields and output fields so your model can learn patterns. Output fields are the
fields that you want the model to predict. Input fields are the fields that the model uses to make
predictions.
Selecting this information tells the model what to look for during training.

Note: You can use the recommended settings or select different ones.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1132


<!-- page 1133 -->
1. Provide a name for the model.
2. Choose the output table and the output fields for the model to predict.
3. Select conditions to choose a set of records for training.
The selected conditions determine both how the model is trained and act as a filter for the
conditions that a record has to meet in order for predictions to be made.
4. Select the fields in the training data that the model should use to make the predictions (input
fields).

5. Choose the input fields.
6. Review the resulting number of cases in the training data based on the selected conditions.
The model needs a minimum of 500 records for effective training. If this minimum number isn't
available, try selecting different conditions.
7. Select Launch training.
Training can take some time, particularly if you are training the model on a large amount of
data. You can request that the system send you an email when the training is done.

Assess your model
Assess the results from the training and view sample results for the predicted fields. Reviewing
the results gives you a preview of how your model will perform after being deployed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1133


<!-- page 1134 -->
Select the prediction preference for each field. The model provides flexible options to autofill
field values, provide recommendations for field values, monitor only, or turn off predictions
depending on the sensitivity of those fields.

1. Select a Prediction preference for each enabled field.

Autofill

Adds the best predicted value to the field on
the record.

Recommendations

Shows the recommended value in a message
below the field.

Monitor only

The system makes the field predictions and
stores the information in the Predictions
History but does not add any information to
the case records.

Turn off predictions

Turns off predictions for the field.

2. Select View sample results to see sample results for each predicted field.
3. Select Save & continue.

Deploy your model
Review your choices from the previous pages and information about how the model was trained.
Then you can select Deploy to deploy the model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1134


<!-- page 1135 -->
Create a model to predict case sentiment
Edit and test the pre-trained sentiment model to predict sentiment for customer service cases.
Before you begin
Role required: ml_admin, ti_admin
About this task
The case sentiment model is pre-trained with a large data set to learn
communication patterns. You select a set of records to test the model and then view
the results before deploying.

Set up your model
1. Navigate to All > Task Intelligence for Customer Service > Setup to access the Task
Intelligence Admin Console.
2. Select Edit model on this model: Predict case sentiment to improve CSAT.
This opens the model and displays the first of five pages. Each page in the model asks you
questions and helps you select the information you need to build an effective model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1135


<!-- page 1136 -->
Define the purpose
Tell the model when you want it to make predictions.

The sentiment model is pre-trained with a large data set to understand communication patterns.
This data comes from customer emails and from case descriptions and comments.
1. Select the table that contains the records to be tested.
Select All cases to test records in the Case table or select a case type table.
2. Select Save & continue.

Test your model
Choose the cases to use to test the model.

Selecting this information tells the model what type of records to use for testing. When the model
is deployed, it predicts sentiment on all records in the table that match the selected conditions.
1. Use conditions to choose a set of records for testing.
2. Select Launch testing.

Assess your model
Assess the results from the testing and view sample results for past cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1136


<!-- page 1137 -->
Reviewing the results gives you a preview of how your model will perform after being deployed.
1. Select View all test results to see a list of results.
2. Select Save & continue.

Set your preferences
Tell the model how you want to use the sentiment predictions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1137


<!-- page 1138 -->
1. Display predictions in the Current sentiment and Sentiment over time fields.
2. If desired, you can run the model in the background only.
With this option, the system makes the predictions and stores the information in the
Predictions History but does not add any information to the case records.
3. Select Save & continue.

Deploy your model
Review your choices from the previous pages. Then you can select Deploy to deploy the model.

Create a model to detect case language
Edit and test the pre-trained model to detect the language used to create customer service
cases.
Before you begin
Role required: ti_admin
About this task
The language detection model is a pre-trained model. You select a set of records to
test the model and then view the results before deploying.
Using the language detection model automatically enables
the Task Intelligence Case Language Detection flow and the

sn_csm_ml_task.case.language.mlpredictor.enabled property.
Prerequisite
• Activate the I18N: Internationalization plugin
• Enable the ServiceNow translator.
For more information, see Configure language detection.

Set up your model
1. Navigate to All > Task Intelligence for Customer Service > Setup to access the Task
Intelligence Admin Console.
2. Select Edit model on this model: Predict case language to improve assignments.
This opens the model and displays the first of four pages. Each page in the model asks you
questions and helps you select the information you need to build an effective model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1138


