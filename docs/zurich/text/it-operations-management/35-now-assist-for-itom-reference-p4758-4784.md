# Zurich IT Operations Management — Now Assist for ITOM reference / AIOps Learning Enhanced Automation Platform (LEAP)

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4758–4784 of 4823

Sections: Now Assist for ITOM reference (p4758); AIOps Learning Enhanced Automation Platform (LEAP) (p4760)

---

<!-- page 4758 -->
Procedure
1. Navigate to Workspace Experience > Workspaces > Service Operations Workspace.
2. Select the Express List icon

.

3. Review the AI insights through the following options.
Review AI insights

Procedure

◦ If the AI insights icon
is visible next to
the check box, insights are available for
that alert.

Check for the AI Insights badge for alert sta­
◦ If insights aren't available for an alert, you
tus
can initiate the process manually. Details
for generating insights are in the following
options.
Search for alerts with AI Insights informa­
tion and key words

Search for content with the free text search.
For more information, see Find alert records
in Express List using free-text search.

Filter using AI Insights filter attribute

Filter using the Insights attribute with a mini­
mum string of two characters. For more infor­
mation, see Filtering the alert display in the Ex­
press List pane.
a. In the alerts list, select an alert by selecting
the check box or the information icon
next to the alert.

Review AI insights in the preview panel

b.▪ In the Insights tab, review AI insights.
▪ If data isn’t available for this alert, you
can initiate the process by selecting Gen­
erate.
a. In the alerts list, select an alert number to
open the alert record.
The Overview tab is selected by default.

Review AI Insights in the alert record
overview

b.▪ If data is available, you can review the AI
insights summary in the Summary sec­
tion.
▪ If data isn’t available for this alert, you
can initiate the process by selecting Gen­
erate.

Now Assist for IT Operations Management (ITOM) reference
Reference topics provide additional information for configuring and using the Now Assist for
ITOM application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4758


<!-- page 4759 -->
Applications installed with Now Assist for ITOM
Table that lists applications installed with the Now Assist for IT Operations Management (ITOM)
application. When you update your application, any newly required application dependencies
are installed.
Applications installed with Now Assist for ITOM (sn_itom_gen_ai)
Application name

Description

Now Assist
for Platform
(sn_genai_platform)

Enables Now Assist skills and Features across various BU applications.

AI agents for AIOps Enables IT operations with AI Agents that can help autonomously triage
(sn_aiops_ai_agents) alerts, assess business and technical impact, investigate root causes,
and recommend or execute remediation steps. These agents operate
within coordinated agentic workflows.
AI agents for
Observability
(sn_obs_aia)

Helps IT operators assess business and application service impact, and
formulate probable cause theories. Helps prioritize investigations by
analyzing data from ServiceNow and collaborating with third-party AI
agents from leading APM and observability vendors.

AI agents for Agent
Client Collector
(ACC) (sn_acc_aia)

Helps IT operators assess ACC agent errors, and provide suggestions
on how to remediate issues.

AIOps LEAP
(sn_itom_leap)

AIOps LEAP (Learning-Enhanced Automation Playbook) leverages AIdriven insights to mine historical incident data, dynamically prioritize
tasks, and generate actionable resolution playbooks.

Related topics
Plugins or applications installed with ITOM Cloud Accelerate
Plugins or applications installed with ITOM Visibility
Plugins or applications installed with ITOM AIOps
Plugins activated with ITOM Optimization

Questions for the analyze alert impact agentic workflow
Questions to ask about alerts in the Now Assist for IT Operations Management (ITOM) analyze
alert impact agentic workflow.

Questions organized by alert source
Ask the following questions about alerts from specific observability tools in the Now Assist panel.
For more information about using the analyze alert impact agentic workflow, see Use the analyze
alert impact agentic workflow.

Alert source

Dynatrace

What to ask

• What is the impact of this alert?
• What is the root cause entity?
• What is the root cause theory?

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4759


<!-- page 4760 -->
Alert source

What to ask

• Which entities are impacted by this alert?
• Which environments are impacted by this
alert?
Kentik

• Are there network anomalies between the
impacted services for this alert?
• Is there a DDOS attack in progress at the
moment on the impacted services for this
alert?
• Is there connectivity between the impacted
services for this alert?

New Relic

• Have there been recent deployments for this
alert?
• What are the root cause theories for this
alert?
• What else is impacted by this alert?
• What is the user impact for this alert?
• Which engineering teams should I pull in to
investigate this alert?
• Who owns the impacted entity for this alert?

