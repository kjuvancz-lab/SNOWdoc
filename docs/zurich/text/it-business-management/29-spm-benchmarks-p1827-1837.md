# Zurich Strategic Portfolio Management — SPM Benchmarks / SPM Benchmarks reference / Investment Funding

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1827–1837 of 2289

Sections: SPM Benchmarks (p1827); Exploring SPM Benchmarks (p1828); Configuring SPM Benchmarks (p1830); Customize the SPM Benchmarks KPIs (p1831); SPM Benchmarks reference (p1832); Investment Funding (p1835); Install Investment Funding (p1836)

---

<!-- page 1827 -->
Portfolio related lists
Portfolio related lists for financials

This table explains the related lists and how to create or use the records in these lists in the
portfolio workbench.

Portfolio form related lists

Description

Cost Plans

Lists the cost plans of projects and demands
that are part of the portfolio.

Monetary Benefit Plans

Lists the financial benefit plans of projects and
demands that are part of the portfolio.

Portfolio Target

Lists the portfolio capital and operational
expense target for different fiscal years. The
values are displayed from the project_funding
table. Set these values in the Set Target stage
of the portfolio workbench. You can create
targets for different financial periods.

Planning & Budgeting

Planning & Budgeting of the project. For more
information, see unique_1019.

Project related lists for financials

This table explains the related lists for financials in a project record.

Project form
related lists

Description

Cost Plans

Costs of the project for a specific fiscal period. Cost plans can also have an
associated expense line.

Monetary
Benefit Plans

Potential financial benefits which can be accrued by the project spanning one
or more fiscal periods, if the project is executed.

Project
Budget

Budget of the project. For more information, see unique_1019.

Expense
Lines

Aggregated actual costs associated with a specific source, such as a user, fixed
asset, or a CI.

SPM Benchmarks
®

The ServiceNow SPM Benchmarks application provides you with an insight into the
industry averages of your peers. Use your key performance indicators (KPIs) to compare your
performance with global benchmarks, which contributes to improved performance for your
organization.
Getting started with SPM Benchmarking This video provides an overview of how you can get
started with SPM Benchmarks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1827


<!-- page 1828 -->
Exploring SPM Benchmarks
The SPM Benchmarks application provides clear visibility into your key performance indicators
(KPIs) and trends, providing comparative insights relative to the industry averages of your peers.
It enables you to gain deeper insights by comparing your performance with your peers based on
industry, size, or region.

Key features
• 15 available KPIs (6 Strategic, 5 Alignment, and 4 Execution).
• Ability to change KPI definitions to match customizations.
®

®

• ServiceNow Benchmarks dashboard in ServiceNow Service Portal (mobile friendly).
• Ability to download KPI reports.
• Email notification when new aggregate monthly data is available.
• Filter data by industry, number of users, or geographical region.
• Percentile ranking to indicate your standing within your participating peer group.
• Product category-based roles to limit data access.
®

• Integration with ServiceNow Performance Analytics for daily data collection and drill-down on
KPI data.

SPM Benchmarks dashboard
View and learn about the SPM Benchmarks dashboard features.
SPM Benchmarks dashboard

The SPM Benchmarks dashboard enables you to do the following.
View KPIs
You can view the KPIs in the following categories.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1828


<!-- page 1829 -->
• The All tab shows the list of all the KPIs that you've opted in to.
• The Strategic tab shows the list of all the strategic KPIs that you've opted in to.
• The Alignment tab shows the list of all the alignment KPIs that you've opted in to.
• The Execution tab shows the list of all the execution KPIs that you've opted in to.
Change the KPI view
You can change the way that the KPIs are displayed on the dashboard.
• Click the card view icon (
• Click the list view icon (

) to view your KPIs in a card view.
) to view your KPIs in a list view.

Select comparative data
You can select the area in which you want to compare your data using the Compare
with drop-down list.
• Industry- Select this option to compare your data based on industries.
• Number of users- Select this option to compare your data based on the number
of users.
• Region- Select this option to compare your data based on the region.

