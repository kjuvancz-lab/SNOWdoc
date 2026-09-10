# Zurich IT Service Management — ITSM Success Dashboard indicators

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3582–3611 of 3857

Sections: ITSM Success Dashboard indicators (p3582); Explore (p3583); Configure (p3598)

---

<!-- page 3582 -->
SLA repair properties
Property name

Description

com.snc.sla.repair.enabled Enable SLA repair. When enabled the Repair modules and UI
Actions will be activated.
• Type: true / false
• Default value: true for new instances and false for upgraded
instances

Migrate to service level management
Migrate SLA processing from the escalations engine to use the service level management
functionality.
The two core differences between the old SLA engine and the new service level management
plugin are that tasks can now run multiple SLAs simultaneously, and the escalation concept has
been replaced with the more robust Workflow Editor. This allows administrators greater control on
what actions, notifications, and events are triggered by tasks, to take into account more mature
Service Level processes.
If an instance has been using the original SLA engine and has just activated the Service Level
Agreements (SLA) Plugin, the old SLAs will not work. For the old SLAs to work, they must be
converted to the new SLA Definition records, which will attach the appropriate Task SLA records
to the matching Task records. This is done manually by creating new SLA Definition records that
reflect the definition of the old SLA. Old SLAs will continue to function, but any time a task is
updated, the appropriate new Task SLAs will attach.
Once new Task SLAs are implemented, they will attach themselves to any new or updated
incident, including ones which already have old SLAs attached. If the new Task SLA is set to
retroactively start, it will automatically calculate the duration from that point in the past, which
means that the duration will still be accurate.
When enabled, the property Compute prior SLA pause time for new, retroactive SLAs (2011
SLA engine only) calculates the pause time when a retroactive SLA is attached.
For example: if a retroactive SLA attaches to an incident one hour after its creation, and meets
the pause conditions for half an hour, then the elapsed time is half an hour rather than the full
hour.

Note: This property is only used with audited tables. Tables which are not audited ignore
the pause time before the creation of the record.

ITSM Success Dashboard indicators
ITSM Success Dashboard indicators provide insights to the IT leadership team and process
owners so that they can measure the performance of their ITSM implementation using the KPIs
defined by ServiceNow.
Success Dashboard is available for IT Service Management and HR Service Delivery and is
delivered via the following applications:
• ITSM Success Dashboard indicators
The IT leaders can view the performance of the ITSM KPIs implemented.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3582


<!-- page 3583 -->
• HR Service Delivery Success Dashboard indicators
The HR leaders can view the performance of the HR KPIs implemented. For more information
on HR Success Dashboard indicators, visit HR Success Dashboard indicators .
Success Dashboard Overview

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .

Get started

Explore

Configure

Learn about ITSM Success
Dashboard concepts and features.

Configure environment,
tools, and user access.

Use

Reference

Learn how you can use
ITSM Success Dashboard.

Get details about ITSM Success
Dashboard components such as
roles and dependent applications.

Troubleshoot and get help
• Ask or answer questions in the Task Intelligence for ITSM community
• Contact Customer Service and Support

Exploring ITSM Success Dashboard indicators
Get an overview of the ITSM Success Dashboard indicators to understand the different
components in the dashboard and how you can use the dashboard for your organization.
The IT leadership team can analyze and understand the key metrics such as call deflections and
self-service to measure the success of the ITSM implementation. The leadership team can view
the following insights:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3583


<!-- page 3584 -->
• The number of times users are able to solve their problems on their own.
• The number of times users are able to submit their requests and issues without the help of tier
1 agents.
• The channels (knowledge articles, virtual agent conversations, catalog submissions) that are
contributing to self-solve and call deflection.
• The number of times Predictive Intelligence successfully predicted an incident field, which in
turn has a downstream impact on the resolution time.
• The formulae and definitions of the data being presented.
• The data trend for month-on-month, quarter-on-quarter, or year-on-year.
• The Key Performance Indicators (KPIs) metrics on the dashboard for a selected period. For
more information to view metrics for a selected period, see View metrics for selected period in
ITSM Success Dashboard indicators.
Also, process owners can view the records that contribute to these insights, do a deep dive
analysis, and drive improvement plans.
ITSM Success Dashboard indicators overview

ITSM Success Dashboard indicators components
Analyze the performance and self-solve data visually and drive business outcomes with the help
of the dashboard components.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3584


<!-- page 3585 -->
Now Assist for ITSM Success Dashboard
With the Now Assist for Success Dashboard, you can summarize the chat conversations and
incident details, generate the incident resolution notes to share with other agents, and wrap up
incidents faster.
The Self-solved using QnA KPI in the ITSM Success Dashboard uses Now Assist and AI search
QnA as contributing indicators. You can interact with a Virtual Agent, read the Knowledge base
article, get a summarized/succinct response by Now LLM in Virtual Agent or on the portal. This
interaction, subsequently does not create an incident, access any knowledge base article, or
interact with a live agent in the next 24 hours.
To update the live agent script include see, Update the live agent script include.

