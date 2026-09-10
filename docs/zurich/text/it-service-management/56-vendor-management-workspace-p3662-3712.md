# Zurich IT Service Management — Vendor Management Workspace

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3662–3712 of 3857

Sections: Vendor Management Workspace (p3662); Explore (p3663); Configure (p3669); Manage (p3689); Reference (p3704)

---

<!-- page 3662 -->
Slash commands (continued)
Commands

Description

/now list incidents

Lists all active incidents assigned to the user.

/now oncall [group name]

Displays shifts and members who are currently
on-call for a group.

Note: Only a user with the itil or the
admin role can execute this command.
Slash commands that can be run only from channels associated with ServiceNow
/now comment [comment]

Posts a comment in the Additional comments
field of the associated incident.

/now note [note]

Posts a note in the Work notes field of the
associated incident.

/now assigntome

Assigns associated incident to the slack user.

/now assign [@slack_user]

Assigns associated incident to a specific user.

Vendor Management Workspace
Monitor the performance of your company's vendors and manage all vendor-related information
®
using the ServiceNow Vendor Management Workspace. Assess the performance of your
vendors using key performance indicators (KPIs) that you can configure to create vendor metrics.

Get started

Important: Starting with the Australia release, Vendor Management Workspace for ITSM
will be hidden and no longer available for activation for new customers. For details, see the
Deprecation Process [KB0867184]
article in the Now Support Knowledge Base.
Track and analyze how your vendors are executing on their goals and which areas need
attention from a unified, central location. Integrate data from Service Portfolio Management
(SPM), Contract Management, Assets, SLA Contracts, Vendor Risk Management, and Continual
Improvement Management (CIM) applications.

Explore

Configure

Monitor metrics and analyze
your vendor's health using
Vendor Management Workspace.

Plan and configure your implementation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3662


<!-- page 3663 -->
Manage

Reference

Manage all vendor-related information
using Vendor Management Workspace.

Refer to roles, tables, properties,
and indicators used in Vendor
Management Workspace.

Troubleshoot and get help
• ServiceNow Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Vendor Management Workspace
Use Vendor Management Workspace to monitor metrics and analyze your vendor's health from
a single user interface. Gain insights when you compare top-performing vendors and track
compensation your vendors owe you when they breach the service agreement.

Vendor Management Workspace overview
The video provides an overview of Vendor Management Workspace.
https://player.vimeo.com/video/1014361687?
h=6ef117ba57&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
As a vendor manager, you can:
• Organize your vendors into vendor KPI groups and analyze vendor performance.
• Gain insights into how your vendors are performing in comparison with other vendors in your
organization.
• Track the compensation that you vendors owe for breaching service agreements.

Vendor Management Workspace users
Users
User

Description

Vendor admin

Vendor admins can add vendors and set up
vendor metrics.

Vendor manager

Vendor managers use Vendor Management
Workspace to evaluate vendor health.

UI builder admin

Using UI builder, UI builder admins can
customize Vendor Management Workspace
based on the users' needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3663


<!-- page 3664 -->
Vendor Management Workspace workflow

In this workflow:
1. Administrators activate Vendor Management Workspace. The application is installed after the
Vendor Manager Workspace (sn_itsm_vendor) plugin is activated. Vendor administrators can
then configure the application and vendor managers can use the application.

Note: After the administrators activate Vendor Management Workspace, they can also
customize Vendor Management Workspace using UI Builder

.

2. Vendor admins can create KPI groups so that vendor managers can track vendor metrics.
3. Vendor admins and vendor managers can do any of the following:
◦ Integrate with other ServiceNow applications to assess vendors who use data from other
applications.
◦ Generate vendor satisfaction assessment to measure stakeholder satisfaction.
◦ Create improvement initiatives to track tasks to improve a service, process, or a task.
◦ Create performance targets to set goals to achieve desired vendor scores.
4. Vendor managers can do any of the following:
◦ Create service credits to track vendor breach of agreements.
◦ Create vendor tickets to track issues as they arise.
◦ Associate SLAs and service commitments with vendors to monitor how quickly vendors
resolve issues.
◦ Analyze vendor metrics using the vendor KPI group data.
◦ Monitor vendor performance within a KPI group and assess them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3664


<!-- page 3665 -->
Vendor Management Workspace benefits
Benefit

Feature

Users

Add vendors and set up vendor metrics to
analyze their performance goals.

Configuring Vendor
Management
Workspace

Vendor admin

Monitor vendor metrics and evaluate vendor
Managing vendors
health using Vendor Management Workspace. using Vendor
Management
Workspace

Vendor manager

Bring in data from other ServiceNow
applications to assess the relationship with
your vendors.

Integrating Vendor
Management
Workspace with
other ServiceNow
applications

Vendor admin

Create custom web experience in Vendor
Management Workspace based on your
needs.

Customize a Vendor
Management
Workspace page
using UI Builder

Admin, Workspace
admin, or UI builder
admin

Vendor KPI Groups in Vendor Management Workspace
Learn how you can organize your vendors into vendor KPI groups. You can then define Key
Performance Indicators (KPI) to analyze the performance of all vendors within that vendor KPI
group. Drill down into the metrics for a vendor, KPI or the KPI group—all from a central location.
As a vendor administrator, you can:
• Create a vendor KPI group for a common set of indicators (KPIs) you use to measure the
performance of all vendors in that group.
• Add KPIs to the vendor KPI group.
• Add vendors that you want to measure using the KPIs.
• Define upper and lower thresholds to monitor the indicator status.
As a vendor manager, you can:
• Analyze the performance trends for your vendors as well as the performance for associated
service offerings, contracts, improvement initiatives, and SLA definitions.
• Drill down into vendors, a KPI group, or a KPI to view trends and historical performance.
Understanding Vendor KPI Groups setup and use in Vendor Management Workspace
Learn how you can organize your vendors into Vendor KPI Groups. Understand how you can
set up Vendor KPI Groups and how vendor scores get calculated and displayed in the Vendor
Management Workspace.
Set up and use the Vendor Management Workspace configurable using User Interface Builder
(UIB) with five simple steps:
1. Organize similar types of vendors into vendor KPI group categories.
2. Add a common set of KPIs that matter most to this type of vendors.
3. Set upper and lower thresholds for each vendor KPI group to monitor the status of the KPIs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3665


<!-- page 3666 -->
4. Add vendors to the KPI groups.
For information on setting up KPI groups, see Create KPI groups to track metrics for your
vendors.
5. Analyze vendor health using Vendor Management Workspace. For information on using
Vendor Management Workspace, see Use Vendor Management Workspace in the UIB
workspace.
Related topics
Example: Vendor Management Workspace setup
Example for Vendor Management Workspace setup
Learn how you can create KPI groups using Vendor Management Workspace with an example.

Before you begin

Role required: sn_vlm.vendor_admin

About this task

Let's assume that a vendor manager wants to create a vendor KPI group for all of their software
vendors. They want to associate KPIs with the vendor KPI group to measure the performance of
all vendors in the vendor KPI group.

Procedure
1. Create a KPI group.
a. Navigate to Vendor Management > Configuration > KPI Groups
b. Click New
c. Create a vendor KPI group for software vendors.
i. In the Name field, enter Software.
ii. In the Description field, enter a description such as, "This KPI Group is for software
vendors."
iii. In the Type menu, select Vendors.
iv. Right-click the form header and click Save.
2. Associate three KPIs with the vendor KPI group to evaluate the software vendors in that group.
a. In the KPIs related list, click New.
b. In the KPI field, click the search icon, select each of the indicators listed below and click
Submit to add the KPIs to the group.
▪ Vendor Satisfaction with the Display Aggregate set to Average.
▪ Vendor Requested Items.
▪ Total Incidents Created with the Display Aggregate set to Sum.
3. Add a weight value, which represents the relative order of importance, for each KPI that
contributes towards the vendor score.
◦ For Vendor Satisfaction, set the weight value to 60.
◦ For Average Stability Requested Items set the weight value to 40.
◦ For Total Incidents Created, set the weight value to 0, which indicates that it does not
contribute to the vendor score calculation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3666


<!-- page 3667 -->
The combined weight of all indicators added to the KPI group must be equal to 100. If the
combined weight is above or below 100, then they are proportionately readjusted to 100.
4. Associate thresholds to the KPI group.
Define a range for the threshold values and assign a state for each range. For example, you
can assign the lower threshold as 0 and the upper threshold as 60 and define the status as
critical. .
Each range has a color associated with it by default. When the vendor score is calculated for
the vendors in the vendor KPI group, the score displays the highlighted color associated with
the threshold range in the Vendor Management Workspace
For example:
a. In the KPI Group Thresholds related list, click New.
▪ In the Lower Threshold field, enter 0.
▪ In the Upper Threshold field, enter 60.
▪ In the Status menu, select Critical.
▪ In the Order field, enter 200.
b. Click Submit.
Here is another example which shows that if the threshold values overlap between two
different ranges, the one with a lower order number will be given preference.
a. In the KPI Group Thresholds related list, click New.
▪ In the Lower Threshold field, enter 50.
▪ In the Upper Threshold field, enter 80.
▪ In the Status menu, select Moderate.
▪ In the Order field, enter 300.
b. Click Submit.
Because the KPI group threshold value of 60 overlaps between the two sets of thresholds set
above, the preference is given to the KPI group threshold that has the Critical status because
it has a lower order number. Therefore, if the KPI threshold has a value of 60, the highlighted
color for that value in Vendor Management Workspace displays in the color set for the Critical
status.
5. Add thresholds for the individual KPIs.
After you set the thresholds, you can view the KPI values in highlighted colors that correspond
to each threshold range for the KPI in Vendor Management Workspace.
a. In the KPIs related list, click the preview icon next to the KPI for which you want to set the
threshold and click Open Record.
b. In the KPI Thresholds related list, click New.
▪ In the Lower Threshold field, enter 60.
▪ In the Upper Threshold field, enter 80.
▪ In the Status menu, select Moderate.
▪ In the Order field, enter 300.
c. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3667


