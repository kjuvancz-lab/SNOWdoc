# Zurich Strategic Portfolio Management — Request funds for an investment / Plan fund allocations for investments / Allocate funds to an investment +5 more

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1848–1868 of 2289

Sections: Request funds for an investment (p1848); Plan fund allocations for investments (p1849); Allocate funds to an investment (p1850); Enter actual spends for an investment (p1852); Reject a fund request (p1852); Review the use of your funds (p1853); View past funding details (p1854); Domain separation and Investment Funding (p1854); Export to PowerPoint for Strategic Portfolio Management (p1855); Explore (p1856); Configure (p1856); Use (p1860); Reference (p1865)

---

<!-- page 1848 -->
Procedure
1. Open a top-level investment or My fund.
Option

Steps

To open a top-level investment

a. Navigate to All > Investment Funding > Top
level Investments.
b. Click an investment tile.
a. Navigate to All > Investment Funding > My
Funds.

To open a My fund

b. Click an investment tile.
2. Click the Details tab.
3. Click the unlock co-owner icon (

).

◦ To add a user as a co-owner, use the select target record search field to search for and select
the users.
◦ To remove an existing co-owner, select the name and click the remove selected item icon
(

).

4. Click Update.

Request funds for an investment
Request funds from a funding source for your investment.

Before you begin

Role required: sn_invst_pln_v2.investment_user

About this task

You cannot request funds for a generic investment from any other generic investment.
You can request funds only from generic source investments that have allocated funds to your
investment in the past.
You can request funds only in the funding frequency configured in the Investment Funding
Preferences.
You can request funds from only those entities that were added in the Fundable entities field
while creating the entity.
You can withdraw funding requests that are in the requested and planning state and are for past
funding periods or non-editable funding periods.

Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Click an investment card to open the investment for which you need funds.
If you want to open a different investment, access the drop-down menu next to the name of the
currently displayed investment. Either search for another investment by entering its name in
the Search My Investments field or choose it from the five most recently visited investments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1848


<!-- page 1849 -->
3. Click the View/Request Funds tab.
4. Select a working period and click Apply.
The Request Funds list displays only funding sources that you previously requested funds
from for your investment.
5. Click the Add New Source link to select the funding source.
6. In the Select a Source pane, select one or more source investments from the list, and then
click Add Selected.
The specified funding source is added in the Request Funds grid.
7. In the Request Funds grid, specify the amount in the CapEx and OpEx columns under New/
Modify Request of the funding sources from which you want to request funds.
The state of all updated funding sources changes to Draft or Planning, which is indicated by
highlighted cells.
8. Click Request.
9. In the Confirm request dialog box, verify your requests and add a comment if required.
10. Click Request.
11. Optional: Right-click on a column on the New/Modify Request field and select Withdraw to
withdraw a funding request.

Result
• Funds are requested from the source investments sources for the specified period.
• The state of the fund request record changes to Requested.

Plan fund allocations for investments
Plan your fund allocations if you are not yet ready to finalize the allocation of your funds.

Before you begin

Role required: sn_invst_pln_v2.investment_user

About this task

Keep investments in the planning stage if you are not yet ready to allocate the funds. For
example, you might want to wait to determine whether you require additional funds to meet the
needs of all your investments.
If you plan to allocate funds to an investment that are in addition to the received funds, a warning
message is displayed in the Totals row indicating that you are overallocating, and the additional
fund amount will be deducted from the buffer amount set in your funding preferences. For more
information on setting up overallocation of funds, see the Set Investment Funding preferences
topic. If you plan to allocate beyond the available fund plus the buffer amount, an error message
indicates that new funds cannot be submitted for allocation.
You can plan fund allocations only according to the funding frequency configured in the
Investment Funding Preferences.

Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Click an investment card to open an active investment that has funds that you plan to allocate
to other investments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1849