Proactive Engagement for DEX
The Self-solved using Proactive Engagement for DEX KPI listed under the self-solved
percentage, helps the users resolve their digital experience issues. It proactively suggests the
resolutions and resolves the issue.

Getting started with the Admin Console
With the Admin Console, you can access the ITSM Success Dashboard, Operational Success,
and Benchmarks dashboard. The Admin Console displays all the admin-related work at a glance
and tasks that need attention, including installation of the related application and configuration
settings.
As an admin, you see the role-specific variant of the landing page. Admin landing pages include
the following items:
• Related applications that have a latest update available.
• Related applications that aren't activated or installed.
• Configurations for all the installed applications.
• Common questions and more information related to the applications.

Performance overview in the ITSM Success Dashboard indicators
Measure the key performance indicators (KPIs) like Self-solved percentage, Call deflection
percentage, Requests completed, and Successful predictions on the Performance overview tab.
For more information, see ITSM Success Dashboard KPI definitions and formulas.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3585


<!-- page 3586 -->
Service quality in the ITSM Success Dashboard indicators
Measure the key performance indicators (KPIs) like Customer satisfaction score, Mean time to
resolve, % Breached SLA, and % First assignment resolution on the Service quality tab. For more
information, see ITSM Success Dashboard KPI definitions and formulas.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3586


<!-- page 3587 -->
Cost savings in the ITSM Success Dashboard indicators
View the overall estimated cost saved by using the ITSM Success Dashboard capabilities
for Knowledge articles, Predictive Intelligence, Virtual Agent conversations, and Catalog
submissions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3587


<!-- page 3588 -->
Scorecards in the ITSM Success Dashboard indicators
View the aggregation of the daily values for KPIs in the selected period in the scorecards with the
following information.
Scorecard widget

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3588


<!-- page 3589 -->
• Current period score: View the aggregated score for the current time period. Select one of the
following options:
◦ Monthly: View the data aggregated monthly. For counts, this data is the monthly sum of the
daily values. For percentages, this data is the monthly average of the daily percentages.
◦ Quarterly: View the data aggregated quarterly. For counts, this data is the quarterly sum of
the daily values. For percentages, this data is the quarterly average of the daily percentages.
◦ Yearly: View the data aggregated yearly. For counts, this data is the yearly sum of the daily
values. For percentages, this data is the yearly average of the daily percentages.
• Comparison with previous period: View the percentage change compared to the previous
period aggregation. Data is displayed in a month-over-month, quarter-over-quarter, and yearover-year comparison based on the availability of the data.

Info icons in the ITSM Success Dashboard indicators
Use the info icons to view the short description of the indicator and understand how the indicator
value is calculated.
Info icon

Trends in the ITSM Success Dashboard indicators
View the trend of the aggregated scores for the selected metric scorecard.
Call deflection trend

Structured tickets completed trend

View details in the ITSM Success Dashboard indicators
See the constituent drill-down views and their contextual descriptions for KPIs. The detailed
information can be viewed by selecting View details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3589


<!-- page 3590 -->
• View the primary indicators.
Top-level primary indicators

You can replace or add new indicators to suit your implementation in addition to the base
system indicators. See Configure Success Dashboard indicators KPIs for more details.
• View the contributing indicators.
Second-level contributing indicators

You can view a graph of the contributing indicators scores over time along with the KPI value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3590


<!-- page 3591 -->
• View the record-level breakdown.
Record-level breakdown indicators

This level of drill down helps you view the record-level details of the indicator when you have
the sn_sd.success_dashboard_details_read user permissions. See KPI details
for
more information.

View cost saving details in the ITSM Success Dashboard indicators
Enable Cost savings and view the drill-down views and their contextual descriptions for KPIs. The
detailed information can be viewed by selecting View Details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3591


<!-- page 3592 -->
• View the primary

indicators:
• Second-level contributing indicators

Contextual side panel in the ITSM Success Dashboard indicators
View the contextual formula and definitions, insights, and cost savings in the More information,
Insights, and Cost Savings side panel respectively for the selected metric or KPI.
More Information side panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3592


<!-- page 3593 -->
Insights side panel
View the insights of the KPIs.

Cost Savings side panel
View the amount saved for the KPI.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3593


<!-- page 3594 -->
View process insights on the ITSM Success Dashboard
View the process insights on the ITSM Success Dashboard to analyze the process bottlenecks
and take steps from the analyst workbench to improve the metrics.
On the Service Quality tab, select Insights on the contextual side panel, then select View in
Analyst Workbench.
Only the top two insights that are the least efficient are displayed in the contextual side panel.
The process insights are executed in the incident table only in the base system.

Operational Success dashboard in the ITSM Success Dashboard indicators
The Operational Success dashboard provides a consolidated view of the end-to-end
performance of the IT processes that are implemented in your organization.
The dashboard showcases a snapshot of the performances for the Incident, Major Incident,
Change, Request, Service Catalog, Interaction, Problem, and On-Call Scheduling applications.
These indicators help teams and the leadership focus on areas that have an impact on business
outcomes.

ITSM Success Dashboard indicators KPI definitions and formulas
Enable ITSM Success Dashboard and configure settings to understand and use the Key
Performance Indicators (KPIs) and formulas.
All the Key Performance Indicators (KPIs) and formulas used in the ITSM Success Dashboard are
detailed below.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3594


