# Zurich Strategic Portfolio Management — Project Management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1038–1187 of 2289 | Part 1 of 2

Sections: Project Management (p1038)

---

<!-- page 1038 -->
Widget form (continued)
Field

Description

The following sample script returns the capital budget metric value of a demand to
appear on the widget.
var context = JSON.parse(context);
var filter = context.filters;
var now_GR = new GlideRecord('dmn_demand');
gr.addEncodedQuery(filter['dmn_demand']);
gr.query();
if(gr.next())
gr.getValue('capital_budget');
Collapse
Short
Description of the widget.
description

Project Management
®

The ServiceNow Project Management application is a suite of tools that aids in managing
projects, tasks, and resources. You can create and manage small projects with a few tasks to
large portfolios that contain complex tasks with various relationships and dependencies.
Introduction to Project and Program Management including the purpose of Project Management,
the project workspace and template, baseline, project considerations, and viewing the project.

Get started

Explore
Learn the features and
business value of Project Management

Use
Manage projects with Project
Management

Configure
configuration

Set up the core

Reference
Learn about forms and
fields of Project Management

Exploring Project Management
Create, view, and manage projects using Project Management (PM) application.

Project Management overview
A project is any planned, collaborative effort that is designed to achieve an objective. The Project
Management application not only helps you plan and track projects, it integrates with other
applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1038


<!-- page 1039 -->
There are several paths available to manage a project. The best path usually depends on
business needs. The phases in the graphic are designed to get a project up and running with the
minimum amount of effort.
Project phases

Project Management benefits
Project Management benefits
Benefit

Feature

Users

Starting a project

Start a project after setting
up the project, populating
it with tasks, and assigning
resources.

it_project_manager

Create a project task from a project

Create project tasks from
project form.

it_project_manager

Create baseline of a project

Capture planned dates of
all tasks and milestones of a
project using baseline.

pps_admin

Create a milestone

Use milestones to mark
key dates in your project,
such as key decision points,
approvals, and holidays.

it_project_manager

Create a monetary benefit plan for a
project

Capture the benefits accrued it_project_manager
by the project when the
project is executed by creating
monetary benefit plan.

Create a non-monetary benefit plan
for a project

Capture the non-financial
benefits accrued by the
project when the project is
executed by creating nonmonetary benefit plan.

it_project_manager

Create a project cost plan

Create a cost plan to specify
the unit cost of a cost type for
a fiscal period.

it_project_manager

Adding RIDAC (Risks, Issues, Actions,
Decisions, and Request Changes)
records for a project

Create Risk, Issue, Decision,
it_project_manager
Action, and Request Change
records (RIDAC) and identify
issues or risks for your project.

Applying templates to projects

Create, save, and reuse
project structure using project
templates.

it_project_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1039


<!-- page 1040 -->
Project Management benefits (continued)
Benefit

Feature

Users

Adding external dependencies for
projects

Use an external dependency
it_project_manager
to set up a dependency from a
task in one project to a task in
another project.

Importing and exporting projects

Import or export projects from
Microsoft Project to Project
Management.

it_project_manager

Project Diagnostics

Detect corrupt data in
a project such as task
validity, dependencies, and
relationships using Project
Diagnostics.

it_pps_admin,
adt_admin

Investment Portal

Create an investment board
it_project_manager or
and share it with other
it_project_user
stakeholders using Investment
Portal.

Manage status of your projects using
Project Status application

Track the status of your
projects, collaborate with
stakeholders to resolve
exceptions, and take timely
actions regardless of your
location using project status
application.

portfolio_manager or
project_manager or
program_manager

Using Project workbench - Legacy

The Project Workbench
supports hybrid project
models by combining
waterfall, agile, and test
phases in a single project
framework.

it_project_manager

Using Teamspaces in Project
Management

Use teamspaces to centralize
key PPM modules in one
location and to improve
accessibility and team
productivity.

it_pps_admin, admin

Collaborate with your project teams
using PPM Collaboration application

Enhance team collaboration
on Slack or Microsoft Teams
with the PPM Collaboration
application.

it_project_manager

Virtual Agent for PPM

Obtain business-related
admin,
information by interacting with virtual_agent_admin
a virtual agent via messaging
platforms using Virtual Agent
for PPM.

Integration with Project Portfolio Management
You can use Project Management as a separate application or it can be activated as part of the
PPM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1040


<!-- page 1041 -->
This application provides a simplified, team-oriented approach to IT development by combining
several individual applications and integrating the different components of the project
development life cycle.

What to explore next
To learn more about configuring and using Project Management, see:
• Configuring Project Management
• Using Project Management
• Project Management reference
Basics of Project Management
Learn about the basic terms used in Project Management.

Bottom-up Tasking
Bottom-up (tactical) tasking means that you plan small, individual units of work that are required,
then build a project up to include larger phases. Take this approach when you know what
individual tasks are required to be accomplished and you are more flexible about overall project
duration and estimated cost. Use this approach to see how much a project costs and how long
it takes if you include every task. Project management supports tactical tasking by using rollup
calculations on several project fields, such as project duration, so that the project adjusts to the
tasks it contains. It is the recommended approach for the Project Management application.

Top-down Tasking
Top-down (strategic) tasking means that you plan high-level tasks first, then break down the work
into smaller units. Take this approach when you want to build a project with fixed or inflexible
time and budgetary constraints and well-defined phases. Establish well-defined milestones
and dependencies between tasks that you consider from the beginning. Gradually add smaller
tasks to the project later. This approach avoids including all possible tasks in a project and stays
flexible with what tasks are included.

Note: When you use this method, the Project Management application still rolls up several
values, such as task duration. Creating a task with a longer duration than the project,
expands to cover the entire duration of the task, and defeats the purpose of using this
approach. Values are not rolled down from parent tasks, nor are there any restrictions on
creating child tasks that are longer than specified duration of the parent.

Project relationships and dependencies
The Project Management application enables you a create parent-child relationships between
tasks and dependencies, such as finish-to-start and finish-to-finish, between tasks. A task
dependency is created when one task is prevented from starting or finishing based on its
relationship with the preceding and succeeding tasks.
Project relationships and dependencies
Concept

Description

FinishA dependency that indicates that a task must not be started until its predecessor
to-start
finishes.
dependency

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1041


<!-- page 1042 -->
Project relationships and dependencies (continued)
Concept

Description

Start-to-start A dependency that indicates that a successor task must not be started until the
dependency predecessor task has started.
Start-toA dependency that indicates that a successor must not be finished until the
finish
predecessor task starts.
dependency
FinishA dependency that indicates that a task must not be finished until another task
to-finish
finishes.
dependency
Lag time

A manually specified time break between predecessor and successor tasks.

Parent task

A project task with smaller tasks, referred to as child tasks, underneath it. Child
tasks break down the work of a parent task into more manageable subsets.
Certain fields for child tasks, such as planned end date, roll up and affect the
same field in the parent task.

Child task

A project task that is a subset of a larger task. Child task start dates cannot occur
before the start date of the parent task.

Rollup task

Another term for a parent task in the context of aggregating child task items,
such as effort or resources, into a larger parent task calculation. All fields on
rollup task forms are read-only.

Roll down

State changes roll down from the project to project tasks, and from parent tasks
to child tasks.

Note: Only one relationship can exist between two tasks.
The Project Management application provides several properties that control how tasks are
calculated and behave. See Project property for more information.

Task time constraints
The Project Management application supports several types of dependencies.
The Project Task form includes a Time Constraint field, which can be one of the following values:
• If a task is set to Start ASAP: The task appears on the Gantt chart as starting when the
dependency allows it. However, a task can start on a later date when a lag value is set for the
relationship.
• If a task is set to Start on specific date: The task appears on the Gantt chart as starting on the
constraint date. The start date of such a task is not impacted even after you put the task in a
relation to another task, for example, FS relation.
• If a task is set to Start no earlier than: The task appears on the Gantt chart as starting on or
after the constraint date. If the task has no predecessor, the task starts on the specified date.
The start date changes to a later date based on the predecessor task end date or if the task is
in a relation to another task, for example, FS relationship.
• If a task is set to Start no later than: The task appears on the Gantt chart as starting on or
before the constraint date. If the task has any predecessor task, the dependency on the
predecessor task determines when the task can start. A scheduling conflict occurs if the
predecessor task attempts to move the task beyond the date specified in the Constraint date
field.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1042


<!-- page 1043 -->
Note: The project property Retain start on constraint on tasks after adding relations

controls the behavior for Start on selection. The property is set to True by default and is
not editable.
• A task that is not honoring dependency is indicated with a red calendar icon
on the
Planning Console. If you want the task to honor the dependency and adjust the start
accordingly, change the constraint type of the task to Start ASAP.

Parent-child task relationships
If a task is relatively large and requires several users with different skills to manage, break the
task into subtasks and create parent-child relationships. A child task is a relatively smaller,
manageable size of work.
When you group child tasks together under a parent, values such as Estimated cost aggregate
and roll up to the parent task. So the parent task takes on the form of a summary task or rollup
task for its child tasks. Planned start date and Planned end date rollup occurs when you create
child tasks: the duration of the parent automatically adjusts to cover its child tasks.
A parent-child relationship is different from a dependency relationship. In a dependency, one
task must finish before another begins. In a parent-child relationship, any number of tasks can be
nested under a parent task with or without any dependencies. When you create a parent-child
relationship, the parent task number is saved in the Parent field in the Project Tasks table. All
project management tasks have a parent: either another project task or the project itself.
Unlike a dependency, a parent-child relationship is not saved as a record in any table. The only
modification that takes place when a parent-child relationship is modified is the Parent field in
the child task record.
You can create predecessor-successor relationships between child tasks with different parents,
between two different parent tasks, or between a child task and another parent task. However, if
the predecessor task finishes after the successor task starts, creating a dependency between
child tasks that have different parents is not allowed.

Note: On the Gantt chart, you can drag-and-drop the parent task to move the entire
hierarchy to a new location on the schedule.

Time constraints in parent-child relationships
Parent-child task relationships have several effects on task time constraints.
When a child task is set to Start ASAP
The child task starts at the same time as the parent task. If Project itself is set as a
parent, the Start ASAP tasks starts on the same date as set in the Constraint Date
field, as long as it does not have dependencies with other child tasks.
When a parent task is set to Start ASAP and child tasks are set to Start on specific date:
• The earliest child task start date determines the start date of the parent, assuming
no other dependencies.
• In this case, the Time constraint field of the parent remains Start ASAP, but the
actual start date is changed to the start date of the earliest child task.
When a parent task is set to Start ASAP and child tasks are set to Start on specific date:
Child precedence also applies to end dates. If the estimated end date of the child
task is later than the end date of the parent task, the estimated end date extends to
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1043


<!-- page 1044 -->
cover the child. For actual values, a parent has the same start date as the earliest
start date of its children. The latest actual end date is the latest end date of its
children. Assuming the child tasks are Closed Complete. If the child tasks are not in
the Closed Complete state, the actual end date of the parent is empty.
For the planned start date of the parent task:
• The planned start date is the earliest planned start date of all the children that do
not have an actual start date.
• If all child tasks have actual start dates, the planned start date of the parent task is
set to the actual start date.
For the planned end date of the parent task: The latest planned end date or actual
end date of the child tasks determines the planned end date of the parent.
A task with Start no later than or Start on specific date time constraint cannot be
a parent task. When a new child task is added to a task with these time constraints,
the time constraint for the parent task is changed to Start ASAP.

Top-down and bottom-up planning
• For top-down planning, create a task that you already know includes several child tasks. Then
create the child tasks and specify that they are child tasks of the first task you created.
• For bottom-up planning, create tasks for the smallest units of work first. Then you can create
intermediary parent tasks that cover a group of related child tasks. For example, if there are
five sequential tasks that comprise a phase of a project called install database, create the five
tasks first. Then create another task called Database installation and make it the parent task of
the five tasks. Rollup calculations, such as Planned duration, for the Database installation task
are automatically calculated based on the child tasks.
It is easiest to build task relationships and dependencies while creating sets of tasks.
• A dependency means that a task relies on other tasks to be performed (completely or partially)
before it can be performed.
• A relationship means a parent-child relationship whereby several subtasks are configured
under a parent task or phase, which rolls up fields like Planned duration and Estimated cost.
Use the Gantt chart with task forms and related lists to build relationships. Add milestones
based on the major events of a project and create dependencies between milestones and
tasks, if necessary.
Also set up notifications to alert project task assignees when their tasks move to the Work in
Progress state. See Creating Project Tasks for more information on creating tasks.
Related topics
Parent-child rollup task calculations
Create a parent-child relationship on the Project Task form
Parent-child rollup task calculations
Date changes, stage changes, and value calculations roll up from child tasks to parent tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1044


<!-- page 1045 -->
• Date changes involve modifying the planned start or end date of a parent task based on those
values in child tasks.
• State changes involve modifying the state of the project record or parent task records when all
child records are set to a certain state.
• Calculations involve summing the values of child tasks and then automatically updating the
parent to reflect a new total.
The following fields change on rollup tasks:
• Planned Start date: Set to read only for parent tasks. Remains editable for the project record
(also considered the top-level task).
• Planned End Date: Becomes read only.
• Planned Duration: Becomes read only.
• Actual Start Date: Becomes read only.
• Actual end date: Becomes read only.
• State: Becomes read only.

Duration Rollups
Rollups are calculated for the following items:
• Planned duration and planned effort: the sum of all planned duration and planned effort
values for all child tasks.
• Actual duration and actual effort: the sum of all actual duration and actual effort values.
Actual duration and actual effort values are calculated when all child tasks are in the Closed
Complete state. Actual effort values can include rollups from time cards.

Note: Verify that the time card property com.snc.time_card.update.effort is enabled.
Navigate to System Properties > All Properties to enable this property.

Cost Rollups
Cost calculations roll up when the costing add-on is active.
• Estimated cost: The sum of all cost estimates at the beginning of a project. Estimated costs of
child tasks roll up to parent tasks and to the project.
• Actual cost: By default for the project, the sum of all costs of all the expense lines, and are
typically associated with a time card and a labor rate. To track costs, you can derive rates using
any of the following options:
◦ Associate a rate model to the project.
◦ Define rate cards for the task and labor expenses.
◦ Associate rate at the resource plan level.
These rates automatically generate expense lines showing actual expenditures, which are
associated with the projects. If rate cards are defined, the task expense lines are generated
as each project task closes, and labor expense lines are generated when time cards are
approved. Expense lines are visible in the Expense Lines related list, which requires the
Advanced view on both Project and Project Task forms.
To ensure actual costs of child tasks correctly roll up to the project and added to project expense
lines, the following must be true:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1045


<!-- page 1046 -->
• The com.snc.project.rollup.cost property must be set to true. To enable this
property, navigate to Project Administration > Settings > Preferences - Project and select the
Enable project cost rollup check box.
• The glide.cost_mgmt.process_task_top_task property must be set to false. Go to
the costing properties in the Cost Management application. Check the When creating a task
expense line should the system also create expense lines for the task's top task box is not
checked.
• The glide.cost_mgmt.calc_actual_cost property must be set to true. Go to the
costing properties in the Cost Management application. Check the For planned tasks types,
calculate the actual cost field using the total of expense lines for the task box.

Project State Rollups and Roll Downs
Project task states roll up. The state of parent tasks becomes read only, and changes
automatically when you change the states of child tasks.
Project task states can roll up if:
• The state of the child task is manually changed and there are no other conditions on the
parent task.
• The state of the child task is changed to Work in Progress or Closed. These states roll up to
the parent. Pending and Open do not roll up to the parent task.
Project states can also roll down. If you change the state of a project to closed, all tasks under
it change to the default closed value (Closed Complete). If a closed project or closed task is
reopened, all tasks under it change as follows:
• Project or parent changed from closed to Pending or Open: Child tasks change to Open.
• Project or parent changed from closed to Work in Progress:
◦ Child tasks with a Start on date that has passed are changed to start ASAP and the state is
changed to Work in Progress.
◦ Child tasks with a Start on date that has not yet passed retain the same start on date but the
state is changed to Open.
Related topics
Create a parent-child relationship on the Project Task form
Project tasks
Create project tasks in several ways, even from other applications in the instance.

Before you begin

Role required: it_project_manager

About this task

You can create a project task using any of the following options.

Procedure
• Use the Project Tasks related list.
This related list is available from both a project record and a project task record. You can use
the New UI action or insert a new row in the related list.
• Use the planning console.
• Use the project task creator.
Use a dialog box to create multiple tasks at one time. The project task creator is available from
both a project record and a project task record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1046


<!-- page 1047 -->
• By copying an existing project or task.
This option copies a selected task, or even a whole project, including all child tasks.
• From an incident, problem, or change request.
The Project Task related list is also available from the Incident, Problem, and Change Request
forms. The tasks you create from these forms makes the project task a child of the incident,
problem, or change, rather than a project.
Related topics
Link change requests to a project task
Schedule conflicts between project tasks
Scheduling conflict helps you to identify project tasks that are not honoring dependencies.
A scheduling conflict occurs when one project task prevents other task from starting on the
specified date because of dependencies or constraint types.
A scheduling conflict occurs when any action such as applying a dependency, changing
constraint type, or constraint date causes the task start date to violate the project's constraint
date.
When a scheduling conflict occurs, the system warns you about the conflict. You can choose
to cancel the action that is causing the conflict or continue with the conflict. If you choose
to continue with the conflict, the constraint date is given highest precedence and dates are
recalculated. The start date is moved till allowed by the task constraint date, but dependency is
not honored.
For example, consider the following scenario:
For a project with project task's Constraint date set as 20 January, there are two tasks:
• T1 with constraint type set to As soon as possible and start date of 20 January.
• T2 with constraint type set to Start no later than and start date of 20 January.
If you add an FS dependency between tasks T1 and T2, the task T2 should start on 21 January,
but due to Start no later than constraint, task T2 cannot start on 21 January. This inability of
starting task T2 on the specified date is an example of conflict.
In this example, if you choose to proceed with the conflict, the start date of task T2 is moved to
20 January which is the constraint date.
Scheduling conflict between tasks is shown for tasks with Start no later than and Start on
specific date time constraints.
If you want the task to honor the dependency and adjust the start accordingly, change the
constraint type of the task to Start ASAP.
When a scheduling conflict is identified, you can identify such tasks in the planning console.
• The client-side planning console displays a pop-up message with an option to proceed with
the conflict or cancel the action. If you proceed with the conflict, the constraint type is applied
or date is changed appropriately to the next feasible date.
• The calendar icon (
conflict.

) on the client side planning console changes to red (

• The calendar icon on the server side planning console changes to red (
conflict.

) to indicate the

) to indicate the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1047


<!-- page 1048 -->
Change requests and project tasks
Large-scale changes approved by your change approval board (CAB) require new or existing
projects to be implemented.
To bridge the gap between change management and project management, the instance allows
you to link one or more change requests to a project task. You can link an existing change
request to a project task or create a new change request directly from a project task.
When you link a project task to a change request record, a new project task link record is created.
It provides the actual link between the project task record and the change request record. The
project task link copies all attributes of the change request record. It then becomes a child task
of the project task that you linked to the change request. The rules that govern the relationship
between the project task and the project task link are the same as the rules for all parent and
child tasks.
Project tasks linked to change requests

Note: A project task cannot have both task link records and child project tasks. When a
project task is linked to a change request, you cannot also create child tasks for that project
task. Likewise, when a project task has child tasks, you cannot link the parent project task to
a change record.
The project task link record is read only. You can view the project task links from a related list on
the Project Task form.
Project Tasks Links related list

You can also link multiple change requests to a single project task. In this case, a project task
link record is created for each link and all the project task link records become child tasks of the
project task.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1048


<!-- page 1049 -->
Project tasks links

Change request project task relationship
The rules that apply to all parent-child tasks also govern the relationship between project task
and the project task link. The project task link inherits start and end dates from the change
request. However, the Project Management application adjusts the dates when these situations
occur:
Start and end dates:
• If the project task and the change request have different planned start dates, the project task
link uses the later of the two dates. For example, if the project task starts on October 1 but the
change request starts on October 2, the project task link changes to October 2.
• If the change request has an earlier start date, the Time constraint value for the project task
link becomes Start ASAP when the link is created. The end date remains the same as the end
date specified in the change request record.
• If the change request starts and ends before the project start date, the project task link has a
duration of zero (0). It also appears as a milestone that occurs when the project starts.
• If a change request is scheduled to start during non-work time according to the project
schedule, the planned start date of the project task link ignores the schedule. It also starts at
the time specified by the change request. However, the duration of the project task link does
take the schedule into consideration. For example: the project uses the default schedule,
which specifies that work hours are Monday to Friday from 08:00 to 17:00 with an hour break
from noon to 13:00. A change request with a 13-hour duration starts at midnight. The project
task link starts at midnight and continues through the start of the schedule at 08:00. It stops at
noon for one hour, and continues from 13:00 until 14:00. The total duration would be 13 hours.

Project Task Duration
The duration of the change request determines the duration of the project task link. That duration
is rolled up to the parent project task just as all child task durations roll up to parent tasks. The
Planned start date and Planned end date in the Change Request form Schedule section are the
fields that determine the duration. If there are no planned dates on the Change Request form,
the default duration is one project day. The project has a schedule or 24 hours when the project
has no schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1049


<!-- page 1050 -->
Multiple Linked Change Requests
If you link additional change requests to a project task, additional project task links are created.
All become child tasks of the project task. The dates roll up to the parent task. For example, if a
linked project task is planned to finish on October 30. You link a new change request scheduled
to finish on November 30, a new project task link is created. The parent task planned end date
extends to November 30 to cover the duration of both project task links. A change request can
only be linked to one project task. It cannot be linked to multiple tasks in the same project or
across multiple projects. A project task that has one or more child tasks cannot also have a
project task link connecting it to a change request.

Project Task State
If the state of a change request changes to Pending, Open, or Work in Progress, the state of the
project task link changes accordingly. If the state of the change request changes to any of the
closed states, the state of the project task link changes to Closed Complete.

How Modifications Propagate Between Change Requests and Project Tasks
Modifications to a linked change request propagate to the project task link. However, the
reverse is not true. You cannot modify the change request record from the Project Management
application.
Modifications to the following fields propagate from the change request to the project task link:
• Planned start date
• Planned end date
• State
These change request settings also roll up to the project task that is the parent of the project
task link, and also up to the project record. Consider the following example: a project has not
yet been started and all its tasks are in the Pending state. If you changed the state of a linked
change request record from Open to Work in Progress, the project task link, its parent task, and
the project itself all change to Work in Progress.
When you start a project, tasks that have Start ASAP as the time constraint and have no other
start dependencies start immediately. However, project tasks with linked change requests do not
start automatically. The project manager must start the task manually by changing the State field
to Work in Progress.
Modifications made in the Project Management application do not propagate to a linked change
request record, so closing a project does not close a linked change. When you successfully
implement a change and close the project it belongs to, you must go to the change request
record and manually change the state to Closed.
Related topics
Link change requests to a project task
Project task checklists
A project task checklist gives you the ability to track activities that must be completed on a task.
For a project task to be considered complete, you can track activities that do not require separate
subtasks. For example, you have a human resources-related project that includes a task for
interviewing candidates. You can also track booking a meeting room or getting an interview
confirmation from the candidate. Create a checklist item for each and mark when they have been
completed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1050


<!-- page 1051 -->
Checklist items do not have start or end dates, nor do they track effort or cost. By default, a
checklist item record provides only a name and a Complete field, which can be set to true or
false. The state of the project task is independent of the state of the Complete field on the
checklist item.
Checklists, as well as tasks, are copied into a project template. You also have access to all
checklist templates from any project task form.

Note: Checklists are available for any form that is based on a table extended from the
Task table. Administrators can add or remove checklists as needed.
Related topics
Use a project task checklist
Save a checklist as a template
Task resources
Resources are the individuals or groups assigned to perform tasks and subtasks in Project
Management.
You can use Resource Management to set up resource plans, which can be associated with
projects. Activate Project Portfolio Management to use Resource Management with Project
Management.
Related topics
Resource Management classic
Resource Management Workspace
Project and project task states
In the base system, the states in project and project task inherit the states in Task table.
The states are grouped into different categories as shown below:

State

Label

Category

-5

Pending

Pending

1

Open

Open

2

Work in Progress

Work in Progress

3

Closed Complete

Closed

4

Closed Incomplete

Closed

7

Closed Skipped

Closed

The category information for the states is declared in dictionary override
of State column in
Planned task (planned_task) table in Attributes field. Planned task is the parent table for
project and project task tables.
The start and end dates are displayed based on the project or task status:
• Pending/Open: Planned start date is displayed.
• Open/Work in Progress: Actual start date is displayed.
• Closed: Actual end date is displayed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1051


<!-- page 1052 -->
Related topics
View default project and project task state categories
Customize a state for project or project task
Composite Fields
A composite field combines information from two fields in a table to form a single field.
For example, the Task field on the Project Tasks list displays the short description and the project
task number. The short description appears above the project task number. The project task
number appears and is a link to the Project Task form.
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
Cost plan breakdown
A cost plan breakdown captures the estimated cost and actual cost for every fiscal period. Cost
plan, project, demand, program, and portfolio are the breakdowns types that are available.
Requirement
Requirement corresponds to a single cost plan. For example, for a regular calendar
and a cost plan spanning across one year, 12 breakdowns would appear.
Task
Task corresponds to a project or a demand. The cost across all the cost plans per
period is rolled up to the project or demand level. These records have breakdown
type set to Task. There would be only one record of type Task per period. The
number of records of type Task that are created depends on the duration of the
project or demand, and the requirements planned in the project or demand. For
example, for a regular calendar and a project with three cost plans, 12 breakdowns
appear.
Program

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1052


<!-- page 1053 -->
If a project or a demand is part of a program, the breakdown type of Program
provides the aggregate of program level costs per period.
Portfolio
If a project or a demand is part of a portfolio, the breakdown type of Portfolio
provides the aggregate of portfolio level costs per period.
System-generated cost plans
When an expense line is created without populating the Cost Plan field, system-generated cost
plans are created automatically.
The orphan expense lines are associated to the system-generated cost plans. This association
ensures that the project actuals shown on the widgets or the total actuals are the same as
the aggregate of the cost plan actuals on the grid shown on the Project Financials page and
Investment Portal.

Note: System-generated cost plans are created only when the project has a minimum of
one cost plan.
System-generated cost plans are created for any of the following reasons:
• When you create an expense line without populating the Cost Plan field.
• When you create a time card and approve it.
There are two system-generated cost plans, CapEx and OpEx. Depending on the type of
expense selected while creating an expense line, the type of system-generated cost plan is
created. The following are the name formats for the system-generated cost plans:
• <project number> System generated CapEx costplan
• <project number> System generated OpEx costplan
When you create a time card and approve it, an expense line of type CapEx is created and
then the orphan expense line is associated to the system-generated cost plan of type CapEx.
The system-generated cost plans are created to ensure that none of the expense lines are left
without being associated to a cost plan. The system-generated cost plans are read-only.
For customers upgrading to Zurich, you can run the project diagnostics, Associate orphan
expense lines to the system generated cost plan, to associate orphan expense lines to a
system-generated cost plan. The diagnostic scan lists the expense lines that are not associated
to any cost plan. When you run the fix script, system-generated cost plans are created, and the
orphan expense lines are associated to the system-generated cost plans.
Actual project costs
Actual project costs come after you create expense lines for cost plans or after human resources
use time cards to create expense lines.
The system captures actual project costs from expense lines:
• Expense lines from cost plans: You can create expense lines from a cost plan. Allows you to
specify the amount and date when the expense was incurred. The actual amount incurred is
included in the cost plan after the expense line is processed.
• Expense lines from timecards: Human resources can record time for project work by using
time cards. When time cards are approved, the system generates expense lines. After the
expense lines are processed, the actual costs are recorded for the project. If you provide a
resource plan when creating time cards, the cost plan name is derived from resource plan and
cost is captured against the resource plan. If you do not provide a resource plan, the cost is
captured against the project.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1053