<!-- page 3668 -->
The threshold values for the KPI are highlighted with the
color based on the threshold range in Vendor Management

Workspace.
6. Add vendors to the KPI group.
a. In the Vendors related list, click Edit.
b. Add the vendors you want to add to the KPI group and click Save.

Vendor Success Indicators in Vendor Management Workspace
Gain insights into how your vendors are performing in comparison with other vendors in your
organization. Using the chi-square test, find out which attributes contribute to the success of your
vendors.

Important: You must install the Success Indicators (com.snc.vendor.insights) plugin
separately from the ServiceNow Store. For more information, see Activate Vendor
Management Workspace.
You can also see what common characteristics contribute to high performance. Identify gaps that
could enhance the performance of your vendors and create improvement initiatives based on
these insights. The Vendor Success Indicators application includes the following five modules:

Module Name

Description

Attributes

Identify and set up attributes that may correlate to the success of the
vendor performance. Attributes are key data points such as geographical
location, or contract costs. For the attributes available by default with your
application, see Attributes installed with Vendor Success Indicators.

Executions

Displays the table and filter conditions based on the scheduled job that is
run to collect the comparison data.

Inputs

Collects the data derived by the attributes specific to a vendor when the
scheduled job is run.

Results

Displays high-performing attributes based on the inputs using Predictive
Intelligence.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3668


<!-- page 3669 -->
Module Name

Description

Properties

Properties to collect comparison data. For detailed information on
properties for Vendor Success Indicators, see Properties installed with
Vendor Success Indicators.

As a vendor admin, you can:
• Configure attributes for vendor success indicators to compare common characteristics against
top-performing vendors.
• Run a scheduled job to collect attribute data and generate results that can be viewed on
Vendor Management Workspace.
As a vendor manager, you can:
• Understand which attributes were used for comparing the vendors.
• Analyze how your vendors are ranked against the same attributes as compared with all other
vendors in your organization.
• Get insights into the attributes that contribute to the success of high-performing vendors.
Related topics
Setting up Vendor Success Indicators
Compare your vendor characteristics with high-performing vendors

Service Credits in Vendor Management Workspace
Track and manage the compensation that your vendors owe your organization when they breach
the service agreement you have with them.

Important: This application is being prepared for future deprecation. It will be hidden
and no longer available for activation but will continue to be supported. For details, see the
Deprecation process [KB0867184] .
Using Service Credits, you can:
• Track the compensation for every breach the vendor has made to the service agreement.
• Analyze the cumulative effect of multiple breaches by the same vendor from one location.
• Determine the credits your vendors owe you based on the breach count or the duration of
each breach.
• Mark off credits that you've redeemed, which automatically calculates the amount that the
vendor has paid off and the remaining amount, if any, they might still owe your organization.
• Associate service agreement breaches based on an outage, incident, service availability, or for
the vendor.
• Create vendor tickets to monitor and resolve issues with your products and services. For more
information, see Create a vendor ticket in Vendor Management Workspace.
Related topics
Create a service credit in Vendor Management Workspace

Configuring Vendor Management Workspace
Plan and configure your Vendor Management Workspace implementation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3669


<!-- page 3670 -->
Configuration overview
Use Vendor Management Workspace to create vendors, service credits, or vendor tickets and to
set up Vendor Success Indicators.
Find tasks that you need to complete to configure Vendor Management Workspace.

Benefit

Task

Turn on Vendor Management Workspace.

Activate Vendor Management Workspace

Clone an existing Vendor Management
Workspace page and customize it.

Customize a Vendor Management Workspace
page using UI Builder

Add a vendor to Vendor Management
Workspace.

Create a vendor in Vendor Management
Workspace.

Generate Vendor Satisfaction Assessment
to assess how satisfied your stakeholders are
with the vendors they collaborate with.

Generate the Vendor Satisfaction Assessment
in Vendor Management Workspace

Create KPI groups to track vendor metrics.

Create KPI groups to track metrics for your
vendors

Create improvement initiatives in Vendor
Management Workspace.

Create an improvement in Vendor
Management Workspace

Create a service credit in Vendor Management Create a service credit in Vendor Management
Workspace.
Workspace
Integrate with Third-party Risk Management.

Configuring Third-party Risk Management

Activate Vendor Management Workspace
The Vendor Manager Workspace (sn_itsm_vendor) plugin is available with the ITSM Pro
subscription package. This plugin activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task
Vendor Management Workspace plugins
Plugin

Vendor Manager Workspace (sn_itsm_vendor)

Note: This is a ServiceNow Store plugin.
You must install this plugin separately from
the ServiceNow Store .

Description

Activates the Performance Analytics
Premium for Service Management
(com.snc.pa.premium.service_management)
plugin that adds the following functionality
to Vendor Management Workspace:
• Create indicators, breakdowns, and other
records.
• Create text analytics widgets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3670


<!-- page 3671 -->
Vendor Management Workspace plugins (continued)
Plugin

Description

• Use Performance Analytics with external
data.
• Preserve performance scores beyond 180
days.
Activates the Continual Improvement
Management (com.sn_cim) plugin. This
plugin enables you to monitor the continual
improvement initiatives that your vendors
are engaged with.
Vendor Success Indicators
(com.snc.vendor.insights)

Important: This plugin is being planned
for deprecation after August 1, 2024. It
will be hidden and no longer available
for activation for new customers but will
continue to work and be supported for
existing customers. For details, see the
Deprecation process [KB0867184] .

Activates success indicators and adds
the following functionality to gain insights
into how your vendors are performing in
comparison with other vendors in your
organization.

Vendor Management Mobile (sn_vendor_mobile) Activates the Vendor Mobile Agent app

Important: This plugin is being prepared
for future deprecation. It will be hidden and
no longer available for activation but will
continue to be supported. For details, see
the Deprecation process [KB0867184] .

Note: This is a ServiceNow Store plugin.
You must install this plugin separately from
the ServiceNow Store .

Important: Starting with Yokohama release, the following applications within Vendor
Management Workspace are being prepared for future deprecation. They will be hidden
and no longer available for activation but will continue to be supported. For details, see the
Deprecation Process [KB0867184]
article in the Now Support Knowledge Base.
• Performance Analytics Content Pack - Vendor Management Workspace
• Vendor Management Workspace UI Components
• Vendor Manager Workspace Demo Data
• Service Credits
• Vendor Management Mobile
You can also integrate Vendor Management Workspace with the Vendor Risk Management
application when you enable the Vendor Risk Management (app-vendor-risk-management)
plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3671


<!-- page 3672 -->
If you have downloaded the Vendor Risk Management application that is available from the
ServiceNow Store, you can view the risk rating for your vendors. For more information on
downloading the Vendor Risk Management application, refer to Download a GRC application
from the ServiceNow Store for the first time .
When you enable the GRC: Vendor Risk Management Workspace (sn_vrm_ws) plugin from
the ServiceNow Store you can view Vendor Risk Workspace within the Vendor Management
Workspace application.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .

Customize a Vendor Management Workspace page using UI Builder
Clone an existing Vendor Management Workspace page variant and customize it based on your
needs using the UI Builder.

Before you begin

Role required: admin, workspace_admin, or ui_builder_admin

About this task

All UI Builder pages and page variants are read-only. You can copy a page variant and then
customize it. You can create a page variant from scratch or use a page template. For more
information, see Create a variant of a page .

Note: After you copy and customize a page variant, any automatic updates applied to
the original read-only page variant will not be applied to the page variant that you have
customized.
To open your configurable workspace experience in UI Builder, see Open a Configurable
Workspace experience
For a list of all workspaces ServiceNow offers to target specific users, see List of workspaces

.

Procedure
1. Navigate to All > UI Builder.
2. In the UI Builder screen, select Vendor Management Workspace.
3. In the Page menu, select the page you want to edit.
4. In the Variants section, select the menu icon (
Duplicate.

) of the variant you would like to copy select

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3672


<!-- page 3673 -->
5. In the variant that you've duplicated, select the menu icon (
settings.

) and select Edit page variant

6. In the Edit settings pop-up window, do the following:
◦ In the Variant name field, enter a unique name for the variant.
◦ If you would like to use a different page template, in the Page template field, select the page
template.
◦ Select Save to keep the changes.
If you do not want to make any updates, select Cancel or select Delete to delete the variant.
7. Select the menu icon (

) and select Edit conditions.

◦ To add or edit conditions for the variant, in the Variant Conditions field, add your preferred
conditions for the variant.
◦ To display the variant in Vendor Management Workspace, in the Order field, set the
preferred order number.
8. Select Done.
Related topics
Configuring the Next Experience UI

Integrating Vendor Management Workspace with other ServiceNow
applications
Bring in data from other ServiceNow applications to assess the relationship with your vendors.
The image shows a comprehensive view of all applications
that you could integrate with Vendor Management Workspace.

