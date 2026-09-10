# Zurich IT Operations Management — Metric Intelligence reference / Now Assist for ITOM

Source: servicenow-zurich-it-operations-management-enus.pdf | Release: zurich | Pages: 4717–4757 of 4823

Sections: Metric Intelligence reference (p4717); Now Assist for ITOM (p4718); Exploring Now Assist for ITOM (p4720); Configuring Now Assist for ITOM (p4720); Using skills in Now Assist for ITOM (p4732); Using agentic workflows in Now Assist for ITOM (p4740)

---

<!-- page 4717 -->
Metric Intelligence reference
Reference topics provide additional information about Metric Intelligence settings and
properties.

Insights Explorer settings
You can configure Insights Explorer settings to control for example, the refresh frequency or the
display of related records.
Click the cog Settings icon to open the Application settings dialog box.

Setting

Description

Refresh interval

Enable and set the frequency for refreshing
metrics data on the Insights Explorer.

Indicators

Enable any indicator to display related records
such as incidents or problems for CIs. The
respective icon displays on the timeline in the
metric chart, indicating the number of records
for the CI.
A toggle is available only if the Active in
Metrics field is selected on the Map Indicator
form for the respective table. For example, the
Incident toggle is available only if Active in
Metrics is selected on the Map Indicator form
for the incident [Incident] table.

Related topics
Dependency Views map indicators

Sensitivity bounds properties for Insights Explorer metrics
The following properties can be configured to customize system behavior when detecting
sensitive bounds for Insights Explorer metrics. To invoke changes to the default values, navigate
to System Properties > All Properties and add the indicated properties (they are not visible by
default).
Sensitive Bounds Properties
Property Name

Description

sa_metric.sensitive_bounds_calculation_enabled
Enable/disable sensitive bounds calculation.
Default: True
sa_metric.sensitive_bounds_percentile

Percentile value of sensitivity bounds
calculation. If the configured percentage
of metric values falls within the number of
standard deviations (STDs) indicated in the

sa_metric.sensitive_bounds_sensitivity_facto
property, sensitive bounds are
detected and sensitivity calculation
changes to the value specified in the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4717


<!-- page 4718 -->
Sensitive Bounds Properties (continued)
Property Name

Description

sa_metric.sensitive_bounds_control_factor
property.
Default: 95%
sa_metric.sensitive_bounds_control_factor

The number of standard deviations (STDs)
from the mean metric value by which metric
bounds are measured after the system detects
sensitive bounds.
Default: 5.0

sa_metric.sensitive_bounds_sensitivity_factor

The number of standard deviations (STDs)
from the mean metric value by which the
system tests for sensitive bounds.
Default: 2.0

Related topics
Metric bounds sensitivity

Now Assist for IT Operations Management (ITOM)
®

Use the ServiceNow Now Assist for IT Operations Management (ITOM) application to analyze
alerts in Event Management. Alert analyses include a human-readable brief of the alert and
technical information to help you investigate the alert more effectively.

Get started

Explore

Configure

Use ITOM generative AI

Learn more about
Now Assist for ITOM

Configure the Now
Assist for ITOM
application to get started

Use generative AI
capabilities offered by
Now Assist for ITOM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4718


<!-- page 4719 -->
Use ITOM AI
agent collection

Use agentic workflows
in Now Assist for ITOM

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
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI, Google
Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist skills and
AI agents. Use the Configuration Controls in AI Control Tower
to define which options are
available, then set the skill-level preferences in the Now Assist Admin console . For more
information, see Large language models on the ServiceNow AI Platform

®

.

Note: Currently, Now Assist for ITOM only analyzes tag-based, rule-based, and Log
Analytics alert groups. For all other alert group types, it only analyzes the parent alert.

Dependencies
For a list of Now Assist for IT Operations Management (ITOM) plugin dependencies, see
Applications installed with Now Assist for ITOM.

Troubleshoot and get help
• ServiceNow Community on AI and Intelligence
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support
AI limitations
This application uses artificial intelligence (AI) and machine learning, which are rapidly evolving fields of study that generate predictions based on patterns
in data. As a result, this application may not always produce accurate, complete, or appropriate information. Furthermore, there is no guarantee that this
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4719


<!-- page 4720 -->
application has been fully trained or tested for your use case. To mitigate these issues, it is your responsibility to test and evaluate your use of this application for
accuracy, harm, and appropriateness for your use case, employ human oversight of output, and refrain from relying solely on AI-generated outputs for decisionmaking purposes. This is especially important if you choose to deploy this application in areas with consequential impacts such as healthcare, finance, legal,
employment, security, or infrastructure. You agree to abide by ServiceNow’s AI Acceptable Use Policy

, which may be updated by ServiceNow.

Important: Don't use Now Assist for ITOM for critical security alerts.
Data processing
This application requires data to be transferred from ServiceNow customers' individual instances to a centralized ServiceNow environment, which may be located
in a different data center region from the one where your instance is, and potentially to a third-party cloud provider, such as Microsoft Azure. This data is handled
per ServiceNow's internal policies and procedures, including our policies available through our CORE Compliance Portal

.

Data collection
ServiceNow collects and uses the inputs, outputs, and edits to outputs of this application to develop and improve ServiceNow technologies including ServiceNow
models and AI products. Customers can opt out of future data collection at any time, as described in the Now Assist Opt-Out page
For more information, see the Now Assist documentation

.

.

Related topics
Exploring Now Assist for IT Operations Management (ITOM)

Exploring Now Assist for IT Operations Management (ITOM)
The Now Assist for IT Operations Management (ITOM) application uses generative AI to
provide alert analyses. Alert analyses include a human-readable brief of the alert and technical
information to help you investigate the alert more effectively.
Alert analysis is a crucial feature that completely transforms the alert triage process and can
help achieve faster, seamless alert management. Powered by generative AI, it uses a large
language model (LLM) to generate human-readable alert titles and detailed descriptions based
on enriched and actionable alert data. The AI-generated alert information facilitates quick alert
triage and effective analysis for your team, which can lead to a substantial reduction in resolution
time.
Alert analysis enhances the efficiency and effectiveness of alert management.
Key features include:
• Automatic generation of clear, easy-to-understand alert descriptions.
• Availability of the analysis in the Alert form and Express List.
• Ability to refresh and regenerate data using card refresh.

Note: Alert analyses are provided in English, irrespective of the language used in the alert
description.

Note: Currently, Now Assist for ITOM only analyzes tag-based, CMDB, Log Analytics,
Mixed, and Network Traffic-based alert groups. For all other alert group types, it only
analyzes the parent alert.

Configuring Now Assist for IT Operations Management (ITOM)
Enable Event Management users to view alert analyses that Now Assist for ITOM creates using
generative AI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4720


<!-- page 4721 -->
Install the Now Assist for IT Operations Management (ITOM) plugin
®

Install the ITOM plugin in the ServiceNow Now Assist feature.

Before you begin

Install the AIOps Experience [sn_sow_aiops] application from the ServiceNow Store. See Install
Service Operations Workspace for ITOM application for more information.
Role required: admin

About this task

Install Now Assist plugins to enable generative AI and agentic AI on your instance.

Procedure
1. Go to the ServiceNow Store

website.

2. In the search bar, enter Now Assist for ITOM and then select Search.
3. Select the Now Assist for ITOM widget and then select Get to make this application available
for installation on your instance(s).
4. Install the Now Assist for ITOM application.
a. Navigate to All > System Definition > Plugins.
b. Search for Now Assist for IT Operations Management (ITOM).
c. Select Install.
Related topics
View an alert analysis by Now Assist in Express List

Activate Now Assist AI agents for IT Operations Management (ITOM)
Activate Now Assist AI agents associated with the Triage and analyze alerts agentic workflow, to
enable the agentic AI experience.

Before you begin

Before activating the Now Assist AI agents, you must install the Now Assist for IT Operations
Management (ITOM) plugin. For more information, see Install the Now Assist for IT Operations
Management (ITOM) plugin.
To get started with AI agents, you must have:
• An instance on Yokohama patch 3 and above.
• A ServiceNow Pro Plus or Enterprise Plus license.
• AI Search enabled on your instance.
Role required: admin

