# Zurich IT Service Management — Benchmarks

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 238–275 of 3857

Sections: Benchmarks (p238); Explore (p239); Configure (p242); Analyze (p267); Reference (p273)

---

<!-- page 238 -->
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

How domain separation works in Product Catalog
The domain owner's employees and tenants can use the same processes if the work is done in
the correct domain. When adjusting any configuration, you should be in the domain where you're
doing the work. Use the domain picker to select the correct domain to work in.
Related topics
Domain separation for service providers

Benchmarks
®

The ServiceNow Benchmarks application gives you instant visibility into your key performance
indicators (KPIs) and trends, as well as comparative insight relative to industry averages of your
peers and to the industry top performers. You can contrast the performance of your organization
with recognized industry standards, view a side-by-side comparison of performance with global
benchmarks, and implement recommendations for improved performance.

Benchmarks overview
This video provides you with an overview of Benchmarks. Benchmarks Overview

Get started
The ServiceNow Benchmarks application securely collects daily data on your instance and then
aggregates the data into monthly global benchmark reports.

Explore

Configure

.
Learn about Benchmarks
features and benefits

Configure and customize
the Benchmarks KPI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

238


<!-- page 239 -->
Reference

Use

Learn how you can analyse
the Benchmarks data

.

Get details about the Benchmarks
components such as KPI, roles and trends

Troubleshoot and get help
Contact Customer Service and Support.

Exploring Benchmarks
Use Benchmarks for ITSM to get a comparative insight relative to industry averages of your
peers and to the industry top performers. With Benchmarks get a quick visibility into your key
performance indicators (KPIs) and trends.
The ServiceNow Benchmarks application securely collects daily data on your instance and then
aggregates the data into monthly global benchmark reports.
Performance Analytics collects daily data on customer instances. The data from the previous
month is uploaded at the beginning of the following month via a scheduled job. If there are any
errors, there are multiple retries.
This video provides an overview of how you can get started with Benchmarks.
Getting started with Benchmarks
During the month the data is uploaded, the data is aggregated and monthly results (your
instance results, global results, and your ranking) are downloaded to the customer instance
mid month. Monthly recommendation candidates are provided that you can implement to help
improve your KPI performance. An email notification is sent when the global data is available.
ServiceNow has over 2850 customers that have opted into the Benchmarks program. All
ServiceNow customers are allowed to participate in the Benchmarks program by opting in from
their ServiceNow production instance, except:
• Express customers
• Federal customers
• Customers with on-premise instances

Note: You must have a production instance to opt into the Benchmarks program.
Managed Service Providers (MSPs) and MSP-managed instances are supported and have
exclusive access to global MSP aggregate score data. All instances will support the following
benchmarks that can be downloaded for comparison in the Benchmarks dashboard:
• Global, which applies to all customers
• Industry category
• User size, based on active user count
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

239


<!-- page 240 -->
• Companies in your industry category and those that are of similar size to your company
• Geographical regions

Note:
• These benchmarks aren’t calculated using MSP data.
• Along with the above Benchmarks, you will also receive the top performers in each of
these categories.
• Changing KPI configuration within the month requires one to two months of data
collection before your monthly values reflect that change.
• The Benchmark Scheduler (bm.scheduler) user is added with Benchmarks. It’s required
for Benchmarks data collection.

Key features
• Available KPIs from other ServiceNow applications such as ITSM, ITOM, Security Operations.
For more information, see Benchmark KPIs.
• Ability to change KPI definitions to match customizations.
• Benchmarks dashboard in Service Portal (mobile friendly).
• Ability to download KPI reports.
• Ability to filter data based on the following parameters:
◦ Industry, number of users, or geographical region.
◦ Companies in your industry category and of similar user size.
• Email notification when new aggregate monthly data is available.
• Percentile ranking to indicate your standing within your participating peer group.
• Recommendation candidates with guided setup to help improve KPI performance.
• Product category-based roles to limit data access.
• Integration with Performance Analytics for daily data collection and drill-down on KPI data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

240


<!-- page 241 -->
Benchmarks dashboard

Benchmarks benefits
Benefits
Benefit

Description

Global anonymity

Viewers in your organization have access benchmarks
for your organization, however the global benchmarks
are anonymous, and don’t include any company
information.

Industry comparison

Using the Compare with drop-down in the Benchmarks
dashboard, you can filter the benchmarks results by
industry, ServiceNow user size, or geographical region
to make the results more relevant to your organization.
• Industry is determined based on the standard
industry code in the account record for the company.
• Number of users is determined by the number of
ServiceNow active users within the company, so
you can compare your company to similar-sized
ServiceNow implementations to gain insight about
your company.
• Region is determined based on the Region field in
the company table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

241


<!-- page 242 -->
Benefits (continued)
Benefit

Description

If a filter category includes fewer than 20 participants,
the corresponding data is shown in the Other category.
Trends

You can see the results of all published KPIs as well as
the previous six months of history.
You can then use the trend data to measure and report
on service delivery progress over a period of time
to determine what is working well and what needs
improvement.

Recommendations

Data is analyzed and recommendation candidates are
provided to help improve the performance of your KPIs.
All recommendations are dynamic and are updated
monthly, based on data from the previous month.

Reports

Benchmarks reports get refreshed monthly, which can
be downloaded in PDF format. An email notification is
sent to the customer when new data is available.

Configuring Benchmarks
Enable Benchmarks for ITSM and configure the settings to track the Benchmarks KPI and the
trends.
You must opt in to Benchmarks to participate in Benchmarks data collection. However, you can
opt out at any time.
To keep the Benchmarks comparison data clean, you can opt in to Benchmarks only from your
production instance.
Six months of global data is available after opting in. If available, the corresponding data for your
instance is also included.

Note: Past data for your instance is only available for Benchmarks users upgrading from a
previous release.

Enable Benchmarks
Enable Benchmarks by opting in to participate in Benchmarks data collection. With Benchmarks
you can compare your organization's performance with that of the recognized industry
standards.

Before you begin

To keep the Benchmarks comparison data clean, you can opt in to Benchmarks only from your
production instance.
Role required: sn_bm_client.benchmark_admin

About this task

Note: You must install the Success Dashboard application to access the respective
Benchmarks KPIs. For information on these KPIs, see Benchmark KPIs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

242


<!-- page 243 -->
Once you have manually opted into Benchmarks, enable and configure benchmark KPIs. From
the Benchmarks dashboard, you can view the Benchmarks KPI data, performance trends, and
indicator scorecards.

Note: Service Portal

must be installed to view the Benchmarks dashboard.

Six months of global data is available after opting in. If available, the corresponding data for your
instance is also included.

Note: Past data for your instance is only available for Benchmarks users upgrading from a
previous release.

Procedure
1. Opt into Benchmarks using the guided setup or by navigating using the application navigator.
Using

