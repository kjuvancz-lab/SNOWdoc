# Zurich Strategic Portfolio Management — Project Portfolio Management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 895–909 of 2289

Sections: Project Portfolio Management (p895); Explore (p896); Activate (p910)

---

<!-- page 895 -->
Supported tables for Data Separation
Several types of tables are supported for Data Separation, including direct and indirect related
tables for each entity.
You can enable data separation on the following entities and related entities.
• Entities:
◦ Demand [dmn_demand]
◦ Project [pm_project]
◦ Resource Plan [resource_plan]
◦ Cost Plan [cost_plan]
• Related entities:
◦ Cost Plan Breakdown [cost_plan_breakdown]
◦ Project Task [pm_project_task]

Domain separation and Data Separation
Domain separation is supported for Data Separation. Domain separation enables you to separate
data, processes, and administrative tasks into logical groupings called domains. You can control
several aspects of this separation, including which users can see and access data.

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

Project Portfolio Management
®

ServiceNow Project Portfolio Management (PPM) provides a simplified, team-oriented
approach to managing projects, portfolios, their resources and financials by combining several
individual applications.
Customers who already have Project Portfolio Management can upgrade to PPM Standard. New
customers must purchase PPM Standard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

895


<!-- page 896 -->
Get started

Innovation Management

Demand Management

Project Management

Resource Management

Portfolio Management

Program Management

Timecard Management

PPM Analytics
and Reporting

PPM reference

Troubleshoot and get help
• Ask or answer questions in the Strategic Portfolio Management forum on the ServiceNow
Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Explore Project Portfolio Management
Learn more about Project Portfolio Management (PPM) with a sample workflow and review the
benefits it can provide for different users in your organization.

Project Portfolio Management overview
PPM is a collection of multiple applications that help you analyze and approve ideas and
demands, convert them to projects and manage them through completion. You can manage
resources and financials of individual projects or the ones that are rolled up to a program or
portfolio. PPM enables your teams to plan and execute work in traditional waterfall methodology
or combine an Agile approach to execute using a hybrid methodology.

Project Portfolio Management workflow

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

896


<!-- page 897 -->
Project execution in a Waterfall, Agile, or Hybrid approach using PPM

The project manager (project_manager role) includes all the manager roles for the applications
included in the PPM suite.

Project Portfolio Management benefits
Benefit

Feature

Users

Gather and evaluate of ideas and promote
accepted ideas to demand, story, epic, or
project.

Innovation
Management

Project Teams,
Demand Manager

Assessing, approve, and promote demands to
strategic and operational demands.

Demand Management Demand Manager

Manage projects, tasks, and resources.

Project Management

Manage programs, the projects under a
program and its tasks.

Program Management Program Manager

Manage your projects and programs of
different portfolios.

Portfolio Management Portfolio Manager

Create resource plans and request resources.

Resource
Management classic

Track time on a daily basis against tasks

Time Card
Management

Gain visibility into the status and health of
programs, projects, and demands.

Project Portfolio
Project, Program, or
Management Platform Portfolio Manager or
Analytics Solutions
Business stakeholder

Project Manager,
Project Team

Resource Manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

897


<!-- page 898 -->
Integration with Digital Portfolio Management
Digital Portfolio Management (DPM) provides a unified workspace for owners to view and
collectively manage their services and applications through the full life cycle. Installing DPM and
Project Portfolio Management enables the integration with Project Management and Demand
Management. With this integration, DPM managers can view project data that may impact a
business application and create demands on a business application in DPM.
For more information, see Exploring Digital Portfolio Management

.

Domain separation
Domain separation provides complete data isolation for domain-specific users. Project Portfolio
Management supports domain separation with a few limitations. For more information, see
Domain separation and Project Portfolio Management.

PPM Standard (Project Portfolio Management)
®

The ServiceNow PPM Standard, earlier known as Project Portfolio Suite with Financials,
application integrates Financial Management and Project Portfolio Management.
PPM Standard automatically activates Financial Management if it is not already active.
The integration enables project and portfolio managers to perform the following activities:
• Determine overall cost requirements for all demands and projects in portfolios
• Establish resource requirements and track costs for demands and projects
• Track actual amounts spent compared to an approved budget