<!-- page 1054 -->
Related topics
View actual project costs
Types of external dependencies
The Project management application supports two types of external dependencies - hard and
soft.
The type of external dependency can be set during adding a dependency between two projects
tasks on the planning console.

Hard dependencies
In a hard dependency, any changes made in the predecessor project are automatically
propagated to the successor project. A notification for the changes made is triggered in the
successor project. The following image shows the process flow for a hard dependency type:
External hard dependency

Soft dependencies
In a soft dependency, any changes made in the predecessor project trigger a notification in the
successor project. As the project manager of the successor project, you can choose to accept or
reject the changes in the notification. If you accept the notification changes, the changes in the
predecessor project are synced to the successor project and the project is recalculated. If you
reject the notification changes, the changes are not propagated to the successor project. The
following image shows the process flow for a soft dependency type:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1054


<!-- page 1055 -->
External soft dependency

Project and portfolio funding
Specify the amount of money that projects and portfolios are allowed to have.
You can fund projects and portfolios when you activate PPM Standard with Financials.
The funding process follows these steps:
1. Identify the costs for time, such as a financial year, by creating cost plans at the project
or demand level. These costs roll up to the portfolio Cost Plans related list. Cost plans
automatically include cost plan breakdowns for each fiscal period. See Create a project cost
plan and Create a demand cost plan.
2. Enter the target cost values for operational and capital expenses for the portfolio. See Create a
portfolio and Legacy- Plan the portfolio.
3. Create budget plans for the projects in your portfolio and promote the plans to forecasts. See
Legacy- Create and promote a budget plan and Promote a budget plan.
Multicurrency in Project Management
Use the multicurrency feature to execute a project or part of a project in a different geographic
location that has a different local currency.
The feature helps you to view the cost details of the project in a currency that is different from
your functional currency. The values in the project's cost plans, benefit plans, and corresponding
cost fields of the project form are also converted to a currency that you specify as project
currency. Therefore, you don't need to convert the project currency to the functional currency
of the project when the project is executed at a location that uses a currency different than your
functional currency.

Activation information
Activate the PPM Standard Multicurrency (com.snc.ppm_multicurrency) plugin to enable
the multicurrency features in Project Management. Activating the plugin enables the project
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1055


<!-- page 1056 -->
currency view in project, cost plans, and benefit plans forms. With the project currency view, you
can manage your project financials and cost plans in multiple project currencies.

Note: Activating this plugin automatically activates PPM Standard
(com.snc.financial_planning_pmo) plugin and therefore you get the option to switch
between the default view and the project currency view.

Project currency view
In addition to the default view in the Project form, there is Project Currency view, which you
can optionally enable to view the multicurrency fields. You can enable this view from the form
context menu. The view appears only when you activate the PPM Standard Multicurrency
(com.snc.ppm_multicurrency) plugin.
Unlike the Default view, the Project Currency view contains multicurrency-related fields.
You can designate a currency other than the functional currency as the processing Project
Currency for a project. The Financials tab of the Project form has the Project currency field. You
can select an active currency from the Currencies [fx_currency] table.

Note:
The Project currency field of a project becomes read-only field and locked down for
updating the currency once you create a cost plan, cost plan breakdown, benefit plan,
benefit plan breakdown, or an expense line for the project.

Specify project currency in Demand
You can specify the project currency that you want to use for managing a project when you
convert a demand to a project. You can continue to manage the demand using your functional
currency, project currency, or a local currency. For more information, see Multicurrency in
Demand Management.

Projects in Project Workspace
Track your projects in project currency in the Project Workspace. Create and monitor the
cost plans and benefit plans for a project in project currency. For more information on project
workspace, see Project Workspace.
To view the cost component in project currency at the grid level and at the breakdown level, see
Create and manage cost plans and benefit plans for a project.

Project status reports
To view the planned and actual cost status of your projects in project currency, open the
overview and cost sections of project status reports.
Updates in cost plan and recalculation of cost in project currency
If the unit cost, quantity, or fiscal period of a cost plan are updated, then all the related amount
fields in the cost plan, its breakdowns, and the project to which it is rolling up are recalculated in
project currency.
Changes in Unit cost, Quantity, and Recurring check box of a cost plan
When you modify the Unit cost field, Quantity field, or Recurring check box of the
Cost Plan form, the Total planned cost is recalculated in project currency. Similarly,
the Cost in project currency in the Cost Plan Breakdown is also recalculated.
Therefore, the values in the Planned capital in project currency, Planned operating
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1056


<!-- page 1057 -->
in project currency, and the Total planned cost in project currency fields of the
project are also recalculated.
Changes in the fiscal period of a cost plan
When you change the fiscal period, either the start or end dates in the Cost Plan
form, the Total planned cost and the Cost in project currency of the cost plan
are recalculated. Therefore, the Cost Plan Breakdown records may be added or
removed. If the Recurring check box is not selected, then the Cost in project
currency of each Cost Plan Breakdown record is recalculated. In line with this, the
values in the Planned capital in project currency, Planned operating in project
currency, and the Total planned cost in project currency fields of the project are
also recalculated.
Changes in the entered cost of a cost plan
If you change the Entered cost in an individual Cost Plan Breakdown record,
then the Total planned cost of the cost plan is recalculated in project currency.
Therefore, the values in the Planned capital in project currency, Planned operating
in project currency, and the Total planned cost in project currency fields of the
project are also recalculated.
Addition of breakdowns to a cost plan
If you manually add cost plan breakdowns to a cost plan, then the Total planned
cost of the cost plan is recalculated in project currency. Therefore, the values in
the Planned capital in project currency, Planned operating in project currency,
and the Total planned cost in project currency fields of the project are also
recalculated.
Predictive Intelligence for Project Management
The Predictive Intelligence for Project Management capability uses machine-learning algorithms
to search and display similar projects while defining a new project using the project form. You
can also search for existing projects and compare similar projects for project planning.
The PPM Predictive Intelligence Workbench includes a prebuilt use case template that
systematically guides you through the process of creating and training new predictive models,
evaluating and testing them, and finally adding them to your business process to add value to
your Idea, Demand, and Project Management.
Once you train your custom use cases, they are usable immediately. No prior knowledge or
experience with artificial intelligence or machine learning is required when you use the PPM
Predictive Intelligence Workbench.
The application includes templates with prebuilt guidance to assist you in creating, training,
evaluating, testing, and producing your unique predictive models.
Predictive Intelligence for Project Management has the following benefits:
• Improves the quality of your database by avoiding duplicate projects.
• Helps you in planning your project. You can view planning details of similar projects that were
created and executed in the past.

Activation information
Activate the following plugins before using the Predictive Intelligence Workbench:
• Predictive Intelligence for PPM (com.snc.ppm_ml) plugin
• Predictive Intelligence for Ideation (com.snc.innovation_management_ml) plugin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1057


<!-- page 1058 -->
Solution definitions for Predictive Intelligence for Project Management
The solution definition for Predictive Intelligence for Project Management capability is available
in the Predictive Intelligence for PPM plugin (com.snc.ppm_ml). For more information about
Predictive Intelligence, see Predictive Intelligence
and Contextual search .
Solution Definition for Project Management
Solution Definition

Solution Type

Description

Similar Projects

Similarity

View similar projects based
on the Project Name and
Description fields. You can
see the results in the Similar
projects section on the
Project form.

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
Train the similarity solution for Project Management to find similar projects
Starting a project

Configuring Project Management
Learn about the process required to set up and configure Project Management to enable your
project managers initiate and plan projects.

Configuration overview
With the Project Management application, you can plan, organize, and manage projects and
resources more effectively, making it easier and faster to complete projects. To use the Project
Management application, you need to install the PPM Standard plugin. For more information, see
PPM Standard (Project Portfolio Management).
Upgrade existing projects on activating multicurrency plugin
Execute the PM upgrade project currency for active projects and PM
upgrade project currency for inactive projects scheduled jobs to upgrade
your active and inactive projects, respectively, after you activate the multicurrency plugin. Select
the scheduled jobs and run them on demand to upgrade your projects in project currency only
when necessary.

Before you begin

Role required: admin or it_project_manager
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1058


<!-- page 1059 -->
Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Click the PM upgrade project currency for active projects.
3. Click Execute Now to upgrade all your existing active projects to project currency.
On execution of the job, all amounts in the cost-related fields of the Project, Project Task,
Baseline, Cost Plan, Cost Plan Breakdown, Benefit Plan, Benefit Plan Breakdown forms are
copied from functional currency to project currency fields. Once the values of functional
currency fields are copied to the project currency fields project currency cannot be edited
since the financial costs already exist.
4. To upgrade your inactive projects, click PM upgrade project currency for
inactive projects.
5. Click Execute Now.
On executing the scheduled job, the project currency value for all existing projects is set to the
functional currency. The project currency in the Project Tasks, Baselines, Cost Plans, Cost Plan
Breakdowns, Benefit Plans, Benefit Plan Breakdowns, Expense Lines forms is set to functional
currency.

Note: The jobs may have performance impact depending on the number of projects
and cost plans, hence run the jobs only when necessary.

Using Project Management
Use Project Management to plan, manage, and track projects effectively.

Plan the project
Before creating a project, consider the following questions and issues:
• Do you want a top-down or bottom-up approach to tasking?
Top-down tasking involves creating a project first, then identifying major project phases.
Later on, phases can be broken down into tasks and subtasks. The emphasis is on creating
estimates for high-level items such as phases and parent tasks and then building the project
down from there toward a more detailed level. Use caution when creating tasks for top-down
tasking. Creating a task under a project that has a start-on date later than the start date of the
project, the project shifts to the later start date. The Project Management application supports
bottom-up tasking better.
Bottom-up tasking involves creating several sets of small tasks and estimating task items such
as effort, cost, and duration. These estimations are then aggregated into high-level parent
tasks (rollup tasks) and phases. The emphasis is on estimating smaller chunks of work as
accurately as possible first, then letting those estimations roll up into parent tasks, phases, and
the project itself.
• Is the project part of a larger portfolio of projects?
Also consider portfolio planning and how the project relates to similar projects or initiatives.
• What types of dependencies do the tasks have with other tasks?
The Project Management application supports various dependencies.
• Can milestones and project baselines help manage a project?
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1059


<!-- page 1060 -->
A milestone is a project task with a duration of 0. Use milestones to indicate important dates in
a project. If necessary, create dependencies between tasks and milestones so that a task does
not start until a milestone has been reached.
A baseline is a snapshot of the current planned start and end dates at the time the baseline
was created for each task. A line appears under each task on the Gantt chart for the original
planned start and end dates. The line appears shifted to the left or right depending on whether
the task was started early or late. If tasks slip to later dates, the baseline indicator provides an
easy way to see how severe the delays are.
• Have the necessary skills, groups, and resources been created in ServiceNow?
If project tasks are assigned to different groups or individual resources with the required skills,
create users and groups and configure the Skills Management application.
• Does an existing incident, problem, or change justify creating a project to track it?
Of these record types, a change is most likely to lead to activities that are tracked as a project.
• Do you want to track project costs?
Estimate group resource costs before starting the project. Then track the actual cost of each
user resource from time cards. The Project Management application can also calculate the
costs of affected CIs in a project. The Project Management Costing add-on is required to track
costs.
• What goals do you want the project to achieve?
Every project has at least one goal. Project goals are saved in the Goal table and can link to
any task. In a typical scenario, link one goal to each project and keep the State field of the goal
up to date.

Assign resources or assignment groups to the tasks
User resources are the individuals in an organization who are assigned to project tasks. You can
manage your resources with resource plans in the Resource Management application.

Add the project to a portfolio
A portfolio is a group of related projects. If the project is related to other projects, create a
portfolio and add the project. The Project Management application provides a useful portfolio
view that makes it easy to report on the status of all projects in a portfolio. Portfolios also include
demands.
Starting a project
Initiate a project by changing the project state to Work in Progress. Define important aspects of
your Agile, Waterfall, or Hybrid project such as the duration, estimated cost, and net value to your
organization to efficiently track the project's progress.

Before you begin

Role required: it_project_manager

About this task

When you change the State field on the Project form to Work in Progress, the Actual start date of
the project changes to the planned start date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1060


<!-- page 1061 -->
You can create a project from the Projects list or from the project planning console. You must
have the Agile Development 2.0 plugin to create an Agile or Hybrid project and the Test
Management plugin to create a test phase for your project.

Note: You can also create a project from the demand workbench.
After you start the project:
• The read-only Actual start date field of the project is populated with the planned date.
• If a task or set of tasks are scheduled to start immediately upon project start (meaning that
their time constraints are set to Start ASAP and they have no other start dependencies), the
actual start dates of those tasks also get populated with the planned date.
• The planned start dates of all other tasks adjust accordingly based on the time you started
the project. Their new planned start dates depend on several factors, including dependent
relationships with other tasks and the duration for each task.

Note: Once a project is in the Work in Progress state, it does not mean that the state of
every task will start updating automatically based on planned start date. Other than the
project tasks that you schedule to start ASAP when the project starts, project tasks are
not started automatically. Continue to manage the project and change the state of each
task to Work in Progress.
You can also use the multi-currency feature to create a project in a local currency different
from your functional currency. You must enable the PPM Standard Multicurrency plugin
(com.snc.ppm_multicurrency) and switch to the Project Currency view for the additional fields
in the Financials tab of the Project form. For more information, see Multi-currency in project
financials.

Procedure
1. Create a project in any of the following ways.
Location

Steps

From the Projects list

Navigate to All > Project > Projects > Create
New.
a. Navigate to All > Project > Projects >
Project Workspace.

From the project workspace

b. From Projects page, select the New.
c. In the Create a project modal, fill in the de­
tails and select Confirm.

2. On the form, fill in the fields.
For field information, see unique_1019.
3. Select Submit.
Related topics
unique_1019
Project Portfolio Management
Create a project task from a project
Create tasks from the project form to break down project objectives into manageable units of
work.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1061


<!-- page 1062 -->
Before you begin

Role required: it_project_manager

Procedure
1. Navigate to All > Project > Projects > All.
2. Select the project from the list.
3. In the Project Tasks related list, select New.
4. On the form, fill in the fields.
For more information on project task form, see Project task form.
5. Select Submit.

Result

The new task appears in the Project Task related list on the Project form. If time cards are in use,
the application creates a time card for the resource.

What to do next

The value in the Percent complete field is related to the State field in the v3 application. If you
change the percentage complete from 0 to any other value, the state of the task changes to
Work in progress when you save or update the record. Likewise, if you change the state of the
task to Closed complete, the Percent complete field is set to 100 and becomes read-only.
If you change the state of a project task from Work in progress to Closed Skipped or Closed
Incomplete, the Percent complete field retains the current value and becomes read-only.
The Percent complete field appears in the Gantt chart for parent tasks as a light-colored bar (the
part of the task that is complete). The bar overlaps the darker, underlying bar (the full task). For
example, a Demo project is 5.41% complete as shown in a pop-up window. The Phase 1 task is
about 50% complete (not shown in the pop-up window).
The Project Tasks list and the Project Tasks related list on the Project form include a Dependency
field. Any dependencies for a task, such as a parent task, are displayed in this field. Click a
dependency record. See Predecessor dependencies in the planning console for a description of
what you see in this column.
Create a task from an incident, problem, or change request
You can create a new project task from the Project Task related list on the Incident, Problem, and
Change Request forms. The tasks you create from these forms makes the project task a child of
the incident, problem, or change, rather than a project.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to the Incident, Problem, or Change Request form.
2. Configure the form to add Project Task > Parent if the related list is not already present.
3. In the Projects related list, select New.
4. Fill in the project form.
The project task becomes a child task of the incident, problem, or change record.
Create tasks from project task creator
Use the project task creator to create multiple tasks at once.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1062


<!-- page 1063 -->
Before you begin

Role required: it_project_manager

Procedure
1. In the Project form, right-click the header bar and select Project task creator.
2. Enter the number of tasks to create.
3. Select the Create FS dependency check box to create a finish-to-start dependency between
these tasks (when the first task finishes, the next task starts).
Clear the check box to create the tasks with no dependencies.
4. Select OK.
The new tasks appear in the Project Tasks related list. The application automatically creates
a task Number and a Short Description that starts with Auto Created Task, followed by a
number when more than one task is created.
Insert a row into the project tasks list
You can create a new project task from the Project Task related list on the Project form.
Administrators must enable this task-creation feature.

Before you begin

Role required: it_project_manager

Procedure
1. In the Project form, navigate to the Project Tasks related list.
2. Double-click Insert a new row.
3. Select the green check mark.
4. Open the new task and edit the record as required.
Copy an existing task or project
Save time when building a project by copying tasks from other projects.

Before you begin

Role required: it_project_manager

About this task

The Copy partial project option copies a selected task and its child tasks into the project, or all
project tasks into a sub-project. It also preserves all dependencies and relationships among the
copied tasks and their child tasks. Any relationships or dependencies that involve tasks outside
of the scope of the copied task are not preserved.

Procedure
1. In the Project or Project Task form, right-click the header bar and select Copy partial project.
2. In the Task field, select a project task or project to copy.
By default, projects begin with PRJ and project tasks begin with PRJTASK.
3. Enter a Name for the new project or task.
4. Select OK.
The copied task is added to the current task or project. If a project was copied, then all the
tasks are inserted into a new sub-project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1063


<!-- page 1064 -->
Result

The copied tasks are inserted as a child of whatever task or project that you are currently
viewing. Actual duration and the actual start and end dates are reset to null values. The state is
set to New and percent complete is set to 0.
By default only the short description, planned dates and duration fields are copied from source
project to the target project. If additional columns must be copied, they should be declared in the
project property List of attributes that will be copied from the originating project task.
Related topics
Change default values of copied fields
Change default values of copied fields
Change the default values of in the new partial project.

Before you begin

Role required: admin

About this task

Actual duration and the actual start and end dates are reset to null values. The state is set to New
and percent complete is set to 0. Administrators can modify UI pages to determine which fields
are reset or to change the default values.

Procedure
1. Navigate to All > System UI > UI Pages.
2. Open the copy_partial_project record.
3. Use the following script if in the Processing script field:
/* resetFields is the array containing the list of names of
fields that need to be erased from the copied project tasks
* defaultFields is the array containing the key, value
pairs of field names and values that need to be set on the
copied tasks
*/var resetFields =new Array();var defaultFields ={};
resetFields.push("work_start","work_end","work_duration");
defaultFields["state"]="-5";
defaultFields["percent_complete"]="0";
Related topics
Copy an existing task or project
Create a task from a project task template
You can save a project task as a template and reuse it when creating a task.

Before you begin

Role required: it_project_manager
You must have a template from an existing project task that has the required field values. See
Templates
for more information on this platform feature.

Procedure
1. Navigate to All > Project > Tasks > All.
2. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1064


<!-- page 1065 -->
3. If the templates do not appear at the bottom, select the ellipsis (
and select Toggle Template Bar.

) icon at the top of the form,

4. Select the template link in the template bar at the bottom of the form.

The template is applied to the project.
View default project and project task state categories
View category information for the default project and project task states. In the base system, the
states in project and project task inherit the states in Task table.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Dictionary.
2. Update the filter with the following AND conditions:
a. [Table] [is] [task]
b. [Column name] [is] [state]
3. Run the filter.
4. Select the task table, and then choose planned_task table in Dictionary Overrides related list.

Result

The Attributes field displays different states and the categories for a state as shown below. It
also displays the default state value for each category.

close_states=3;4;7,default_close_state=3,default_work_state=2,default_open_st
Related topics
Project and project task states
Customize a state for project or project task
Add or modify a state of project or project task using dictionary override.

Before you begin

Role required: admin

About this task

As an example, the steps for adding custom states for Work in progress state category for
Project task are described. In this example,
• the existing Work in Progress state is removed and following three new states are added:

State

Label

Category

10

Design

Work in Progress

11

Development

Work in Progress

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1065


<!-- page 1066 -->
State

Label

Category

12

Testing

Work in Progress

• the default Work in Progress is kept as 10 (Design).

Procedure
1. Define
a new dictionary override for pm_project_task table under
dictionary.

Task - State

2. Specify the override attributes for the dictionary override in Attributes field as follows:
close_states=3;4;7,default_close_state=3,default_work_state=10,default_open_

Result
• As specified in Step 2, the default_work_state is declared as 10 and the
work_in_progress_states as 10, 11, and 12. Now whenever a project task changes
to any of the new Work in Progress states, its parent also moves to corresponding Work in
progress state.
Suppose that a project task has two children records, and if the first child record moves
to Development state, the parent also moves to Development state. Now if the second
child record moves to Design state, the two children records under the project task are
in two different work in progress states. In such cases, the parent record moves to the
default work in progress state. In this case, the parent record moves to Design as the
default_work_state is specified as 10 (Design).
• The project states can also be customized using the same steps.
Related topics
Project and project task states
Link change requests to a project task
Link change requests to tasks on the Project Task form. You can link change requests only to
project tasks that have no child tasks.

Before you begin

Role required: it_project_manager

About this task

You can link any change request record to a project task, regardless of the change request
schedule or state. However, as a good practice, consider:
• Change Schedule: The change request has a schedule that falls within the time frame of the
project it links to. Or, it has no values in the Planned start date and Planned end date fields in
the Schedule section of the Change Request form.
• Change State: An Open or Pending state is required when linking a change request. Changes
that are already in progress or closed can be stopped and copied to a new change request.

Procedure
1. Open a project task that does not have any child tasks.
You can cannot link change request to the tasks that already have child tasks.
2. Select one of the following related links:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1066


<!-- page 1067 -->
◦ Link an Existing Change Request to Project Task:
In the dialog box that appears, enter or select the change that you want to link.
◦ Create Change and link from Project Task:
The Change Request form appears. Enter the information in the form. The short description
of the change request is taken from the project task.

Note: These related links are available only when the project task type is waterfall.
Result

On the Project Task form, a notification appears at the top specifying that the task is linked to one
or more change requests.
Example for Task designated for linked change requests in the related list

Related topics
Change requests and project tasks
Accept or reject project task notifications
Approve or reject the changes in a notification for an external soft dependency.

Before you begin

Role required: it_project_manager

About this task

The Notifications related list on the project record lists the external dependency related
notifications raised in the successor project. The notifications are triggered as a result of
changes made in the predecessor project that can impact successor project or task.
• The notifications for the hard dependency have theState set to Processed by default.
• The notifications for the soft dependency have the State set to New by default. As the project
manager of the successor project, you can choose to accept or reject the changes in the
notification.

Procedure
1. Open the project form.
2. Select the Notifications related list.
3. Select the reference icon
dependency.

to open the project task notification record for an external soft

4. Select Approve or Reject.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1067


<!-- page 1068 -->
Result
• The Status of the notification record changes to Accept or Reject.
• The State of the notification record changes to Processed.
Use a project task checklist
You can create a checklist in a project task to track items that must be completed in the task.

Before you begin

Role required: it_project_user, it_project_manager

Procedure
1. Navigate to a project task.
2. To create a checklist for the project task, select Create new in the Checklist section and
specify a name for the checklist.
3. To remove a checklist from the project task, select the down arrow next to Checklist and select
Remove Checklist.
4.

Note: This option appears when there is at least one checklist in the Checklist section.
To save a checklist as a template, select the down arrow next to Checklist and select Save as
Template.

Related topics
Project task checklists
Save a checklist as a template
Save a checklist as a template
After you create a checklist on a project task, you can save it as a template and reuse it on other
tasks.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to a project task.
2. Select the down arrow next to Checklist.
3. Select Save as Template.
4. Enter a name for the checklist.
5. Select Save.
Related topics
Project task checklists
Use a project task checklist
Create a parent-child relationship on the Project Task form
Create a child task from any project task form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1068


<!-- page 1069 -->
Before you begin

Role required: it_project_manager

Procedure
1. Navigate to the parent task in the relationship.
2. In the Project Tasks related list, select New.
3. Create the task and select Submit.
The newly created task becomes the child task in the relationship.

What to do next

To help remember what the parent of any task is, view the breadcrumb at the top of the Project
Task form. It is also helpful to configure the form layout to include the Parent field. You can also
change the parent task from this field.
Create a monetary benefit plan for a project
Create a monetary benefit plan to specify the estimated benefit in a category spanning one or
more fiscal periods. Project benefit plans capture the potential benefits accrued by the project
when the project is executed.

Before you begin

Role required: it_project_manager

About this task

The monetary benefit plan breakdown records are automatically created when you save the
benefit plan.

Procedure
1. Navigate to All > Project > Projects > All.
2. Open the required project.
3. In the Monetary Benefit Plans related list, select New.

Note: To create a monetary benefit plan from the Financials tab in Project Workspace,
select Manage.

4. On the form, fill in the fields.
For field information, see Benefit Plan form.

Note: When you move the project or the milestone date, the associated benefit plans
also change accordingly based on whether the benefit plan is tied to the project start
date, end date, or one of the project milestones. The project property Change Resource
Plan, Cost Plan and Benefit Plan Start Date with Demand or Project Start Date Change
controls the behavior for project date changes.
5. Select Submit.

What to do next

On the Benefit Plan form, view the benefit breakdown by fiscal period in the Monetary Benefit
Plan Breakdowns related list.
Related topics
Update a monetary benefit plan breakdown for a project
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1069


<!-- page 1070 -->
Update a monetary benefit plan breakdown for a project
Update a monetary benefit plan breakdown record that specifies the estimated and actual
benefits, at a granular level, for specific fiscal periods.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to All > Project > Projects > All.
2. Open the required project.
3. Select the Monetary Benefit Plans related list.
4. Open the required monetary benefit plan.
5. In the Monetary Benefit Plan Breakdowns related list, select the information icon (
monetary benefit plan breakdown.

) for a

6. Select Open Record.
7. On the Monetary Benefit Plan Breakdown form, view and update the enabled fields.
For more information, see Monetary Benefit Plan Breakdown form.
8. Select Update.

Note: Changing benefit plan start and end date is not possible if the recorded actual
benefits are outside of the date range.
Related topics
Create a monetary benefit plan for a project
Create a non-monetary benefit plan for a project
Create a non-monetary benefit plan for a project
Create a non-monetary benefit plan to specify the estimated benefit in a category spanning one
or more fiscal periods. Project benefit plans capture the potential non-financial benefits accrued
by the project when the project is executed.

Before you begin

Role required: it_project_manager

About this task

The non-monetary benefit plan breakdown records are automatically created when you save the
benefit plan by selecting Automatic or Manual in the Breakdown Type field. The non-monetary
benefit plan breakdown records specify the estimated and actual non-financial benefits at a
granular level for specific fiscal periods, such as FY16: April and FY16: May. The Non-monetary
Benefit Plan Breakdowns related list shows the aggregated benefits for estimated and actual
non-financial benefits for each fiscal period for the project.

Procedure
1. Navigate to All > Project > Projects > All.
2. Open the required project.
3. Select the Non-monetary Benefit Plans related list.
4. To create a non-monetary benefit plan, select New.
5. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1070


<!-- page 1071 -->
For more information, see Non-monetary benefit plans form.

Note: When you move the project or the milestone date, the associated benefit plans
also change accordingly based on whether the benefit plan is tied to the project start
date, end date, or one of the project milestones. The project property Change Resource
Plan, Cost Plan and Benefit Plan Start Date with Demand or Project Start Date Change
controls the behavior for project date changes.
6. Select Submit.

What to do next
• On the Benefit Plan form, view the benefit breakdown by fiscal period in the Non-monetary
Benefit Plan Breakdowns related list.
• Associate monetary and non-monetary benefit plans, so that you can capture the potential
benefits (financial and non-financial) accrued by the project for the hybrid benefit plans.
Related topics
Update a non-monetary benefit plan breakdown for a project
Update a non-monetary benefit plan breakdown for a project
Update a non-monetary benefit plan breakdown record that specifies the estimated and actual
benefits, at a granular level, for specific fiscal periods.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to AllProject > Projects > All.
2. Open the required project.
3. Select the Non-monetary Benefit Plans related list.
4. Open the required non-monetary benefit plan.
5. In the Non-monetary Benefit Plan Breakdowns related list, select the information icon (
non-monetary benefit plan breakdown.

) for a