<!-- page 1850 -->
If you want to open a different investment, access the drop-down menu next to the name of the
currently displayed investment. Either search for another investment by entering its name in
the Search My Investments field or choose it from the five most recently visited investments.
3. Click the Allocate Funds tab.
4. Select a working period and click Apply.
◦ If you have allocated funds earlier or there are incoming fund requests, those investments
are listed in the Allocate Funds list.
◦ You can filter for pending (planning and requested) investments by clicking the filter icon
(

).

5. In the Allocate Funds list, select the incoming requests to which you are planning to allocate
funds.
6. Click Plan.

Result
• Funds allocations are planned for the selected investments for the specified period.
• The state of all updated investments changes to Planning, which is indicated by highlighted
cells.
• The amount remaining after planning your allocations is displayed in the Left after planning
row.

What to do next

Allocate funds to planned investments

Allocate funds to an investment
Allocate funds to investments based on your business goals and available funds.

Before you begin

Role required: sn_invst_pln_v2.investment_user

About this task

You can allocate funds only in the funding frequency configured in the Investment Funding
Preferences.
If you allocated funds to an investment earlier, you can increase or decrease the funded amount
by entering an amount greater or lesser than the existing amount. Entering a lesser value
unfunds the investment by the difference amount.
If you allocate funds to an investment that are in addition to the received funds, a warning
message is displayed in the Totals row indicating that you are overallocating, and the additional
fund amount will be deducted from the buffer amount set in your funding preferences. For more
information on setting up overallocation of funds, see the Set Investment Funding preferences
topic. If you try to allocate beyond the available fund plus the buffer amount, an error message
indicates that new funds cannot be submitted for allocation.
You can allocate funds to only those entities that are added in the Fundable entities field while
creating the entity.

Note: For generic investments, you can allocate funds to investments that you own.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1850


<!-- page 1851 -->
Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Click an investment card to open an active investment that has sufficient funds to allocate to
another investment.
If you want to open a different investment, access the drop-down menu next to the name of the
currently displayed investment. Either search for another investment by entering its name in
the Search My Investments field or choose it from the five most recently visited investments.
3. Click the Allocate Funds tab.
4. Select a working period and click Apply.
◦ If you have allocated funds earlier or there are incoming fund requests, those investments
are listed in the Allocate Funds list.
◦ You can filter for pending (planning and requested) investments by clicking the filter icon
(

).

5. Optional: Add more investments to the Allocate Funds list for allocating funds.
a. Click Add.
b. Optional: Click New to create a new entity record if you have sufficient privileges for the
source entity.
c. In the Add pane, select one or more investments from the list, and then click Add Selected.
(Optional) To include all the listed investments, click Add All.
6. In the Allocate Funds list, enter the amount under the CapEx and OpEx columns under New
Fund for all investments to which you want to allocate funds.

Note: For an incoming request, take into account the amount in the New Request
column while entering amounts in the CapEx and OpEx columns under New Fund.

The state of all updated investments changes to Planning, which is indicated by highlighted
cells.
7. Click Fund.
8. In the Confirm Allocate Funds dialog box, verify your allocations and click Fund.
While confirming fund allocations, you can view all the details of the quarters where funds
are available for funding in one section, and the details of the quarters where funds are not
available for funding in another section.
9. Optional: Right-click on a column on the grid and select View Past Funding Details to view
the funding details of your child investments for the past fiscal periods.
(Optional) For more information, see the View past funding details topic.

Result
• Funds are allocated to selected investments for the specified period.
• The state of funded investments changes to Funded.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1851


<!-- page 1852 -->
Enter actual spends for an investment
Enter actual spends for your investments to track fund utilization.

Before you begin

Role required: sn_invst_pln_v2.investment_user

About this task

You can use funds in your investments to execute business activities or allocate funds to
other investments to meet business goals. You can record the amount spent as actual spends
("actuals") in the respective investment. Tracking actuals enables you to do the following:
• Track where and how you spent your funds.
• Add up to the parent investment actuals.
Actual cost incurred for projects or demands will be summed up and displayed in the Investment
Funding grid automatically if there is a single funded source. If there are multiple sources, you
need to perform the following steps to enter the actuals manually.

