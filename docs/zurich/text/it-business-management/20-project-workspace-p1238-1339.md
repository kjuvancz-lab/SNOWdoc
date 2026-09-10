# Zurich Strategic Portfolio Management — Project Workspace

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1238–1339 of 2289

Sections: Project Workspace (p1238)

---

<!-- page 1238 -->
Property combinations for sub-project and parent project association (continued)
com.snc.project.rollup.cost

com.snc.project.multicurrency.rollup_if_different
Behavior

True

False

Cannot associate sub-project
to parent project if project
currency of the sub-project
and parent project is different.
In such case of an
association, an error message:
System policy does
not allow parent
and child projects
to have different
project currency pops
up.

Project currency in cost and benefit plans
The currency fields in cost and benefit plans defaults to the project currency of the project.

Entered currency field in cost and benefit plans
The Entered Currency field of the cost plan defaults to the project currency of the project if
multicurrency plugin is installed, irrespective of the views – default or functional currency.
However, if multicurrency plugin is not installed, the Entered currency field of the cost plan
defaults to the functional currency of the project.
Similarly, the Entered Currency field of the benefit plan defaults to the project currency of
the project if multicurrency plugin is installed, irrespective of the views – default or functional
currency. However, if multicurrency plugin is not installed, the Entered Currency field of the
benefit plan defaults to the functional currency of the project.

Project Workspace
®

ServiceNow Project Workspace helps project managers to plan and manage projects from a
central location.
The new Project Workspace comes with a Planning, Details, Financials, RIDAC, Analytics, Docs,
Status Reports, and Resources page.

Project Workspace Overview
The Project Workspace enables you to collaborate, plan, organize, and execute tasks in a single
workspace. This application provides the ability to create and monitor projects, tasks, subprojects, dependencies, and timelines. Project managers can allocate and optimize resources
within the Project Workspace and make sure that the right individuals are assigned to the right
tasks. With Project Workspace, you can plan and track your project finances, budgets, and cost
plans. This project management application helps in making informed and timely decisions by
providing relevant project information in one place.
Use playbooks to deliver a guided, stage-based experience within the project workspace.
Create a status report for your projects and run analytics for your projects. Experience the Gen AI
feature in Project Workspace. Summarize, elaborate, or shorten the selected content on Docs to
quickly understand the key information in documents using Project Gen AI Docs skill.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1238


<!-- page 1239 -->
Refine planning item descriptions using write items skill to improve the clarity and completeness
of your work item and reduce the rework due to missing or unclear planning item information.

Get started

Explore

Configure

Learn the features and business
value of Project Workspace

Set up the core configuration

Use

Reference

Manage projects with Project Workspace

Learn about forms and
fields of Project Workspace

Troubleshoot and get help
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Project Workspace
®

The ServiceNow Project Workspace application helps you to manage projects, resources, and
financials in a single workspace.

Project Workspace overview
Project Workspace is a project management application that optimizes different workflows and
enables planning and managing of projects or tasks, resources, and financials in one place. This
application centralizes access to Projects, subprojects, project tasks, resources, and financials,
reducing the need to navigate through various applications.
The Project Workspace provides Project Managers with a comprehensive overview of the all
projects and project-related information. This project management application enables better
project planning by providing ways to define project scope, dependencies, and time lines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1239


<!-- page 1240 -->
Project Workspace benefits
Benefit

Feature

Initiate a project and start planning your
project tasks.

Create a project and initiate project planning

Add project tasks to your project and assign
tasks directly to your team for successful
project implementation.

Create project tasks and add them to your
project

Add project task dependencies to establish a
structured workflow within the project.

Create internal dependencies for your project

Add a dependency between tasks of
different projects to align timelines between
interrelated projects.

Connect tasks in different projects through
external dependencies

Create and compare baselines for your project Set up a baseline for your project
to capture the project's progress over time.
Create a status report to monitor project
health, metrics, risks, issues, and milestones.

Create a status report in Project Workspace

Tag stakeholders for their feedback or notes
and add comments to collaborate on your
project.

Collaborate with Stakeholders for your project

Generate a summary of selected text in Docs
using Now Assist.

Generate the summary for selected
or complete content with Project doc
summarization skill in Project Workspace

Generate and schedule project summary
emails for your projects.

Schedule the project insights email

Add Risk, Issue, Decision, Action, or Change
request to your project to track and manage
the RIDAC records throughout project
development.

Add a RIDAC record to your project

Export your project as a PowerPoint file
directly from the workspace without copying
the project information in to slides.

Export a project to Microsoft PowerPoint

Create and track resource assignments at
project or task level to optimize resource
allocation throughout the project.

Create resource assignments and initiate
resources planning

Create a cost plan for the required duration to
monitor your projected and actual expenses.

Create a cost plan for your project

Add an expense line into project cost plans
to establish a comprehensive and detailed
financial framework for your project.

Add an expense line for a cost plan

Generate labor costs for attribute-based
resource assignments to track expenses for
your project.

Generate labor costs for your project

Collaborate with team members, save notes,
generate project charters, and create project
briefs using Docs.

Collaborate on projects using Docs

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1240


<!-- page 1241 -->
Benefit

Feature

Secure a project to ensure only authorized
users can access the project.

Enable security for a project in Project
Workspace

Configure and use playbooks in Project
Workspace to guide project teams through
standard project stages and activities.

Use Playbooks in Project Workspace

Related topics
Managing projects with Project Workspace
Managing financials for your projects
Resource planning with Project Workspace
Status reporting in Project Workspace
Project workspace classic - Legacy
Project planning in Project Workspace
Plan your projects with an intuitive Project Workspace application to achieve successful project
outcomes.
The Project Workspace application enables Project Managers to define, plan, and prioritize
projects, subprojects, project tasks within a single workspace.
The Project Workspace structures the project planning phase from defining the project dates
and milestones to allocating resources, scheduling tasks, and establishing dependencies.

Key benefits
Use the planning page to organize project tasks, allocate resources, and set project timelines. As
a project manager, you can:
• Initiate new projects, define project details, objectives, and initial plans to provide a clear
direction to the project team.
• Establish the project's structure within the workspace, including creating projects, subprojects,
tasks, milestones, and dependencies.
• Define the planned start date and end date for your projects.
• Allocate resources and analyze resource availability and utilization for projects.
• Monitor the progress of projects, subprojects, tasks, and milestones. Track the project's overall
advancement.
• Organize and manage project documentation and make sure that all relevant files, reports, and
data are easily accessible.
• Engage in financial planning, tracking budget allocations, expenses, and financial metrics.
Project task checklist items
Track the activities that must be completed on a task using the project task checklist items.
For a project task to be considered complete, you can track activities that do not require separate
sub tasks. For example, you have a human resources-related project that includes a task for
interviewing candidates. You can also track booking a meeting room or getting an interview
confirmation from the candidate. Create a checklist item for each and mark when they have been
completed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1241


<!-- page 1242 -->
Checklist items do not have start or end dates, nor do they track effort or cost. By default,
a checklist item record provides only a name with a check box, which can be selected or
unselected. The state of the project task is independent of the state of the checklist items.
Checklists, as well as tasks, are copied into a project template. You also have access to all
checklist templates from any project task form.
Related topics
Create checklist items for a project task
Playbooks in Project Workspace
Organize and guide project teams with Playbooks to maintain consistency, streamline projects,
and keep work on track.

Playbooks overview
A Playbook provides a guided framework that helps you follow a process step by step. It shows
what to do, when to do it, and where to find the tools or information required to complete each
task.
Playbooks provide a structured way to manage work by guiding teams through predefined
steps. You can apply a playbook to processes such as managing a project, resolving an issue,
launching a product, onboarding new employees, or define key steps of a process. For more
information on playbooks, see Workflow studio playbooks .

Playbook benefits
Use playbooks in Project Workspace to guide project teams through standard project stages and
activities and ensure consistency across all projects. For example:
• Set up a new project using predefined stages and action items.
• Provide self-educating guidance for first-time users.
• Verify key steps such as defining objectives, assigning tasks, and tracking deliverables are
completed on time.
• Support processes that require stage gating and control over each step.
• Combine with Flow Designer to set up different business logic for each playbook flow.

Types of Playbooks
• Project default
• Stage-gate default
Project default playbook is a free-form playbook where all stages and tasks are visible and
accessible to the project manager. The project manager can navigate to any stage or task at any
time. It serves as a standard framework playbook for managing project activities.
In a Stage-gate playbook, the stages and tasks must be completed in a linear order. Each stage
must be finished before moving to the next one. The stages are visible only when all activities
in the previous stage are completed or skipped. After completing a stage, project managers
can still return to previous stages if needed. This playbook is commonly used in research and
development projects.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1242


<!-- page 1243 -->
Related topics
Playbooks configuration
Use Playbooks in Project Workspace
Resource planning in Project Workspace
Plan and allocate resources using the Project Workspace application to enable optimal resource
utilization and execution.
The Resource Management application enables Project Managers to create resource
assignments, allocate resources, and analyze resource availability in Project Workspace. The
Resource Management application can be used along with Project Workspace for any project or
project tasks.

Key benefits
The Resource Management application provides visibility into resource assignments and
allocations in Project Workspace at any phase of the project.
With Resource Management in Project Workspace, you can:
• Assign resources at any stage of project development. Resources can be planned at a granular
level.
• Change resource assignment dates, resources, and efforts for resource availability at any
phase of the project.
• Create an attribute-based resource assignment in Project Workspace.
• View availability in the heatmap and make allocations based on the resource availability. The
allocations are color-coded to display the availability of the resources for a task.
• Request and allocate resources and verify resource availability on a single location in the
Project Workspace.

Resource Management workflow in Project Workspace
The Project Manager can create an attribute-based resource assignment in Project Workspace.
Any type of project task can be added to the resource assignment.
After a resource assignment is created, the project manager verifies resource availability, and
then assigns the resource to a resource assignment. If the resource isn’t available, then the
Project Manager coordinates with the Resource Manager for resource availability. If all parties
agree, the resources begin work. Project Managers can view the resource allocation in the
heatmap.

Note: After the resource assignment is created and has any requested allocations, a
resource plan is created automatically in the allocated state in the back-end. Either a new
resource plan and resource allocation are created, or an existing resource plan is retrieved
based on the attributes. As a result, its planned cost and allocated cost are matched, and
its planned and allocated hours are also matched. These resource plans aren’t displayed in
the Resource Allocation Workbench.
Financials in Project Workspace
Plan, re-forecast, track the financials, and create baselines for projects and demands.
The financials view provides a streamlined perspective, showcasing the actual and planned
expenses for the entire fiscal period. You can view the latest estimated cost of completion by
displaying the Actual costs for the past fiscal periods, planned costs for the current and future
fiscal periods, the totals for quarter, year, and total duration of work.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1243


<!-- page 1244 -->
The interface gives you the ability to create cost plans, expense lines, and baselines. As a project
manager or a financial user, you can:
• Enter high-level financial forecasts for planning items using the simple financials section in the
Details tab.
• Work on high-level estimating for Planned opEx and Planned capEx.
• Create a detailed breakdown of the planned costs using the financials.
• Add, edit, or delete cost plans from the side panel.
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
• Add or edit expense lines against the cost plans from the side panel with the associated cost
plan details pre-populated.
• Record unplanned expenses using the New expense line side panel.
• Create and compare financial baseline to track the financials of your projects while you
execute them.
• Compare the latest costs (actual expenses for past fiscal periods and planned costs for
current and future fiscal periods) with the initial forecasted planned costs by creating financial
baseline and using the compare baselines capability.
• Analyze the cause of variance in costs and when did this occur over time by capturing the
financial baselines manually or automatically.
Financials screen

You can view the following information on the financials screen.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1244


<!-- page 1245 -->
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
• Generate labor costs: one-click solution to generate or refresh the planned labor costs for the
planning item depending on resource assignments.

Note: This option is enabled for the projects with resource assignments only.
• The pane gives you a tabulated view of the cost plan attributes displaying the Name, Cost type,
Expense type, Stat fiscal period, End fiscal period, Total planned cost, Employee type, and
Role. You can customize these fields. For more information, see Customize the left pane view
for financials.
• In the right pane, you can view the total Actuals, Forecast, and Remaining Estimates for the
selected Time scope duration. Actual expenses against a cost plan for the past fiscal periods,
Actuals, Forecast, and Remaining Estimates for the current fiscal year, and planned costs for
the current and future fiscal periods.

Note: The header rows of actuals and planned are color-coded differently to help you
easily identify and differentiate between the expense types.
• New cost plan: opens a simplified side-panel to create a new cost plan for the entity.
• Personalize option to customize the columns in the left pane of the table.
• Export option to download Cost or Baselines comparison as Microsoft Excel or CSV file.
Status reporting in Project Workspace
A status report in Project Workspace is a snapshot in time that gives an overview of your overall
project health across key areas such as cost, resources, milestones, health, and more.
https://player.vimeo.com/video/1093765468?
h=414833d0a6&badge=0&autopause=0&player_id=0&app_id=58479
The Status reports in Project Workspace provide a comprehensive, configurable, and
customizable view of the current state of a project by capturing and displaying key project
metrics such as overall health, schedule, scope, cost, and resource utilization. Status reports
help project teams and stakeholders track progress, identify risks, and manage any projectrelated issues in real-time.
Status report main metrics
Metric

Description

Overall health

The general condition of the project (green,
yellow, or red).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1245


<!-- page 1246 -->
Status report main metrics (continued)
Metric

Description

Completion status

The percentage of project completion.

Schedule and scope

Key milestones and any changes in scope.

Cost metrics

Planned and actual costs, and budget
variance.

Resource utilization

Allocation and effort tracking for project
resources.

Key benefits
The status report feature in Project Workspace provides a clear view of the project’s overall
health, progress, and key metrics, confirming effective communication and tracking throughout
the project life-cycle.
With status reports in Project Workspace, you can:
• Gain improved project visibility by having a concise summary of key metrics such as schedule,
cost, and resource utilization, enabling stakeholders to track the progress.
• Facilitate better decision-making by providing a snapshot of the project’s current state, helping
project managers and stakeholders address potential challenges.
• Enhance risk management by highlighting any risks, issues, or variances, enabling teams to
respond proactively to project concerns.
• Maintain consistent communication across teams and stakeholders by delivering regular,
standardized updates, confirming everyone stays informed about the project's progress and
health.
• Increase efficiency through the use of templates that streamline the creation of reports, saving
time and confirming consistency across projects while enabling for customization as needed.

Status report templates
Status report templates simplify the process of generating project updates by providing predefined structures, confirming consistency and saving time. Two default templates are available:
• One Page Status Report: This template provides a concise one-page summary of key project
metrics, making it ideal for quick updates where a high-level overview is sufficient.
• Default Status Report: This template includes a more comprehensive range of data points,
covering areas such as milestones, risks, issues, decisions, and change requests. It offers a
detailed view of the project's progress and status, similar to a classic status report.
• You can create a status report using one of the existing templates: Create a status report in
Project Workspace
• You can also create your own status report template from scratch: Create a status report
template in Project Workspace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1246


<!-- page 1247 -->
Related topics
Analyze the status report in Project Workspace
Import old project status report to Project Workspace
Add dynamic content to status report in Project Workspace

Configuring Project Workspace
Set up and configure the Project Workspace application to initiate and plan your projects,
financials, and resources.
Related topics
Managing projects with Project Workspace
Managing financials for your projects
Resource planning with Project Workspace
Project Workspace reference
Configuring projects with Project Workspace
Set up the Project Workspace application and start planning on your project.
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Project Workspace
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
• Install Project Workspace.
Install Project Workspace
You can install the Project Workspace application (sn_pw) if you have the admin role.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Project Workspace
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
• Starting with Zurich release, installing the PPM Standard plugin also installs the Project
Workspace application.
• Ensure you have activated the PPM Standard plugin (com.snc.financial_planning_pmo).
Role required: admin

About this task
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Project Workspace application (sn_pw) using the filter criteria and search bar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1247


<!-- page 1248 -->
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

Planning attributes dependency plug-in is installed along with Project Workspace.
Playbooks configuration
Configure playbooks to organize project workflows, maintain consistency, and keep projects on
track.
Define a trigger condition in Workflow Studio to use a Playbook, either by selecting an existing
one or creating a Playbook.
In Project Workspace, Playbooks are triggered by record creation, record update, or both. For
example, a Playbook created for projects is associated with project records, and the Playbook
tab appears when a project meets the trigger condition. For more information on how to
configure a playbook, see Configuring playbooks .
There are two pre-defined project management playbooks available in the Workflow studio:
• Project default
• Stage-gate default
To configure playbooks, perform these tasks:
1. Navigate to Workflow Studio and select Playbooks.
2. Create and configure playbooks as per your requirement. For more information, see Create
and configure playbooks .
3. Activate one of the two pre-defined playbooks for the Project Workspace and define an
appropriate trigger condition. For more information, see Activate playbooks
and Triggers

.

Multiple playbooks can be enabled at a time, and the trigger should be defined in such a way
that each project is mapped to only one type of playbook. To activate a playbook, see Activate
playbooks .

Note:
When a project template is applied or project is created from a demand, the project
information is automatically copied into the project record and reflected in the Playbook.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1248