6. Select Open Record.
7. On the Non-monetary Benefit Plan Breakdown form, view and update the enabled fields.
Field

Description

Task

Task to which the benefit plan breakdown be­
longs.

Portfolio

Portfolio to which the benefit plan breakdown
belongs.

Measure

Measure type specified in the benefit plan.

Actual benefit

Actual benefit that is incurred from the project
or demand.

Benefit plan

Benefit plan to which the benefit plan break­
down belongs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1071


<!-- page 1072 -->
Field

Description

Fiscal period

Fiscals generated at the period level. For infor­
mation on periods, see
.

Entered benefit

Benefit in entered value.

Variance

The difference between the estimated and ac­
tual benefit.

8. Select Update.
Related topics
Create a non-monetary benefit plan for a project
Associate monetary and non-monetary benefit plans
Associate monetary and non-monetary benefit plans, so that you can capture the potential
benefits (financial and non-financial) accrued by the project for the hybrid benefit plans.

Before you begin

Role required: it_project_manager

About this task

You can associate a monetary benefit plan with a non-monetary benefit plan and vice versa.

Note: When you delete a benefit plan, its relationship with the associated benefit plan (if
any) is also removed.

Procedure
1. Navigate to All > Project > Projects > All.
2. Open the required project form.
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

b. On the form, fill in the fields. For details, see
Create a monetary benefit plan for a project
and Create a non-monetary benefit plan for
a project.

7. Select Save.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1072


<!-- page 1073 -->
Result

The selected benefit plan is associated with another plan.

What to do next

Select the View Associated benefit plan related link to view the associated benefit plan.
Related topics
Create a monetary benefit plan for a project
Create a non-monetary benefit plan for a project
Create a project cost plan
Create a cost plan to specify the unit cost of a cost type for a fiscal period. Project cost plans
capture the costs of projects.

Before you begin

Role required: it_project_manager
Application required: Project Portfolio Management with Financials

About this task

The application automatically creates cost plan breakdown records when you save the cost plan.
Cost plans can also have associated expense lines.

Note: Cost plans are automatically created for resource plans that are associated to
projects and project tasks.
To use multiple currencies, create a new cost plan for another currency.

Procedure
1. Open the project form.
2. From the related links, select Cost Plans.
3. Select New.

Note: To create a cost plan from the Financials tab in Project Workspace, select
Manage.

4. On the form, fill in the fields.
For field information, see Cost Plan form.

Note: When you change the planned start date of a project, the associated cost plans
and resource plan also change. The project property Change Resource Plan and Cost
Plan Start Date with Demand or Project Start Date Change controls the behavior for
project start date change.
5. Select Submit.

What to do next

To recalculate the values in the Estimate at Completion field, use the Calculate Estimate at
Completion related link. To view the cost plan breakdowns, select the Cost Plan Breakdowns
related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1073


<!-- page 1074 -->
Related topics
Cost plan breakdown
Update a cost plan breakdown
System-generated cost plans
Update a cost plan breakdown
Update a cost plan breakdown record that specifies the estimated and actual cost, at a granular
level, for specific fiscal periods.

Before you begin

Role required: it_project_manager

Procedure
1. Open the required project.
2. Select the Cost Plan related list.
3. Select the Cost Plan Breakdowns related list.
4. Select the i icon against a cost plan breakdown.
5. Select Open Record.
6. In the Cost Plan Breakdown form, view and update the enabled fields.
For more information, see Cost plan breakdown form.
Related topics
Cost plan breakdown
System-generated cost plans
Enable cost rollup calculations
Enable rollup calculations from the project properties.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to All > Project > Settings > Preferences.
2. Select Enable project cost rollup.
3. Select Save.

Result

Rollup values are read-only on forms. Point to the icon beside the field for a tooltip message.
Tooltip

Related topics
Create a project cost plan
Update a cost plan breakdown

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1074


<!-- page 1075 -->
View actual project costs
When you are using Project Portfolio Management with Financials, you can view actual project
costs on cost plans and projects.

Before you begin

Role required: it_project_manager

About this task

An expense line has to be processed to be considered for actual cost. The actual cost is
recorded against the creation date of the expense line, not the processed date. The expense
lines are created only for approved time cards.
Actual costs for projects also roll up to portfolios in the same way.

Procedure
1. Navigate to Project > Projects > All.
2. Open the project for which you want to view the actual costs.
3. Select the Cost Plans related list.
Related topics
Actual project costs
Recalculating costs of all resource plans in a project
Recalculate the resource costs of all resource plans in a project whenever the hourly rates
change in the associated rate model so that the plan costs are up to date.

Before you begin

Ensure the following setup:
• The project must be active.
• The project must have an active rate model assigned.
• The resource plans must be in the Planned, Requested, Confirmed, or Allocated state.
Role required: project_manager

About this task

This option recalculates the costs of all resource plans of the project at once. You can also open
a resource plan from the Resource Plans related list to recalculate the resource costs of an
individual resource plan.

Procedure
1. Navigate to All > Project > Projects > All.
2. Open a project.
3. On the Project form, right-click on the header bar and select the Recalculate Resource Costs
option.
4. In the Recalculate Resource Cost dialog box, fill in the fields.
Recalculate Resource Costs dialog box
Field

Description

Start date

Start date of the time period for which the
costs are recalculated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1075


<!-- page 1076 -->
Field

Description

By default, the field shows the current date.
End date

End date of the time period for which the
costs are recalculated.
By default, the field shows the end date of the
project.

Planned costs for Requested Resource plans Option for recalculating the planned cost of
Requested resource plans.
Confirmed/Allocated costs for Confirmed/
Allocated resource plans

Option for recalculating the confirmed or
allocated cost of Requested resource plans.

Planned costs for Confirmed/Allocated
resource plans

Option for including the planned cost of a
Confirmed or Allocated plan.
The option is enabled if the Confirmed/
Allocated costs for Confirmed/Allocated
resource plans option is selected.
By default, the option is not selected.

5. Select OK.

Result
• Recalculates the selected resource costs of all the applicable resource plans in the project
based on the latest hourly rates. The hourly rates are derived from the rate model associated
with the project.
• Updates the recalculated resource costs on the respective cost fields on the resource plan
form and the Resource Plans related list.
• Reflects the revised values on the respective cost fields of the project.
Create an expense line
A project expense line is cost associated with a specific source, such as a user, fixed asset, or a
CI. Expense lines are part of project cost plans.

Before you begin

Role required: it_project_manager
Application required: Project Portfolio Management with Financials

About this task

Only processed expense lines are considered for projects, project tasks, and demands. You can
create multiple expense lines for a project or demand.

Procedure
1. Open the project form.
2. In the related lists, select Cost Plans.
3. Right-click on a cost plan.
4. Select Create Expense Line.
5. On the form, fill in the details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1076


<!-- page 1077 -->
For more information, see Expense line form.
6. Select Submit.

Note:
◦ Imported processed expense lines are not rolled up to the Total actual cost field in Cost
Plans.
◦ If you change the Amount of a Pending expense line and change the state to
Processed, the latest value is captured in expense line and the same is rolled up to
Total actual costs in Cost Plans.

Result

Once the expense line is processed, the actual amount incurred becomes part of the cost plan.
The actual amount spent is recorded against the project cost plan under the appropriate
expense type: Capex or Opex. Not providing a cost plan reference when creating an expense
line, the actual cost is recorded at the project level in the cost plan related list.
If you create an expense line without populating the Cost Plan field, a system-generated cost
plans is created.
Create and manage waterfall projects
Plan, create, and manage projects using the Waterfall methodology.
The following tables, arranged by task group, list the tasks involved in creating a waterfall project.
Create a new project
Task

Steps

Create a new project

Navigate to All > Project > Projects > Create New.

Open an existing project
Task

Steps

Open a project in the project
workbench

Select the Project Workbench related link on the Project
form.

Add phases to a project from the project workbench
Task

Steps

Create a waterfall phase for
a project

Select the Add phase icon (
Phase Type choice list.

) and select Waterfall from the

Create a test phase for a
project

Select the Add phase icon (
Type choice list.

) and select Test from the Phase

Edit a project phase from the project workbench
Task

Steps

Edit a waterfall
phase for a project

Select the Edit phase icon ( ) on a project phase and make the
required changes in the details of the project phase.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1077


<!-- page 1078 -->
Edit a project phase from the project workbench (continued)
Task

Steps

Edit a test phase for
a project

Select the Edit phase icon ( ) on the test phase and make the required
changes in the details of the test phase.

Add milestones to a project from the project workbench
Task

Steps

Add milestones to
a project

Select the Add phase icon ( ) and then select Milestone at the top of
the Add Phase pop-up window.

Set up manual testing
Task

Steps

Create a test plan

Navigate to All > Test Management > Test Execution > Test Plans > New.

Add test cases to a
test plan

Select the Add Test Cases from Test Suite related link on the Test Plan
form.

Create a test phase

Select the Add Phase button on the project workbench.

Add a test plan to a
test phase

Select the Edit Phase icon (
the Test Plan.

) for the test phase and enter the name of

Assign test cases to Select a user in the Assigned to field on the Test Case form.
testers
Notify testers to
start testing

Select the Notify testers to start testing related link on the Test Plan
form.

Monitor the testing
progress

The Test Plans list, Test Plan form, and Test Case form all display results
for test cases and individual tests.

Testing sign-off

Select the Sign-off Test Plan related link on Test Plan form.

Related topics
Create baseline of a project
Update a project
Update the project and make adjustments in fields to handle scope, cost, and schedule. While
a project is underway, keep actual values as current as possible. Continue to measure actual
values, analyze the impact of any potential project risks.

Before you begin

Role required: it_project_manager

Procedure
1. Open a project in the Work in Progress state.
2. Keep the following fields up to date:
While the status of the project is Work in Progress, keep these fields up to date:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1078


<!-- page 1079 -->
◦ Priority: the priority of the project, especially as it relates to other projects in the portfolio.
◦ Net value: the value of the project to the company expressed in expected revenue.
◦ Risk cost: the sum of all costs involved with potential project risks. Although this field is not
related to cost management, you can use this field to estimate the costs of risks that arise
during the project.
◦ Configuration item: the CI related to the project.
◦ Schedule: the type of work schedule.
◦ Work notes: a useful record of notes and comments related to the project.
◦ Live feed: a record of the collaboration between various project stakeholders.
For project tasks, keep these fields up to date:
◦ State: remember to change project task states to Work in Progress when the task should
begin (for tasks that have a specified start date) and Closed when the task is finished. Task
states do not change automatically except when the time constraint of the task is set to Start
ASAP and the state of the predecessor task is changed to one of the closed states.
◦ Assignment group: the group of resources currently working on the task.
◦ Assigned to: the individual assigned to the task.
◦ Time cards: the amount of time resources work on a project, which roll up into Actual effort.
If a labor rate is configured for a time card, changes to the time cards affect theActual cost of
the project.
3. Select Update to save the record.
Related topics
Track project comments and collaborate with stakeholders
Track project comments and collaborate with stakeholders
When a project is in progress, you can take advantage of two platform features that help project
participants interact and collaborate: journal fields and live feed. Two useful journal fields are
Comments and Work notes.

Before you begin

Role required: it_project_manager

Procedure
• To add journal fields to a project form:
1. Configure

any project form to show Comments and Work notes .

• To add live feed

to a project form:

1. Navigate to All > System Definition > Dictionary.
2. Select the pm_project table name that has no corresponding Column name.
3. In the Attributes field, enter live_feed=true.
4. Select Update.
5. Navigate to All > System Definition > UI Actions.
6. Open the Follow on Live Feed list action.
7. In the Table field, select the [pm_project] table.
8. Right-click the header and select Insert to create a copy of the UI action for the [pm_project]
table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1079


<!-- page 1080 -->
9. Repeat the steps for the UI actions for the Show Live Feed form action.
10. Personalize the Project form and add Activities (filtered), which is the activity formatter, to
the desired location on the Project form.
Related topics
Update a project
Copy a project
Another option for creating a project is to copy an existing project with all its tasks and
relationships. After you specify the start date for the copy, the system adjusts all task start and
end dates automatically.

Before you begin

Role required: it_project_manager

Procedure
1. On the Project form, select additional actions icon (

) and select Copy Project.

2. On Copy the selected project modal, enter the New Project Name.
3. Select a Start date and select OK.
Copy partial project, which is available from the Project Task form, provides similar
functionality. It copies all task or project relationships and children from the selected project
and inserts them into the current project. In this case, a new project record is not created.

Result

Actual duration and the actual start and end dates are reset to null values. The state is set to New
and percent complete is set to 0.
By default only the short description, planned dates and duration fields are copied from source
project to the target project. If additional columns must be copied, they should be declared in the
project property List of attributes that will be copied from the originating project task.
Related topics
Change default values of copied project
Change default values of copied project
Reset or change the default values for copied fields in the new copied partial or complete
project.

Before you begin

Role required: admin

About this task

Child tasks are defined with the same relationships, each lasting for the same duration as the
original tasks. All project tasks are set to Pending. Actual duration and the actual start and
end dates are reset to null values. The state is set to New and percent complete is set to 0.
Administrators can override the Script Include CopyProjectFieldOverride to determine which
fields are reset or to change the default values.

Procedure
1. Navigate to All > System UI > Script Include.
2. Open the CopyProjectFieldOverride record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1080


<!-- page 1081 -->
3. Add the method to override the method defined in the CopyProjectFieldOverrideSNC script for
resetting or defaulting the values.
For example, to copy partial project:
/* getResetFieldsForCopyPartialProject method returns the
array containing the list of names of fields that need to be
erased from the copied project tasks
* getDefaultObjectForCopyPartialProject
method returns the object containing the key, value pairs of
field names and values that need to be set on the copied tasks
*/var CopyProjectFieldOverride =
Class.create();
CopyProjectFieldOverride.prototype =
Object.extendsObject(CopyProjectFieldOverrideSNC, {
getResetFieldsForCopyPartialProject:
function() {
return ['work_start', ‘work_end’,
‘work_duration’];
},
getDefaultObjForCopyPartialProject:
function() {
return {'state': -5,‘percent_complete: 0’};
},
type: 'CopyProjectFieldOverride'
});
To copy complete project:
/* getResetFieldsForCopyProject method returns the array
containing the list of names of fields that need to be erased
from the copied project tasks
* getDefaultObjectForCopyProject method returns
the object containing the key, value pairs of field names and
values that need to be set on the copied tasks
*/var CopyProjectFieldOverride = Class.create();
CopyProjectFieldOverride.prototype =
Object.extendsObject(CopyProjectFieldOverrideSNC, {
getResetFieldsForCopyProject: function() {
return
['work_start' ,"work_end","work_duration"];},
getDefaultObjForCopyProject: function()
{
return {'state': -5, ‘percent_complete:
0’};
},
type: 'CopyProjectFieldOverride'
});
4. Select Update.
Related topics
Copy a project

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1081


<!-- page 1082 -->
Assign a project schedule
Without an assigned schedule, a project calculates a day as a full 24 work hours. To schedule
tasks by a more realistic work day, assign a schedule to the project. If the schedules provided in
the base system do not suit your needs, define a new one.

Before you begin

Role required: it_project_manager

Procedure
1. Open a project.
2. If the Default view is active, right-click the header bar and select View > Advanced.
3. Select a schedule in the Schedule field and select Save.
Create baseline of a project
Create a schedule baseline and financial baseline of a project. A schedule baseline captures
planned dates of all tasks and milestones at a particular moment in time. A financial baseline
captures benefit and financial metric information (snapshot of cost plan, benefit plan, and
project-level financial metrics) at a particular moment in time.

Before you begin

Role required: it_project_manager

About this task

Schedule baseline
You can create as many schedule baselines as necessary and review the changes that have
been made to the project since the previous baseline. If a project is not on schedule, you can
create a schedule baseline to know how much schedule slippage has occurred. It also helps to
view the real-time deviations between actual and planned values.
The baseline appears as a set of gray lines below the bars that represent the actual tasks on the
Gantt chart. These baselines represent planned dates, while the task bars represent the actual
dates. If the project tasks are shifted to the right of the baselines, the project is running behind
schedule.
Financial baseline
You can create as many financial baselines as necessary and compare them to review the
financial changes that have been made to the project since the previous baseline. Any financial
baseline does not capture actual cost component of the project.

Note: Nested projects cannot have baselines. Baselines are allowed for the top-level
projects only.

Procedure
1. Navigate to All > Project > Projects > All.
2. Select the required project.
3. To create schedule and financial baselines of a project, use any of the following options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1082


<!-- page 1083 -->
Option

Steps

a. Open a project from planning page in
Project Workspace.
From the Financials tab

b. Select the Financials and select Create
baseline.
c. In the Create Baseline pop-up, enter a suit­
able name and description.
d. Select Save.
a. Open a project from planning page in
Project Workspace.

From the Project Workspace

b. Select the baseline icon (

).

c. In the Create Baseline pop-up, enter a suit­
able name and description.
d. Select Save.
a. Select the Create Baseline related link.
From a related link

b. In the Create Baseline pop-up, enter a suit­
able description.
c. Select Save.
a. Select the Baselines related list.
b. Select the Create Baseline button.

From a related list

c. In the Create Baseline pop-up, enter a suit­
able name and description.
d. Select Save.

Note: In the Create Baseline pop-up, the Create Schedule Baseline and the Create

Financial Baseline check boxes are selected by default. Clear a check box if you do not
intend to create a specific baseline.
Related topics
Compare financial baselines of a project
Compare schedule baselines of a project
Compare financial baselines of a project
Compare baselines to review the variances in the financial data of a project and see what
changed.

Before you begin

Role required: it_project_manager

About this task

You can create multiple baselines at various stages of a project, for example, at the end of each
phase or after every calendar month or quarter. Each baseline captures the financial data of
the project at a particular moment, providing a basis from which you can identify and review the
changes made to the project. Having multiple baselines and comparing them helps you track the
performance of your projects.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1083


<!-- page 1084 -->
Procedure
1. To compare the financial baselines of a project, use one of the following options.
Option

Steps

a. Navigate to All > Project > Projects >
Project Workspace.
From the Project Workspace

b. Open a project.
c. Select the Financials tab.
d. Select the Baselines from header and then
select Compare baselines.
a. Navigate to All > Project > Projects > All.
b. Open a project.

From the Project form

c. On the Project form, select the Cost Plans
or Benefit Plans related list.
d. Select Manage.
e. On the Financials tab, select the baseline
information icon (
pare Baselines.

) and then select Com­

a. Navigate to All > Project > Projects > All.
b. Open a project.
From the Baseline form

c. On the Project form, select the Baseline re­
lated list.
d. Open a baseline.
e. On the Baseline form, select the View Fi­
nancial Baseline related link.

2. On the Financial Baseline form, select the baselines you want to compare from the two choice
lists.
By default, the current and the most recent baselines are selected.
3. Select Compare.
The comparative data of the baselines display in the following two sections:
◦ The Financial Baseline Summary section displays four widgets: the first two widgets contain
the financial data of the two baselines, the third widget contains their variance, and the
fourth widget contains the actual costs to date of the project.
◦ The Financial Baseline Details section displays the cost plans and benefit plans of the two
baselines in two different grids. Each plan type has two rows corresponding to each baseline
data.

Note: Select the baseline legend icon (

) to see the color code of rows representing

each baseline.
4. Optional: Review additional fields or reorganize the comparative data on the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1084


<!-- page 1085 -->
◦ To show or hide additional fields on the widgets in the Financial Baseline Summary section,
select the configuration icon (

) and select the field names.

The selected field preferences are saved and are available when you reopen the Financial
Baseline form. To reset to the default widget layout, select Reset to defaults.
◦ To view cost plan or benefit plan comparative data in yearly, quarterly, or monthly format,
select the Year or Quarter or Month views respectively.
◦ To toggle viewing the Financial Baseline Summary section, select the Collapse icon (
Expand icon (

) or

).

Compare schedule baselines of a project
Compare baselines to review variance between tasks and identify which task has variance from
the current planned end date and the baseline end date. The baseline variance column displays
the amount of variance between the two date comparisons.

Before you begin

Role required: it_project_manager

About this task

Create schedule baselines at various stages of a project, for example, at the end of each phase
or after every calendar month or quarter. Each baseline captures the schedule information of
project tasks at a particular moment. This snapshot provides a basis for comparison and helps
you to identify and review the changes made to the project. Having multiple baselines and
comparing them helps you track the performance of your projects.

Procedure
1. To compare the schedule baselines of a project, use one of the following options.
Option

Steps

a. Navigate to All > Project > Projects > All.
b. Open the project for which you want to com­
pare baselines.
From the Planning Console

c. On the Project form, select the Planning
Console related link.
d. On the Planning Console, select the more
actions icon (
) and then from the Base­
lines list, select a baseline.
a. Navigate to All > Project > Projects > All.
b. Open the project for which you want to com­
pare baselines.

From the Baseline form

c. On the Project form, select the Baselines re­
lated list.
d. Open a baseline.
e. On the Baseline form, select the View Base­
line on Planning Console related link.

The Planning Console displays the selected schedule baseline.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1085


<!-- page 1086 -->
2. On the Planning Console, select different baselines to view schedule variance information of
project tasks.
The following columns display the baseline information:
◦ Baseline start date: The planned start date for the task.
◦ Baseline end date: The planned end date for the task.
◦ Baseline variance: The difference between the baseline end date and planned end date.
The value of this field column if there are any changes made to the project tasks or project.
If the planned end date for a task is prior to the baseline date, the variance is shown as
a negative value. For example, for a task with the planned end date of April 24 and the
baseline created on April 17 means it is past due or late. The Baseline variance column in this
case displays a value of -5 days.

Note: Use the show or hide columns in gantt icon (

) to add these columns to the

Planning Console.
Related topics
Create baseline of a project
Create a milestone
A milestone is a project task with a duration of zero (0). Use milestones to mark key dates in your
project, such as key decision points, approvals, and holidays. Milestones are treated like any
other project task and you can create dependencies between tasks and milestones.

Before you begin

Role required: it_project_manager

About this task

Note: Milestones cannot be shared between projects unless one project is nested under
another project.

Procedure
1. Create a project task and give the Duration field a value of 0.
2. Open the planning console Gantt chart and verify that it appears as a diamond.
You can also convert a task to milestone through Planning console tasks.

Result

Milestone

Activate project task email notifications
The following email notifications for the Project Management application are available by default,
but are inactive. You must activate them manually.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1086


<!-- page 1087 -->
Procedure
1. Navigate to All > System Notification > Email > Notifications.
2. Activate the following notifications:
Email Notifications
Notification

Table

Field

Condition

Description

Project task pm_project_task Assigned
assigned
to

Inserted
or
updated

Sends an email notification when a
task is assigned to a resource or the
assigned resource is changed.

Project task pm_project_task State
started

Changes
to
Work in
Progress

Sends an email notification when the
project task starts.

Project task pm_project_task Additional Any
commented
comments changes
occur

Sends an email notification when the
comment field is updated.

Set up project notifications with the workflow tool
Use the workflow tool, for example, to set up a workflow that sends an email notification when the
state of a project task becomes Work in Progress.

Before you begin

Role required: admin

Procedure
1. Create a workflow with the following attributes:
◦ Name: Notify assignee
◦ Table: Project task [pm_project_task]
◦ If condition matches: Run if no other workflows matched yet
◦ Condition: State is Work in Progress and Assigned to is not empty

Note: Do not modify other attributes in this example.
2. Add a single Notification activity between the Start and End activities.
Drag the activity onto the connector line until it changes color. The attributes of the activity are
similar to the following example:
◦ Name: Notify assignee
◦ To: ${assigned_to}
◦ Subject: Project task ${number} has been activated and is assigned to you
◦ Message:Project task ${number} has been activated and is assigned to you
▪ Number: ${number}
▪ Short description: ${short_description}
▪ Planned start date: ${start_date}

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1087


<!-- page 1088 -->
▪ Planned end date: ${end_date}
▪ Planned duration: ${duration}

Related topics
Activate project task email notifications
Change the planned start date of a project
Adjust the schedule of a project by changing the planned start date of a project and shifting it
later or earlier than the current planned schedule.

Before you begin

Role required: it_project_manager

About this task

Changing the planned start date of a project to a new date also moves all its tasks and
subprojects relative to the updated start date of the project. You can change the planned start
date of a project when the following conditions are true:
• The State of the project is Pending or Open.
• To move the start date of a project in WIP state, set the Enable move project for WIP projects
property (com.snc.project.move_project.wip) to true. The default value of this
property is false.
• No project_funding records are selected for execution.
• The project actual dates are not populated.

Note:
• The Move project option is available for a project only when it has a task or subproject.
• If an agile phase with sprints is associated to the project, then changing the planned start
date of the project also clears the start and end dates of the sprints.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1088


<!-- page 1089 -->
Procedure
1. Change the planned start date of a project using either of the following options.
Option

Steps

a. Navigate to All > Project > Projects >
Project Workspace.
From the Planning console

b. Open the project for which you want to
change the planned start date.
c. In the Planning Console, select the more ac­
tions icon (
) and then select the Move
project option.
a. Navigate to All > Project > Projects > All.

From the Project form

b. Open a project for which you want to
change the planned start date.
c. On the Project form, select the Move
project related link.

2. In the dialog box, pick a date.
3. Select or clear the Move all tasks regardless of constraint type check box.
◦ Clearing the check box moves the tasks with Start ASAP constraint only to the new project
date.
◦ Selecting the check box moves all the project tasks irrespective of their constraints to the
new project date with the same offset except the task with Start ASAP constraint.
This check box is selected by default.

Note: The tasks in WIP and Close states are not moved.
4. Select OK.

Result
• The planned start date of the project is updated to the new date.
• Program dates are updated relative to the project start date.
• If the Move all tasks regardless of constraint type check box is selected, all project tasks with
Start on specific date and Start no earlier than constraints are moved to a new start date by
the same offset as from the earlier project start date. The constraint date is also moved by the
same offset.
For example, say a project is starting on November 10 with a Start On task starting on
November 15, giving an offset of five days. If you move the project start date to November 20,
then the task start date will be moved to November 25, maintaining the five-day offset from the
project start date.
• All project tasks with Start ASAP constraint are moved to the new start date based on the
Constraint Date field on the project form. The tasks must be in the Open or Pending state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1089


<!-- page 1090 -->
• If the Change Resource Plan and Cost Plan Start Date with Demand or Project Start Date
Change property is selected, all related entities like cost plan, resource plan, and benefit plans
are moved relative to the project start date. For more information on how to set this property,
see Properties installed with Project Management.
Related topics
Pre-date a project task
Starting a project
Pre-date a project task
Move the planned start date of a task prior to the planned start date of a project. Adding a predated task allows you to accommodate tasks which need to start before the planned start date of
a project.

Before you begin

You should have created or added project tasks to your project.
Role required: it_project_manager

About this task

Before pre-dating a project task, note the following conditions:
• The property project.rollup_project_start_date should be set to true.
• Pre-dating a task's planned start date also moves the project's planned start date.
• The start date of a child task cannot be moved prior to the parent task's start date. For
example, if a parent task with Start no earlier than constraint starts on 20th and the child task
starts on 30th, the start date of the child task can only be moved up to 20th.

Procedure
1. Navigate to All > Project > Projects > All.
2. Select the project from the list.
3. On the Project form, update the planned start date for a project task using either of the
following options.
Option

Steps

a. In the Project Tasks related list, select the
project task which you want to pre-date.
From the Project Task form

b. On the Project Task form, select the Dates
tab and update the Planned start date for
the task.
a. On the Project form, select the Planning
Console related link.

From the Planning Console

b. In the Planning Console, update the start
date of the project task under the Planned
start date column.

4. In the Move date dialog box, select OK.
Related topics
Change the planned start date of a project
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1090


<!-- page 1091 -->
Create a cost type definition
Create a cost type definition to associate a cost type, operating, or capital, to an account in the
General Ledger from the Financial Management application. Create a cost type definition if you
are using Project Portfolio Management with Financials.