Procedure
1. Activate the Triage and analyze alert agentic workflow in AI Agent Studio.
a. Navigate to All > AI Agent Studio > Create and manage.
b. In the table, select Triage and analyze alerts.
The Triage and analyze alerts page in AI Agent Studio lets you manage the agentic workflow,
including options for Describe and connect, Define trigger, and Select display.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4721


<!-- page 4722 -->
2. Make the Triage and analyze alerts agentic workflow visible in the Now Assist panel.
a. Navigate to Select display.
b. Next to Now Assist panel select the Display toggle to turn on the display.
c. Select Save and test.
d. Navigate to All > Virtual Agent > Designer.
e. From the Select assistant drop-down list, select Now Assist Panel - Platform(default).
f. Search for Triage and analyze alerts.
g. Select the row Actions icon (

), and select Promoted.

What to do next

To access AI agents in the Now Assist panel, you must enable the panel. For more information,
see Turn on the Now Assist panel .

Activate Now Assist skills in Now Assist for IT Operations Management
(ITOM)
You can activate the Now Assist skills for use in Now Assist for IT Operations Management
(ITOM).

Before you begin

Before activating the Now Assist skills, you must install the Now Assist for IT Operations
Management (ITOM) plugin. For more information, see Install the Now Assist for IT Operations
Management (ITOM) plugin.
Role required: admin

About this task

Activate the Now Assist skills in the Now Assist for IT Operations Management (ITOM) plugin to
enable generative AI on your instance.

Procedure
1. Navigate to All > Now Assist Admin > Skills.
If you’re already in the Now Assist Admin console, select the Now Assist Skills tab.
2. On the navigation panel, select Technology > ITOM to review the skill set.
Toggle between the list and grid layouts for optimum viewing experience.
3. Select Activate skill.
After configuring a step, select Save and continue to go to the next step. Return to a previous
step by selecting Back.
4. Choose where to display Now Assist skills.
You can choose where to display Now Assist skills. It is recommended to enable both Inproduct desktop and Now Assist panel. For every display option, you can select the roles to
whom the Now Assist skills will be displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4722


<!-- page 4723 -->
a. Navigate to Select display.
b. Select where you'd like to display the skill by selecting the Display toggle to turn on the
display.
c. Select Save and test.
Activate the Service Mapping Candidate skill
The Service Mapping Candidate skill provides Now Assist the ability to classify app service
candidates and generate a description for them. The skill is active by default. If needed,
administrators can activate or deactivate the skill.

About this task

The Service Mapping agentic workflow, Analyze potential impact, uses two Now Assist skills:
• Service Mapping Candidate
• Service Mapping Candidates Impact
The Service Mapping Candidate skill provides names for processes and application service
candidates. The skill gets details about the processes within the application service candidate,
such as publisher, product, and description. Then, it gets details about the application service
candidate, such as name, and description.

Before you begin

Before activating the Now Assist skills, you must install the Now Assist for IT Operations
Management (ITOM) plugin. For more information, see Install the Now Assist for IT Operations
Management (ITOM) plugin.
You must configure the following settings:
• ITOM pro plus SKU
• Now Assist for ITOM 9.10
• Service Mapping Plus (minimum version 1.16.3)
• Now Assist for IT Service Management (ITSM)
• Now Assist for Platform (minimum version 9.1.0)

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. This change simply
activates the skill and does not touch the roles that are needed to use the skill. The new
default behavior works as follows:
New customers
When you install a Now Assist product, designated skills will turn on
automatically.
Existing customers who are upgrading
Any previously unconfigured skill will turn on automatically (the skill was never
turned on, then off again).
There is no change to Now Assist skills that are currently enabled and
customized.
Previously configured skills that were turned on, then off, will remain inactive.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4723


<!-- page 4724 -->
Procedure
1. Navigate to All > Now Assist Admin > Skills.
2. On the navigation panel, select ITOM.
3. On the Service Mapping Candidate tile, select Activate.
Activate the Service Mapping Candidates Impact skill
The Service Mapping Candidates Impact skill analyzes connections and effects on servers.
It enables generating an impact summary, using Now Assist. The skill is active by default. If
needed, administrators can activate or deactivate the skill.

About this task

The Service Mapping agentic workflow, Analyze potential impact, uses two Now Assist skills:
• Service Mapping Candidate
• Service Mapping Candidates Impact
The Service Mapping Candidates Impact skill enables the agent to create a summary of
impacted components, following a change request.

Before you begin

Before activating the Now Assist skills, you must install the Now Assist for IT Operations
Management (ITOM) plugin. For more information, see Install the Now Assist for IT Operations
Management (ITOM) plugin.
You must configure the following setting:
• ITOM pro plus SKU
• Now Assist for ITOM 9.10
• Service Mapping Plus (minimum version 1.16.3)
• Now Assist for IT Service Management (ITSM)
• Now Assist for Platform (minimum version 9.1.0)

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. This change simply
activates the skill and does not touch the roles that are needed to use the skill. The new
default behavior works as follows:
New customers
When you install a Now Assist product, designated skills will turn on
automatically.
Existing customers who are upgrading
Any previously unconfigured skill will turn on automatically (the skill was never
turned on, then off again).
There is no change to Now Assist skills that are currently enabled and
customized.
Previously configured skills that were turned on, then off, will remain inactive.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4724


<!-- page 4725 -->
Procedure
1. Navigate to All > Now Assist Admin > Skills.
2. On the navigation panel, select ITOM.
3. On the Service Mapping Candidates Impact tile, select Activate.

Configuring agents and skills for Now Assist for ITOM
Configure observability AI agents and skills for the analyze alert impact agentic workflow or
manage alerts autonomously agentic workflow. Once configured, they gather information to help
you investigate alerts.
Configure the Datadog analysis AI agent
Configure the Datadog analysis AI agent to use the Datadog observability skill in the manage
alerts autonomously agentic workflow. Once configured, the skill gathers information to help you
investigate alerts.

Before you begin

Before configuring the Datadog analysis AI agent, you must do the following:
• Install Now Assist for IT Operations Management (ITOM)

.

• Integrate Datadog platform events with Event Management.
• Copy your Datadog API key and application key.
Role required: connection_admin and credential_admin

Procedure
1. Navigate to All > sys_alias.LIST.
2. Search for and select Datadog analysis AI agent.
3. Select Create New Connection & Credential.
4. On the form, fill in the fields.
Field

Description

Connection Name

Name of your Datadog connection. This
name helps you identify it later. For exam­
ple, Datadog analysis AI agent
connection.

Connection URL

URL of your Datadog instance. Datadog
URLs follow this format: https://
api.datadoghq.com.

Datadog API key

Your Datadog API key.

Datadog Application key

Your Datadog application key.

5. Select Create.
Your connection appears in the Connections tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4725


<!-- page 4726 -->
What to do next

Activate the Datadog analysis AI agent to use it in the manage alerts autonomously agentic
workflow. In AI Agent Studio, navigate to Create and manage, find the Datadog analysis AI agent,
and turn on the agent in the Select channels and status screen.
To learn more about using the Datadog analysis AI agent in the manage alerts autonomously
agentic workflow, see Manage alerts autonomously agentic workflow.
Configure the Dynatrace analysis AI agent
Configure the Dynatrace analysis AI agent for the analyze alert impact agentic workflow. This
configuration also supports the Dynatrace observability skill in the manage alerts autonomously
agentic workflow. After you configure the agent, the workflows can surface information from
Dynatrace to help you investigate alerts.

Before you begin

Before configuring the Dynatrace analysis AI agent, you must do the following:
• Install Now Assist for IT Operations Management (ITOM)

.

• Integrate Dynatrace platform events with Event Management.
• Copy your Dynatrace connection URL and Dynatrace access token or personal access token.
The Dynatrace access token or personal access token must have the problems.read
scope.
Role required: connection_admin and credential_admin

Procedure
1. Navigate to All > sys_alias.LIST.
2. Search for and select Dynatrace analysis AI agent.
3. Select Create New Connection & Credential.
4. On the form, fill in the fields.
Field

Description

Connection Name

