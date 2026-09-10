# Zurich Strategic Portfolio Management — Demand Management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 939–1037 of 2289

Sections: Demand Management (p939)

---

<!-- page 939 -->
Idea module form fields (continued)
Field

Description

Module Id

Unique identifier for the module used
as a parameter in the Idea Portal URL
to direct users. For example, if you
use hr as the Module Id, the URL to
access the Idea Portal would look
like the following example: /idea/?
id=ideas_list&sysparm_module_id=hr

Idea table

The table to be used to store ideas. This table
must extend the Idea [im_idea_core] table.

Enable downvote

Option for activating the ability to down-vote
an idea.
Default: Selected

Active

Option for activating the idea module.
Default: Selected

Category Limit

The maximum number of categories a user
can select while submitting an idea. Default: 5
This field does not appear by default on
the Idea module form so you must add it by
personalizing the form.

Related topics
Create an Idea module

Demand Management
The Demand Management application consists of tools for capturing, centralizing, and assessing
strategic and operational demands. It also provides a single location for managing all the
demand information.

Demand Management overview
Get started

Explore

Configure

Learn the features and business
value of Demand Management

Learn how to configure
Demand Management

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

939


<!-- page 940 -->
Use

Reference

Create and manage demands
with Demand Management

Learn about the forms and
fields of Demand Management

Troubleshoot and get help
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support
A typical workflow for you as the demand manager is as follows:
• Work on a demand to assess the feasibility, effort, and cost of the demand and create a
business case for approval of the demand.
• Create demand tasks, such as an initial feasibility review, cost estimate, and effort estimate,
to delegate activities to specialized resources or groups. For example, a demand manager
can create demand tasks for assessing the cost associated with a software upgrade and the
resources required.
• Assign demand tasks to a business analyst, resource user, or an appropriate group. The
assigned resource or group then creates a cost plan and resource assignment to help the
demand manager assess and qualify the demand. For more information, see Demand tasks.
Basics of Demand Management
• Set up the application: Plan, create stakeholders and assessment categories, and create
bubble charts.
• Assess ideas: Review and analyze submitted ideas before promoting ideas to demands.
• Create and add details to the demands: Create demands and add demand tasks, stakeholders
and assessments, and evaluate and qualify demands.
• Use the Demand Management application or the demand workbench to compare and assess
demands, and promote demands to projects, enhancements, changes, or defects.

Exploring Demand Management
Learn more about Demand Management and its process flow, and reviewing its benefits to your
organization.

Demand Management overview
In Demand Management assess the ideas submitted through the Idea Portal or ideation module
and promote the feasible ideas to demands. Track the progress of an accepted idea as it moves
through the demand life cycle (idea to a demand, to a project, enhancement, change, or defect).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

940


<!-- page 941 -->
Demand Management workflow
In demand management, a demand can be in any of the following

states.
The demand states are Draft, Submitted, Screening, Approved, and Completed. For more
information, see Use Demand Management.

Demand Management benefits
Benefit

Feature

Users

View and assess ideas that have been
approved to be demands in a central location.

Demand workbench

Demand Manager

Track the progress of an accepted idea as it
moves through the demand life cycle (idea to
a demand, to a project, enhancement, change,
or defect).
Manage and track the financials of your
demands in corporate, regional currency, or
the same currency that you want to use for
managing the project

Multicurrency in
Demand Manager
Demand Management

Add users to the stakeholder registry so
that demand and project management can
automatically populate the stakeholder list
when a user creates a demand or project.

Populate the
stakeholder registry

Demand Manager

Demand Management process flow
The Demand Management process flow consists of the following tasks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

941


<!-- page 942 -->
Demand Management Process Flow
Task

Description

Submitting
ideas

Any user can submit ideas from the following locations:
• Service Catalog > Can We Help You > Submit Idea.
• Self-Service > Ideas > Create New.

Note: Submitters or collaborators can edit their ideas as long the idea is
in the Submitted state.
Creating
demands

Demand managers and demand users can create demands using the Demand
Management application.
Alternatively, any user can create demands from the following locations:
• Service Catalog > Can We Help You > Create a new demand.
• Self-Service > Demands > Create New.

Note: Requesters or collaborators can edit their demands as long as the
demand is in the Draft state.
Adding
details to
demands

Demand managers can add details to a demand request by adding demand
tasks, stakeholders, requirements, risks, decisions, and resource assignments.

Assessing
demands

Decision makers can use assessment results and the demand backlog when
determining which demands to approve or reject.
Demand managers can decide if the assessment should be triggered for the
demand using the Assessment Required field on the demand form.

Completing
demands

Demand managers can set a demand to Completed when work on the demand
is complete.

Demand workbench
The demand workbench provides a central location for viewing and assessing business
demands.
The demand workbench makes it easy to manage demands by presenting multiple interactive
views of demand information on one page. The workbench is split into two panes: the top pane
presents an interactive bubble chart for assessing demands and the bottom pane displays the
demand details in a list view.
The demand workbench provides real-time interaction between the two panes. Modifying a
demand in the bubble chart automatically updates the values in the demand record. Similarly,
changes made to a demand record are automatically reflected in the bubble chart.
By default, the workbench displays demands screened by stakeholders or qualified by the
demand manager. With the demand manager role, you can use the workbench to:
• View, evaluate, and update demands
• Create demands
• Create artifacts from demands, including projects, enhancements, changes, and defects
With the demand manager role, you can view and evaluate demands.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

942


<!-- page 943 -->
Demand Workbench

The demand workbench includes the following components:
• The top pane displays demands in a bubble chart.
• The bottom pane displays demands in a list view.
• The header includes a back button (

) that opens the Demands list.

Demand workbench bubble chart
The interactive bubble chart on the demand workbench is a dynamically updated graph that
plots metrics for multiple demand records.
Demand managers can use bubble charts to visualize, compare, and evaluate the relative
standing of demands in three categories: risk, value, and size. The X-axis represents the risk
of a demand, the Y-axis represents the value, and the Z-axis represents the size. Demands
are plotted as circles, or bubbles, which vary in size according to the size of the demand. All
three measurements are based on values between 0 through 10. This scale enables demand
managers to see how one demand compares to other demands in the chart.
The bubble chart contains four quadrants, with each quadrant representing the value versus
risk tradeoff for the demand. The quadrants are labeled along the edges of the bubble chart
to represent this combination of value versus risk. The color of the bubbles displayed in each
quadrant also represents the value versus risk tradeoff.
• The upper left quadrant, labeled Resource, contains demands with high value and low risk.
Green bubbles represent demands in this quadrant.
• The lower left and upper right quadrants, labeled Consider, contain demands that require
further evaluation. The lower left quadrant contains demands with low risk but low value while
the upper right quadrant contains demands with high value but high risk. Orange bubbles
represent demands in these quadrants.
• The lower right quadrant, labeled Re-evaluate, contains demands with low value and high risk.
Red bubbles represent demands in this quadrant.
Each bubble also includes a label with the name of the demand.
From the demand workbench bubble chart, you can perform the following actions:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

943


<!-- page 944 -->
• Hover over a bubble to view a summary of the demand, including the demand name and the
risk, value, and size.
• Select a bubble to open a sizing window and change the size of the demand.
• Select and drag a bubble to increase or decrease the risk or value of the demand.
• Right-click a bubble to view the demand, create an artifact, or view an artifact that has been
created from a demand.

Note: If Agile Development 2.0 isn’t activated, you won’t find the options to create an
enhancement or a defect
Changes made to a demand in the bubble chart are automatically updated in the demand
record.
Demand workbench list view
The lower pane of the demand workbench displays a list of the demands shown in the bubble
chart.
The bubble chart list view displays up to 20 demands at a time. Page forward and back through
the list to display additional demands.
The Demand column displays the demand number, which provides a link to the Demand form.
The Stage column displays the status or progress of the demand. For more information, see
Stage Fields.
The interactive bubble chart is updated whenever you change a demand in the list view. If you
create a demand from the demand workbench, it’s created in a qualified state and appears on
the bubble chart. When a demand is promoted to a project, enhancement, change request,
defect, or Enterprise Agile Planning (EAP) entity, it’s removed from the bubble chart.
Performing the following tasks in the list view affects the demands displayed in the bubble chart:
• Searching or filtering the records in the list view displays the bubbles for those demands that
meet the search or filter criteria.
• Adding or deleting records in the list view adds or deletes the corresponding bubbles.
• Paginating the list view by selecting any of the page arrow icons displays the bubbles for the
demands that appear on the current page.
Predictive Intelligence for Demand Management
The Predictive Intelligence for Demand Management capability uses machine-learning
algorithms to search and display similar demands while creating a demand in the Demand form.
The PPM Predictive Intelligence Workbench includes a prebuilt use case template that
systematically guides you through the process of creating and training new predictive models,
evaluating and testing them, and finally adding them to your business process to add value to
your Idea, Demand, and Project Management.
Once you train your custom use cases, they’re usable immediately. No prior knowledge or
experience with artificial intelligence or machine learning is required when you use the PPM
Predictive Intelligence Workbench.
The application includes templates with prebuilt guidance to assist you in creating, training,
evaluating, testing, and producing your unique predictive models.
Predictive Intelligence for Demand Management has the following benefits:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

944


<!-- page 945 -->
• Improves the quality of your database by avoiding duplicate demands.
• Helps you in planning your demand. You can view details of similar demands that were
submitted and executed in the past.

Activation information
Activate the following plugins before using the Predictive Intelligence Workbench:
• Predictive Intelligence for PPM (com.snc.ppm_ml) plugin
• Predictive Intelligence for Ideation (com.snc.innovation_management_ml) plugin

Solution definition for Predictive Intelligence for Demand Management
The solution definition for Predictive Intelligence for Demand Management capability is available
in the Predictive Intelligence for PPM plugin (com.snc.ppm_ml). For more information about
Predictive Intelligence, see Predictive Intelligence
and Contextual search .
Solution Definition for Demand Management
Solution Definition

Solution Type

Description

Similar Demands

Similarity

View similar demands based
on the Demand Name and
Description fields. You can
see the results in the Similar
demands section on the
Demand form.

Note: This solution
definition is available as
a template on instances
where the following
plugins are active:
• Predictive Intelligence
for Contextual
Search plugin
(com.snc.contextual_search_ml)
• PPM Standard plugin
(com.snc.financial_planning_pmo)
• Predictive Intelligence
for PPM plugin
(com.snc.ppm_ml)

Related topics
Predictive Intelligence
Train the similarity solution for Demand Management to find similar demands
Create a demand
Similar record identification with Now Assist for Strategic Portfolio Management (SPM)
Identify similar records is a Now Assist skill that enables you to find the demand records that
are contextually similar to your demand. This feature helps to reduce duplicate demands and
improves planning efficiency.
The identify similar records skill uses the name, description, and business case content of a
demand to look for contextual similarity with other demand records using AI search. The skill
identifies demands with a minimum 85% similarity threshold, excluding outdated and irrelevant
records.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

945


<!-- page 946 -->
The similar demand records are displayed in a top banner and in the Similar Demands related
list. This skill improves visibility into related initiatives, and enhance decision-making for demand
users.
For more information on Now Assist for Strategic Portfolio Management (SPM), see Now Assist
for Strategic Portfolio Management (SPM).

Configuring Demand Management
Configure your Demand Management application to assess and promote demands to projects,
enhancements, changes, defects, or Enterprise Agile Planning (EAP) entities.

Configuration overview
Multicurrency in Demand Management
Manage and track the financials of your demands in the corporate currency, regional currency, or
the same currency that you want to use for managing the project using the multicurrency feature.
The corporate policy typically governs the choice of this preference.
In global or multinational organizations, demands are often managed and tracked at one
geographic location and executed at a different geographic location. As each location might use
a different currency to spend the budget, this difference in geographic location makes it difficult
to monitor and track financials for such demands.
The multicurrency feature in Demand Management makes it easier for you to manage and track
your demands from any geographical location in any currency. You can monitor and track the
financials of your demands in one currency and spend the budget in a different currency such as
the functional currency, regional currency, or the currency that you want to later use to manage
your projects. You can also choose to manage your demands in one currency and specify a
different currency for managing your future projects.

Activation information
Activate the PPM Standard Multicurrency (com.snc.ppm_multicurrency) plugin to enable the
multicurrency features in Demand Management. Activating the plugin enables the demand
currency view in demand, cost plans, and benefit plans forms. With the demand currency view,
you can manage your simple demand financials, cost plans, benefit plans, and budgets in the
demand currency.

Note: Activating this plugin automatically activates the PPM Standard
(com.snc.financial_planning_pmo) plugin and therefore you get the option to switch
between the default view and the demand currency view.

Currency Preferences
After activating the multicurrency plugin, specify your currency preference for managing your
demand financials. You can select your functional currency, a regional currency, or a local
currency. For more information, see Select demand currency preference.

Demand currency view
In addition to the default view in the Demand form, the Demand Currency view enables you to
view the multicurrency fields. You can enable this view from the form context menu.
You can designate a currency other than the functional currency as the processing Demand
Currency for a demand. The Financials tab of the Demand form has the Demand currency field.
You can select an active currency from the Currencies [fx_currency] table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

946


<!-- page 947 -->
Note:
The Demand currency field of a demand becomes read only once you create a cost plan,
cost plan breakdown, benefit plan, or benefit plan breakdown for the demand.

Multicurrency in Demand Tasks
Track the expenses incurred while performing the demand tasks in demand currency. When the
time card for a demand task is submitted and processed, the actual cost is calculated based on
the rate model, the default labor rate, or the rate defined in the system property. You can view
this actual cost in the Demand Task form in the Demand currency and Actual cost in demand
currency fields. For more information, see Demand tasks.

Multicurrency in Demand Baseline
Compare the financial baselines of your demands to track the performance of a demand over
time. Baseline comparison enables you to identify and review the financial changes made to the
demand at various stages of the demand life cycle. With the multicurrency feature, you can view
the financial information in the demand currency when you compare the baselines. You can also
configure the baseline view to add additional fields and view details in demand currency. For
more information, see Compare financial baselines of a demand.
Select demand currency preference
Set your currency preference to use for managing and tracking the financials of your demands
from the functional currency, regional currency, or local currency.

Before you begin

Activate the PPM Standard Multicurrency (com.snc.ppm_multicurrency) plugin.
Role required: admin

Procedure
1. Navigate to All > Project Administration > Settings > Preferences-Project.
2. Select a currency option for managing your demands from the Demand currency setup list.
Demand currency preference

Manage demands using the functional cur­
rency

Currency Option

Select the Follow functional currency option
to manage your demands using the functional
currency of your organization. The project cur­
rency is carried over to the Project form when
you create a project from the demand in the
future. You can change the project currency
for managing your projects later.
For example, if the functional currency of your
organization is USD, then USD is set as the
currency for both demands and projects.

Manage demands using the same currency
as the project currency

Select the Drive project currency option to
manage your demands and projects using
the same currency. This currency can be your
functional currency or any other currency.
For example, if you want to manage your de­
mand and project in a local currency, say

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

947


<!-- page 948 -->
Demand currency preference

Currency Option

GBP, then you would select this option and
specify GBP as your demand currency. The
Project Currency field in the demand form
is automatically populated with GBP as your
project currency on saving the form.
Select Flexi option to manage your demands
and projects, created from the demand, using
different currencies.
Manage demands and projects in different
currencies

For example, if you want to manage your de­
mands and projects in different currencies
such as USD and GBP, then you would select
this option and specify USD as demand cur­
rency and GBP as your project currency re­
spectively.

3. Select Save.

What to do next

Enable the multicurrency view in the Demand and other demand-related forms. For more
information, see Enable demand currency view.
Enable demand currency view
Switch to the demand currency view to track the planned costs of a demand in the selected
currency.

Before you begin

Activate the PPM Standard Multicurrency (com.snc.ppm_multicurrency) plugin.
Role required: admin or it_demand_manager

About this task

To manage your demands in a currency different than the functional currency, the demand
currency fields are added in the following tables that have the cost details and financials tab:
Tables with demand currency fields
Table name

Description

Demand [dmn_demand] table

Track a demand in a different currency. Create
a demand and select another currency by
navigating to the Financial tab and selecting
a currency in the Demand Currency field. To
create a demand, see Create a demand.

Demand Task [dmn_demand_task] table

Demand tasks are used to delegate the
cost, effort, risk, and benefit assessment
activities. To create a demand task, see Create
a demand task.

Cost Plans [cost_plan] table

Cost plans capture the costs of demands. To
navigate to the Cost Plan form, see Create a
demand cost plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

948


<!-- page 949 -->
Tables with demand currency fields (continued)
Table name

Description

Cost Plan Breakdown [cost_plan_breakdown]
table

Cost plan breakdowns specify the estimated
cost and actual cost at a granular level for
a fiscal period. To navigate to the Cost Plan
Breakdown form, see Create a demand cost
plan.

Benefit Plan [benefit_plan] table

If you open the demand form in Demand
Currency view, then by default the fields
related to the demand currency appear in the
Benefit Plans related list. To create a demand
benefit plan, see Create a monetary benefit
plan for a demand.

Benefit Plan Breakdowns
[benefit_plan_breakdown] table

Benefit plans capture the potential benefits
accrued by the demand when the demand is
executed. To update a benefit plan breakdown,
see Create a monetary benefit plan for a
demand.

Expense Line [fm_expense_line] table

Expense lines are part of the demand cost
plans and stores cost associated with a
specific resource. To navigate to the Expense
line form, see Create an expense line for a
demand.

Project Funding [project_funding] table

Stores the demand target and budget
expense values for both capital and operating
expenses for a single fiscal period. To allocate
the budget for a demand, see Allocate budget
to a demand.

Procedure
1. Navigate to the respective form.
2. Right-click the context menu of the form.
3. Select View.
4. Select Demand Currency from the list.

What to do next

Refer to the form fields that are exclusive to the Demand Currency view that you have selected.
All the other form tabs and fields remain the same both for the default view and the demand
currency view. Continue to enter values in the fields as you would for the default view.
Multicurrency fields in demand-related forms
When you enable the Demand Currency view in a Demand, Cost Plan, and Cost Plan Breakdown
forms, you can observe the multicurrency fields in the Financials section of the forms.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

949


<!-- page 950 -->
Financials tab of the demand form
Demand form
Field

Description

Demand currency

Currency in which you want to manage and
track the demand.

Note:
The ability to select a demand currency
depends on the currency option you
selected in Preferences-Project under
Project Administration. For more
information, see Select demand currency
preference.
The Demand currency field of a demand
becomes read only once you create a
cost plan, cost plan breakdown, benefit
plan, or benefit plan breakdown.
Project currency

Currency in which you want to implement the
project when this demand is converted to a
project.

Note:
The Project currency field in the
Project form of Project Management is
carried over from the demand when it’s
converted.
Capital expense in demand currency