Note:
• (For customers upgraded from legacy Investment Funding plugin to the ServiceNow Store
application) If you have entered actuals manually prior to upgrade, then the same does
not match with the actuals posted in the project post-upgrade.
• If the Budget field on the cost plan breakdown of a project or demand has been edited
post funding, the CapEx and OpEx budgets do not match the amount funded from the
Investment Funding flow.

Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Open an investment for which you want to enter actuals.
If you want to open a different investment, access the drop-down menu next to the name of the
currently displayed investment. Either search for another investment by entering its name in
the Search My Investments field or choose it from the five most recently visited investments.
3. Click the View/Request Funds tab.
4. Select a working period and click Apply.
5. In the Request Funds list, specify the actual amount spent under the Actual CapEx and Actual
OpEx columns for your investments.

Note: If you do not see the Actual CapEx and Actual OpEx columns in the list, click the
configuration icon (

) and select them.

Result
• The entered amount is updated as actual funds spent through the investment.
• The amount rolls-up to its parent investment, which in turn rolls-up until the top-level
investment.

Reject a fund request
You can reject an incoming fund request based on your business priorities or if you do not have
sufficient funds.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1852


<!-- page 1853 -->
Before you begin

Role required: sn_invst_pln_v2.investment_user

Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Open an active investment.
If you want to open a different investment, access the drop-down menu next to the name of the
currently displayed investment. Either search for another investment by entering its name in
the Search My Investments field or choose it from the five most recently visited investments.
3. Click the Allocate Funds tab.
4. Select a working period and click Apply.
5. Select an investment from the Allocate Funds grid.
6. Click the Allocate Funds drop-down list and select Reject.
7. Optional: Select an investment, and click Clear from theAllocate Funds drop-down list to
remove the planning state funding requests that are for past funding periods or non-editable
funding periods from your list.

Review the use of your funds
Review the flow of your funds from your investment to other investments to make an informed
decision when you allocate or request funds.

Before you begin

Role required: sn_invst_pln_v2.investment_user

About this task

Reviewing the use of your funds enables you to see when an investment has not used funds, or
whether the funds are still meeting the priorities of your business goals.
Note: The actual amount in your investment is the sum of the direct spends you entered
and the total from all investments to which you had allocated funds. The correct actual
amount is reflected only if the owners of those investments have entered the actual spends
in their investments.
You can view the difference between funds received and actuals (underspent or overspent
amount) in the tree view cards. If the funds received amount is greater than the amount in the
fund, the underspent amount is displayed in green. If the funds received amount is lesser than
the amount in the fund, the overspent amount is displayed in red.
You can configure which information should be displayed on the cards in the list view of Allocate
Funds or View/Request Funds. For example, you can configure the list view to display only the
Total Actuals amount.
Users that the investment owner adds in the Viewable by field can also review the investment
details. The owner of an investment that funds a particular investment is automatically added
to the field list for that investment. For example, if a program investment receives funds from a
portfolio investment, then the owner of the portfolio investment is added to the Viewable by field
for the program investment.

Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Click an investment card to open an active investment to review fund allocations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1853


<!-- page 1854 -->
If you want to open a different investment, access the drop-down menu next to the name of the
currently displayed investment. Either search for another investment by entering its name in
the Search My Investments field or choose it from the five most recently visited investments.
3. On the Allocate Funds tab, click the tree view icon ( ).
Your investment and the investments that you funded directly display as cards in a hierarchical
view. The number of child investments is displayed in the parent investment card. If there are
more than 10 investment cards, you can access a compact card view.
4. Click an investment to view its fund allocation to other investments.
As you drill down to child investment cards, the clickable menu in the top-right corner displays
the current level of the hierarchy.
5. Optional: Click the Actions menu and select View Investment to navigate to the investment
grid.

