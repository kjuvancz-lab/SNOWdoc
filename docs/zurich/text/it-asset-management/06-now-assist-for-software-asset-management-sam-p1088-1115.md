# Zurich IT Asset Management — Now Assist for Software Asset Management (SAM)

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 1088–1115 of 2359

Sections: Now Assist for Software Asset Management (SAM) (p1088)

---

<!-- page 1088 -->
Now Assist for Software Asset Management (SAM)
Use the Now Assist for Software Asset Management (SAM) application to integrate generative
AI capabilities into your daily workflow, thereby minimizing manual tasks while enhancing
compliance visibility and optimization insights.

Get started

Explore
Learn more about
Now Assist for SAM

Configure
Configure the Now
Assist for SAM
application to get started

Using
Use generative AI
capabilities offered by
Now Assist for SAM

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
AI limitations
This application uses artificial intelligence (AI) and machine learning, which are rapidly evolving fields of study that generate predictions based on patterns
in data. As a result, this application may not always produce accurate, complete, or appropriate information. Furthermore, there is no guarantee that this
application has been fully trained or tested for your use case. To mitigate these issues, it is your responsibility to test and evaluate your use of this application for
accuracy, harm, and appropriateness for your use case, employ human oversight of output, and refrain from relying solely on AI-generated outputs for decisionmaking purposes. This is especially important if you choose to deploy this application in areas with consequential impacts such as healthcare, finance, legal,
employment, security, or infrastructure. You agree to abide by ServiceNow’s AI Acceptable Use Policy

, which may be updated by ServiceNow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1088


<!-- page 1089 -->
Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to
develop and improve ServiceNow technologies including ServiceNow models and AI products.
In addition, this application will collect information about legal request and/or legal matter
(including related field information, comments, and work notes). Customers can opt out of future
data collection at any time, as described in the Now Assist Opt-Out page .
For more information, see the Now Assist documentation

.

Exploring Now Assist for Software Asset Management (SAM)
With the Now Assist for Software Asset Management (SAM) application, Software Asset
Management managers can use generative AI capabilities for tasks such as generating
compliance summaries, optimization recommendations, and automating SaaS user resolution.

Now Assist for SAM overview
The following generative AI capabilities are available:
• Generate detailed publisher and product summaries to enhance software estate visibility and
streamline compliance evaluation.
• Generate recommended actions to manage software license compliance and optimize
licensing spend.
• Generate user resolution rules to ensure accurate mapping of incoming subscription data to
SAM users.
The generative AI skills can be used only by the sam_user role and the sam_admin role.
Customizations to In-product display roles for accessing generative AI skills are preserved. For
example, if you added an alternative role such as the sam_admin role instead of the default
sam_user role, the sam_admin role will retain access, while the sam_user role will lose access, as
per the custom configuration.
The sam_user role also contains the Now Assist Admin User (sn_nowassist_admin.user) role.
This provides the sam_user role read-only access to the Now Assist Admin to view the generative
AI skills.
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI, Google
Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist skills and
AI agents. Use the Configuration Controls in AI Control Tower
to define which options are
available, then set the skill-level preferences in the Now Assist Admin console . For more
information, see Large language models on the ServiceNow AI Platform

®

.

Domain separation is supported in Now Assist for Software Asset Management (SAM). For
details, see Domain separation in the Now Assist Admin console .

Now Assist for SAM skills
The Now Assist for SAM application includes generative AI that provides your Software Asset
Management managers with an AI-based summary of products and publishers within your
organization's software estate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1089


<!-- page 1090 -->
Additionally, you also get AI-powered recommended actions that help you to mitigate license
compliance risk.
Publisher compliance summarization
Provides insights into publisher summaries, focusing on software deployment,
license compliance, optimizations, and configuration health. The streamlined
process highlights critical information about your software assets, making it easier
for you to manage licenses and ensure compliance with publisher contracts.

Product compliance summarization
Provides insights into specific product summaries for publishers, focusing on
software deployment, license compliance, optimization, and issues.

Recommended actions
Provides a list of recommended actions that you can perform to fix any
configuration, maintenance, and optimization related issues to manage software
license compliance and optimize licensing spend.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1090


<!-- page 1091 -->
SaaS user resolution
Use generative AI to automatically analyze incoming SaaS subscription data and
generate user resolution rules to map User Principal Names to corresponding user
records within the Software Asset Management application.

Note: To effectively use the SaaS user resolution generative skill, ensure
that you have the latest compatible versions of both the Software Asset
Management plugin and the Software Asset Management - SaaS License
Management plugin.
Upon activation of the SaaS user resolution skill, a series of automated processes
are triggered. First, the Downgrade subscriptions scheduled job is executed
on a cadence, daily or weekly, that depends on your SaaS subscription. After
the Downgrade subscriptions job is successfully executed, the SAM Generate user resolution rule scheduled job is initiated, creating a
new user resolution rule for the relevant SaaS integration profile and resolving all
associated users.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1091


