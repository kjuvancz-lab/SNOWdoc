# Zurich Strategic Portfolio Management — Financial Management - Legacy

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1758–1782 of 2289 | Part 2 of 2

Sections: Financial Management - Legacy (p1608)

---

<!-- page 1758 -->
Statement Expense Line Details form
Field

Description

Statement expense line

Select the statement expense line from the
options list.

Unit rate

Rate at which the reporting entity is charged
for one unit of the item.

Volume

Number of items consumed (in units).

Amount

Volume * Unit rate.

4. Click Submit.
Generate showback statements for upcoming fiscal period
As a service charging analyst, review the status log of all showback statements for the last fiscal
period that the statements were generated for and the date that the showback statements were
published on.

Before you begin

Role required: service_charging_analyst

About this task

You can also create a record or log of the last generated and published details of a showback
statement, and generate the statement for the next fiscal period.

Procedure
1. Navigate to All > Financial Charging > Showback > Generate Showback.
2. Click New to create a showback run log or click the Status of an existing showback log record
that you want to edit.
3. On the form, fill in the fields.
Showback Run Log form
Field

Description

Fiscal period

Select the statement expense line from the
options list.

Status

Status of the showback statement.

Showback

Definition of the showback statement.

Last generated

Date on which the statement was last
generated.

Published

Check box to indicate whether the statement
has been published or not.

Published date

Date on which the statement was last
published.

4. Click Submit if you have created a log or click Update if you have edited an existing log.
5. Click Delete to delete the record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1758


<!-- page 1759 -->
6. Click Generate Statement to generate a showback statement for a fiscal period.
a. Select the showback statement in the Showback Statement Definition field of the Generate
Showback Statement pop-up that appears.
b. Select the fiscal period in the Fiscal Period field.
c. Click Generate.
Refresh the Showback Run Logs list to see the status of the showback statement change to
Generated.

Note:
The Published column indicates whether the showback statements have been
published or not by the status of true or false. If the status is false, it means that the
showback is not yet published and available for the showback user to see.
Review the generated showback statement and publish the statement for the
showback user to see the report, by navigating to Showback Statement Definition.

What to do next

After you publish the showback statement, the showback user can see the showback statement
in My Showback Statements.
View my showback statements as a showback user - Legacy
As a showback entity owner, you can view all the showback statements that are assigned to you.
You can review statements and raise a dispute if there is discrepancy or accept them.

Before you begin

Role required: showback_user

Important:
This feature is available only when you own an ITBM Analyst license.

Procedure
1. Navigate to All > Financial Charging > My Showback Statements.
2. View the list of showback statements that are assigned to you.
◦ Fiscal period: Period that the showback statement is generated for.
◦ Total cost: Cost of the service that you have been charged for.
◦ State: Status of the showback statement.
◦ Assigned to: Reporting entity user that utilized the service.
If you have a disagreement to any or all the statement lines, you can raise a dispute.
3. To raise a dispute, use the Raise a dispute UI action from the Statement expense line of the
showback statement or navigate to My Open Disputes.
Raise a dispute - Legacy
As a showback user, if you disagree with any of the information on a statement expense line,
then you can raise a dispute.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1759


<!-- page 1760 -->
Before you begin

Role required: showback_user

Important:
This feature is available only when you own an ITBM Analyst license.

Procedure
1. Navigate to All > Financial Charging > My Open Disputes.
2. In the Statement Disputes list, click New or click the Number in the Statement disputes list.
3. On the form, fill in the fields.
Statement Dispute form
Field

Description

Number

Sequential number for the dispute.

Statement expense line

Expense line from the choice list that you
disagree with.

Opened by

Defaults to the user name who is raising the
dispute.

Assigned to

Dispute assigned to the service charging
owner, if it is related to pricing policy, unit
rate, volume, or total cost.
Assign the dispute to service charging
financial analyst, if there is a disagreement
with the showback statement.

Reason code

Appropriate reason code from the choice list.

State