Name of your Dynatrace connection. This
name helps you identify it later. For exam­
ple, Dynatrace analysis AI agent
connection.

Connection URL

URL of your Dynatrace instance.
Dynatrace URLs follow this format:
https://<your-resourcename>.live.dynatrace.com.

Dynatrace access token or personal
Access token or personal access token
(must prefix with 'Api-Token ')

Header Name

access token. The token must begin with
Api-Token, for example, Api-Token
dt0s01.STABCDEF12345.G3HIJKLMNOP.
Header name for the Dynatrace platform to­
ken: Authorization. Change this value to
customize the header for different APIs or fol­
low specific security policies.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4726


<!-- page 4727 -->
5. Select Create.
Your connection appears in the Connections tab.

What to do next

Activate the Dynatrace analysis AI agent to use it in the analyze alert impact agentic workflow
or manage alerts autonomously agentic workflow. In AI Agent Studio, navigate to Create and
manage, find the Dynatrace analysis AI agent, and turn on the agent in the Select channels and
status screen.

Note: To use the Dynatrace analysis AI agent in the analyze alert impact agentic workflow,
make sure that the Alert impact summary and Alert information retrieval AI agents are
active. They're also required for the analyze alert impact agentic workflow.
To learn more about using the Dynatrace analysis AI agent in the analyze alert impact agentic
workflow or manage alerts autonomously agentic workflow, see Use the analyze alert impact
agentic workflow and Manage alerts autonomously agentic workflow.
Configure the Google Gemini Cloud Assist agent
Configure the Google Gemini Cloud Assist agent to use the Gemini Cloud Assistant
observability skill in the manage alerts autonomously agentic workflow. Once configured, the skill
gathers information to help you investigate alerts.

Before you begin

Before configuring the Google Gemini Cloud Assist agent, you must do the following:
• Install Now Assist for IT Operations Management (ITOM)

.

• Integrate Google Cloud Platform (GCP) events with Event Management.
• Download the JSON private key file from your Google Cloud project and gather the following
credentials: Google project ID, service account email, and private key ID.
• Create a keystore file and password by following the steps in Create a Java KeyStore
certificate .
• Set up the following Google Cloud project settings and permissions. For detailed instructions,
navigate to the Gemini for Google Cloud documentation and search for Create a Cloud
Assist investigation.
◦ Enable the required APIs for your Google Cloud project.
◦ Assign the Investigation Creator role to the service account.
◦ Give the service account read-access to the resources that you want it to investigate.
Role required: admin

Procedure
1. Navigate to All > sys_alias.LIST.
2. Search for and select Google Gemini Cloud Assist Agent.
3. Select Create New Connection & Credential.
4. On the form, fill in the fields.
Field

Description

Connection Name

Name of your Google Gemini Cloud Assist
connection. This name helps you identify it

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4727


<!-- page 4728 -->
Field

Description

later. For example, Google Gemini Cloud
Assist agent connection.
Google Project ID (project_id)

Identifier for the Google Cloud project that
contains the relevant service account. For ex­
ample, project-12345.

Service Account Email (client_email)

Email address assigned to your Google Cloud
service account. The agent uses this email ad­
dress to authenticate with the Google Cloud
project.

Private Key ID (private_key_id)

Identifier for the private key associated with
your Google Cloud service account.

Keystore Password

Password that protects the keystore file that
you upload below.

Keystore

File that contains your authentication creden­
tials for the Google Cloud service account. Up­
load this file in .jks format.

5. Select Create.
Your connection appears in the Connections tab.

What to do next

Activate the Google Gemini Cloud Assist agent to use it in the manage alerts autonomously
agentic workflow. In AI Agent Studio, navigate to Create and manage, find the Google Gemini
Cloud Assist agent, and turn on the agent in the Select channels and status screen.
To learn more about using the Google Gemini Cloud Assist agent in the manage alerts
autonomously agentic workflow, see Manage alerts autonomously agentic workflow.
Configure the Kentik analysis AI agent
Configure the Kentik analysis AI agent for the analyze alert impact agentic workflow. This
configuration also supports the Kentik observability skill in the manage alerts autonomously
agentic workflow. After you configure the agent, the workflows can surface information from
Kentik to help you investigate alerts.

Before you begin

Before configuring the Kentik analysis AI agent, you must do the following:
• Install Now Assist for IT Operations Management (ITOM)
• Integrate Kentik alerts with Event Management

.

.

• Copy your Kentik connection URL, API token, and the email address associated with the API
token.
The Kentik API token requires this permission: Can view devices.
Role required: connection_admin and credential_admin

Procedure
1. Navigate to All > sys_alias.LIST.
2. Search for and select Kentik analysis AI agent.
3. Select Create New Connection & Credential.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4728


<!-- page 4729 -->
4. On the form, fill in the fields.
Field

Description

Connection Name

Name of your Kentik connection. This name
helps you identify it later. For example, Kentik
Prod.

Connection URL

URL of your Kentik instance. Kentik URLs
follow this format: https://<yourresource-name>.api.kentik.com.

User Email

Email address associated with the Kentik API
token.

API Token

Kentik API token.

5. Select Create.
Your connection appears in the Connections tab.

What to do next

Activate the Kentik analysis AI agent to use it in the analyze alert impact agentic workflow or
manage alerts autonomously agentic workflow. In AI Agent Studio, navigate to Create and
manage, find the Kentik analysis AI agent, and turn on the agent in the Select channels and
status screen.

Note: To use the Kentik analysis AI agent in the analyze alert impact agentic workflow,
make sure that the Alert impact summary and Alert information retrieval AI agents are
active. They're also required for the analyze alert impact agentic workflow.
To learn more about using the Kentik analysis AI agent in the analyze alert impact agentic
workflow or manage alerts autonomously agentic workflow, see Use the analyze alert impact
agentic workflow and Manage alerts autonomously agentic workflow.
Configure the New Relic analysis AI agent
Configure the New Relic analysis AI agent for the analyze alert impact agentic workflow. This
configuration also supports the New Relic observability skill in the manage alerts autonomously
agentic workflow. After you configure the agent, the workflows can surface information from New
Relic to help you investigate alerts.

Before you begin

Before configuring the New Relic analysis AI agent, you must do the following:
• Install Now Assist for IT Operations Management (ITOM)

.

• Integrate New Relic with Event Management.
• Copy your New Relic API key.
The New Relic API key must be a user key, also known as a personal API key.
Role required: connection_admin and credential_admin

Procedure
1. Navigate to All > sys_alias.LIST.
2. Search for and select New Relic analysis AI agent.
3. Select Create New Connection & Credential.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4729


<!-- page 4730 -->
4. On the form, fill in the fields.
Field

Description

Connection Name

Name of your New Relic connection. This
name helps you identify it later. For example,
New Relic Prod.

Connection URL

URL of the New Relic AI
API: https://nraistreaming.service.newrelic.com.
The connection URL might vary by region or
account.

API Key

New Relic API key.

Header Name

Header name for the New Relic API key: XAPI-Key. Change this value to customize
the header for different APIs or follow specific
security policies.

5. Select Create.
Your connection appears in the Connections tab.

What to do next

Activate the New Relic analysis AI agent to use it in the analyze alert impact agentic workflow
or manage alerts autonomously agentic workflow. In AI Agent Studio, navigate to Create and
manage, find the New Relic analysis AI agent, and turn on the agent in the Select channels and
status screen.

Note: To use the New Relic analysis AI agent in the analyze alert impact agentic workflow,
make sure that the Alert impact summary and Alert information retrieval AI agents are
active. They're also required for the analyze alert impact agentic workflow.
To learn more about using the New Relic analysis AI agent in the analyze alert impact agentic
workflow or manage alerts autonomously agentic workflow, see Use the analyze alert impact
agentic workflow and Manage alerts autonomously agentic workflow.
Configure the manage alerts autonomously agentic workflow
Configure an alert management rule to operate the manage alerts autonomously agentic
workflow manually or automatically.

Before you begin
• Install Now Assist for IT Operations Management (ITOM) . For more information about
installing Now Assist plugins, see Install Now Assist plugins .
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .
Role required: evt_mgmt_admin, evt_mgmt_operator

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4730