<!-- page 3595 -->
• Performance overview
• Service Quality
• Operational Success
Performance overview
Performance overview details all the KPIs and metrics that help you analyse the benefits of your
ITSM implementation.
• Self-solved percentage: Calculated from the daily average number of times your users
achieved a resolution without intervention from Tier 1 Agents in the report range. Includes
numbers from Self-solved using Virtual Agent, Self-solved using Knowledge and Automated
resolutions (For example, Incident auto-resolution via Virtual Agent). See the formula:
[Self-solved (VA, KB, QnA, Proactive Engagement) + Automated
resolutions] / [Total Tickets Resolution + Self-solved (VA,
KB, QnA, Proactive Engagement) + Self service using Password
Reset apps]*100
◦ Self-solved using Virtual Agent: Number of automated conversations that helped the user
solve their problem. This is determined when users complete a virtual agent conversation
and does not engage (Interactions) with a human agent in the next 24-hour window.
Considers both Virtual Agent powered by NLU and LLM (Now Assist VA)

Note: To use a different method to determine this KPI, see Configure Success
Dashboard indicators KPIs.
To update the live agent script include see, Update the live agent script include.
◦ ITSM issues solved using NOW Assist VA (LLM): Number of times the users were able to
resolve their issues by interacting with Now Assist Virtual Agent (NAVA) conversation. This
is determined when a user completes a Now Assist Virtual Agent conversation and doesn't
create an incident or engages (Interactions) with a human agent in a 24-hour window.
To update the live agent script include see, Update the live agent script include.
◦ Self-solved using Knowledge: Number of times users were able to solve their problems by
reading knowledge articles. This is determined when users read knowledge article(s) and do
not create ticket or engages with a human agent in a 24-hour window.

Note: To use a different method to determine this KPI, see Configure Success
Dashboard indicators KPIs.
To update the live agent script include see, Update the live agent script include.
◦ Self-solved using QnA: Self-solved using the AI Search when a user interacts with a Virtual
Agent or on Portal and gets a summarized answer from AI Search. This is determined when
users are presented with a AI Search QnA result and do not go on to create ticket or engage
with a human agent in a 24-hour window.
To update the live agent script include see, Update the live agent script include.
◦ Self-solved using Proactive Engagement for DEX The number of digital experience issues
Self-solved using Proactive Engagement for DEX. This is determined when DEX proactively
detects issues and Proactive Engagement helps users self-solve them.
To know more about the Proactive Engagement see, Proactive Engagement.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3595


<!-- page 3596 -->
◦ Automated Resolutions: Number of times the ticket was resolved automatically. In the base
system, the indicators contributing to this metric are Incident Auto Resolution and Request
Fulfilled Automatically.
▪ The Incident Auto Resolution value is determined by the deflection node configured in the
Issue Auto Resolution Virtual Agent topic.
▪ The Request Fulfilled Automatically value is the number of requested items that are
fulfilled using automated workflows. When the catalog item uses an automated workflow,
the Fulfillment automation level field of the catalog item must be set to Fully-automated
for it to be included in this metric.
▪ Accounts unlocked using Password Reset apps: Number of times users were able to
unlock their accounts successfully using Password Reset apps.
▪ Passwords updated using Password Reset apps: Number of times users were able to
update their account passwords using the Password Reset apps.

Note: To use a different method to determine this KPI or add more sources (for
example, automated catalog workflows), see Configure Success Dashboard indicators
KPIs.
◦ Total ticket resolutions: Number of incidents resolved + Number of requested items closed
+ Number of Agent interactions not resulting in tickets (closed).
• Call deflection: Calculated from the number of times per day requesters performed the
actions, Ticket submissions using Service Catalog, Ticket submissions using Virtual Agent,
Self-solved using Virtual Agent and Self-solved using Knowledge without Tier 1 agent
intervention. See the formula:
[Catalog ticket submissions + VA ticket submissions +
Self-solved (VA) + Self-solved (KB)]/ [Total tickets submitted
+ Self-solved (VA) + Self-solved (KB)] x 100
◦ Catalog ticket submissions: Incidents and requested items submitted using Service
Catalog in Service Portal or Now Mobile app.
◦ VA ticket submissions: Number of times the ticket was submitted using Virtual Agent. In the
base system, this is determined by the ITSM - Triage & Created deflection pattern
instrumented in the Virtual Agent topic. The topics shipped with ITSM VA Conversations
already have these nodes instrumented but must be instrumented in all other topics that
create incidents.

Note: If you use a different method to determine this KPI or add more sources (for
example, automated catalog workflows), you can use the steps described in Configure
Success Dashboard indicators KPIs.
◦ NOW Assist ticket submissions: Number of times the ticket was submitted using NOW
Assist. In the base system, this is determined by the ITSM - Triage & Created
deflection pattern instrumented in the NOW Assist topic. The topics shipped with NOW
Assist Conversations already have these nodes instrumented but must be instrumented in
all other topics that create incidents.
◦ Total tickets submitted: Incidents created + RITMs created.
• Structured tickets: Total number of requested items completed successfully in the report
range.
• Productivity moments per user: Productivity Moment is calculated when the ServiceNow
products helped a user to be more productive while working in their day to day operations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3596