The table provides a description of each application that can be integrated with Vendor
Management Workspace.
Vendor Management Workspace integration applications
Application

Description

Continual Improvement Management

Monitor, plan, and measure your organization's
vendor processes and functions. Track
performance improvements or optimization
initiatives by viewing the continual

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3673


<!-- page 3674 -->
Vendor Management Workspace integration applications (continued)
Application

Description

improvement initiatives a vendor is engaged
in.
Contract Management

Manage binding vendor agreements between
two parties. Discover how many active
contracts a vendor has to evaluate the
financial impact the vendor has on your
company.

Source-to-Pay Operations

Vendor onboarding using supplier table
reference on core_company table.

Vendor Risk Management

Monitor potential risks associated with vendor
third-party relationships. Use a centralized
process to view and manage risks associated
with your vendor portfolio and completing the
vendor assessment and remediation life cycle.

Process mining

Discover inefficiencies in your business
processes and optimize them.

Service Credits

Track and manage the compensation that your
vendors owe your organization when they
breach the service agreement you have with
them.

Service Portfolio Management

Document and manage vendor services using
a standardized, structured format.

Assessments and Surveys

Assess how satisfied your stakeholders are
with the vendors they collaborate with.

Performance Analytics

Manage key vendor metrics using a
dashboard.

Incident Management

Restore normal vendor service operations
while minimizing business impact.

Service Catalog

Request vendor catalog items using selfservice.

Service Offerings

Refine vendor services to a specific business
need. Understand the active service offerings
and unique service offering subscribers
associated with your vendors. Use this
information to evaluate the business impact a
vendor has on your company.

Digital Portfolio Management (DPM)

Manage solutions such as service and service
offerings from one location.

Service Commitment

Specific vendor services that define the
unique characteristics for a service offering.

Service Level Management

Manage vendor requirements on agreed SLAs.
Find out how many active SLA definitions
a vendor has to monitor their service level
agreements with your company.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3674


<!-- page 3675 -->
Vendor Management Workspace integration applications (continued)
Application

Description

Service Level Agreement Definition

Manage vendor SLA definitions.

Browser support for workspaces

Important: Due to significant performance issues, ServiceNow recommends that
customers migrate away from Internet Explorer 11. For more information, refer to
KB0683275 .

Create a vendor in Vendor Management Workspace
Add vendors to your existing vendor list or modify the existing vendor-related information.

Before you begin

Role required: sn_vlm.vendor_admin or sn_vlm.vendor_manager

About this task

Define the information to include in a vendor record. For example, contact and contract
information, the assigned vendor manager, and evaluation criteria.
Note: Only users with the admin role can create a new vendor record. Users with the
sn_vlm.vendor_manager role can edit existing vendor records.
For administrators, creating a vendor record entails simply adding general vendor information
to a new record, for example, the vendor name and address, and updating the list. Vendor
managers can then define the vendor record by adding more specific details about the vendor,
such as, who manages the vendor, what state the vendor is in, internal and external contacts,
and more.
Before defining the vendor record, vendor managers benefit from reviewing the Company form
and planning and collecting all pertinent information about the vendor.

Procedure
1. To create a new vendor, administrators navigate to Vendor Management > All Vendors and
click New.
Alternatively, to edit an existing vendor record, vendor managers click the name of the vendor
to open the Company form. Add to or change form field data as needed. To delete an existing
vendor, click the delete button in the form header.
2. Fill in the form fields, as appropriate.
Company form
Field

Description

Name

The vendor providing this service. Typically this is the company name.

Vendor state

Status of the vendor.

Website

The URL for the vendor's website.

Rank tier

Ranking that represents the organization opinion of the products from this
vendor.

Vendor
manager

Person who manages the vendor. Add yourself as the manager or click the
lock icon to add one or more users as vendor managers.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3675


<!-- page 3676 -->
Field

Description

Note: Select only users who have the sn_vlm.vendor_manager role.
Business
owner

Person who owns the vendor company.

Parent

The vendor's parent company.

Notes

Additional information about the vendor.

General tab
Vendor type

Type of business that applies to the vendor, for example, service, hardware, or
software.

Vendor

Check box that's selected by default, to recognize this company as a vendor
in the system.

Manufacturer Check box to indicate if this company is a manufacturer.
Number of
employees

The number of employees for the vendor.

Relationship
start date

The date when you started engaging with the vendor.

Banner
image

The image to appear in the vendor scorecard header. This is usually the
vendor's company logo.

Note: The image should be approximately 60–70 pixels high, and in
one of these file formats: .jpg, .png, .bmp, .gif, .jpeg, and .ico.
Banner text

Text for the vendor scorecard, such as the company slogan.

Unique
subscribers

The total number of subscribers to the product offered by the vendor.

Location tab
Street

Name of the street where the vendor is located.

City

Name of the City where the vendor is located.

State /
Province

Name of the state or province where the vendor is located.

Zip / Postal
code

Zip code where the vendor is located.

Country

Country where the vendor is located.

Phone

Vendor's primary contact number.

Fax phone

Vendor's fax number.

Latitude

The geographical latitudinal coordinate for the vendor location.

Longitude

The geographical longitudinal coordinate for the vendor location.

Financial tab
Publicly
traded

Check box indicating if the vendor is a publicly traded company.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3676


<!-- page 3677 -->
Field

Description

Stock symbol The vendor's stock symbol.
Stock price

The vendor's stock price.

Total Cost of
Contracts

Cost of all contracts.

Revenue per
year

The annual revenue generated by the vendor.

Market cap

The market cap for the vendor.

Profit

The vendor's profit margin.

Fiscal year

The date on which the vendor fiscal year ends. Click the calendar icon to
select the date.

3. Right click in the header to save the new vendor record.
The following related links and related lists appear.

Field

Description

Related Links
Create Service
Credit

Credit that the vendor owes your organization because of a breached
business service contract. Click to create a service credit if necessary.

See Vendor's
Profile

General information, including performance metrics, about the vendor in
the Vendor Management Workspace.

Companies

Name of companies you want to associate with the vendor.

Service
Offerings

Business services offered by this vendor.

Service
Service commitments negotiated with the vendor. For example, a cloud
Commitment for services vendor commits to 95% uptime.
Vendor
Improvement
Initiatives

Improvement initiatives associated with the vendor.

Service Credits

Service credits associated with the vendor.

Contracts

Contracts established with the vendor and the contract status.

SLA Definitions

SLA definitions associated with the vendor.

Vendor Catalog
Items

Catalog items from the vendor that are available for users to order.

Vendor
Stakeholders

Stakeholders associated with the vendor via the Assessments and
Surveys application.

Product Models

Product models related to the vendor for vendors that are designated as
manufacturers.

Assets

Assets purchased from the vendor that are available for assignment to in
use.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3677


<!-- page 3678 -->
4. Click any related list tab to view existing information or click New within a related list to create a
new record.
5. Click Submit to save your vendor record or click Update after editing a vendor record.

Generate the Vendor Satisfaction Assessment in Vendor Management
Workspace
Use Assessments and Surveys to assess how satisfied your stakeholders are with the vendors
they collaborate with. Generate assessments using the Vendor Satisfaction Assessment metric
type that comes with the Vendor Management Workspace application.

Before you begin

Role required: assessment_admin or sn_vlm.vendor_manager

About this task

The Vendor Satisfaction Assessment metric type is used to measure the satisfaction of
stakeholders who collaborate with your vendors. This metric type uses the Vendor Satisfaction
metric category to determine the vendor satisfaction score that displays in Vendor Management
Workspace. Any new categories that are added to the metric type do not contribute towards the
calculation of the vendor satisfaction score.

Procedure
1. Navigate to All > Vendor Management > Assessment Administration > Types.
2. Set the desired conditions for the Company [core_company] table.
a. Select Vendor Satisfaction Assessment.
For descriptions of the assessment metric type fields, refer to Configure an assessment

.

b. Select the Conditions tab.
c. Add the desired filter conditions for the Company [core_company] table.
d. Click Update.
3. Associate users to the metric categories for the assessment.
a. In the Metric Categories tab, select Vendor Satisfaction.
b. In the Users tab, select Edit.
c. Add all users you want to associate with vendors to the Users List for Vendor Satisfaction.
d. Select Save.
4. Associate users with vendors.
a. Navigate to Vendor Management > Assessment Administration > Stakeholders.
b. Select the Vendor Satisfaction Assessment metric type.
c. Select a user from Category Users.
d. Select the vendor you want to associate the user with from Assessable Records.
e. Select Associate.
f. Optional: Associate additional users to vendors.
5. Optional: Verify the association of users to vendors.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3678


<!-- page 3679 -->
a. Navigate to All > Assessments > Advanced > Assessment Stakeholder.
b. Verify the association between the user and the vendor.

Note: The Category user field lists all users and the Assessable record field display
the associated vendors.
6. Generate the assessment.
a. Navigate to All > Vendor Management > Assessment Administration > Types.
b. In the Assessment Metric Types record, select Vendor Satisfaction Assessment.
c. Select Generate Assessments.
Related topics
Configure an assessment
Survey Management
Assessment metrics

Add a formula indicator to track vendor score
Create a custom formula indicator to add to your calculation for the vendor score. Add the
indicator to your KPI group to analyze the score.

Before you begin

Role required: pa_contributor, pa_data_collector, pa_power_user, or pa_admin