Capital expenditure (Capex) for the demand.

Capital budget in demand currency

Total capital budget allocated to the demand
across all fiscal years.
The value is rolled up from the capital
expenditure (Capex) budget of the demand.

Operating expense in demand currency

Operational expenditure (Opex) for the
demand in the selected demand currency.

Operating budget in demand currency

Total operational budget allocated to the
demand across all fiscal years in the selected
demand currency.
The value is rolled up from the Opex budget of
the demand.

Total planned cost in demand currency

Estimated cost of the demand in demand
currency.

Financial return in demand currency

Estimate of the revenue based on the Total
planned costs in demand currency and
Financial benefit in demand currency fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

950


<!-- page 951 -->
Demand form (continued)
Field

Description

Financial benefit in demand currency

Estimate of revenue if the demand is approved
in the selected demand currency.
This value is rolled up from the benefit
breakdown of the demand.

Net present value in demand currency

Present value of future cash based on the
given annual interest rate in the selected
demand currency.
It’s a measure for comparing money spent
today against future expected financial
benefits. It helps when evaluating the overall
investment performance.

Actual cost in demand currency

Total cost incurred while working on a demand
and demand tasks in the selected demand
currency.

Multicurrency fields of the Demand Task form
Demand Task form
Field

Description

Demand currency

Currency that you specified in the Demand
currency field of the Demand form.

Actual cost in demand currency

Total cost incurred while working on a demand
tasks in the selected demand currency.
Actual cost comes after the assignee of the
demand task creates and submits a time card.
When the time card is approved, the resource
rate, derived from the rate card, labor rate, or
system properties, is used to populate this
field.

Financials section of the Cost Plan form
Cost Plan form
Field

Description

Demand currency

Currency that you specified in the Demand
currency field of the Demand form.

Cost in demand currency

Value that is rolled up from the Entered cost
field of all cost plan breakdowns.

Note: Any change that you make to the unit cost, quantity, or fiscal period of a cost
plan has the amounts recalculated in demand currency. See Cost plan updates and cost
recalculation in demand currency.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

951


<!-- page 952 -->
Multicurrency fields in the Cost Plan Breakdown form
Cost Plan Breakdown form
Field

Description

Demand currency

Currency that you specified in the Demand
currency field of the Demand form.

Cost in demand currency

Breakdown amount in demand currency.

Demand currency exchange rate

Rate in effect for the period corresponding
to the cost plan breakdown in the demand
currency.

Demand currency exchange rate date

The reference date on which the currency
exchange rate is applied for conversion.

Financials section of the Benefit Plan form
Benefit Plan form
Field

Description

Demand currency

Currency that you specified in the Demand
currency field of the Demand form.

Benefit in demand currency

Benefit incurred from demand in demand
currency.

Actual benefit in demand currency

Actual benefit value rolled up from the actual
benefit in the benefit breakdown.

Multicurrency fields in the Benefit Plan Breakdowns form
Benefit Plan Breakdowns form
Field

Description

Demand currency

Currency that you specified in the Demand
currency field of the Demand form.

Benefit in demand currency

Benefit incurred from demand in demand
currency.

Demand currency exchange rate

Rate in effect for the period corresponding
to the benefit plan breakdown in demand
currency.

Demand currency exchange rate date

The reference date on which the currency
exchange rate is applied for conversion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

952


<!-- page 953 -->
Multicurrency fields in the Expense Line form
Expense Line form
Field

Description

Demand currency

Currency that you specified in the Demand
currency field of the Demand form.

Amount in demand currency

Expense cost in demand currency. Amount
entered in the Amount field is converted to
demand currency.

Multicurrency fields in the Demand Budget form
Demand Budget form
Field

Description

Capex budget in Demand Currency

Planned expense amount allocated for capital
expenditure in the selected currency.

Opex budget in Demand Currency

Operating expense amount in the selected
currency in the selected currency.

Total Budget in Demand Currency

Sum of Capex and Opex amounts in the
selected currency.

Allocate demand budget in demand currency
Set the capital expense (Capex) and operating expense (Opex) budgets in demand or functional
currency according to the fiscal years. The sum of the Capex and Opex budgets is calculated as
the total budget in demand currency.

Before you begin

Role required: it_demand_manager

About this task

Allocate the budget in a similar manner as you do with functional currency. For more information,
see Allocate budget to a demand.
Enable the Demand Currency view in the Demand form to allocate the budget in demand
currency.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand to which you want to allocate the budget.
3. Select the Create Demand Budget related link of the Demand form.
The Demand Budget dialog box opens.
4. On the Demand Budget dialog box, fill in the fields.
For detailed description of the field names, see Demand Budget form.
5. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

953


<!-- page 954 -->
Result

The demand budget for the selected year appears in the Demand Budget related list. Select the
amounts in the list to revise them.
Cost plan updates and cost recalculation in demand currency
Updating the unit cost, quantity, or fiscal period of a cost plan updates all the related amount
fields in the cost plan and its breakdowns. Also, the amounts in the related fields of the demand,
to which the cost plan is rolling up, are recalculated and reflected in the demand currency.
Changes in Unit cost, Quantity, and Recurring check box of a cost plan
When you change the values of any of these fields in the Cost Plan form with
multicurrency view enabled, the following values are recalculated:
• When you modify the Unit cost field, Quantity field, or Recurring check box of the
Cost Plan form, the total planned cost is recalculated in demand currency.
• The Cost in demand currency in the Cost Plan Breakdown is also recalculated.
• The values in the Capital expense in demand currency, Operating expense in
demand currency, and the Total planned cost in demand currency fields of the
demand are recalculated.
Changes in the fiscal period of a cost plan
When you change the fiscal period, either the start date or end date in the Cost Plan
form, the following values are recalculated:
• The Total planned cost and the Cost in demand currency of the cost plan are
recalculated. Therefore, the Cost Plan Breakdown records may be added or
removed.
• If the Recurring check box isn’t selected, then the Cost in demand currency of
each Cost Plan Breakdown record is recalculated.
• The values in the Capital expense in demand currency, Operating expense in
demand currency, and the Total planned cost in demand currency fields of the
demand are recalculated.
Changes in the entered cost of a cost plan breakdown or manual addition of a breakdown
When you change the entered cost in an individual Cost Plan Breakdown record
or manually add cost plan breakdowns to a cost plan, the following values are
recalculated:
• The Total planned cost of the cost plan is recalculated in demand currency.
• The values in the Capital expense in demand currency, Operating expense in
demand currency, and the Total planned cost in demand currency fields of the
demand are recalculated.
Benefit plan updates and recalculation in demand currency
Updating the entered currency, entered benefit, offset type, or the fiscal period of a benefit plan
also updates all related amount fields in the benefit plan and its breakdowns. Also, the amounts
in the related fields of the demand, to which the benefit plan is rolling up, are recalculated and
reflected in demand currency.
Changes in entered currency, entered benefit, and recurring check box of a benefit plan
When you change the values of any of these fields in the Benefit Plan form with
multicurrency view enabled, the following values are recalculated:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

954


<!-- page 955 -->
• When you modify the Entered currency field, Entered benefit field, or Recurring
check box of the Benefit Plan form, the total planned benefit is recalculated in
demand currency.
• The Benefit in demand currency in the Benefit Plan Breakdown is recalculated.
• The value in the Financial benefit in demand currency field of the demand is
recalculated.
Changes in the offset type of a benefit plan
When you change the offset type for the benefit plan, either the start date or end
date and specify the offset period and duration of such periods in the Benefit Plan
form, the following values are recalculated:
• The Total planned benefit and the Benefit in demand currency of the benefit
plan are recalculated. Therefore, the Benefit Plan Breakdown records may be
added or removed.
• If the Recurring check box isn’t selected, then the Benefit in demand currency of
each Benefit Plan Breakdown record is recalculated.
• The value in the Financial benefit in demand currency field of the demand is
recalculated.
Changes in the fiscal period of a benefit plan
When you change the fiscal period, either the start date or end date in the Benefit
Plan form, the following values are recalculated:
• The Benefit in demand currency and the Total planned benefit of the benefit
plan are recalculated. Therefore, the Benefit Plan Breakdown records may be
added or removed.
• If the Recurring check box isn’t selected, then the Benefit in demand currency of
each Benefit Plan Breakdown record is recalculated.
• The value in the Financial benefit in demand currency field of the demand is
recalculated.
Changes in the entered benefit of a benefit plan breakdown
When you change the entered benefit in an individual Benefit Plan Breakdown
record, the following values are recalculated:
• The Benefit in demand currency of the benefit plan is recalculated in demand
currency.
• The value in the Financial benefit in demand currency field of the demand is
recalculated.
Quick start tests for Multicurrency in Demand Management
Validate that the multicurrency in Demand Management still works after you make any
configuration change such as applying an upgrade or developing an application. Copy and
customize these quick start tests to pass when using your instance-specific data.

Danger: By default, the system property that is used to run automated tests is disabled
to prevent you from accidentally running these tests on a production system. To avoid data
corruption or an outage, run tests only on development, test, and other non-production
instances. See Enable or disable executing Automated Test Framework tests .
Demand currency quick start tests require activating the PPM Standard Multicurrency – ATF
Tests plugin (com.snc.ppm_multicurrency.atf).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

955


<!-- page 956 -->
Demand currency test suite tests
Test

Description

Release version

Verify cost in demand
currency on cost plan

Validate the calculation of cost Quebec
plan breakdown with budget
reference rate and verify the
roll up to cost plan in demand
currency.

Verify benefit in demand
currency on benefit plan

Validate the calculation of
benefit plan breakdown with
budget reference rate and
verify the roll up to benefit
plan in demand currency.

Quebec

Related topics
Quick start tests
Upgrade existing demands
Execute scheduled jobs to upgrade your existing active and inactive demands, respectively, after
activating the PPM Standard Multicurrency (com.snc.ppm_multicurrency) plugin.

Before you begin

Activate the PPM Standard Multicurrency (com.snc.ppm_multicurrency) plugin.
Role required: admin

About this task

Run these scheduled jobs on demand to upgrade your existing active and inactive demands in
demand currency only when necessary.

Note: The jobs may have a performance impact depending on the number of demands
and cost plans, therefore run the jobs only when necessary.

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Execute a scheduled job to upgrade your existing active and inactive demands.
Demand type

Steps

a. Find the Upgrade demand currency fields
for active demands scheduled job and
open.
b. Select Execute Now
Active demands

Executing the job copies all amounts in the
cost-related fields of the demands in demand
currency. The Baseline, Cost Plan, Cost Plan
Breakdown, Benefit Plan, Benefit Plan Break­
down fields are also changed to the demand
currency. You can’t edit the demand curren­
cy after the values in the functional curren­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

956


<!-- page 957 -->
Demand type

Steps

cy fields are copied to the demand currency
fields since the financial costs exist.
a. Find the Upgrade demand currency fields
for inactive demands scheduled job and
open.
b. Select Execute Now.
Inactive demands

Executing the job copies the values in the
cost-related fields for all existing inactive de­
mands to the demand currency. The currency
in the Baselines, Cost Plans, Cost Plan Break­
downs, Benefit Plans, Benefit Plan Break­
downs, Expense Lines forms changes to de­
mand currency.

Set up Demand Management
Perform these tasks to set up Demand Management.
Before using Demand Management, PPS admin performs several setup tasks.
Planning for Demand Management
Plan the listed items before setting up Demand Management.
Demand Management Planning
Name

Description

Roles

Determine who has the demand manager [it_demand_manager] and demand
user [it_demand_user] roles.

Portfolios

Determine how you want to group or categorize demands, and then have a user
with the project manager [it_project_manager] role create portfolios based on
those groupings.

Stakeholders

Identify individuals who have the appropriate domain knowledge to evaluate
demands related to each portfolio.
Then make them stakeholders for that portfolio.

Assessments Consider using assessments to facilitate the information gathering process.
Define metric categories and assessment metrics to develop and distribute
assessments to the appropriate audience.
Bubble chart
definitions

Identify metrics that are important to stakeholders, departments, and the
organization.
Use these metrics to create bubble charts that visually compare demands.
For example, when considering which projects to undertake many
organizations compare metrics such as risk rating, return on investment, and
cost.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

957


<!-- page 958 -->
Demand Management Planning (continued)
Name

Description

Resource
assignments

Consider creating resource assignments to help the organization understand
the time and resource costs associated with the demand. Any resource
assignment attached to the demand propagates to the project.
Resource assignments require that the Resource Management Workspace
application is active.

Enhancement Determine if you need the ability to manage enhancement and defect requests
and defect
as demands.
requests
This functionality requires that the Agile Development application is active.
Populate the stakeholder registry
Add users to the stakeholder registry so that demand and project management can
automatically populate the stakeholder list when a user creates a demand or project.

Before you begin

Role required: it_pps_admin

Procedure
1. Navigate to All > Project Administration > Settings > Stakeholders.
You can also scroll to the Stakeholders related list on the Demand or Project form and select
New to create a record.
2. Select New to create a record.
3. On the stakeholder register form, fill in the fields.
For a description of the field names, see Stakeholder Register Form.

Note: When adding a user to the stakeholder registry, the combination of the user and
the assigned portfolio must be unique. However, there can be more records for the same
user but with a different portfolio.
View an assessment metric category
View assessment metric categories that are used with assessment metric types and assessment
metrics in generating the bubble charts on the Demand Workbench. The bubble charts help the
demand managers to assess the demands visually.

Before you begin

Role required: it_pps_admin

About this task

The Demand Management application comes with an assessment metric type named Demand,
five default assessment metric categories, and assessment metrics.

Procedure
1. Navigate to All > Project Administration > Settings > Assessments Metric Categories.
2. Open an assessment metric category to review it.
The following default assessment metric categories are available with the Demand
Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

958


<!-- page 959 -->
Demand assessment metric categories
Assessment
metric
Data source
category

Size

T-Shirt size field on the Demand form.

Description

Assesses demand size relative to the
size of other demands.

Strategic
View an assessment category result
Alignment field in the assessment category result
for the Strategic Alignment metric
category.

Assesses how closely the demand
aligns with strategic goals of the
organization compared to other
demands.

Risk

Rating field in the assessment category
result for the Risk metric category.

Assesses demand risks compared to
other demands.

ROI

Impact and Financial return fields on
the Demand form.

Assesses demand return on
investment compared to other
demands.

Cost

Labor costs, Capital expense, and
Operating expense fields on the
Demand form.

Assesses demand cost compared to
other demands.

Configure a widget for the financial metrics of a demand
Configure a widget to view and track the financial metrics of a demand on the Demand Financials
page.

Before you begin

Role required: pps_admin

Procedure
1. Navigate to All > Project Administration > Widgets.
2. Select New.
3. On the Widget form, fill in the fields.
For a description of the field names, see Widget form.

What to do next

Associate the widget to the Demand table.
Associate a widget to the Demand table
After you configure a widget, associate it with the Demand table to show the financial data of a
demand.

Before you begin

You must configure a widget before you can associate it with the Demand [dmn_demand] table.
Role required: pps_admin

Procedure
1. Navigate to All > Project Administration > Widgets.
2. Open a widget to associate with the Demand table.
3. In the Widget associations related list, select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

959


<!-- page 960 -->
4. On the Widget Association form, fill in the fields.
For a description of the field names, see Widget Association form.
Configure demand workbench
Update the demand workbench to configure parameters such as bubble chart.

Before you begin

Role required: it_pps_admin

About this task

You can configure the parameters of the demand workbench provided with the base system.
Bubble charts are useful for comparing demands based on common metrics such as risk rating,
return on investment, and cost. Decision makers can use bubble charts when considering which
demands to approve or reject.

Procedure
1. Navigate to All > Project Administration > Settings > Workbench Config - Demand.
2. Open the Demand Workbench record.
3. Update the required settings and select Update.

Use Demand Management
Users with the demand manager role can create, view, and modify demands using the Demand
Management application.
You can also approve demands and create the following artifacts from the approved demands:
• Project
• Change
• Enhancement
• Defect
• Enterprise Agile Planning (EAP) entities (epic, feature, and capability)
The type of artifact created from a demand depends on the selections in the Category and Type
fields on the Demand form.

Note:
• Enhancements and defects can be created when the administrator has activated the
SDLC-SCRUM plugin.
• EAP entities can be created when the Strategic Planning plugin is activated.

Demand Management Life Cycle
The demand management life cycle can be simplified as follows:
• Creating a demand: The user submits an idea and the demand manager approves the idea,
automatically creating a demand from that idea.
• Viewing a list of demands: The demand manager views demands on the demand workbench
or from a list view.
• Enhancing a demand: The demand manager can send the demand to screening, which sends
assessments to stakeholders.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

960


<!-- page 961 -->
• Assessing a demand:
◦ The demand manager can screen the demand and send surveys to stakeholders to
complete assessments.
◦ The demand manager can set the state of the demand to qualify, defer, or incomplete.
◦ Demands can be analyzed and approved using the demand workbench.
• Creating an artifact: The demand manager creates a project, enhancement, change, defect, or
EAP entities.
The demand management application uses the following simplified demand states.
Demand States
State

Description

Draft

The demand manager accepts a submitted idea.
After reviewing or editing the record, select one of these buttons:
• Update: The demand record is updated, but the demand remains in the current
state.
• Submit demand: The demand is moved to the submitted state.
• Delete: The demand record is deleted.

Submitted

An accepted idea creates a demand record and the demand manager submits the
demand.
After reviewing or editing the record, select one of these buttons:
• Update: The demand record is updated, but the demand remains in the current
state.
• Screen: The demand is moved to the screening state.
• Qualify The demand is moved to the qualified state.
• Defer: The demand is moved to the deferred state.
• Incomplete: The demand is moved to the incomplete state.
• Reset to Draft: The demand is moved back to the draft state.
• Delete: The demand record is deleted.

Screening

Stakeholder assessments are initiated for the demand.
After reviewing or editing the record, select one of these buttons:
• Update: The demand record is updated, but the demand remains in the current
state.
• Qualify The demand is moved to the qualified state.
• Defer: The demand is moved to the deferred state.
• Reset to Draft: The demand is moved back to the draft state.
• Delete: The demand record is deleted.

Qualified

The demand has been qualified and is ready for review.
After reviewing the record, select one of these buttons:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

961


<!-- page 962 -->
Demand States (continued)
State

Description

• Update: The demand record is updated, but the demand remains in the current
state.
• Approve: The demand is moved to the approved state.
• Defer: The demand is moved to the deferred state.
• Delete: The demand record is deleted.
Deferred

The demand has been put on hold. The demand can be revisited in future and
reviewed.
After reviewing the record, select one of these buttons:
• Update: The demand record is updated, but the demand remains in the current
state.
• Approve: The demand is moved to the approved state.
• Delete: The demand record is deleted.