<!-- page 3597 -->
◦ Productivity in search per user: The number of times the NLU prediction model accurately
understood the intent of the user's conversation or auto-selected a topic.
◦ Productivity in routing per user: Successful predictions of incident fields such as
assignment group, or category by Predictive Intelligence solutions, counted when the
prediction made by the solution is the same as final value when the incident was closed.
◦ Productivity in fulfilment per user: Includes any productivity gains achieved where
ServiceNow is helping the employees to save time to resolve a ticket.
▪ Incident summarization - Now Assist Number of times Now Assist helped the agents by
summarizing the Incidents that they worked on.
▪ Interaction summarization - Now Assist Number of times Now Assist helped the agents
by summarizing the Interactions that they worked on.
▪ Incident resolution note Generation - Now Assist Number of times Now Assist helped the
agents by providing resolution note and code.
▪ Successful Change Risk Explanation - Now Assist Number of times Now Assist helped
the agents by explaining the Risk Assessment for a Change Request that they worked on.
▪ Successful Change Summarization - Now Assist Number of times Now Assist helped the
agents by summarizing the Change Request that they worked on.
◦ Productivity in knowledge articles generation Includes the number of knowledge articles
drafted and published using Now Assist.
Knowledge Articles created using Now Assist Number of times Now Assist helped the
agents in creating Knowledge Article.

Note: If you use a different method to determine this KPI, you can do so using the steps
described in Configure Success Dashboard indicators KPIs.
Service Quality
Service quality lists all the KPIs that help you understand the quality of service offered when the
employees raise a request to resolve their digital issues.
• Customer Satisfaction Score:Calculated from the daily average score of the surveys
conducted after an issue was resolved through a ticket or through virtual agent.
• Mean-time to resolve: Calculated from the daily average of the time between the ticket
creation and ticket closure.
• % Breached SLAs: Calculated from the daily average number of issues that were closed after
having breached an SLA.
• % First assignment resolution: Calculated as the percentage of tickets that were resolved
without having to reassign the ticket to a different group.
• % Reopened tickets: Calculated from the percentage of resolved tickets that were reopened
during a specified period.
Operational Success
An operational KPI is a quantifiable measure that tracks the efficiency and effectiveness of dayto-day operations in your organization. The KPIs can be organized in a dashboard that highlights
the areas that are running efficiently and the areas that need attention.
Enable Operational Success and configure the settings to understand and use the Key
Performance Indicators (KPIs) and formulas.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3597


<!-- page 3598 -->
By monitoring operational KPIs, you can identify areas for improvement, optimize processes, and
ultimately achieve their strategic goals. Here are some techniques to use the operational KPIs:
• Ensure your KPIs match your organization’s business goals. Define your KPIs that contribute to
achieving those objectives.
• Focus on the most critical KPIs that add value to the organization’s growth.
• Track and review KPIs regularly. Monitor your progress and modify the KPIs as required by the
organization’s goals.
• Use data to drive decisions: Identify trends, uncover root causes, and use insights to improve
processes and performance.
• Use the data to identify trends and use insights to improve processes and performance.
To create a new operational dashboard, refer Create an operational success dashboard.
This framework uses the PA Dashboard created as part of the Platform Analytics for ITSM. For
more information see, Platform Analytics KPIs and dashboards.

Configuring ITSM Success Dashboard indicators
Set up the ITSM Success Dashboard indicators so that IT leadership teams and process owners
can start using the dashboard.

Get started with ITSM Success Dashboard
1. Procure ITSM Pro license for ServiceNow IT Service Management applications.
2. Install the ITSM Success Dashboard application (sn_sd_itsm). For more information, see Install
ITSM Success Dashboard.
3. Configure the knowledge base for IT Service Management. For more information, see
Configure the knowledge base for ITSM Success Dashboard indicators.
4. Configure Virtual Agent topics with VA deflection nodes. For more information, see Configure
Virtual Agent topics for ITSM Success Dashboard indicators.
5. Set fulfillment automation level of catalog item. For more information, see Set fulfillment
automation level of catalog item for the Success Dashboard indicators.
6. Configure the Key Performance Indicators (KPI)s in the ITSM Success Dashboard. For more
information, see Configure Success Dashboard indicators KPIs.
7. Run the UpdateFormulasSD script to recalculate formulas. For more information, see Run
Update formula script for ITSM Success Dashboard indicators.
8. Activate Performance Analytics jobs. For more information, see Activate Performance Analytics
jobs for ITSM Success Dashboard indicators.

Install ITSM Success Dashboard indicators
You can install the ITSM Success Dashboard indicators application (sn_sd_itsm) if you have the
®
admin role. The application installs related ServiceNow Store applications and plugins if they
are not already installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3598


<!-- page 3599 -->
Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Install the following plugins before installing the ITSM Success Dashboard application from the
store
◦ Performance Analytics
◦ Performance Analytics Premium
◦ Self-service analytics
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the ITSM Success Dashboard indicators application (sn_sd_itsm) using the filter criteria
and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