Before you begin

Role required: it_pps_admin

Procedure
1. Navigate to All > Project Administration > Settings > Cost Type Definitions.
2. Select New and enter name.
3. Select an account from the General Ledger Account [itfm_gl_accounts] table.
4. Select Capex if a capital expense or Opex if an operating expense.
5. Select Submit.
Costing add-on in Project Management
The Project Management costing add-on connects the Project Management application to the
Cost Management application to allow for estimating and tracking the costs associated with
projects.
This plugin enables the following project costing features:
• Estimate group resource costs during project planning.
• Tracking the actual cost of each user resource for a project.
• Track actual project task costs from time cards and other project expenses.
• Allocate project costs to the business.
• Represent project costs to the CIs that the project affects.
• Rollups of actual task expenses to parent tasks and the project record.
The Project and Cost applications work together as shown in the diagram:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1091


<!-- page 1092 -->
Project and Cost applications

The following properties are available with this plugin:
Costing add-on properties
Description

Property Name

Notes

For planned
tasks types,
calculate the
actual cost
field using
the total of
expense lines
for the task.

glide.cost_mgmt.calc_actual_cost

Default: true. This property is
from Cost Management. When an
expense line is created against any
task of planned_tasktype and this
property is true, the system gets a
sum of the costs for all the expense
lines and sets the total cost in the
work_cost field.

When creating glide.cost_mgmt.process_task_top_task Default: true
a task expense
line should the
system also
create expense
lines for the top
task?
Enable project
cost rollup
(estimated
and actual)
- updating
the cost of a
project task
updates the
cost of its
parent.

com.snc.project.rollup.cost

Default: true

The following business rules are added or modified with this plugin:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1092


<!-- page 1093 -->
Costing add-on business rules
Name

Table

Description

Project
Cost
Rollup

Planned task
[planned_task]

Default: true. This property is from Cost Management. When an
expense line is created against any task of planned_tasktype
and this property is true, the system gets a sum of the costs for all
the expense lines and sets the total cost in the work_cost field.

Process [fm_expense_line] Default: true
Top
Task
Parent
Generate labor costs
Generate labor costs based on the planning attributes configured for financials in the planning
attributes page for the resource assignments in a project.

Before you begin
• Review the planning attributes enabled for financials. For more information, see Using the
Planning attributes.
• Role required: it_project_manager

Procedure
1. Navigate to All > Project > Projects > All and select the required project.
Make sure that the resource assignments are finalized to generate cost plans. If there are no
resource assignments for the project, migrate the resource plans to resource assignments. For
more information, see Migrate resource plans and cost plans for projects and demands.
2. Generate labor costs using one of the following options.
Choice

Description

a. Select Project Workbench related link.
Using link from Financials Summary view

b. Select Financials tab and select Cost
Plans.
c. Select Generate Labor Costs.

Using related links

Select the Generate Labor Costs related link.
a. Navigate to All > System Definition >
Scheduled Jobs.

Activate a scheduled job

b. Filter the Name field to locate the Gener­
ate labor costs for demands and projects
scheduled job and open it.
c. Select Active and on the Scheduled Script
Execution form, fill the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1093


<!-- page 1094 -->
Choice

Description

For a description of the field names, see
Scheduled Script Execution Form.
d. Select Update.

3. Refresh the browser page to view attribute-based labor costs in the Cost Plans related list.

Result

Attribute-based labor costs are created for the unique combination of attributes that are
reflected as the name of the cost plans.
Related topics
Activate a scheduled job to generate labor costs
Scheduled Script Execution Form
Activate a scheduled job to generate labor costs
Activate and trigger a scheduled job to generate attribute-based labor costs for all the projects
and demands at a required cadence.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Definition > Scheduled Jobs.
2. Open the Generate labor costs for demands and projects scheduled job.
3. Select Active and on the Scheduled Script Execution form, fill the fields.
For a description of the field names, see Scheduled Script Execution Form.
4. Select Update.
Related topics
Scheduled Script Execution Form
Generate labor costs
Create a project status report
Create project status report from the related lists of the project form. The project status report
created for the most recent status date updates the status of the project in portfolios.

Before you begin

Role required: it_project_manager

About this task

The project status report shows snapshot status of RIDAC (Risk, Issues, Decisions, Actions, and
Request Changes) records, key milestones,and charts only.
To include RIDAC records in the status report, select the Show on project status report option
on individual RIDAC forms.
You can also print a project status report from project workspace. To print a report, select the
print icon (

) in the header of Status Report tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1094


<!-- page 1095 -->
Procedure
1. Create a project status report.
Option

Steps

a. Navigate to All > Project > Projects > Project
Workspace.
b. In My Projects Space page, select a project to
open it in project workspace.
From project workspace

c. Select the Status Report tab and select Create
new in the header.

Note: Alternatively, select a status report

and select Copy from the choice list next to
Create new. This option copies the selected
status report including all fields into the new
report.
a. Navigate to All > Project > Projects > All.
From project record

b. In the project list, open a project record.
c. Select the Status Report related link and select
New.

2. On the status report form, fill in the details.
For more information, see Status report form.
3. Select Submit.
Related topics
View project status reports
Status report form
View project status reports
Project status reports provide the most recent, at-a-glance progress of a project displayed in
several categories.

Before you begin

Role required: it_project_manager

About this task

The project status report acts as a snapshot, meaning the report preserves the status of various
parameters for the date and time when the status report is generated and does not display the
status of various parameters dynamically. For example, the project status report created last
week retains the same status as it was for that week and does not update the status dynamically.
You can use the project status reports to compare the progress of your project. Generate a new
project status report for your recent changes to reflect on the report.
The project status report shows snapshot status of RIDAC (Risk, Issues, Decisions, Actions, and
Request Changes) records, key milestones, and charts only.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1095


<!-- page 1096 -->
Procedure
1. Open a project status report.
Option

Steps

a. Navigate to Workspaces > Project Work­
space.
From project workspace

b. From Projects page, select a project to
open.
c. Select the Status Report tab.
d. Select a status report from the list to view
its contents.
a. Navigate to All > Project > Projects > All.

From project record

b. In the project list, open a project record.
c. Select the Status Report related link.
d. Select a status report from the list.
a. Navigate to All > Project > Projects > All.
b. In the project list, open a project record.
c. Select the Status Report related list.

From Project Status form

d. Select New and create a project status re­
port.
e. Select Save.
f. Select View.

Note: You can also open a project status report from the portfolio workbench. Open a

portfolio in the portfolio workbench and select Track Portfolio. Right-click a project in the
Timeline View and select Status Report from the context menu.
2. Review project status in the following sections.
Project status report sections
Section

Description

Overview

Provides a general overview about the project such as:
◦ Project Name: Name of the project.
◦ Project Manager: Project manager assigned to the project.
◦ Portfolio: Primary portfolio to which the project belongs.
◦ State: Current state of the project.
◦ Phase: Current phase of the project such as Initiating, Planning, and
Executing.
◦ % Complete: Percentage of the project completed.
◦ Planned Start Date: Intended date the project begins.
◦ Planned End Date: Intended date the project ends.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1096


<!-- page 1097 -->
Section

Description

◦ Planned Cost: Estimated cost of the project.
◦ Actual Start Date: Date on which the project began.
◦ Actual End Date: Actual end date of the project.
◦ Actual Cost: Actual cost of the project.
This information is rolled up from the project form.
If you had set your preference as project currency in the Status report currency
field of the Project form, then the Overview tab displays the following project
currency fields:
◦ Planned Cost in Project Currency: Estimated cost of the project in project
currency.
◦ Actual Cost in Project Currency: Cost of the project in project currency.

Note: The above fields appear when you enable the PPM Standard
Multicurrency plugin (com.snc.ppm_multicurrency) and switch to the
Project Currency view. For more information, see Multi-currency in project
financials.
Summary

Provides information about the overall health of the project.
◦ Executive Summary: Brief summary and analysis of the project.
◦ Last Week's Achievements: Progress of the project in the previous week.
◦ Key Activities Planned: Next planned activities for the project.

Cost
(Planned
vs. Actual)
chart

If you have enabled the Project Currency view, then the Cost in Project Currency
(Planned vs. Actual) section provides information about the actual cost versus
the planned cost in project currency.
This information is rolled up from the cost plan for the project.
◦ Planned: Approved cost for the project.
◦ Actual: Actual cost for the project is derived from the expense line created for
the project cost plan and from the time cards created for the project.

Resource Provides information about the actual resource hours used versus the allocated
(Allocated hours. This information is rolled up from the resource plan for the project.
vs. Actual)
◦ Allocated: Resource hours that have been allocated to execute the project.
chart
◦ Actual: The actual time spent is taken from the processed time cards created
for the project.
Current
Status

Provides the status related to overall health, schedule, cost, resources, and
scope of the project. This information is populated from the most recent status
entered by the project manager for the project.
◦ Status: Color indicator to signify the status.
◦ Comments: Comments for the status.

Status
History

Provides the trend of overall health, schedule, cost, resources, and scope of
the project. The Status reports can have maximum 9 entries in the status history
tab. This information is populated up from the last 9 status report created for the
project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1097


<!-- page 1098 -->
Section

Description

Date: Status date of the status reports. The color indicators signify the status of
the project on these dates.
Key
Provides information about key milestones in the project. This information is
Milestones populated from the project tasks identified as key milestones.
◦ Pending: List of key milestone tasks in the Pending, Open, and Work in
Progress state.
◦ Completed: List of key milestone tasks in the Closed state.
Risks

Provides information about risks concerning the project. This information is
rolled up from the risks that are part of the project.
◦ Pending: List of risks in the Pending state.
◦ Completed: List of risks in the Achieved and Not Achieved state.
The following information from the Risk record is displayed:
◦ Short description
◦ Probability
◦ Risk status
◦ State
◦ Assigned to
◦ Due date
For more information, see Add risks for a project.

Issues

Provides information about issues included in the project. This information is
rolled up from the issues reported for the project.
◦ Pending: List of issues in the Open and Work in Progress state.
◦ Completed: List of issues in the Closed state.
The following information from the Issue record is displayed:
◦ Short description
◦ Priority
◦ State
◦ Assigned to
◦ Due date
For more information, see Add issues for a project.

Decisions

Provides information about decisions included in the project. This information is
rolled up from the decisions reported for the project.
◦ Pending: List of issues in the Open and Work in Progress state.
◦ Completed: List of issues in the Closed state.
The following information from the Decision record is displayed:
◦ Short description
◦ Priority

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1098


<!-- page 1099 -->
Section

Description

◦ Decision status
◦ State
◦ Assigned to
◦ Due date
For more information, see Add decisions for a project
Actions

Provides information about action items for the project. This information is rolled
up from the actions reported for the project.
◦ Pending: List of actions in the Open and Work in Progress state.
◦ Completed: List of actions in the Closed state.
The following information from the Action record is displayed:
◦ Short description
◦ Priority
◦ State
◦ Approval
◦ Assigned to
◦ Due date
For more information, see Add actions for a project.

Request
Changes

Provides information about a change request for the project. This information is
rolled up from the change requests created for the project.
◦ Pending: List of project change requests in the Pending, Open, and Work in
Progress state.
◦ Completed: List of project change requests in the Closed state.
The following information from the Request Change record is displayed:
◦ Title
◦ Priority
◦ State
◦ Category
◦ Approval
◦ Assigned to
◦ Due date
For more information, see Create a request change.

Related topics
Create a project status report
Allocate budget to a project
Set the budget of a project according to the fiscal years.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1099


<!-- page 1100 -->
Before you begin

Role required: it_portfolio_manager

Procedure
1. Open the project form.
2. In the related links, select Project Budget.
The Project Budget dialog box opens.
3. Select the fiscal year for which you want to set the budget for the project.
4. Enter the amounts for Capex Budget and Opex Budget.
The Total Budget is updated with the sum of capex and opex amounts.
5. Select OK.
◦ If the project does not have any cost plan associated, then project budget is distributed by
honoring planned start and end dates of the project.
◦ If the project has any cost plan associated, then project budget is distributed by honoring
the cost plan fiscal periods.

Result

The project budget for the selected year appears in the Project Budget related list. You can click
the amounts in the list to revise them.
Migrate budget of active projects to Next Experience
Migrate the project budget to Next Experience to manage the financials using Project Workspace.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to All > Project > Projects > All.
2. Migrate baselines using one of the following options.
Choice

Description

a. Select the required projects from the
projects list.
Using list actions

b. Select the Actions on selected rows... list
and select Migrate Budget.
c. On the migrate budget confirmation win­
dow, select OK.
a. Open the required project.

Using related links

b. Select the Migrate Budget related link.
c. On the migrate budget confirmation win­
dow, select OK.
a. Navigate to All > System Definition >
Scheduled Jobs.

Activate a scheduled job

b. Filter the Name field to locate the Migrate
budget for active demands and projects
scheduled job and open it.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1100


<!-- page 1101 -->
Choice

Description

c. Select Active and on the Scheduled Script
Execution form, fill the fields.
For a description of the field names, see
Scheduled Script Execution Form.
d. Select Update.

Note: After migration, you won't be able to view the budget on Classic UI. You're
encouraged to manage budget using the Financials in Next Experience.
Related topics
Migrate financial baselines of projects to Next Experience
Migrate financial baselines of projects to Next Experience
Migrate the financial baselines of your project to Next Experience to manage the financial using
Project Workspace.

About this task

Next Experience uses new data model which has two new tables Investment
Baselines (sn_invst_pln_invst_investment_baseline) and Investment Baseline Header
(sn_invst_pln_invst_investment_baseline_header) which are used to capture financial baselines.
The financial baselines created for demands in classic experience are not visible in Next
Experience. You can migrate the existing baselines from classic to Next Experience as an ondemand activity for the required projects, or as bulk by activating and running a scheduled job.
Baselines view in the Next Experience provides better insights to view and analyze the financial
performance of your projects.
Unlike the financial baselines created using Next Experience, the financial baselines created
in the Classic UI do not capture the actual expenses along with planned costs as a default
behavior. To have relevant information for baselines comparison, the actual costs will be
captured as part of the baseline migration using the processed expense lines as of the baseline
creation date of the financial baseline.
For detailed information and use cases on using financials in Next Experience, see Managing
financials for planning items in Portfolio Planning.

Note: Migration of financial baselines is not applicable for demands or projects with multicurrency.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1101


<!-- page 1102 -->
Before you begin

Role required: it_project_manager

Procedure
1. Navigate to All > Project > Projects > All.
2. Migrate baselines using one of the following options.
Choice

Description

a. Select the required projects from the
projects list.
Using list actions

b. Select the Actions on selected rows... list
and select Migrate Financial Baselines.
c. Select OK on the Migrate Financial Base­
lines confirmation window.
a. Open the required project.

Using related links

b. Select the Migrate Financial Baselines re­
lated link.
a. Navigate to All > System Definition >
Scheduled Jobs.
b. Filter the Name field to locate the Migrate
financial baselines to Next Experience
scheduled job and open it.

Activate a scheduled job

c. Select Active and on the Scheduled Script
Execution form, fill the fields.
For a description of the field names, see
Scheduled Script Execution Form.
d. Select Update.

Tip: After migration, you're encouraged to create financial baselines using the
Financials in Next Experience.

Result

Financial baselines for the selected projects will be migrated to Next Experience and you can
view them in the Baseline view.

What to do next
View and compare the migrated baselines with any existing baselines or current baseline (

).

Related topics
Migrate budget of active projects to Next Experience
Adding external dependencies for projects
As a project manager, you can use an external dependency to set up a dependency from a task
in one project to a task in another project.
External dependencies help you to see the impact of changes in project schedules when a
predecessor project changes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1102


<!-- page 1103 -->
How external dependencies work
To define the external dependency, select a project task from the predecessor project to be
linked to the task in the successor project. When an external dependency is added, the system
adds shadow tasks in both the successor and predecessor projects.
A shadow task is a read-only task in the respective project. It has the database attribute shadow
set to true and orig_sys_id pointing to the sys_id of its original task. The shadow task is kept in
sync with its original task whenever the relations are processed.
In addition to the shadow tasks, two shadow relations are also added in the
planned_task_rel_planned_task table. These relations are shadows of the original relations.
For example, for two projects, project P1 is the predecessor project, and P2 is the successor
project. Project P1 has a task T1, and project P2 has a task T2.
If an external dependency is created from T1 to T2, the following tasks are added in the two
projects:

Project

Task

P1

Shadow of T2

P2

Shadow of T1

After adding the external dependency, the following shadow relation records are created in the
planned_task_rel_planned_task table:

Parent

Child

Project

External

T1

T2

Shadow of T1

T2

P2

False

T1

Shadow of T2

P1

False

True

Where:
• Parent is the predecessor project.
• Child is the successor project.
• Project is the project where the relation is seen.
• External is the external dependency.
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Create a risk record for your project that you can convert to other records during the project life
cycle. Track issues and avoid copying relevant details in the related records.
As a project progresses through the project life cycle, a risk might result in an issue, or a new
issue might occur. After you have a risk record, you can convert that record into related records
such as issues, actions, or decisions. The conversion and association of records helps you
analyze and identify patterns, trends, and probable resolution for planning future projects.
Plan and manage all RIDAC records on a single RIDAC page in Project Workspace. This page
enables you to create, edit, convert, and associate RIDAC records on a central location. Navigate
to the RIDAC page or Classic Project Workspace from Project Workspace interface.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1103


<!-- page 1104 -->
Consider the following points before converting or associating RIDAC records in Project
Workspace:
• You can convert one record to another only in the RIDAC sequence. For example, you can
convert a risk to an issue, decision, action, or request change but you can’t convert an issue
to a risk or a decision to an issue. The following diagram illustrates the RIDAC process flow.

• You can convert one record into multiple RIDAC records. For example, you can create multiple
issue records from one risk record.
For converting RIDAC records in Classic Project Workspace, see Convert one RIDAC (Risk,
Issue, Decision, Action, and Request Changes) record to another for a project. For converting
RIDAC records in Project Workspace, see Convert one RIDAC record to another for a project in
Project Workspace.
• You can associate one record with multiple different records. For example, you can link one
issue record to multiple different risk, decision, action, or request change records.
For associating RIDAC records in Classic Project Workspace, see Associate existing RIDAC
(Risks, Issues, Actions, Decisions, and Request Changes) records for a project. For associating
RIDAC records in Project Workspace, see Associate existing RIDAC records for a project in
Project Workspace.
Related topics
Convert one RIDAC (Risk, Issue, Decision, Action, and Request Changes) record to another for
a project
Associate existing RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for
a project
Add risks for a project
Add a risk to a project to identify, analyze, prioritize, plan, and track a risk during any phase of
the project life cycle. Assess potential problems and the severity of their impact to take informed
decisions about the project.

Before you begin

Role required: it_project_manager

About this task

A risk is any uncertain event that can potentially impact the success or outcome of a project. For
example, an incorrect estimate of factors like financial outlay or resource assignments can cause
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1104


<!-- page 1105 -->
schedule slippage. Another example of a risk is a change in project requirements. Recording
risks ensures that decision makers have all relevant information when assessing a project's
progress. A project manager can add risks to a project and assess them. While adding risks, the
project manager can add risks from an existing library of project risks that are applicable for their
unique projects.

Procedure
1. Navigate to All > Project > Projects > All.
2. Select the project to which you want to add risks.
3. In the Risks related list, select New.
4. Alternatively, select Create from Library if you have the Advanced Risk plugin activated.
a. Select the risk statements as required.
b. Select Create Risks.
Only the risks statements that belong to the Project category are displayed for the user.
5. On the Risk form, fill in the fields.
For more information, see Risk, issues, decisions, actions, and request change (RIDAC) form.

Note: The Risk Assessment Summary section only appears when the Enable
Advanced Risk PPM Integration property is enabled.
6. Select Submit.

What to do next
• Assess the risks that have been added. For more information, see Assign project risks to
stakeholders for assessment
• Convert an existing risk to an issue, decision, action, or request change and close the risk.
For more information, see Convert one RIDAC (Risk, Issue, Decision, Action, and Request
Changes) record to another for a project.
• Associate the risk with existing issues so you can track dependencies and recognize trends
for the future. For more information, see Associate existing RIDAC (Risks, Issues, Actions,
Decisions, and Request Changes) records for a project.
Related topics
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Configure custom Risk rank and Risk value for a project
Convert one RIDAC (Risk, Issue, Decision, Action, and Request Changes) record to another for
a project
Associate existing RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for
a project
Configure custom Risk rank and Risk value for a project
Configure custom risk rank and value scores (such as High-Medium, Medium-Low, or AbsoluteLow) to rate the impact and probability factors for a risk.

Before you begin

Role required: pps_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1105


<!-- page 1106 -->
About this task

Use the Risk Value Lookup module to set up the risk rank and risk value for a specific
combination of risk impact and probability. The system uses these values to determine the
degree of risk (Absolute, High, Medium, Low) based on the impact and probability factors of a
risk.
The value in the Probability field is multiplied by the value of the Impact field to generate the
values for the Risk rank and corresponding Risk value in the Risk form.
By default, you can use the following impact, value, and probability scores for a risk to create a
risk rank and risk value score:
• Absolute
• Low
• Medium or Moderate
• High
For example, a risk might have high probability and medium impact but you might want to
consider it as an overall low risk for the project. In that case, you would configure the Risk Value
Matcher form with the following values:
• Impact = 2 Medium
• Risk Rank Color = Green
• Probability = High
• Probability Number = 1
• Risk Value = 3 Low

Procedure
1. Navigate to All > Project Administration > Settings > Risk Value Lookup.
2. Select New.
3. On the form, fill in the fields.
For more information, see Risk value matcher form.
4. Select Submit.
Related topics
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Convert one RIDAC (Risk, Issue, Decision, Action, and Request Changes) record to another for
a project
Associate existing RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for
a project
Add issues for a project
Add an issue to a project to escalate a risk or to track an unexpected problem such as a technical
malfunction or resource unavailability that occurs during any phase of the project life cycle. If the
issue remains unresolved, unnecessary conflicts, delays, or even a failure can occur.

Before you begin

Role required: it_project_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1106


<!-- page 1107 -->
Procedure
1. Navigate to All > Project > Projects > All.
2. Select the project to which you want to add an issue.
3. In the Issues related list, select New.
4. On the Issue form, fill in the fields.
For more information, see Risk, issues, decisions, actions, and request change (RIDAC) form.
5. Optional: Search in the knowledge base for any article related to the issue.
a. Select the search knowledge icon (

).

b. If you find relevant articles, select the title of an article to view its content.
c. If you want to include the content of the article in the issue, select Attach to Issue.
The article content is copied in to the Description field of the Issue form. You can modify the
text if necessary.
6. Select Submit.

What to do next
• Convert an existing issue to decision, action, or request change and close the issue. For more
information, see Convert one RIDAC (Risk, Issue, Decision, Action, and Request Changes)
record to another for a project.
• Associate the issue with your existing risks so you can track dependencies and recognize
trends for future. For more information, see Associate existing RIDAC (Risks, Issues, Actions,
Decisions, and Request Changes) records for a project.
Related topics
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Add decisions for a project
As a project manager, develop a plan to manage risks and issues proactively with solutions. Add
the solution for a risk or issue to a project in the form of a decision. You can also convert a risk or
an issue to a decision or a decision to an action or a request change.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Project > Projects > All.
2. Select the project to which you want to add a decision.
3. In the Decisions related list, select New.
4. On the Decision form, fill in the fields.
For more information, see Risk, issues, decisions, actions, and request change (RIDAC) form.
5. Optional: Search in the knowledge base for any article related to the decision.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1107


<!-- page 1108 -->
a. Select the search knowledge icon (

).

b. If you find relevant articles, select the title of an article to view its content.
c. If you want to include the content of the article in the issue, select Attach to Decision.
The article content is copied in to the Description field of the Decision form. You can modify
the text if necessary.
6. Select Submit.

What to do next
• Convert a decision to an action or request change and close the decision. For more
information, see Convert one RIDAC (Risk, Issue, Decision, Action, and Request Changes)
record to another for a project.
• Associate the decision with your existing issues and risks so you can track dependencies and
recognize trends for future. For more information, see Associate existing RIDAC (Risks, Issues,
Actions, Decisions, and Request Changes) records for a project.
Related topics
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Add actions for a project
Add actions that are required for resolving an issue or risk for a project. You can also convert a
risk, issue, or decision to an action based on your analysis and plan for resolution of a risk or
issue.

Before you begin

Role required: it_project_manager

About this task

After analyzing the risks and issues and taking a decision on how to manage those risks and
issues, add an action for resolving the risk or issue to a project.

Procedure
1. Navigate to All > Project > Projects > All.
2. Select the project to which you want to add an action.
3. From the Actions related list, select New.
4. On the Action form, fill in the fields.
For more information, see Risk, issues, decisions, actions, and request change (RIDAC) form.
5. Optional: If the action requires approval from other stakeholders, request approval with a due
date using the Approval and Due date fields.
6. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1108


<!-- page 1109 -->
What to do next
• Convert an action to a request change and close the action. For more information, see Convert
one RIDAC (Risk, Issue, Decision, Action, and Request Changes) record to another for a
project.
• Associate the action with your existing risk, issue, and decision records so you can track
dependencies and recognize trends for future. For more information, see Associate existing
RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project.
Related topics
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Create a request change
As a project manager, you might create a request change as the outcome of the action taken
to resolve an issue or mitigate a risk. The request change might result in changing the project's
scope, resource requirement, cost, or schedule to minimize the impact of a risk or issue.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Project > Projects > All.
2. Select the project to which you want to add a request change.
3. In the Request Changes related list and select New.
4. On the form, fill in the fields.
For more information, see Risk, issues, decisions, actions, and request change (RIDAC) form.
5. Select Submit.

What to do next
• Associate the request change with your existing risk, issue, decision, and action records
so you can track dependencies and recognize trends for future. For more information, see
Associate existing RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for
a project.
• Create tasks for working on the change request. For more information see, Create a task from
an incident, problem, or change request.
Related topics
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Convert one RIDAC (Risk, Issue, Decision, Action, and Request Changes) record to another for
a project
Convert one RIDAC record (risk, issue, action, decision, and request changes) to another, in that
order, to retain the record information instead of having to create a new record manually and to
more easily track the issue.

Before you begin

Role required: it_project_manager

About this task

When you convert a RIDAC record to another record, the values for the Short description,
Requester, and Assigned to fields are carried forward.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1109


<!-- page 1110 -->
You can also specify to close the parent record on creation of the new record instead of manually
closing the parent record.
You can also view the consolidated list of all converted RIDAC records using the View RIDAC
related link on the Project form and View RIDAC in the application navigator of the Project
module.

Procedure
1. Navigate to Project > Projects > All.
2. Select the project for which you want to convert a risk, issue, decision, action, or request
change record to another RIDAC record.
3. From the Project form related list, select the risks, issues, decisions, actions, or request
changes record to open the form view.
4. Select the Convert to RIDAC related link on the form.
5. Optional: On the Convert dialog box, from the Select task type list, select the RIDAC record to
which you want to convert the selected record.
For example, if you wanted to convert a risk to an issue, you would select Issue.
6. Optional: Modify the text in the Short description field, which is copied from the parent
record.
7. Optional: Change the default assignment copied from the parent record in the Assigned to
field by selecting the lookup icon (

) and selecting a different user.

8. Optional: If you want to close the parent RIDAC record on creation of the new record, select
the close parent record option.
The label of the close parent record option changes depending on the parent record type.
For example, if the parent record is Risk and you are converting it to an issue record, the close
record option would appear as Close Risk.
9. Select OK.
Related topics
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Associate existing RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for
a project
Associate existing RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records
for a project
Link existing RIDAC records (risks, issues, actions, decisions, and request changes) to one
another for your project. Associating RIDAC records with each other enables you to keep a
record of risks or issues and their outcome for analysis at project closure and planning. It also
helps to track the risks and issues throughout the project life cycle.

Before you begin

Role required: it_project_manager

About this task

You can associate one record with multiple different records. For example, you can link one issue
record to multiple risk, decision, action, or request change records.