<!-- page 1249 -->
Related topics
Building playbooks
Designing playbooks
Playbooks in Project Workspace
Use Playbooks in Project Workspace
Configuring resources with Project Workspace
Configure various aspects of Resource Management based on your requirements in Project
Workspace to allocate resources for your project.
• Review the Project Workspace
application listing in the ServiceNow Store for information on
dependencies, licensing or subscription requirements, and release compatibility.
• Install Project Workspace.
• Ensure you’ve activated the PPM Standard plugin (com.snc.financial_planning_pmo).
• Ensure you have enabled attributes for Resource Management. For more information, see
Using the Planning attributes.
Configure financials for Project Workspace
Customize financials view, planning attributes, and activate scheduled jobs to work on the
financial planning for your projects.

Before you begin

Role required: admin

Procedure
1. Configure the attributes to generate labor costs in financials based on the resource
assignments on the work items.
For more information, see Using the Planning attributes and Create or edit planning attributes.
2. Generate default mapping configurations to create table maps.
For more information, see Generate default mapping configurations.
3. Enable the budget allocation for projects.
For more information, see Enable financial budget allocation for projects in Project Workspace.
4. Define the budget allocation attribute to allocate budget by cost type or expense type.
For more information, see Configure budget attribute at instance-level to allocate budget.
5. Enable the expense type attribute for resource assignments to capture relevant expenses for
the work.
For more information, see Enable expense type on resource assignments.
6. Create new widgets to view the rolled up financial data at planning item level.
For more information, see Configure a widget and associate it with project.
7. Optional: Customize the left pane in the financials screen to match the requirements of your
organization.
For more information, see Customize the left pane view for financials.
8. Customize the Create cost plan form fields to match the requirements of your organization.
For more information, see Customise cost plan form.
9. Customize the default expense types to manage cost plans for your projects and demands.
For more information, see Change the default expense type for projects.
10. Activate and define scheduled job to create financial baselines for your planning items.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1249


<!-- page 1250 -->
For more information, see Activate a scheduled job to create financial baselines for your
projects.
11. Activate and define a scheduled job to generate labor costs for your projects based on the
attribute-based resource assignments.
For more information, see Activate a scheduled job to generate labor costs for your projects.
Enable monetary benefit plans for projects
Enable the benefit plans property to create and manage benefit plans for planning items.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Properties > Properties.
2. Filter the Name column to locate and open
sn_invst_pln.enable_benefit_plan_in_new_financials property.
3. Enter true in the Value field.
4. Select the Update button.
Enable financial budget allocation for projects in Project Workspace
Enable allocation property after migrating to Next Experience to work on budget allocation for
your projects using Project Workspace.

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
budget allocations for your projects using Project Workspace.

Before you begin
• Enable the budget allocation property to work on budgeting for projects. For more information,
see Enable financial budget allocation for projects in Project Workspace.
• Role required: admin

Important: Existing customers cannot change the budget attribute to cost_type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1250


<!-- page 1251 -->
Procedure
1. Navigate to All > System Properties > Properties.
2. Filter the Name column to locate and open sn_invst_pln.budget_allocation_attribute
property.
3. Update the Value field to one of the following.
◦ cost_type - view financials by cost types such as Hardware Opex, External labor Capex,
Software Capex, Software Opex, and so on.
◦ expense_type - view financials by expense types such as Capex and Opex.
4. Select Update.
Enable expense type on resource assignments
Resource assignments have the same expense type as the project or demand for which they’re
created. Enabling expense type on resource assignments helps you to accurately expense
different type of expenses for your work.

Before you begin

Role required: admin

Procedure
1. Active and execute the scheduled job.
a. Navigate to All > System Definition > Scheduled Jobs.
b. Filter the name field to locate and open Update task type planning attributes on resource
assignments.
c. Select the Active option to activate the schedule job.
d. Edit the fields on the Scheduled Script Execution form to customize the job and meet your
requirements.
For more information about the field description and scripts, see Automatically run a script of
your choosing .
e. Select Execute Now to execute the scheduled job or select Update to save your changes.
2. Enable expense type on resource assignments.
a. Navigate to All > System Definition > Tables.
b. Filter the name field to locate and open the sn_plng_att_core_resource_assignment table
for resource assignments.
c. Select the Show List related link.
d. Select the Personalize List (

) icon.

e. In the Personalize List Column, add Expense type from the Available list to the Selected list.
f. Select OK.

Result

Expense type field is enabled on resource assignments for the projects and demands. You can
expense different expense types to record different work types such as Capex or OpEx.
Configure a widget and associate it with project
Enable and associate a widget to view financial summary of your projects at high-level.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1251


<!-- page 1252 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1252


<!-- page 1253 -->
6. Add or remove the fields in the Selected column to customize the left pane view in financials
view.
7. Select Save.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1253


<!-- page 1254 -->
Change the default expense type for your projects
Configure the default expense type to create or edit cost plans for your projects.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Properties > All properties.
2. Filter the name to locate and open the sn_plng_att_core.default.expense_type table.
3. Change the Value field to the required expense type and select Save.
Opex is the default value.
Create a custom prefix for baseline
Modify the prefix to customize the name of the baselines for your projects.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. Filter the name filed to locate and open sn_invst_pln.baseline_prefix.
3. Modify the Value field to create a custom prefix for your baselines.
If you’re working on a sales portfolio, you may change the Value field to Sales baseline
on.
4. Select Update.
Activate a scheduled job to migrate budget of your projects
Activate the Migrate budget for active demands and projects scheduled job to migrate budget
of active projects from Classic UI to Next Experience.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Filter the name field to locate and open Migrate budget for active demands and projects.
3. Edit the fields on the Scheduled Script Execution form to customize the job and meet your
requirements.
For more information about the field description and scripts, see Automatically run a script of
your choosing .
4. Select Execute Now to execute the scheduled job or select Update to save your changes.
Configuring security for a project in Project Workspace
Configure security in a project to make the project confidential to ensure that only the authorized
users can access the project and its sub projects and related entities.
You can make sensitive projects visible and accessible only to specified users and user groups.
The security settings applied to a project also apply to sub projects, forms, and related entities
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1254


<!-- page 1255 -->
of the project, ensuring that all project-related data remains protected and accessible only to the
authorized personnel.
To enable these advanced security features, you need to install the Project Advanced Security
plugin. The plugin requires the PPM Standard plugin as a prerequisite.
Related topics
Activate the Project Advanced Security plugin
Enable security for a project in Project Workspace
Activate the Project Advanced Security plugin
Activate the Project Advanced Security plugin to enable project security settings on a project.

Before you begin

Role required: admin

Procedure
1. Select All > System Definition > Plugins.
2. Search for Project Advanced Security and install it.
Related topics
Configuring security for a project in Project Workspace
Enable security for a project in Project Workspace
Enable security for a project in Project Workspace
Enable security in a project to make the project confidential to ensure that only authorized users
can access the project and its related sub projects and entities.

Before you begin

Install the Project Advanced Security plugin.
Role required: admin

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the Details page of the project by selecting Details from the list.
3. Scroll down all the way to locate Confidential and select it.
4. In the following fields, specify the users and user groups that can access the project.
Field

Description

Allowed users

Enter names of specific users you want to al­
low access to the project.

Allowed groups

Enter user groups you want to allow access to
the project.

You need to specify at least one user or user group for access.
The confidential project can be accessed by Allowed users, Allowed groups, the Assigned to
user, Additional assignee, the Project Manager, and the administrator.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1255


<!-- page 1256 -->
5. Select Save.
Once you make the project confidential, the confidentiality setting is applied to the project, all
sub projects, and entities such as cost plans, cost plan breakdowns, benefit plans, benefit plan
breakdowns, expense lines, time cards, status reports, baselines, story, investment object,
project tasks, resource plan, resource assignments, and RIDAC.
These will only be accessible to individuals who have been explicitly added to the project.
This setting applies to all associated workspaces. If the project is marked confidential in one
workspace, it is automatically made confidential across all other workspaces, including:
◦ Project Management Workspace
◦ Resource Management Workspace
◦ Strategic Portfolio Workspace
Related topics
Configuring security for a project in Project Workspace

Managing projects with Project Workspace
Use the features of Project Workspace to plan and manage your project.
Grid view of Homepage

List view of Homepage

The homepage contains the following UI components to help you navigate through the
workspace.
Project Workspace homepage UI
Feature

Grid view of projects (

Description

)

Opens the project in grid view or card view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1256


<!-- page 1257 -->
Project Workspace homepage UI (continued)
Feature

Description

List view of projects (

)

My Projects

Opens the project in list view.
This section displays all the projects that you own, including
subprojects.

All Projects

This section displays all projects in the system.
All projects include projects from customer projects, team
spaces, and audit.

Projects

This section displays only projects.

Subprojects

This section displays only subprojects.

Project cards

Each project is represented by a project card.
These cards display high-level details, such as the project
name, status, planned dates, and the manager that the project is
assigned to.

Project search

Option to search for projects by name or by the user it’s
assigned to.

Filter

Option to apply filters on the homepage. The filter preferences
that you choose are retained in the filter criteria.

Refresh

Reloads the homepage.

New

Option to create a project.

Planning header
The header displays the project name and provides the following various options.

Name

Description

Edit project details (

)

Opens the project details in the side panel to
edit.
See Create a project from Project Workspace.

Activity (

)

Facilitates conversation between different
stakeholders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1257


<!-- page 1258 -->
Name

Description

See Collaborate with stakeholders from
Project Workspace.
Attachments (

)

Enables you to add files to the project.
See Collaborate with stakeholders from
Project Workspace.

Refresh the project (
Save (

)

Reloads the planning page.

)

Saves your changes. This button is inactive by
default to facilitate auto-save of any changes
made to the project plans.
Enable or disable the auto-save functionality
from the Advanced tab of the Settings (
panel.

Resources not synced (

)

)

Enables you to synchronize the project and
resource assignment dates. When there’s a
change in the planned or actual dates of the
project tasks, this icon is enabled.
When the project has classic resource plans,
this icon is inactive by default.
Enable this toggle to display the resource
assignment pane.
Displays data in both grid and gantt view on
planning page. This button is active by default.
Displays data in Gantt view on planning page.
Use this button to change task dates and
dependencies.
Displays data in Grid view on planning page.
Use this button to add and delete tasks,
change task dates and dependencies, and
assess the progress of the overall project.

Baselines (

)

Enables you to create and compare schedule
and financial baselines.
See Create and compare project baselines in
Project Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1258


<!-- page 1259 -->
Name

Critical path (

Description

)

Toggle the button to switch on/off the display
of the critical path of the project.

Add Task

Adds a project task in the data grid.
See Create and assign project tasks from
Project Workspace.

Project actions (

)

Provides other actions to perform on the
project.
• Apply template
• Delete project
• Move project
• Duplicate project
• Import from MS project
• Export project
• Launch help video
• Calculate Completion Estimates
• Copy partial project

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1259


<!-- page 1260 -->
Name

Description

Synchronize the project's date with the start
dates of the associated resource plans, cost
plans, benefit plans, resource assignments,
project tasks, and subprojects using Move
Project.

Resource assignment pane
The resource assignment pane contains the following UI components to help you manage your
resources from Project Workspace.

Name

Refresh the resource assignment (

Description

)

Reloads the selected assignment and
allocation.
Displays the resource allocation in the
resource assignment pane.
Displays the effort type as FTE, Hours, or
Person days.
Displays the effort by week or month. This
button is displayed only when the Allocation
heatmap toggle is enabled.
Add a resource in the resource assignment
pane.

Data grid
The data grid shows the list of project tasks and subprojects in rows, and the following options
to perform actions on the rows. If a project has subprojects, you can drill down into the tasks and
scheduling of these subprojects too.

Option

Column actions

Description

Sort and filter the project tasks using the
actions on the header. Point your mouse
device to a column header to see the context
menu icon (

).

Using this menu, you can perform actions such
as autofit, hide, or reset.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1260


<!-- page 1261 -->
Option

Description

If you select the context menu (
) for certain
columns, such as Short description or State,
you can also filter the project task rows.

Rearrange rows (

Select row (

)

Enables the dragging of the project task rows
to a position of your choice on the grid.

)

Choose to select multiple project task rows at
once.
Use the row context menu (
various actions.

Row context menu (

)

) to perform

Provides various actions for the selected rows,
such as edit task, add task above or below,
delete row, add dependency, and more.
You can also select multiple rows and perform
an action on them at once, using the row
context menu. For example, indenting or
deleting multiple tasks.

Expanded row (

)

Indicates that a project task row is expanded
to show its child tasks. Select this icon to
collapse the row and hide the child tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1261


<!-- page 1262 -->
Option

Collapsed row (

Description

Indicates that the project task contains child
tasks. Select this icon to expand the row and
view the child tasks.

)

Reorder column (
Edit an individual cell

)

Reorders the columns of the data grid.
Edit or copy the info of this cell by selecting
the cell context menu (
(or right-click) a cell.

) or select and hold

Use this menu to copy and paste cell contents,
add dependencies, add project tasks directly
above or below this cell position, or delete the
whole row.
Edit multiple cells

Bulk-edit cells by selecting multiple cells and
select and hold (or right-click) one of the cells.
You can also use the cell context menu (
for more options.

)

Selecting a project task by selecting its short description opens the task details in a side panel,
enabling you to edit them. See Update a project task from the Project Workspace.
You can also increase or reduce the area occupied by the data grid by dragging the line that
separates them.

Timeline view
The timeline view shows the project timeline based on its planned start and end dates, and
displays the project task bars and milestones.
By using the planning settings ( ), you can choose to display the bar labels, dependency lines,
and the critical path. See Personalize the planning page view in Project Workspace.

Project timeline
The timeline shows the planned period of the project. You can reduce or increase the visibility
of the project period by changing the timescale to Year, Quarter, Month, Day, or Week. Select the
timescale icon ( ) and choose an option.
The timescale view that you choose is saved in the preferences.

Dependency lines
These lines show the dependencies between the project tasks. You can add new dependencies
by drawing them on the timeline view, or select an existing dependency to edit its details in
the side panel. See Add internal project task dependencies from Project Workspace. The
dependencies that you choose are saved in the preferences.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1262


<!-- page 1263 -->
Access the new Project Workspace
Learn how to navigate to the new Project Workspace and open a project in the planning page.

Before you begin

Install Project Workspace.
Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace.
2. Depending on the projects that you want to view, select My Projects or All Projects.
Projects on the homepage can be viewed in card or list view.
3. Select a project to open it in the planning page.

You can access and manage Planning, Details, Financials, RIDAC, Analytics, Docs, Status
Reports, and Resources using the menu that appears when you select the Projects icon. This
menu is also called as Level two (L2) menu.

What to do next

Create a project from Project Workspace
Create a project from Project Workspace
Use Project Workspace to create a project and start planning for your project tasks.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace.
2. Select New to create project from the homepage.
3. On the form, fill in the fields.
For field information, see Project form in Project Workspace.
4. Select Confirm.

What to do next
• Update the project details from Project Workspace
• Personalize the planning page view in Project Workspace
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1263


<!-- page 1264 -->
Update the project details from Project Workspace
Update the details of a project to reflect the updates or changed priorities using the details page
from Project Workspace.

Before you begin

Role required: it_project_manager

About this task

You can edit the Project, project dates, business case, financials, score, notes, and preferences
for a project. Use the related tabs on the details page to view and edit the Project tasks, Subprojects, Requirements, Resource Plans, Cost Plans, Monetary, and others.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the details page of the project by selecting Details from the left menu.
3. Edit the fields that you want to update.
In the Project Workspace, you can add stakeholders, extend or confirm a resource plan, and
add new resource allocations daily. You can also view the status report of the program and
save the project as a template with the Save as New Template option.
From the Project Workspace, you can create an Agile phase or a Test phase. You can also
create stories or add existing ones to the project, as well as add new epics.
You can refine project description using the write planning item skill if you have Now assist for
SPM application installed.
4. Select Save.
You can view the project or project task details from the side panel. Select Open task in the
new tab ( ) icon to open the project in a new tab. You can use the Full Details page to add
work notes, attachments, and view related lists of a project or task.
Use Playbooks in Project Workspace
Plan your project stages and assign specific actions to each stage using Playbooks.
https://player.vimeo.com/video/1156991435?
h=3b5cf5de67&badge=0&autopause=0&player_id=0&app_id=58479%22

Before you begin

Role required: admin or project_manager
As a system administrator, ensure that a playbook is activate or created before use.

About this task

A playbook defines the standard stages of a project (for example, Initiation, Planning, Execution,
Monitoring, and Closure) and includes activities or action items to complete at each stage.
There are two playbooks for Project Workspace. This task topic follows the Project default
playbook. It’s a PMBOK standard playbook comprising five stages: Initiation, Planning, Execution,
Monitoring and Delivering, and Closure. Each stage consists of activities, action items, or steps
that guide the project manager in successfully completing the project.
You can view the Playbook menu only if a playbook is active and the project matches the
trigger condition defined for that playbook. The playbook is displayed only when the project
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1264


<!-- page 1265 -->
meets the defined trigger conditions. Two playbooks are available in Workflow Studio for Project
Workspace.