Upgrades and new customers
Customers who already have Project Portfolio Suite with Financials can upgrade to PPM
Standard. New customers must purchase PPM Standard.

PPM Standard applications
The PPM Standard plugin installs Financial Management and Project Portfolio Suite. The
following diagram illustrates the applications that are available.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

898


<!-- page 899 -->
Applications installed with PPM Standard

PPM Standard additions
PPM Standard adds the portfolio workbench, that you can use to perform all aspects of financial
planning. You can also perform financial planning and budgeting using UI actions on related
lists, but the workbench is the preferred method. See Legacy portfolio workbench for more
information. See Legacy- Plan the portfolio for information on how to plan end-to-end finances
for projects and portfolios, including tracking actual costs and creating budgets as part of the
Financial Management application.
Related topics
Portfolio Management
Financial Management - Legacy
Project Portfolio Management
Activate Investment Funding for projects and demands
Activate the Investment Funding (com.snc.investment_funding) plugin if you have the admin role.
This plugin includes demo data and activates related plugins if they are not already active.

Before you begin

Ensure that the PPM Standard (com.snc.financial_planning_pmo) plugin is installed.
Role required: admin

About this task

The Investment Funding (com.snc.investment_funding) plugin enables you to request or allocate
funds for your projects and demands.
The plugin activates the related plugins if they are not already active. It also adds the
sn_invst_pln_investment_user role to the following roles:
• project_manager
• demand_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

899


<!-- page 900 -->
• portfolio_manager
• program_manager

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
Related topics
Install Investment Funding
List of plugins (Zurich)
Currencies and budget reference rates
The support for use of multiple currencies provides conversions for budget items in different
currencies.

Currency support
The application can use a base currency, also called the reporting currency that you specify with
system properties . You can also specify other currencies for budgets and budget items.
Currency usage
Item

Currency used

Budget
plan

A currency that you specify on the Budget Plan form. When the plan is converted to
a forecast, the application converts the currency to the reporting currency.

Budget
plan
items

A currency that you specify on the Budget Item form.

Budget
forecast

The reporting currency.

If the budget plan item has currency different from the budget plan currency, the
budget plan item amount is converted to the budget plan currency.

Budget reference rates
Budget reference rates are exchange rates between currencies. Each reference rate is valid for
a specified time period. The application uses budget reference rates when budget items are in
a different currency from the budget plan and forecast. The application automatically converts
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

900


<!-- page 901 -->
budget item currency values to a global system currency value when it calculates the Budget
Amount on a Budget Plan, and when it shows values on budget forecasts.

Note: Currency support is for budgets only. You cannot create allocations in multiple
currencies.

Test Management 2.0 integration with Project Portfolio Management
Test Management 2.0 integration with Project Portfolio Management enables you to carry out
testing activities on projects.
After activating both the Test Management 2.0 and Project Portfolio Management applications,
you can:
• Add a test phase to a project.
• Assign a test execution suite to the test phase.
• View the tests associated with the test execution suite.
• Assign tests to testers.
• Perform tests and record results.
• Track the progress using the Percentage complete field in the timeline.
As testers perform tests and record results, the information is updated to the test, test phase,
and then to the project.

Note: If you're an existing user, the integration between Project Portfolio Management
and Test Management 1.0 continues to work the same. You can still create test phases,
associate test phases to a test plan, and perform testing activities.

Agile Development 2.0 integration with Project Portfolio Management
Project Portfolio Management leverages the Agile Development 2.0 application to combine the
Scrum methodology with project-based IT development.
IT organizations typically work on multiple projects with shorter time schedules. The project
planning and tracking is done using waterfall, but the group prefers scrum methodologies to
carry out their work. It then becomes a challenge to track project status when there is an agile
development phase. This integration between Agile Development 2.0 with Project Portfolio
Management facilitates a combination of waterfall and agile methods for project management
and development.
The flow described below is applicable when Agile Development 2.0 is activated along with
Project Portfolio Management.
• Create a group to represent a Scrum team.
• Add members to the group.
• Create sprints.
• Assign groups to projects from the Project Workbench.
• Maintain group and project backlogs. Multiple projects can be under development and groups
can be assigned to multiple projects. Each project and each group has its own backlog. The
project backlog includes all stories related to a project. The group backlog includes stories
from multiple projects that have been assigned to the group.
• Perform group sprint planning. The group refines the combined backlog, ranks the stories and
assigns points, and adds stories to sprints based on priority.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