Benefits of SPM Benchmarks
The SPM Benchmarks application provides you with an overall understanding of your
performance compared to your peers.
Global anonymity
Viewers in your organization have access to SPM Benchmarks for your organization.
However, the global benchmarks are anonymous and don't include any company
information.
Industry comparison
Using the Compare with drop-down list on the SPM Benchmarks dashboard, filter
the benchmarks results by industry, ServiceNow user size, or geographical region to
make the results more relevant to your organization.
• Industry is determined based on the standard industry code in the account
record for the company.
• Number of users is determined by the number of ServiceNow active users within
the company. You can compare your company to similar-sized ServiceNow
implementations to gain an understanding about your company.
• Region is determined based on the Region field in the company table.
If a filter category includes fewer than 20 participants, the corresponding data is
shown in the Other category.
Trends
You can see the results of all published KPIs as well as the last six months of history.
Use the trend data to determine what is working well and what needs improvement.
Reports
SPM Benchmarks reports get refreshed monthly that can be downloaded in PDF
format. An email notification is sent to the customer when new data is available.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1829


<!-- page 1830 -->
Configuring SPM Benchmarks
Learn about the process required to set up SPM Benchmarks to view the comparative
understandings on your key performance indicators (KPIs).
Use the following steps as guidelines for your SPM Benchmarks setup process.
1. Install SPM Benchmarks. For more information, see Install SPM Benchmarks.
2. Enable SPM Benchmarks. For more information, see Enable SPM Benchmarks.
Related topics
Link or customize a benchmark KPI (ITSM)

Install SPM Benchmarks
As an admin, you can install the SPM Benchmarks application (sn_spm_bm) from the
®
®
ServiceNow Store.The application includes demo data and installs related ServiceNow Store
applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the SPM Benchmarking
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
Role required: admin

About this task

The following items are installed with SPM Benchmarks:
• Roles
• Scheduled jobs
For more information, see Components installed with SPM Benchmarking.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the SPM Benchmarks application () using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Select Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1830


<!-- page 1831 -->
Enable SPM Benchmarks
Opt in to SPM Benchmarks to participate in SPM Benchmarks data collection for Strategic
Portfolio Management KPIs.

Before you begin

Role required: sn_bm_client.benchmark_admin

About this task

You can opt out of the SPM Benchmarks at any time.

Procedure
1. Navigate to All > Benchmarks > Setup.
2. Click Opt-In Agreement and read the agreement.
3. Click Done.
4. Select the Yes, I have read and accept the Opt-In Agreement check box, and click Opt-In.
You can choose to opt out of SPM Benchmarks at any time. To opt out of benchmarks as a
whole, including but not limited to SPM Benchmarks, navigate to All > Benchmarks > Setup
and click Opt-out of ServiceNow Benchmarks.

Customize the SPM Benchmarks KPIs
You can customize the KPI information you would want to see in your SPM Benchmarks
dashboard.
You can use the SPM Benchmarks application to do the following:
• Choose your KPIs from the list of available KPIs, based on your organizational requirement.
• Change a KPI formula to adjust the details pertaining to your organizational need.
Related topics
Benchmarks dashboard (ITSM)

Choose your KPIs
Based on your requirement, you can choose the key performance indicators (KPIs) that you want
to use in the SPM Benchmarks application.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Benchmarks > Administration > Setup.
2. Select Strategic Portfolio Management to view the list of SPM Benchmarks KPIs.
3. Select the KPIs that you need for your organization.
Related topics
Enable Benchmarks (ITSM)

Change a KPI formula
View and change the key performance indicators (KPIs) formula according to your requirement
and analysis criteria.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1831


<!-- page 1832 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > Benchmarks > Administration > Category.
2. From the Benchmark Indicator Categories list, select Strategic Portfolio Management.
3. Select a group that contains the KPI that you want to edit from the Benchmark Indicator
Groups.
4. Click and open the KPI that you want to edit.
5. Click and open the indicator field to view and edit the formula.
Related topics
Link or customize a benchmark KPI (ITSM)

SPM Benchmarks reference
Reference information to provide additional details about SPM Benchmarks such as the fields,
user roles, and scheduled job information.

Components installed with SPM Benchmarking
Several types of components are installed with activation of the SPM Benchmarks plugin,
including tables, user roles, and scheduled jobs.

Roles installed

Role title [name]

Benchmarking admin
[sn_bm_client.benchmark_admin]

Description

Contains
roles

None
• Set up Benchmarks from an instance
• Opt in or out of the Benchmarks program
• Enable, disable, or modify indicators
(including changing Performance
Analytics indicator source, script, and
conditions for those KPIs not requiring
application-specific roles)
• Receive email notification when new
aggregate monthly data is available
• All functions of the Benchmarks viewer
and Benchmarks recommendations roles