AIOps Learning Enhanced Automation Platform (LEAP)
AIOps LEAP application uses AI-driven insights and automation to help manage IT operations.

Get started

Explore

Configure

Learn about AIOps LEAP benefits,
features, and capabilities.

Install and configure AIOps LEAP.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4760


<!-- page 4761 -->
Use

Reference

Create problem records and
playbooks using AIOps LEAP.

Get detailed information on
important skill configuration
during AIOps LEAP installation.

Supported LLMs for Now Assist for ITOM
You can use Now LLM Service, Azure OpenAI, Google Gemini or Anthropic Claude on AWS as
the AI model provider for Now Assist skills and AI agents. You can set skill-level preferences
in the Now Assist Admin console . For more information, see Large language models on the
ServiceNow AI Platform

®

.

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
• IT Operations Management product on the ServiceNow Community
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

4761


<!-- page 4762 -->
Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to develop and improve ServiceNow technologies including ServiceNow
models and AI products. In addition, this application will collect information about scripts (and associated script records) in which Now Assist for code generation
is called. Customers can opt out of future data collection at any time, as described in the Now Assist Opt-Out page
For more information, see the Now Assist documentation

.

.

Exploring AIOps LEAP
AIOps LEAP categorizes similar incidents into groups, performs incident analysis using AI, and
creates standard, dynamic resolution steps, problem records, knowledge base articles, and
playbooks to promote fast incident resolution.

AIOps LEAP overview
AIOps LEAP helps you manage incidents and operational tasks efficiently. It uses AI to gather
information from existing incidents and generates resolutions that can be automated. The
AIOps LEAP automation provides tools to manage incidents early, speed up resolution, use
prebuilt automation, and follow clear steps to handle issues. These tools help support smooth
operations.

Note: The plugin name has been updated from AIOps Learning Enhanced Automation
Playbook to AIOps Learning Enhanced Automation Platform (LEAP) to reflect its expanded
capabilities and strategic direction.

The landing page displays the number of records analyzed on the right-hand side of Automation
opportunities section. The tool tip provides details about the duration considered for record
analysis.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4762


<!-- page 4763 -->
AIOps LEAP users
User roles
Role

AIOps LEAP admin

Description

You have full control over AIOps LEAP capabilities, including
the following:
• Turn features on and off
• Execute scheduled jobs
• Manage AIOps LEAP tables and the AIOps LEAP Workspace
• Generate and update resolution steps
• Create and view knowledge base articles, problem records
and playbooks from automation opportunities (AO)

AIOps LEAP viewer

You can access and view data related to AIOps LEAP,
including tables, the workspace, and problems originating from
AOs.

AIOps LEAP agent

You can access the AIOps LEAP menu from the Service
Operations Workspace (SOW) and trigger AIOps LEAP
executions directly from within SOW.

These roles work together to create a streamlined and secure approach for managing
automation, resolving incidents, and sharing knowledge across teams.

Personas in AIOps LEAP
AIOps LEAP supports different personas who can have different roles assigned to enhance IT
Operations Management.
AIOps LEAP personas
Persona

Description

Automation architect

An automation architect is
a senior technical expert
who designs and develops
automation solutions,
scaling them when required.
They're a bridge between IT
operations, business needs,
and automation strategy.
The automation architect
streamlines manual, repetitive,
and error-prone tasks.

Responsibility

• Identifies high-impact areas
for automation
• Develops automation
scripts, integrate AI-driven
insights, and maintain
scalable automation
frameworks
• Extracts patterns from
historical ticket data to
optimize future resolutions
• Refines automation
solutions based on
feedback and evolving
business needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4763


<!-- page 4764 -->
AIOps LEAP personas (continued)
Persona

Description

Responsibility

• Collaborates with different
business units to align
automation with enterprise
objectives.
IT operator

An IT operator includes all
L1 and L2 incident handlers
who support day-to-day IT
operations.

• Uses AI-generated
playbooks to resolve
incidents
• Accesses the Knowledge
Base

Buyer, Business goal owner

A buyer or a business goal
owner gains strategic and
operational advantages using
AIOps LEAP.

• Uses AIOps LEAP to
improve IT operations
• Optimizes resource
allocation
• Automates recurring issue
resolution

An automation architect can use AIOps LEAP to gather feedback and refine solutions. In a similar
manner, IT operators will use AIOps LEAP to detects recurring issues and displays suggestions
for preventive automation. This enables faster resolution and operators can resolve more
incidents independently leading to improved efficiency and service quality.