ITSM Success Dashboard Admin console
The ITSM Success Dashboard offers valuable insights to both the leadership team and process
owners, enabling them to assess the performance of their product implementation.
The performance is assessed by utilizing the established key performance indicators (KPIs). This
process categorizes configuration activities and provides information in each category such as
planning guidance, pre-setup steps, and links to useful help content.

Prerequisites
• User Roles: You can assign different roles based on specific access requirements. For more
information on the ITSM Success Dashboard roles, see Success Dashboard indicators user
roles and responsibilities
• Review and configure self-service KPIs: You can review and configure the self-service KPIs for
Knowledge deflection, Virtual Agent deflection, and Catalog Item fulfillment level.
• Performance Analytics jobs: Activate Performance Analytics jobs to collect daily and historical
data for the ITSM Success Dashboard indicators.
• Process Mining projects: Review and Configure the process mining KPIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3599


<!-- page 3600 -->
Advanced Options
Configure the ITSM Success Dashboard KPIs and its related attributes from the advanced
options.
• System properties: Configure and manage the behavior of the features for the ITSM Success
Dashboard.
• Attribute cost savings to contributing indicators: Review the time savings and the persona
group association to contributing indicators based on your organization.
• Key performance indicators (KPIs): Enable the ITSM Success Dashboard and configure
settings to understand and use the KPIs and formulas.
• Contributing indicators: Modify the base system contributing indicators associated with the
primary indicators, or add additional contributing indicators based on your implementation.
• Contextual Help content: Add or modify the contextual help content to be displayed for the
primary or contributing indicators.
Set the refresh interval for Success Dashboard indicators
Set the refresh interval to calculate the number of incidents deflected within the defined time
range when a user reads the KB article recommended by the Virtual Agent.

Before you begin

Role required: sn_sd.success_dashboard_admin

Procedure
1. Navigate to All > Success Dashboard > Getting Started.
2. Select Review and Configure in Configure Knowledge deflection card.
3. Select Settings tab.
4. Select a deflection pattern under Knowledge deflection.
5. Select Edit.
6. Update the value in Window field.
This is the refresh interval for the report to be executed.
7. Right-click on the header and select Save.
Configure the knowledge base for ITSM Success Dashboard indicators
Include only the relevant knowledge bases related to IT while determining the Self-solved using
Knowledge KPI in ITSM Success Dashboard indicators.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Self-Service Analytics > Activity Context.
2. Select ITSM KB deflection from the list.
3. In the Activity Context Types tab, select the Preview icon corresponding to Viewed a
knowledge article activity type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3600


<!-- page 3601 -->
4. Select Open record.
5. In the Activity Context Type form, change the filter condition to include the relevant knowledge
bases.
Activity context type

6. Select Update.
Configure Virtual Agent topics for ITSM Success Dashboard
Configure the Virtual Agent (VA) topics for ITSM Success Dashboard indicators so that data is
displayed correctly if you have topics other than the base system topics.
There are two different ways the base system measures success for Virtual Agent usage:
• Using deflection nodes in Virtual Agent topics which provides highly accurate and requires
medium effort in tracking. For more information on how to use the deflection nodes, see
Configure Virtual Agent topics for ITSM Success Dashboard indicators.
• Using self-service activity analytics which provides mid-high accuracy and requires zero effort
in tracking. For more information on how to configure using the self-service analytics, see
Configure Virtual Agent topics for ITSM Success Dashboard using self-service analytics.
• To update the live agent script include see, Update the live agent script include.
Configure Virtual Agent topics for ITSM Success Dashboard indicators
Configure the Virtual Agent (VA) topics for ITSM Success Dashboard indicators so that data is
displayed correctly if you have topics other than the base system topics.

Before you begin

Role required: admin

About this task

Map the topics with deflection patterns of the ITSM VA Default deflection tracker. Deflection
trackers helps in analysing the performance of a conversation and how helpful Virtual Agent
topics are for users.
Modify the URL for the Link Output in a topic to set the referrer to va so that when a catalog item
is submitted, the item is calculated as a submission from Virtual Agent.

Procedure
1. Navigate to All > Virtual Agent > Designer.
2. Select the topic for which you want to add the deflection tracker.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3601


<!-- page 3602 -->
3. Enable the flow chart view by disabling the Table View toggle switch.
4. Drag and drop the Deflection node from the Utilities section to the place in the flowchart
where you want to add the deflection pattern.
5. Enter the following details in the Deflection Properties pane on the right.
Deflection input parameters
Field

Value

Deflection
ITSM VA Default
Configuration
Deflection
Pattern

◦ ITSM VA-Self-Resolving: When the node in the topic indicates that Virtual
Agent is able to resolve the user problem completely without creating an IT
ticket (incident or request) and consequently contributing to the Self-solved
KPIs.
◦ ITSM VA-Triage & Created: When the node in the topic indicates that
an IT ticket (incident or request) was submitted using Virtual Agent and
consequently contributing to the call deflection KPIs.

Activity Table Table where the deflection activity occurs. This table is associated with
the primary activity table. For more information, see Create deflection
configurations and patterns .
Activity Ids