<!-- page 1092 -->
Supporting information for Now Assist for Software Asset Management (SAM)
Get a quick overview of the important information that is related to the Now Assist for Software
Asset Management (SAM) application.

Supported versions
Now Assist for SAM is supported starting with the Yokohama release.

Supported user interfaces
The Now Assist for SAM application includes the skill that is listed in the following table.
Now Assist for SAM supported interfaces
Interface

Software Asset Workspace

Feature

• Publisher compliance summarization
• Product compliance summarization
• Recommended actions

Licensing requirements
The Now Assist for SAM application requires a Software Asset Management Professional Plus or
Software Asset Management Enterprise Plus license.

Languages supported
The Now Assist for SAM application supports the following languages:
• Arabic
• Czech
• German
• Spanish
• Finnish
• French Canadian
• French
• Hebrew
• Hungarian
• Italian
• Japanese
• Korean
• Norwegian
• Dutch
• Brazilian Portuguese
• Polish
• Portuguese
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1092


<!-- page 1093 -->
• Russian
• Swedish
• Thai
• Turkish
• Chinese (Simplified)
• Chinese (Traditional)

Application information
Activate the Now Assist for Software Asset Management (SAM) store app (sn_now_assist_sam)
to use the publisher compliance summarization skill.
This store app has the following dependencies:
• Software Asset Management Professional (com.snc.samp)
• Software Asset Workspace (sn_sam_workspace)
• Now Assist for Platform (sn_genai_platform)
• Now Assist AI Agents (sn_aia)
• AI Agents for ITAM (sn_itam_aia)
Activate the applications in the following order:
• Software Asset Management Professional
• Software Asset Workspace
• Now Assist for Platform
• Now Assist for Software Asset Management (SAM)

Configure Now Assist for Software Asset Management (SAM)
If you have the admin role, you can configure the Now Assist for Software Asset Management
(SAM) application to generate summaries for publishers. These summaries highlight the
information that pertains to the software deployment, license compliance, optimization, and
configuration health.

Before you begin

Role required: admin

About this task

Starting with the Zurich Patch 4 release, generative AI skills for Now Assist for SAM are
automatically activated on your instance by default and require no configuration. However, if you
deactivate a skill, you need to manually reactivate that skill by following the specified procedure.

Procedure
1. Install the Now Assist for Software Asset Management (SAM) plugin (sn_now_assist_sam).
2. Navigate to All > Now Assist Admin > Skills to access the Now Assist Skills tab of the Now
Assist Admin console.
3. Select SAM under the Technology workflow group.
4. On the Now Assist skills for SAM page, select Activate skill for the skill that you would like to
activate.
The page for the skill that you activated opens with the General details section highlighted.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1093


<!-- page 1094 -->
5. In the General details section, select Save and continue.
The settings in the General details section are read-only.
6. In the Select display section, select Display.

When selected, the skill is displayed on forms and workspaces.
The sam_user role is the default role for viewing the skill. You can add additional roles if you
want to.
Custom role configurations for accessing generative AI skills are preserved. For example, if you
added an alternative role such as the sam_admin role instead of the default sam_user role, the
sam_admin role will retain access, while the sam_user role will lose access, as per the custom
configuration.
7. Select Save and continue.
8. In the Review and activate section, review your choices and select Activate.
The Successfully activated message box opens and the skill is activated. You're ready to use
the skill in the Software Asset Workspace. For details on using the skills, see Using Now Assist
for Software Asset Management (SAM).
Skill inputs and triggers for Now Assist for Software Asset Management (SAM)
Get a quick overview of the skill inputs and triggers for Now Assist for Software Asset
Management (SAM). By configuring the inputs or triggers for a skill, you can determine how and
when a skill is used.

Now Assist for SAM skills and triggers overview
Depending on the selected skill, you can configure the inputs or triggers. These settings
determine how and when a skill is used. An input identifies the data that is used for a skill, such
as the table and fields that are used to generate a publisher summary. A trigger initiates an
action, such as when the system generates a publisher summary.

Publisher compliance summarization skill
For the publisher compliance summarization skill, select the triggers that determine when a
publisher compliance summary is generated. You can also select the properties that control how
a publisher compliance summary is displayed. To display the publisher compliance summary,
you need to select the Display toggle button on the Choose where to display page while
configuring Now Assist for SAM. For details on the Display toggle button, see Configure Now
Assist for Software Asset Management (SAM).
The following table lists the triggers that determine when a publisher compliance summary is
generated and how a publisher compliance summary is displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1094