Approved

The demand is approved
After reviewing or editing the record, select one of these buttons:
• Update: The demand record is updated, but the demand remains in the current
state.
• Close: The demand is moved to the closed state.
• Reset to Draft: The demand is moved back to the draft state.
• Delete: The demand record is deleted.

Completed The demand is moved to the completed state.
After reviewing the record, select one of these buttons:
• Update: The demand record is updated, but the demand remains in the current
state.
• Reset to Draft: The demand is moved back to the draft state.
• Delete: The demand record is deleted.
These states appear in the process flow indicator at the top of the Demand form. The process
flow indicator:
• Highlights the current state of the demand.
• Checks off the states that a demand has passed through.
• Leaves empty the states that have been skipped.
In this example, the demand is in the Approved state. It passed through the Draft, Submitted,
and Qualified states but skipped the Screening state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

962


<!-- page 963 -->
Assess demands
The Demand Management application comes with two demand visualization tools that can aid
decision makers with demand assessment.
The demand workbench provides a single point of engagement for assessing and approving
demands and creating projects, enhancements, changes, or defects. This page combines
multiple views of demand information, including an interactive bubble chart and a detail area
that displays the list of current demands. The demand roadmap is a visual representation of
demands over time for an organization.

Using the Demand Workbench
A bubble chart is a graph that plots multiple demands based on three categories: risk, value, and
size. Each demand is represented on the bubble chart by a circle, which varies in size and color
depending on the average of the scores for these categories. The bubble chart in the demand
workbench displays all qualified demands and is dynamically updated as demands are created
and assessed. This chart makes a useful tool for demand managers, stakeholders, and decision
makers to assess visually and compare demands.
The list view on the demand workbench displays a list of the qualified demands that appear in
the bubble chart. Selecting a demand from this list highlights the demand in the bubble chart
and displays the demand form. The list view is also integrated with Live Feed so users can see
current activity for a demand.
To access the demand workbench, navigate to Demand > Demands > Workbench.

Using the Roadmap
The roadmap is an interactive visualization tool that shows all demands that are currently in an
active state. You can modify the look of the backlog using the Settings pane. The Settings pane
enables you to change between the two-dimensional (2D) and three-dimensional (3D) view, filter
demands by portfolio, or open the demands in a list view. While in list view, you can reassign
panel colors, create filters to limit the records that are used for lanes and panels, and apply
sorting. To use the roadmap, navigate to All > Demand > Roadmap.
Create a demand
Create demands to capture your strategic and operational requirements and centralize
information for stakeholder assessment and prioritization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

963


<!-- page 964 -->
Before you begin

Role required: snc_internal

Procedure
1. Access the Demand New record form in one of the following ways.
◦ Navigate to All > Demand > Demands > Create New.
◦ Navigate to Self-Service > Demands > Create New.
◦ If you have the it_demand_manager role, navigate to All > Demand > Demands >
Workbench > New.

Note: Demands created from the Demand Workbench are in the Qualified state.
2. On the Demand New record form, fill in the fields.
For a description of the field values, see Demand form.
3. Select Save.

Note: Requesters or collaborators can edit their demand as long as the demand is in
the Draft state.

What to do next
• Review and refine the demand details.
• When all required information is complete, move the demand to the Submitted state by
selecting Submit demand. The demand then enters the formal evaluation workflow involving
the demand manager and stakeholders.
Create a qualified demand
The demand manager can create a qualified demand from the demand workbench list view.

Before you begin

Role required: it_demand_manager

About this task

Saving the demand adds it to the Demands list and adds a bubble representing the demand in
the bubble chart.

Procedure
1. Navigate to All > Demand > Demands > Workbench.
2. Select New at the top of the list view.
3. Fill in the fields on the Demand form.
For information about the fields, see Creating Demands.
Create a demand task
Create tasks for a demand to delegate cost, effort, risk, and benefit assessment activities. Assign
a resource or group to the demand task to track the actual time and effort spent on performing
the specified activities.

Before you begin

Role required: it_demand_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

964


<!-- page 965 -->
About this task

You create demand tasks to plan the work for demands rather than for the target work entity such
as a project, change, defect, or enhancement. For more information, see Demand tasks.
• Planned dates, actual dates, and original dates are part of project tasks not demand tasks.
• The due date indicates the date on which the task is targeted for completion and doesn’t
affect the demand workflow. Project tasks, however, affect the project completion dates if the
planned dates and actual dates are changed.
• Don’t support the creation of nested demand tasks.
• Don’t support task constraints such as the settings Start ASAP and Start on a specific date.
• Don’t support an execution type such as Agile, Waterfall, or Hybrid.
• You assign resources for a demand task use the Assigned to field, Additional Assignee list,
and Assignment Group fields.
Resources assigned to a demand task can submit the time spent on it using a time card.
If you’re creating a demand task with the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin activated and Demand Currency view enabled, additional
fields become available in addition to the Default view. For more information about the fields that
are available only in the Demand Currency view, see Multicurrency in Demand Management and
Multicurrency fields in demand-related forms.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand to which you want to add tasks.
3. Add or edit a demand task from the Demand Tasks related list:
◦ To add a demand task, select New.
◦ To update the details of an existing demand task, select the record and then select Edit.
4. On the Demand Task form, fill in the fields.
For a description of the field names, see Demand task form.
5. Select Save.
After completing your work on the demand task, select Update to return to the demand page.

What to do next

Create resource assignments and add cost plans, benefit plans, and risks to the demand
depending on your role. Use the following related links to access these tasks.
Demand Task form related links
Related Links

Description

Add Cost Plan to Demand

Add a cost plan to capture the costs of
demands. Create a cost plan to specify
the unit cost of a cost type for a fiscal
period. This link appears if the Category
value is set to Cost estimate and the user
has the it_project_manager or
it_demand_manager role. Select the
link to open the cost plan form and fill in the
details. For more information, see create a cost
plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

965


<!-- page 966 -->
Demand Task form related links (continued)
Related Links

Description

Add Resource Plan to Demand

Create a resource plan to find the availability
of resources and add the resource plan to the
demand. This link appears if the Category
value is set to Effort estimate and the user has
the it_resource_user role. Select the link
to navigate to the Resource Plans page and
request resources. For more information, see
Create and manage resource assignments for
a demand.

Add Benefit Plan to Demand

Create a benefit plan to capture the potential
benefits accrued by the demand when the
demand is executed. This link appears if the
Category value is set to Benefit estimate and
the user has it_project_manager or
it_demand_manager role. Select the link
to open the benefit plan form and fill in the
details. For more information, see Create a
monetary benefit plan for a demand.

Add Risk to Demand

Add risks that can potentially impact the
success or outcome of the execution
of the demand. This link appears if the
Category value is set to Risk estimate and
the user has it_project_manager or
it_demand_manager role. Select the link
to open the risk form and fill in the details. For
more information see, add a risk.

Submit a time card for a demand task
The resources assigned to a demand task create and submit a time card or time sheet to record
the time spent on a demand task. The reported hours are used to calculate the actual cost and
effort for a demand task.

Before you begin

Role required: timecard_user

About this task

The resource submits the time card or time sheet to record and track the work performed on
a demand task. An appropriate approver then has to approve the submitted time card or time
sheet.

Procedure
1. Navigate to All > Time Sheets > Time Sheet Portal.
2. Create a time card.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

966


<!-- page 967 -->
Demand task assignment

If a demand task is assigned to you

To create a time card

a. Navigate to the task that you want to add to
the time sheet.
b. Select the Add to Time Sheet link in the
task.
a. Select the Add unassigned tasks to Time
Sheet link next to Logged Time Cards

If a demand task is assigned to you as an ad­
b. In the Add unassigned tasks to Time Sheet
ditional assignee
window, search for and select the demand
task from the Select a Task list.
3. Fill in the hours for each day spent working on the demand task.
4. Select Submit.
Create an artifact from a demand
Create an artifact, such as a work item, from a demand so that you can track work on the
demand.

Before you begin

A demand must have been created. For more information, see Create a demand.
The category and type of a demand and the applications you have installed determine the
artifact you can create from it. The available artifact types and the applications you must have
installed to be able to create them are listed in the following table.

Artifact

Required application

Enhancement, change, or defect

Project Portfolio Suite

Agile Development entities (story or epic)

Agile Development 2.0

Scaled Agile Framework (SAFe)SAFe entities
(story, feature, or epic)

Essential SAFe or Portfolio SAFe

Enterprise Agile Planning (EAP) entities (epic,
feature, or capability)

Strategic Planning

Role required: it_demand_manager

Note:
• The sn_apw_advanced.eap_user role is required to convert a demand to EAP entities.
• The safe_art_user role is required to create a SAFe story.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the demand for which you want to create an artifact.
3. Verify that the values in the Category and Type fields are appropriate for the artifact you want
to create.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

967


<!-- page 968 -->
The options in the Type list change according to the category that you select. For more
information, see Demand form.

Note: The Category and Type fields are set to read only when an artifact is created from
a demand. If you delete the created artifact, these fields become editable again.
4. Select Update.
5. Create the artifact by selecting the appropriate related link.
Depending on the category and type of the demand, links related to the artifact you can create
become available.
Related link

Description

Create Project

This link appears if the Category field is set to
Strategic and the Type field is set to Project.
Creates a project that is associated with this
demand. The number of the project record is
displayed in the Project field. For more infor­
mation, see Data migrated from a demand to
a created project.

Create Enhancement

This link appears if the Category field is set to
Strategic and the Type field is set to Enhance­
ment. Creates an enhancement associated
with this demand. Use enhancements to re­
quest improvements or new capabilities for
existing features or services, for example, a re­
quest to add new UI elements. The number of
the enhancement record is displayed in the
Enhancement field.

Create Epic

This link appears if the Category field is set
to Strategic and the Type field is set to Epic.
Creates an Agile Development 2.0 epic that
is associated with this demand. A Demand ref­
erence field is created in the Agile Develop­
ment 2.0 Epic form.

Create Story

This link appears if the Category field is set
to Strategic and the Type field is set to Story.
Creates an Agile Development 2.0 story that
is associated with this demand. A Demand ref­
erence field is created in the Agile Develop­
ment 2.0 Story form.

Create EAP Epic

This link appears if the Category field is set
to Strategic and the Type field is set to EAP
Epic. Creates an Enterprise Agile Planning
(EAP) epic that is associated with this de­
mand. A Converted from reference field is
created in the EAP epic form.

Create EAP Feature

This link appears if the Category field is set to
Strategic and the Type field is set to EAP Fea­
ture. Creates an EAP feature that is associat­
ed with this demand. A Converted from refer­
ence field is created in the EAP feature form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

968


<!-- page 969 -->
Related link

Description

Create EAP Capability

This link appears if the Category field is set to
Strategic and the Type field is set to EAP Ca­
pability. Creates an EAP capability that is as­
sociated with this demand. A Converted from
reference field is created in the EAP capabili­
ty form.

Create SAFe Story

This link appears if the Category field is set
to Strategic and the Type field is set to SAFe
Story. Creates a Scaled Agile Framework
(SAFe) story that is associated with this de­
mand. A Demand reference field is created in
the SAFe Story form.

Create SAFe Epic

This link appears if the Category field is set
to Strategic and the Type field is set to SAFe
Epic. Creates a SAFe epic that is associated
with this demand. A Demand reference field
is created in the SAFe Epic form.

Create SAFe Feature

This link appears if the Category field is set
to Strategic and the Type field is set to SAFe
Feature. Creates a SAFe feature that is associ­
ated with this demand. A Demand reference
field is created in the SAFe Feature form.

Create Change

This link appears if the Category field is set
to Operational and the Type field is set to
Change. Creates a change that is associated
with this demand. The number of the change
record is displayed in the Change field.

Create Defect

This link appears if the Category field is set
to Operational and the Type field is set to
Defect. Creates a defect that is associated
with this demand. The number of the defect
record is displayed in the Defect field.

Create an Enterprise Agile Planning (EAP) entity from a demand
Create an Enterprise Agile Planning (EAP) entity, such as an epic, feature, or capability, from a
demand so that you can start to work on these entities in Enterprise Agile Planning.

Before you begin

The Strategic Planning application must be installed.
Role required: sn_apw_advanced.eap_user

Note: A demand manager requires the sn_apw_advanced.eap_user role to convert a
demand to an EAP entity.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the demand that you want to convert into an artifact.
3. Set the demand category and type for EAP entities.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

969


<!-- page 970 -->
a. From the Category list, select Strategic.
b. From the Type list, select EAP Epic, EAP Feature, or EAP Capability.
4. Optional: In the EAP Details section, select the team that you want the EAP entity to be
assigned to in the Team field.
This field becomes read-only once the entity is created.
5. Save the demand by selecting Save.
6. Create an entity that will be associated with this demand by selecting the appropriate related
link.

Note: The related links aren’t available once the demand is converted to the selected
entity.
The available related links are:
◦ Create EAP Epic
◦ Create EAP Feature
◦ Create EAP Capability

Result

The EAP entity is created successfully and the demand is moved to the Completed state. A
message with a link to the created entity in Strategic Planning Workspace that enables you to
immediately view or work on the entity is displayed.
For information about the data migrated from the demand to the EAP entity, see Data migrated
from demands to Enterprise Agile Planning (EAP) entities.

What to do next

View and work on the new entity in Strategic Planning Workspace right away by selecting the link
to the entity in the message that is displayed when the entity creation is successful.

Note: To access the entity at a later time, in the demand form, select the entity name in
the Converted to field in the EAP Details section.

For more information, see Strategic Planning and Enterprise Agile Planning in Strategic Planning.
Create a monetary benefit plan for a demand
Demand benefit plans capture the potential benefits accrued by the demand when the demand
is executed. Create a monetary benefit plan to specify the estimated benefit in a category for a
fiscal period.

Before you begin

Role required: it_demand_manager

About this task

The monetary benefit plan breakdown records are automatically created when you save the
benefit plan. The monetary benefit plan breakdown records specify the estimated and actual
benefits at a granular level for specific fiscal periods, such as FY16: M04 and FY16: M05. The
Monetary Benefit Plan Breakdowns related list shows the aggregated benefits for estimated and
actual benefits for each fiscal period for the demand.

Note: Converting a demand to a project or EAP entity transfers the benefit plan from the
demand to the target project or EAP entity.
If you’re creating benefit plan for a demand with the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin activated and Demand Currency view enabled, the fields in
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

970


<!-- page 971 -->
the Financials section differ from the Default view. For more information about the fields that are
available only in the Demand Currency view, see Multicurrency fields in demand-related forms.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the required demand form.
3. Select the Monetary Benefit Plans related list.
4. To create a monetary benefit plan, select New.

Note: To create a monetary benefit plan from the Financials Summary page, select
Manage.

5. On the Monetary Benefit Plan form, fill in the fields.
For a description of the field names, see Monetary Benefit Plan form.

Note: When you move the demand dates, the associated benefit plans also change
accordingly based on whether the benefit plan is tied to the demand start date, or end
date. The project property Change Resource Plan, Cost Plan and Benefit Plan Start
Date with Demand or Project Start Date Change controls the behavior for demand date
changes.
6. Select Submit.

What to do next

On the Benefit Plan form, view the benefit breakdown by fiscal period in the Monetary Benefit
Plan Breakdowns related list.
Update a monetary benefit plan breakdown for a demand
Update a monetary benefit plan breakdown record that specifies the estimated and actual
benefits, at a granular level, for specific fiscal periods.

Before you begin

Role required: it_demand_manager

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the required demand.
3. Select the Monetary Benefit Plans related list.
4. Open the required monetary benefit plan.
5. In the Monetary Benefit Plan Breakdowns related list, select the information icon (
monetary benefit plan breakdown.

) for a

6. Select Open Record.
7. On the Monetary Benefit Plan Breakdown form, view and update the enabled fields.
For a description of the field names, see Monetary Benefit Breakdown form.
8. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

971


<!-- page 972 -->
Create a non-monetary benefit plan for a demand
Create a non-monetary benefit plan to specify the estimated benefit in a category for a fiscal
period. Demand benefit plans capture the potential non-financial benefits accrued by the
demand when the demand is executed.

Before you begin

Role required: it_demand_manager

About this task

The non-monetary benefit plan breakdown records are automatically created when you save the
benefit plan by selecting Automatic or Manual in the Breakdown Type field. The non-monetary
benefit plan breakdown records specify the estimated and actual non-financial benefits at a
granular level for specific fiscal periods, such as FY16: M04 and FY16: M05. The Non-monetary
Benefit Plan Breakdowns related list shows the aggregated benefits for estimated and actual
non-financial benefits for each fiscal period for the demand.

Note: Converting a demand to a project or EAP entity transfers the benefit plans from the
demand to the target project or EAP entity.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the required demand form.
3. Select the Non-Monetary Benefit Plans related list.
4. To create a non-monetary benefit plan, select New.
5. On the form, fill in the fields.
For a description of the field names, see Non-monetary Benefit Plan form.

Note: When you move the demand dates, the associated benefit plans also change
accordingly based on whether the benefit plan is tied to the demand start date, or end
date. The project property Change Resource Plan, Cost Plan and Benefit Plan Start
Date with Demand or Project Start Date Change controls the behavior for demand date
changes.
6. Select Submit.

What to do next
• On the Benefit Plan form, view the benefit breakdown by fiscal period in the Non-monetary
Benefit Plan Breakdowns related list.
• Associate monetary and non-monetary benefit plans, so that you can capture the potential
benefits (financial and non-financial) accrued by the demand for the hybrid benefit plans.
Update a non-monetary benefit plan breakdown for a demand
Update a non-monetary benefit plan breakdown record that specifies the estimated and actual
benefits, at a granular level, for specific fiscal periods.

Before you begin

Role required: it_demand_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

972


<!-- page 973 -->
Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the required demand.
3. Select the Non-monetary Benefit Plans related list.
4. Open the required non-monetary benefit plan.
5. In the Non-monetary Benefit Plan Breakdowns related list, select the information icon (
against a non-monetary benefit plan breakdown.

)

6. Select Open Record.
7. On the Non-monetary Benefit Plan Breakdown form, view and update the enabled fields.
For a detailed description of the field names, see Non-monetary Benefit Plan Breakdown form.
8. Select Update.
Associate monetary and non-monetary benefit plans
Associate monetary and non-monetary benefit plans, so that you can capture the potential
benefits (financial and non-financial) accrued by the demand.

Before you begin

Role required: it_demand_manager

About this task

You can associate a monetary benefit plan with a non-monetary benefit plan and vice versa.

Note: When you delete a benefit plan, its relationship with the associated benefit plan (if
any) is also removed.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the required demand form.
3. Select the Monetary Benefit Plans or Non-monetary Benefit Plans related list.
4. Select the information icon (

) for a benefit plan that you want to associate.