Do this

Guided setup

a. Navigate to Continual Improvement > Administration > Guided
Setup.
b. Go to the Enable Benchmarks section and click Configure.

Application navigator

Go to Benchmarks > Setup.

2. Click Opt-In Agreement and read the agreement.
3. After reading the agreement, click Done.
4. Select the Yes, I have read and accept the Opt-In Agreement check box, and then click OptIn.
The opt-in confirmation screen appears.

What to do next

Enable and configure your KPIs.
Getting started with the ITSM Success Dashboard admin console
With the new ITSM Success Dashboard admin console, you can access the Benchmarks
application.
The admin console displays the required updates or plugins for Benchmarks that help in
optimizing the performance of the selected KPIs. It also helps you configure Benchmarks
and customize the KPIs and trends according to your organizational requirements.For more
information on Admin Console, see ITSM Success Dashboard Admin console.
• User Roles: You can assign different roles based on specific access requirements.
• KPI participation: You can review and configure the KPIs opted in for the ITSM, ITOM, and
Success dashboard categories.
• Opt out: You can opt out of Benchmarks at any time. If you opt out, your company usage data is
no longer included in the Benchmarks data set, and you no longer see aggregate metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

243


<!-- page 244 -->
https://player.vimeo.com/video/1013200251?
badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Assign roles for Benchmarks users
Assign roles for Benchmarks users based on their access requirements.

Before you begin

Role required: sn_bm_client.benchmark_admin

Procedure
1. Opt in for the Benchmarks application.
For more information, see .
2. On the Benchmarks configuration page, locate the User roles section and select Configure.
3. On the User roles page, select a role from the Select role drop-down list.
A list of users currently assigned the selected role and a graph showing the distribution of
users in different roles are displayed.
For information about Benchmarks roles, see Benchmarks roles.
4. Add users to a role list.
a. Select Add User.
b. Start typing the user name and select from the drop-down list.
c. Select Save.
5. Remove users from a role list.
a. Select the check box next to the user name you want to remove.
b. Select Remove user.
Opt out of Benchmarks
You can opt out of Benchmarks at any time. If you opt out, your company usage data is no longer
included in the Benchmarks data set, and you no longer see aggregate metrics.

Before you begin

Role required: sn_bm_client.benchmark_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

244


<!-- page 245 -->
About this task

When you opt out of the Benchmarks forum, it means that you no longer have access to
benchmarking information for your organization. Your usage data is also removed from the
Benchmarks data set going forward. However, your company can rejoin the Benchmarks program
at any time.

Note: It may take up to two monthly refresh cycles for the request to be processed.
Procedure
1. Navigate to All > Benchmarks > Setup.
2. Click Opt-out of ServiceNow Benchmarks.
3. Click Opt-Out.
4. Optional: To send your feedback, provide the relevant information and click Send.
Otherwise, click Cancel to skip the survey.

The opt-out confirmation is shown. You can opt back in at any time.

Benchmark KPIs
You can enable or disable a benchmark KPI, and customize KPI conditions. Integration with
Performance Analytics provides daily data collection and drill down capabilities on KPI data.
Benchmarks offers KPIs grouped in six categories. The categories are ITSM, ITOM, Security
Operations, Success Dashboard, Conversational Interfaces, and Strategic Portfolio
Management.

Note: Upgrading Benchmarks does not change KPI status or configuration from the
previous release. New KPIs are enabled by default.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

245


<!-- page 246 -->
Benchmarks uses anonymous, aggregated usage data from customers who have opted in
to calculate global and industry benchmarks. The KPIs in the Benchmarks application are
performance analytics indicators that only collect the usage count data, for example, the total
number of incidents in a month, based on the monthly aggregates. During data collection, the
Benchmarks application does not consider any other details such as description of incidents, or
information about requests, changes, or applications.
The participating customer count for each cohort bucket in Industry Category, User Size, and
Three geo regions aggregates are large enough to calculate monthly benchmarks values and to
maintain full anonymity. To further ensure data anonymity, the Benchmarks user interface allows
you to use only one filter at a time.

ITSM KPIs
Incident
KPI

Description

Note: In some environments, KPIs involving resolved incidents may require further
configuration to retrieve resolved incident data.
% of high priority incidents resolved

[Number of priority 1 (P1) and priority 2 (P2)
incidents resolved during the month] / [Total
number of incidents resolved during the same
month]
Incident count is generated from the Incident
table.

Note: The definition of P1 and P2
incidents is likely to vary per participant.
Your P1 and P2 incidents may or may
not be similar to the incidents of others.
For comparison, the metrics provided in
this report represent the average of all
participants.
% of incidents resolved on first assignment

[Number of incidents resolved on first
assignment during the month] / [Total number
of incidents resolved during the same month]
First assignment is when the Reassignment
Count field is 0 for the incident.

% of incidents resolved within SLA

[Number of incidents with met SLAs resolved
during the month] / [Total number of incidents
resolved during the same month]
Met SLAs are calculated from the task_sla
table for incidents resolved during the month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

246


<!-- page 247 -->
Incident (continued)
KPI

% of reopened incidents

Description

[Number of incidents resolved during the
month that were reopened] / [Total number of
incidents resolved during the same month].
Reopened is when the Reopen Count field is
greater than 0 for the incident.

Average time to resolve a high priority incident

[Sum of the duration of all high priority
incidents resolved during the month] / [Total
number of high priority incidents resolved
during the same month]
• Duration is the length of time from creation
to resolution.
• High priority incidents include priority 1 (P1)
and priority 2 (P2).

Average time to resolve an incident

[Sum of the duration of all incidents resolved
during the month] / [Total number of incidents
resolved during the same month]
Duration is the length of time from creation to
resolution.

Number of incidents created per user

Number of incidents per user created during
the month.
Global value is the average of all participating
customers per user.

Problem
KPI

% of high priority problems

Description

[Number of high priority problems closed
during the month] / [Total number of problems
closed during the same month]
High priority problems include priority 1 (P1)
and priority 2 (P2).

% of incidents resolved by problem

[Number of incidents resolved during the
month that are associated with a problem] /
[Total number of incidents resolved during the
same month]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

247


<!-- page 248 -->
Problem (continued)
KPI

Average time to close a problem

Description

[Sum of the duration of all problems closed
during the month] / [Total number of problems
closed during the same month]
• Duration is the length of time from creating
to closure.
• Problems include priority 1 (P1) through
priority 5 (P5).

Change
KPI

% of emergency changes

Description

[Number of emergency changes closed during
the month] / [Total number of all changes
closed during the same month]
All changes include standard, normal, and
emergency.

% of failed changes

Average time to close a change