<!-- page 1095 -->
Triggers for the publisher compliance summarization skill
Trigger

Description

User triggered

Publisher compliance summary that is
generated when the agent manually triggers
the skill by selecting Summarize in the
Publisher details page.

The following table lists the inputs for the publisher compliance summarization skill.
Inputs for the publisher compliance summarization skill
Input

Description

Reconciliation results

Compliance status of the software products
with regards to the discovery and entitlements.

Software Lifecycle Report
[sam_sw_product_lifecycle_report]

Product life-cycle details for all the
software products that are installed in your
environment.

Dashboards

Dashboards include Discovered inventory,
Normalization and content, and Health check.

Product compliance summarization skill
For the product compliance summarization skill, select the triggers that determine when a
product compliance summary is generated. You can also select the properties that control how
a product compliance summary is displayed. To display the product compliance summary, you
need to select the Display toggle button on the Choose where to display page while configuring
Now Assist for SAM. For details on the Display toggle button, see Configure Now Assist for
Software Asset Management (SAM).
The following table lists the triggers that determine when a product compliance summary is
generated and how a product compliance summary is displayed.
Triggers for product compliance summarization skill
Trigger

Description

User triggered

Product compliance summary is generated
when the agent manually triggers the skill by
selecting Summarize in the Publisher details
page.

The following table lists the inputs for the product compliance summarization skill.
Inputs for the product compliance summarization skill
Input

Description

Reconciliation results

Compliance status of the software products
with regards to the discovery and entitlements.

Software Lifecycle Report
[sam_sw_product_lifecycle_report]

Contains product life-cycle details for all the
software products that are installed in your
environment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1095


<!-- page 1096 -->
Inputs for the product compliance summarization skill (continued)
Input

Description

Dashboards

Dashboards include Discovered inventory,
Normalization and content, Health check, and
Optimization and Savings dashboard.

SAP related tables

The SAP related tables include:
• SAP Document Type
[samp_sap_document_type]
• SAP Digital Access Usage
[samp_sap_digital_access_usage]
• SAP Engine Usage
[samp_sap_sw_client_access]
• SAP System User [samp_sap_system_user]

Software Subscription [samp_sw_subscription] Contains information pertaining to user
table
software subscriptions.
Purchased Subscription Details
[samp_purchased_subscription_details]

Contains the information pulled from the
Microsoft Azure portal related to subscriptions
purchased and assigned for Microsoft 365.

Software Installation table
[cmdb_sam_sw_install]

Contains information on all software installed
in your environment.

Recommended actions skill
For the recommended actions skill, select the triggers that determine when a list of
recommended actions is generated. You can also select the properties that control how
recommended actions is displayed. To display recommended actions, you need to select the
Display toggle button on the Choose where to display page while configuring Now Assist for
SAM. For details on the Display toggle button, see Configure Now Assist for Software Asset
Management (SAM).
The following table lists the triggers that determine when recommended actions are generated
and how the list of recommended actions is displayed.
Triggers for recommended actions skill
Trigger

User triggered

Description

Recommended actions is generated when the user
manually triggers the skill by selecting either of the
two options in the Publisher details page:
• Get recommendations icon on Recommended
actions sidebar and then select Get
recommendations.
• Summarize button for a product. When you
select Summarize, both the product summary
along recommended actions gets generated.

The following table lists the inputs for the recommended actions skill.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1096


<!-- page 1097 -->
Inputs for the recommended actions skill
Inputs

Source

Configuration inputs
Health check issues

Scan Findings [Scan_finding]

Installs requiring actions

Installs Unlicensed Reasons
[samp_install_unlicensed_reason]

Normalization Rate

Software Discovery Models
[cmdb_sam_sw_discovery_model]

Normalization suggestions

Normalization Suggestions
[samp_normalization_suggestion]

Maintenance inputs
Remediation options

End of Life

Missing end of life dates

Expiring entitlements

Remediation Options
[samp_remediation_option]
Software Lifecycle Report
[sam_sw_product_lifecycle_report]
Software Lifecycle Report
[sam_sw_product_lifecycle_report]
Software Entitlements [alm_license]

Optimization inputs
Removal candidates

Optimization (Microsoft):
• Inactive subscriptions
• Unassigned subscriptions
• Licensing optimizations

Removal Candidates
[samp_sw_reclamation_candidate]
Software Subscriptions
[samp_sw_subscription]
Purchased Subscription Details
[samp_purchased_subscription_details]
Microsoft Core License Optimization Reports
[samp_ms_optimization_report]

Optimization (Adobe):
• Inactive users

Software Subscriptions
[samp_sw_subscription]