Procedure
1. Navigate to Project > Projects > All.
2. Select the project for which you want to associate one RIDAC entry to another.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1110


<!-- page 1111 -->
3. In the Project form related list, select the RIDAC record.
4. On the form, select the Associate RIDAC related link.
5. In the Associate dialog box, from the Select type list, select the RIDAC record to which you
want to associate the selected record.
For example, if you wanted to associate a risk to an issue, you would select Issue.
6. Select the record number to which you want to associate the selected record from the
Associate to list.
For example, if you wanted to associate the selected risk to issue (ISU0010003), you would
select ISU0010003.
7. Select OK.
Related topics
Adding RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project
Convert one RIDAC (Risk, Issue, Decision, Action, and Request Changes) record to another for
a project
Applying templates to projects
A project template defines the basic structure of a project.
Project templates can include project tasks and subtasks, attachments, checklists, and other
project information. Because projects often get repeated, templates enable you to create,
save, and reuse project structure. You can also modify existing templates, create projects from
templates, and apply templates to empty projects. A project is considered empty when it does
not contain any subtasks.
With the project manager role, you can:
• Create project templates
• Use templates to create a project
With the PPS admin role, you can modify the project template configuration.
Create a project template
Create a template from an existing template or a project.

Before you begin

Role required: it_project_manager

About this task

When you create a template from a project, all the project attachments and checklists are
copied to the template. You can add or remove attachments from the template using the Project
Template form. A project template created from an off-schedule project honors the off-schedule
tasks.

Procedure
1. Create a template.
Option

Steps

From an existing template

a. Navigate to All > Project > Projects > Tem­
plates.
b. Open the desired project template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1111


<!-- page 1112 -->
Option

Steps

c. Select the Copy Template related link at
the bottom of the form.
d. The Copy Template dialog box opens. The
Template field is auto-filled with the current
template name.
a. Navigate to All > Project > Projects > All.
b. Open the desired project.
From a project

c. Select the Save as New Template related
link at the bottom of the form.
d. The Create Template dialog box opens.

2. Fill in the following fields:
◦ Template name: enter a unique name for the new template.
◦ Description: enter a brief description of the new template.
3. Select OK.
The project template form opens for the newly created template.
4. Make any desired changes to the fields on the project template form.
The top section of the Project Template form includes basic template information, such as the
template name and description. The middle section of the project template form defines the
specific data included in the template. The information in this section is built from fields on the
project [pm_project] table that the user selects and the values for those fields that the user
defines.
5. Select Update.
Related topics
Applying templates to projects
Add an attachment to a project template
Attach a file to a project template just as you can attach a file to a project or task.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to All > Project > Projects > Templates.
2. Open the desired template.
3. Select the Attachments tab to open the related list.
4. Select New.
5. Select Browse on the Attachments dialog box and select a file.
6. If desired, select Add Another Attachment to select another file.
7. Select Attach.
The selected file appears in the Attachments related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1112


<!-- page 1113 -->
Apply a template on the Project form
While creating a project using the Project form, you can apply a project template to include
project tasks and subtasks, attachments, checklists, and other project information. You can apply
a project template to a new project or an existing project.

Before you begin

Role required: it_project_manager

About this task

A project created from the off-schedule project template honors the off-schedule tasks and
adjusts the dates according to the given start date.
When applying a template to a project, the project state is set to the default state. Activate the
default project state (pm_project.state = -5), and use it as the default value as it is Out Of The
Box. You can update the label for the State field to meet your requirements if Pending doesn't fit
well.

Procedure
• To apply a template on the blank project form:
1. Navigate to All > Project > Projects > Create New.
2. Select the link next to To create project from a template.
The Apply Template window appears.
3. Enter the project name, select the start date, and select a project template.
• To apply a template to an existing project without any project tasks or subprojects:
1. Navigate to All > Project > Projects > All and select a project.
2. Select the To apply template click here link.
The Apply Template window appears.
3. Select the start date and select a project template.
Apply template to an existing project
Apply one or multiple project templates to an existing project from the project form or Planning
Console.

Before you begin

Role required: it_project_manager

About this task

A project created from the off-schedule project template honors the off-schedule tasks and
adjusts the dates according to the given start date.
When applying a template to a project, the project state is set to the default state. Activate the
default project state (pm_project.state = -5), and use it as the default value as it is Out Of The
Box. You can update the label for the State field to meet your requirements if Pending doesn't fit
well.

Important: Application of template on a project having project tasks does not apply
header information and only appends project tasks after the last project task of the project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1113


<!-- page 1114 -->
Procedure
1. Apply project template to an existing project from any of the following locations.
Location

Step

a. Navigate to All > Project > Projects > All.
b. Open the project to which you want to ap­
ply project template.
From Project form

c. In the Project form, based on the existing
project tasks or subprojects, apply the tem­
plate using any of the following options:
▪ If there are no tasks or subprojects, se­
lect the To apply template click here link.
▪ If there are tasks or subprojects, select
the Apply Template related link.
a. Navigate to All > Project > Projects > All.
b. Open the project to which you want to ap­
ply project template.

From Planning Console

c. In the Project form, select the Planning Con­
sole related link.
d. In the Planning Console, select the more ac­
tions icon (
option.

) and select Apply Template

2. In the Apply template dialog box, from the Project template list, select a project template.
3. Select Save.
4. Optional: To apply multiple project templates, repeat the steps 1 to 3.
Tasks from the template are added at the end of the last task.
Apply template to a blank project in project workspace
When you create a new project in the project workspace, you can apply a template.

Before you begin

Role required: it_project_manager

About this task

A project created from the off-schedule project template honors the off-schedule tasks and
adjusts the dates according to the given start date.
When applying a template to a project, the project state is set to the default state. Activate the
default project state (pm_project.state = -5), and use it as the default value as it is Out Of The
Box. You can update the label for the State field to meet your requirements if Pending doesn't fit
well.

Procedure
1. Navigate to All > Project > Projects > Project Workspace.
2. In the project workspace header, select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1114


<!-- page 1115 -->
3. Enter the project name, select the start date, and select a template in Create Project dialog
box.
4. Select OK.
Related topics
Starting a project
Project template configuration
The Project Template Configuration list defines the items that are included in a template.
Navigate to All > Project Administration > Settings > Template Config to display the Project
Template Configuration list. Each item in this list has:
• A defined parent table. The exception is pm_project, which is the root or top-level object in the
template.
• A link element. A field that links the parent table and the child table.
• A list of fields to include in the template. The fields defined in this column are the fields that are
copied to a project template.
The Project Template Configuration list contains three default template configuration items:
project, project task, and project subtask. You can modify these default items or create additional
items from this list.
Default Project Template Configuration Items
Item

Definition Parent

Link Element

pm_project

Project
object

None. This object does
not have a parent
because it is the root
level.

None. This object does not have a link
element because it is at the root level.

pm_project_task Project
task
object

pm_project

Parent. Because this task object is one
level below the root level, it uses the
parent table as a link element.

pm_project_task Project
subtask
object

pm_project_task

Parent. Because this subtask object is
two levels below the root level, it uses
the parent table as a link element.

Select an item in the Project Template Configuration list to open the project Template
Configuration form. For more information, see Project template configuration form.
Project Template Configuration form

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1115


<!-- page 1116 -->
Add a project template configuration item
Add a project template configuration item to include in a template.

Before you begin

Role required: it_pps_admin

Procedure
1. Navigate to All > Project Administration > Settings > Template Config.
2. Select New.
3. Fill in the fields on the Project Template Configuration form.
For more information, see Project template configuration form.
4. Select Submit.
For example, to add a requirement object to the project template configuration, fill in the fields
as follows:
◦ Table: Requirement [dmn_requirement]
◦ Parent table: Project [pm_project]
◦ Link element: Parent
◦ Active: Enable this check box
◦ Elements: short_description, description, priority, type, state
Related topics
Applying templates to projects
Project template configuration
Modify a project template configuration item
Modify a project template configuration item included in a template.

Before you begin

Role required: it_pps_admin

Procedure
1. Navigate to All > Project Administration > Settings > Template Config.
2. Select a configuration item from the list.
3. Make any desired changes to the fields on the Project Template Configuration form.
4. Select Update.
To delete a project template, select a configuration item from the list and select Delete. Do not
delete any of the default template configuration items: project, project task, or project subtask.
Doing so affects the ability to create project templates.
Related topics
Applying templates to projects
Project template configuration
Add a project template configuration item
Importing and exporting projects
You can manage projects using both Microsoft Project and the ServiceNow Project Management
application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1116


<!-- page 1117 -->
Project Import
Users with it_project_manager role can import projects and project tasks from Microsoft Project
into ServiceNow Project Management.
Create a project or update an existing project by importing the project data from Microsoft
Project into your ServiceNow instance. For more information, see Project import from Microsoft
Project.
While importing a project into your ServiceNow instance, you can also specify the calculation
method for calculating project dates. You can import the project tasks with different constraint
types using Manual or Automatic calculation. For information about supported constraints and
their conversion, see Project import from Microsoft Project.
You can create custom fields in your ServiceNow instance and map these fields with your
Microsoft Project while importing a project. For more information, see Create custom field
mapping for Microsoft Project file import.
You can import project tasks for multiple projects in one time using data files and transform
maps. For more information, see Import project tasks for multiple projects.
Some calendar elements are not imported from Microsoft Project into Project Management. For
information about calendar elements and schedules, see Calendars and schedules- Limitations.

Project Export
If you have the it_project_manager role, you can export project data. The project data, such as
project tasks and task constraints, can be exported as an export file. Use this export file to import
the projects into other ServiceNow instances.
If you are managing your projects using Microsoft Project, you can export your ServiceNow
projects using the export functionality.
You can choose to export the project data in MPP, XML, or CSV file formats. For more information,
see Project export to Microsoft Project.
If your project in the ServiceNow instance contains dates with any of the supported constraint
types, then these constraints are also exported when you export the project and project tasks.
For more information, see Project export to Microsoft Project.

Supported versions
Projects created in the following versions of Microsoft Project can be imported into the
ServiceNow Project Management application.
• Microsoft Project 2003
• Microsoft Project 2007
• Microsoft Project 2010
• Microsoft Project 2013
• Microsoft Project 2016
Project field mapping
During an import, values from Microsoft Project overwrite fields in project records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1117


<!-- page 1118 -->
Project Field Mapping
Microsoft Project fields

Project Management fields

Task Name

Short description. The field is overwritten only while you
import the first time.

Note

Description

Start

Planned start date

Finish

Planned end date

Duration

Planned duration

Actual Start

Actual start date

Actual Finish

Actual end date

Actual Duration

Actual duration

% Complete

Percent complete (personalize the form to add this field)

Predecessor Lag

Lag time between predecessor and successor

WBS

WBS

Critical

Critical path

Rollup

Rollup

Text10 (Field used for syncing
purposes)

Task Sys_Id

Project Header Title

Project name

Project Header Subject (Field
used for syncing purposes)

Top Task Sys_Id

Resource

Assigned to [assigned_to]

Note: During import, if there are multiple resources
assigned to a task in Microsoft Project:
• The first resource is added to the Assigned to field.
• The rest of the resources are added to the
Additional assignee list field.
Resource Group

Assignment Group

Related topics
Importing and exporting projects
Create custom field mapping for Microsoft Project file import
Map custom fields from Microsoft Project to ServiceNow fields before importing a project.

Before you begin

Create custom fields in your ServiceNow instance before mapping them with Microsoft Project.
For more information, see Add and customize a field in a table .
Role required: it_pps_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1118


<!-- page 1119 -->
About this task

Map the custom fields that you create in your ServiceNow instance with custom fields in the
Microsoft Project file you plan to import.
The supported data types for field mapping between Microsoft Project and ServiceNow
instances are:
• True/False
• Calendar
• Date/Time
• Choice
• Color
• Currency
• Decimal
• Due Date
• Floating Point Number
• Date
• Date/Time
• Duration
• List
• Time
• HTML
• Integer
• Long
• Percent Complete
• Phone Number (E164)
• Reference
• Name -Value Pairs
• String
• Translated HTML
• Translated Text
• URL
• Wiki

Procedure
1. Navigate to All > Project Administration > Project - MSP Import Field Mappings.
2. Select New.
3. From the Table list, select the table in which you created the custom field.
Task

Steps

If you created a field in the project table

Select Project from the Table list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1119


<!-- page 1120 -->
Task

Steps

If you created a field in the project task ta­
ble

Select Project Task from the Table list.

4. In the Microsoft Project Column field, enter the name of the custom field in your Microsoft
Project file that you want to map.
5. In the Destination Column list, select the custom ServiceNow field that you want to map to the
Microsoft Project field while importing a project.
6. Select Submit.

What to do next
• Import the Microsoft Project file. For more information, see Import a Microsoft Project file with
the Import module.
• Configure the Project form to add the custom fields that you want to see. For more information,
see Form configuration .
Related topics
Importing and exporting projects
Project import from Microsoft Project
Import Microsoft project files into the ServiceNow Project Management application.
Users with the project manager role can import a project using:
• Import module
• Project form
• Planning Console
When you import a project as a new project or into an existing project, the projects are updated
as follows:
• New project: A new record is created in the Project [pm_project] table. The tasks associated
with the project are added to the Project Task [pm_project_task] table.
Only the common or mapped fields are imported. Imported projects are brought into the
instance with both Priority and Risk set to Low.
• Existing project: The instance checks the Text10 field in the top-level Microsoft Project task.
If the Text10 field contains a recognizable sys_id, it means that the project was previously
exported from a ServiceNow instance. In this case, the values from the project overwrite the
values for the existing project.
You can also specify the schedule calculation type as Automatic or Manual for the imported
tasks. When you import a project into the instance, project constraints are converted as follows:
• The time constraint for all imported tasks, when you select calculation type as Manual, is set to
Start on specific date irrespective of their constraint type in Microsoft Project.
• The following constraint types are supported when you select calculation type as Automatic:
◦ Start on specific date
◦ As soon as possible

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1120


<!-- page 1121 -->
◦ Start no later than
◦ Start no earlier than
Tasks with other constraint types are converted to Start on specific date.

Note: The resource name in Microsoft Project should map to the name of the user in the
instance.
Related topics
Importing and exporting projects
Import a Microsoft Project file with the Import module
Use the Import module to import a Microsoft project file as a new project into the Project
Management application.

Before you begin

Role required: it_project_manager

About this task

Before importing a Microsoft Project file into the ServiceNow instance, consider the following
information.
• Microsoft Project project imported into a teamspace is only available to users who can access
the teamspace.
• To import custom fields in your Microsoft project, create those custom fields in your
ServiceNow instance first, and then create mapping between these fields before importing
the project. For more information, see Create custom field mapping for Microsoft Project file
import.

Note: You can also use the Scripted Extension Points for importing custom
fields without creating and mapping the custom fields manually. Use the
MSProjectImportTaskFormatter Extension Point to create a script include and
map custom fields in Microsoft Project and ServiceNow. You can also use this Extension
Point to modify the data while importing a project.
• If the calculation type is set as Manual, recalculation does not happen on project tasks when
they are imported from the Microsoft Project file. Once the project is in the ServiceNow system,
it would be treated as a manual project.
• Importing a Microsoft Project project with inter-project dependencies, does not import the
shadow tasks.
• Only the subprojects (header and parent task) get imported into the ServiceNow instance, the
child tasks are not imported.
• While importing a Microsoft Project file into ServiceNow, the import fails:
◦ If the project with tasks was created in ServiceNow instance before the import.
◦ If you reimport a project that was imported from Microsoft Project file earlier and you create
and add tasks in ServiceNow instance.

Note: To retain the project tasks that were created in the ServiceNow instance, you
must export that project first into the Microsoft Project file. Then, reimport the file back
into ServiceNow instance.
◦ If the task being deleted due to import has any of the related entities: Cost plan, Benefit plan,
Resource plan, Time card, or Expense lines.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1121


<!-- page 1122 -->
◦ If the values for lag or lead time dependencies are not in the supported format.
▪ Positive lag time dependency values for days, hours, and minutes are allowed. Negative
lag time dependencies are allowed only for days.
▪ All other elapsed duration types from Microsoft Project such as emin, eday, eweek, emon,
eyr, or % are not allowed for import.

Procedure
1. Navigate to All > Project > Projects > Import.
2. Select Choose File to select a Microsoft Project (mpp) file.
3. To import the Microsoft project as a new project, select the Create new project option.
4. Optional: In the Project name field, specify a name for the new project.
5. To import the Microsoft project as a subset of an active, existing project:
a. Select Update an existing project.
b. Select the reference lookup icon ( ) and select a project or task.
Only active projects appear in the list.
6. Select one of the following options to specify the method for calculating schedule:
◦ Automatic: Select this option to apply the scheduling engine while importing the project
tasks. The supported constraint types are imported with same constraints applied to them
while other constraint types are converted to Start on specific date.
◦ Manual: Select this option to import all project tasks with Start on specific date constraint
type irrespective of their constraint type in Microsoft Project.
For more information about supported constraint types, see Project import from Microsoft
Project.
7. Select Import.

Result
• A project task that was imported in ServiceNow instance earlier and has associated time cards,
resource plans, cost plan, benefit plan, or expense lines is retained on reimport even if it is
deleted from Microsoft Project.
• Dates in the ServiceNow project remain same as the dates in the Microsoft Project file.
• In a ServiceNow project with subprojects, the following details change:
◦ The WBS order of imported tasks is regenerated after import.
◦ The Planned Start Date and Planned End Date of the parent project are rolled up.
◦ The State of the parent project and tasks are rolled up.
◦ The % Complete on the top task is rolled up.
Related topics
Importing and exporting projects
Update a project using a Microsoft Project file
Import project data, from a Microsoft Project file, into an existing project in your ServiceNow
instance using the Project form or Planning Console.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1122


<!-- page 1123 -->
Before you begin
Create a project.

Role required: it_project_manager

Procedure
1. Navigate to All > Project > Projects > All.
2. Open the project which you want to update.
3. Import the Microsoft Project file to update the selected project from any of the following
screens:
◦ In the Project form, select Import from MS Project from the context menu.
◦ In the Planning Console, select the more actions icon (
Project option.

) and select the Import from MS

4. In the Microsoft Project Import dialog box, select the Microsoft Project file and calculation type:
a. Select Choose File to select a Microsoft Project (mpp) file.
b. Select one of the following options to specify the method for calculating the schedule:
▪ Automatic: Select this option to apply the scheduling engine while importing the project
tasks. The supported constraint types are imported with the same constraints applied to
them while other constraint types are converted to Start on specific date.
▪ Manual: Select this option to import all project tasks with the Start on specific date
constraint type irrespective of their constraint type in Microsoft Project.
For more information about the supported constraint types, see Project import from
Microsoft Project.
5. Select Import.

Result
• A project task that was imported in the ServiceNow instance earlier and has associated time
cards, resource plans, cost plan, benefit plan, or expense lines is retained on reimport even if it
is deleted from Microsoft Project.
• Dates in the ServiceNow project remain same as the dates in the Microsoft Project file.
• In a ServiceNow project with subprojects, the following details change:
◦ The WBS order of imported tasks is regenerated after import.
◦ The Planned Start Date and Planned End Date of the parent project are rolled up.
◦ The State of the parent project and tasks are rolled up.
◦ The % Complete on the top task is rolled up.
Related topics
Importing and exporting projects
Import project tasks for multiple projects
Import project tasks for multiple projects from an external file system or data source using import
sets and transform maps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1123


<!-- page 1124 -->
Before you begin

Role required: import_transformer, import_admin, or admin

Procedure
1. Navigate to All > System Import Sets > Load Data.
2. Select the Existing table option.
3. From the Import set table list, select the Import planned task [imp_planned_task] option.
4. In the Source of the import field, select File, and then select Choose File to select the source
Excel spreadsheet.
5. Optional: If required, specify the Work sheet and Header row number.
6. Select Submit
The imported data is available in the selected Import Set table.
7. Optional: Create field mappings for custom columns.
For more information, see Create field mappings .
8. Transform the data from the import set table to the target table.
For more information, see Run an import .
Related topics
Importing and exporting projects
Project export to Microsoft Project
If you are using Microsoft Project to manage project activities, you can export a project to
Microsoft Project (mpp) file, an XML file, or a CSV file.
Users with the project manager role can export a project using:
• Export module
• Project form
• Planning Console
You can also specify the format in which you want to export project data, the available options
are:
• XML: Suitable, if you want to import the project data into other ServiceNow instance.
• CSV: Suitable for exporting project data from Planning Console as is and viewing project data
using other applications.
• Microsoft Project: Suitable, if you want to import the project data into Microsoft Project.

Note: The option for exporting project data in CSV and Microsoft Project format is
available when exporting a project from Planning Console.
If tasks in your project contain any of the supported constraints, then the constraints are also
exported when you export the project. This export of constraints helps you in maintaining project
dates when you import the project to another ServiceNow instance. The following constraints are
supported:
• Start on specific date: Mapped with Must start on constraint when exported to Microsoft
project.
• As soon as possible

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1124


<!-- page 1125 -->
• Start no later than
• Start no earlier than

Note: Shadow tasks and external dependencies are not exported when you export the
project data.
Related topics
Importing and exporting projects
Export project data
Export the project data using the Export module, Project form, or Planning Console. Save the
export file to a folder on your system in the Microsoft Project (MPP), XML, or CSV format.

Before you begin

Role required: it_project_manager

About this task

Projects must use either the Project Management Schedule or the Default MS Project schedule
before they can be exported.
The option for exporting the project data in MPP and CSV format is available when exporting a
project from the Planning Console. Only the columns which are visible in the Planning Console
are exported.

Procedure
1. Export the project data from any of the following options.
Location

From the Export module

Steps

a. Navigate to All > Project > Projects > Ex­
port.
b. Select a project From the Project to export
list and select Export.
a. Navigate to All > Project > Projects > All.

From the Project form

b. Open the project that you want to export.
c. In the Project form, select Export to MS
Project from the context menu.
a. Navigate to All > Project > Projects > All.
b. Open the project that you want to export.
c. In the Project form, select the Planning Con­
sole related link.

From the Planning Console

d. In the Planning Console, select the more
actions icon (
tion.

) and select the Export op­

e. In the Microsoft Project Export dialog box,
select the file format.
f. Select OK.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1125


<!-- page 1126 -->
2. Optional: A dialog box might prompt you to save the export file.
Save the file as an XML file. If you are exporting the project from the Planning Console and
selected the CSV option, you can save the file in CSV format.

Note: Depending on your browser setting, the browser might automatically save the file
to your Download folder.

What to do next
• Use the MPP file to import the project data into a Microsoft Project.
• Use the XML file to import the project data into other ServiceNow instances or Microsoft
Project.
• Use the CSV file to view project data using other applications.
Related topics
Importing and exporting projects
Export project tasks
The task being exported must be associated with a project that uses either the Project
Management Schedule or the Default MS Project schedule.

Before you begin

Role required: it_project_manager

Procedure
1. Navigate to Project > Projects > All.
2. Open the project.
3. Scroll to the Project Tasks related list and select a task number to open the Project Task form.
4. Right-click the form header and select Export Task to MS Project from the context menu.
The task is exported to a folder on your system.
5. Open Microsoft Project to import the exported project task files.
Refer to Microsoft product documentation for instructions.
Calendars and schedules- Limitations
Some calendar elements from Microsoft Project are not imported into the Project Management
application.
• Project calendars
• User calendars
• Schedules
The imported project uses the default schedule of a Monday to Friday workday from 8 A.M. to 5
P.M. with an hour break for lunch, starting with the v3 application.
Related topics
Importing and exporting projects

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1126


<!-- page 1127 -->
Manage status of your projects using Project Status application
The Project Status mobile app enables you to track the status of your projects, collaborate with
stakeholders to resolve exceptions, and take timely actions regardless of your location.
You can use the Project Status features to do the following:
• View the latest status of your projects
• View the latest status report of your projects
• Review risks and decisions
• Collaborate with other stakeholders on a project
• Receive mobile notifications when the project status changes or other users add comments or
notes

Activation information
®

The Project Status mobile application runs on the ServiceNow mobile platform. To enable the
Project Status app, activate the PPM Mobile plugin (com.sn_ppm_mobile) if you have the admin
role.
Related topics
Activate Mobile Project Status
Get started with Project Status app
View project details on the mobile app
View project status report
Create RIDAC (Risk, Issues, Decisions, Actions, and Request Changes) records
Collaborate with project stakeholders
Activate Mobile Project Status
Activate the MobilenProject Status application from ServiceNow Store, earlier known as PPM
Mobile (com.sn_ppm_mobile), if you have an admin role. Installing this application also activates
related plugins if they are not already active.

Before you begin

Role required: admin

About this task

Mobile: Project Status activates the following related plugin if it is not already active.
Plugin for PPM Mobile
Plugin

Description

Project Portfolio Suite with
Financials

Enables you to manage your demands, resources,
portfolios and projects. It also helps you plan, track, and
manage the cost and budget of projects and demands
[com.snc.financial_planning_pmo] in a portfolio to strike a balance between investment and
returns.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1127


<!-- page 1128 -->
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
List of plugins (Zurich)
Get started with Project Status app
Access project status and status reports on the Project Status mobile app to review your project
status and collaborate with stakeholders regardless of your location.

Before you begin
• Download the Mobile Agent mobile application on an iOS platform from the Apple App Store or
on an Android platform from the Google Play Store.
• Activate the PPM Mobile plugin.
Role required: admin

Procedure
1. Open the mobile app and tap the plus icon (

).

2. Add a ServiceNow instance and enter the credentials to login.
You do not need to include service-now.com at the end of the instance name.
3. Optional: You can give a Nickname to your instance for easy identification.
4. Tap Project Status (

) to get started with tracking your projects.

Related topics
Agent mobile app
View project details on the mobile app
You can view the status of a project and other project details such as financial data, status
reports, risks, and decisions through the mobile app.

Before you begin

Role required: portfolio_manager or project_manager or program_manager

Procedure
1. Navigate to the Project Status application on your mobile app.
2. Open a project for which you want to view the details using one of the following options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1128


<!-- page 1129 -->
◦ Tap to open an applet and then tap on a project.
◦ Tap on the Search Projects applet to find a specific project.
◦ In the Critical Projects or the Project in Red lists, tap on a project.

Related topics
Manage status of your projects using Project Status application
View project status report
You can view the status of a project such as overall progress, executive summary, financial data,
and RIDAC records through the mobile app.

Before you begin

Role required: portfolio_manager or project_manager or program_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1129


<!-- page 1130 -->
Procedure
1. Navigate to the Project Status application on your mobile app.
2. Open a project for which you want to view the project status report using one of the following
options.
◦ Tap My Projects (

) applet to view your projects.

◦ Tap on the Search Projects (

) applet to find a specific project.

◦ In the Critical Projects or the Project in Red lists, tap on a project.
3. Tap the project card to view its status report.
◦ The Status tab displays the summary of project such as overall health of the project,
executive summary, achievements, and key activities planned for the project.
◦ The Details tab displays status and details of information related to schedule, scope, cost,
and resources for the project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1130


<!-- page 1131 -->
Related topics
Manage status of your projects using Project Status application
Create RIDAC (Risk, Issues, Decisions, Actions, and Request Changes) records
You can create Risk, Issues, Decisions, Actions, and Request Changes records for your project
through the mobile app.

Before you begin

Role required: portfolio_manager or project_manager or project_user

About this task

Analyze the impact of the risks on the project and create RIDAC records to track risks, issues,
and their probable resolution for planning future projects. For more information see, Adding
RIDAC (Risks, Issues, Actions, Decisions, and Request Changes) records for a project.

Procedure
1. Navigate to the Project Status application on your mobile app.
2. Open a project for which you want to create a RIDAC record using one of the following options.
◦ Tap to open an applet and then tap on a project.
◦ Tap My Projects applet to view your projects.
◦ Tap on the Search Projects applet to find a specific project.
◦ In the Critical Projects or the Project in Red lists, tap on a project.
3. Create a RIDAC record using one of the following options.
◦ Tap the more action icon (

) and select one of the options:

▪ New Risk
▪ New Issue
▪ New Decision
▪ New Action
▪ New Request Changes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1131


<!-- page 1132 -->
4. Based on the option that you selected, fill in the fields on the form.
RIDAC record

Description

New Risk

Fill the fields on the Risk form. For more infor­
mation, see Add risks for a project.

New Issue

Fill the fields on the Issue form. For more infor­
mation, see Add issues for a project.

New Decision

Fill the fields on the Decision form. For more
information, see Add decisions for a project.

New Action

Fill the fields on the Action form. For more in­
formation, see Add actions for a project.

New Request Changes

Fill the fields on the Request Changes form.
For more information, see Create a request
change.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1132


<!-- page 1133 -->
5. Alternatively, open a RIDAC record and create a new RIDAC record.
◦ a. Tap the RIDAC tab.
b. Tap the right arrow for a RIDAC record to view its details, tap the more action icon ( ), and
then tap New Risk, New Issue, New Decision, New Action, or New Request Changes
option based on the selected record.
c. Fill in the fields on the form.
Related topics
Manage status of your projects using Project Status application
Collaborate with project stakeholders
Collaborate with the project manager and other stakeholders on a project to provide project
updates, share documents, or send emails through the mobile app.

Before you begin

Role required: portfolio_manager or project_manager or project_user

Procedure
1. Navigate to the Project Status application on your mobile app.
2. Open a project for which you want to view the details using one of the following options:
◦ Tap on the Search Projects applet to find a specific project.
◦ In the Critical Projects or the Project in Red lists, tap on a project.
3. Collaborate with the project manager and other stakeholders on a project status report in any
of the following ways:
◦ Add activities to a project status report such as the ability to add work notes or comments,
select and upload a picture, or attach photos and files.
a. Tap the Activity tab.
b. Tap the add activity icon (

) and select one of the options:

▪ Add Work Notes
▪ Add Additional Comments
▪ Open Camera
▪ Open Library
▪ Attach File
◦ Send an email to the project manager for additional details of the project.
a. Tap the Details tab.
b. Tap the send email icon (

).

c. In the email application, compose the email, add addresses, and send.
By default, the To field is populated with the email ID of the project manager. You can add
other stakeholders.

Result

When you add an activity or change the status in a project, the project manager receives a
mobile notification. The project manager should have installed the Project Status app and
enabled notifications to receive notifications on the mobile device.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1133


<!-- page 1134 -->
Related topics
Manage status of your projects using Project Status application
Using the Planning attributes
Planning attributes are designed to define and work on attribute-based resource mapping in
Resource Management and to generate labor costs for these resources in financials.
An attribute is a property or a characteristic defined as a resource or a task type, which is
considered for attribute-based planning. These attributes can be used for resource management
and financial planning.
After the planning attributes are identified, as an admin, you can create or edit planning
attributes based on project requirements and metadata available from the resource table.
Working on creating planning attributes involves identifying and defining the attributes to use for
a project planning process.
Role-based advantages of using planning attributes
Role

Advantages

Resource Manager (Resource Management)

• Add any resources to a planning level.
• Use the resource grid to plan any attribute or
make the required detailed changes.
• Allocate a heatmap to view and manage
weekly or monthly allocation conflicts.

Project Manager (Project Financials)

• Attribute-based creation of labor costs
based on the new Resource Management.
• Automatically generate labor costs for the
external resources.
• View the labor costs by the expense
type based on the tasks assigned to your
resources.
• View the financial forecasts for split up labor
costs.

The following attributes are enabled by default for attribute-based resource mapping and to
generate labor costs using financials.
Planning attributes
Attribute name

Resource Management

Financials

Employee Type
Expense Type

.

Group
Role

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1134


<!-- page 1135 -->
Planning attributes (continued)
Attribute name

Resource Management

Financials

Skill
Related topics
Create or edit planning attributes
Create or edit planning attributes
Create or edit planning attributes to plan and forecast your resources and financials for a project.

Before you begin

Role required: pps_admin, sn_align_core.apw_admin

Procedure
1. Navigate to All > Project Administration > Planning attributes.
2. Use the following options to create or edit a planning attribute.
Option

Description

a. Select New.
b. On the Planning attribute form, fill the fields.
For a description of the field values, see
Planning attribute form.
c. Select Submit.
To create an attribute

The attribute is created and the planning at­
tributes screen is displayed.
d. Open the newly created attribute.
e. Enter field names for the lookup table val­
ues in the Planning attribute column config­
urations table.
f. Set the planning attribute to active using
the Active option to enable it for resource
or financial planning.
a. Select the required attribute name.

To update an attribute

b. On the Planning attribute form, fill in the
fields.

3. Enter field names for the lookup table values in Planning attribute column configurations
table.
4. Optional: To add new configurations to the default column configuration list for any tables
containing the financials or resource management attributes:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1135


<!-- page 1136 -->
a. Select New.
b. Select a lookup table from the list.
c. Select a field name from the list and select Submit.
For example: If you want to create an attribute for the Location field, add the location-related
columns to the selected lookup table.
The selected item is added to the column configuration list with an auto-generated field
description.
5. Select Update.

Important: If you're creating an attribute for resource management, make sure that

you add the Attribute field to the resource_allocation, resource_plan, and
sn_plng_att_core_resource_assignment lookup tables. Similarly, if you're
creating an attribute for financials, add the Attribute field to the cost_plan lookup table
along with the resource management lookup tables.
Related topics
Using the Planning attributes
Using Teamspaces in Project Management
A teamspace appears as an application in the instance application navigator. The teamspace
includes module links that come from the Project Portfolio Management applications, such as
the Project, Idea, Demand, Program and Portfolio applications.
Use teamspaces to provide functional and data separation of these applications between
different teams in your organization. The following is an example teamspace for a marketing
team:
Example teamspace

Teamspace activation
You must activate a teamspace plugin to use the teamspace feature. Following teamspace
plugins are available:
• Project Management TeamSpace 1 (com.snc.ppm_teamspace_1)
• Project Management TeamSpace 2 (com.snc.ppm_teamspace_2)
• Project Management TeamSpace 3 (com.snc.ppm_teamspace_3)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1136


<!-- page 1137 -->
• Project Management TeamSpace 4 (com.snc.ppm_teamspace_4)
• Project Management TeamSpace 5 (com.snc.ppm_teamspace_5)
The teamspaces loaded with these plugins contain the same components, but the components
have different prefixes. For example, teamspace 1 includes a project table named Teamspace_1
Project [tsp1_project] and teamspace 5 includes a project table named Teamspace_5 Project
[tsp5_project].
You can enable any or all of these teamspaces and assign the teamspace specific roles to
relevant users in the group that should use the teamspace. Maximum five teamspaces can be
created through plugins.

Teamspace customization
You can customize the Project and Demand portions of a teamspace without affecting other
teamspaces. This table summarizes what you can customize:
Teamspace customization
Customization to Project or Demand within a teamspace

Supported?

Data model changes, such as adding a field to the Project or Demand form.

Yes

Changes to business rules, UI actions, UI policies, security rules, data policies, and Yes
workflows.
Changes to shared roles, such as project_manager, demand_manager, and so on.

Yes

Form and list layouts, list controls, and related lists

Yes

Dictionary overrides

Yes

Related topics
Activate teamspaces
Activate teamspaces
You can activate one or all teamspace plugins to use the teamspaces feature.

Before you begin

Role required: admin

About this task

You must activate a teamspace plugin to use the teamspace feature. Following teamspace
plugins are available:
• Project Management TeamSpace 1 (com.snc.ppm_teamspace_1)
• Project Management TeamSpace 2 (com.snc.ppm_teamspace_2)
• Project Management TeamSpace 3 (com.snc.ppm_teamspace_3)
• Project Management TeamSpace 4 (com.snc.ppm_teamspace_4)
• Project Management TeamSpace 5 (com.snc.ppm_teamspace_5)

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1137


<!-- page 1138 -->
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Installed with teamspaces
The tables and roles that are installed with project teamspaces are prefixed with an abbreviation
based on the name of teamspace.

Tables
The tables are extended from the Project, Idea, and Demand base application tables.
Tables installed with teamspaces
Tables

Description

Idea [prefix_idea]

Stores ideas.

Demand [prefix_demand]

Stores demands.

Project [prefix_project]

Store projects.

Portfolio [prefix_portfolio]

Stores portfolios.

Project Task
[prefix_project_task]

Stores project tasks.

Portfolio Goal
[prefix_portfolio_goal]

Stores portfolio goals.

Portfolio Issues
[prefix_portfolio_issue]

Stores portfolio issues.

Portfolio Risk
[prefix_portfolio_risk]

Stores portfolio risks.

Portfolio Project
[prefix_portfolio_project]

Stores portfolio projects.

Project Template
[prefix_project_template]

Stores project templates.

Note: Project templates that are created in a teamspace
area are not available in the main Project Management
application any longer. They are only available to the
teamspace in which they were created.

Project Template Task
Stores project template tasks.
[prefix_project_template_task]
Stakeholder Register
[prefix_stakeholder_register]

Stores the stakeholders.

Program [prefix_pm_program] Stores programs.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1138


<!-- page 1139 -->
Tables installed with teamspaces (continued)
Tables

Description

Program Task
[prefix_pm_program_task]

Stores program tasks.

Program Task
[prefixpm_program_task
project_status]

Stores program task project status.

Roles
Roles installed with teamspaces
Role

Description

prefix_demand_manager

Managers of the demand features for the teamspace.

prefix_demand_user

Users of the demand features for the teamspace.

prefix_project_manager

Managers of the project features for the teamspace.

prefix_project_portfolio_user

Users of the project portfolios for the teamspace.

prefix_project_user

Users of the project features for the teamspace.

prefix_program_manager

Managers of the program features for the teamspace.

prefix_portfolio_manager

Managers of the portfolio features for the teamspace.

The teamspace application uses the same views that are provided in the Project, Idea, and
Demand base applications.

Note: Default client scripts that these base applications use are inherited by the extended
tables in the teamspace application. If you created custom client scripts for any of the base
applications, select the Inherited options on each Client Script form before you create the
teamspace.
Related topics
Using Teamspaces in Project Management
Configure teamspace settings
Configure teamspace settings after you activate a teamspace plugin.

Before you begin

Role required: it_pps_admin

Procedure
1. Navigate to All > Project Administration > Settings > TeamSpaces.
2. Select a teamspace name.
3. Change the teamspace name if necessary.
Changing the name only changes the title that appears in the application menu. It does not
modify the names of other components, such as table names or role names.
4. On the Tables, Roles, and Application Menu related lists, you can add or modify the tables,
roles, and application modules for the teamspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1139


<!-- page 1140 -->
Result

The teamspace becomes available in the menu. The records that are assigned to the teamspace,
such as projects, portfolios, demands, are automatically added to the teamspace.

What to do next

Assign the teamspace roles to the users of that teamspace. Do not assign the general roles that
come with the applications in the Project Portfolio Suite.
Related topics
Using Teamspaces in Project Management
Project reporting
Get an at-a-glance view of projects with reports, the portfolio dashboard, and project views. You
can see information such as projects with slipped milestones, graphs of resources by project,
and projects listed by percentage complete.

Note: Much of information available on reports, dashboards, and views is customizable.
The examples below derive from default settings.
The application provides several global reports, both lists and charts, that show the status of
projects at a glance. You can also create custom reports or create reports that can be viewed by
certain groups. The following Project Management reports are available in the base system:
• Active Project Unassigned Tasks 30 Days: list report: list report
• Projects (by priority): bar chart
• Projects (by priority): list report
• Projects (by risk): list report
• Projects (by risk): bar chart
• Projects (by state): list report
• Projects (by state): bar chart
• Active projects: list report
• Pending projects: list report
• Active Projects by Manager: bar chart
Related topics
Reporting
Enable project currency view in project-related forms
Switch over to the project currency view to track the planned costs of a project in the selected
project currency.

Before you begin

Role required: it_project_manager

About this task

To manage your projects in local currency and to create a project from a demand, the project
currency fields are added in the following tables that have cost details and financials tab:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1140


<!-- page 1141 -->
Tables with project currency fields
Table name

Description

Demand [dmn_demand] table

To create a project from a demand in project
currency. Specify the currency that you want
to use to manage your project by navigating
to the Financials tab of the Demand form and
selecting a currency in the Project Currency
field.

Note: You can specify the project
currency only when you switch to the
Demand Currency view. For more
information, see Multicurrency in
Demand Management.
To create a demand, see Create a demand.
Project [pm_project] table

To navigate to the Project form, see
unique_1019.

Cost Plans [cost_plan] table

To navigate to the Cost Plan form, see Create a
project cost plan.

Cost Plan Breakdown [cost_plan_breakdown]
table

To navigate to the Cost Plan Breakdown form,
see Update a cost plan breakdown.

Benefit Plan [benefit_plan] table

If you open the project form in Project
Currency view, then by default the project
currency related fields appear in the Benefit
Plans related list. To create a project benefit
plan, see Create a project benefit plan.

Benefit Plan Breakdowns
[benefit_plan_breakdown] table

To update a benefit plan breakdown, see
Update a benefit plan breakdown.

Expense Line [fm_expense_line] table

Expense lines are part of project cost plans
and stores cost associated with a specific
resource. To navigate to the Expense line form,
see Create an expense line.

Project Funding [project_funding] table

Stores the project target and budget expense
values for both capital and operating
expenses for a single fiscal period.

Procedure
1. Navigate to the respective form.
2. Right-click the context menu of the form.
3. Click View.
4. Select Project Currency from the list.

What to do next

Refer to the form fields that are exclusive to the Project Currency view that you have selected.
All the other form tabs and fields remain same both for the default view and the project currency
view. Continue to enter values in the fields as you would for the default view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1141


<!-- page 1142 -->
Track project budget in project currency
Allocate budget to a project and enter amounts for capital expense budget (Capex) and
operating expense (Opex) budget in project currency. The sum of the Capex and Opex budgets
are calculated as total budget in project currency.

Before you begin

Role required: it_portfolio_manager

About this task

Allocate budget in a similar manner as you do with functional currency. For more information, see
Allocate budget to a project.
Enable the project currency view of the Project form to allocate budget in project.

Procedure
1. Click the Project Budget related link of the Project form.
Project Budget form
Field

Description

Currency

Currency in which budget is allocated for a
project.
If you activate multicurrency plugin, then you
have the option to budget in project currency
or functional currency.

Capex Budget in Project Currency

Planned expense amount allocated for
capital expenditure in the selected currency.

Opex Budget in Project Currency

Operating expense amount in the selected
currency.

Total Budget in Project Currency

Sum of Capex and Opex amounts.
The total project funding budget amount rolls
up to the Budget cost in project currency
field.

2. Click OK.
3. Click the Project Budget related list to update or view the record.

What to do next

The project target and budget expense values for both capital and operating expenses for a
single fiscal period is stored in the Project Funding [project_funding] table. When you update the
project funding record, the amounts are converted to project currency.
Closing a project
Closing the project involves more than just changing the project state to closed.

Before you begin

Role required: it_project_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1142


<!-- page 1143 -->
About this task

Post-project activities include viewing baselines and actual values to evaluate how much the
project slipped from its original estimates. They also include following up on related incidents,
problems, or changes that are linked to the project through the instance.
When you close a project, all project tasks and sub-projects associated with the project are
closed automatically. Normally, you should not reopen a project after it is closed. Updating the
project state from Closed to Work In Progress, Pending, or Open is not allowed. If you still need
to reopen a closed project, reopen an existing project task or add a new task to the project. This
action for a task moves the project from Closed to Work in Progress state without affecting the
other closed tasks.
When a project is in the closed state, the Project Management application calculates actual
values like Actual duration. You can cancel the associated future resource plans and complete
the allocated resource plans for a closed project.

Procedure
1. Verify that the work is completed for all tasks in the project.
2. On the Project form, change the State field to one of the closed states:
◦ Closed Complete: The project is finished and all tasks are complete.
◦ Closed Incomplete: The project is finished, but tasks remain unfinished.
◦ Closed Skipped: The project was abandoned.
Alternatively, close every project task first, starting with the lowest-level child tasks. The
closed states roll up to parent tasks, and when all highest-level parent tasks are closed, the
project state changes to closed. However, the default closed states for parent tasks and for the
project is Closed Complete. Therefore, even if you change any or all project tasks to Closed
Incomplete or Closed Skipped, the project state is changed to Closed Complete.
Also, change the Phase value to Closing. The project phase is for reference only and is not
linked to or dependent on the State field.
If your project contains sub-projects, you can close the sub-project without affecting the
parent project. Change the State of the sub-project to any closed state to close the subproject. Closing the sub-project closes or changes the state of all the tasks associated with
the sub-project. Also, changing the state of the sub-project to Work in Progress, moves all the
associated tasks to Work in Progress state.
If there are project tasks associated with the parent project that are not closed, the parent
project remains in the Open, Work in Progress, or Pending state. If the tasks associated
with the parent project are closed, the state of the parent project also changes to Closed
Complete.
3. After the project is complete, create a final baseline to see how closely the project's actual
values came to the estimated values.

Note: Baselines compare only planned start and end date values with actual start and
end date values. Use reports to compare the effort and cost.

Result

For projects created from an incident, problem, or change, updating the project state does not
automatically update the related incident, problem, or change request record. You must update
the related record manually. For example, if the completion of a project also means that a related
Change can be closed, go to the Change record and modify its State field. It is also a good idea
to update the work notes field on the related record to include any relevant information about the
project. If the project was successful and can be used as a template for future projects, make a
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1143


<!-- page 1144 -->
copy of it. If the project was created from a change, incident, or problem record, there are several
other activities to perform in ServiceNow.

What to do next
• Cancel the resource plans associated with the project in any of the following conditions:
◦ There is a corresponding resource plan in the Confirmed, Planning, or Requested state.
◦ There is a resource plan in the Allocated state with the start date later than the project end
date.
• Complete the resource plans associated with the project in the following conditions:
◦ There is a corresponding resource plan in the Allocated state.
◦ The start date of the resource plan is on or before the actual end date of the project or task.
Project Diagnostics
Project Diagnostics enables you to detect corrupt data in a project such as task validity,
dependencies, and relationships using diagnostic scans that execute diagnostic scripts. You can
also fix corrupt data using fix scripts.
Data might become corrupt or invalid for various reasons, such as:
• Incorrect field mapping during project import
• Incorrect scheduling of tasks
• Incorrect dependency and relationship definitions
Project Diagnostics uses diagnostic scans and fix scripts to detect and fix corrupt data in your
projects. It enables you to do the following action:
• Create and add diagnostic features
• Add diagnostic and fix scripts to fix corrupt or invalid project data
• Create Diagnostic scans and map related scripts
• Define fields for users to create specific filter conditions. The diagnostic scripts use the results
of these filter conditions as input for detecting any corrupt or invalid data.
Project Diagnostics page provides the default scans described in the following table.
Project Diagnostics default scans
Diagnostic Scan Name

Description

Tasks with invalid top task

Lists the tasks that have an invalid top task. A task is considered
to have an invalid top task if the value for the top task is set to
Null or is mapped to a different task in the hierarchy.

Tasks with invalid top
portfolio

Lists the tasks that have an invalid top portfolio. A task is
considered to have an invalid top portfolio if it belongs to a
different portfolio or is not associated with any portfolio.

Tasks with invalid top
program

Lists the tasks that have an invalid top program. A task is
considered to have an invalid top program if it belongs to a
different program in the same portfolio or is not associated with
any program.

Invalid relations

Lists the invalid relations in a project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1144


<!-- page 1145 -->
Project Diagnostics default scans (continued)
Diagnostic Scan Name

Description

A relation is considered to be invalid if the predecessor or
successor is not a part of the project (unless it is an external
relation), or if the predecessor or successor record does not exist
in the system.
Validate parent tasks

Lists the tasks that have empty or invalid parents.

Check for tasks with cyclic
dependencies

Checks for any cyclic relations, which are not permitted, in a
project. For example, suppose you have a project in which Task A
is related to Task B. A reverse relation from Task B to Task A would
be considered a cyclic dependency.

Recalculate project

Recalculates task dates in a project.

Warning: Performing this action might change the dates
in a project.
Check duplicate/redundant Lists tasks that have duplicate or redundant relations in the
relationships
selected projects.
Cost plans with no start and Checks and lists cost plans with no start and end fiscal period
end fiscal period
within the selected projects.
Validate project task
constraints in project

Lists all tasks with invalid constraint types. For example, a task
with Start no later than set as a parent or the Constraint date field
is empty for a task with Start no earlier than and Start no later
than constraint.

Validate tasks with invalid
state

Lists all tasks with invalid WIP or Closed state based on actual
dates.

Identify projects with
negative planned cost
for any year where the
budget was not allocated
to the corresponding fiscal
periods

Checks and lists the projects that have negative fiscal year
project budgets.

Identify discrepancies in
project budget

Checks and lists the projects for which project funding does not
match with the sum of task type breakdown cost or fiscal year
project budget.

Identify cost plan
breakdowns with invalid
fiscal periods

Checks and lists the cost plan breakdowns with invalid fiscal
periods.

Identify duplicate task type Checks and lists the duplicate task type breakdowns.
breakdowns for an expense
type and a fiscal period
Associate orphan expense
lines to the system
generated cost plan

Lists the expense lines that are not associated to any cost plan.
When you run the fix script, these orphan expense lines are
associated to a system-generated cost plan and then to the
respective breakdowns of the system-generated cost plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1145


<!-- page 1146 -->
Use Project Diagnostics to detect corrupt project data
Project Diagnostics uses the Application Diagnostics Tool to detect corrupt data in a project,
such as tasks with invalid parents, tasks without top tasks, and invalid or cyclic relations in a
project.

Before you begin

Role required: it_pps_admin

About this task

Project Diagnostics can also detect whether date calculations in a project appear to be incorrect,
the planning console does not open for a project, or a few tasks or relationships do not appear in
the planning console.

Procedure
1. Determine whether you want to run a diagnostic scan on a single project or multiple projects.
Scope

Steps

All Projects

Navigate to All > Project Administration >
Project Diagnostics.
a. Navigate to All > Project > Projects > All.

Single Project

b. Select the project.
c. On the Project form, select the Project Diag­
nostics related link.

2. On the Application Diagnostics Tool page, select a diagnostic feature.
3. Use the Feature Inputs fields to specify filter conditions.
4. From the Diagnostics section, run a single diagnostic scan or multiple scans on the projects
matching the filter criteria.
Task

Run multiple diagnostic scans

Run a specific diagnostic scan

Steps

a. Select the diagnostic scans that you want
to run on the filtered projects.
b. Select Run Diagnostics at the top-right cor­
ner of the page.
a. Select the single diagnostic scan that you
want to run on the filtered projects.
b. Select Run Diagnosis.

5. View the results of the scans.

What to do next

Add your own diagnostic scans and fix scripts.
Create and add diagnostic features
Create and add diagnostic features, which consist of single or multiple diagnostic scans that
execute mapped scripts to detect data corruption or invalid data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1146


<!-- page 1147 -->
Before you begin

Role required: adt_admin

Procedure
1. Navigate to All > Application Diagnostics Tool > Features.
2. Select New.
3. On the form, fill in the fields.
For more information, see Diagnostics Feature form.
4. Define the fields available to users for specifying filter conditions in the Diagnostics Inputs
section.
The fields that you configure in the Diagnostics Inputs section appear in the Feature Inputs
section of the Application Diagnostics Tool page.
5. Select Submit.

What to do next

Create diagnostic scripts and add fix scripts to use with the diagnostic feature. For more
information, see Add diagnostic and fix scripts.
Add diagnostic and fix scripts
Add diagnostic scripts to scan the data in your application for any corruption. You can also attach
fix scripts to rectify the corrupt or invalid data identified by the diagnostic script.

Before you begin

Role required: adt_admin

About this task

The results of the filter conditions that you specify in a diagnostic feature are used as an input
for the diagnostic script while executing. You can also use the result of one script in subsequent
scripts.

Procedure
1. Navigate to All > Application Diagnostics Tool > Scripts.
2. Select New.
3. On the form, fill in the fields.
For more information, see Diagnostic Scripts form.
4. Optional: Include a script for fixing the corrupt or invalid data identified by the diagnostic
script.
a. Select the Has Fix script check box.
b. Select the Edit User Roles icon (
script.

) and choose the roles that can access the diagnostic

c. In the Fix script section, add the code for the fix script.
5. Select Submit.
Related topics
Project Diagnostics

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1147


<!-- page 1148 -->
Create Diagnostic scans and map related scripts
Once you have created diagnostic features and scripts, map them to a diagnostic scan to check
the health of data in your application. Use fix scripts to rectify any corrupt or invalid data that the
diagnostic scan identifies.

Before you begin

In order to create a diagnostic scan, you must have already created diagnostic features and
scripts For more information, see Create and add diagnostic features and Add diagnostic and fix
scripts.
Role required: adt_admin

About this task

You can map multiple scripts with each diagnostic scan and define the order of their execution.

Procedure
1. Navigate to All > Application Diagnostics Tool > Diagnostics.
2. Select New.
3. On the form, fill in the fields.
For more information, see Diagnostics form.
4. Select the Roles icon (
) and move the desired roles to the Selected list.
The users with the selected roles can access the diagnostic script.
5. Search for and select diagnostic scripts to map with the diagnostic scan in the Diagnostics
and Script Mappings section.
6. Select Submit.

What to do next
• Create related link for navigating to the diagnostic features and scans in the application. For
more information, see Create a UI action .
• Run diagnostic scan and view results. For an example of how the diagnostics scan work, see
Use Project Diagnostics to detect corrupt project data.
Related topics
Diagnostics form
Using Work breakdown structure (WBS) - Legacy
The work breakdown structure (WBS) is a hierarchical representation of all the tasks in your
project.

Important:
Work breakdown structure (WBS) is being prepared for future deprecation. It will be hidden
and no longer available for installation but will continue to be supported. For details, see
the Deprecation Process [KB0867184]
article in the Now Support knowledge base. Use
new Project Workspace with enhanced UI to help you efficiently manage your projects.
Use the WBS to get a quick overview of the entire project, including the tasks and subtasks
nested in the project. The Gantt chart gives you a similar overview using graphical elements
like lines and bars to show dependencies and lengths of tasks. The WBS is more data-driven,
presenting a wide variety of task information in expandable rows.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1148


<!-- page 1149 -->
You can view the WBS on the planning console, or as a related list on the Project or Project Task
form. See Open the project planning console or Access the WBS as a related list.
When the WBS is viewed as a related list on the Project or Project task form, several important
columns from the table appear by default.
Important columns
Column
Name

Description

WBS

The number of the task in the WBS hierarchy. The first task in the hierarchy is
assigned the number 1. Subtasks increment the number in the tenth place, such as 1.1
and 1.2. The numbers are read-only.

WBS
Order

A number that represents the task in relation to its parent. The first subtask under
a task has an WBS Order of 1, and the next task 2. If you edit a number, all tasks are
moved accordingly after you refresh the list.

Number The task ID number, which should not be changed.
Other useful information also appears by default, such as the description and percentage
complete. You can personalize the list like any other list by selecting the personalize list icon ( )
and selecting the columns you want to view.
Related topics
Access the WBS as a related list
Access the WBS as a related list
You can view the WBS as a related list on both the Project and Project Task forms.

Before you begin

Role required: it_project_manager

About this task

You can view the full WBS list by navigating to a Project form and selecting the Planning Console
related link. See Planning console tasks for a list of the things you can do with the WBS on the
planning console.
You can also view the WBS as a related list on the Project or Project Task form.

Procedure
1. Navigate to a Project or Project Task form.
2. Right-click the header and select View > WBS.
WBS List appears as a related list.
3. On the WBS, select the arrow icon ( ) to expand a task and view child tasks.
Demo Project WBS

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1149


<!-- page 1150 -->
Related topics
Using Work breakdown structure (WBS) - Legacy
Using Project workbench - Legacy
The project workbench provides a central location for creating and managing projects.