<!-- page 4731 -->
About this task

Configure the autonomous workflow alert management rule to operate the manage alerts
autonomously agentic workflow manually or automatically. For more information about alert
management rules, see Alert management rules for resolving alerts.
When the workflow operates automatically, alerts are addressed as they’re created and AI insight
information is displayed in Express List.
When the workflow operates manually, users must manually generate AI insights. For more
information, see Review AI generated alert information and insights in Express List.
For more information about the manage alerts autonomously agentic workflow, see Manage
alerts autonomously agentic workflow.

Note:
If you change the alert management rule for the manage alert autonomously workflow, you
must update the sn_aiops_ai_agents.autonomous_alert_rule_sys_id property, which
points to the alert management rule.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation pane, select the ITOM AIOps configuration center icon
.
The ITOM AIOps configuration center page appears. The configuration center is a centralized
workspace that enables you to configure and manage AIOps features from a single place. For
more information, see ITOM AIOps configuration center.
3. On the ITOM AIOps configuration center page, under the Optimize section, select Respond to
alerts.
The Respond page appears.

4. In the Name column, select Autonomous workflow.
If the Edit automation pop-up is displayed, select Open. The Alert Management Rule form
opens to the Alert info tab.

Note: The Active check box is selected when the rule is enabled. To disable the rule
and the manage alerts autonomously agentic workflow, select the check box.
5. Configure the execution information for the alert by selecting the Actions tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4731


<!-- page 4732 -->
6. In the Execution column, double-click the cell for the Autonomous workflow.
7. Select the drop-down arrow to choose alert execution, and then select the green check mark

to save.

What to do next

To learn more about generating AI insights with the manage alerts autonomously agentic
workflow, see Review AI generated alert information and insights in Express List.

Using skills in Now Assist for IT Operations Management (ITOM)
®

Use the ServiceNow Now Assist for ITOM application to view alert or incident analyses that Now
Assist creates using generative AI.
Alert analyses include human-readable briefs of the alert and additional technical information to
help you investigate the alert more effectively. The analyses are provided in English, irrespective
of the language used in the alert description.
®

For more information about the ServiceNow Now Assist for IT Operations Management (ITOM)
application, see Now Assist for IT Operations Management (ITOM).

Important: Some Now Assist skills, agents, and agentic workflows are now turned on by
default. The new default behavior works as follows:
New customers
When you install a Now Assist product, designated skills, agents, or agentic
workflows are turned on automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills, agents, or agentic workflows that are currently
enabled and customized.
An AI asset is turned on if:
• The Now Assist plugin is installed, but the asset was never turned on.
• An admin has never adjusted roles for the skill.
An AI asset is not turned on if:
• The asset was previously turned on, and then turned off again.
• An admin has adjusted roles for the asset.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4732


<!-- page 4733 -->
Domain separation and generative AI
By default, all skills exist in the global domain. When you use Now Assist in a domain-separated
environment, users are only able to access data in their domain. For example, if a user uses
the summarization skill, Now Assist only uses material that exists in the user's domain when
generating that summary. Additionally, there is no co-mingling of data for domain-separated
instances when using generative AI skills. The data resides only on the instance, and the shared
services used for generative AI do not persist any requests (prompts) and responses. For more
information, see Domain separation in the Now Assist Admin console . (Note that global domain
is not the same as global scope. For more information, see Exploring Next Experience pickers .)

Documentation in this section
See the following documentation to learn more about using Now Assist for ITOM skills.

View an alert analysis by Now Assist in Service Operations Workspace
View an alert analysis by Now Assist for an alert on the alert's Overview tab in the Service
Operations Workspace. Alert analyses include a human-readable brief of the alert and technical
information to help you investigate the alert more effectively.

Before you begin
• Install the ITOM plugin in the Now Assist feature. For more information, see Install the Now
Assist for IT Operations Management (ITOM) plugin.
• View important information about the Now Assist for IT Operations Management (ITOM)
application in Now Assist for IT Operations Management (ITOM).

Note: Currently, Now Assist for ITOM only analyzes tag-based, CMDB, Log Analytics,
Mixed, and Network Traffic-based alert groups. For all other alert group types, it only
analyzes the parent alert.

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

Role required: evt_mgmt_user, evt_mgmt_operator
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4733


<!-- page 4734 -->
Procedure
1. Navigate to Workspace Experience > Workspaces > Service Operations Workspace.
2. Select the List icon (

).

3. In the Alerts list, select All Alerts.
4. Select an alert.
The alert opens in a separate tab, displaying the Overview subtab.
5. In the Analysis section, select Analyze alert.
6. Review the information provided in the alert analysis.

Note: Alert analyses are provided in English, irrespective of the language used in the
alert description.

View an alert analysis by Now Assist in Express List
View an alert analysis created by Now Assist using generative AI. Alert analyses include a
human-readable brief of the alert and technical information to help you investigate the alert more
effectively.

Before you begin
• Install the ITOM plugin in the Now Assist feature. For more information, see Install the Now
Assist for IT Operations Management (ITOM) plugin.
• View important information about the Now Assist for IT Operations Management (ITOM)
application in Now Assist for IT Operations Management (ITOM).

Note: Currently, Now Assist for ITOM only analyzes tag-based, CMDB, Log Analytics,
Mixed, and Network Traffic-based alert groups. For all other alert group types, it only
analyzes the parent alert.

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

Role required: evt_mgmt_operator
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4734


<!-- page 4735 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. In the navigation bar, select the Express List icon (

).

3. In the Active alerts list, select the information icon (

) next to the alert.

4. On the preview panel Info tab, select Analyze in Alert analysis by Now Assist.
5. View the information provided in the Alert analysis.

Note: Alert analyses are provided in English, irrespective of the language used in the
alert description.
6. Optional: Use the Alert analysis icons to perform related tasks.
Alert analysis icons
Icon

Description

Copy the content of the alert analysis to the
clipboard.
Refresh the alert analysis.

Note: Refreshing regenerates the
results. Past results are deleted.

View an alert group analysis by Now Assist in Express List
®

View an alert group analysis created by ServiceNow Now Assist using generative AI. The
analysis offers a simplified, human-readable description of the alert group and technical
information to help you investigate it more efficiently.

Before you begin

Install the ITOM plugin in the Now Assist feature. For more information, see Install the Now Assist
for IT Operations Management (ITOM) plugin.
®

View important information about the ServiceNow Now Assist for IT Operations Management
(ITOM) application in Now Assist for IT Operations Management (ITOM).
Role required: evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Express List icon (

) in the left navigation bar.

3. In the Active alerts list, select the information icon (
the preview panel.

) to the left of an alert group to display

4. On the preview panel Info tab, select Analyze in Alert analysis by Now Assist.
5. View the information provided in the Alert analysis.

Note: Alert analyses are provided in English, irrespective of the language used in the
alert descriptions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4735


<!-- page 4736 -->
6. Optional: Use the Alert analysis icons to perform related tasks.
Alert analysis icons
Icon

Description

Copy the content of the alert analysis to the
clipboard.
Refresh the alert analysis.

Note: Refreshing regenerates the
results. Past results are deleted.

Related topics
Viewing an alert group analysis by Now Assist in Express List

View an error analysis by Now Assist in Agent Client Collector
View an error analysis created by Now Assist using generative AI. Error analyses enable asking
questions on a specific agent's error or error code.

Before you begin

Role required: agent_client_collector_admin

Procedure
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select the Agent Client Collector (ACC) Diagnostic entry.
3. Locate the Add AI agents that can perform these steps widget and select the Agent Client
Collector (ACC) Diagnostic entry.
4. Enable the Now Assist option by sliding the Display toggle switch to the right.
Display toggle bar

Now Assist retrieves information on errors within agents.

Save the alert analysis summary by Now Assist as alert group description in
Express List
Save the human-readable summary generated by Now Assist in the Alert analysis as the
description of an alert group.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Express List icon (

) in the left navigation bar.

3. In the Active alerts list, select the information icon (

) to the left of an alert.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4736