Procedure
1. Navigate to All > Performance Analytics > Indicators > Formula Indicators.
2. Select New.
3. Fill in the fields on the form.
a. In the Name field, enter a descriptive name for the formula indicator.
b. Fill in the Indicator properties section.

Name

Description

Direction

▪ Select Maximize if an increase in score is
desired.
▪ Select Minimize if a decrease in score is
desired.

Unit

Select the percentage (%) value.

Precision

Rounding of the fractional results.

c. In the Formula section, select Browse for an indicator.
The Add an indicator to a formula appears.
d. In the Indicator field, select the indicator you want to add to the formula.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3679


<!-- page 3680 -->
e. Click Select.
f. Add any mathematical operators such as +, -, *, or %.
g. If you need to add more indicators, select the Browse for an indicator link and add more
indicators to the formula based on the score you want to calculate.
4. Select and hold (or right-click) the form header and select Save.
5. Add a vendor breakdown for the indicator.
a. In the Breakdowns related list, select Edit.
b. Select Vendors from the Collection list and add it to the Breakdowns list.
c. Select Save.
6. Add the indicator to the vendor KPI group.
a. Navigate to All > Vendor Management > Configuration > KPI Groups.
b. Select the KPI group to which you want to add the formula indicator.
c. In the KPIs related list, select New.
The KPIs form appears.
d. In the KPI field, select the formula indicator you've created.
e. In the Order field, set the order number.
f. Select Submit.

Note: In the KPI Group form, make sure the combined weight of all KPIs in the KPIs
related list adds to 100. If the combined weight is over 100, then the weight will be
proportionately readjusted to 100.

Result

The formula indicator is added to the KPI group and is used for calculating the vendor score in
Vendor Management Workspace.
For detailed information on creating a formula indicator, see Create a formula indicator

.

Create KPI groups to track metrics for your vendors
Create key performance indicator (KPI) groups and include KPIs that matter most for your
vendors. Associate the KPI groups with your vendors, set thresholds to monitor indicator status,
and analyze vendor performance.

Before you begin
Configure Performance analytics indicators
that you want to add to each vendor KPI group.
For a list of indicators that are available by default refer to Installed with Vendor Management
Workspace.
The indicators must have a vendor breakdown on the Company [core_company] table with
associated vendors.
You can configure and track up to six KPIs with a percentage value that contribute towards the
vendor score. Add 15 more KPIs with any unit value to analyze additional data.
For each indicator, configure:
• A weight value—A numeric value that indicates the percentage of contribution towards the
vendor score. This value represents the importance of that indicator relative to other indicators
within that KPI group. Each indicator is weighted against 100% of the combined weight of all
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3680


<!-- page 3681 -->
indicators added to the KPI group. If the combined weight is over or under 100 %, then the
weight of the indicators will be proportionately readjusted to 100.
• Order of priority—You can also establish the order of priority in which you want these indicators
to appear on the vendor profile.
• Thresholds—Define upper and lower limit values to assess vendor performance for each
indicator.
Role required: sn_vlm.vendor_admin

Procedure
1. Navigate to All > Vendor Management > Configuration > KPI Groups.
2. Create a KPI group.

Note: You can also open an existing KPI group, create a copy of it, and modify it based
on your needs.
a. Click New.
b. In the Name field, enter a name for the KPI group.
c. From the Type menu, select Vendors.
d. Right-click the form header and click Save.
3. Add KPIs to a KPI group.
a. In the KPIs related list, click New.

Field

Description

Indicator

Descriptive name for the indicator.

Indicator display name Business-friendly name for the indicator. This name displays
in the Vendor KPI Groups widget in Vendor Management
Workspace.
Weight

The percentage of the total score you would like to attribute to this
indicator. The combined weight of all indicators added to a KPI
group must equal to 100.

Order

The order of priority in which you want this indicator to display
in the Vendor Score Metrics widget in Vendor Management
Workspace.

Lower Threshold

Lower limit defined for this indicator. You can view the highlighted
value seen in Vendor Management Workspace vendor profile.

Upper Threshold

Upper limit defined for this indicator. You can view the highlighted
value seen in Vendor Management Workspace.

b. In the KPI field, select the KPI to apply for this vendor.

Note: The KPI could also have child KPIs that you could drill down into.
c. Click Submit.
4. Set KPI thresholds for a KPI group.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3681


<!-- page 3682 -->
a. In the KPI Group Thresholds related list, click New.
b. In the Lower Threshold field, enter the lower threshold limit to be used for the status defined
for the KPI group.
c. In the Upper Threshold field, enter the upper threshold limit to be used for the status
defined for the KPI group.
d. In the Order field, enter a number for the defined threshold limits. This number must be
unique for each set of limits.
e. In the Status field, select the status for the defined threshold as critical, positive, or warning.

Note: The corresponding icon for each status displays in the manager workspace when
the Show Icon check box is enabled for the status. This is enabled by default for the
critical status.
5. Add vendors to the KPI groups.
a. In the Vendors related list, click Edit.
b. Move the desired vendors from the Collection to the Vendors list.
c. Click Save.

What to do next

Associate the KPI group to vendors.

Create an improvement in Vendor Management Workspace
Create an improvement initiative for a vendor to track and manage tasks for improving a service,
process, or tasks related to vendors.

Before you begin

The Continual Improvement Management (com.sn_cim) plugin must be activated. For more
information on activating the plugin, see Request Continual Improvement Management.
You can view your vendor initiatives by navigating to Vendor Management > Improvement
Initiatives.
Role required: sn_vlm.vendor_manager, sn_vlm.vendor_admin, or admin

Procedure
1. Navigate to Vendor Management > Workspace.
2. Click the Vendor Home icon.
3. From the list, go to Vendors > All Vendors.
4. Select a vendor to create the improvement initiative.
5. Create an improvement initiative.
To create an initiative

From the vendor profile

Do this

a. Select the Improvement Initiatives tab.
b. Click New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3682


<!-- page 3683 -->
To create an initiative

Do this

a. On the vendor profile screen, click the indicator for which
you want to create the initiative.
b. On the indicator screen, click the ellipses icon and then se­
lect Create CIM Initiative.
The Improvement KPI field is automatically populated with
the name of the selected indicator.

From an indicator

From a vendor success indi­
cator

a. Click the Success Indicators icon (

).

b. Select an indicator.
c. Click Create CIM Initiative.

6. In the Vendor field, select the vendor for which you want to create the initiative.
7. In the Service offering field, select the service offering for which you want to set improvement
goals.
8. Fill in all required fields to complete the initiatives.
For information on field descriptions, see Improvement field descriptions
9. Optional: If you want to add supporting documents, click Browse and select the file.
10. Click Save.

Create a service credit in Vendor Management Workspace
Create a service credit record each time the vendor breaches the agreement. The breaches are
typically associated with an outage, incident, or SLA breaches.

Before you begin

From Vendor Management Workspace, you can create service credits from an incident, outage,
or service availability record based on the conditions listed in the table below.

Record

Incident

Conditions for creating a service credit

• The incident state is On Hold.
• The on hold reason is Awaiting Vendor.

Outage

The configuration item field in the outage record must be configured to a
service offering.

Service
availability

The service offering must be configured in the service availability record.

Role required: sn_vlm.vendor_manager
You must have the sn_incident_read role enabled to view service credit reports.

Procedure
1. Navigate to All > Vendor Management > Workspace.
2. Click the Vendor Home icon.
3. Create a service credit from a vendor, incident, outage, or a service offering.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3683


<!-- page 3684 -->
To create a service credit

Do this

a. Click the Lists tab.
b. Click All Vendors.

From a vendor

c. Select a vendor to create the service credit.
d. Click the Service Credit tab.
a. Click the Lists tab.

From an incident, outage, or
service availability

b. Select the incident, outage, or service availability list to cre­
ate the service credit.
c. Select an record for which you want to create a service
credit.
d. Click the overflow icon and select Create Service Credit.

4. Click New.
Fill in the following fields as required:

Field

Description

Number

System generated reference number for this credit record.

Vendor

Name of the vendor.

Service offering

Service offering related to this vendor.

Service commitment

Specific service commitment that affects this vendor credit.

Service availability

Business service availability commitment that affects this vendor
credit.

Related incident

Number of any incidents related to these vendor products.

Related outage

Actual outage that created the vendor credit. The value in this field
is from the Short description in the outage record.

Vendor contract

Contract for this vendor, if any. Choose a contract for the specified
vendor. These contracts can be in any state.

Reference number

Any reference that pertains to this credit, for example, a
confirmation number from the vendor or the name of a contact.

Breach penalty time

Duration of the breach. This value is the elapsed time of the creditgenerating event and is inherited from the Service commitment
selected.

Breach penalty amount

Total amount of credit due from this event, inherited from the
Service commitment selected.

Per

Unit for calculating the breach penalty amount, inherited from the
Service commitment selected.

Credit used

Check box indicating that credit from this vendor has been
recovered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3684


<!-- page 3685 -->
Field

Description

Notes

Notes pertaining to this credit record, for example, to keep track of
recovered credit.

5. Click Save.

Create a vendor ticket in Vendor Management Workspace
Create vendor tickets to monitor how quickly your vendors resolve issues for your products and
services.

Before you begin

Role required: sn_vlm.vendor_manager

Procedure
1. Navigate to All > Vendor Management > Workspace.
2. Select the List icon.
3. Select the incident, outage, or a service availability list to create a vendor ticket.
4. Create a vendor ticket from an incident, outage, or a service availability.

Record