5. Select Open Record.
6. Associate a monetary or non-monetary benefit plan.
Option

Action

Associate an existing benefit plan

On the Benefit Plan form, fill in the Associat­
ed benefit field with the benefit plan that you
want to associate.
a. On the Benefit Plan form, select Associate
new benefit.

Associate a new benefit plan

b. On the form, fill in the fields. For details,
see Create a monetary benefit plan for a de­
mand and Create a non-monetary benefit
plan for a demand.

7. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

973


<!-- page 974 -->
Result

The selected benefit plan is associated with another plan.

What to do next

Select the View Associated benefit plan related link to view the associated benefit plan.
Create a demand cost plan
Demand cost plans capture the costs of demands. Create a cost plan to specify the unit cost of a
cost type for a fiscal period.

Before you begin

Role required: it_demand_manager

About this task

The application automatically creates cost plan breakdown records when you save the cost
plan. The cost plan breakdowns are records that specify the estimated and actual costs and
the budget at a granular level for specific fiscal periods, such as FY16: M04 and FY16: M05. The
demand cost plans are added to the parent program and portfolio.
The cost plan breakdowns that specify the estimated cost and actual cost at a granular level for
a fiscal period of the demand cost plan are recalculated in the project currency. Similarly, the
estimated breakdown amounts of the planned benefit and actual benefit of the demand benefit
plans are recalculated in the project currency. The project currency amounts are then rolled up to
the cost plan, benefit plan, and the project records.
If you want to use multiple currencies, create a cost plan for another currency.
If you’re creating benefit plan for a demand with the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin activated and Demand Currency view enabled, the fields in
the Financials section differ from the Default view. For more information about the fields that are
available only in the Demand Currency view, see Multicurrency fields in demand-related forms.

Procedure
1. Navigate to All > Demand > Demands > All and open the required demand form.
2. In the related links, select Cost Plans.
3. To view the Financials Summary page in a grid, select Manage.
4. Add or edit a cost plan from the Cost Plans related list:
◦ To add a cost plan, select New.
◦ To update the details of an existing cost plan, select the record and then select Manage.
5. In the cost plan form, fill in the fields.
For a description of the field names, see Cost plan form.

Note: When you change the planned start date of a demand, the associated cost plans

and resource assignments also change. The project property Change Resource Plan and
Cost Plan Start Date with Demand or Project Start Date Change controls the behavior
for demand date change.
6. Select Submit.

What to do next
• On the Demand form, view the breakdowns by fiscal period in the Cost Breakdown related list.
• To recalculate the value in the Forecast field, use the Calculate Forecast Amount related link.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

974


<!-- page 975 -->
View financial summary of cost and monetary benefit plans
View a breakdown of the cost and benefit components of a demand to track the financials of your
demands. The financial summary enables you to assess the progress of the demand and track
financial changes and their impact on the demand over a period.

Before you begin

Role required: it_demand_manager

About this task

View a detailed breakdown of the cost components of a demand using the Financial Summary
tab. The total planned cost, budget cost, actual cost, and planned returns with their breakdowns
are displayed in the form of read-only cards. The cost plans, benefit plans, and their breakdowns
are provided in an editable grid view.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open a demand.
3. On the Demand form, select the Cost Plans or Monetary Benefit Plans related list.
4. Select Manage.
5. Optional: Add additional fields, view plan details, or reorganize the financial data.
Action

Steps

Create a baseline or compare available
baselines

Select the baseline information icon (
)
and then select Create New Baseline or Com­
pare Baselines option respectively. For more
information, see Create a baseline of a de­
mand.

Create a cost plan or benefit plan for the de­
mand

In the Cost Plans or Benefits Plans tab, se­
lect New.

View a cost plan or benefit plan details in a
form

Select the information icon (
the Name column of the grid.

) available in

Select the Year, Quarter, or Month views re­
spectively.
View a cost plan or benefit plan details in
yearly, quarterly, or monthly format

You can also edit the breakdown values of a
cost plan or benefit plan without opening the
plan in a form. Inline edit is available only in
the Monthly view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

975


<!-- page 976 -->
Action

Steps

a. Select the widgets icon ( ) and then se­
lect the Show Widgets option.
b. Select additional fields to show, clear them
to hide.

Note:

Toggle the widgets on the Financial Summa­
ry section or add more fields

▪ By default, all the fields are select­
ed.
▪ The selected field preferences are
saved and are available when you
reopen the Financial Summary tab.
▪ If the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plug­
in is activated, you can add addition­
al fields such as Benefit in demand
currency, Actual Cost in demand
currency, and Financial return in de­
mand currency.
Select the configuration icon (
the field names.

Show or hide columns in the grid

) and select

Note: You can’t hide the grouped
columns.

Reset to the default grid column layout

Select Reset to defaults.

Export financial information

Select Export to csv.
a. Select the configuration icon (

).

b. Select additional fields to show demand cur­
rency amounts.

Note: If the PPM Standard Multicur­
View the demand costs and benefits in de­
mand currency

rency (com.snc.ppm_multicurrency)
plugin is activated, you can add addi­
tional fields.
You can view both the functional and demand
currencies in the currency indicator.
In the Financial Summary grid view of the cost
plan and benefit plan tabs, all items related
to demand currency are configured in the col­
umn heads such as Cost in demand curren­
cy and Demand currency.

View details of an item in the grid