AIOps LEAP benefits
AIOps LEAP benefits
Benefit

Feature

Promotes automation culture

Interpret data and automate records

Drives incident resolution

Measure and enhance performance

Targets Outcomes for L1 Operators

Interpret data and automate records

Improves MTTR

Measure and enhance performance

Optimize Resource Allocation

Identify and prioritize high impact areas

What to explore next
To learn more about configuring and using AIOps LEAP, see:
• Configuring AIOps LEAP
• Using AIOps LEAP
• AIOps LEAP reference
AIOps LEAP features
AIOps LEAP includes features such as grouping incidents, creating problem records, and
generating playbooks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4764


<!-- page 4765 -->
Identify and prioritize high impact areas
AIOps LEAP uses data-driven analytics to help users identify critical issues and
prioritize high-impact automation opportunities. This ensures that resources are
prioritized for the areas that deliver the highest operational efficiency and business
value.
Measure and enhance performance
AIOps LEAP helps improve Mean Time to Repair (MTTR) and operational efficiency
by using advanced analytics and AI-driven insights to continuously monitor and
optimize IT processes.
Interpret data and automate records
AIOps LEAP automatically generates problem records and executes automated
playbooks by analyzing historical data patterns, enabling faster root cause
identification and reducing manual intervention across complex IT environments.
AIOps LEAP prioritization logic and cost savings calculation
AIOps LEAP uses built-in prioritization logic to identify the highest-impact automation
opportunities. This logic helps you focus on the most valuable automation tasks. The calculations
provide an estimate of potential cost and time savings. It's best to validate these values in a nonproduction environment before implementing them in production.
The automation priority is calculated by combining the following key factors:
• Business impact
• Projected cost/time savings
The priority for an automation opportunity is determined using the following chart.
Automation opportunity priority

The key factors are evaluated for each group of related incidents, called automation
opportunities, and the results help teams focus on high-value areas.

Business impact
Each automation opportunity is a cluster of tickets. Every ticket is scored based on the following
factors:
• Business criticality
• Major incident status
• Impact level
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4765


<!-- page 4766 -->
These factors are given values. Example values for criticality:
• Most Critical = 100%
• Somewhat Critical = 75%
• Less Critical = 50%
• Not Critical = 25%
Properties table
Key

Default value

Description

ohf_p4

0.8

Overhead factor for P4
records.

ohf_p5

0.4

Overhead factor for P5
records.

ohf_p1

1.8

Overhead factor for P1
records.

ohf_p2

1.4

Overhead factor for P2
records.

cost_per_entry

20

Cost in dollars associated with
adding a work note entry to a
record.

ohf_p3

1.1

Overhead factor for P3
records.

time_per_entry

0.5

Time in hours associated with
adding a work note entry to a
record.

first_run_group_limit

0

Total number of groups for
which resolution steps are
generated in the initial run.

gaf_mapping_min_threshold

0.2

Minimum ratio of incidents
pointing to an active group
that is considered for
remapping after clustering.

Note:
• You can modify the values in the LEAP settings page. However, the calculations will differ
when you change the values.
• The values in the LEAP settings page should be modified before activating AIOps LEAP.
• If you modify the values in the LEAP settings page, you need to rerun the calculation. For
this, you must deactivate and reactivate the AIOps LEAP installer skill.
Each factor is weighted. For example, say that Criticality = 0.8, Major Incident = 0.2, and Impact =
0.4.
Ticket Score = (Criticality × 0.8 + Major Incident × 0.2 +
Impact × 0.4) ÷ 3

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4766


<!-- page 4767 -->
The average of all ticket scores in the group becomes the Business Impact Score. Based on this
score, automation opportunities are labeled as high impact (the top 33%) , medium impact (next
33%), and low impact (remaining 33%).

Projected cost or time savings impact
AIOps LEAP estimates how much time and cost can be saved by automating a group of incidents
with historical ticket data.
The key inputs for cost and time savings are the following:
• Frequency of Incidents (FOI) : Average number of similar incidents per month
• Average Manual Work Notes Count (AWNC)
• Overhead Factor (OHF) : varies by incident priority based on the priorities table
AIOps LEAP uses the following formulas to calculate the projected cost or time savings:
• Projected Cost Savings = ∑ (FOI × OHF) × AWNC × Cost per Work
Note
• Projected Time Savings = ∑ (FOI × OHF) × AWNC × Agent Time per
Entry
Each ticket’s projected savings is calculated. The average for the group becomes the Projected
Cost/Time Savings Score, which is also categorized as High, Medium, or Low. The automation
opportunities are sorted in descending order based on the projected cost or time savings.

