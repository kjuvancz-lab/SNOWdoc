# Zurich IT Asset Management — Platform Analytics Solution for Software Asset Management classic

Source: servicenow-zurich-it-asset-management-enus.pdf | Release: zurich | Pages: 918–1067 of 2359 | Part 1 of 2

Sections: Platform Analytics Solution for Software Asset Management classic (p918); References (p936)

---

<!-- page 918 -->
About this task

The Manage Software Library module must be activated using the System Definition module for it
to be shown in the Software Asset Management administration navigation.
Software Library content data is provided in a zip file. The zip file contains files with consistent
file sizes for improved performance. During import, data tables are successfully updated with
content from the XML file during a background process.
A worker is an object that performs some work in one or more background threads. To import
multiple XML files simultaneously, workers are used. To change the number of workers that run
simultaneously, update the following two system properties with the number of workers being
used:
• glide.sys.schedulers
• com.snc.samp.recon.max_workers
To upload an attachment larger than 1 GB, you need to update the
com.glide.attachment.max_size system property to reflect the size of the content zip
file.
You can also export your data for participation in the Software Asset Management content
service to contribute to the improvement of the normalization service.

Procedure
1. Navigate to Software Asset > Administration > Manage Software Library.
2. To import the Software Library content file:
a. Select Import Software Library Content File.
b. Select Attach Content File to choose the Software Library content (.zip) file.
c. Select Run Import.
In the Import Files related list, track the progress of the import by seeing how many files have
been processed and how many are still being processed. All the data in the Import Files
related list is stored in the SAMP Import File [samp_import_file] table. For a more high level
view of the import process, you can also view the Asset Job Logs [asset_job_log] table.
3. To export your normalization content:
a. Select Content Service Opt-In: Export Normalization Content.
b. Select Run Export.
c. When the export status is Ready for Download, select Refresh.
d. Select the attachment to open or save.

Platform Analytics Solution for Software Asset Management
classic
This Platform Analytics Solution contains preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

918


<!-- page 919 -->
Enabling the Performance Analytics Solution
Use the Performance Analytics widgets on the dashboard to visualize data over time, analyze
your business processes, and identify areas of improvement. With solutions, you can get value
from Performance Analytics for your application with minimal setup.

Note: Solutions include some dashboards that are inactive by default. You can activate
these dashboards to make them visible to end users according to your business needs.
For unlimited access to all features of this Platform Analytics Solution, purchase a
Performance Analytics subscription. For more information, see Activating your Performance
Analytics subscription .
The Performance Analytics - Content Pack - Software Asset Management classic is enabled
automatically when ServiceNow activates Software Asset Professional on your instance.

Domain separation and 'Run As' user
In some solutions, System Administrator is the Run As user for data collection jobs in the
Platform Analytics Solutions. In other solutions, the Run As user for data collection jobs is left
blank. Verify that the Run As user exists on the instance, and that this user has the appropriate
level of access. An inappropriate Run As user can cause errors or limit the data that is collected.
This setting only has an effect if domain separation is enabled.
Related topics
Activate your Performance Analytics subscription

Software Asset Analytics dashboard
View true-up costs and license, compliance, and removal summaries trend charts on the
Software Asset Analytics dashboard integrated with Performance Analytics.

Note: The Software Asset Analytics dashboard is no longer available for new Zurich users
who have activated the Software Asset Management Professional (com.snc.samp) plugin
or upgraded to Zurich without activating the Software Asset Management Professional
(com.snc.samp) plugin prior to Zurich.
• If you activated the Software Asset Management Professional (com.snc.samp) plugin
prior to Zurich but didn't activate the Workspace plugin (com.sn_sam_workspace), you
have access to this dashboard.
• If you activated the Software Asset Workspace (sn_sam_workspace) store application
after upgrading to Zurich, you won’t be able to access this dashboard from the Software
Asset navigation menu in your instance. You can however access this dashboard from
the Dashboards navigation menu.
The Software Asset Analytics dashboard tab is accessed by navigating to Software Asset >
Overview. Select an element within a report to see more information, or add and move widgets
as needed.
The Overview, License Summary, and Compliance Summary tabs are updated whenever a new
reconciliation result is available. Results are updated daily for the Removal Summary tab. You
can save charts in PNG or JPG formats.
The graphs show important statistics about the software that is being tracked. In the Overview
and Optimization, you can filter by publisher and product to narrow the results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

919


<!-- page 920 -->
Note: If you are not seeing data in the Overview dashboard, verify the

glide.cms.enable.responsive_grid_layout system property is set to true.

Overview
Software Asset Analytics dashboard

Overview tab
Report

Source list

Description

True-up Cost

Product Results

Cost to be compliant based
on the average prices in
entitlements for the rights.

Publishers out of Compliance

Product Results

Number of publishers that
have at least one software
model out of compliance.
Select the report to view the
results in the Software license
usage.

Products out of Compliance

Product Results

Number of products that have
at least one software model
out of compliance.
Select the report to view the
results in the Software license
usage.

Potential Savings

Product Results

Cost saved if removal
candidates are reclaimed.

True-up Cost Breakdown

Product Results

Cost to be compliant based
on the average prices in
entitlements for the rights by
publisher.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

920


<!-- page 921 -->
Overview tab (continued)
Report

Source list

Description

Software Spend Breakdown

License Metric Results

Total software cost of all
entitlements not retired by
publisher.

End of Life Products

Product Lifecycle
[sam_sw_product_lifecycle]

Heat map of software product
lifecycles that are reaching
their end of life cycle. Select
to drill-down to the software
installations.

Report

Source table

Description

Overall Product Compliance

Product Result

Total percent of compliant
products.

License Summary
License Summary tab

License Summary tab

[samp_product_result]
Percent Spend Not in Use

Product Result and License
Metric Results
[samp_product_result] and
[samp_license_metric_result]

Percent of software spend
that is not in use (overlicensed amount and potential
savings).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

921


<!-- page 922 -->
License Summary tab (continued)
Report

Source table

Expiring Maintenance
Entitlements

Software Entitlement
[alm_license]

Description

End date of the total sum of all
entitlements that are going to
expire within 6 months.
The total sum of entitlements
includes:
• Perpetual
• Maintenance
• Perpetual + Maintenance
• Upgrade
• SA
• Perpetual +SA
• Step-up
Select the report to view
details about the specific
entitlements that are going to
expire.

Note: Maintenance
and SA entitlements
are not displayed as the
Perpetual entitlements
associated with them are
displayed.
Software Spend

License Metric Results
[samp_license_metric_result]

Week over Week Cost
Summary

Product Result and License
Metric Results
[samp_product_result] and
[samp_license_metric_result]

Month Over Month Software
Spend

License Metric Results

Potential Savings by
Optimizing Licenses

Potential Savings by
Optimizing Licenses

[samp_license_metric_result]

Total software cost of all
entitlements that are not
retired.
True-up cost, potential
savings, and over-licensed
amount for a series of weeks.

Total software spend in a
series of months.

Potential cost savings for
licenses on your physical
[samp_license_optimization_summary]
hosts and clusters that are
based on recommended
license optimizations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

922


<!-- page 923 -->
License Summary tab (continued)
Report

Source table

Description

Note: This report
is available only for
Microsoft Windows
Server and on-premise
Red Hat Enterprise Linux
(RHEL) licenses.
Select the report to
view details about the
recommended license
optimizations and associated
cost savings for each host or
cluster. License optimizations
include the recommended
license, recommended rights,
and recommended spend.
Overall Publisher Compliance

Product Result
[samp_product_result]

Spend In Use by Publisher

Product Result and License
Metric Results
[samp_product_result] and
[samp_license_metric_result]

Software Spend by Publisher

License Metric Results
[samp_license_metric_result]

Percentage of products that
are compliant by publisher.
Spend in use by publisher
= [[Total spend] — [Overlicensed amount] — [Potential
savings]] / Total spend.
Total software spend by
publisher.

Compliance Summary
Compliance summary consists of time-series data using Performance Analytics to show the
compliance trends over time. The source for compliance analysis data is the Product Result
[samp_product_result] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

923


<!-- page 924 -->
Compliance Summary tab

Compliance trend: True-up Cost
Report

Description

True-up Cost

Cost to be compliant based on the average
prices for entitlements for the rights.

Publishers out of compliance

Number of publishers that have at least one
software model out of compliance.

Products out of compliance

Number of products that have at least one
software model out of compliance.

Potential savings

Cost saved if removal candidates are
reclaimed.

Breakdowns

Shows the detailed list of results based on
the widget selected. Breakdowns include
Publisher, Product, and Scorecard.

Records

Shows the detailed list of product results
based on the widget selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

924


<!-- page 925 -->
Compliance trend: Over-licensed amount
Report

Description

Over-licensed amount

Cost of licenses owned but not being used.

Publishers over-licensed

Number of publishers that have at least one
software right not being used.

Products over-licensed

Number of products that have at least one
software right not being used.

Breakdowns

Shows the detailed list of results based on
the widget selected. Breakdowns include
Publisher, Product, and Scorecard.

Records

Shows the detailed list of product results
based on the widget selected.

Removal Summary
The source for removal summary data is the Reclamation Candidate
[samp_sw_reclamation_candidate] table.

Removal Summary tab
Report

Description

Reclamation Candidates

Total number of active removal candidates
with a low usage justification.
Select the report to show the filtered list of
records.

Restricted Installs Being Removed

Total number of active removal candidates
with a restricted software justification.
Select the report to show the filtered list of
records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

925


<!-- page 926 -->
Removal Summary tab (continued)
Report

Description

Unlicensed Installs Being Removed

Total number of active removal candidates
with an unlicensed justification.
Select the report to show the filtered list of
records.

Unallocated Installs Being Removed

Total number of active removal candidates
with an unallocated justification.
Select the report to show the filtered list of
records.

Candidates Requiring Attention

Number of removal candidates in the attention
required state.
Select the report to show the filtered list of
records.

Candidates Not Updated in 30 Days

Number of removal candidates that have an
updated date value older than 30 days.
Select the report to show the filtered list of
records.

Actual Savings Year-to-date

Sum of potential savings in a given month of
closed complete removal candidates.

Removal Candidates Breakdown

Active removal candidates in various
breakdowns (State, Publisher, Product,
Justification, and Last Updated).

Software Asset Management dashboard
View true-up costs, optimization results, and compliance trend charts on the Software Asset
Management dashboard.

Note: The Software Asset Management dashboard is no longer available for new Zurich
users who have activated the Software Asset Management Professional (com.snc.samp)
plugin or upgraded to Zurich without activating the Software Asset Management
Professional (com.snc.samp) plugin prior to Zurich.
• If you activated the Software Asset Management Professional (com.snc.samp) plugin
prior to Zurich but didn't activate the Workspace plugin (com.sn_sam_workspace), you
have access to this dashboard.
• If you activated the Software Asset Workspace (sn_sam_workspace) store application
after upgrading to Zurich, you won’t be able to access this dashboard from the Software
Asset navigation menu in your instance. You can however access this dashboard from
the Dashboards navigation menu.
The Software Asset Management dashboard tab is accessed by navigating to Software Asset
> Overview and selecting Software Asset Management from the dashboard list. Select an
element within a report to see more information, or add and move widgets as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

926


<!-- page 927 -->
Results are updated daily, or whenever a new reconciliation result is available, and can be
refreshed by selecting the Refresh icon for each result. You can also save charts in PNG or JPG
formats.
The graphs show important statistics about the software being tracked. In the Overview and
Optimization tabs, you can filter by publisher, product, department, and country to narrow the
results.

Overview
The source for overview data is the Product Result [samp_product_result] table.
Overview tab

Overview tab
Report

Description

Total True-up Cost

Cost to be compliant based on the average
prices in entitlements for the rights.

Publishers out of Compliance

Number of publishers that have at least one
software model out of compliance.
Select the report to show the filtered list of
records.

Products out of Compliance

Number of products that have at least one
software model out of compliance.
Select the report to show the filtered list of
records.

Potential Savings

Cost saved if removal candidates are
reclaimed.

Top 10 Products by True-up Cost

Top 10 products graphed in order of true-up
cost.

Top 10 Products by Potential Savings

Top 10 products graphed in order of potential
savings.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

927


<!-- page 928 -->
Optimization
The source for optimization data is the Reclamation Candidate
[samp_sw_reclamation_candidate] table.
Optimization tab

Optimization tab
Report

Description

Reclamations Requiring Attention

State is Attention Required

Potential Savings

• Created on This Year OR Active is true
OR
• Closed on This Year AND Opened on Last
Year

Actual Savings YTD

Closed on This Year AND State is Closed
Complete

All Active Reclamations by State

Active is true

Top 10 Active Reclamations Breakdown

Active is true

Actual Savings per Month

State is Closed Complete AND Closed in Last
12 Months

Removal candidate state color key:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

928


<!-- page 929 -->
Color

State

Red

Attention Required

Green

Ready

Yellow

Awaiting Use

Orange

Awaiting Approval

Purple

Awaiting Revocation

Blue

Closed Complete

Compliance Analysis
Compliance analysis consists of time-series data using Performance Analytics to show
the compliance trends over time. The for compliance analysis data is the Product Result
[samp_product_result] table.
Compliance Analysis tab

Compliance Analysis: True-up Cost
Report

Description

True-up Cost

Cost to be compliant based on the average
prices for entitlements for the rights.

Publishers out of compliance

Number of publishers that have at least one
software model out of compliance.

Products out of compliance

Number of products that have at least one
software model out of compliance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

929


<!-- page 930 -->
Compliance Analysis: True-up Cost (continued)
Report

Description

Potential savings

Cost saved if removal candidates are
reclaimed.

Breakdowns

Shows the detailed list of results based on the
widget selected.

Records

Shows the detailed list of product results
based on the widget selected.

Compliance Analysis: Over-licensed amount
Report

Description

Over-licensed amount

Cost of licenses owned but not being used.

Publishers over-licensed

Number of publishers that have at least one
software right not being used.

Products over-licensed

Number of products that have at least one
software right not being used.

Breakdowns

Shows the detailed list of results based on the
widget selected.

Records

Shows the detailed list of product results
based on the widget selected.

Normalization and Content Service dashboard
View normalization trend charts on the Normalization and Content Service dashboard integrated
with Performance Analytics.

Note: The Normalization and Content Service dashboard is no longer available for
new Zurich users who have activated the Software Asset Management Professional
(com.snc.samp) plugin or upgraded to Zurich without activating the Software Asset
Management Professional (com.snc.samp) plugin prior to Zurich.
• If you activated the Software Asset Management Professional (com.snc.samp) plugin
prior to Zurich but didn't activate the Workspace plugin (com.sn_sam_workspace), you
have access to this dashboard.
• If you activated the Software Asset Workspace (sn_sam_workspace) store application
after upgrading to Zurich, you won’t be able to access this dashboard from the Software
Asset navigation menu in your instance. You can however access this dashboard from
the Dashboards navigation menu.
The Normalization and Content Service dashboard tab is accessed by navigating to Software
Asset > Overview and selecting Normalization and Content Service from the dashboard
list. You can also access it from the dashboard list of another Software Asset Management
dashboard. Select an element within a report to see more information, or add and move widgets
as needed.
Normalization chart results are updated daily when the SAM — Discovery Model Normalization
job is run. You can save charts in PNG or JPG formats.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

930


<!-- page 931 -->
Normalization and Content Service dashboard

Report

Source list

Description

Overall Normalization Rates
for Licensable Software

Software Installs
Normalization Rates

Overall normalization status
count for all licensable
products.

Normalization Rate Breakdown Software Install Normalization
for Top Publishers
Rates for Top Publishers

Licensable normalization
status count per top publisher
for Microsoft, Oracle, IBM,
VMware, Citrix, SAP, and
Adobe.

Central Data Service Download Status related list
The Central Data Service Download Status related list is updated daily when the SAM — Central
Data Service Download Status job is run.
Central Data Service Download Status related list

Field

Description

Name

Table name from which content is pulled.

Current count

Number of records in the table.

Expected count

Expected number of records in the table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

931


<!-- page 932 -->
Field

Description

Last updated on

Last date and time the data was pulled.

Next action

Next scheduled date and time to pull data.

Engineering License Overview dashboard
Monitor and gain insights into your engineering applications license position and usage by
viewing product usage reports in the Engineering License Overview dashboard.

Note: The Engineering License Overview dashboard is no longer available for new Zurich
users who have activated the Software Asset Management Professional (com.snc.samp)
plugin or upgraded to Zurich without activating the Software Asset Management
Professional (com.snc.samp) plugin prior to Zurich.
• If you activated the Software Asset Management Professional (com.snc.samp) plugin
prior to Zurich but didn't activate the Workspace plugin (com.sn_sam_workspace), you
have access to this dashboard.
• If you activated the Software Asset Workspace (sn_sam_workspace) store application
after upgrading to Zurich, you won’t be able to access this dashboard from the Software
Asset navigation menu in your instance. You can however access this dashboard from
the Dashboards navigation menu.
The Engineering License Overview dashboard displays reports on normalized products and
publishers that belong to engineering applications such as AutoCAD, GIS.
Access the Engineering License Overview Dashboard by navigating to Software Asset >
Engineering License Overview.
To narrow your results based on products or publishers across all tabs, use the filter in the
left-hand corner of the dashboard. Only products and publishers that belong to engineering
applications and are listed in the Engineering Application License [samp_eng_app_license] table
appear in the filter. If no product or publisher is selected, the tabs display the cumulative data for
all products and publishers that belong to engineering applications.
The Overview, License Usage Summary, and Denial Summary tabs are updated daily or
whenever a new reconciliation result is available. You can save charts in PNG or JPG formats for
viewing them locally and for sharing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

932


<!-- page 933 -->
Overview tab

This tab gives an overview of the high-level metrics of all engineering applications. You can filter
the results in this tab by various date options.

Note: The Date filter is not applicable to Current Spend and Potential Savings.
Overview tab
Report

Current Spend

Source table

Description

Product Result

Total cost of all entitlements
for all products.

[samp_product_result]
Potential Savings

License Dashboard Inventory
[license_dashboard_inventory] Cost saved if licenses are
not being utilized to their
potential or are under-utilized.
To optimize your costs, you
can reallocate those licenses
or return the licenses and
save the cost.

Top Used Products

Engineering Application
Top products that are being
Usage [samp_eng_app_usage] currently used. The number
of days and hours being used
per product also appears.

Top Active Users

Engineering Application
Top users who are currently
Usage [samp_eng_app_usage] using the product. The
number of days and hours
being used per user also
appears.

Top Idle Users

Engineering Application
Top users who have requested
Usage [samp_eng_app_usage] a license but are not using the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

933


<!-- page 934 -->
Overview tab (continued)
Report

Source table

Description

license. The number of days
and hours of inactivity per
user also appears.
Top Denied Products

Engineering
Application Denial
[samp_eng_app_denial]

Top products that are denied
to users as these products
have reached their peak
concurrent usage.

Top Denied Users

Engineering
Application Denial
[samp_eng_app_denial]

Top users that are denied
licenses to products.

Product Usage by Location

Engineering Application
Based on the count of users
Usage [samp_eng_app_usage] using products by location.

License Usage Summary tab

This tab lets you view data based on a license type (floating, network, or token). You can filter the
data in this tab by date, license type, and license management server.
License Usage Summary tab
Report

License Usage overtime

Source table

Description

Engineering
Application License
[samp_eng_app_license]

The total number or quantity
of all available licenses; not
just the active products but all
the products.

Engineering Application
• The blue line represents
Concurrent Usage
the total number of licenses
[samp_eng_app_concurrent_usage]
allocated to a product or a
publisher

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

934


<!-- page 935 -->
License Usage Summary tab (continued)
Report

Source table

Engineering
Application Denial
[samp_eng_app_denial]

Description

• The green line indicates
the concurrent usage of the
licenses.
• The red line indicates
denials or if and when the
concurrent usage peaks.

License Inventory

Engineering
Application License
[samp_eng_app_license]

All available licenses for a
product or publisher.

License Server Statistics

Engineering Application
All the license management
License Server
servers that OpenLM or Open
[samp_end_app_license_server]iT connect with.

Denials Summary tab

You can filter the data in this tab by date, user, or user group.
Denials Summary tab
Report

Source table

Description

Denials Over Time

Engineering
Application Denial
[samp_eng_app_denial]

Denials for a product over a
period of time.

Denials by Product

Engineering
Application Denial
[samp_eng_app_denial]

The products that have been
denied to users the most.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

935


<!-- page 936 -->
Denials Summary tab (continued)
Report

Source table

Description

Denials by License Server

Engineering
Application Denial
[samp_eng_app_denial]

The license servers that have
been denied licenses to
products the most.

Software Asset Management references
Use the descriptions provided to help you fill in the Software Asset Management forms.

Components installed with Software Asset Management Professional
Roles, plugins, and scheduled jobs are installed with the activation of the Software Asset
Management Professional application. Demo data is available with this application.

Scheduled jobs installed
To view the list of scheduled jobs installed with the Software Asset Management Professional
application, navigate to your ServiceNow instance, select All, and enter Scheduled jobs in
the application navigator. On the Scheduled jobs page, select the Show/hide filter and in the
condition builder, enter the filter condition, Name starts with SAM.

Roles installed
The following roles are installed with the Software Asset Management Professional application.
Software Asset Management Professional roles
Role name

Description

Software Asset
Management
administrator

This role has full access to the Software Asset
Management application. This role is required
to import entitlements, manage reclamation
rules, run reconciliation, create custom
products and pattern normalization rules, set
up Content Service, and other administrative
features.

[sam_admin]

Contains roles

• sam_user
• sam_spend_import
• asset
• model_manager
• contract_manager

Note: The
sam_spend_import
role is installed
with Software
Spend
Detection. The
it_demand_user
role is no longer
automatically
installed with
PPM Standard .
Software Asset
Management user

This role has access to all Software Asset
Management features except administrative.

• pa_viewer
• cmdb_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

936


<!-- page 937 -->
Software Asset Management Professional roles (continued)
Role name

Description

[sam_user]

If Software Spend Detection is installed,
this role has access to all Software Spend
Detection features except financial transaction
data import and Content Service setup.

Software Asset
Management
developer
[sam_developer]
SaaS License
Management
integration
administrator

Contains roles

• report_user
• sn_remote_dir_sync.reader

Writes scripts on the platform, comparable
sam_admin
to the script-writing privileges granted to a
sys_admin. Users with this role must be trained
ServiceNow administrators.
Role required to create and manage SaaS
integration profiles.

• sam_user
• connection_admin
• flow_operator

[sam_integrator]
Software Spend
Detection import user
[sam_spend_import]

Role required to import financial transaction
pa_viewer
data into Software Spend Detection. Users
with this role have access to all Software
Spend Detection features except Content
Service setup. Users with this role cannot view
Software Asset Management without being
granted additional roles.

Plugins installed
The following plugins are installed with the Software Asset Management Professional
application.
Software Asset Management Professional plugins
Plugin

Location

Description

Activate all Software Asset
Management Professional
plugins including Software
Asset Workspace

Now Support Service Portal

Requires subscription.
Provides the capability to
normalize software discovery
information, reconcile
entitlements with installs,
and reclaiming unused
software. Provides additional
capabilities to reconcile
publisher products. Loads
the following plugin and store
application in one step:

com.sn_samp_master_ws

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

937


<!-- page 938 -->
Software Asset Management Professional plugins (continued)
Plugin

Location

Description

• Software Asset
Management Professional
(com.sn_samp_master)
plugin
• Software Asset Workspace
(sn_sam_workspace) store
application.
Activate all Software Asset
Management Professional
plugins

Now Support Service Portal

(com.sn_samp_master)

This plugin is for releases prior
to Zurich. Loads the following
Software Asset Management
Professional plugins in one
step:
• Software Asset
Management Professional
(com.snc.samp) plugin
• All publisher pack add-on
plugins
• Software Asset
Management
UI Components
(com.sn_samp_workbench)

Note: To enable SaaS
License Management,
you must request
the Software Asset
Management — SaaS
License Management
(sn_sam_saas_int)
plugin separately from
the ServiceNow Store.
See Request SaaS
License Management
for information on how to
request and activate this
plugin.
Integration — Microsoft SCCM Now Support Service Portal
2012 v2 Software Usage
(com.snc.samp_usage_sccm)

Required to gather software
usage data from Microsoft
SCCM (System Center
Configuration Manager) 2012
v2.
Automatically activates
the Integration —
Microsoft SCCM 2012 v2

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

938


<!-- page 939 -->
Software Asset Management Professional plugins (continued)
Plugin

Location

Description

(com.snc.integration.sccm2012v2)
plugin if not already active.

Important: This plugin
will be deprecated in
the Tokyo release. If
you are integrating
with SCCM for the
first time, request and
install the Service Graph
connector for Microsoft
SCCM application
from the ServiceNow
Store
instead. If
you have already
activated this plugin
on your ServiceNow
instance, use the
Migration Readiness
Tool for Service Graph
Connector for SCCM
store application to
prepare your instance for
migration to the Service
Graph connector. See
Service Graph connector
for Microsoft SCCM
for more information
on the Service Graph
connector.
Integration — Microsoft SCCM Now Support Service Portal
2016 Software Usage
(com.snc.samp.usage_sccm_2016)