[Number of unsuccessful changes during the
month] / [Total number of all changes closed
during the same month]
[Sum of the duration of all changes closed
during the month] / [Total number of all
changes closed during the same month]
• Duration is the length of time from creation
to closure.
• All changes include standard, normal, and
emergency.

Service Catalog
KPI

% of closed requests with breached SLAs

Description

[Number of closed requests with breached
SLAs during the month] / [Total number of
closed requests during the same month]
Breached SLAs are calculated from the
task_sla table for requests closed during the
month.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

248


<!-- page 249 -->
Service Catalog (continued)
KPI

Average time to fulfill a request

Description

[Sum of the duration for Service Catalog
requests fulfilled during the month] / [Total
number of Service Catalog requests fulfilled in
the same month]
• Duration is the length of time from creation
to closure.
• Number of Service Catalog requests
fulfilled is the count of the number of
records in the sc_req_item table, which were
closed within a month.

Number of requests created per user

Number of requests per user created during
the month.

Knowledge
KPI

% of incidents resolved using KB articles

Description

[Number of incidents with KB articles resolved
during the month] /
[Total number of incidents resolved during the
same month]

Number of knowledge articles views per user

Number of knowledge article views per user
during the month.
• Knowledge base views are generated from
the kb_use table.
• Global value is the average of all
participating customers per user.

ITSM Virtual Agent
KPI

% call deflection

Description

[The number of incidents and requests
created using Virtual Agent ] / [Total numbers
of incidents and requests created]
The number of times, in percentage, the
incident, or request was submitted using
Virtual Agent. This is determined by the
deflection
pattern added in the Virtual Agent
topic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

249


<!-- page 250 -->
ITSM Virtual Agent (continued)
KPI

% of incidents auto-resolved

Description

[The number of incidents auto-resolved by
Virtual Agent ] / [Total number of incidents
resolved]
The number of times, in percentage, incidents
were automatically resolved using automated
workflows or by Issue Auto Resolution .

Other
KPI

Average customer satisfaction

Description

[Sum of normalized metric values of all survey
instances taken during the month] /
[Total number of survey instances taken during
the same month]
• Table: asmt_metric_results.
• Survey: Customer Satisfaction Survey.
• Metric value is normalized as per category
weights.

Note: This KPI uses the base system
Customer Satisfaction Survey.
If you're using a different survey to collect
user feedback, you can customize the
KPI definition.
Number of requests per fulfiller

[Number of active requester (non-ITIL) users
during the month] /
[Total number of active ITIL users during the
same month]

ITOM KPIs
CMDB
KPI

% of duplicate CIs

Description

Average % of duplicate CIs during the month.
Duplicate CIs are calculated using the
cmdb_health_scorecard table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

250


<!-- page 251 -->
CMDB (continued)
KPI

Description

Note: The definition of duplicate CIs
is likely to vary per participant. Your
duplicate CIs definition may or may not
be similar to the definitions of others.
For comparison, the metrics provided in
this report represent the average of all
participants.
% of non-compliant CIs

Average % of non-compliant CIs during the
month.
Non-compliant CIs are calculated using the
cmdb_health_scorecard table.

Note: The definition of CI compliance
audits is likely to vary per participant.
Your CI compliance audit definition may
or may not be similar to the definitions
of others. For comparison, the metrics
provided in this report represent the
average of all participants.
% of stale CIs

Average % of stale CIs during the month.
Stale CIs are calculated using the
cmdb_health_scorecard table.

Note: The definition of stale CIs is likely
to vary per participant. Your stale CIs
definition may or may not be similar to
the definitions of others. For comparison,
the metrics provided in this report
represent the average of all participants.

Conversational Interfaces KPIs
Virtual Agent
KPI

% of users using Virtual Agent

Description

[Total number of users using Virtual Agent ] /
[Total number of active users]
Percentage of unique users who are using
Virtual Agent to handle everyday tasks and
requests.

% conversation handed over to a live agent

[Number of conversations assigned to a live
agent] / [Total number of conversations]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

251


<!-- page 252 -->
Virtual Agent (continued)
KPI

Description

The percentage of virtual agent
conversations that were redirected to handle
everyday tasks and requests.
Virtual Agent CSAT score

Uses the daily average score of the
surveys conducted to analyze the quality
of user interactions with Virtual Agent
conversations.

Security Operations KPIs
Security Incident Response
KPI

% of critical and high priority security incidents

Description

[Number of critical and high priority security
incidents created during the month] / [Total
number of all security incidents created during
the same month]

Vulnerability Response
KPI

Average critical vulnerability age

Average vulnerability age

Average vulnerability per asset

VI mean time to remediate (MTTR)

% of remediation efficiency

Description

[Summed age of critical vulnerable items] /
[Number of critical vulnerable items]
[Summed age of vulnerable items] / [Number
of vulnerable items]
[Sum of active vulnerable items] / [Total
number of scanned configuration items]
[Sum of duration of closed vulnerable items] /
[Total number of closed vulnerable items
displayed as a 30-day running average]
[Number of vulnerable Items items closed
during a month] / [Number of new or reopened
vulnerable items in the same month]

Success Dashboard KPIs
You must install the ITSM Success Dashboard application to access the Success Dashboard
KPIs. For more information, see Install ITSM Success Dashboard indicators.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

252


<!-- page 253 -->
KPI

Formula

Description

Self-solved %

[Self-solved (VA, KB, QnA,
Proactive Engagement) +
Automated resolutions] /
[Total Tickets Resolution +
Self-solved (VA, KB, QnA,
Proactive Engagement) + Self
service using Password Reset
apps]*100

Self-solved percentage is
calculated based on the daily
average number of times your
users achieved resolution
without agent intervention. It
includes numbers from the
following items:
• Self-solved using Virtual
Agent.
• Self-solved using
Knowledge articles.
• Self-solved using QnA.
• Self-solved using PE
• Automated resolutions.
This could be, for example,
incidents that were autoresolved using Virtual
Agent.

Call deflection %

[Catalog ticket submissions
+ VA ticket submissions +
Self-solved (VA, KB, QnA and
Proactive Engagement) +
Self service using Password
Reset apps] / [Total tickets
submitted + Self-solved
(VA, KB, QnA and Proactive
Engagement) + Self service
using Password Reset
apps]*100

Call deflection is calculated
per day based on the number
of times requestors performed
the following actions without
Tier 1 agent intervention:
• Ticket submissions using
Service Catalog
• Ticket submissions using
Virtual Agent
• Self-solved using Virtual
Agent
• Self-solved using
Knowledge articles

Structured tickets %

[Structured tickets
completed]/[Total Ticket
resolutions]*100

Count percentage of tickets
that were completed and
were structured. This could
be, for example, a requested
item fulfillment or an HR Case
where payroll ambiguity was
resolved.

Average CSAT (Customer
satisfaction survey) scores

[ITSM Customer Satisfaction
Score] + [Virtual agent
Customer Satisfaction score]