List of comma-separated activity system IDs.

6. Select Save.
7. Select Link Output in the flow chart.
8. Select the url in the Link field in the Link response pane on the right.
9. Append the URL with &referrer=va.
10. Select Save.
Related topics
Tracking deflections using deflection topic blocks
Create deflection configurations and patterns
Configure Virtual Agent topics for ITSM Success Dashboard using self-service analytics
Configure the Virtual Agent (VA) topics for ITSM Success Dashboard indicators using the selfservice analytics.

Before you begin

Role required: admin
To update the live agent script include see, Update the live agent script include.

Procedure
1. Navigate to All > Success Dashboard > Getting Started > Success Dashboard > Virtual Agent
deflection.
2. Select Review and Configure.
3. Select Review tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3602


<!-- page 3603 -->
4. Select a deflection pattern under Virtual Agent deflection.
5. Update the value in Refresh Window field.
This is the refresh interval for the report to be executed.
6. Select the fields under Incidents considered.
7. Select the Virtual Agent topics considered.
8. Select Save.
Update the live agent script include
Live agent configuration is used in the self-solved deflections (Deflection using KB articles,
Deflection using QnA AIS, Deflection using QnA LLM, and Deflection using ITSM VA). While
we configure these deflections, we need to update the live agent script include. Update the
SSADeflectionHelper script to override the checkInteraction function.

Before you begin

Role required: admin

About this task

An agent interaction is where the interaction is not through a virtual agent interaction. The
interaction could be through Walk up experience, phone, video or with a live agent. The base
system instrumentation checks whether the employee created an incident or interacted with an
agent after reading an article or interacting with a Virtual Agent.
The SSADeflectionHelper script overrides the check interaction function and helps in
setting up the live agent interaction.

Procedure
1. Navigate to All > System Definition > Script Includes.
2. Open the SSADeflectionHelper script include and modify the script as follows.
a. Override the function checkInteraction from SSADeflectionHelperSNC
checkInteraction: function(openedFor, windowStart, windowEnd)
{
var interactionRecord = new
GlideRecord('interaction');
// Pulling Virtual Agent User sysId from
com.glide.cs.va.sys_user property
var vaUser =
gs.getProperty('com.glide.cs.va.sys_user');
var windowConditions = 'opened_for=' + openedFor +
'^sys_created_on>=' + windowStart + '^sys_created_on<=' +
windowEnd;
var interactionConditions =
'virtual_agent!=true^ORstateINon_hold,closed_abandoned^ORsys
_created_by=system^ORopened_for.web_service_access_only!=fals
e^opened_for.web_service_access_onlyISNOTEMPTY^ORopened_for.i
nternal_integration_user!=false^opened_for.internal_integrati
on_userISNOTEMPTY^assigned_to!=' + vaUser +
'^ORassigned_to=NULL';
var encodedQuery = windowConditions + '^' +
interactionConditions;
interactionRecord.addEncodedQuery(encodedQuery);
interactionRecord.setLimit(1);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3603


<!-- page 3604 -->
interactionRecord.query();
if (interactionRecord.next()) {
return true;
}
return false;
},
b. Update the following line to update the live agent interaction conditions:
var interactionConditions =
'virtual_agent!=true^ORstateINon_hold,closed_abandoned^ORsys
_created_by=system^ORopened_for.web_service_access_only!=fals
e^opened_for.web_service_access_onlyISNOTEMPTY^ORopened_for.i
nternal_integration_user!=false^opened_for.internal_integrati
on_userISNOTEMPTY^assigned_to!=' + vaUser +
'^ORassigned_to=NULL';

Set fulfillment automation level of catalog item for the Success Dashboard indicators
Set the fulfillment automation level of catalog items from any Service group that are fulfilled
without any manual intervention to Fully-automated tracking of the requested items with an endto-end automated fulfilment.

Before you begin

Role required: admin or catalog_admin

Procedure
1. Navigate to All > Service Catalog > Maintain Items.
2. Select the catalog item for which you want to set the fulfillment automation level.
Select Catalog items according to the Service group implementation, that is either ITSM or HR
Catalog items.
3. In the Catalog Item form, set the Fulfillment automation level field to Fully automated.
4. Select Save.
Activate Performance Analytics jobs for ITSM Success Dashboard indicators
Activate the Performance Analytics (PA) jobs to collect daily and historical data for the ITSM
Success Dashboard indicators.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Performance Analytics > Data Collector > Jobs.
2. To run the daily jobs:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3604