Required to gather software
usage data from Microsoft
SCCM (System Center
Configuration Manager) 2016.
Automatically activates
the Integration —
Microsoft SCCM 2016
(com.snc.integration.sccm2016)
plugin if not already active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

939


<!-- page 940 -->
Software Asset Management Professional plugins (continued)
Plugin

Location

Description

Important: This plugin
will be deprecated in
the Tokyo release. If
you are integrating
with SCCM for the
first time, request and
install the Service Graph
connector for Microsoft
SCCM application
from the ServiceNow
Store
instead. If
you have already
activated this plugin
on your ServiceNow
instance, use the
Migration Readiness
Tool for Service Graph
Connector for SCCM
store application to
prepare your instance for
migration to the Service
Graph connector. See
Service Graph connector
for Microsoft SCCM
for more information
on the Service Graph
connector.
Orchestration — Client
Software Distribution

Now Support Service Portal

(com.snc.orchestration.client_sf_distribution)

Required to activate
®
ServiceNow Orchestration
application, which enables
install and uninstall
functionality of software on
devices.

Note: Users who
purchase the Software
Asset Management
Professional
(com.snc.samp) plugin
are licensed for software
uninstall functionality
only, also called software
reclamation. Additional
licensing is required
for software install
functionality.
Software Asset Management
— SaaS License Management
(sn_sam_saas_int)

ServiceNow Store

Requires the Software Asset
Management Professional
(com.snc.samp) plugin.
Provides integrations to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

940


<!-- page 941 -->
Software Asset Management Professional plugins (continued)
Plugin

Software Asset Management
— Spend Detection

Location

Description

See Request SaaS License
Management for information
on how to request and
activate this plugin from the
ServiceNow Store.

manage licenses for SaaS
products.

Now Support Service Portal

Requires the Software Asset
Management Professional
(com.snc.samp) plugin.
Provides core capabilities to
detect software spend from
financial transaction data.

Now Support Service Portal

Required to normalize
discovered file signatures
while creating installed
software records. This plugin
also gets activated with Filebased Discovery.

(com.sn_sam_spend)

File Signature Normalization

(com.snc.file_signature_normalization)

Mobile Employee Experience
My Asset

Now Support Service Portal

Provides the capabilities
needed for end users to view
assigned assets on a mobile
device and to create incidents
to request service for these
assets.

Now Support Service Portal

Provides the capabilities for
receiving personnel to receive
purchased assets on a mobile
device.

Now Support Service Portal

Provides additional
capabilities to reconcile
Adobe subscription software.

Now Support Service Portal

Provides additional
capabilities to reconcile Citrix
software, such as Virtual
Applications and Virtual
Desktop.

(com.glide.mobileemployee.myassets)
IT Asset Management Mobile
(com.sn_itam_mobile)
Publisher pack add-on plugins
Software Asset Management
Professional for Adobe
(com.sn_samp_adobe)
Software Asset Management
Professional for Citrix
(com.sn_samp_citrix)
Software Asset Management
Professional for IBM
(com.sn_samp_ibm)

Now Support Service Portal

Provides additional
capabilities to reconcile IBM
products using PVU and RVU
license metrics.
This plugin also provides
additional capabilities to
reconcile Red Hat Enterprise
Linux software, such as Red
Hat Enterprise Linux Server

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

941


<!-- page 942 -->
Software Asset Management Professional plugins (continued)
Plugin

Location

Description

and Red Hat Enterprise Linux
for Virtual Datacenters.
Software Asset Management
Professional for Microsoft

Now Support Service Portal

Provides additional
capabilities to reconcile
Microsoft software such as
Microsoft SQL Server.

Now Support Service Portal

Provides additional
capabilities to reconcile
Oracle software, such as
Oracle DB Server.

Now Support Service Portal

Provides additional
capabilities to reconcile SAP
named user compliance and
optimization.

Now Support Service Portal

Provides additional
capabilities to reconcile
VMware software, such as
vCenter and vSphere.

Now Support Service Portal

Requires the Software
Asset Management
Professional (com.snc.samp)
plugin. Provides additional
capabilities to reconcile
engineering applications such
as AutoCAD.

(com.snc.samp.microsoft)
Software Asset Management
Professional for Oracle
(com.snc.samp.oracle)
Software Asset Management
Professional for SAP
(com.sn_samp_sap)
Software Asset Management
Professional for VMware
(com.sn_samp_vmware)
Software Asset Management
Professional for Engineering
Applications
(com.sn_samp_eng_app)

License agreement types
Types of license agreements determine the product usage rights.

Agreement types
The agreement types for the publisher packs.

Publisher pack

Adobe

Agreement type

• Generic
• Enterprise Term License Agreement (ETLA)
• Cumulative Licensing Program (CLP)
• Transactional Licensing Program (TLP)
• Value Incentive Plan (VIP)

Citrix

Generic

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

942


<!-- page 943 -->
Publisher pack

Agreement type

Common

• Generic
• Enterprise License Agreement (ELA)

Custom

• Generic
• Enterprise License Agreement (ELA)

IBM

• Generic
• Enterprise License Agreement (ELA)
• International Program License Agreement
(IPLA): No license impact.
• IBM Customer Agreement (ICA): No license
impact.
• IBM Unlimited License Agreement (IULA)

Microsoft

• Generic
• Enterprise Agreement
• Enterprise Enrollment
• Enterprise Subscription Agreement
• Microsoft Products and Services Agreement
• Open License
• Open Value
• Open Value Subscription
• Select Enrollment
• Select License
• Select Plus

Oracle

• Generic
• Unlimited License Agreement (ULA)

VMware

• Generic
• Enterprise License Agreement (ELA)
• Enterprise Purchasing Program (EPP): No
license impact.
• Volume Purchasing Program (VPP): No
license impact.

Software Asset Management properties
You can set default reconciliation properties such as grouping and reconciliation debugging.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

943


<!-- page 944 -->
These properties are available for the Software Asset Management application.
To access these properties, navigate to All > Software Asset > Administration > Properties.
Properties for Software Asset Management
Property

Select the default Group setting for the weekly run of
reconciliation
com.snc.samp.recon.group

Description

Determines how rights and
software installations are
grouped during reconciliation.
Values (default is None):
• Company
• Cost Center
• Country
• Department
• Region

SAM Workspace License operations list count limit
sn_sam_workspace.sam_license_operations_list_count

Enables setting up a
threshold limit to show the
count of software asset
records on the License
operations view. SAM
administrator can set the
value of the threshold limit as
required.
Value is set to 5000000.
If there are less than five
million records, then the exact
count of software installation
records is shown. If there are
more than five million records,
then the count is shown as
5000000+.

Select the default Subgroup setting for the weekly run of
reconciliation
com.snc.samp.recon.subgroup

Determines the secondary
grouping for rights and
software installations during
reconciliation.
Except for None, group and
subgroup values must be
different.
Values (default is None):
• Company
• Cost Center
• Country
• Department
• Region

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

944


<!-- page 945 -->
Properties for Software Asset Management (continued)
Property

Description

Run reconciliation with all available custom license metrics

Enables custom license
metrics when running
reconciliation.

com.snc.samp.recon.enablecustommetrics

If you have a custom license
metric configured, it is not
applied when this property is
set to No. The default is Yes.
Enable debugging of reconciliation results. Note that enabling
debugging will have an impact on performance.
com.snc.samp.debug

Enables debugging of
reconciliation results to
troubleshoot a result. The
default is No.
Additionally, this property
also triggers logging for onpremise import debugging.

Automatically create software models for all 'licensable'
products
com.snc.samp.automaticsmrcreation

Automatically creates a
software model, in a noncompliant state, for any
unlicensed installations,
subscriptions, or options (of
licensable products) in the
Product Results list that don’t
have an entitlement.
The new software model
and results are used to show
the unlicensed count in the
License Position Report.

Note: For more
information on
automatically creating
software models, see
Automatic creation of
software models.
Automatically create software model results for unlicensed
products during software asset reconciliation
com.snc.samp.unlicensed_smr_creation

Disables software model
result creation for unlicensed
software models. Software
model results continue to be
created for software models
that have valid entitlements.
The default value is False.
You can modify the value
using system properties
configuration. When the
property is set to True, the
software model results get

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

945


<!-- page 946 -->
Properties for Software Asset Management (continued)
Property

Description

created for software models
that don’t have entitlements.
Select the level of aggregation for reconciling licenses for
Oracle databases and WebLogic servers on VMware
com.snc.samp.oracle.reconlevel

Note: This property is available only if you have
activated the Software Asset Management publisher pack
for Oracle.

Note: This property supports domain separation
using the domain separation application properties for
Software Asset Management. See Set up domain-specific
reconciliation properties for Oracle for more details.

Level of aggregation that is
used for reconciling Oracle
Database and WebLogic
Server licenses on VMware
virtualization technology.
Software Asset Management
supports the following
aggregation levels:
• ESX: The ESX aggregation
level considers all
processor cores on the ESX
host.
• ESX cluster (default
value): The ESX cluster
aggregation level considers
all processors on every ESX
server within a cluster.
• vCenter(s): The vCenter(s)
aggregation level considers
all processor cores on
every ESX server.
If you select this
aggregation level, licensing
calculations are based on
the ESXi version that you’re
using in your VMware virtual
environment. See Oracle
Database and WebLogic
Server licensing in softpartitioned environments
for more information on the
supported ESXi versions.

Use host affinity for reconciling licenses for Oracle databases
and WebLogic servers on VMware at the vCenter(s)
aggregation level
com.snc.samp.oracle.hostaffinityenabled

Note: This property is available only if you have
activated the Software Asset Management publisher pack
for Oracle.

Note: This property supports domain separation by
using the domain separation application properties for
Software Asset Management. See Set up domain-specific
reconciliation properties for Oracle for more details.

Enables the Software Asset
Management application to
account for VM-Host affinity
rules when reconciling Oracle
Database and WebLogic
Server licenses within
VMware vCenter Server
instances. This property is
applicable only if you set
the aggregation level for
Oracle reconciliation to
vCenter(s) in the Select
the level of aggregation
for reconciling licenses

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

946


<!-- page 947 -->
Properties for Software Asset Management (continued)
Property

Description

for Oracle databases and
WebLogic servers on
VMware property.
VM-Host affinity rules enable
you to specify the physical
ESXi hosts on which your
virtual machines can run.
If provisions are made for
VM-Host affinity rules in your
Oracle license agreement,
you can lower your licensing
obligations by accounting for
these rules when licensing
your Oracle Database and
WebLogic servers.
Automatically create software models for all 'not licensable'
products
com.snc.samp.automaticsmcreation

Automatically creates a
software model, in a noncompliant state, for any
unlicensed installations (of
not-licensable products) in
the Product Results list.
The new software model is
used by Application Portfolio
Management.
Default is No.

Enter the name of the true/false field added to
cmdb_ci_hardware table to exclude software installed on
selected devices from Software Asset Management
com.snc.samp.exclude_device_flag

Excludes the software
installed on devices (from the
Software Asset Management
application) where the
Exclude from SAM column
is set to true when you
enter the column name,
exclude_from_sam.

Enter the license period (in days) to be considered during
Indicates the license
reconciliation, for applications published on Citrix environment period (in days) for Citrix
applications to be considered
com.snc.samp.citrix.app.license.period
during reconciliation. Default
is 90 days.
Note: This property is available only if you have
activated the Software Asset Management publisher pack
for Citrix.
Enter the timeout period (in days) to resolve reclamation errors
before the reclamation flow moves to the Closed canceled
state
sam_reclamation_flow_error_timeout

Indicates the timeout
period (in days) to resolve
reclamation errors before the
reclamation flow moves to the
Closed canceled state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

947


<!-- page 948 -->
Properties for Software Asset Management (continued)
Property

Description

The default value is 30 days.
Enter the period (in days) to be considered for peak usage
consumption, for engineering applications.
com.snc.samp.eng.app.peak.usage.period

Indicates the period (in days)
for engineering applications
to be considered for peak
usage consumption.
The default value is 30 days
and only a user with the
sam_admin role can update
this field.

Enter the number of scheduled jobs to run in parallel for
reconciliation.
com.snc.samp.recon.max_workers

Indicates whether Wide-Net Normalization is enabled on the
instance. If enabled, Wide-Net Normalization rules/patterns
are applied on discovery models that haven’t been fully
normalized by regular package normalization rules.
com.snc.samp.wide_net_normalization.enabled

Indicates the number of
scheduled jobs that run in
parallel to reconciliation.
Several scheduled jobs run
reconciliation for different
publishers simultaneously.
Enables wide-net
normalization to be performed
on discovery models.
This property is enabled
by default. Wide-net
normalization is performed
only on discovery models that
couldn’t be normalized using
content rules.
Only users with an admin role
can modify the property.

Enable ML Normalization for discovered software.
com.snc.samp.enable.ml_normalization

Enables machine learning
normalization to be performed
on discovery models. This
property is enabled by
default. Machine learning
normalization is performed
only on discovery models that
couldn’t be normalized using
content rules.
Only users with an admin role
can modify the property.

Enter the threshold period (in days) after which billing data
pulled from Cloud is considered old. This affects the license
type confidence.
com.snc.samp.sam_ci_billing_threshold

Indicates the threshold
period, based on the number
of days after which the billing
data that is pulled from Cloud
Insights is considered old.
Cloud Insights is used to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

948


<!-- page 949 -->
Properties for Software Asset Management (continued)
Property

Description

determine the license type for
SQL Server installed on AWS.​
The default value is 30 days
and this property is activated
by default.
Red Hat Enterprise Linux Server for Virtual Datacenters license
cost optimization threshold

Note: This property is available only if you have
activated the Software Asset Management publisher pack
for IBM.

Determines whether you
should use RHEL Server or
RHEL for Virtual Datacenters
licenses for your RHEL
deployment.
The default threshold value
is 3.2. This value is based on
the ratio of the current RHEL
Server subscription list price
to the current RHEL for Virtual
Datacenters subscription list
price. If your entitlements
contain different pricing
for these products, you
can calculate this value by
dividing your RHEL for Virtual
Datacenters subscription
price by your RHEL Server
subscription price.
See Software Asset
Management for Red Hat
Enterprise Linux for more
information about how you
can use this threshold value
to determine the most optimal
license type for your RHEL
deployment.

Microsoft Windows Server for Datacenter license cost
optimization threshold
com.snc.samp.windowserver.license.threshold

Note: This property is available only if you have
activated the Software Asset Management publisher pack
for Microsoft.

Determines whether it’s more
cost-effective to license
the physical hosts or virtual
machines (VMs) within your
Microsoft Windows Server
clusters based on the cost
ratio between Microsoft
Windows Server Datacenter
Edition licenses and Microsoft
Windows Server Standard
Edition licenses.
Based on the current list
price of each license type,
the default cost ratio value

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

949


<!-- page 950 -->
Properties for Software Asset Management (continued)
Property

Description

is 4.59. If your entitlements
contain different pricing for
these license types, you can
modify this value by dividing
the average price of your
Microsoft Windows Server
Datacenter Edition licenses
by the average price of your
Microsoft Windows Server
Standard Edition licenses.
Default Region for IBM Devices
sn_samp_ibm_lic.default_region

Note: This property is available only if you have
activated the Software Asset Management publisher
pack for IBM and installed the IBM License Compliance
for Software Asset Management application. For details
on how to install the application, see Request the IBM
License Compliance for Software Asset Management
application for authorized Software Asset Management
provider integrations.
Connect to ILMT using
sn_samp_ibm_lic.ilmt_api_version

Note: This property is available only if you have
activated the Software Asset Management publisher pack
for IBM.

Automatically associates
physical hosts with a default
region if they aren’t already
associated with one. IBM
license usage can be
calculated only for physical
hosts that are associated with
a region.
The default value is North
America and South America.
Indicates which version of
the IBM License Metric Tool
(ILMT) or BigFix Inventory
integration APIs you’re
using to create a connection
between your IBM servers
and the ServiceNow AI
Platform platform.

Ratio of the entitlement cost of a Microsoft SQL Server
Standard with Software Assurance to the cost of Microsoft SQL Determines whether it’s more
cost-effective to license
Server Enterprise with Software Assurance
the physical hosts or virtual
com.snc.samp.sqlserver.standard_sa.to.enterprise_sa.cost.ratio machines (VMs) within
your Microsoft SQL Server
Note: This property is available only if you have
clusters based on the cost
activated the Software Asset Management publisher pack ratio between Microsoft SQL
for Microsoft.
Server Standard Edition
licenses with Software
Assurance and Microsoft
SQL Server Enterprise Edition
licenses with Software
Assurance.
Based on the current list
price of each license type,
the default cost ratio value
is 0.25. If your entitlements
contain different pricing for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

950


<!-- page 951 -->
Properties for Software Asset Management (continued)
Property

Description

these license types, you can
modify this value by dividing
the price of your Microsoft
SQL Server Standard Edition
licenses with Software
Assurance by the price of
your Microsoft SQL Server
Enterprise Edition licenses
with Software Assurance.
Ratio of the entitlement cost of a Microsoft Software Assurance
entitlement to the cost of a Microsoft Non-Software Assurance Determines whether it’s more
cost effective to use licenses
entitlement
with or without Microsoft
com.snc.samp.ms.sa.to.nonsa.cost.ratio
Software Assurance on
your Microsoft SQL Server
Note: This property is available only if you have
clusters. The Software Asset
activated the Software Asset Management publisher pack Management application
for Microsoft.
makes this determination
based on the cost ratio
between Microsoft SQL
Server licenses with Software
Assurance and without
Software Assurance.
Based on the current list price
of each license type, the
default cost ratio value is 1.25.
If your entitlements contain
different pricing for these
license types, you can modify
this value by dividing the
price of your Microsoft SQL
Server licenses with Software
Assurance by the price of
your Microsoft SQL Server
licenses without Software
Assurance.
com.snc.samp.use_lifecycle_approximation

Determines whether to
include approximate life cycle
dates when generating the life
cycle report. This property is
enabled by default.
When selected, this property
enables generating automatic
life cycle dates based on
approximation logic that is
built on top of publisherprovided General Availability
dates, publicly available

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

951


<!-- page 952 -->
Properties for Software Asset Management (continued)
Property

Description

information, and industry
averages.
com.snc.samp.manage.published.products

Enables you to publish
software products in the
phase-wise Software Asset
Management implementation
and also remove the
published software products.
The default value of this
property is false. By setting
the value of this property to
true, you can view reports
and dashboards only related
to the software products that
you manage in a phase-wise
implementation of Software
Asset Management in
the following views of the
Software Asset Workspace:
• Software asset overview
• License usage view

Components installed with the Microsoft SCCM software usage plugin
Several types of components are installed with activation of the Microsoft SCCM software usage
plugin.
Installed with SCCM Software Usage plugin
SCCM 2012 v2

SCCM 2016

Data
source

• SAMP Usage (Total usage)

• SAMP Usage 2016 (Total usage)

• SCCM 2012 v2 Software Last Used
(Last used)

• SCCM 2016 Software Last Used (Last
used)

Scheduled
imports

• SAMP Usage Import

• SAMP Usage 2016 Import

• SCCM 2012 v2 Software Last Used

• SCCM 2016 Software Last Used

Transform
map

• SAMP usage import (Total usage)

• SAMP usage import 2016 (Total
usage)

• SAMP last used data import (Last
used)
(An onComplete transform script is
associated with the transform map)

• SAMP last used data 2016 import
(Last used)
(An onComplete transform script is
associated with the transform map)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

952


<!-- page 953 -->
Installed with SCCM Software Usage plugin (continued)

Script
include

SCCM 2012 v2

SCCM 2016

SAMPUsageUtil

SAMPUsage2016Util

If you've activated the Integration — Microsoft SCCM 2012 v2 Software Usage
(com.snc.samp_usage_sccm) plugin, navigate to Integration — Microsoft SCCM 2012 v2 >
Scheduled Import.
SCCM data imported for SCCM 2012 v2
SCCM table

Staging table

Target table

Total usage

v_MonthlyUsageSummary
Software usage import Software Usage
[imp_samp_usage_import]
[samp_sw_usage]

Last used

v_GS_CCM_RECENTLY_USED_APPS
SCCM 2012 v2
Software Usage
Software Last Used
[samp_sw_usage]
[imp_sccm2012v2_software_last_used]

If you've activated the Integration — Microsoft SCCM 2016 Software Usage
(com.snc.samp.usage_sccm_2016) plugin, navigate to Integration — Microsoft SCCM 2016 >
Scheduled Import.
SCCM data imported for SCCM 2016
SCCM table

Total v_MonthlyUsageSummary
usage
Last
used

Staging table

Target table

Software usage 2016 import
[imp_samp_usage_2016_import]

Software Usage
[samp_sw_usage]

v_GS_CCM_RECENTLY_USED_APPS SCCM 2016 Software Last Used
Software Usage
[imp_sccm2016_software_last_used] [samp_sw_usage]

License calculation for SAP cloud use types
Use SAP S/4HANA cloud use types and their weighting factors to calculate Full Usage Equivalent
(FUE) licenses for different types of users of SAP S/4HANA Cloud applications.
FUE licenses can be allocated to different cloud use types with a specific weighting factor. For
more information on FUE licenses, see Software Asset Management publisher pack for SAP.
Weighting factor can be defined as a numeric value associated with a cloud use type and it is
used for FUE license calculation. The following table mentions the weighting factors for different
cloud use types:
SAP Cloud Use Types and weighting factors
SAP cloud use type

SAP cloud use type name

Weighting factor

Advanced

Cloud for advanced use

1

Core

Cloud for core use

5

Self-service

Cloud for self-service use

30

Developer

Cloud, Developer Access

0.5

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

953


<!-- page 954 -->
Discovery models fields
Discovery Models form and related list field descriptions.

Discovery Models form
Field

Description

Display name Name of the discovery model as it appears in record lists. This value is
generated automatically using the discovered publisher, discovered product,
and discovered version.
Normalization Status of the normalization process:
status
• Normalized
• Partially Normalized
• Publisher Normalized
• Match Not Found
• Manually Normalized
• New

Note: If a normalization suggestion record exists, a caution icon is shown
next to the Normalization status field.

The caution icon opens the Normalization Suggestion record for the
discovery model.
Publisher

Normalized publisher of the software.

Product

Normalized product name of the software.

Version

Normalized version of the software product.

Discovered
publisher

Discovered publisher of the software.

Discovered
product

Discovered name of the software.

Discovered
version

Discovered version of the software.

Additional Information
Product type

• Child: Subcomponent of main software (not licensable).
• Driver: Software product that controls a device.
• Licensable: Software product that is licensable.
• Not Licensable: Software product that is not licensable.
• Patch: Software product designed to update, fix, or improve an existing
computer program.
• Unknown: Not discovered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

954


<!-- page 955 -->
Field

Description

For unknown product types, the product type can be changed to another
value.
When the product type is changed, the normalization status of the discovery
model is updated to Manually Normalized.
The reconciliation process only considers software discovery models that are
licensable.
Platform

Platforms include:
• Windows
• macOS
• UNIX

Language

Languages include:
• Dutch
• English
• French
• German
• Italian
• Spanish
If discovered, more languages are generated.

Edition

Normalized edition of the software.

Full version

Normalized full version of the software.

Exclude
from content
service

Option that excludes the software discovery model details from being
transferred to the Software Asset Management Content Service.
The value is set on the custom product form.

Note: This field is only shown for custom products when you have opted
in to the Software Asset Management Content Service.

Additional Information section
Field

Product type

Description

• Child: Subcomponent of main software (not licensable).
• Driver: Software product that controls a device.
• Licensable: Software product that is licensable.
• Not Licensable: Software product that is not licensable.
• Patch: Software product designed to update, fix, or improve an existing
computer program.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

955


<!-- page 956 -->
Field

Description

• Unknown: Not discovered.
For unknown product types, the product type can be changed to another
value.
When the product type is changed, the normalization status of the
discovery model is updated to Manually Normalized.
The reconciliation process only considers software discovery models that are
licensable.
Platform

Platforms include:
• Windows
• macOS
• UNIX

Language

Languages include:
• Dutch
• English
• French
• German
• Italian
• Spanish
If discovered, more languages are generated.

Edition

Normalized edition of the software.

Full version

Normalized full version of the software.

Exclude from
content service

Option that excludes the software discovery model details from being
transferred to the Software Asset Management Content Service.
The value is set on the custom product form.

Note: This field is only shown for custom products when you have
opted in to the Software Asset Management Content Service.

Software Installation related list
Field

Description

Display name

Name of the software install as it appears in the record lists.

Publisher

Name of the publisher of the software.

Version

Version of the software.

Installed on

Name of the hardware the software is installed on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

956


<!-- page 957 -->
Software installation fields
Software Installation form and related list field descriptions.
The list view for software installations shows the total number of software
installation records for your organization based on the value specified in
the SAM Workspace License operations list count limit system property
(sn_sam_workspace.sam_license_operations_list_count). The default value
for the record count is set to 5000000. However, the SAM administrator can set the value for
the count in the system property as required. If there are less than five million records, then
the exact count is shown. If there are more than five million records, then the count is shown
as 5000000+. For more information on this system property, see Software Asset Management
properties.