Determining overall priority
After calculating the values for the business impact and the projected cost/time savings, AIOps
LEAP assigns a priority level to each automation opportunity using this matrix:
Automation priority matrix
Business impact

Projected cost/time savings

Automation priority

High

High

Very High

Medium

High

High

High

Medium

High

Medium

Medium

Medium

Medium

Low

Low

Low

Medium

Low

Low

Low

Very Low

These prioritized automation opportunities are displayed on the AIOps LEAP home page.

Tracking the actual cost and time savings
After automation is implemented, AIOps LEAP tracks actual cost and time savings and displays
them on the LEAP Value Dashboard, helping you measure impact and make decisions.
Key metrics:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4767


<!-- page 4768 -->
• Additional Work Notes (AWN) : Manual entries after playbook execution
• Overhead Factor (OHF) by Priority : For example, P1 = 1.8x
Formulas:
• Saved Work Notes (SWNs)

= AWNC – AWN

• AWN = SWN × OHF
• Actual Cost Savings = AWN × Cost per Work Note
• Actual Time Savings = AWN × Agent Time per Entry

Example projected cost and time savings calculations
A cluster has 20 AWNC and is mapped to a P2 incident with 6 AWN. The cost per work note is
$20, and the agent time per entry is 0.5 hours.
According to the formulas, the SWN count is (20 - 6) = 14. According to the properties
tables, the OHF = 1.4.
SWN x OHF = AWN so 14 x 1.4 = 19.6
This value can be rounded off to 20 AWN. Each AWN entry represents $20 of savings.
The actual cost savings post automation = AWN x Cost per Work Note = 20 x 20 =
$400.
So, if you use automation, then the projected cost savings can be up to $400. Thus, the
calculation provides actionable insights for ongoing process improvement and resource
allocation.
Automation opportunity sub-groups
Large automation opportunities in AIOps LEAP can be broken into smaller, more manageable
sub-groups to achieve more granular and accurate incident resolution.
Large automation opportunities with over 150 records tend to generate overly lengthy resolution
steps that lack precision and focus. These opportunities often represent a collection of related
problems and issues that should be subdivided to produce more targeted and relevant solutions.
Breaking them into smaller sub-groups enables users to obtain more refined resolutions for
recurring issues. The Action Insights panel on the automation opportunity details page offers
recommendations to create these sub-groups for opportunities containing large record volumes.

Automatic reorganization
During scheduled LEAP analysis reruns, clusters are automatically reorganized. Automation
opportunities that lack any associated artifacts are marked as deactivated, while those
containing resolution steps or other artifacts remain active and are linked to newly identified
matching automation opportunities.
Resolution steps from the previous automation opportunities are appended to their new
counterparts. Users can choose to keep these existing resolution steps or use the Regenerate
button to create fresh ones. This approach allows organizations to leverage previous resolutions
to help improve the quality of resolution steps for new automation opportunities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4768


<!-- page 4769 -->
Benefits of sub-grouping
• Can provide more focused and contextual resolution steps
• May offer more targeted solutions for similar issues
• Can help support improve incident resolution
• Enables more effective management of large automation opportunities
• May contribute to better operational efficiency by reusing prior resolutions where appropriate
See Create sub-groups for automation opportunities for detailed steps to create sub-groups.
LEAP AI agent
Enhance IT operations with AI-driven, autonomous artifact creation such as problem record,
knowledge base articles, and playbooks using the LEAP AI agent.
Use the information on this page to learn about the actions related to the LEAP AI agent.

Generate LEAP artifacts
AI agent

AI agent role

LEAP AI agent

Uses the automation opportunities created
by LEAP analysis, and creates artifacts
(problem records, knowledge base articles, or
playbooks) requested by user.

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

Configuring AIOps LEAP
®

You can download and install AIOps LEAP application from the ServiceNow Store to manage
your IT operations efficiently.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4769


<!-- page 4770 -->
Configuration overview
1. Install AIOps LEAP
Install AIOps LEAP if you have the admin role.
2. Setup AIOps LEAP properties
View and modify the AIOps LEAP AIOps LEAP properties as per your requirements.
3. Activate AIOps LEAP
Activate AIOps LEAP to enable grouping of incidents, create problem records, and generate
resolution playbooks.
4. Change AIOps LEAP large language model (LLM)
Modify the LLM model to suit your requirements.
Install AIOps LEAP
You can install the AIOps LEAP application using Now Assist for IT Operations Management
®
(ITOM) (sn_itom_gen_ai) if you have the admin role. The application installs related ServiceNow
Store applications and plug-ins if they aren’t already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the AIOps LEAP
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: System admin

