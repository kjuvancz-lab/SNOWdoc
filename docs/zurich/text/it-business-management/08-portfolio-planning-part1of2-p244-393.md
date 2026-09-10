# Zurich Strategic Portfolio Management — Portfolio Planning

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 244–393 of 2289 | Part 1 of 2

Sections: Portfolio Planning (p244)

---

<!-- page 244 -->
Portfolio Planning
Portfolio Planning in Strategic Planning Workspace helps product and portfolio managers align
work with strategy across the organization, while facilitating Agile transformation by combining
traditional and agile work streams.

Get started

Explore

Configure

Use

Learn the key features
and business value
of Portfolio Planning
in Strategic Planning

Set up the core
configuration

Plan, fund, and align work
across your company

Goals

Prioritize

Roadmap

Create goals, set targets,
and evaluate the progress

Rank and prioritize work
for your portfolio plans

Roadmap work for
your portfolio plan

Report

Integrate

Reference

Export portfolio plan
status report as a PPT

Integrate Strategic
Planning with
execution systems

Get details about
components, form fields,
and general guidelines

Troubleshoot and get help
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Portfolio Planning in Strategic Planning Workspace
Learn about the features, functionality, and the business value that Strategic Planning provides.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

244


<!-- page 245 -->
Strategic Planning overview
Strategic Planning uses Lenses to help you plan work for your company in a delivery perspective
of your choice. Personalized portfolio plans that are created using a lens help you cascade
the plans from the enterprise level down through portfolios and products or align work with an
organizational goal or a value stream. Prioritize and roadmap relevant work, thus aligning the right
execution teams to the right strategy.
After strategic plans are broken down into planning items such as projects or epics, you can
schedule these items into your product or portfolio roadmaps. Using hybrid roadmaps, you can
roll up both Waterfall and Agile work items to a shared initiative. You can also plan capacity and
financials for each of these planning items all from a single workspace.
From the following table, learn about features of Strategic Planning in detail and how they enable
managers to draw effective plans and drive agile transformation across the company.

Features and Benefits
Feature

Lens

Benefit

Choose a planning perspective to prioritize,
fund, and align your work.

Lens configuration

Use six predefined lenses or create custom
lenses.

Portfolio plans

Enable focused planning of work in the
desired lens to align with strategy and drive
shared outcomes.

High-level portfolio plans

Prioritize and roadmap work at a high-level
by building portfolio plans for strategic items
such as initiatives.

Planning items

Plan work in the form of projects, epics,
demands, or a custom type to suit traditional,
Agile, or hybrid approaches.

Prioritization

Portfolio roadmaps

Free-form roadmaps

Scenario planning

Facilitate smoother backlog grooming and
prioritize the right work using List, Kanban, and
Hierarchy views.
Visualize the prioritized work into roadmaps
and set milestones to track key outcomes.
Flexibly plan and track work across the
company, without restricting to a planning
organization or portfolio.
Optimize your portfolio planning by comparing
potential outcomes, assessing their alignment
with strategic goals, and approving the best
scenario as your live plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

245


<!-- page 246 -->
Feature

Benefit

Scoring

Start scoring items in your portfolio plan to
prioritize work based on a pre-defined or a
custom score.

Goal management

Create goals for portfolio plans, set targets for
them, and evaluate the progress of the goals
and targets to accomplish your organizational
plans and drive business outcomes.

Diagnostics

Identify and fix errors in the configuration and
other common settings.

Capacity Planning

Generate, view, and better plan the resource
capacity for your prioritized planning items.

Financial planning

View the financial planning of your planning
items using the comprehensive view in the
new Financials screen.

Comparing Portfolio Planning Workspace with Strategic Planning Workspace
• Portfolio Planning Workspace: Prioritize, roadmap, and track work when using waterfall
methodology. Enhance traditional portfolio planning for demand and project management. To
learn more about Portfolio Planning, see Portfolio Planning.
• Strategic Planning Workspace: Prioritize, roadmap, and track work when using traditional, agile,
or hybrid methodologies. Align strategy to execution by defining and tracking goals across the
organization.

Feature

Portfolio Planning Workspace

Strategic Planning Workspace

Pre-defined lens: Project
Portfolio
Pre-defined lens: Organization
Pre-defined lens: Project
Program
Pre-defined lens: Product
Pre-defined lens: Strategic
Investments
Pre-defined lens: Goals
Pre-defined lens: Value
Stream
Pre-defined lens: Business
Capability
Lens configuration: Modify
existing lens
Lens configuration: Create
new lens
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

246


<!-- page 247 -->
Feature

Portfolio Planning Workspace

Strategic Planning Workspace

Planning items: Supported
planning items

Project, Demand

Project, Demand, Epic,
Custom

Planning items: Supported
planning items for high-level
planning

Program (pm_program)

Strategic Program, Initiative,
Custom

Portfolio plans: Create and
share

Planning items: Custom
planning item tables

Five predefined tables

Prioritization: List
Prioritization: Hierarchy
Prioritization: Kanban
Roadmaps: Timeline
Roadmaps: Kanban
Scenario planning
Scoring
Goals
Product Feedback
Capacity planning
Financials
Create and share free-form
roadmaps

®

Project, Demand, and Program Any ServiceNow platform
tables
entity

Enterprise Agile Planning
Dashboards
Monitor goals and strategies
in ServiceNow AI Control
Tower
Lenses in Strategic Planning
Lenses represent planning perspectives, which would be different for planning managers at
different levels in an organization. Lenses enable you to create personalized portfolio plans
through which you prioritize and align work with high-level initiatives and goals.

Lenses overview
Lenses in Strategic Planning indicate a perspective in which you can plan and fund work. By
selecting a lens, you choose a planning perspective to prioritize and align your work in. For

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

247


<!-- page 248 -->
example, if you're a department leader, you can choose the Organization lens. If you're a product
manager, you can choose the Product lens.

Lens structure
Each lens in Strategic Planning consists of a structure that is made up of entities. Lens entities
represent different levels of planning for your company. You can build portfolio plans at one of
these levels.
The planning item types associated with the bottom entity of a lens represent the type of work
that can be planned using these portfolio plans.
Sample lens structure

For example, the Organization lens has a Company, Business Unit, and Department as
its entities. As the head of the Support department, you can create a portfolio plan at the
department level. Then, you can prioritize the work that is assigned to the department and plan a
roadmap for the prioritized work. This work can be in the form of epics, projects, demands, or any
other custom type.
Get started with one of the pre-defined lenses, or build a custom lens structure, with up to six
levels, to suit your planning needs.

Pre-defined lenses and their structure
Strategic Planning provides nine pre-defined lenses to get you started with building your
portfolio plans - Project Portfolio, Project Program, Organization, Strategic Investments, Product,
Digital Product, Value Stream, Goals, and Business Capability. Planning managers can use these
lenses based on their role at the company.
Structure of pre-defined lenses

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

248


<!-- page 249 -->
Lens

Planning levels (Lens
entities)

Planning manager

• Company

• Department head

• Business unit

• Business unit head

Organization

• Department

Product
• Company

• Product leader

• Product models

• Product manager

• Application Model

• Product leader

• Product Feature

• Product manager

Digital Product

• Product
Enhancement

Plan, fund, and
prioritize work from a
product lens.
Plan, prioritize, and
roadmap work for
digital products.
®

• Company

• Strategy leader

• Strategic priority

• EPMO

• Initiative
• Strategic program
Goal

Plan and track the
delivery of work in
my organization and
visualize how the work
is aligned to various
levels.

If the ServiceNow
Digital Product
Release Workspace is
installed, the planning
items associated
with the product
enhancement appear
in the Planning items
tab of the Release
scope page in Digital
Product Release
Workspace. For
details, see Scope of
a release .

Strategic Investments

Goals

Description

• Portfolio manager
• Business unit head

Plan, manage, and
provide oversight for
strategic initiatives or
programs regardless
of who is doing the
work.
• Create, share, and
collaborate on a
portfolio plan for
defined goals.
• Set targets for the
goals to track their
progress.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

249


<!-- page 250 -->
Lens

Planning levels (Lens
entities)

Planning manager

Description

• Align, prioritize,
and roadmap the
work you must do to
achieve them.
Value stream

Project Portfolio

• Product model

• Value stream
manager

• Value Stream

• ART manager

Portfolio

• Product manager
• Portfolio manager

Business Capability

• Business capability

Enterprise architect

• Business
application

Plan, fund, and
prioritize work for a
value stream.

Plan, fund, and
prioritize work in your
project portfolios.
Plan, prioritize,
and roadmap the
work based on
your business
capabilities or
business applications.
This lens can be
used only if the
®

ServiceNow
Enterprise
Architecture
Workspace
installed.
Project Program

• Portfolio

• Portfolio manager

• Program

• Program manager

is

Plan, prioritize, and
roadmap the work in
your programs.

• If you're an admin, you can modify the structure for these pre-defined lenses or configure a
new lens altogether based on your planning manager's requirements. For more information,
see Lens configuration in Strategic Planning.
• If you're a planning manager, learn about portfolio plans to start aligning your work with the
business strategy. See Portfolio plans in Strategic Planning.
Portfolio plans in Strategic Planning
Personalized portfolio plans help you align work with your company's objectives and roadmap
the right work for the right time. Drive shared strategy using planning insights from portfolio plans
and improve enterprise planning.

Portfolio plans overview
Portfolio plans are custom plans per planning manager that are built using a lens. They enable
planning managers to define goals, set targets for these goals, and then roadmap the work to
ensure alignment between goals and the planned work.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

250


<!-- page 251 -->
A strategy leader using the Strategic Investment lens plans in the perspective of initiatives, and a
department head using the Organization lens plans in the perspective of a department.
As a planning manager, you can create multiple portfolio plans using different lenses. Visualize
the plans and progress of work from different perspectives and share them with stakeholders.
Using portfolio plans, you can:
• Enable focused planning of work in the desired perspective (lens).
• Prioritize the right work and improve alignment with business strategy.
• Reduce the time spent on aligning execution teams to the right work.

High-level planning using portfolio plans
In Strategic Planning, you can roadmap work for your organization at a high level by building
portfolio plans for strategic items such as initiatives. High-level planning items usually span
across multiple business units, departments, or portfolios of a company. These strategic work
items help you further breakdown a company's priorities.
• Initiative: Used to achieve long-term goals. Initiatives are designed to create a sustainable
competitive advantage for the organization. They often involve large-scale effort that requires
coordination and collaboration across multiple departments or business units.
• Strategic Program: Used to achieve specific milestones and outcomes of an Initiative.
• Program (pm_program): Used to achieve milestones and outcomes of a program.
• Product Enhancement: Used to plan and achieve feature enhancements for digital products.
Using the Hierarchy view, review the work pipeline and drill down to the low level planning items
that are associated to your strategic item.
For example, as an EPMO, you can view the epics associated to each initiative. Also, you can
view and manage the goals that these initiatives are aligned to.
By default, you can use Initiatives or Strategic Programs from the Strategic Investments lens or
Programs (pm_program) from the Project Program lens to create high-level portfolio plans. See
Create a high-level portfolio plan.
If you need high-level planning enabled for planning items other than Initiatives, Strategic
Programs, Programs (pm_program), work with your ServiceNow admin to complete the additional
configuration. See High-level planning configuration in Strategic Planning.
Here's a sample portfolio plan that shows a few strategic programs of the
company and the low-level work (projects and demands) that are aligned with

them.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

251


<!-- page 252 -->
Work with your administrator to ensure the required lens setup. See Lens configuration in
Strategic Planning.
Start creating portfolio plans to align work with strategy. See Managing portfolio plans in Strategic
Planning Workspace.
Scoring in Strategic Planning
Scoring enables you to prioritize items, such as epics, projects, demands, initiatives, strategic
programs, and other planning items, based on a defined quantitative metric.
Before selecting a scoring framework for your portfolio plan, it's helpful to first learn about the
pre-defined frameworks available for you to use. Later you can choose if you want to use one
of the pre-defined scoring frameworks, or create a custom scoring framework, based on your
preferred scoring parameters.
The following are the three pre-defined scoring frameworks available to use for your portfolio
plan:
• RICE
• Value vs Effort
• WSJF

RICE
A framework to prioritize and evaluate items by scoring each criterion. It helps teams assess and
compare items based on four key criteria: Reach, Impact, Confidence, and Effort.
Parameters:
• Reach- Indicates the number of people or users who will be affected by the project or feature.
It's essential to estimate the potential audience that the item can reach. For example, if a
new feature is likely to be used by a small subset of users, it might have a lower reach score
compared to a feature that will be utilized by a large portion of the user base.
To populate this value, answer the question- How many existing/target users within a given
period of time?
• Impact- Measures the potential impact or benefit that the item will bring to the users or the
organization. This criterion focuses on the positive outcomes and value that the project can
deliver.
To populate this value, answer the question- How much will this impact individual users?
• Confidence- Confidence gauges the level of certainty that the project will achieve its intended
results. This criterion assesses how confident the team is in their estimates of reach and
impact. Items with higher confidence are generally based on solid data, user feedback, or
previous experiences, making it more likely for them to deliver the expected results.
To populate this value, answer the question- How confident are you about the impact and
reach scores?
• Effort- Duration in person months, based on product, design, and development effort. This
criterion helps teams understand the relative difficulty of executing. Items with higher effort
scores may require more development time, financial investment, or significant changes to
existing systems.
To populate this value, answer the question- How much time will this item require in person
months?
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

252


<!-- page 253 -->
The RICE score is calculated with this formula:
RICE Score = (Reach x Impact x Confidence)/Effort

Value vs Effort
A framework to prioritize planning items, based on the effort estimate and the value it brings to
the users/customers. The Value vs. Effort method is the quickest way to prioritize your backlog
items.
Parameters:
• Value- Significance of items based on the potential revenue, user benefit, business impact,
and strategic goals.
To populate this value, answer the question- How does this contribute to your goal?
• Effort- Duration to build the product, including product, design, and development estimates.
To populate this value, answer the question- How difficult it is to deliver the task?
The Value vs. Effort score is calculated with this formula:
Value vs. Effort Score = Value/Effort

WSJF
A framework to sequence items for maximum benefit, particularly useful where frequent reprioritization is a driver of economic value. This score is based on the relative cost of delay and
relative job duration, business value, time criticality, risk reduction, and job size.
Parameters:
• User Business value- The relative importance to the users/customers and its potential impact
on revenue.
To populate this value, answer the question- How important is this item to your business?
• Time Criticality- Identifies how the user business value will decay over time and denotes the
urgency to release the item/feature.
To populate this value, answer the question- How does the item value decay over time?
• Risk Reduction- Identifies the items that can reduce technological and business risks and
enable new opportunities.
To populate this value, answer the question- What else does the item do for your business?
• Job Size- Relative duration to complete the task.
To populate this value, answer the question- When will you complete the task?
The WSJF score is calculated with this formula:
WSJF Score = (User Business value + Time criticality + Risk
reduction)/Job Size
To get started with Scoring your planning items in Strategic Planning, see Scoring planning items
in Strategic Planning Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

253


<!-- page 254 -->
Related topics
Custom scoring frameworks in Strategic Planning
Goals in Strategic Planning
Create goals for your portfolio plan, set targets for them, and evaluate the progress of these goals
and targets to accomplish your organizational plans and drive business outcomes.
Goals key components:
• Goals: Objectives that you want to reach based on your strategic plans.
• Targets: Targets for goals to track and measure the progress of the goals.
• Target source: A configuration for a target to auto-update the actual value of the target.

Goals
Goals refer to objectives that an organization sets for itself to accomplish their organizational
plans. Goals are typically qualitative by nature. Goals should be ambitious and are expected to
motivate and challenge your teams. Some examples of goals are as follows:
• Using renewable energy by the end of the year 2022.
• Increase diversity in the workplace by 50 percent.
A goal can also have subgoals. You can associate work (planning items) to a goal so that you can
track who is responsible for fulfilling the goal.
You can associate planning items - Demand, Project, and Epic, and strategic items - Program and
Initiative - with a goal to capture the work being done to meet your goal.

Targets
Targets help you measure your goal. For example, to meet the goal of increasing diversity in the
workplace by 50 percent, the target can be to hire a 30 percent diverse workforce by the first
quarter of 2022.
Targets can be quantitative or qualitative, by defining the unit of measure for the target.
Quantitative targets are numbers-based, countable, and measurable. Qualitative targets are
interpretation-based, descriptive, and typically a yes or no type.
You can also break down a target into smaller periods (for example, Quarterly), which helps you
set a target for each quarter and focus on the specific breakdown targets. The target breakdowns
are automatically created based on the breakdown interval set for the target. For details on how
the target breakdowns feature works, see Target breakdowns in Strategic Planning.
Qualitative targets
Qualitative targets are typically non-measurable but can be tracked if the target has
been achieved. The available unit of measure for qualitative targets is Yes/No. You
can also define a custom unit of measure (for the available choice set) for qualitative
targets according to your need and set qualitative targets for your goals.
For example, to achieve a target of conducting a hackathon in Q2-2023, the target
can be set as conduct a hackathon in Q2-2023 with the unit of measure Yes/No. The
base and target value of the target can be No and Yes, respectively. After the target
is successful with the hackathon event, the target value can be updated to Yes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

254


<!-- page 255 -->
Target sources
A target source is a configuration for a target to auto-update the actual value of the target, so that
the progress of the target and its goal are auto-updated. Any table or a combination of tables
(for example, benefit plans, cost plans, surveys, incidents, and PA indicators) present on the
®
ServiceNow AI Platform can be configured as a target source.
The following target source types are supported for automating the actual value of a target:
• PA Indicator: Updates the Actual to date field on the target form by fetching the required data
from the PA Indicator.
• Assessment/Survey: Updates the Actual to date field on the target form by fetching the
required data from the Assessment metric type and Assessment metric category records.
• Custom script: The Custom script fetches the required data from any ServiceNow AI Platform
table that is configured. With the Custom script option, any table or a combination of tables
present on the ServiceNow AI Platform can be configured as a target source.
Predefined target automation script for benefit plans: The predefined, default script is a target
source that updates the Actual to date field on the target form by fetching the value from the
Actual benefit field or Non-monetary actual benefit field from the monetary or non-monetary
benefit plans of relevant work items.
Context variable
The context variable is an additional configuration for the target source. The context
variable provides information that can be used on the Target form to fetch the
required data and update the Actual to date field on the Target form. The context
variable is required for target source types Assessment/Survey and PA Indicator. If
the Goal Framework for SPM scope is selected while creating a target source, the
context variable is automatically created for the target source (of type Assessment/
Survey and PA Indicator). For more information on context variables, see Context
variable in target source.
Example goals view

Goals workflow in Strategic Planning
Using the Goals view in the Strategic Planning Workspace, you can do the following activities:
• Create a goal for an entity such as company, business unit, department, and so on. For more
information, see Create a goal in Strategic Planning.
• Set targets and automate the actual value of the targets. For more information, see Create
targets for a goal in Strategic Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

255


<!-- page 256 -->
Note:
◦ Automating the actual value of the targets is optional. If you don't want to automate
the actual value of your targets, you can still update the actual value of the targets
manually.
◦ You can also generate targets for your goals using the Target generation skill, if the Now
Assist for SPM application is installed.
• Associate a planning item with goals. For more information, see Associate a planning item with
goals or targets.
• Associate or update the primary goal for a planning item. For more information, see Associate
or update the primary goal or target for a planning item.
For more information on how to define and manage your goals in Strategic Planning see
Managing goals in Strategic Planning Workspace.
Prioritization in Strategic Planning
Prioritize work that is relevant for your portfolio using a centralized workspace in Strategic
Planning. Review and determine the right work to invest in.
Before scheduling the roadmap for your portfolio plan, it’s helpful to first know the existing and
upcoming workload. Having all the work items listed at one place helps you understand the
overall work pipeline. The consolidated view enables smoother backlog grooming so that you
easily review and decide which items must be prioritized.
Using the Prioritization tab in the workspace, you can review all the new and existing work
for your portfolio plan, representing its backlog. To help you review the workload efficiently,
Prioritization provides information for each work item such as the associated goal, planned costs,
and planned benefits. Using these data points, you can stack-rank the items and decide which
items are to be prioritized over the others. The Prioritization tab provides the following views to
review and manage your backlog.
List view
Planning items are listed in a grid format. You can stack-rank the items, group them
by a desired attribute, and sort them based on their priority by using the drag
functionality.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

256


<!-- page 257 -->
Kanban view
Planning items are displayed in a Kanban board. Portfolio managers can visualize
and adjust items in vertical lanes and horizontal lanes. Using the Personalize
settings, you can choose to modify the attributes by which you want to view your
vertical lanes and the horizontal lanes. For example, you can view the records
grouped by planning state and priority, by simply changing the values of the vertical
lanes and horizontal lanes. You can also choose not to have any horizontal lane
value, by selecting None from the drop-down list. The data displayed on the cards
can be modified using the side panel. With this feature, you will be able to prioritize
more effectively and view just the required details on the cards. Also, click the card
to open a side panel with details, to edit the planning item details on the same page.

Hierarchy view
This view displays how work in the current portfolio plan is aligned with respect to
entities of other lenses. Using the lens switcher, you can change the perspective
in which you view the alignment of the work. Using the timeline section of the view,
prioritize work effectively by gaining visibility into the schedule and dependencies
between the planning items.

To get started with managing your work pipeline in Strategic Planning, see Prioritizing portfolio
plan work in Strategic Planning Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

257


<!-- page 258 -->
Roadmaps in Strategic Planning
Strategically plan work for your company using visual roadmaps in Strategic Planning
Workspace.
As your organization grows and priorities change, it’s important to have the flexibility of changing
existing plans and making new plans with ease. Using roadmaps, you can create a layout of
current and upcoming plans while aligning them with your business objectives. Share these
visual plans with other stakeholders across the organization, drive meaningful conversations,
and validate common understandings.
Each roadmap is a high-level block of work, prioritized by different planning personas such as
enterprise project managers, portfolio managers, project managers, or others. Roadmaps also
provide insights to the stakeholders while guiding the delivery teams during development.
The following are the types of roadmaps that you can work with:
• Portfolio plan roadmaps
• Free-form roadmaps
The features available in these roadmaps are:
• Hybrid roadmaps
• Roadmap-level milestones
• Planning item-level milestones
• Planning item dependencies
• Tracking mode

Note: Roadmaps are available with Strategic Planning by default. Roadmap Planning
(sn_roadmap_plng) is no longer available to install as a separate application.

Portfolio plan roadmaps
By creating a flexible portfolio plan using lenses, you can prioritize and roadmap work for your
portfolio. Use these portfolio roadmaps to plan and track work in different perspectives of the
organization separately, while connecting them to the high-level plans of the company.
Create a portfolio plan to get started. You can view and edit your roadmap in both Timeline and
Kanban views.
Roadmap Timeline view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

258


<!-- page 259 -->
Roadmap Kanban view

Free-form roadmaps
Free-form roadmaps provide you the flexibility of planning and tracking work from different units
of your company, such as work across multiple portfolios.
Using a filter condition, you can define what kind of work items you want on your roadmap. If you
want to have a roadmap dedicated to just the projects of your department, define a roadmap for
projects to start tracking the progress of current projects and create plans for new ones.
You can view and edit your free-form roadmap in both Timeline and Kanban views.
See Create a free-form roadmap.

Hybrid roadmaps
In Strategic Planning, with both the portfolio roadmaps and free-form roadmaps, you can build
hybrid roadmaps. For example, you can have a combination of projects, demands, and epics in a
single view.

Milestones on the roadmap
You can create milestones for your roadmap, or for each planning item on the roadmap.
Roadmap-level or portfolio-level milestones
The milestones created at the roadmap level can help with tracking launch dates
or key events during that roadmap's timeline. To learn how to create roadmap
milestones, see Add milestones for a roadmap.
Planning item milestones
Using the milestones created at the item level, you can focus better on strategic
outcomes. These milestones help with tracking deadlines or other important dates.
You can access milestones on all the planning items such as projects, demands,
epics, and others.
From the roadmap, milestones can be created and updated for all types of planning
items, except on projects. Project milestones are read-only on the roadmap
because any changes to project milestones may impact the associated project
plans. So, it is recommended to create or update project milestones using Project
Workspace in Project Portfolio Management (PPM).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

259


<!-- page 260 -->
To learn how to create item-level milestones on a roadmap, see Add milestones for
roadmap items.

Planning item dependencies
While planning, it is essential to know how your planning items are connected with each other.
Unless you know the dependency for each item, you might miss prioritizing time-critical projects
or demands. This lack of information may also put you at risk of not scheduling the right work for
the right time period.
Dependencies on the roadmap help you visualize these relationships between the planning
items, so that you can adjust their scheduling accordingly.
In Strategic Planning, you can create simple or hybrid dependencies. For example, you can
establish dependencies between two projects or between a project and an epic. Also, planning
items can have dependency on items within the same portfolio plan or on items that aren't
planned yet.
The dependency lines help you easily identify the items that may have to be prioritized together.
Such easy identification of relationships between planning items provides better collaboration
and facilitates enhanced decision making in the planning process.
To learn about creating and managing dependencies, see Add dependencies for roadmap items.

Tracking mode in roadmaps
Track status, progress, and metrics for each item on the roadmap. Using the status indicators and
the percentage complete score on the planning item bars, make informed decisions ahead of
time and easily communicate your work progress to the stakeholders.
See Track the progress of roadmap items.

