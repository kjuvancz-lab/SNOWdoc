# Zurich Customer Service Management — Customer Service Platform Analytics Solutions

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1827–1845 of 2452

Sections: Customer Service Platform Analytics Solutions (p1827)

---

<!-- page 1827 -->
Platform Analytic and Reporting Solutions for Self-Service Analytics for Customer
Service
Platform Analytics Solutions contain prepackaged Performance Analytics and
Reporting content for use with other ServiceNow AI Platform products. This Platform
Analytics Solution quantifies the value of self-service using the Self-Service
Analytics dashboard for customer service.

Customer Service Platform Analytics Solutions
Customer Service Platform Analytics Solutions contain preconfigured dashboards with
actionable data visualizations to improve your business processes.
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
To access available dashboards, navigate to Performance Analytics > Dashboards and select
All.
Two Platform Analytics Solutions are available for Customer Service:
• Customer Service (com.snc.pa.customer_service)
• Customer Service Management - Advanced (com.snc.pa.customer_service_advanced)

Note: Customer Service Performance Analytics solutions are an optional feature available
for the Customer Service Management application. To use them, your license must also
include Performance Analytics. Once licensed, enable the Performance Analytics Premium
for Customer Service and the Customer Service Performance Analytics solutions on the
instances where you wish to leverage the enhanced functionality. For more information
about licensing Performance Analytics, see Activating your Performance Analytics
subscription .

Customer Service solution
The Customer Service solution adds the following features.

Note: Performance Analytics - Spotlight (com.snc.pa.spotlight) is automatically activated
with this solution.
Spotlight groups: Case Spotlight.
Dashboards:
• Customer Service Agent
• Customer Service Manager

Customer Service Management - Advanced solution
The Customer Service Management - Advanced solution adds the following features.

Note: Performance Analytics - Spotlight (com.snc.pa.spotlight) is automatically activated
with this solution.
Spotlight groups: Case Spotlight.
Dashboards:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1827


<!-- page 1828 -->
• Customer Service Agent - Advanced
• Customer Service Manager - Advanced
These dashboards have all the information shown on the dashboards for the basic Customer
Service solution, but also contain additional indicators for the following features. Activate all the
plugins below in order to view the additional indicators.
• Major Issue Management
• Customer Service Case Action Status
• Customer Service with Request Management
• Customer Service with Service Management
• Agent Chat
• Advanced Work Assignment for CSM
• Performance Analytics - Content Pack - Advanced Work Assignment

Note: For more information about the Major Issue Management indicators, see Major
issue management analytics.
The Customer Service Management - Advanced solution also adds additional Service
Management indicators to the Analytics Hub. For more information, see Customer Service
Management integration with Service Management analytics.

Enable Performance Analytics for Customer Service Management
To enable Performance Analytics for Customer Service Management, a user with the admin
role can navigate to Performance Analytics > Guided Setup. Click Get Started and then scroll
to the section for Customer Service. The guided setup takes you through the entire setup and
configuration process.
Related topics
Ranking records with Spotlight

Customer Portal Usage dashboard
The Customer Portal Usage dashboard enables you to understand the user usage of portals by
presenting an aggregate count of sessions created every month.
These sessions don’t represent individual users. For example, if you access the portal on two
different days, it counts as two separate sessions. For more information about how an aggregate
session is counted, see Portal usage calculation.
You can access the dashboard by navigating to All > Self Service > Dashboards. On the
dashboard page, search and select Customer Portal Usage.
To access more detailed information, place your mouse device over any of the graphical reports.
These graphs can be saved as PNG or JPEG files, enabling you to add them to emails or include
them in your presentations. Additionally, all graphs can be updated to display the current data.
An example of the dashboard layout is shown in the following image.

Note: The Customer Portal usage tab is available when the Customer Service
(com.sn_customerservice) plugin is activated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1828


<!-- page 1829 -->
Customer portal usage dashboard

End user and roles
End user and goal

Required role

admin

Administrator:
• Can edit the data
• Can view the dashboard

Required definitions for Customer Portal Usage dashboard
Definitions

DEFN1003689

Description

Get all the guest portal session counts for yesterday.
Frequency: Daily

Note: Login pages are excluded from guest usage calculations.
DEFN1003690

Get all the bot portal session counts for yesterday.
Frequency: Daily

DEFN1003691

Get all the external user portal session counts for yesterday.
Frequency: Daily

DEFN1003724