View past funding details
View the past funding details of your investments.

Before you begin

Role required: sn_invst_pln_v2.investment_user

Procedure
1. Navigate to All > Investment Funding > My Funds.
2. Click an investment card to open the investment for which you want to view the past funding
details.
If you want to open a different investment, access the drop-down menu next to the name of the
currently displayed investment. Either search for another investment by entering its name in
the Search My Investments field or choose it from the five most recently visited investments.
3. Click the Allocate Funds tab.
4. Right-click on a column on the grid, and select View Past Funding Details to view the funding
details of your investments for past fiscal periods.
If you are not the owner of the investment but have been added in the Viewable by field of the
investment, you can view the investments in read-only mode.
The graph displays the comparison between the total funds received and the total actuals for
the fiscal periods in the past one year.

Domain separation and Investment Funding
Domain separation is supported in Investment Funding. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Basic

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1854


<!-- page 1855 -->
• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Export to PowerPoint for Strategic Portfolio Management
®

The ServiceNow Export to PowerPoint for Strategic Portfolio Management add-in helps you to
generate and download project status reports from your instance as a Microsoft PowerPoint file.
You can use this file to share it across the stakeholders or teams for collaboration.

Export to PowerPoint overview
Export to PowerPoint overview video. Approximately two minutes long.

Get started

Explore

Configure

Learn about Export to
PowerPoint add-in features.

Install and configure the
Export to PowerPoint add-in.

Use

Reference

Use Export to PowerPoint to generate
and download your project status report.

Get details about components
installed, form fields, tables,
roles, and general guidelines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1855


<!-- page 1856 -->
Important:
• For more information about the data processing required to generate a project status
report within the ServiceNow servers based on your location, see the KB1170323
article
in the Now Support Knowledge Base.
• Export to PowerPoint is currently unavailable for customers in the FedRAMP, NSC DOD
IL5, or Australia IRAP-Protected data centers, self-hosted customers, or in other restricted
environments. Please check for availability updates in future releases.

Troubleshoot and get help
• Ask or answer questions in the Strategic Portfolio Management forum on the ServiceNow
Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Export to PowerPoint
The Export to PowerPoint application helps you generate and download your project
status report. Use this file to present your project status report to stakeholders or teams for
collaboration and to identify the next steps.
Use the following data types to create a Microsoft PowerPoint template.
Report template types
Report type

Description

Text

Generates a text format report.

Table

Generates a table format report.

Line

Generates a line chart report.

Bar

Generates a bar graph report.

Repeater

A token used to generate data for all the
entries in a record by retaining the template
format.

Configuring Export to PowerPoint
Learn about the process and prerequisites used to install the Export to PowerPoint application in
your instance and configure it in Microsoft PowerPoint.

Configuration workflow
Use the following steps as guidelines to configure and install the ServiceNow add-in for Microsoft
PowerPoint after you download the Export to PowerPoint application from the ServiceNow Store.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1856


<!-- page 1857 -->
1. Install Export to PowerPoint for Strategic Portfolio Management from the ServiceNow Store. For
more information, see Install Export to PowerPoint for Strategic Portfolio Management.
2. Manage the related tables and scripted elements components. For more information, see
Manage Related Tables and Scripted Elements forms.
3. Download the manifest file from your instance to and share it with your Microsoft Office 365
account manager. For more information, see Download the manifest file from your instance.
4. Configure the Export to PowerPoint add-in for your Microsoft PowerPoint. For more information,
see Configure the Export to PowerPoint add-in for Microsoft PowerPoint.

Install Export to PowerPoint for Strategic Portfolio Management
You can install the Export to PowerPoint for Strategic Portfolio Management application (sn_ppt)
®
if you have the admin role. The application includes demo data and installs related ServiceNow
Store applications and plugins, if they are not already installed.