Average of customer
satisfaction scores based on
the surveys conducted after
the issue was resolved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

253


<!-- page 254 -->
KPI

Formula

Description

Note: Both ITSM
Customer Satisfaction
score and VA Customer
Satisfaction score are
normalized with the base
as 10.
MTTR – Average mean time to
resolution

[Time to resolve]/[Issues
resolved]/24

Mean time to resolve (MTTR)
is calculated from daily
average of the time between
the ticket creation and ticket
closure. Card displays average
MTTR for the report range.

Breached SLA %

[Issues resolved with
breached SLAs]/[Issues
resolved]*100

Breached Service Level
Agreement (SLA) percentage
is calculated from the daily
average number of issues
that were closed after having
breached an SLA.

First assignment resolution

[Tickets resolved without
reassignment]/[Issues
resolved]*100

Tickets resolved without
having to reassign to an agent.

% Automated resolutions

([[Automated resolutions]]/
[[Self solved - percentage
(denominator)]])*100

Total number of tickets
successfully completed and
closed using the automated
workflows, or by Issue
Auto Resolution, or by
Password Reset web/windows
application.

% KB - Self-solved (count)

([[KB - Self-solved (count)]]/
[[Self solved - percentage
(denominator)]])*100

Total number of tickets
successfully completed
and closed by reading the
knowledge articles. This is
determined when users read
knowledge article(s) and do
not create a ticket in a 24-hour
window.

% VA - Self-solved (count)

([[VA - Self-solved (count)]]/
[[Self solved - percentage
(denominator)]])*100

Total number of automated
conversations that resolved
the issue. This is determined
by the deflection node
instrumented in the Virtual
Agent topic.

% Call deflection when selfsolved (count)

([[Call deflection when
self-solved (count)]]/[[Call
deflection - percentage
(denominator)]])*100

Total number of issues or
requests solved using the
Virtual Agent and Knowledge
Base articles that resulted in
call deflection.

% VA ticket submissions
(count)

([[VA ticket submissions
(count)]]/[[Call

Total number of times the
ticket was submitted using

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

254


<!-- page 255 -->
KPI

Formula

Description

deflection - percentage
(denominator)]])*100

the Virtual Agent. This is
determined by the deflection
node instrumented in the
Virtual Agent topic.

([[Catalog ticket
submissions (count)]]/[[Call
deflection - percentage
(denominator)]])*100

Total number of tickets (cases,
incidents, requested items
and so on) submitted using
the Service Catalog in Service
Portal or NOW mobile.

Productivity moments [[Productivity in search
Productivity in search per user (count)]] / [[Average number
of active users]]

Instances where ServiceNow
capabilities like NLU, LLM,
Knowledge Article, Walk-up
experience, etc, helped either
the agent or requester in
improving their productivity.

Productivity moments [[Productivity in routing
Productivity in routing per user (count)]] / [[Average number
of active users]]

Instances where ServiceNow
capabilities like NLU, LLM,
Knowledge Article, Walk-up
experience, etc, helped either
the agent or requester in
improving their productivity.

Productivity moments Productivity in fulfilment per
user

[[Productivity in fulfilment
(count)]] / [[Average number
of active users]]

Instances where ServiceNow
capabilities like NLU, LLM,
Knowledge Article, Walk-up
experience, etc, helped either
the agent or requester in
improving their productivity.

Productivity moments Productivity in knowledge
article generation

[[Productivity in knowledge
Instances where ServiceNow
article generation]] / [[Average capabilities like NLU, LLM,
number of active users]]
Knowledge Article, Walk-up
experience, etc, helped either
the agent or requester in
improving their productivity.

% Catalog ticket submissions
(count)

For more information on Success Dashboard KPI definitions and formulas, see ITSM Success
Dashboard indicators KPI definitions and formulas

Strategic Portfolio Management KPIs
Benchmarks supports Strategic Portfolio Management KPIs. You must install the Strategic
Portfolio Management application to access the respective Benchmarks KPIs. For more
information about the , see SPM Benchmarking KPIs .
Configure KPI participation
Review and configure Benchmarks KPI participation by opting in or out of categorized KPIs.

Before you begin

Role required: sn_bm_client.benchmark_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

255


<!-- page 256 -->
Procedure
1. Opt in for Benchmarks.
For more information, see .
2. On the Benchmarks configuration page, view the KPI categories in the KPI participation
section.
3. Select a category for which you want to view KPI details and select Review and configure.
On the respective category page, a summary of KPIs, current participation status, descriptions,
formulas for KPI calculation, and conditions for contributing indicators are displayed.
4. Opt in for KPI participation.
a. Select the vertical ellipsis next to the KPI that you want to opt in to.
b. Select Opt in.
5. Opt out of KPI participation.
a. Select the vertical ellipsis next to the KPI that you want to opt out of.
b. Select Opt out.
6. Modify KPI details.
a. Select the vertical ellipsis next to the KPI that you want to modify.
b. Select Modify.
c. Modify KPI details such as the description, formula for KPI calculation, and conditions for
contributing indicators.
7. Create or schedule a Benchmarks historical data collection job for a newly enabled KPI.
For information about how to create or schedule a data collection job, see Create or schedule
a data collection job . The recommended time interval to collect data for a new KPI is 60 days.
8. Execute the Benchmarks historical data collection job to collect data for the new KPI.
a. Navigate to Platform Analytics > Data Collector > Jobs.
b. Find and open the historical data collection job that you created.
c. Select Execute.
The collected data scores are stored in the Platform Analytics Score (pa_scores) table.
9. Upload the collected data to the centralized Benchmarks instance.
a. In the Benchmarks historical data collection job, navigate to the Job Logs related list.
b. Make sure that the state for the historical data collection job is Collected.
This state indicates that the job is complete and all data for the set period is collected.
c. Navigate to System Definition > Scheduled Jobs.
d. Find and open the Copy historical scores from PA to Benchmarks table job.
e. Select Execute Now.
10. Optional: Download the Benchmarks scores manually to your instance to view the scores
before they are automatically downloaded.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

256


<!-- page 257 -->
a. Navigate to System Definition > Scheduled Jobs.
b. Find and open the Download the benchmark scores job.
c. Select Execute Now.
Configure resolved incident Benchmarks KPIs
The source for the KPIs containing resolved incident data is the resolved_at field in the Incident
[incident] table, which may not exist in some environments. In this case, additional configuration
is required to use these KPIs.

Before you begin

Note: If you have never tracked resolved incidents in your environment before, install
the Incident Resolution Fields
(com.snc.incident_resolution_fields) plugin, which
automatically adds the resolved_at field to the Incident table. No further steps are required.

Role required: sn_bm_client.benchmark_admin

About this task