About this task

The following items are installed with AIOps LEAP:
• Roles
• Scheduled jobs
• Tables
For more information, see Components installed with AIOps LEAP.

Procedure
1. Go to the ServiceNow Store

website.

2. In the search bar, enter Now Assist for ITOM and then select Search.
3. Select the Now Assist for ITOM widget and then select Get to make this application available
for installation on your instances.
4. Install the Now Assist for ITOM application.
a. Navigate to All > System Definition > Plugins.
b. Search for Now Assist for IT Operations Management (ITOM).
c. Select Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4770


<!-- page 4771 -->
Setup AIOps LEAP properties
Configure AIOps LEAP properties to estimate cost and time savings calculations for your
organization.

Before you begin

Role required: LEAP admin

About this task

If you are a first-time user of AIOps LEAP, then use the default values to get an understanding of
how each of these values are used for estimation. You can later modify these values to suit your
organization requirements.

Procedure
1. Click Configure settings.
2. On the settings page, choose one of the following options:
◦ Fresh Install
a. Select Configure settings.
b. Review the default values for each property.
c. Select Save.

Note: AIOps LEAP recommends using default values initially to view and
understand the cost and time savings estimates.
◦ Upgrade
a. Select Configure settings.
b. Review the default values for each property.
c. Modify values as needed.
d. Select Save.
You are redirected to the AIOps LEAP landing page. For details on each field, see AIOps LEAP
settings fields
3. Activate AIOps LEAP.
Activate AIOps LEAP
Activate the AIOps LEAP skill after installing the application to assemble and categorize
incidents.

Before you begin

Role required: System admin or AIOps LEAP admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4771


<!-- page 4772 -->
Procedure
1. Activate AIOps LEAP with one of the following options.
Options

Steps

a. Navigate to Workspaces > AIOps LEAP.
Workspaces

b. Select Now Assist Admin Workspace.
c. On the LEAP installer card, select Activate
skill.
a. Navigate to All > Now Assist Admin >
Skills.

Now Assist Admin

b. In the workflow list under Technology, se­
lect ITOM.
c. On the LEAP installer card, select Activate
skill.

2. In the LEAP installer input section, enter the details for AIOps LEAP to run scans on existing
records, and select Save and continue.
For details on installer fields, see LEAP Installer fields
3. In the Define access section, select the role to whom you want to provide access to LEAP skills.
4. In the Select display section of LEAP installer, select the required display and select
Save and continue.
5. In the Review and activate section of LEAP installer,review the selections, and select
Activate.
6. Select Return to ITOM on the success message.
7. The grouping job starts and proceeds to group records into automation

opportunities.
If errors are encountered, then LEAP provides links to knowledge base articles to understand
the root cause and steps to resolve issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4772


<!-- page 4773 -->
Change AIOps LEAP large language model (LLM)
AIOps LEAP allows you to change the default LLM provider from the Now LLM to your required
LLM.

Before you begin

Role required: admin

About this task

If you change the LLM model, the AIOps LEAP skills should be reapplied to the selected model.
The reason is AIOps LEAP skills are not applied automatically to an instance.

Procedure
1. Access Now Assist Admin in your workspace.
2. Select Settings > Manage model

providers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4773


<!-- page 4774 -->
3. Select Edit model provider, and then select

Customize.
4. In the Edit provider section for skill groups, select the
required LLM provider and AIOps LEAP as the Skill group

name.

Using AIOps LEAP
AIOps LEAP gathers incidents or issues and groups them into items called automation
opportunities (AOs).

AIOps LEAP tasks
AOs are categorized depending on how critical the services are, number of hand offs, and
incident information:
• Critical
• High
• Moderate
• Low

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4774