Before you begin
• Review the application listing in the ServiceNow Store for information on dependencies,
licensing or subscription requirements, and release compatibility.
• Role required: admin
•

Important: For more information about the data processing required to generate a
project status report within the ServiceNow servers based on your location, see the
KB1170323
article in the Now Support Knowledge Base.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Export to PowerPoint for Strategic Portfolio Management application
(sn_ppm_ppt_export) using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

Result

The following components are installed with installation of the Export to PowerPoint for Strategic
Portfolio Management application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1857


<!-- page 1858 -->
• Roles
• Tables
See Components installed with Export to PowerPoint for Strategic Portfolio Management for more
information.

Manage Related Tables and Scripted Elements forms
Manage the Related Tables and Scripted Elements components that are required to create a
Microsoft PowerPoint template.

Before you begin

Role required: sn_ppt_export.ppt_admin

Procedure
1. Navigate to All > PowerPoint Management > PowerPoint Report Types.
2. Select the report name.
Option

Description

You can add a custom remote table or a child
from the parent table.
a. In the Related Tables component, select
New.
On the Related tables form, fill the fields.
For a description of the field values, see Re­
lated Tables form.
b. To add a custom remote table:
i.

.

ii. Select the required remote table from list.
To manage Related Tables

iii. Select the Enable custom script option.
iv. In the Custom script box, write the code
to establish a connection between the re­
mote table and main table.
c. To select a child table from the main table:
i. Select a child table from list.
ii. Select parent relation column from the
list.
d. Select Submit.
The selected table and its relation to the par­
ent table is displayed in the Related tables
section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1858


<!-- page 1859 -->
Option

Description

a. In the Scripted Elements component, se­
lect New.
To manage Scripted Elements

b. On Scripted Elements form, fill the fields.
For a description of the field values, see
Scripted Elements form.
c. Select Submit.

3. Select Update.

Download the manifest file
Configure the user roles and download the add-in manifest file to use the Export to PowerPoint
add-in for Microsoft PowerPoint.

Before you begin

Role required: sn_ppt_export.ppt_admin

Procedure
1. Navigate to All > ServiceNow Add-Ins for Office > Office Add-In Manifests.
2. Click Templates for ServiceNow.

Note: Check the Templates for ServiceNow description to match with PowerPoint
plugin for ServiceNow to ensure that the correct manifest file is selected.
3. Click Download Manifest to download the add-in file.

What to do next
• Share the manifest.xml file with Microsoft Office 365 account manager to upload the
manifest file for Microsoft Office 365 users
to enable the Export to PowerPoint add-in for
Microsoft PowerPoint.
Alternatively, you can sideload the add-in for testing purposes using one of the following
processes.
◦ For Windows machines: https://learn.microsoft.com/en-us/office/dev/add-ins/testing/
create-a-network-shared-folder-catalog-for-task-pane-and-content-add-ins
◦ For macOS machines: https://learn.microsoft.com/en-us/office/dev/add-ins/testing/
sideload-an-office-add-in-on-mac
• For more information about the additional configuration steps required to enable the Export to
PowerPoint add-in for browser version of Microsoft PowerPoint, see the KB1171422
article in
the Now Support Knowledge Base.

Configure the Export to PowerPoint add-in for Microsoft PowerPoint
Configure the Export to PowerPoint add-in in your Microsoft PowerPoint to interact with your
instance and fetch the data required to generate and download your project status reports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1859


<!-- page 1860 -->
Before you begin
• Verify that the Export to PowerPoint add-in is enabled for your Microsoft PowerPoint. If not,
Download the manifest file and contact your Microsoft Office 365 account manager.
• Role required: sn_ppt_export.ppt_admin or sn_ppt_export.ppt_user.

Procedure
1. Open your Microsoft PowerPoint application and select the ServiceNow add-in icon