Select the expand icon (
(
).

) or (collapse icon

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

976


<!-- page 977 -->
Create an expense line for a demand
A demand expense line is the cost associated with a specific source, such as a user or a fixed
asset. Expense lines are part of demand cost plans.

Before you begin

Role required: it_demand_manager
Application required: Project Portfolio Management with Financials

About this task

Only processed expense lines are considered for demands. You can create multiple expense
lines for a project or demand.
Expense lines on the demands are used to record any expense incurred during demand
evaluation only. You can’t associate expense lines to cost plans on demands. The actual cost
incurred from the expense lines tied to the demand rolls up to the Demand actual costs field.
When a demand is converted to a project, the expense lines remain with the demand, while the
cost plans and budget are moved over to the project.

Procedure
1. Navigate to All > Demand > Demands > All and open the demand form.
2. In the Expense Lines related list, select New.
3. On the expense line form, fill in the fields.
For a description of the field names, see Expense line form.
4. Select Submit
Create and manage resource assignments for a demand
As a resource requester, find the availability of the resources, and create and manage the
resource assignments for a demand.

Before you begin

Role required: it_demand_manager

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the required demand form.
3. Select the Resource assignments related list and select New.
4. On the Resource assignment new record form, fill in the fields.
For a description of the field names, see New Resource Assignment form.
5. Select Submit.
Recalculate costs of resource assignments of a demand
Recalculate the costs of all active resource assignments of a demand whenever the hourly rates
change in the associated rate model so that the plan costs are up to date.

Before you begin

Confirm the following setup:
• The demand must be active.
• The demand must have an active rate model assigned.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

977


<!-- page 978 -->
Role required: demand_manager

About this task

This option recalculates the costs of all resource assignments of the demand at once. You can
also open a resource assignment from the Resource assignments related list to recalculate the
resource costs of an individual resource assignment.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Open a demand.
3. On the Demand form, right-click on the header bar and select the Recalculate Resource
Costs.
4. In the Recalculate Resource Cost form, fill in the fields.
For a description of the field names, see Recalculate resource costs form.
5. Select OK.

Result
• Recalculates the selected resource costs of all the applicable resource assignments in the
demand based on the latest hourly rates. The hourly rates are derived from the rate model
associated with the demand.
• Updates the recalculated resource costs on the respective cost fields on the resource
assignment form and the Resource assignments related list.
• Reflects the revised values in the respective cost fields of the demand.
Generate labor costs
Generate labor costs to view the expenses of resources using resource assignments and cost
plans.

Before you begin

Role required: it_demand_manager

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Open the Generate labor costs for demands and projects scheduled job.
3. Select Active.
4. On the Scheduled Script Execution form, fill the fields.
For a description of the field names, see Scheduled Script Execution Form.
5. Select Update.

Tip: Alternatively, as an admin, you can activate and define a scheduled job to generate
labor costs at the required frequency. For more information, see Activate a scheduled job
to generate labor costs.
Migrate budget of active demands to Next Experience
Migrate your demand budget to Next Experience to manage the financials using Project
Workspace.

Before you begin

Role required: it_demand_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

978


<!-- page 979 -->
Procedure
1. Navigate to All > Demand > Demands > All.
2. Migrate baselines using one of the following options.
Choice

Description

a. Select the required demands from the
projects list.
Using list actions

b. Select the Actions on selected rows... list
and select Migrate Budget.
c. On the migrate budget confirmation win­
dow, select OK.
a. Open the required demand.

Using related links

b. Select the Migrate Budget related link.
c. On the migrate budget confirmation win­
dow, select OK.
a. Navigate to All > System Definition >
Scheduled Jobs.
b. Filter the Name field to locate the Migrate
budget for active demands and projects
scheduled job and open it.

Activate a scheduled job

c. Select Active and on the Scheduled Script
Execution form, fill the fields.
For a description of the field names, see
Scheduled Script Execution Form.
d. Select Update.

Note: After migration, you won't be able to view the budget on Classic UI. You're
encouraged to manage budget using the Financials in Next Experience.
Migrate financial baselines of demands to Next Experience
Migrate the financial baselines of demands to Next Experience to manage the financial using
Project Workspace.

About this task

Next Experience uses new data model, which has two new tables Investment
Baselines (sn_invst_pln_invst_investment_baseline) and Investment Baseline Header
(sn_invst_pln_invst_investment_baseline_header) which are used to capture financial baselines.
The financial baselines created for demands in classic experience aren’t visible in Next
Experience. You can migrate the existing baselines from classic to Next Experience as an ondemand activity for the required demands, or as bulk by activating and running a scheduled job.
Baselines view in the Next Experience provides better insights to view and analyze the financial
performance of your demands.
Unlike the financial baselines created using Next Experience, the financial baselines created in
the Classic UI don’t capture the actual expenses along with planned costs as a default behavior.
To have relevant information for baselines comparison, the actual costs are captured as part of
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

979


<!-- page 980 -->
the baseline migration using the processed expense lines as of the baseline creation date of the
financial baseline.
For detailed information and use cases on using financials in Next Experience, see Managing
financials for planning items in Portfolio Planning.

Note: Migration of financial baselines is not applicable for demands or projects with multicurrency.

Before you begin

Role required: it_demand_manager

Procedure
1. Navigate to All > Demand > Demands > All.
2. Migrate baselines using one of the following options.
Choice

Description

a. Select the required demands from the
projects list.
Using list actions

b. Select the Actions on selected rows... list
and select Migrate Financial Baselines.
c. Select OK on the Migrate Financial Base­
lines confirmation window.
a. Open the required demand.

Using related links

b. Select the Migrate Financial Baselines re­
lated link.
a. Navigate to All > System Definition >
Scheduled Jobs.

Activate a scheduled job

b. Filter the Name field to locate the Migrate
financial baselines to Next Experience
scheduled job and open it.
c. Select Active and on the Scheduled Script
Execution form, fill the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

980


<!-- page 981 -->
Choice

Description

For a description of the field names, see
Scheduled Script Execution Form.
d. Select Update.

Tip: After migration, you're encouraged to create financial baselines using the
Financials in Next Experience.

Result

Financial baselines for the selected demands are migrated to Next Experience and you can view
them in the Baselines view.

What to do next
View and compare the migrated baselines with any existing baselines or current baseline (

).

Allocate budget to a demand
Set the budget of a demand according to the fiscal years.

Before you begin

Role required: it_portfolio_manager

Procedure
1. Navigate to All > Demand > Demands > All and open the demand form.
2. In the related links, select Demand Budget.
The Demand Budget dialog box opens.
3. Select the fiscal year for which you want to set the budget for the demand.

Tip: You can work on allocating lean budgets at the fiscal period level using the
Investment Budget. For more information, see Enable lean budgeting for demands.
4. Enter the amounts for Capex Budget and Opex Budget.
The Total Budget is updated with the sum of capex and opex amounts.
5. Select OK.

Note:
◦ If the demand doesn’t have a cost plan, start date, and due date, then demand budget
is distributed from the current month until the end of the demand budget fiscal year.
◦ If the demand doesn’t have a cost plan and a due date but has a start date, then the
demand budget is distributed from either:
▪ Start date (if the start date falls in the given budget fiscal year) until the end of the
demand budget fiscal year.
▪ Start of the demand budget fiscal year until the end of the demand budget fiscal year.
◦ If the demand doesn’t have a cost plan and a start date but has a due date, then the
demand budget is distributed from either:
▪ Current month until due date (if the due date falls in the given budget fiscal year).
▪ Current month until the end of demand budget fiscal year.
If the demand has a cost plan associated, then demand budget is distributed by
honoring the cost plan fiscal periods.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

981


<!-- page 982 -->
Result

The demand budget for the selected year appears in the Demand Budget related list. You can
select the amounts in the list to revise them.
Enable lean budgeting for demands
Enable the Investment Budget option to allocate budgeting for demands at fiscal period.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Demands > Demand > All.
2. Open the required demand.
3. Select the Additional actions and navigate to Configure > Related Lists.

4. Select Investment Budget from the Available column and add it to Selected column.
5. Select Save.
Manage lean budgeting for demand
Allocate budget for demands at each fiscal period instead of the entire fiscal year to reduce the
overhead costs associated with traditional approach.

Before you begin
• Enable lean budgeting for demands
• Role required: sn_invst_pln.sn_spm_funding_user
Any user role with this specific role attached can add or manage the investment budgets.

Procedure
1. Navigate to All > Demands > Demand > All.
2. Open the required demand.
3. In the Investment Budget related list, select New.
4. On the Investment Budget form, fill in the fields.
For more information about the fields and their description, see Investment Budget form.
5. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

982


<!-- page 983 -->
Result

The allocated budget for a fiscal period is displayed in the Investment Budget related list.
Create a baseline of a demand
Create a financial baseline of a demand, which captures benefit and financial metric information
(snapshot of cost plan, benefit plan, and demand-level financial metrics) at a particular moment
in time.

Before you begin

Role required: it_demand_manager
You can create as many financial baselines as necessary and review the financials changes
that have been made to the demand since the previous baseline. Any financial baseline doesn’t
capture the actual cost component of the demand.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the required demand.
3. To create a financial baseline of a demand, use either of the options.
Option

Steps

a. Select the Create Baseline related link.
From a related link

b. In the Create Baseline pop-up, enter a suit­
able description.
c. Select Save.
a. Select the Demand Baselines related list.
b. Select the Create Baseline button.

From a related list

c. In the Create Baseline pop-up, enter a suit­
able description.
d. Select Save.

Compare financial baselines of a demand
You can compare baselines to review the variances in the financial data of a demand and see
what changed.

Before you begin

Role required: it_demand_manager

About this task

You can create multiple baselines at various stages of a demand's life cycle. For example, at the
end of each phase or after every calendar month or quarter. Each baseline captures the financial
data of the demand at a particular moment, providing a basis from which you can identify and
review the changes made to the demand. Having multiple baselines and comparing them helps
you track the performance of your demand.
If you’re creating demand with the PPM Standard Multicurrency (com.snc.ppm_multicurrency)
plugin activated and Demand Currency view enabled, you can view and compare the financial
details of the demand in baselines in the demand currency. For more information about the fields
that are available only in the Demand Currency view, see Multicurrency in Demand Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

983


<!-- page 984 -->
Procedure
1. To compare financial baselines of a demand, perform one of the following options.
Option

Steps

a. Navigate to All > Demand > Demands >
Workbench.
b. Open a demand.
From the Demand form

c. On the Demand form, select the Cost Plans
or Benefit Plans related list.
d. Select Manage.
e. On the Demand Workbench, select the
baseline information icon (
select Compare Baselines.

) and then

a. Navigate to All > Demand > Demands > All.
b. Open a demand.
From the Baseline form

c. On the Demand form, select the Demand
Baselines related list.
d. Open a baseline.
e. On the Baseline form, select the View Fi­
nancial Baseline related link.

2. On the Financial Baseline form, select the baselines you want to compare from the two lists.
By default, the current and the most recent baselines are selected.
3. Select Compare.
The comparative data of the baselines are displayed in the following two sections:
◦ The Financial Baseline Summary section displays three widgets: the first two widgets
contain the financial data of the two baselines, and the third widget contains their variance.
◦ The Financial Baseline Details section displays the cost plans and benefit plans of the two
baselines in two different grids. Each plan type has two rows corresponding to each baseline
data.

Note: To see the color code of rows representing each baseline, select the baseline
legend icon (

).

4. Optional: Add additional fields or reorganize the comparative data on the Financial Baseline
Summary section of the form.
◦ To toggle viewing the Financial Baseline Summary section, select the Collapse icon (
Expand icon (

) or

).

◦ To show or hide additional fields on the widgets in the Financial Baseline Summary section,
select the configuration icon (

) and select the field names.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

984


<!-- page 985 -->
Note: If the PPM Standard Multicurrency (com.snc.ppm_multicurrency) plugin is
activated, you can add additional fields to the baseline such as Total planned cost
in demand currency, Operating budget in demand currency, and Financial return in
demand currency.
The selected field preferences are saved and are available when you reopen the
Financial Baseline form.
◦ To reset to the default widget layout, select Reset to defaults.
◦ To view the financial information of the baselines in demand currency, toggle the Show
Widgets in Demand Currency button.

Note: This button is available only when the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin is activated.
5. Optional: View details of financial data of the cost and benefit plans on the Financial Baseline
Details section of the form.
◦ To view a cost plan or benefit plan comparative data in yearly, quarterly, or monthly format,
select the Year or Quarter or Month views respectively.
◦ To view details of a fiscal year, select the Expand icon (

) or Collapse icon (

).

View demands
You can view existing demands at any time.

Before you begin

Role required: it_demand_manager

About this task

The Project field displays the project name after the demand manager creates a project from
the demand. The Risk, Value, and Size fields display assessment metrics for the demand. This
information appears on the Demands list.

Procedure
1. View demands using one of the following options.
a. All > Demand > Workbench.
The bubble chart and the list view on the demand workbench display all qualified demands.
b. All > Demand > Demands > All.
Displays the Demands list.
2. Select the Number field on the Demands list to view the Demand form.
3. View the status of the demand using the Stage field.
This field is updated as the demand moves through the life cycle, from an idea to a demand to
the resulting project, enhancement, change, defect, or planning item. At a glance, users can
use this field to track the progress of a demand.
4. Hover over the Stage field on the Demands list to view the progression of the idea along with
the value of the State field for each step in the progression:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

985


<!-- page 986 -->
◦ Idea: If an idea is being evaluated, the pop-up window displays the current state of the idea.
◦ Demand: if an idea is promoted to a demand, the pop-up window displays the current state
of the demand as well as the idea.
◦ Project, Enhancement, Change, or Defect: If a demand is accepted, the pop-up window
displays the current state of the resulting artifact in addition to the demand and idea.
Idea Stage Summary pop-up window

View an artifact created from a demand
As the demand manager, you can view an artifact created from a demand.

Before you begin

Role required: it_demand_manager

Procedure
1. Navigate to All > Demand > Demands > Workbench.
2. Right-click a bubble that has an associated artifact.
3. Select View <artifact>.
This action displays the artifact form for the selected demand in a new tab.
View a demand summary
Hover over a bubble in the demand workbench bubble chart to display a summary of the
demand information.

Before you begin

Role required: it_demand_manager

Procedure
1. Hover over a demand in the bubble chart to highlight the bubble and its label.
A bubble summary window also shows the demand name and the risk, value, and size data.
Hovering over the bubble also highlights the corresponding demand row in the list view.
Hovering over a demand in the list view highlights the corresponding bubble in the bubble
chart.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

986


<!-- page 987 -->
Bubble Summary Window

Note: When hovering over a bubble, scroll down in the list view to see the
corresponding highlighted demand row. If necessary, adjust the height of the list view or
the bubble chart.
2. For multiple demands, some bubbles or labels overlap and are difficult to see.
Hover over a label to highlight the corresponding bubble.
Use when:
◦ Two or more bubbles have the same metrics and overlap directly.
◦ Several bubbles intersect and overlap.
◦ A bubble is only partially visible on the edge of the bubble chart.
Add details to demands
The demand manager typically works with a business relationship manager to identify
stakeholders and elicit requirements, risks, and other important information.
The Demand Management application streamlines the stakeholder identification process.
Auto-populating the list of stakeholders from the portfolio the user selects when filling out the
demand form in the service catalog or in the Demand Management application. The Demand
Management application also enables you to use assessments to automate some of the
information gathering process.

Add demand tasks
Demand managers analyze business demands, approve demands, and create projects and
enhancements. Many times activities such as effort, cost, risk, and benefit estimates are
required to analyze a demand and create a business case for approval of the demand. A demand
manager can create demand tasks and assign these tasks to individual resources or a group to
perform these activities.
The resources assigned to the demand tasks then post time spent while working on a demand
or demand task using a time card. The time card data is used to calculate actual effort and cost
incurred on the demand task as well as demand.
To create demand tasks, scroll to the Demand Tasks related list on the Demand form and select
New to create a record.

Add stakeholders
When a demand is submitted, the demand stakeholder list is populated automatically from the
associated portfolio. You can also add stakeholders. To add a person to the stakeholder list,
scroll to the Stakeholders related list on the Demand form, select Create new to create a record,
and fill in the form. To add existing stakeholders to the demand, select Add existing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

987


<!-- page 988 -->
When adding a stakeholder from the demand form, the Portfolio field displays the portfolio that
was selected on the Demand form.
A demand can have multiple stakeholders and a stakeholder can be associated with multiple
demands.
The newly added stakeholder is automatically associated with the current demand and any other
demands that use the same portfolio.

Add requirements
Demand managers can create as many requirements as needed, but requirements aren’t
required. Typically, the stakeholders associated with a demand request have insights into what
the requirements are for a demand request to be completed.
Demand managers use the Requirement form to describe the requirement and assign an owner
who is responsible for making sure that the requirement is met. When a requirement is complex,
demand managers can associate planned tasks, such as project tasks, with the requirement. The
demand manager assigns and tracks the tasks until they’re complete.
To add a requirement to a demand, follow these steps:
1. Open a Demand form and select New from the Requirements related list.
2. On the Requirement form, fill in the fields. For a description of the field names, see
Requirement form.

Add resource assignments
Resource assignments are another source of information that decision makers can use
when evaluating demands. You can create resource assignments for a demand from the
Resource assignments related list, which appears only if the Resource Management Workspace
application is activated.
To add a resource assignment to the demand, scroll to the Resource assignments related list on
the Demand form and select New to create a record.

Add and recalculate strategy and goal allocations
The Strategy Allocations related list displays the percentage of the demand's total cost and
benefits allocated toward the achievement of the associated strategies. The Goal Allocations
related list displays the percentage of demand's total cost and benefits allocated toward
achievement of goals associated with the demand. For more information, see Allocate or modify
the strategy and goal percentage for a demand.
Recalculate and update cost field values in the Strategy and Goal Allocation tabs. Use the
Recalculate Strategy and Goal Allocation related link to update the demand's total cost and
benefits when strategy and goal allocations for the demand are changed. For more information,
see Strategic Spend Tracking for PPM.

Note: These related lists and related links appears only when Strategic Spend Tracking for
PPM is installed. This application is available on ServiceNow Store. You must switch to the
Strategic Alignment view to see them. If these lists and links aren’t available on the form
view that you’re using, ask your administrator to configure the demand form to add them.
For more information, see Install Strategic Spend Tracking for PPM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

988


<!-- page 989 -->
Add goal/target relationships
The Goal/Target Relationships related list displays the relationship between a goal and a
planning item, strategic item, or any other item such as a demand.

Allocate funds
If your demand represents a significant, multi-year investment and you must distribute funding
across related work, you can allocate funds from your demand. By allocating funds, you can
directly support one or more projects, epics, or programs linked to the approved demand.
This link appears only if you have the Investment Funding plugin activated, an existing
corresponding investment record for this demand, and the investment_user role.
RIDAC (Risk, Issue, Decision, Action, and Request Changes) records for a demand
RIDAC is an acronym for Risk, Issue, Decision, Action, and Request Changes records. Create a
risk for your demand that you can convert to other records during the demand life cycle. Track
issues and avoid manual copying of relevant details in related records.
As a demand progresses through the demand life cycle, a risk might result in an issue or a new
issue might occur. Once you have a risk record, you convert that record into related records such
as issues, actions, or decisions. This conversion and association of records helps you analyze
and identify patterns, trends, and probable resolution for planning future demands. The ability to
convert records provides you with the following advantages:
• Ability to create related records without having to enter the relevant information manually.
• Helps you analyze and identify patterns, trends, and probable resolution for planning future
demands.
• Enables you to view a consolidated list of all converted RIDAC records using the View RIDAC
related link on the Demand form.
Consider the following points before converting or associating RIDAC records:
• You can convert one record to another only in the RIDAC sequence. For example, you can
convert a risk to an issue, decision, action, or request change but you can’t convert an issue to
a risk or a decision to an issue. The following diagram illustrates the RIDAC process flow.
RIDAC flow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

989


<!-- page 990 -->
• You can convert one record into multiple RIDAC records. For example, you can create multiple
issue records from one risk record.
• You can associate one record with multiple different records. For example, you can link one
issue record to multiple different risk, decision, action, or request change records. For more
information, see Associate existing RIDAC (risks, issues, actions, decisions, and request
changes) records for a demand.
Add risks for a demand
Add a risk to a demand to identify, analyze, prioritize, plan, and track a risk during any phase
of the demand life cycle. Assess potential problems and the severity of their impact to take
informed decisions about the demand.

Before you begin

Role required: it_demand_manager

About this task

A risk is any uncertain event that can potentially impact the success or outcome of a demand.
For example, an incorrect estimate of factors like financial outlay or resource assignments
can cause schedule slippage. Another example of a risk is a change in demand requirements.
Recording risks ensures that decision makers have all relevant information when assessing a
demand's progress. The demand risks are added to the parent program and portfolio.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand to which you want to add risks.
3. From the Risks related list, select New.
4. On the Risk form, fill in the fields.
For a description of the field names, see Risk form.
5. Select Submit.

What to do next
• Convert an existing risk to an issue, decision, action, or request change and close the risk. For
more information, see Convert one RIDAC (Risk, Issue, Decision, Action, and Request Change)
record to another for a demand.
• Associate the risk with existing issues so you can track dependencies and recognize trends
for the future. For more information, see Associate existing RIDAC (risks, issues, actions,
decisions, and request changes) records for a demand.
Configure a custom Risk rank and Risk value for a demand
Configure custom risk rank and value scores (such as High-Medium, Medium-Low, or AbsoluteLow) to rate the impact and probability factors for a risk.

Before you begin

Role required: pps_admin

About this task

Use the Risk Value Lookup module to set up the risk rank and risk value for a specific
combination of risk impact and probability. The system uses these values to determine the
degree of risk (Absolute, High, Medium, Low) based on the impact and probability factors of a
risk.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

990


<!-- page 991 -->
The value in the Probability field is multiplied by the value of the Impact field to generate the
values for the Risk rank and corresponding Risk value in the Risk form.
By default, you can use the following impact, value, and probability scores for a risk to create a
risk rank and risk value score:
• Absolute
• Low
• Medium or Moderate
• High
For example, a risk might have high probability and medium impact but you might want to
consider it as an overall low risk for the demand. In that case, you would configure the Risk Value
Matcher form with the following values:
• Impact = 2 Medium
• Risk Rank Color = Green
• Probability = High
• Probability Number = 1
• Risk Value = 3 Low
The following image illustrates the results of this example of the Risk

form.

Procedure
1. Navigate to All > Project Administration > Settings > Risk Value Lookup.
2. Select New.
3. On the risk value matcher form, fill in the fields.
For a description of the field names, see Risk value matcher form.
4. Select Submit.
Add issues for a demand
Add an issue to a demand to escalate a risk or to track an unexpected problem. For example, a
technical malfunction or resource unavailability that occurs during any phase of the demand life
cycle. If the issue remains unresolved, unnecessary conflicts, delays, or even a failure can occur.

Before you begin

Role required: it_demand_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

991


<!-- page 992 -->
Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand to which you want to add an issue.
3. From the Issues related list, select New.
4. On the Issue form, fill in the fields.
For a description of the field names, see Issue form.
5. Optional: Search in the knowledge base for any article related to the issue.
a. Select the search knowledge icon (

).

b. If you find relevant articles, select the title of an article to view its content.
c. If you want to include the content of the article in the issue, select Attach to Issue.
The article content is copied in to the Description field of the Issue form. You can modify the
text if necessary.
6. Select Submit.

What to do next
• Convert an existing issue to a decision, action, or request change and close the issue. For
more information, see Convert one RIDAC (Risk, Issue, Decision, Action, and Request Change)
record to another for a demand.
• Associate the issue with your existing risks so you can track dependencies and recognize
trends for the future. For more information, see Associate existing RIDAC (risks, issues, actions,
decisions, and request changes) records for a demand.
Add decisions for a demand
As a demand manager, develop a plan to manage risks and issues proactively with solutions.
Add the solution for a risk or issue to a demand in the form of a decision. You can also convert a
risk or an issue to a decision or a decision to an action or a request change.

Before you begin

Role required: it_demand_manager

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand to which you want to add a decision.
3. From the Decisions related list, select New.
4. On the Decision form, fill in the fields.
For a description of the field names, see Decision form.
5. Optional: Search in the knowledge base for any article related to the decision.
a. Select the search knowledge icon (

).

b. If you find relevant articles, select the title of an article to view its content.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

992


<!-- page 993 -->
c. If you want to include the content of the article in the issue, select Attach to Decision.
The article content is copied in to the Description field of the Decision form. You can modify
the text if necessary.
6. Select Submit.

What to do next
• Convert a decision to an action or request change and close the decision. For more
information, see Convert one RIDAC (Risk, Issue, Decision, Action, and Request Change)
record to another for a demand.
• Associate the decision with your existing issues and risks so you can track dependencies
and recognize trends for the future. For more information, see Associate existing RIDAC (risks,
issues, actions, decisions, and request changes) records for a demand.
Add actions for a demand
Add actions that are required for resolving an issue or risk for a demand. You can also convert
a risk, issue, or decision to an action based on your analysis and plan for resolution of a risk or
issue.

Before you begin

Role required: it_demand_manager

About this task

After analyzing the risks and issues and taking a decision on how to manage those risks and
issues, add an action for resolving the risk or issue.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand to which you want to add an action.
3. From the Actions related list, select New.
4. On the Action form, fill in the fields.
For a description of the field names, see Action form.
5. Optional: If the action requires approval from other stakeholders, request approval with a due
date using the Approval and Due date fields.
6. Select Submit.

What to do next
• Convert an action to a request change and close the action. For more information, see Convert
one RIDAC (Risk, Issue, Decision, Action, and Request Change) record to another for a
demand.
• Associate the action with your existing risk, issue, and decision records so you can track
dependencies and recognize trends for the future. For more information, see Associate
existing RIDAC (risks, issues, actions, decisions, and request changes) records for a demand.
Add Request Changes to a demand
As a demand manager, you might create a request change as the outcome of the action taken
to resolve an issue or mitigate a risk. The request change might result in changing the demand's
scope, resource requirement, cost, or schedule to minimize the impact of a risk or issue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

993


<!-- page 994 -->
Before you begin

Role required: it_demand_manager

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand to which you want to add a request change.
3. From the Request Changes related list, select New.
4. On the Request Change form, fill in the fields.
For a description of the field names, see Request change form.
5. Select Submit.

What to do next

Associate the request change with your existing risk, issue, decision, and action records so you
can track dependencies and recognize trends for future. For more information, see Associate
existing RIDAC (risks, issues, actions, decisions, and request changes) records for a demand.
Convert one RIDAC (Risk, Issue, Decision, Action, and Request Change) record to another for
a demand
Convert one RIDAC record (risk, issue, action, decision, and request changes) to another, in that
order to retain the record information instead of having to create a record manually and to track
the issue more easily.

Before you begin

Role required: it_demand_manager

About this task

When you convert a RIDAC record to another record, the values for the Short description,
Requester, and Assigned to fields are carried forward.
You can also specify to close the parent record on creation of the new record instead of manually
closing the parent record.
You can also view the consolidated list of all the converted RIDAC records using the View RIDAC
related link on the Demand form and View RIDAC in the application navigator of the Demand
module.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand for which you want to convert a risk, issue, decision, action, or request
change record to another RIDAC record.
3. From the Demand form related list, select the risk, issue, decision, action, or request change
record to open the form view.
4. Select the Convert to RIDAC related link on the form.
5. Optional: On the Convert dialog box, from the select task type list, select the RIDAC record to
which you want to convert the selected record.
For example, if you wanted to convert a risk to an issue, you would select Issue.
6. Optional: Modify the text in the Short description field, which is copied from the parent
record.
7. Optional: Change the default assignment copied from the parent record in the Assigned to
field by selecting the lookup icon (

) and selecting a different user.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

994


<!-- page 995 -->
8. Optional: If you want to close the parent RIDAC record on creation of the new record, select
the close parent record option.
The label of the close parent record option changes depending on the parent record type.
For example, if the parent record is Risk and you’re converting it to an issue record, the close
record option would appear as Close Risk.
9. Select OK.
Associate existing RIDAC (risks, issues, actions, decisions, and request changes) records for
a demand
Link existing RIDAC records (risks, issues, actions, decisions, and request changes) to one
another for your demand. Associating RIDAC records with each other enables you to keep a
record of risks or issues and their outcome for analysis at demand closure and planning. It also
helps to track the risks and issues throughout the demand life cycle.

Before you begin

Role required: it_demand_manager

About this task

You can associate one record with multiple different records. For example, you can link one issue
record to multiple risk, decision, action, or request change records. Additionally, you can view the
converted RIDAC records such as risks converted to issues, decisions, actions, and changes,
using the View RIDAC related link.

Procedure
1. Navigate to All > Demand > Demands > All.
2. Select the demand for which you want to associate one RIDAC entry to another.
3. In the Demand form related list, select the RIDAC record.
4. On the form, select the Associate RIDAC related link.
5. In the Associate dialog box, from the Select type list, select the RIDAC record to which you
want to associate the selected record.
For example, if you wanted to associate a risk to an issue, you would select Issue.
6. Select the record number to which you want to associate the selected record from the
Associate to list.
For example, if you wanted to associate the selected risk to issue (ISU0010003), you would
select ISU0010003.
7. Select OK.
Reset a demand to Draft state
A demand can be moved back to the Draft state, if necessary.

Before you begin

Role required: it_demand_manager

About this task

A demand can be reset to Draft from the Completed, Approved, Screening, or Submitted states,
or until an artifact such as a project or enhancement is created from it. The Reset to Draft option
is unavailable if the demand is in the Qualified state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

995


<!-- page 996 -->
Procedure
1. Navigate to All > Demand > Demands > All.
2. Open the required demand form.
3. Select Reset to Draft.
A confirmation message appears if there are:
◦ Active assessments pending with stakeholders, or
◦ Resource assignments are created for the demand
4. Select the check box to replan the allocated resource plans that have no actual hours
reported.
5. Select OK.

Result
• The demand is moved to the Draft state.
• All the score values in Assessment Data tab are reset to default.
• All active assessments for the demand are canceled. New assessments are triggered when the
demand moves to the Screening state and if the Assessment Required field on the demand
form is set to true.
Delete demands
Demands can be deleted only while in the Pending state.

Before you begin

Role required: it_demand_manager or it_demand_user

About this task

When you delete a demand, all data related to the demand, such as risks, demand tasks,
requirements, and decisions are deleted. However, the stakeholders aren’t deleted from the
Stakeholder Register [dmn_stakeholders_register] table.
If a project is already created from a demand, its reference is removed from the project along
with the data related to the demand. However, the project isn’t deleted from the database.
To delete a demand:

Procedure
1. Navigate to All > Demand > Demands > All.
2. Do:
◦ Select the demand to open the demand form and then select Delete.
◦ Select the check box next to the demand and then select Delete from the Actions list.
Move and resize a demand
As the demand manager, you can move and resize bubbles in the bubble chart.

Before you begin

Role required: it_demand_manager

About this task

Moving and resizing bubbles in the bubble chart updates the corresponding values for the
demands in the list view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

996


<!-- page 997 -->
Procedure
1. Select and drag a bubble left or right along the horizontal axis to decrease or increase the risk
of the demand.
The new risk for the demand is updated in the Risk column.
2. Select and drag a bubble up or down along the vertical or Y axis to increase or decrease the
value of the demand.
The new value for the demand is updated in the Value column.
3. Select a bubble to open a sizing window where you can increase or decrease the size of the
bubble.
The new size of the demand is updated in the Size column.
Bubble Size Window

Train the similarity solution for Demand Management to find similar demands
Train the Similar Demands solution definition is included within the Predictive Intelligence for
PPM capability to find related demands when creating a demand.

Before you begin

Confirm that the Predictive Intelligence for Contextual Search plugin
(com.snc.contextual_search_ml), PPM Standard plugin (com.snc.financial_planning_pmo), and
Predictive Intelligence for PPM plugin (com.snc.ppm_ml) are activated. For more information
about Predictive Intelligence, see Predictive Intelligence .
Role required: admin

Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solution Definitions.
2. In the Similarity Definitions list, search for and select the Similar Demands solution definition
(ml_sn_global_global_similar_demands).
3. On the Similarity Definition form, verify the default field values for demands.
For more information about the Similarity Definition form fields, see Create and train a similarity
solution .
4. Select Update & Retrain.
5. Open the Similarity Definition form for the Similar Demands solution definition
(ml_sn_global_global_similar_demands).
6. In the ML Solutions related list, view the training solution progress in the Progress column.

Note: Alternatively, you can select the link for the solution in the Active column. On the
ML Solution form, select the Show training progress related link to check the training
solution progress.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

997


<!-- page 998 -->
Result

When the solution is complete, the similar demands appear in the Similar demands section on
the Demand form.

What to do next
• Review similarity examples: On the Similarity Definition form, in the ML Solutions related
list, when Progress is 100%, in the Active column, select the link for the solution. On the ML
Solution form, select the Similarity Examples related link to view the Similarity Examples list.
• Update the similarity score threshold: On the ML Solution form, on the Solution Statistics tab,
enter the required value in the Similarity Score Threshold field. Right-click the ML Solution
form and select Save.
• Test the prediction output for the records: On the ML Solution form, on the Test solution tab,
enter your text in the Short description field and the maximum number of expected results in
the Top N field, and then select Run test. The results above the similarity score threshold value
are displayed.
Related topics
Predictive Intelligence
Predictive Intelligence for Demand Management
Create a demand
Identify similar records using Now Assist for Strategic Portfolio Management (SPM)
Detect similar demand records using the identify similar records Now Assist skill. This skill
detects similar demand records based on contextual similarity in the name, description, and
business case content.

Before you begin

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

If you have custom roles that require access to this skill, update the ACLs (access control lists)
for those roles that require access. For more information, see Implement access control in Now
Assist AI agents .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

998


<!-- page 999 -->
Role required: it_demand_user

Procedure
1. Navigate to All > Demand > Demands > Create New.
Alternatively, you can create a demand from Self-Service > Demands > Create New.
2. On the Demand form, fill in the Name, Description, and Business case fields.
For a description of the field names, see Demand form.
3. Select Save.
4. Select the Identify similar demands button to detect similar demand records.

Result

The similar demands identified by Now Assist are displayed in the top banner and the Similar
Demands related list.

Note:
• If any similar records are present on the demand record, the related list is updated to
display the list of identified similar records.
• If there are no identified similar records for a demand, a message is displayed to convey
the same and the related list remains empty.

What to do next

View the full details of the identified similar demand records by selecting the demand number
link from the Similar Demands related list.

Demand Management reference
Reference information to provide additional details about Demand Management such as the
fields, user roles, tables, guidelines, and domain separation information.
Demand tasks
A demand task is a unit of work, created within a demand, to break down initial planning activities
before converting the demand into a project, change, enhancement, or defect.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

999


<!-- page 1000 -->
You can create a demand task from the Demand Tasks related list to delegate activities that are
helpful for assessing demand feasibility. Demand tasks differ from project tasks in the following
aspects:
• Planned dates, actual dates, and original dates are part of project tasks not demand tasks.
• The due date indicates the date on which the task is targeted for completion and doesn’t
affect the demand workflow. Project tasks, however, affect the project completion dates if the
planned dates and actual dates are changed.
• Don’t support the creation of nested demand tasks.
• Don’t support task constraints such as the settings Start ASAP and Start on a specific date.
• Don’t support an execution type such as Agile, Waterfall, or Hybrid.

Resource assignment
Assign resources for a demand task using the Assigned to, Additional Assignee list, and
Assignment Group fields. Don’t create and use resource assignments to allocate resources or
groups to a demand task or submit the time spent on the demand. If you associate a resource
assignment with a demand task, the associated resource plan isn’t transferred to the work entity
created from that demand.
The resource assignments aren’t associated with the demand by default. Make sure that you
don’t use the resource assignments that you created for the future work entity created from the
demand to submit the time spent on a demand.
When you submit a time card for a demand, the time and cost incurred aren’t transferred to
the work entity created from the demand. The time and cost remain within the demand as the
demand cost and effort.
Resources assigned to a demand task can submit the time spent on it using a time card. For
more information, see Submit a time card for a demand task.

Actual cost and effort for a demand task
The actual effort of the work performed on the demand task is derived from the time card. The
actual cost is derived from the hourly resource rate defined in the rate model, default labor rate,
or default system property. The actual cost and effort for a demand task are then rolled up to
derive the actual cost and effort for the associated demand. For more information, see Actual
cost and effort calculation for a demand and demand task.

Add work items to a Demand
Based on the selected demand task category and role assigned to you, you can use the demand
task form to:
• Add a cost plan to a Demand
• Add a resource assignment to a Demand
• Add a benefit plan to a Demand
• Add risks to a Demand
Actual cost and effort calculation for a demand and demand task
The actual cost and effort are realized cost incurred and time spent for the work performed on
a demand and demand task during a specific time period. Actual cost and effort are calculated
based on the approved time cards and hourly rate for the resources and vary based on how the
hourly rate for the resource is derived.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1000


<!-- page 1001 -->
Working on a demand task and demand involves cost and time, which add to the overall
expenditure of converting a demand to a product, feature, or enhancement. Demand managers
must therefore know the actual cost and effort incurred in assessing and planning activities for a
demand. The calculation for actual cost is derived by multiplying the hours reported in the time
card by the hourly rate of the resource. The actual effort for a demand task is calculated based on
the hours reported in the time card.
The actual effort and cost for the demand tasks are then rolled up for calculating the actual effort
and cost for the demand. The calculation of the actual cost and hourly rate for a resource is
derived as follows:
• If a rate model is associated with the demand, the actual cost is calculated based on the hourly
rate defined in the rate model.
• If a rate model is absent or if an hourly rate isn’t found in the rate model, then the hourly rate is
derived from the default labor rate.
• If an hourly rate isn’t found in the default labor rate, then the hourly rate is derived from the
default system property.
Don’t create and use resource assignments for allocating resources or groups to a demand task.
The resource assignments that you create in the demand are used for the resource estimation
of the work entity that would be created from the demand. These resource assignments are
automatically moved to the resulting work entity when a demand is qualified and converted.
When you submit a time card for a demand the actual effort and cost aren’t reflected in the
resource assignment, as the resource assignments aren’t associated with the demand by
default. The actual cost and actual effort for the demand remains with the demand and aren’t
transferred to the project created from the demand even if you manually associate a resource
assignment with the demand.
If a resource spends extra hours working on a demand that aren’t associated with demand tasks,
then this time must also be recorded. The resource submits the time card for recording the extra
hours spent on the demand using the Time Sheet Portal. This extra cost and effort is added to
the demand but isn’t reflected in the actual cost and effort for the demand tasks.
The actual cost and actual effort for the demand as derived from the time card data is added to
the total actual cost and effort for the demand tasks. The values in the Demand Actual Cost and
Demand Actual Effort fields are calculated as follows:
• Demand Actual Cost: actual cost of all the demand tasks + actual cost of extra activities
• Demand Actual Effort: actual effort of all the demand tasks + actual effort of extra activities
If a demand has no task or assigned resource, you can capture the actual cost by submitting a
time card against the demand. Once the time card is approved, an expense line is created on
the demand. The expense line is then processed and the actual cost of work for that time card is
rolled up to the demand into the Demand Actual Cost column.
The following example demonstrates the actual cost and effort calculation for a demand task and
its rollup to the demand.

Example: Actual cost and effort calculation based on the demand tasks
For a demand (D1), the demand manager delegates activities such as initial assessment, cost
estimate, and effort estimate. To delegate these activities, the demand manager creates three
demand tasks (DT1, DT2, and DT3) and assigns resources R1, R2, and R3 to each demand task
respectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1001


<!-- page 1002 -->
The hourly rate defined for the resources in the rate model, default labor rate, and default system
property are listed in the following table.
Hourly resource rate
Resource

Hourly rate in the rate
model

Hourly rate in the
default labor rate

Hourly rate in the
system property

R1

$200

$150

$50

R2

$250

$200

$50

R3

$150

$100

$50

Each resource spends a total of eight hours while working on the assigned demand task and
submits a time card.
Actual cost and effort calculation for demand task: The demand task actual cost and effort are
calculated and displayed on the Demand Task form. The totals differ depending on the method
used to derive them.
Scenario 1 shows how the total is calculated if the resource hourly rate is derived from the rate
model.
Rate derived from the rate model
Actuals

Demand task DT1

Demand task DT2

Demand task DT3

Actual effort

8 hours

8 hours

8 hours

Actual cost

200 * 8 = $1600

250 * 8 = $2000

150 * 8 = $1200

Scenario 2 shows how the total is calculated if the rate model isn’t associated with the demand
and the resource hourly rate is derived from the default labor rate.
Rate derived from the default labor rate
Actuals

Demand task DT1

Demand task DT2

Demand task DT3

Actual effort

8 hours

8 hours

8 hours

Actual cost

150 * 8 = $1200

200 * 8 = $1600

100 * 8 = $800

Scenario 3 shows how the total is calculated if the rate model isn’t associated with the demand
and the resource hourly rate is derived from the default system property.
Rate derived from the default system property
Actuals

Demand task DT1

Demand task DT2

Demand task DT3

Actual effort

8 hours

8 hours

8 hours

Actual cost

50 * 8 = $400

50 * 8 = $400

50 * 8 = $400

Example: Actual cost and effort roll up to a demand
The Demand Actual Cost and Demand Actual Effort fields on the Financials tab of the Demand
form are populated with the sum of actual costs and actual effort of all the demand tasks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1002


<!-- page 1003 -->
1. If the resource rate for the demand task is derived from the rate model (Scenario 1), the value
in the Demand Actual Cost field is displayed as $4800. The value in the Demand Actual Effort
field is displayed as 24 hours.
2. If the resource rate for the demand task is derived from the default labor rate (Scenario 2), the
value in the Demand Actual Cost field is displayed as $3600. The value in the Demand Actual
Effort field is displayed as 24 hours.
3. If the resource rate for demand task is derived from the default system property (Scenario 3),
the value in the Demand Actual Cost field is displayed as $1200. The value in the Demand
Actual Effort field is displayed as 24 hours.
Demand Management key terms
Important terms in Demand Management are listed in the table.
Demand Management Key Terms
Term

Description

Portfolio

A collection of demands managed as a group to achieve strategic and
operational objectives.

Assessable
record

A demand record that you want to evaluate for metric type demand.

Metric

A trait or value used to evaluate assessable records.

You evaluate the assessable records with metric categories and metrics, which
define traits and values to assess.

A metric can measure subjective values in an assessment questionnaire or
gather objective values in a database query run by a script.
Examples of metrics include perceived value of demands and return on
investment for a demand.
Metric type

A characteristic that defines a set of records you want to evaluate.
Demand management comes with the metric type demand, which uses records
from the Demand [dmn_demand] table.

Metric
category

A theme for evaluating assessable records. Categories contain one or more
individual metrics, which define specific traits or values that comprise the theme.
Examples of categories include return on investment and cost. Set filter
conditions to control which assessable records to evaluate for the metrics in a
category.

Stakeholder

A person affected by the demand or who has interest in the demand.

Scorecard

A visual breakdown on performance of an assessable record based on
assessment results.
Use scorecards to view various data summaries for one assessable record and
to compare the ratings with other assessable records.

Requirement An extra item that must be present or an extra action item that must be finished
before a demand request closes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1003


<!-- page 1004 -->
Demand Management Key Terms (continued)
Term

Description

Demand
Task

A unit of work, created within a demand, to break down initial planning activities
before converting the demand into a project. A demand task isn’t a planned task
like a project task.

Stage fields
The Stage field on the Ideas list displays the current state of an idea as it moves through the
demand life cycle. The current state includes from an idea to a demand and then to the resulting
project, enhancement, change, or defect.
The result of an idea depends on the initial settings in the Category and Type fields on the
Demand form. The Stage field also appears on the Demands list. The Stage field is a display only
field and can’t be searched or sorted.

Important: The Stage fields are no longer available starting from the New York release.
Any instance provisioned in New York or later won’t have a Stage field on the Idea table.
However, the Stage fields are available if you’re upgrading from an older release to New
York or later.
A new idea is created in the Submitted state. An accepted idea is updated to the Accepted state
and a deferred idea is updated to the Skipped state. When a demand is closed, the associated
idea is marked as Complete.
Hovering over the Stage field displays a pop-up window that shows the progression of the idea
along with the value of the State field for each step in the progression.
• Idea: if an idea is being evaluated, the pop-up window displays the current state of the idea.
• Demand: if an idea is promoted to a demand, the pop-up window displays the current state of
the demand as well as the idea.
• Project, Enhancement, Change, or Defect: if a demand is accepted, the pop-up window
displays the current state of the resulting project, enhancement, change, or defect in addition
to the demand and idea.
Idea Stage Summary pop-up window

Composite Fields
A composite field combines information from two fields in a table to form a single field.
For example, the Task field on the Project Tasks list displays the short description and the project
task number. The short description appears above the project task number. The project task
number appears and is a link to the Project Task form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1004


<!-- page 1005 -->
Composite field

Use a composite field
• Editing a composite field changes the short description. Editing the short description changes
the composite field.
• Sorting on a composite field is based only on the short description and not the number.
• Searching on a composite field is enabled for both the short description and the number:
◦ To search by the number using the list header, enter an asterisk (*) before the search term.
For example, *PRJTASK0010016.
◦ To search by the number using the filter, create a condition similar to: [Task] [contains]
[PRJTASK0010016].
Domain separation and Demand Management
Domain separation is supported in Demand Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Basic

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
Data migrated from demands to artifacts
Data fields that are migrated from a demand to an artifact when the artifact is created from the
demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1005


<!-- page 1006 -->
Data migrated from a demand to a created project
Data fields are migrated from a demand to a project when the project is created from the
demand.

Field type

Description

Demand

The following demand fields are migrated to a
project:
• Description
• Business case
• Investment Class
• Investment Type
• Risk of performing
• Risk of not performing
• Enablers
• Barriers
• In scope
• Out of scope
• Assumptions
• Business Unit
• Department
• Impacted Business Units
• Business Capabilities
• Priority
• Impact
• Rate Model
• Approved start date
• Approved end date
• Short description
• Program
• Domain
• Goals
• Strategies
• Impacted Business Applications
• Configuration item
• Company
• Urgency
• Project Manager
• Project currency
• Project calculation

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1006


<!-- page 1007 -->
Field type

Description

Resource assignments

Resource assignments are migrated to a
project by updating the task reference from
the demand to project.

Requirements

Demand requirements.

Financial records

Financial records such as cost plans and
breakdowns, benefit plans and breakdowns
(monetary and non-monetary), and demand
budgets are migrated to a project. This
process updates the task reference from
demand to project.

RIDAC

RIDAC entities are migrated to a project by
updating the task reference from demand to
project. The migrated entities include the risks,
issues, decisions, project actions, request
changes, and RIDAC_m2m records.

Assessment

The following assessment data fields are
migrated to a project:
• Risk
• Value
• Score
• T-Shirt size

Stakeholders

Stakeholder records.

Project Currency Financial

If the multicurrency feature is active, the
project financial fields are calculated
according to the project currency and
reference rate.

Data migrated from demands to Enterprise Agile Planning (EAP) entities
Data fields are migrated from a demand to an EAP entity when the entity is created from the
demand.
Data fields migrated from demand to EAP entity
Field type

Description

Demand

The following demand fields are migrated to
the created entity:
• Business Capabilities
• Product
• Primary target
• Team
• Demand manager
• Description
• Department

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1007


<!-- page 1008 -->
Data fields migrated from demand to EAP entity (continued)
Field type

Description

• Priority
• Approved start date
• Approved end date
• Short description
• Primary goal
• Strategic program
• Service offering
• Business service
• Business applications
• Score
• Requested by
• Capital expense
• Operating expense
• Start date
• Program
• Total planned cost
• Investment Class
• Portfolio
• Investment Type
• ROI %
• Rate Model
• Model ID
• Expense type
• Financial benefit
Resource assignments

The resource assignments of a demand are
migrated to the created entity.

Financial records

Cost plans and breakdowns, benefit plans and
breakdowns (monetary and non-monetary),
and investment budgets are migrated to the
created entity.

Attachments

Demand attachments.

Goal/target relationships

Goal/target relationships of the demand.

Demand Management forms
Field information for forms used in the Demand Management application.
Action form
Use an action form to add an action to a demand.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1008


<!-- page 1009 -->
Action form
Field

Description

Number

System-generated number with a configurable prefix.

State

Current state of the action. All new action records are created with the state set to
Open.
The available states are: Pending, Open, Work in Progress, Closed Complete,
Closed Incomplete, and Closed Skipped

Priority

Urgency for implementing or approving the action based on impact.

Estimated
Cost

Estimated cost the action generates.

Impact

The impact on the outcome of the demand if you don’t implement the action.

Approval

Status of approval from the stakeholders for the action. The available options are:
Not Yet Requested, Requested, Approved, and Rejected.

Assigned
to

Primary resource assigned to implement the action.

Due date

Requested date on which the action must be approved or implemented.

Parent

The demand to which this action belongs.

Short
Brief description of the action such as what the action entails, how to implement
description the action, who it affects, and the action outcome.
As you start entering the title for your action, the related actions that potentially
match your action title appear.
Select the Suggestion icon (
actions.

) to select a description from the list of predefined

Description Details of the action and its potential impact.
Work notes Information about the action. Add work notes to communicate about the status of
action approval, rejection, or implementation with other users.
Cost plan form
Use the cost plan form to capture the costs of demands.
Cost plan form
Field

Description

Name

Descriptive name for the cost plan.

Project/
Demand

Demand number to which the cost plan belongs.

Start fiscal
period

Starting fiscal period.
When you change the start fiscal period, the associated cost breakdown
values also change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1009


<!-- page 1010 -->
Cost plan form (continued)
Field

Description

End fiscal
period

Ending fiscal period.

Group

This field is a read-only field.

When you change the end fiscal period, the associated cost breakdown values
also change.

Financials section of the Cost plan form
Field

Description

Entered currency

Currency for the cost plan.
If the selected currency is different from
the default currency configured in the
Financial Management application, the budget
reference rate is used to calculate the cost of
the demand.

Unit cost

Cost of single unit of the resource.

Quantity

Quantity of resource required.

Recurring

Indicates if the cost is recurring for each fiscal
period.
Quantity x Unit cost value is incurred for every
fiscal period.

Cost type

Cost type of the plan. See Create a cost type
definition.

Investment

Name of the investment created for the
project.
This field appears only if the
legacy Investment Funding
(com.snc.investment_funding) plugin
is activated or the Investment Funding
(sn_invst_pln) application is installed.

Source type

Funding entity to associated with the project
investment for funding.
This field appears only if the
legacy Investment Funding
(com.snc.investment_funding) plugin
is activated or the Investment Funding
(sn_invst_pln) application is installed.

Source

Funding entity value from which you request
fund.
The field is available when you select a value
in the Source type field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1010


<!-- page 1011 -->
Financials section of the Cost plan form (continued)
Field

Description

This field appears only if the
legacy Investment Funding
(com.snc.investment_funding) plugin
is activated or the Investment Funding
(sn_invst_pln) application is installed.
Total planned cost

Total planned costs of the cost plan. If the cost
is recurring, the calculation is Quantity x Unit
cost x number of fiscal periods.
If the cost is non-recurring, the calculation is
Quantity x Unit cost.
This value is rolled up from cost breakdown.

Functional currency

The default currency configured in the
Financial Management application and used
for managing the demand or project.

Cost in functional currency

The total planned cost for the demand in
functional currency. The value in this field
changes if the Entered currency is different
from the functional currency.

Total actual cost

Total actual costs of the cost plan. This value is
rolled up from cost breakdown.

Decision form
Use a decision form to add a decision to a demand.
Decision form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the decision. All new decision records are created with Open
state.
The available states are: Pending, Open, Work in Progress, Closed Complete,
Closed Incomplete, and Closed Skipped

Priority

Urgency of approving or implementing the decision based on possible impact.

Decision
status

Status of the decision. The available options are: Pending, Approved, and
Rejected.

Impact

Impact on the outcome of the demand if you don’t implement the decision.

Approval
required

Option for determining whether approval of the decision is required.

Estimated
Cost

Estimated cost of implementing the decision.

Due date

Requested date on which the decision must be approved or implemented.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1011


<!-- page 1012 -->
Decision form (continued)
Field

Description

Assigned
to

Primary resource assigned to work on the decision. The default value is the name
of the user creating the decision record.

Parent

Demand number to which this decision belongs.

Short
Brief description of the decision such as what the decision is about, who made it,
description what it affects, and the decision outcome.
As you start entering the title for your decision, related decisions that potentially
match your decision are displayed.
Select the Suggestion icon (
decision descriptions.

) to select a description from the list of predefined

Description Details of the decision and its potential impact.
Work notes Information to record and track the status of decision implementation or
approvals.
Demand Budget form
Use the Demand Budget form to allocate a budget to your demand.
Demand Budget form
Field

Description

Fiscal Year

The fiscal year for which you want to set the
budget for the demand.

Currency

Currency in which you want to allocate the
budget for the demand.
If the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin is active,
then you can allocate the budget in demand
currency or functional currency.

Capex Budget in Demand Currency

Planned expense amount allocated for capital
expenditure in the selected currency.

Opex Budget in Demand Currency

Operating expense amount in the selected
currency.

Total Budget in Demand Currency

Sum of Capex and Opex amounts.

Demand form
The demand form information is used to create a demand.
Demand form fields
Field

Name

Description

Name of the demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1012


<!-- page 1013 -->
Demand form fields (continued)
Field

Description

Category

Category of the demand:
• Strategic: For demands for plans, such as projects or stories.
• Operational: For demands for operational work, such as changes or defects.

Type

The Category field selection determines the selections available in the Type
field.
• The following demand types are available if the demand category is Strategic:
◦ Continual Improvement Management
◦ Enhancement
◦ Project
◦ Epic
◦ Story
◦ EAP Epic
◦ EAP Feature
◦ EAP Capability
◦ SAFe Epic
◦ SAFe Story
◦ SAFe Feature
◦ No Conversion
• The following demand types are available if the category is Operational:
◦ Change
◦ Defect
◦ No Conversion
If the Agile Development 2.0 application is active, the Story, Epic,
Enhancement, and Defect options are available.
If the Strategic Planning application is active, the EAP Epic, EAP Feature, and
EAP Capability options are available.
If the Essential SAFe or Portfolio SAFe features are active, the SAFe Story, SAFe
Feature, and SAFe Epic options are available.
The No Conversion option enables you to use your demand to fund a large
project that includes one or more projects, epic, or programs.
The selections in the Category and Type field also determine the fields that are
displayed in the Assessment Data section.

Project

Name of the project created from this demand.
This read-only field is visible only when you convert the demand into a project.

Enhancement Number of the enhancement created from this demand.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1013


<!-- page 1014 -->
Demand form fields (continued)
Field

Description

This read-only field is visible only when you convert the demand into an
enhancement.
Epic

Name of the epic created from this demand.
This read-only field is visible only when you convert the demand into an epic.

Story

Name of the story created from this demand.
This read-only field is visible only when you convert the demand into a story.

Number

Unique, auto-generated identification number for the demand.

Approved
start date

The formal date approved by stakeholders for starting the demand. This date is
set after prioritization and stakeholder approval and represents the committed
and authorized timeline for execution. It’s used for governance and traceability.
For example, the approved date to start the database upgrade is 2026-01-10.
This field is carried forward to the Approved start date field of the Project form
if the demand is converted to a project and remains unchanged, even if the
project starts later.
This field is highlighted in red if the date is different than the value in the Start
date field.

Note: If this field is empty while creating a demand, the date from the
Start date field is inserted.
Approved
end date

The formal date approved by stakeholders for completing the demand. This
date is set after prioritization and stakeholder approval and defines the
approved execution window and supports historical tracking.
For example, the approved end date to complete the demand is 2026-02-15.
This field is carried forward to the Approved end date field of the Project form
if the demand is converted to a project and remains unchanged, even if the
project ends later.
This field is highlighted in red if the date in this field is different than the value in
the Due date field.

Note: If this field is empty while creating a demand, the date from the
Due date field is inserted.
Start date

The preliminary or estimated date when the work is initially planned to begin.
This date helps outline the intended timing for early demand planning and
prioritization. You can set this date during initial demand creation or anytime in
the planning phase when a rough idea forms. This date can be updated until
the demand is officially approved.
For example, you’re planning for a database upgrade to start on 2025-11-01.
This date is changed to Planned start date when the demand is converted to a
project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1014


<!-- page 1015 -->
Demand form fields (continued)
Field

Description

Note: When you change the planned start date of a demand or project,
the associated cost plans and resource assignments also change. The
Change Resource Plan and Cost Plan Start Date with Demand or Project
Start Date Change property controls the behavior for a demand date
change. This property isn’t enabled by default. For more information,
see Legacy- Change planned start date of a demand or project through
Portfolio Workbench and Properties installed with Project Management.
Due Date

The preliminary or estimated date when the planned work is expected to be
completed. This date provides an expected completion window for planning
and stakeholder communication. You can set this date anytime in the planning
phase when a rough idea forms and can be updated until the demand is
officially approved.
For example, you’re planning to complete the database upgrade by 2025-12-31.
This date is changed to Planned end date when the demand is converted to a
project.

Description

Description of the demand.

Similar
demands

Demands that have similar values for the Short description fields using
predictive intelligence and machine-learning algorithms. For more information,
see Predictive Intelligence for Demand Management.

Related
Search

Search results matching the specified term. The default is the value in the
Name field.

Details section of the Demand form
Field

Description

Portfolio

Portfolio indicating the business focus of the
demand.

Program

Name of the program to which the demand
belongs.

Investment Class

Type of investment class category assigned to
the demand:
• Run: Investment made to sustain the
existing business.
• Change: Investment made to implement a
change in the business.

Investment Type

Investment type of the demand:
• Cost Reduction
• End User Experience
• Legal and Regulatory
• Revenue Generating
• Service Sustaining

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1015


<!-- page 1016 -->
Details section of the Demand form (continued)
Field

Description

• Strategic Enabler
• Artificial Intelligence
Demand Manager

Name of the demand manager.

Collaborators

Users who can edit or contribute to the
demand. A demand requester can select any
user as a collaborator.

Expense type

The type of the expense, either capex (capital
expense) or opex (operational expense).

Priority

The priority of the demand.

Department

Department in a business unit to which the
demand submitter belongs.

Note: If you don’t select a department,
the default value is the name of the
department to which the submitter
belongs.
Project Manager

Project manager that would be assigned to
the project created from this demand. When
a project is created, this field becomes read
only. This field appears if the Category field
is set to Strategic and the Type field is set to
Project. If you delete the project created from
this demand, this field becomes editable.

Business Unit

Business unit to which the demand submitter
belongs.

Impacted Business Units

Business units affected by the submitted
demand. The selected units could experience
operational impact, process changes,
technology adoption, and so on.
For example, if a demand is submitted by the
procurement business unit, it can impact the
finance, legal, and IT business units.

Idea

Unique identification number of the idea from
which the demand was created.

Business Capabilities

Business capabilities associated with
the demand that links the demand to
organizational goals and value. Business
capabilities are defined in the Enterprise
Architecture (formerly Application Portfolio
Management) module.

Impacted Business Applications

If the demand is to change, enhance, or
add one or more business applications, the
applications associated with the demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1016


<!-- page 1017 -->
Details section of the Demand form (continued)
Field

Description

Business applications are defined in the
Enterprise Architecture (formerly Application
Portfolio Management) module. For more
information, see Business applications .
You can select any business application
in your enterprise regardless of whether
it’s related to a capability selected in the
Business Capabilities field.
Business Applications

If the demand is to change, enhance, or
add one or more business applications, the
applications associated with the demand.
Business applications are defined in the
Enterprise Architecture (formerly Application
Portfolio Management) module. For more
information, see Business applications .
You can select any business application
in your enterprise regardless of whether
it’s related to a capability selected in the
Business Capabilities field.

Business Case section of the Demand form
Field

Description

Strategic priority

Strategic objectives of the organization that
the demand fulfills. A demand can fulfill
multiple strategic objectives.
If a business unit has been selected in
the Details tab, the business strategies
for the selected business unit along with
other enterprise strategies are available for
selection.

Primary goal

The primary goal associated with the strategy
selected in the Strategic priority field.
If a strategy hasn’t been selected, all goals are
available for selection.

Business case

Business arguments that support the demand.

Risk of performing

Risks if the demand is approved and
implemented.

Risk of not performing

Risks if the demand isn’t approved, for
example, risk of loss of opportunity.

Enablers

Key enablers for the demand that would aid
the demand to be completed. For example,
clearly defined resource and cost plans.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1017


<!-- page 1018 -->
Business Case section of the Demand form (continued)
Field

Description

Barriers

Major barriers to the demand that would
obstruct the demand's completion. For
example, incomplete or unclear demand
details.

In scope

Scope of the demand, which is the set
of boundaries that define the extent of a
demand.

Out of scope

Activities or deliverables not in the scope
of the demand. Anything not defined in the
scope is out of scope.

Assumptions

Assumptions made for the demand.
Assumptions help to define the scope and
risks, and fine-tune the estimates for time and
cost.

Financials section of the Demand form
Field

Description

Rate Model

Rate model assigned to the demand. This
setting is used to derive hourly rates for the
associated resource assignments and time
cards. For more information, see Rate Models.

Note: If the rate model assigned to the
demand is changed or removed, the
cost fields on the associated resource
assignments aren’t recalculated.
Project Currency

Currency used to execute the project once the
project is created from this demand.
You can select any active currency from the
values listed in the Currency [fx_currency]
table.
After you create a project in the selected
project currency, you can't change the project
currency in the Project form if the demand
contains a cost plan, a benefit plan, or a
project budget. If the demand has no attached
plan or budget, you can change the project
currency in the Project form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1018


<!-- page 1019 -->
Financials section of the Demand form (continued)
Field

Description

Note: The value of this field defaults

to the Project currency field of the
Financials tab in the project currency
view of the Project form as well.
This field is available only when
the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) feature
is activated and the Demand Currency
view is enabled.
Capital expense