Benchmarking data viewer

• View full benchmark reports in Service
Portal

[sn_bm_client.benchmark_data_viewer]

• View data visualizations and drill-downs
for analyzing trends (not PA scorecards)

None

• Download visualizations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1832


<!-- page 1833 -->
Role title [name]

Description

Contains
roles

• View industry category or size
comparisons
• Receive email notification when a new
aggregate monthly benchmark score is
available.

Scheduled jobs installed
Scheduled job

Description

SPM
Benchmark
Agile Data
Collection

Collects scores for indicators related to Agile Development 2.0, as specified
in the Relative start and Relative end fields. The collection time is for a month
based on the GMT timezone.

SPM
Collects scores for indicators related to APW and PPM, as specified in the
Benchmark
Data Collection Relative start and Relative end fields. The collection time is for a month
based on the GMT timezone.

SPM Benchmarks KPIs
The Strategic Portfolio Management KPIs are performance analytic indicators that collect the
usage count data. Strategic, Alignment, and Execution KPIs are available by default in the SPM
Benchmarks application.
Strategic KPIs
KPI

Formula

% of spend on grow and innovate the business (Sum of Actual cost spent on Projects &
for the last 12 months
Demands that belong to innovate & grow in the
last 12 months / Sum of Actual cost spent on
all Projects & Demands in the last 12 months )
* 100
% of spend on run the business for the last 12
months

(Sum of Actual cost spent on Projects &
Demands that belong to run in the last 12
months / Sum of Actual cost spent on all
Projects & Demands in the last 12 months ) *
100

% of work focused on grow & innovate the
business

(Count of all Projects, Demands & Epics
that belong to grow & innovate / Count of all
Projects, Demands & Epics ) * 100

% of work focused on run the business

(Count of all Projects, Demands & Epics that
belong to run / Count of all Projects, Demands
& Epics ) * 100

Planned % spend on grow & innovate the
business for next 12 months

(Sum of Planned cost on Projects & Demands
that belong to innovate & grow in next 12

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1833


<!-- page 1834 -->
Strategic KPIs (continued)
KPI

Formula

months / Sum of Planned cost on all Projects
& Demands in next 12 months ) * 100
Planned % spend on run the business for next
12 months

(Sum of Planned cost on Projects & Demands
that belong to run in the next 12 months / Sum
of Planned cost on all Projects & Demands in
the next 12 months ) * 100

Alignment KPIs
KPI

Formula

% of project, demands, and epics aligned to
one or more goals

(Count of Projects, Demands & Epics that are
aligned to one or more goals / Count of all
Projects, Demands & Epics) * 100

% of project, demands, and epics aligned to
one or more strategies

(Count of Projects, Demands & Epics that are
aligned to one or more strategies / Count of all
Projects, Demands & Epics) * 100

% of work delivered using traditional projects

(Total count of open Project planning items
that are having execution type as Waterfall /
Total count of open Project planning items and
Epic planning items) * 100

% of work delivered using agile

(Total count of open Epic planning items /
Total count of open Project planning items and
Epic planning items) * 100

% of work delivered using hybrid projects

(Total count of open Project planning items
that are having execution type as Hybrid or
Agile / Total count of open Project planning
items and Epic planning items) * 100

Execution KPIs
KPI

Formula

% of demands converted to projects or epics

(Count of Demands that are converted to
Projects or Epics in last 12 months / Count of
Demands that are created in last 12 months) *
100

% of story points completed vs planned with
the sprint, in last 12 month

(Total story points completed in the sprint
that falls in last 12 months / Total story points
planned in the sprint that falls in last 12
months) * 100

Average number of scrum teams per ART

Total number of teams in ARTs / Total number
of ARTs

Average scrum team size

Total number of members in scrum teams /
Total number of scrum teams

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1834


<!-- page 1835 -->
Investment Funding
®

ServiceNow Investment Funding enables you to plan and manage investments by allocating
funds to investment entities such as Business Units, Products, Teams, and the like. Prioritize your
investments based on business needs and strategic objectives of your organization.
You can use the Investment Funding (sn_invst_pln) application to do the following:
• Create investments for entities.
• Allocate funds to an investment to meet a business requirement or strategic objective.
• Request funds from one or more funding sources to achieve business goals.