Status for the dispute:
◦ Open: The showback user raises a dispute.
◦ Work in progress: The service charging
owner or service charging analyst is
working on the dispute.
◦ Closed complete: The dispute is resolved
and closed.
◦ Closed incomplete: The dispute is not
resolved, but closed.
◦ Closed skipped: The disputed expense
line is skipped and closed.

Reason

Description of the dispute.

Additional comments (Customer visible)

Comments or notes, in complete sentences
and paragraphs, for the service charging
owner and service charging analyst to
understand and resolve the dispute easily.

Work notes

Work notes for internal communication only.

Statement expense line details

Expense line of the showback statement that
the dispute is raised for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1760


<!-- page 1761 -->
4. To complete the submission of the dispute, click Submit or to update an edited dispute, click
Update.
5. If you have reviewed the resolution for the dispute that you raised earlier, click Close.
6. To delete the record, click Delete.

What to do next

As a service charging owner, you can navigate to My Open Disputes to view the statement
disputes raised by the showback user and resolve the disputes.
If the service charging owner is not available to resolve the issue, the service charging analyst,
as a super user with special privileges, can resolve any open dispute in My Open Disputes.
View my statement items as a service owner - Legacy
As a business service owner, you can view the list of statement items for which you are the
service charging owner and you can generate the charge lines for a fiscal period.

Before you begin

Role required: service_charging_owner

Important:
This feature is available only when you own an ITBM Analyst license.

About this task

After the service charging analyst publishes the showback statements, you can review them
for any disputes raised by the showback user and manage the statement expense lines. You
can view the unit cost, cost recovery based on consumption, and set unit price, discount, or
surcharge to the statement item.

Procedure
1. Navigate to All > Financial Charging > My Statement Items.
2. View the list of statement items for which you are the service charging owner.
3. Review the statement item service charging details.
4. Click Generate Charge Lines.
5. In the Fiscal Period choice list of the Generate charge lines pop-up, select the fiscal period.
6. Click OK.

What to do next

You can view the statement items in the business unit owner showback dashboard.
Financial analyst showback dashboard - Legacy
As a financial analyst, you can use the Financial Analyst Showback dashboard central interface
to view all the showback statements that are generated. The dashboard helps to analyze the cost
of delivering services to the business and the recovery or showback of that cost.

Important:
This feature is available only when you own an ITBM Analyst license.
You can also navigate to Financial Charging > Showback > Dashboard to access this
dashboard.
The data are retrieved from the ITFM_Charge_Expense_Line_Details table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1761


<!-- page 1762 -->
Last Period Total Cost
Shows the total cost of delivering services in the last period.
Last Period Total Charges
Shows the total amount charged for all business services, based on the adjusted
prices.
Last Period Charge vs. Cost Variance
Shows the difference between the total charges and total costs for the last period.
YTD Charge vs. Cost Variance
Displays the difference between the total charges and total costs year to date.
Charge vs. Cost
Shows charges as bar charts versus the cost trend for the completed fiscal periods.
Last Period Total Cost Breakdown
Lists the total cost breakdown details of the statement item or business units for the
last period.
Business unit owner showback dashboard - Legacy
As a business unit owner, you can use the Business Unit Owner Showback dashboard interface
to see the statement items assigned to the business unit owner, set the pricing policy, and view
the last period cost.

Important:
This feature is available only when you own an ITBM Analyst license.
You can also navigate to Financial Charging > My Showback Dashboard to access this
dashboard.
Last period cost
Displays the sum of the cost that is shown for all statement items by the business
unit.
By statement item
Lists the statement items and the cost for a fiscal period.
Showback statements
Lists all the showback statements owned by the business unit owner.

Quick start test for Financial Management - Legacy
Validate that Financial Management still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and customize these quick start tests to pass
when using your instance-specific data.

Financial Management
Financial Management quick start tests require activating the Financial Management Core - ATF
Tests plugin (com.snc.financial_management.atf)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1762


<!-- page 1763 -->
ITFM: Financial Modeling flow test suite
Test

Description

Verify FM Cost Allocation Flow Verify the cost allocation flow
in financial modeling.

Release version

Madrid