Procedure
1. Navigate to Workspaces > Project Workspace and Create a project.
2. Use an existing playbook or create a new one.
◦ To create a new playbook, define the trigger condition in Workflow Studio. For more
information, see Triggers .
◦ To use an existing playbook:
a. From the menu, select Playbooks.
b. For each stage, select Mark complete, or Skip, or Save.

Note:
▪ Select Save to save the stage, or Skip to skip the stage.
▪ When you select Mark Complete or Skip, the activity becomes read-only.
▪ A stage is marked complete once all activities within it are either completed or
skipped.
▪ Use the Restart option (available at both the activity and stage levels) to revisit or
edit completed or skipped activities.
For more information on how to use playbooks, see Building playbooks
playbooks .

and Designing

Related topics
Running playbooks
®

Playbooks across ServiceNow AI Platform
Playbooks reference
Playbooks configuration
Playbooks in Project Workspace

Analyze project analytics from Project Workspace
View the summary of a project in Analytics tab of Project Workspace.

Before you begin

Note: The Project Summary Waterfall, Hybrid, and Scrum dashboards are available in the
Next experience UI framework.

Role required: it_project_user

About this task

The Analytics tab is a dashboard that showcases preconfigured widgets and reports to monitor
the progress of a project, including aspects like open risks, actual costs, and delayed milestones.
The reports aggregate data from the fields in the project form. For details on the various widgets
and reports available for different project types, see the Project analytics widgets and reports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1265


<!-- page 1266 -->
Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the analytics page of the project by selecting Analytics from the list.

3. Review the displayed reports and take necessary actions, if required.
Widgets and reports for project analytics
Widgets and reports that provide information for the project summary in the Analytics page of
the project workspace for Agile, Waterfall, and Hybrid projects.

Project widgets and reports
Widgets and reports provide information that enables you to view and track the progress of your
Agile, Waterfall, and Hybrid project.

Note: You must have the Agile Development 2.0 plugin installed to view the widgets and
reports for your Agile and Hybrid projects. The Project Summary Waterfall, Hybrid, and
Scrum dashboards are available in the Next experience UI framework.
Your system administrator can configure the widgets and reports in the dashboard to display
project information on the Analytics page. The following dashboards are available:

Project Execution Type

Dashboard Displayed

Description

Hybrid

Project Summary – Hybrid

Contains reports and widgets
for hybrid projects.

Agile

Project Summary – Scrum

Contains reports and widgets
for agile projects.

Waterfall

Project Summary – Waterfall

Contains reports and widgets
for waterfall projects.

Note: This dashboard
was previously known
as Project Manager
Summary Dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1266


<!-- page 1267 -->
The project execution type determines the dashboard displayed on the Analytics page.
You can also embed a custom dashboard in the Analytics page. Your system admin can
modify the PMViewDataUtils script include and configure the variable value for the
dashboards_tabs in the getDashboardUrl method. As a result, you can view the custom
dashboard in Project Analytics. For example:
var dashboards_tabs =
{
waterfall: {
dashboard_sysId:
'5d4959dd878003008b9b3a0548cb0bd0',
tab_sysId:
'1d99d5dd878003008b9b3a0548cb0bbd'
},
hybrid: {
dashboard_sysId:
'96dc46c78700330047d84c2c59cb0bf1',
tab_sysId:
'520d4ac78700330047d84c2c59cb0bab'
},
agile: {
dashboard_sysId:
'f3dd4ec78700330047d84c2c59cb0b93&tab',
tab_sysId:
'52fd8ec78700330047d84c2c59cb0bae'
},
any_other_executionType: {
dashboard_sysId:
'custom_dashboard_sys_id',
tab_sysId:
'custom_dashboard_tab_sys_id'
},
};
The following widgets and reports for all project types are provided in the Analytics page to help
the project manager analyze the project.
Widgets and reports for Agile project
Name

Description

Stories Missing Acceptance Criteria

Number of stories in the project without
acceptance criteria information.

Stories Missing Points

Number of stories in the project with the
Points field blank.

Stories Acceptance Overdue

Number of stories in the project that are not
in the Completed or Cancelled state after the
sprint end.

Team-wise Sprint Status

Track the sprint-wise status of various scrum
teams across the release. Click the team name
to view sprint details.

Stories by State

Donut chart showing the number of stories in
different stages of development such as Draft,

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1267


<!-- page 1268 -->
Widgets and reports for Agile project (continued)
Name

Description

Ready, and WIP. Click the appropriate state to
view details of the stories.
Progress by Points

Track the progress of the project based on
points. You can group and stack stories based
on any combination of Epic, Assignment
group, and State.

Progress by Stories

Track the progress of the project based on the
number of stories. You can group and stack
stories based on Epic, Assignment group, and
state.

Widgets and reports for Waterfall and Hybrid project
Name

Description

Issues

Number of issues in the Pending, Open,
and Work In Progress states included in the
project.

Actions

Number of action items in the Pending, Open,
and Work In Progress states for the project.

Change Requests

Number of change requests in the Pending,
Open, and Work In Progress states for the
project.

Stories by State

Pie chart showing the number of stories in
different stages of development such as Draft,
Ready, and WIP. Click the appropriate state to
view the details for the stories.

Note: This widget is applicable for
Hybrid projects only.
Tasks by State

Donut chart showing the number of project
tasks in different stages of development such
as Pending, Open, Work In Progress, and
Closed Complete. Click the appropriate state
to view the task details.

Project Member Allocation Details (Hrs)

Stacked bar chart showing allocated and
actual hours of the resources assigned to the
project.

Project Member Allocation Details — Monthly
(Hrs)

Pivot chart showing the monthly allocated and
actual hours for the resources assigned to the
project.

Task Assignments

Track the state of various project tasks across
the release based on the assigned users or
group. Click the user or group name to view
the details of the assigned tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1268


<!-- page 1269 -->
Widgets and reports for Waterfall and Hybrid project (continued)
Name

Description

Resource Plans by State

Donut chart showing the number of resource
plans grouped according to their current state.

Overdue Tasks and Milestones

List of overdue project tasks and milestones,
which are the tasks that satisfy either of
the following conditions in the Project Task
[pm_project_task] table:
• The value of the Planned start date is
before today's date and the State value is
Open or Pending.
• The value of the Shadow field is set to false.

Upcoming Tasks (next 2 weeks) with no
assignee

List of unassigned Open or Pending project
tasks that are planned to start 14 days from the
current date.

Common widgets
Name

Description

Phase

Current state of the project such as Initiating
or Planning.

Status

Color indicator that signifies the status of the
project.

Percent Complete

Percentage of the project that has been
completed.

Time Elapsed

Amount of time that has passed while working
on the project from the actual start date to the
planned end date.
If the project is in the Open or Pending state,
then the time elapsed is calculated based on
the Planned start date and the current date.

Risks

Number of risks in the Pending, Achieved, and
Not Achieved states concerning the project.

Cost Trend Analysis

Line graph showing a comparison between
the planned costs and actual costs on a
monthly basis.

Monetary Benefit Trend Analysis

Line graph showing a trend of planned
financial benefits on a monthly basis.

Non-monetary Benefit Plans

Breakdown of the number of non-monetary
benefit plans for active projects along with its
associated benefit plans.

Non-monetary Planned vs Actual Benefits

Comparison of total planned and actual nonfinancial benefits for active projects grouped
by fiscal period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1269


<!-- page 1270 -->
Common widgets (continued)
Name

Description

Confirmed vs Allocated vs Actual Hours

Comparison of total confirmed, allocated, and
actual hours for the project.

Time Cards — Pending Approval

Time cards for the selected project that are
submitted but not yet approved.

Time Card — Exception Report

List of users who did not submit their time
cards for the selected project, and time cards
that are not yet approved for the selected
project. The exception report is generated for
users who are assigned to a task in progress,
or hard-allocated to the project or task.

Personalize the planning page view in Project Workspace
Customize the display of the planning page. Choose the data you want to see on the data grid
and the timeline.

Before you begin

Role required: it_project_manager

About this task

Steps 2 through 4 provide guidance on customizing various aspects of the workspace. Choose
the options that you want to apply.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Use the side panel to customize your planning page view.
a. Select the Settings icon ( ).
The Settings side panel opens.
b. From the Columns tab, select the columns that you want to see on the data grid of the
planning console.
These columns provide information of the project tasks.
c. From the General tab, choose the attributes that you want to see on the timeline view, such
as the dependency lines, critical path, or the project task names on the bars.
Use the Display summary task option to show all the project tasks grouped under one project
summary task.
d. From the Advanced tab, choose to enable the auto-save option, change the date format for
the planned date columns, and change the mode of calculation as Manual or Automatic.
You can change the calculation mode from Automatic to Manual, from the workspace, only if
the project has no tasks.
3. View additional columns to the project tasks in the planning page view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1270


<!-- page 1271 -->
If you want additional columns to be displayed in the planning page view, other than those
fields available in the side panel, you can do so by customizing the Project Workspace view of
the project task list (pm_project_task_list.do). See Add new columns to the planning page.

Note: You can personalize your settings for timescale, Displaying summary tasks, Bar
labels, and Dependency lines. Any changes you make to the Display summary task
settings and timescale view is saved in the preferences.
4. Reduce or increase the visibility of the project period on the timeline by changing the
timescale.
Select the timescale icon (

) and choose from Day, Week, Month, Quarter, Year, or Autofit.

Add new columns to the planning page
Display new columns on the planning page of the new project workspace so that your project
managers can view custom fields for the project tasks on the planning page.

Before you begin

Role required: it_project_manager

About this task

The project tasks displayed in the planning page of the new project workspace show the fields
as per the Project Workspace view of the pm_project_task table. To display new fields, you must
personalize this Project Workspace view of the pm_project_task table.

Procedure
1. Navigate to pm_project_task_list.do.
2. Change the view to Project Workspace.
a. Right-click the header and select View.
b. Select Project Workspace
3. Add the necessary columns to the list.
a. Select the Personalize List icon (

).

b. Move the required fields from Available to Selected.
c. Select OK.

Result

The Project Workspace view of the pm_project_task table is updated as per your changes. The
planning page of the new project workspace reflects these changes.
Create and assign project tasks from Project Workspace
Add new tasks for your projects and assign them to your team directly from the new Project
Workspace.

Before you begin

Role required: it_project_manager

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1271


<!-- page 1272 -->
2. Select Add Task.
A new row is added to the bottom of the data grid of the planning page, with New Task as the
default name for the task.
Alternatively, select a project task row and click the Add task below
icon (

). This action adds a new task right below the task that you

selected.
3. Edit the details of the task.
For example, task name, planned dates, assigned to, and others.
4. Optional: Press the Enter key to save the details and create a row for another task.
5. Click anywhere on the data grid outside the task fields to save the details.
6. Assign a task to a user by updating the Assigned to field.
The user who is assigned this task to, is sent an email notification and is also notified in the
®
ServiceNow instance when they log in.
For notifications to work, your admin must enable them by setting the Project task assigned to
notification record as true in Email Notifications and Provider Notifications.

What to do next
• Make the new task a subtask of an existing task or a sub project by using the indent task
icon(

).

• Update a project task from the Project Workspace.
Update a project task from the Project Workspace
Update the details of existing tasks from the planning page of the Project Workspace.

Before you begin

Role required: it_project_manager, it_project_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1272


<!-- page 1273 -->
Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. From the list of tasks on the data grid, select a task that you want to update.
The task details open in the side panel.
3. Edit the fields.
4. Select Update.
Create checklist items for a project task
Create checklist items for a project task to track items to be completed in the task.

Before you begin

Role required: it_project_user, it_project_manager

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Navigate to a project task.
3. From the Planning page, select Add items in the Checklist section and enter a name for the
item.
You can also add checklist items from Details page. Select project tasks and then select the
checklist icon ( ) from the side panel to add checklist items. You can add, edit, organize, or
remove checklist items as needed.
4. Select Save to save the checklist items.
To edit a checklist item for a task, select Edit in the checklist section. This option appears when
there is at least one checklist in the Checklist section. To remove a checklist from the project
task, select the Edit and select remove item icon (

).

Related topics
Project task checklist items
Add internal project task dependencies from Project Workspace
Create dependencies between project tasks using the interactive UI of Project Workspace.

Before you begin

Ensure that you have the Dependency Lines toggle enabled on the settings of the timeline. For
information on how to update the settings, see Personalize the planning page view in Project
Workspace.
Role required: it_project_manager

Procedure
1. Select a project to open it from the planning page.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Create task dependencies in one of the following ways.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1273


<!-- page 1274 -->
Option

Action

Use the dependency type-ahead feature.
a. Double-click the dependency cell of the
project task.
From the data grid

b. Select the task to set as a dependency to
this task.
c. Select the type of dependency to be ap­
plied.
d. Select the lag period to be applied to the de­
pendency.
Draw a dependency line.
a. Place the cursor on the task bar for which
you want to create the dependency.
b. Draw a line from the circle on one end of
the bar and drop it on the circle of the de­
pendent task bar.

From the timeline view

The created dependency is shown as a line between the two task bars, on the timeline view.

What to do next

You can edit the dependency. For more information, see Update the dependency details for
tasks from Project Workspace.
Update the dependency details for tasks from Project Workspace
Update the details of the dependency including its type and lag time from Project Workspace.

Before you begin

Role required: it_project_manager

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the dependency side panel in one of the two ways.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1274


<!-- page 1275 -->
Option

Action

From the data grid

From the dependency column, select the de­
pendency of the task.

From the timeline view

Select the dependency line.

3. Edit the fields.
4. Select Update.
Add external dependencies between projects from Project Workspace
Set up a dependency between tasks of different projects using the new Project Workspace.

Before you begin

Role required: it_project_manager

About this task

External dependencies help you understand the impact on project schedules when there
is a change in the predecessor task. Use the row context menu of your project task to add a
dependency from the task of a different project.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. From the data grid, select the project task to which you want to add the dependency.
3. Select the row context menu (

) of the task and select Add external dependency.

4. On the External Dependency form, select the Project to which the external task belongs.
5. Select the Task for which the dependency is added.
6. Select the Dependency type.
7. Select Submit.
The default selection is Hard. In a hard dependency, any changes made in the predecessor
project are automatically propagated to the successor project.

Result
• Dependency is created for the tasks of the two projects.
• The short description of your project is greyed out and is renamed to indicate the external
dependency in the format of External project name: External task name
• A link icon (

) is added to the short description cell of the task, to indicate the dependency.

What to do next

You can navigate to the external project directly from the current project to view the status or
update the details of the predecessor task. From the row context menu of the dependent task,
select View project.
Related topics
Adding external dependencies for projects

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1275


<!-- page 1276 -->
Create and compare project baselines in Project Workspace
Create a schedule baseline and financial baseline of a project. A baseline is a snapshot of the
project's progress at the particular moment of time.

Before you begin

Role required: it_project_manager

About this task

Create as many baselines as necessary to review the changes made to and progress of your
project by comparing these baselines. Comparing baselines helps you understand the real-time
deviations between planned and actual values of the project tasks.

Note: If your project has sub projects in it, you cannot create baselines for them from the
planning page view.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Create a baseline for the project.
a. Select the Baselines icon (

).

b. Select Create new.
c. On the form, fill in the fields.
Provide the name and description for the baseline, and select Schedule baseline or
Financial baseline, or both.
d. Select Save.
A baseline is created for the current day and is listed when you select Baselines (

).

3. Compare baselines for the project.
a. Select the Baselines icon (

).

b. From the list of available baselines, select the ones that you want to compare.
You can select up to two baselines.
c. Select Apply.
◦ On the timeline view, the baseline appears as a set of grey lines below the task bars. These
grey lines represent the planned dates while the task bars represent the actual dates.
◦ On the grid view, you can add the columns related to baselines that show the following
information of the selected baselines. You can select these columns from the Settings side
panel (

)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1276


<!-- page 1277 -->
▪ Start date
▪ End date
▪ Variance
Trouble?
If you don't see the baseline columns on the data grid, refresh the workspace using the
Refresh icon

.

Create a status report template in Project Workspace
Create a custom template for status reporting in Project Workspace. Use the template to create
status reports according to your specific requirements.

Before you begin

Role required: it_project_manager

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Select Doc Templates

.

3. Select New.
4. On the Create new document template form, fill in the fields.
For a description of the field values, see Create new document template form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1277


<!-- page 1278 -->
5. Select Save.

Note:
In the Project Workspace, the it_project_manager role is required to create a document
template. The option to create a document template from the Project Workspace is
available only to users with the Project Manager role.
If your role has create access to document templates at the platform level, you can still
create a template even without the it_project_manager role. While it_project_manager
controls visibility within the Project Workspace, the ability to create templates is ultimately
governed by platform-level Access Control Lists (ACLs).

Result

The template you created appears as an option when you try to create a status report: Create a
status report in Project Workspace.
Related topics
Status reporting in Project Workspace
Create a status report in Project Workspace
Analyze the status report in Project Workspace
Duplicate a status report in Project Workspace
Import old project status report to Project Workspace
Add dynamic content to status report in Project Workspace
Create a status report in Project Workspace
Create a status report in Project Workspace for your projects. Your team can view the report and
be updated on project health, metrics, risks, issues, and milestones.

Before you begin