(
) on the Home tab.
A panel appears with a login option to access your ServiceNow instance.
2. Select Log in.
3. Enter your ServiceNow instance credentials and select Log in.
A prompt requesting access to your instance with details such as the instance name is
displayed.
4. Check your instance details and select Allow.

Result

The landing page of the add-in appears as the right panel.

Note: For more information about the additional configuration steps required to enable
the Export to PowerPoint add-in for the browser version of Microsoft PowerPoint, see the
KB1171422
article in the Now Support Knowledge Base.

What to do next

Create a Microsoft PowerPoint template.

Using Export to PowerPoint
Use the Export to PowerPoint add-in for Microsoft PowerPoint to create a template to generate
reports.

Note: While creating a template, any formatting options that you use such as font style,
font size, background color, and so on, are retained while generating a report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1860


<!-- page 1861 -->
1. Create a Microsoft PowerPoint template. For more information, see Create a Microsoft
PowerPoint template.
2. Upload a Microsoft PowerPoint template to your ServiceNow instance. For more information,
see Upload your Microsoft PowerPoint template.
3. Download a project status report using the created template. For more information, see
Download a project status report.

Create a Microsoft PowerPoint template
Configure the Export to PowerPoint add-in in your Microsoft PowerPoint to interact with your
instance and fetch the data required to generate and download your status reports. Create your
own custom template with the required data to generate a report, based on the reporting needs
of your organization.

Before you begin
• Let us connect your instance to the Microsoft PowerPoint using the add-in login and create a
template Portfolio Planning to generate a report for epic details.
• Role required: sn_ppt_export.ppt_user

Procedure
1. Open your Microsoft PowerPoint application and select the ServiceNow add-in icon

(
) on the Home tab.
A side panel appears with a login option to access your ServiceNow instance.
2. Select Log in.
3. Enter your ServiceNow instance credentials and select Log in.
A prompt with your instance details is displayed.
4. Check your instance details and select Allow.
The landing page of the add-in appears on the side panel.

5. Select Personal portfolio report from the Type list.
Select the data type you want to populate.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1861


<!-- page 1862 -->
◦ Text – Text entries from the parent table. Example: Portfolio name, owner name, and so on.
◦ Table – Table entries mapped using related tables.
◦ Repeater – To populate additional details for each of the selected records.
◦ Line and Bar chart – Graph entries mapped using scripted elements.

Note: While creating a template, you can:
◦ Change the font size and color for the token values to reflect the same in your status
report.
◦ Move around the token to place them in a required format.
◦ Add your custom or organization logos on the slides.
◦ Resize the chart tokens as per the requirement.
6. To populate the Portfolio name on the first slide:
a. Select Text from the data type.
b. Filter the Column list to locate Name and select it. A token value representing the portfolio
name is generated in the subsequent empty text box.
c. Select the Copy text button to copy the token.
d. Paste the token on the slide.

Add a new slide to Microsoft PowerPoint, insert a table with three columns and two rows to
generate the Epics with their numbers, status, and due date.
7. To populate Epics details such as numbers, status, and due date:
a. From the add-in landing page, select Table from the Data list.
Use the Back (

) button to go back to the add-in landing page.

b. Select Epic from the Related table list.
c. From the Related table (optional) list, select a related table to the Epic.
d. Select the number of rows that you want to populate and By default, five rows are selected.
You can select a minimum of one row and a maximum of 10 rows.
e. Use the filter icon to see any existing filter or to define a condition to populate the data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1862


<!-- page 1863 -->
Here, we’re picking Epics which are in either Ready or Work in progress state with a deadline
on April 30.
f. Select Next.
g. Select Number from the Column list.
h. Copy the token value and paste it in the table.
i. Similarly, copy and paste the token values of State and Assigned to fields from the Column
list.

Add a new slide to Microsoft PowerPoint.
8. To populate the required details of each of the selected records:
a. From the add-in landing page, select Table from the Data list.
Use the Back (

) button to go back to the add-in landing page.