<!-- page 4737 -->
4. On the preview panel Info tab, select Analyze in Alert analysis by Now Assist.
5. Review the human-readable, AI-generated Alert analysis summary.

Note: Alert analyses are provided in English, irrespective of the language used in the
alert description.
6. Optional: Edit the summary content.
7. Select Save description to save the summary content as the description of the alert group.
The AI-generated summary content replaces the original description of the alert group.

Generate an alert group description in Express List using Now Assist
Use Now Assist to generate a meaningful description of an alert group in Express List that
encompasses all the alerts within the group. The generated description replaces the original
description of the group.

Before you begin

Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Express List icon (

) in the navigation bar.

3. In the Active alerts list, select the information icon (

) for an alert.

4. Below the displayed alert group description, select Update description.
Now Assist generates a comprehensive new description of the alert group, which
encompasses all the alerts within the group. If you select Update, the generated description
replaces the original description of the alert group taken from the earliest, most severe
secondary alert in the group.
5. Optional: Restore the original alert group description by selecting the revert icon (
Update description and then choosing Restore.

) next to

Launch an alert analysis from the Now Assist panel
Initiate an alert analysis from the Now Assist panel. The alert analysis displays directly in the Now
Assist panel for convenient review.

Before you begin
• Install the ITOM plugin in the Now Assist feature. For more information, see Install the Now
Assist for IT Operations Management (ITOM) plugin.
®

• View important information about the ServiceNow Now Assist for IT Operations Management
(ITOM) application in Now Assist for IT Operations Management (ITOM).
For comprehensive information about the Now Assist panel, see Now Assist panel

.

Role required: evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List icon (

) in the navigation bar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4737


<!-- page 4738 -->
3. Select Lists > Alerts > All Alerts.
4. Initiate an alert analysis from the Now Assist panel using one of the available methods.
Launch an alert analysis

Procedure

a. Select the Now Assist panel icon (

).

The Now Assist panel displays.

From the list

b. Enter an alert analysis request, including
the alert number, in the field at the bottom
of the panel.

Note: If you provide incomplete in­
formation, Now Assist prompts you for
the missing details.
The alert analysis displays in the panel.
a. Open an alert.
b. Select the Now Assist panel icon (
From an alert form

).

The Now Assist panel displays.
c. Select Perform alert analysis.
The alert analysis displays in the panel.

5. Optional: Enter follow-up questions or requests.
For example: Summarize the analysis or Show alert severity.

Create an incident from an alert with Now Assist in Express List
Create an incident with a human-readable, AI-generated description from the Express List pane
by using Now Assist.

Before you begin

Currently, this feature is available for CMDB, Log Analytics, tag-based, and component-based
alerts.
Role required: evt_mgmt_operator, evt_mgmt_admin

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express List icon

.

3. Create an incident from a selected alert.
a. In the Express List pane, select the check box for the desired alert.

Note: To display the individual alerts inside a group, select the chevron icon (

) at

the beginning of the alert group row.
b. Select the Alert actions drop-down list.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4738


<!-- page 4739 -->
c. Under Response actions, select Create Incident with Now Assist.
An incident with a human-readable, AI-generated description is created from the selected alert
and a confirmation message is displayed.

Speed up alert resolution with a Now Assist analysis of past related incidents
Use Now Assist to investigate relevant past incidents and present effective strategies used to
resolve them.
Now Assist queries historical records to find past incidents and analyzes their frequency,
criticality, work notes, and resolution. It presents a summary of the most relevant related
incidents in the Now Assist panel. The summary includes resolution strategies used, as well as
contact details for individuals or teams who resolved the incidents and could assist with the
current alert. The information provided helps you better understand the context and significance
of the current alert and work more efficiently toward resolving it.

Note: An additional Large Language Model (LLM) validation layer is added to the AI
search capability to improve the accuracy of results returned by AI skills.
Generate a Now Assist summary of past related incidents
View a Now Assist summary of past incidents on the same or related Configuration Items (CIs)
and strategies used to resolve them.

Before you begin
• Install the ITOM plugin in the Now Assist feature. For more information, see Install the Now
Assist for IT Operations Management (ITOM) plugin.
• Ensure that the Alert investigation skill is active. For more information, see Install the Now
Assist for IT Operations Management (ITOM) plugin.
®

• View important information about the ServiceNow Now Assist for IT Operations Management
(ITOM) application in Now Assist for IT Operations Management (ITOM).
For comprehensive information about the Now Assist panel, see Now Assist panel

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4739


<!-- page 4740 -->
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

Role required: evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List icon (

) in the navigation bar.

3. Select Lists > Alerts > All Alerts.
4. Open an alert.
5. Select the Now Assist panel icon (
The Now Assist panel displays.

).

6. Request a Now Assist past incidents investigation by selecting Analyze related incidents.
An additional Large Language Model (LLM) validation layer is added to the AI search capability
to improve the accuracy of results returned by AI skills.
A summary of the most relevant related incidents displays in the panel.
7. Optional: Inspect the details of a related incident by selecting the relevant link under Related
Incidents.
The incident page opens, showing the Overview tab.

Using agentic workflows in Now Assist for IT Operations
Management (ITOM)
Use the IT Operations Management (ITOM) agentic workflows to complete tasks autonomously.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4740


<!-- page 4741 -->
Available agentic workflows for ITOM AI agent collection
Agentic workflow
name

Triage and
analyze alerts

Description

Available AI agents

Triages alerts by updating assignments, analyzing
alerts, detecting recurring patterns, and differentiating
between noise and real alerts.

• Alert handling
AI Agent
• Alert analysis AI
agent
• Alert history
analysis AI
agent
• Related
incidents
analysis AI
agent
• Alert
verification AI
agent

Agent Client
Collector (ACC)
Diagnostic
Workflow

Displays error analysis created by Now Assist using
generative AI. Error analyses enable asking questions
on a specific agent's error or error code.

Analyze alert
impact

Investigates an alert and gives you the context that you
need to respond efficiently.

Agent Client
Collector (ACC)
Diagnostic

• Alert impact
summary AI
agent
• Alert
information
retrieval AI
agent
• Dynatrace
analysis AI
agent
• Kentik analysis
AI agent
• New Relic
analysis AI
agent

Analyze potential
impact

Analyzes the potential impact of a change request on
relevant servers and suggested services.

TLS Certificate
renewal

View all certificates about to expire and renew then
automatically all at once.

Alert grouping
Provides tag-based group recommendations for
recommendations selected alerts.

Analyze Potential
Impact

Alert grouping
recommendations
AI agent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4741


<!-- page 4742 -->
Available agentic workflows for ITOM AI agent collection (continued)
Agentic workflow
name

Manage alerts
autonomously

Description

Available AI agents

Investigates alerts, summarizes alert-related reports,
and stores structured insights with key findings in the
AI Agent Insight table.

Manage alerts AI
agent

Important: Some Now Assist skills, agents, and agentic workflows are now turned on by
default. The new default behavior works as follows:
New customers
When you install a Now Assist product, designated skills, agents, or agentic
workflows are turned on automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills, agents, or agentic workflows that are currently
enabled and customized.
An AI asset is turned on if:
• The Now Assist plugin is installed, but the asset was never turned on.
• An admin has never adjusted roles for the skill.
An AI asset is not turned on if:
• The asset was previously turned on, and then turned off again.
• An admin has adjusted roles for the asset.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

AI model providers
You can use Now LLM Service, Now LLM Long Term Stable models (LTS), Azure OpenAI, Google
Gemini or Anthropic Claude on AWS as the AI model provider for all Now Assist skills and
AI agents. Use the Configuration Controls in AI Control Tower
to define which options are
available, then set the skill-level preferences in the Now Assist Admin console . For more
information, see Large language models on the ServiceNow AI Platform

®

.

Security
Enable security settings to run AI agents and agentic workflows using Access Control Lists
(ACLs) and user identities. You can configure and manage the ACLs in AI Agent Studio. See
Implement access control in Now Assist AI agents
for more information.

Installed agents
Looking for an AI agent?
• There might be AI agents installed with the Now Assist application that are not used in agentic
workflows. To learn how to see all agents that are available on your instance, see Find AI
agents .
• To find agents that might not be installed on your instance, visit the AI Agent Marketplace
the ServiceNow Store.