Role required: it_pps_admin, it_project_manager

About this task
Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the Status reports page of the project by selecting Status Reports from the list.
3. From the Pages section, select Create status report.
4. Optional: To create status report from a template:
a. From the Pages section, select Create new from template from the drop down.
b. From the "Welcome to your Template Center!" screen, select Use for the template that you
want to use.
5. On the Create status report form, fill in the fields.
For a description of the field values, see Create status report form.
6. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1278


<!-- page 1279 -->
Note: The status report appears with the data and information that you entered
populated in the default status report template. You can replace the existing default
template with your desired template and set it as default by updating the sys id in value
field of system property (sn_pw.project_status_report_default_templateId).
7. Optional: Select the More actions icon and then perform these steps.
a. Select Export as PDF to share and archive a PDF version of the report.
b. Select Keyboard shortcuts to view keyboard shortcuts on status report
c. Select Hide Live Presence to hide the live presence.
d. Select Edit status report to open and edit the status report.
e. Select Duplicate status report to create a copy of status report.
(Optional) You can’t edit the status report. To edit the status report, you can disable the
status report read-only system property (sn_pw.status_report_doc_read_only). By default, it
is set to true, and the status report is read only.
8. Make changes to the report by editing the data, formatting, organizing the content, and
entering additional data.
The changes you make to the status report here are saved to the underlying status report
record, which you access from the status report related list in Projects form.
9. Observe and monitor the report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1279


<!-- page 1280 -->
For more information on viewing and analyzing status reports, see Analyze the status report in
Project Workspace.
If you don’t have old status reports, you can't see the import option. For more information on
importing existing status report, see Import old project status report to Project Workspace.
Related topics
Add dynamic content to status report in Project Workspace
Status reporting in Project Workspace
Analyze the status report in Project Workspace
Import old project status report to Project Workspace
Create a status report template in Project Workspace
Analyze the status report in Project Workspace
Observe a status report in Project Workspace for your project to learn about project health,
metrics, risks, issues, and milestones.

Before you begin

Role required: it_pps_admin, it_project_manager

About this task

The following are the headers in a report created using the Default status report template. A
report created using the One-page status report template has fewer information headers.

Aspect

Description

Overview

View a high-level summary of the project,
including key details such as phase, health,
and % completion.

Key Milestones

Track critical project milestones, comparing
planned vs actual dates and identifying any
variances.

Cost (Planned vs Actual)

Compare planned project costs to actual
expenditures over time, helping identify
budget deviations.

Resources (Allocated vs Actual)

Analyze planned resource allocation versus
actual usage, helping identify resource over/
under-utilization.

Schedule

Evaluate the project’s timeline, identifying
delays and comparing planned vs actual task
completion.

Risks

Assess potential risks, their probability,
impact, and current mitigation plans.

Issues

Identify ongoing issues affecting the project,
with ownership and target resolution dates.

Dependencies

Assess external or internal factors that could
impact the project’s progress or completion.

You can also compare two reports to compare and analyze the progress.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1280


<!-- page 1281 -->
Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the Status report page of the project by selecting Status Reports from the list.
3. From the Pages section, select the name of the status report you want to view.
4. Observe and monitor the report.
Related topics
Status reporting in Project Workspace
Create a status report template in Project Workspace
Create a status report in Project Workspace
Update status report in Project Workspace
Import old project status report to Project Workspace
Add dynamic content to status report in Project Workspace
Update status report in Project Workspace
Modify a status report in Project Workspace for your project to update project health, metrics,
risks, issues, and milestones.

Before you begin

Role required: it_pps_admin, it_project_manager

About this task

By default, the status report is read-only and the

sn_pw.status_report_doc_read_only system property is set to true. To edit the status
report, you can disable this system property by setting it to false. Once you change the property
to false, you can edit or update the report. You can also navigate to the Details page and set
Allow edit status report field to true.
Any updates made on the status report form are reflected in the status report, regardless of
whether the property is set to true or false.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the Status reports page of the project by selecting Status Reports from the list.
3. From the Pages section, select the name of the status report you want to update.
4. Select the More actions icon and select Edit status report to edit the status report.
◦ When editing is disabled, all fields in the status report are read-only.
◦ When editing is enabled, only dynamic fields in the status report remain read-only and you
can add any static or manual information in the report.
◦ You can still edit the dynamic fields in both the scenarios using Edit Status Report option.
5. Make changes to the report by editing the data, formatting, organizing the content, and
entering additional data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1281


<!-- page 1282 -->
To edit the sn_pw.status_report_doc_read_only
property, enter sys_properties.list. In the list, search for
sn_pw.status_report_doc_read_only. You can modify the Value field and select
Update.
If the existing status reports are incompatible with the new changes, following actions are
taken. These actions are applicable on both status report and project status form:
◦ If a report is read-only, it automatically updates to the new format without notification.
◦ If a report is editable, a message appears prompting you to copy the static data and
regenerate the report.
◦ A Regenerate button is provided, which allows you to regenerate the report and ensure
compatibility with the new updates.
Related topics
Import old project status report to Project Workspace
Add dynamic content to status report in Project Workspace
Duplicate a status report in Project Workspace
Save time by duplicating an existing status report to copy all the project details without having to
copy the information manually in the Project Workspace.

Before you begin

Role required: it_project_manager

Procedure
1. Create a status report in Project Workspace.
The status report appears with the data and information that you entered populated.
2. Optional: Make changes to the report by editing the data, formatting, organizing the content,
and entering additional data.
(Optional) The changes you make to the status report here are saved to the status report in the
project workspace and also get saved to the underlying status report record, which you access
from the status report related list in Projects form.
3. Select the More actions icon and select Duplicate status report to create a copy of status
report.
◦ The duplicated report reflects the latest project status and metrics.
◦ Any static or manually added information from the original report is retained in the
duplicated version.
◦ The dynamic data refreshes to the current date and shows the latest information.
The new status report is added to the same location as the original status report.
Related topics
Status reporting in Project Workspace
Analyze the status report in Project Workspace
Import old project status report to Project Workspace
Add dynamic content to status report in Project Workspace
Create a status report template in Project Workspace

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1282


<!-- page 1283 -->
Import old project status report to Project Workspace
Migrate your old status reports from the classic Project Workspace to the new Project Workspace
and optimize reporting process of your projects.

Before you begin

Role required: it_pps_admin, it_project_manager

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the Status reports page of the project by selecting Status Reports from the list.
3. From the Pages section, select Create status report and select Import existing status report.
By default, the create status report and create new from template options are visible, while the
import existing status report option appears only if an old status report exists.
4. Select Import to import old status report to new reporting tool.
You can export a status report at the project level from the classic Project Workspace using
the Export status reports to Next Experience link. You can export a status report at the record
level using the Export to Next Experience link.
Related topics
Add dynamic content to status report in Project Workspace
Create a status report template in Project Workspace
Update status report in Project Workspace
Analyze the status report in Project Workspace
Duplicate a status report in Project Workspace
Add dynamic content to status report in Project Workspace
Add dynamic content to a status report in Project Workspace for your projects. The dynamic
content gets updated automatically in the status report as a change is made to the record.

Before you begin

Role required: it_pps_admin, it_project_manager

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the Docs template page of the project by selecting Docs template from the list.
3. From Docs template page, select the template to open it.
4. Select Doc tab and click at the appropriate place and then type / (forward slash) to open a
list of actions, including Mention a user or Mention a record or Insert dynamic content as
required.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1283


<!-- page 1284 -->
a. You can type in / (forward slash) and select Mention a user to tag a user.

b. You can type in / (forward slash) and select Mention a record to insert a record.

Once you insert a record, it is embedded as a link, which you can click to open the related
record and see its details.
c. You can type in / (forward slash) and select Insert a dynamic content to add insert dynamic
content in the status report.

Using insert dynamic content option, you can configure and view the status date, project,
and other dynamic data in your status report template. This option is only available if Is
dynamic field is selected in the Doc template form. You can select formatting options such
headings, bullets, and others.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1284


<!-- page 1285 -->
5. Observe and monitor the report.
For more information on viewing and analyzing status reports, see Analyze the status report in
Project Workspace.
Related topics
Status reporting in Project Workspace
Create a status report template in Project Workspace
Create a status report in Project Workspace
Analyze the status report in Project Workspace
Duplicate a status report in Project Workspace
Import old project status report to Project Workspace
Collaborate with stakeholders from Project Workspace
Add comments and attachments to the project or a project task and share them with other users
of your organization. Collaborate and ensure that your project is in line with your organizational
priorities.

Before you begin

Role required: it_project_manager

About this task

Browse and upload files from your computer. Add comments and tag stakeholders for their
feedback or notes.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Attach files to your project or project task.
Option

Action

a. Select the Attachments icon (
planning console header.

) from the

b. Upload a file from your computer.
Project

i. Select Browse if this is the first attach­
ment for the project.
Else, select the Add File icon (

).

ii. Browse and upload a file.

Project task

a. Select a project task to open its details in
the side panel.
b. Navigate to the Attachment tab.
c. Upload a file from your computer.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1285


<!-- page 1286 -->
Option

Action

i. Select Browse if this is the first attach­
ment for the project.
Else, select the Add File icon (

).

ii. Browse and upload a file.
3. Add comments or tag stakeholders to draw their attention to an attachment or information
about the project.
You can add comments directly at the project level or for a project task.
Option

Action

a. Select the Activity icon (
ning header.
Project

) from the plan­

b. Enter your comments in the text box.
If you want to address your comments to a
user, @-mention their name in the comment
directly.
c. Select Post Comments.
a. Select a project task to open its details in
the side panel.
b. Navigate to the Activity tab.

Project task

c. Enter your comments in the text box.
If you want to address your comments to a
user, @-mention their name in the comment
directly.
d. Select Post Comments.

Collaborate on projects using Docs
Collaborate with team members, save notes, create project charters, and project briefs using
Docs.

Before you begin

Role required: it_project_user

Procedure
1. Open a project in Project Workspace.
For more information, see Access the new Project Workspace.
2. Open the docs page of the project by selecting Docs from the list.
3. From the Pages section, select Create page and then select Create Page from template if you
want to add a template for your document.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1286


<!-- page 1287 -->
4. You can perform these tasks under the Docs page:
◦ Use the forward slash on the keyboard to open a list of actions, including Mention a user or
Mention a record as required.
◦ Use the feature of live presence to see who is opening or working on a Doc.
◦ Create templates for documents such as project charters, project briefs, and meeting notes.
◦ Add meeting notes to record discussions, decisions, action items, and any relevant
information discussed during meetings.
◦ Store information related to your tasks, add images, or tables and collaborate in real-time
using Docs.
◦ Select the more actions menu to delete, duplicate, or create child pages in the pages
section.
◦ Apply rich text paragraph formatting, which includes headings, lists, alignment, and other
styling options.
Generate the summary for selected or complete content with Project doc summarization skill
in Project Workspace
Quickly learn the details of the documents from the summary that is generated by Now Assist in
Strategic Planning.
https://player.vimeo.com/video/1038147968?
h=9451c75819&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1287


<!-- page 1288 -->
Before you begin

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. This change simply
activates the skill and does not touch the roles that are needed to use the skill. The new
default behavior works as follows:
New customers
When you install a Now Assist product, designated skills will turn on
automatically.
Existing customers who are upgrading
Any previously unconfigured skill will turn on automatically (the skill was never
turned on, then off again).
There is no change to Now Assist skills that are currently enabled and
customized.
Previously configured skills that were turned on, then off, will remain inactive.
Role required: it_project_user
If you have users with custom roles that need access to this skill, you must update ACLs for those
roles.

About this task

Minimize the time that you spend reading documents, meeting notes, project reports and so on
by using a summary that is generated by Now Assist. You can also copy-and-paste the source
materials that meet your learning needs in Docs and generate a quick summary.

Procedure
1. Navigate to Workspaces > Project Workspace and open the required project.
2. From the Docs, perform one of these action according to your requirements.
Gen AI actions

Procedure

Summarize the entire page or complete con­
tent from the Docs tab:
a. Select Summarize.
b. Select Done.
Summarize

Summarize the selected text from the Docs
tab:
a. Select the content that you want to summa­
rize and then select Now Assist.
b. Select Summarize.

Elaborate

Elaborate the selected text by selecting Elabo­
rate.

Shorten

Shorten the selected text by selecting Short­
en.

Insert below

Add the generated summary after the select­
ed content by selecting Insert below.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1288


<!-- page 1289 -->
Note: Summarization of the entire content is also permitted for users with the read role.
3. Optional: When you're finished summarizing the page in Docs, you can provide feedback,
copy, or view information about it.
Option

Procedure

If you think that the summary was helpful, se­
lect the helpful icon (
). If you think that the
summary wasn’t helpful, select the not helpful
icon (
Provide feedback for the summary

More information on summary

Copy the Docs summary

).

This feedback improves the generative AI
model and can help to improve the future
versions of this skill. The system gathers the
feedback on each generated summary and
stores it in the generative AI logs (sys_genera­
tive_ai_log_list.do).
If you want to check some details about the
summary, select the more info icon (

).

Select the copy to clipboard icon (
) to
use the summary information for another pur­
pose, such as pasting it into an email.

Note: Because the information in these fields is AI generated, it's a good idea to review
the text and make sure it's accurate.
Only an administrator can activate the Now Assist skills. For more information, see Configure
Now Assist for Strategic Portfolio Management (SPM).
The Project doc summarization skill checks the doc content to determine if enough information
is available to generate a summary. If there isn't enough content to summarize, you can add
more content and retry.

Note: The Summarize button is visible only if the Project doc summarization skill
is active. If the selected text exceeds the token limit for Now Assist, the Project doc
summarization skill can't be executed. If there is more content to summarize, you can
remove some content and retry.
Schedule the project insights email
Schedule the project summary email to prioritize and track the most important changes in the
project in Project Workspace.
https://player.vimeo.com/video/1156994852?
h=fc02bd8ee8&badge=0&autopause=0&player_id=0&app_id=58479%22

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1289


<!-- page 1290 -->
Before you begin

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. This change simply
activates the skill and does not touch the roles that are needed to use the skill. The new
default behavior works as follows:
New customers
When you install a Now Assist product, designated skills will turn on
automatically.
Existing customers who are upgrading
Any previously unconfigured skill will turn on automatically (the skill was never
turned on, then off again).
There is no change to Now Assist skills that are currently enabled and
customized.
Previously configured skills that were turned on, then off, will remain inactive.
If you have users with custom roles that need access to this skill, you must update ACLs for those
roles.
Role required: it_project_manager

About this task

By using the Project summary generation skill, you can generate a concise project insights. The
project summary is shared through email. Project managers can monitor key elements such as
milestones, resources, projects, RIDAC, and project tasks. They can also prioritize their projects
and decide the cadence of receiving these project insights email.

Procedure
1. Navigate to Workspaces > Project Workspace and open any project.
2. From the planning page, select the more actions icon (
insights.

) and then select Configure project

You can view the configure project insights option only when the project summary generation
skill is turned on.
To turn on the skill, navigate to Admin > Now Assist Admin. From Now Assist Skills tab, select
SPM category. From Project summary generation skill card, select Turn on. From Turn on
Project insights generation modal, select Turn on.
From Project summary generation skill card, select Deactivate skill to deactivate the skill. From
Deactivate skill modal, select the reason of deactivation and select Deactivate.

Note: To add user access, you need to edit Access control lists (ACLs). Users with
it_project_manager role only can turn on this skill.
3. From the Configure project insights modal, in Choose topics step, select Next.
You can select or deselect the Project tasks, Milestones, or Resources cards to customize what
information is displayed in the Project insights email.
4. In Personalize content step, add your requirements and select Next.
You can define your tone, writing style, and priority entities. For example, identify risks of this
project. Please provide a formal summary in bullet points.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1290


<!-- page 1291 -->
5. In Set frequency step, select the Cadence as Weekly, Bi-weekly, or Monthly according to your
requirement.
6. Select On this day, as days for weekly or bi-weekly or dates for monthly cadence.
7. Select Users from the list.
◦ The project manager is automatically set as the default email recipient for the project.
◦ You can select one or multiple users. Only users with sn_ppm_read role or have read or view
access to project information appear for selection in the users list.
◦ When an email is sent to recipients, the project manager is placed in the To list, while all
other recipients are included in the Cc list.
◦ For confidential projects, recipients are required to be included in the list of users authorized
to view the project.
8. Optional: Select Send preview to generate and send a preview of the insights email instantly.
When you select Send preview, you receive a project summary instantly and also receive
insights based on the selected cadence. The email would go to the recipients selected along
with the Project Manager.

Example: Schedule a project summary email
Let's assume that you have selected a weekly cadence and chosen Monday (which falls on
2025-07-07). After adding recipients:
• If you select Schedule, the project summary is emailed to you and the recipients weekly on
Mondays, starting from 2025-07-07 and continues until the project becomes inactive.
• If you select Send preview, you will receive an initial summary email immediately and will also
receive summary according to the selected cadence and day.
Related topics
Configure the Monitor project tasks AI agent in AI Agent Studio
Project financials and Source-to-Pay Operations integration
Request, track, and manage procurement requests of assets for your projects.

Before you begin
Install Sourcing and Procurement Operations
Role required: it_project_manager