<!-- page 4775 -->
Prioritizing AOs helps IT Operations Management personas address the most critical issues
or the issues that are hindering performance. AIOps LEAP provides tasks that support incident
research, root cause analysis, and resolution development. AOs also enable you to create
knowledge base articles or playbooks.
AOs enable you to create essential artifacts including problem records for deeper analysis,
knowledge base articles, and playbooks that give IT operators access to resolution steps.
The Now Assist Explore feature streamlines artifact creation through an intuitive workflow. By
clicking the Explore button, you open the Now Assist panel where a workflow menu guides you
through creating the artifacts you need. While you can also generate artifacts using the Actions
button, the Explore feature provides a centralized, workflow-driven approach to leverage AO
insights and build resolution resources efficiently.
1. Generate and modify resolution steps in AIOps LEAP
Generate resolution steps for automation opportunity and when required get focused solutions
by modifying the resolution steps.
2. Create sub-groups for automation opportunities
Create granular automation opportunities to get targeted resolutions for similar looking issues.
3. Understand the AIOps LEAP value dashboard
View and understand how automation helps LEAP to achieve cost and time savings.
4. Create AIOps LEAP problem records
Create a problem record using the resolution steps of an AO. The problem record helps you
perform an in-depth analysis to find the root cause of the incident.
5. Generate AIOps LEAP knowledge base
Generate knowledge base articles using the resolution steps to help resolve similar issues by
L1 operators.
6. Generate AIOps LEAP playbooks
Generate automated playbooks that use the resolution steps to efficiently solve similar
incidents in the future.
7. Use AIOps LEAP playbooks in Service Operations Workspace (SOW)
Use AIOps LEAP generated playbook to resolve incidents in SOW.
Generate and modify resolution steps in AIOps LEAP
Learn how to generate, edit, and track AI-generated resolution steps for automation opportunities
in AIOps LEAP.

About this task

Resolution steps are actions designed to resolve issues identified by an automation opportunity.
During the initial run, GAF generate these steps by analyzing work notes and historical
resolutions.
The Generate resolution steps button creates resolution steps as required. As your system
processes new incidents and records, regenerate these steps to maintain solution accuracy.
AIOps LEAP provides three search capabilities: AI search, KB search, and web search.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4775


<!-- page 4776 -->
• AI search: Scans records within your existing instance to identify relevant resolutions.
• KB search: Searches knowledge base resources external to your organization to suggest more
effective resolution steps.
• Web search: Queries web resources beyond your organization's systems to find
comprehensive solutions, broadening the scope of potential resolutions.

Note:
• Regenerating resolution steps incurs chargeable transactions. Exercise caution and
careful planning before using the regenerate button to avoid unexpected costs.
• Only a system administrator or a LEAP admin with system administrator access can
enable these additional sources of searches. Users with agent or viewer access will need
to contact their administrator to activate these features. Once enabled, LEAP expands its
search capabilities to deliver more comprehensive and effective resolution steps.

Before you begin

Role required: System admin

Procedure
1. Select Workspaces > AIOps LEAP.
2. On the AIOps LEAP landing page, select the required automation opportunity.
3. If resolution steps are unavailable in the Overview section, select Generate resolution steps.
4. If resolution steps are available, and you want to get alternative resolution steps, then use the
Regenerate

button.

Note:
◦ The Regenerate button is disabled while manual editing is in progress.
◦ Resolution steps are generated based on the capability enabled either using AI search
or Knowledge Base or Web search.
5. To manually modify resolution steps, select the edit icon.
Each update to the resolution steps is recorded in the LEAP Outcome Snapshots table for
traceability.
6. To revert to the last generated resolution steps, use the Revert to AI generated steps button.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4776


<!-- page 4777 -->
Result

Resolution steps are generated, tracked, and can be reverted or edited as needed for improved
automation accuracy.
Create sub-groups for automation opportunities
Large automation opportunities in AIOps LEAP are broken into smaller, more manageable subgroups to support focused and contextual incident resolution steps.

Before you begin

Role required: LEAP admin

Procedure
1. Navigate to AIOps LEAP landing page, and select the automation opportunity that you want to
refine.
2. Select Related records tab.
3. Select Create Sub Groups.
The records in the automation opportunity are divided into sub-groups.
4. Select the Sub Groups tab to view the child sub-groups created.
Each child sub-group has it own ID and you can generate focused resolution steps with
only the records in the sub-group. On the AIOps LEAP landing page, the parent automation
opportunity shows child automation opportunity in the Sub Groups column.
Understand the AIOps LEAP value dashboard
Learn how to use the AIOps LEAP value dashboard to view the analysis of automation
opportunities and cost and time savings achieved using automation for IT operations
management.

Before you begin

Role required: admin

Procedure
1. Select the AIOps LEAP dashboard icon
automation opportunities.

to view records analyzed and grouped into

The dashboard provides a comprehensive overview of estimated time and cost savings
achievable with automation.