Get aggregated chargeable external portal sessions for last month.
Frequency: Monthly

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1829


<!-- page 1830 -->
Customer Service Agent dashboard
The Customer Service Agent dashboard provides quick access to your cases based on criteria
that help you prioritize your work. The dashboard also displays summary data on metrics for your
organization.
To view the Customer Service Agent dashboard, navigate to Performance Analytics >
Dashboards. Click the All tab and select Customer Service Management from the Group menu.
Click the Customer Service Agent or Customer Service Agent - Advanced tile.
The Customer Service Management - Advanced Performance Analytics Solution adds the
Customer Service Agent - Advanced dashboard. The Advanced dashboard contains two
additional indicators: Exceeding Chat Target and Exceeding Case Target.

End users and roles
The Customer Service Agent dashboard includes the following end users and roles.
Agent dashboard end users and roles
End user and goal

Required role

Customer service agent: View and prioritize
your assigned cases. View case trends for all
agents.

sn_customerservice_agent

Customer service manager: View and prioritize sn_customerservice_manager
your assigned cases. View case trends for all
agents.
Content administrator: Can edit the dashboard pa_admin
and manage users, groups, and roles for the
dashboard.
Content creator: Can view the dashboard.

pa_viewer

My Work tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1830


<!-- page 1831 -->
Reports
The Customer Service Agent dashboard includes the following reports.
Agent dashboard reports
Title

Description

My Open Cases

Cases assigned to me that are not resolved,
closed, or canceled.

My Cases With Problems

Cases assigned to me that are part of a parent
case that is assigned to a system admin.

Note: To view this data in the
dashboard, add the sn_problem_read
role to the sn_customerservice_agent
role.
My New Cases

Cases that I have not yet responded to.

My Group's P1 Cases

P1 cases that are assigned to a member of my
group.

My Group's Open Cases

Cases assigned to a member of my group that
are not resolved, closed, or canceled.

My KBs Created

List of all KB articles that I created.

Organizational Trends tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1831


<!-- page 1832 -->
Indicators
The Customer Service Agent dashboard includes the following indicators.
Agent dashboard indicators
Indicator

Description

CSAT

Average customer satisfaction based on survey results. The percent change in the
current period appears under the total percentage. For more information about
CSAT, see Customer service satisfaction surveys.

First Call
Percentage of cases that were resolved during first contact with the customer. The
Resolution percent change in the current period appears under the total percentage.
Exceeding Percentage of all Chat work items that have exceeded the target wait time. For
Chat
more information about the Chat service channel, see Advanced Work Assignment
Target
service channels

Note: This indicator is only viewable on the Customer Service Agent Advanced dashboard.
Exceeding Percentage of all Case work items that have exceeded the target wait time.
Case
For more information about the Case service channel, see Advanced Work
Target
Assignment service channels

Note: This indicator is only viewable on the Customer Service Agent Advanced dashboard.
Avg.
Average time for a case to be marked as closed or resolved.
Time to
Note: On the Customer Service Agent - Advanced dashboard, this indicator
Resolution
is called Mean Time to Resolve.
Backlog
Growth

Number of backlogged cases for all agents over time.

Customer Service Manager dashboard
The Customer Service Manager dashboard displays charts and summary data on metrics like
backlog, resolution rates, SLA, customer satisfaction, and per-agent KPIs.
To view the Customer Service Manager dashboard, navigate to Performance Analytics >
Dashboards. Click the All tab and select Customer Service Management from the Group menu.
Click the Customer Service Manager or Customer Service Manager - Advanced tile.
The Customer Service Management - Advanced Performance Analytics Solution adds the
Customer Service Manager - Advanced dashboard. The Advanced dashboard contains the
additional tab Work Assignment Analytics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1832


<!-- page 1833 -->
End users and roles
End user roles and goals
End user and goal

Required role

Customer service manager: View case metrics sn_customerservice_manager
like backlog, resolution rates, SLA, customer
satisfaction, and per-agent KPIs to understand
the current performance of customer service
at your organization.
Content administrator: Can edit the dashboard pa_admin
and manage users, groups, and roles for the
dashboard.
Content creator: Can view the dashboard.

pa_viewer

Dashboard breakdowns
The Customer Service Manager dashboard uses the Case Assignment Group breakdown. Select
one or more groups to view data for only those groups. By default, data from all groups is shown
on the dashboard.
Overview tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1833


<!-- page 1834 -->
Overview indicators
Customer Service Manager - Advanced indicators
Indicator