Note: This topic describes only the fields that are available on the Software Installation
form. For details on all fields that are available on both the Software Installation form and
the Software Installation [cmdb_sam_sw_install] table, see Software Installations Table
Attribute Review .

Software Installation form
Field

Description

Display name

Name of the software installation as it appears
in the record lists. Can be a combination of the
discovered product name and edition.

Discovery model

Software discovery model that represents the
installed software.

Publisher

Publisher of the software.

Version

Version of the software.

Edition Override

Override of the software edition setting.
For Office 365 subscriptions, this field is set
from the software subscriptions record.
If the edition for the software was not
discovered, you can edit this field to set the
edition, if known, so reconciliation can be
performed successfully.

Installation tab
Prod id

Note: This field has been deprecated.

Unique ID for the product assigned by the
manufacturer. Found through discovery.

However, it still appears on the
Installation tab with an empty value.
Install location

Path under which the software is installed.

Install date

Date that the software was installed.

Revision

Revision of the software.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

957


<!-- page 958 -->
Field

Description

Note: This field has been deprecated.
However, it still appears on the
Installation tab with an empty value.
Instance key

Unique ID for the instantiation of the software.
Automatically generated when the software is
installed.

Installed on

Hardware on which the software is installed.

Uninstall string

Identifier used to uninstall the software.

ISO serial number

ISO number of the software.

Reconciliation tab
Entitlement

Note: This field has been deprecated.

The entitlement found to use with this
installation.

However, it still appears on the
Reconciliation tab with an empty value.
Inferred suite

The inferred suite model this installation
belongs to.

Omit from suites

Check box for not counting the software
install as a component of a suite during
reconciliation.

Normalization statuses
Description of normalization statuses for discovery models.
When a discovery model is normalized, it is normalized to the version and full version. However,
if the discovery model is partially normalized or publisher normalized, then the discovery model
won't be updated to full version. If the discovery model is manually normalized, you can decide if
you want it normalized to version and full version.
Normalization status can have six different results:

Status

Description

Normalized

A discovery model is fully normalized based
on publisher, product, version fields. No fields
are editable.
Under specific conditions, certain fields that
are typically read-only can be edited. If edited,
the status changes to Manually Normalized.
If only publisher and product fields are
discovered, but the product type is Not
Licensable, Child, Driver, or Patch, the status is
Normalized.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

958


<!-- page 959 -->
Status

Description

Partially Normalized

A discovery model is partially normalized
based on publisher and product fields only.
In this case, the version field is editable
and once that information is added the
normalization status is changed to Manually
Normalized.

Publisher Normalized

A discovery model that is partially normalized
based on the publisher field alone. In this
case, the version and product fields are
editable, and once that information is added,
the normalization status is changed to
Manually Normalized.

Match Not Found

The normalization process could not match
any of the three key fields of the discovery
model with a rule in the Software Library. In
this case, all key fields are editable and once
the information is added the normalization
status is changed to Manually Normalized.
Match Not Found status could occur if a
normalization rule for the software does not
exist.
For example, if the organization created
custom software specific to the organization.

Manually Normalized

A discovery model is manually normalized
when key fields in a New, Match Not
Found, Partially Normalized, or Publisher
Normalized discovery model are filled in
manually.

New

The software discovery model has not yet run
through the normalization process.

License metrics for Microsoft products
A detailed description of the license metrics that can be used with Microsoft products.

Microsoft products and Software Asset Management license metrics

Note: The support for Per Processor license metric for Windows Server is applicable for
Zurich patch 4 and Software Asset Management (sn_itam_samp) 3.2.0 version onwards.
If you have already upgraded to Zurich, you can install the Software Asset Management
manually.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

959


<!-- page 960 -->
Software Asset Management
license metrics to be used on
ServiceNow Software Asset
Management

Product

Edition

Licensing model
provided by Microsoft

Windows Server

Data Center/
Standard

• Per Core

• Per Core (with CAL)

• Per Processor

• Per Processor

• CAL licensing

• User/Device CAL for CAL
licensing

• Server - use core
based licensing
(Server Management
Licenses)

• Server MLs- Per Core (with
CAL)

Note:
For legacy
versions of
Windows
Server,
refer to the
Windows
Server
legacy
versions
table.
Microsoft System
Center

Data Center/
Standard

• Client MLs- User/Device

• Client - Use Client
Management
Licenses
Microsoft
Exchange Server

Standard/
Enterprise

• Server licenses
• CAL licenses

• Server (Per Instance) for
Server licensing
• User/Device CAL for CAL
licensing

Microsoft Project
Server

Standard/
Enterprise

• Server licenses
• CAL licenses

• Server (Per Instance) for
Server licensing
• User/Device CAL for CAL
licensing

Microsoft
Standard/
SharePoint Server Enterprise

• Server licenses
• CAL licenses

• Server (Per Instance) for
Server licensing
• User/Device CAL for CAL
licensing

Microsoft SQL
Server

Standard/
Enterprise

• Per Core

• For Core licensing: Per Core

• Server/CAL

• For Server/CAL:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

960


<!-- page 961 -->
Product

Edition

Licensing model
provided by Microsoft

Note:

Software Asset Management
license metrics to be used on
ServiceNow Software Asset
Management

◦ Server (Per Instance) for
Server licensing

For legacy
versions of
SQL Server,
refer to the
SQL Server
legacy
versions
table.

▪ Use Server (Per
Instance) for server
licensing for Standard,
Web, Business
Intelligence Editions
▪ Use Server (Per Server)
for Enterprise Edition
legacy versions 1

Note: SQL Server
Enterprise is
licensed usually
using the Per Core
licensing model
only. However if
you have software
assurance, you
might follow
Legacy Server/
CAL licensing
models. ServiceNow
recommends
using the Server
(Per Server)
license metric
on ServiceNow
Software Asset
Management.
◦ User/Device CAL for CAL
licensing
Microsoft Office
365

Enterprise E3/E5/ User Subscription
E1

User Subscription

Microsoft Office

Professional/
Standard

Per Device

Per Device

Windows 10

Enterprise
Professional

Per Device

Per Device

Server/CAL

Only requires User/Device
CALs to be created. No Server
license required.

Microsoft
Dynamics CRM
365 Server (On
Premise)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

961


<!-- page 962 -->
Product

Edition

Microsoft
Dynamics 365
Operations
Server (On
Premise) ERP

Licensing model
provided by Microsoft

Server/CAL

Software Asset Management
license metrics to be used on
ServiceNow Software Asset
Management

• Requires User/Device CALs
to be created.
• Server (Per Instance) for
Server licenses

Microsoft 365

Enterprise E3/E5/ User Subscription
F3

User Subscription

Core
Infrastructure
Suite

Data Center/
Standard

Per Core (with CAL)

Per Core

Windows Server legacy versions

Version

Edition

2003–
Standard
2008 R2

Licensing model
provided by
Microsoft

Server

Software Asset
Management
license metrics
to be used on
ServiceNow
Software Asset
Management

Licensing rules

Server (Per
Min: NA
Instance) + add
User/Device CALs
Virtualization: 1 VM per license.
A single Standard Edition
license server permits you to
run one instance of the software
in a physical or virtual OSE on
the server. You must assign a
Standard Edition license for
each running instance.

Datacenter

Processor

Per Processor +
add User/Device
CALs

Minimum: 2 processor
Virtualization: Unlimited
When DataCenter Edition is
licensed for every physical
processor in a server, the server
can run both in the physical
OSE and in an unlimited
number of Windows Server
instances in virtual OSEs.

2012-2012R2
Standard

Processor

Per Processor +
add User/Device
CALs

Minimum: 2 processors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

962


<!-- page 963 -->
Version

Edition

Licensing model
provided by
Microsoft

Software Asset
Management
license metrics
to be used on
ServiceNow
Software Asset
Management

Licensing rules

Virtualization: 2 VMs for each
fully licensed server.
Datacenter

2016–
2019

Standard

Processor

Per Core/CAL

Per Processor +
add User/Device
CALs

Minimum: 2 processors.

Per Core (with
CAL) + add User/
Device CALs

Minimum: 16 cores per server or
8 Per Processor.

Virtualization: Unlimited.

Virtualization: 2 VMs for each
fully licensed server.
Datacenter

Per Core/CAL

Per Core (with
CAL) + add User/
Device CALs

Minimum: 16 cores per server or
8 Per Processor.
Virtualization: Unlimited.

SQL Server legacy versions

Version

Edition

2005

Standard

Licensing model
provided by
Microsoft

• Server/CAL
• Processor

Software Asset
Management
license metrics to be
Licensing rules
used on ServiceNow
Software Asset
Management

• For Server/CAL
use: Server(Per
Instance) for
Server licensing
and User/Device
CAL for CAL
licensing.
• Per Processor

A server licensing rule
(for Workgroup, Standard,
or Enterprise editions) is
required for every operating
system environment on
which that edition of SQL
Server software or any of its
components, such as Analysis
Services, is running.
A Processor license is
required for each processor
installed on each operating
system environment running
SQL Server or any of its
components, such as Analysis
Services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

963


<!-- page 964 -->
Version

Edition

Enterprise

Licensing model
provided by
Microsoft

• Server/CAL
• Processor

Software Asset
Management
license metrics to be
Licensing rules
used on ServiceNow
Software Asset
Management

• For Server/CAL
use: Server(Per
Instance) for
Server licensing
and User/Device
CAL for CAL
licensing.
• Per Processor

2008–
2008 R2

Standard

• Server/CAL
• Processor

• For Server/CAL
use: Server(Per
Instance) for
Server licensing
and User/Device
CAL for CAL
licensing.
• Per Processor

Only for Enterprise edition: If
all processors in a machine
are licensed, you can run
unlimited instances of SQL
Server 2002 on an unlimited
number of virtual operating
environments on the same
machine.

• Server/CAL: Each server
license for these editions
permits you to run unlimited
instances of the software in
one OSE or virtual machine
(VM). To run the software
in additional OSEs or VMs,
you require additional
server licenses.
• Processor license: Number
of OSEs on which you
can run SQL Server. Only
Physical OSEs.

Enterprise

• Server/CAL
• Processor

Datacenter Processor

• Use Server
(per Server) for
Server Licensing
and User/Device
CAL for CAL
licensing.

• Server/CAL: Each server
license for the Enterprise
edition permits you to run
unlimited instances of the
software in up to four OSEs
or VMs.

• Per Processor

• Processor license: Number
of OSEs on which you can
run SQL Server. Up to four
OSEs per license.

Per Processor

Processor license: Number of
OSEs on which you can run
the SQL Server: Unlimited.
The Datacenter edition
requires that all the physical
processors on the server
are licensed and at least
two processor licenses are
assigned to the server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

964


<!-- page 965 -->
Version

Edition

2012–
2014

Standard

Licensing model
provided by
Microsoft

• Server/CAL
• Per Core

Software Asset
Management
license metrics to be
Licensing rules
used on ServiceNow
Software Asset
Management

• For Server/CAL: Core based licensing:
Use Server (Per
1. Count the total number of
Instance) for
physical cores in the server.
server licensing
Multiple the number of
and User/Device
cores by the appropriate
CAL for CAL
core factor to determine the
licensing
total number of licenses
• Per Core
required for the server.

Note: The core
factor used depends
on the processor
type deployed and
a minimum of four
core licenses is
required for each
physical processor on
a physical server.
2. To license individual VMs
using the Per Core model,
you must purchase a
core license for each vcore (or virtual processor,
virtual CPU, virtual thread)
allocated to the VM, subject
to a four core license
minimum per VM.
For licensing purposes, a
v-core maps to a hardware
thread. When licensing
individual VMs, core factors
don’t apply.
Enterprise Per Core1
2016–
2019

Standard

• Server/CAL
• Per Core

Per Core

Same as described earlier.

• For Server/
CAL: Server (Per
Instance) for
server licensing
and User/Device
CAL for CAL
licensing

• Server/CAL: Each server
running SQL Server
software requires a server
license.

• For Core
licensing: Per
Core

• Per Core: A minimum of four
core licenses are required
for each physical processor
on the server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

965


<!-- page 966 -->
Version

Edition

Licensing model
provided by
Microsoft

Enterprise Per Core1

Software Asset
Management
license metrics to be
Licensing rules
used on ServiceNow
Software Asset
Management

Per Core

Same as described earlier.

Note: If you’re already
using SQL Server
Enterprise edition with
(Server/CAL) server
licenses with software
assurance, continue
to use the Server+CAL
licensing model. Use
license metric as Server
(per Server) for Server
Licensing and User/
Device CAL for CAL
licensing. The new
purchases for SQL
Server Enterprise are
based only on the Per
Core licensing model.

Licensing rules for BYOL and BYOS
View the bring your own license (BYOL) licensing rules for Microsoft and Oracle products in
public cloud environments. In addition, view bring your own subscription (BYOS) licensing rules
for Red Hat Enterprise Linux (RHEL) products in public cloud environments. Licensing rules can
differ for virtual machines that reside on shared hosts or dedicated hosts across different cloud
providers.

Licensing rules for Microsoft Windows Server and Microsoft SQL Server

Note: The following tables list only a subset of rules for Windows Server and SQL Server
BYOL. Refer to the official Windows Server and SQL Server websites for the complete list of
licensing rules.
Windows Server licensing rules
Cloud provider

Instance type

AWS for Windows
Server

Shared host

Dedicated host

With software
assurance

Without software
assurance

BYOL isn’t supported BYOL isn’t supported.
because Windows
Server doesn’t have
license mobility rights.
• BYOL is supported
for purchases or
software releases
only before October
1, 2019.

• BYOL is supported
for purchases or
software releases
only before October
1, 2019.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

966


<!-- page 967 -->
Windows Server licensing rules (continued)
Cloud provider

Microsoft Azure for
Windows Server

Instance type

Shared host

With software
assurance

Without software
assurance

• License by physical
host.

• License by physical
host.

• Unlimited
virtualization for
Windows DC for
purchases before
October 1, 2019.

• Unlimited
virtualization for
Windows DC for
purchases before
October 1, 2019.

• BYOL is supported
using Microsoft
Azure Hybrid
Benefits (AHB).

BYOL isn't supported.

• Enough eligible
core licenses must
be allocated to
cover all cores on
the virtual machines
(VMs) that are
running.
• Each processor
license is equivalent
to 16 core licenses.
• A minimum of eight
core licenses are
allocated for using
AHB.
• Windows DC
enables concurrent
or dual use rights.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

967


<!-- page 968 -->
Windows Server licensing rules (continued)
Cloud provider

Instance type

With software
assurance

Without software
assurance

Note:
Microsoft
Windows
Server Data
Center
provides the
option of dual
use rights,
enabling you
to use your
Windows
Server
licenses
simultaneously
on Microsoft
Azure and
on licensed
servers within
your data
centers.
Azure Hybrid
Benefit is only
available on
Microsoft
Azure.
For more
information,
see Azure
Hybrid Benefit
for Windows
Server .
• Edition flexibility:
Windows Standard
can license
Windows DC.

Dedicated host

• BYOL is supported
using Microsoft
Azure Hybrid
Benefits (AHB).
• License by virtual
machine or
available cores.
Only for Windows
DC.
• Unlimited
virtualization for

• BYOL is supported
for purchases or
software releases
only before October
1, 2019.
• License for total
physical cores for
purchases before
October 1, 2019.
• Unlimited
virtualization for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

968


<!-- page 969 -->
Windows Server licensing rules (continued)
Cloud provider

Instance type

With software
assurance

Windows DC if
licensing available
cores.

Without software
assurance

Windows DC for
purchases before
October 1, 2019.

• Windows DC allows
concurrent or dual
use rights for virtual
machines only.

Note:
Microsoft
Windows
Server Data
Center
provides the
option of dual
use rights,
enabling you
to utilize your
Windows
Server
licenses
simultaneously
on Microsoft
Azure and
on licensed
servers within
your data
centers.
This feature,
Azure Hybrid
Benefit is only
available on
Microsoft
Azure.
For more
information,
see Azure
Hybrid Benefit
for Windows
Server .
GCP for Windows
Server

Shared host

BYOL isn't supported BYOL isn't supported.
because Windows
Server doesn't have
license mobility rights.

Dedicated host

BYOL isn't supported.

BYOL isn't supported.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

969


<!-- page 970 -->
SQL Server licensing rules
Cloud provider

Instance type

AWS for SQL Server

Shared host

With software
assurance

• BYOL is supported
via license mobility
rights.

Without software
assurance

BYOL isn't supported.

• License virtual
cores (vCPU) minimum of four
cores per virtual
machine.
Dedicated host

• BYOL is supported
via License Mobility
rights.
• License by physical
host.
• Unlimited
virtualization (SQL
Server Enterprise)
for purchases
before October 1,
2019.

Microsoft Azure for
SQL Server

Shared host

• BYOL is supported
using Microsoft
Azure Hybrid
Benefits (AHB).

• BYOL is supported
for purchases or
software releases
only before October
1, 2019.
• License by total
physical cores for
purchases before
October 1, 2019.
• Unlimited
virtualization for
Windows DC for
purchases before
October 1, 2019.
BYOL isn’t supported.

• Edition flexibility:
1 SQL Enterprise
license on-premise
can cover 4 SQL
Server Standard
cores. Similarly,
4 SQL Server
standard licenses
on-premise can
cover 1 SQL Server
Enterprise.
• License virtual
cores (vCPU) minimum of four
cores per virtual
machine.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

970


<!-- page 971 -->
SQL Server licensing rules (continued)
Cloud provider

Instance type

Dedicated host

With software
assurance

Without software
assurance

• BYOL is supported
using Microsoft
Azure Hybrid
Benefits (AHB).

• BYOL is supported
for purchases or
software releases
only before October
1, 2019.

• License by virtual
machine or
available cores
(SQL Server
Enterprise).

• License by total
physical cores for
purchases before
October 1, 2019.

• License by virtual
machine or total
cores (SQL Server
Standard).
• Unlimited
virtualization (SQL
Server Enterprise) if
licensing available
cores.
GCP for SQL Server

Shared host

• BYOL is supported
via license mobility
rights.

BYOL isn’t supported.

• License virtual
cores (vCPU) minimum of four
cores per virtual
machine.
Dedicated host

BYOL isn’t supported.

BYOL isn’t supported.

Licensing rules for Oracle Database and Oracle WebLogic Server

Note: The following tables list only a subset of rules for Oracle Database and Oracle
WebLogic Server BYOL. Refer to the official Oracle Database and Oracle WebLogic Server
websites for the complete list of licensing rules.

Note: Unless otherwise specified, licensing rules are the same for both AWS and
Microsoft Azure.
Oracle Database licensing rules
Licensing type

Licensing rule

Per Processor
licensing

Licensing is based on the number of vCPUs that the Oracle database is
installed or running on. Different licensing rules are applied based on the
Oracle Database version that is installed or running.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

971


<!-- page 972 -->
Oracle Database licensing rules (continued)
Licensing type

Licensing rule

Note: The Oracle Processor Core Factor Table is not applicable in cloud
environments.
Oracle Database Standard Edition, Standard Edition One, and Standard
Edition 2
Four vCPUs are equivalent to one socket, and one socket requires
one license.
The number of vCPUs is rounded up to the nearest multiple
of four. For example, an Oracle database that is running on 10
vCPUs requires a total of three licenses.
Oracle Database Enterprise Edition
If hyper-threading is enabled, one license is required for every
two vCPUs on which you install or run an Oracle database. If
hyper-threading isn’t enabled, one license is required for every
vCPU on which you install or run an Oracle database.
Named User
licensing

One license is required for every user or physical device that accesses an
Oracle database.
Different licensing minimums are applied based on the Oracle Database
edition that your users and devices are accessing:
Oracle Database Standard Edition and Standard Edition One
These database editions don’t have any licensing minimums.
Oracle Database Standard Edition 2
You must have a minimum of 10 licenses per eight vCPUs.
Oracle Database Enterprise Edition
You must have a minimum of either 25 licenses per vCPU or
the total number of users and devices that are accessing this
database edition. The licensing minimum is set to the larger of the
two values.

Oracle
Database
option and
management
pack licensing

Database options and management packs must be licensed separately from
database servers.
The following database options and management packs aren’t supported in
cloud environments:
• Oracle Real Application Clusters (RAC)
• Oracle Data Mining
• Oracle Change Management Pack
• Oracle Provisioning and Patch Automation Pack for Database

Oracle
Database
option
licensing for
Active Data
Guard

If you’re using the Oracle Active Data Guard option on an Oracle Enterprise
Edition database, the primary database instance and read replicas that are
associated with that database each require one Oracle Database Enterprise
Edition license and one Oracle Active Data Guard license.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

972


<!-- page 973 -->
Oracle Database licensing rules (continued)
Licensing type

Licensing rule

Note: The Active Data Guard option is available only on Oracle
Database Enterprise Edition.
Unlimited
License
Agreement
(ULA)
licensing

Licenses that are acquired through an Unlimited License Agreement (ULA) are
supported in authorized cloud environments. However, certification of these
licenses isn’t required at the end of the ULA term.

High
availability
(Multi-AZ)
licensing

High availability, or Multi-AZ, deployments require twice the number of
licenses as Single-AZ deployments so that they can account for standby
Oracle Database instances.

In addition to these Oracle Database licensing rules, consider the following vCPU size limitations
when you’re setting up an Oracle deployment in the cloud. These size limitations can help you
determine the maximum number of licenses that are supported on your cloud instances.

Note: The vCPU size limitations are the same for both AWS and Microsoft Azure
vCPU size limitations
Oracle Database edition

vCPU size limitation

Oracle Database Standard
Edition

Oracle Database Standard Edition is supported only on cloud
instances that have a maximum of 16 vCPUs.

Oracle Database Standard
Edition One and Standard
Edition 2

Oracle Database Standard Edition One and Standard Edition 2
are supported only on cloud instances that have a maximum of
eight vCPUs.

Oracle Database Enterprise
Edition

Oracle Database Enterprise Edition is supported on all cloud
instances, regardless of the vCPU count.

Oracle WebLogic Server licensing rules
Licensing
type

Licensing rule

Per
Licensing is based on the number of vCPUs that the Oracle WebLogic server is
Processor installed or running on. Different licensing rules are applied based on the Oracle
licensing WebLogic Server version that is installed or running.

Note: The Oracle Processor Core Factor Table is not applicable in cloud
environments.
Oracle WebLogic Server Standard Edition
Four vCPUs are equivalent to one socket, and one socket requires one
license.
The number of vCPUs is rounded up to the nearest multiple of four. For
example, an Oracle WebLogic server that is running on seven vCPUs
requires a total of two licenses.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

973


<!-- page 974 -->
Oracle WebLogic Server licensing rules (continued)
Licensing
type

Licensing rule

Oracle WebLogic Server Enterprise Edition
If hyper-threading is enabled, one license is required for every two
vCPUs on which you install or run an Oracle WebLogic Server. If hyperthreading isn’t enabled, one license is required for every vCPU on
which you install or run an Oracle WebLogic server.
Named
User
licensing

One license is required for every user or physical device that accesses an Oracle
WebLogic server.
Different licensing minimums are applied based on the Oracle WebLogic Server
edition that your users and devices are accessing:
Oracle WebLogic Server Standard Edition
You must have a minimum of either 10 licenses per eight vCPUs or the
total number of users and devices that are accessing this WebLogic
Server version. The licensing minimum is set to the larger of the two
values.
Oracle WebLogic Server Enterprise Edition
If hyper-threading is enabled, you must have a minimum of either 10
licenses per two vCPUs or the total number of users and devices that
are accessing this WebLogic Server edition.
If hyper-threading isn’t enabled, you must have a minimum of either 10
licenses per vCPU or the total number of users and devices that are
accessing this WebLogic Server edition.
The licensing minimum is set to the larger of the two values.

Licensing rule for Red Hat Enterprise Linux Server
One on-premise subscription license is required for every two cloud-based virtual machines
(VMs) on which you install and run Red Hat Enterprise Linux Server.

Note: This rule is only one of the licensing rules for Red Hat Enterprise Linux Server BYOS.
Refer to the official Red Hat Enterprise Linux website for the complete list of licensing rules.

Software model fields
Software Model form and related list field descriptions.
After you fill a software entitlement with the correct PPN, a software model is automatically
created. The tabs on the Software Model form, such as Suite Components, Suite Parents,
Software Product Lifecycles, Metric Attributes, Downgrade Rights, Product Lifecycles for all
Versions, and so on, are populated automatically. However, you can manually add or update the
software model details based on your requirements.

Details tab
This list shows the details of a software model such as the status of the model, product details,
licensing, conditions, and product catalog information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

974


<!-- page 975 -->
Field

Description

Display name

Name of the model. The system property

glide.cmdb_model.display_name.shorten controls
how software model display names are generated. Users with the
admin role can configure this property.
The default format is publisher + product + version + edition +
platform + language.
If the Platform or Language fields aren't set to Anything, the
values are appended.
Status

Status of the model. The options are In Production, Retired, and
Sold.

Product Details section
Publisher

Publisher of the software. You can use the lookup list provided.

Note: Publisher is a reference to the company
[core_company] table. Only companies that you’re using
internally are shown.
Product