About this task

Project managers can navigate from Project Workspace to procurement applications
and create purchase requests for their projects. The ordered purchase requests are
reflected in the Project Workspace. After the purchase request is processed, the purchase
line, cost plan, and expense lines are automatically generated. For more information

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1291


<!-- page 1292 -->
about the integration, see Sourcing and Procurement Operations integration with Project

Management

.

Procedure
1. Navigate to Workspaces > Project Workspace.
2. Open a project and select Details from the left menu.
Create purchase request
As a Project Manager, you can directly access the Source-to-Pay Operations shopping hub
portal to place a request to meet your project requirements.

Before you begin

Role required: it_project_manager

Procedure
1. In the project details page, select More Actions ( ) icon and select Create Purchase
Requests.
The Source-to-Pay Operations shopping hub portal opens in a new tab.
2. Place the request for an asset.
For more details on how to request a product using Source-to-Pay Common Architecture, see
Order a product with quick checkout .

Note: While placing the request for the asset, enter the project number in the What
project is this request for? field.

Track purchase line and purchase order lines
After the purchase request is placed, you can track the request details such as Purchase line
number, Purchased quantity, unit cost, tax, and state from Project Workspace.

Before you begin

Role required: it_project_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1292


<!-- page 1293 -->
Procedure
1. Open the project selected while creating the purchase request.
2. Select Details from the left menu.
3. Select the Purchase Lines related list.
A procurement specialist from the Source-to-Pay Operations approves the purchase
requisition. Once the purchase order is created, purchase order line is automatically created in
Project Workspace.
To view the purchase order in Project Workspace:
a. Open the project selected while creating the purchase request.
b. Select Details from the left menu.
c. In the Details page, select the Purchase Order Line related list.

Note: Every purchase order line creates a cost plan in the selected project.
Tracking financials of procurement requests
Once the requested purchase orders are approved and processed, a purchase order line
and a cost plan is automatically created. You can view cost plans for the requisition in Project
Workspace.

Before you begin

Role required: it_project_manager

Procedure
1. Open the project selected while creating the purchase request.
2. Select Details from the left menu.
3. Select the Cost Plans related list.

Note: The cost plan is reflected in Financials along with additional details such as start
and end fiscal period, planned cost plan breakdown for each fiscal period.
As next steps, a purchase order is processed and an invoice is generated. An invoice line is
created which captures the actual expense of the purchase request. You can view the expense
lines generated from the processed invoice from Project Workspace.
a. Open the project selected while creating the purchase request.
b. Select Financials from the left menu.
c. Locate the cost plan created for the Purchase Order Line.
d. Scroll through the cost plan monthly breakdown, select the row options
in which the purchase order is created and select View expense lines.

for fiscal period

e. In the Expense lines view, select the Auto generated expense line for cost plan: option.
f. Total expense incurred while generating the purchase order are displayed in the Amount
field.

Result

The processed purchase request is tagged to the selected project. Financials records such as
cost plans and expense lines are automatically created and associated with the project expense.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1293


<!-- page 1294 -->
Add a RIDAC record to a project in Project Workspace
Add a Risk, Issue, Decision, Action, or Request Change (RIDAC) record to your project in the
Project Workspace. Adding RIDAC records enable you to keep a track of risks or issues during
the project life cycle and help in analyzing the outcome of a project.

Before you begin

Role required: it_project_manager

About this task

You can select the type of record you want to create, fill in the required details, and associate
it to your project. You can use the RIDAC page in Project Workspace to view, add, manage, and
evaluate all the RIDAC records.
For information about RIDAC records for project management, see Adding RIDAC (Risks, Issues,
Actions, Decisions, and Request Changes) records for a project.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Open the RIDAC page of the project by selecting RIDAC from the list.
3. From the More actions menu, select the type of RIDAC record that you want to create.
Option

Description

Add Risk

Add risks to your project to identify, evaluate,
prioritize, and monitor risks. Risks can origi­
nate from a change of project scope, cost, re­
source, and so on.

Add Issue

Add issues to your project to identify, analyze,
and track issues.

Add Decision

Add a decision in response to a reported risk
or an issue.

Add Action

Add an action to your project to resolve an is­
sue or risk or to make a decision.

Add Request Change

Add a change request to your project in re­
sponse to the suggested action for an issue
or risk.

4. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1294


<!-- page 1295 -->
For field information, see:
◦ Risk form of Project Workspace
◦ Issue form on Project Workspace
◦ Action form of Project Workspace
◦ Decision form on Project Workspace
◦ Request change form on Project Workspace
5. Select Submit.

What to do next
• Convert an existing project risk to an issue, decision, action, or request change and close the
risk. For more information, see Convert one RIDAC record to another for a project in Project
Workspace.
• Associate a project risk with existing issues so that you can track dependencies and recognize
trends for the future. For more information, see Associate existing RIDAC records for a project
in Project Workspace.
Associate existing RIDAC records for a project in Project Workspace
Link existing RIDAC records to one another for your project in Project Workspace. A RIDAC
record stands for Risks, Issues, Actions, Decisions, and Request Changes. Keep a record of risks
or issues and their outcome for analysis at project closure and planning.

Before you begin

Role required: it_project_manager

About this task

You can associate one record with multiple different records. For example, you can link one issue
record to multiple risk, decision, action, or request change records.

Procedure
1. Select the project for which you want to associate one RIDAC entry to another.
For information on how to navigate to a Project in the Project Workspace, see Access the new
Project Workspace.
2. Open the RIDAC page of the project by selecting RIDAC from the list.
3. On the Project form, select Row context menu for an individual risk, issue, decision, action, or
request change record.
4. Select Associate RIDAC.

5. On the Associate dialog box, from the Select type list, select the RIDAC record to which you
want to associate the selected record.
For example, if you wanted to associate an issue to a decision, you would select Decision.
6. From the Associate to list, select the record number to which you want to associate the
selected record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1295


<!-- page 1296 -->
For example, if you wanted to associate the selected issue to a decision (DCSN0001005), you
would select DCSN0001005.
7. Select OK.
Convert one RIDAC record to another for a project in Project Workspace
Convert one RIDAC (Risk, Issue, Decision, Action, and Request Change) record to another for a
project in the Project Workspace. Keep a record of risks or issues and their outcome for analysis
at project closure and planning. Track the risks and issues throughout the project life cycle.

Before you begin

Role required: it_project_manager

About this task

When you convert a RIDAC record to another record, the values for the Short description,
Requester, and Assigned to fields are carried forward from the parent record.
You can also specify to close the parent record on creation of the new record instead of manually
closing the parent record.

Procedure
1. Select the project for which you want to convert one RIDAC entry to another.
For information on how to navigate to a Project in the Project Workspace, see Access the new
Project Workspace.
2. Open the RIDAC page of the project by selecting RIDAC from the list.
3. On the Project form, select Row context menu for an individual risk, issue, decision, action, or
request change record.
4. Select Convert to RIDAC.

5. On the Convert dialog box, from the Select task type list, select the RIDAC record to which you
want to convert the selected record.
For example, if you wanted to convert an issue to decision, you would select Decision.
6. Modify the text in the Short description field, which is copied from the parent record.
7. Optional: Change the default assignment copied from the parent record in the Assigned to
field by clicking the lookup icon (

) and selecting a different user.

8. Optional: If you want to close the parent RIDAC record on creation of a new record, select the
close parent record option.
The label of the close parent record option changes depending on the parent record type. For
example, if the parent record is an issue and you’re converting it to decision record, then the
close record option would appear as Close Issue.
9. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1296


<!-- page 1297 -->
Export a project status report to Microsoft PowerPoint from Project Workspace
Generate a status report of your project and export it as a Microsoft PowerPoint file from Project
Workspace. You can use this file to present the project status to stakeholders or to collaborate
with them over risks and next steps. Save time by generating a Microsoft PowerPoint file with the
latest information and avoid copying information into slides.

Before you begin
• Install the Export to PowerPoint for Strategic Portfolio Management application from
ServiceNow store. For more information, see Install Export to PowerPoint for Strategic Portfolio
Management.
• Create and upload a Microsoft PowerPoint template to apply to your status report. For more
information on how to create and upload a template, see Create a Microsoft PowerPoint
template and Upload your Microsoft PowerPoint template respectively.
Role required: it_project_manager

Important: Export to PowerPoint is currently unavailable for customers in the FedRAMP,
NSC DOD IL5, or Australia IRAP-Protected data centers, self-hosted customers, or in other
restricted environments. Please check for availability updates in future releases.

About this task

Create a status report or use an existing status report to download it as a Microsoft PowerPoint
file.
Exporting the project is beneficial if your stakeholders prefer a slide deck rather than using a
dashboard. It also helps the wider audience or external stakeholders who don't have access to
the dashboards but are waiting for an update.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. From the More actions menu (

), select Export status report.

3. On the Export status report form, fill in the fields for an existing project.
For field information, see Export status report form on Project Workspace.
4. Select Export.
5. When prompted, select the desired location, and save the file.
6. Optional: On the Export status report form, create a status report for a project by selecting the
Please create a status report to be able to export link.

7. On the Status Report Tab, create a status report by clicking Create New.
8. On the Status Report form, fill in the fields.
For field information, see Create a project status report.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1297


<!-- page 1298 -->
9. Select Submit.
10. Select the Export to PowerPoint icon (

).

11. From the Export to PowerPoint window, select the report date by clicking Status report date.
12. From the Export to PowerPoint window, select a template by clicking Select a template.
13. Select Export.

Result

The project status report is downloaded as a Microsoft PowerPoint file with the project number
and status report date as the file name.
Export a project from Project Workspace
Export your project as a file from Project Workspace. Use this file to provide project updates to
external stakeholders or a wider audience. Save time by generating an export file with the latest
information and avoid copying information into different files.

Before you begin

For Microsoft PowerPoint:
• Install the Export to PowerPoint for Strategic Portfolio Management application from the
ServiceNow store. For more information, see Install Export to PowerPoint for Strategic Portfolio
Management.
• Create and upload a Microsoft PowerPoint template to apply to your status report. For more
information on how to create and upload a template, see Create a Microsoft PowerPoint
template and Upload your Microsoft PowerPoint template.

Important: Export to PowerPoint is currently unavailable for customers in the FedRAMP,
NSC DOD IL5, or Australia IRAP-Protected data centers, self-hosted customers, or in other
restricted environments. Please check for availability updates in future releases.
Role required: it_project_manager

About this task

Create a project or use an existing project to download it in the required file format. You can
choose to export the project data in Excel, CSV, PPT, MS Project (MPP), and XML file format.
Exporting the project is beneficial if your stakeholders prefer a file rather than using a dashboard.
It also helps the wider audience or external stakeholders who don't have access to the
dashboards but are waiting for an update.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. From the More actions menu (

), select Export project.

3. Select the file format and then select a template if needed.
4. Select Export.
Only the columns that are visible in the Planning page of the project are exported.

Result

The project is downloaded in the selected file format.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1298


<!-- page 1299 -->
Closing a project in Project Workspace
End the project when all tasks are completed. When you close a project, all project tasks, subprojects, and resource assignments associated with the project are closed automatically.

Before you begin

Role required: it_project_manager

About this task

Ideally, you should not reopen a project after it is closed. Updating the project state from Closed
to Work In Progress, Pending, or Open is not allowed. If you still need to reopen a closed project,
reopen an existing project task or add a new task to the project. This action for a task moves the
project from Closed to Work in Progress state without affecting the other closed tasks. You can
cancel the associated future resource plans and complete the allocated resource plans for a
closed project.

Procedure
1. Open a project from the planning page of Project Workspace.
For information on how to navigate to the planning page, see Access the new Project
Workspace.
2. Verify that your work is completed for all the tasks in the project you want to close.
3. On the Project form, change the state field to one of the closed states:
◦ Closed complete
◦ Closed Incomplete
◦ Closed skipped

Note:
▪ When you close a project, a notification is displayed, which enables you to view all
resource assignments associated with the project. You can synchronize all resource
assignment dates with project dates. The resource assignment ends on the exact
date and time that the project ends.
▪ You can track, modify, and synchronize all resource assignments for a project from
the Resource Assignment List page.
Alternatively, close every project task first, starting with the lowest-level child tasks. The
closed states roll up to parent tasks, and when all highest-level parent tasks are closed, the
project state changes to closed. However, the default closed states for parent tasks and for the
project is Closed Complete. Therefore, even if you change any or all project tasks to Closed
Incomplete or Closed Skipped, the project state is changed to Closed Complete.
Also, change the Phase value to Closing. The project phase is for reference only and isn’t
linked to or dependent on the State field.
If your project contains sub-projects, you can close the sub-project without affecting the
parent project. Change the State of the sub-project to any closed state to close the subproject. Closing the sub-project closes or changes the state of all the tasks associated with
the sub-project. Also, changing the state of the sub-project to Work in Progress, moves all the
associated tasks to Work in Progress state.
If there are project tasks associated with the parent project that are not closed, the parent
project remains in the Open, Work in Progress, or Pending state. If the tasks associated
with the parent project are closed, the state of the parent project also changes to Closed
Complete.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1299


<!-- page 1300 -->
4. After the project is complete, create a final baseline to see how closely the project's actual
values came to the estimated values.

Note: Baselines compare only planned start and end date values with actual start and
end date values. Use reports to compare the effort and cost.

Result

For projects created from an incident, problem, or change, updating the project state does not
automatically update the related incident, problem, or change request record. You must update
the related record manually. For example, if the completion of a project also means that a related
Change can be closed, go to the Change record and modify its State field. It is also a good idea
to update the work notes field on the related record to include any relevant information about the
project.
Related topics
Export a project from Project Workspace
Add a RIDAC record to a project in Project Workspace

Managing financials for your projects
Manage budget, cost plans as forecasts, actual expenses as expense lines, generate labor
costs, create financial baselines, and view, analyze, and compare the financial performance of
your projects at required cadence in Project Workspace.
The comprehensive financials view helps you to understand planned and actual costs, Forecast
(previously EAC - Estimate At Completion), Remaining Estimates (previously ETC - Estimate
To Completion), Actual (previously Actuals to date), and so on, for the selected item. You can
manage cost plans and associate the expense lines and process them to reflect the actuals for a
planning item.
Export the financials data from Costs and benefits or Baseline comparison view as Microsoft
Excel or a CSV file and share it with your stakeholders to review the financial performance of your
projects and portfolio.

Cost view
Forecast your planned costs, create and manage cost plans and expense lines to track the
financial performance of your projects, review the latest costs and actuals.
In the Cost screen, you can:
• As a Project Manager, you have the enhanced visibility and ability to manage the financial data
across multiple project levels. Cost view of financials shows cost plans and expense lines from
sub-projects, allowing you to track the finances.
• The parent project widgets display the consolidated values of forecasted costs and expenses.
• Identify and manage costs using the Project/Demand column for any sub project or demand
directly from Cost view of the parent planning item.
• Re-forecast all the cost plan values for future fiscal periods by double-clicking to edit the value
in the least time scale view, either by month or by period.
• Manage cost plans for your projects. For more information, see Add, edit, or delete cost plans.
• Add or edit expense lines for your projects to record any planned or unplanned expenses. For
more information, see Add or edit expense lines.
• Generate labor costs for the fiscal period. For more information, see Generate labor costs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1300


<!-- page 1301 -->
• Create and compare baselines to capture the financial snapshot of your projects. For more
information, see Create and compare financial baselines for your projects.
• Configure widgets to get a high-level overview of the financial data for your planning item.
• All financial details from sub-projects will be aggregated and displayed in the parent project's
cost plans and widgets.

Tip: Cost view gives you enhanced user experience to customize the left pane
columns by using the personalize icon ( ) and by saving user preferences to retain the
customizations made to hide, view, or adjust columns, time scope viewing, and so on.
In the Cost screen, you can:
• As a Project Manager, you have the enhanced visibility and ability to manage the financial data
across multiple project levels. Cost view of financials shows cost plans and expense lines from
sub-projects, allowing you to track the finances.
• The parent project widgets display the consolidated values of forecasted costs and expenses.
• Identify and manage costs using the Project/Demand column for any sub project or demand
directly from Cost view of the parent planning item.
• Re-forecast all the cost plan values for future fiscal periods by double-clicking to edit the value
in the least time scale view, either by month or by period.
• Manage cost plans for your planning items. For more information, see Add, edit, or delete cost
plans.
• Add or edit expense lines for your planning items to record any planned or unplanned
expenses. For more information, see Add or edit expense lines.
• Generate labor costs based on the resource assignments. For more information, see Generate
labor costs.
• Create and compare baselines to capture the financial snapshot of your planning items. For
more information, see Create and compare financial baselines for your planning items.
• Configure widgets to get a high-level overview of the financial data for your planning item.
• All financial details from sub-projects will be aggregated and displayed in the parent project's
cost plans and widgets.

Tip: Cost view gives you enhanced user experience to customize the left pane
columns by using the personalize icon ( ) and by saving user preferences to retain the
customizations made to hide, view, or adjust columns, time scope viewing, and so on.

Multicurrency
Multicurrency feature enables you to manage financials of your planning items in two different
currencies, Functional currency and Investment currency. Functional currency is typically
defined by the admin based as the primary currency which is used for planning, budgeting, and
tracking the financials of your planning items.