To learn more about Financial Management, see Financial Management.
Related topics
Quick start tests

Financial Management Platform Analytics Solutions - Legacy
Platform Analytics Solutions contain preconfigured dashboards. These dashboards contain
actionable data visualizations that help you improve your business processes and practices.

Note: You can activate Performance Analytics solutions and in-form analytics on
instances that have not licensed Performance Analytics to evaluate the functionality.
However, to start collecting data you must license Performance Analytics.

Platform Analytics Solutions
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
To enable the solution for Financial Management, an admin can navigate to Performance
Analytics > Guided Setup. Click Get Started then scroll to the section for Financial
Management. The guided setup takes you through the entire setup and configuration process.
To access the ITFM prescriptive dashboards, you require the Performance Analytics – Content
Pack – Financial Management (com.snc.pa.fm) plugin. To get the cost data in the Total Expenses
YTD widget, you also require Performance Analytics – Premium (com.snc.pa.premium) plugin.
The ITFM prescriptive dashboards are based on the prescriptive cost models that you have
chosen for the financial model activities of your business enterprise.
Navigate to Financial Modeling Analyst: To track the total spend of business applications >
ITFM Prescriptive Dashboards to access the prescriptive dashboards.
Related topics
Activate your Performance Analytics subscription
Financial Management Application TCO dashboard - Legacy
The Application total cost of ownership (TCO) dashboard provides a view into a business
application and enables you to know the total amount spent on the application in the last fiscal
period. You can also compare its current cost of ownership with its cost incurred in the past fiscal
period, thereby forecast its future expenses.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1763


<!-- page 1764 -->
Application TCO dashboard

End user and roles
End user and goal

Required role

Financial Modeling Analyst: To track the total
cost_transparency_admin
spend of business applications. Administrator:
To track the cost of application in addition to
the cost of using and maintaining it.
Financial Modeling Analyst: To track the total
spend of business applications. Analyst: To

cost_transparency_analyst

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1764


<!-- page 1765 -->
End user and goal

Required role

predict the future total cost of ownership of
the application based on its past trend and
determine the affordability of its ownership
cost.

Indicators
Total Expenses Fiscal Quarterly – Application Cost Model
The indicator collects fiscal quarterly total cost data for the Business Applications
and Business Unit based on the Level 2 Costing – Business Applications cost
model.
% Application cost for total spends
Formula used to calculate the percentage of an application cost out of the total cost
of all business applications.
Average Cost Per User – Application
Formula used to calculate the average cost of applications consumed by a user.
Total Expenses Fiscal Quarterly Breakdowns – Application Cost Model
The indicator collects fiscal quarterly breakdown data for the business applications
and business unit of the Level 2 Costing – Business Applications cost model.
Total Expenses Fiscal Quarterly Breakdowns – ITSS – Application Cost Model
The indicator collects fiscal quarterly aggregated data that is rolled up from the IT
Shared Services to the Business Applications of the Level 2 Costing – Business
Applications cost model.
Total Expenses Fiscal Quarterly Breakdowns – Application Cost Model
The indicator collects fiscal quarterly cost allocation aggregated data. The data is
rolled up from the Business Application to the Business Unit of the Level 2 Costing –
Business Applications cost model.

Breakdowns
Business applications.

Data Visualizations
The Application TCO dashboard includes the following visualizations:

Title

Type

Description

Line

Displays the trend of cost
allocation breakdown
aggregate and average cost
per user by quarterly fiscal
period, with the amount and
percentage calculation.

Application Cost Trend

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1765


<!-- page 1766 -->
Title

Type

IT Shared Services – Buckets

Description

Gives a tabular view of the
bucket amounts allocated to
all the accounts within the IT
shared services segment in
the last four quarters.
Pivot

Financial Management Business Application Costing dashboard - Legacy
The Business Application Costing dashboard provides an executive view into the total expenses
on business applications consolidated for a quarter and year-to-date. The dashboard provides
visibility on the application cost to an extent that you can drill the data on top spenders down to
the buckets that contribute to the application cost, and business units that use the applications.
The dashboard is based on the Business Applications Costing cost model. This cost model
aligns business applications to business units and hence enables you to know the cost of
applications that support each business unit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1766