Description

CSAT

Average customer satisfaction based on survey results. The percent change in
the current period appears under the total percentage. For more information
about CSAT, see Customer service satisfaction surveys.

First Call
Resolution

Percentage of cases that were resolved during first contact with the customer.
The percent change in the current period appears under the total percentage.

Mean Time to
Resolve

Average time for a case to be marked as closed or resolved. The percent
change in the current period appears under the total percentage.

Customers
Impacted by
Major Case

Number of customers impacted by major cases.

Child Cases
Auto Created
from Major
Case

Percentage of child cases that are automatically created from a major case.

Open Backlog
- Blocked

Number of cases that are blocked and are not resolved.

Open Backlog
- Unblocked

Number of cases that are not blocked and are not resolved.

Backlog
Growth

Number of backlogged cases for all agents over time.

Customer Service Manager indicators
Indicator

Description

CSAT

Average customer satisfaction based on survey results. The percent change in
the current period appears under the total percentage. For more information
about CSAT, see Customer service satisfaction surveys.

First Call
Resolution

Percentage of cases that were resolved during first contact with the customer.
The percent change in the current period appears under the total percentage.

Open
Cases with
Breached
SLAs

Percentage of cases that have remained open past the time required by the
Service Level Agreement (SLA).

Unassigned Number of open cases that are not assigned to an agent.
Open
Cases
Avg.
Time to
Resolution

Average time for a case to be marked as closed or resolved. The percent change
in the current period appears under the total percentage.

Backlog
Growth

Number of backlogged cases for all agents over time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1834


<!-- page 1835 -->
Customer Service Manager indicators (continued)
Indicator

Description

Open Case Chart of cumulative open cases and case age over time.
Backlog
Open
Backlog

Number of cases that are not resolved.

Analysis tab

Trend chart of case backlog over time. Click and move your cursor to view data for any date.
Indicators display data for the selected date.

Analysis indicators
Customer Service Manager analysis indicators
State

Indicator

Description

Open Backlog Unblocked

% Not Updated in
5 Days

Percentage of open cases that agents have not updated
within the last 5 days.

% Marked as
Major

Percentage of open cases that are major.

% with Breached
SLAs

Percentage of open cases that have remained open
past the time required by the SLA.

% with Priority P1

Percentage of open cases that are critical priority.

% Escalated

Percentage of open cases that have been escalated.

% with Problem

Percentage of open cases connected to a problem.

% Agent
Reassignment

Percentage of open cases where the Assigned to field
has changed at least once.

% of Major
Candidates

Percentage of open cases that have been proposed as
major case candidates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1835


<!-- page 1836 -->
Customer Service Manager analysis indicators (continued)
State

Resolved or
Closed

Indicator

Description

% Re-opened At
Least Once

Percentage of open cases where the State was
previously Resolved.

% with Request

Percentage of open cases connected to a request.

% with Problem

Percentage of closed cases connected to a problem.

% Caused by
Change

Percentage of closed cases caused by a change.

Closed in Same
Day

Number of cases that were closed on the same day they
were created.

% Re-opened At
Least Once

Percentage of closed cases that were reverted to the
open State at least once.

% Resolved Major Percentage of closed cases that are major cases.
Cases
% Re-assigned

Percentage of closed cases that are reassigned.

% with Breached
SLAs

Percentage of closed cases that remained open past
the time required by the SLA.

% with Change

Percentage of closed cases connected to a problem.

% with Incident

Percentage of closed cases connected to an incident.

% with Request

Percentage of closed cases connected to a request.

Analysis breakdowns
Select a breakdown to view cases grouped by that breakdown.
Cases in the Open Backlog - Unblocked state can be grouped by the following breakdowns.
• Case Assignment Group
• Case Assigned To
• Account
• Product
• State
• Priority
• Category
• Channel
Cases in the Open Backlog - Blocked state can be grouped by the following breakdowns.
• Blocked Action Status
• Case Assignment Group
Cases in the Resolved or Closed state can be grouped by the following breakdowns.
• Case Assignment Group
• Case Assigned To
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1836


<!-- page 1837 -->
• Account
• Product
• Age
• Priority
• Category
• Contact
Case Spotlight tab

Case Spotlight breakdowns
Select values for the breakdowns to filter the data shown on the dashboard.
• Assignment Group
• Case State
• Case Priority
• Opened

Case Spotlight reports
Customer Service Manager case spotlight reports
Title