Conditions to set for creating a vendor ticket

Incident

◦ The incident state is On Hold.
◦ The on hold reason is Awaiting Vendor.

Outage

The configuration item field in the outage record must be configured to a
service offering.

Service
availability

The service offering must be configured in the service availability record.

5. In the Vendor field, select the vendor associated with the incident.
6. In the Vendor Ticket field, enter a ticket or incident number provided by the vendor.
This ticket is the vendor identification number for the issue that's being resolved by the vendor.
7. Select Save.

Setting up Vendor Success Indicators in Vendor Management Workspace
Configure attributes that can give you meaningful insights when comparing top-performing
vendors.

Important: You must install the Success Indicators (com.snc.vendor.insights) plugin
separately from the ServiceNow Store. For more information, see Activate Vendor
Management Workspace.
You can configure either tables or indicators to define attributes. The base evaluating table for
the vendor success indicator is the Company [core_company] table.
Use properties to configure the Vendor Success Indicators. For more information, see Properties
installed with Vendor Success Indicators.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3685


<!-- page 3686 -->
Set up table attributes in Vendor Management Workspace
Configure attributes for a table to compare them with top-performing vendors.

Before you begin

Role required: sn_vlm.vendor_admin

About this task

The fields for a selected table display all supported string and
numeric data types. The allowed data types are defined in the

sn_app_ml_insights.attr_datatype_inclusion_list system property. For more
information, see Properties installed with Vendor Success Indicators.

Procedure
1. Navigate to All > Vendor Management > Success Indicators > Attributes.
2. Click New.
3. In the Name field, enter a unique name for the evaluating attribute.
4. In the Type field, select Table.
5. Set up the field attributes.
To configure attributes for

Do this

In the Configuration section, select Company [core_com­
pany] from the Table list. This table is the same as the base
evaluating table.
◦ For configuring a field that has a string datatype:
a. From the Field Name list, select the string datatype, for
example, Country. A pop-up shows the number of dis­
tinct values available for this field. You can categorize
these values based on how you want to evaluate your
vendors.

Note: Set the number of string
The Company [core_compa­
ny] table

datatype values you want to allow be­
fore you categorize them using the

sn_app_ml_insights.attr_category_string_value_l
system property. For more information, see Proper­
ties installed with Vendor Success Indicators.
b. Right-click the form header and click Save.
c. In the Success Indicator Attribute Categories related list,
click New.
i. In the Category field, enter the name to group a set of
attribute values.
ii. In the Field Value field, move the desired fields to the
Selected list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3686


<!-- page 3687 -->
To configure attributes for

Do this

iii. Click Submit.

Note: Repeat this step to add each category for
the selected field.
d. Click Update. The attribute is added to the Success Indi­
cator Attribute list.
◦ For configuring a field that has a numeric datatype:
a. From the Field name list, select the numeric datatype,
for example Relationship Start Date.
b. Click Submit.

Note: The Upper Threshold (Age in Days), Low­

er Threshold (Age in Days), and Direction fields
are populated automatically. If you select a numer­
ic field type with a date value, the application cal­
culates the number of days between the threshold
values and represents them as age.
a. In the Configuration section, select any table other than
Company [core_company] from the Table list.
b. From the Field Name list, select a field.
c. From the Collection Type field, select one of the following:
▪ Field Value: Calculates the actual value for the selected
field.

Note: If the selected field is a numeric type, the
Any table other than the Com­
pany [core_company] table

Upper Threshold, Lower Threshold, and Direction
fields are populated automatically.
▪ Record Count: Counts the number of records with valid
values that match the conditions defined in the Normal­
ization Script field.
The application sets the relationship between the base
evaluating table and the table used for selecting the at­
tribute using the sourceIDField and encodedQuery
fields.
d. Click Submit.

Example:

Example 1: In the example configuration shown in the following image:
• The table used for configuring the vendor success attributes is the same as the base table,
Company [core_company].
• The field name selected, which is Country, is a string data type.
The pop-up message shows that the attribute Country has nine distinct values.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3687


<!-- page 3688 -->
The nine values for Country are Germany, Ireland, Switzerland, Israel, Japan, South Korea,
Canada, U.S., and USA. You have the option of configuring the attributes for Country by grouping
them into categories such as EMEA, APAC, and AMS.

Example 2: In the example configuration shown in the following image:
• The table used for configuring the vendor success attributes is not the same as the base table,
Company [core_company].
• The field selected for setting attributes has the numeric data type, sourceId.

Set up indicator attributes in Vendor Management Workspace
Configure indicator attributes to compare them with top-performing vendors.

Before you begin

Role required: sn_vlm.vendor_admin

Note: For an overview on how to set up Vendor Success Indicators, see Setting up Vendor
Success Indicators in Vendor Management Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3688


<!-- page 3689 -->
Procedure
1. Navigate to All > Vendor Management Workspace > Success Indicators > Attributes.
2. Click New.
3. In the Name field, enter a unique name for the evaluating attribute.
4. In the Type field, select Indicator.
5. In the Configuration section, from the Indicator field, select an indicator with the Company
[core_company] breakdown from which you want to derive attributes.
The High and Low fields are automatically populated based on the recommended values and
the Direction field is set to Maximize by default.
6. Click Submit.

Example:

The following image shows an example configuration where the attribute is of type indicator.

Managing vendors using Vendor Management Workspace
Analyze vendor KPI groups and compare vendor characteristics with high-performing vendors
using Vendor Management Workspace.

Vendor Management Workspace landing page
Monitor vendor metrics, the number of recently created contracts, the ones that are ending soon
and the number of active improvement initiatives at any given time. See which characteristics
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3689


<!-- page 3690 -->
contribute to the success of your vendors. View how your vendors are ranked against those
characteristics in comparison to other vendors.
You can clone an existing landing page and customize it using the Next Experience UI Builder.
For more information, see Customize a Vendor Management Workpace page using the Next
Experience UI Builder.

Required Vendor Manager Workspace roles
If you have the Vendor Manager [sn_vlm.vendor_manager] role, you can access the Vendor
Management Workspace landing page.

Use cases
End user and goal

Required role

As a vendor manager, you can analyze real-time
details such as:

Vendor Manager [sn_vlm.vendor_manager]

• Breakdown of vendors by KPI groups.
• How many new contracts were created in the
last 30 days.

To view reports on catalog items ordered, the
sc_req_item access control list (ACL) must
be enabled.

• How many contracts are ending in the next 90
days.
• Number of continual improvement initiatives
that are currently open.
• The top five vendor success indicators.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3690


<!-- page 3691 -->
Indicators
Vendor score
Vendor performance of all vendors in your organization that's based on their vendor
score for the last 90 days.
Vendor satisfaction
Satisfaction of stakeholders who collaborate with your vendors.

Breakdowns
The indicators breakdown is by vendors.

Data visualizations
Select a visualization to drill down and analyze further details.

Title

Type

Vendors by KPI group

Source table

Description

Company
[core_company]

Breakdown of vendors
KPI groups.

Contract
[ast_contract]

Number of contracts
created in the last 30
days.

Contract
[ast_contract]

Number of contracts
ending the next 90
days.

Donut
New contracts

Single

score
Contracts ending

Single

score
Improvement
initiatives

Single

Improvement Initiative Number of active
[sn_cim_register]
improvement
initiatives.

score

Analyze Vendor KPI Groups
After you set up vendor KPI Groups, you can analyze the metrics related to all of your vendors
in one location. You can search all vendor-related information such as incidents, outages,
improvement initiatives, and vendors and find associated records.

Before you begin

Role required: sn_vlm.vendor_manager

About this task

In workspace, you can sort the list by vendor types and analyze the performance of each vendor
type in a single view. You can then drill down to each vendor and analyze additional data. You
can also add attachments for the vendor profile in the Vendor Details section and download
added attachments.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3691


<!-- page 3692 -->
Procedure
1. Navigate to All > Vendor Management > Workspace.
2. Analyze the vendor score.
For information on how the vendor score is calculated, refer to Calculating the vendor score.
The color indicator that highlights the vendor score in the header shows you how the vendor is
performing based on the set threshold.

Note: The VMW:Update Vendor Score scheduled job is set to run daily. If you want to
view updated score, you can run this scheduled job at any time.
3. Click each indicator widget to view the breakdown for that metric.
You can view:
◦ A single-score widget that displays the indicator metric.
◦ A time-series widget that shows the trend line for the selected KPI group and date range.
▪ When you select the end date as the day before the current date, you can view the actual
and the forecast trend for the selected KPI.
▪ You can select a specific day in the time-series to analyze the vendor performance for the
selected KPI on that day.
◦ A breakdown of related service offerings for the selected KPI group and date range.
◦ Threshold for each indicator highlighted to provide a visual indication for each service
offering

Note: You can analyze the key performance indicator (KPI) status such as Critical,
Positive, or Warning for each vendor if your system administrator has enabled the
display of the indicator status in Vendor Management Workspace. The indicator status
to display KPI thresholds defined as critical is enabled by default.
For the breakdown on the Vendor Satisfaction indicator, you can also view the Assessments
Completed widget that displays the results of vendor satisfaction surveys.
4. Add supporting documents to a vendor profile.
a. In the Vendor Details section, click the attachments icon .
b. Click Browse and select the desired file to attach to the profile.
c. Optionally, you can click the ellipses icon and download, replace, or remove the attachment.