If you are receiving errors in the Benchmarks Data Collection job log for resolved incident KPIs
because you are using a custom (user-created) field to track resolved incidents, the following
procedure is required for successful data retrieval using these Benchmarks KPIs.
• % of high priority incidents resolved
• % of incidents resolved on first assignment
• % of incidents resolved within SLA
• % of reopened incidents
• Average time to resolve a high priority incident
• Average time to resolve an incident
• Number of incidents created per user
Configure the KPI conditions and script to use your custom field (instead of the default
resolved_at field) for resolved incident Benchmarks KPIs.

Procedure
1. Configure the Benchmark.Incidents.Resolved indicator source
field.

condition with your custom

a. Navigate to Performance Analytics > Sources > Indicator Sources.
b. Select the Benchmark.Incidents.Resolved indicator source and enter edit mode.
c. In the Conditions section, select your custom field from the list (custom field names are
typically preceded by u_).
d. Click Update.
2. Configure the Benchmark.Incident.ResolvedTime.Hours script with your custom field name.
a. Navigate to Performance Analytics > Automation > Scripts.
b. Select the Benchmark.Incident.ResolveTime.Hours script and enter edit mode.
c. Replace the resolved_at field name occurrence within the script with the name of your
custom field (custom field names are typically preceded by u_).
d. Click Update.
3. Verify that you are no longer receiving errors in the Benchmarks Data Collection job log.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

257


<!-- page 258 -->
Link or customize a benchmark KPI
You can customize KPI conditions to fit the needs of your organization better.

Before you begin

The Benchmarks admin role does not provide application-specific roles. Therefore, although
a Benchmarks admin can access a KPI through the Benchmarks application, changes to KPI
conditions require the role specific to the KPI application.
For example, a Benchmarks admin cannot modify conditions for the knowledge base KPI
(Knowledge Use [kb_use] table), SLA KPI (Task SLA [task_sla] table), ITOM KPIs (CMDB
Health Scorecard [cmdb_health_scorecard] table), Security Operations KPIs (Vulnerable Item
[sn_vul_vulnerable_item], or Security Incident [sn_si_incident] tables) from within Benchmarks
without specific access granted to those tables (knowledge_admin, sla_admin, asset, or
sn_si.special_access roles).
Role required: sn_bm_client.benchmark_admin

About this task

Customizing KPI conditions is useful to adjust the criteria to more accurately represent the data
that your company is interested in.
For example, if your implementation does not use priority 1 incidents, you can change the criteria
for high priority KPIs from 1 to 0, which returns more accurate data for your organization.

Note: It takes one to two months for aggregate monthly data to accurately reflect
changes made to KPI conditions. For example, changes made within the month include a
combination of data:
• Data for the previous condition (up until the date the condition was changed)
• Data for the new condition from that date forward
For further analysis, you can link a Performance Analytics indicator that you are already using
to the corresponding Benchmarks indicator to see breakdowns, in addition to individual scores,
when drilling down on KPI data.
For example, link Number of resolved incidents by first assigned group to Benchmark: Number
of incidents resolved on first assignment to view breakdown values by priority, assignment
group, and category.

Note: Individual scores are shown by default but you must have Performance Analytics
to use linking to show breakdowns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

258


<!-- page 259 -->
Procedure
1. Navigate to All > Benchmarks > Setup and click a KPI to access the KPI conditions.

2. Change the conditions, as appropriate.
3. To link a Performance Analytics indicator to a Benchmarks indicator, follow the procedure in
Link an automated indicator to a benchmark .
Performance Analytics KPI to Benchmarks KPI link
Benchmarks KPI

Formula

Performance Analytics KPI

Number of active users

--

Benchmark: Number of active
users

Total time to close changes

--

Benchmark: Total time to
close changes

% of failed changes

[Number of unsuccessful
changes during the month] /

Benchmark: % of failed
changes

[Total number of all changes
closed during the same
month]
Number of unsuccessful
changes

--

Benchmark: Number of
unsuccessful changes

Number of changes closed

--

Benchmark: Number of
changes closed

% of emergency changes

[Number of emergency
changes closed during the
month] /

Benchmark: % of emergency
changes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

259


<!-- page 260 -->
Benchmarks KPI

Formula

Performance Analytics KPI

[Total number of all changes
closed during the same
month]
Number of emergency
changes closed
Average time to close a
change

--

[Benchmark: Total time to
close changes] /

Benchmark: Number of
emergency changes closed
Benchmark: Average time to
close a change

[[Benchmark: Number of
changes closed]]
% of stale CIs

Monthly average.

Benchmark: % of stale cis

% of duplicate CIs

Monthly average.

Benchmark: % of duplicate
cis

% of non-compliant CIs

Monthly average.

Benchmark: % of noncompliant cis

Average time to resolve a
high priority incident

[[Benchmark: Total time
to resolve high priority
incidents]]/

Benchmark: Average time
to resolve a high priority
incident

[[Benchmark: Number of high
priority incidents resolved]]
% of incidents resolved within
Benchmark: % of incidents
([[Benchmark: Number of
SLA
resolved within SLA
resolved incidents with
SLAs]] - [[Benchmark:
Number of resolved incidents
with breached SLAs]]) /
[[Benchmark: Number of
resolved incidents with
SLAs]] * 100
Total number of incidents
resolved by problem

--

Benchmark: Total number
of incidents resolved by
problem

Number of incidents closed
that were re-opened

--

Benchmark: Number of
incidents closed that were reopened

Number of high priority
incidents

--

Benchmark: Number of high
priority incidents resolved

Average time to resolve an
incident

[[Benchmark: Total time to
resolve an incident]] /

Benchmark: Average time to
resolve an incident

[[Benchmark: Number of
incidents resolved]]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

260


<!-- page 261 -->
Benchmarks KPI

Formula

Performance Analytics KPI

Number of resolved incidents -with SLAs

Benchmark: Number of
resolved incidents with SLAs

Number of incidents created
per user

Benchmark: Number of
incidents created per user

[[Benchmark: Number of
incidents created / By month
SUM]]/
[[Benchmark: Number of
active users / By month AVG]]

Total time to resolve high
priority incidents

--

Benchmark: Total time to
resolve high priority incidents

% of high priority incidents

Benchmark: % of high priority
[[Benchmark: Number of high incidents
priority incidents resolved]] /
[[Benchmark: Number of
incidents resolved]] * 100

Number of incidents created

--

Benchmark: Number of
incidents created

Number of incidents resolved -with attached KB articles

Benchmark: Number of
incidents resolved with
attached KB articles

Number of resolved incidents -with breached SLAs

Benchmark: Number of
resolved incidents with
breached SLAs

Total number of incidents

Benchmark: Number of
incidents resolved

--

Number of incidents resolved -on first assignment

Benchmark: Number of
incidents resolved on first
assignment