Important:
Project Workbench is being prepared for future deprecation. It will be hidden and no longer
available for installation but will continue to be supported. For details, see the Deprecation
Process [KB0867184]
article in the Now Support knowledge base. Use new Project
Workspace with enhanced UI to help you efficiently manage your projects.
The workbench supports the Project Management and application life cycle management
applications, allowing for a hybrid approach to project management. Project managers can
create projects that combine both waterfall and agile methodologies and add waterfall, agile, and
test phases to these projects.
The project workbench makes it easy to manage projects by presenting project information in
two panes. The top pane displays a timeline with the project phases and milestones. The bottom
pane displays details for the phase selected in the timeline. The project workbench provides
real-time interaction between the timeline, the list view, and the visual task board.
The project workbench also supports the following features:
• Project templates: Project managers can quickly and easily create projects based on
templates, which define the basic structure of a project.
• Manual project calculation: The workbench adds the capability of creating projects that
use manual calculation. Project managers can also create auto calculation projects from the
Project Management application.
• Composite fields: The field type combines information from two fields in a table to form a
single field.
With the project manager role, you can use the project workbench to:
• Manage projects.
• Create and update project phases and milestones.
• Assign a group to an agile phase.
• Create and update project tasks, stories, and test cases.
• Attach test plans to a test phase.
• View and manage project details from a list view or visual task board.
The project workbench displays project information in two distinct areas. The top pane displays
the project visualization, and the bottom pane displays phase details in a list view or visual task
board. There is also a header above the workbench that includes several buttons and controls.
The project workbench scales to fit the available browser height. If necessary, scroll bars are
added to display the workbench details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1150


<!-- page 1151 -->
Project Workbench

Access the project workbench
Access the project workbench from the Project form or from the application navigator.

Before you begin

Role required: it_project_manager

Procedure
Access the project workbench in one of the following ways.
Option

Steps

1. Open a project record in project workspace.
2. Select the Planning tab.
From Planning Console

From a project record

3. Select the Planning Console selection ar­
row on the banner and select Project Work­
bench.

1. Navigate to a project record in Details tab in
project workspace.
2. Select the Project Workbench related link.

Note: If the project workbench opens with no associated sys_id or an incorrect sys_id, an
error message appears. Select a project from the project choice list in project workspace
banner.
Related topics
Using Project workbench - Legacy

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1151


<!-- page 1152 -->
Components of project workbench
The project workbench displays project information in two distinct areas. The top pane displays
the project visualization, and the bottom pane displays phase details in a list view or visual task
board. There is also a header above the workbench that includes several buttons and controls.
The project workbench scales to fit the available browser height. If necessary, scroll bars are
added to display the workbench details.

Header
The header is a gray bar that runs across the top of the project workbench.
The first time a user accesses the project workbench from the Project menu, the header displays
the following components:
After a project is opened, the header displays additional components, depending on the type of
project selected.
• Back (

): takes the user to the Project form to view the project details.

• Select Project: displays the current project name. Click the down arrow to select a new project.
• Add phase icon (

): adds a phase or milestone to the timeline.

• Apply Template: opens a dialog box for setting a start date and adding a template to the
project. This button appears for new or blank projects that have no phases.
• Manage Stories: under the Options icon (

) displays the story backlog for this project.

• List: under the Options icon (
) displays additional details in list view about the currently
selected phase. This button appears if a project has one or more phases.
• VTB: under the Options icon ( ) displays additional details in the Visual Task Board about
the currently selected phase. This button appears if a project has one or more phases.

Timeline
The top pane of the project workbench displays the project timeline. The timeline uses monthly
or quarterly markers to represent time. If the duration of a project is less than 500 days, these
markers represent months and if the duration is greater than 500 days, these markers represent
quarters.
The project timeline displays the following project information:
• Project name: the name assigned to the project. Point to the project name to see a message
about the project date calculation method used for this project.
• Percentage complete: the percentage of the project that has been completed. This percentage
is based on the duration and the percentage complete of the individual phases.
• Project start and end dates: the dates specified in the Planned start date and Planned end
date fields for this project.
• Project phases: colored bars that represent the different phases of the project.
• Milestones: colored and dynamic circles on the timeline that represent important dates in the
project life cycle.
Phases in timeline
A project phase is represented in the timeline by a horizontal bar. The bar is connected to the
timeline by a thin vertical line that indicates the phase start date. The name of the phase appears
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1152


<!-- page 1153 -->
just above the horizontal bar. Project phases are stacked in the timeline by start date, phase, and
the earliest start date appearing at the top. If there are phases than can fit on the timeline, a scroll
bar appears on the right side.
The color of the horizontal bar changes incrementally to reflect the completion percentage of the
phase. The percentage completion is calculated based on the phase type:
• Waterfall: includes project tasks. The completion percentage is based on the number of
project tasks that have been completed.
• Agile: includes stories. The completion percentage is based on the number of story points that
have been completed.
• Test: includes test cases. The completion percentage is based on the number of test cases
that have been completed.
The available phases depend on how Project Management is installed. When Project
Management is installed as a standalone app, the project manager can only create and edit
the Waterfall phase type. When Project Management is installed as part of the Project Portfolio
Management (PPS), the project manager can create and edit all phase types (Waterfall, Agile,
and Test).
When you point to a phase, the cursor changes from an arrow to a hand and a pop-up window
displays the phase name and the start and end dates. Clicking a phase in the timeline displays
the corresponding task information in the bottom pane of the project workbench.
Milestones in timeline
Milestones indicate important dates in a project and are represented along the timeline by
colored circles. Three colors are available for milestones: green, yellow, and red. The project
manager determines how the colors are used.
Pointing to a milestone changes the cursor from an arrow to a hand and displays a pop-up
window with the short description and planned start date.
Select a milestone to update the milestone information. You can also drag a milestone along the
timeline to change the date. Milestones can be dragged to any point on the timeline within the
boundaries of the project start and end dates.

Detail view
The bottom pane of the project workbench displays detailed information for the phase currently
selected in the timeline. The information displayed varies by the phase type selected:
• Waterfall: displays the project tasks associated with the phase.
• Agile: displays the stories assigned to the phase.
• Test: displays the test cases for the testing phase.
Information in the bottom pane can be displayed in list view or in a visual task board. The List
and VTB buttons in the Project Workbench header control how this information is displayed.
Project calculation
When creating a project, the project manager can select the type of calculation to use: manual or
automatic (default).
The project workbench displays help text that explains whether the current project is calculated
automatically or manually. The help text appears when the project workbench page loads and
also when the user points to the project name in the upper left corner.
For manual calculation:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1153


<!-- page 1154 -->
• Dates on tasks do not automatically reflect any changes from dependent tasks.
• New projects created from the project workbench and projects created from demands are set
to manual calculation by default. Projects created as manual can be changed to automatic.
• The project timeline reflects the earliest planned start date and latest planned end date based
on the project tasks.
• The constraint type cannot be changed.
• Only Start on specific date constraint type is allowed for project tasks.
For automatic calculation:
• A task automatically reflects any changes from its dependent and child tasks.
• New projects created from the Project Management application are set to automatic
calculation by default.

Note:
• A project created as automatic with one or more tasks cannot be converted to manual.
• Percentage completion and states for phases are updated automatically for both manual
and auto calculation.
Related topics
Using Project workbench - Legacy
Managing Project workbench
The project workbench allows project managers to manage all aspects of a project.
Open a project in the project workbench
The project manager can open an existing project in the project workbench.

Before you begin

Role required: it_project_manager

Procedure
1. In the project workspace banner above the project workbench header, select the down arrow
in the project selector box.
2. Select a project from the choice list.
The selected project opens in the project workbench under Planning tab in project workspace.
Related topics
Create a project task in the project workbench
Create a project task in the project workbench
Create a project task for a waterfall phase.

Before you begin

Role required: it_project_manager

About this task

While creating a project task in the project workbench, the time constraint type is defaulted
based on the project type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1154


<!-- page 1155 -->
• For a manual project, the default constraint is Start On and cannot be changed.
• For an automatic project, the default constraint is Start ASAP and can be changed to Start On if
required.
• When the constraint is Start ASAP, the Planned start date is disabled.
• When you create an agile phase and associate a sprint, the start date of the task is set from the
sprint start date and the constraint becomes Start On automatically.

Procedure
1. Select a waterfall phase in the project workbench timeline.
2. Select New in the detail view.
3. Fill out the Project Task form.
4. Select Submit.
Related topics
Managing Project workbench
Manage project stories in the project workbench
If Project Portfolio Management and Agile Development 2.0 are activated, the project manager
can manage the stories in a project from the project workbench.

Before you begin

Activate Project Portfolio Management and Agile Development 2.0 plugins.
Role required: it_project_manager

About this task

Manage stories in your project using the Manage Stories option in the Project Workbench.

Procedure
1. In the project workbench header, select the options icon (
Stories.
The Backlog section of the Agile Board opens in a new tab.

) and then select Manage

2. Select a story to open the Story form in the pop-up window, or select New to create a new
story.
3. Fill in the fields on the Story form.
4. Select Update or Submit.
Related topics
Managing Project workbench
Create a story in the project workbench
Create a story for an agile phase.

Before you begin

Role required: it_project_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1155


<!-- page 1156 -->
Procedure
1. Select an agile phase in the project workbench timeline.
2. Select New in the detail view.
3. Fill out the Story form.
4. Select Submit.
Related topics
Managing Project workbench
Create a test case in the project workbench
Specifying a test plan is optional when creating a test phase. However, before you add test cases
to a test phase, you must specify a test plan.

Before you begin

Role required: it_project_manager

Procedure
1. Select a test phase in the project workbench timeline.
2. Select New in the detail view.
3. Fill out the Test Case form.
4. Select Submit.
Related topics
Managing Project workbench
Using Planning console - Legacy
The planning console is a centralized interface for the Project Management application.

Important:
Planning console is being prepared for future deprecation. It will be hidden and no longer
available for installation but will continue to be supported. For details, see the Deprecation
Process [KB0867184]
article in the Now Support knowledge base. Use new Project
Workspace with enhanced UI to help you efficiently manage your projects.
The planning console gives project managers a comprehensive view of all aspects of a project,
including a hierarchical list of sub-projects, if any, project tasks that appear in a work breakdown
structure (WBS) list, and the project Gantt chart. The console also integrates with Live Feed so
your users can collaborate on projects.

Sections in the planning console
The planning console is divided into the following sections:
• A list of the project tasks if you open the planning console for a project.
• The Gantt chart.
• Banner icons and lists for performing tasks on the console.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1156


<!-- page 1157 -->
Example planning console

For more information on the Gantt chart and the task relationships and dependencies that you
can build, see Gantt chart and Parent-child rollup task calculations.

Note: The resources in the Assigned to column of the planning console can be
constrained to be derived only from the allocated resource plans associated to the project
or any of its tasks.

Business rules
By default, the business rules are not triggered during an operation in the planning console. You
can enable the business rules using Enable firing of Business Rules property.

Note: To enable this property, you must clear the Enable Client Side Planning check box.
You can also enable business rules when defining the columns for planning console using the
Fire BR on Save field.

Client side planning console
Build your project structure quickly on the client side without having to save details in the
server for each interaction in planning console. Enabling Client side planning console prevents
any time lags that occur after you perform any actions in planning console, and improves the
scheduling performance.

Automatic and manual projects
In an automatic project, any change to the dates, duration, or relationships of a project task
automatically updates all the tasks in the entire project, including the project record, as
necessary. The automatic project icon (

) appears adjacent to the project name.

In a manual project, changes to the dates, duration, or relationships of a project task do
not automatically update all tasks. So parent task dates do not reflect any changes made to
dependents or child tasks. The only change that is made automatically is when a task date or
duration change updates dates and duration of the project record. In a manual project, any
update to actual start date does not update the planned end date of the project or project task.
However, enabling the project property Enable alter of planned date with Actual for Manual
Project updates the planned end date from actual start date and planned duration. The manual
project icon (
) appears adjacent to the project name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1157


<!-- page 1158 -->
You can specify if a project is automatic or manual in the Calculation field on the Project form.
This field becomes read-only when the project starts.

Tutorial
A tutorial walk through is available in the console. It shows you all the features of the console and
how to use them. Access the walk through within the help icon (

).

Open the project planning console
Access the planning console to perform the planning for the project.

Before you begin

Role required: it_project_manager

Procedure
Open the planning console using any of the following methods.
Option

Steps

1. Open a project record in project workspace.
From project workspace

2. Select the Planning tab.

1. Navigate to a project record in Details tab in
project workspace.

From a project record

2. Select the Planning Console related link.

1. Select the Project Workbench selection ar­
row on the workbench banner.

From Project Workbench

2. Select Planning Console from the list.

Planning console tasks
You can perform several tasks on the planning console that you can perform on lists and forms,
such as creating project tasks and copying projects. You can also perform several tasks unique
to the console.
General console settings tasks
Task

Steps

Display a project in the planning
console

Select the project from the list in the project workspace
banner.
Project list

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1158


<!-- page 1159 -->
WBS hierarchy tasks
Task

Steps

Create a project task
Select the add task below icon (
row to create a new task.

) on the

You can also select an existing task to
determine the insertion point for the new task,
and then select the add task above icon (
or the add task below icon (
Move a task up or down in the hierarchy

).

Select an existing task, and then select the
move up (

Indent or unindent a task in the hierarchy

)

) or move down (

) icons.

Select an existing task, and then select the
unindent (

) or indent (

) icons.

Edit a task record

Right-click a task and select Edit. The Project
Task form appears in the overlay. You can also
edit a field directly in one of the columns in the
planning console. You can also edit project
tasks that represent phases in the project
workbench.

Edit the State field

Double-click the value in the State column to
select a new state. The value of the State field
also changes automatically when % complete
is changed for a task.

View and modify task status

View the status of the project task based on
the difference of the planned end date of
the task from the current date. The status of
the task updates automatically from Green
to Yellow to Red as the planned end date
approaches.
You can manually update the task status
by double-clicking the Status column and
selecting a different task status. For more
information, see Status field description in the
Create a project task from a project topic.

Add an agile phase or a test phase

Right-click a project and select Add Agile
Phase or Add Test Phase. The agile phase
icon or test phase icons appear next to the
task in the Name column. See phase icons.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1159


<!-- page 1160 -->
WBS hierarchy tasks (continued)
Task

Steps

Note:
• The Add Agile Phase option is
available only for Agile and Hybrid
projects. You must also have the Agile
Development 2.0 plugin installed.
• You can add multiple agile phases and
multiple test phases to a project.
• You can add only one test phase for a
test plan in a project. You must have
the Test Management plugin installed
to view the Add Test Phase option.
• An agile phase cannot overlap another
agile phase for an assignment group in
a project.
• While creating a story, if a project
has only one phase, then the story is
tagged to the phase.
Open a test plan or story

Right-click a task (a task that represents a
phase in the workbench) and then select
Manage Test Plan. Select View Stories
to view the stories list. If you have the
scrum_product_owner role, select View
Stories to navigate to the Backlog tab of the
Agile Board.

Note: The View Stories option is
available only for Agile and Hybrid
projects. You must also have the Agile
Development 2.0 plugin installed.
Cancel a resource plan for a Closed project

Right-click the project and select Cancel
Resource Plans. All past and future allocations
for the selected resource plan are canceled.
The option is available only for a project in any
of the Closed states.

Complete a resource plan for a Closed project

Right-click the project and select Complete
Resource Plans. All the requested and
resource allocations for the resource plan post
the completion date are deleted.
The option to complete resource plans is
available only for a project in any of the Closed
states.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1160


<!-- page 1161 -->
WBS hierarchy tasks (continued)
Task

Steps

Add an external dependency between tasks of Right-click a task and select Add External
different projects
Dependency. Select the project and task to
which the dependency is added.
View the project name of an external
dependency

Point to the link icon ( ) beside the external
dependency task to display a tooltip which
shows the name of the project to which the
external dependency is added.

Change the time constraint for a task

Double-click a task under the Constraint type
column and select an option: Start ASAP,
Start on specific date, Start no earlier than, or
Start no later than.
• You can change the Constraint type for
Automatic projects only.
• When you change the time constraint for
a task from Start on specific date to Start
ASAP or vice versa, the planned start
date and planned end date of the task are
recalculated accordingly.
• The Constraint date column displays the
start date for all the constraint types other
than Start ASAP tasks. This column is not
available by default, you must add this
column to the Planning Console from the
Configuration menu.
• The option is not available for a parent
task. If a task has child tasks, the option is
available only for the child tasks.
• You cannot create a parent task with Start
no later than or Start on specific date
time constraint. When a new child task is
added to a task with these time constraints,
the time constraint for the parent task is
converted to Start ASAP.
• You cannot change constraint type for
projects with Calculation type set as
Manual.

Allow task dates outside schedule

Right-click a project task and select Allow
outside schedule. The selected task is
allowed to start and end on a non-schedule
day (outside the regular project schedule)
such as on a weekend. The off schedule task
icon ( ) appears next to the task in the Short
description column.
For example, if you use the project schedule
Monday to Friday, 8:00 to 17:00 and a project
task of duration 2 days should start on

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1161


<!-- page 1162 -->
WBS hierarchy tasks (continued)
Task

Steps

Saturday, then an off-schedule task is allowed
to be scheduled on Saturday and end on
Sunday. Similarly, if a task of duration 3 days
starts on Friday, then an off-schedule will end
on Sunday as opposed to ending on Tuesday.
• The option is not available for a parent task.
When a task is made off-schedule, its parent
also becomes off-schedule. The project also
operates as out of schedule if any of the
children is set to out of schedule.
• Once a task is allowed outside the schedule,
the Follow schedule option is available
for the task. Right-click the task and select
Follow schedule to follow the schedule for
the task.

Note:
• There is no difference between an offschedule and an on-schedule task if
there is no schedule defined at the
project level.
• 1 day is 8 hours for a task in a regular
schedule and 24 hours for a task
outside the schedule.
Convert a task to milestone

Right-click a task and select Convert to
milestone.
• You can convert a task to a milestone only
until it is not in Work in Progress state.
Once work in progress, the option appears
as greyed out for the task.
• The option is not available for a parent
task. If a task has child tasks, the option is
available only for the child tasks.

Show or hide external dependencies

Select the more options icon (
), and then
select the Hide External Dependencies
switch.
When this option is enabled, the external
dependencies are not displayed when you
add an external dependency between two
projects. However, the Dependency column in
the WBS section of the successor project still
shows the value of external dependency.

Show external dependency notifications

Select the notification bell icon
to display
the notifications raised in the successor

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1162


<!-- page 1163 -->
WBS hierarchy tasks (continued)
Task

Steps

project. The notifications are triggered as a
result of changes made in the predecessor
project.

• For a soft dependency, select Accept or
Reject to accept or reject the changes in the
notification.
• For a hard dependency, view the displayed
notification to review the changes in the
notification.
Save changes to the server

Select the save icon
to commit changes
made in the planning console. The option
is available only when Client Side Planning
Console is enabled.

Expand or contract column width

Select the side of the column and drag it right
or left.

Show or hide columns in the planning console Select the show or hide columns in gantt
icon ( ), and then select or clear the check
boxes for the columns available. Admin can
customize which columns appear in this list.
The selection is saved in the user preference.
The next time you open the planning console,
the same columns you selected will appear.
Select WBS levels to show

Select the show or hide columns in gantt icon
(
), and then select the level from the WBS
Depth list.

Expand or collapse sublevels for any level

Select the arrow to expand or collapse any
task that has one or more subtasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1163


<!-- page 1164 -->
Gantt chart tasks
Task

How to perform the task

View a summary of a task

Point to a task.
Tooltip for summary of the task

Change the planned start or end dates of a
task

Select the task, and then drag the left or right
edge of the task bar.

Move a task to a new date

Select the task, and then drag the whole task
bar to a new location.

Create a dependency between tasks

Find the successor task in the relationship
and double-click the value in the Predecessor
column and enter a value that specifies the
relationship. See Predecessor dependencies
in the planning console for examples.
Alternatively, you can create a relationship
between two tasks by connecting the ends of
the corresponding task bars in the timeline
view.

Select a baseline

Select the more options icon (
), and then
select a baseline from the baselines list.

Create a baseline

Select the more options icon (
), and then
select Create new baseline. See Create
baseline of a project for more information.

Compare schedule baselines

Select the more options icon (
), and then
select a schedule baseline from the baselines
list. Select the show or hide columns in gantt
icon ( ), and then select the following
columns to compare schedule baselines:
• Baseline start date
• Baseline end date
• Baseline variance

Display the critical path

Select the critical path icon (
). For more
information on the critical path, see Gantt
chart.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1164


<!-- page 1165 -->
Gantt chart tasks (continued)
Task

How to perform the task

Show date change

Select the more options icon (
), and then
select the Show Date Change switch. When
this option is enabled, the start and end dates
of the task are displayed when you drag the
task bar.
Start date and end dates on task
bar

Show duration change

Select the more options icon (
), and then
select the Show Duration Change switch.
When this option is enabled, the duration of
the task is displayed when you drag either end
of the task bar.
Task duration

Show weekends on the calendar

Select the more options icon (
), and then
select the Show Weekends switch. The
weekends appear as light-blue vertical bars in
the Gantt chart.
Weekend on task bar

Zoom the calendar in or out

On the top of the calendar, select one of the
time periods, such as the month or day. Then
select a Zoom Level from the calendar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1165


<!-- page 1166 -->
Gantt chart tasks (continued)
Task

How to perform the task

Calendar zoom

When the zoom level in calendar is selected
as Auto Fit, the Gantt view fits in one page to
display the entire timeline for the project in
one go without using the scrollbar.
Open the tutorial

Select the more options icon (
select Walkthrough.

), and then

Open list of keyboard shortcuts

Select the more options icon (
select Keyboard Shortcuts.

), and then

Other features or applications tasks
Task

How to perform the task

Open the project workbench

Select the Planning Console selection arrow
on the banner and select Project Workbench.
For more information, see Using Project
workbench - Legacy.

Open live feed

Select the more options icon (
select Show live feed.

), and then

Export project data in MPP, CSV, or XML format Select the more options icon (
), and then
select Export Planning Console. For more
information, see Export project data.
Print the gantt timeline

Select the more options icon (
select Print.

), and then

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1166


<!-- page 1167 -->
Other features or applications tasks (continued)
Task

How to perform the task

Note:
• Printing on a smaller paper size might
result in the gantt chart image being
cut off. You may either zoom out using
the gantt chart calendar, or increase
paper size to print the gantt timeline for
projects and tasks.
• If the colored bars in gantt chart area
are not visible in Print preview, then
select the option for background
graphics in the Print dialog.

Related topics
Using Planning console - Legacy
Client side planning console
During calculation of project schedule in the planning console, it is possible to build your project
structure quickly on the client side (browser) without having to save details in the server for each
interaction. It prevents any time lags that occur after you perform any actions in the planning
console, and improves the scheduling performance.
For example, when a project manager changes dates on a project task in the planning console,
re-calculating the dates for the dependent tasks and the project can cause time lag if each
interaction is saved to the server. Similarly, when a new task or a dependency is created, there
can be a time lag before the new dates are displayed if they are saved on the server side each
time.
When client side planning is enabled, the changes such as re-calculation of dates are not posted
to the server immediately. All the changes in planning console are kept on client side until the
user explicitly saves the changes to be committed to the server.

Exceptions
There are a few actions for which you must save your changes immediately to the server side
before proceeding such as:
• Create baseline
• Copy project
• Copy partial project
• Add child tasks
• Add external dependency
• Edit Assigned to
• Edit Additional Assignees
In addition, if you enable custom business rules on any of the columns, those columns are also
part of exceptions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1167


<!-- page 1168 -->
Related topics
Using Planning console - Legacy
Enable client side planning
Enable client side planning in planning console to enable project scheduling at the client side.

Before you begin

Role required: pps_admin

About this task

Build your project structure quickly on the client side without having to save details in the server
for each interaction in planning console.

Procedure
1. Navigate to All > Project Administration > Settings > Planning Console.
2. In the Planning Console list, expand Context: default and select Project[pm_project].
3. Select the Enable Client Side Planning check box to enable project scheduling at client side.

Note: To enable this check box, the project property Enable firing of Business Rules on
save from Planning Console must be set to false.
Related topics
Using Planning console - Legacy
Gantt chart
A Gantt chart on the planning console is a visual representation of a project timeline that shows
start and end dates of tasks, and the dependencies between tasks.
Use Gantt charts to add and delete tasks, change task dates and dependencies, and assess the
progress of the overall project.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1168


<!-- page 1169 -->
Gantt charts
Gantt chart

The critical path
The critical path is highlighted in red on the Gantt chart to differentiate critical path tasks from
standard tasks in blue. Not all tasks are part of the critical path, only those tasks that directly
affect the finish date. Use the critical path to determine which tasks are driving the finish date. If
schedule adjustments are necessary, consider making resource or other changes to those tasks
on the critical path.
The tasks that are not part of the critical path and can therefore be delayed are commonly called
slack or float tasks. The Gantt chart shows the slack/float tasks by default, but calculations that
deal with these tasks, such as how long they can be delayed without impacting the project, is not
available.

Milestones
A milestone is a project task with a duration of 0. Use milestones to indicate important dates in a
project. If necessary, create dependencies between tasks and milestones so that a task does not
start until a milestone has been reached.
Milestone

Color coding
The colors of the task bars on the Gantt chart are based on the percent complete and state of the
task. The default color coding available for project and tasks is shown:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1169


<!-- page 1170 -->
Color coding of project tasks
Color

Explanation

Light blue bar

Task is pending or open.

Light blue bar

Dark blue bar (full or partial)
Dark blue bar

The percentage complete is between 1% and 100%. The
dark blue section indicates the percentage complete. The
task can be in the Work in Progress state or Completed
state.

Note: The colors of the task bars on the Gantt chart can be configured from portfolio or
program workbench.

SDLC phases
Icons appear next to tasks to indicate what phase they belong to.
Phase icons
Icon

Phase

Agile phase.
Testing phase.

Note: Tasks in the waterfall phase do not display an icon.
Gantt chart options
Use the Gantt chart to quickly change task attributes, such as start and end time, rather than
opening every Task form and modifying field values one by one.
From a Gantt chart, you can modify the following task attributes:
Modify tasks
Attribute

Description

Planned
start date for
project tasks

Move the task along the timeline to change the start time and to impose a
Time constraint of Start on a specific date. You can also drag a task to change
its start date if the task Time constraint is set to Start on a specific date (not
Start ASAP) and the task has not yet started. The start date of a task cannot
be modified if the task already started (has an actual start date), the task has
already ended (has an actual end date), or the task time constraint is set to
Start ASAP.
You can also modify the dates in the Planned start date column on the
console.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1170


<!-- page 1171 -->
Modify tasks (continued)
Attribute

Description

Planned start
date for the
project

Modify the dates in the Planned start date column on the console.

Planned end
date

You can add tasks that start earlier than the project's planned start date. By
default, the planned start date shifts earlier or later when you add tasks to align
with the earliest task start date. However, you can enable the project property
Rollup project start date from tasks to retain the planned start date of the
project even if you add tasks with a planned start date that is earlier or later.
Drag the right edge of the task bar to extend the planned end date. You can
extend the planned of date only for tasks that are not parent tasks and that
have not yet ended.

Dependencies To edit or delete a dependency, double-click an existing dependency
connector line between two tasks and update the settings in the Planned Task
Relationship popup. The relationship Type for planned tasks is Predecessor
of::Successor of and should not be changed.
Lag time and
lead time

Lag time is an interval of time between the end of a predecessor task and the
start of a successor task. The lag time delays the predecessor by an amount
that you specify.
Lead time is an interval of time that the predecessor task is allowed to start
before it normally would. It is essentially a negative lag time. The value in the
Lag field specifies both lag and lead time.
To edit the Lag value, double-click a connector and update the settings in the
Planned Task Relationship form. Enter a negative value to specify a lead time.

Resources

To change a user resource for an existing task or add a resource to a new task,
double-click the task bar and edit the Assigned to field in the Project Task
form.