Compare your vendor characteristics with high-performing vendors in Vendor
Management Workspace
Monitor the attributes that define your vendor performance and compare them with topperforming vendors.

Before you begin

Important: You must install the Success Indicators (com.snc.vendor.insights) plugin
separately from the ServiceNow Store. For more information, see Activate Vendor
Management Workspace.

Role required: sn_vlm.vendor_manager
Vendor Success Indicators uses the chi-square test that compares two values to see if they’re
statistically different from what is expected.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3692


<!-- page 3693 -->
Note:
• The comparisons depend on how well the density curve of the chi-square value is
distributed between the vendor characteristics.
• When the degree of freedom is 1, then the p-value that measures probability between
your comparisons must be less than 0.05 to have a statistical significance.
• Ideally, your comparison data must include at least 5 vendor records each that have
values closer to the upper and lower thresholds.

Procedure
1. Navigate to All > Vendor Management > Workspace.
2. Select a vendor.
3. Select the Success Indicators icon (

).

4. Analyze the metrics for your vendors and compare them against top

performers.

Note: Vendors must meet the following criteria for evaluating against top-performing
vendors:
◦ Have a vendor KPI group assigned to them
◦ Have a valid vendor score
Only vendors who have a vendor KPI group assigned to them and also have a valid
vendor score will be used for evaluating against top-performing vendors.
The preceding image shows an example of success indicators for the company Cloud
MSP. The success indicators provide insight into the top five attributes across all vendors
that contribute to high performance. These indicators are displayed in the order of their
contribution to the performance ranking which is as follows:
a. Average Availability
b. Average SLA Achievement
c. Avg Perf Score of SO
d. Avg. Customer Satisfaction
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3693


<!-- page 3694 -->
For numeric attributes, the interpretation of the value depends on the direction set for the
indicator.
5. Select See more to drill down into the data.
The following image shows the drill down data for the Average Performance Score for Service
Offerings.

Descriptions for the single-score widget drill-down data
Name

Description

Vendor display name

Displays the score for the selected attribute. The Rank field
shows the overall vendor ranking for the attribute.

[Example: Cloud MSP]

Note: If the score falls outside the range of ranked
vendors, the ranking displays as unranked.
My Top Performing Vendor

For the selected attribute, displays the score for the attribute.
It also displays the ranking of the highest performing vendor
among all the vendors that you manage.

Top Performing Vendor

For the selected attribute, displays the score for the attribute.
It also displays the ranking of the highest performing vendor
among all vendors in your organization.

Descriptions for the list view drill-down data
Name

Description

My Top Vendors

Displays the ranking and success indicator attribute details of
all vendors that you manage.

Top Vendors

Displays the ranking and success indicator attribute details of
all vendors in your organization.

You can select a rank or the name of a vendor to view the vendor profile.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3694


<!-- page 3695 -->
Compare vendor performance within a vendor KPI group
Monitor the performance of all vendors within a KPI group to assess their performance.

Before you begin

Role required: sn_vlm.vendor_manager

Procedure
1. Navigate to All > Vendor Management > Workspace.
2. Click the Performance icon (

).

3. From the KPI groups list, select the group for which you want to compare vendor performance.
4. In the Start date field, click the calendar icon and select the date from which you want to start
analyzing the data.
5. In the End date field, click the calendar icon and select the date up to which you want to
analyze the data.
The vendors and the indicator scores display for the selected KPI group and the date

range.

Add targets for vendor score KPIs
Set key performance indicator goals for an indicator that contributes to the vendor score so that
you can monitor and improve baseline measurements.

Before you begin
Role required:

To set a global target, you need the pa_target_admin and sn_vlm.vendor_manager roles.
To set a personal target, you need the sn_vlm.vendor_manager role.

Procedure
1. Navigate to All > Vendor Management > Workspace.
2. Click the Performance icon (

).

3. Click on a performance score for an indicator for which you want to set a target.
4. Click the target icon (

) to display the target pane.

5. Set the KPI target.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3695


<!-- page 3696 -->
To

Do this

a. Click the plus (+) icon.
b. Set the target type.
▪ To set a global target, click For Everyone.
▪ To set a personal target, click For me.
c. In the New value field, enter a target value you'd like to get
your indicator score to.

Note: This value could be based on the previous tar­

To create a target

get, the average KPI score you want to achieve over a pe­
riod, or a specific value.
d. In the Target start date field, enter the date you want to start
tracking the goal for the target.
e. In the End review date field, enter the date you want to start
tracking the goal for the target.
f. Click Save.
a. Select the target you want to update.
b. In the New value field, enter a target value you'd like to get
your indicator score to.

Note: This value could be based on the previous tar­
get, the average KPI score you want to achieve over a pe­
riod, or a specific value.

To update an existing tar­
get

c. In the Target start date field, enter the date you want to start
tracking the goal for the target.
d. In the End review date field, enter the date you want to start
tracking the goal for the target.
e. Click Update.
Related topics
Performance Analytics targets

Associate contracts with vendors
Create a contract and associate it with the vendor who is responsible for the contract.

Before you begin

Role required: sn_vlm.vendor_manager

Procedure
1. Navigate to Workspaces > Vendor Management Workspace.
2. Select the List icon.
3. Go to Contracts > All Vendor Contracts.
4. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3696


<!-- page 3697 -->
5. Fill in the fields on the form.
For information on the field descriptions, see Create a contract

.

Note: The start date must be the current day or a day before the current day.
6. Select Save.
In the List menu, go to Contracts > My Vendor Contracts to view the contract you've created.

Associate SLAs and Service Commitments with Vendors
Create a vendor SLA and a service commitment and associate that with a vendor.

Before you begin

Role required: sn_vlm.vendor_manager and sla_manager

Procedure
1. Navigate to Workspaces > Vendor Management Workspace.
2. Select the List icon.
3. Create an SLA definition.
a. Go to Service Levels > All Vendor SLAs.
b. Select New.
c. Fill in the fields on the form.
For information on field descriptions, see Create an SLA definition.
d. Select Save.
4. Create an SLA breakdown definition.
a. In the SLA definition that you've created, select the SLA Breakdown definitions tab.
b. Select New.
c. In the SLA breakdown definition field, select the definition.
d. Select Save.
5. Create a service commitment.
a. In the SLA definition that you've created, select the Service commitments tab.
b. Select New.
c. Fill in the fields on the form.
d. Select Save.
In the List menu, go to Service Levels > My Vendor SLAs to view the vendor SLA and service
commitment you've created.

Identifying bottlenecks using Process Mining integration with Vendor
Management Workspace
Get insights into your vendors' performance and analyze anomalies or bottlenecks within the
process when you drill down into a Key Performance Indicator (KPI).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3697


<!-- page 3698 -->
Important: You must add the Process Optimization analyst
(sn_process_optimization_analyst) role manually to perform tasks related to the Process
Mining. For information on adding a role, see Create a role .
Create a Process Mining project for a KPI group
Create projects for each KPI group for which you want to mine the data.

Before you begin

Your administrator must have enabled the sn_itsm_vendor.enable.po.vm system
property to enable the mining. For more information on this system property, see Installed with
Vendor Management workspace.
Role required: sn_process_optimization_analyst

About this task

Important: The process mining projects for Vendor Management Workspace are created
only for the incident table. Only templates of type Default are supported for creating the
projects.

Procedure
1. Navigate to All > Vendor Management > Configuration > KPI Groups.
2. Select a KPI group.
3. Select Initiate Process Mining.
The process mining is run on vendors within the KPI group and on all automated and formula
indicators in the KPI group. If you're using a formula indicator for process mining, you can
select any indicator source that is used in the formula.

Note: When you select Initiate Process Mining and mine the vendor data for the first
time, it creates the project and then adds the vendors to the project. When you add a
KPI that is not part of the same table as the other KPIs, or if you add or remove vendors
from the KPI group within this project, the changes are synchronized when the Process
Mining - VM Remine Projects scheduled job runs the next time. You can also
select Initiate Process Mining and run it to synchronize the changes immediately.
A corresponding project is created in the All > Vendor Management > Configuration > VM
Projects module. When the mining is complete, the Mining state field changes to Available.
When you navigate to Vendor Management > Configuration > Process Mining Project
Mapping, you can see the relationship between the indicator, KPI group, project definition, and
the table for the project you've mined.
Get insights into your vendors' performance
Get insights into process bottlenecks and find potential areas that you could optimize. You can
also view variation analysis.

Before you begin

Role required: sn_process_optimization_analyst
• The Process Mining - VM Remine Projects job fetches
projects that have not been mined based on the settings in the
sn_itsm_vendor.po_mining.run_frequency system property. For more
information, see Installed with Vendor Management Workspace.
• You must have mined the project for that KPI group for which you want to analyze process
insights. For more information, see Create a Process Mining project for a KPI group.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3698


<!-- page 3699 -->
About this task

The data is mined starting with the beginning of the previous month. For example, if the current
date is June 26, 2023 then the data is mined starting at May 1, 2023.

Procedure
1. Navigate to Workspaces > Vendor Manager Workspace.
2. Select the List icon.
3. Go to Vendors > All Vendors.
4. Select the vendor for which you want to analyze process insights.
5. Drill down into a KPI, for example, Total incidents created.
6. Select the Process analysis tab and perform process insights and variation analysis.

Note:
◦ Select the Vendor Breakdown tab to view the details of the relationship of vendors to a
table.
◦ Process mining can only be performed on KPIs based on the incident table.
You can analyze the process insights for the last 30 days, excluding the current day, for
which you’ve mined the data. For more information on business insights, see View business
insights .
Related topics
Analyze and get process insights
Explore and compare workflow routes