<!-- page 1767 -->
Business Application Costing dashboard

End user and roles
End user and goal

Required role

Financial Modeling Analyst: To track the total
cost_transparency_admin
spend of business applications. Administrator:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1767


<!-- page 1768 -->
End user and goal

Required role

To track the amount spent on a business
application.
Financial Modeling Analyst: To track the total
spend of business applications. Analyst: To
predict the future cost of application based
on its past trend, and determine whether to
continue with the application or not.

cost_transparency_analyst

Indicators
Total Expenses Fiscal Quarterly – Application Cost Model
The indicator collects fiscal quarterly total cost data for the Business Applications
and Business Unit of the Business Applications Costing cost model.
Total Expenses Fiscal Quarterly Breakdowns – Application Cost Model
The indicator collects fiscal quarterly cost allocation aggregated data, rolled up from
the Business Application to the Business Unit of the level 2 cost model.
Average Cost Per User – Application
Average cost of applications consumed by a user.

Breakdowns
• Business unit.
• Business applications.
• Buckets – Application Cost.

Data visualizations
Title

Type

Business Applications Cost
with Drivers

Description

Displays the amount that
each account in the Business
Application consumes from
different buckets (cost pools).
Bar

Average Enterprise Cost per
CPU

Displays the trend of average
unit cost per CPU.

Spline
Business Unit – Business
Application

Gives a tabular view of the
amount breakup spent by
the business units on the
applications for the last four
quarters.
Pivot

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1768


<!-- page 1769 -->
Financial Management CIO dashboard for Business Applications - Legacy
The CIO dashboard measures the real-time performance of business applications and provides
accurate, up-to-date data in a readily viewable form to support your decisions.
CIO Dashboard for Business Applications

End user and roles
End user goal with required role
End user and goal

Required role

Financial Modeling Analyst: To track the total
spend of business applications.

cost_transparency_analyst

Read only role for Financial Management: To
view the dashboard and its reports.

sn_itfm_read

Indicators
Total Expenses Fiscal Quarterly – Application Cost Model
The indicator collects fiscal quarterly total cost data for the Business Applications
and Business Unit of the Business Applications Costing cost model.
Total Expenses Fiscal Quarterly Breakdowns – Application Cost Model
The indicator collects fiscal quarterly cost allocation aggregated data, rolled up from
the Business Application to the Business Unit of the Business Application Costing
cost model.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1769


<!-- page 1770 -->
Average Cost Per User – Application
Average cost of applications consumed by a user.

Breakdowns
• Business unit.
• Business applications.

Data visualizations
Title

Type

Description

Business Applications Cost
with Drivers

Stacked bar

Displays the amount that
each account in the Business
Application consumes from
different buckets (cost pools).

chart
Labor Cost
Line chart

Labor Count

Displays the amount coming
from the labor bucket that is
allocated to Business Unit
segment from the business
application segment for each
fiscal period.
Unit quantity of labor bucket
for each fiscal period.

Line chart
Business Unit – Business
Application

Pivot

Tabular view of the amount
breakup spent by the
business units on the
applications for the last four
quarters.

chart
Average Enterprise Cost per
CPU

Spline

Displays the trend of average
unit cost per CPU.

chart
Financial Management Level 1 Costing – Shared Services dashboard - Legacy
The Level 1 Costing – IT Shared Services dashboard provides an executive view into the total
expenses consolidated for a quarter and year-to-date of top spenders. You can drill down to their
business units or shared services.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1770


<!-- page 1771 -->
Important:
This feature is available only when you own an ITBM Analyst license.
The dashboard gives visibility on the IT infrastructure cost, helps communicate to the business,
the cost of shared services, and facilitates analyzing the trend for the future growth.
Level 1 Costing – Shared Services dashboard is a simple dashboard with a single view into all
expenses. It is modeled on L1 Costing – Shared Services cost model. It provides two breakdowns
that you can drill into to get specific cost information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1771