• Unresolved subscriptions
Optimization (Red Hat): Licensing
optimizations

Potential savings by optimizing licenses
[samp_license_optimization_summary]

Optimization (SAP):

SAP System Users [samp_sap_system_user]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1097


<!-- page 1098 -->
Inputs for the recommended actions skill (continued)
Inputs

Source

• Inactive users

License Metric Results
[samp_license_metric_result]

• Named user assignment
• Locked out user

Removal Candidates
[samp_sw_reclamation_candidate]

• Licensed non-dialog users
• Role based license optimization
• Transaction based license optimization
• Unused engines

SaaS user resolution skill
The following table lists the trigger for the SaaS user resolution skill.
Triggers for recommended actions skill
Trigger

Auto triggered

Description

User resolution rules are automatically generated
upon the activation of the SaaS user resolution
skill.

The following table lists the inputs for the SaaS user resolution skill.
Inputs for the SaaS user resolution skill
Input

Description

List of fields with the String and Email type.

User [sys_user]

Using agentic workflows in Now Assist for SAM
Use the Now Assist for SAM AI agent collection to complete tasks autonomously.
Ensure that you have the following prerequisites for running agentic workflows:
• Your organization has a software asset management system integrated with AI agents. For
more details on AI agents, see Now Assist AI agents .
• Access to an AI-driven Now Assist panel. For more details on Now Asset Panel, see Now Assist
panel .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1098


<!-- page 1099 -->
Available agentic workflows for Now Assist for SAM AI agent collection
Agentic workflow name

Description

Fulfill a software asset request
Help manage software request by either allocating the
available entitlements, if
sufficient rights exist, or
generating a purchase order
with the necessary line items
for the requested software
model.

Available AI agents

• Software entitlement
allocation AI agent
• Purchase order creation AI
agent

Create software reclamation
rule

Analyze the license usage of a Software reclamation rule
product and if no reclamation creation AI agent
rule exists, prompt the user to
create one.

Evaluate software removal
candidate

Examine installed or
subscription-based removal
candidates for a software
product by evaluating its
software product usage
within a specified period and
the eligible total number of
reclaimable candidates

Software removal candidate
evaluation AI agent

Enable security implementation to execute AI agents and agentic workflows through Access
Control Lists (ACLs) and user identities. ACLs provide the Run As capability to let agents
and agentic workflows execute actions either as a dynamic user or as an AI user. For more
information, see Implement access control in Now Assist AI agents .

Important: By default, all agentic workflows and AI agent records are read-only.
You can run the agentic workflow as is by activating the workflow. Additionally, you can
duplicate
the workflow if you want to customize the workflow. If you duplicate the agentic
workflow, adjust the settings according to your requirements and then activate the
duplicated agentic workflow. You can also test
the duplicated agentic workflow to analyze
its performance in the AI Agent Studio, while it executes the instructions that you defined.
When you activate the agentic workflow, activate all agents within the agentic workflow.
Activate the trigger to invoke the agentic workflow automatically. If you prefer to invoke it
manually, activating the trigger isn’t necessary.
Looking for an AI agent?
• There might be AI agents installed with the Now Assist application that are not used in agentic
workflows. To learn how to see all agents that are available on your instance, see Find AI
agents .
• To find agents that might not be installed on your instance, visit the AI Agent Marketplace
the ServiceNow Store.

on

Now Assist for Software Asset Management (SAM) AI agent collection to help manage
software asset request agentic workflow
Use the Help manage software request agentic workflow to fulfill a software request by either
allocating the available entitlements or generating a purchase order for the software model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1099


<!-- page 1100 -->
Help manage software request overview
Use the Help manage software request agentic workflow to automate software asset sourcing
through auto- allocation or purchase order creation.
The following three scenarios are supported for software requests:
• User-based allocations: a user requests a software model with user-based entitlements.
• Device-based allocations: a user requests a software model with device-based entitlements.
When a user who has requested the software has multiple devices assigned to them, the agent
asks the fulfiller to select one of the user's devices for the allocation process. If the device isn’t
assigned to the requested item number user during the software fulfillment, then a message
appears in the Now Assist panel stating that the user has no devices associated. The user
must associate a device and try again. If the device is assigned after this, then the fulfiller user
should initiate a new Now Assist panel chat and provide an utterance in the Now Assist panel
to fulfill the requested item number, rather than using the existing Now Assist panel chat.
• Purchase order flow: if no entitlements are available, a purchase order is created.
The Help manage software request agentic workflow needs the following conditions to execute.
Once these conditions are met, the agentic workflow is automatically triggered.
• The requested item is approved.
• The requested item belongs to a software category.
• The requested item isn’t sourced.
• The Assigned to field in the Requested item [sc-req item] table isn’t empty.
The Help manage software request agentic workflow supports both Azure OpenAI Service and
Now LLM Service.