901


<!-- page 902 -->
• Create stories, including one-off stories that are not related to projects.
• Track progress in stories, phases, and projects.
Create and manage agile projects
An overview of the tasks involved in creating an agile project.
The following tables, arranged by task group, list the tasks involved in creating an agile project.
Set up a development group
Task

How do I do this?

Define an Agile
group

Navigate to Agile Development > Create Agile Group and click New.

Add group
members

Navigate to the Group members related list on the Group form and click
Edit.

Decide the
Navigate to Agile Development > Groups, select the desired group, and
capacity of a group enter a number in the Group capacity (points) field.
Create sprints
Task

How do I do this?

Create a
sprint

Use the Create Sprints related link on the Group form to create multiple sprints
or use the Sprints related list to create individual sprints.

View the
created
sprints

Use the Sprints related list on the Group form.

Create a new project
Task

Create a project

How do I do this?

• Navigate to Project > Projects > Create New.
• Navigate to Project > Projects > Project Workspace and click New
Project.

Open an existing project
Task

How do I do this?

Open an
existing project

• Click the Project Workspace related link on the Project form.
• Navigate to Project > Projects > Project Workspace and select the project
from the Select Projects choice list in the workspace header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

902


<!-- page 903 -->
Add phases to a project from the project workbench
Task

How do I do this?

Create an agile
phase for a
project

Click the Add phase icon (
choice list.

) and select Agile from the Phase Type

Note: This option appears only when both the Project Portfolio
Management and Agile Development 2.0 applications are installed.
Create a test
phase for a
project

Click the Add phase icon (
list.

) and select Test from the Phase Type choice

Note: This option appears only when both the Project Portfolio
Management and Test Management 2.0 applications are installed.

Add details to a project phase from the project workbench
Task

How do I do this?

View phase
details in list
view or VTB

Click the List or VTB button in the project workbench header.

Assign a group
to an agile
phase

Edit the Agile phase and select a group in the Group field.

Select sprints
for an agile
phase

Edit the Agile phase, ensure that a group has been assigned, and select a
Start Sprint and End Sprint.

Create stories
for an agile
phase

Click the Agile phase in the project workbench and click New in the detail
view header.

Refine stories
for one project

Click the Manage Stories button to open the Manage Stories dialog box.

Note: You can also use the Agile Planning & Tracking related link on
the Project form to view your backlog, assign stories to the projects, or
create new stories for the project.

Refine stories
across multiple
projects

Click the Manage Stories related link on Group form.

Assign a group
to an agile
phase

Click the Agile phase edit icon and select the group from the Group choice
list.

Add milestones to a project from the project workbench
Task

How do I do this?

Add milestones to a Click the Add phase icon ( ) and then click Milestone at the top of the
project
Add Phase pop-up window.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

903


<!-- page 904 -->
Plan sprints
Task

How do I do this?

Start sprint
planning

Navigate to Agile Development > Groups, open the desired group, and click
the Sprint Planning related link.

Add stories to
the sprint

Navigate to Agile Development > Groups, open the desired group, click the
Sprint Planning related link, and click Create story.

Testing process ( Only when Test Management 1.0 is activated)
Task

How do I do this?

Create a test plan

Navigate to Test Management > Test Execution > Test Plans >
New.

Add test cases to a test
plan

Click the Add Test Cases from Test Suite related link on the Test
Plan form.

Assign test cases to
testers

Select a user in the Assigned to field on the Test Case form.

Notify testers to start
testing

Click the Notify testers to start testing related link on the Test Plan
form.