on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4742


<!-- page 4743 -->
Visit the following links to learn about the Now Assist for ITOM agentic workflows.

Triage and analyze alerts agentic workflow
Use the triage and analyze alerts agentic workflow to complete preliminary alert tasks and
analysis for alerts.

Triage and analyze alerts agentic workflow overview
The triage and analyze alerts agentic workflow uses AI agents to support alert triage,
investigation, and analysis. AI agents can perform the following functions:
• Acknowledge alerts.
• Assign alerts to individual users and assignment groups.
• Summarize alert and alert group data to create a human-readable description and add
technical analysis.
• Investigate relevant past incidents to analyze the significance of the alert and present options
for resolution.

Note: These functions can also be used for the origin alert of an incident when the
workflow is accessed from the incident form or Express List using the Now Assist panel.
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .
Use the information on this page to learn about the agents related to the triage and analyze alerts
agentic workflow. To modify the triage and analyze alerts agentic workflow, you must duplicate it
and adjust the settings according to your requirements. For more information, see Duplicate an
agentic workflow .

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Triage and analyze alerts agentic workflow
Acknowledge, assign, and investigate current and past alerts to determine significance and
possible resolutions.
To access the agentic workflow, use the Now Assist panel. For more information about using the
agentic workflow in the Now Assist panel, see Now Assist panel .

AI agents used in the triage and analyze alerts agentic workflow
The triage and analyze alerts agentic workflow uses a team of AI agents to perform preliminary
tasks and support alert resolution.
AI agents used in the triage and analyze alerts agentic workflow
AI agent

AI agent role

Alert handling AI agent Assign, acknowledge, and maintain an up-to-date alert record.
Alert analysis AI agent

Perform alert analysis, and update alert description, when applicable.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4743


<!-- page 4744 -->
AI agents used in the triage and analyze alerts agentic workflow (continued)
AI agent

AI agent role

Alert history analysis AI Analyze past occurrences, assess its significance, and close the alert
agent
when applicable.
Related incidents
analysis AI agent

Analyze past incidents and provide insights on common assignments
and summarized resolution notes.

Alert verification AI
agent

Assess data completeness and determine whether the alert is
suitable for analysis.

Analyze alert impact agentic workflow
Use the analyze alert impact agentic workflow to investigate an alert and get the context that you
need to respond efficiently.

Analyze alert impact agentic workflow overview
The analyze alert impact agentic workflow uses AI agents to interact with observability tools,
such as Dynatrace, Kentik, and New Relic. The agents surface information to help you do the
following:
• Understand the severity and impact of alerts.
• Find potential root causes using insights, such as recent deployments.
• Identify ownership by surfacing relevant services and responsible teams.
• Support stakeholder communication with clear, actionable information.
Use the information on this page to learn about the agents related to the analyze alert impact
agentic workflow. To modify the analyze alert impact agentic workflow, duplicate it
and adjust
the settings.

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Analyze alert impact agentic workflow
Investigate an alert and get insights into its severity, impact, ownership, and root causes.
To access the agentic workflow in AI Agent Studio:
1. Navigate to All > AI Agent Studio > Create and manage.
2. Select Analyze alert impact.
The Analyze alert impact page lets you manage the agentic workflow, including defining key
requirements, defining security controls, and adding triggers. Navigate to Select channels and
status to turn on the agentic workflow in the Now Assist panel.

AI agents used in the analyze alert impact agentic workflow
The analyze alert impact agentic workflow uses observability AI agents to gather information from
alerts and request insights. The observability AI agents require additional configuration. For more
information, see Configuring agents and skills for Now Assist for ITOM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4744


<!-- page 4745 -->
Important: Before using the analyze alert impact agentic workflow, activate its AI agents.
In AI Agent Studio, find the agents in Create and manage, and turn on the AI agents in the
Select channels and status screen.
AI agents and their roles
AI agent

AI agent role

Alert impact summary AI agent

Retrieves the alert impact summary for a
specific alert.

Alert information retrieval AI agent

Gathers key observability details for a specific
alert.

Dynatrace analysis AI agent

Gathers insights from Dynatrace about
possible root causes, impacted entities, and
impacted environments.

Kentik analysis AI agent

Gathers insights from Kentik about service
network performance, connectivity, DDOS
attacks, and anomalies.

New Relic analysis AI agent

Gathers insights from New Relic about alert
impact, including service and user impact, root
cause theories, and responsible teams.

Generating the alert analysis
In the agentic workflow record:
1. Review the information in the Define key requirements, Define security controls, and Add
triggers screens, make the necessary updates, and then select Continue.
2. In the Select channels and status screen:
a. Turn on the Now Assist panel display.
b. Select Save and test.
3. Test the agentic workflow by asking a question, for example, What is the impact of
Alert0010056NR?
4. Select Continue to Test Chat Response.
The page shows the chat responses, visualizes the AI agents involved, and lists the AI agent
decision logs.
In AI Agent Studio, you get notified when the analysis is generated. You can then act on
the information or ask more questions about the alert. For more information about using the
agentic workflow in the Now Assist panel, see Use the analyze alert impact agentic workflow.
Use the analyze alert impact agentic workflow
Learn how to use the analyze alert impact agentic workflow in the Now Assist panel. The agentic
workflow helps you investigate an alert and get the context that you need to respond efficiently.

Before you begin

Before using the analyze alert impact agentic workflow, you must have the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4745


<!-- page 4746 -->
• Now Assist for IT Operations Management (ITOM) installed on your instance. See Install Now
Assist plugins .
• The analyze alert impact agentic workflow turned on in the Now Assist panel. See Analyze alert
impact agentic workflow.
• AI agents configured and activated for the observability tools integrated with Event
Management, such as Dynatrace, Kentik, or New Relic. See Configuring agents and skills for
Now Assist for ITOM.
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .
Role required: evt_mgmt_operator

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. From the navigation bar, select the Express list icon (

).

3. Select an alert, making sure that the source is Dynatrace, Kentik, or New Relic.
4. Open the panel by selecting the Now Assist icon (

).

5. Ask a tool-specific question about the alert.
For example, for New Relic alerts, you can ask Have there been recent
deployments for this alert?. See Questions for the analyze alert impact agentic
workflow for the list of available questions.
Now Assist uses the relevant AI agents to analyze your question and respond with a summary
or insight. The first response for an alert might take several seconds to appear.

What to do next

Use the information that you received to understand the alert impact and respond accordingly.
You can also ask more questions about the alert.

Note: Your conversation in the Now Assist panel is specific to the alert that you selected in
Step 3. To ask about a different alert, open that alert and select the Now Assist icon (
start a new conversation.

) to

Agent Client Collector (ACC) diagnostic workflow
Enable and use AI agents to examine agent behavior through the Agent Client Collector (ACC)
diagnostic workflow.

Before you begin
• Ensure that the Now Assist panel is enabled on your instance. For details, see Turn on the Now
Assist panel .
• Ensure that Now Assist for IT Operations Management (ITOM) is installed on your instance. For
more information, see Install the Now Assist for IT Operations Management (ITOM) plugin.
• Enable the Agent Client Collector diagnostic workflow in AI Agent Studio.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4746


<!-- page 4747 -->
1. Select All > AI Agent Studio > Create and manage.
2. On the Agentic workflows tab, select Agent Client Collector (ACC) Diagnostic.
3. Select the Select channels and status option.
4. In the Engage via the Now Assist panel, slide the Display toggle bar to the right (active).
Display toggle bar

• Role required: agent_client_collector_admin, agent_client_collector_user, or
now_assist_panel_user

About this task

Invoke the Agent Client Collector (ACC) diagnostic workflow to:
• Question issues of an ACC agent while on an ACC form.
• Request suggestions to remediate a specific ACC error code.

Procedure
1. In a ServiceNow instance, select the Now Assist icon (

).

2. In the Now Assist panel, enter prompts to invoke the ACC diagnostic workflow and perform
remediation actions on the agent.
Possible prompts include:
◦ Diagnose issues with ACC agent <agent name>
◦ Multiple errors on <agent name>, diagnose them
◦ Provide suggestions to remediate ACC error code <error code number>