Role masking
Roles required: procurement_user, itil, and now_asssit_panel_user.
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .

Help manage software request agentic workflow
By automating the sourcing of software assets through auto-allocation or purchase order
creation, the agentic workflow streamlines request resolution and enhances operational
efficiency.
To automatically trigger the Help manage software request workflow for sourcing software
requests, follow these steps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1100


<!-- page 1101 -->
1. Initiate and approve a software asset request:
a. A user with any role creates a software asset request in the Service Catalog application.
b. If the requested items in the cart amount to a thousand dollars, the request is automatically
approved. For amounts more than a thousand dollars, the request must be approved. Autoapproval rules can differ from organization to organization; the default amount for autoapproval is a thousand dollars.
2. Assign the software asset request for sourcing:
a. Once the request is approved, the procurement_user role navigates to the Procurement
module that resides in the Asset Workspace. If the Hardware Asset Management application
is installed in the Asset Workspace, the name of the workspace changes to Hardware Asset
Workspace.
b. The procurement_user role selects the Items tab in the Procurement module and selects a
value in the Assigned to field for the requested item.

Note: The itil, the procurement_user, and the now_assist_panel_user roles have
access to the Now Assist panel. The fulfiller needs the itil and procurement_user roles if
you have the Now Assist for IT Service Management (ITSM) store application installed.
If you have the Now Assist for Software Asset Management (SAM) store application
but not the Now Assist for IT Service Management (ITSM) store application, then the
fulfiller requires the itil, procurement_user, and now_assist_panel_user roles to fulfill
the request via the Now Assist panel trigger.
The procurement_user role gets notified in the Now Assist panel that the software request is
getting fulfilled.
Once the software asset request is assigned, the Help manage software request agentic
workflow gets triggered to source the request.
◦ If entitlements are available for the software request, allocations are automatically made.
◦ If entitlements aren’t available, a purchase order is generated. The AI agents take inputs and
confirmation from you when needed.
To view the agentic workflow process, navigate to the Asset Workspace or the Hardware Asset
Workspace and select the sparkle icon

on the top right side of the workspace.

AI agents used in the Help manage software asset requests agentic workflow
The Help manage software request agentic workflow uses the following AI agents to execute
instructions.
AI agents and their role in the Help manage software request agentic workflow
AI agent

AI agent role

Software entitlement allocation AI agent

Validates software license requests and
allocates licenses from existing inventory
when available, using the request item number
(RITM).

Purchase order creation AI agent

Sources a request item by creating a purchase
order. Asks for inputs sequentially and takes
user input in case there are multiple options

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1101


<!-- page 1102 -->
AI agents and their role in the Help manage software request agentic workflow (continued)
AI agent

AI agent role

such as with stockrooms, vendors, metric
group, or license metrics.
Now Assist for Software Asset Management (SAM) AI agent collection to create software
reclamation rule
Use the Create software reclamation rule agentic workflow to automatically create reclamation
rules to aggregate usage records and to identify unused software products that lack reclamation
rules but are viable candidates.

Important: This agentic workflow is now turned on by default. The new default behavior
works as follows:
New customers
When you install a Now Assist product, designated agentic workflows are
turned on automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to agentic workflows that are currently enabled and
customized.
An agentic workflow is turned on if:
• The Now Assist plugin is installed, but the agentic workflow was never
turned on.
• An admin has never adjusted roles for the agentic workflow.
An agentic workflow is not turned on if:
• The agentic workflow was previously turned on, and then turned off again.
• An admin has adjusted roles for the agentic workflow.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

Create software reclamation rule overview
Use the Create software reclamation rule agentic workflow to streamline and automate the
creation of reclamation rules. Create reclamation rule without having to manually review a
product’s utilization and spend thereby improving license utilization, faster turnaround, improved
operational efficiency, and enhanced user satisfaction.

Role masking
Roles required: sam_admin.
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1102


<!-- page 1103 -->
Create software reclamation rule agentic workflow
Automating the creation of reclamation rules helps SAM managers to scale their reclamation
efforts by automatically identifying and suggesting reclamation rules for overlooked software.
To start the agentic workflow, you must have the sam_admin role.
The Create reclamation rule agentic workflow can be initiated from the following pages:
• Software asset overview page
• Publisher details page
• License operations page
Depending on the page, the sam_admin role is on, follow the steps mentioned in the following
table:
Initiating the Create reclamation rule agentic workflow
Software asset overview page

Publisher details page

License operations page

1. Navigate to the Activity
center.

1. Select a product for the
specific publisher.