<!-- page 1772 -->
Level 1 Costing – Shared Services dashboard

End user and roles
End user and goal

Required role

Financial Modeling Analyst: To track the total
cost_transparency_admin
spend of business applications. Administrator:
To track the IT infrastructure cost. To generate
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1772


<!-- page 1773 -->
End user and goal

Required role

reports that show how much each IT shared
service in a business unit is spending.
Financial Modeling Analyst: To track the total
spend of business applications. Analyst: To
take critical business decisions based on the
total spend reports of IT infrastructure cost.

cost_transparency_analyst

Indicators
Total Expenses Fiscal Quarterly – Service Cost Model
The indicator collects fiscal quarterly breakdown data for the IT Shared Services
and Business Unit of the Level 1 Costing – Shared Services cost model.
Total Expenses Fiscal Quarterly From Aggregates – Shared Services
The indicator collects fiscal quarterly aggregated data, rolled up from the IT Shared
Services to the Business Unit of the level 1 cost model.

Breakdowns
• Business Unit.
• IT Shared Services.

Data visualizations
The Level 1 Costing – Shared Services dashboard includes the following visualizations:

Title

Type

IT Shared Service Cost with
Drivers

Description

Displays the amount that
each account in the IT
shared services receives
from different buckets (cost
drivers).
Bar

Average Enterprise Cost per
Workstation

Displays the trend of average
unit cost per workstation for
the last four quarters.

Spline
Average Enterprise Cost per
CPU

Displays the trend of average
unit cost per CPU.

Spline

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1773


<!-- page 1774 -->
Title

Type

Business Unit – IT Shared
Service

Description

Gives a tabular view of the
amount spent by all the IT
shared services within each
business unit for the last four
quarters.
Pivot

Financial Management Level 2 Costing – Business Applications dashboard - Legacy
The Level 2 Costing – Business Applications dashboard provides an executive view into the total
expenses on business applications consolidated for a quarter and year-to-date.

Important:
This feature is available only when you own an ITBM Analyst license.
The dashboard provides visibility on the application cost to an extent that you can drill the data
on top spenders down to the buckets that contribute to the application cost, and business units
that use the applications.
The dashboard is based on the Level 2 Costing – Business Applications cost model. This cost
model aligns business applications to business units and hence you can know the cost of
applications that support each business unit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1774


<!-- page 1775 -->
Level 2 Costing – Business Applications dashboard

End user and roles
End user and goal

Required role

Financial Modeling Analyst: To track the total
cost_transparency_admin
spend of business applications. Administrator:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1775


<!-- page 1776 -->
End user and goal

Required role

To track the amount spent on a business
application.
Financial Modeling Analyst: To track the total
spend of business applications. Analyst: To
predict the future cost of application based
on its past trend, and determine whether to
continue with the application or not.

cost_transparency_analyst

Indicators
Total Expenses Fiscal Quarterly – Application Cost Model
The indicator collects fiscal quarterly total cost data for the Business Applications
and Business Unit of the Level 2 Costing – Business Applications cost model.
Total Expenses Fiscal Quarterly Breakdowns – Application Cost Model
The indicator collects fiscal quarterly cost allocation aggregated data, rolled up from
the Business Application to the Business Unit of the level 2 cost model.
Average Cost Per User – Application
Average cost of applications consumed by a user.

Breakdowns
• Business unit.
• Business applications.
• Buckets – Application Cost.

Data visualizations
Title

Type

Business Applications Cost
with Drivers

Description

Displays the amount that
each account in the Business
Application consumes from
different buckets (cost pools).
Bar

Average Enterprise Cost per
CPU

Displays the trend of average
unit cost per CPU.

Spline
Business Unit – Business
Application

Gives a tabular view of the
amount breakup spent by
the business units on the
applications for the last four
quarters.
Pivot

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1776


<!-- page 1777 -->
Financial Management Level 2 Costing – Business Services dashboard - Legacy
The Level 2 Costing – Business Services dashboard provides an executive view into the cost
of enabling a business service and aligning it to the business capabilities of an enterprise. The
dashboard provides visibility on the cost of supporting a business service and helps understand
the cost of the business services driven by the business units.