% of incidents resolved on
first assignment

Benchmark: % of incidents
resolved on first assignment

[[Benchmark: Total time to
resolve an incident]] /
[[Benchmark: Number of
incidents resolved]]

Total time to resolve incidents -% of reopened incidents

Benchmark: Total time to
resolve an incident

Benchmark: % of reopened
[[Benchmark: Number of
incidents
incidents closed that were reopened]] /
[[Benchmark: Number of
incidents closed ]] * 100

Number of incidents closed

--

Benchmark: Number of
incidents closed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

261


<!-- page 262 -->
Benchmarks KPI

Formula

Performance Analytics KPI

Number of knowledge article
views

--

Benchmark: Number of
knowledge article views

Number of knowledge base
views per user

[[Benchmark: Number of
knowledge article views / By
month SUM]]/

Benchmark: Number of
knowledge base views per
user

[[Benchmark: Number of
active users / By month AVG]]
% of incidents resolved using
KB articles

[[Benchmark: Number of
incidents resolved with
attached KB articles]] /

Benchmark: % of incidents
resolved using KB articles

[[Benchmark: Number of
incidents resolved]] * 100
Number of survey instances

--

Benchmark: Number of
survey instances

Number of active ITIL users

--

Benchmark: Number of active
ITIL users

Normalized customer
satisfaction

--

Benchmark: Normalized
customer satisfaction

Average customer
satisfaction

[[Benchmark: Normalized
customer satisfaction]] /

Benchmark: Average
customer satisfaction

[[Benchmark: Number of
survey instances]]
Number of requesters per
fulfiller

([[Benchmark: Number of
active users]] - [[Benchmark:
Number of active ITIL
users]]) /

Benchmark: Number of
requesters per fulfiller

[[Benchmark: Number of
active ITIL users]]
% of high priority problems

Benchmark: % of high priority
[[Benchmark: Number of high problems
priority problems closed]] /
[[Benchmark: Number of
problems closed]] * 100

Total time to close problems
% of incidents resolved by
problem

--

[[Benchmark: Total number
of incidents resolved by
problem]] /

Benchmark: Total time to
close problems
Benchmark: % of incidents
resolved by problem

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

262


<!-- page 263 -->
Benchmarks KPI

Formula

Performance Analytics KPI

[[Benchmark: Number of
incidents resolved]] * 100
Number of high priority
problems closed

--

Benchmark: Number of high
priority problems closed

Number of problems closed

--

Benchmark: Number of
problems closed

Average time to close a
problem

[[Benchmark: Total time to
close problems]] /

Benchmark: Average time to
close a problem

[[Benchmark: Number of
problems closed]]
% of critical and high priority
security incidents

[[Benchmark: Number of
Critical and High Priority
Security Incidents]] /

Benchmark: % of critical
and high priority security
incidents

[[Benchmark: Number of
Security Incidents]] * 100
Number of critical and high
priority security incidents

--

Benchmark: Number of
Critical and High Priority
Security Incidents

Number of security incidents

--

Benchmark: Number of
Security Incidents

Number of requests created

--

Benchmark: Number of
requests created

Number of requests closed

--

Benchmark: Number of
requests closed

Average time to fulfil a
request

[[Benchmark: Total time to
fulfil requests]]/

Benchmark: Average time to
fulfil a request

[[Benchmark: Number of
requests closed]]
Number of closed requests
with SLAs
Number of requests created
per user

--

[[Benchmark: Number of
requests created / By month
SUM]]/

Benchmark: Number of
closed requests with SLAs
Benchmark: Number of
requests created per user

[[Benchmark: Number of
active users / By month AVG]]
Number of closed requests
with breached SLAs

--

Benchmark: Number of
closed requests with
breached SLAs

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

263


<!-- page 264 -->
Benchmarks KPI

Formula

Performance Analytics KPI

Total time to fulfil requests

--

Benchmark: Total time to fulfil
requests

% of closed requests with
breached SLAs

[[Benchmark: Number
of closed requests with
breached SLAs]] /

Benchmark: % of closed
requests with breached SLAs

[[Benchmark: Number of
closed requests with SLAs]] *
100
Number of critical
vulnerability items

--

Benchmark: Number of
critical vulnerability items

Number of vulnerability items

--

Benchmark: Number of
vulnerability items

Average vulnerability age

Benchmark: Average age of
[[Benchmark: Summed age of vulnerable items
vulnerable items]] /
[[Benchmark: Number of
vulnerability items]]

Average critical vulnerability
age

Benchmark: Average age of
[[Benchmark: Summed age of critical vulnerable items
critical vulnerable items]] /
[[Benchmark: Number of
critical vulnerability items]]

Summed age of critical
vulnerable items

--

Benchmark: Summed age of
critical vulnerable items

Summed age of vulnerable
items

--

Benchmark: Summed age of
vulnerable items

Performance Analytics KPI to Benchmarks VA KPI link
Benchmarks KPI

Formula

Call Deflection (VA
Triaged and Created)

--

Performance Analytics
KPI

Description

Benchmark: Call
Deflection (VA
Triaged and Created)

Incidents created
using Virtual Agent
and tracked using the

ITSM VA–Triage
and Created
deflection pattern.
Call Deflection (VA
Catalog Analytics)

--

Benchmark: Call
Requests created
Deflection through VA using Virtual Agent
(Catalog Analytics)
and tracked every
time Virtual Agent
referred a catalog for
submission.

% Call Deflection

([[Benchmark:
Call Deflection

Benchmark: % VA
Deflection

The number of
times the Virtual

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

264


<!-- page 265 -->
Benchmarks KPI

Formula

Performance Analytics
KPI

(VA Triaged and
Created)]] +
[[Benchmark:
Call Deflection
through VA (Catalog
Analytics)]]) /
([[Benchmark:
Number of requests
created]] +
[[Benchmark:
Number of incidents
created]]) * 100
IAR (Intercept &
Resolved)

--

Description

Agent automatically
resolved incidents or
completed requests.

Benchmark: VA
IAR (Intercept &
Resolved)

Incidents that were
resolved using ITSM

VA-Intercept
& Resolved
deflection pattern.

VA Self Resolved

--

Benchmark: VA Self
Resolved

Every time the user
was able to self-solve
incident resolution or
complete requests
using ITSM VA-

Self Resolving
deflection pattern.
Number of incidents
resolved

--

Benchmark: Number
of incidents resolved

% of incident that
were auto-resolved
using VA

([[Benchmark:
VA IAR (Intercept
& Resolved)]] +
[[Benchmark: VA
Self Resolved]]) /
([[Benchmark:
Number of incidents
resolved]] +
[[Benchmark: VA Self
Resolved]]) * 100

Number of monthly
users of VA

--

% of users using
Virtual Agent