1. Navigate to Administration
> Reclamation Rules.

2. Select suggestions in the
Reclamation rules box in
the Activity center.

2. Select the Removal
candidates tab.

2. Select Create reclamation
rule

3. Select Create reclamation
rule.

3. Select the sparkle icon on
the top-right side of the
workspace to open the Now
Assist panel.

3. Select the sparkle icon on
the top-right side of the
4. Select the sparkle icon on
workspace to open the Now
the top-right side of the
Assist panel.
workspace to open the Now
Assist panel.
If the Now Assist panel is
already open, select the
hamburger icon.
4. Select Create reclamation
rule in the Active section
the Now Assist panel.
5. Select a product from a
list of products that need
reclamation rules and then
select Submit.

If the Now Assist panel is
already open, select the
hamburger icon.
The agentic workflow is
initiated.

If the Now Assist panel is
already open, select the
hamburger icon.
4. Select a product from a
list of products that need
reclamation rules and then
select Submit.
The agentic workflow is
initiated.

The agentic workflow is
initiated.
The AI agent initiates a series of checks assessing factors such as the usage of the product with
regard to spend and utilization, among other metrics. After the checks are completed, the AI
agent provides you with details such as the name of the reclamation rule name, the assignment
group with which the reclamation rules will get created. You’re then asked if you would like to
create the reclamation rule with the given details or if you want to modify any parameters such
as assignment group in the reclamation rule. Mention any modifications that you want; or else
confirm that you want to go ahead with the creation of the reclamation rule. After you confirm, the
reclamation rule gets created along with the name of the product and a link to the reclamation
rule. The Activity tab in the reclamation rule record gets updated with the relevant work notes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1103


<!-- page 1104 -->
AI agents used in the Create software reclamation rule agentic workflow
AI agent and its role in the Create software reclamation rule agentic workflow
AI agent

AI agent role

Software reclamation rule creation AI agent

Retrieves reclamation rule suggestions,
analyzes the license utilization, and generates
a reclamation rule for a software product.

Important: This agent is now turned on by default. The new default behavior works as
follows:
New customers
When you install a Now Assist product, designated agents are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to agents that are currently enabled and customized.
An agent is turned on if:
• The Now Assist plugin is installed, but the agent was never turned on.
• An admin has never adjusted roles for the agent.
An agent is not turned on if:
• The agent was previously turned on, and then turned off again.
• An admin has adjusted roles for the agent.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

Now Assist for Software Asset Management (SAM) AI agent collection to evaluate software
removal candidate agentic workflow
Use the Evaluate software removal candidate agentic workflow to assess installed or
subscription-based software for potential removal by analyzing their usage over a specified
period and determining the total number eligible for removal. After user confirmation, the
workflow initiates the eligible removal candidate for reclamation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1104


<!-- page 1105 -->
Important: This agentic workflow is now turned on by default. The new default behavior
works as follows:
New customers
When you install a Now Assist product, designated agentic workflows are
turned on automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to agentic workflows that are currently enabled and
customized.
An agentic workflow is turned on if:
• The Now Assist plugin is installed, but the agentic workflow was never
turned on.
• An admin has never adjusted roles for the agentic workflow.
An agentic workflow is not turned on if:
• The agentic workflow was previously turned on, and then turned off again.
• An admin has adjusted roles for the agentic workflow.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

Evaluate software removal candidate overview
Use the Evaluate software removal candidate agentic workflow to identify and evaluate genuine
software removal candidates and recommend software installations for reclamation, based on a
series of intelligent checks that help ensure sufficient context for safe removal actions.
Ensure that you have the following prerequisites for running the Evaluate software removal
candidate agentic workflow:
• Your organization has a software asset management system integrated with AI agents.
• Access an AI-driven now-asset panel.
• AI agents have access to reclamation rules, removal candidates, products, and license metric
results.

Role masking
Roles required: sam_user.
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .

Evaluate software removal candidate agentic workflow
By automatically examining and verifying software removal candidates, the Evaluate software
removal candidate agentic workflow helps in reducing manual effort, minimizing compliance risk,
and unlocking measurable license cost savings.
Any removal candidates that is in the Ready state can be reclaimed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1105


<!-- page 1106 -->
To start the agentic workflow, you must have the sam_user role or the sam_admin role.
The Evaluate removal candidates agentic workflow can be initiated from the following pages:
• Software asset overview page
• Publisher details page; both from the publisher level as well as from the product level.
Depending on the page you are on, follow the steps mentioned in the following table:
Initiating the Evaluate removal candidates agentic workflow
Software asset overview page

1. Navigate to the Activity
center.

Publisher details page- publisher Publisher details page- product
level
level