Capital expenditure (capex) for the demand.

Operating expense

Operational expenditure (opex) for the
demand.

Total planned costs

Result calculated based on the values in the
Capital expense and Operating expense
fields.

Financial return

Result calculated based on the values in the
Total costs and Financial benefit fields.

Financial benefit

Estimate of revenue if the demand is
approved.
This value is rolled up from the benefit
breakdown of the demand.
You can also enter the value manually by
selecting a currency icon and entering a value.

ROI %

ROI calculated based on the values in the
Total costs and Financial return fields.
The value in this field is updated when a cost
plan, benefit plan, or resource assignment
is created or updated for the demand in the
Qualified or Approved state.

Capital budget

Total capital budget allocated to the demand
across all fiscal years.
The value is rolled up from the capex budget
of the demand.

Operating budget

Total operational budget allocated to the
demand across all fiscal years.
The value is rolled up from the opex budget of
the demand.

Discount Rate %

Demand discount rate, which is the interest
rate to determine the present value of future
cash flows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1019


<!-- page 1020 -->
Financials section of the Demand form (continued)
Field

Description

Net present value

Present value of future cash based on the
given annual interest rate, a measure for
comparing money spent today against future
expected financial benefits. This value is
useful when evaluating the overall investment
performance.
For example, at a 12% discount rate, $1.00
today is worth $0.80 in two years. Therefore,
receiving $1.00 in two years is the same as
receiving $0.80 today.
Net present value (NPV) is calculated from
total costs according to year, financial
benefit per year, and the discount rate for the
demand.