Software product name. The same lookup list provided on the
Software Discovery Models form. You can create a custom product
from the lookup list, if desired.

Note: If the relationship between the software publisher
[samp_sw_publisher] and company [core_company] tables
isn’t correct, products for that publisher may not be shown.
If the publisher and product don’t exist, you can Add a custom
software product in Software Asset Management classic.
Version condition

Condition qualifiers for the Version field.
• starts with
• is
• is anything
This field is automatically set to is anything.

Version

Version of the software product.

Edition condition

Condition qualifiers for the Edition field.
• starts with
• is
• is anything

Edition

Edition of the software product to use when searching for the
normalized discovery model.

Discovery map

A set of conditions that determine which software discovery
models get mapped to the software models. Purchased rights are

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

975


<!-- page 976 -->
Field

Description

only applied to software discovery models that meet the condition.
This matching is important for reconciliation.
Discovery models with predefined suites are indicated in the Suite
defined field. A value of Yes indicates that the discovery model is a
suite parent.
You can use the discovery maps provided, or you can choose to
specify the condition information directly instead. A user with the
sam_admin role can choose to create a custom discovery map.
When you select a discovery map, you may encounter a
message: Many underlying software models will
be created. These might be part of suite
components, downgrade rights or next version.
Please validate on completion. The message appears
only if there are greater than or equal to 50 suite components for
the software model and if any of the following conditions are met:
• A software model doesn’t exist for any suite component
• A software model doesn’t exist for any downgrade rights
• A software model doesn’t exist for the next version

Note: If you change the discovery map in an existing
software model, a warning message appears. The warning
message informs you that the downgrade rights on the
software model and on the related entitlements also change.
For example, if you change the discovery map on a software
model from DMAP1 to DMAP2, and save the software model,
then all the downgrade rights associated with DMAP1 are
removed from the software model and the downgrade rights
associated with DMAP2 are populated. However, if the value
in the Agreement type field in the Software Entitlement form
layout is Generic, the downgrade rights for that entitlement
don't change.
You can verify which discovery models get mapped to the software
model by selecting the Show Matching Discovery Models
related link in Software Asset Management classic. View the same
results in the Software Asset Workspace, by navigating to License
operations > Licensing > Software models. Select a software
model and then select the Matching Discovery Models related
list.
If the Publisher and Product fields are empty, the values are
automatically populated according to the discovery map.
Next version

Reference to another software model of the same manufacturer,
which represents the next version of the product.
The next version is defined on the discovery map and is part of
the content service. The next version is populated on the software
model in either of the two ways:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

976


<!-- page 977 -->
Field

Description

• When you create a software model or update the discovery
map on a software model, a business rule is triggered when you
select Save. The next version is populated if the discovery map
has a next version defined for it.
• If the content service has the next version specified for the
associated discovery map on an existing software model,
the next version is populated when the schedule job SAM-

Create downgrades/upgrades for a software
entitlement runs.

Note: The next version is populated only after the

SAM- Create downgrades/upgrades for a
software entitlement scheduled job runs weekly.
However, if you entered a value in the Next version field, that value
isn’t overridden.
Product classification

The official United Nations Standard Products and Services Code
(UNSPSC) classification.
From this release, product classifications have been enhanced
with a comprehensive set of UNSPSC codes available via the
Content Service library. Updates to the UNSPSC codes will also be
available via the bi-weekly Content Service library update.

Software Licensing section
Product type

Product type values include: Child, Driver, Licensable, Not
Licensable, Patch, and Unknown.

Note: The reconciliation process only considers software
products that are licensable.
License under
management

Option to manage licenses for the specified software. If you
clear this option, your software model won't be included in your
reconciliation results.
This option is selected by default. It’s also selected for any
software models that have been upgraded.
If you upgrade and have software models with this option
selected, you can do a bulk update and clear the License Under
Management option from any software models that you don’t
want to include in your reconciliation results. When you run
reconciliation again, only the software models with the option still
selected will display in your results.

Owner

Person responsible for the model.

Unit of consumption

Unit of measure for the software units that can be consumed.

Conditions section
Condition name

Name of the condition that you want to define for the software
model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

977


<!-- page 978 -->
Field

Description

Software install condition

Condition to account for only specific software installations during
reconciliation. Installs that do not meet the required software
install conditions will be included in the reconciliation process.
However, these installs are likely to be flagged as unlicensed
unless there is another software model that meets the required
software install conditions. For example, if you have purchased
Microsoft Visual Studio and set up software installation conditions
for using Visual Studio only to consume licenses in your nonproduction environment. You need to create separate software
install conditions for each component model under Visual Studio.

Note: If you clear the License under management option,
the software installations that meet the specified software
install conditions are excluded from reconciliation instead.
In the Software Asset Management classic application, you can
add multiple software install conditions to a single software model
using the following options:
• Add Filter Condition: Enables you to specify all the conditions
that a software installation must meet to be included in
reconciliation.
• Add "OR" Clause: Enables you to specify any of the conditions
that a software installation can meet to be included in
reconciliation.
In the Software Asset Workspace, you can add multiple software
install conditions to a single software model using the following
options:
• or: Enables you to specify any of the conditions that a software
installation can meet to be included in reconciliation.
• and: Enables you to specify all the conditions that a software
installation must meet to be included in reconciliation.
• + New condition set: Enables you to specify additional sets of
conditions that a software installation can meet to be included in
reconciliation.
Subscription condition

Note: This field
appears only on
subscriptionbased software
models, including
hybrid software
models that contain
both software
subscriptions and
on-premise software
installations.

Condition to account for only groups of subscriptions during
reconciliation. Only the subscriptions that meet the specified
subscription conditions are included in reconciliation. For example,
you can set a subscription condition to reconcile subscriptions
from only a specific geographic location or business department.

Note: If you clear the License under management option,
the subscriptions that meet the specified software conditions
are excluded from reconciliation instead.
In the Software Asset Management classic application, you can
add multiple subscription conditions to a single software model
using the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

978


<!-- page 979 -->
Field

Description

• Add Filter Condition: Enables you to specify all the conditions
that a subscription must meet to be included in reconciliation.
• Add "OR" Clause: Enables you to specify any of the conditions
that a subscription can meet to be included in reconciliation.
In the Software Asset Workspace, you can add multiple
subscription conditions to a single software model using the
following options:
• or: Enables you to specify any of the conditions that a
subscription can meet to be included in reconciliation.
• and: Enables you to specify all the conditions that a subscription
must meet to be included in reconciliation.
• + New condition set: Enables you to specify additional sets
of conditions that a subscription can meet to be included in
reconciliation.

Warning: You can’t add subscription conditions to outof-the-box software models. You must create a software
model to define subscription conditions for the associated
subscription software.
General section
Short description

Brief description of the model.

Platform

Platform of the software product to use when searching for the
normalized discovery model.
The default is Anything for Windows, macOS, UNIX.

Language

Language of the software product to use when searching for the
normalized discovery model, which is populated after it has been
normalized or added manually.
This field is automatically set to Anything.

Asset tracking strategy

Option to override the way assets are tracked for the model.

Asset tracking unit

Unit of measure for asset.

Cost

Cost of a single unit of the software.

Certified

Option to indicate if the product associated to this software model
is approved or unapproved by TRM.
When a enterprise architect adds a product to the TRM library,
the product is flagged as either approved or unapproved. When a
software model is created for an approved product, this check box
is automatically selected.
If you create a software model for an unapproved product,
the software model is designated as restricted. During the
reconciliation process, any software installations associated with
unapproved products are identified as removal candidates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

979


<!-- page 980 -->
Field

Description

If you activate the Application Portfolio Management - TRM
(com.snc.apm_trm) plugin for software models that exist, this
check box may or may not be selected depending on whether the
product is approved.
Restricted software

Option for restricting software.
Restricted software identifies software that you shouldn’t install
in your environment (inappropriate software, or software with
vulnerabilities, for example).
If the removal candidates don't exist, a scheduled job runs nightly
that creates removal candidates for restricted software.

License all installs
accessed by clients

Note: This field
appears only on
software models
that are associated
with client access
records, except for
Oracle DB Server
software models.

Database option

Note: This field
appears only on
Oracle Database
software models.

Option to license the configuration items (CIs) that the software is
installed on, based on conditions that you specify on the software
model, such as software install conditions. If any of the associated
client access records are unlicensed due to insufficient rights, all
CIs remain unlicensed.
If you disable this option, only the CIs that have been added to
your client access records are licensed. See Add a software client
access record in Software Asset Management classic for detailed
instructions on how to add CIs to your client access records.
If you enable this option after you have already added CIs to your
client access records, those CIs are deleted from your records
and then subsequently licensed based on the conditions that you
specify on the software model.
Oracle database option or management pack. Each option or pack
requires a separate software model. The database option is an
identifier for software models.
This field is shown when creating software models that meet the
following conditions:
• The Publisher is Oracle.
• The Product is DB Server.

Database option
condition

Note: This field
appears only on
Oracle Database
software models that
are associated with
a database option or
management pack,
as specified in the
Database option
field.

Condition to account for only the subsets of Oracle Database
options or management packs during reconciliation. Only the
database options or management packs that meet the specified
database option conditions are included in the reconciliation.

Note: If you clear the License under management option,
the database options or management packs that meet the
specified database option conditions are excluded from
reconciliation instead.
In the Software Asset Management classic application, you can
add multiple database option conditions to a single software
model using the following options:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

980


<!-- page 981 -->
Field

Description

• Add Filter Condition: Enables you to specify all the conditions
that a database option or management pack must meet to be
included in reconciliation.
• Add "OR" Clause: Enables you to specify any of the conditions
that a database option or management pack can meet to be
included in the reconciliation.
In the Software Asset Workspace, you can add multiple database
option conditions to a single software model using the following
options:
• or: Enables you to specify any of the conditions that a database
option or management pack can meet to be included in the
reconciliation.
• and: Enables you to specify all the conditions that a database
option or management pack must meet to be included in
reconciliation.
• + New condition set: Enables you to specify additional sets of
conditions that a database option or management pack can
meet to be included in reconciliation.
Apply to subscriptions

Option to apply this software model to only subscription-based
software suites. If you don’t enable this option, you can apply this
software model to only software suites with installed software.

Auto-generate client
access for allocations.

Option to automatically generate and manage client access
records for Oracle Database Server. If you enable this option, the
Software Asset Management application generates and manages
client access records based on your latest Oracle Database
Server Named User Plus entitlements, the users, and devices that
the associated rights are allocated to, and the Oracle database
instances that are supported by these users and devices. The
Software Asset Management application generates a separate
client access record for each supported database instance.

Note: This field
appears only on
Oracle Database
Server software
models.

Important: To
use this option,
you must request
the Data Collection
for Oracle Global
Licensing and
Advisory Services
(GLAS) application
from the ServiceNow
Store. For details,
see Request Data
Collection for Oracle
Global Licensing
and Advisory
Services (GLAS).

If you disable this option after the Software Asset Management
application has automatically generated client access records
for Oracle Database Server, those client access records are no
longer managed and updated automatically. You must manage
and update those client access records manually to keep them
accurate and upto date.
If you enable this option and already have existing client access
records for Oracle Database Server, all automatically generated
client access records are managed and updated automatically
again. However, you must continue to manage and update all
manually generated client access records.

Product Catalog section
Catalog Item

Information about the model as it appears in the product catalog
and service catalog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

981


<!-- page 982 -->
Field

Description

Information only appears if the model has been published to the
product catalog.
Description

Description of the software model as it appears in the product
catalog.

Picture

Image of the software logo that can be added. This logo appears in
the service catalog if the software model is published.

Activity section
Work notes

Notes about the work order task that are visible to all users within
your organization.

Suite Components tab
This list shows the software suite component details. Software components are the suite children
of a software suite parent. For more information, see Software Asset Management software
suites.

Field

Description

Suite child

Child product or products of the suite. For example, Microsoft Word and Microsoft
Excel are child products of Microsoft Office.

Mandatory

Requirement of a suite component. A suite component can be Optional, Always
Mandatory, or Mandatory Group.
Set to Always Mandatory if the software must be installed to count the model as
a suite.

Suite
Relationship that indicates that multiple software models exist for one or more of
relationship the suite components. Therefore, the relationship between suite parent and suite
assumed
component was assumed.
Review the created suite components to ensure that the relationship is correct.
Suite Content Usage section
Inference
Option:
Number
and
Percent

Number: Specifies the number of components installed for the suite. Specify a
number lesser than or equal to the number of components.

Note: For any new software models being created with suite components,
the Number option is selected by default.

Percent: Specifies what percentage of the components must be installed for the
suite.

Note: For existing software models with suite components that were using
the inference percent, the Percent option is selected by default. However,
you can choose to use the Number option.

If the system property Use component licenses to optimize
compliance when suite licenses run out is set to true, Inference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

982


<!-- page 983 -->
Field

Description

percent specifies a threshold to determine whether the suite or component
licensing is optimal.
Allow
automated
content
update

Option to enable automatic content changes to software models.

Suite Parents tab
This list shows the software suite parent details. For more information, see Software Asset
Management software suites.

Description

Suite
parent

Parent suites to which the software is assigned. For example, the parent suite for
several common Microsoft products is a version of Microsoft Office.

Suite child

Child product or products of the suite. For example, Microsoft Word and Microsoft
Excel are child products of Microsoft Office.

Mandatory

Requirement of a suite component. A suite component can be Optional, Always
Mandatory, or Mandatory Group.
Set to Always Mandatory if the software must be installed to count the model as
a suite.

Suite
Relationship that indicates that multiple software models exist for one or more of
relationship the suite components. Therefore the relationship between suite parent and suite
assumed
component was assumed.
Review the created suite components to ensure the relationship is correct.

Software Product Lifecycles
This list shows the life cycle information of a software product. For more information on life
cycles, see Product life cycles.

Field

Description

Publisher

Name of publisher.

Product

Name of the software product.

Version

Licensable version of the software

Edition

Edition of the software.

Full Version

The granular licensable version of the
software.

Phase start date

Date when the life-cycle phase starts.

Lifecycle type

The product life cycle type values include:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

983


<!-- page 984 -->
Field

Description

• Internal: The life cycle date is specific to
the customer (for example, based on their
internal policy, based on a custom contract/
agreement with the publisher).
• Publisher: The life cycle date comes from
publisher sources and is not specific to a
customer.
• Publisher Add-On
Risk

The risk level to an organization with regards
to the life-cycle phase. For example, the risk
for the end of support phase for a publisher
maybe moderate or the end of life phase may
be high.
Risk type values include:
• Very High
• High
• Moderate
• Low
• None

Lifecycle phase

Life-cycle phase values include:
• Pre Release: Date when the software was
pre-released.
• General Availability: Date when the
software became generally available to the
market.
• Upgrade

Note: Only shown when the Lifecycle
type field is Internal.

• End of Support: Date by which the software
will not be enhanced by the publisher.
This value corresponds to the Mainstream
Support end date for Microsoft according to
its Fixed Lifecycle Policy .
• End of Extended Support: Date by which
the publisher will no longer provide any
support or updates to the software.
This value corresponds to the Extended
Support end date for Microsoft according to
its Fixed Lifecycle Policy .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

984


<!-- page 985 -->
Field

Description

• End of Life: Date by which the software will
no longer be manufactured by the publisher.

Note: This value isn't applicable for
Microsoft because it follows the fixed
lifecycle policy providing mainstream
support and extended support. For
more information, see Fixed Lifecycle
Policy .
Active

Indicates if the life cycle is to be considered or
not while evaluating the risk of the software.

Note: By default, only active life cycles
are displayed.
Source

Source of the life cycle. If the record is created
manually, this field is set to Internal. If the
record is created automatically, this field is set
to ServiceNow.

Description

Description of the software product life cycle.

Software Entitlements tab
This list shows the entitlement terms of your software license. For more information, see the
Software entitlements section in Software models and Software entitlements.

Field

Description

Display name

Automatically generated name based on the
software model display name.

License metric

License metric for the license group that the
software license is counted against when
reconciliation is run. The options for license
metric change based on the Metric group field.
For more information, see Software license
metrics.

Metric group

Metric group based on the Software Model
field. Each metric group has a set of license
metrics that are specific to the software
publisher.

License type

The type determines whether the rights grant
full access to the software or if they’re being
upgraded from a previous version of the
software.
The following are the various license types:
• Perpetual
• Perpetual + Software Assurance
• Software Assurance

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

985


<!-- page 986 -->
Field

Description

• Subscription
• Step-up
• Subscription Step-up
Active rights

Number of rights granted for this entitlement.

Purchased rights

Number of rights purchased for this
entitlement.

Total cost

Total cost of the entitlement calculated from
the unit cost.

Override License Costs tab
This list shows the override license cost information for your software entitlements.

Field

Description

Software Model

Software model that the software entitlement
belongs to.

Metric Group

Metric group that the software entitlement
belongs to.

License Metric

License metric specified for the software
entitlement.

License Cost

Cost of the license.

License & Maintenance Cost

Cost of the license combined with cost of the
maintenance license.
Specify a license cost or a license and
maintenance cost, to override the true-up cost
during reconciliation. If no values are specified
in the License Cost or License & Maintenance
Cost fields, the software entitlement cost is
used for true-up cost calculations.

Note: For SaaS licenses, only the
license cost applies. The license &
maintenance cost does not apply.
The following fields appear when the value selected in the License Metric field is Employee.
Active

Indicates whether the license cost is to be
considered for true-up cost calculations.

Lower limit

Minimum number of employees that the
licenses are required for.

Upper limit

Maximum number of employees that the
licenses are required for.

SAP Engine Usages tab
This list shows the license usage for SAP Engines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

986


<!-- page 987 -->
Field

Description

Name

Name of the license usage record. Select
a name to open the record to view detailed
information such as the associated software
model and SAP client.

Count

Number of unique users or devices that are
granted access to the SAP Engine product.

Type

Type of CAL that is associated with the license
usage record.
• User CAL: Licenses each user that
accesses the associated server, regardless
of the number of devices that each user is
using to access the server.
• Device CAL: Licenses each device that
accesses the specified server, regardless
of the number of users that are using each
device to access the server.
• User/Device CAL: Licenses each user or
device that accesses the associated server.

Usage

Total memory usage of the SAP Engine
product in gigabytes (GB).

Cost Center

Cost center of the users or devices that are
granted access to the SAP Engine product.

Department

Business department of the users or devices
that are granted access to the SAP Engine
product.

Location

Geographic location of the users or devices
that are granted access to the SAP Engine
product.

Company

Company of the users or devices that are
granted access to the SAP Engine product.

Software Model Results tab
This list shows the software model results associated with the license metric results.

Note: Software model results (SMRs) are not generated for software models for Oracle
Database options without associated software entitlements. You can set the system
property com.snc.samp.unlicensed_smr_creation to True to create SMRs for
these models even if there are no entitlements.

Field

Description

Status

Status of the software model. Possible values are Compliant or Not Compliant.
Select the Status field to open the corresponding Software Model Results record,
where you can view more in-depth information about the software model result.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

987


<!-- page 988 -->
Field

Description

See View software model results for detailed descriptions of each field on the
Software Model Results form.
Agreement Agreement type that is set on the software entitlement.
type
• Common: Generic, Enterprise License Agreement (ELA)
• IBM: Generic, Enterprise License Agreement (ELA), International Program
License Agreement (IPLA), IBM Customer Agreement (ICA), Unlimited Level
Agreement (ULA)
• Microsoft: Generic, Enterprise License Agreement (ELA)
• Oracle: Generic, Unlimited Level Agreement (ULA)
• VMware: Generic, Enterprise License Agreement (ELA), Enterprise Purchasing
Program (EPP), Volume Purchasing Program (VPP)

Note: If the agreement type is Enterprise Level Agreement or Unlimited
Level Agreement, the Status is Compliant even if there are unlicensed
installations or unlicensed subscriptions.
Unlicensed Number of unlicensed software installations that are not covered by any
installs
entitlements.
True-up
cost

Estimated cost of remediating unlicensed installations based on the lowest
number of rights needed (rights needed times average price per right from
entitlements). The lowest cost from Purchase Rights remediation options.

Overlicensed
amount

Estimated cost of rights not being used. The sum of the Over Licensed amount
from the True-up value costs.

Potential
savings

Cost saved by optimizing unused licenses.

Group

Group specified on which to run reconciliation. Values include:
• None
• Country
• Department
• Company
• Region
• Cost Center

Subgroup

Subgroup specified on which to run reconciliation. Values include:
• None
• Country
• Department
• Company
• Region
• Cost Center

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

988


<!-- page 989 -->
Metric Attributes tab
This list shows the metric attributes information of a software model.

Field

Description

Software model

Software model associated with the metric
attributes.

Metric group

Grouping for the software metric.
If you have optional publisher packs installed
that the software applies to, those options are
shown. Otherwise, the metric group value is
Common.

License metric

The license metric that the software license
is counted against when reconciliation is run
(per user, per device, for example).

Description

Attribute type description that is based on the
license metric value.

Attribute

Attribute type for reconciling entitlement
license metrics. For more information on each
attribute type, see Software model metric
attributes.

Attribute value

Value of the attribute (integer).

Attribute value is unlimited

Option for setting the attribute as unlimited.

Vendor Catalog Items tab
This list shows you the details of the software models associated with a vendor. For more
information, see Vendor catalog items.

Field

Description

Name

Name of the catalog item.

Product ID

Item identification number assigned by your
organization.

Short Description

Brief description of the item.

Vendor Price

The price at which the item is available in the
vendor catalog. If the vendor offers a discount,
the vendor price reflects the discounted price.

Rank tier

Overall ranking for this vendor's products and
services.

Client Access tab
This list shows a client access record details of the users or devices that are accessing a
particular version of your server software using a client access license (CAL).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

989


<!-- page 990 -->
Field

Description

Name

Name of the client access record. Select a name to open the corresponding client
access record, where you can view more in-depth information about the record,
such as the users or devices that the associated client access licenses (CALs)
are assigned to and the configuration items (CIs) that the associated server
software is installed on. See Add a software client access record in Software
Asset Management classic for more information on client access records in the
Software Asset Management classic application. See Create a software client
access record in workspace for more information on client access records in the
Software Asset Workspace.

Count

Number of unique users or devices that are granted access to the associated
server.

Note: If you are using a Citrix software model and User/Device CAL type,
the Count field is based on the number of user/device licenses that are
assigned to your users or shared devices.
Type

Type of CAL that is associated with the client access record.
• User CAL: Licenses each user that accesses the associated server, regardless
of the number of devices that each user is using to access the server.
• Device CAL: Licenses each device that accesses the specified server,
regardless of the number of users that are using each device to access the
server.
• User/Device CAL: Licenses each user or device that accesses the associated
server.

Note: If you are using a Citrix software model, the User/Device CAL type
is based on the user/device licenses that are assigned to your users or
shared devices.
• Reserved Hourly Average Sensor: This metric counts the number of unique
active endpoints per clock-hour and averages them over a rolling 28-day
period. The count of Reserved Hourly Average Sensor Licenses resets at the
start of each clock-hour.
• Sensor Subscription: This metric calculates license usage by averaging
endpoint counts over four consecutive weeks. Weekly endpoint counts are
based on the total number of endpoints consumed in the previous seven days.

Note: The Reserved Hourly Average Sensor and Sensor Subscription
license metrics are applicable only for CrowdStrike and are available
with Yokohama Patch 1, Software Asset Management - SaaS License
Management (sn_sam_saas_int) 15.0.8, and Software Asset Management
(sn_itam_samp) 2.1.0 version onwards. If you are on any version for
Yokohama below Patch 1, refer KB1801232 .
Cost
Center

Cost center of the users or devices that are granted access to the associated
server.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

990


<!-- page 991 -->
Field

Description

Department Business department of the users or devices that are granted access to the
associated server.
Location

Geographic location of the users or devices that are granted access to the
associated server.

Company

Company of the users or devices that are granted access to the associated
server.

Software Subscriptions tab
This list shows the available subscriptions for a software application.

Field

Description

Display name

Software publisher and product for the
subscription.

User principal name

User's email address for the subscription.

Software model

Software model for the subscription.

Last activity

Last date when this subscription was last
used.

Inactive days

Number of days for which a user's subscription
has been inactive.
This field is visible on the Software
Subscriptions form when the Last activity
field is not empty. Inactive days are calculated
using the value in the Last activity field.

Subscription profile

Profile that is associated with the subscription
identifier.

Downgrade Rights tab
This list shows the downgrade rights information of a software model. For more information, see
Downgrade Rights.

Field

Description

Parent software model

Parent (or the topmost hierarchy) of the
software model.

Software model

Software model associated with the
downgrade rights. Based on the parent
software model that you select, the related
software models appear in the list. For
example, if you select Microsoft SQL Server
2012 Standard as the parent software model,
only Microsoft -related software models
appear in the list.

Source

Source of the downgrade rights. If the record
is created manually, it's set to Internal. If

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

991


<!-- page 992 -->
Field

Description

it's created automatically, the field is set to
ServiceNow.
Active