1. Navigate to License usage
> Publishers > Removal
candidates tab

2. Select suggestions in the
Removal candidates box in 2. Select Evaluate removal
the Activity center.
candidates.

1. Navigate to License usage
> Publishers > Removal
candidates tab
2. Select Evaluate removal
candidates.

3. Select the sparkle icon on
3. Select the sparkle icon on
3. Select the sparkle icon on
the top-right side of the
the top-right side of the
the top-right side of the
workspace to open the Now
workspace to open the Now
workspace to open the Now
Assist panel.
Assist panel.
Assist panel.
If the Now Assist panel is
already open, select the
hamburger icon.

If the Now Assist panel is
already open, select the
hamburger icon.

4. Select Evaluate removal
candidates in the Active
section in the Now Assist
panel.

The chat window shows
your products narrowed
down to the specific
publisher.

If the Now Assist panel is
already open, select the
hamburger icon to initiate
the agentic workflow.

5. Select a product from a
4. Select a product from a
list of products that need
list of products that need
reclamation rules, to initiate
reclamation rules, to initiate
the agentic workflow.
the agentic workflow.
The AI agent initiates a series of checks using multiple criteria, assessing factors such as the
product ID, whether it's installed or subscription-based software, and its last usage, among other
metrics. If any check fails, the Now Assist panel displays an error message indicating that the
workflow can’t continue. If all the checks are successful, a message appears to indicate the
number of removal candidates identified for the particular product. You’re then asked if you
would like to reclaim the software. If you confirm, the reclamation process gets initiated and the
state of the removal candidates changes from Ready to Awaiting User. You can navigate to
the Removal candidates tab in the License Usage view to see the removal candidates and their
current state. After the process is complete, you’re informed about all the removal candidates
that were successfully reclaimed for the specific product.
Once a removal candidate has been reclaimed by the agentic workflow, the Activity tab in the
removal candidate record is updated with relevant work notes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1106


<!-- page 1107 -->
AI agents used in the Evaluate software removal candidate agentic workflow
AI agent and its role in the Evaluate software removal candidate agentic workflow
AI agent

AI agent role

Software removal candidate evaluation AI
agent

Identifies or proposes users for removal
from a software product by assessing their
usage within a set time frame and ensuring
that the total number of eligible candidates
for reclamation is notified to the user, while
excluding any VIP users.

Important: This agent is now turned on by default. The new default behavior works as
follows:
New customers
When you install a Now Assist product, designated agents are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to agents that are currently enabled and customized.
An agent is turned on if:
• The Now Assist plugin is installed, but the agent was never turned on.
• An admin has never adjusted roles for the agent.
An agent is not turned on if:
• The agent was previously turned on, and then turned off again.
• An admin has adjusted roles for the agent.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

Using Now Assist for Software Asset Management (SAM)
If you have a Software Asset Management manager role, you can use generative AI capabilities
to streamline your daily Software Asset Management workflow.
Generate publisher compliance summaries by using Now Assist for SAM
Generate a comprehensive summary for a publisher that covers software deployment, license
compliance, configuration health, and optimization. The detailed publisher summary helps you to
gain insights into the publisher estate.

Before you begin

Role required: sam_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1107


<!-- page 1108 -->
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

Now Assist for SAM generates the publisher summaries by using reconciliation results, product
lifecycle reports, and dashboards such as Discovered inventory, Normalization and content, and
Health check.

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. Select the License usage view.
3. Select a publisher to view its summary.
4. On the Publisher details page, select Summarize.
The Now Assist for SAM application starts generating the summary for the selected publisher.
After the summary is compiled, the results of the summary appear under different sections.
After it's generated, the publisher summary is not automatically saved. If you close the
Publisher details tab where you generated the summary, or if you reload the page, the
publisher summary is not available. To regenerate the summary, select Summarize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1108


<!-- page 1109 -->
5. Optional: You can perform the following actions on the generated summary.
Action

Description

Copy to clipboard icon

Copies the summary to a clipboard.

Refresh icon

Regenerates the publisher summary.
If you found that the summary was helpful, se­
lect the helpful icon
. If you found that the
summary wasn't helpful, select the not helpful
icon

Feedback

.

This feedback improves the generative AI
model and can help to improve future ver­
sions of this skill. The system gathers the
feedback on each generated summary and
stores it in the generative AI logs (sys_genera­
tive_ai_log_list.do).

Generate product compliance summaries by using Now Assist for SAM
Generate a comprehensive summary for a product that covers software deployment, license
compliance, optimization, and issues. The detailed product compliance summary helps in
gaining insights into your software assets and makes it easier to manage licenses.

Before you begin

Role required: sam_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1109


<!-- page 1110 -->
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