2. Review the Grouping statistics section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4777


<!-- page 4778 -->
a. Check the total number of records analyzed.
b. View the number of groups created and the average group size.
c. Identify large groups (those exceeding the designated threshold for automation
opportunities).
d. Refer to the duration of the records used to present the statistics along with the last GAF run.
This section helps you understand how incidents are grouped for automation.
3. Review the Automation Value section.
a. Check the predicted cost and time savings from automation.
b. View the number of playbooks created and tickets resolved.
This section demonstrates the impact of automation on operational efficiency.
4. If required, contact your LEAP administrator to modify LEAP settings for tailored savings based
on organizational requirements.
LEAP administrators can adjust dashboard settings to align with business goals.

Result

By following these steps, administrators can effectively use the AIOps LEAP value dashboard to
monitor automation opportunities, analyze grouping and automation values, and optimize cost
and time savings for your IT operations.
Create AIOps LEAP problem records
Create problem records for AIOps LEAP from available incident clusters, also known as
automation opportunities, for further analysis.

Before you begin

Role required: AIOps LEAP admin

About this task

The problem record creation process automatically transfers critical information from incidents
to problem records. When a problem record is created, AIOps LEAP includes all relevant
information. This information includes:
• incident group description
• incident group link
• resolution steps
The automated data transfer is characterized with:
Root cause documentation
AIOps LEAP populates the cause notes section of the problem record with the same
details as available in existing incident records.
Incident attachment
All incidents associated with the group are automatically linked to the problem
record for comprehensive tracking.
Async processing

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4778


<!-- page 4779 -->
Problem records are generated efficiently without manual intervention even during
high-volume scenarios.

Procedure
1. Select Workspaces > AIOps LEAP.
2. On the AIOps LEAP landing page, select an automation opportunity.
3. If resolution steps don't appear in the Overview section, select Generate resolution steps.
4. Select Actions > Create problem record button to create a record for further in-depth analysis.

Another option is to invoke the LEAP AI agent by selecting the Explore button

and creating problem record.
Generate AIOps LEAP knowledge base
Resolution steps from automation opportunities are used to create knowledge base articles,
enabling quicker resolution to similar issues in future.

Before you begin

Role required: admin

About this task

AIOps LEAP automates the generation of knowledge base articles using the Actions or Explore
button.

Procedure
1. Navigate to Workspaces > AIOps LEAP.
2. On the AIOps LEAP landing page, select the required automation opportunity.
3. If resolution steps are unavailable in the Overview section, select Generate resolution steps.
The resolution steps will be generated and you create knowledge base articles.
4. Click Actions > Create KB.
The page to create a knowledge base article appears.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4779


<!-- page 4780 -->
Another option is to invoke the LEAP AI agent by selecting the Explore button

and creating knowledge base articles.
5. Enter the details you want to enter in the knowledge base page and select Save.
Alternatively, you can use the Explore button and use the workflow menu to create a
knowledge base article.
Generate AIOps LEAP playbooks
Create standard, dynamic, and automated playbooks using AIOps LEAP to promote fast incident
resolution and response time.

Before you begin

Role required: AIOps LEAP admin

Procedure
1. Select Workspaces > AIOps LEAP.
2. On the AIOps LEAP landing page, select the required automation opportunity to create a
playbook.
3. If resolution steps are unavailable in the Overview section, select Generate resolution steps.
4. Select one of the following options to create playbook.
UI option

Steps

Select Actions button
Actions
, and select
Create Playbook.
a. Select Explore button

Explore
.
b. In the Now Assist panel, select Create play­
book.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4780


<!-- page 4781 -->
Workflow Studio opens and the playbook generation process starts. The Playbook name and
Now Assist directions fields are pre-filled with the problem record title and the generated
resolution steps.

Use AIOps LEAP playbooks in Service Operations Workspace (SOW)
AIOps LEAP playbooks are available for use in the SOW interface.

Before you begin

Role required: admin

Procedure
1. Navigate to All > AIOps LEAP.
2. Select the required automation opportunity.
3. Generate AIOps LEAP playbooks.
4. Open the SOW interface using the Workspaces menu.
5. Select the required incident, and access the insights' panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4781


<!-- page 4782 -->
6. Select the playbook icon

.

7. If a LEAP playbook is available for the selected incident, then it can be used to resolve the
issue.

AIOps LEAP reference
These topics provide detailed field description information required during AIOps LEAP
installation.
LEAP Installer fields
Description of the field values that you configure while installing AIOps LEAP.
AIOps LEAP skills
Skill