Option that indicates if the downgrade rights
on the software model are active or not. If
needed, you can deactivate the downgrade
rights. Only the active downgrade rights
appear in the field. To see all the downgrade
rights, remove the Active condition from the
filter.
If you deactivate a downgrade right on a
software model, the change is propagated to
the related software entitlement downgrade
rights, irrespective of the source of the
downgrade right. You cannot deactivate the
downgrade right on a software model and
keep the downgrade right activated on the
software entitlement.
To deactivate a downgrade right, double-click
the field to display the toggle button, select
false, and then select the Save icon (

).

• false: deactivates the downgrade right
on the software model and on the related
software entitlements.
• true: reactivates the downgrade right on the
software model and on the related software
entitlements.

Matching Discovery Models tab
This list shows the discovery maps that match the software publisher and product fields of the
software model.

Field

Description

Display name

Name of the discovery model. This value is
generated automatically using the discovered
publisher, discovered product, and discovered
version.

Normalization status

Status of the normalization process:
• Normalized
• Partially Normalized
• Publisher Normalized
• Match Not Found
• Manually Normalized
• New

Publisher

Normalized publisher of the software.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

992


<!-- page 993 -->
Field

Description

Product

Normalized product name of the software.

Version

Normalized version of the software product.

Edition

Normalized edition of the software.

Product Lifecycles for all Versions tab
This list shows the life cycle for all versions of the software product.

Field

Description

Publisher

Name of the publisher.

Product

Name of the software product.

Version

Licensable version of the software.

Full version

Granular licensable version of the software.

Edition

Edition of the software.

Lifecycle phase

Life-cycle phase values include:
• Pre Release: Date the software was prereleased.
• General Availability: Date the software
became generally available to the market.
• Upgrade

Note: Only shown when the Lifecycle
type field is Internal.

• End of Life: Date by which the software will
no longer be manufactured by the publisher.

Note: This value isn't applicable for
Microsoft because it follows the fixed
life-cycle policy providing mainstream
support and extended support. For
more information, see Fixed Lifecycle
Policy .
• End of Support: Date by which the software
will not be enhanced by the publisher.
This value corresponds to the Mainstream
Support end date for Microsoft according to
its Fixed Lifecycle Policy .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

993


<!-- page 994 -->
Field

Description

• End of Extended Support: Date by which
the publisher will no longer provide any
support or updates to the software.
This value corresponds to the Extended
Support end date for Microsoft according to
its Fixed Lifecycle Policy .
Lifecycle type

The product life cycle type values include:
• Internal: The life cycle date is specific to
the customer (for example, based on their
internal policy, based on a custom contract/
agreement with the publisher).
• Publisher: The life cycle date comes from
publisher sources and is not specific to a
customer.
• Publisher Add-On

Source

Source of the life cycle. If the record is created
manually, this field set to Internal. If the record
is created automatically, the field is set to
ServiceNow.

Description

Description of the software product life cycle.

Phase start date

Date when the life-cycle phase starts.

Risk

Risk level to an organization with regards to
the life-cycle phase. For example, the risk
for the end of support phase for a publisher
maybe moderate or the end of life phase
maybe high.
Risk type values include:
• Very High
• High
• Moderate
• Low
• None

Active

Option to indicate if the life cycle is to be
considered or not while evaluating the risk of
the software.

Note: By default, only active life cycles
are displayed.

Group Allocations tab
This list shows the user groups allocated to the software model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

994


<!-- page 995 -->
Field

Description

Assignment Group

Name of the user group assigned to this
software entitlement. Software licenses
are allocated to all the members of this
assignment group based on the availability
of unallocated licenses for the software
entitlement.

Status

Current status of the group allocation to the
software model. Possible values are:
• New: When a group allocation is created,
this field is automatically set to New.
• Not allocated: None of the group members
are allocated to the software entitlement.
• Fully allocated: All the members from the
user group are allocated to the software
entitlement.
• Partially allocated: A partial number
of group members are allocated to the
software model.

Active

Indicates if the user group allocation to the
software entitlement is active. Possible values
are:
• true: The allocation record is active and
users from the assignment group are
allocated to the software entitlement.
• false: The allocation record is inactive
and the users from the assignment group
aren't allocated to the software entitlement.
When a user group is changed to inactive,
the group allocation record is marked as
inactive and the Allocated Quantity field
value is updated.

License metric

User-based license metric for user allocation
to the software entitlement. License metric
values include:
• Per Named User
• Per User
• User Subscription

Group Members

Number of users available in the assignment
group.

Software model

Field value is automatically set to the selected
software model.

Allocated Quantity

Number of users from the assignment group
allocated to the software entitlement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

995


<!-- page 996 -->
Field

Description

Entitlement condition

Entitlement condition defined to apply the
group user allocation on the filtered software
entitlements.

Group allocations fields
Group allocations form and related fields description.

Group allocations form
Field

Description

Assignment Name of the user group to which license is allocated. Software licenses are
Group
allocated to all the members of this assignment group based on the availability of
unallocated licenses for the software entitlement.
Status

Status of the group allocation to the software model. When a group allocation is
created, this field is automatically set to New. When the group allocation record
is saved and the Software Asset Management application allocates licenses,
the Status field value is automatically updated based on the availability of
unallocated licenses. Possible values are:
• Not allocated: None of the group members are allocated to the software
entitlement.
• Fully allocated: All the members from the user group are allocated to the
software entitlement.
• Partially allocated: A partial number of group members are allocated to the
software model.

Active

Option to indicate if the user group allocation to the software entitlement is active.
When a group allocation is created, the Active field value is empty. When the
record is saved, the Active field value gets updated. Possible values are:
• true: The allocation record is active and users from the assignment group are
allocated to the software entitlement.
• false: The allocation record is inactive and the users from the assignment
group aren't allocated to the software entitlement. When a user group is
changed to inactive, the group allocation record is marked as inactive and the
Allocated Quantity field value is updated.

License
metric

User-based license metric for user allocation to the software entitlement. License
metric values include:
• Per Named User
• Per User
• User Subscription

Group
Members

Number of users available in the assignment group. The number is automatically
populated when the Assignment Group field value is selected.

Software
model

This field value is automatically set to the selected software model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

996


<!-- page 997 -->
Field

Description

Allocated
Quantity

Number of users from the assignment group allocated to the software entitlement.
The number is automatically populated when the allocation group record is
saved.

Entitlement Entitlement condition to allocate a user group to the filtered software entitlement
condition
records.
1. Select Set conditions.
2. In the Entitlement condition pop-up window, build a filter by adding conditions.
3. Select Set to save the record or Cancel to close the Entitlement condition popup window without saving the changes.

Related topics
Create group allocations
Allocating licenses to a user group

Software model metric attributes
Software model metric attributes and related list field descriptions.

Metric attributes

Attribute

Attribute value

Maximum
installs per
right
Minimum
cores per
processor

8

Attribute value
is unlimited

Description

License
metric

Metric group

True

The number
of installs
each right can
license.

Per Named
Device

Common

False

Per Core
The number of
(with CAL)
core rights that
must be applied
to a physical
processor or set
of vCores.

Microsoft

Licensable
cores =
Processors
* Max
(Minimum
cores per
processor,
Cores)
Minimum
cores per VM

8

False

The number
of core rights
that must be
applied to a
virtual machine
(VM).

Per Core
(with CAL)

Microsoft

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

997


<!-- page 998 -->
Attribute

Attribute value

Attribute value
is unlimited

Maximum
active OSEs
per server

2

False

Description

License
metric

Metric group

Per Core
(with CAL)

Microsoft

Per Core
The number of
(with CAL)
core rights that
must be applied
to a physical
server.

Microsoft

The maximum
number of
Operating
System
Environments
(OSEs) allowed
to run software
on a physical
server.
Licenses
required =
(Licensable
OSEs/
Maximum
active
OSEs per
server) *
Licensable
cores

Minimum
cores per
server

16

False

Licensable
cores = Max
(Processors
* Max
(Minimum
cores per
processor,
Cores),
Minimum
cores per
server)
Maximum
installs per
OSE

1

False

The maximum
number of
installs allowed
within one of a
server's OSEs.

Per Core
(with CAL)

Microsoft

Licenses
required =
(Licensable
installs
per OSE/
Maximum
installs
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

998


<!-- page 999 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

per OSE) *
Licensable
cores
Minimum
cores per
processor

1

False

The number of
Per Core
core rights that
must be applied
to a physical
processor.

Common

Maximum size 8
of instance on
cloud

False

Oracle
Database
Standard
Edition, Oracle
Database
Standard
Edition One
and Oracle
Database
Standard
Edition 2 have
maximum limits
on the size of
the instances
to which they’re
deployed
on Oracle
Authorized
Cloud
Environments
such as
Microsoft
Azure and
AWS. Oracle
Database
Enterprise
Edition doesn’t
have any
maximum limits
on the size of
the instances
to which it’s
deployed to
on Oracle
Authorized
Cloud
Environments
such as
Microsoft Azure
and AWS.

Per
Processor

Oracle

Maximum
number of
sockets per
server

False

Oracle
Database
Standard
Edition, Oracle

Per
Processor

Oracle

2

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

999


<!-- page 1000 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

Database
Standard
Edition One
and Oracle
Database
Standard
Edition 2 may
only be licensed
on servers
that have a
value less than
the maximum
number of
sockets.
Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per Named
User

VMware

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per Named
User

IBM

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per Named
User

Common

Per Socketpair

Red Hat

Maximum
VMs per right

2

False

For RHEL
Server, this is
the number of
VMs running
on a physical
host that each
subscription
can license.
A single VM
running on a
host needs one
subscription.
For RHEL
for Virtual
Datacenters,
this is the
number of
VMs that can
be licensed
with one
subscription for

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1000


<!-- page 1001 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

each socketpair on the
physical host.
Maximum
sockets per
right

2

False

Maximum
processors
per right

2

False

The number
of sockets on
the physical
host each
subscription
can license. A
single socket
host needs one
subscription.

Per Socketpair

Red Hat

Per
Processor

Microsoft

Per
The maximum
Processor
number of OSEs
allowed to run
software on a
physical server.

Microsoft

The maximum
number of
physical
processors
each right can
license.
Licenses
required =
Processors/
Maximum
processors
per right

Maximum
active OSEs
per server

2

False

Licenses
required =
Licensable
OSEs/
Maximum
active OSEs
per server
Maximum
installs per
OSE

1

False

The maximum
number of
installs allowed
within one of
the server's
OSEs.

Per
Processor

Microsoft

Licenses
required =
Licensable
installs
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1001


<!-- page 1002 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

per OSE/
Maximum
installs
per OSE
Maximum
installs per
OSE

1

False

The maximum
number of
installs allowed
within one of
the server's
OSEs.

Server (Per
Instance)

Microsoft

Licenses
required =
Licensable
installs
per OSE
Maximum
installs per
right

1

Maximum
installs per
right

False

The maximum
number of
installs each
right can
license.

Per
Application
Instance

VMware

True

The maximum
number of
installs each
right can
license.

Per OSI

VMware

Minimum
NUPs

5

False

If licensed by
Named
Named User
User Plus
Plus (NUP), then
both Oracle
Database
Standard
Edition
and Oracle
Database
Standard
Edition One
require a
minimum of five
NUP licenses
each.

Oracle

Minimum
NUPs for
WebLogic
on-premise
deployments

10

False

The minimum
Named
number of users User Plus
required to
be licensed
for programs
accessing a
processor. This
attribute is used
for reconciling

Oracle

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1002


<!-- page 1003 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

entitlements
with an
Oracle NUP
license metric
for Oracle
WebLogic
Standard and
WebLogic
Enterprise
deployed onpremise. For
WebLogic
Standard, the
attribute counts
occupied
sockets and
for WebLogic
Enterprise, the
attribute counts
processor
cores.
Maximum
number of
sockets per
server

2

False

Oracle
Named
Database
User Plus
Standard
Edition, Oracle
Database
Standard
Edition One
and Oracle
Database
Standard
Edition 2 may
only be licensed
on servers
that have a
value less than
the maximum
number of
sockets.

Oracle

Minimum
users per
processor

25

False

The minimum
number of
users allowed
to access
a physical
processor. This
metric attribute
is applicable
for both onpremise
and Oracle
Authorized
Cloud
Environments

Oracle

Named
User Plus

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1003


<!-- page 1004 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

such as
Microsoft Azure
and AWS.
Minimum
NUPs on
cloud

10

False

If licensed by
NUP, Oracle
Database
Standard
Edition 2
requires a
minimum of 10
NUP licenses
per 8 vCPUs
on Oracle
Authorized
Cloud
Environments
such as
Microsoft Azure
and AWS.

Named
User Plus

Oracle

Maximum size 8
of instance on
cloud

False

Oracle
Database
Standard
Edition, Oracle
Database
Standard
Edition One
and Oracle
Database
Standard
Edition 2 have
maximum limits
on the size of
the instances
to which they’re
deployed
on Oracle
Authorized
Cloud
Environments
such as
Microsoft
Azure and
AWS. Oracle
Database
Enterprise
Edition doesn’t
have any
maximum limits
on the size of
the instances
to which it’s
deployed to
on Oracle

Named
User Plus

Oracle

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1004


<!-- page 1005 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

Authorized
Cloud
Environments
such as
Microsoft Azure
and AWS.
Minimum
NUPs for
WebLogic
cloud
deployments

10

False

The minimum
Named
number of users User Plus
required to
be licensed
for programs
accessing a
vCPU. This
attribute is used
for reconciling
entitlements
with an
Oracle NUP
license metric
for Oracle
WebLogic
Standard and
WebLogic
Enterprise
on Oracle
Authorized
Cloud
Environments
such as AWS
or Azure
Cloud. For
the Standard
edition, a
minimum of 10
NUP licenses
are required
per 8 vCPUs
on either
AWS or Azure
Cloud. For the
Enterprise
edition, if hyperthreading is
enabled then
10 NUP licenses
are required
per 2 vCPUs,
and if hyperthreading is not
enabled then
10 NUP licenses
are required per
vCPU.

Oracle

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1005


<!-- page 1006 -->
Attribute

Attribute value

Attribute value
is unlimited

Minimum
NUPs per
server

10

False

Maximum
cores per
processor

True

Description

If licensed by
NUP, Oracle
Database
Standard
Edition 2
requires a
minimum of 10
NUP licenses
per server.
One license
is required
per CPU up to
the physical
core per CPU
maximum. If
a CPU has
more physical
cores than
the maximum,
additional CPU
licenses are
required.

License
metric

Metric group

Named
User Plus

Oracle

Per
Processor

IBM

Per
Processor

Citrix

Licenses
required =
Processors
* (Cores/
Maximum
cores per
processor)
Maximum
cores per
processor

True

One license
is required
per CPU up to
the physical
core per CPU
maximum. If
a CPU has
more physical
cores than
the maximum,
additional CPU
licenses are
required.
Licenses
required =
Processors
* (Cores/
Maximum

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1006


<!-- page 1007 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

cores per
processor)
Maximum
cores per
processor

32

False

Per
Effective April 2, Processor
2020, VMware
requires one
license for up
to 32 physical
cores. If a
CPU has more
than 32 cores,
additional CPU
licenses are
required.

VMware

Licenses
required =
Processors
* (Cores/
Maximum
cores per
processor)
Maximum
cores per
processor

True

One license
is required
per CPU up to
the physical
core per CPU
maximum. If
a CPU has
more physical
cores than
the maximum,
additional CPU
licenses are
required.

Per
Processor

Common

Per Device

Adobe

Licenses
required =
Processors
* (Cores/
Maximum
cores per
processor)
Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1007


<!-- page 1008 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per Device

IBM

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per Device

Microsoft

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per Device

Citrix

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per Device

Common

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per Device

VMware

Minimum
cores per VM

4

False

The number
of core rights
that must be
applied to a
virtual machine.

Per Core

Microsoft

Minimum
cores per
processor

4

False

The number of
Per Core
core rights that
must be applied
to a physical
processor or set
of vCores.

Microsoft

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per User

Adobe

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per User

Microsoft

Maximum
installs per
right

True

The maximum
number of
installs each

Per User

IBM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1008


<!-- page 1009 -->
Attribute

Attribute value

Attribute value
is unlimited

Description

License
metric

Metric group

right can
license.
Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per User

Citrix

Maximum
installs per
right

True

The maximum
number of
installs each
right can
license.

Per User

Common

Subscription downgrade configuration condition
Determine various downgrade configuration conditions for SaaS applications and view the
downgrade order based on the conditions.
Software downgrade configuration condition
Field

Description

Downgrade configuration

Name of the downgrade configuration
that includes the source and destination
subscription.

Condition

Defined downgrade configuration condition for
the SaaS application.

Condition value

Value assigned to the downgrade
configuration condition.

Products

Products for which the downgrade
configuration condition is defined.

Active

Shows whether the downgrade configuration
condition is active.

Software entitlement fields
Software Entitlement form and related list field descriptions.

Software Entitlement form

Note: From the Zurich release, the Database option column no longer exists
in the Software Entitlement [alm_license] and the Override License Cost
[samp_override_license_cost] tables. If you customized your form view prior to the Zurich
release to include the database option column, then you get to see the Database option in
the software entitlement form.
The list view for software entitlements shows the total number of software
entitlement records for your organization based on the value specified in
the SAM Workspace License operations list count limit system property
(sn_sam_workspace.sam_license_operations_list_count). The default value
for the record count is set to 5000000. However, the SAM administrator can set the value for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1009


<!-- page 1010 -->
the count in the system property as required. If there are less than five million records, then
the exact count is shown. If there are more than five million records, then the count is shown
as 5000000+. For more information on this system property, see Software Asset Management
properties.

Field

Description

Display
name

Automatically generated name based on the software model display name.

Asset tag

Serial number and the bar code used for tracking the asset.

Publisher
part number

Publisher part number (PPN) from the Software Product Definitions lookup list of
predefined software that may have already been purchased.
You can edit this field in existing entitlements.
When you select a publisher part number, you may encounter a message: Many
underlying software models are being created. These
might be part of suite components, downgrade rights or
next version. Please validate on completion. The message
appears only if there are greater than or equal to 50 suite components for the
software model and if any of the following conditions are met:
• A software model doesn’t exist for any suite component
• A software model doesn’t exist for any downgrade right
• A software model doesn’t exist for the next version

Note: If a software model exists for the publisher part number, the

Software model field is automatically populated. Otherwise, the software
model is automatically created for you directly from this form. If there are
multiple software models created with the same discovery map conditions,
the software model must be selected manually.
Software
model

The software model to match the entitlement.

Note: A warning message is shown if the publisher part number isn’t
associated with the publisher and product for the software model. You can
either change the software model, or save the entitlement as is.
You can edit this field in existing entitlements.
Agreement
type

Based on the agreement type that you select, downgrade rights are
automatically generated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1010


<!-- page 1011 -->
Field

Description

Note: If you select any of the following agreement types, the status of the
entitlement is Compliant even if you have unlicensed installations:
• Enterprise Agreement
• Enterprise Enrollment
• Enterprise Subscription Agreement
• Enterprise Subscription Enrollment
• Enterprise License Agreement (ELA)
• Enterprise Term License Agreement (ETLA)
• Server and Cloud Enrollment (SCE)
• Unlimited License Agreement (ULA)
License type

The type determines whether the rights grant full access to the software or if
they’re being upgraded from a previous version of the software.
The following are the various license types:
• Perpetual
• Perpetual + Software Assurance
• Software Assurance
• Subscription
• Step-up
• Subscription Step-up
• Add-on
• From SA

Note: After you upgrade to the Zurich release and a content update is
performed, if the content update changes the license type of a specific
PPN from Step-up to Subscription Step-up, all entitlements associated with
that PPN will be updated to Subscription Step-up entitlements.
The default value for SaaS entitlements is Subscription.
For more information about the license types and their impact on software
reconciliation, see Impact of different license types on software reconciliation.
Metric group This field is automatically populated based on the Software Model field. Each
metric group has a set of license metrics that are specific to the software
publisher.

Note: If this field is set to Consumption or Subscription, the License
type field is automatically set to Subscription.
License
metric

License metric for the license group that the software license is counted against
when reconciliation is run. The options for license metric change based on the
Metric group field.
For more information, see Software license metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1011


<!-- page 1012 -->
Field

Description

Note:
• The default value for SaaS entitlements is User Subscription.
• For SaaS Consumption, the spend in the License Metric Results
(samp_license_metric_result) gets calculated for the current
subscription period only, which isn't the total cost of the entitlement. For
example, if the Purchased rights are 100, the Unit cost is $1, the License
type is Subscription, the Subscription period is Monthly, and the Start
date and End date are set to a period of 2 months, then the Total cost
would be $200. But since the consumption is reconciled for the current
subscription period, the spend in the License Metric Results shows as
$100.
Unlimited
license

Indicates that the entitlement being created is an unlimited license.

Subscription Billing frequency for your software subscription. The options are Monthly,
period
Quarterly, Annually, and Entire Subscription Period. The Entire Subscription
period option indicates that you’re required to pay only after throughout the
entire duration of your subscription.
If you select Monthly, Quarterly, or Annually, you must specify the time period
during which the subscription is valid in the Start date and End date fields. If
you select Entire Subscription Period, only the Start date field is required.
This field appears only if you select Subscription, Subscription Step-up, Addon, or From SA from the License type list.
Start date

Start date of your subscription, maintenance entitlement, SA service, add-on
capability, or From SA service.
This field appears only if you select Subscription, Perpetual + Maintenance,
Maintenance, Perpetual + Software Assurance,Software Assurance, Step-up,
Subscription Step-up, Add-on, or From SA from the License type list.

End date

End date of your subscription, maintenance entitlement, SA service, add-on
capability, or From SA service.
After the end date is reached, the maintenance flag is cleared and the state is
retired if Software Assurance was specified as the License type.
This field appears only if you select Subscription, Perpetual + Maintenance,
Maintenance, Perpetual + Software Assurance,Software Assurance, Step-up,
Subscription Step-up, Add-on, or From SA from the License type list.

Rights per
Number of rights associated with each pack that is purchased for Microsoft
license pack products that use Per Core or Per Core with CAL licenses.
For Microsoft products, the licenses are available in packs. For example, SQL
server core licenses are available in packs of two.
Number of
packs

Number of packs for Microsoft products that use Per Core or Per Core with CAL
licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1012


<!-- page 1013 -->
Field

Description

You can edit this field in an existing entitlement. If you change the value in this
field, the Purchased rights field is automatically updated.
Purchased
rights

Number of rights that you’re purchasing.
You can edit this field in an existing entitlement. If you change the value in the
this field, the expense line item is automatically updated.

Note: If you have specified a Microsoft Per Core or Microsoft Per Core
with CAL license type, this field is automatically populated. This value is
based on the value entered in the Rights per license pack field multiplied
by the value in the Number of packs field.
From the Zurich release, revenue-based licensing support is enabled for
this field for SAP Engine products. This support enables using higher value
revenue-based SAP Engine products.
Active rights

Number of rights to be granted for this entitlement.

Note: If an enterprise contract is attached to the license, the Active
rights field isn’t shown.
Allocations
available

Number of user or device allocations that haven’t been created for an
entitlement.
Allocations available = (number of active rights) - (sum of all allocation
quantities).

Unit cost

Unit cost of the software.

Note: Required for total cost and savings calculations on the Software
Asset Management dashboard.
From the Zurich release, revenue-based licensing support is enabled for
this field for SAP Engine products. This support enables using higher value
revenue-based SAP Engine products.
Total cost

Total cost of the entitlement calculated from the unit cost.

Total units

Total number of software units that you’ve purchased for this entitlement.
This field appears only if the Metric group field is set to Consumption.

Unrestricted If selected, license consumption isn't limited to the entities listed in the
consumption consumption rule. Any entity can consume rights, but the entities in the
consumption rules have rights reserved for them. The reserved rights come from
the license pool column.

Note: This check box can only be selected if all existing consumption
rules have a license pool. Any new consumption rule must define a pool as
well.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1013


<!-- page 1014 -->
General tab
Field

Description

Serial
number

Unique number assigned for identification of the asset.

Owned by

User or department with financial ownership of the asset. The asset owner can
be different than the manager.

State

Current state of the asset. Values include On order, In stock, In transit, In use,
Consumed, In maintenance, Retired, Missing, and Build.

Note: When you start creating an entitlement, its initial status is Build.
After you publish the entitlement, the status changes to In use.
If the state is Retired, the Active rights field is set to 0.
For entitlements with a Subscription license duration, the State field is
automatically updated based on the Start date and End date fields.
Substate

More details about the software license stage. The available substate settings
depend on the state selected in the State field.
For example, if you select the Retired state, the substate options available are
Disposed, Sold, Donate, and Vendor credit.

Active
Indicates if Subscription, SA, or maintenance is activated on the entitlement.
maintenance If the entitlement has an active SA, subscription, or maintenance associated
with it, the check box is automatically selected. If an entitlement initially had
subscription, SA or maintenance activated on it and subscription, SA or
maintenance is no longer active, the check box is automatically cleared.
If you upgrade from a previous release to the Zurich release, this check box is
automatically selected for your existing entitlements that have an active SA,
subscription, or maintenance associated with them.
Company

Company that this asset belongs to.

Location

Where the license is used. For example, you can specify a site, country, or
region.

Department

Department of the person Assigned to this software license.