<!-- page 3605 -->
a. Filter the list of jobs to select the following:
▪ [SD ITSM] Daily Data Collection
▪ [PA SLA] Daily Data Collection
▪ [PA Requested Item] Daily Data Collection
▪ [PA Incident] Daily Data Collection
▪ [PA ITSM Dashboard] Daily Data Collection
b. Activate the scheduled jobs by selecting the Active check box corresponding to the job.
3. To run the scheduled jobs for historical data collection:
a. Filter the list of jobs to select the following:
▪ [SD ITSM] Historic Data Collection
▪ [PA Requested Item] Historic Data Collection
▪ [PA Incident] Historic Data Collection
▪ [PA ITSM Dashboard] Historic Data Collection
b. Select Execute Now to see the past 60 days data in the dashboard.
Configure Success Dashboard indicators KPIs
Success Dashboard indicators has a prescriptive methodology for measuring performance.
But you can reconfigure the source of the Key Performance Indicators (KPIs) by replacing the
available indicators in the base system or by adding more indicators.
For example, your organization may have a different method to determine Self-solved using
Knowledge. You cannot change the definition of Self-solved percentage and Call deflection
that use Self-solved using Knowledge, but you can replace or add the KPIs and its
constituents.
There are two major types of indicators:
• Primary indicators: The indicators prescribed by ServiceNow.

Warning: You must not modify any primary indicators as these are prescribed by
®

ServiceNow . Modifying these KPIs might impact your scores.
◦ You can view the primary indicators in the Primary Indicator Registry table
(sn_sd_primary_indicator_registry).
◦ You can view the corresponding Performance Analytics indicators in the Primary Indicator
table (sn_sd_primary_indicator).
Primary indicators are of the following types:
▪ Manual: The formulae for these indicators are made up of other primary indicators.
▪ Automatic: The formulae for these indicators are automatically calculated based on the
contributing indicators.
• Contributing Indicators: The indicators listed in the Contributing Indicator Registry
(sn_sd_contributing_indicator_registry) table and that point to primary
indicators.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3605


<!-- page 3606 -->
◦ When these indicators are registered with automatic primary indicators, the formula of the
primary indicator is automatically updated to include these indicators in the sum.
◦ When these indicators are removed from the registry or marked inactive, the formula of the
primary indicator is updated to remove this indicator from the sum. For example:
Self-solve (manual primary indicator) = Self-solved using
Virtual Agent (automatic primary indicator) + Self-solved
using Knowledge (automatic primary indicator) + Automated
Resolutions (automatic primary indicator)
Where:
▪ Self-solved using Virtual Agent = Any Service group issues self-solved using VA (the only
contributing indicator registered for this primary indicator)
▪ Self-solved using Knowledge = Any Service group issues self-solved using Knowledge (the
only contributing indicator registered for this primary indicator)
▪ Automated Resolutions (automatic primary indicator) = Incident or HR ticket autoresolution (the only contributing indicator registered for this primary indicator)
Add contributing indicators
Add new contributing indicators based on your organizational preferences.

Before you begin

Role required: sn_sd.success_dashboard_admin

About this task

Your organization can add the new contributing sources as the primary indicator. For example,
determining the automated catalog request completions can be added to Automated
Resolutions.

Procedure
1. Create a Performance Analytics (PA) indicator and its data collection job that measures the
daily score (count) of the metric that you want to measure.
The description set for this PA indicator is used to describe the indicator when the user selects
the information icon on the score card. Alternatively, if you already have a PA indicator that
measures daily scores of the metric you want to measure, you can directly proceed to register
and use the PA indicator.
For information on permissions required to create a PA indicator, see Performance Analytics
roles
for more details.
2. Register the PA indicator against the Primary Indicator that it must be reported in by creating a
record in the Contributing Indicator Registry table (sn_sd_contributing_indicator_registry).
a. Navigate to All > sn_sd_contributing_indicator_registry.list.
b. Select New.
c. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3606


<!-- page 3607 -->
Contributing Indicator Registry form
Field

Description

Name

Unique identifier contributing indicator.

Contributing Indicator

Performance Analytics indicator of the
metric.

Primary KPI

The primary indicator where the new
indicator is being added to.

Service group

Service group of the performance indicator.

Note: ITSM or HR must be selected
as a service group, as required.

d. Right-click the header and select Save.
e. Optional: Add More information context cards for this indicator so that the user viewing the
primary and contributing indicator details understands this KPI.
See Update more information cards for details.
f. In the Persona Group Time Savings related list, click New.
g. On the form, fill in the fields.
Persona Group Time Saving form
Field

Description

Persona Group

Option to select the persona group fr the
contributing indicator.

Time saved

Option to enter the time that will be saved to
complete the request.

h. Right-click the header and select Save.

Note: You can also update the values for the indicators in Persona Group Time
Savings section for the out of the box indicators that are Automatic type.
Add time savings
Add new time savings as a contributing indicator based on your organizational preferences.

Before you begin

Role required: sn_sd.success_dashboard_admin

Procedure
1. Navigate to All > Success Dashboard > Getting Started > Success Dashboard > Key
performance indicators (KPIs).
2. Select the row context menu for Contributing KPI type to add the time savings option as a
contributing indicator.
3. Update the Persona group and Time Saveddetails.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3607


<!-- page 3608 -->
4. Select Add.
5. Update the existing time savings for the requested items by selecting the record and select
Remove.

Note: You can update the record only in the application scope.
Update more information cards
Configure and update the More Information cards in the side panel.

Before you begin

Role required: sn_sd.success_dashboard_admin