Important: Following are the current limitations for multicurrency.
• Multicurrency for cost plans that are bundled with project tasks. This feature is scheduled
to be available starting with the January patch update.
• Financial baselines do not capture investment currency fields. This feature will be
available with the March store release.
Financial users can now perform the following financial activities in Investment currency.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1301


<!-- page 1302 -->
• Ability to select the Investment currency.
• Track the planned and actual expenses.
• Allocate and manage the budget.
• View simple financials data.
Using this feature, you can work on financial reporting at global level and see the real-time
currency conversions of your financial records.
Organizations operation at global or multinational level, the work is planned and financed at
one location and executed at a different location. Each might use a different currency from what
was used in the planning phase, multicurrency makes it easy to manage and track your planning
items using any currency.
You can monitor and track the financials in one currency, and capture the costs in a different
currency.
Using multicurrency, you can see all the costs in the currency you choose for the planning item,
instead of restricting to use Functional currency defined in your locale. For more information
on how to choose investment currency of your planning items, see Configure multicurrency for
projects.
Financial records and widgets will display the costs based on the currency selection.

Note: Once a cost plan, benefit plan or expense line or an investment budget gets
created, you will not be able to change investment currency. You can change the
investment currency as long as there are no financial records captured against the planning
item.

Display modes
On the financials page for a planning item in Project Workspace, you have Display Mode dropdown switch between different modes to view different formats of financial information of your
planning items. These views provide the relevant and focused information which helps project
managers and funding users to work on the financial planning.
• Forecast
• Budget vs forecast
• Planned vs actual
• Planned
Users with financial funding role [it_portfolio_manager] will see Budget allocation option instead
of the Budget vs forecast.
Display modes value
Mode

Value

Forecast

View Actuals, Remaining estimates, and
Forecast for the entire scope of the planning
items.
Use the time scale to view the actuals for the
past fiscal periods and planned costs for the
current and future fiscal periods.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1302


<!-- page 1303 -->
Display modes value (continued)
Mode

Value

Budget vs forecast

View the Budget, Actuals, and Variance for
the fiscal periods and Forecast values for the
entire scope of the planning items.
Using this mode, you can:
• Compare the latest forecasts with the
approved budget at different time scales.
• View the budget vs actual for past fiscal
periods and budget vs planned for current
and future fiscal periods at fiscal period
level.

Budget allocation (funding role)

View the Budget, Actuals, and Variance for
the fiscal periods and Forecast values for the
entire scope of the planning items.
Using this mode, funding users can:
• View the latest forecast and enter the
budget that can they be approved to the
work item.
• Analyze the variance for the past fiscal
periods and work on budget allocation for
future fiscal periods.
• Compare latest forecast with approved
budget and revise the budget, if required.

Planned vs actual

Compare the planned costs with actual
expense for the past and current fiscal
periods, and view planned costs for the future
fiscal periods.

Planned

View only planned costs for the full range and
manage the planned costs using the inline
editing feature.

Note:
• If you do not see the Budget allocation or Budget vs forecast display options, enable the
budget allocation property and configure the budget attribute at instance level.
• To work on budget allocation using the Next Experience, Activate a scheduled job to
migrate budget of your planning items.
The last selected view is saved as user preferences.
Default display mode and access level for financial users
User role

Default mode

Role-level access

it_portfolio_manager

Budget Allocation

Allocate and approve budget,
manage cost plans and
expenses lines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1303


<!-- page 1304 -->
Default display mode and access level for financial users (continued)
User role

Default mode

Role-level access

it_project_manager

Forecast

Manage cost plans and
expense lines.

business_stakeholder

Forecast

View financial data.

Baseline view
Create a baseline to capture a snapshot of the financial changes for your projects. You can
create on-demand baselines or at a cadence using a scheduler job.

Note: Baselines created on the parent project includes the cost plans and expense lines
from all of the child projects to calculate and give you a better breakdown of the financial
performance of the projects and sub-projects.
When you create a financial baseline for a parent project, the financial records of the child
project are also calculated, which helps Project Managers to track the financial health of the
projects at one place.
Compare baselines to compare the difference in costs between latest status against a baseline
or between any two baselines.

Note: Each baseline is tagged with a number based on the order that they’re created.
The Current Financials baseline captures the financials details in real-time and is always
represented with a flag icon (

).

The baselines comparison view helps you to understand the variances between the two
baselines.

Use the widgets when you compare baselines to view:
• Two dedicated widgets for each baseline displaying the EAC.
• Third widget displays the total variance between the EAC values of the selected baselines.
• Fourth widget displays the top three variances contributing to the overall variance by cost type.
The widgets and the header rows are color-coded to help you identify the selected baselines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1304


<!-- page 1305 -->
Tip: Switch between different baselines from the comparison view by selecting the name
of a baseline from one of the widgets.
When you compare baselines, you get the list of cost plans with their associated costs types,
EAC at full scope, and a breakdown view of actual expenses and planned costs.
By default, the time scale of the breakdown view is set to Month.
• Use the Time scale option to view the comparison breakdown view at monthly, quarter, and
yearly levels.
• Select Time scope to filter fiscal periods, data in the widgets, and the comparison table.
The widgets and the header rows are color-coded to help you identify the selected baselines.

Tip: Select the name of a baseline from the first or second widget to compare different
baselines.
Let's take an example of the comparison view of two baselines: 2023-10-01, Baseline A, and
Current Financials, Baseline B.

Example: How actuals, planned, and EAC are compared between two baselines
captured at different timestamps
For a selected baseline, based on the creation date, the table shows Actuals values for the past
fiscal periods from the created date and Planned values for the current and future fiscal periods.
Consider a planning item scoped from July 2023 to June 2024. Baseline A is created on
2023-10-01. If you compare the Current Financials baseline in December 2023 to the baseline
captured in October 2023:
1. The baseline comparison view show Actuals vs Actuals columns from July 2023 to September
2023.

2. Planned vs Actuals for October 2023 and November 2023.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1305


<!-- page 1306 -->
3. Planned vs Planned from December 2023 to June 2024.

Note: The columns are defined to calculate EAC, which is the sum of Actual costs till the
last fiscal period and Planned costs from current to future fiscal periods.

Budget allocation
Portfolio managers can manage and approve the budget for projects. The approved budget
helps project managers to plan and meet the expenses to execute work.

Plan and approve the budget for a shorter planning cycle at monthly, quarterly, or yearly level
using the lean budgeting and funding feasibility. Lean budgeting helps Portfolio managers to
track the value in return for the approved budget and to better plan the budget for future fiscal
periods.

Note: If the budget is allocated monthly, the total budget is rolled up to quarterly and
yearly level. Similarly, if the budget is allocated at a quarterly or yearly level, the equal
breakdown happens till monthly level.
For more information on how to allocate, approve, and handle budget for projects, see, Manage
budget of your planning items in Strategic Planning.

Tip: In the budget allocation view, Portfolio managers review the EAC to understand the

financial projections made by Project managers and use the Copy cost as budget option to
allocate the entire planned cost as budget.
Choose the cost type as the attribute to allocate and approve the budget for individual cost
types such as labor, non-labor.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1306


<!-- page 1307 -->
Project managers can view the approved budget at the required time scale by switching to the
Budget vs planned display mode. As the work progresses and the actuals are captured, you can
compare the budget and actual costs using Budget vs planned display mode and reforecast the
planned costs where the actuals are exceeding the budget using the inline edit feature at the
required time scale.
Product managers can compare the latest cost with the approved budget by Capex or Opex, cost
types, and for the required time scale at monthly, quarterly, or yearly level. The comparison view
provides insights to Product managers to locate any variance at expense type or cost type, and
at which fiscal period. Product manager can leverage this information to request for additional
budget from the Portfolio manager.
You can migrate the budget of existing active projects from the Classic UI to Next Experience.
Financials in the Next Experience has new budget data model that facilitates to store the budget
at a detailed level by monthly breakdowns and cost types. You can migrate the budget for active
projects and demands individually or by bulk using the scheduled job.

Note: The migrated budget is captured in the sn_invst_pln_invst_budget table
to enable the lean budgeting for required time scope.

Benefit plans
Monetary benefit plans capture potential benefits accrued while executing a planning item. Nonmonetary benefit plans capture the potential non-financial benefits accrued while executing a
planning item. You can create and manage monetary benefit plans and non-monetary benefit
plans to capture the potential benefits of your planning items.
Instead of switching to and fro from the financials record page to benefit plan tabs, you now have
a seamless experience to manage all the cost plans and benefit plans from the Cost and benefits
view and can leverage the new financials experience with the side panel and grids for quick
forecasting and tracking of monetary benefit plans.

Simple financials
Simple financials gives you the ability to enter the preliminary high-level planned capex, opex,
benefit and so on from the Details page without capturing the costs plans from the Cost view. You
can update the simple financials values as required until you have the planned and actual costs
captured.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1307


<!-- page 1308 -->
Using the baseline feature, you can capture these simple financial values in a baseline and
compare them against any existing baseline. You can:
• Reforecast simple financials and compare the by selecting the Current Financials from the list
of baselines.
• Capture the planned and actual expenses as the project progresses and compare any
financial baseline with simple financials baseline to track the financial performance of the
project.
Configure multicurrency for projects
Select investment currency as an additional currency, which can be different from your functional
currency, to manage financial records of your projects.

Before you begin
• You can define investment currency for projects which do not have any financials records,
such as cost plans, expense lines, benefit plans, and actual benefits. To define a investment
currency for existing work, you should delete all the financial records and configure the
investment currency.
• Enable monetary benefit plans for projects
• Role required: admin

About this task

Following are the current limitations for multicurrency.
• Multicurrency for cost plans that are bundled with project tasks. This feature is scheduled to be
available starting with the January patch update.
• Financial baselines do not capture investment currency fields. This feature will be available
with the March store release.

Procedure
1. Navigate to Workspaces > Project Workspace and select a project.
2. Select the Financials tab.
3. Select Currency field, and select the Edit investment currency option.
Edit investment currency modal is displayed with an option to select investment currency.
4. Choose the suitable investment currency from the Investment currency list.
5. Select Confirm to save the investment currency selection.
Add, edit, or delete cost plans
Create a cost plan for a required duration to track your planned and actual expenses. Edit cost
plans to adjust your planned expenses and delete any de-scoped forecasts.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Select Financials from the left menu.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1308


<!-- page 1309 -->
Choice

Description

a. Select New cost plan (

).

A side panel opens to create a cost plan.
b. On the Cost plan form, fill the fields.

To create a cost plan

For a description of the field names, see
Create cost plan form.
c. Select Save to save the cost plan and close
the side panel or Save and add new to save
the cost plan and create a new cost plan.
The cost plans created for sub-projects can
be viewed in the Cost screen of the parent
project.
You can edit a cost plan by one of the follow­
ing ways.

To edit a cost plan

a. Select the name of the cost plan, in the cost
plan side panel, edit the required details
and select Update.
b. Double-click the cell for a future fiscal peri­
od and edit the cost plan value.

Tip: Use the Tab key to navigate to
the next fiscal period and continue
editing.
a. Select the Row context menu (
the cost plan name.

) against

b. Select Delete Row.
To delete a cost plan

c. On the Delete selected cost plans window,
select Delete (
).

Note: Deleted cost plans and the as­
sociated expense lines can’t be recov­
ered.

Tip: Create a financial baseline immediately after capturing the initial planned costs
to have a snapshot of your planned costs. Use this baseline to compare it against the
baselines from later dates, as the work progresses, to identify the variance between initial
planned costs and actual expenses.
This helps you to plan for the future expenses and re-forecast the planned costs.
Manage budget of your projects using Project Workspace
Allocate, manage, and approve budget for your projects. Lean budgeting enables you to allocate
budget for short planning cycles for different fiscal periods such as monthly, quarterly, or yearly
breakdown level rather than allocating the budget to the complete duration of the planning item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1309


<!-- page 1310 -->
Before you begin
• As an Admin, enable the property to work on budgeting. For more information, see Enable
financial budget allocation for projects in Project Workspace.
• As an Admin, configure the attribute to allocate and approve budget by cost type or expense
type. For more information, see Configure budget attribute at instance-level to allocate budget.
• Role required: it_portfolio_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Select Financials from the left menu.
3. Enable the Budget allocation toggle (

).

4. You can manage the budget by one of the following ways for the selected time scale at
monthly, quarterly, or yearly level.
◦ Double-click each cell in the Budget column to manually enter the value.
◦ Select Copy cost as budget from the Budget column options to copy the EAC as budget.
You can always reforecast the budget for each cost type using the in-grid editing feature even
if the EAC is copied as budget.

Note: Unapproved budget values are indicated with