Financial tab
Field

Description

Vendor

Company that the asset was purchased from.

Invoice
number

Invoice that the asset was billed under.

Request
line

Request line linked to the asset.

Purchased The date the entitlement was purchased. This date is considered when
reconciliation runs as Microsoft has updated its licensing rules for dedicated hosts
on AWS and Microsoft Azure.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1014


<!-- page 1015 -->
Field

Description

Note: The purchased date is also visible when importing entitlements.
Opened

Date that the request was opened.

GL
account

General ledger account number associated with the asset.

Cost
center

Cost center financially responsible for the asset.

Contracts tab
When importing software entitlements, use the Contract number column on the downloadable
template to link the contracts to the entitlements. Since the Contract number is a reference field,
the system first searches for matches to existing contracts, so enter existing contract numbers. If
no matching contract number is found, entitlement import errors are generated.
You should be able to create the contract from the error, enabling for the creation of the
entitlement and the appearance of the contract on the entitlement form in the Contracts related
list. You can also skip the contract creation process and still create the entitlement, but without a
contract.

Field

Description

Lease contract

Contract that applies to the asset.

Warranty expiration

Expiration date of the warranty.

Support group

Group that supports incidents related to the asset.

Supported by

Individual that supports incidents related to the asset.

User Allocations tab

Note: This tab appears only if you’re using a user-based license metric, such as Per User
or User CAL.

Field

Description

Assigned Condition to account for only user allocations during reconciliation. Only user
condition allocations that meet the specified conditions are included in the reconciliation.
Assigned User that the associated rights are allocated to.
to
Note: If you’re using a client access record to track and manage the users
that are accessing your server software, this field displays the name of each
user that you assigned the associated client access licenses (CALs) to. See
Add a software client access record in Software Asset Management classic
for detailed instructions on how to assign CALs to users in the Software Asset
Management classic application. See Create a software client access record
in workspace for detailed instructions on how to assign CALs to users in the
Software Asset Workspace.
Quantity

Number of rights that are allocated to the user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1015


<!-- page 1016 -->
Field

Description

License
key

Unique license key that is allocated to the user.

Group

Indicates the assignment group name when a user allocation is created from a
group user allocation to the software entitlement. When a user allocation isn't
created from a group user allocation to the software entitlement, this column value
is empty.

Device Allocations tab

Note: This tab appears only if you’re using a device-based license metric, such as Per
Device or Device CAL.

Field

Description

Allocated Condition to account for only device allocations during reconciliation. Only device
condition allocations that meet the specified conditions are included in reconciliation.
Assigned Device that the associated rights are allocated to.
to
Note: If you’re using a client access record to track and manage the devices
that are accessing your server software, this field displays the name of each
device that you assigned the associated client access licenses (CALs) to. See
Add a software client access record in Software Asset Management classic for
detailed instructions on how to assign CALs to devices in the Software Asset
Management classic application. See Create a software client access record
in workspace for detailed instructions on how to assign CALs to devices in the
Software Asset Workspace.
Quantity

Number of rights that are allocated to the device.

License
key

Unique license key that is allocated to the device.

Related Entitlements tab

Note: This tab appears only if your software entitlement is linked to a related entitlement.
Field

Description

Related Entitlement

Related entitlement that you
want to link to your software
entitlement.

License type

License type that is
associated with the related
entitlement.

Active rights

Number of rights that you
want to grant to the related
entitlement.

Software Entitlement

Software entitlement that
you’re linking the related
entitlement to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1016


<!-- page 1017 -->
Field

Description

Note: This field appears only in the Software Asset
Workspace. This field doesn’t appear in the Software Asset
Management classic application.

Upgraded Entitlements tab
Field

Description

From
The entitlement from which rights are upgrading. Multiple upgrade entitlements
Entitlement are supported.
You can upgrade previously owned rights for a particular version of software to a
newer version (for example, Microsoft Office Professional Plus 2013 to Microsoft
Office Professional Plus 2016).

Note: This field is available when Upgrade is selected from the License
type field.

The rights from entitlements that you’re upgrading from get deactivated
when you upgrade because they’re moved to the new entitlement.
Number of
rights

Number of rights to upgrade.

Activities tab
Field

Description

Work notes

Work notes for the asset.

Downgrade Rights related list
Field

Description

Software
Software entitlement with which the downgrade is associated.
entitlement
Software
model

Software model corresponding to the downgrade right.

Active

Indicates if the downgrade rights on the software entitlement are active or not.
If needed, you can deactivate the downgrade rights. Only the active downgrade
rights appear in the list. To see all the downgrade rights, remove the Active
condition from the filter.
If you deactivate a downgrade right on a software model, the change is
propagated to the related software entitlement downgrade rights; irrespective of
the source of the downgrade right.
To deactivate a downgrade right, double-click the field to display the toggle
button. Select false and select the Save icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1017


<!-- page 1018 -->
Field

Description

• false: Deactivates the downgrade right on the software model and on the
related software entitlements.
• true: Deactivates the downgrade right on the software model and on the related
software entitlements.
Order

Order of the downgrade. If necessary, you can edit this field.

Start date

Start date of the downgrade.

End date

End date of the downgrade.

Entitlement Consumption Rules

Note: This tab appears for all publishers except Workday. Additionally, the tab appears for
all license metrics except the following:
• Resource Value Unit (RVU)
• Resource Value Unit (RVU) Full Capacity
• Resource Value Unit (RVU) Sub-capacity
• Authorized User Value Unit
• Employee User Value Unit
• External User Value Unit
• Employee

Field

Description

Software
entitlement

The software entitlement that the consumption is linked to.

Consumption The consumption rule linked to the entitlement.
rule
License pool

License pool associated with the consumption rule. For details on license pools,
see Reconciliation of licenses across global entities.

License Key related list
Field

Description

Is allocated

Option that indicates that the license key has been allocated.

License key

License key value. Must be unique for an entitlement.

Software entitlement

Software entitlement associated with the license key.

Software model results license metric results fields
Software model results License Metric Results form and related list field descriptions. You can
access this form through the License Metric Results related list in your software model results.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1018


<!-- page 1019 -->
License Metric Results form
Two license metric results are generated if a software model has two entitlements, one with a
perpetual SA license type and the other with a subscription license type. One license metric
result where active maintenance is true and the other where the active maintenance is false. In
such a scenario, two license position reports are generated, one with active maintenance true
and the other one with active maintenance false.

Field

Description

License
metric

Name of the license metric that the software license is counted against when
reconciliation runs.

Software
model
result

Software model result associated with the license metric results.

Group

Group on which reconciliation was run.

Subgroup

Subgroup on which reconcliation was run.

Rights
owned

Sum of all active rights from entitlements that share a license metric.

Rights
used

Sum of rights used during reconciliation (allocated + not allocated and installed).

Rights
available

Sum of rights not used during reconciliation (rights owned — rights used).

Overlicensed
amount

Estimated cost of unused rights.

Right Allocations
Allocated
in use

Rights that are allocated and are used to license installations.

Not
allocated
in use

Number of rights that are used to license installations, but not allocated.

Allocated
not in use

Rights that are allocated but are not being used to license any installations.

When this value is greater than 0, two remediation options (Create Allocations and
Remove Unallocated Installs) are automatically created for each unique license
metric in the software model that meets this requirement, except User CAL and
Device CAL.

Note: Allocated not in use reflects rights that are wasted because the
user or device for which these rights have been allocated do not have the
software installed.
When this value is greater than 0, a Remove Allocations remediation option is
automatically created for each unique license metric in the software model that
meets this requirement.
Not
allocated

Number of rights that have not been allocated (rights owned — allocated
regardless of whether installed or not).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1019


<!-- page 1020 -->
Field

Description

Allocations Number of allocations needed for compliance. Only used for Per Named User and
needed
Per Named Device license metrics.

Rights Used By related list
Field

Description

Used by

User or device that is using the rights.

Note: If your rights are associated with client access records, the

Used by field displays the name of each client access record that
is using those rights. Select a client access record name to view
the corresponding breakdown of users or devices that are using
the associated rights. See Add a software client access record in
Software Asset Management classic for more information on client
access records in the Software Asset Management classic application.
See Create a software client access record in workspace for more
information on client access records in the Software Asset Workspace.
Rights used

Sum of rights used during reconciliation (allocated + not allocated and
installed).

Allocated in use Rights that are allocated and are used to license installations.
Not allocated in
Number of rights that are used to license installations, but not allocated.
use
When this value is greater than 0, two remediation options (Create
Allocations and Remove Unallocated Installs) are automatically created
for each unique license metric in the software model that meets this
requirement, except User CAL and Device CAL.
Allocated not in
Rights that are allocated but are not being used to license any installations.
use

Note: Allocated not in use reflects rights that are wasted because the
user or device for which these rights have been allocated do not have
the software installed.
When this value is greater than 0, a Remove Allocations remediation option
is automatically created for each unique license metric in the software model
that meets this requirement.
Nontransferable Remaining rights from a core pack that cannot be used to license any
rights
additional devices. Nontransferable rights are available only for Microsoft Per
Core and Microsoft Per Core with (CAL).
Allocations
needed

Number of allocations needed for compliance. Only used for Per Named User
and Per Named Device license metrics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1020


<!-- page 1021 -->
Rights Needed By related list
Field

Description

Rights Unlicensed user or device that requires rights.
needed
Note: If rights are needed to cover unlicensed users or devices in an
by
associated client access record, the Rights needed field displays the name
of the client access record that requires those additional rights. Select the
client access record name to view the corresponding breakdown of unlicensed
users or devices that require rights. See Add a software client access record
in Software Asset Management classic for more information on client access
records in the Software Asset Management classic application. See Create
a software client access record in workspace for more information on client
access records in the Software Asset Workspace.
Rights Number of rights that are required to cover the unlicensed user or device.
needed

Licensed Installs related list

Note: This related list is not available for SAP license metrics.
Field

Description

Display name

Name of the software installation.

Publisher

Publisher of the software.

Version

Version of the software.

Discovery model

Software discovery model for the installed software.

Installed on

Hardware on which the software is installed.

Assigned to

User or device to which the software is assigned.

Downgrades/Upgrades related list

Note: This related list is not available for SAP license metrics.
Field

Description

Software
model

Software model that is available for upgrade or downgrade.

Rights
used

Sum of rights used during reconciliation (allocated + not allocated and installed).

Allocated
in use

Rights that are allocated and are used to license installations.

Not
allocated
in use

Number of rights that are used to license installations, but not allocated.
When this value is greater than 0, two remediation options (Create Allocations and
Remove Unallocated Installs) are automatically created for each unique license

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1021


<!-- page 1022 -->
Field

Description

metric in the software model that meets this requirement, except User CAL and
Device CAL.
Allocated
not in use

Rights that are allocated but are not being used to license any installations.

Note: Allocated not in use reflects rights that are wasted because the
user or device for which these rights have been allocated do not have the
software installed.
When this value is greater than 0, a Remove Allocations remediation option is
automatically created for each unique license metric in the software model that
meets this requirement.
Allocations Number of allocations needed for compliance. Only used for Per Named User and
needed
Per Named Device license metrics.

SAP System Users related list

Note: This related list is available only for SAP named user license metrics.
Field

Description

Display name

Identifier containing the SAP user ID and SAP client.

User

Full name of the SAP user.

SAP user id

Unique identifier for the SAP user.

Email

Email address of the SAP user.

First name

First name of the SAP user.

Last name

Last name of the SAP user.

User type

Type of SAP user.

License type

Named user type value assigned to the SAP user.

Named user type

Normalized named user type of the SAP user.

Optimized named user type

Optimized named user type of the SAP user.

SAP client

Organizational subunit to which the SAP user belongs.

Licensed Subscriptions related list
Field

Description

Display name

Identifier containing the publisher and product of the software
subscription.

User

Name of the subscription user.

User principal
name

Email address of the subscription user.

Software model

Software model for the subscription software.

Subscription profile Direct integration profile for the subscription software.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1022


<!-- page 1023 -->
Field

Description

Subscription type

Type of subscription.

Software storage usage fields
Determine the usage information for SaaS applications for generating downgrade subscriptions.
Software storage usage
Field

Description

User principal name

User name or email address of the user.

Subscription profile

Name of the user subscription profile.

Storage allocated (bytes)

Storage allocated to the user in bytes.

Storage used (bytes)

Storage used by the user in bytes.

Product

Name of the product for the usage record.

Is deleted

Indicates whether the user's storage account,
such as Microsoft OneDrive or mailbox, has
been deleted.

Software subscription fields
Software subscription form fields, their descriptions, and the SaaS integrations for which these
fields are populated.
Some of the fields in the Software subscription table get populated for specific SaaS integrations
while some get populated for all SaaS integrations.
Software subscription form fields
Is pulled from the
portal?

Field

Description

SaaS integration

Display name

Name of the subscription
downloaded from the SaaS
portal.

Yes

All SaaS
integrations

Publisher

The publisher for the
subscription.

Yes

All SaaS
integrations

Product

The software product for the Yes
subscription.

All SaaS
integrations

Version

Version of the software
product.

Yes

All SaaS
integrations

Edition

Edition of the software
product.

Yes

All SaaS
integrations

Software model

A standardized version
of a software product
for the subscription.
The software model is
automatically created for
SaaS integrations.

No (Automatically
created by
ServiceNow)

All SaaS
integrations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1023


<!-- page 1024 -->
Software subscription form fields (continued)
Is pulled from the
portal?

Field

Description

User

The ServiceNow user record
in the User [sys_user] table
representing a real person
within an organization. In
general, the User table
is populated through the
Active directory integration
in the organization.

All SaaS
integrations

User principal name

A unique identifier for a user Yes
in the SaaS portal. This is
typically the email address
of the user in the SaaS
portal.

All SaaS
integrations

Last activity

The date when the
Yes
subscription record was last
active.

All SaaS
integrations
except
CrowdStrike and
Docusign

For Microsoft 365 products,
this field is populated
from the Software Usages
[samp_sw_usage] table and
Microsoft 365 Apps Usage
Reports [samp_m365apps-usage-report] table.
This field determines
usage-based optimization
recommendation.
Inactive days

Number of days for which
a user's subscription has
been inactive.

SaaS integration

No (Automatically
determined)

All SaaS
integrations
except
CrowdStrike

This field is visible on the
Software Subscriptions form
when the Last activity field
isn’t empty. Inactive days
are calculated using the
value in the Last activity
field.
Subscription profile

Display name of the
integration profile.

No (Automatically
created by
ServiceNow)

All SaaS
integrations

Licensable software
model

Name of the software
model relevant for licensing
purposes.

No (Automatically
determined)

All SaaS
integrations

Subscription identifier

A unique technical identifier Yes
provided by the SaaS
provider, such as a service
plan ID, that indicates

All SaaS
integrations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1024


<!-- page 1025 -->
Software subscription form fields (continued)
Field

Description

Is pulled from the
portal?

SaaS integration

the specific product or
plan a user is subscribed
to. This identifier allows
ServiceNow to correctly
map the subscription to the
corresponding software
model.
For example, identifiers
like VISIOCLIENT and
ENTERPRISEPACK map to
specific products such as
Microsoft Visio Plan 2 and
Office 365 E3, respectively.
Inferred suite

The inferred suite
model that this software
subscription belongs to.

No (Automatically
determined)

Microsoft 365
integration

Discovered user

The record in the
Discovered User
[samp_discovered_user]
table that represents a user
identity discovered from an
external system.

No (Automatically
determined)

All SaaS
integrations

Active

Indicates if the subscription
record is active.

No (Automatically
determined)

All SaaS
integrations

Is reconciled

Indicates whether the SaaS
subscription has been
reconciled.

No (Automatically
determined)

All SaaS
integrations

This field is populated after
reconciliation is run.
License metric result

License metric result
of the software product
that is populated after
reconciliation. For more
information on license
metric results, see Software
reconciliation results.

No (Automatically
determined)

All SaaS
integrations

Product result

Product result of the
software product that
is populated after
reconciliation. For more
information on product
results, see Software
reconciliation results.

No (Automatically
determined)

All SaaS
integrations

Software model result

Software model result
of the software product

No (Automatically
determined)

All SaaS
integrations

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1025


<!-- page 1026 -->
Software subscription form fields (continued)
Field

Description

Is pulled from the
portal?

SaaS integration

No (Automatically
determined)

All SaaS
integrations

that is populated after
reconciliation. For more
information on software
model results, see Software
reconciliation results.
Unlicensed
subscription

Indicates whether the
subscription remains
unlicensed after
reconciliation due to
insufficient available
licenses. This field is
updated with a true or false
value to reflect the licensing
status.

Entitlement import error fields
Entitlement Import Error form and related list field descriptions.

Entitlement Import Error form
Field

Description

Error
status

Status of the entitlement. An error record can have either of the two statuses:
• Manually fixed: when all the errors in the error record are corrected and the
entitlement is successfully created.
• Needs review:the error record is created and you need to review and correct the
errors.

Reason

Reason the imported entitlement couldn't be added to the Entitlement list.

Asset tag

Serial number and the bar code used for tracking the asset.

Publisher
part
number

Publisher part number from the Software Product Definitions lookup list of
predefined software that may have already been purchased.
When you select a publisher part number, you may encounter a message: Many
underlying software models are being created. These
might be part of suite components, downgrade rights or
next version. Please validate on completion. The message
appears only if there are greater than or equal to 50 suite components for the
software model and if any of the following conditions are met:
• A software model does not exist for any suite component
• A software model does not exist for any downgrade right
• A software model does not exist for the next version

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1026


<!-- page 1027 -->
Field

Description

Note: If a software model exists for the publisher part number, the Software
model field is automatically populated. Otherwise, the software model is
automatically created for you directly from this form. If there are multiple
software models created with the same discovery map conditions, the
software model must be selected manually.
Software
model

The software model to match the entitlement.

Note: A warning message is shown if the publisher part number is not
associated with the publisher and product for the software model. You can
either change the software model, or save the entitlement as is.

License
type

License type. Whether the rights grant full access to the software or if they are
being upgraded from a previous version of the software.
When the type is Upgrade, the Upgraded Entitlements related list is shown. The
upgrade license type is used to specify the entitlements you are upgrading.
This field becomes read-only after the form has been submitted.

Note: For SaaS entitlements, keep the default value (Full).
Metric
group

This field is automatically populated based on the Software Model field. Each
metric group has a set of license metrics that are specific to the software
publisher.

License
metric

License metric for the license group that the software license is counted against
when reconciliation is run. The options for license metric change based on the
Metric group field. The default value for SaaS entitlements is User Subscription.
For more information, see Software license metrics.

Note: Use the Envelopes license metric only for Docusign entitlements.
Rights per
license
pack

Rights associated with each pack that is purchased for Microsoft Per Core or
Microsoft Per Core with CAL licenses.

Number of Number of packs for Microsoft Per Core or Microsoft Per Core with CAL licenses.
packs
Purchased Number of rights that you are purchasing.
right
Note: If you've specified a Microsoft Per Core or Microsoft Per Core with
CAL license type, this field is automatically populated. This value is based
on the values entered in the Rights per license pack field multiplied by the
value in the Number of packs field.
Agreement
Based on the agreement type that you select, downgrade rights are automatically
type
generated.

Note: If the agreement type is Enterprise License Agreement or Unlimited
Level Agreement, the Status is Compliant even if there are unlicensed
installations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1027


<!-- page 1028 -->
Field

Description

• Generic: Downgrade rights are not automatically populated. If you change the
agreement type on an existing software entitlement from Generic to any other
type (for example CLP), the downgrade rights are automatically populated.
• Any agreement type other than Generic: Downgrade rights are automatically
populated. If you change the agreement type on an existing software
entitlement from an agreement type other than Generic (for example, ELTA) to
Generic, the downgrade rights that were already populated are not deleted or
deactivated.
Purchased Number of rights that you are purchasing.
rights
Oracle
options

Oracle options related to the entitlement.

Contract
number

Contract number for the entitlement.

Reference software related list
Field

Description

Publisher Name of the software publisher.
Product

Name of the product.

Version

Version of the software product.

Edition

Edition of the software product.

Language Language of the software product to use when searching for the normalized
discovery model, which is populated once it has been normalized or added
manually.
Platform

Platform of the software product to use when searching for the normalized
discovery model.

General related list
Field

Description

Owned by

User or department with financial ownership of the asset. The asset owner can be
different than the manager.

PO number Purchase order number.
Company

Company that this asset belongs to.

Location

Where the license is used. For example, a specific site, country, or region.

Department Department of the person Assigned to this software license.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1028


<!-- page 1029 -->
Financial related list
Field

Description

Vendor

Company that the asset was purchased from.

Unit cost

Unit cost of the software.

Note: Required for total cost and savings calculations on the Software Asset
Management dashboard.
GL
account

General ledger account number associated with the asset.

Cost
center

Cost center financially responsible for the asset.

Entitlement import error actions
Entitlement Import Error form action descriptions.

Entitlement Import Errors actions
Action

Description

Import

Option that saves the Entitlement Import Error record. After you save the record,
you remain on the Entitlement Import Error form, so you can easily save the form
between actions
Upon saving, all values are reevaluated and the form is updated.
For example, if both the publisher part number and software model fields are
missing, once a known publisher part number is added and the form is saved, the
Software model field is filled in automatically.

Note: Because the form is reevaluated after each save, changes made
to one entitlement may cause an error for another entitlement, such as a
Duplicate entry.
When all required fields are filled in and the form is saved, an entitlement record is
created and the error status is changed to Fixed.
Create
PPN

Part number for custom software.
If you are importing entitlements using the Software Asset Management
workspace application, on selecting Create PPN, you are taken to the Custom Part
Numbers list view page. Select New to create a new publisher part number.
If you are importing entitlements using the Software Asset Management classic
application, on selecting Create PPN, the Create Discovery Map for Publisher Part
Number dialog box appears. Select a product name in the Product field and select
Submit to create a custom discovery map which is automatically associated with
the publisher part number.

Create
Duplicate entitlement records cause an import error. Select Create duplicate
duplicate
entitlement to override the error and create an entitlement for the duplicate
entitlement record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1029


<!-- page 1030 -->
Action

Description

Note: This action only appears if there is an entitlement that already exists
and a duplicate entitlement is being created.

Impact of different license types on software reconciliation
Each license type has entitlements and conditions outlined on the entitlement form, and more
importantly, these license types have a significant impact on the Software Asset Management
(SAM) reconciliation process.
License types and their impact on software reconciliation
Impact on licensing or
reconciliation in SAM

License type

Description

Publisher applicability

Perpetual

A one-time purchase
license that enables
indefinite use of the
software without any
ongoing or recurring
payments.

All

This license grants
indefinite use but
doesn’t include
maintenance rights,
so benefits such
as new version
access, version
upgrades, Bring
your own license
(BYOL) benefits, and
technical support from
the software publisher
aren’t available. To
receive maintenance/
SA benefits, you
must associate
maintenance/SA
entitlements with the
Perpetual license.

Perpetual + Software
Assurance

A perpetual
license combined
with Software
Assurance (SA) from
Microsoft offers
a comprehensive
Volume Licensing
program with these
benefits:

Microsoft

Software Asset
Management
automatically
applies the Software
Assurance benefits.
For more information,
see Software license
maintenance.

• New version rights:
Upgrade eligible
Microsoft product
licenses to the
latest version at no
additional cost.
• License mobility:
Deploy certain
server applications
on-premises or in
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1030


<!-- page 1031 -->
License types and their impact on software reconciliation (continued)
License type

Description

Publisher applicability

Impact on licensing or
reconciliation in SAM

the cloud without
additional licenses.
• Unlimited
virtualization:
License the
physical host for
products such
as Windows
Server Datacenter
Edition, enabling an
unlimited number of
virtual machines.
• Virtual layer
licensing: License
individual virtual
machines, reducing
overall licensing
costs.
Subscription

For subscriptionAll (subscription
based products like
products)
Jira, Microsoft 365,
and Adobe Creative
Cloud, as well as nonsubscription products
using subscription
licenses, such as
Windows and SQL
Server.

License compliance
is primarily driven by
user subscriptions
pulled from the
subscription portal,
such as Jira and
Microsoft 365. It
also applies to nonsubscription products
like Windows Server
and SQL Server,
which can receive
Software Assurance
benefits.

Perpetual +
Maintenance

Perpetual +
Maintenance is
similar to Perpetual +
Software Assurance,
but it includes
a maintenance
agreement that
provides access to
software updates,
patches, and
sometimes support
for a specified
duration. This
license type applies
to non-Microsoft

Software Asset
Management
automatically
applies the Software
maintenance benefits.
For more information,
see Software license
maintenance.

All

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1031


<!-- page 1032 -->
License types and their impact on software reconciliation (continued)
License type

Description

Publisher applicability

Impact on licensing or
reconciliation in SAM

publishers such as
Oracle and VMware.
Upgrade

A licensing option that All
enables upgrading
from a lower-tier
edition to a highertier edition, such
as Standard to
Enterprise, without
purchasing a new full
license.

You can upgrade
a lower edition of
software, such as
SQL Server Standard,
to a higher edition,
such as SQL Server
Enterprise. Use
the Upgraded
Entitlements tab
in the Software
Entitlement form
to link related
versions of your
software under active
maintenance and
your upgrades. For
more information, see
Software entitlement
fields.