Tester performs tests and Navigate to Self-Service > My Tests or Self-Service > My
submits results
Assessments.
Monitor the testing
progress

The Test Plans list, Test Plan form, and Test Case form all display
results for test cases and individual tests.

Testing sign-off

Click the Sign-off Test Plan related link on Test Plan form.

Testing process (Only when Test Management 2.0 is activated)
Task

How do I do this?

Create a test
execution suite

Navigate to Test Management 2.0 > Test Execution Suites, and click
New.

Add tests to a test
execution suite

Open a test execution suite, and click Add tests. From the Tests list,
select the required tests and click Add to Execution Suite.

Assign tests to testers

Open a test execution suite. In the Test execution assignments related
list, assign tests to testers.

Note: Only the tests in the Ready state can be assigned.
Tester performs tests
and submits results

Navigate to Test Management 2.0 > Tests Assigned to me. Select the
required tests and click Run.

Define an Agile group
Create an agile assignment group to later assign the work of an agile project.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

904


<!-- page 905 -->
About this task

Assignment groups in Agile Development 2.0

Procedure
1. Navigate to All > Agile Development > Groups.
2. Click New.
3. On the form, fill in the fields:
Group form
Field

Description

Name

Enter the name of the group.

Manager

Select the manager of the group.

Group capacity
(points)

Enter the projected capacity of the group in story points for each
sprint.

Group email

Email address of the group.

Description

A brief description of the group.

Related links of the Group form
Field

Description

Create Sprints

Access the Create Sprints for Team dialog
box. Fill in the fields and then click OK to
create multiple sprints for the current group.
The new sprints are added to the Sprints
related list.

Sprint Planning

Access the Sprint Planning tab on the Agile
Board.

Group Velocity

Access a chart which shows how the story
points in a project are allotted across sprints.

4. Click Submit.
Add group members
Add members to the group who are later assigned tasks of an agile project.

Before you begin

Role required: none

Procedure
1. Navigate to All > Agile Development > Groups.
2. Open the desired group.
3. Click New in the Group Members related list.
4. Add the name of the group member in the Name field.
5. Select a Scrum Role for the group member.
6. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

905


<!-- page 906 -->
Decide the capacity of a group
Decide the capacity of a group based on the historical velocity of the group for each sprint.

Before you begin

Role required: scrum_master

Procedure
1. Navigate to All > Agile Development > Groups.
2. Open the desired group.
3. Decide the group capacity in points and enter the number in the Group capacity (points) field.
4. Click Update.
Convert a release team to an agile group
Convert a release team to an agile group to later assign the work of an agile project.

Before you begin

Role required: project_manager

About this task

This section is applicable only if you have upgraded from Agile Development 1.0 to Agile
Development 2.0.

Procedure
1. Navigate to All > Agile Development > Groups.
2. Click the Convert Release Teams to Groups related link.
3. Select the team that you want to convert to an agile group.
4. Click Convert to Group.
Create a sprint
Create a sprint to plan the work for an agile phase of a project.

Before you begin

Role required: none.

Procedure
1. Navigate to All > Agile Development > Groups.
2. Open the desired group.
3. Click New in the Sprints related list.
4. Fill in the following fields on the Sprint form:
◦ Short description: Name or a brief description of the sprint
◦ Planned start date: Start date for this sprint
◦ Planned end date: End date for this sprint
◦ Group capacity (points): Projected capacity of the group in story points
5. Click Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

906


<!-- page 907 -->
Create multiple sprints
Create multiple sprints to plan the work for an assignment group.

Before you begin

Role required: none.

Procedure
1. Navigate to All > Agile Development > Groups.
2. Open the desired team.
3. Click the Create Sprints related link to open the Create Sprints for Team dialog box.
4. In the Sprint form, fill in the fields:
◦ Name: the name of the sprint.
◦ Starting Number: the number of the first sprint to be created.
◦ Start date: the start date for the first sprint to be created.
◦ Duration: the number of days in a sprint.
◦ Number of sprints: the number of sprints to be created.
5. Click OK.
The new sprints are added to the Sprints related list on the Team form.
Assign a group to a project
Assign a group to a project so that the group later works on the tasks of the assigned project.