icon.

).
5. Select Approve budget (
Approve budget confirmation window is displayed. The Create a financial baseline for this
budget approval option is enabled by default which captures the latest budget and financial
estimates.

Tip: The financial baseline created while approving the budget can be compared
with the future baselines once the actual expenses are captured to track financial
performance.
6. On the confirmation window, select Approve (

).

Result

Budget widget is updated to reflect the latest approved budget. Project Manager can view the
approved budget and compare it with the planned costs using the budget vs cost view by cost
type.
Add or edit expense lines
Create or edit expense lines to capture the actual costs. You can associate the expense lines
with a cost plan or create standalone expense lines to record unplanned expenses.

Before you begin

Role required: it_project_manager

About this task

An expense line is part of the project cost plans that can be associated with a specific source.
You can create multiple expense lines for a cost plan. Only the expense lines that are in the
processed state are considered for roll-ups on the work item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1310


<!-- page 1311 -->
For unplanned expense lines which aren’t associated with any cost plan, the system
automatically creates a cost plan or associates with an existing system-generated cost plan of
the same expense type.

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Select Financials from the left menu.
3. Add an expense line using one of the following options.
Choice

Description

a. Select the actuals value from a cost plan.
Select a cost plan

Select options

b. In the Expense lines side panel, select
New.
a. Select the options

from a cell.

b. Select Add expense lines.
Select New expense line using the More ac­
tions option.

Select new expense line option

Note: Use this option to record and cal­
culate any unplanned expenses.
4. On the Create expense line form, fill the fields.
For a description of the field names, see Create expense line form.
5. Select Save.

Note: The expense lines created for sub-projects can be viewed in the Cost screen of
the parent project.
Generate labor costs
Generate labor costs for projects and sub-projects based on the attribute-based resource
assignments and the financial attributes configured in the planning attributes page.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Select Financials from the left menu.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1311


<!-- page 1312 -->
3. Select Generate labor costs (

).

4. Select Generate on the Generate labor costs confirmation window.

Note: Alternatively, you can activate a scheduled job to automatically create baselines
at the required cadence.
Create and compare financial baselines for your projects
Create and compare financial baselines to get a snapshot of the project expenses and compare
the planned costs with the actual expenses.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Select Financials from the left menu.
3. Create or compare baselines.
Option

Description

a. Select Create baseline button (

).

Create financial baseline window appears
with the Name field is auto-populated with
current date. You can edit this field to name
your baseline.

Create a baseline

b. In the Description field, enter a brief de­
scription to identify this baseline and select
Save.
A baseline is created capturing the planned
costs and expense is captured.

Note: You can activate a scheduled
job to automatically create financial
baselines.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1312


<!-- page 1313 -->
Option

Description

a. Select the Baselines (
) tab to view the
list of existing baselines.
Compare baselines

b. Select any two baselines and select the
Compare baselines (
) button.
Comparison view of the selected baselines is
displayed. For more details, see Using base­
line comparison view.

Tip: You can migrate existing financials baselines of your projects or demands from
Classic UI to Financials in Next Experience.
For more information on how to migrate financial baselines of demands, see Migrate financial
baselines of demands to Next Experience.
For more information on how to migrate financial baselines of projects, see Migrate financial
baselines of projects to Next Experience.
Create monetary benefit plans for your projects in Project Workspace
Create and manage monetary benefit plans to capture the potential benefits while executing
your projects.

Before you begin
• Enable monetary benefit plans for projects
• Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Create a monetary benefit plan using one of the options.
Option

Procedure

a. Select the Monetary Benefit Plans related
list.
b. Select New.

Using Monetary benefit plan related list

a. Select Financials from the left menu.
Using finanicals record page

b. Select New monetary benefit plan using
the More actions option.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1313


<!-- page 1314 -->
3. On the Benefit Plan form, fill the fields.
For a description of the field names, see Benefit Plan form.
4. Select Save.
Edit monetary benefit plan
Edit a planned monetary benefit plan to revise the benefits, dates, offset, and so on, to maintain
the updated financial records as your work progresses.

Before you begin
• Create monetary benefit plans for your projects in Project Workspace
• Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Update a monetary benefit plan using one of the options.
Option

Procedure

a. Select the Monetary Benefit Plans related
list.
Using Monetary benefit plan related list

b. Select the name of a required benefit plan.
c. In the Details tab, edit the required fields
and select Save.
a. Select the Financials from the left menu.

Using finanicals record page

b. Select the name of a required benefit plan.
c. In the Edit monetary benefit plan side-pan­
el, edit the required fields and select Up­
date.

Capture actual monetary benefits
Capture the actual benefit from the planned benefits to measure revenue and calculate the
profits.

Before you begin
• Create monetary benefit plans for your projects in Project Workspace
• Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Capture actual monetary benefits using one of the options.
Option

Using Monetary benefit plan related list

Procedure

a. Select the Monetary Benefit Plans related
list.
b. Select name of the required benefit plan
and select the Monetary Benefit Plan

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1314


<!-- page 1315 -->
Option

Procedure

Breakdowns list to view the monetary bene­
fit plans breakdown.
c. Select the value from the Entered benefit
field.
a. Select the Financials tab.

Using finanicals record page

b. Select the options
from the required
cell of a monetary benefit plan row.
c. Select Add actual benefits.
Monetary Benefit Plan Breakdown side-pan­
el is displayed.

3. Optional: You can change the previously captured planned benefit from the Entered benefit
field.
4. Enter the actuals benefits resulted from the work execution in the Actual benefit field and
select Save.
Manage non-monetary benefit plans for your planning items in Portfolio Planning
Create and manage monetary benefit plans to capture the potential benefits while executing
your planning items.

Before you begin

Role required: sn_align_ws.spw_financial_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace and select portfolio plan.
2. Select a planning item from the Planning module.
3. Select the Non-monetary Benefit Plans related list.

4. On the Benefit Plan form, fill the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1315


<!-- page 1316 -->
For a description of the field names, see Non-monetary benefit plans form.
5. Select Save.
Export financials as Excel or CSV file
Export the costs or baseline comparison data of your projects to share them with your
stakeholders.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Select Financials from the left menu.
3. Select the Export option (

).

4. In the Export side panel, select Excel or CSV from the File type list and select the Export
button (
).
The financials data is download as an Excel or CSV file with name_fin_mmddyy naming
convention. The breakdown of the naming convention:
a. name - fetches the first 10 characters from the name of the planning item.
b. fin - denotes that the file has financial data.
c. mmddyy - system date format when you're exporting this data.
For example, if you're downloading financials data for a planning item named Documentation
on January 26, 2024, then the file name reads documentat_fin_012624.

Note: You can export financials data from Cost view and Baselines comparison view.
Resource planning with Project Workspace
Use the Resource Management application to allocate and manage your resources in the Project
Workspace.

Key benefits
Using Resource Management, you can create, plan, track, and monitor resource assignments
at a project or task level in the Project Workspace. With Resource Management in Project
Workspace, you can:
• Create an attribute-based resource assignment.
• Change the resource assignment dates, resources, efforts, and proposed allocations at any
level of the project.
• View resource allocations using new heatmap modal. The allocations are color-coded to
display the availability of the resources.
• View the primary attributes such as Group, Role, and Skill of each resource in the resource
assignment pane. They are useful when you work on reassigning a task to a different user with
the same primary attributes.
• Switch between Hours, FTE, or Person Days effort types to view resource allocations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1316


<!-- page 1317 -->
Resource assignment pane
The resource assignment pane displays a interface where you add resource assignments for
your projects or project tasks.

Resource allocations and heatmap
The Resource allocation view combines a hierarchical task structure by resource with time-based
and effort-based allocation metrics, such as hours, FTE, or person-days over weekly or monthly
intervals.

Note: Switch between different efforts such as hours, FTE, or person days to view a
resource allocation heatmap based on the selected effort type.
Allocation heatmap modal gives you an overview of the resource utilization to identify the over
allocated and the available resources. The allocations are color-coded to display the availability
of the resources and help you to identify the availability of the resource for the filtered time frame.
The new heatmap modal gives you the following insights for a resource such as the assigned
tasks with their respective project owner, resource status, efforts for each task, total utilization
percentage for the approved tasks, and the remaining capacity.

Heatmap breakdown
Allocation heatmap breakdown

From the above example, you can see the breakdown of the approved work items along with the
rolled up efforts, Utilization percentage, and the Remaining capacity for the month of January
2025. The approved work is within the resource capacity as the remaining capacity is 120 hours.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1317


<!-- page 1318 -->
Resource manager can use these insights to decide and allocate the pending work items to
another resource with available effort.
Within the Resource Allocation view, the Approved state is prioritized and listed first, followed
by other statuses based on their order in the record list. Additionally, if a user has no capacity
during a given period, the corresponding cell is displayed in red color.
Resource assignments in Project Workspace
Optimize project execution by assigning resources to tasks within the Project Workspace. You
can create resource assignments for any project or project task, specifying the tasks to be
performed and the resources to be allocated.

Resource assignments
Resource assignment is a process of allocating a resource or group of resources to a project
task. When a resource assignment is initiated, a resource plan is auto-generated in the back-end
of the project management system. This resource plan details the information of how resources
would be allocated throughout the project. Resource assignments are approved by the resource
manager to make sure that the allocation aligns with the overall resource strategy, considering
factors such as availability, skills, and project priorities. Resource assignments remain dynamic
and can be edited throughout the project life cycle. Resources can be assigned based on
defined attributes such as skills, expertise, or other criteria relevant to the project or task.

Note:
Resource efforts calculations are driven by the
com.snc.resource_management.exclude_status_from_capacity
property. Admin can configure this property to calculate efforts for certain defined resource
assignments only. For more information, see Resource Management properties.
Edit the child resource assignments directly using the inline editing from the resource
assignment pane.

Key features
With resource assignments, you can:
• Determine the resource engagement timing and allocate resources for specified durations,
contributing to the creation of a timeline for task completion.
• Align task execution with the project plan, ensuring tasks are carried out in accordance with
specified timelines and resource requirements.
• Initiate an approval process that is conducted by a resource manager and make sure it aligns
with project targets and resource availability.
Related topics
Create resource assignments using Project Workspace
Update a resource assignment from Project Workspace
Resource plans
Create resource assignments using Project Workspace
Create an attribute-based resource assignment in the Project Workspace application for any
project or project task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1318


<!-- page 1319 -->
Before you begin

After a resource assignment is created, resources are allocated to the project and approved by
the Resource Manager. You can edit the assignment throughout the project life cycle.
Role required: it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. View the resource assignment pane by enabling the Resource assignments toggle button.

Note: If the sn_pw.enable_resource_planning property is set to true, then

the Resource assignment toggle button and resource assignment pane are displayed
in Project Workspace. The default value is false. You must have the pps_admin role to
enable this property.
3. From the Planning pane, double-click the Resource assignees field for a project task.
You can assign the resources from both planning and resource assignment pane.
4. From the resource assignee list, select a user or group and press Enter.
When you create a resource assignment, the user or group allocation is based on the selected
effort type. For example, when you add a user and the effort type is selected as hours, the
allocations are displayed in hours.
A resource assignment record is created and auto-saved. The resource assignment form autopopulates the project or task information.
5. Optional: From the resource assignment pane, create a resource assignment for a project or
task by selecting Add resource.
You can create a resource assignment for a project from the resource assignment pane only.
6. Select the expense type of the assignment based on the work as Opex or Capex.
A resource can use this information while capturing efforts using the time sheet portal. Once
the time sheet is approved, an expense line is created for the project capturing the expense as
capex or opex, based on the selected expense type.
7. View the resource allocations in the heatmap by enabling the Allocation heatmap toggle
button.
You can switch from the week view to the month view based on your requirement.

What to do next

Update a resource assignment from Project Workspace
Related topics
New Resource Assignment form
Delete a resource assignment from Project Workspace
Update the resource allocation in a heatmap
Realign resource assignment to project task
Create a resource assignment for a user in Project Workspace
Use Project Workspace to create a user-based Resource assignment. User records store
information about individuals who access your instance or application. These records can
be assigned to groups and roles to determine what records and actions can be accessed by
individuals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1319


<!-- page 1320 -->
Before you begin

Role required: admin or it_project_manager

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. View the resource assignment pane by enabling the Resource assignments toggle button.

Note: If the sn_pw.enable_resource_planning property is set to true, then

the Resource assignment toggle button and resource assignment pane are displayed
in Project Workspace. The default value is false. You must have the pps_admin role to
enable this property.
3. From the Planning pane, double-click the Resource assignees field for a project task.
You can assign the resources from both planning and resource assignment pane.
4. From the resource assignee list, select a user or group and press Enter.
When you create a resource assignment, the user or group allocation is based on the selected
effort type. For example, when you add a user and the effort type is selected as hours, the
allocations are displayed in hours.
A resource assignment record is created and auto-saved. The resource assignment form autopopulates the project or task information.
5. Optional: From the resource assignment pane, create a resource assignment for a project or
task by selecting Add resource.
You can create a resource assignment for a project from the resource assignment pane only.
6. Select the expense type of the assignment based on the work as Opex or Capex.
A resource can use this information while capturing efforts using the time sheet portal. Once
the time sheet is approved, an expense line is created for the project capturing the expense as
capex or opex, based on the selected expense type.
7. View the resource allocations in the heatmap by enabling the Allocation heatmap toggle
button.
You can switch from the week view to the month view based on your requirement.
Related topics
Update a resource assignment from Project Workspace
Extend a resource assignment
Create a resource assignment for a group in Project Workspace
Use Project Workspace to create a group and associate it to your resource assignment. You can
associate a set of users who share a common purpose to a group.

Before you begin

Role required: admin or it_project_manager

About this task

Create group and assign roles to them. Users assigned to the group inherit the roles.

Procedure
1. Navigate to All > User Administration > Groups.
2. Create a group.
For more information on how to create a group, see Create a user group

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1320


<!-- page 1321 -->
3. Assign the pps_resource role to a group required for group-based resource assignment.
For more information on how to assign a role to a group, see Assign a role to a group .
4. Add members to the group so that the users inherit all the roles assigned to the group.
For more information, see Add a user to a group .
5. Navigate to Workspaces > Project Workspace and open a project.
6. From the Planning pane, double-click the Resource assignees field for a project task.
You can assign the resources from both planning and resource assignment pane.
7. In the Resource field, select the group from step 2 and press Enter.

Result

A resource assignment record for the group is created and auto-saved.

Note: When you select a group in the Resource field, the assignment is created in the
Pending state. When an assignment type is set to group, an assignment is created for all
the members of the group, and the allocation hours are split evenly for all the members of
that group.
Create an attribute-based resource assignment
Create an attribute-based resource assignment in Project Workspace. You can pre-define
attributes based on your requirement.

Before you begin

Role required: pps_admin or it_project_manager

Procedure
1. Create a planning attribute.

Note: If the assignment is attribute-based, then the assignment is created in the
Unassigned state. You should have the pps_admin role to configure the planning
attributes.
2. Navigate to All > Employee Profile > Employee Profiles.
3. Create an employee profile.
For more information, see Activate Employee Profile

.

4. Navigate to Workspaces > Project Workspace and open a project.
5. From the Planning pane, double-click the Resource assignees field for a project task.
You can assign the resources from both planning and resource assignment pane.
6. From the resource assignee list, select a user or group and press Enter.
You can create new custom attributes, such as location, in addition to group, skill, and role, and
can also leverage these custom attributes to create resource assignments.

Result

A resource assignment record for an attribute is created and auto-saved.

Note: The Primary group, Primary skill, and Primary role attributes can be enabled for
the Resource Management. You can create more attributes based on your requirement.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1321


<!-- page 1322 -->
Update a resource assignment from Project Workspace
Update a resource assignment that is associated with a project or project task.

Before you begin

Role required: it_project_manager
In Resource Assignments, any changes made to the status of group resource assignment roll
down to all associated child resource assignments status. Similarly, any changes made to the
status of child resource assignments automatically roll up to the corresponding group resource
assignment status.

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. View the resource assignment pane by enabling the Resource assignments toggle button.
3. On the resource assignment pane, double-click any cell to edit the entire row.
4. Edit the desired field, and select anywhere on the data grid to save the details.
The resource assignment is updated in the resource assignment pane.

Note: When a resource is added on an empty resource assignment, which has more
than one Full-time equivalent (FTE) effort, then an additional row is created automatically
and the resource assignment is auto-updated in both the rows.
Extend, edit, or delete the resource assignments using the row context menu in resource
assignment pane.
Extend a resource assignment
Extend the date of an allocated resource assignment and allocate resources for the extended
period.

Before you begin

Role required: resource_manager

About this task

Assume that work on a project has started, but there’s a need to extend the date of an allocated
resource assignment because the project has been extended. In this scenario, you can extend
the date of the allocated resource assignment. The new date by which the resource assignment
is extended doesn’t have any impact on the existing allocated hours. While extending the
resource assignment, you can specify the new end date and the request type. Based on the
request type selected, the required allocated hours are auto-filled.
For example, assume that you allocated 100 hours for 2 months, 50 hours for each month. Now,
you want to extend the resource assignment by one month. For the extended month, allocation
records are created based on the request type selected.

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Extend the resource assignment using one of the following options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1322


<!-- page 1323 -->
Option

Procedure

a. From the resource assignment pane, select the row context menu (
of resource assignment record and then select Extend.

)

From resource as­
signment pane
b. From the Extend Assignment window, modify the New end date and ef­
fort.
c. Select Extend to extend the resource assignment.
a. Navigate to All and enter sn_plng_att_core_resource_as­
signment.LIST.
b. Select the resource assignment record that you want to extend and
then select Extend.

From resource as­
signment form

Note: You can’t set the assignment's extended end date later
than the task end date.
c. From the Extend Assignment window, modify the New end date and ef­
fort and select Ok.

Result
• The assignment end date is updated and allocation is created based on resource's availability.
• The extended FTE or hours or person days is divided equally for the extended resource period.
Related topics
Resource assignments in Project Workspace
Create resource assignments using Project Workspace
Update a resource assignment from Project Workspace
Delete a resource assignment from Project Workspace
Update the resource allocation in a heatmap
Realign resource assignment to project task
Move a resource assignment in Project Workspace
Move the resource assignment to a new start and end dates to accommodate changes in task
scheduling or resource allocation. Shift assignments to balance workloads across resources and
avoid over-allocation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1323


<!-- page 1324 -->
Before you begin

Role required: resource_user, resource_manager

About this task
• When you move an assignment to a new start and end dates, the initial requested or approved
efforts are retained for the latest duration.
• When an assignment is moved, the Ready for review state is retained and the assignment
remains accessible to resource managers for work allocation.
• You cannot move a resource assignment if actuals efforts are entered for the work.
• New assignment dates should be within the task duration dates.

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. View the resource assignment pane by enabling the Resource assignments toggle button.

Note: If the sn_pw.enable_resource_planning property is set to true, then

the Resource assignment toggle button and resource assignment pane are displayed
in Project Workspace. The default value is false. You must have the pps_admin role to
enable this property.
3. Select a project task to view the assignments associated to the task.
4. From the resource assignment pane, select the row context menu (

) and then select Move.

5. From Move assignment modal, select a New start date using the date picker modal.
6. Optional: Change the assignment status using the New status list to one of the following
available statuses.
Changing the status is restricted to the resource_manager role.
7. Select Confirm.
When you move the resource assignment for a group, the assignments are moved for all
members of that group. You cannot move assignments for individual users within the group or
for child resource assignments.
Related topics
Extend a resource assignment
Update a resource assignment from Project Workspace
Delete a resource assignment from Project Workspace
Update the resource allocation in a heatmap
Realign resource assignment to project task
Delete a resource assignment from Project Workspace
Delete a resource assignment from Project Workspace. Deleting an assignment also deletes all
associated resource allocations.

Before you begin

Role required: it_project_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1324


<!-- page 1325 -->
Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Enable the Resource assignments toggle to view the resource assignment pane.
3. From the resource assignment pane, create a resource assignment for a project or task by
selecting Add resource.
4. From the resource assignment pane, select the row context menu ( ) and then select Delete
row.
The resource assignment is deleted from the resource assignment pane.
Manage resources using resource board
View and manage all the resource assignments without navigating through individual tasks
using the resource page. Set up a resource board to automatically generate a resource view
in Resource Management Workspace based on your project-associated resources to support
forecasting and visualization of resource demands.

Before you begin

Role required: it_project_manager, resource_user

About this task

When you select Resources from the left menu, you are redirected to a page that generates
a resource board based on the resource assignees within that project. The resource board is
created within the Resource Management Workspace and shows all the resources and tasks
associated with that specific project. You can also view how many tasks are assigned to each
resource.
For example, Simon is a resource who is allocated to two project tasks. When you select Simon
from the resource board, you can view all the project tasks to which Simon is assigned for a
project.

Procedure
1. Navigate to Workspaces > Project Workspace and open a project.
2. Open the resource page of the project by selecting Resources from the left menu.
3. Edit the resource status, task effort, start date, end date, or other attributes of the resource
assignment as required.
You can edit the row, reassign, extend, or open a resource assignment. You can create a
new resource assignment directly from the resource board in the Resource Management
Workspace. You can select the unassigned tasks toggle to view all the unassigned resources
that are not currently assigned to any task in that project. For sub-projects, you can select a
sub-project and then select Resources to view the resources allocated to that sub-project.
Related topics
Create a resource card
Update the resource allocation in a heatmap
Use the allocation heatmap capability in Project Workspace to view and update the resource
allocation.

Before you begin

Role required: it_project_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1325


<!-- page 1326 -->
About this task

The Allocation heatmap toggle button provides a detailed breakdown of the allocation of an
individual resource. The allocation heatmap represents the total utilization of a resource for a
week or month. By default, allocation information is displayed for the week. This information
helps project managers to plan their resources effectively at the project or task level.
®

Integrate your ServiceNow instance with your organization's Microsoft Teams to enable
collaboration of your projects and resource allocations in Microsoft Teams. With the Microsoft
Teams integration, you can communicate with the project team members and share real-time
updates on the project and resource allocation status. For more information, see Setting up PPM
collaboration for Microsoft Teams.

Procedure
1. Create resource assignments using Project Workspace.
2. View the resource allocations in the heatmap by enabling the Allocation heatmap toggle
button.
You can switch from the week view to the month view based on your requirement.
3. Edit the desired field and select anywhere on the data grid to save the details.
Work allocation is based on capacity. The allocations are color-coded to display the availability
of the resources as shown here. These colors help to identify the availability of the resource for
a particular task.

4. Edit the resource allocation window by selecting the allocation hours cell.

Enable the Show actuals toggle to view the actuals of each resource. The actuals can't be
edited from Project Workspace.
5. From the resource allocation window, view and track the assigned Project, Owner,Task, and
Task effort of a resource.
The resource allocation is made according to the schedule of the resource, provided that the
resource has a schedule.
The Allocation heatmap modal provides the Resource status, Remaining capacity, and
Utilization columns to support resource managers in evaluating task efforts.
6. Send a direct message to the project owner on Microsoft Teams by selecting the Project
Owner field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1326


<!-- page 1327 -->
Note: The Project Owner field can only be selected if your ServiceNow® instance is
integrated with your organization's Microsoft Teams. Resource assignments on demands
are visible in the allocation window both before and after they become projects.
Related topics
Create resource assignments using Project Workspace
Realign resource assignment to project task
Realign or synchronize the resource assignment dates with the project task dates. This
synchronization helps to schedule and align the resource assignments with the timeline of
project task.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to All > Workspaces > Project Workspace and open a project.
2. From the project planning pane, double-click the Planned start date or Actual start date of a
project task.
3. Edit the field and select Ok.
4. From the project task row, select the row context menu and then select Realign assignments
to task.
Alternatively, use the Resources not synced icon
to synchronize the resource assignments
dates with the project dates at a project level. Realign assignments to task related link is
available to perform the same action while using forms.

Result

The resource assignments dates are synchronized with the project task dates.
Related topics
Resource assignments in Project Workspace
Project Workspace reference

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1327


<!-- page 1328 -->
Project Workspace reference
Reference information to provide additional details about Project Workspace, such as the fields,
user roles, tables, scheduled jobs, system properties, and custom scripts.
The components and properties installed with Project Workspace are the same as mentioned in
the Project Management. For more information, see these reference topics:
• Properties installed with Project Management
• Resource Management properties
Form field information for Project Workspace
Field information for forms used in the Project Workspace application.
Action form of Project Workspace
Learn about the fields on the Action form of the Project Workspace. Use this form to add an
action to your projects.
Action form
Field

Description

Number

System-generated number with a configurable prefix.

State

Current state of the action. All new action records are created with the state
set to Open.
The available states are:
• Pending
• Open
• Work in Progress
• Closed Complete
• Closed Incomplete
• Closed Skipped

Priority

Urgency for implementing or approving the action based on impact.

Estimated Cost Estimated cost generated by the action.
Impact

The impact on the outcome of the project if you don’t implement the action.

Approval

Status of approval from the stakeholders for the action. The available options
are:
• Not Yet Requested
• Requested
• Approved
• Rejected

Assigned to

Primary resource assigned to implement the action.

Due date

Requested date on which the action must be approved or implemented.

Parent

The project to which this action belongs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1328


<!-- page 1329 -->
Action form (continued)
Field

Description

Show on
project status
report

Option to specify whether the action information should be included in the
project status report.

Short
description

Brief description of the action such as what the action involves, how to
implement the action, who it affects, and the action outcome.
As you start entering the title for your action, the related actions that
potentially match your action title appear.
Click the suggestion icon (
predefined actions.

) to select a description from the list of

Description

Details of the action and its potential impact.

Work notes

Information about the action. Add work notes to communicate about the
status of action approval, rejection, or implementation with other users.

Create cost plan form
Use this form to create cost plans for your planning items.
Create cost plan form
Field

Description

Name

Name of the cost plan.

Entered currency

Currency to capture the unit cost value.

Unit cost

Planned cost for the cost plan.

Quantity

Quantity of cost plans.

Total planned cost

Total planned costs value of the cost plan.

Start fiscal period

Starting month in a fiscal period for the cost
plan.

End fiscal period

Ending month in a fiscal period for the cost
plan.

Cost distribution

Allocate planned cost by fiscal period or
duration.
Select a value from the list.
• Split equally across fiscal periods Distributes the cost equally among all the
fiscal periods across the duration.
• Recurring per fiscal period - Recurs the
cost for each fiscal period across the
duration.

Cost type

Cost type of the cost plan.
Select a cost type form the list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1329


<!-- page 1330 -->
Create cost plan form (continued)
Field

Description

Note: Based on the selected cost

type, the Role and Product model fields
appear.
Employee type

Read-only field.
• External if Cost type is External labor Capex
or External labor Opex.
• Internal if Cost type is Labor Capex or Labor
Opex.

Role

Name of the role to expense the cost plan.

Product model

Available if the Cost type is Software,
Hardware, or Other Capex or Opex.
Select a model from the list to expense the
cost plan.
Model name of a hardware expenditure to
expense the cost plan.

Create expense line form
Use this form to create expense lines for your actual expense.
Create expense line form
Field

Description

Number

Auto-generated number for the expense line.

Amount

Expense incurred.

Short description

Short description of the expense.
Mention unique and specific details to identify
the expense line.

Date

Date of the expense.

Process date

Processed date of the expense.

Cost plan

Associated cost plan name for recording the
expense line.

Cost type

Cost type of the expense.
by default, the cost type of the cost plan is
selected.

State

State of the expense line.
Only processed expense lines are considered
for an investment entity.

Expense type

Defines the expense type, internal or external.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1330


<!-- page 1331 -->
Create expense line form (continued)
Field

Description

By default, the expense type is considered
from the Cost type field entry.
Rate card

Name of the rate card.

Summary type

Business purpose of the expense line.

Create status report form
Learn about the fields on the Create status report form of the Project Workspace. Use this form to
create a new status report according to your requirement. The following are the heads in a report
created using the Default status report template. A report created using the One-page status
report template has fewer information heads.
Create status report form
Field

Description

Status report name

Unique name for the report that describes its
purpose clearly.

Status Date

Date of the report.

Overall health

Current overall health and status of the
project.

Executive summary

Concise summary of the project’s status,
highlighting key accomplishments, challenges,
and decisions.

Comments

Additional information or observations that are
important for tracking.

Last week's achievements

List of key milestones or tasks that were
completed in the previous week to show
progress.

Key activities planned

Main tasks or milestones planned for the
upcoming week to provide visibility into future
efforts.

Schedule

Indication for whether the project is on track
according to its planned timeline.

Comments on schedule

Comments about any deviations from the
planned schedule.

Cost

Current project costs.

Comment on cost

Comments about any deviations from the
planned budget, such as overspending or cost
savings.

Resources

Resources allocated to the project.
Confirming if the resources are sufficient and
appropriately utilized.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1331


<!-- page 1332 -->
Create status report form (continued)
Field

Description

Comments on resources

Comments about the use of resources,
including any shortages, excesses, or
adjustments needed.

Scope

Indication for whether the project scope is
undergoing any changes.

Comments on scope

Observations or explanations about changes
to the project’s scope, including how they
might affect the project.

Related topics
Create a status report in Project Workspace
Create new document template form
Learn about the fields on the Create new document template form of the Project Workspace. Use
this form to create a new status report template according to your requirement.
Create new document template form
Field

Description

Name

Unique name for your template.

Category

Category for the template. Search and select
Project status report.

Description

Type in a description for your template.

Visibility

Visibility of the template.

Owner

Owner of the template.

Icon

Icon for the report. Select an icon file, which
appears in the window along with the template
you’re creating. This file appears in the header
of the status report.

Is dynamic

Option to insert dynamic project data in the
status reports created using this template.

Attachments

Attachments to the template.

Related topics
Create a status report template in Project Workspace
Decision form on Project Workspace
Learn about the fields on the Decision form of the Project Workspace. Use this form to add
decisions to your projects.
Decision form
Field

Description

Number

System-generated ID number with a configurable prefix.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1332


<!-- page 1333 -->
Decision form (continued)
Field

Description

State

Current state of the decision. All new decision records are created with
Open state.
The available states are:
• Pending
• Open
• Work in Progress
• Closed Complete
• Closed Incomplete
• Closed Skipped

Priority

Urgency of approving or implementing the decision based on possible
impact.

Decision status

Status of the decision. The available options are:
• Pending
• Approved
• Rejected

Impact

Impact on the outcome of the project if you don’t implement the decision.

Approval
required

Option for determining whether approval of the decision is required.

Estimated Cost

Estimated cost of implementing the decision.

Due date

Requested date on which the decision must be approved or implemented.

Assigned to

Primary resource assigned to work on the decision. The default value is the
name of the user creating the decision record.

Parent

Project number to which this decision belongs.

Show on project
status report

Option to specify whether the decision information should be included in
the project status report.

Short description Brief description of the decision such as what the decision is about, who
made it, what it affects, and the decision outcome.
As you start entering the title for your decision, related decisions that
potentially match your decision are displayed.
Click the suggestion icon (
) to select a description from the list of
predefined decision descriptions.
Description

Details of the decision and its potential impact.

Work notes

Information to record and track the status of decision implementation or
approvals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1333


<!-- page 1334 -->
Export status report form on Project Workspace
Learn about the fields on the export status report form on the Project Workspace. Use this form to
export status of your projects.
Export status report form
Field

Description

Report to export

Existing project status report that you want to
export as PowerPoint.

PowerPoint template

PowerPoint template to apply for your status
report.

Issue form on Project Workspace
Learn about the fields on the Issue form of the Project Workspace. Use this form to add an issue
to your projects.
Issue form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the issue. All new issue records are created in the Open
state.
The available states are:
• Pending
• Open
• Work in Progress
• Closed Complete
• Closed Incomplete
• Closed Skipped

Priority

Urgency of resolving or managing the issue based on possible impact.

Estimated cost

Estimated cost generated by the issue.

Impact

Impact on the outcome of the project if the issue remains unresolved.

Due date

Requested date for one of the following situations:
• If the issue has an assigned resource, then the Due date is the date for
resolving the issue.
• If the issue is not assigned to any resource, then the Due date is the date
when the issue must be closed or addressed.

Assigned to

Primary resource assigned to work on the issue resolution.

Parent

Project to which this issue belongs.

Show on project
status report

Option to specify whether the issue information should be included in the
project status report.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1334


<!-- page 1335 -->
Issue form (continued)
Field

Short description

Description

Brief description of the issue and its potential impact on the success of the
project.
As you start entering the title for your issue, related issues that potentially
match your issue are displayed.
Click the suggestion icon (
descriptions.

) to select from the list of predefined issue

Description

Details of the issue and its potential impact.

Work notes

Information to record and track the work accomplished for resolving the
issue.

Project form in Project Workspace
Learn about the fields on the project form of the Project Workspace. Use this form to create a
project.

Project form
Field

Description

Project Name

Preferred name of the project.

Planned start date

The date that you plan to start the tasks for this
project.

Project class

Select the type of project that you want
to create. For example, a regular project,
customer project, or TeamSpace project.

Project template

Template to apply for your project.
If the template you need is not available in the
list, you can create it later and apply to your
project.

Request change form on Project Workspace
Learn about the fields on the Request change form of the Project Workspace. Use this form to
add a change request to your projects.
Request change form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the request change. All new request change records are
created in the Open state.
The available states are:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1335


<!-- page 1336 -->
Request change form (continued)
Field

Description

• Pending
• Open
• Work in Progress
• Closed Complete
• Closed Incomplete
• Closed Skipped
Priority

Urgency for approving the requested changes based on impact.

Estimated Cost

Estimated cost generated by the requested changes.

Impact

Impact on the outcome of the project if you do not approve the requested
changes.

Approval

Status of approval from the stakeholders for the requested changes.

Assigned to

Primary resource assigned to work on the request change.

Due date

Requested date to complete the request change.

Category

Entity for which you are creating the request change. The options are:
• Resource
• Scope
• Cost
• Schedule

Parent

Project number to which this request change belongs.

Show on project
status report

Option to specify whether the request change information should be
included in the project status report.

Title

Title for the change request.

Description

Details of the request change and its potential impact.

Business
Justification

Reason for requesting the proposed change in the project and its impact
on the business.

Work notes

Additional information to indicate progress on the project request
change.

Risk form of Project Workspace
Learn about the fields on the Risk form of the Project Workspace. Use this form to add risk to your
projects.
Risk form
Field

Description

Number

System-generated ID number with a configurable prefix.

State

Current state of the risk. All new risks are created in the Pending state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1336


<!-- page 1337 -->
Risk form (continued)
Field

Description

The available states are:
• Pending
• Open
• Work in Progress
• Closed Complete
• Closed Incomplete
• Closed Skipped
Risk status

Status of the risk. The available options are:
• Pending
• Achieved
• Not Achieved
• Avoid
• Mitigate
• Transfer
• Accept

Probability

The likelihood that the event described in the risk may occur. The available
options are:
• Absolute
• High
• Moderate
• Low

Impact

Impact of the risk event on the outcome of the project.

Estimated
cost

Estimated cost generated by the risk event.

Risk rank

A value and color assigned to the risk. This value is calculated using risk
probability and impact. You can configure the color and value using the Risk Value
Lookup. For more information, see Configure custom Risk rank and Risk value for a
project.

Risk owner Primary resource who is responsible for monitoring and managing the risk.
Assigned
to

Primary resource assigned to work on the risk.

Risk value

A value calculated from the Risk Value Lookup. For more information, see
Configure custom Risk rank and Risk value for a project.

Due date

Requested date for one of the following situations:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1337


<!-- page 1338 -->
Risk form (continued)
Field

Description

• If the risk has an assigned resource, then the Due date is the date for resolving
the risk.
• If the risk is assigned to any resource, then the Due date isn’t the date when the
risk must be closed or addressed.
Show on
project
status
report

Option to specify whether the risk information should be included in the project
status report.

Task

Project to which this risk belongs.

Short
Brief description of the event and its potential impact on the success of the
description project. If the risk is created from the risk library, then this field displays the Risk
Statement name.
Description Details of the event and its potential impact. If the risk is created from the risk
library, then this field displays the Risk Statement short description.
Actual cost Cost generated by the risk event. This information gets added when and if the
event occurs.
Mitigation
plan

Brief description of efforts taken to mitigate the risk.

Note: The Risk Assessment Summary section only appears when the Enable
Advanced Risk PPM Integration property is enabled.
Risk Assessment Summary section of the Risk form
Field

Description

Inherent risk

This field gets auto-populated with the risk
scores when the risk assessor evaluates the
inherent risk.

Elevated to enterprise risk

This option gets selected automatically when
the risk is elevated to enterprise risk by the
project manager.

Residual risk

This field gets auto-populated with the risk
scores when the risk assessor evaluates the
residual risk.

Enterprise inherent risk

This field gets auto-populated with the risk
scores when the risk assessor assesses the
enterprise inherent risk.

Enterprise residual risk

This field gets auto-populated with the risk
scores when the risk assessor evaluates the
enterprise residual risk.

Resource assignment form
Use this form to create resource assignments from Project Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1338


<!-- page 1339 -->
Resource assignment form
Field

Description

Resource

Category of resource. To request any member of group or user, select the name
from the resource list.

Effort Type

Type of effort selected during the creation of resource assignment. If you select
any of the following choices, then a field is displayed for that choice.
• Hours
• FTE
• Person days
For example, if you select Hours, then the Hours field is displayed.

Effort

Effort of the resource assignment.
• If you select Hours, the number of allocated hours for a selected resource is
displayed.
• If you select FTE, the number of units for the full-time equivalent value for a
selected resource is displayed. By default resource assignment is created with
1 FTE (1FTE=8 hours) effort.
• If you select Person days, the number of days for the selected resource is
displayed.

Start date

Start date for the resource assignment. By default, this field shows the Planned
start date of the associated project record or task record. If both planned
and actual start dates are available on the project tasks, the actual dates are
considered by default for resource assignment start date.

End date

End date for the resource plan. By default, the date is derived from the Planned
end date of the associated project record or task record. Edit the default date,
if necessary. If both planned and actual end dates are available on the project
tasks, the actual end dates are considered by default for resource assignment.

Role

Role associated with a role resource assignment.

Note: You can define project-specific roles for the team members based
on their skills and competencies.
Group

Group associated with the resource assignment.

Note: When you select a group in the resource field, the assignment is
created for all the members of the group. You can associate roles, skills,
locations, and other attributes to groups, which then apply to users within
a group. Groups can also be assigned as primary groups based on your
requirements.
Skill

Skills that the requested resources possess to allocate the resources to the
resource assignment.

Resource
status

State of the resource assignment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1339