Note: Starting with the Rome release, Investment Funding will be found in
the ServiceNow Store. The legacy plugins (com.snc.investment_planning,
com.snc.investment_planning_pmo) will be prepared for future deprecation in September
2022. The plugins will be hidden and no longer activated on new instances but will continue
to be supported. For details, see the Deprecation Process [KB0867184]
article in the Now
Support knowledge base.

Investment entities and investments
An investment contains information about funds, costs, benefits, business case, and goals.
Use investments to allocate or request funds to meet defined business goals. An investment is
associated to an investment entity.
An investment entity is a transaction table for funding. For example, you can create investment
entities for records such as Projects, Teams, Business Units, Epics, and Portfolios.
Keeping the investment and investment entity separate provides the following advantages:
• Your work activities are separate from the funding.
• You can fund the same entity for different periods until the investment goals are met.

Generic investments
A generic investment is an investment that is tied an owner without being associated to any
entity. You can fund any entity or other generic investment from a generic investment.
For example, as the CEO of a company you might want to set aside some funds for a training or
research initiative and there might not be a transaction table to enable such an entity. You could
then create a generic entity to fund the investment.

Top-down and bottom-up funding
In top-down funding, you distribute funds to investments based on business goals or as part of a
business strategy.
In bottom-up funding, you request funds for your investments from one or more funding sources.
Investment Funding enables you to manage funds for both funding approaches.

Domain separation in Investment Funding
Domain separation provides complete data isolation for domain-specific users. Investment
Funding is compliant with domain separation at the Data only level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1835


<!-- page 1836 -->
Install Investment Funding
You can install the Investment Funding application (sn_invst_pln_v2) from ServiceNow Store if
you have the admin role.

Before you begin

Ensure that the application and all of its associated store applications have valid ServiceNow
entitlements. For more information, see Get entitlement for a ServiceNow product or
application .
Role required: admin

About this task

Investment Funding activates these related plugins if they are not already active.
Plugins for Investment Funding
Plugin

Description

Fiscal Calendar

Enables you to generate and manage different kinds of fiscal
calendars that are used in various financial applications.

[com.snc.fiscal_calendar]
Widgets

Enables widgets on the dashboard pages.

[com.snc.app.widgets]
Ag-Grid Components
Plugin

Enables grid view.

[com.snc.app.grid]
Planned Task_v2

Enables task entities.

[com.snc.planned_task_v2]
If the PPM Standard (com.snc.financial_planning_pmo) plugin is also installed, you can use the
Investment Funding features to request or allocate funds for your projects and demands.

Procedure
1. Navigate to System Applications > All Available Applications > All.
2. Find the Investment Funding application using the filter criteria and search bar.
You can search for the application by its name or ID (sn_invst_pln_v2). If you cannot find an
application, you may have to request it from ServiceNow store. Visit the ServiceNow Store
website to view all the available apps and for information about submitting requests to the
store. For cumulative release note information for all released apps, see the ServiceNow Store
version history release notes .
3. Click Install.
4. In the Application installation dialog box, review the application dependencies.
If your application requires other applications, install them first if they are not already installed.
Installing your application also automatically installs the dependent applications or plugins if
they are not installed already.
5. Click Install.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1836


<!-- page 1837 -->
Result

The following components are installed with installation of the Investment Funding application:
• Roles
• Tables
See Components installed with Investment Funding for more information.

Components installed with Investment Funding
Several types of components are installed with activation of the Investment Funding
(sn_invst_pln) plugin, including tables and user roles.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .
Demo data is available for this feature.

Roles installed with Investment Funding
Role title [name]

Description

Contains roles

Investment admin

Creates investment entities
and sets up preferences and
fiscal calendar.

fiscal_calendar_admin

[sn_invst_pln_v2.investment_admin]
Investment planner

Manages top investment,
investment entities, and
[sn_invst_pln_v2.investment_planner] records associated with
investment entities.

investment_user

Investment user

fiscal_calendar_user

[sn_invst_pln_v2.investment_user]

Manages investments and
funds.

Note: Users with this
role can perform create,
read, update, and delete
operations on all cost and
benefit plans.

Tables installed with Investment Funding
Table

Description

Business Case

Stores business cases for investments.

[business_case]
Fund Request

Stores fund request details.

[sn_invst_pln_invst_funding_base_request]
Funding

Stores fund details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1837