Description

Run frequency

Frequency to run AIOps LEAP on the required
table.

Group records from this table *

Table name to run AIOps LEAP query to filter
records for grouping.

Use this column for grouping *

Column name from the above table used to
read records for grouping. Default value is
'short_description'.

Use this filter

Filter details used to read records for grouping.

Note: This field can be modified by
customers.
By default, the incidents are grouped and
filtered for the last 6 months.
Use this column for topic generation *

Record columns used to create the titles for
the created groups.

Note: This field can be modified by
customers.
Components installed with AIOps LEAP
Several types of components are installed with activation of the plugin, including tables, user
roles, and scheduled jobs.

Roles installed
Role title [name]

Description

AIOps LEAP admin
[sn_itom_leap.leap_admin] You have full control over AIOps LEAP capabilities, including the
following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4782


<!-- page 4783 -->
Role title [name]

Description

• Turn features on and off
• Execute scheduled jobs
• Manage AIOps LEAP tables and the AIOps LEAP Workspace
• Generate and update resolution steps
• Create and view problems and generate AIOps LEAP playbooks
from automation opportunities (AO)
AIOps LEAP viewer
You can access and view data related to AIOps LEAP, including
[sn_itom_leap.leap_viewer] tables, the workspace, and problems originating from AOs.
AIOps LEAP agent
[sn_itom_leap.leap_agent]

You can access the AIOps LEAP menu from the Service
Operations Workspace (SOW) and trigger AIOps LEAP executions
directly from within SOW.

Scheduled jobs installed
Scheduled job

Description

Populate Record Metrics Runs once per day to populate the LEAP aggregate metrics table by
Aggregate Records
time periods.
Update Record Metrics
Table with Calculated
Metrics

Runs daily to calculate and update the records in the LEAP Record
Metrics table for all the records where the metrics haven't been
calculated yet.

GAF- Run Offline Flow

Runs monthly to group the tasks using the task data provided in the
skill configuration while activating the LEAP skill.

Tables installed
Table

Description

LEAP
aggregate
metrics

Contains metrics, like cost savings, time savings, and record count, for each time
period. This data is used in the LEAP report page in the workspace.

LEAP
feedback

Stores the feedback given by the agent to the playbooks that are run to fix the
tasks.

LEAP GAF
mapping

Maintains a map between the GAF groups and the published LEAPs to retain
information in the subsequent GAF clustering runs.

LEAP group Stores the LEAP group details, like group description, resolution steps, and
whether the LEAP is automated or not.
LEAP group Maintains data, like business impact, projected cost savings, problem record, and
ranking
status, that is used in the Automation Opportunities page of the workspace.
LEAP
properties

Sets custom values to the properties that are used in AIOps LEAP.

LEAP
record
metrics

Maintains data that's used in Published LEAP page in the workspace. It contains
calculated data, like time saved, tickets resolved, and rating trend.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4783


<!-- page 4784 -->
AIOps LEAP settings fields
AIOps LEAP settings page field values helps estimate cost and time savings when automation
is used. The default values can be modified as per your organizational requirement for savings
calculations.

LEAP settings fields
LEAP fields
Field name

Description

Cost per work note ($)

This value represents the cost for each work
note that also includes labor and operational
expenses for every incident.

Time per work note (hrs)

This value is the average time spent on each
work note entry used to estimate the total time
impact across incidents.

Overhead factor for P1 records

Overhead factors are multipliers that are
used for high-priority incidents and represent
hidden costs.
Priority 1 incidents often require more
coordination, communication, and escalation
—beyond just the direct work notes. For P1
incidents, the base cost is multiplied by 1.8 to
reflect the additional impact.

Overhead factor for P2 records

Overhead factors are multipliers that are
used for high-priority incidents and represent
hidden costs.
For priority 2 incidents, the base cost is
multiplied by 1.4 to reflect the additional
impact.

Overhead factor for P3 records

Overhead factors are multipliers that are
used for high-priority incidents and represent
hidden costs.
For priority 3 incidents, the base cost is
multiplied by 1.1 to reflect the additional
impact.

Overhead factor for P4 records

Overhead factors are multipliers that are
used for high-priority incidents and represent
hidden costs.
For priority 4, the base cost is multiplied by 0.8
to reflect the additional impact.

Overhead factor for P5 records

Overhead factors are multipliers that are
used for high-priority incidents and represent
hidden costs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4784