Description

Cases
Above
Spotlight
Threshold

Number of cases that exceed the Case Spotlight threshold. Every case where
State is New, Open, or Awaiting info is scored based on priority and last updated
date. The score is compared against the threshold value to put cases with high
priority in the spotlight.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1837


<!-- page 1838 -->
Customer Service Manager case spotlight reports (continued)
Title

Description

Note: You can edit the Case Spotlight spotlight group threshold and
criteria to put different types of cases in the spotlight based on your
organization's needs.
Spotlight
Cases P1 Critical

Number of cases that exceed the Case Spotlight threshold and are Priority 1.

Spotlight
Number of cases that exceed the Case Spotlight threshold and are not assigned
Cases to an agent.
Unassigned
Case
Spotlight

List of cases that exceed the Case Spotlight threshold.

Agent Analysis tab

Agent analysis indicators
Customer Service Manager agent analysis indicators
Indicator

Description

Avg. Time to
Resolution

Average time for a case to be marked as closed or resolved for each agent.
Ranked from fastest to slowest.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1838


<!-- page 1839 -->
Customer Service Manager agent analysis indicators (continued)
Indicator

Description

Note: On the Customer Service Manager - Advanced dashboard,
this indicator is called Mean Time to Resolve.
First Call
Resolution

Percentage of cases for each agent that were resolved during first contact
with the customer. Ranked from highest to lowest.

CSAT

Average customer satisfaction for each agent based on survey results.
Ranked from highest to lowest. For more information about CSAT, see
Customer service satisfaction surveys.

Agent Efficiency
Trend (Mean Time
to Resolve)

Average time for a case to be marked as closed or resolved for each agent
shown over time.

Closed Cases
by Agent and
Account.

Number of cases closed by each agent for each account.

Work Assignment Analytics tab

Note: The Work Assignment Analytics tab can only be viewed on the Customer Service
Manager - Advanced dashboard. Customer Service [com.sn_customerservice] and
Performance Analytics - Content Pack - Advanced Work Assignment [com.snc.pa.awa] must
be activated on your instance.

Work Assignment Analytics reports
Customer Service Manager work assignment analytics reports
Report

Description

Average Chat Wait
Time - Last Hour

Average amount of time that customers have spent waiting for an agent
response in the past hour for chat work items.

Average Case Wait
Time - Last Hour

Average amount of time that customers have spent waiting for an agent
response in the past hour for case work items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1839


<!-- page 1840 -->
Work Assignment Analytics indicators
Customer Service Manager work assignment analytics indicators
Indicator

Description

Exceeding Target Work
Items

Percentage of all work items that have exceeded the target wait
time.

Assigned Work Items

Percentage of all work items that are assigned to agents.

Abandoned Work Items

Percentage of all work items that agents have abandoned.

Text Analytics tab

Note: The Text Analytics tab is visible only if the Performance Analytics Premium for
Customer Service plugin [com.snc.pa.premium.cs] is installed.
Text Analytics displays a word cloud of most frequently used words and phrases in the short
descriptions of open cases, providing insight into emerging issues reported by users.
• Drill down on a word to view other words associated with cases that contain that keyword.
• Search the word cloud for specific terms.
Trend line: Shows the frequency of top keywords over time. Click and move your cursor to view
data for any date.Related Records: List of cases containing the keywords you selected from the
word cloud.

Proactive Customer Service - Advanced dashboard
The Proactive Customer Service - Advanced dashboard helps customer service managers track
key performance indicators (KPIs) to understand how proactive they were in identifying and
communicating issues that impact customers. The dashboard also enables customer service
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1840


<!-- page 1841 -->
managers to assess the business impact of outages over time. Install the Proactive Customer
Service Advanced Dashboard plugin (com.snc.pa.customer_service_advanced) to view and
monitor the advanced dashboards.

Important: Starting with the Xanadu release, the Proactive Customer Service- Advanced
dashboard has a new, modernized look and feel.
To access the new Proactive Customer Service- Advanced dashboard, navigate to All >
Platform Analytics > Library > -Dashboard, and select the Proactive Customer ServiceAdvanced dashboard. Upgrade customers can view the Proactive Customer Service
Operations dashboard but should use the new Proactive Customer Service - Advanced
dashboard.New customers on the Orlando and later releases can only view the Proactive
Customer Service - Advanced dashboard.
Overview tab

Proactive Operations - Event Management tab