Result

An error report is generated, based on the activity logged by the Agent Client Collector
Framework.

Analyze potential impact agentic workflow
The analyze potential impact agentic workflow analyzes how a change request might impact
servers and suggested services. This analysis helps you make informed decisions about the next
steps regarding the change request.

Analyze potential impact agentic workflow overview
Using the analyze potential impact agentic workflow, the analyze potential impact AI agent
produces an analysis of potentially impacted relevant servers and suggested services.

Note: Relevant servers refer to those servers that are currently operational and in use,
excluding any non-operational or retired servers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4747


<!-- page 4748 -->
AI agent used in the analyze potential impact agentic workflow
AI Agent and its role
AI Agent

AI Agent role

Analyze Potential Impact Agent

Analyzes the potential impact of a change on
relevant servers and services and generate an
impact analysis.

Generating the impact analysis
The analyze potential impact agentic workflow in Now Assist uses a single agent to evaluate the
potential impact of a change request. When you select the analyze potential impact AI agent in
the Now Assist panel, it initiates the workflow as follows:
• Prerequisite verification - The agent first verifies that all prerequisites have been met.
• Change request identification - If you have a change request open, the agent retrieves the
change request number from the current active page. Otherwise, it prompts you to provide the
change request number.
• Server selection- The agent selects up to 10 affected servers from the affected configuration
items (CIs) in the change request.
• Match identification - The agent identifies matches between servers and suggested services.
• Impact analysis - Eventually, the agent prioritizes and displays up to 10 impacted relevant
servers, giving priority to servers that are part of suggested services, and up to 3 impacted
suggested services. Additionally, the agent provides you with a summary about each
suggested service and how it might be impacted by related servers. This information is
displayed in the Now Assist panel.
• Saving the impact analysis - The analysis generated by the Analyze potential impact agentic
workflow is saved to the change request work notes.
To learn more about using the workflow, see Use the Analyze potential impact agentic workflow to
assess a change request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4748


<!-- page 4749 -->
Analyze potential impact agentic workflow sample

report

Domain separation
Currently, the analyze potential impact agentic workflow doesn’t support instances with domain
separation. For optimal results, conduct all conversations in English.

Service Mapping Now Assist Skills
Service Mapping Now Assist skills are intelligent capabilities that enhance the Analyze potential
impact agentic workflow. These skills leverage generative AI to identify, classify, and assess the
impact of changes to your IT infrastructure.
Service Mapping provides two primary Gen AI skills:
• Service Mapping Candidate
• Service Mapping Candidates Impact
These Service Mapping Now Assist skills are active by default. For information on activating
inactive skills, see:
• Activate the Service Mapping Candidate skill
• Activate the Service Mapping Candidates Impact skill

Service Mapping Candidate skill
This skill automatically identifies and names processes and application service candidates by
analyzing process characteristics, commands, and parameters. It provides detailed descriptions
and categorization to help you understand which services are running in your environment.
The skill uses a two-stage process:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4749


<!-- page 4750 -->
1. In the process classification stage, the agent uses the skill to analyze individual processes
within an application service candidate. The agent uses the skill to extract:
◦ Publisher: The company or organization that released the product. For example: "Project
Calico".
◦ Product: The specific product name. For example: "Calico".
◦ Description: Detailed explanation of what the process does. For example: "BIRD (BIRD
Internet Routing Daemon) process running as part of Calico networking solution for
Kubernetes and container orchestration. This process handles BGP routing functionality with
remote control socket enabled, running as a daemon with specific Calico configuration for
pod-to-pod networking and network policy enforcement."
◦ Service Hints: Keywords that help identify the service type. For example:
"bird,calico,BGP,routing,daemon,networking,kubernetes,container,policy,socket".
2. In the service information generation stage, the agent combines process details with load
balancer information to generate:
◦ Service Name: A concise, accurate name for the service candidate. For example: "Calico
BGP Routing Service".
◦ Service Description: A comprehensive description of the service's purpose. For example:
"BIRD Internet Routing Daemon process running as part of Project Calico's networking
solution for Kubernetes container orchestration. This service handles BGP routing
functionality for pod-to-pod networking and network policy enforcement, operating as a
daemon with remote control socket capabilities. The component is connected through
Calico's container networking infrastructure to provide routing services in Kubernetes
environments".
◦ G2 Category: Industry-standard categorization from G2.com. For example: "Container
Networking".

Service Mapping Candidates Impact skill
This skill generates comprehensive impact assessments when changes are made to your
infrastructure. It analyzes service connections and dependencies to predict how a change to a
single component might affect other services and servers, and provides a summary of the impact
analysis.
The skill analyzes:
• Connection Topology: How servers within a service candidate are connected.
• Affected Servers: Which servers are directly impacted by a change.
Based on the candidate number, and the analysis, the output summary is provided per a service
candidate. For example:
• Service candidate: "bird [ASC000000015]".
• Impact: "Network routing disruption affecting pod-to-pod communication across Kubernetes
cluster nodes due to Calico Bird BGP routing daemon failure on p-kubenode1-2, potentially
causing connectivity issues for workloads on connected nodes p-kubenode1-3, pkubenode1-4, and p-kubenode1-5".

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4750


<!-- page 4751 -->
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

Use the Analyze potential impact agentic workflow to assess a change request
Use the Analyze potential impact agentic workflow to assess the effects of a change request.
This workflow highlights the potential impacted servers and suggested services to help you
identify risks, benefits, and make any necessary adjustments.

Before you begin

Using the Analyze potential impact agentic workflow requires the installation of the following:
• Service Mapping Plus version 1.16.3.
• Now Assist for IT Operations Management (ITOM) version 2.3.0.
• Now Assist for IT Service Management (ITSM) version 11.1.3.
Role required: sn_change_write

Role masking
Required role:
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .

About this task

The agent verifies the prerequisites at the beginning of the agentic workflow. If any prerequisites
aren’t met, the workflow stops, and you’re informed so that you can acquire the prerequisites. For
more information about the agentic workflow, see Analyze potential impact agentic workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4751


<!-- page 4752 -->
Procedure
Either initiate the Analyze potential impact agentic workflow using a change request number or
from an open change request.
Situation

Steps

a. From the header menu, select the Now As­
sist icon
Change request number is known

to open the Now Assist panel.

b. Select Analyze Potential Impact.
c. When prompted, enter the change request
number.

a. Navigate to Workspaces > Service Opera­
tions Workspace > .
b. Select the list icon

.

c. Navigate to Changes > All.
Open change request

d. Select the applicable change request from
the list.
e. From the header menu, select the Now As­
sist icon

to open the Now Assist panel.

f. Select Analyze Potential Impact.

The Analyze potential impact agentic workflow is initiated and the agent starts with the
verification of the prerequisites.

Result

In the Now Assist panel, the Analyze potential impact agentic workflow generates an analysis of
the potentially impacted relevant servers and suggested services.

Now Assist certificate renewal AI agent
Using the Now Assist certificate renewal AI agent, see which certificates are about to expire and
renew them. Choose a specific certificate and renew it on the spot.
Use the Now Assist certificate renewal AI agent to automatically renew certificates before they
expire. You can perform the following with the Now Assist certificate renewal AI agent:
• Renew a single certificate
• Find all certificates that are about to expire
• Renew all certificates that are about to expire in a single prompt
You must first configure your system for automatic renewal. Configuring requires the following
steps:
1. Configure your MID Server for automatic certificate renewal
2. Add the required applications and capabilities to your MID Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4752


<!-- page 4753 -->
Role masking
enables users to limit the roles and privileges of AI agents during tool execution.
AI agents that get installed with Now Assist applications are assigned pre-defined roles. If you
select Users with specific roles for user access, you must configure the security
controls to include these roles. Data access settings must also include these roles. For the
instructions to change the security controls, see Define security controls for an AI agent .
Discover and renew certificates about to expire using Now Assist
Use Now Assist to find out which certificates expire on a certain date or within a certain date
range. Now Assist produces a Unique Certificates list of these certificates and prompts you to
renew them in a single click.