Procedure
1. Navigate to All > sn_sd_m2m_indicator_context_information.list.
2. Find the context information record in the table based on the Primary Indicator or the
Contributing Indicator Registry that the card is associated with.
3. Select the Indicator context information field to open the context information record.
4. Modify the content of the record based on your requirement.
5. Select Save.

What to do next

Associate the new context information card with an indicator. To associate a new context
information card to a primary or contributing indicator, perform the following steps:
1. Navigate to All > sn_sd_indicator_context_information.list.
2. Select New.
3. On the form, fill in the following fields:
Indicator Context Information
Field

Description

Icon

Name of the icon that appears beside the
tagline. You can select from any of the icons
available in the gallery.

Tagline

Short label of the card.

Heading

Short heading that provides context on what
the card explains.

Content

HTML text that describes the card.

Footer

Footer of the card.

4. Select Submit.
5. Navigate to All > sn_sd_m2m_indicator_context_information.list.
6. Select New
7. On the form, fill in the following fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3608


<!-- page 3609 -->
M2m Indicator Context Information
Field

Description

Indicator Context information

The record that is being created.

Contributing Indicator Registry (if applicable

The contributing indicator with which the card
is associated with.

Primary Indicator (if applicable)

The primary indicator with which the card is
associated with.

Order

The order in which the card should appear.

8. Select Submit.
Create a cost savings indicator for ITSM Success Dashboard
Create a cost savings indicator in ITSM Success Dashboard to determine and display the time
saved for the contributing indicators when agents work on an incident.

Before you begin

Role required: sn_sd.success_dashboard_admin

Procedure
1. Navigate to All > Success Dashboard > Getting Started.
2. In the Customize Cost Savings card, select For ITSM.
3. On the form, fill in the fields.
Cost savings
Field

Select the contributing indicator

Description

Option to select a performance metric from
the drop-down menu to add or modify timesaving measures.
Select Nextto go to Time savings section.
Select Cancel & Exit to cancel the setup.

Time savings

Option to select the persona group.
Select Add.

Time savings action

◦ Persona group – Select a persona group
from the drop-down menu.
◦ Contributing indicator registry – This field is
populated based on the selected indicator.
◦ Time saved – Define the time saved.
Select Mark Complete.

Review updates

Verify that the values provided are accurate.
Select Mark Complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3609


<!-- page 3610 -->
Modify the currency code for ITSM Success Dashboard indicators
Modify the currency code for ITSM Success Dashboard indicators.

Before you begin

Role required: sn_sd.success_dashboard_admin

Procedure
1. Navigate to All > Success Dashboard > Getting Started.
2. On the Configure System properties card, select Configure Properties For ITSM.
3. Select sn_sd.success_dashboard_currency.
If a message appears indicating that you need to change to the Success Dashboard Core
application, select the word here in the message
4. Modify the Value field, enter your desired currency code.
5. Select Update.

Operational Success Admin Console
The Operational Success dashboard provides a consolidated view of the end-to-end
performance of the IT processes that are implemented.

Prerequisites
User Roles: You can assign different roles based on specific access requirements.

Configure
Tabs and dashboards: Map a KPI category such as Incident, Problem, Change, Request, and so
on as an Operational Success dashboard tab to view the ITSM processes performance in your
organization. Use this option to map the Performance Analytics dashboard associated with these
KPI categories.

Advanced options
Review and configure the data visualization available in the base system for Incident, Problem,
Change, Request, Interaction, Service catalog, Major Incident, Password Reset, and Walk-up
Experience.
https://player.vimeo.com/video/1010771257?
h=4ddd526a20&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Create an operational success dashboard
Create a KPI category and map with the operational dashboard to view the performance of the
ITSM processes in your organization.

Before you begin

Role required: sn_sd.success_dashboard_admin

Procedure
1. In the navigation list, enter sn_sd_kpi_category.list.
2. Select New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3610


<!-- page 3611 -->
KPI Category
Field

Description

Name

Unique name of the KPI category.

Dashboard type

Dashboard type of the new KPI category that
is to be associated.

Order

Order of the dashboard.

4. Select Submit.
5. In the navigation list, enter sn_sd_tab_m2m_dashboard.list.
6. Select New.
7. On the form, fill in the fields.
Dashboard mapping
Field

Description

Tab

Unique name of the dashboard.

PAR Dashboard

The PAR dashboard that must be associated
with the Operational success tab.

Order

Order of the dashboard.

8. Select Submit.

Result

The new dashboard appears on the Operational success dashboard.

Benchmarks admin console
®

The ServiceNow Benchmarks application gives you instant visibility into your key performance
indicators (KPIs) and trends, as well as comparative insight relative to industry averages of your
peers and to the industry top performers.
• User Roles: You can assign different roles based on specific access requirements.
• Opt in to Benchmarks: You can opt in to Benchmarks by accepting the opt-in agreement. Once
you opt in, you have visibility into your service management key performance indicators and
trends. It also provides a comparative insight relative to the industry averages of your peers.
For more information, see Getting started with the ITSM Success Dashboard admin console.

Run Update formula script for ITSM Success Dashboard indicators
Run the UpdateFormulasSD script to recalculate all the formulas in ITSM Success Dashboard
indicators if you see outdated data in the dashboard.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3611