Note: The Proactive Operations - Event Management tab is only visible if the Proactive
Customer Service Operations plugin (com.snc.proactive_cs_itom) is activated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1841


<!-- page 1842 -->
Outages tab

End user and roles
Advanced dashboard access by user role
End user

Required role

Benefits

Customer Service Manager

sn_customerservice_manager Can view the dashboard.

Content administrator

pa_admin

Can edit the dashboard and
manage users, groups, and
roles for the dashboard.

Content creator

pa_viewer

Can view the dashboard.

Indicators
The Proactive Service - Advanced dashboard provides the following key performance indicators:
Proactive Cases
Number of active cases with critical and acknowledged alerts.
Proactive Cases Promoted to a Major Case
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1842


<!-- page 1843 -->
Percentage of proactive cases promoted to a major case.
Affected Customers and Install Base Items
Number of customers affected per month.
Alerts that led to Proactive Case
Percentage of critical or acknowledge alerts that triggered case creation.
Active Case Outages
Number of active case outages per day.
Average Outage Duration
Average outage duration per day.
Outages and Affected Customers
Number of outages and affected customers per month.
Outages Types
Number of outages for each outage type per month.
Top Impacted Customers
Customers most impacted by outages.

Breakdowns
The following breakdowns apply to the indicators on the dashboard:
• ‑ of Affected Customers
• ‑ of Affected Install Base Items
• ‑ of Outages
• Planned Outages
• Unplanned Outages
• Degradations

Customer Service Management integration with Service Management
analytics
The Customer Service Management - Advanced Performance Analytics solution provides
indicators for incident, problem, change, and request records associated with customer service
cases.
The Customer Service Management - Advanced Performance Analytics solution adds additional
indicators. Some of these indicators are automatically displayed on the Customer Service
Manager dashboard in the Analysis tab. All the indicators can be viewed in the Analytics Hub or
can be manually added to a dashboard.

Note: To view the indicators, you must activate the Customer Service with Service
Management plugin (com.sn_cs_sm) and the Customer Service with Request Management
plugin (com.sn_cs_sm_request).
Incident indicators:
• Number of Open Cases with Incident
• Number of Closed Cases with Incident
Problem indicators:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1843


<!-- page 1844 -->
• Number of Open Cases with Problem
• Number of Closed Cases with Problem
Change indicators:
• Number of Open Cases with Change
• Number of Closed Cases with Change
Request indicators:
• Number of Open Cases with Request
• Number of Closed Cases with Request
Caused By Change indicators:
• Number of Open Cases Caused By Change
• Number of Closed Cases Caused By Change
To view the indicators in the Analytics Hub, navigate to Performance Analytics > Analytics Hub
and search for any of the above indicators.
To add an indicator to a dashboard, a user with the role pa_admin can navigate to the desired
dashboard and then click the Add Widgets icon at the top right of the dashboard. Select
Performance Analytics from the drop down menu, then click Insights in the list below. Search
for the indicator using the search bar. Click the indicator, and then click Add.

Service Manager dashboard
Use the Service Manager dashboard to track and analyze customer service case data.
To view the Service Manager dashboard, navigate to Customer Service > Overview.

Important: Navigating to Customer Service Overview to display the Service Manager
dashboard may result in an error. Users with the admin role can update the link for the
Overview module using the following steps:
1. Select the Edit Module icon on the Overview module.
2. Select the Link Type tab on the Overview Module record.
3. Replace the link in the Arguments field with the following text:
now/platform-analytics-workspace/dashboards/params/edit/
false/tab-sys-id/cfd42b49713354023ee53ca6498cb5d7/sysid/06e36279f3d8b8349c285a79155206f8
4. Select Update.
The Service Manager dashboard displays four case-related reports, which are created using the
Reports application. You can drill down into these reports for more information about the related
cases.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1844


<!-- page 1845 -->
Service Manager dashboard

End users and roles
Dashboard access by role
End user and goal

Required role

Customer service manager: Track status of
cases and customer satisfaction.

sn_customerservice_manager

Customer service agent: Track status of cases
and customer satisfaction.

sn_customerservice_agent

System administrator: Can edit the dashboard. admin

Reports
Dashboard report types
Title

Type

Description

Cases by SLA stage

Pie Chart

Displays the number of cases
by SLA stage.

Open Cases By Priority

Donut

Displays the number of open
cases by priority.
• Click a priority to show the
case list.
• Click a case from the list to
view details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1845