Before you begin

Complete the following steps to configure your system for the Now Assist certificate renewal AI
agent:
1. Configure your MID Server for automatic certificate renewal
2. Add the required applications and capabilities to your MID Server
Role masking
enables users to limit the roles and privileges of AI agents during tool execution.
AI agents that get installed with Now Assist applications are assigned pre-defined roles. If you
select Users with specific roles for user access, you must configure the security
controls to include these roles. Data access settings must also include these roles. For the
instructions to change the security controls, see Define security controls for an AI agent .
Role required: sn_disco_certmgmt.pki_admin

Procedure
1. Navigate to All > Unique Certificates.
2. Select the Now Assist icon

.

3. Enter Fetch the certificates expiring between 1 May 2026 and 1
August 2026.

Note: You can choose any date range that you need.
4. Select the Certificates link that Now Assist returns.

Result

Now Assist directs you to a list of certificates that expire between 1 May 2026 and 1 August 2026.
Now Assist then asks you if you want to renew these certificates. Renew them all at once by
selecting yes.
Automatically renew a certificate using the Now Assist certificate renewal AI agent
Automatically renew a single certificate using the Now Assist certificate renewal AI agent.

Before you begin

Complete the following steps to configure your system for the Now Assist certificate renewal AI
agent:
1. Configure your MID Server for automatic certificate renewal
2. Add the required applications and capabilities to your MID Server
Role masking
enables users to limit the roles and privileges of AI agents during tool execution.
AI agents that get installed with Now Assist applications are assigned pre-defined roles. If you
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4753


<!-- page 4754 -->
select Users with specific roles for user access, you must configure the security
controls to include these roles. Data access settings must also include these roles. For the
instructions to change the security controls, see Define security controls for an AI agent .
Role required: sn_disco_certmgmt.pki_admin

About this task

Navigate to the certificate that you want to renew and use the Now Assist certificate renewal AI
agent to renew the certificate.

Procedure
1. Navigate to All > Unique Certificates.
2. Select the certificate that you want to renew.
3. Select the Now Assist icon

.

Warning: Make sure that you are on the unique certificate page of the certificate that
you want to renew.
4. Enter the prompt Renew this certificate
5. Answer the questions that Now Assist asks you.

Result

Now Assist updates you on its progress in renewing your certificate. The certificate renewal AI
agent gives you a link to the task record that displays the status of the renewed certificate.
Use Now Assist to renew a certificate set to renew manually
Use the Now Assist certificate renewal AI agent to immediately renew certificates set to renew
manually.

Before you begin

Complete the following steps to configure your system for the Now Assist certificate renewal AI
agent:
1. Configure your MID Server for automatic certificate renewal
2. Add the required applications and capabilities to your MID Server
Role masking
enables users to limit the roles and privileges of AI agents during tool execution.
AI agents that get installed with Now Assist applications are assigned pre-defined roles. If you
select Users with specific roles for user access, you must configure the security
controls to include these roles. Data access settings must also include these roles. For the
instructions to change the security controls, see Define security controls for an AI agent .
Role required: sn_disco_certmgmt.pki_admin

About this task

Find tasks that require you to renew your certificates manually and renew them immediately
using the Now Assist AI certificate renewal agent.

Procedure
1. Navigate to Workspaces > Certificate Management.
2. Select Tasks.
3. In the Renewal Tasks space, select the number of renewal tasks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4754


<!-- page 4755 -->
4. Select the number of the renewal task that you want to auto-renew.
5. In the Unique Certificate field, select the search icon

.

Note: Selecting the icon opens the certificate record.
6. Select your Now Assist AI tool.
7. In the prompt field of Now Assist, enter Renew this certificate.
8. Answer the questions that Now Assist asks you.

Result

The certificate is renewed by the Now Assist AI certificate renewal agent.

Manage alerts autonomously agentic workflow
Enhance IT operations with AI-driven, autonomous alert management using the manage alerts
autonomously agentic workflow.

Manage alerts autonomously agentic workflow overview
The manage alerts autonomously workflow introduces a unified AI-driven process that
significantly streamlines alert management and reduces resolution times. This workflow supports
alert management in the following ways:
• Automates the triage
• Impact analysis
• Root cause investigation of IT alerts
• Generates reports, summarizes key insights and possible next steps
For information on how to review key insights and data derived from the workflow in Express List,
see Review AI generated alert information and insights in Express List.
For information about configuring this workflow, see Configure the manage alerts autonomously
agentic workflow.
Use the information on this page to learn about the actions related to the manage alerts
autonomously agentic workflow. To modify the workflow, you must duplicate it and adjust
the settings according to your requirements. For more information, see Duplicate an agentic
workflow .

Important: When you modify an agentic workflow, AI agent, or tool, make sure that you
update all instructions accordingly.

Manage alerts autonomously agentic workflow
The manage alerts autonomously agentic workflow uses the manage alerts AI agent to perform
alert management and resolution tasks.
AI agent used in the manage alerts autonomously agentic workflow
AI agent

AI agent role

Manage alerts AI agent

Investigates alerts, summarizes alert-related reports, and
stores structured insights with key findings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4755


<!-- page 4756 -->
The manage alerts autonomously agentic workflow performs several actions in the course of the
workflow. These actions may include:
• Triages alerts
◦ Evaluates and categorizes alert
◦ Analyzes alert history to identify noise patterns
◦ Updates alert group description based on analysis
◦ Performs related incidents analysis to detect focal points and common closure patterns
• Determines alert impact
◦ Evaluates impact on services
◦ Determines user impact by finding recent incidents or cases
◦ Uses observability skills for deeper service state validation
• Investigates relevant information
◦ Retrieves and summarizes similar closed alerts
◦ Analyzes recent changes for causal relationships
◦ Summarizes related KB articles for relevant information
◦ Identifies trends or anomalies in related metrics
◦ Uncovers errors, exceptions, or warnings in related logs
• Summarizes and stores information
◦ Consolidates findings
◦ Generates a final summary
◦ Saves the summary in the alert record
◦ Provides clear, actionable insights

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4756


<!-- page 4757 -->
Review AI generated alert information and insights in Express List
Access alert information in Express List that is consolidated autonomously by AI skills and
agents. Use the AI insights badge, column, and filter to monitor alert statuses and review of AIgenerated insights.

Before you begin

For this feature, you must have Now Assist for IT Operations Management (ITOM) installed on
your instance. For more information about installing Now Assist plugins, see Install Now Assist
plugins .
Role masking
enables users to limit the roles and privileges of agentic workflows during tool
execution. Agentic workflows and their AI agents that get installed with Now Assist applications
are assigned pre-defined roles. If you select Users with specific roles for user
access, you must configure the security controls to include these roles. Data access settings
must also include these roles. For the instructions to change the security controls, see Define
security controls for an agentic workflow .

Note:
If you use observability tools with Event Management, configure the relevant observability
skills so that the workflow can include information from those tools. See Configuring agents
and skills for Now Assist for ITOM.
Role required: evt_mgmt_admin, evt_mgmt_operator

About this task

The manage alerts autonomously workflow investigates alerts, summarizes alert-related reports,
and stores structured insights with key findings for use in Express List. For more information
about the manage alerts autonomously agentic workflow, see Manage alerts autonomously
agentic workflow.

Note: Currently, Now Assist for ITOM only supports tag-based, CMDB, Log Analytics,
Mixed, and Network Traffic-based alert groups. For all other alert group types, it only
analyzes the parent alert.
There are several ways to explore AI insights in Express List.
• Quickly review if alerts have been processed by checking for the AI insights badge

.

• Search for specific information and key words in the Insights column. To add the column, see
Add or modify Express List columns for more information.
• Filter for information by using the Insights filter attribute in the filter panel.
• Review AI insights in the preview panel or the alert record.
These options present differently, depending on whether the workflow is configured for
automatic or manual execution.
• When the workflow operates automatically, alerts are addressed as they’re created and AI
insight information is displayed in Express List.
• When the workflow operates manually, you must manually generate AI insights. For more
information, see details in the following procedure.
For information about configuring this workflow, see Configure the manage alerts autonomously
agentic workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

4757