[[Benchmark: Number Benchmark: % of
of monthly users of
users using Virtual
VA]] / [[Benchmark:
Agent
Number of active
users]] * 100

Percentage of users
in the organization
using Virtual Agent
as an engagement
channel.

Number of VA
conversations
handed over to an
agent

--

Conversations that
were not resolved by
the Virtual Agent and
had to be handed off
to a live agent.

Benchmark: % of
incident that were
auto-resolved using
VA.

Benchmark: Number
of monthly users of
VA

Benchmark: Number
of VA conversation
handed over to an
agent

The total number of
incidents resolved.
Percentage of
incidents that were
auto-resolved using
Virtual Agent.

Number of monthly
users who are using
Virtual Agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

265


<!-- page 266 -->
Benchmarks KPI

Formula

Performance Analytics
KPI

Description

Total conversations in -VA

Benchmark: Total
conversations in VA

All conversations that
occurred in the Virtual
Agent.

% ofVA conversations
[[Benchmark:
handed over to live
Number of VA
agent
conversation handed
over to an agent]] /
[[Benchmark: Total
conversations in VA]]
* 100

Benchmark: % of
VA conversations
handed over to live
agent

Number of times,
in percentage, that
the conversation
was handed off to an
agent.

VA normalized
Satisfaction score

--

Benchmark:
VA normalized
Satisfaction score

Overall, total
normalized score
of all the surveys
conducted for Virtual
Agent conversations.

VA survey instances

--

Benchmark: VA
survey instances

Total number of
surveys that an
agent responded
to for assessing the
satisfaction score.

Virtual Agent CSAT
score

[[Benchmark:
VA normalized
Satisfaction score]]/
[[Benchmark: VA
survey instances]]

Benchmark: VA CSAT
score

Average Virtual Agent
satisfaction score.

Use Benchmarks data for value management analysis
Manually collect historical Benchmarks data to analyze the benefits of year-over-year growth
when you use the ServiceNow Benchmarks application.

Before you begin

Role required: sn_bm_client.benchmark_admin, pa_data_collector, or admin

About this task

If you want to analyze year-over-year performance, you must collect at least 24 months of
Benchmarks data. Use the sn_bm_client.months_copy_historical_pa_bm system property to
set the number of months from the current month for which you want to collect Benchmarks
historical data.

Procedure
1. Set up Benchmarks historical data collection.
a. Navigate to Performance Analytics > Data Collection > Jobs.
b. Select the Benchmarks Historical Data Collection job.
c. In the Relative start field, enter the period of time for which you want to collect the data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

266


<!-- page 267 -->
d. In the Relative start interval field, select the length of the time period to collect the data.
Recommended interval is 24 months.
e. Select Execute.
For detailed information on scheduling a data collection job, refer to Create or schedule a
data collection job .
2. Upload the collected data to the centralized Benchmarks instance.
a. In the Benchmarks Historical Data Collection job, navigate to the Job Logs
related list.
b. Make sure that the state for the historical data collection job is Collected.
This state indicates that all data for the job has successfully run and all data has been
gathered for the set time period.
c. Navigate to System Definition > Scheduled Jobs.
d. Select Copy historical scores from PA to Benchmarks table.
e. Select Execute Now.
The data is automatically sent for value management analysis. Connect with your account
representative to receive the report and discuss the benefits for your organization's value
management.

Analyze Benchmarks
Use the ServiceNow Benchmarks application to collect historical data to analyze the benefits of
year-over-year growth. View the Benchmarks KPI data and drill down to analyse the performance
analytics.

Use Benchmarks data for value management analysis
Manually collect historical Benchmarks data to analyze the benefits of year-over-year growth
when you use the ServiceNow Benchmarks application.

Before you begin

Role required: sn_bm_client.benchmark_admin, pa_data_collector, or admin

About this task

If you want to analyze year-over-year performance, you must collect at least 24 months of
Benchmarks data. Use the sn_bm_client.months_copy_historical_pa_bm system property to
set the number of months from the current month for which you want to collect Benchmarks
historical data.

Procedure
1. Set up Benchmarks historical data collection.
a. Navigate to Performance Analytics > Data Collection > Jobs.
b. Select the Benchmarks Historical Data Collection job.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

267


<!-- page 268 -->
c. In the Relative start field, enter the period of time for which you want to collect the data.
d. In the Relative start interval field, select the length of the time period to collect the data.
Recommended interval is 24 months.
e. Select Execute.
For detailed information on scheduling a data collection job, refer to Create or schedule a
data collection job .
2. Upload the collected data to the centralized Benchmarks instance.
a. In the Benchmarks Historical Data Collection job, navigate to the Job Logs
related list.
b. Make sure that the state for the historical data collection job is Collected.
This state indicates that all data for the job has successfully run and all data has been
gathered for the set time period.
c. Navigate to System Definition > Scheduled Jobs.
d. Select Copy historical scores from PA to Benchmarks table.
e. Select Execute Now.
The data is automatically sent for value management analysis. Connect with your account
representative to receive the report and discuss the benefits for your organization's value
management.

New Benchmarks Dashboard
The Benchmarks dashboard displays KPI data, performance trends, and indicator scorecards.
The Benchmarks KPI dashboard view displays all the KPIs and can be accessed through Service
Portal.
The dashboard features include the following:
• KPIs are shown in either the list or card view.
• Downloadable reports of the KPI list are available in PDF format.
• Data is filtered by type of industry, number of users, Managed Service Providers (MSPs), or
geographic region (the filter is retained when switching between the KPI view and trend view).

Note: Only MSPs can view the global MSP aggregate score data.
• The performance against the global data is shown with a thumbs up or thumbs down
representation.
• Depending on the subscription, six months to two years of historical KPI data can be viewed.
• Time values can be displayed in hours or days using the
sn_bm_client.dashboard_display_unit system property.

Note: The new Benchmarks dashboard is available from the ServiceNow store.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

268


<!-- page 269 -->
Percentile rank
The exact standing of the KPI for your company within your participating peer group is indicated
by percentile rank. A KPI percentile rank of 90% indicates that your instance standing for that KPI
is greater than 90% of the instances participating in that group.

Direction
(Percentile rank goal)

KPI
Minimize

Maximize

Incident
% of high priority incidents
resolved
% of incidents resolved on first
assignment
% of incidents resolved within
SLA
% of reopened incidents
Average time to resolve a high
priority incident
Average time to resolve an
incident
Number of incidents created
per user
Problem
% of high priority problems
% of incidents resolved by
problem

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

269


<!-- page 270 -->
Direction
(Percentile rank goal)

KPI
Minimize

Maximize