b. Select Repeater from the Data list.
c. Select Epic from the Related table list.
d. Add the required filter using the filter option and select Next.
e. Select the required fields to copy and paste the token on the slide.
f. Copy and paste the repeater token to the slide

Note: The repeater token doesn’t generate any values in the status report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1863


<!-- page 1864 -->
Add a new slide to Microsoft PowerPoint.
9. To populate a line or bar chart:
a. From the add-in landing page, select Line Chart or Bar Chart from the Data list.
Use the Back (

) button to go back to the add-in landing page.

b. From the Select a chart (defined using scripted elements) list, select a chart you want to
populate for your report and select Next.
c. Select the Copy to clipboard button to copy the chart token.
d. Paste the token on a slide.

10. Save the Microsoft PowerPoint file in the .pptx format with a maximum of 50 slides and file
size not exceeding 15 MB.

Note: The Export to PowerPoint for Strategic Portfolio Management application comes
with default templates which you can use to generate reports and consider as a reference
to create templates.

Upload your Microsoft PowerPoint template
Upload the latest template to your instance to generate and download the status report as a
Microsoft PowerPoint file.

Before you begin

Role required: sn_ppt_export.ppt_user

Procedure
1. Navigate to All > PowerPoint Management > PowerPoint Templates.
2. Select a record to attached the latest template.
3. Select the manage attachments icon (

).

4. Select Choose file to browse and upload the template.

Note: You can use only one template (.pptx) at a time with a maximum file size of 15
MB. Delete the existing template to upload and use a new one.
5. Close the dialog box, and select Update on the form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1864


<!-- page 1865 -->
What to do next

Download a project status report.

Download a project status report
Download your projects and project status reports as a Microsoft PowerPoint file to share it with
the stakeholders.

Before you begin

Role required: sn_ppt_export.ppt_user

Important: Export to PowerPoint is currently unavailable for customers in the FedRAMP,
NSC DOD IL5, or Australia IRAP-Protected data centers, self-hosted customers, or in other
restricted environments. Please check for availability updates in future releases.

Procedure
1. To download your status report for Enterprise Architecture (formerlyApplication Portfolio
Management), see Export data to Microsoft PowerPoint - Legacy .
2. To download your status report for Project Workspace, see Export a project status report to
Microsoft PowerPoint from Project Workspace.
3. To download your project from Project Workspace, see Export a project from Project
Workspace.
4. To download your status report for Strategic Planning, see Export the portfolio plan status or
roadmap to Microsoft PowerPoint.
5. To download your status report for Portfolio Planning, see Export the portfolio plan status or
roadmap to Microsoft PowerPoint.

Result

Your report is downloaded as a Microsoft PowerPoint file with the project number and status
report date as the file name.

Export to PowerPoint Reference
Reference topics provide additional details about Export to PowerPoint such as fields, tables,
roles, and some guidelines.

Components installed with Export to PowerPoint for Strategic Portfolio
Management
Several types of components are installed with activation of the Export to PowerPoint for
Strategic Portfolio Management (sn_ppt) add-in, including user roles and tables.

Roles installed
Role title [name]

Export to PowerPoint
for Strategic Portfolio
Management admin
[sn_ppt_export.ppt_admin]

Description

• Create, edit, and manage
the attributes required
to generate Microsoft
PowerPoint templates.

Contains roles

sn_ppt_export.ppt_user

• Assign this role in
confidence because it
is a high security role for
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1865


<!-- page 1866 -->
Role title [name]

Description

Contains roles

the Export to PowerPoint
application with access to
modify the source code for
Scripted Elements.
Export to PowerPoint
for Strategic Portfolio
Management user
[sn_ppt_export.ppt_user]

• Create a template, upload it
to the ServiceNow instance,
generate, and download the
project status report.

None

• By default, users with
the project_user role are
assigned this role.

Tables installed
Table

Description

PowerPoint Cell Formatter

Stores the color properties for text, text
background, table cell, and shape fill.