Important:
This feature is available only when you own an ITBM Analyst license.
The dashboard is based on Level 2 Costing – Business Services cost model that aligns business
services to business units. Therefore, you can track the service cost for each business unit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1777


<!-- page 1778 -->
Level 2 Costing – Business Services dashboard

End user and roles
End user and goal

Required role

Financial Modeling Analyst: To track the total
cost_transparency_admin
spend of business applications. Administrator:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1778


<!-- page 1779 -->
End user and goal

Required role

To track the amount spent on a business
service aligned to each business unit.
Financial Modeling Analyst: To track the total
spend of business applications. Analyst:
To predict the future total cost of business
service based on its past trend. Requires to
constantly realign the business service with
the customer needs and the organizational
goals.

cost_transparency_analyst

Indicators
Total Expenses Fiscal Quarterly – Business Service Cost Model
The indicator collects fiscal quarterly total cost data for the Business Services and
Business Unit of the Level 2 Costing – Business Services cost model.
Total Expenses Fiscal Quarterly Breakdowns – Business Service Cost Model
The indicator collects fiscal quarterly cost allocation aggregated data that is rolled
up from the Business Service to the Business Unit of the level 2 cost model.

Breakdowns
• Business unit.
• Business service.

Data visualizations
Title

Type

Business Services with Drivers

Description

Displays the total amount
spent on business services
stacked by buckets from
which the amount is allocated.
Bar

Average Enterprise Cost per
Workstation

Displays the trend of average
unit cost per workstation for
the last four quarters.

Spline
Average Enterprise Cost per
CPU

Displays the trend of average
unit cost per CPU.

Spline

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1779


<!-- page 1780 -->
Title

Type

Business Unit – Business
Service

Description

Gives a tabular view of the
amount breakup spent by
the business units on the
business services for the last
four quarters.
Pivot

Financial Management Level 3 Costing – Business Capabilities dashboard - Legacy
The Level 3 Costing – Business Capabilities dashboard provides an executive view into the total
spend drilled down to the business units or business capabilities for a quarter and year-to-date.
The dashboard provides visibility on the cost of supporting a business capability and helps
communicate value in terms of the business functions aligned to the business capabilities.

Important:
This feature is available only when you own an ITBM Analyst license.
The dashboard is based on Level 3 Costing – Business Capabilities cost model. The model
aligns the actual capability that is associated with a business application with the high-level
business capability.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1780


<!-- page 1781 -->
Level 3 Costing – Business Capabilities dashboard

End user and roles
End user and goal

Required role

Financial Modeling Analyst: To track the total
cost_transparency_admin
spend of business applications. Administrator:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1781


<!-- page 1782 -->
End user and goal

Required role

To track the amount spent on a business
capability aligned to each business unit.
Financial Modeling Analyst: To track the total
spend of business applications. Analyst:
To predict the future total cost of business
capability based on its past trend. Requires
to constantly realign the business capability
with the changing business trends and
requirements.

cost_transparency_analyst

Indicators
Total Expenses Fiscal Quarterly – Business Capability Cost Model
The indicator collects fiscal quarterly total cost data for the Business Capability and
Business Unit of the Level 3 Costing – Business Capabilities cost model.
Total Expenses Fiscal Quarterly Breakdowns – Business Capability Cost Model
The indicator collects fiscal quarterly cost allocation aggregated data that is rolled
up from the Business Capability to the Business Unit of the level 3 cost model.
Average Cost Per User
Formula used to calculate the average cost of business capabilities per user.

Breakdowns
• Business unit.
• Business capability.

Data visualizations
Title

Type

Business Capabilities with
Drivers

Description

Displays the total amount
spent on business capabilities
stacked by buckets (cost
pools) from which the amount
is allocated.
Bar

Average Enterprise Cost per
CPU

Displays the trend of average
unit cost per CPU.

Spline
Business Units – Business
Capabilities

Gives a tabular view of the
amount spent on the business
capabilities by the business
units for the last four quarters.
Pivot

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1782