Average time to close a
problem
Change
% of emergency changes
% of failed changes
Average time to close a
change
Service Catalog
% of closed requests with
breached SLAs
Average time to fulfill a
request
Number of requests created
per user
Knowledge
% of incidents resolved using
KB articles
Number of knowledge article
views per user
ITSM Virtual Agent
% call deflection
% of incidents auto-resolved
Other
Average customer satisfaction
Number of requesters per
fulfiller
CMDB
% of duplicate CIs
% of non-compliant CIs
% of stale CIs
Security Incident Response
% of critical and high priority
security incidents
Vulnerability Response
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

270


<!-- page 271 -->
Direction
(Percentile rank goal)

KPI
Minimize

Maximize

Average critical vulnerability
age
Average vulnerability age
Virtual Agent
% of users using Virtual Agent
% conversation handed over
to a live agent
Virtual Agent CSAT score
Success Dashboard
Self-solved %
Call deflection %
Structured tickets %
Customer satisfaction survey
scores
MTTR – Average mean time to
resolution
Breached SLA %
First assignment resolution
% Automated resolutions
% KB - Self-solved (count)
% VA - Self-solved (count)
% Call deflection when selfsolved (count)
% VA ticket submissions
(count)
% Catalog ticket submissions
(count)
View benchmark KPI data
Benchmarks KPI data is shown in Benchmarks dashboard built in Next Experience UI. Data
includes values for your company instance, and for global data.

Before you begin

Role required: sn_bm_client.benchmark_data_viewer
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

271


<!-- page 272 -->
Procedure
1. Navigate to All > Benchmarks > Dashboard.
2. Select one of the KPI categories from the KPI list.
3. To view the corresponding group of KPIs, click a tab.

Note: If the data seems incomplete or incorrect, you can investigate the KPI definition
and conditions in Performance Analytics > Sources > Indicator Sources.

4. To filter results, select either an industry, number of users, or region in the Compare with: list.
The data is automatically updated when you select a filter.

Note: If a filter category contains fewer than 20 participants, the corresponding data is
shown in the Other category.

5. For choice of view, click either the list icon or the card-view icon.
In card view, clicking a KPI displays the six-month KPI performance trend chart.
6. To download a report to a PDF file, click the Download button.

What to do next

Click a KPI to view Benchmarks KPI performance trend.
Benchmarks KPI performance trend
The Benchmarks KPI performance chart trend view shows your KPI performance comparison
with global data, and provides details about the KPI on the contextual side panel.
The KPI Performance Trends chart section is shown only for users with the Benchmarks viewer
role (sn_bm_client.benchmark_data_viewer).

KPI Performance Trends chart
6-month monthly data mapped against global data

Your 6-month monthly data is mapped against global data, and your percentile rank indicating
your standing within the participating peer group is shown.
Functionality of the performance trend chart view includes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

272


<!-- page 273 -->
• Viewing your instance and global data for a certain month by hovering over a point on the
graph.
• Accessing the Performance Analytics scorecard for a data point in your instance.
• Filtering data by type of industry, number of users, or geographic region.

Benchmarks reference
Refer to the different roles, dashboard, KPI categories and trends offered by ServiceNow
Benchmarks.

Benchmarks roles
These roles are introduced with Benchmarks.
An overview of the Benchmarks feature in ServiceNow, including opting in, setting up
Benchmarks, reading the KPI dashboard, reading KPI cards, recommendations and
implementing them.
Roles
Role

Capabilities

sn_bm_client.benchmark_admin

Roles inherited

• Set up Benchmarks from an
instance
• Opt in or out of the
Benchmarks program
• Enable, disable, or modify
indicators (including
changing Performance
Analytics indicator source,
script, and conditions for
those KPIs not requiring
application-specific roles)
• Receive email notification
when new aggregate
monthly data is available
• All functions of the
Benchmarks viewer
and Benchmarks
recommendations roles

sn_bm_client.benchmark_data_viewer
• View full benchmark reports
in Service Portal
• View data visualizations and
drill-downs for analyzing
trends (not PA scorecards)
• Download visualizations
• View industry category or
size comparisons

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

273


<!-- page 274 -->
Roles (continued)
Role

Capabilities

sn_bm_client.benchmark_recommendation_viewer
View benchmark KPI
recommendation candidates.

Roles inherited

sn_process_optimization_viewer

Troubleshooting Benchmarks errors
Troubleshoot and resolve common errors when setting up or running Benchmarks.
Data Error Scenarios
Scenario

Reason

Action

No data in dashboard after
opting in.

The download REST API for
six months failed or there is a
connection failure.

Verify in the sysevent
table that the
sn_bm_client.download.scores.6months
event is processed.

No instance data is shown
in the dashboard for the last
month.

PA data collection or
scorecards API failure.

• Make sure the condition in
the indicator source, script
field in the indicator, and
additional conditions in the
indicator are correct.
• Verify that historical data of
the last month for the KPI is
collected.
1. Navigate to Platform
Analytics > Data
Collector > Jobs.
2. Find and open the
historical data collection
job for the KPI.
3. Navigate to the Job Logs
related list.
4. Make sure that the
state for the historical
data collection job is
Collected.

No global or cohort
benchmark scores in
dashboard for the last month.

• The download REST
API failed or there is a
connection failure.
• The minimum data required
to generate global or
cohort scores for a KPI isn't
available due to insufficient
customer participation
in a cohort or peer group
segment.

• Verify in the sysevent
table that the
sn_bm_client.download.scores
event is processed.
• Make sure that each cohort
has a minimum of 10
participating customers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

274


<!-- page 275 -->
Data Error Scenarios (continued)
Scenario

Reason

Action

Opt-in process fails.

Authentication failed or
the instance type is not
supported.

Contact Customer Service
and Support team.

• KPI condition configuration

• Verify the KPI definition and
conditions in Performance
Analytics > Sources >
Indicator Sources.

Incorrect or no KPI data in the
Benchmarks dashboard.

• The minimum historical
data scores for KPIs are not
available.

• Make sure that a minimum
of one to two months of
aggregate monthly historical
data for a KPI is available.
The recommended time
interval is 60 days.
No data in Percentile Rank list
view.

Percentile Rank shows N/A
due to the following reasons.
• You are viewing an industry
that you are not a part of.
• The minimum data required
to generate global or
cohort scores for a KPI isn't
available due to insufficient
customer participation
in a cohort or peer group
segment.

No data in Top Performer
score.

Top Performer score shows
N/A if the minimum historical
data scores for KPIs are not
available.

• View the industry in which
your scores are included.
• Make sure that each cohort
has a minimum of 10
participating customers.

Make sure that a minimum
of one to two months of
aggregate monthly historical
data for a KPI is available. The
recommended time interval is
60 days.

Domain separation and Benchmarks
Domain separation is unsupported in the Benchmarks application. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

Support level: No support
• The domain field may exist on data tables but there is no business logic to manage the data.
• This level is not considered domain-separated.
For more information on support levels, see Application support for domain separation

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

275