Before you begin

Role required: it_project_manager

Procedure
1. NavNavigate to All > Project > Projects > All.
2. Select your project to open its form.
3. From the Assignment group field, select a group to assign this project.
If you don't see the group that you need, work with your admin to create it. See Define an Agile
group.
4. Save the project form.
Add stories to a project
Create stories and associate them to a project or add existing stories to your project.

Before you begin

Role required: it_project_manager

About this task
• The stories list displays current active stories. You can create a story from this list or view the
story form for a current story. You can also add scrum tasks from the story form and view the
story and task progress boards.
• Stories can be associated to projects, but is not mandatory. While creating a story, if a project
has only one phase then the story automatically gets tagged to the only phase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

907


<!-- page 908 -->
• One-off stories can be created without a link to a product or a project. One-off stories are
created with only a short description, and can be assigned to a group.S
• Stories can be added to only those projects that have the Execution type field set to Hybrid or
Agile.

Procedure
1. Navigate to All > Projects.
2. Open a project that you want to add stories.
3. From the Stories related list, select one of the following:
◦ Add Existing to add existing stories to this project.
◦ New to create a story and add it to this project.
For information on the form fields, see the descriptions in Story form.
4. Save the project form.

What to do next
• Create scrum tasks for this story. See Create a scrum task for Agile Development 2.0 stories.
• Use the related links and lists of the story for more actions that you can perform. See Related
links and lists for a Story in Agile Development 2.0.
• Add dependencies for Agile Development 2.0 stories
• You can create a story with the same details as this story by using the Insert or Insert and Stay
options from the story additional actions (

).

When you use Insert and Stay, the form of the newly created story stays open. You can modify
the details of the story or create more stories with these details. On the Agile board, the
new story is positioned right below the original story. The global rank of the new story is set
accordingly.

Note: Set the glide.ui.task.insert and glide.ui.advance properties to
true to access these actions. These actions are not allowed on stories added from the
triage board.
Plan sprints
Streamline your sprint planning and completion activities using the Sprint Planning tab.

Before you begin

Role required: scrum_admin, scrum_master, or scrum_sprint_planner

Procedure
1. Navigate to All > Agile Development > Groups.
2. Open the desired group.
3. Click the Plan Sprints related link.
The Agile Board, Sprint Planning tab appears.
4. Use either of options to view all the active stories assigned to the team, but not assigned to any
sprint in the Backlog section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

908


<!-- page 909 -->
Action

Description

Using the drag feature

This option can be used to move stories with­
in the backlog, move stories from the backlog
to any sprint, or move stories from one sprint
to another.
Point to a story in the backlog and drag it to
the required location.

Using the keyboard

This option can be used to move stories only
within a backlog or a sprint.

Note:
◦ If the backlog contains more than 50 stories, then pagination control appears at the
bottom of the list enabling you to navigate to the previous, next, first, or last pages in
the list.
◦ Rearranging stories in the backlog changes the ranking of stories. Ranks are stored in
the global_rank column in the Story [rm_story] table. When you move a story within a
backlog, its rank changes relative to the stories within the same backlog. Thus, if the
story exists in some other backlog, its ranking might change but position in the backlog
would remain the same.
5. To start a sprint, click Start that appears at right-corner of the first or top sprint.
TheSprint Tracking tab appears.
6. To complete a sprint, click Complete Sprint that appears at right-corner of the first or top
sprint.
a. Move incomplete stories, if any, to the backlog or a future sprint.
b. Click Complete.
The sprint disappears from the Sprint Planning tab and appears in the Sprint list as
complete.
Track progress
Track the progress of an agile phase from the Project Workbench timeline.

Before you begin

Role required: none

About this task

Stories are assigned to a project and are tied to an agile development phase in the Project
Workbench. As stories are completed, the story points and the story status get rolled up to the
sprint and project phase. In turn, the phase gets rolled up to the project.

Procedure
1. Navigate to the Project Workbench timeline.
2. The color in the phase bar increases to show progress and the Percentage complete field is
updated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

909