Alignment of your work with business goals
Each planning item that you create and schedule into a roadmap can associate to high-level
business goals. Strategic Planning enables you to visualize how your work is aligned to these
business goals directly from the roadmap view.
On the roadmap, you can group your planning items by the Strategic priority and Primary goal
fields so that you can map your work to their goals.
®

Better together with other ServiceNow applications
®

Integrate ServiceNow Digital Portfolio Management (DPM) with Strategic Planning to provide
DPM managers the access to roadmap planning. With this integration, you can:
• Optimize portfolio performance by monitoring services and their performance levels in a
comprehensive roadmap.
• Make informed budgetary decisions and deliver shared outcomes by prioritizing backlogs and
managing roadmaps of business applications.
For more information, see Exploring Digital Portfolio Management

.

Related topics
Planning roadmaps in Strategic Planning Workspace
Goal Framework and Goal Framework for SPM
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

260


<!-- page 261 -->
Scenario planning in Strategic Planning
Create and evaluate strategic scenarios to explore different planning approaches. Approve the
optimal scenario that aligns with the organizational goals and strategic priorities.

Scenario planning overview
Scenario planning in Strategic Planning enables organizations to create, evaluate, and approve
the best strategic scenario that aligns with their strategic goals and intended business
outcomes. This process helps in visualizing different approaches, assessing their impacts,
and making informed decisions before implementing the live plan. By using scenario planning,
organizations can anticipate potential challenges. Scenario planning overview

What is a scenario
A scenario in Strategic Planning is a simulated version of a plan that enables you to explore a
strategic approach without affecting the live plan. It provides a safe environment to prioritize
items, adjust timelines, and evaluate the potential impacts of each approach.
As compared to a plan, a scenario additionally has the following:

• In Plan toggle: The In Plan toggle enables you to prioritize or de-prioritize the planning items
in the scenario you’re creating. By default, when you create a scenario, the In Plan toggle is
turned on for planning items that have all of the following field values:
◦ Planning state as Prioritized or Done
◦ Start and end dates within the portfolio plan dates.
• Date fields: The Start date and End date fields for the scenario are automatically populated
based on either the planned or actual start and end dates of the planning items. You can
update these dates during the scenario planning process. Once the scenario is approved, the
updated dates are recorded as the approved dates for the planning items. If the updated dates
fall outside the acceptable range, they’re highlighted in yellow.
For more information on portfolio plans, see Portfolio plans in Strategic Planning.
By comparing scenarios side by side, you can assess the differences in goal alignment and
trade-offs between each scenario. This comparative analysis helps identify the scenario that
best meets strategic objectives. For more information on comparing the scenarios, see Compare
scenarios.

Scenario planning workflow in Strategic Planning
Using the Scenario Planning feature in Strategic Planning, you can perform the following
activities:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

261


<!-- page 262 -->
• Create a scenario to explore different strategic approaches and business outcomes. For more
information, see Create a scenario.
• Adjust and compare multiple scenarios side by side to evaluate differences in goal alignment,
trade-offs, and financial benefits. For more information, see Compare scenarios.
• Approve the best scenario that aligns with the organizational goals. For more information, see
Approve a scenario.
• Set a target portfolio budget for each of your planning cycle, which can be for fiscal period,
quarter, yearly, or portfolio timeline.
• Evaluate the target vs proposed budget of In-plan items and review the monetary benefit from
the prioritized items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

262


<!-- page 263 -->
Scenario Planning workflow overview
The scenario planning workflow involves an execution owner and a portfolio owner. The following
illustration illustrates how scenario plans are created based on the planned or actual dates of
planning items and how the In-plan toggle is adjusted based on the states of these planning
items.
User journey in Scenario planning

For more detailed guidance on using scenario planning to enhance your Strategic Planning
process, see Optimizing planning with scenario planning in Strategic Planning Workspace.
Capacity in Strategic Planning
The Capacity tab provides portfolio managers a comprehensive view of capacity, allocations,
and utilization of resources.
Analyzing the Capacity screen, you can:
• View resource capacity for prioritized items in your portfolio.
• Understand the resource capacity needs and estimates across your organization by using key
attributes such as group, role, and skill.
• Effectively forecast the supply of resources and the demand of work in your portfolio.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

263