[sn_ppt_export_ppt_cell_formatter]
PowerPoint Element
[sn_ppt_export_ppt_element]
PowerPoint Formatter

Stores the required elements to generate
aMicrosoft PowerPoint template.
Stores the text formatting options.

[sn_ppt_export_ppt_formatter]
PowerPoint Formatter Mapping

Stores the format mapping for the tokens.

[sn_ppt_export_ppt_formatter_mapping]
PowerPoint Report Type
[sn_ppt_export_ppt_report_type]
PowerPoint Template
[sn_ppt_export_ppt_template]
PPT Service Request Log

Stores report types that can be used to
generate a report.
Stores the metadata required for the
templates.
Stores service requests logs.

[sn_ppt_export_ppt_poi_service_request_log]
Related Table

Stores related tables for a report.

[sn_ppt_export_ppt_related_table]
Scripted Element
[sn_ppt_export_ppt_scripted_element]

Stores the supported chart types, such as line
chart and bar chart.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1866


<!-- page 1867 -->
Related Tables form
Use the Related Tables form to define the child tables for the configured parent table. This
Related Tables helps in fetching data to export the project status report as Microsoft PowerPoint.
Related table form
Field

Description

Name

Name of the child table.

Parent relation column

The relation between parent and child tables.
For more information on how to manage
Related Tables, see Manage Related Tables
and Scripted Elements forms.

Scripted Elements form
Use the Scripted Elements form to define the data script to fetch data for a complex report type
such as line chart or bar chart.
Scripted Elements form
Field

Description

Name

Name for the element.

Type

Chart type (Line chart or Bar chart) that you want to generate.
After the required chart type is selected, the suggested format of the scripted
elements code format is displayed in the Data Script field.

Description Description for the report. (Example: Comparison of planned vs. Actual costs.)
Data Script Script used to fetch data for the report.
For more information on how to manage Scripted Elements, see Manage Related
Tables and Scripted Elements forms.

Line chart parameter
Following are the basic parameters used to define the properties and formatting of a line chart.
Line chart parameters
Parameter

Description

@property {String}
Color of the line.
seriesArray.properties.color
- Color of Line

Reference value

Use Hex code values to define
a color of the line.
For example, use the hex code
#FF0000 for red color.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1867


<!-- page 1868 -->
Line chart parameters (continued)
Parameter

Description

@property {String}
Type of line.
seriesArray.properties.type
- type of Line

@property {String}
Style of the marker to identify
seriesArray.properties.markerStyle
key points on the chart.
- style of marker

@property {Number}
Size of the marker on the
seriesArray.properties.markerSize
chart.
- size of style
@property {String}
legendPosition Position of legend
in chart. This is
optional

Legend position of the chart.

Reference value

For more information about
reference line formats, see
https://poi.apache.org/
apidocs/dev/org/apache/
poi/xddf/usermodel/
PresetLineDash.html DASH

.

For more information about
reference marker formats,
see https://poi.apache.org/
apidocs/dev/org/apache/
poi/xddf/usermodel/chart/
MarkerStyle.html .
Minimum inclusive: 2,
maximum inclusive: 72
For more information about
legend position, see https://
poi.apache.org/apidocs/
dev/org/apache/poi/
xddf/usermodel/chart/
LegendPosition.html .

Bar chart parameters
Following are the basic parameters used to define the properties and formatting of a bar chart.
bar chart parameters
Parameter

Description

@property {String}
The direction of plotting the
barProperties.direction
bars in the chart.

@property {String}
barProperties.groupingGrouping style of the bar in
the chart.
- grouping of bars

Reference value

For more information about
defining a bar direction,
see https://poi.apache.org/
apidocs/dev/org/apache/
poi/xddf/usermodel/chart/
BarDirection.html .
Use options such as standard,
clustered, stack. For more
information about bar
grouping properties, see
https://poi.apache.org/
apidocs/dev/org/apache/

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1868