Internal rate of return %

Annual interest rate required to achieve an
NPV of zero.
Internal rate of return (IRR) helps to determine
which demands can deliver a higher rate of
return in terms of revenue.

Demand Actual Cost

Total cost incurred while working on a demand
and demand tasks. Demand actual cost is
calculated after the assignee of the demand
task creates and submits a time card. When
the time card is approved, the resource rate,
which is derived from the rate card, labor rate,
or system properties, is used to populate this
field.

Demand Actual Effort

Time accrued or spent by a resource while
working on a demand or a demand task as
derived from the submitted and approved time
cards. This field isn’t available on the Demand
form by default.

Note: If you’re creating a demand with the PPM Standard Multicurrency

(com.snc.ppm_multicurrency) plugin activated and the Demand Currency view enabled,
then the fields in the Financials tab differ from the Default view. For more information
about the fields that are available only in the Demand Currency view, see Multicurrency in
Demand Management.
Assessment Data section of the Demand form
Field

Description

Impact

Level of business impact created by the
demand.

Risk

Risk value calculated from the demand
assessment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1020


<!-- page 1021 -->
Assessment Data section of the Demand form (continued)
Field

Description

Value

Business value of the demand calculated from
the Impact and Financial return fields.

T-Shirt size

Size of the demand.
Before using this value as an indicator
of demand size, consider creating and
publishing definitions for each option outside
the application. That process ensures that
the values are interpreted correctly and
consistently across the organization or
department.

Score

The demand score is calculated based on
the risk, value, and size attributes in the
base system.
The value of the risk, value, and size
attributes are derived from the assessment
metric category results. For more information,
see assessment categories and assessment
category results .
• When the risk and size values are high,
the score of the demand is low.
• When the value setting is high, the score
of the demand is high.

Assessment Required

Option for enabling the assessments for the
demand. This option is active by default.
Only a demand manager can update this value
when the demand is in the Draft or Submitted
state.

Note: If this option isn’t selected and
you reset the demand to the Draft state,
the option remains unselected.

Note: The values in the Value and Score fields are updated when a cost plan, benefit
plan, or resource assignment is created or updated for the demand in the Qualified or
Approved state. The values in the fields are updated only until an artifact such as project,
enhancement, defect, or change is created from the demand.
Notes section of the Demand form
Field

Description

Watch list

The groups and users subscribed to the
demand who can view the information in the
Additional comments field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1021


<!-- page 1022 -->
Notes section of the Demand form (continued)
Field

Description

Work notes list

The groups and users subscribed to the
demand who can view the information in the
Work notes field.

Work notes

Information about the demand. This
information isn’t visible to customers. Work
notes are added throughout the demand
management life cycle to communicate with
other users associated with the demand.

Preferences section of the Demand form
Field

Close Demand

Description

Determines when to close the demand
automatically if it’s converted to a project.
• None: Keeps the demand in the Open state
after it’s converted to a project.
• On creation of project: Closes the demand
when the demand is converted to a project.
• On closure of project: Closes the demand
when the project created from the demand
is closed.

Note: The On creation of project and
On closure of project options appear
when the value for the Type field is
set to Project. If the Type field is set
to Enhancement, the default setting is
None.
Project Calculation

Determines the calculation to use for task
dependencies for the project when the
demand is converted to a project. The default
value is Automatic.
• Manual: Task dates don’t reflect any
changes made to dependencies.
• Automatic: Task dates are automatically
updated to reflect any changes made to
dependent or child tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1022


<!-- page 1023 -->
EAP Details section of the demand form

This section appears only if the selected type is an EAP entity.
Field

Description

Team

The planning team to which the created EAP
entity is assigned. This field becomes read
only once the EAP entity is created. This value
is an optional value.

Converted to

The name of the created EAP entity. This field
is read-only.

Demand task form
Use the demand task form to create tasks for a demand.
Demand Task form
Field

Description

Short description

Name of the demand task.

Assignment group

Group assigned to the demand task.

Assigned to

Primary resource assigned to the demand
task. The following conditions apply:
• If an assignment group is defined, only
users in the assignment group are listed.
• If skills are defined, only users with those
skills are listed.
• If no assignment groups or skills are
defined, only users with one of the Project
Management application user roles are
listed.
• Users with timecard_user role are also
listed.

Additional assignee list

Users assigned to the demand task in addition
to the single primary resource defined in the
Assigned to field.

Category

Category of the demand task:
• Initial review
• Effort estimate
• Cost estimate
• Benefit estimate
• Risk assessment
The Category field selection determines the
links available in the related links. For example,
the Add Resource Plan to Demand related
link appears when you set the Category

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1023


<!-- page 1024 -->
Demand Task form (continued)
Field

Description

value to Effort estimate. Users must have the
appropriate role to use these related links.
Actual effort

The actual time spent working on the demand
task, which is derived from the approved time
card for this demand task.
Because this field doesn’t appear by default
on the Demand Task form, you must add it by
personalizing the form.

Description

Brief description of the demand task.

Number

System-generated ID number with a
configurable prefix.

Priority

Sequence in which the task must be
completed based on impact and urgency.

State

Current state of the demand task. The states
include Pending, Open, Work in Progress,
Closed Complete, Closed Incomplete, and
Closed Skipped.

Due date

The date by which the task is targeted for
completion.

Actual cost

The actual cost of the demand task derived
from the number of hours worked and hourly
rate of the resource as defined in the rate card.
In the absence of a rate card, the hourly rate
is derived from the default labor rate card or
default system property.

Work notes

Information about the demand task. Work
notes are added throughout the demand
management life cycle to communicate with
other users associated with the demand.