Software Assurance

Software assurance
entitlement that
provides Microsoft
customers with
software assurance
benefits. However,
it must be linked to
a base perpetual
license to activate the
entitlements.

Microsoft

Software Asset
Management
doesn’t reconcile
software assurance
entitlements unless
they’re linked to
base perpetual
licenses. Confirm that
software assurance
entitlements
are related to
base perpetual
entitlements for
correct reconciliation.

Maintenance

Maintenance
entitlement that
provides benefits
to non-Microsoft
customers. However,
it must be linked to
a base perpetual
license to activate the
entitlements.

All

Software Asset
Management
doesn’t reconcile
only maintenance
entitlement unless
they’re linked to
base perpetual
licenses. Therefore,
make sure to relate
the maintenance
entitlement to
base perpetual
entitlements for
correct reconciliation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1032


<!-- page 1033 -->
License types and their impact on software reconciliation (continued)
Publisher applicability

Impact on licensing or
reconciliation in SAM

License type

Description

Step-up

A licensing option that All
enables upgrading
from a lower-tier
edition of a product to
a higher-tier edition,
such as Standard to
Enterprise,without
needing to purchase a
full new license.

If you're covered
under Microsoft
Software Assurance,
you can upgrade
a lower edition
of software, such
as SQL Server
Standard, to a higher
edition, like SQL
Server Enterprise.
Use the Upgraded
Entitlements tab
in the Software
Entitlement form
to link related
versions of your
software under active
maintenance and
your upgrades. For
more information, see
Software entitlement
fields.

Subscription Step-up

Similar to a step-up
All (subscription
license, this license
products)
type applies to
subscription-based
licenses, enabling
upgrades to highertier editions within the
subscription term.

Same as step-up
licenses, but for
subscription software
only.

Add on

Add-on USL is a user
subscription license
that lets you try the
features of a cloudbased Microsoft 365
product or service
while actively using
the perpetual onpremise version. If
you have a perpetual
license with active
SA benefits, this
license enables you
to test the cloud
version without fully
transitioning to the
cloud.

Microsoft

The add-on license
must be associated
with a perpetual
Office legacy license
with active Software
Assurance. Therefore,
you must link the two
licenses for it to work.
For more information,
see Create Microsoft
365 From SA and Addon entitlements in
the Software Asset
Workspace.

From SA

A Microsoft 365
From SA USL is a
user subscription

Microsoft

The From SA license
must be associated
with a perpetual

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1033


<!-- page 1034 -->
License types and their impact on software reconciliation (continued)
License type

Description

Publisher applicability

license that enables
you to transition
from a perpetual onpremise Microsoft
software product to a
corresponding cloudbased Microsoft 365
subscription, while
maintaining certain SA
benefits. This license
is available if you have
a perpetual license for
on-premise Microsoft
software products or
services with active
SA benefits.

Impact on licensing or
reconciliation in SAM

Office legacy license
with active Software
Assurance. Therefore,
you must link the two
licenses for it to work.
For more information,
see Create Microsoft
365 From SA and Addon entitlements in
the Software Asset
Workspace.

Related topics
Software license maintenance
Software entitlement fields

Publisher optimizations for SAP
View licensing optimizations for SAP by selecting SAP from the Publisher drop-down list.

Important: To view recommended licensing optimizations for SAP, you
must activate the Software Asset Management Professional for SAP
plugin (com.sn_samp_sap) on your ServiceNow instance.

Report

Source

Description

Inactive users

SAP System Users

SAP system users who last
logged in over 90 days ago.

[samp_sap_system_user]
System users without a named SAP System Users
user assignment
[samp_sap_system_user]

SAP system users without a
named user assignment.

Locked out licensed SAP
users

SAP System Users

Locked SAP users consuming
a license.

Licensed non dialog users

SAP System Users

[samp_sap_system_user]

[samp_sap_system_user]
Un-used engines

License Metric Results

SAP non-dialog users with a
named user assignment.
Number of SAP engines that
haven’t been used, but have
active software entitlements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1034


<!-- page 1035 -->
Report

Source

Description

[samp_license_metric_result]
Users for role based license
optimization

SAP System Users

Users for transaction based
license optimization

SAP System Users

[samp_sap_system_user]

[samp_sap_system_user]

Number of SAP users that can
have their role changed to
optimize license consumption.
Number of SAP users for
which Software Asset
Management plugin has
detected user transactionbased license optimizations.

HANA database monthly peak SAP License Metric
usage
Measurements

Monthly peak usage of HANA
database in gigabytes (GB)
over the last 12 months.
[samp_sap_license_metric_measurement]

Digital access usage by client/ SAP Digital Access
system
[samp_sap_digital_access]

Total count of Digital Access
licenses consumed, grouped
by the SAP client.

Digital access usage by
document type

Total count of Digital Access
licenses consumed, grouped
by the document type created.

SAP Digital Access
[samp_sap_digital_access]

SAP S/4HANA cloud usage by Software Subscriptions
use type
[samp_sw_subscription]

Number of users by their
SAP cloud use type in SAP
S/4HANA Public Cloud.

Publisher optimizations for Red Hat
View licensing optimizations for Red Hat by selecting Red Hat from the Publisher drop-down list.

Important: To view recommended licensing optimizations for Red
Hat, you must activate the Software Asset Management Professional
for Software Asset Management Professional for IBM plugin
®
(com.sn_samp_ibm) on your ServiceNow instance.

Report

Source

Potential savings by
optimizing licenses

Potential Savings by
Optimizing Licenses

Description

Potential cost savings for
licenses on your physical
[samp_license_optimization_summary]
hosts and clusters that are
based on recommended
license optimizations.

Note: This report
is available only for
on-premise Red Hat
Enterprise Linux (RHEL)
licenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1035


<!-- page 1036 -->
Report

Source

Description

Select the report to
view details about the
recommended license
optimizations and associated
cost savings for each host or
cluster. License optimizations
include the recommended
license, recommended rights,
and recommended spending.

Publisher optimizations for Microsoft
View licensing optimizations for Microsoft by selecting Microsoft from the Publisher drop-down
list.

Important: To view the recommended licensing optimizations for
Microsoft, you must activate the Software Asset Management
Professional for Microsoft plugin (com.snc.samp.microsoft) on
®
your ServiceNow instance. To view the recommended licensing
optimizations for your Microsoft 365 subscriptions, you must also
request and install the Software Asset Management - SaaS License
Management application from the ServiceNow Store .

Report

Microsoft 365 subscription
details

Note: This report
appears only if you
request and install
the Software Asset
Management - SaaS
License Management
application.

Source

Description

• Active and inactive
subscriptions:
Software Subscriptions
[samp_sw_subscription]

Number of active, inactive,
and unassigned user
subscription details for
Microsoft 365 products, which
are grouped by software
models.

• Unassigned
subscriptions: Purchased
Subscription Details
Select a data point to view
[samp_purchased_subscription_details]
more details about the user
subscriptions for a software
model.

• Select the Active
subscriptions bar to
view the active user
subscriptions, where the
last activity date is equal to
or less than 90 days.
• Select the Inactive
subscriptions bar to view
the inactive subscriptions,
where the last activity date
is empty or was before 90
days.
• Select the Unassigned
subscriptions bar to view
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1036


<!-- page 1037 -->
Report

Source

Description

the number of available
rights or user subscriptions
that are unassigned.
Microsoft 365 subscription
assignment details

Software Subscriptions
[samp_sw_subscription]

Number of assigned Microsoft
365 subscriptions. This
report displays assigned
subscriptions for the last six
months.
Select a data point to view
the details of the assigned
subscription such as
Publisher, Product, User, User
principal name, Software
model, and Subscription
profile.

Microsoft 365 potential
savings by type

Note: This report
appears only if you
request and install
the Software Asset
Management - SaaS
License Management
application.

Removal Candidate

Potential monthly savings
[samp_sw_reclamation_candidate]
for your Microsoft 365
licenses that are based on
recommended downgrade,
overlapping, consolidate,
and low usage candidates.
This report displays potential
savings for the last six months.
Select any bar to view
more details about the
recommended downgrade or
dual license candidates for a
given month.
• Select the Low Usage
bar to view the list of
Microsoft 365 low usage
reclamation candidates.
Select a candidate
to view the details,
software installations,
subscriptions to reclaim,
and subscriptions to assign.
• Select the Downgrade bar
to view the list of candidates
that can be downgraded
to a previous version of
Microsoft 365 and Office
365. Select a candidate
to view the details,
software installations,
subscriptions to reclaim,
and subscriptions to assign.
• Select the Overlapping
bar to view the list of
Microsoft 365 overlapping

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1037


<!-- page 1038 -->
Report

Source

Description

reclamation candidates.
Select a candidate to view
the details, subscriptions to
reclaim, and subscriptions
to assign.
• Select the Consolidate
bar to view the list of
Microsoft 365 consolidate
subscriptions reclamation
candidates. Select a
candidate to view the
details, subscriptions to
reclaim, and subscriptions
to assign.
Microsoft 365 optimization
recommendations

Note: This report
appears only if you
request and install
the Software Asset
Management - SaaS
License Management
application.

Removal Candidate

Number of licenses per month
[samp_sw_reclamation_candidate]
that can be downgraded
or reclaimed based on
recommended downgrade,
overlapping, consolidate, and
low usage candidates. This
report displays data for the
last six months.
• Select the Low Usage bar
to view the list of Microsoft
365 candidates that can
be reclaimed based on low
usage.
• Downgrade: Select the
Downgrade bar to view the
list of Microsoft 365 and
Office 365 candidates that
can be downgraded. Select
a candidate from the list to
downgrade the associated
license.
• Overlapping: Select the
Overlapping bar to view
the list of Microsoft 365
overlapping reclamation
candidates. Select a
candidate from the list to
reclaim the associated
license.
• Consolidate: Select the
Consolidate bar to view
the list of consolidated
Microsoft 365 optimization
candidates. Select a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1038


<!-- page 1039 -->
Report

Source

Description

candidate from the list to
reclaim the associated
license.
On-Premises potential
Potential Savings by
savings by optimizing licenses Optimizing Licenses

Potential cost savings for
licenses on your physical
hosts and clusters based
[samp_license_optimization_summary]
on recommended licensing
optimizations.

Note: This report is
available only for the
following Microsoft
license types:
• Per core licenses for
Microsoft SQL Server
and Microsoft BizTalk
Server
• Per core (with CAL)
licenses for Microsoft
Windows Server,
Microsoft Core
Infrastructure Server,
and Microsoft System
Center
Select the report to
view details about the
recommended licensing
optimizations and associated
cost savings for each
host or cluster. Licensing
optimizations include the
recommended license,
recommended rights, and
recommended spending.
On-Premise optimization
realized savings

Microsoft Core License
Optimization Reports

Cost savings that you have
achieved for licenses on your
physical hosts and clusters
[samp_ms_optimization_report] based on recommended
licensing optimizations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1039


<!-- page 1040 -->
Report

Source

Description

Note: This report is
available only for the
following Microsoft
license types:
• Per core licenses for
Microsoft SQL Server
and Microsoft BizTalk
Server
• Per core (with CAL)
licenses for Microsoft
Windows Server,
Microsoft Core
Infrastructure Server,
and Microsoft System
Center
Select the report to view
details about the cost savings
that you have achieved for
each host or cluster.
Related topics
Evaluating software usage activity for Microsoft 365 subscriptions
Reclamation rules for Microsoft 365 integration
Microsoft 365 integration

Publisher optimizations for Adobe
View licensing optimizations for Adobe by selecting Adobe from the Publisher drop-down list.

Important: To view the recommended licensing optimizations for
Adobe, you must activate the Software Asset Management Professional
for Adobe plugin (com.sn_samp_adobe) on your ServiceNow
instance. In addition, you must request and install the Software Asset
Management - SaaS License Management Integrations application from
the ServiceNow Store .

Report

Source

Creative Cloud user activity as Software Subscriptions
per subscription
[samp_sw_subscription]

Description

Number of user subscriptions
per month with meaningful
activity. This report displays
data for all of your Adobe
Creative Cloud All Apps
subscriptions for the last 12
months.
Select any data point to
view the last activity date

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1040


<!-- page 1041 -->
Report

Source

Description

of user subscriptions with
meaningful activity for a given
subscription type.
Creative Cloud potential
savings by type

Removal Candidate

Potential monthly savings for
your Adobe Creative Cloud All
[samp_sw_reclamation_candidate]
Apps licenses that are based
on low usage, double licensed
users, and consolidated
subscriptions. This report
displays potential savings for
the last 12 months.
• Low usage: The Adobe
Creative Cloud applications
not being used for more
than 60 days.
• Dual licensed users: A user
having subscription through
both Adobe Creative Cloud
All Apps and individual
Adobe Creative Cloud
applications.
• Consolidated
subscriptions: A user
having multiple individual
Adobe applications (greater
than 3 by default) and all
these subscriptions are
consolidated to one Adobe
Creative Cloud All Apps
subscription.

Inactive user subscriptions

Software Subscriptions
[samp_sw_subscription]

Unresolved user subscriptions Software Subscriptions
[samp_sw_subscription]

Number of inactive user
subscriptions in the User
[sys_user] table of your
ServiceNow instance based
on the user status.
Number of users not having a
record in the User [sys_user]
table of your ServiceNow
instance.

Related topics
Integrating with Adobe Cloud

Microsoft Core License Optimization Reports fields
Field descriptions for the Microsoft Core License Optimization Reports
[samp_ms_optimization_report] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1041


<!-- page 1042 -->
Microsoft Core License Optimization Reports [samp_ms_optimization_report] table
Field

Description

Product

Microsoft software product that you are optimizing licensing for.

Cluster/Host
Type

Indicates whether the recommended licensing optimization applies to a
cluster or a standalone physical host.

Virtualization
Technology

Virtualization technology that you are using to run virtual machines (VMs)
within the cluster or on the standalone physical host.

Cluster/Host
Reference

Cluster or standalone physical host that the recommended licensing
optimization applies to.

Host Affinity
Configured

Indicates if host affinity rules are configured for the cluster.

Note: Host affinity rules are applicable to clusters only. If the

Cluster/Host Type field is set to Cluster, this field can be set to either
true or false. If the Cluster/Host Type field is set to Standalone Host,
this field is automatically set to false.
Number of Hosts

Number of physical hosts. If the Cluster/Host Type field is set to
Standalone Host, this field is set to 1. If the Cluster/Host Type field is set
to Cluster, this field is set to the total number of physical hosts within the
cluster.

Host Cores

Number of cores within each CPU that is assigned to your physical hosts.
If the Cluster/Host Type field is set to Standalone Host, this field is set to
the number of cores within each CPU that is assigned to the standalone
physical host. If the Cluster/Host Type field is set to Cluster, this field is set
to the number of cores within each CPU that is assigned to a physical host
within the cluster.

Number of VMs

Number of VMs within the cluster or on the standalone physical host.

VM Cores

Number of virtual cores within each virtual CPU (vCPU) that is assigned to
your VMs. If the Cluster/Host Type field is set to Standalone Host, this field
is set to the number of virtual cores within each vCPU that is assigned to the
VMs on the standalone physical host. If the Cluster/Host Type field is set to
Cluster, this field is set to the number of virtual cores within each vCPU that
is assigned to the VMs within the cluster.

Number of VMs
with software
installations

Number of VMs that the Microsoft software product is installed on.

Host Core
Licenses
Required

Number of rights that are required for licensing either the physical hosts
within the cluster or the standalone physical host.

VM Core
Licenses
Required

Number of rights that are required for licensing the VMs within the cluster or
on the standalone physical host.

Current License
Consumption

Type of license and total number of rights that you are currently consuming.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1042


<!-- page 1043 -->
Microsoft Core License Optimization Reports [samp_ms_optimization_report] table
(continued)
Field

Description

Current License
Consumption
Layer

Layer on which you are currently consuming rights. The options are
Physical, Virtual, and Physical/Virtual.

Recommended
License
Consumption

Type of license and total number of rights that you are recommended to
consume.

Recommended
License
Consumption
Layer

Layer on which you are recommended to consume rights. The options are
Physical, Virtual, and Physical/Virtual.

Conservative
License
Consumption

Conservative way to consume rights without applying any licensing
optimizations. For example, you can consume rights for your Microsoft
Windows Server Data Center or Microsoft SQL Server Enterprise licenses
on the host layer.

Conservative
License Cost

Total license cost based on the conservative license consumption.

Recommended
License Cost

Total license cost based on the recommended license consumption and
license consumption layer.

Current License
Cost

Total license cost based on the current license consumption and license
consumption layer.

Recommended
License Applied

Indicates if the recommended licensing optimization has been
implemented on the cluster or standalone physical host.

Licensing Status

Licensing status of the cluster or standalone physical host. The options are
Licensed and Unlicensed.

Has Allocation

Indicates if you have enough rights to allocate to the cluster or standalone
physical host.

Recommendation Summary of the recommended licensing optimization.
Details
Additional Notes

Additional notes about the recommended licensing optimization.

Savings
Achieved

Indicates if you have saved money by implementing the recommended
licensing optimization.

Realized Savings

Amount of money that you have saved by implementing the recommended
licensing optimization.

Potential Savings Amount of money that you can save by implementing the recommended
licensing optimization.

Maturity item details
Fields on the Maturity item details form help you view and update the state and success goal of
the maturity item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1043


<!-- page 1044 -->
Maturity item details
Field

Description

Name

Name of the maturity item.

Type

Type of the maturity item.
• Process
• End user
• SaaS
• Data center
• Cloud

Short description

A brief summary of the maturity item.

Success goal

Success goal associated to the maturity item.
For more information about creating a success
goal, see Create success goals for Software
Asset Management.

State

Current stage of the maturity item.
• New
• Work in Progress
• Closed Complete
• Closed Skipped

Maturity level

Current maturity level.
• Crawl
• Walk
• Run

Suggested maturity level

Suggested maturity level for improved value
return of your SAM application.
• Crawl
• Walk
• Run

Start date

The start date of the maturity item.

Completed date

Completed date of the maturity item.

Purpose

Description of the purpose and outcome for
the maturity item.

Steps to complete

List of steps of how to accomplish the purpose
of the maturity item.

Work notes

Notes about the maturity item, which are
visible to all users within your organization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1044


<!-- page 1045 -->
Maturity stages of your Software Asset Management program
The maturity of your Software Asset Management program is divided into three stages such as
Crawl, Walk, and Run.
Maturity stages
Stage

Description

Crawl

Begin your Software Asset Management
journey, such as implementing or developing
a new Software Asset Management program.
At this stage, you can establish a healthy
Configuration Management Database (CMDB),
identify tools to discover data, and establish
processes and roles. You can focus on Enduser computing or SaaS integrations for which
licensing isn't complex.

Walk

Begin establishing processes, procedures,
policies, resources, and tools to execute
on the roadmap of the Software Asset
Management program. You can automate the
manual processes and procedures, which
you’ve established during the Crawl stage.
Move to more complex licensing models in
datacenter environments, Bring your own
license (BYOL) use cases, and additional
SaaS publishers. You can consider additional
governance and cost control through software
metering and reclamation, identify overlapping
software, and rightsize software estate through
compliance results.

Run

Establish and use mature, standardized,
and automated processes and procedures
for centralized software assets tracking and
system management. You use the standard
catalog and onboarding process for new
catalog items in the purchasing process.
Provide software to end users through
automated on-demand mechanisms and
rightsize your software spend. You must also
be evaluating processes and establishing
Software Asset Management goals regularly.

SAM Success Goal Details
Fields on the SAM Success Goal Details help you create success goals for tracking the success
of the Software Asset Management application in your instance.
SAM Success Goal Details
Field

Description

Number

A unique identifier of the success goal.

Title

The title for the success goal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1045


<!-- page 1046 -->
SAM Success Goal Details (continued)
Field

Description

Status

Status of the success goal. By default, the
success goal is in draft status.

Category

The category the success goal belongs to.

Vendor

Vendor or publisher associated to the success
goal.

Goal Type

Defines the metrics of your goal.
• Savings
• Count

Goal Description

A detailed explanation of the success goal.

Group

The group the goal is to be assigned to.

Owner

The user from the group the goal is assigned
to.

Projected Start Date

The projected start date for the success goal.

Projected End Date

The projected end date for the success goal.

Actual Start Date

The actual start date of the success goal.

Actual End Date

The actual end date of the success goal.

Projected Savings

Anticipated savings from the success goal.
This field is visible only when you set the Goal
Type as Savings.

Actual Savings

The actual savings from the success goal.
This field is visible only when you set the Goal
Type as Savings.

Projected Count

Anticipated count from the success goal.
This field is visible only when you set the Goal
Type as Count.

Actual Count

The actual count from the success goal.
This field is visible only when you set the Goal
Type as Count.

Achievement Description

A description of how the success goal was
achieved.

Related topics
Create success goals for Software Asset Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1046


<!-- page 1047 -->
Sample payload for generic software install records
A sample payload that populates the Software Installation [cmdb_sam_sw_install] table in the
ServiceNow instance with discovery data collected by third-party discovery sources.
The following is a sample payload for creating software install records for publishers such as
Microsoft, IBM. For Oracle, VMware, and Citrix, specialized payloads are used.
In this sample payload, you are passing the information of the installed software, Microsoft Word
2016, and the related CI to inform where it is installed (on a computer CI "SAMILMT8"). You can
look up column names in the cmdb_sam_sw_install table and send information by passing the
columns, value pairs in the payload. For example, in this payload you are sending the publisher,
version and display_name columns. You can also send additional information such as the edition
column.

Note: For more information on CI Identifier rules, see Identifier Rules

.

{ 'items': [{'className':'cmdb_ci_computer',
'related': [{
className:'cmdb_sam_sw_install',
values: {
'publisher':'Microsoft',
'version':'2016',
'display_name':'Word'
}
}
],
'values': {'name':'SAMILMT8'}
}]
}

Element

className
className

name

Value

Description

cmdb_ci_computer

The class name of the
CI.

cmdb_sam_sw_install

The name of the
related table in the
CMDB application
where the CI is to be
created.

publisher Microsoft

The name of the
publisher for whom
this entry is being
created in the table.

version 2016

The version of the
software for which this
entry is created in the
table.

display name Word

The display name for
this entry in the table.

SAMILMT8

Unique identifier of
the CI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1047


<!-- page 1048 -->
Sample payload for Oracle software install records
A sample payload for Oracle publisher pack that populates the Oracle Instance
[cmdb_ci_db_ora_instance] table with software install records from third-party discovery sources.
After you discover Oracle software installs via your discovery source, send a payload that
contains the Oracle Instance and the Oracle options associated with the Oracle Instance.

Note: In the Properties page, make sure to select the Enable scheduled jobs when using
third party Datasource Integration Framework [com.snc.samp.ire.datasource.integration]
property.
When the schedule job, SAM- Software Asset Connections, runs, it looks for records with null
software installs, populates the software install field in the Oracle Instance table and creates the
software install record associated to the instance.
The following is a sample payload to create software install records for Oracle in the Oracle
Instance [cmdb_ci_db_ora_instance] table. The sample input contains a list of CIs and
relationships that exist between these CIs. The payload states that there is an Oracle database
server, Dev development 1969 with a standard edition. The Oracle database server has many
Oracle options enabled such as Armstrong, Aldrin, Collins and runs on a Linux server.
{
'items': [
{
'className': 'cmdb_ci_db_ora_instance',
'related': [
{
'className': 'samp_oracle_options',
'values': {
"option": "Armstrong",
"currently_used": "true"
}
},
{
'className': 'samp_oracle_options',
'values': {
"option": "Aldrin",
"currently_used": "true"
}
},
{
'className': 'samp_oracle_options',
'values': {
"option": "Collins",
"currently_used": "true"
}
}
],
'values': {
'name': 'Dev development 1969',
'edition': 'Standard',
'sid': '1-2-569',
'version': '11.2'
}
},
{
'className': 'cmdb_ci_linux_server',
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1048


<!-- page 1049 -->
'values': {
'name': 'CI DATAI 6-002',
'mac_address': '4653XYZAA',
'ip_address': '10.10.10.8',
'asset_tag': 'HWR0003',
'assigned_to': 'a8f98bb0eb32010045e1a5115206fe3a',
'cpu_count': '16',
'cpu_manufacturer': '820351a1c0a8018b67c73d51c074097c',
'manufacturer': '820351a1c0a8018b67c73d51c074097c',
'os': 'Linux Red Hat',
'os_version': '2.6.9-22.0.1.ELsmp',
'ram': '2014'
}
}
],
'relations': [
{
'type': 'Runs on::Runs',
'parent': 0,
'child': 1
}
]
}

Element

Value

Description

className

cmdb_ci_db_ora_instance

Name of the related Oracle
instance table.

className

samp_oracle_options

Name of the Oracle database
option table.

option

Armstrong

Name of the Oracle database
option.

currently_used

true

Indicates the Armstrong
option is currently enabled.

className

samp_oracle_options

Name of the Oracle database
option table.

option

Aldrin

Name of the Oracle database
option

currently_used

true

Indicates the Aldrin option is
currently enabled.