Now Assist for SAM generates the product summaries by using reconciliation results, product
life-cycle reports, and dashboards such as Discovered inventory, Normalization and content, and
Health check.

Note: Health check details are shown only for Windows Server, SQL Server, and Oracle
Database.
When you run reconciliation with grouping, product summarization and recommended actions
are available only for the parent product results, not for the individual child product results.

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. Select the License usage view.
3. Select a publisher.
4. On the Publisher details page, select a product.
5. Select Summarize.
The Now Assist for SAM application starts generating the summary for the selected product.
After the summary is compiled, the results of the summary appear under different sections.
Additionally, recommended actions are also automatically generated when you select
Summarize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1110


<!-- page 1111 -->
After it's generated, the product summary isn’t automatically saved. If you close the Publisher
details page where you generated the summary, or if you reload the page, the product
summary isn’t available. To regenerate the summary, select Summarize.
6. Optional: You can perform the following actions on the generated summary.
Action

Description

Copy to clipboard icon

Copies the summary to a clipboard.

Refresh icon

Regenerates the product summary and rec­
ommended actions.
If you found that the summary was helpful,
select the helpful icon. If you found that the
summary wasn't helpful, select the not helpful
icon.

Feedback

(Optional) This feedback improves the gener­
ative AI model and can help to improve future
versions of this skill. The system gathers the
feedback on each generated summary and
stores it in the generative AI logs (sys_genera­
tive_ai_log_list.do).

Generate recommended actions for products by using Now Assist for SAM
Generate a list of recommended actions to manage software license compliance and optimize
licensing spend. The recommended actions help you to take appropriate steps to fix any
configuration, maintenance, and optimization issues.

Before you begin

Role required: sam_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1111


<!-- page 1112 -->
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

Now Assist for SAM generates the recommended actions for products by using reconciliation
results, product life-cycle reports, and dashboards such as Discovered inventory, Normalization
and content, and Health check.

Note: Health check details are shown only for Windows Server, SQL Server, and Oracle
Database.
When you run reconciliation with grouping, product summarization and recommended actions
are available only for the parent product results, not for the individual child product results.

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. Select the License usage view.
3. Select a publisher.
4. On the Publisher details page, select a product for the publisher.
5. Select Summarize or the Recommended actions icon on the right hand side of the page and
then select Get recommendations.
Now Assist for SAM application starts generating recommended actions for the selected
product. After the recommended actions are generated, the results appear as cards under the
following three categories:
◦ Configuration
◦ Maintenance
◦ Optimization

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1112


<!-- page 1113 -->
The compiled results can differ from product to product based on the current compliance level
of a product.
Recommended actions are generated even if a product is fully compliant. Recommended
actions are generated if there are any actions related to health issues, maintenance or
optimization.
6. Select a button on a card to view the list view page for that action.
After the recommended actions are generated, the results aren't automatically saved. If you
close the Publisher details page where you generated the recommended actions, or if you
reload the page, the results aren't available.
7. Optional: You can perform the following actions on the generated recommended actions.
Action

Description

Regenerate icon

(Optional) Regenerates the list of recom­
mended actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1113


<!-- page 1114 -->
Action

Description

You can find this icon in the top right corner of
the Recommended actions box.
(Optional) If you found that the recommend­
ed actions was helpful, select the helpful
icon. If you found that the recommended ac­
tions wasn't helpful, select the not helpful
icon.
Feedback

You can find these icons at the bottom of the
Recommended Actions box.
This feedback improves the generative AI
model and can help to improve future ver­
sions of this skill. The system gathers the
feedback on each generated summary and
stores it in the generative AI logs (sys_genera­
tive_ai_log_list.do).

8. Select the Dismiss icon to dismiss an action; whether you have resolved the action or decided
not to work on the action.
Once you have dismissed all the actions, a message appears mentioning that all
recommendations have been dismissed.
Automate user resolution for SaaS license management using Now Assist for SAM
Automatically generate user resolution rules to ensure accurate mapping of incoming SaaS
subscription data to SAM users.

Before you begin

Role required: sam_integrator

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1114


<!-- page 1115 -->
Ensure that you have the latest compatible versions of the Software Asset Management plugin
and the Software asset Management- SaaS License Management plugin.
After activation, the SaaS user resolution skill operates automatically generating user resolution
rules and resolving users without any manual intervention. To view the resolved users and the
corresponding user resolution rules, perform the following steps.

Procedure
1. Navigate to Workspaces > Software Asset Workspace.
2. Select the License operations view.
3. Select User subscription > User subscription.
In the User subscription page, all the user names are automatically resolved.

4. Select User subscription > User resolution rules to view the new user resolution rule that got
created.
5. Open the user resolution rule to view additional details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1115