Note: The resources in Assigned to column can be constrained to
be derived only from the allocated resource plans associated with the
project or any of its task.
The Project Management application provides several properties that control how tasks are
calculated and behave. See Project property for more information.
Create a parent-child relationship on the planning console
The WBS section of the planning console allows you to create parent-child relationships for new
tasks or move around existing tasks in a new parent-child relationship. The position of a task in
the hierarchy and the level of indentation determine the parent-child relationship it has with the
tasks above or below it.

Before you begin

Role required: it_project_manager

About this task

In this example, the System Readiness Assessment task is a child of the Planning task because it
is one level below the Planning task and is indented.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1171


<!-- page 1172 -->
Parent-child relation for tasks

Procedure
1. Select a task in the WBS section of the planning console to highlight it.
2. Select a combination of any of the following icons to create the task and move it or move the
other tasks to create the required hierarchy:
Creating parent-child relationships
Icon

Action

Add task above icon (

)

Add task below icon (

)

Indent icon (

Create a task above the highlighted task.
Create a task below the highlighted task.
Makes the highlighted task a child of the task above it.

)

Related topics
Using Planning console - Legacy
Predecessor dependencies in the planning console
In the WBS section of the planning console, you can create dependencies between tasks by
specifying a series of values.
The Predecessor column on the planning console can specify dependencies between tasks.
The values that you put in this column must be in the following format:
{WBS_number}{dependency_type}+{lag_time}
Where
• WBS_number is the number of the predecessor task in the relationship.
• dependency_type is one of the types of dependencies that the application supports.
• lag_time is the amount of time, in days, to delay the start of the dependent task. This value
can be positive or negative integers.
The values are entered without the curly braces {}. See the examples in the table.

Note: You can also edit tasks from the Gantt chart by clicking the relationship line. See
Gantt chart options and Modify a project task dependency for details.
Project task dependency values
Dependency type

Example

Additional information

Finish to start

1.1fs+0

The task you are editing starts when task 1.1 is finished.

Start to start

1.1ss+0

Task 1.1 cannot finish until the task you are editing finishes.

Start to finish

1.1sf+0

Task 1.1 cannot start until the task you are editing finishes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1172


<!-- page 1173 -->
Project task dependency values (continued)
Dependency type

Example

Additional information

Finish to finish

1.1ff+0

The task you are editing cannot finish until task 1.1 finishes.

Related topics
Using Planning console - Legacy
Custom columns in the planning console
In addition to the regular columns that are provided in the base system, as the PPS admin, you
can configure which columns appear in the planning console.
You can define the columns that are available in the project planning console, program
workbench, planning and tracking views in portfolio workbench, and the release management
Gantt chart. From this list of defined columns, you can select the columns that you want to view
in these planning console UIs at any time.
These tables are used for custom column configuration:
• Planning Console [pm_console]: Stores the definition for planning consoles such as Project
and Portfolio.
• Planning Console Display Column [pm_console_display_column]: Stores the planning
console display columns such as Short Description, WBS, and Priority.
A console stored in [pm_console] has multiple display columns that are stored in
[pm_console_display_column].

Note: You cannot edit list of column if the column refers to a table other than the
[sys_user] table.
• Planning Console Table [pm_console_table]: Contains a list of tables which provide data to a
console.
A console sources the data from multiple tables. For example, Project console
[pm_project] pulls data from pm_project and pm_project_task table. This list of
tables is maintained in [pm_console_table].
• Planning Console Column [pm_console_columnn]: Maintains the columns that should be
pulled from each table and the mapping of the column in pm_console_display_column.
Related topics
Using Planning console - Legacy
Add a custom column to the planning console
Define the columns that you want to make available in the project planning console, portfolio
workbench, program workbench, and the release management Gantt chart.

Before you begin

Role required: it_pps_admin

Procedure
1. Navigate to All > Project Administration > Settings > Planning Console.
2. Add a custom display column for planning console.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1173


<!-- page 1174 -->
a. In the Planning Console list, select a console to which you want to add the custom column.
For example, select Project[pm_project] to add a column to the project planning
console.
b. To create a display column for the selected console, select New in the Planning Console
Display Column related list.
c. On the Planning Console Display Column form, fill in the fields.
Planning Console Display Column form
Field

Description

Label

Label for the column to be displayed in the planning console.

Type

Data type of the column.

JSON
Column

The JSON column name used internally by the Gantt chart when data is
sent.

Note: Leave blank. This field is auto-populated when you add a
column for the display column in step 3.
Order

Position at which the column appears in the planning console.

Include in
Tooltip

Check box for the column to be shown in tooltip in timeline in the planning
console.

Width

Default width of the column in planning console.

Fire BR on
Save

Option if the business rules should be triggered when the column is
modified in the planning console.

Note: The field is not visible on the form by default. Configure the
form to add this field.
Trigger
Option if the recalculation of date and duration should be triggered when
recalculation the column is modified in the planning console.

Note: The field is not visible on the form by default. Configure the
form to add this field.

d. Select Submit.
The column is added in the Planning Console Display Column
[pm_console_display_column] table.
3. Map the planning console display column created in step 2 to a column in a table defined in
Planning Console Table [pm_console_table].
a. In the Planning Console Display Column related list, open the display column record.
b. To create a record of actual column in the Planning Console Column
[pm_console_column] table, select New in Planning Console Columns related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1174


<!-- page 1175 -->
c. On the Planning Console Column form, fill in the fields.
Planning Console Column form
Field

Description

Display Display column created in the Planning Console Display Column
Column [pm_console_display_column] table.
Console Console table to be mapped to the display column.
Table
Table

Actual table from where the data is pulled in the display column. The field is autopopulated when you select a Console Table.
For example, select a table from [pm_project] or [pm_project_task]
for a display column added in the Project planning console Project
[pm_project].

Column Actual column in the Table from where data comes for the display column.
Editable Check box to make the column editable in the planning console.
d. Select Submit.

Result
The display column appears in the column filter list (

) in the planning console.

Related topics
Using Planning console - Legacy
Create a dependency from the planning console
Create a dependency between two tasks on the planning console.

Before you begin

Role required: it_project_manager

About this task

You can create any type of dependency. See Parent-child rollup task calculations for an
explanation of each type.
You can also create dependencies by using the Predecessor column on the Planning Console.
See Predecessor dependencies in the planning console for more information.

Procedure
1. Select a task on the Gantt chart portion of the planning console.
A white circle appears on either end of the task, one at the start of the task and the other at the
end of the task.
2. To create a dependency, select one of the white circles and drag it to the start or end of
another task.
3. Double-click the dependency line to see the dependency on the Planned Task Relationship
form.
4. Confirm that your dependency is correct.
You can make changes to the dependency as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1175


<!-- page 1176 -->
Related topics
Modify a project task dependency
Add an external dependency on planning console
Add an external dependency between two projects on the planning console. Use the work
breakdown structure (WBS) column of the planning console to create a dependency between
the different projects tasks.

Before you begin

Role required: it_project_manager

Procedure
1. Right-click a task in the WBS column of the planning console.
2. Select Add External Dependency.
3. On the Add dependency form, fill in the following fields:
◦ Project: The predecessor project that the dependency is added from.
◦ Task: The task in the predecessor project that the dependency is added from.
◦ Dependency Type: The type of external dependency: Hard or Soft.
4. Select OK.

Result
• A shadow task corresponding to the predecessor task appears in the WBS section of the
planning console of the successor project. A similar shadow task corresponding to the
successor task appears in the WBS section of the planning console of the predecessor
project.
A shadow task is shown as a grayed out task in WBS column.
• A shadow task corresponding to the predecessor task appears in the Project Tasks related
list on the successor project form. A similar shadow task for the successor task appears in the
Project Tasks related list on the predecessor project form.
• The Dependency column in WBS column of the planning console of the successor project
shows the external dependency value between the projects and tasks. The external
dependency value has the following format:
{project_number}\{WBS_number}{dependency_type}+{lag_time}
Where
◦ project_number is the number of the predecessor project.
◦ WBS_number is the number of the predecessor task in the relationship.
◦ dependency_type is the finish to start dependency type that the application supports.
◦ lag_time is the amount of time, in days, to delay the start of the dependent task. This
value can be positive or negative integers.

Note: The external dependencies are displayed only when the Hide External

Dependencies switch on the planning console is turned off. However, the Dependency
column in the WBS section of the successor project still shows the value of the external
dependency.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1176


<!-- page 1177 -->
Example:

In the example below, an external dependency is created between two projects P1 and P2. P1T1
is a shadow task of predecessor project P1, and PRJ0010127\1fs+0 is the external dependency
value in the Dependency column of the planning console of the successor project P2.

What to do next

Check for any external dependency related notifications that may impact the project or its tasks.
Modify a project task dependency
Modify a dependency when editing the tasks that are linked in the dependency, the dependency
type, or the lag time.

Before you begin

Role required: it_project_manager

About this task

Project task dependencies are saved on the Planned Task Relationship
[planned_task_rel_planned_task] table. You can access dependencies from the planning
console.

Procedure
1. Double-click a dependency on the Gantt chart of the planning console.
2. On the form, fill in the details.
For more information, see Planned Task Relationship form.
Planned Task Relationship form

3. Select Update.
You can view dependencies in the Project Task related list on a Project or Project Task form
and from the Project Tasks list on the workbench. These columns show the dependencies:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1177


<!-- page 1178 -->
◦ The Dependency column shows the successor task in the relationship.
◦ The Dependencies column shows the dependency value. See Predecessor dependencies
in the planning console for a description of what you see in this column.
Related topics
Create a dependency from the planning console
Remove a dependency
Remove a dependency
Use the planning console to remove a dependency that is no longer necessary.

Before you begin

Role required: it_project_manager

About this task

Removing the dependency also deletes the dependency record in the Planned Task
Relationship table.

Procedure
1. Open the project in the planning console.
2. Do either of the following.
Option

Description

◦ Right-click the relationship and then select
Delete Link.
On the Gantt chart

◦ Double-click the relationship and then se­
lect Delete on the Planned Task Relation­
ship form that appears.
◦ Delete the value in the Predecessor col­
umn.

On the WBS list

◦ Select the value in the Predecessor col­
umn and then select Delete on the Planned
Task Relationship form that appears.

Related topics
Modify a project task dependency
Create a dependency from the planning console
Train the similarity solution for Project Management to find similar projects
Train the Similar Projects solution definition included within the Predictive Intelligence for PPM
capability to find related projects when defining a project.

Before you begin

Ensure that the Predictive Intelligence for Contextual Search plugin
(com.snc.contextual_search_ml), PPM Standard plugin (com.snc.financial_planning_pmo), and
Predictive Intelligence for PPM plugin (com.snc.ppm_ml) are activated. For more information
about Predictive Intelligence, see Predictive Intelligence .
Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1178


<!-- page 1179 -->
Procedure
1. Navigate to All > Predictive Intelligence > Similarity > Solution Definitions.
2. In the Similarity Definitions list, search for and select the Similar Projects solution definition
(ml_sn_global_global_similar_projects).
3. On the Similarity Definition form, verify the default field values for projects.
For more information about the Similarity Definition form fields, see Create and train a similarity
solution .
4. Click Update & Retrain.
5. Open the Similarity Definition form for the Similar Projects solution definition
(ml_sn_global_global_similar_projects).
6. In the ML Solutions related list, view the training solution progress in the Progress column.

Note: Alternatively, you can click the link for the solution in the Active column. On the
ML Solution form, click the Show training progress related link to check the training
solution progress.

Result

When the solution is complete, the similar projects appear in the Similar projects section on the
Project form.

What to do next
• Review similarity examples: On the Similarity Definition form, in the ML Solutions related list,
when Progress is 100%, in the Active column, click the link for the solution. On the ML Solution
form, click the Similarity Examples related link to view the Similarity Examples list.
• Update the similarity score threshold: On the ML Solution form, on the Solution Statistics tab,
enter the required value in the Similarity Score Threshold field. Right-click the ML Solution
form and click Save.
• Test the prediction output for the records: On the ML Solution form, on the Test solution tab,
enter your text in the Short description field and the maximum number of expected results in
the Top N field, and then click Run test. The results above the similarity score threshold value
are displayed.
Related topics
Predictive Intelligence
Predictive Intelligence for Project Management
Starting a project
Collaborate with your project teams using PPM Collaboration application
Collaborate with your project team on a common enterprise messaging platform such as
Slack or Microsoft Teams using the PPM Collaboration application. Facilitate active and timely
communication about the project among the project's team members, be involved in critical
discussions on your project, and receive real-time updates on the project's status.
By using a project-specific channel on Slack, or a team on Microsoft Teams, decisions taken or
updates made for the project would effectively reach all the team members. The team would
have easy access to its past communication through the chat history and shared project
documents all at one place. By doing so, the project manager and the team members can save
the time spent on emails and other offline communication.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1179


<!-- page 1180 -->
PPM Collaboration advantages
A project collaboration channel or team provides the following advantages for the project
managers and the team members:
PPM Collaboration advantages for project managers and team members
Project Manager

Team member

• Start your day with a detailed status of the
project that you're managing

• Communicate with the team members to
resolve an issue you're facing

• Using the status details, choose to follow up
with relevant team members through your
preferred mode of communication

• Receive status updates from the team
members

• Open the project directly from the
collaboration channel or team to drill down
into further details

• Contribute to the discussions regarding the
project

• Real-time updates on changes to milestones, risks, issues, decisions, actions, and change
requests (RIDAC), and project financials.
• Automatic addition and removal of members of the collaboration channel or team based on
who the project tasks are assigned to.

Note: PPM Collaboration is not supported for teamspaces.
Related topics
Install PPM Collaboration
Install PPM Collaboration
Install the PPM Collaboration (sn_ppm_collab) application from ServiceNow Store.

Before you begin
• Complete the following setup checklist for a smooth installation and configuration.

Note: If you are enabling collaboration with Slack, the Slack spoke v2 plugin must be
activated. If you are enabling collaboration with Microsoft Teams, the Microsoft Teams
Graph and Microsoft Azure AD spokes must be activated. Collaboration cannot be
enabled for both Slack and Microsoft Teams for the same project.
Setup checklist
Setup tasks

Description

Verify that the PPM Standard
(com.snc.financial_planning_pmo) plugin is
activated.

Navigate to All > Subscription Management
> Subscriptions in your instance. The
list displays the subscriptions that your
organization has purchased.

Verify that the Slack spoke v2
(sn_slack_ah_v2) plugin is activated, for
collaboration with Slack.

Navigate to All > Subscription Management
> Subscriptions in your instance. The
list displays the subscriptions that your
organization has purchased.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1180


<!-- page 1181 -->
Setup tasks

Description

Verify that the Microsoft Teams Graph spoke
(sn_msteams_ahv2) plugin is activated, for
collaboration with Microsoft Teams.

Navigate to All > Subscription Management
> Subscriptions in your instance. The
list displays the subscriptions that your
organization has purchased.

Verify that the Microsoft Azure AD spoke
(com.sn.azure_ad.spoke) plugin is activated,
for collaboration with Microsoft Teams.

Navigate to All > Subscription Management
> Subscriptions in your instance. The
list displays the subscriptions that your
organization has purchased.

Note: Activation of the PPM Standard, Microsoft Teams, and Slack spoke plugins on
production instances may require separate licenses. Contact ServiceNow Customer
Support for details.
• Ensure that the PPM Collaboration application and all of its associated store applications have
valid ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow
product or application .
Role required: admin

Procedure
1. Navigate to the ServiceNow Store

.

2. In the ServiceNow Store, search for PPM Collaboration.
3. Select the application tile.
You can view detailed information about the application. Consider reading the Other
Requirements and Dependencies sections, as applicable.
4. Select Get and enter your Now Support login credentials.
5. Select Request Install.
6. In the Instance Name field, enter your details and select Validate Instance.
7. In the Reason for the Instance field, enter your details and select Request.
You receive an email with detailed installation instructions.
8. Log in to the instance on which you want to install the PPM Collaboration application.
9. Select System Applications > All Available Applications > All.
10. Locate the application using the filter criteria and search bar, select it, and select Install.

Result

The following components are installed with installation of the application:
• Roles
• Tables
For more information, see Components installed with PPM Collaboration.

What to do next

Setting up PPM collaboration for Slack.
Components installed with PPM Collaboration
Roles and tables are installed with activation of the PPM Collaboration application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1181


<!-- page 1182 -->
Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role

Description

Collaboration user

Users with this role have read-only access to
the Entity Channel table.

[SN_collab_common.collab_user]

This role is automatically assigned to project
managers and task assignees.
Collaboration owner
[SN_collab_common.collab_owner]

Users with this role have complete create,
read, update, and delete access to the Entity
Channel table.
This role is automatically assigned to project
managers.

Tables installed
Table

Description

Entity Channel

Stores the list of IDs and names of the Slack channels
that are created for the projects.

[sn_collab_common_entity_channel]
Related topics
Install PPM Collaboration

Collaborate with your project teams using PPM Collaboration application
Setting up PPM collaboration for Microsoft Teams
Integrate your ServiceNow instance with your organization's Microsoft Teams to enable
collaboration of your projects in Microsoft Teams.
PPM Collaboration uses the Microsoft Teams Graph and Microsoft Azure AD spoke actions such
as creating a team for your project, adding or removing your project team members, archiving
the team when the project is closed, posting a message when a record is updated, and so on. To
enable these spoke actions, you must integrate your ServiceNow instance with Microsoft Teams
Graph and Microsoft Azure AD to authenticate ServiceNow requests. For more information, see
the Set up Microsoft Teams Graph spoke and Set up Microsoft Azure AD spoke
topics.

Important: When you activate the Microsoft Teams Graph and Microsoft Azure AD
spokes, a Connection & Credential alias
for Microsoft Teams Graph and Microsoft Azure
AD is created by default with the IDs sn_msteams_ahv2.Microsoft_Teams_Spoke
and sn_azure_ad_spoke.AzureAD respectively. The connection that is active (the
Active field is set to true) in Connections related list of this alias uses this default ID to
connect your ServiceNow instance to Microsoft Teams Graph and Microsoft Azure AD.
Therefore, you can have multiple connections associated with this alias but ensure that
only one connection is active at any given time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1182


<!-- page 1183 -->
Setting up PPM collaboration for Slack
Integrate your ServiceNow instance with your organization's Slack to enable collaboration of your
projects in Slack.
PPM Collaboration uses the Slack spoke actions such as creating a channel for your project,
adding or removing your project team members, archiving the channel when the project is
closed, posting a message when a record is updated, and so on. To enable these spoke actions,
you must integrate your ServiceNow instance with Slack to authenticate ServiceNow requests.
For more information, see Set up Slack spoke .

Important: When you activate Slack spoke, a Connection & Credential alias

for Slack
is created by default with the ID sn_slack_ah_v2.Slack. The connection that is
active (the Active field is set to true) in Connections related list of this alias uses this
default ID to connect your ServiceNow instance to Slack. Therefore, you can have multiple
connections associated with this alias but ensure that only one connection is active at any
given time.
Related topics
Slack spoke v2
Setting up PPM collaboration for Microsoft Teams
Flows designed to synchronize projects with your collaboration tool
Understand the flows designed for the PPM Collaboration application so that you can edit the
configurations as required.
PPM Collaboration flows
Slack Flow [Name]

Microsoft Teams Flow
[Name]

Action Slack

Action Teams

[action_slack]

[action_teams]

Description

Posts a message to the project channel or team
whenever an Action is created with priority 1Critical or 2-High or if the priority of an existing
Action is updated to 1-Critical or 2-High.

Handles adding the users in the Assigned to
or Additional Assignee list fields of the project
tasks to the project channel or team.
[add_assigned_users_to_channel]
[add_assigned_users_to_ms_group]
Add Assigned Users
To Channel

Add Assigned Users
To MS Group

Archive Project
Channel

Archive MS Group

Change Request
Slack

Change Request
Teams

[archive_group]
[archive_project_channel]

[cr_updated_slack]
Daily Project Status
Slack

Handles archival of the project channel or team
based on the count of number of days from
which the project is moved to a closed state. This
flow is set to run daily at 08:00 AM.

Posts a message to the project channel or team
whenever a Change request with priority 1Critical or 2-High is created or if the priority of an
[change_request_teams]
existing Change request record is updated to 1Critical or 2-High.
Daily Project Status
Teams

Triggers a message about the overall status
of the project to the project channel or team
everyday at 08:00 AM.
[daily_project_status] [daily_project_status_teams]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1183


<!-- page 1184 -->
PPM Collaboration flows (continued)
Slack Flow [Name]

Microsoft Teams Flow
[Name]

Decision Slack

Decision Teams

[decision_updated_slack]
[decision_teams]
Issue Slack

Issue Teams

[issue_updated_slack] [issue_teams]
Milestone/
KeyMilestone Slack

Milestone/
KeyMilestone Teams

Project Manager
Changes Slack

Project Manager
Changes MS Teams

Description

Posts a message to the project channel or team
whenever a Decision with priority 1-Critical or
2-High is created or if the priority of an existing
Decision is updated to 1-Critical or 2-High.
Posts a message to the project channel or team
whenever an Issue with priority 1-Critical or 2High is created or if the priority of an existing
Issue is updated to 1-Critical or 2-High.

Posts a message to the project channel or team
whenever a Milestone or a Key Milestone task is
moved to the closed state.
[milestonekeymilestone]
[milestonekeymilestone_teams]
Handles adding the new project manager as a
member to the project channel or team. This flow
also checks if the user who was the old project
[project_manager_changes]
[project_manager_changes_ms_teams]
manager is assigned to any project tasks and if
not assigned to any task, removes the user from
the channel.
Project Status Slack

Project Status Teams Posts a message to the project channel or team
in the following three scenarios:
[project_status_slack] [project_status_teams]
• State field is updated to Closed Complete,
Closed Incomplete, or Close Skipped states
• Status fields is updated
• Project manager changes for this project
Risk Flow Slack
[risk_created_slack]

Risk Flow Teams

Posts a message to the project channel or
team whenever a Risk with probability High or
[risk_created_teams] Absolute is created or if the probability of an
existing risk is updated to High or Absolute.

All the flows, except the subflows, are inactive by default. Enable the collaboration between
PPM and Slack or Microsoft Teams for a specific action by activating these flows. You can view
all these flows by navigating to Flow Designer > Designer and filtering the flows by the PPM
collaboration application. For more information, see Activate a flow .
If you want to update the configuration for any of these flows, you can edit them. For example,
if you want to update the time of daily status update from 8:00 AM to 9:00 AM, you can
edit the Daily Project Status Slack [daily_project_status] or Daily Project Status Teams
[daily_project_status_teams] flow. For more information, see Edit a flow .
Related topics
Flow Designer
Flows

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1184


<!-- page 1185 -->
Create a Microsoft team for your project
Create a Microsoft team for your project to start collaborating with your team and receive timely
updates of the project.

Before you begin

Ensure that the project for which you want to create a team is active and not in a closed state.
Role required: it_project_manager

Important: You must be the designated project manager for this project in addition to
having the it_project_manager role.

Procedure
1. Navigate to All > Project > Projects > All.
2. Open the project for which you want to create a team.
Ensure that you are the project manager for the project you open.
3. Enable collaboration for the project by selecting the Enable MS Teams Collaboration related
link.

Result
• A Microsoft team is created for the project. You can see the team's name in the success
message on your project form. You can also view a link in the project form to access your MS
team group, selecting on the link will navigate you to the MS team group for your project.
• You and the administrator are added as owners in the team.
• Any assignees and additional assignees of active project tasks for this project are added as
members to this team.
Assignees and additional assignees of project tasks that you create later will be automatically
added as members to this team if you enable the Add Assigned Users To MS Group flow.
However, new or existing stakeholders added to the project are not added as members to this
channel.

Note: Users assigned to the tasks (assignee and additional assignee) from Planning
Console will not be added automatically to the Microsoft team.
• Once a team is successfully created for a project, the Enable MS Teams Collaboration
related link is removed from that project. Collaboration cannot be enabled for both Slack
and Microsoft Teams for the same project. If you have selected on the Enable MS Teams
Collaboration related link for a project, and you select the Enable Slack Collaboration related
link before the MS team is created, a message will be displayed specifying that MS Teams
creation is in progress.
If you are unable to create a team, retry the procedure after sometime. If the issue persists,
contact your system administrator.
Related topics
Collaborate with your project teams using PPM Collaboration application
Create a Slack channel for your project
Create a Slack channel for your project to start collaborating with your team and receive timely
updates of the project.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1185


<!-- page 1186 -->
Before you begin

Ensure that the project for which you want to create a Slack channel is active and not in a closed
state.
Role required: it_project_manager

Important: You must be the designated project manager for this project in addition to
having the it_project_manager role.

Procedure
1. Navigate to All > Project > Projects > All.
2. Open the project for which you want to create a Slack channel.
Ensure that you are the project manager for the project you open.
3. Enable collaboration for the project by selecting the Enable Slack Collaboration related link.

Result
• A channel in Slack is created for this project. You can see the channel's name in the success
message on your project form. You can also view a link in the project form to access your Slack
channel, selecting on the link will navigate you to the Slack channel for your project.
• You and any existing assignees and additional assignees of active project tasks for this project
are added as members to this channel.
Assignees and additional assignees of project tasks that you create later will be automatically
added as members to this channel if you enable the Add Assigned Users To Channel flow.
However, new or existing stakeholders added to the project are not added as members to this
channel.

Note: Users assigned to the tasks (assignee and additional assignee) from Planning
Console will not be added automatically to the Slack channel.
• Once a channel is successfully created for a project, the Enable Slack Collaboration related
link is removed from that project. Collaboration cannot be enabled for both Slack and
Microsoft Teams for the same project. If you have selected on the Enable Slack Collaboration
related link for a project, and you select the Enable MS Teams Collaboration related link
before the Slack channel is created, a message will be displayed specifying that Slack channel
creation is in progress.
If you are unable to create a channel, retry the procedure after sometime. If the issue persists,
contact your system administrator.
Related topics
Collaborate with your project teams using PPM Collaboration application
Notifications for project updates in your collaboration tool
Receive updates related to your project on your Slack channel or Microsoft team. Analyze the
delayed and overdue tasks, follow closure of milestones, and monitor changes to risk, issue,
decision, action, and change request (RIDAC) items of your project.
Using the automatic project status updates on the project collaboration channel or team,
project managers can take informed decisions about project planning, resource management,
finance allocation. The team members can understand updates made to the project and actively
collaborate on any delayed or overdue tasks.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1186


<!-- page 1187 -->
Note: Project managers can reach out to their system administrators to configure the
application settings for these notifications according to their preferences.

Daily notification on project status
A notification with the consolidated project status is sent to the project's channel daily at 8:00
AM which consists of the following information.
Project overview
• A direct URL of the project. Selecting this URL opens the project in your
ServiceNow instance.
• Name of the project.
• Planned start and end dates of the project.
• State of the project, for example, Work in Progress.
• Status of the project, for example, Green.
• Percentage of project completion.
Project tasks due today
List of project tasks that have planned end date marked as today and are in the
Work in Progress state. The list displays only five project tasks that are sorted
alphabetically by their short description.
Overdue tasks
List of project tasks which have a planned start date before today but are not in
either the Work in Progress or Closed states. The list displays only five project tasks
that are sorted in an ascending order of the planned start dates so that you get high
visibility into the tasks that are overdue for a longer period.
Delayed tasks
List of project tasks which have a planned start date before today and are in the
Work in Progress state. The list displays only five project tasks that are sorted in
ascending order of the planned end dates so that you get high visibility into the
tasks that have been delayed for a longer period.
Project tasks due within seven days
List of five of the following project tasks that have a planned end date within seven
days from today. All these tasks are displayed in ascending order of their due dates
so that you get high visibility into the tasks that are due soon.

Note: Tasks that in Closed state are not displayed in the list.
• High priority risks, issues, and action items
• Milestone or key milestone tasks
Other updates
Notifications are sent to the project channel for the following scenarios.
• Cost estimate at completion (EAC) exceeds the planned cost of the project
• Planned end date is later than the approved end date

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1187