name

Dev Development 69

Name of the Oracle database
server

edition

standard

edition of the Oracle database
server

sid

1-2-569

Oracle system ID

version

11.2

Version of the Oracle
database server

className

cmdb_ci_linux_server

Name of the related Linux
Server table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1049


<!-- page 1050 -->
Element

Value

Description

mac address

4653XYZAA

MAC address of the interface
in the Linux server.

Sample payload for VMware software install records
A sample payload for VMware publisher pack that populates the VMware Discovered License
key consumption [samp_vmware_license_key_usage] table with software install records from
third-party discovery sources.
After you discover software installs via your discovery source, send a payload via the IRE REST
API endpoint to the ServiceNow instance to populate the VMware Discovered License key
consumption [samp_vmware_license_key_usage] table with software install records.

Note: In the Properties page, make sure to select the Enable scheduled jobs when using
third party Datasource Integration Framework [com.snc.samp.ire.datasource.integration]
property.
1. Send a payload to create a license key in the VMware Discovered License key
[samp_vmware_license_key] table.
2. From the response body of the payload, copy the sys ID of the new license key and paste it in a
text editor for later use.
3. Use the Enhanced IRE API to query the sys IDs of the CIs that use the new license key.
4. From the response body, copy the sys IDs of the CIs and paste them in a text editor for later
use.
5. Send a payload with the sys ID of the license key and the sys ID of the CIs.
6. Run the schedule job, SAM- Update Software Usage to populate the VMware Discovered
License key consumption [samp_vmware_license_key_usage] table with the software install
records.
Request Body
{ 'items': [
{'className':'cmdb_ci_vcenter',
'related': [
{
className:'samp_vmware_license_key',
values:{
'cost_unit':'cpuPackage',
'edition':'esxEnterprisePlus.vram',
'features':'autodeploy,das,dpvmotion',
'license_key':'SYDOJ-28J5Q-78X48-0NC24-REKAR',
'product_name':'VMware
vSphere 5 Enterprise Plus',
'product_version':'5.0',
'rights_owned':'8',
'rights_used':'6'
}
}
],
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1050


<!-- page 1051 -->
'values': {
'name':'VCenter Ref 1A'
}
},
{
'className':'cmdb_ci_win_server',
'values': {'name':'VirtualMachine-WS2'
}
}
],
'relations':[{
'type':'Runs on::Runs',
'parent':0,
'child':1
}]
}
Response Body
{
"result": {
"items": [
{
"className": "cmdb_ci_vcenter",
"operation": "INSERT",
"sysId": "8fb47793e7cc10107aea07d8d2f6a93a",
"relatedSysIds": [
"cbb47793e7cc10107aea07d8d2f6a93f"
],
"relatedItems": [
{
"className": "samp_vmware_license_key",
"sysId": "cbb47793e7cc10107aea07d8d2f6a93f",
"markers": [],
"inputIndices": [
{
"mainIndex": 0,
"subIndex": 0
}
]
}
],
"additionalRelatedItems": [],
"identifierEntrySysId": "Unknown",
"identificationAttempts": [
{
"attributes": [
"name"
],
"identifierName": "VMWare VCenter Ref CI",
"attemptResult": "NO_MATCH",
"searchOnTable": "cmdb_ci_vcenter",
"hybridEntryCiAttributes": []
}
],
"errorCount": 0,
"markers": [],
"inputIndices": [
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1051


<!-- page 1052 -->
0
]
},
{
"className": "cmdb_ci_win_server",
"operation": "UPDATE",
"sysId": "30ccb31ddbe7720087b9fd441d961992",
"identifierEntrySysId":
"556eb250c3400200d8d4bea192d3ae92",
"identificationAttempts": [
{
"attributes": [
"serial_number",
"serial_number_type"
],
"identifierName": "Hardware Rule",
"attemptResult": "SKIPPED",
"searchOnTable": "cmdb_serial_number",
"hybridEntryCiAttributes": []
},
{
"attributes": [
"serial_number"
],
"identifierName": "Hardware Rule",
"attemptResult": "SKIPPED",
"searchOnTable": "cmdb_ci_hardware",
"hybridEntryCiAttributes": []
},
{
"attributes": [
"name"
],
"identifierName": "Hardware Rule",
"attemptResult": "MATCHED",
"searchOnTable": "cmdb_ci_hardware",
"hybridEntryCiAttributes": []
}
],
"errorCount": 0,
"markers": [],
"inputIndices": [
1
]
}
],
"additionalCommittedItems": [],
"relations": [
{
"className": "cmdb_rel_ci",
"operation": "INSERT",
"sysId": "43b47793e7cc10107aea07d8d2f6a940",
"identifierEntrySysId": "Unknown",
"errorCount": 0,
"markers": [],
"inputIndices": [
0
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1052


<!-- page 1053 -->
]
}
],
"additionalCommittedRelations": []
}
}
From this we get the samp_vmware_license_key sys id
"relatedSysIds": [
"cbb47793e7cc10107aea07d8d2f6a93f"
]
-- Obtaining the CI sys id (POST)
role: sam_admin

https://k8s0057813-node1.thunder.lab3.service-now.com/api/now/id
entifyreconcile/queryEnhanced?sysparm_data_source=ServiceNow
Request Body
{ 'items': [ {'className':'cmdb_ci_win_server', 'values':
{'name':'Server-WS11'} }]}
Response Body
{
"result": {
"items": [
{
"className": "cmdb_ci_win_server",
"operation": "UPDATE",
"sysId": "99ccb31ddbe7720087b9fd441d9619da",
"identifierEntrySysId":
"556eb250c3400200d8d4bea192d3ae92",
"identificationAttempts": [
{
"identifierName": "Hardware Rule",
"attemptResult": "SKIPPED",
"attributes": [
"serial_number",
"serial_number_type"
],
"searchOnTable": "cmdb_serial_number",
"hybridEntryCiAttributes": []
},
{
"identifierName": "Hardware Rule",
"attemptResult": "SKIPPED",
"attributes": [
"serial_number"
],
"searchOnTable": "cmdb_ci_hardware",
"hybridEntryCiAttributes": []
},
{
"identifierName": "Hardware Rule",
"attemptResult": "MATCHED",
"attributes": [
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1053


<!-- page 1054 -->
"name"
],
"searchOnTable": "cmdb_ci_hardware",
"hybridEntryCiAttributes": []
}
],
"markers": [],
"inputIndices": [
0
],
"mergedPayloadIds": [],
"errorCount": 0
}
],
"additionalCommittedItems": [],
"relations": [],
"additionalCommittedRelations": []
}
}
where "sysId": "99ccb31ddbe7720087b9fd441d9619da" is the sys id
of the ci/used_by

// create usage table
POST
https://k8s0057813-node1.thunder.lab3.service-now.com/api/now/ta
ble/samp_vmware_license_key_usage?sysparm_fields=sys_id
{"license_key":"cbb47793e7cc10107aea07d8d2f6a93f","rights_used":
"1","used_by":"99ccb31ddbe7720087b9fd441d9619da"}

Element

Value

Description

className

cmdb_ci_vcenter

Name of the table related
[samp_vmware_license_key]
table

className

samp_vmware_license_key

Name of the table where the
license key is created.

className

cmdb_ci_win_server

The name of the Windows
server table

name

VirtualMachine-WS2

Name of the Windows server
virtual machine.

Sample payload for Citrix software install records
A sample payload for the Citrix publisher pack that populates the Software Installation
[cmdb_sam_sw__install] table with software install records from third-party discovery sources.
The Citrix publisher pack supports two products: virtual applications and virtual desktop. For
these products, Citrix supports concurrent licensing and user/device licensing.

Note: For information on license metrics, see Software License Metrics
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1054


<!-- page 1055 -->
The IRE API relies on two CI identifier rules for creating Citrix software install records. The Citrix
License server [cmdb_ci_appl_license_server] identifier populates the CAL entries and the
Citrix Delivery Controller [cmdb_ci_appl_delivery_controler] identifier creates the software install
records.
The CAL entries are used during reconciliation to compare against the purchased rights
in entitlements to get the correct license position for Citrix products. The Citrix License
server identifier provides information on the samp_concurrent_license_consumption and the
samp_user_device_license_consumption tables. Based on your licensing entitlements, you need
to populate either of these two tables.
Send a payload to populate the samp_concurrent_license_consumption or the
samp_user_device_license_consumption table. Ensure that you mention the key attributes for the
tables in the payload:
• samp_concurrent_license_consumption: product_code and number
• samp_user_device_license_consumption: product_code, consumer, and consumer_type

Note: The two tables are passed in one payload since both are related entries of the
parent CI table, cmdb_ci_appl_license_server. In the payload, specify the relationship
between the tables and the CI parent table.
Once you send the payload, entries are created in the samp_concurrent_license_consumption
and the samp_user_device_license_consumption tables. Now execute the scheduled job, SAMCreate Citrix CAL entries, to update the Client Access [samp_sw_client_access] table. Client
access records are created for each product with user/device count.

Note: Ensure that you configure the schedule job, SAM- Create Citrix CAL entries to
execute after processing the payload successfully.
Using the Citrix Delivery Controller [cmdb_ci_appl_delivery_controler] identifier, send a payload
to populate all the 7 Citrix tables. Make sure that you mention the key attributes for the 7 tables in
the payload.

Note: Click Related Entries in the Citrix Delivery Controller identifier to look up the key
attributes (Criterion attributes) for the Citrix tables.

Once the entries are created in the tables, execute the scheduled job, SAM- Create Citrix
Software installs. The Citrix sofware install records are created in the Software Installation
[cmdb_sam_sw_install] table.
{ 'items': [{'className':'cmdb_ci_appl_license_server',
'related': [
{
'className':'samp_concurrent_license_consumption',
'values':{
'product_code':'MW2ZPSE0001',
'in_use_count':511,
'overdraft':11,
'pooled_available':0,
'total_count':500
}
},
{
'className':'samp_user_device_license_consumption',
'values':{
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1055


<!-- page 1056 -->
'product_code':'XDT_PLT_CCS',
'consumer':'consumer1',
'consumer_type':'user'
}
},
{
'className':'samp_user_device_license_consumption',
'values':{
'product_code':'XDT_PLT_CCS',
'consumer':'Device1',
'consumer_type':'device'
}
},
{
'className':'samp_user_device_license_consumption',
'values':{
'product_code':'XDT_PLT_CCS',
'consumer':'consumer2',
'consumer_type':'user'
}
},
{
'className':'samp_user_device_license_consumption',
'values':{
'product_code':'XDT_PLT_CCS',
'consumer':'consumer3',
'consumer_type':'user'
}
},
{
'className':'samp_user_device_license_consumption',
'values':{
'product_code':'XDT_PLT_CCS',
'consumer':'consumer4',
'consumer_type':'user'
}
},
{
'className':'samp_user_device_license_consumption',
'values':{
'product_code':'MW2ZPSE0001',
'consumer':'consumer5',
'consumer_type':'user'
}
},
{
'className':'samp_user_device_license_consumption',
'values':{
'product_code':'MW2ZPSE0001',
'consumer':'Device1',
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1056


<!-- page 1057 -->
'consumer_type':'device'
}
}
],
'values': {
'name': 'ACME License Server 2',
'tcp_port': 22,
'install_directory': 'Documents'
}
},
{
'className':'cmdb_ci_win_server',
'values': {'name':'samlabvm450'}
}
],
'relations':[{
'type':'Runs on::Runs',
'parent':0,
'child':1
}]
}

Sample payload for BYOL
A sample payload that populates the Software Installation [cmdb_sam_sw_install] table in the
ServiceNow instance with discovery data collected by the BYOL licensing model.
Certain entities need to be populated for BYOL to work with software asset connection as a
third party discovery source. The relationship between these entities is crucial for BYOL to work
smoothly with software asset connections. For example, some values required for populating
Cloud Hosts is different for AWS and Azure. Though the object ID and the name of the host is
required for both AWS and Azure, for AWS, the CPU core count is required and for Azure, the host
type value is required. For details on entities and their relationships, refer to Entities for BYOL
and Relationships between the entities for BYOL.
In this example, Cloud Service Account is the topmost entity. All the other entities listed in the
Entities for BYOL table are dependent entities of Cloud Service Account. If an entity is marked
as a dependent entity, then the parent entity and the relationship between that entity and it's
parent needs to be mentioned in the same payload. For example, if you want to create an AWS
data center on Cloud Service Account, you need to include the Cloud Service Account entity in
the same payload; even if Cloud Service Account already exists in your instance. Similarly, when
you create software installations, you need to include all the dependent entities for software
installations all through the hierarchy in the same payload.

Entities for BYOL
Entities

Required fields

Cloud Service Account
[cmdb_ci_cloud_service_account]

account_id – Unique identifier

AWS Datacenters [cmdb_ci_aws_datacenter]

object_id – Unique identifier

Azure Datacenters
[cmdb_ci_azure_datacenter]

object_id – Unique identifier

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1057


<!-- page 1058 -->
Entities

Required fields

Cloud Hosts [cmdb_ci_cloud_host]

Note: Not needed for shared VMs.

• object_id – Unique identifier
• name - name of the host
• host_type - host type for Azure. For example,
DSv3-Type1 (for Azure hosts only).
• cpu_core-count - Total CPU core count of
the host (for AWS hosts only).

Virtual Machine Instances
[cmdb_ci_vm_instance]
Computers [cmdb_ci_computer]

object_id – Unique identifier

• name - name of the virtual machine
• cpu_count - CPU count of the virtual
machine
• cpu_core_count - CPU core count of the
virtual machine
• cpu_core_thread - CPU core thread count of
the virtual machine
• virtual – indicates if the computer is a VM
(always set to true)

Software Installations [cmdb_sam_sw_install]

Note: Software Installations
[cmdb_sam_sw_install] is a related entry
for Computers [cmdb_ci_computer]

• publisher
• version
• display_name
• cloud_license_type - license type of the
cloud install (BYOL or License Included)
• cloud_license_type_source - source from
where cloud license type gets populated.
The value is set to third_party_integration for
Software asset connections.

Relationships between the entities for BYOL
Entity relationships

Type

Parent

Child

AWS/Azure
Datacenters – Cloud
Service Account

Hosted on::Hosts

AWS/Azure
Datacenters

Cloud Service
Account

AWS/Azure
Datacenters – Cloud
Hosts

Hosted on::Hosts

Cloud Hosts

AWS/Azure
Datacenters

AWS/Azure
Datacenters – Virtual
Machine Instances

Hosted on::Hosts

Virtual Machine
Instances

AWS/Azure
Datacenters

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1058


<!-- page 1059 -->
Entity relationships

Type

Parent

Child

Cloud Hosts - Virtual
Machine Instances

Runs on::Runs

Virtual Machine
Instances

Cloud Hosts

Computers - Virtual
Machine Instances

Virtualized
by::Virtualizes

Computers

Virtual Machine
Instances

Sample payload for Computer and Installations for dedicated VM (similar for
AWS and Azure)
In this sample payload, a dedicated computer record is being passed. This computer record
has a related array that contains all the software installations. A VM instance corresponds to the
computer record. Cloud host is the dedicated host on which the virtual machine resides and the
AWS datacenter is to be created on the Cloud Service Account. If you have multiple dedicated
virtual machines, you can send one REST API for each dedicated virtual machine. For example, if
you have 50 dedicated VMs, you need to send 50 REST API calls each having the same payload.
All the software installations on a dedicated VM can be sent in a single payload in the related
array.
var payload = {
'items': [{
'className': 'cmdb_ci_computer',
'values': {
'name': 'Comp - Dedicated AWS - 1',
'cpu_count': 1,
'cpu_core_count': 4,
'cpu_core_thread': 1,
'virtual': true
},
'related': [{
'className': 'cmdb_sam_sw_install',
'values': {
'publisher': 'Microsoft',
'display_name': 'SQL Server',
'version': '2017',
'cloud_license_type': 'BYOL',
'cloud_license_type_source': 'third_party_integration'
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1059


<!-- page 1060 -->
}]
}, {
'className': 'cmdb_ci_vm_instance',
'values': {
'object_id': 'sample_object_id_aws_vm_dedicated',
'name': 'VM Dedicated AWS - 1',
}
}, {
'className': 'cmdb_ci_cloud_host',
'values': {
'object_id': 'sample_object_id_aws_host',
'name': 'AWS Dedicated Host - 1',
'cpu_core_count': 32
}
}, {
'className': 'cmdb_ci_aws_datacenter',
'values': {
'object_id': 'sample_object_id_aws_dc',
'name': 'AWS DataCenter - 1'
}
}, {
'className': 'cmdb_ci_cloud_service_account',
'values': {
'account_id': 'sample_account_id_aws_service_account',
'name': 'Cloud Service Account AWS - 1'
}
}],
'relations': [{
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1060


<!-- page 1061 -->
'type': 'Virtualized by::Virtualizes',
'parent': 0,
'child': 1
}, {
'type': 'Runs on::Runs',
'parent': 1,
'child': 2
},
{
'type': 'Hosted on::Hosts',
'parent': 2,
'child': 3
}, {
'type': 'Hosted on::Hosts',
'parent': 3,
'child': 4
}
]
}

var jsonUntil = new JSON();
var input = jsonUntil.encode(payload);
gs.info("Input: " + input.toString());
var options = {
"partial_payloads": false,
"deduplicate_payloads": true
};
var output =
SNC.IdentificationEngineScriptableApi.createOrUpdateCIEnhanced(
'ServiceNow', input, options);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1061


<!-- page 1062 -->
gs.print("Output:" + output);

SAM Success Activity
Fields on the SAM Success Activity form help you create success activities to track the success
of your created goals.
SAM Success Activity
Field

Description

Number

A unique identifier of the success activity.

Success Goal

The success goal that the activity is being
associated to.

State

The current state of the success activity.
Choose from the following options:
• Pending
• Open
• Closed Complete
• Closed Incomplete
• Closed Skipped

Assignment group

The group this activity is assigned to.

Assigned to

A particular person in the assigned group.

Short description

A short description of the success activity.

Description

A detailed description of the success activity.

Work notes

Notes relating to the success activity.

SaaS detection report
Use the SaaS detection report to discover and manage all SaaS applications accessed via a
®
browser and configured within the ServiceNow Agent Client Collector for Visibility - Content
(ACC-VC) product. The SaaS applications that can be managed through this report can be paid
or free ones.

Important: To view the SaaS detection report, you must do the following:
• Request and install the latest version of the Software Asset Management -SaaS License
Management application from the ServiceNow Store . For more information, see Request
SaaS License Management.
• Install the Agent Client Collector for Visibility - Content (ACC-VC) product version 1.3.0 or
later.
This report helps you manage your shadow IT spend more effectively by viewing all the users
who access these applications, the usage of these applications, and how long each application
has been used.

Note: By default, the SaaS detection report displays data from the past 90 days.
To view this report, navigate to Software Asset Workspace > License usage > Reports.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1062


<!-- page 1063 -->
The SaaS detection report includes domain-separated data when Domain Support - Domain
Extensions Installer (com.glide.domain.msp_extensions.installer) and Performance Analytics Domain Support (com.snc.pa.domain_support) are activated.
SaaS detection
Field

Description

Product

The name of the SaaS application that is being
discovered.

Publisher

Publisher of the SaaS application.
Publisher is a reference to the Software
Publishers [samp_sw_publisher] table.

Is monitored

Indicates whether ACC-VC is monitoring the
product or not.
• If the product is monitored by the ACC-VC
application, the Is monitored column value
shows as true.
• If the product isn't monitored by the ACC-VC
application, the Is monitored column value
shows as false.

Is managed

Indicates whether the product is managed or
unmanaged.
• If a software model exists for a product, the
Is managed column value shows as true.
• If a software model doesn't exist for a
product, the Is managed column value
shows as false.

URL(s)

URL or multiple URLs for your SaaS
application.

Total users

Total number of users who have accessed the
product.
Select the value in this column to view more
information about the users in the User Usage
Data table.

Last accessed time

The time when the product was last accessed
by a user.

Total accessed time

Total duration for which the product has been
accessed by its users.

User Usage Data
Field

Description

Discovered user

User referenced from the Discovered Users
[samp_discovered_user] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1063


<!-- page 1064 -->
User Usage Data (continued)
Field

Description

User

User accessing the application.

Device

Device or CI from which the user accessed the
application.

Cost center

Allotted cost center of the user in an
organization.

Department

Department of the user in an organization.

Total accessed time

Total duration for which the application has
been accessed by a user.

Last accessed time

Last time when the application was accessed
by a user.

Scheduled jobs for Microsoft 365
Your Microsoft 365 integration profile is set to fetch subscription and usage information
automatically from the Microsoft 365 Admin Center on a schedule. If needed, you can also
manually run the following scheduled jobs to get this information. Each job must be complete
before starting the next one.

Sequence

Scheduled job

Run frequency

Description

1

SAM - Import M365
User Subscriptions

Weekly

Imports user
subscriptions data
for each Microsoft
365 product into the
Software Subscription
[samp_sw_subscription]
table.

2

SAM - Collect
Microsoft 365 Usage

Daily

Collects usage data
for each Microsoft
365 product in the
Software Usages
[samp_sw_usage]
table.

3

SAM - Create
New Reclamation
Candidates for Office
365 Integration

Weekly

Generates removal
candidates for
Microsoft 365 and
Office 365.

4

SAM - Microsoft 365
Daily Job

Daily

Populates charts
based on the data
available in the
subscription table and
reclamation candidate
table.

Related topics
Integrating with Microsoft 365
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1064


<!-- page 1065 -->
Scheduled jobs for Adobe
Your Adobe integration profile is set to fetch subscription and usage information automatically
from the Adobe portal on a scheduled basis. If needed, you can also run the following scheduled
jobs manually to get this information. Each job must be complete before starting the next one.

Scheduled job

Run frequency

Description

SAM - Import Adobe User
Subscriptions

Weekly

Imports and updates the
Adobe Cloud application
subscription data into the
Software Asset Management
application from the Adobe
Admin Console. This data
provides visibility into all
Adobe user subscriptions
and the users to whom the
subscriptions are assigned
in the Adobe portal. The user
subscription data can be
viewed in the Software Asset
Workspace.

SAM - Optimize Adobe
Subscriptions

Monthly

Adobe subscription data is
pulled into the Software Asset
Management application
when the SAM - Import
Adobe User Subscriptions
scheduled job runs. When the
subscription data is pulled,
the SAM - Optimize Adobe
Subscriptions scheduled job
optimizes the Adobe Creative
Cloud subscriptions based on
usage.

Reclamation rules
Reclamation rules define the minimum amount of time for which a subscription must be used.
If the subscription doesn't have any activity within a specified time limit, it's added to the list of
reclamation candidates.
For each direct integration, the user activity is defined differently. Only one of the listed activities
is required to occur within the specified time limit, not all of them.

Direct integration

Activity

Adobe Cloud

Any user activity

Aha!

User login

Note: The analysis period is 60 days.
Asana

• Tasks created
• Tasks completed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1065


<!-- page 1066 -->
Direct integration

Activity

• Subtasks created
• Subtasks completed
• Assigning tasks or subtasks
• Moving tasks or subtasks between projects
• Comments added to tasks or subtasks
• Story created
Box

• User login
• Any file activity, including 60 actions such as create, edit, delete,
share, upload, or download

Calendly

Schedule an event

Confluence Cloud

Create or update a space, page, blog post, comment, or attachment

Docusign

Subscription assigned date

Dropbox

• User login
• Any file activity, including 60 actions such as create, edit, delete,
share, upload, or download

Google Workspace

Google Drive and Google Docs
Any file activity, such as create, edit, delete, upload,
download, or sync
Gmail
Any email activity, such as read, create, edit, send, or
delete

GitHub

• Create a commit comment
• Create a Git branch or tag
• Delete a Git branch or tag
• Fork a repository
• Create or update a Wiki page
• Any issue comment activity, such as create, edit, or delete
• Any issue activity, such as open, close, reopen, assign, unassign,
label, or unlabel
• Any repository collaborator activity, such as editing the collaborator
access permissions
• Make a private repository public
• Any pull request activity, such as open, close, reopen, assign,
unassign, review, unlabel, and synchronize
• Any pull request review comment activity
• Push at least one commit to a repository branch or tag

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1066


<!-- page 1067 -->
Direct integration

Activity

• Any release activity, such as publish or edit
• Any sponsorship listing activity
• Star a repository
GoTo

GoToMeeting
Host a meeting
GoToWebinar
Host a webinar or meeting
GoToConnect
Make a call using a GoToConnect line

Jira Software

• Create an issue
• Comment on an issue
• Update a comment on an issue
• Activities in the following categories:
◦ Auditing
◦ Project changes
◦ Permission changes
◦ Workflow changes
◦ Notification changes
◦ Custom field changes
◦ Advanced Roadmaps changes

Looker

User's last login

Microsoft 365

Any user activity

Microsoft Dynamics Create or update the following records in Dynamics 365:
365 and Power Apps
• Common entities
◦ Account
◦ Contact
◦ Goal
◦ Product
◦ User
◦ Phone Call
◦ Task
◦ Letter
◦ Email
◦ Appointment
◦ Fax
◦ Custom Activities
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1067