Note: Users with the business
stakeholder role for PPM can view this
field. For more information, see Business
stakeholder role for PPM.
Expense line form
Use the expense line form to associate specific costs to a demand.
Expense line form
Field

Description

Number

Auto-generated number.

Amount

Select a currency type and enter the expense cost.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1024


<!-- page 1025 -->
Expense line form (continued)
Field

Description

Date

Date of the expense generated.

Process
date

Date on which the expense line was processed.

Source ID

Record that generated the associated cost.

State

State of the expense line. The state can be Pending or Processed. The cost roll-up
happens only if the expense line is processed.

Cost plan

Name of the cost plan against which you want to create the expense line.

Summary
type

Select the category that you want to group the expense under.

Cost type

Select the cost type.

Expense
type

Select Capex for a capital expense or Opex for an operating expense.

Short
Enter a short description of the expense type.
description
Sources

Select the records for the sources of the expense line. These sources include:
• Assets
• Fixed assets
• Contracts
• Users
• Configuration items
• Tasks
• Cost centers

Investment Budget form
Use the Investment Budget form to allocate budget for a demand for each fiscal period.
Investment Budget form details
Field

Description

Amount

Enter the budget amount.

Fiscal period

Select the fiscal period to allocate the budget.

Investment

Select the planning item to allocate this
budget.
The existing budget is selected by default.

Expense type

Select expense type from the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1025


<!-- page 1026 -->
Investment Budget form details (continued)
Field

Description

• Select Capex to allocate your budget to
capital expenses.
• Select Opex to allocate your budget to
operational expenses.

Issue form
Use the issue form to add an issue to a demand.
Issue form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the issue. All new issue records are created in the Open state.
The available states are: Pending, Open, Work in Progress, Closed Complete,
Closed Incomplete, and Closed Skipped

Priority

Urgency of resolving or managing the issue based on possible impact.

Estimated
cost

Estimated cost the issue generates.

Impact

Impact on the outcome of the demand if the issue remains unresolved.

Due date

Requested date for the assigned resource to resolve the issue or the date on
which the issue must be closed or addressed if not assigned to any resource.

Assigned
to

Primary resource assigned to work on the issue resolution.

Parent

Demand to which this issue belongs.

Short
description Brief description of the issue and its potential impact on the success of the
demand.
As you start entering the title for your issue, related issues that potentially match
your issue are displayed.
Select the suggestion icon (
descriptions.

) to select from the list of predefined issue

Description Details of the issue and its potential impact.
Work notes Information to record and track the work accomplished for resolving the issue.
Monetary Benefit Breakdown form
Use the Monetary Benefit Breakdown form to update the estimated and actual financial benefits
for a specific fiscal year.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1026


<!-- page 1027 -->
Monetary Benefit Breakdown form
Field

Description

Task

Task to which the benefit plan breakdown
belongs.

Portfolio

Portfolio to which the benefit plan breakdown
belongs.

Entered currency

Currency specified in the benefit plan.

Exchange rate

Rate in effect for the period corresponding to
the benefit plan breakdown. When the period
corresponding to the benefit plan breakdown
has multiple rates, the rate in effect on the first
date of that period is used.
Exchange rate is used to convert the entered
benefit into the functional benefit. It’s obtained
from the itfm_fx_rate [budget_reference_rates]
table.

Actual benefit

Actual benefit that is incurred from the project
or demand.

Benefit plan

Benefit plan to which the benefit plan
breakdown belongs.

Fiscal period

Fiscals generated at the period level. For
information on periods, see fiscal calendars

Entered benefit

Benefit in entered currency.

Functional benefit

Functional benefit obtained by multiplying the
exchange rate with the entered benefit.

Exchange rate date

First date of the fiscal period corresponding to
the benefit plan breakdown.

.

Monetary Benefit Plan form
Use the Monetary Benefit Plan form to specify the estimated benefit accrued by a demand for a
fiscal period.
Monetary Benefit Plan form
Field

Description

Name

Descriptive name of the benefit plan.

Work

Demand number to which the benefit plan belongs.

Sponsor

Sponsor for the demand.

Category

Type of benefit:
• Hard: Benefits that can be measured in terms of revenue.
• Soft: Benefits that are measured in terms of value.

Sub
category

Subcategories of hard and soft benefits.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1027


<!-- page 1028 -->
Monetary Benefit Plan form (continued)
Field

Description

The selection in Category field determines the selections available in this field.
Benefit
type

Type of benefit. Select Monetary benefits.

Offset type Offset type field indicates when the benefits start realizing.
If the value in the selected offset type changes, the benefit plan start date shifts
accordingly. For example, if the offset type is set to End Date and the due date of
the demand changes, the benefit plan start date shifts to align with the new due
date of the demand.
Work start
date

Start date of the demand. The field appears if you select Start Date in the Offset
type field.

Work end
date

End date of the demand. The field appears if you select End Date in the Offset
type field.

Offset

Number of periods before or after the offset type when the benefit plan starts. For
example, if the offset type is set to End Date and the offset is -2, the benefit plan
is two periods before the demand end date. If the demand end date shifts, the
benefit plan start date shifts to two periods before the new demand due date.

Duration in
periods

The length, in periods, of the benefit plan.

Start fiscal
period

Starting fiscal period. Populated based on values in the Offset field relative to the
selected Project or Demand start date or Project or Demand end date, and the
Duration in period values.
The field is editable if you select None in the Offset type field.
When you change the start fiscal period, the associated benefit breakdown values
also change.

End fiscal
period

Ending fiscal period.
When you change the end fiscal period, the associated benefit breakdown values
also change.

Associated Non-monetary benefit that is associated with this monetary benefit plan.
benefit
Description Description of the monetary benefit plan.
Financials section of the Monetary Benefit Plan form
Field

Description

Entered benefit

Estimated amount of the potential benefit.
Any change in the planned benefit on the
benefit plan updates the associated benefit
breakdown values for future fiscal periods.

Entered currency

Currency for the benefit plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1028


<!-- page 1029 -->
Financials section of the Monetary Benefit Plan form (continued)
Field

Description

If the selected currency is different from
the default currency configured in the
Financial Management application, the budget
reference rate is used to calculate the financial
benefit of the demand.
Functional currency

The default currency configured in the
Financial Management application and used
for managing the demand or project.

Total planned benefit

Total benefit value that is rolled up from the
benefit breakdown.

Benefit in functional currency

Benefit incurred from demand in functional
currency. The value in this field changes if
the Entered currency is different from the
functional currency.

Actual benefit

Actual benefit value that is rolled up from the
actual benefit in the benefit breakdown.

Recurring

Check box to indicate if the benefit is
recurring for each fiscal period in the benefit
breakdown.

Non-monetary Benefit Plan Breakdown form
Use the Non-monetary Benefit Breakdown form to update the estimated and actual non-financial
benefits for a specific fiscal year.
Non-monetary Benefit Plan Breakdown form
Field

Description

Task

Task to which the benefit plan breakdown
belongs.

Portfolio

Portfolio to which the benefit plan breakdown
belongs.

Measure

Measure type specified in the benefit plan.

Actual benefit

Actual benefit that is incurred from the project
or demand.

Benefit plan

Benefit plan to which the benefit plan
breakdown belongs.

Fiscal period

Fiscals generated at the period level. For
information on periods, see fiscal calendars

Entered benefit

Benefit in entered value.

Variance

The difference between the estimated and
actual benefit.

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1029


<!-- page 1030 -->
Non-monetary Benefit Plan form
Use the Non-monetary Benefit Plan form to specify the potential non-financial benefits accrued
by the demand, when it's executed.
Benefit Plan form
Field

Description

Name

Descriptive name of the benefit plan.

Work

Demand number to which the benefit plan belongs.

Sponsor

Sponsor for the demand.

Category

Type of benefit:
• Hard: Benefits that can be measured in terms of revenue.
• Soft: Benefits that are measured in terms of value.

Sub
category

Subcategories of hard and soft benefits.

Benefit
type

Type of benefit. Select Non-monetary benefits.

The selection in the Category field determines the selections available in this
field.

Offset type Field to indicate when the benefits start to be realized.
If the value in the selected offset type changes, the benefit plan start date shifts
accordingly. For example, if the offset type is set to End Date and the due date of
the demand changes, the benefit plan start date shifts to align with the new due
date of the demand.
Work start
date

Start date of the demand. This field appears only when Start Date is selected from
the Offset type field.

Work end
date

End date of the demand. This field appears only when End Date is selected from
the Offset type field.

Offset

Number of periods before or after the offset type when the benefit plan starts. For
example, if the offset type is set to End Date and the offset is -2, the benefit plan
is two periods before the demand end date. If the demand end date shifts, the
benefit plan start date shifts to two periods before the new demand due date.

Duration in
periods

The length, in periods, of the benefit plan.

Start fiscal
period

Starting fiscal period. Populated based on the value in the Offset field relative to
the selected Project/Demand start date or Project/Demand end date, and the
Duration in periods field values.
The field is editable if you select None in the Offset type field.
When you change the start fiscal period, the associated benefit breakdown values
also change.

End fiscal
period

Ending fiscal period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1030


<!-- page 1031 -->
Benefit Plan form (continued)
Field

Description

When you change the end fiscal period, the associated benefit breakdown values
also change.
Associated Monetary benefit that is associated with this non-monetary benefit plan.
benefit
Description Description of the non-monetary benefit plan.
Non-monetary Details section of the Benefit Plan form
Field

Description

Measure

Type of measure for the non-monetary
benefit plan. The measure types are Count,
Percentage, Hours, Days, and Score.
Select the option Yes/No to track the benefits
that aren’t quantifiable. When this option is
selected, the only field available is Benefits
achieved. You can select the check box to
indicate that the benefits have been achieved.

Non-monetary entered benefit

Estimated value of the potential benefit.
Any change in the planned benefit on the
benefit plan updates the associated benefit
breakdown values for future fiscal periods
only.

Non-monetary planned benefit

Benefit value that is rolled up from the benefit
breakdown.

Benefits achieved

Option to indicate if the benefit is achieved.

Breakdown type

Type of breakdown creation when you save
the benefit plan.
• None: No breakdowns are created.
• Automatic: A Non-monetary Benefit Plan
Breakdown record is created automatically
with data. The breakdown is calculated
linearly.
• Manual: A Non-monetary Benefit Plan
Breakdown record is created automatically
but without data in the entered benefit
column.

Aggregation mode

Determines how the roll-up happens from
breakdowns to the benefit plan and updates
the values in the Non-monetary planned
benefit and Non-monetary actual benefit
fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1031


<!-- page 1032 -->
Non-monetary Details section of the Benefit Plan form (continued)
Field

Description

• Sum: Aggregates data from all breakdowns.
• Average: Average value from all
breakdowns.
• Most recent: Recent breakdown value.
• Max: Maximum value among the
breakdowns.
• Min: Minimum value among the breakdown
Non-monetary actual benefit

Actual benefit value that is rolled up from the
actual benefit in the non-monetary benefit
plan breakdown.

Recalculate resource costs form
Use the recalculate resource costs form to make sure that the resource assignment costs are up
to date.
Recalculate Resource Costs dialog box
Field

Description

Start date

Start date of the time period for which the
costs are recalculated.
By default, the field shows the current date.

End date

End date of the time period for which the costs
are recalculated.
By default, the field shows the due date of the
demand. If the due date isn’t specified for the
demand, the field is empty.

Planned costs for Requested Resource plans

Option for recalculating the planned cost of
Requested resource plans.

Confirmed/Allocated costs for Confirmed/
Allocated resource plans

Option for recalculating the confirmed or
allocated cost of confirmed or allocated
resource plans.

Planned costs for Confirmed/Allocated
resource plans

Option for including the planned cost of a
confirmed or allocated plan.
The option is enabled if the Confirmed/
Allocated costs for Confirmed/Allocated
resource plans option is selected.
By default, the option isn’t selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1032


<!-- page 1033 -->
Request change form
Use the request change form to change the metrics of a demand, such as demand scope,
resource requirement, cost, or schedule.
Request Change form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the request change. All new request change records are
created in the Open state.
The available states are: Pending, Open, Work in Progress, Closed Complete,
Closed Incomplete, and Closed Skipped

Priority

Urgency for approving the requested changes based on impact.

Estimated
Cost

Estimated cost the requested changes generate.

Impact

Impact on the outcome of the demand if you don’t approve the requested
changes.

Approval

Status of approval from the stakeholders for the requested changes.

Assigned to

Primary resource assigned to work on the request change.

Due date

Requested date to complete the request change.

Category

Entity for which you’re creating the request change. The options are: Resource,
Scope, Cost, and Schedule.

Parent

Demand to which this request change belongs.

Title

Title for the change request.

Description

Details of the request change and its potential impact.

Business
Justification

Reason for requesting the proposed change in the demand and its impact on
the business.

Work notes

Additional information to indicate progress on the demand request change.

Requirement form
Use the requirement form to add a new requirement to a demand.
Requirement form
Field

Description

Number

Unique identification number for the requirement. This number is automatically
generated when a new requirement record is created.

Source

User requesting the requirement. This field is automatically populated with the
name of the person filling out the form, but the source could be a different person
who identified the requirement.

Owner

User who is responsible for managing the requirement or making sure that the
requirement is met.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1033


<!-- page 1034 -->
Requirement form (continued)
Field

Description

Estimated
effort

Approximate amount of time to complete the requirement and any associated
tasks.

Priority

Importance of the requirement as it applies to the overall demand.

State

Status of the requirement can be Pending, Approved, or Rejected.

Note: The request state is independent of the demand request state and
of the states of any planned tasks associated with the requirement. The
request can be closed without the requirement state being closed. Likewise,
closing the request doesn’t change the state of the requirement.
Type

Type of requirement can be: Business, Solution (Functional), Solution (NonFunctional), Quality, Stakeholder, or Transition.

Short
Brief description of the requirement.
description
Description Detailed description of the requirement and any associated tasks. For example,
you can use this field to describe an expected outcome or result.
Risk form
Use the risk form to add a risk to a demand.
Risk form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the risk. All new risks are created in the Pending state.
The available states are: Pending, Open, Work in Progress, Closed Complete,
Closed Incomplete, and Closed Skipped

Risk status

Status of the risk. The available options are: Pending, Achieved, Not Achieved,
Avoid, Mitigate, Transfer, and Accept.

Probability

The likelihood that the event described in the risk occurs. The available options
are: Absolute, High, Moderate, and Low

Impact

Impact of the risk event on the outcome of the demand.

Estimated
cost

Estimated cost the risk event generates.

Risk rank

A value and color assigned to the risk. This value is calculated using risk
probability and impact. You can configure the color and value using Risk Value
Lookup. For more information, see Configure a custom Risk rank and Risk value for
a demand.

Risk owner Primary resource who is responsible for monitoring and managing the risk.
Assigned
to

Primary resource assigned to work on the risk.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1034


<!-- page 1035 -->
Risk form (continued)
Field

Description

Risk value

A value calculated from Risk Value Lookup. For more information see,Configure a
custom Risk rank and Risk value for a demand.

Due date

Requested date for the assigned resource to resolve the risk or the date on which
the risk must be closed or addressed if not assigned to any resource.

Task

Demand to which this risk belongs.

Short
Brief description of the event and its potential impact on the success of the
description demand.
Description Details of the event and its potential impact.
Mitigation
plan

Cost generated by the risk event. This information gets added when and if the
event occurs.

Work notes Brief description of efforts taken to mitigate the risk.
Risk value matcher form
Use the risk value matcher form to rate the impact and probability of a risk.
Risk Value Matcher form
Field

Description

Impact

Impact value of the risk.
The default values are:
• 1 = High
• 2 = Medium
• 3 = Low

Application

The application to which these risk values
belong.

Risk Rank Color

Color to indicate the severity of the risk.

Tip: You can enter variations of a
color to differentiate between risks with
similar impact and probability values. For
example, you could enter lightgreen to
indicate a low-severity risk.
Risk Value

The value for the specified risk impact and
probability combination.
The options are: High, Medium, and Low.
This value is displayed in the Risk value field
of the Risk form.

Probability

Risk probability value is associated with the
impact value of the risk. The options are:
Absolute, High, Moderate, and Low.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1035


<!-- page 1036 -->
Risk Value Matcher form (continued)
Field

Description

Probability Number

Numerical value to indicate the probability.
This value is multiplied by the value of the
Impact field for calculating risk rank.
The default values are:
• 1 = Absolute
• 1 = High
• 2 = Moderate
• 3 = Low
The calculated risk rank and the risk rank color
are displayed in the Risk rank field of the Risk
form.

Stakeholder Register Form
Use the Stakeholder Register form to add users to the Stakeholder Registry.
Stakeholder Register Form fields
Field

Description

Number

Unique identification number for the stakeholder. This number is automatically
generated when a new entry is created.

User

Name of user being added to the stakeholder registry.

Portfolio

A group of activities managed to align to business or operational objectives.
Typically, portfolios are named according to the business units of an
organization.

Level of
Interest

Level of interest that the stakeholder has in pursuing the demand or project.

Assessment Indication of whether the user is authorized to receive assessment
recipient
questionnaires for a demand.
Approver

Indication of whether the user has authority to approve demands or change
requests in projects.

Influence

Level of influence the user has over the group assessing the demand or project.

Engagement Indication of the way the user is engaged with the demand or project.
Function

Function of user in the demand or project process.

Widget Association form
Use the Widget Association form to associate your widget to a demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1036


<!-- page 1037 -->
Widget association form
Field

Description

Association Record to associate with the widget.
ID
To access the relevant records, you must select the Tables [sys_db_objects] table
in the Table name list and the Demand [dmn_demand] table in the Document list.
Association Table to associate with the widget.
table
You must select the Tables [sys_db_objects] table from the list.
Widget

Unique name of the widget.

Order

Position of the widget in relation to other widgets on the Demand Financials page.
Widgets appear in numeric order, with the smallest number listed first.

Display on
card

Option to display the widget on the Demand Financials page.

Include by
default

Option to show the widget by default on the Demand Financials page.

Widget form
Use the widget form to configure a new widget.
Widget form
Field

Description

Name

Unique name for the widget.

Scripted

Option for indicating the value on the widget is from a code script.
By default, this option is selected and is read-only.

Show
Label

Option for displaying either the label or the color indicator.

Active

Option for indicating the status of the widget.

If you clear the check box, the Color field appears and you can set the color.

Only active widgets are shown on the Demand Financials page.
Parent
widget

Widget that is the parent of the current widget.
The current widget displays in the Child widgets related list of the selected widget.
You can add a maximum of three child widgets for a parent widget.

Formatter
required
Script

Option for specifying whether a currency formatter is required for the widget.

Code script that returns a requested metric value that is displayed on the widget.
In the script, use the context and filter objects. The context object contains all the
demand financial fields, such as total_costs, irr_value, and capital_budget.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1037