<!-- page 264 -->
• Understand and get an overview of the resource capacity allocations by using the color
indicators.
• Plan for resources with specific skills or roles for future assignments.
• View the resource allocation health instantly with the new intuitive user interface that gives you
a detailed breakdown of portfolio duration by month having over allocations.
• Identify the risks in resource capacity for the prioritized planning items using the Rank field.
• Use the warning icons to easily identify the over utilized resources (
actual dates (
(

), planning items with

), and the planning items or resource groups with no resource assignments

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

264


<!-- page 265 -->
Capacity screen

The top screen area displays:
• Resource capacity details depending on the defined resource criteria.
• Allocation details for the time period.
• Resources grouped by primary attributes.
The bottom screen area displays:
• Prioritized planning items.
• Interactive Gantt chart for the duration of planning items. Select a Gantt bar to see
the capacity for that specific planning item only.

Note: Move the Gantt bar of a planning item to adjust the planned dates
depending on the available resource capacity. Planning items with actual
dates, indicated with in-progress icon (
availability.
• Toggle option (

), cannot be adjusted for resource

) to adjust the resource capacity view.

• Legend explaining the visual representation of the resource capacity and Gantt
bar of planning items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

265


<!-- page 266 -->
Financial planning for planning items
Plan, re-forecast, track the financials, and create baselines for all of your planning items.
You can work on financial planning supported on low level planning items like demands,
projects, epics, features, capabilities, and so on.
The financials view provides a streamlined perspective, showcasing the actual and planned
expenses for the entire fiscal period. You can view the latest estimated cost of completion by
viewing the Actual costs for the past fiscal periods, planned costs for the current and future fiscal
periods, and the total by quarter, year, or for the full scope of the item.

Note:
• Currently, Financials is not yet supported for high level entities like Initiatives, Strategic
programs, Product ideas, and so on.
• Generation of labor cost plans based on resource assignments is not yet supported on
planning items without internal integration to core task tables.
Interface of the financials record page gives you the ability to create cost plans, expense lines,
and baselines. As a financial user, you can:
• Enter high-level financial forecasts for planning items using the simple financials section in the
Details tab.
• Work on high-level estimating for Planned opEx and Planned capEx.
• Create a detailed breakdown of the planned costs using the financials tab.
• View the rollups of Planned costs, Actuals costs, and Planned benefits for all of your planning
items in the Prioritization grid.
• Add, edit, or delete cost plans effortlessly from the Cost screen.
• Re-forecast your planned expenses using the in-line editing feature.
• View a streamlined perspective, showcasing your actual costs for the past and planned
expenses for the future, for the entire time scope of the planning item.
• Get a better comprehensive solution by viewing the Forecast (previously EAC - Estimate at
Completion), Remaining Estimates (previously ETC - Estimate to Completion), and Actuals of
each cost plan for the total time scope and the yearly breakdowns.
• Re-forecast the planned cost for future fiscal periods by directly updating the quarterly and
yearly totals using the in-line editing capability of the grid.
• Generate labor costs depending on the resource assignments for the entire scope of the
planning item broken down by the financial attributes configured for your organization. For
more information on the planning attributes for attribute-based mapping, see Using the
Planning attributes.
• Add or edit expense lines against the cost plans easily from the side panel with the associated
cost plan details pre-populated.
• Record unplanned expenses using the New expense line side panel.
• Create and compare financial baseline to track the financials of your planning items.
• Compare the latest costs (actual expenses for past fiscal periods and planned costs for
current and future fiscal periods) with the initial forecasted planned costs by creating financial
baseline and using the compare baselines capability.
• Analyze the cause of variance in costs and when did this occur over time by capturing the
financial baselines manually or automatically.
• Switch between different display modes to get a focused view of the financial records.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

266


<!-- page 267 -->
You can view the following information on the financials screen.
• Time scope: duration of the planning item or a cost plan, whichever has a larger fiscal period
range.
• Functional currency: currency defined and used to calculate the financials.
• Customizable widgets showing different financial information such as allocated budget,
Forecast (previously EAC - Estimate at Completion), Variance (the difference between budget
and Forecast), breakdown of planned costs, and actuals by cost type.

Note: Budget and Budget vs EAC Variance widgets are available for Demands and
Projects only.
• Time scale: time period breakdowns to view the financials. Default value is set to Month/
Period, depending on the fiscal calendar type.
• Display mode: list options to switch between different modes to get a focused view of
financials.
• Generate labor costs: one-click solution to generate or refresh the planned labor costs for the
planning item depending on resource assignments.

Note: This option is enabled for the projects with resource assignments only.
• The left pane gives you a tabulated view of the cost plan attributes displaying the Name, Cost
type, Expense type, Stat fiscal period, End fiscal period, Total planned cost, Employee type,
and Role. You can customize these fields. For more information, see Customize the left pane
view for financials.
• In the right pane, you can view the total Actuals, Forecast, and Remaining Estimates for the
selected Time scope duration. Actual expenses against a cost plan for the past fiscal periods,
Actuals, Forecast, and Remaining Estimates for the current fiscal year, and planned costs for
the current and future fiscal periods.

Note: The header rows of actuals and planned are color-coded differently to help you
easily identify and differentiate between the expense types.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

267


<!-- page 268 -->
• New cost plan: opens a simplified side-panel to create a new cost plan for the entity.
• Personalize option to customize the columns in the left pane of the table.
• Export option to download Cost or Baselines comparison as Microsoft Excel or CSV file.
Strategic Planning with PPM, Agile 2.0, and SAFe
Facilitate execution of the work planned in Strategic Planning in ServiceNow applications such
as Project Portfolio Management (PPM), Agile Development 2.0, or Scaled Agile Framework.
While planning personas like portfolio managers or product owners use Strategic Planning to
align their plans with the business objectives, they can provide flexibility to the execution teams
to decide how they deliver their work.
Teams can choose the methodology that would be the most effective for them, and decide
on the execution system that would best fit their needs. They can use applications such as
®
ServiceNow Project Portfolio Management, Agile Development 2.0, or Scaled Agile Framework
(SAFe) to execute the work planned by their managers.​
With this flexible approach of delivering work, empower your teams to deliver more value, while
being able to fund, manage, and monitor all work from a single workspace.
®

Strategic Planning integration with ServiceNow applications

Key benefits of Strategic Planning with PPM, Agile 2.0, and SAFe
• View available PPM, Agile 2.0, and SAFe planning items in Strategic Planning .
• Import planning items from PPM, Agile 2.0, or SAFe to Strategic Planning .
• Export planning items from Strategic Planning to PPM, Agile 2.0, or SAFe.
• Synchronize updates for linked planning items of Strategic Planning with PPM, Agile 2.0, and
SAFe.
• Track the progress of the linked planning items in Strategic Planning.
• Track the flow of ideas from Idea portal to Feedback by integrating the Idea portal with
Feedback.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

268


<!-- page 269 -->
To get started on integrating Strategic Planning with PPM, Agile 2.0, and SAFe, see Configuring
Strategic Planning with PPM, Agile 2.0, and SAFe.
Better together with other ServiceNow applications
The integration of Strategic Planning with other ServiceNow applications helps portfolio and
product managers to optimize planning, collaboration, and release management for their
products.

Strategic Planning with AI Control Tower workspace
®

The ServiceNow AI Control Tower workspace enables you to track and monitor all your
strategic priorities, goals, targets, planning items, and execution items—projects and demands
categorized as Artificial Intelligence in the Strategic Planning Workspace.
Populate the Type field for strategic priorities, the Category field for goals, and the Investment
type field for planning items with the Artificial Intelligence option to monitor their progress in the
AI Control Tower workspace. For more information, see Create a strategic priority, Create a goal,
and Add a planning item.
When AI Control Tower is installed, the AI strategy tab appears in the AI Control Tower
workspace, featuring different widgets for AI strategies, goals, targets, costs of planning items,
prioritized work, and RIDAC details. For more information, see AI strategy tab in AI Control
Tower .

Strategic Planning with Digital Product Release workspace
Using the Digital Product lens, product managers can plan, prioritize, and roadmap the work for
digital products by aligning with the business strategy.
As part of planning when you associate planning items with the product enhancement in the
Strategic Planning Workspace, those associated planning items appear in the Planning items
tab of the Release scope page in ServiceNow Digital Product Release workspace. This tab
helps product managers track the status of the planning items associated with the product
enhancements in the Digital Product Release workspace itself to ease the release management
for their products. For more information, see Scope of a release .

Strategic Planning with Collaborative Work Management
With the integration of ServiceNow Collaborative Work Management (CWM) with Strategic
Planning, you can plan, roadmap, and associate goals to Boards in a portfolio plan. By adding
CWM Boards to a lens configuration, you can access them in the Prioritization, Roadmap, and
Goals pages of a portfolio plan as planning items.
The lenses supported to configure the CWM Board as a planning item are Organization, Project
Portfolio, and Strategic Investments.
For more information on integration of CWM with Strategic Planning, see Connecting CWM
with Strategic Planning or Portfolio Planning. To learn how to update the lens configuration, see
Create or modify a lens in Strategic Planning.

Strategic Planning with Enterprise Architecture Workspace
Using the Business Capability lens, enterprise architects can plan, prioritize, and roadmap the
work based on business capabilities or business applications. For information on ServiceNow
Enterprise Architecture Workspace, see Enterprise Architecture Workspace .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

269


<!-- page 270 -->
Strategic Planning with Digital Portfolio Management
Integrate ServiceNow Digital Portfolio Management (DPM) with Strategic Planning to provide
DPM managers the access to roadmap planning. With this integration, you can:
• Optimize portfolio performance by monitoring services and their performance levels in a
comprehensive roadmap.
• Make informed budgetary decisions and deliver shared outcomes by prioritizing backlogs and
managing roadmaps of business applications.
For more information, see Exploring Digital Portfolio Management

.

Configuring Strategic Planning Workspace
Learn about the process required to set up Strategic Planning to enable your product and
portfolio managers start aligning their work with business goals and strategy.

Configuration workflow
Use the following steps as guidelines to set up Strategic Planning. Some of these steps require
the admin role and some require the sn_align_core.apw_admin role.
1. Install Strategic Planning.
2. Assign user roles.
See the Roles installed table in Components installed with Strategic Planning Workspace.

Note: If you are upgrading from an older version to Strategic Planning v2.1.0 or higher, a
fix script is run to remove the milestone_editor role from the roadmap_editor role because
the roadmap_editor role is no longer used. In this case, you may experience a longer time
for the upgrade to complete if your ServiceNow instance has a large number of users with
the roadmap_editor role. For more information, see KB1443618 .
3. Configure lenses to enable your planning managers to create portfolio plans.
See Lens configuration in Strategic Planning.
4. Enable high-level planning for tables that are not enabled by default.
(Optional) See High-level planning configuration in Strategic Planning.
5. Validate your configuration for lens, planning items, portfolio plans, high-level planning, and
others.
See Strategic Planning diagnostics.
6. Configure Prioritization and Roadmap display settings.
(Optional) See Prioritization display settings in Strategic Planning.
7. Configure Feedback and manage your feedback and product ideas. See Configuring
Feedback application in Strategic Planning.
®

8. Integrate Strategic Planning with a ServiceNow execution system of your choice. This
integration enables you to plan in Strategic Planning and execute in your chosen app.
See Configuring Strategic Planning with PPM, Agile 2.0, and SAFe and Configuring Feedback
application in Strategic Planning.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

270


<!-- page 271 -->
9. Migrate your existing goals to Strategic Planning and configure goal preferences.
See Configuring goals in Strategic Planning.
10. Configure Capacity Planning and generate resource capacity.
See Capacity configuration in Strategic Planning.
11. Enable financial planning for epics and customise the Financials screen view.
See Configure financials for planning items Strategic Planning.

Guided Setup to configure Strategic Planning
Guided Setup provides a sequence of tasks to help you with the required configuration on your
ServiceNow instances. After installing Strategic Planning, navigate to All > Strategic Planning >
Guided Setup.
When you’re configuring a task from the Guided Setup, you can launch the in-app help for
additional guidance by clicking the Show Help icon (

).

Install Strategic Planning
Install the Strategic Planning application from ServiceNow Store if you have the admin role.

Before you begin

Ensure that the application and all of its associated store applications have valid ServiceNow
entitlements. For more information, see Get entitlement for a ServiceNow product or
application .
Role required: admin

Procedure
1. Navigate to System Applications > All Available Applications > All.
2. Find the Strategic Planning application using the filter criteria and search bar.
You can search for the application by its name or ID (sn_apw_advanced). If you cannot find an
application, you may have to request it from ServiceNow store.
3. Click Install.
4. In the Application installation dialog box, review the application dependencies.
If your application requires other applications, install them first if they are not already installed.
Installing your application also automatically installs the dependent applications or plugins if
they are not installed already.
5. If you want to install demo data, click Load demo data.
Demo data includes sample records that describe application features for common use cases.
Load demo data when you first install the application on a development or test instance.
6. Click Install.

Result

The following components are installed with installation of the Strategic Planning application:
• Roles
• Tables
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

271


<!-- page 272 -->
See Components installed with Strategic Planning Workspace for more information.
Planning item configuration for lenses and portfolio plans
Learn about the types of default and custom planning items that planning managers can work
with in Strategic Planning Workspace.
For every portfolio plan that you build using a lens, only those item types that are added to that
lens are available for planning. For example, a lens XYZ has epics and projects added to it. Then,
in any portfolio plan that you build using the XYZ lens, you can plan for work in the form of epics
and projects only.

Default planning items
By default, you can use Projects, Demands, and Epics as planning items for your lens and build
plans using them.

Pre-defined custom planning items
If you want to use a different item type, you can use up to five pre-defined custom planning item
tables that are available in your ServiceNow instance.
1. Select one of the custom planning item type tables available. See Components installed with
Strategic Planning Workspace.
2. Modify the label of the table that you want to use.
For example, you want to plan for incidents, change the label of Custom planning item 1 to
Incident.
3. Add this table to the sn_align_core.planning_item_types_allow_list property.
See Enable custom item types in Strategic Planning.

New custom planning items
If you've used up all these five pre-defined custom planning item tables and want a different item
type to use for your portfolio plans, you can define new item types. See Define a new planning
item type in Strategic Planning.
Review existing planning item types in Strategic Planning
Before you create a portfolio plan using lenses, start with verifying that the default planning item
types in Strategic Planning suit your company's planning needs.

Before you begin

Ensure you have the details of your company's planning needs.
Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the list of tables by using sn_align_core in the Name column.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

272


<!-- page 273 -->
3. Review the tables that have Planning Item in the Extends table column.
Confirm if those are all the tables that you would require to set up lens required for portfolio
plans.

What to do next

If you need a planning item type other than those available, use one of the five pre-defined
custom planning item tables or you can create your own.
• Enable pre-defined custom planning item tables.
• Define a new planning item type in Strategic Planning
Define a new planning item type in Strategic Planning
Create a custom planning item type in Strategic Planning to enable planning them on the
portfolio plans.

Before you begin

Ensure the application scope in your instance is set to Portfolio Planning.
Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Select New.
3. On the form, fill in the fields.
For field information, see Planning item type form.
4. Optional: Deselect the Create module checkbox.
5. Save the form.
a. Select the Additional actions icon (

).

b. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

273


<!-- page 274 -->
What to do next

If you've created any planning item types, create relevant form views for it. For more information,
see Create form views for new planning item tables in Strategic Planning.
Create form views for new planning item tables in Strategic Planning
For every new planning item table that you create, you must create the necessary form views.
You can also customize the views for existing planning items.

Before you begin
• Define a new planning item type in Strategic Planning.
• Ensure that the application scope in your instance is set to Portfolio Planning.
Role required: admin

About this task

The following are the necessary form views:
• APW Preview: Supports the view that is used to display the planning item details on the
roadmap side panel.
• APW Default: Supports the default view of the planning item form in Strategic Planning.
• APW New: Supports the form view that is used while creating a planning item of this type from
the roadmap.

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the list of tables by using Planning Item in the Extends table column.
3. Select a planning item type that you created.
4. Select the Layout Form related link.
5. From the View name field, select New.
6. In the Create New View window, enter one of the following names in the View name field:
◦ To create the APW Preview view, enter Workspace APW Preview
◦ To create the APW Default view, enter Workspace APW Default
◦ To create the APW New view, enter Workspace APW New
If you're creating a view other than these, ensure that your view name does not contain any
special characters. For example, if you want to create a view with the name SAFe-Portfolio,
replace the hyphen (-) with a space and enter the name as SAFe Portfolio.
7. Select OK
8. Using the Available and Selected lists of fields, select the fields to be visible on the form.
You can also rearrange them in the order of your choice. To keep the form views of new tables
consistent with that of the default settings, ensure you do the following changes:
◦ For Preview and APW Default views, select the Strategic priority and the Primary goal fields
to be visible on the form.
◦ For all three views, select the field for the bottom entity of your lens to be visible on the form.
◦ For all three views, add the Milestones related list. See Add a related list to a form

.

9. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

274


<!-- page 275 -->
A new form view is created for this planning item type.
10. Repeat the steps 4 through 8 to complete creating the other two form views.

What to do next

Create list views for new planning item tables in Strategic Planning.
Create list views for new planning item tables in Strategic Planning
For every new planning item table that you create, you must create the necessary list views. You
can also customize the views for existing planning items.

Before you begin
• Define a new planning item type in Strategic Planning.
• Ensure that the application scope in your instance is set to Portfolio Planning.
Role required: admin

About this task

Create the APW Default and APW Prioritization list views for the planning item table that you
created.

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the list of tables by using Planning Item in the Extends table column.
3. Select a planning item type that you created.
4. Select the Layout List related link.
5. From the View name field in the List view section, select New.
6. In the View name field, enter APW Default.
7. Select OK
8. Using the Available and Selected lists of fields, select the fields to be visible for the list view of
this planning item.
You can also rearrange them in the order of your choice.
9. Select Save.
A new list view is created for this planning item type.
10. Repeat steps 4 to 9 to create a list view for APW Prioritization

What to do next

Create related list views for new planning item types in Strategic Planning
Create related list views for new planning item types in Strategic Planning
For every new planning item table that you create, you must create the necessary related list
views. You can also customize the related list views for existing planning items.

Before you begin
• Define a new planning item type in Strategic Planning.
• Ensure that the application scope in your instance is set to Portfolio Planning.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

275


<!-- page 276 -->
About this task

Every Related list that you add to your planning item tables must be in the APW Default view.

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the list of tables by using Planning Item in the Extends table column.
3. Select a planning item type that you created.
4. Select the Show Form related link.
5. From the form header, select the Additional actions menu (
Lists.

) and select Configure > Related

6. From the View name field in the List view section, select New.
7. In the View name field, enter APW Default.
8. Select OK
9. Using the Available and Selected lists of related lists, select the ones that you want on your
planning item form.
You can also rearrange them in the order of your choice.
10. Select Save.

What to do next

Create workspace view rules for new planning item forms in Strategic Planning.
Create workspace view rules for new planning item forms in Strategic Planning
Define workspace view rules for the form views of new planning item types in Strategic Planning.

Before you begin
• Create form views for new planning item tables in Strategic Planning
• Ensure the application scope in your instance is set to Portfolio Planning
Role required: admin

Procedure
1. Navigate to All > Workspace Experience > Forms > Workspace View Rules.
2. Select New.
3. On the form, fill in the fields.
For field information, see View rule form.
4. In the Conditions section, select Add Filter Condition and add the following condition:
◦ For APW Default view: Created is not empty
◦ For Default view: Created is empty
5. Select Submit.
6. Repeat this process until you have completed creating both workspace view rules.

What to do next

Enable custom item types in Strategic Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

276


<!-- page 277 -->
Enable custom item types in Strategic Planning
Enable the usage of a custom planning item type in Strategic Planning so that your planning
managers can start adding them to their free-form roadmaps or portfolio plans.

Before you begin

Role required: sn_align_core.apw_admin

About this task

Add the table that you want to allow for planning in Portfolio plans and free-form roadmaps to a
system property.

Procedure
1. Navigate to All > System Properties > All Properties.
2. Open one of the following system properties.
◦ For portfolio plans: sn_align_core.planning_item_types_allow_list
◦ For free-form roadmaps:

sn_align_ws.freeform_planning_items_creation_list

3. In the Value field, add your custom table.
For example, add sn_align_core_custom_planning_item_1.

4. Select Update.

What to do next
• For portfolio plans: Add your custom planning item type to the lens that your planning
managers want to use. See Lens form.
• For free-form roadmaps: Create planning items from the roadmap view.
Lens configuration in Strategic Planning
Learn how to configure settings for planning items and add additional configuration for a lens in
Strategic Planning so that you can set up lenses for your planning manager.
Your planning manager can use one of the nine pre-defined lenses - Project Portfolio, Project
Program, Organization, Strategic Investments, Product, Digital Product, Value Stream, Goals, and
Business Capability - to create portfolio plans, or you can set up a custom lens structure for them.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

277


<!-- page 278 -->
Pre-defined lens

Custom lens

1. Navigate to the Lenses list and add Epic as
a planning item for each of the pre-defined
lenses. See Lens form.

1. Create or modify a lens in Strategic
Planning.

2. (Optional) Change the structure for these
lenses per your requirements. See Add or
modify lens structure in Strategic Planning.
3. For the planning items types included in
the Product or Strategic Investment lenses,
ensure that all necessary form and list views
have a field for the bottom entity of the lens.
4. For Product or Strategic Investment lenses,
update roadmap configuration to include the
bottom entity and its parent entity in Group
by fields and Color by fields. See Customize
the planning item display preferences for
Prioritization and Roadmap.
5. Configure integration with a ServiceNow
execution application of your choice. See
Configuring Strategic Planning with PPM,
Agile 2.0, and SAFe.

2. Add or modify lens structure in Strategic
Planning.
3. Associate planning items to the bottom
entity of the lens. See Lens structure form.
4. Ensure that all APW form views of all
planning item types include a field for the
bottom entity of the lens.
5. Update roadmap configuration to include
the bottom entity and its parent entity
in Group by fields and Color by fields.
See Customize the planning item
display preferences for Prioritization and
Roadmap.
6. Validate and activate your lens. See
Activate a lens in Strategic Planning.
7. Configure integration with a ServiceNow
execution application of your choice. See
Configuring Strategic Planning with PPM,
Agile 2.0, and SAFe.

Create or modify a lens in Strategic Planning
Start defining your company's planning perspectives in Strategic Planning by creating a lens.

Before you begin

Role required: admin

About this task

Create a lens record and add the type of items (Project, Demand, and others) that can be
planned using this lens. The type of planning items that you associate with the lens are the only
type of work that the planning managers can use, in their portfolio plans.

Procedure
1. Navigate to All > Strategic Planning > Lenses.
2. Select New.
3. On the form, fill in the fields.
For field information, see Lens form.
4. Select Submit.

What to do next

Add or modify lens structure in Strategic Planning.
Related topics
Lenses in Strategic Planning

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

278


<!-- page 279 -->
Add or modify lens structure in Strategic Planning
Add entities to your lens and build its structure so that your planning managers can start creating
their portfolio plans in Strategic Planning.

Before you begin

Ensure that your application scope is set to Portfolio Planning Core.
Role required: admin

About this task

For a lens, add entities to build a new lens structure or to modify the existing structure. You can
add up to six entities in a lens structure. For more information on lens and its structure, see Lens
configuration in Strategic Planning.

Procedure
1. Navigate to All > Strategic Planning > Lenses.
2. From the Lenses list, select a lens for which you want to add or update the lens structure.
3. Add an entity to the lens structure.
a. From the Lens structure related list, select New.
b. On the form, fill in the fields.
For field information, see Lens structure form.
c. Select Submit.
4. Repeat step 3 to complete adding all your lens entities.
◦ Add the entities in a top-down manner:
Add the top-level entity first, followed by the second-level entity, followed by the third, and so
on.
◦ Ensure that every entity, except the top-level, has a parent entity reference.
For example, the second-level entity must refer to the top-level entity as its parent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

279


<!-- page 280 -->
What to do next
1. Verify that the Planning item table [sn_align_core_planning_item] has a field that references
the bottom entity of this lens.
2. Ensure that the following form views for all the planning item types that are associated in your
lens contains a field for the bottom entity of your lens structure.
◦ APW Preview
◦ APW New
◦ APW Default
3. Update the roadmap configuration for the tables all planning item types that you associate with
this lens:
Add the bottom entity of this lens structure and its parent to Group by fields and Color by
fields. These fields are used as the default group by and color by settings for the portfolio
roadmap. See Customize the planning item display preferences for Prioritization and Roadmap.
4. Validate your lens configuration and activate it. See Activate a lens in Strategic Planning.
Activate a lens in Strategic Planning
Validate your lens configuration and activate it so that your planning managers can start creating
portfolio plans using this lens.

Before you begin

Role required: admin

About this task

If you've changed the structure of an existing lens or created a custom lens, validate its
configuration and set its state to Active.
Planning managers can create portfolio plans using only lenses that are active. For a lens to be
available in the workspace for a planning manager, its configuration must be valid and must be in
the Active state.

Procedure
1. Navigate to All > Strategic Planning > Lenses.
2. From the Lenses list, select a lens.
3. On the lens form, click the Validate Lens related link.
◦ If the lens configuration is valid, a success message prompts you that you can now activate
it.
◦ If the lens configuration isn’t valid, use the error messages to understand the issues and fix
the configuration.
Try validating the lens using the related link again.
4. Select the Active field and save the form.
Related topics
Add or modify lens structure in Strategic Planning

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

280


<!-- page 281 -->
High-level planning configuration in Strategic Planning
If your planning managers need high-level planning enabled for items other than the default
ones, you need to update the configuration for lens entities and portfolio plans.
By default, Strategic Programs, Programs (pm_program), and Initiatives are the planning item
types that are enabled for high-level planning. Also by default, the Product Enhancement entity
with the Digital Product lens is enabled for high-level planning. To enable other planning item
types, complete the following configuration tasks.

Note: High-level planning is enabled for Strategic Planning v2.1.0 and higher.
For items that extend the Planning Item table
For example, you added Custom planning item 1 [sn_align_core_custom_planning_item_1] to
your lens structure and you want to use it for high-level portfolio plans. In the Lens structure
related list for your lens, set the Planning enabled field to true for the Custom planning item 1
entity. For detailed information, see Enable high-level planning for a lens entity.

For items that do not extend the Planning Item table
Consider the example of enabling high-level planning for the Strategic Priority [sn_gf_strategy]
planning item type.
1. Create a global rank column in the Strategic Priority [sn_gf_strategy] table. See Create global
rank column for high-level planning.
2. Create rank configuration for the new global rank column. See Create rank configuration for
high-level planning.
3. Create portfolio plan configuration for the Strategic Priority [sn_gf_strategy] table. See Create
portfolio plan configuration for high-level planning.
4. Enable high-level planning for the Strategic Priority [sn_gf_strategy] entity in the lens structure
record. See Enable high-level planning for a lens entity.
5. Run diagnostics and fix script to populate global rank for all existing Strategic Priority records.
See Populate global rank for high-level planning items.
6. Create a business rule for the Strategic Priority [sn_gf_strategy] table to enable setting a global
rank for any future records created. See Create a business rule for high-level planning.

Tip: While choosing a table as your high-level planning entity, ensure that it has fields
such as start date and end date, owner or assigned to, name or short description, so that
this can be used as a planning item. For example, you cannot use the Organization or
Product tables as your high-level planning entities. On the other hand, the Strategic Priority
tables meets the requirements of a planning item and can be configured for high-level
planning.
Once all these tasks are complete, your planning manager can create a high-level portfolio plan
for the desired entity - for this example, portfolio plans can be created to prioritize and roadmap
the strategic priorities of the company, and to view how the work across the company is aligned
to these strategic priorities.
Create global rank column for high-level planning
Create a global rank column for planning item types that do not extend the Planning Item
[sn_align_planning_item] table so that you can enable high-level planning for these items in
Strategic Planning Workspace.

Before you begin

Upgrade to Strategic Planning v2.1.0.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

281


<!-- page 282 -->
Role required: admin

About this task

Create a Global rank column on the planning item table for which you want to enable high-level
planning. This column allows populating a global rank for all existing and new records of this
table in your ServiceNow instance.

Procedure
1. Navigate to All > System Definition > Tables.
2. Search for and open your planning item table.
For example, search for and open the Strategic Priority [sn_gf_strategy] table.
3. From the Columns related list, select New.
4. On the form, fill in the following fields.
Dictionary Entry form fields
Field

Table

Description

Table for which you are creating this column.
This field is automatically set to the table
you've selected in Step 2.

Type

Value type of the column that you're creating.
Select Long.

Column label

Label for the rank column.
Enter Global rank.

Column name

Auto-generated unique name for the column.

Application

Application scope of the table.
This field is populated automatically based
on the table that you selected.

For complete details of the Dictionary Entry form fields, see Dictionary entry form

.

5. Save the form.

What to do next

Create a rank configuration for the global rank field you created. See Create rank configuration
for high-level planning.
Create rank configuration for high-level planning
To enable high-level planning on a table that is not a planning item in Strategic Planning
Workspace, create a rank configuration for the global rank column of the table.

Before you begin

Create global rank column for high-level planning.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

282


<!-- page 283 -->
Role required: admin

About this task

Create a configuration for the global_rank column for the table that you want to enable for highlevel planning. Completing this task would allow you assigning a global rank value to the records
of this table.
In this task, consider the example of creating a rank configuration for the Strategic Priority
[sn_gf_strategy] table.

Procedure
1. Navigate to All > rank_configuration.list.
A list of tables that have a configuration for their Global rank field is shown.
2. Select New.
3. On the form, fill in the fields.
Rank Configuration form
Field

Description

Table

Table that you want to enable high-level
planning.
For example, Strategic Priority
[sn_gf_strategy]

Column

Global rank column of your table.

4. Select Submit.

What to do next

Create a portfolio plan configuration for your high-level planning table. See Create portfolio plan
configuration for high-level planning.
Create portfolio plan configuration for high-level planning
To enable high-level planning on a table that is not a planning item in Strategic Planning
Workspace, create portfolio plan configuration for the table.

Before you begin

Create rank configuration for high-level planning
Role required: admin

About this task

After creating a global rank column and a rank configuration for that column, create a portfolio
plan configuration for the table that you chose for high-level planning. Following this task,
configure the Proritization and Rodmap page settings for a portfolio plan that your planning
managers would create for this table.
In this task, consider the example of Strategic Priority [sn_gf_strategy] table.

Procedure
1. Navigate to All > sn_align_ws_roadmap_configuration.list.
A list of existing portfolio plan configuration records for the Strategic Planning tables is shown.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

283


<!-- page 284 -->
2. Select New to create a portfolio plan configuration for your table.
3. On the form, fill the fields.
Portfolio plan configuration
Field

Description

Source table

Table that you want to enable high-level
planning for.
For example, Strategic Priority
[sn_gf_strategy].

Rank configuration
Field

Description

Rank configuration

Table that is used to create the portfolio plan.
The value for this field is the table selected in
the Source table field.

For complete details of the fields on this form, see Portfolio plan configuration form.
4. Save the form.

What to do next

Populate global rank value for all existing records of your high-level planning table.
Enable high-level planning for a lens entity
To enable high-level planning on for an entity in Strategic Planning Workspace, update the lens
entity configuration.

Before you begin

Create portfolio plan configuration for high-level planning.
Role required: admin

About this task

For the table that you want to enable high-level planning, set the Planning enabled field to Yes
in the Lens form. Completing this task would enable your planning managers to create portfolio
plans using this table as a planning item, in Strategic Planning Workspace.
For this task, consider the example of Strategic Investments as the lens and the Strategic Priority
[sn_gf_strategy] table as the high-level planning entity.

Procedure
1. Navigate to All > Strategic Planning > Lenses.
2. Select and open the lens that you want to use for high-level planning.
For example, select Strategic Investments.
3. In the Lens structures related list of the Lens form, set the Planning enabled field of your highlevel entity to true.
For example, set the Planning enabled field of Strategic Priority entity to true.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

284


<!-- page 285 -->
If your high-level entity is not a part of your lens structure, you can add it. See Add or modify
lens structure in Strategic Planning.

4. Save the Lens form.

Result

Your planning managers can now create portfolio plans on the Strategic Investment lens and use
Strategic Priority as their planning item.

Important: Once a portfolio plan is creating based on this entity, you can neither disable
high-level planning for it nor delete the entity record from the lens structure.

What to do next

Populate global rank for high-level planning items.
Populate global rank for high-level planning items
To enable high-level planning on a table that is not a planning item in Strategic Planning
Workspace, populate global rank for existing records of this table.

Before you begin

Enable high-level planning for a lens entity.
Role required: admin

About this task

Use the Strategic Planning diagnostics module to populate global rank for all existing records of
the table that your planning managers chose for high-level planning. Completing this task would
generate a value for the Global rank field of your table.
For this task, consider the example of generating a rank value for all existing records of the
Strategic Priority [sn_gf_strategy] table.

Procedure
1. Navigate to All > Strategic Planning > Diagnostics.
2. Run the Identify the high-level entities enabled for planning, without a global rank diagnostic
script by selecting Run Diagnosis.
The diagnosis would fail and show you the type and the total number of records that are
missing a global rank.
3. Select Run fix script to populate global rank value for all the flagged records.
You can verify that the rank is populated by running the diagnostic script again. You would see
that the diagnosis is a success.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

285


<!-- page 286 -->
What to do next

Create a business rule to populate global rank on any future records create on your high-level
planning table. See Create a business rule for high-level planning.
Create a business rule for high-level planning
To enable high-level planning on a table that is not a planning item in Strategic Planning
Workspace, create a business rule to allow assigning a rank value for all future records of this
table.

Before you begin

Populate global rank for high-level planning items.
Role required: admin

About this task

All future records of your high-level planning entity must have a global rank so that when your
planning managers reorder and prioritize items of this type in their portfolio plan, their rank is
automatically updated. To enable this auto assigning of rank value to any new records, create a
business rule.
For this task, consider the example of creating a business rule on the Strategic Priority
[sn_gf_strategy], to enable auto-assignment of rank value for all its future records.

Procedure
1. Navigate to All > System Definition > Tables.
2. Search for and open your planning item table.
For example, search for and open the Strategic Priority [sn_gf_strategy] table.
3. Right-click the form header and select Configure > Business Rule.
4. Select New.
5. On the form, fill in the fields.
Business Rule form
Field

Description

Name

Name to identify the rule.
For example, Strategic Priority rank insert
rule.

Table

Table on which this business rule is applied.
For this example, select Strategic Priority
[sn_gf_strategy].

Advanced

Option to enable advanced settings for this
business rule.

6. In the Advanced related list, enter the following code in the Script field.
(function executeRule(current, previous /*null when async*/)
{
var spwRankingHelper = new
sn_align_core.SPWRankingHelper();
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

286


<!-- page 287 -->
var rankConfig =
spwRankingHelper.getRankConfiguration(current.getTableName());
if (rankConfig.isValidRecord())
{
var sequencer = new
sn_align_core.AlignmentPlanningRankProcessor(rankConfig.getVal
ue("table"), rankConfig.getValue("column"));
sequencer.generateNewIndex(current);
}
})
(current, previous);
7. In the When to run related list, enable the Insert option.
8. Save the form.

Result

This task is the end of the series of tasks to enable high-level planning on a table that does not
extend the Planning Item [sn_align_planning_item] table. After this task is complete, you can
notify your planning managers that they can start creating portfolio plans for the configured
entity type.
See Managing portfolio plans in Strategic Planning Workspace.
Custom scoring frameworks in Strategic Planning
Learn how to create a custom scoring framework and associate it with a portfolio plan, so you can
prioritize your planning items based on a defined score.
You may use one of the three pre-defined scoring frameworks - RICE, Value vs Effort, or WSJF, or
you can create a custom scoring framework and associate it with your portfolio plan.

Note: The pre-defined scoring frameworks aren't editable. Administrators can enable
or disable the base system scoring frameworks by setting the Active field on the Scoring
Framework form.
Create a custom scoring framework
Start scoring your planning items based on your preferences by creating a custom scoring
framework.

Before you begin

Role required: sn_align_core_apw_admin

About this task

Creating a custom scoring framework.

Procedure
1. Navigate to All > Strategic Planning > Scoring Frameworks.
2. Select New.
3. Enter a name of your scoring framework in the Name field.
4. Enter the details of your scoring framework in the Description field.
5. Select Submit.

What to do next

Create your scoring framework attributes
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

287


<!-- page 288 -->
Create your scoring framework attributes
Add attributes within your scoring framework, so that you can build a formula and start scoring
your planning items within your portfolio plan.

Before you begin

Role required: sn_align_core.apw_admin

About this task

Create Scoring Framework attribute.

Procedure
1. Navigate to All > Strategic Planning > Scoring Frameworks.
2. From the Scoring Frameworks list, select a framework for which you want to add the Scoring
Framework Attributes.
3. Select New, from the Scoring Framework Attributes related list.
4. On the form, fill in the fields.
Scoring Framework Attribute form
Field

Description

Label

Name that defines your scoring Framework.

Type

Type of the label, such as integer, choice,
star, and so on.

Description

Details of the Scoring Framework.

Tip: If you want to add a choice type scoring attribute, ensure to have Decimal or Integer
in the Type field, and Choice in the Display type field.
5. Select Submit.
6. Repeat step 3 to add all your Scoring Framework Attributes.

What to do next

Create a final score attribute
Create a final score attribute
Learn how to create an attribute to calculate the final score of your Scoring Framework.

Before you begin

Role required: sn_align_core_apw_admin

About this task

Create an attribute to calculate the final score of a Scoring Framework.

Procedure
1. Navigate to All > Strategic Planning > Scoring Frameworks.
2. From the Scoring Frameworks list, select a framework for which you want to add the final score
attribute.
3. Select New, from the Scoring Framework Attributes related list.
4. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

288


<!-- page 289 -->
Scoring Framework Attribute form
Field

Description

Label

Name that defines your Scoring Framework's
final score.

Type

Type of the label, such as choice, decimal,
integer, or string.

Description

Details of the Scoring Framework attribute.

5. Select the Final score option to mark this attribute as the final score attribute of your Scoring
Framework.
6. Select the Calculated Value tab and add a formula to derive the value of the final score
attribute
This formula should be based only on the scoring attributes of your scoring framework. In the
this example, the ICE custom framework has the formula:
ICE score = Impact * Confidence * Ease

7. Select Update.
Configuring goals in Strategic Planning
To define and manage goals in Strategic Planning, you must perform some initial administrative
tasks for the workspace to be fully functional. The data displayed in the goals view in Strategic
Planning is stored in the Goal Framework tables.
• With the admin role, you can migrate the existing goals data to the Goal Framework tables.
• With the sn_gf.goal_admin role, you can set the goal preferences.
Post migration of your existing goals (if any) and configuring the goal preferences, use the Goals
view in Strategic Planning to define your goals. For more information, see Managing goals in
Strategic Planning Workspace.
Migrate existing goals data to Goal Framework tables
With the admin role, you can migrate the existing goals data to the Goal Framework tables by
running the scheduled job.

Before you begin

Role required: admin

About this task

Note: Migrating data to the Goal Framework tables is a one-time job, and not meant to be
on a schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

289


<!-- page 290 -->
Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and click the Migrate Goal, Strategy, and Work item data to the Goal Framework
and related Planning item tables scheduled job.
3. On the Scheduled Script Execution form:
a. Ensure that the frequency is selected as On Demand in the Run field.
b. Set the value to true for the required parameters in the Run this script field.
For parameters information, see Migrate Goal, Strategy, and Work item data to the Goal
Framework and related Planning item tables.
4. Click Execute Now.
Configure goal preferences
Configure goal preferences to manage goals such as the calendar type used for goal setting,
weighted average calculation for goal progress, and deletion of goals and targets.

Before you begin

Role required: sn_gf.goal_admin

Procedure
1. Navigate to All > Enterprise Goal Management > Preferences.
2. On the Goal Preferences form, configure the properties.
For properties information, see Goal Preferences form.
3. Click Save.
Customize label for Goal and Target tables
Customize the label for Goal [sn_gf_goal] and Target [sn_gf_goal_target] tables according to your
organization’s requirement.

Before you begin

Role required: admin

About this task

When you rename the label for the Goal [sn_gf_goal] and Target [sn_gf_goal_target] tables,
the changes apply to these labels across the Heisenberg UI and the Workspace UI. Also, the
Goals and Targets modules under Enterprise Goal Management in the navigation pane will be
renamed.

Procedure
1. Navigate to All > System Definition > Tables.
2. Customize the label name for the tables according to your requirement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

290


<!-- page 291 -->
For this table

Perform these steps

a. Search and open the sn_gf_goal record.
Goal

b. In the Label field, enter a meaningful name.
For example, Objective.
c. Select Update.
a. Search and open the sn_gf_goal_target
record.

Target

b. In the Label field, enter a meaningful name.
For example, Key Result.
c. Select Update.

Configure a table for an assigned entity
Configure a table for an assigned entity type, so that the goal user can associate goals with the
required assigned entity.

Before you begin

Role required: sn_gf.goal_admin

About this task
• By default, with the installation of Strategic Planning, the assigned entities, Business Unit
[business_unit], Department [cmn_department], and Company [core_company], Product
Model [cmdb_model], Value Stream [cmn_value_stream], Intiative [sn_align_core_initiative],
and Strategic Program [sn_align_core_program] are installed.
• With the activation of PPM Standard (Project Portfolio Management), the Portfolio
[pm_portfolio] assigned entity is installed.

Procedure
1. Navigate to All > Enterprise Goal Management > Assigned Entities.
2. Click New.
3. On the form, fill in the fields.
For field information, see Goal Assigned Entity Configuration form.
4. Click Submit.
Create goals demo data with target breakdowns
Run the Create Goals Demo Data with Target Breakdowns schedule job to create goals demo
data with target breakdowns, so that you can view the target breakdowns section on the Goals
page.

About this task

You must run the job to be able to see the target breakdowns section in the Goals and targets tab
on the Goals page.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

291


<!-- page 292 -->
Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and select the Create Goals Demo Data with Target Breakdowns scheduled job.
3. On the Scheduled Script Execution form, ensure that the frequency is selected as On Demand
in the Run field.
4. Select Execute Now.

Result

A goals demo data with target breakdowns is created. You can now view the target breakdowns
for your goals in the Goals and targets tab on the Goals page.
Import goals and targets data from a spreadsheet
With the admin role, you can import your existing goals and targets data from a spreadsheet to
the Goal Framework tables.

Before you begin

Role required: sn_gf.goal_admin
• On a successful job run, the goals data from your spreadsheet is imported to the Goal
[sn_gf_goal] table.
• On a successful job run, the targets data from your spreadsheet is imported to the Target
[sn_gf_goal_target] table.

Note: Because the targets are associated to a goal, you should import the goals first and
then the targets.

Important: Goals and targets data in the spreadsheet must be in the supported
format. For details on the supported data format to import goals and targets data from a
spreadsheet, see Import goals and targets data [KB1191233] .

Procedure
1. Navigate to All > System Import Sets > Load Data.
2. From the Import set table drop-down list, select Goal Import Set [imp_sn_gf_goal] or Target
Import Set [imp_sn_gf_goal_target].
3. From the Source of the import option, select File.
4. In the File option, click Choose and select your spreadsheet to import the data.

Important:
◦ Goals and targets data in the spreadsheet must be in a specific format. For details on
the supported data format, see Import goals and targets data [KB1191233] .
◦ Don't modify the names in the header row of the spreadsheet because the data is
imported to the respective fields in the goal and target tables based on the header title
of each column.
5. Click Submit.
6. On the Progress page, click Run Transform.
7. On the Specify Import set and Transform map page, click Transform.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

292


<!-- page 293 -->
8. Click Transform history and verify that the State column is set to Complete in the Import Set
Runs related list.
Depending on the option that you selected from the Import set table drop-down list, your goals
or targets data is imported to the Goal [sn_gf_goal] or Target [sn_gf_goal_target] tables.
If the job is failed, click Transform history and refer to the details.

Note: The Import operation can be used for inserting new data or updating the existing
data in the tables. By default, the Name and Owner values are the primary keys used
for updating the existing records. You can also add additional fields as primary key for
inserting new data or updating the existing data. For details on how to add additional
fields as primary key, see Import goals and targets data [KB1191233] .
Update a schedule job to automate Actual value of the targets
Use the Goal Framework for SPM application to modify the run time for the scheduled job
according to your preference to auto-update the actual value of the targets for which a target
source has been configured.

Before you begin

Role required: sn_gf.goal_admin

About this task

By default, the scheduled job runs daily at 00:00:00 AM (System Time Zone).

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and click the Update Actual value of the targets using Goal Framework for SPM
scheduled job.
3. Ensure that the Active check box is selected to run the job at a scheduled time.
4. Edit the details of the Run and Time fields according to your preference.
5. Click Update.
To learn more about scheduled jobs, see Scheduled jobs

.

Set display limit for goals and targets in Strategic Planning
Update system property value to set the display limit for goals on the Goals page in Strategic
Planning.

Before you begin

Role required: sn_gf.goal_admin

About this task

The default display limit for goals on the Goals page is 500.

Important: If the value of a system property exceeds its default value, the UI
performance can degrade.

Procedure
1. Navigate to All > System Properties > All Properties.
A list of all the properties in the System Properties [sys_properties] table appears.
2. Search for the sn_align_ws.goal_hierarchy.max_records system property and
open it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

293


<!-- page 294 -->
3. In the Value field, enter the desired number of goals to display in the Goals view.
4. Select Update.
Migrate target breakdowns
After upgrading to Strategic Planning v4.3.2 or later, run the Migrate BreakdownInterval To
Checkinfrequency scheduled job to migrate the existing values from the Review frequency field
to the Check-in frequency field in the target records.

About this task

After running the job, the value in the Check-in frequency field for a target is populated based
on the existing value in the Review frequency field of the target. If the existing value in the
Review frequency field was set to any option other than None, then target breakdowns will be
created for such targets based on the value in the existing check-in frequency of the target. For
more information on how these values are migrated for targets with different values, see Target
breakdowns migration.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and select the Migrate BreakdownInterval To Checkinfrequency scheduled job.
3. On the Scheduled Script Execution form, ensure that the frequency is selected as On Demand
in the Run field.
4. Select Execute Now.
Target breakdowns migration
As an administrator, when you run the Migrate BreakdownInterval To Checkinfrequency
scheduled job, the existing values in the Review frequency and Breakdown interval fields are
migrated to the Check-in frequency field in the target records.
The value in the Actuals to date field for the target and values in the Planned target value and
Actual fields for the target breakdowns are populated based on the current actual value of the
target and values in the existing target breakdowns.

Target breakdowns migration for targets with breakdown interval set to None
After running the job, the value in the Check-in frequency field for a target is populated based on
the existing value in the Review frequency field of the target. If the existing value in the Review
frequency field was set to any option other than None, then target breakdowns will be created
for such targets based on the existing review frequency of the target. Even though Breakdown
interval was set to None for a target, target breakdowns will be created for the target based on
the existing review frequency of the target.
The following table describes how the check-in frequency value is populated for targets with
different values in the Review frequency and Breakdown interval fields.
Target breakdowns migration with breakdown interval set to None
Review frequency (Before
upgrade)

Breakdown interval (Before
upgrade)

Check-in frequency (After
upgrading and running the job)

Yearly

None

Yearly

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

294


<!-- page 295 -->
Target breakdowns migration with breakdown interval set to None (continued)
Review frequency (Before
upgrade)

Breakdown interval (Before
upgrade)

Check-in frequency (After
upgrading and running the job)

Quarterly

None

Quarterly

Monthly

None

Monthly

Fortnightly

None

Fortnightly
The Fortnightly option is
retained and no target
breakdowns will be created
because the Fortnightly option
is no longer supported.
After the owner or a
contributor of the target
updates the check-in
frequency for the target, the
target breakdowns will be
created accordingly.

Weekly

None

Weekly

Daily

None

Daily

None

None

None
In this case, no target
breakdowns will be created.

For example, consider a scenario where details of a target are as follows before upgrade:
• The base value and target value of the target is 0 and 100, respectively
• The review frequency is set to Monthly and Breakdown interval was set to None
• The start date and end date of the target are 2024-01-01 and 2024-12-31, respectively
• The current actual value of the target is 60 and the current month is August
In this case, after running the scheduled job 12 monthly target breakdowns are created for the
target and the current actual value as 60 is populated in the August monthly breakdown. Also,
the planned target value is populated for each breakdown.

Target breakdowns migration for targets with breakdown interval set to
Quarterly or Yearly
After running the job, the value in the Check-in frequency field for a target is populated based
on the existing value in the Review frequency field of the target. Then, target breakdowns are
created for the targets based on the existing review frequency of the target.
The following table describes how the check-in frequency value is populated for targets with
different values in the Review frequency and Breakdown interval fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

295


<!-- page 296 -->
Target breakdowns migration with breakdown interval set to Quarterly or Yearly
Review frequency (Before
upgrade)

Breakdown interval (Before
upgrade)

Check-in frequency (After
upgrading and running the job)

Quarterly

Quarterly

Quarterly

Quarterly

Yearly

Quarterly

Note: For targets with breakdowns interval set to Yearly, irrespective of the target is of type
cumulative or non-cumulative, after running the scheduled job quarterly target breakdowns
will be created and the Target value distribution is set to Spread linearly across the time
period (cumulative) for the target.
For example, consider a scenario where details of a target are as follows before upgrade:
• The base value and target value of the target is 0 and 80, respectively
• The review frequency is set to Quarterly and Breakdown interval was set to Yearly
• The start date and end date of the target are 2023-01-01 and 2024-12-31, respectively
• The target is of type non-cumulative
• The actual value achieved in each quarter is 10 starting from Q1-2023 till Q2-2024
• The current total actual value of the target is 60 and the current quarter is Q2-2024
In this case, after running the scheduled job 8 quarterly breakdowns are created and the Target
value distribution is set to Spread linearly across the time period (cumulative) for the target. The
current actual value for Q1-2023, Q2-2023, Q3-2023, Q4-2023, Q1-2024, and Q2-2024 quarterly
target breakdowns are populated as 10, 20, 30, 40, 50, and 60, respectively. Also, the planned
target value is populated for each breakdown.
Migrate goal relationships for assigned entities
Migrate the existing goal relationship data from the Goal Relationship
[sn_gf_goal_m2m_relationship] table by running the scheduled job.

Before you begin

Role required: admin

About this task
• If you’ve upgraded from Alignment Planner Workspace v4.1.1 or v5.0.1 to Strategic Planning
v2.0.1 and have created m2m relationship with lens entities other than Company, Business
Unit, Department, and Portfolio, you can migrate those lens entities from the Goal
Relationship [sn_gf_goal_m2m_relationship] table to the Goals table to access and manage
the goals for those lens entities in the respective portfolio plans.
• Migrating goal relationships data for assigned entities is a one-time job, and not meant to be
on a schedule.
• Running the job populates the Assigned entity type and Assigned entity fields on the Goal
form based on the data in the Goal Relationship [sn_gf_goal_m2m_relationship] table if
you have any customized lenses other than the lens entity types, Company, Business Unit,
Department, and Portfolio.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

296


<!-- page 297 -->
Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Search for and click the Migrate goal relationships for assigned entities
scheduled job.
3. On the Scheduled Script Execution form:
a. Ensure that the frequency is selected as On Demand in the Run field.
b. In the Run this script field, list the entities configured in the Goal Assigned Entity
Configuration [sn_gf_assigned_entity_config] table that you want to migrate the goal
relationship data for.
For parameters information, see Scheduled Script Execution form.
4. Click Execute Now.
Configuring target source for target automation
Configure target sources for target automation so that the goal user can define a target source
when setting a target for the goal. Defining a target source for a target updates the actual value of
the target automatically.
Use the following steps as guidelines for configuring target sources.
1. Create a target source for a target to configure it as a source to update the actual value of the
target. For more information, see Create a target source.
The context variable is required for target source types Assessment/Survey and PA Indicator.
The mandatory context variables are automatically created while creating a target source with
the type selected as Assessment/Surveys or PA Indicator. For more information on when the
mandatory context variables are created, see Context variable in target source.
2. If required, create context variables for the target source so that the required data is fetched
from the context variables to update the actual value of the target. For more information, see
Create context variables for a target source.
Context variable in target source
The context variable is an additional configuration for the target source that can be used on the
Target form to fetch the required data and auto-update the Actual value field on the Target form.
A context variable is required for target source types Assessment/Survey and PA Indicator.
The context variable is automatically created (with the Mandatory field set to true on the context
variable form) for the target source (of type Assessment/Survey and PA Indicator) when the Goal
Framework for SPM scope is selected before creating a target source. The context variables
created automatically are also known as mandatory context variables.
The mandatory context variables are created when you've selected the Goal Framework for SPM
scope and you've met one of the following conditions:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

297


<!-- page 298 -->
• (For target source type, Assessment/Survey) On the Target Source form, the Type field is set to
Assessment/Survey and the Assessment Metric Types field is populated with a metric type
of Evaluation method = Assessment.

• (For target source type, PA Indicator) On the Target Source form, the Type field is set to PA
Indicator and the value populated in the Breakdown field isn't of Choice list type.
To create a context variable for the target source type, PA Indicator, where the Breakdown field
is of Choice list type, see Create a context variable for the target source type PA Indicator.

Note: Mandatory context variables can't be deleted.
You can also create context variables manually for a target source and use them to configure
for fetching the required data and auto-updating the Actual value field on the Target form. For
more information on how to create a context variable manually, see Create a context variable for
a target source.
Create a target source for automating the Actual value of the targets
Create a target source so that the goal user can configure it for the targets to automate the Actual
value of the targets.

Before you begin

Select the Goal Framework for SPM scope for the application.
Role required: sn_gf.goal_admin

About this task

The context variable is required for target source types Assessment/Survey and PA Indicator.
The mandatory context variables are automatically created while creating a target source with
the type selected as Assessment/Surveys or PA Indicator. For more information on when the
mandatory context variables are created, see Context variable in target source.

Procedure
1. Navigate to All > Enterprise Goal Management > Target Sources.
2. Click New.
3. On the form, fill in the fields.
For a description of the field values, see Target Source form.
4. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

298


<!-- page 299 -->
Create a context variable for a target source
Create a context variable manually if you want to configure more context variables for a target
source.

Before you begin

Select the Goal Framework for SPM scope for the application.
Role required: sn_gf.goal_admin

About this task

The Context variable provides information that can be used to fetch the required data and autoupdate the Actual value on the target form. After a context variable is created for the target
source, the goal user can configure the Actual Value Source Configuration section on the Target
form so that the Actual value gets auto-updated.
Creating a context variable is similar to creating a column on a table.
To create a context variable for the target source type PA Indicator and the breakdown is of
Choice list type, see Create a context variable for the target source type PA Indicator.

Procedure
1. Navigate to All > Enterprise Goal Management > Target Sources.
2. Open the required target source that you want to create a context variable for.
3. In the Context Variables related list, click New.
4. On the form, fill in the fields.
For a description of the field values, see Context Variable form.
5. Click Submit.
Create a context variable for the target source type PA Indicator
Create a context variable manually for the target source type PA Indicator if the breakdown is of
Choice list type.

Before you begin

Select the Goal Framework for SPM scope for the application.
Role required: sn_gf.goal_admin

About this task

The context variable provides information that can be used to fetch the required data and autoupdate the Actual value on the Target form. After a context variable is created for the target
source, the goal user can configure the Actual Value Source Configuration section on the Target
form for the Actual value to get auto-updated.
Creating a context variable is similar to creating a column on a table.

Procedure
1. Navigate to All > Enterprise Goal Management > Target Sources.
2. Open the required target source that you want to create a context variable for.
3. In the Context Variables related list, click New.
4. On the form, fill in the Type field as Choice and the other fields as needed.
For a description of the field values, see Context Variable form.
5. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

299


<!-- page 300 -->
A context variable of choice type is created.
6. In the Choices related list of the context variable you created, click New.

Note: If you don’t see the Choices related list on the Context Variable form, add it by
navigating to Configure > Related Lists on the form.
7. On the form, fill in the fields.
Choice form
Field

Description

Table

Name of the context variable for which the choice is created.

Element Column name in the context variable form for which the choice is created.
Label

Name of the choice.

Value

Sys_id of the choice value for which the context variable is created.
You can copy the sys_id from the Choices related list of the Dictionary Entry
[sys_dictionary] table.

8. Click Submit.
9. Optional: Repeat the steps 6 through 8 to create more choices for the context variable.

What to do next

The goal user can configure these choices as context variables on the Target form for which the
target source is configured.
Defining a custom unit of measure
Defining a custom unit of measure helps the goal users to set the unit of measure for targets as
per their choice. Unit of measures are two types, quantitative and qualitative.
By default, the available unit of measures for quantitative targets are #, $, %, Days. By default,
the available unit of measure for qualitative targets is Yes/No.
As an administrator, you must create custom unit of measures so that the goal user can use them
for setting a unit of measure for their targets:
• For quantitative targets, you can define a custom unit of measures from the Unit [sn_gf_unit]
table.
• For qualitative targets, you must first create a choice set and then create a choice list for the
choice set.
Prioritization display settings in Strategic Planning
Configure the way data is shown on the Prioritization tab of the workspace so that your planning
managers view the information that is relevant for them.
Configuring additional columns for Prioritization in Strategic Planning
Customize the default column configuration for the Prioritization page of your portfolio plan so
that your planning managers can select the appropriate data points they need.
Portfolio managers or product owners can show or hide the data for their planning items by using
the Personalize side panel in the Prioritization page of their workspace. By default, this side panel
of List and Hierarchy views provides all the default fields available for that planning item. If your
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

300


<!-- page 301 -->
planning managers want to see additional columns, for example, there could be a requirement
of information from a dot-walked field. In such cases or to remove any existing choices, you can
configure them using the admin role.

Personalize settings for List view

Personalize settings for Kanban
view

Personalize settings for
Hierarchy view

Add extra columns as choices to this side panel or remove any of the default column choices by
updating the list layout configuration for the planning item types associated to the portfolio plan.
• If the portfolio plan has multiple item types associated to it, update the view configuration of
the Planning Item [sn_align_core_planning_item] table.
• If the portfolio plan has a single item type associated to it, update the view configuration of the
relevant table.
From the form view of the identified table, change the view to APW Prioritization, and update the
list layout. For the detailed procedure of updating the layout configuration for a list, see Configure
the list layout .

Note: List v3 is no longer available for new deployments. If you are already using list
v3, you may continue to do so, but in this case some of the functionalities might not be
available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

301


<!-- page 302 -->
Customizing highlighted fields on Prioritization page of Strategic Planning Workspace
Customize the fields to be highlighted on the Prioritization page of a portfolio plan according to
your planning manager's needs.
By default, the List and Hierarchy views of the Prioritization page of a portfolio plan highlight
the Planning state and Status fields of a planning item with colors. Based on your planning
manager's requirements, you can configure fields that are of Choice type, such as Owner or
Priority to also be the highlighted columns on the page. This customization requires:
• Modifying the Prioritization view Script Includes (APWBacklogConfigImpl for List view and
APWGanttConfigImpl for Hierarchy view).
• Configuring a new record for the required field in the sys_highlighted_value table.
Modify Script Includes for Prioritization page in Strategic Planning
Modify the Script Includes for List and Hierarchy views of the Prioritization page to change the
columns to be highlighted in these views in the workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Script Includes.
2. From the list, select one of the following:
◦ For List view, select APWBacklogConfigImpl
◦ For Hierarchy view, select APWGanttConfigImpl
3. Update the column name in the Script field of the Script Include.
In the getColumnsForHighlightedValues function, update the return value to the
desired column.
For example, if you want to highlight the Priority column, update the return value to
("planning_state", "state", "priority").
4. Select Update.

What to do next

Create new highlighted values for Prioritization columns in Strategic Planning
Create new highlighted values for Prioritization columns in Strategic Planning
Customize the fields to be highlighted on the Prioritization page of a portfolio plan according to
your planning manager's needs.

Before you begin

Modify Script Includes for Prioritization page in Strategic Planning.
Role required: admin

Procedure
1. Navigate to Workspace Experience > Administration > Highlighted Values.
2. Select New.
3. On the form, fill in the fields.
For field information, see Highlighted Value form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

302


<!-- page 303 -->
4. Save the form.
5. In the Highlighted Value Conditions related list, create records to configure the color, order,
and icon for each of the field values that you want to be highlighted in the workspace.
a. Select New
b. On the form, fill in the fields.
For field, information, see Highlighted Value Condition form.
c. Select Submit.
6. Repeat step 5 to complete this configuration for all the field values.
For example, if you are configuring for status column, you must create three records in the
Highlighted Value Conditions related list for each of the choices Red, Green, and Yellow.
7. Select Update.
Modify Script Includes for milestone icons in Strategic Planning
Modify the Script Includes for milestone icons in the roadmap and portfolio plan to customize the
icons displayed in the Roadmap tab in the workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Script Includes.
2. From the list, select RoadmapMilestoneAPIImpl.
3. Update the milestone icon type in the Script field of the Script Include.
In the getMilestoneMetadata method, update the return value to the required icon.
For example, if you want to display the Circle exclamation icon (
) for key event milestone,
update the return value to 'circle-exclamation-outline' for the key_event
milestone.
The default icons are as follows:
◦ key_event: 'flag-fill'
◦ launch_date: 'rocketship-fill'
◦ important_date: 'calendar-clock-fill'
◦ key_milestone: 'diamond-fill'
◦ deadline: 'star-fill'

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

303


<!-- page 304 -->
4. Select Update.
Update the display limit of items on Prioritization and Roadmap
Create a system property to update the display limit of the items shown in Prioritization and
Roadmap views in Strategic Planning Workspace.

Before you begin

Ensure the application scope in your instance is set to Global.
Role required: admin

About this task

The default display limit for Prioritization and Roadmap pages are:
• Planning items shown in the prioritization view = 250
• Roadmap items shown in the roadmap view = 250
• Goals shown in the hierarchy view =250
• Item-level milestones in the roadmap view = 100
• Items shown in all the Kanban views = 250
• Lanes shown in all the Kanban views = 30
If the total number exceeds these default limits, the additional number of planning items,
milestone indicators, and vertical lanes are not visible in the workspace. To overwrite this default
setting, create a system property and set its value to a desired limit of display.

Important: If the value of a system property exceeds its default value, the UI
performance can degrade.

Procedure
1. Navigate to All > System Properties > All Properties.
A list of all the properties in the System Properties [sys_properties] table appears.
2. Click New.
3. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

304


<!-- page 305 -->
Field

Description

◦ sn_align_ws.portfolio_plan_items_limit

Name

◦ sn_align_ws.item_milestone_limit
for Roadmap planning item milestones.
◦ sn_align_ws.kanban_lanes_max_limit
for Kanban view lanes limit (Prioritization,
portfolio roadmap and free-form roadmap).
This is applicable only for reference fields.

Type

Integer

Value

Desired display limit count

For information on the other form fields, see the field description table in Add a system
property .
4. Select Submit.
Configure additional source tables for a free-form roadmap
Add new tables to roadmap preferences and configure their details so that these tables can be
used as source tables while creating a free-form roadmap in Strategic Planning.

Before you begin

Install Strategic Planning.
Role required: sn_align_core.apw_admin

Procedure
1. Navigate to All > Strategic Planning > Portfolio Plan Configuration.
2. Select New.
3. On the form, fill in the fields.
For field information, see Portfolio plan configuration form.
4. Select Submit.
Customize the planning item display preferences for Prioritization and Roadmap
Update the default display configuration of planning item attributes in Prioritization, portfolio plan
Roadmap, and Free-form roadmap pages so that data relevant to you is displayed in Strategic
Planning Workspace.

Before you begin

Install Strategic Planning.
Role required: sn_align_core.apw_admin

About this task

Update default settings for the display of planning items such as Group by fields, Color by fields,
Metrics fields, and Kanban preferences, such as default vertical lane and horizontal lane, metrics
on the Kanban cards and others, on the following pages:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

305


<!-- page 306 -->
• Portfolio plans:
◦ Prioritization Kanban view
◦ Roadmap timeline view
◦ Roadmap kanban view
• Free-form roadmaps:
◦ Timeline view
◦ Kanban view
The options in these configurations are as follows:
Table Configurations
Configuration table

Roadmap timeline configuration

Fields

• Group by fields
• Color by fields
• Metrics fields
• Status field
• Percent complete field

Kanban configuration

Prioritization, roadmap, and free-form roadmap
tabs:
• Horizontal lane
• Vertical lane
• Metrics on Kanban card

Rank configuration

Rank configuration

Procedure
1. Navigate to All > Strategic Planning > Portfolio Plan Configuration.
2. Open a table for which you want to edit the configuration.
3. Edit the required fields.
For field information, see Portfolio plan configuration form.
4. Select Update.
Hierarchy view display configuration in Strategic Planning
Show or hide parent records of planning items shown in the Hierarchy view for high-level and
regular portfolio plans by configuring system properties.
Display empty parent entities in the Hierarchy view
In the Hierarchy view of the Prioritization tab, the parent records are displayed only
if they have any associated planning items.
For example, a portfolio plan built from the Organization lens (Company > Business
Unit > Department) is used to manage and track plans for Demands and Projects.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

306


<!-- page 307 -->
So, when you switch to the Prioritization Hierarchy view, only those departments
that have at least one Demand or Project associated with it are shown in the view.
If you want to see other departments that are included in this portfolio plan but have
no planning items associated to them, work with your administrator to create the
system property sn_align_ws.gantt_hide_empty_entities and set it to
false.

Display complete hierarchy for high-level portfolio plans
For high-level portfolio plans, the Hierarchy view by default shows only the
hierarchy up to the parent level.
For example, a portfolio plan built from the Strategic Investment lens (Company >
Strategic priority > Initiative > Strategic program) is used to manage and track plans
for strategic programs. So, when you switch to the Prioritization Hierarchy view, only
Strategic Priority > Initiative levels are shown by default.
If you want to see the whole hierarchy of Strategic priority > Initiative > Strategic
program > planning items, work with your administrator to create the system
property true.

Configuring roadmap in Strategic Planning
Create custom themes to configure roadmap bar colors, ensuring they align with your
organization’s standards.
Use the following steps as guidelines for configuring custom themes for your roadmap bar colors:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

307


<!-- page 308 -->
1. Create a custom theme for roadmap bar colors. For details, see Create a custom theme for
roadmap.
2. Publish your custom theme so that you can apply it to your roadmap. For details, see Publish a
custom roadmap theme.
3. Apply a custom theme for your roadmap. For details, see Apply a custom theme to roadmap.
4. Verify that the custom theme is applied for your roadmap.
Create a custom theme for roadmap
Customize roadmap bar colors to align with your organization’s branding guidelines and maintain
visual consistency.

Before you begin

Role required: admin

About this task

The roadmap applies the colors defined in the UI theme’s Alert and Grouped options.

Procedure
1. Navigate to All > Now Experience Framework > Theme Management > Theme Builder.
2. From the Theme Builder Home page or Editor page, select Create a theme.
The theme creation wizard opens.
3. On the Before we get started window, select Continue.
Complete the following steps for each screen in the wizard.

Note:
◦ Only the step 1 (Naming your theme) is required to create a theme.
◦ Configuring items in steps 2–8 (such as primary, secondary, and neutral colors,
company logo, additional colors, fonts, and corner shapes) doesn’t affect roadmap bar
colors.

On this wizard screen...

Perform these steps...

Step 1 of 9

a. Enter a name for your theme in the Theme
name field.

First, let’s name your theme

b. (Optional) Enter a brief description for your
theme in the Description field.
c. Select Next to continue.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

308


<!-- page 309 -->
On this wizard screen...

Perform these steps...

Step 2–8 of 9

a. (Optional) Choose the primary color,
secondary color, neutral color, add any
extra colors, company logo, font style,
user interface corner shapes for your
organization on the respective screens.

◦ Step 2: What's your brand's primary color
◦ Step 3: Do you want to add a secondary
color
◦ Step 4: Now, choose a neutral brand color

b. Select Next to continue until you reach
step 9.

◦ Step 5: Do you want to add any additional
colors
◦ Step 6: Next, let's add your company logo
◦ Step 7: Which font would you like to use
◦ Step 8: Almost done. Choose the corner
shape you prefer.

Finally, review your selections.

a. Review all configured items (colors, logo,
font, and shape).
b. Select Create theme to finalize.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

309


<!-- page 310 -->
On this wizard screen...

Perform these steps...

4. On the Theme Builder page under Global styles, select Color icon (
your roadmap bars.

) to configure colors for

5. Under UI colors, in the Show option, select All colors

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

310


<!-- page 311 -->
6. Configure Alert colors.
a. Under UI colors, select Alert.
b. Configure colors for the following required alert options.
▪ Alert Critical
▪ Alert High
▪ Alert Warning
▪ Alert Moderate
▪ Alert Info
▪ Alert Positive
▪ Alert Low

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

311


<!-- page 312 -->
7. Configure Grouped colors.
a. Under UI colors, select Grouped.
b. Configure colors for the following required groups.
▪ Grouped Blue
▪ Grouped Brown
▪ Grouped Gray
▪ Grouped Green
▪ Grouped Green

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

312


<!-- page 313 -->
▪ Yellow Grouped
▪ Magenta Grouped
▪ Orange Grouped
▪ Orange Grouped
▪ Pink Grouped Purple
▪ Grouped Teal
▪ Grouped Yellow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

313


<!-- page 314 -->
What to do next

Publish your custom theme so that you can apply it to your roadmap. For details, see Publish a
custom roadmap theme.
Publish a custom roadmap theme
Publish a custom roadmap theme so that you can apply it to your roadmap.

Before you begin

You have created a custom theme to apply to the roadmap.
Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > Theme Management > Theme Builder.
2. On the Theme Builder page, select Manager from the Page drop-down.
3. In the Unpublished section, find your theme in the list, select the More actions icon ( ), and
then select Publish.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

314


<!-- page 315 -->
4. On the Publish the theme window, select Publish.

Result

Your custom theme is now published.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

315


<!-- page 316 -->
What to do next

Apply your custom theme to update the colors displayed in the roadmap. For details, see Apply a
custom theme to roadmap.
Apply a custom theme to roadmap
Apply your custom theme to ensure roadmap bar colors align with your organization’s style.

Before you begin
• You have created and published a custom theme to apply to the roadmap.
• Ensure the application scope in your instance is set to Portfolio Planning.
Role required: admin

About this task

To update the color theme for your roadmap bars, you must copy the sys_id of your custom
theme, and then create a system property and set its value to the copied sys_id.
The colors configured in the custom theme will be applied to the roadmap bars. However, these
colors won’t affect the colors of roadmap milestones or planning item milestones.

Procedure
1. Copy the sys_id of the custom theme.
a. Navigate to Now Experience Framework > Theme Management > Themes.
b. Search for the custom theme that you want to apply to the roadmap.
c. Right-click the name of your custom theme and select Copy sys_id.
The sys_id of your custom theme is copied.
2. Create a system property and enter the copied sys_id in the form.
a. Navigate to All > System properties > All properties.
b. Select New.
c. On the form, fill in the fields.
System Property
Field

Description

Name

Name of the system property.
Enter the name as sn_align_ws.spw_custom_theme

Application

Application scope for the system property.
Ensure the scope is set to Portfolio Planning.

Type

System property type.
Set the type to string.

Value

Sys_id of the custom theme you created for roadmap bar colors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

316


<!-- page 317 -->
Field

Description

Enter the copied sys_id.
d. Select Submit.
The system property is created and updated to include the custom theme information.

Result

The roadmap bars now display the colors configured in the custom theme.
Configuring scenario planning in Strategic Planning
Configure scenario planning in strategic planning to create and compare multiple scenarios.
1. Enable or disable scenario planning.
For more information, see Enable or disable scenario planning in Strategic Planning.
2. Manage financial widgets in compare scenarios page.
For more information on how to add and manage widgets to the comparison view, see
Configure financial widgets in compare scenario.
Enable or disable scenario planning in Strategic Planning
Enable or disable scenario planning in Strategic Planning.

Before you begin

Role required: sn_align_core.apw_admin

About this task

Scenario planning is enabled by default. Use the following steps to disable or enable scenario
planning, as required.

Procedure
1. Navigate to All > System properties > All properties.
2. Search for the property

sn_align_ws.is_scenario_planning_disabled.
3. Verify the value of the property.
◦ To enable scenario planning, verify that the property is set to False.
◦ To disable scenario planning, verify that the property is set to True.

What to do next
Create a scenario

Configure financial widgets in compare scenario
Add or manage existing widgets to view financial insights while comparing scenarios. Define your
own attribute from the cost types to view it's details in the Compare scenario page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

317


<!-- page 318 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > Project Administration > Widgets.
2. In the Widgets list, filter the Short description with Compare scenario to view the existing list.
By default, there are five financial widgets enabled to compare the financial performance of
scenarios.

3. Edit an existing widget or create a widget to use it in scenario planning.
Choice

Description

a. Select a record from the list.
Edit an existing widget

b. Edit the Script field to customize and fetch
required financial information into the wid­
get.
a. Select New.
b. In the Name field, enter a unique name for
the widget.
c. In the Script, write the script to fetch the re­
quired financial data.

Create a widget

For example, if you want to view the Soft­
ware Capex budget widget, update the tar­
get and cost type sys_id in the widget.
d. Right-click on the header and select Save.
e. Select Widget associations related list and
select New.
f. From the Association ID lookup option, se­
lect Scenario item financial [sn_align_ws_­
scenario_item_financial].
g. Select Submit.

4. Select Submit.
Capacity configuration in Strategic Planning
Generate employee profiles for resources and map them with primary attributes to start capacity
planning.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

318


<!-- page 319 -->
• Enable the planning attributes for capacity to map resources to a unique attribute. For more
information, see Enable planning attributes for Capacity in Strategic Planning.
• Create resource assignments and generate employee profiles. For more information, see
Generate employee profiles for resources to work with Capacity.
• Map resources to a unique group, role, and skill to generate employee profiles. For more
information, see Map primary attributes to resources.
Enable planning attributes for Capacity in Strategic Planning
Enable the planning attributes Group, Skill, and Role so that your planning managers can view
the resource capacity details.

Before you begin

Role required: admin

Note: This activation is a one-time task to enable planning attributes to plan and work on
resource capacity.

Procedure
1. Navigate to All > Strategic Planning > Planning Attributes.
2. Filter the Attribute name to locate and open the Group attribute.
3. Select the Enable for capacity planning option.
4. Select Update.

Note: If an attribute is enabled for capacity planning, it is enabled for resource
management by default.

5. Repeat the steps 2 through 4 for the Skill and Role attributes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

319


<!-- page 320 -->
You can create custom attributes and map them to resources. For more information, see Create
or edit planning attributes.
6. Set the value of the Enable for capacity planning column for Group, Role, and Skill field to true.
Generate employee profiles for resources to work with Capacity
Generate employee profiles for the resources to map against primary attributes.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Employee Profile > Employee Definition.
2. Filter the name to locate and open the sys_user table.
3. In the Employee Definition page, select User from the Table list.
4. Use the condition builder to filter the required resources and then select the update count icon
(

).

5. Select Generate Employee Profiles (

).

6. In the Generate Employee Profiles window, select Proceed.

Result

Employee profiles for the selected resources are generated.

What to do next

Populate a primary group, primary role, and primary skill for the resources with employee profiles.
For more information, see Map primary attributes to resources.
Map primary attributes to resources
Locate and map the primary group, primary role, and primary skill for the resources associated
with existing employee profile tables.

Before you begin

Generate employee profiles for resources to work with Capacity.
Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

320


<!-- page 321 -->
Procedure
1. Navigate to All > Employee Profile > Employee Profiles.
2. Filter the User column to locate and open the resources with employee profiles.
3. Select the Populate primary resource attributes related link to auto-populate the attributes.
◦ If an employee is assigned to a single group, role, and skill, the primary attributes are
populated.
◦ If an employee is assigned to multiple groups, skills, or roles, select the Primary Resource
Group, Primary Resource Role, and Primary Resource Skill, using the lookup icon.
4. Select Update.
Activate a scheduled job to automatically generate resource capacity
Activate the scheduled job to auto-generate the resource capacity at required cadence.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Filter the name field to locate and open Generate Resource Capacity.
3. Select Active option to activate the schedule job.
4. Edit the fields on the Scheduled Script Execution form to customize the job and meet your
requirements.
For more information about the field description and scripts, see Automatically run a script of
your choosing .
5. Select Execute Now to execute the scheduled job or select Update to save your changes.
Configure financials for planning items Strategic Planning
Configure the ServiceNow Internal integrations to view the financials for planning items in
Strategic Planning.

Before you begin

Role required: admin

Procedure
1. Configure the attributes to generate labor costs in financials based on the resource
assignments on the work items.
For more information, see Using the Planning attributes and Create or edit planning attributes.
2. Generate default mapping configurations to create table maps.
For more information, see Generate default mapping configurations.
3. Enable financials for epics to work on financial planning.
For more information, see Enable financials for planning items in Strategic Planning.
4. Enable budget allocation and define a budget attribute, cost type or expense type, to allocate
budget for your planning items.
For more information see Enable financial budget allocation for planning items in Strategic
Planning and Configure budget attribute at instance-level to allocate budget
5. Enable financial benefit planning for planning items in workspace view.
For more information, see Enable monetary benefit plans for planning items
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

321


<!-- page 322 -->
6. Add the monetary and non-monetary benefit plans related lists for your planning items in
workspace view.
For more information, see Add monetary and non-monetary benefit plans related lists.
7. Create new widgets to view the rolled up financial data at planning item level.
For more information, see Configure a widget and associate it with project.
8. Optional: Customize the left pane in the financials screen to match the requirements of your
organization.
For more information, see Customize the left pane view for financials.
9. Optional: Customize the Create cost plan form fields to match the requirements of your
organization.
For more information, see Customise cost plan form.
10. Customize the default expense types to manage cost plans for your planning items.
For more information, see Change the default expense type for your planning items
11. Define a custom prefix for your baseline name.
For more information, see Create a custom prefix for baseline.
12. Activate and define scheduled job to automatically migrate budget for your planning items.
For more information, see Activate a scheduled job to migrate budget of your planning items.
13. Activate and define a scheduled job to migrate financial baselines for your planning items.
For more information, see Migrate financial baselines to Next Experience.
14. Activate and define scheduled job to automatically create financial baselines for your planning
items at a defined cadence.
For more information, see Activate scheduled job to create financial baselines for planning
items.
15. Activate and define scheduled jobs to automatically generate labor costs for your planning
items based on the attribute-based resource assignments at a defined cadence.
For more information, see Activate scheduled job to generate labor costs for your planning
items.
Enable financials for planning items in Strategic Planning
Activate financials for all the planning items to work on the financial estimates.

Before you begin

Role required: sn_invst_pln_v2.investment_admin

Procedure
1. Navigate to All > Investment Funding > Setup > Investment Entities.
2. Filter the Table field to locate and open the required planning item..
For example, select sn_align_core_scrum_epic for epics, select pm_project for projects, or
dmn_demand for demands.
3. In the Entity form, build the required condition to get the required planning items.

Note: If you want to work on the finanical records for completed or closed planning
items, remove the Active is true condition.
4. Select Update.
Enable financial budget allocation for planning items in Strategic Planning
Enable allocation property after migrating to Next Experience to work on budget allocation for
your planning items using Strategic Planning.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

322


<!-- page 323 -->
Before you begin
• For new customers accessing financials in Next Experience, this property is enabled by
default.
• Role required: admin

Procedure
1. Navigate to All > System Properties > Properties.
2. Filter the Name column to locate and open sn_invst_pln.enable_budget_allocation_v2
property.
3. Update the Value field to True and select Update.

What to do next

Configure budget attributes to work on managing budget of your planning items. For more
information, see Configure budget attribute at instance-level to allocate budget.
Configure budget attribute at instance-level to allocate budget
Configure the budget attribute by expense type or cost type as an instance-level to work on
budget allocations for your planning items using Strategic Planning.

Before you begin
• Enable the budget allocation property to work on budgeting for planning items. For more
information, see Enable financial budget allocation for planning items in Strategic Planning.
• Role required: admin

Important: Existing customers cannot change the budget attribute to cost_type.
Procedure
1. Navigate to All > System Properties > Properties.
2. Filter the Name column to locate and open sn_invst_pln.budget_allocation_attribute
property.
3. Update the Value field to one of the following.
◦ cost_type - view financials by cost types such as Hardware Opex, External labor Capex,
Software Capex, Software Opex, and so on.
◦ expense_type - view financials by expense types such as Capex and Opex.
4. Select Update.
Enable monetary benefit plans for planning items
Enable the benefit plans property to create and manage benefit plans for planning items.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Properties > Properties.
2. Filter the Name column to locate and open the
sn_invst_pln.enable_benefit_plan_in_new_financials system property.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

323


<!-- page 324 -->
3. In the Value field, enter true.
4. Select Update.
Add monetary and non-monetary benefit plans related lists
Enable the monetary benefit plans and non-monetary benefit plans related lists for your planning
item types such as Epics, Features, and Capabilities.

Before you begin
• This is a one time activity to enable and view the monetary benefit plans and non-monetary
benefit plans related list for all the planning items.
• Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the Label field to locate a planning item type.
◦ If you want to enable the benefit plans for Feature, filter the Label field to locate and open
Feature [sn_align_core_feature] table.
◦ If you want to enable the benefit plans for Capability, filter the Label field to locate and open
Capability [sn_align_core_capability] table.
3. Select the Show List related link.
4. Open a record from the list of Features or Capabilities.
5. Change the scope of the application if you don’t see the editable form of the record page.
6. Change the record page view to EAP Default.
To change the view, select Additional actions menu (
Default view.

7. Select Additional actions menu (

), select View, and select the EAP

), select Configure, and select the Related Lists option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

324


<!-- page 325 -->
8. Select Monetary Benefit Plans and Non-monetary Benefit Plans from the Available list and
add them to Selected list.
9. Select Save.
10. Select Update on the planning item record page.

What to do next

Create and manage monetary and non-monetary benefits plans for your planning items.
• Create monetary benefit plans for your planning items in Strategic Planning
• Manage non-monetary benefit plans for your planning items in Strategic Planning
Configure a widget and associate it with project
Enable and associate a widget to view financial summary of work items at a high-level.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Project Administration > Widgets.
2. Select New.
3. On the Widget New Record form, fill the fields.
For a description of the field names, see Widget New Record form.
4. Select the Additional actions menu and select Save
5. In the Widget associations related list, select New.
6. On the Widget association New Record form, fill the fields.
For a description of the field names, see Widget association form.
7. Select Submit.
Customize the left pane view for financials
Customize the left pane for financials to view custom field information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

325


<!-- page 326 -->
Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the Label field to locate and open the Cost Plan table.
3. Select the Show List related link.
4. Select the financials view by navigating to List controls > View > Financials View.

The selected view (

) is displayed on the header.

5. Select the header options to configure list layout.

6. Add or remove the fields in the Selected column to customize the left pane view in financials
view.
7. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

326


<!-- page 327 -->
Result

Cost plans table with customized fields for Financials View is displayed.
Customise cost plan form
Manage the fields required on the new cost plan form as per your organization needs.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the Label field to locate and open the Cost Plan table.
3. Select the Design Form related link.
4. On the header row, select Cost Plan [cost_plan] from the table list and Financials View from
the view list.
5. On the form, you can:
◦ Drag and drop the required fields from the Fields column.
◦ Remove the existing fields using the Remove field icon.
6. Select Save.
Change the default expense type for your planning items
Configure the default expense type to create or edit cost plans for your planning items.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Properties > All properties.
2. Filter the name to locate and open sn_plng_att_core.default.expense_type.
3. Change the Value field to the required expense type and select Save.
Opex is the default value.
Create a custom prefix for baseline
Modify the prefix to customize the name of the baselines for your planning items.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. Filter the name filed to locate and open sn_invst_pln.baseline_prefix.
3. Modify the Value field to create a custom prefix for your baselines.
If you’re working on a sales portfolio, you may change the Value field to Sales baseline
on.
4. Select Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

327


<!-- page 328 -->
Example:

Assume you are creating a baseline for a sales project using the above prefix on December 04,
2023. Name of the new baseline will be Sales baseline on 2023-12-04.
Create custom labor costs and map them to sys_id
Create and map custom labor costs to sys_id to generate labor costs based on the relevant
expenses.

Before you begin

Role required: admin

About this task

Consider you removed the out-of-box cost types and created the following two labor cost types:
• Internal Workforce Capital Expenditure (to replace Labor Capex)
• Contractor Operational Expense (to replace External Labor Opex)
Once these new cost types are created, the system automatically assigns them unique sys_ids.
These sys_ids are not same as the deleted defaults.
To ensure the system continues to recognize these new cost types for workflows, reporting, or
calculations, you must manually updated in the sn_plng_att_core.labor_costtype_sysid_mapping
system property with the new sys_ids.
Omitting this update may result in system errors or incomplete data processing in cost-related
operations.

Procedure
1. Create custom labor costs.
a. Navigate to All > System Definition > Tables.
b. Filter the Label field to locate the open Cost Type Definition.
c. From the Related Links, select Show List.
List of OOB labor costs is displayed.
d. Select New.
e. On the Cost Type Definition form, fill the fields.
▪ Name - enter the name of the labor cost plan.

Tip: Adding the cost type, either capex or opex, as a suffix to the name helps you to
easily identify while creating cost plans.
▪ Expense type - select Capex or Opex from the list to define expense.
For example, you can create Software Capex labor cost to capture software purchasing
expenses. Hardware Opex labor cost to capture your hardware purchasing expenses.
f. Click Submit.
The new cost plan is displayed on the list.
g. Right-click on the cost plan row and select Copy sys_id.
2. Map the custom labor costs with sys_id.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

328


<!-- page 329 -->
a. Navigate to All > System Properties > All properties.
b. Filter the name field to locate and open the
sn_plng_att_core.labor_costtype_sysid_mapping property.
c. In the Value field, enter the labor cost type name and it's sys_id in the same format as the
OOB labor costs mapping format.
d. Select Update.

Example: Mappings of default out of box labor costs with their sys_id
{
"labor_capex": "3d16eaf79330120064f572edb67ffb04",
"labor_opex": "5b26eaf79330120064f572edb67ffb39",
"external_labor_capex": "ed36eaf79330120064f572edb67ffb41",
"external_labor_opex": "7b36eaf79330120064f572edb67ffb58"
}
Activate a scheduled job to migrate budget of your planning items
Activate the Migrate budget for active demands and projects scheduled job to migrate budget
of active planning items from Classic UI to Next Experience.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Filter the name field to locate and open Migrate budget for active demands and projects.
3. Select Active option to activate the schedule job.
4. Edit the fields on the Scheduled Script Execution form to customize the job and meet your
requirements.
For more information about the field description and scripts, see Automatically run a script of
your choosing .
5. Select Execute Now to execute the scheduled job or select Update to save your changes.
Activate scheduled job to create financial baselines for planning items
Activate and define a scheduled job to automatically create financial baselines for your planning
items at a required cadence.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Filter the name field to locate and open Create Financial Baseline For Planning Items.
3. Select Active option to activate the schedule job.
4. Edit the fields on the Scheduled Script Execution form to customize the job and meet your
requirements.
For more information about the field description and scripts, see Automatically run a script of
your choosing .
5. Select Execute Now to execute the scheduled job or select Update to save your changes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

329


<!-- page 330 -->
Activate scheduled job to generate labor costs for your planning items
Activate scheduled jobs to automatically generate labor costs for attribute-based resource
assignments.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Filter the Name field to locate and open Generate Labor Costs For Epic and other planning
items.
3. Select Active and on the Scheduled Script Execution form, fill the fields.
For a description of the field names, see Scheduled Script Execution form to generate labor
costs for planning items.

Note: You can generate the labor costs for inactive planning items. Remove true in the
following code line.
fundingEntityGr.addQuery('active', true);
4. Select Update to save your changes or Execute Now to run the scheduled job.
Activate scheduled job to map costs to multi currency
Activate and execute the scheduled job to map your costs and work with multi-currency.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Filter the Name field to locate and open Update multi-currency fields to investment currency
for existing demands and projects.
3. SelectActive and on the Scheduled Script Execution form, fill in the details.
For a description of the field names, see Scheduled Script Execution form to generate labor
costs for planning items.
4. Select Update to save your changes and execute the job as scheduled, or select Execute Now
to run the scheduled job.
Configure portfolio financials in Strategic Planning
Configuration details for properties and scheduled jobs to view and manage portfolio financials
in Strategic Planning

Before you begin

Role required: admin

Procedure
1. Enable integration for an internal planning item type.
For more information, see Generate default mapping configurations.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

330


<!-- page 331 -->
2. Activate the investment entities for Demands, Projects, and Epics.
For more information, see Activate investment entities for planning items.
3. Enable the roll up system property to true to view financials.
For more information, see Activate rollup property for projects to view portfolio financials.
4. Activate the data generation scheduled job to view portfolio financials.
For more information, see Activate a scheduled job to generate data to view portfolio
financials.
Activate investment entities for planning items
Activate the investment entitied for Demands, Projects, and Epics to view portfolio financials.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the name field to locate and open the Investment Entity
[sn_invst_pln_invst_funding_entity] table.
3. Select the Show List Related Link.
4. Set the Active field to true for Demand, Epic, and Project fields.

Activate rollup property for projects to view portfolio financials
Activate project cost rollup property to view the rolled up costs of top projects in portfolio
financials.

About this task

Financial fields such as planned costs, forecasts, actual costs are rolled up from sub-projects to
top projects upon setting this property to true.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. Filter the name field and select the com.snc.project.rollup.cost property.
3. Enter true in the Value field and select Update.
Activate a scheduled job to generate data to view portfolio financials
Activate and define Data generation for financials in SPW/PPW scheduled job to migrate
budget from old data model to new data model and view portfolio financials.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

331


<!-- page 332 -->
About this task

It is a one-time activity to define and run this scheduled job to view portfolio financials.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Filter the name field to locate and open Data generation for financials in SPW/PPW.
3. Select Active option to activate and schedule the job.
4. Edit the fields on the Scheduled Script Execution form to customize the job and meet your
requirements.
For more information about the field description and scripts, see Automatically run a script of
your choosing .
5. Optional: Remove the condition 'active=true' to generate the financial data and work on
costs for inactive planning items.
6. Select Update to save your changes and execute the job as scheduled, or select Execute Now
to run the scheduled job.

Result

All the required mappings to view the portfolio financials for Epics, Demands, and Projects are
mapped.
To validate if the data generation job is successful, navigate to All > System Definition > Tables
and check the mappings for Investment record in the Project [sn_align_core_project] table.
Customizing Lists in Strategic Planning
You can add custom tables to the Lists menu in Strategic Planning Workspace and manage
access to the newly created categories and lists.
Perform the following tasks to customize Lists and manage access to the newly created
categories and lists in the Lists page of Strategic Planning Workspace:
• Add the New button to the APW List Menu Configuration page. For more information, see
Enable adding custom tables to the Lists menu.
• Add custom tables to the Lists menu. For more information, see Customize Lists in Strategic
Planning Workspace.
• Manage who can view the newly created categories and lists in the Lists page. For more
information, see Define audience for new lists in Strategic Planning.
Enable adding custom tables to the Lists menu
Add the New action button to the APW List Menu Configuration page, so that you can add
custom tables to the Lists menu in Strategic Planning Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to Workspace Experience > Actions & Components > List Actions.
2. From the Action Assignments page, select New to create the action button.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

332


<!-- page 333 -->
3. On the form, fill in the fields.
For a description of the field values, see Action Assignment form.
4. Select Submit.

Result

The New action button is added to the APW List Menu Configuration page.

What to do next

Customize Lists in Strategic Planning Workspace.
Customize Lists in Strategic Planning Workspace
Add custom tables to the Lists menu in Strategic Planning Workspace.

Before you begin
• Ensure that your application scope is set to Portfolio Planning.
• Enable adding custom tables to the Lists menu.
Role required: admin

About this task

Lists menu in the Workspace homepage helps planning managers quickly find a record that they
need. By default, this view shows the list of entities of all the planning items and lens available for
this ServiceNow instance. If your planning managers need more categories or lists, you can add
them.
For more information of configuring lists in a workspace, see Lists

.

Procedure
1. Navigate to sys_ux_list_menu_config.list.
2. From the UX List Menu Configurations list, select APW List Menu Configuration.
3. Select a new category or a new list.
Option

Action

New category

From the UX List Categories related list, select
New.

New list

From the UX Lists related list, select New.

Tip: Create a category first and then create a list.
4. On the form, fill in the fields.
◦ UX List Category form.
◦ UX List form.
5. Select Submit.
Repeat this procedure until you've created all the custom categories and lists.

What to do next

Define audience for new lists in Strategic Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

333


<!-- page 334 -->
Define audience for new lists in Strategic Planning
Manage who can view the newly created categories and lists in the Lists page of Strategic
Planning Workspace.

Before you begin

Customize Lists in Strategic Planning Workspace.
Role required: admin

Procedure
1. Navigate to sys_ux_applicability_m2m_list.list.
2. Select New.
3. On the form, fill in the fields.
For field information, see List Applicability form.
4. Select Submit.
Strategic Planning diagnostics
Run diagnostic scans to identify and fix errors in the configuration and other common settings for
Strategic Planning before your planning managers prioritize and roadmap work for their portfolio
plans.
Strategic Planning diagnostic scans help you find discrepancies by validating the configuration
for the following:
• Lens and lens structure
• Form views, list views, related list views, and workspace view rules for planning items
• Global ranking for planning items
• Portfolio plans
• Goals data
• high-level planning entities
The following are the default diagnostic scans available for Strategic Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

334


<!-- page 335 -->
Strategic Planning diagnostics for high-level planning
Field

Validate Rank configuration for the high-level
planning entities

Description

Verifies that entities enabled for high-level
planning have a Rank configuration.
If this test fails, see Create rank configuration
for high-level planning to fix failure.

Validate Form section views for high-level
planning entities

Verifies that all the lens entities that are
enabled for high-level planning have the
required Form section views.
If this scan fails, the result displays the Form
section views that are missing for certain
entities that are enabled for high-level
planning.
To learn how to fix these, see Create form
views for new planning item tables in Strategic
Planning.

Validate Related list views for high-level
planning entities

Verifies that all the lens entities that are
enabled for high-level planning have the
required Related list views.
If this scan fails, the result displays the Related
List views that are missing for certain entities
that are enabled for high-level planning.
To learn how to fix these, see Create related
list views for new planning item types in
Strategic Planning.

Validate List views for high-level planning
entities

Verifies that all the lens entities that are
enabled for high-level planning have the
required List views.
If this scan fails, the result displays the List
views that are missing for certain planning
item tables.
To learn how to fix these, see Create list views
for new planning item tables in Strategic
Planning.

Identify high-level planning entities enabled
for planning, without a global rank

Identifies the number of high-level planning
entities that do not have a global rank.
If this scan fails, the result shows the planning
items that do not have a global rank. Click Run

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

335


<!-- page 336 -->
Field

Description

Fix Script to populate a global rank to items for
which this field is empty.

Portfolio Planning diagnostics
The following are the diagnostic scans available to validate common configuration errors for
planning items, goals, and portfolio plans:

Name of the scan

Description

Identify planning items without a global rank

Identifies the number of planning items on the
Prioritization List page, for which the global
rank is not populated.
If this scan fails, the result shows the planning
items that do not have a global rank. Click Run
Fix Script to populate a global rank to items for
which this field is empty.

Check Goal Assigned Entity Configuration for
lens entities

Identifies the lens entities for which the goal
assigned entity configuration is missing.
If this scan fails, the result shows the lens
entities that don’t have Assigned Entity
Configuration.

Validate List views for planning items

Verifies that all the planning items that can
be added to portfolio plans have the APW
Prioritization and APW Default List views.
If this scan fails, the result displays the List
views that are missing for certain planning
item tables.
To learn how to fix these, see Create list views
for new planning item tables in Strategic
Planning.

Validate Form section views for planning items Verifies that all the planning items that can
be added to portfolio plans have the APW
Prioritization, APW Default, and APW New form
views.
If this scan fails, the result displays the Form
section views that are missing for certain
planning item tables.
To learn how to fix these, see Create form
views for new planning item tables in Strategic
Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

336


<!-- page 337 -->
Name of the scan

Description

Validate Related list views for planning items

Verifies that all the planning items that are
allowed on portfolio plans have the APW
Default Related list view.
If this scan fails, the result displays the Related
list views that are missing for certain planning
item tables.
To learn how to fix these, see Create related
list views for new planning item types in
Strategic Planning.

Validate Workspace view rule for Default view
of planning items

Verifies that all the planning items that are
allowed on portfolio plans have the Default
view's workspace view rule.
If this scan fails, the result displays the Default
view rule is missing for certain planning item
tables.
To learn how to fix these, see Create
workspace view rules for new planning item
forms in Strategic Planning.

Validate the goal relationships for assigned
entities

Identifies if there are any m2m goal
relationships defined for assigned entities.
If this scan fails, the result displays the
goals that do have m2m goal relationships
any assigned entity table. You can run the

Migrate goal relationships for
assigned entities scheduled job
to migrate the existing goal relationship
data from the Goal Relationship
[sn_gf_goal_m2m_relationship] table to the
Goals table. For more information, see Migrate
goal relationships for assigned entities.
Validate Workspace view rule for APW Default
view of planning items

Verifies that all the planning items that are
allowed on portfolio plans have the APW
Default view's workspace view rule.
If this scan fails, the result displays the
APW Default view rule is missing for certain
planning item tables.
To learn how to fix these, see Create
workspace view rules for new planning item
forms in Strategic Planning.

Validate invalid fields in the Portfolio Plan
configuration

Finds any invalid fields in the portfolio plan
configuration records for all existing portfolio
plans.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

337


<!-- page 338 -->
Name of the scan

Description

If this scan fails, click Run Fix Script to remove
the identified invalid fields.
Validate Portfolio Plan Configuration for all the
portfolio plans

Verifies if each existing portfolio plan created
in your instance has a valid portfolio plan
configuration.

Configuring Strategic Planning with PPM, Agile 2.0, and SAFe
Understand the process required to set up Strategic Planning to work with Agile Development
2.0, Scaled Agile Framework, and Project Portfolio Management.

Configuration workflow
Use the following steps as guidelines for your Strategic Planning with PPM, Agile 2.0, and SAFe
setup process. Some of these steps require the admin role (sn_align_core.apw_admin) and some
require the user role (sn_align_core.apw_user).
1. Create an alignment integration
2. Generate default mapping configurations
3. Create custom mapping configurations (Optional)

Guided Setup
After installing Strategic Planning, you can use the guided setup to help you with the required
configuration. To open the guided setup, navigate to Strategic Planning > Guided Setup.
Create an alignment integration
Once you have Strategic Planning installed, the ServiceNow Internal Alignment integration
is created by default. In case the alignment integration is not available, you can create your
alignment integration type.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Strategic Planning > Integrations.
2. Verify if the Servicenow Internal alignment integration exists.
3. If not, click New to create an alignment integration.
4. In the Name field, enter the name of the alignment integration.
Alternatively, you can also click Create ServiceNow Internal Integration from the related links
to create an internal alignment integration.
5. Click Submit.
Generate default mapping configurations
Generate default mapping configurations to create table maps for the available applications.

Before you begin

Role required: sn_align_core_apw.admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

338


<!-- page 339 -->
Procedure
1. Navigate to All > Strategic Planning > Integrations.
2. Click ServiceNow Internal to view the alignment integrations for the internal applications.
3. Click Generate Default Mapping Configurations to create the table maps for the available
applications.
Table mapping for the planning item types such as Epic, Demand, Project, and project task
are generated and the alignment mappings are displayed in the Table Maps related list. See
the following table for details on the list of table maps that are created for the respective
applications.

Application installed

Table maps created

Project Portfolio Management

Projects, project tasks (for milestones),
demands, and idea

Agile Development 2.0

Epics

SAFe

SAFe epic

Note: Mapping configurations consist of table, field, and choice maps for each record.
Default mapping configurations

Create custom mapping configurations
Create mapping configurations for planning items that are not created by default such as
features, stories, etc.
As an admin, you can choose to create table maps, field maps, and choice maps for the planning
items that are not created by default. For more information, see:
1. Create a table map
2. Create a field map
3. Create a choice map
Create a table map
Create a table map to define the mapping between tables in Strategic Planning with the tables in
Agile Development 2.0, SAFe, and PPM.

Before you begin

Role required: sn_align_core.apw_admin

Procedure
1. Navigate to All > Strategic Planning > Integrations.
2. Select ServiceNow Internal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

339


<!-- page 340 -->
3. Create a new table map by selecting New in the Table maps tab.
4. In the Table map form, fill in the fields.
5. Select Submit.
Create a new table map

Result

A new table map is created with your alignment and execution table configurations.
Note: To create or update a table map for a planning item type other than demand or
project, the SPM Pro license is required. Contact your administrator for more details.

What to do next

Create a business rule to support export of this new table map configuration to Agile
Development 2.0, SAFe, or PPM. For more information, see Create a business rule to apply a
custom table map configuration.
Create a business rule to apply a custom table map configuration
Create a business rule to enable import for your new custom table map configuration from Agile
Development 2.0, SAFe, and PPM applications.

Before you begin

Role required: sn_align_core_apw.admin

About this task

After you create a custom table map in Strategic Planning integrations, create a business rule
similar to 'Sync Data from Execution to Alignment' business rule in the rm_epic or dmn_demand
tables.

Note: Ensure that the business rule is created in the execution application, such as Agile
Development 2.0, SAFe, or PPM.

Procedure
1. Navigate to All > System Definition > Business Rules.
2. From the list of available business rules, locate and open the Sync Data from Execution to
Alignment rule.
3. From the context menu (
), perform an Insert and Stay operation on this business rule.
If you have not enabled the Insert and Stay action in your ServiceNow instance, see Allow
insert options on records .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

340


<!-- page 341 -->
4. On the business rule form, edit the following fields.
Business rule form
Field

Description

Name

Unique name for the business rule.
For example, if your new table map is to map
demands, name this rule as Sync Demands
with Strategic Planning.

Table

Select the table for which you've created the
custom map.
For example, Feature [sn_safe_feature].

5. Click Update.
Create a field map
Map the fields for each table map from Strategic Planning to Agile Development 2.0, SAFe,
Project Portfolio Management and vice-versa.

Before you begin

Ensure that you have created a table map for an alignment integration record. For more
information, see Create a table map.

Note: If the execution field type is 'Reference' and the alignment field type is 'String', then
the sync will not work.
Role required: sn_align_core.apw_admin

Procedure
1. Navigate to All > Strategic Planning > Integrations.
2. Select ServiceNow Internal.
3. In the Table Maps related list, select the table map for which you want to create a field map.
4. Create a new field map by selecting New in the Field Maps tab.
5. In the Field map form, fill in the fields.
6. Click Submit.
Create a choice map
Map the choice list for each field map for fields with a list of values from Strategic Planning to
Agile Development 2.0, SAFe, Project Portfolio Management and vice-versa.

Before you begin

Ensure that you have created a field map and it contains choice fields with a list of values. For
more information, see Create a field map.
Role required: sn_align_core.apw_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

341


<!-- page 342 -->
Procedure
1. Navigate to All > Strategic Planning > Integrations.
2. Select ServiceNow Internal.
3. In the Table Maps related list, select the table map which has the fields for which you want to
create a choice map.
4. In the Field Maps related list, select a relevant field map for which you want to create a choice
map.
5. Create a new choice map by selecting New in the Choice Maps tab.
6. In the Choice map form, fill in the fields.
7. Click Submit.
Configure bulk import
This system property enables you to update the bulk import functionality in Strategic Planning
with PPM, Agile 2.0, and SAFe.

Before you begin

Role required: sn_align_core.apw_admin

Procedure
1. Enter sys_properties.list in the navigation filter.
2. Search for com.sn_align_cmn_int.bulk_import.
3. Set the property value to either of the following options.
Value

Description

Upsert

Enables update and inserting of new work
items.

Insert

Enables inserting new work items only. This is
the default value.

When the records are imported from PPM, Agile Development 2.0, or SAFe to Strategic
Planning , only the last comment will be imported.
Working with Teamspaces
Strategic Planning can be integrated with Project Portfolio Management's Teamspaces to access
and manage relevant projects and demands with the corresponding planning item records.
You must activate a teamspace plugin to use the teamspace feature. The following teamspace
plugins are available:
• Project Management TeamSpace 1 (com.snc.ppm_teamspace_1)
• Project Management TeamSpace 2 (com.snc.ppm_teamspace_2)
• Project Management TeamSpace 3 (com.snc.ppm_teamspace_3)
• Project Management TeamSpace 4 (com.snc.ppm_teamspace_4)
• Project Management TeamSpace 5 (com.snc.ppm_teamspace_5)
The teamspaces installed with these plugins contain the same components, but the components
have different prefixes. For example, teamspace 1 includes a project table named Teamspace_1
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

342


<!-- page 343 -->
Project [tsp1_project] and teamspace 5 includes a project table named Teamspace_5 Project
[tsp5_project].
Also, the corresponding teamspace role must be added to the Strategic Planning admin
(sn_align_core.apw_admin) role. For example, tsp1_portfolio_manager for teamspace1,
tsp2_portfolio_manager for teamspace2 and so on.
To integrate teamspaces with Strategic Planning records:
1. Create one alignment integration for all the teamspaces. On the alignment side,
create extended tables to store individual teamspace table data (like TSP1 Portfolio
[sn_align_core_tsp1_portfolio], TSP1 Demand [sn_align_core_tsp1_demand], TSP2 Project
[sn_align_core_tsp2_project], and so on).
2. In the alignment integration, map the extended tables you have created in Step 1, to the
respective teamspace tables (like tsp1_portfolio, tsp1_demand, tsp2_project, and so on).
Integration with Teamspaces

Related topics
Create a table map

Managing portfolio plans in Strategic Planning Workspace
Create personalized portfolio plans in Strategic Planning Workspace and enable focused
planning of work in the desired perspective (lens) to drive alignment.
The following sections guide you on creating, updating, sharing, and collaborating with portfolio
plans in Strategic Planning Workspace.
Create a high-level portfolio plan
Build a portfolio plan for high-level strategic items in the Strategic Planning Workspace so that
you can prioritize, roadmap, and manage work aligned to these strategic items.

Before you begin

Role required: sn_align_core.apw_user or business_stakeholder

About this task

By default, you can select the Strategic Investments lens and use Initiatives or Strategic
Programs, or select the Project Program lens and use Programs as your high-level planning
items. You can also select the Digital Product lens and use the Product Enhancement entity for
high-level planning. If you want to plan using a different item, work with your admin to enable
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

343


<!-- page 344 -->
those items in your ServiceNow instance. For more information on the configuration, see Highlevel planning configuration in Strategic Planning.
In this task, select a lens, add conditions to filter the planning item data that you need, and enter
additional details to build a portfolio plan.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the Portfolio Plans page, select New.
If there are no existing portfolio plans, select Create your first portfolio plan.
3. Select a lens for your high-level planning.
By default, the Strategic Investments and Project Program lenses are enabled for high-level
planning.

Note: Don’t select Goals lens because the Goal [sn_gf_goal] table doesn't support
high-level planning.
The Create portfolio plan wizard is shown.
4. Make your selections by using the Create portfolio plan wizard.
a. For the selected lens, choose the type of work that you want to plan.
For example, you want to manage work for initiatives in your company. Select Initiatives as
your high-level planning item. This enables you to plan for initiatives and review the work
aligned to these initiatives.

b. Add conditions to further filter the data of your planning items.
For example, you’re responsible for the initiatives of the Customer Support department. You
can set a condition to filter initiatives of only the Customer Support department from the
Initiative table.
You can also add multiple conditions to help you set a complex filter and add the right
information to your portfolio plan.
c. Fill in the details of the portfolio plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

344


<!-- page 345 -->
Provide the information of the portfolio plan's name, owner, start and end dates, and
description.
d. Select a scoring framework using the drop-down values or from the Scoring framework
window.
To create a custom scoring framework for your portfolio plan, select Explore scoring

frameworks.
Use the Previous and Next buttons to navigate between the steps.
5. Select Create.

Result

The portfolio plan is created and the page is refreshed to show the Goals, Scoring, and Planning
pages. You can view the list of all portfolio plans that you own or shared with you from the Home
page.

What to do next
• Define goals for your portfolio plan and align work to them. See Managing goals in Strategic
Planning Workspace.
• Analyze the backlog and prioritize work for your portfolio plan. See Prioritizing portfolio plan
work in Strategic Planning Workspace.
• Show or hide features for your portfolio plan according to your requirement while sharing a
portfolio plan with your stakeholders. See, Show or hide the features for a portfolio plan.
Create a portfolio plan
Use lens and build a personalized portfolio plan in Strategic Planning Workspace so that you can
start to prioritize and align work.

Before you begin

Role required: sn_align_core.apw_user or business_stakeholder

About this task

Use a four-step wizard to select a lens, add conditions to filter the planning items that you need,
and enter additional details to create a portfolio plan.
(For Enterprise Architecture Workspace users only) You must install Enterprise Architecture
Workspace to create a portfolio plan using the Business Capability lens. You must have the
sn_apm.apm_user role to create a portfolio plan using the Business Capability lens.
This task guides you on creating a regular work item-level portfolio plan. To create high-level
portfolio plans, see Create a high-level portfolio plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

345


<!-- page 346 -->
Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the Portfolio Plans page, select New.
If there are no existing plans, select Create your first portfolio plan.
3. Make your selections by using the Create Portfolio plan wizard.
a. Select a lens.
b. For the selected lens, choose an entity type and the desired entities of that type.
The entity type represents the level that you plan your work in.
For example, to plan work for the HR department, select the Organization as lens,
Department as your entity type, and HR from the list of departments. This selection ensures
that only the work associated with the HR department is added to your portfolio plan.
c. Select the type of planning items that you want to include in your portfolio plan.
You can further filter the planning item data with additional conditions.
For example, to plan and track progress for all HR projects created this year, select Project
as your planning item and add a condition to filter all the HR projects created this year.
You can also add multiple conditions to set a complex filter and add the right planning items
to your portfolio plan.

d. Fill in the details of the portfolio plan.
Provide the portfolio plan's name, owner, start and end dates, and description.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

346


<!-- page 347 -->
Important: The start and end dates for your portfolio plan act as a date range filter
for all the planning items that get added to the plan.
For example, if your portfolio plan spans from March 1, 2023, to July 6, 2024, then the
projects approved with start and end dates in Feb 2023 won't appear in the plan, despite
meeting the "created in 2023" criteria.
e. Select a scoring framework using the drop-down values or from the Scoring framework
window.
To create a custom scoring framework for your portfolio plan, select Explore scoring

frameworks.
You can use Previous and Next to navigate between the steps.
4. Select Create.

Result

The portfolio plan is created and the page is refreshed to show the Goals, Scoring, and Planning
pages for this new portfolio plan. You can view the list of all portfolio plans that you own or are
shared with you from the Home page.
Planning items that meet the following criteria appear in the portfolio plan:
• Planning items that belong to one of the entity types selected in Step 3(b)
• Planning items that match the planning item types selected in Step 3(c)
• Planning items with an approved start date or an end date that falls within the portfolio plan
timeline
• Planning items that don't have both Approved start and Approved end dates

Note: If any demands were converted into projects in Project Portfolio Management, only
the resulting project planning items (converted from demands) appear in the portfolio plan.

What to do next
• Define goals for your portfolio plan and align your work to them. See Managing goals in
Strategic Planning Workspace.
• Analyze the backlog and prioritize work for your portfolio plan. See Prioritizing portfolio plan
work in Strategic Planning Workspace.
• Show or hide features for your portfolio plan according to your requirement while sharing a
portfolio plan with your stakeholders. See, Show or hide the features for a portfolio plan.
Duplicate a portfolio plan
Create a portfolio plan with the data of an existing portfolio plan. If the portfolio plan you want
to create is similar to an existing portfolio plan, duplicating the existing portfolio plan saves your
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

347


<!-- page 348 -->
time. You can also duplicate portfolio plans that were shared with you either with view or edit
access.

Before you begin

Role required: sn_align_core.apw_user or business_stakeholder

About this task

The Duplicate portfolio plan option copies the selected portfolio plan with its all data (Goals,
Prioritization, and Roadmap) into the portfolio plan. It also preserves all dependencies and
relationships among the copied items and their child items.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one.
3. From the portfolio plan header, select the More actions icon ( ) and then select Duplicate
portfolio plan.
4. On the Duplicate portfolio plan window, fill the details.
a. Enter a name for the portfolio plan in the Portfolio plan name field.
By default, the name is ABC (Copy) where ABC is the name of the portfolio plan you
copied from.
b. Optional: Select Share with same users and groups option to grant access to the users of
the portfolio plan you copied from.
The action grants the same read and edit access as is the users had for the portfolio plan
you copied from.
c. Select Confirm.

Result

The new portfolio plan is created and a link is generated on the screen to access the new
portfolio plan.

What to do next
• View or update the goals for your portfolio plan according to the new portfolio plan. See
Managing goals in Strategic Planning Workspace.
• Analyze the backlog and prioritize work for your portfolio plan. See Prioritizing portfolio plan
work in Strategic Planning Workspace.
• Show or hide features for your portfolio plan according to your requirement while sharing a
portfolio plan with your stakeholders. See, Show or hide the features for a portfolio plan.
Modify a portfolio plan
Update the details of a portfolio plan in Strategic Planning Workspace or delete it, to reflect the
changes in your planning priorities.

Before you begin

Create a portfolio plan.
Role required: sn_align_core.apw_user or business_stakeholder

About this task

Note: Only the owner or editors of a portfolio plan can modify it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

348


<!-- page 349 -->
Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one.
3. From the portfolio plan header, select the More actions icon ( ).

4. Update the details of the portfolio plan or delete it.
Choice

Action

a. Select Edit portfolio plan.
Update portfolio plan

b. Modify your selections using the Edit portfo­
lio plan wizard.
c. Select Update.

Delete portfolio plan

a. Select Delete portfolio plan.
b. Confirm by selecting Delete.

Related topics
Share a portfolio plan with stakeholders
Collaborate on a portfolio plan
Show or hide the features for a portfolio plan
Show or hide the features for a portfolio plan
As a portfolio manager, show or hide the features (for example, Goals, Scoring, Prioritization,
Roadmap, and so on) for your portfolio plan as needed so that you can share only the required
data with your stakeholders.

About this task

Hiding features for your portfolio plan helps you share only the data that matters to your
stakeholders and restrict access to the other data in your portfolio plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

349


<!-- page 350 -->
Note: When you share a portfolio plan with your stake holder providing view access and
hiding a feature (for example, Scoring), the viewer can only view the enabled features and
can't see the hidden feature (Scoring) in the shared portfolio plan. However, when you
share a portfolio plan providing edit access, the editor can enable or hide the features as
required and can view and edit any data in the shared portfolio plan.

Before you begin

Create a portfolio plan.
Role required: sn_align_core.apw_user or business_stakeholder

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select the portfolio plan for which you want to show or hide the
features.
3. From the left pane of the portfolio plan, select Show/hide modules.
4. On the Show/hide modules window, select the modules and features that you want to show
and deselect the modules and features that you want to hide.

5. Select Apply changes.
Related topics
Share a portfolio plan with stakeholders
Share a portfolio plan with stakeholders
Share your portfolio plan with stakeholders and other planning managers so that they have
visibility into the plan's progress and start collaborating.

Before you begin
• Create a portfolio plan.
• Users or groups that you want to share the portfolio plan with must have the
sn_align_core.ap_read_only or sn_align_core.apw_user role to get the read or edit access to
the portfolio plan respectively.
Role required: sn_align_core.apw_user or business_stakeholder
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

350


<!-- page 351 -->
About this task

Select individual users or groups to share the portfolio with.
When you share a portfolio plan with an individual user or a group, they can access the following
data of the portfolio plan:
• Planning page (Prioritization and Roadmap tabs) by default
• Capacity tab in the Planning page if the user has the sn_align_ws.spw_capacity_user or
sn_align_ws.spw_capacity_read role
• Goals page if the user has the sn_apw_advanced.spw_goal_user role.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one.
3. From the portfolio plan header in the Planning page, select the Share portfolio plan icon (

).

4. On the Share portfolio plan form, select users to share the portfolio plan with and set their
access appropriately.
a. In the Members or Groups field, enter the names of individual users or groups.
b. From the Access field, select the access level as Viewer or Editor for the selected names.
▪ An editor can view and change the portfolio plan's settings and data.
▪ A viewer can comment and add attachments to the portfolio plan, but cannot modify the
portfolio plan's settings or data.

Note: Even if a user has the sn_align_core.apw_user role, they cannot edit planning
item data from the portfolio plan grid view or side panel when granted view-only
access. However, users with the sn_align_core.apw_user role can edit planning items
and related tables from the record page.
5. Select Send invite.

Result

The selected individual and group users are notified of the portfolio plan sharing through an
email.

What to do next

Collaborate on a portfolio plan.
Change the access level or remove access for a user or a group.
1. On the Share portfolio plan form, select Manage access.
2. From the user or group card, select the Action Menu icon ( ).
3. Select the right access level or select Remove.
Related topics
Modify a portfolio plan
Show or hide the features for a portfolio plan

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

351


<!-- page 352 -->
Collaborate on a portfolio plan
Add comments and attachments to your portfolio plan so that users can review and share their
feedback. Collaborate with stakeholders and drive shared outcomes.

Before you begin

Create a portfolio plan.
Role required: sn_align_core.apw_user or business_stakeholder

About this task

Comment on plans and data points, share attachments, and provide feedback from a single
place in the workspace to ensure all the stakeholders are in alignment with the business
priorities.
The attachments and comments that you add from the portfolio plan's header, they apply to the
entire portfolio plan (Goals, Prioritization, and Roadmap).

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one.
3. From the portfolio plan header in the Planning page, select the Comments icon (

).

4. Add comments or attachments to the portfolio plan.
Choice

Action

Attachments

In the Attachments tab, select Browse and up­
load a file.
In the Comments tab, add notes or comments
and select Post Work notes.

Comments

If you want to address your comments to a
specific user, @-mention their name in the
comment directly.

Related topics
Modify a portfolio plan
Share a portfolio plan with stakeholders
Show or hide the features for a portfolio plan

Scoring planning items in Strategic Planning Workspace
Evaluate the work in your portfolio plans using scoring frameworks in Strategic Planning
Workspace. Determine the priority and feasibility of planning items using the scores assigned to
them so that you can make informed decisions about resource and finance allocations.
The following sections guide you on scoring and ranking the items in your portfolio plan in
Strategic Planning Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

352


<!-- page 353 -->
Score items in a portfolio plan
Score your items using the Scoring framework attributes that generate a score, that helps in
prioritizing and ranking the items in your portfolio plan.

Before you begin

Role required: sn_align_core.apw_user

Procedure
1. Navigate to All > Strategic Planning > Strategic Planning Workspace.
2. Select to open the portfolio plan for which you want to start scoring.
If you don’t have a scoring framework assigned to your portfolio plan:
a. Select the more actions icon (

).

b. Select Edit portfolio plan.
c. Navigate to the Add Details step.
d. Select a framework for your portfolio plan.

Note: The scoring framework selection is available only for planning items.
3. Select Scoring.
4. Enter values for each of the scoring framework attributes.

To learn about the scoring framework attributes and the scoring formula, select the information
icon (

) for each of the fields.

Result

The score for each item is populated based on the scoring attribute values and calculation
formula.

Note: To generate a final score for a pre-defined scoring framework, all the attributes of a
scoring framework need to have values.
Related topics
Scoring in Strategic Planning
Custom scoring frameworks in Strategic Planning
Rank items in a portfolio plan
Assign ranks to the items based on the planning item attributes and scoring framework attributes
such as Planned Cost, Moscow, Priority, Score, and so on.

Before you begin

Role required: sn_align_core.apw_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

353


<!-- page 354 -->
Procedure
1. Navigate to All > Strategic Planning > Strategic Planning Workspace.
2. Select to open the portfolio plan for which you want to start ranking of items.
3. Select Planning.
4. Select Rank items in the Prioritization view.
5. Select an attribute using the drop-down list.
For example, if you want to rank your items based on confidence, select Confidence as an
attribute. You can rank on choice and number type attributes of a planning item.
6. Choose the order in which you want the items to be ranked.
7. Select Apply.

Result

The items in your portfolio plan are ranked based on your ranked attribute.
Export planning items data from Scoring to Excel or CSV
Export the data of portfolio plan items from your portfolio plan into a Microsoft Excel or CSV file.
You can share this data and collaborate with your business stakeholders.

Before you begin

Role required: sn_align_core.apw_user

Procedure
1. Navigate to All > Strategic Planning > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Scoring.
3. Verify that the columns you want to export are personalized.

Note: If the filters are applied on the view, the filtered data is exported.
4. Use the personalized side panel to export the data of your portfolio plan items.
a. Select Export icon (

).

b. From the File type drop-down on the Export window, select Excel or CSV to export the data
to a Microsoft Excel or CSV file respectively.
A file with the selected format is exported. By default, the name of the file is
ABC_Scoring_List where ABC is the name of the portfolio plan you exported the data
from.

Managing goals in Strategic Planning Workspace
Create goals for your portfolio plans, set targets for them, and evaluate the progress of the goals
and targets in Strategic Planning Workspace to accomplish your organizational plans and drive
business outcomes.
https://player.vimeo.com/video/1089949088?
h=313cb311d3&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
The Goals view in the Strategic Planning Workspace gives you an overview of your goals and
their targets with the Dashboard, List, and Hierarchy tabs. The Dashboard tab (formerly known
as the Overview tab) provides a summary of all your goals in a particular portfolio plan. The
List tab helps you view, create, and manage your goals and targets of the particular portfolio
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

354


<!-- page 355 -->
level. The Hierarchy tab helps you view the goals and targets of the portfolio plan entities in a
hierarchical manner. This tab also helps you view the goals of the parent entities (of the portfolio
plan entities) along with the goals and targets of the current portfolio plan.

Roles required for managing goals
Access level

Required roles

Read access to Goals

• sn_align_core.apw_user
• sn_apw_advanced.spw_goal_user_read

Edit access to Goals

• sn_align_core.apw_user
• sn_apw_advanced.spw_goal_user

Portfolio plan details section in the Goals view
The portfolio plan details section in the Goals view provides the portfolio plan details along with
options to manage the portfolio plan and create goals. The header section is the same for all tabs
in the Goals view.
From the Portfolio plan details section, you can:
• Create goals for your portfolio plan.
• Share your portfolio plan with stakeholders and other planning managers so that they have
visibility into the progress of the plan and can start collaborating.
• Collaborate with stakeholders and drive shared outcomes by adding comments and
attachments to your portfolio plan so that users can review and share their feedback.
• Customize the widgets and cards that you want to view on the Dashboard tab using the
Settings icon (

). This setting is available only when the Dashboard tab is selected.

Note: Only users with access to edit the portfolio plan can customize the widgets and
cards.
Example Header section in the Goals view

Dashboard tab in the Goals view
The Dashboard tab has multiple widgets that help you drill down in the goals and targets, see
their details, and manage them. The following figure shows a sample goals list and indicates the
different features for goals in Strategic Planning Workspace on the Dashboard tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

355


<!-- page 356 -->
• Goals: A section with multiple widgets that help you view and manage your goals and targets
defined for the portfolio plan.
◦ Total progress: Displays the average progress of all the goals from all the entities of the
portfolio plan.
◦ Progress by <entity type of the portfolio plan>: Displays the average progress (in percentage)
of total goals by each entity type of the portfolio plan. For example, if the portfolio plan is
of entity type department, the widget shows the average progress of total goals in each
department.
◦ Status: Displays your goals based on their status (example, Red, Green, and Yellow).
◦ Status by <entity type of the portfolio plan>: Displays your goals status by each entity type of
the portfolio plan. For example, if the portfolio plan is of entity type department, the widget
shows the goals status in each department.
◦ Total goals: Displays the number of total goals defined for the portfolio plan.
◦ Not aligned to parent goals: Displays the goals that aren’t directly associated with its parent
goal or any of the entities of the portfolio plan. Associate such goals with the parent goal or
the entities so that the effort is visible.

Note: Associating a goal with the parent goal is optional.
◦ With no targets: Displays the goals that don’t have targets set for them. Set targets for such
goals to achieve them.
◦ With no work aligned: Displays the goals that aren’t associated with work. You can
associate work items (Project, Demand, and Epic) with goals so that the work being done to
accomplish goals and meet targets is easily visible.
The “Not aligned to parent goals,” “With no targets,” and “With no work aligned” cards help you
review and define the goals in the system properly from the alignment perspective. After goals
are defined and aligned, you can choose to hide these cards.
Example Goals section on the Dashboard tab

• Targets: A section with multiple widgets that help you view and manage your targets set for the
portfolio plan.
◦ Status: Displays your targets based on their status. The status indicates whether the target is
likely to be completed by the planned end date.
◦ State: Displays the state of the targets from all the entities of the portfolio plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

356


<!-- page 357 -->
◦ Due for review: Displays the targets that are due in a week or already overdue from their
respective review due date perspective. The Check-in due date field on the target form
helps you to update your targets periodically based on their check-in frequency.
Example Targets section on the Dashboard tab

• Strategic priorities: A section with the By strategic priorities widget that helps you view how
your goals are aligned with your organization's long-term strategies and manage them.
Example Strategic priorities section on the Dashboard tab

Filtering data of the portfolio plan
Use the filtering options on the Dashboard tab to filter the data of the goals
and targets by their Strategic priority, entity type of the portfolio plan, Time
period, Owner, State, and Status, so that you can focus on the particular

information.

List view in the Goals and targets tab
The List view helps you view, create, and manage your goals and targets of the particular
portfolio plan. The List tab hides the downstream and upstream goals, enabling you to focus on
only the goals and targets of the current portfolio plan. The List tab helps you update the actual
values for your target breakdowns directly. However, you can view the downstream and upstream
goals and targets from the Hierarchy tab. The following figure shows a sample goals list and
indicates the different features for goals in Strategic Planning Workspace on the List tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

357


<!-- page 358 -->
• The row context menu icon ( ) gives you options for managing a goal such as create subgoal,
set target, and align work for the selected goal.
• Assigned entity: Name of the entity to which the goal belongs.
• Personalize: Helps you customize the columns that you want to view on the List tab. Select the
settings icon (

) to enable the columns that you want to view on the List tab.

• Check-in frequency: Specifies the breakdown interval for the target. Breaking down the target
into smaller periods (example, Quarterly) helps you set targets for each quarter and focus on
the specific breakdown targets.
• Add remarks icon (
): Specifies the remarks that were entered by the user for business
justification when updating the breakdown actuals. Selecting the Remark icon opens the
breakdown side panel with Details and Comments tabs.
• Target breakdowns: Helps you view the details of target breakdowns in yearly or quarterly
intervals. You can also enter or update the actual values in this window.
• Quarterly / Yearly: Helps to customize the view of target breakdowns quarterly or yearly.
Example goals and targets view on the List tab

Hierarchy view in the Goals and targets tab
The Hierarchy view helps you view the goals and targets of the portfolio plan entities in a
hierarchical manner. Also, the tab helps you view the goals of the parent entities (of the portfolio
plan entities) along with the goals and targets of the current portfolio plan. For example, in the
following figure, the departments are the portfolio plan entities and business units are their
parent entities. Enabling the Parent entities goals option shows the goals of the parent entities
(of the portfolio plan entities) along with the goals and targets of the current portfolio plan.
Enabling the Parent entities goals option helps you plan and align your portfolio goals with the
goals of the parent entities.
• Parent entities goals: Displays the goals of the parent entities (of the portfolio plan entities) that
helps you plan and align your portfolio goals with the goals of the parent entities.
• Personalize: Helps you customize the columns that you want to view on the Hierarchy tab.
Select the settings icon (

) to enable the columns that you want to view on the Hierarchy tab.

• The row context menu icon ( ) gives you options for managing a goal such as create subgoal,
set target, and align work for the selected goal.
• Unaligned goals - Not directly associated with parent entities: Lists the goals that aren’t directly
associated with the parent goals. You can open these goal records from the side panel and fill
in the Parent goal field that is based on the goal of the parent entities that your goal belongs
to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

358


<!-- page 359 -->
Example goals view on the Hierarchy tab

Goals examples and recommendations
Business goals are an important part of establishing up priorities and setting a company for
success. Understanding how to set achievable goals can greatly increase the ability to stay on
track both in the short term and the long term for a company.
The following are the examples for strategic priorities along with their goals and targets.
Examples for strategic priorities along with their goals and targets
Strategic Priority

Goal

Target

Enhance customer experience Improve customer satisfaction Achieve a customer
satisfaction score of 90% or
higher by Q4 2024
Reduce customer complaints
by 20% by the end of 2024
Increase customer
engagement

Increase active users on the
platform by 15% within 12
months
Increase customer retention
rate by 10% by Q4 2024

Drive innovation and product
development

Accelerate time to market for
new products

Launch 3 new products or
features per year starting from
2024
Reduce the product
development cycle from 12
months to 8 months by 2025

Foster a culture of innovation

Allocate 15% of the annual
budget to research and
development
Increase the number of
innovation projects submitted
by employees by 25% within
18 months

Expand market reach

Increase market share in key
regions

Achieve 5% market share
growth in the Asia-Pacific
region by 2025
Expand into 3 new
international markets by 2026

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

359


<!-- page 360 -->
Examples for strategic priorities along with their goals and targets (continued)
Strategic Priority

Goal

Target

Build strategic partnerships

Establish 5 new strategic
partnerships with local
distributors or resellers by
2024
Increase revenue from
partnerships by 20% by the
end of 2025

Strengthen operational
efficiency

Optimize internal processes

Implement an enterprise
resource planning (ERP)
system by Q3 2024
Reduce operational costs
by 10% by 2025 through
automation

Improve employee
productivity

Increase employee
satisfaction score to 85% by
the end of 2024
Reduce employee turnover by
15% by 2025

Recommendations to setup goals and targets
The following are the recommendations on how to setup goals and targets for an organization
business growth.
Goal: Increase overall revenue and market share in 2024
Target 1: Expand market share by 10% in target regions
The following is the recommended setup for defining the target using the Target
form in the workspace:
• Start date: 1/1/24
• End date: 31/12/24
• Type: Maximize
• Unit of measure: Percentage
• Start value: 40% (considering market share is already 40% by the end of 2023)
• Final target value: 50%
• Check-in frequency: Monthly or Quarterly
• Target value distribution: Spread linearly across the time period (cumulative)
Target 2: Launch four new products or services by the end of Q4
The following is the recommended setup for defining the target using the Target
form in the workspace:
• Start date: 1/1/24
• End date: 31/12/24
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

360


<!-- page 361 -->
• Type: Maximize
• Unit of measure: Count
• Start value: 0
• Final target value: 4
• Check-in frequency: Quarterly
• Target value distribution: Split equally across the time period (non-cumulative)
Target 3: Acquire 1,000 new enterprise customers
The following is the recommended setup for defining the target using the Target
form in the workspace:
• Start date: 1/1/24
• End date: 31/12/24
• Type: Maximize
• Unit of measure: Count
• Start value: 0
• Final target value: 1000
• Check-in frequency: Monthly or Quarterly
• Target value distribution: Split equally across the time period (non-cumulative) or
Spread linearly across the time period (cumulative)
Goal: Improve customer satisfaction and retention
Target 1: Increase Net Promoter Score (NPS) from 70 to 85
The following is the recommended setup for defining the target using the Target
form in the workspace:
• Start date: 1/1/24
• End date: 31/12/24
• Type: Maximize
• Unit of measure: Count
• Start value: 70
• Final target value: 85
• Check-in frequency: Monthly or Quarterly
• Target value distribution: Spread linearly across the time period (cumulative)
Target 2: Decrease customer churn rate from 12% to 8%
The following is the recommended setup for defining the target using the Target
form in the workspace:
• Start date: 1/1/24
• End date: 31/12/24
• Type: Minimize
• Unit of measure: Percentage
• Start value: 12%
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

361


<!-- page 362 -->
• Final target value: 8%
• Check-in frequency: Monthly or Quarterly
• Target value distribution: Spread linearly across the time period (cumulative)
Target 3: Conduct quarterly customer feedback surveys with a 60% response rate
The following is the recommended setup for defining the target using the Target
form in the workspace:
• Start date: 1/1/24
• End date: 31/12/24
• Type: Maximize
• Unit of measure: Percentage
• Start value: 0
• Final target value: 60%
• Check-in frequency: Quarterly
• Target value distribution: Spread linearly across the time period (cumulative)
Goal: Build strategic partnership channels
Target 1: Establish partnership with five new consulting firms
The following is the recommended setup for defining the target using the Target
form in the workspace:
• Start date: 1/1/24
• End date: 31/12/24
• Type: Maximize
• Unit of measure: Count
• Start value: 0
• Final target value: 5
• Check-in frequency: Monthly or Quarterly
• Target value distribution: Spread linearly across the time period (cumulative)
Target 2: Generate $100K revenue through partners
The following is the recommended setup for defining the target using the Target
form in the workspace:
• Start date: 1/1/24
• End date: 31/12/24
• Type: Maximize
• Unit of measure: Currency
• Start value: 0
• Final target value: 100K
• Check-in frequency: Monthly or Quarterly

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

362


<!-- page 363 -->
• Target value distribution: Spread linearly across the time period (cumulative) or
Split equally across the time period (non-cumulative). Set this option depending
on whether you want to track the target progress individually for each month or
quarter, or at an aggregated level.
Create a goal in Strategic Planning
Create goals for your portfolio plans and set targets to measure overall goal progress and align
goals with your organizational strategic priorities.

Before you begin

Role required: sn_apw_advanced.spw_goal_user and (sn_align_core.apw_user or
sn_gf.goal_admin)

About this task

Goals are typically qualitative by nature. Goals should be ambitious and are expected to motivate
and challenge your teams.
Only the owner or contributors of the goal can edit the goal.

Note: If you have created goals but don't see them appearing in the portfolio plan,
populate the Assigned entity type and Assigned entity fields on the Goal form to display
those goals in the portfolio plan.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select a portfolio plan that you want to create a goal for.
3. From the Goals page, select New goal.
4. On the form, fill in the fields.
For a description of the field values, see Goal form.
5. Select Save.
You can also select Save and add target and add a target for the goal on the flow. For a
description of the field values for a target, see Target form.

What to do next

Set targets for the goals. For more information, see Create targets for a goal in Strategic Planning
or Configuring target source for target automation.
Generate targets for a goal using Now Assist for SPM
Generate measurable targets for your goals in Strategic Planning Workspace using Now Assist
for SPM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

363


<!-- page 364 -->
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

Role required: sn_apw_advanced.spw_goal_user and (sn_align_core.apw_user or
sn_gf.goal_admin)

About this task

The Target generation skill leverages the goal’s details and provided context to create a precise
target for the goal. The more specific the input, the stronger the recommendations.
The skill automatically populates key fields in the Target form, ensuring accuracy and alignment
with the goal. This helps teams define clear, measurable outcomes and speeds up the targetsetting process.

Note: Only the owner or contributors of the goal can create targets for the goal.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

364


<!-- page 365 -->
Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select the required portfolio plan that the goal belongs to.
3. In the Goals view, select the Goals and targets tab.
4. Next to the goal that you want to create a target for, select the row context menu icon ( ) and
select Generate target.
5. On the Provide context to generate a target window, enter a context to generate a desired
target and then select Generate.

Tip: The more specific the input, the stronger the recommendations.
6. On the form, verify the filed values and update them as needed.
For a description of the field values, see Target form.
7. Select Save.

Result

A target is created based on the goal’s details and any context that you provide.
The target progress records are automatically created when you save the target post populating
the Actuals to date field. The target progress records specify the progress of each target for the
goal.

Note: When you delete a goal, its associated targets (if any) and their progress records
are also deleted even though the Allow the deletion of targets property is set to No.

What to do next

Update the progress of the target manually if the target isn’t enabled for target automation.
Related topics
Create targets for a goal in Strategic Planning
Create targets for a goal in Strategic Planning
Create SMART targets for goals to track and measure the progress of your goals.

Before you begin

Role required: sn_apw_advanced.spw_goal_user and (sn_align_core.apw_user or
sn_gf.goal_admin)

About this task

Configuring a target source for your target updates the Actuals to date field on the Target form
automatically. For more information on target automation, see Target actuals automation in
Strategic Planning.
A SMART target can be defined as S = Specific, M = Measurable, A = Attainable, R = Relevant,
and T = Time-bound.

Note:
• Only the owner or contributors of the goal can create targets for the goal.
• You can also restrict the access for a target record to the specific users by enabling the
®
Confidential field on the Target form if the ServiceNow ESG Management application is
installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

365


<!-- page 366 -->
Note: You can generate a target using the Target generation skill, if the Now Assist for SPM
application is installed. For details, see Generate targets for a goal using Now Assist for
SPM.

Procedure
1. Create a target for a goal using one of the following options.
Option

Steps

a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.

From the Goals view

b. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
c. In the Goals view, select the Goals and tar­
gets tab.
d. Next to the goal that you want to create a
target for, select the row context menu icon
( ) and select Add target.
a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.
b. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
c. In the Goals view, select the Goals and tar­
gets tab.

From the Targets tab

d. Select the goal that you want to create a tar­
get for.
The Goal side panel opens with the Details
tab.
e. From the side pane, select Full Details to
open the goal form.
f. On the Quantitative Targets or Qualitative
Targetstab, select New.

2. On the form, fill in the fields.
For a description of the field values, see Target form.
3. Select Save.
You can also select Save and add new target and add more targets for the goal on the flow.

Result

The target progress records are automatically created when you save the target post populating
the Actuals to date field. The target progress records specify the progress of each target for the
goal.

Note: When you delete a goal, its associated targets (if any) and their progress records
are also deleted even though the Allow the deletion of targets property is set to No.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

366


<!-- page 367 -->
What to do next

Update the progress of the target manually if the target is not enabled for target automation.
Update the progress of a manual target
Update the progress of a target when its status is changed.

Before you begin

Role required: sn_apw_advanced.spw_goal_user and sn_align_core.apw_user

About this task

Note: Only the owner or contributors of the goal can update a goal target.
Procedure
1. Open the target record of the goal using one of the following options.
Option

Steps

a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.
b. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
c. In the Goals view, select the Goals and tar­
gets tab.
d. Select the current progress value link for
the target in the Progress column.
The Progress Metrics window is displayed.
From the Goals and targets tab

e. (For targets with quarterly or yearly break­
downs) In the breakdown columns section,
double click the cell in the Actual column
for the breakdown.
(For targets with breakdowns other than
quarterly or yearly) In the breakdown
columns section, select More actions icon
for the breakdown cell in the Actual column
and then select Update.
The Check-in actuals window is displayed.
(For targets with no breakdowns) In the Ac­
tual to date column, double click the cell for
the target.
a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.

From the Target side panel

b. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
c. In the Goals view, select the Goals and tar­
gets tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

367


<!-- page 368 -->
Option

Steps

d. Select the target record that you want to up­
date the progress for.
The Target side panel opens with the De­
tails tab.
a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.
b. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
c. In the Goals view, select the Goals and tar­
gets tab.
From the Targets tab

d. Select the goal record with the target
progress that you want to update.
The Goal side panel opens with the Details
tab.
e. In the side panel, select Full Details to
open the goal form.
f. On the Quantitative Targets or Qualitative
Targets tab, select the target record.

2. On the form, update the Actuals to date field and add a business justification in the Remark
field.
For a description of the field values, see Target form.
3. Select either Update or Save.

Result

After the Actuals to date field is updated, the progress value for the target and its goal is autoupdated. For information on how the progress value is calculated, see progress value calculation.
For information on how the progress value is calculated for a target that has target breakdowns,
see Target breakdowns in Strategic Planning.
Related topics
Update the actual value of a target breakdown
Update the progress of an automated target
Update the progress of an automated target
Update the progress of a target using the Update Actual value related link on the Target form.

Before you begin

Role required: sn_apw_advanced.spw_goal_user and sn_align_core.apw_user

About this task

Note: Only the owner or contributors of the goal can update a goal target.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

368


<!-- page 369 -->
Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select the required portfolio plan that the target belongs to.
3. In the Goals view, select the Goals and targets tab.
4. Select the target that you want to update the progress for.
The Target side panel opens with the Details tab.
If the target has breakdowns, selecting the target opens the Target side panel with the
Progress tab. Select the Details tab on the Target side panel.
5. From the side panel, select Full Details to open the target form.
6. On the Target form, select the Update Actual value related link.
For a description of the field values, see Target form.

Result

After the Actuals to date field is updated, the progress value for the target and its goal is autoupdated. For information on how the progress value is calculated, see progress value calculation.
For information on how the progress value is calculated for a target that has target breakdowns,
see Target breakdowns in Strategic Planning.
Related topics
Update the progress of a manual target
Update the actual value of a target breakdown
Duplicate a goal or target
Create a copy of an existing goal or target to align goals with your organizational strategic
priorities. If the goal or target you want to create is similar to an existing one, duplicating the
existing record saves your time.

Before you begin

Role required: sn_apw_advanced.spw_goal_user and sn_align_core.apw_user

About this task

Goals are typically qualitative by nature. Goals should be ambitious and are expected to motivate
and challenge your teams.
Only the owner or contributors of the goal can edit the goal.

Note: If you have created goals but don't see them appearing in the portfolio plan,
populate the Assigned entity type and Assigned entity fields on the Goal form to display
those goals in the portfolio plan.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select a portfolio plan that you want to create a goal for.
3. From the Goals page, select Goals and targets and then select List or Hierarchy view.
4. Select the Row context menu icon ( ) of the goal or target that you want to copy and then
select Duplicate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

369


<!-- page 370 -->
◦ For a goal, the Goal modal opens with all details of the goal you copied from. You can update
the details for the goal as needed and then select Save to save the goal or select Save and
add a target to save the goal and add a target for the goal. For a description of the field
values, see Goal form.
◦ For a target, the copied target appears right under its goal. Note that this action doesn’t copy
the target actuals. You can open the target record and update the details as needed and
then save the target for the goal. For a description of the field values, see Target form.
By default, the name is Copy of ABC where ABC is the name of the goal or target you
copied from.

What to do next

Set more targets for the goals. For more information, see Create targets for a goal in Strategic
Planning or Configuring target source for target automation.
Target actuals automation in Strategic Planning
Automate the actual value for your targets using the target automation feature.
https://player.vimeo.com/video/1077953139?
h=93de7e6865&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479%0Ahttps:/
/youtu.be/pd0dWCbHRkA
Use the following steps as guidelines to enable actuals automation and configure a target source
for a target using the target automation feature.
You must perform the following steps on the Target form to enable target automation for the
target.
1. Enter the Start value, Final target value, and Check-in frequency, and fill the other required
fields for the target.
2. Select the Automate actual value field.

3. Select a target source in the Actual value source field, from which the value must be fetched
for target automation.
A target source is a configuration (of a custom script, PA indicator, or Assessments) for a target
to auto-update the actual value of the target, so that the progress of the target and its goal are
auto-updated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

370


<!-- page 371 -->
You can select either the Benefit Plans option or a custom target source as a target source for
the target. After selecting a target source, save the target record to view additional actual value
source configuration.
◦ Benefit Plans target source - A target source that is created using a custom script where the
actual benefit value of benefit plans of the planning items associated with the goal or target
fetches the target actuals. Then the application updates the actual value of the target based
on the actual benefit value.
When you select Benefit Plans target source (predefined target automation script for benefit
plans) as the Actual value source for the target, the benefit_plan field appears in the
Variables section, from which you can select the required benefit plans for fetching the value
and automating the actual value of the target.

Note: Only benefit plans of the planning items associated with the goal or target will
be available to select in the benefit_plan field as a source for target automation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

371


<!-- page 372 -->
◦ Custom target source - Create a custom target source and configure it as a source to update
the actual value of the target. For instructions on how to create a target source, see Create a
target source.
For instructions on creating targets for a goal, see Create targets for a goal in Strategic
Planning.
Target breakdowns in Strategic Planning
Breaking down a target into smaller periods (for example, Monthly) helps you set a target
value for each month and focus on that specific monthly target. The target breakdowns are
automatically created based on the Check-in frequency and Target value distribution set for the
target.
The check-in frequency for a target can be set to Daily, Weekly, Monthly, Quarterly, or Yearly.
Based on the Check-in frequency of the target, the corresponding target breakdowns are
created. For example, if the Check-in frequency is set to Monthly for a target spanning for a year,
12 monthly target breakdowns are created. Planned target values are automatically set for each
target breakdown based on the Target value distribution setting of the target.

Note: The target breakdowns feature isn’t supported for qualitative targets.
The following examples help you understand how the target progress is calculated for targets
with different target distribution type.
Example 1: Acquire 1200 new customers in the calender year 2025 (Track noncumulatively)
In this example, you want to achieve a target of acquiring 1200 new customers in
the calender year 2025 and track the progress monthly (non-cumulatively), then you
can set the target as the following:
• Set the start date and end dates to 2025-01-01 and 2025-12-31, respectively
• Set the start value and final target values to 0 and 1200, respectively

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

372


<!-- page 373 -->
• Set the Check-in frequency for the target to Monthly
• Set the Target value distribution to Split equally across the time period (noncumulative)
This Target value distribution means that the final target value is divided into 12
equal values (planned target value for each target breakdown) which aggregates
to the final target value. You can edit the planned target value later from the
respective target breakdown record as needed.

In this case, the application creates 12 target breakdowns (January, February,
………, and December) for calender year 2025 and sets the Planned target value for
each target breakdown to 100 (Final target value divided by the number of target
breakdowns).
Because the application sums up the actual value entered in each monthly target
breakdown, you must enter the actual value that is achieved in the particular month
for the target breakdown. For example, you acquired 100 customers in January,
then enter 100 as the actual value in the January target breakdown. And, you
acquired another 100 customers in February, then enter 100 as the actual value in
the February target breakdown. Similarly, if you acquired another 100 in March and
100 in April, then enter 100 as the actual value in both the March and April target
breakdowns.
The application sums up the actual values entered in each monthly target
breakdown and rolls up the sum value to the actual value of the main target. Then,
the progress of the target and its goal are auto-updated.
Example 2: Acquire 1200 new customers in the calender year 2025 (Track cumulatively)
In this example, you want to achieve a target of acquiring 1200 new customers in the
calender year 2025 and track the progress monthly (cumulatively), then you can set
the target as the following:
• Set the start date and end dates to 2025-01-01 and 2025-12-31, respectively
• Set the start value and final target values to 0 and 100, respectively
• Set the Check-in frequency for the target to Monthly
• Set the Target value distribution to Spread linearly across the time period
(cumulative)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

373


<!-- page 374 -->
This Target value distribution means that the final target value is divided linearly
into 12 planned target values (such a way that the value for the last monthly
breakdown is equal to the final target value). You can edit the planned target value
later from the respective target breakdown record as needed.

In this case, the application creates 12 target breakdowns (January, February,………,
and December) for calender year 2025 and sets the Planned target value for the
January, February,………, and December breakdowns to 100, 200,…….., and 1200
respectively.
Because the application considers only the actual value entered in the latest
monthly target breakdown, you must enter the cumulative actual value in the latest
monthly target breakdown. For example, you acquired 100 customers in January,
then enter 100 as the actual value in the January target breakdown. And, you
acquired another 100 customers in February, then enter 200 as the actual value
in the February target breakdown. Similarly, if you acquired another 100 in March
and 100 in April, then enter 300 and 400 as the actual value in the March and April
target breakdowns, respectively.
The application considers the actual value entered in the latest monthly target
breakdown and rolls up to the actual value of the main target. Then, the progress of
the target and its goal are auto-updated.

Graphical visualisation of target progress
The Progress tab in the target’s side panel provides graphical visualization for the trend of the
target progress based on the planned target value and the actual value of the breakdowns. You
can also edit the planned target and view the check-in history of the target actuals from the
Progress tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

374


<!-- page 375 -->
Benefits of target breakdowns
The target breakdowns feature helps you when you want to set a target for a period but want to
track the progress of the target in smaller periods such as daily, weekly, monthly, quarterly, and
yearly. For example, you have set a target for a year with start value and final target values of 0
and 1200, respectively. Also, you want to set monthly targets of 100 for each quarter. In this case,
you can break down the target into monthly targets and set a target value for each month so that
you can focus on the specific monthly target and update your actuals against those monthly
targets.
The target breakdowns feature has the following benefits:
• Break down the long-term targets into short-term intervals such as Daily, Weekly, Monthly,
Quarterly, and Yearly for a better tracking or reporting of your progress
• Set or modify a planned target value for each target breakdown as needed
• Update the actual value for each target breakdown and track the progress of the main target
• Focus on the specific short-term target (target breakdown) rather than the whole target
• Track the progress of your short-term and long-term targets cumulatively or non-cumulatively
• Visualize the trend of the target's process wrt the planned target in the line or bar chart

How the actual value is calculated when the check-in frequency set to None
When the check-in frequency is set to None for a target, the actual value must be entered in
the Actuals to date field in the main target record. The actual value entered must be cumulative
irrespective of the time period of the target. Target breakdowns aren’t created when the check-in
frequency is set to None.

Target breakdowns in target automation
If you’ve enabled the target automation feature for a target and set the check-in frequency and
Target value distribution, the target automation feature automatically updates the actual value
in the respective target breakdown based on the check-in due date. After the actual value of
a target breakdown is updated, the value is rolled up to rolls up to the actual value of the main
target. Then, the progress of the target and its goal are auto-updated.
Update the actual value of a target breakdown
Update the actual value of a target breakdown when its status is changed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

375


<!-- page 376 -->
Before you begin

Role required: sn_apw_advanced.spw_goal_user and (sn_align_core.apw_user or
sn_gf.goal_admin)

About this task

Updating the actual value of a target breakdown automatically updates the actual value of its
target. After the Actual to date field of the target is updated, the progress value for the target and
its goal are auto-updated.

Note: Only the owner or contributors of the goal can update the target breakdowns.
Procedure
1. Open the target record of the goal using one of the following options.
Option

Steps

a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.
b. Select Portfolio Plans.
c. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
d. In the Goals view, select the Goals and tar­
gets tab.
From the Goals and targets tab or Target
breakdown side panel

e. From the goals and targets list, select the
target record that you want to update the ac­
tual value for and select the add remarks
icon ( ) in the Actual column of the target
breakdown.
The target breakdown side panel opens
with the Check-in actuals window.
Alternatively, you can select the cell in the
Actual column of the target breakdown and
enter the actual value on the Goals and tar­
gets tab.
a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.
b. Select Portfolio Plans.

From the Target breakdowns tab

c. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
d. In the Goals view, select the Goals and tar­
gets tab.
e. Select the target record that you want to up­
date the actual value for.
The target record opens with the Progress
tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

376


<!-- page 377 -->
Option

Steps

f. In the side panel, select Edit planned tar­
get to open the target form.
The target form opens with the Target
breakdowns tab.
All the target breakdowns are displayed.
2. On the form, update the Actual field for the target breakdown and add a business justification
in the Remark field.
For a description of the field values, see Target Breakdown form.
3. Select Save.

Result

After the Actual field is updated, the progress value for the target and its goal are auto-updated.
For information on how the progress value is calculated, see progress value calculation. For
information on how the actual value of the target breakdown is rolled up to its target, see Target
breakdowns in Strategic Planning.
Related topics
Update the progress of a manual target
Update the progress of an automated target
Associate a planning item with goals or targets
Create a goal or target relationship with a planning item or any other item to identify and
associate your current or future work and achieve your goals and targets.

Before you begin

Role required: sn_apw_advanced.spw_goal_user and sn_align_core.apw_user

About this task

You can associate a goal or target with the planning items - Project, Demand, and Epic.
From the Align work window, you can associate a goal or target with multiple planning items at
a time. From the Planning items tab of the goal or target, you can associate a goal or target with
only one planning item at a time.
You can create goal or target relationships with a custom planning item
from the Align work window only if the planning item table is added to the
planning_item_types_allow_list property. For more information, see Enable custom
item types in Strategic Planning.

Note: When a goal or target relationship is created with a planning item (Project, Demand,
or Epic), the record appears on the Planning items tab on the goal record. When a goal or
target relationship is created with any other item, the record appears on the Other items tab
on the respective goal or target record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

377


<!-- page 378 -->
Procedure
1. Open the Goal/Target Relationship form using one of the following options.
Option

Steps

Note: From the Align work window, you
can create a goal or target relationship
with planning items only. To create a
goal or target relationship with any item
other than planning item, navigate to the
full details page of the item using the
second option in this table.
a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.
b. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
c. In the Goals view, select the Goals and tar­
gets tab.
d. Next to the required goal or target that you
want to associate a work item for, select the
row context menu icon ( ) and select Align
work.
Alternatively, you can select View aligned
From the Align work window

work from the row context menu icon ( ) to
open the side panel. Select the Align work
icon ( ) from the Aligned work tab of the
side panel.
e. On the Align work window, select the plan­
ning items you want to associate with the
goal or target and then select Confirm.

You can search for the required planning
items by applying filter on the Name col­
umn.
For a description of the field values, see
Goal/Target Relationship form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

378


<!-- page 379 -->
Option

Steps

a. Navigate to Workspaces > Strategic Plan­
ning Workspace > Portfolio Planning.
b. From the list of portfolio plans, select the re­
quired portfolio plan that the goal belongs
to.
c. In the Goals view, select the Goals and tar­
gets tab.
d. Select the required goal or target that you
want to associate a planning or strategic
item for.
The Goal side panel opens with the Details
tab.
e. In the side panel, select Full Details to
open the goal form.
From the Planning items or Other items tab

f. (To create a goal or target relationship with
a planning item) On the Planning items tab,
select Add.
g. (To create a goal or target relationship with
an item other than planning item) On the
Other items tab, select Add.
h. On the Goal/Target Relationships form, for
a planning item (Project, Demand, or Epic),
fill in the Planning item type and Planning
item fields on the Goal/Target Relationship
form.
For any item other than planning item, on
the Goal/Target Relationship form, fill in the
Table and Document ID fields.
For a description of the field values, see
Goal/Target Relationship form.

2. Select either Done or Save.
Associate or update the primary goal or target for a planning item
Associate a primary goal or target for the planning items where the items contribute to achieving
the goal or target.

Before you begin

Role required: sn_apw_advanced.spw_goal_user and sn_align_core.apw_user

About this task

You can associate a goal or target as primary with a planning item by populating the Primary
goal and Primary target fields on the Planning item form respectively. When you populate the
Primary target field, the Primary goal is automatically populated with the goal of the populated
target. For more information, see Planning item form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

379


<!-- page 380 -->
After you associate planning items with goals or targets, you can check these relationships
directly on the Planning items tab of the goal's form or on the Goal/Target Relationships tab of
the planning item's form.

Note:
• By default, the goal or target becomes the primary when you associate a goal or target
with a planning item for the first time. Then after, association of any goal or target with
the planning item becomes a secondary association unless the Primary field is selected
while associating the goal or target.
• When a planning item already has a primary goal association and you want to make
another goal as primary, the existing primary goal association becomes secondary and
the fresh association becomes primary for the planning item.
• Associating the primary goal or target isn’t supported for strategic items such as
initiatives and strategic programs.
• To associate the primary goal or target with a custom planning item, ensure that the
custom planning item is added to the planning_item_types_allow_list
property.

Procedure
1. Open the required planning item form using one of the following options.
Option

Navigation

a. Navigate to Workspaces > Strategic Planning Work­
space > Portfolio Planning.
b. From the list of portfolio plans, select the required portfo­
lio plan that the planning item belongs to.
c. Select Planning.
From the Portfolio Plans tab

d. Select Prioritization or Roadmap tab.
e. Select a planning item that you want to associate or up­
date the primary goal or target with.
The side panel opens with the Details tab.
Alternatively, you can select Full details and open the
item's record page. Select the Details tab from the record
page.
a. Navigate to Workspaces > Strategic Planning Work­
space > Portfolio Planning.
b. From the list of roadmaps, select the required roadmap
that the planning item belongs to.

From the Free-form Roadmaps c. Select a planning item that you want to associate or up­
date the primary goal or target with.
tab
The side pane opens with the Details tab.
Alternatively, you can select Full details and open the
item's record page. Select the Details or Goal/Target Re­
lationships tab from the record page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

380


<!-- page 381 -->
2. On the Item details side panel or Details tab, fill in or update the Primary goal and Primary
target fields with the goal and target respectively that you want to associate or update.
Alternatively, you can select Add in the Goal/Target Relationships tab, populate the Goal and
Target fields as needed, and then select Primary. The Primary goal and Primary target fields
are then automatically populated on the planning item form.
For a description of the field values, see Planning item form.
3. Select either Update or Save.

What to do next

If you want to remove the existing goal or target association, you can remove the association
by selecting the association record and selecting the Remove option on the Goal/Target
Relationships tab of the planning item record. If the planning item has the primary goal and
secondary goal association, you can remove the primary association only after you make any
other goal as primary for the planning item.
Export goals and targets data to Excel or CSV
Export the data of goals and targets from your portfolio plan into a Microsoft Excel or CSV file. You
can share this data and collaborate with your business stakeholders.

Before you begin

Role required: sn_apw_advanced.spw_goal_user and sn_align_core.apw_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Goals.
3. From the Goals page, select List view.
4. Verify that the columns you want to export are personalized.

Note: If the filters are applied on the view, the filtered data is exported. Also, to

differentiate between goal and target record in the exported file, select Record type in
the personalized side panel.
5. Use the Personalize side panel to export the data of your goals and targets.
a. Select Export icon (

).

b. From the File type drop-down on the Export window, select Excel or CSV to export the data
to a Microsoft Excel or CSV file respectively.
The data is exported into the selected file format. By default, the name of the file is
ABC_goals_and_targets_list where ABC is the name of the portfolio plan you
exported the data from.

Prioritizing portfolio plan work in Strategic Planning Workspace
Review the work pipeline for your portfolio in Strategic Planning Workspace. Add, update, and
rank planning items so that you can prioritize the right work for the right time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

381


<!-- page 382 -->
Prioritization views
Prioritization page in Strategic Planning represents your backlog, showing the items of your work
pipeline in List, Kanban, and Hierarchy views. For an overview of these views, see Prioritization in
Strategic Planning.

Note: The Prioritization feature is available only for portfolio plans.
Planning items in the Prioritization tab
By default, portfolio plans show only the records that are created within the Planning Item
[sn_align_core_planning_item] table and its child tables. Any records stored in other ServiceNow
AI Platform tables aren't shown unless an integration is established.
Consider that you want to manage projects through a portfolio plan. Project records that are only
stored in the Planning Item Project [sn_align_project] table are displayed in the Prioritization tab.
But any projects created using the PPM Standard aren't shown by default because these project
records are stored in the PPM Project [pm_project] table. To enable their display in Strategic
Planning Workspace, set up integration with PPM so that the tables of Strategic Planning are
mapped to the tables of PPM.
The same is the case with Epics created using Agile Development 2.0 and SAFe applications.
See Configuring Strategic Planning with PPM, Agile 2.0, and SAFe.

Prioritization features
On the Prioritization page, you can perform the following actions:

Feature

Add new planning items

Description

Example UI

Add new items to your backlog
directly from the Prioritization
page.
The type of planning items
that you can create here
depends on your portfolio
plan configuration.

Update planning item details

Edit details of the planning
items, add attachments, and
collaborate on them with the
stakeholders directly from the
Prioritization page to facilitate
smoother real-time backlog
grooming.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

382


<!-- page 383 -->
Feature

Description

MoSCoW values

Categorize planning items
using the Must have, Could
have, Should have, or Won't
have (MoSCoW) values in
the List and Hierarchy views.
This categorization creates a
baseline of priority that you
can later use when you're
grooming and prioritizing work
for your portfolio.

Rank planning items

Prioritize items to roadmap

Open the planning item in the
Execution app

Example UI

Decide on the order of priority
for the planning items by
using the drag functionality to
rearrange them.
Set the planning state of an
item to Prioritized to add them
to the portfolio's roadmap.
If you're using ServiceNow
PPM, Agile Development
2.0, or SAFe applications to
execute the planned work, you
can open the planning items
in their own application.
For example, if your planning
item is an epic, you can
navigate to the epic form
directly from the Prioritization
page.

Personalize the Prioritization
page views

Change the way that the
Prioritization page is displayed
so that you can view the
information in the format that
you need.
All settings, such as row
and column personalization,
grouping, and sorting, are
saved as the portfolio plan
preferences. So, these
settings are applied to all the
users or user groups that the
portfolio plan is shared with.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

383


<!-- page 384 -->
Feature

Description

Apply filters for Prioritization

Apply filters to all the views
of Prioritization, Roadmap, or
Scoring so that you can view
a consistent data set for your
portfolio plan.

Reorder the columns by
dragging them horizontally

Reorder the position of the
columns on the List and
Hierarchy view by dragging
them horizontally.

Example UI

Add planning items to Prioritization
Add new planning items to your portfolio plan's work backlog in Strategic Planning Workspace
and ensure that the work pipeline is current.

Before you begin

Create a portfolio plan
Role required: sn_align_core.apw_user

About this task

Use the Prioritization page of your portfolio plan to add new planning items or import them from
other ServiceNow execution system such as PPM, Agile Development 2.0, or SAFe.
You can use the List, Kanban, or the Hierarchy views while you perform this task.

Procedure
1. Navigate to All > Strategic Planning > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. From the Prioritization page, add a new planning item for your portfolio plan.
Use the More options drop-down to select the planning item that you want to create.

4. On the form, fill in the short description and approved dates.
For full information, see Planning item form.
You can refine planning item descriptions—for item types such as Demand, Epic, Project,
Capability, Feature, and Story—using the Write planning item skill, if the Now Assist for SPM
application is installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

384


<!-- page 385 -->
5. Select Submit.
6. Optional: If you're using PPM, Agile Development 2.0, or SAFe to execute the planned work,
you can also import your work items from these applications.
For more information, see Executing Strategic Planning work in PPM, Agile 2.0, and SAFe.

Result

The new item is created with its Planning state field is set to New and the position of the item is
based on the view that you are in.
• List view: Added to the bottom of the list.
• Kanban view: Added to the 4-Low priority horizontal lane.
• Hierarchy view: Added to the appropriate grouping.
For example, your selected lens is Organization. Then, the new item is added to the grouping
of its department.

What to do next
• Rank planning items.
• Update planning item details from Prioritization view.
• Learn about Personalizing Prioritization page views
Duplicate a planning item
Create a copy of an existing planning item to add it to your portfolio plan's work backlog in
Strategic Planning Workspace and ensure that the work pipeline is current. If the planning item
you want to create is similar to an existing planning item, duplicating the existing planning item
saves your time.

Before you begin

Create a portfolio plan
Role required: sn_align_core.apw_user

About this task

Use the Prioritization page of your portfolio plan to add new planning items or import them from
other ServiceNow execution system such as PPM, Agile Development 2.0, or SAFe.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. From the Prioritization page, select List view.
4. Select the More actions icon ( ) of the planning item that you want to copy and then select
Duplicate.
The new planning item is created and the item appears right below the planning item you
copied from. Also, the rank is updated for the new planning item automatically based on the
rank of the planning item you copied from.
By default, the name is Copy of ABC where ABC is the name of the planning item you
copied from.
5. Optional: If you're using PPM, Agile Development 2.0, or SAFe to execute the planned work,
you can also import your work items from these applications.
For more information, see Executing Strategic Planning work in PPM, Agile 2.0, and SAFe.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

385


<!-- page 386 -->
What to do next
• Rank planning items.
• Update planning item details from Prioritization view.
• Learn about Personalizing Prioritization page views
Update planning item details from Prioritization view
Update the details of your planning items or delete them so that your Strategic Planning
Prioritization page reflects the latest work pipeline.

Before you begin

Role required: sn_align_core.apw_user

About this task

Update the details of a planning item using the List, Kanban, and Hierarchy views in the portfolio
Prioritization page. Edit the details inline from the grid view or use the side panel. You can edit
details such as short description, MoSCoW, approved dates and others to facilitate smoother
real-time backlog grooming. Use the full details page of the planning item to add attachments
and collaborate on them with the stakeholders.

Procedure
1. Navigate to All > Strategic Planning > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. From the Prioritization page, select List, Kanban, or Hierarchy view.
4. Update item details, attach files to the item, or delete the item.
Choice

Action

Edit using one of the following ways. These ac­
tions are applicable for both high-level and
regular portfolio plans:
◦ List: Double-click an item's field on the grid
to make inline edits or select the short de­
scription to open the full details page.

Update planning item details

◦ Kanban: Select a card to open its details in
the side panel. You can select Full details
to open the record page.
◦ Hierarchy: Double-click an item's field on
the grid to make inline edits or select the
short description to open the full details
page.
The full details page shows the item's related
lists such as Goal Relationships, Milestones,
Dependencies, and others.
For field information, see Planning item form.

Attach files to planning item

In the Attachments section of the full details
page, select Browse and upload a file.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

386


<!-- page 387 -->
Choice

Action

From the full details page:
Delete planning item

a. Select the More Actions icon (
lect Delete.

) and se­

b. Click OK to confirm.
Information of certain columns that aren’t editable in the full details page, can’t be edited inline
too. For example, planned cost and planned benefit. These cells are visually differentiated
using grey color as their background.
If you group the Prioritization items list by any attribute, you can’t edit the short description of
the items directly from the grid view.
Rank planning items
Rank the planning items that are added to the pipeline of your portfolio plan to decide on their
priority so that you can start prioritizing work for your portfolio.

Before you begin
• Create a portfolio plan.
• Ensure that the planning items in the Prioritization List view are sorted by the Rank column in
ascending order.
Role required: sn_align_core.apw_user

About this task

Important: Use the List view to stack-rank the planning items of your portfolio plan.
Within the ServiceNow system, all the planning items are assigned a global rank. Reorder the
items in the Prioritization page to change their rank and update their planning state. If you decide
to include a planning item into your roadmap schedule, mark its Planning State as Prioritized to
add it to the roadmap directly from the Prioritization page.
The Rank column helps you quickly identify the rank of an item relative to the other items in the
backlog. This information is useful to determine the top-ranked items from a long list of planning
items. When there’s no custom grouping or sorting, the planning items are sorted by their rank,
and you can reorder the rows.

Note: Reordering of rows is not allowed if the planning items are already grouped or
sorted by any other attribute. Remove the grouping or sorting to reorder rows.

Procedure
1. Navigate to All > Strategic Planning > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. From the List view of the Prioritization tab, rank the planning items according to your priority by
rearranging their order.
Choice

Action

Reorder a single planning item

Use the Rearrange rows icon ( ) to drag and
drop the row to the required position.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

387


<!-- page 388 -->
Choice

Action

a. Use the Select row checkbox (
) to select
the items that you want to reorder.
b. Use the Rearrange rows icon ( ) to drag
and drop the rows to the required position.
Reorder multiple planning items at once

a. Use the Select row check box ( ) to select
the items that you want to reorder.
b. Select Rank Items.

Reorder multiple planning items using the
Rank items option

c. On the Rank items window, assign ranks
to the items based on the attributes such
as score, planned ROI, and so on, in an as­
cending or descending order.

Repeat this step until the ranking of the planning items align with your business priorities. To
get better visibility of data that you need:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

388


<!-- page 389 -->
◦ Sort or group the list by the required columns. See Personalize List view in the Prioritization
page
◦ Filter the planning items by applying filters.

Tip: Using the Row context menu (

), you can also assign the highest and lowest
ranks to the planning items using the Move to top and Move to bottom options
respectively.

What to do next
Prioritize work

Prioritize work
Review and prioritize the items of your portfolio plan pipeline to add them to the plan's roadmap
so that your teams can start working on them.

Before you begin
• Create a portfolio plan.
• Ensure that the planning items in the Prioritization page are sorted by the Rank column in
ascending order.
Role required: sn_align_core.apw_user

About this task

Review and prioritize the items in the List, Kanban, or Hierarchy views of the Prioritization tab
during your grooming sessions. You can use the MoSCoW values assigned to an item to help you
decide the priority of work.

Procedure
1. Navigate to All > Strategic Planning > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. From the Prioritization page, mark a planning item as In Review or Prioritized from one of the
following views.
View

Action

Update the Planning state field of the item.

List

Kanban

Move the item card into the Prioritized lane.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

389


<!-- page 390 -->
View

Action

Update the Planning state field of the item.

Hierarchy

For a high-level portfolio plan, you can’t edit
the Planning state inline. Select the short de­
scription of the item to open its Full details
page and then update the item's Planning
item.
After you mark a planning item as Prioritized, it’s automatically added to your portfolio
roadmap, based on the values in the Approved start date and Approved end date fields. Your
roadmap shows only those items that have their Planning state set to Prioritized.
◦ If the dates fall within the portfolio planning period, then the item is displayed on the
roadmap.
◦ If either of the date fields is empty, then the item is added to the Unscheduled items list of
the roadmap.
If you've marked an item as Done or Cancelled, that item isn’t displayed on the Prioritization
page by default. You can update the filter on the Planning state column to show the items that
are completed or canceled.
4. Optional: From the List view, you can update the planning state of multiple items at once.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

390


<!-- page 391 -->
a. Select the Planning state cell of one of the rows that you want to update.
b. Press and hold the Ctrl key (for Windows OS) or command key (for Mac OS), and select the
Planning state cells of the other rows that you want to update.
c. Double-click one of the selected cells and choose a state.

(Optional)
Categorize work items using tags
Categorize your planning items based on your requirement by adding tags.

Before you begin

Create a portfolio plan
Role required: sn_align_core.apw_user

About this task

Tags enable you to categorize planning items. You create the tag name, which should name the
reason for the tag. You can make the tags visible to everyone, some people, or just yourself. The
visibility setting specifies who can use the tags to search for planning items.
Any tagging additions or removals made to a planning item are automatically synced across all
views in the Planning page and in the Scoring page. After tagging planning items, you can use
the tags to search for planning items using the Filter option ( ) in the List view of Prioritization
and in the Scoring page.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. From the List view of Prioritization or Scoring, add a tag for a planning item using one of the
following options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

391


<!-- page 392 -->
Option

Steps

a. In the Tag column for the planning item you
want to add a tag, double-click the cell and
then enter a name for the tag.
b. Press Enter to add the tag.
The tag is added to the planning item.
From the List view of Prioritization or Scor­
ing

You can add more tags.

a. Select the name of the planning item that
you want to add a tag.
The Details page of the planning item
opens.
b. Select the Tag icon (
) next to the name
of the planning item in the form header.
c. In the Tags window, fill the Add Tag field
with a tag name.
d. Press Enter to add the tag.
From the Details page of a planning item

The tag is added to the planning item.
You can add more tags.

Note: The tag visibility setting defaults to private, which means the tag is only visible
to the user who created the tag. So, only the user who created the tag can use the tag to
search for planning items labeled with that tag.
4. To change the visibility setting of the tag, on the Details page of the planning item, select the
tag and change the Viewable by setting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

392


<!-- page 393 -->
Option

Description

Me

Tag is visible only to the person who created
the tag. Only the user who created the tag
can use the tag to search for planning items la­
beled with that tag. This setting is the default.

Groups and Users

Tag is visible to specific groups or users. You
can specify the groups and users who can
view this tag.
Tag is visible to everyone.

Everyone

Note: This visibility setting is only avail­
able to an admin or tags_admin role.

A planning item can have multiple tags and each can have a different visibility setting.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

393