ITSM Vendor Management Mobile for Vendor Management Workspace
Using the ITSM Vendor Management Mobile app, vendor managers can access vendor details
including vendor performance and monitor issues that are most important to them.
ITSM Vendor Management Mobile dashboard
Analyze vendors by KPI group. You can see which contracts were created in the last 30 days and
which ones are ending in the next 90 days. Monitor improvement initiatives for your vendors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3699


<!-- page 3700 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3700


<!-- page 3701 -->
Required Vendor Management Mobile roles
If you have the Vendor Manager [sn_vlm.vendor_manager] role, you can access the Vendor
Management Mobile landing page.

Use cases
End user and goal

Required role

As a vendor manager, you can analyze real-time
details such as:

Vendor Manager [sn_vlm.vendor_manager]

• Breakdown of vendors by KPI groups.
• How many new contracts were created in the
last 30 days.
• How many contracts are ending in the next 90
days.
• Analyze improvement initiatives for your
vendors.

Data visualizations
Title

Type

Vendors by KPI group

Source table

Description

Company
[core_company]

Breakdown of vendors
by metric model.

Contract
[ast_contract]

Number of contracts
created in the last 30
days.

Contract
[ast_contract]

Number of contracts
ending the next 90
days.

Donut
New contracts

Single

score
Contracts ending

Single

score
Improvement
initiatives

Single

score

Improvement Initiative Number of
[sn_cim_register]
improvement
initiatives created for
your vendors.

Lists
Access the following vendor lists on the Vendor Management Mobile dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3701


<!-- page 3702 -->
Name

Description

My Vendors

List of all vendors managed by the vendor manager.

All Vendors

List of all vendors in your organization.

My Vendor Incidents

List of all incidents monitored by the vendor manager.

My Vendor Outages

List of all outages monitored by the vendor manager.

My Vendors Breached SLA

List of breached SLAs monitored by the vendor manager.

Access Vendor Management Mobile on your ServiceNow agent app
Install the ServiceNow agent app to enable the application on your mobile device. Scan the QR
code or manually enter the address of your instance in the agent app to access your instance on
the mobile device.

Before you begin

To enable you to manage and monitor vendor incidents, outages, and breached SLAs on your
mobile app, your system administrator should have completed the following tasks:
• On your ServiceNow desktop application instance, install Vendor Manager Workspace
(sn_itsm_vendor) plugin.
• On your ServiceNow desktop application instance, install the Vendor Management Mobile
(sn_vendor_mobile) plugin.
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Role required: sn_vlm.vendor_manager

Procedure
1. On your mobile device, install the ServiceNow Agent app from the Apple App Store or Google
Play Store.
2. Tap the Agent app icon on your mobile device.
3. Enter the address for the instance.
To

Do this

Manually enter the address

Type the instance address in the address field.

Scan the QR code

Tap the QR code icon and then scan the QR code that
was provided by your administrator.

4. Tap Login.
5. Tap the Vendors icon (

) to open the Vendor Management Mobile landing page.

Get notified about the vendors you manage using the Vendor Management Mobile application
Receive notifications when a P1 incident is created or resolved. You can also get notified if
another incident gets upgraded to P1 or when a vendor outage occurs.

Before you begin

Role required: sn_vlm.vendor_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3702


<!-- page 3703 -->
About this task

You must set your notification preferences in your desktop application to receive the notifications
in your ITSM Mobile Agent application.

Procedure
1. Enable notifications on your desktop application instance.
a. Select your profile and the select Preferences.
b. Select Notifications.
c. Select Core UI.
d. Enable Allow Notifications.
e. In the IT Service Management section, enable the following notification:
▪ Incident opened for vendor
▪ Outage opened for vendor
2. Receive notifications on your mobile application when the following tasks are triggered:
◦ A P1 incident is created or resolved
◦ Another incident gets upgraded to a P1 incident
◦ A vendor outage record is created
Access information related to your vendors using the Vendor Management Mobile application
Look up information related to your vendors such as incidents or outages created for your
vendors or breached SLAs.

Before you begin

Role required: sn_vlm.vendor_manager

Procedure
1. Log into your Vendor Management Mobile application on your mobile device.
2. Do any of the following.
To access

Do this

Tap My Vendors.
Information about your vendors

To contact a vendor, tap the vendor record and
then tap Primary Contact Details. The vendor's
contact appears.
Tap My Vendor Incidents.

Incidents created for your vendors

Outages created for your vendors

You can see the vendor details and activity
streams for each incident.
Tap My Vendor Outages. You can view the list
of outages.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3703


<!-- page 3704 -->
To access

Do this

Click on an outage to view outage details and
the affected CIs for services and offerings.
SLAs breached by the vendor

Tap My Vendors Breached SLA.

Vendor Management Workspace reference
When you activate the Vendor Management Workspace plugin (sn_itsm_vendor), the application
installs components such as roles, tables, properties, and indicators.

Installed with Vendor Management Workspace
Vendor Management Workspace provides a single destination for you to view and manage your
vendors.

Vendor Management Workspace
When you activate the Vendor Management Workspace (sn_itsm_vendor) plugin, the following
components are installed.
Roles installed with Vendor Management Workspace
Role title [name]

Vendor admin
[sn_vlm.vendor_admin]

Vendor Manager
[sn_vlm.vendor_manager]

Description

Contains roles

Can create, edit, or delete
vendor types and KPI groups
in Vendor Management
Workspace

sn_vlm.vendor_manager

Views and manages vendors
using Vendor Management
Workspace.

• pa_viewer
• service_viewer
• service_credit_mgr

Configures vendor
performance metrics for
use in Vendor Management
Workspace.

Table installed with Vendor KPI Groups
Name

Description

KPI Vendors

Store the relationship between KPIs and
vendors.

[sn_itsm_vendor_kpi_group_m2m_vendor]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3704


<!-- page 3705 -->
Scheduled jobs
Name

Description

Process Mining - VM Remine
Projects

• Automatically runs once a day.
• Automatically updates the project when vendors
are added or removed.
• Fetches all projects that haven’t been
mined from the time-period specified in the
sn_itsm_vendor.po_mining.run_frequency system
property; for example, the last 7 days.

Navigate to Vendor Management > Configuration > Vendor Properties to set the properties for
Vendor Management Workspace.
Properties installed with Vendor Management Workspace
Property

sn_itsm_vendor.enable.po.vm

Description

Enables the integration of Process Mining
with Vendor Management Workspace. When
enabled, you can initiate process mining and
mine Process Mining projects and analyze
process analysis in Vendor Management
Workspace.
• Type: true | false
• Default value: false

sn_itsm_vendor.po_mining.run_frequency

Fetches all projects that haven’t been mined
for the specified time-period. The Process
Mining - VM Remine Projects job
fetches the data based on the time specified in
this property.
• Type: Integer
• Default value: 7

Installed with Vendor Success Indicators in Vendor Management Workspace
Using the Vendor Success Indicators application, you can compare the performance of your
vendors against other top-performing vendors.

Important: You must install the Success Indicators (com.snc.vendor.insights) plugin
separately from the ServiceNow Store. For more information, see Activate Vendor
Management Workspace.
Scheduled Job installed with Vendor Success Indicators
Name

Description

Vendor Success Indicator Weekly
Scheduled Job

Runs weekly and gathers vendor attributes data
for the past 30 days. The job then computes the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3705


<!-- page 3706 -->
Scheduled Job installed with Vendor Success Indicators (continued)
Name

Description

correlation of the attributes with high-performing
vendors using Predictive Intelligence.
Properties installed with Vendor Success Indicators
Name

Description

sn_app_ml_insights.top_n_results

Top N results to retrieve from the Insight
Results table for further analysis. Default
value is 5.

sn_app_ml_insights.max_records_to_process

Maximum number of records to be processed
by the Success Indicator job. Default value is
50000.

sn_app_ml_insights.attr_category_string_value_limit
Maximum number of string values allowed
before creating categories. Default value is 5.
sn_app_ml_insights.keep_last_n_runs

The number of the most recent executions to
be retained after you run the table cleaner.
Default value is 2.

sn_app_ml_insights.attr_datatype_inclusion_list Comma separated list of valid data types to
use for defining Vendor Insights attributes.

Default value is
boolean,currency,date,datetime,due_date,field_name,glide_dat
sn_app_ml_insights.chi_squared_critical_value The critical value for a chi-square test that
compares two values to see if there is a
statistical significance. Default value is 3.84.
sn_app_ml_insights.chi_squared_threshold

The threshold for the critical value for the chisquare test. Default value is 5.

Attributes installed with Vendor Success Indicators
Attribute Name

Attribute Type

Default value

Performance analytics indicators
Average Availability

Average Availability

true

Average SLA Achievement

Average SLA Achievement

true

Average Stability

Average Stability

true

Avg Customer Satisfaction

Average Customer Satisfaction

true

Avg Perf Score of SO

Average Performance Score of Service
Offering

true

Vendor Satisfaction

Vendor Satisfaction

true

Table attributes
Contract SLA Commitment

SLA Definition [contract_sla]

true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3706


<!-- page 3707 -->
Attributes installed with Vendor Success Indicators (continued)
Attribute Name

Attribute Type

Default value

Contract SLA Type

SLA Definition [contract_sla]

true

Country

Company [core_company]

true

Rank Tier

Company [core_company]

true

Relationship Start

Company [core_company]

false

Service Commitment Type

Service commitment
[service_commitment]

true

Service Offering Business
Criticality

Service Offering [service_offering]

true

Total Contract Cost

Company [core_company]

false

Unique Subscribers

Company [core_company]

true

Vendor State

Company [core_company]

false

Vendor Type

Company [core_company]

false

Vendor KPI Groups in Vendor Management Workspace reference
Use Vendor KPI Groups that are provided by default to analyze vendor performance.

Vendor KPI Groups
The following Vendor Key Performance Indicator (KPI) groups are available by default:
• IT Services—Includes KPIs to analyze vendor performance related to IT Services.
• Vendor Fulfillment—Includes KPIs to analyze vendor performance related to fulfillment.
• Software—Includes KPIs to analyze vendors related to software applications.
• Hardware—Includes KPIs to analyze vendors related to hardware applications.
Each KPI group provided by default has the following related lists:
• KPIs—Indicators with a vendor breakdown that measure the performance of your vendors.
Each indicator that contributes toward the vendor score has a weight associated with it.
• KPI group thresholds—Defines threshold values to indicate the status of each KPI group.
• Vendors—List of vendors to analyze their performance.
IT Services KPI Group
This table shows the indicators provided by default in this KPI group. All indicators that have the
unit as percentage are used to calculate the vendor score.

Indicators name

Description

Unit

VMW: Average
Customer
Satisfaction

Measures CSAT scores based on
service offerings.

Number

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3707


<!-- page 3708 -->
Indicators name

Description

Unit

Vendor Satisfaction

Provides monthly breakdown of
vendor satisfaction scores.

Percentage

VMW: Average SLA
Achievement

Calculates average value for
SLAs that have been successfully
completed.

Number

VMW: Average
Availability

Calculates average value achieved Percentage
for incident SLAs.

VMW: Average
Request Activity

Average value calculated from
Number
fulfilled request items derived from
service portfolio catalog items.
These items must be connected to
service offerings.

Total Incidents
Created

The total number of incidents
created for vendors.

Number

Vendor Fulfillment KPI Group
This table shows the indicators provided by default in this KPI group. All indicators that have the
unit as percentage are used to calculate the vendor score.

Indicator

Description

Unit

VMW: Average
Customer
Satisfaction

Measures CSAT scores based
on service offerings.

Number

Vendor Satisfaction

Provides monthly breakdown of
vendor satisfaction scores.

Percentage

VMW: Average
Incident SLA
Achievement

Calculates average value
achieved for incident SLAs
that have been successfully
completed.

Percentage

Average Request
Fulfillment SLA
Achievement

Calculates average value
for SLAs that have been
successfully completed.

Percentage

Total Incidents
Created

The total number of incidents
created for vendors.

Number

VMW: Average
Request Activity

Average value calculated from
fulfilled request items derived
from service portfolio catalog
items. These items must be
connected to service offerings.

Number

Software KPI Group
This table shows the indicators provided by default in this KPI group. All indicators that have the
unit as percentage are used to calculate the vendor score.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3708


<!-- page 3709 -->
Indicator

Description

Unit

Vendor Satisfaction

Provides monthly breakdown of Percentage
vendor satisfaction scores.

Vendor Requested
Items

Provides the count of the
vendor-requested catalog
items.

Number

Manual SLA from
External Source

Calculates the manually added
SLAs.

Percentage

Hardware KPI Group
This table shows the indicators provided by default in this KPI group. All indicators that have the
unit as percentage are used to calculate the vendor score.

Indicator

Description

Unit

Vendor
Satisfaction

Provides monthly breakdown of
vendor satisfaction scores.

Percentage

Vendor
Requested
Items

Provides the count of the vendorrequested catalog items.

Number

Manual SLA
from External
Source

Calculates the manually added SLAs.

Percentage

Vendor score indicator
The Vendor Score indicator is an automated indicator. It’s used for calculating and displaying
the vendor score. The calculation is done based on all indicators added to the KPI group for
evaluating vendor performance.
By default, the following indicators are used to calculate the vendor score:
• Average Request Fulfillment SLA Achievement
• VMW: Average Availability
• Average Incident SLA Achievement
• Manual SLA from External Source

Schedule job
The VMW Update Vendor Score scheduled job runs daily and updates the score. You can
run this job on-demand to get updated scores at any time.
The VMW Update Vendor Profile scheduled job runs monthly and updates all vendor
profiles. You can run this job on-demand to get updated vendor profiles at any time.

Calculating the vendor score
The vendor score calculation is based on the weight of each indicator and the KPI score.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3709


<!-- page 3710 -->
Important: The Service Offering Metric Data [service_offering_metric_data] table along
with the following four indicators have been deprecated in the Utah release:
• Average SLA Achievement [ServiceOffering.MetricData.SLA.Daily]
• Average Customer Satisfaction [ServiceOffering.MetricData.CSAT.Daily]
• Average Availability [ServiceOffering.MetricData.Availability.Daily]
• Average Request Activity [ServiceOffering.MetricData.Activity.Daily]
Therefore, if you have the Vendor Management Workspace application integrated
with Service Portfolio Management, and if you are upgrading to the Service Portfolio
Management standard portfolio, the metric data from the legacy indicators are no
longer available. For information on Service Portfolio Management, see Service Portfolio
Management portfolios.
You can calculate the vendor score using the indicators that have a percentage value. You
can also create custom formula indicators and add them to your vendor score calculation.
For more information, see Add a formula indicator to track vendor score.
This table provides an example of how a vendor score is calculated.
Vendor score calculation
Indicator

Indicator weight

KPI score

Indicator score that
contributes toward vendor
score

Vendor Satisfaction

10.00%

54.42%

5.442%

VMW: Average
55.00%
Customer Satisfaction

83.00%

45.65%

VMW: Average
Availability

25.00%

88.50%

22.125%

VMW: Average SLA
Achievement

10.00%

100.00%

10.00%

Total

83.217%

The total vendor score has been rounded up to 83.22%. The score is also highlighted in the
header with colors that are distinct for the defined threshold values for the KPI group.

Note: The vendor score is impacted based on whether the direction for the indicator
is set to maximize or minimize. This table shows an example of how the vendor score is
impacted based on the indicator direction.
Vendor score impacted by indicator direction

Indicator

Direction

Indicator weight

Indicator metric
score

Indicator score
that contributes
toward vendor
score

VMW: Vendor
Satisfaction

Maximize

10.00%

54.42%

5.442%

VMW: Average
Maximize
Customer Satisfaction

55.00%

83.00%

45.65%

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3710


<!-- page 3711 -->
Vendor score impacted by indicator direction (continued)

Indicator

Direction

Indicator weight

Indicator metric
score

VMW: Average
Availability

Minimize

25.00%

88.50%

VMW: Average SLA
Achievement

Minimize

Indicator score
that contributes
toward vendor
score

2.875%
[(100 - 88.5) x.25]

10.00%

100.00%

Total

0%
53.967%

Domain separation and Vendor Management Workspace
Domain separation is supported in Vendor Management Workspace. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.

Support level: Standard
• Includes all aspects of Basic level support.
• Application properties are domain-aware as needed.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

The Vendor Management Workspace application uses performance analytics to collect data and
provides domain separation support.

Request Vendor Management Workspace Domain Separation
The Domain Support - Domain Extensions Installer plugin
(com.glide.domain.msp_extensions.installer) must be activated by ServiceNow personnel. After
this plugin has been activated, as an administrator, you can activate the Performance Analytics Domain Support plugin (com.snc.pa.domain_support) plugin.
The Performance Analytics - Domain Support plugin (com.snc.pa.domain_support) must be
activated to enable the features for Vendor Manager Workspace
Related topics
Domain separation for service providers

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3711


<!-- page 3712 -->
Configure domain separation for Vendor Management Workspace
Configure domain separation for Vendor Management Workspace to collect vendor scores and
analyze the data for a specific domain. Configure domains for vendor score metric models.

Before you begin

Role required: pa_data_collector or admin

Procedure
1. Configure a domain to collect vendor score performance analytics data for that domain.
a. Navigate to Performance Analytics > Data Collector > Domain Configurations.
b. Create a domain configuration for Vendor Management Workspace
i. Click New.
ii. In the Name field, enter a name for the configuration.
iii. In the Configuration type menu, select Conditions.
iv. In the Aggregate options section, select the Collect childrencheck box to collect scores
from all child domains.
c. Right-click the form header and click Save.
d. Add the following performance analytics jobs to the related list:

Note: If you do not have the Jobs related list, you must configure the form to display
the related list.
▪ VMW Scheduled Data Collection
▪ VMW Weight Collection
▪ VMW Daily Data Collection
▪ VMW Vendor Score Collection
e. Click Update.
For more information on creating or scheduling a data collection job, refer to Create or
schedule a data collection job

Note: The Performance Analytics application:
◦ Runs the job and collects the score as the Run as user.
◦ Collects the scores only for the domain in which the logged-in user runs the job. The
scores are not visible to vendor admins or vendor managers who are not part of that
domain in Vendor Manager Workspace.
◦ Automatically adds database queries that limit results from the domain to the indicator
source queries
when the application runs a job for a domain configuration.
2. Configure a domain to assign a vendor score metric model to a domain.
a. Navigate to Vendor Manager Workspace > Vendor Score Metric Models
b. Do any of the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3712


