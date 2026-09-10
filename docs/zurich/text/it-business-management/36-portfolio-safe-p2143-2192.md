# Zurich Strategic Portfolio Management — Portfolio SAFe / SAFe — Unified Backlog / Performance Analytics Content Pack for Essential SAFe

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2143–2192 of 2289

Sections: Portfolio SAFe (p2143); SAFe — Unified Backlog (p2150); Performance Analytics Content Pack for Essential SAFe (p2152)

---

<!-- page 2143 -->
• If all the test steps are passed, the status of the test is Passed.
• If at least one step of the test is not run, the status of the test is Not finished.
• If at least one step of the test fails, the status of the test is Failed. This rule takes precedence
over the previous rule.
• If at least one step of the test is blocked, the status of the test is Blocked. This rule takes
precedence over the previous two rules.
Troubleshoot test failures
View the history of test runs. Troubleshoot and rectify the test failures in SAFe.

Before you begin

Role required: safe_scrum_user or safe_admin

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the list at the top left corner, select the level as Team.
3. Click the Sprint Tracking tab and select the List view.
4. Click a test within a story.
5. Click the Test Result related list.
Test results related to that version of the test are displayed.
6. Click a test result to view its details in a form.
Test Result form
Field

Description

Number

Automatically generated number for the test result.

Result

Run status of the test: Passed,Failed, or Blocked.

Execution environment

Environment on which the test is run.

Run by

Name of the tester who runs the test plan.

Test

Test that is run.

Version

Version of the test that is run.

Updated

Date and time when the test result was recorded.

Test run

Name of the test run.

Short description

Brief description of the test result.

The execution status of each step of the test is also indicated at the bottom of the form.

Portfolio SAFe
With Portfolio SAFe, you can align your organizational goals and strategies with your portfolios,
and apply lean and agile principles to seamlessly manage and deliver your portfolio work.
Portfolio SAFe works at three levels for portfolio managers, product managers, and team
members. At the Portfolio level, portfolio managers can capture and prioritize epics in a
centralized backlog, and monitor the progress of epics in a visual task board. An epic is the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2143


<!-- page 2144 -->
largest unit of work that has one common objective such as a customer request or business
requirement.
At the ART level, product managers can capture, prioritize, and monitor features that are
decomposed from epics. At the Team level, team members can implement stories that are
decomposed from features. To learn more about the levels, see the SAFe Board section below.
To start using the features of Portfolio SAFe, install the Agile - Scaled Agile Framework - Portfolio
SAFe plugin (com.snc.sdlc.portfolio_safe).

SAFe Board
The table below provides an overview of how you can access the key levels of Portfolio SAFe on
SAFe Board.

Level

Description

Portfolio

As a portfolio manager, you can plan and monitor activities within a portfolio by
accessing the Portfolio level on the Scaled Agile Framework (SAFe) > SAFe
Board. In addition, you can:
• manage the portfolio backlog in a centralized location.
• track all the epics of the portfolio and view their transition from one state (lane)
to another, in a visual task board.

Agile
As a product manager, you can plan and monitor activities across teams within an
Release
ART by accessing the ART level on the Scaled Agile Framework (SAFe) > SAFe
Train (ART) Board. In addition, you can:
• manage the ART backlog in a centralized location.
• define a program increment and identify the features to be completed within
that program increment.
• perform big room planning.
• track all the features of the ART and view their transition from one state (lane) to
another, in a visual task board.
Team

As a team member, you can plan and monitor activities within the team by
accessing the Team level on the Scaled Agile Framework (SAFe) > SAFe Board.
In addition you can:
• manage the team backlog in a centralized location.
• streamline sprint planning and completion activities.
• track all stories and view their transition from one state (lane) to another, in a
visual task board.

Components installed with Portfolio SAFe
Several types of components are installed with activation of the Agile - Scaled Agile Framework Portfolio SAFe plugin (com.snc.sdlc.portfolio_safe), including tables and user roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2144


<!-- page 2145 -->
Roles installed
Role

SAFe admin
[safe_admin]

Description

Contains roles

• Edits, creates, and deletes
SAFe ART, epics, features,
stories, and program
increments.

• safe_art_user
• safe_scrum_master
• safe_product_owner

• Has read-only access to
SAFe teams.
SAFe portfolio user

Maintains the portfolio
safe_art_user
backlog and can edit, create,
[sn_portfolio_safe.safe_portfolio_user] and delete SAFe epics,
features, and stories.
SAFe scrum product owner
[safe_product_owner]

• Maintains the team
backlog and can edit,
create, and delete SAFe
stories.

safe_story_creator

• Has read-only access to
SAFe ART, teams, epics,
and features.
• Has read-only access to
SAFe program increments.
SAFe ART user
[safe_art_user]

• Maintains the ART backlog
and can edit, create,
and delete SAFe epics,
features, stories, and
program increments.

safe_story_creator

• Edits SAFe teams.
• Has read-only access to
SAFe ART.
SAFe scrum master
[safe_scrum_master]

• Edits, and deletes SAFe
stories.

safe_story_creator

• Edits SAFe teams.
• Has read-only access to
SAFe ART, epics, features,
and program increments.
SAFe scrum user
[safe_scrum_user]

Can view all elements of
SAFe, but cannot create,
edit, or manage records of
any type.

None

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2145


<!-- page 2146 -->
Role

SAFe scrum story creator
[safe_story_creator]

Description

• Edits, creates, and deletes
SAFe stories.

Contains roles

safe_story_editor

• Has read-only access to
SAFe ART, teams, epics,
features, and program
increments.
SAFe scrum story editor
[safe_story_editor]

• Arranges stories within the
team backlog using the
drag and drop feature.

• safe_scrum_user
• rm_scrum_task_admin

• Edits SAFe stories.
• Has read-only access to
SAFe ART, teams, epics,
features, and program
increments.

Tables installed
Table

Description

SAFe epic

Information about epics.

[sn_safe_epic]
SAFe feature

Information about features.

[sn_safe_feature]
Agile Release Train

Information about ART.

[sn_safe_program]
Program Increment

Information about program increments.

[sn_safe_program_increment]
SAFe ART team

Relationships between groups and ART.

[sn_safe_program_m2m_group]
SAFe ART Member

Information about members within an ART.

[sn_safe_program_member]
SAFe ART Sprint

Sprint schedules of teams within the ART.

[sn_safe_program_sprint]
SAFe ART VTB Board

Records displayed on the ART level, Board tab.

[sn_safe_program_vtb_board]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2146


<!-- page 2147 -->
Table

Description

SAFe Scrum Task

Information about SAFe scrum tasks.

[sn_safe_scrum_task]
SAFe Sprint

Information about sprints.

[sn_safe_sprint]
SAFe Story

Information about stories.

[sn_safe_story]
SAFe PI Objectives

Stores the SAFe PI objectives.

[sn_safe_pi_objective]
SAFe team predictability
measure
[sn_safe_pi_m2m_group]
Portfolios

Stores the business value achieved per team from PI
objectives which is used for team-level predictability measure
data.
Information about portfolios.

[pm_portfolio]
Portfolio SAFe VTB board

Records displayed on the portfolio level, Board tab.

[sn_portfolio_safe_vtb_board]
SAFe Team VTB Board

Records displayed on the Team level, Board tab.

[sn_safe_team_vtb_board]

Define a portfolio
From SAFe, define a portfolio which is a group of ARTs working towards a single solution.

Before you begin

Role required: sn_portfolio_safe.safe_portfolio_user

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > Portfolios.
2. Click New.
3. In the form, fill in the fields:
Portfolio form
Field

Description

Name

Unique name for the portfolio.

Portfolio manager

Manager to whom the portfolio is assigned.

Description

More detailed description of the portfolio.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2147


<!-- page 2148 -->
What to do next
• Define an Agile Release Train
• Define an epic in SAFe

SAFe Board—Portfolio level
As a portfolio manager, you can plan and monitor activities within your portfolio by accessing the
Portfolio level on the SAFe Board.
The Portfolio level includes the following tabs:
• Board
• Backlog

Board
The Board tab enables you to track all the epics of your portfolio in a single view. Board is built on
visual task boards, which transform the navigation of lists and forms into an interactive graphical
experience. The visual task board interface provides a graphic-rich environment for managing
and collaborating.
In addition, you can move an epic from one lane to another, which in turn updates the state of
the epic. To learn more about the actions that can be performed in the board, see Visual Task
Boards .
SAFe board for a portfolio

Backlog
The Backlog tab enables you to manage your portfolio backlog, which comprises epics.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2148


<!-- page 2149 -->
Manage portfolio backlog

Track your epics
Using the Board tab, track all epics of your portfolio and view their transition from one state (lane)
to another.

Before you begin

Role required: sn_portfolio_safe.safe_portfolio_user

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the choice list at the top left corner, select the level as Portfolio.
3. Select the Board view.
4. Move an epic to the required state by dragging and dropping the epic card.
5. Optional: Add an epic to a specific state:
a. Click Add Card.
b. On the form, fill in the fields and submit it.
For more information on epic fields, see Define an epic in SAFe.
Manage your portfolio backlog
Manage, evaluate, prioritize, and sequence epics in your portfolio backlog.

Before you begin

Role required: sn_portfolio_safe.safe_portfolio_user

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the choice list at the top left corner, select the level as Portfolio.
3. Click the Backlog tab.
4. To add an epic at the bottom of the backlog.
a. Click Create Epic.
b. Specify the required details in the form and click Submit.
5. To add an epic while simultaneously deciding its order of implementation in the backlog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2149


<!-- page 2150 -->
a. Select an epic in the backlog.
b. Click Create Epic.
c. Specify the required details in the form and click Submit.
The epic is created beneath the epic that was selected in the backlog.
6. To search for epics by their short descriptions, type a word in the search box and press Enter.
7. To arrange epics within the backlog, use either of the following options.
Action

Description

Using the drag feature

Point to an epic and drag it to the required po­
sition.
a. Press the Tab key.
b. After the desired epic is highlighted, press
the Tab key.

Using the keyboard

c. After the
Enter key.

icon is highlighted, press the

d. After the
icon appears, use the up and
down arrow keys.
e. To fix the position of the epic, press the En­
ter key.
If the backlog contains more than 50 epics, then a pagination control appears at the bottom of
the list enabling you to navigate to the first, last, previous, or next page in the list.
8. To view the backlog as a standard platform list, click View Standard List.
9. To perform any action on a set of epics.
◦ Select the required epics.
◦ Click

and select any of the following options:

Option

Description

Move to top

Epics are placed at the top of the backlog sec­
tion.

Move to bottom

Epics are placed at the bottom of the backlog
section.

SAFe — Unified Backlog
SAFe — Unified Backlog allows you to maintain a centralized backlog containing records of
different task types, such as defects, problems, incident tasks, and stories. It facilitates in
prioritizing and sequencing different task type records in one location, saving you steps. It also
removes the overhead of converting records to stories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2150


<!-- page 2151 -->
Important:
Starting with the Xanadu release, the plugins Portfolio SAFe, Essential SAFe, Performance
Analytics Content Pack for Essential SAFe, Work Progress Status for SAFe, Agile - Scaled
Agile Framework - Unified Backlog, and Read only roles for SAFe are being prepared for
future deprecation. These plugins will be hidden and can no longer be activated on new
instances but will continue to be supported. Enterprise Agile Planning in Strategic Planning
provides the latest experience for this functionality.
For more information on the deprecation process and its impact, see the Application/Plugin
Deprecation Process [KB0867184]
article in the Now Support Knowledge Base.
The flow described below represents the common practice of creating and managing records
using SAFe — Unified Backlog along with Essential SAFe.
Setting up a triage board
You can set up a triage board by defining filter criteria, and view records of a specific
task type on the triage board. For example, you can create one triage board for
defects and another for incidents. Records are dynamically updated in all triage
boards.
Triaging and assigning records
You can move records from a triage board to the Backlog tab. In the Backlog tab,
you can estimate points and assign the record to a user using the Points, and
Assignment fields in the Story Information tab of the record. You can open the
triage board of any specific task type, view the total numbers of records in the triage
boards of all task types, or edit the filter definition of a specific triage board.
Working with the triaged records in the Board view
As you work with stories, work with the triaged records (represented by stories)
in the Sprint Tracking tab, Board view. When you move a triaged record from one
lane to another, the state of its wrapper story changes, but the state of the original
triaged record remains the same. To change the state of the original triaged record,
you would need to open the record in a form and update the state.

Set up a triage board in SAFe
Set up your own triage board by defining filter criteria, and view records that are important to
your team, such as problems, incident tasks, defects, or change requests. For example, you can
create one triage board for defects and another for incidents.

Before you begin

You must be added to the SAFe team that would be responsible for handling work from this triage
board.
Role required: safe_scrum_master

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. Select the Backlog tab.
3. Select Triage Board.
4. On the form, fill in the fields:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2151


<!-- page 2152 -->
SAFe Triage Definition form
Field

Description

Name

Suitable name for the triage board.

Table

Table from which you want to filter records.

Filter

Filter criteria to be applied on the table for
refinement of records.

Note: When setting up a triage board, do not to remove these default conditions:
◦ Active is true: This condition ensures that the tasks on your Triage Board are relevant.
◦ Agile story is empty: This condition ensures that the task is not present in some other
backlog.
5. Click Submit.
A triage definition is created.

What to do next
1. Select the triage definition.
2. To add a record to the triage definition, click New.
3. To move a record from the triage board to the Backlog tab, click Add to Backlog.

Performance Analytics Content Pack for Essential SAFe
Improve your SAFe processes and practices using the Platform Analytics Content Pack for
Essential SAFe that contains preconfigured dashboards with data visualizations.
Overview of the Performance Analytics dashboards for Essential SAFe.

Important:
Starting with the Xanadu release, the plugins Portfolio SAFe, Essential SAFe, Performance
Analytics Content Pack for Essential SAFe, Work Progress Status for SAFe, Agile - Scaled
Agile Framework - Unified Backlog, and Read only roles for SAFe are being prepared for
future deprecation. These plugins will be hidden and can no longer be activated on new
instances but will continue to be supported. Enterprise Agile Planning in Strategic Planning
provides the latest experience for this functionality.
For more information on the deprecation process and its impact, see the Application/Plugin
Deprecation Process [KB0867184]
article in the Now Support Knowledge Base.

Enabling the Performance Analytics Solution
Use the Performance Analytics widgets on the dashboard to visualize data over time, analyze
your business processes, and identify areas of improvement. With solutions, you can get value
from Performance Analytics for your application with minimal setup.

Note: Solutions include some dashboards that are inactive by default. You can activate
these dashboards to make them visible to end users according to your business needs.
For unlimited access to all features of this Platform Analytics Solution, purchase a
Performance Analytics subscription. For more information, see Activating your Performance
Analytics subscription .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2152


<!-- page 2153 -->
To use this Platform Analytics Solution, you must activate your subscription to Performance
Analytics for Business Management. For more information about entitlements to Performance
Analytics, see Activating your Performance Analytics subscription .
This base system Platform Analytics Solution is available from the ServiceNow Store. To enable
this solution, as an admin, navigate to System Applications > Search ServiceNow Store. When
the landing page for the ServiceNow Store opens, search for Performance Analytics Content
Pack for Essential SAFe. When you find the solution, follow the instructions in the ServiceNow
Store. The ServiceNow Store has its own documentation.

Business stakeholder role support
The business stakeholder role (sn_safe_read) has read-only access to all Essential SAFe
dashboards. For more information, see Business stakeholder role for Essential SAFe and
Portfolio SAFe.
Related topics
Activate your Performance Analytics subscription

Enable daily data collection for Essential SAFe dashboards
Enable scheduled data collection to begin collecting scores on new data automatically for
Essential SAFe dashboards. Data collection jobs automatically collect scores for automated
indicators and breakdowns.

Before you begin

Role required: pa_admin or admin

About this task

Note: Historical data collection is not supported for the underlying indicators of the [SAFe]
Daily Data Collection job.

Procedure
1. Navigate to All > Performance Analytics > Data Collector > Jobs.
2. Find and open the [SAFe] Daily Data Collection job.
3. Start the [SAFe] Daily Data Collection job.
a. Scroll down to the Job parameters section.
b. Set the Run as field to pa_admin, pa_data_collector or admin roles.
c. Verify that the time zone in the Run As tz field is appropriate for your organization.
This timezone is used for the following:
▪ Database queries created for this job
▪ Indicator conditions such as [[Created][on][Today]]
d. Enable the scheduled run of the job by selecting the Active checkbox.
4. Click Update.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2153


<!-- page 2154 -->
Using Solution Library for Essential SAFe dashboards
Upgrade to the latest layout of Essential SAFe dashboards using Solution Library.
Existing users who upgraded to the latest version 1.1 of Performance Analytics Content Pack for
Essential SAFe can install the latest layout of the dashboards from Solution Library.
For example, if you are upgrading from version 1.0.1 or earlier of the application, install the
following dashboards from Solution Library to access the latest layout:
• SAFe Feature Dashboard
• SAFe Sprint Dashboard
• SAFe PI Dashboard
• SAFe Epic Dashboard
• SAFe Team Dashboard

Note: For users on the Zurich release, the Install and Upgrade buttons are not visible
on the Solution Library content form. For information on resolving this issue, see Allow PA
Solution Library for Store apps .

SAFe Feature Dashboard
The SAFe Feature Dashboard provides a visualization of the changes in scope and the progress
of the stories in the feature over a given period.
Feature Summary tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2154


<!-- page 2155 -->
Cycle Time tab

End user and roles
End user goal with required role
End user and goal

Required role

SAFe ART user: View the amount of work
SAFe_scrum_user
that has been completed in a feature. Gauge
whether the feature can be completed on time.

Indicators
SAFe: Sum of story points of all stories in the feature
Generates the completed line in the Feature Burnup report.
SAFe: Sum of story points of completed stories in feature
Generates the scope line in the Feature Burnup report.

Widgets
Stories
Indicates the total number of stories in the feature.
Scope
Indicates the scope of the feature which is in story points. This widget lets you see
at a glance how much work must be completed in a feature.
Stories Missing Estimates
Indicates the number of stories in the feature that are missing estimates.
Blocked Work
Indicates the amount of work (in story points) in the feature that is blocked.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2155


<!-- page 2156 -->
Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Essential SAFe, then install this dashboard from Solution Library to upgrade its layout and access
the following visualizations:
• Feature Burnup
• Story Cycle Time
For more information, see Using Solution Library for Essential SAFe dashboards.
Work item progress
Title

Type

Description

Stories By
State

Bar chart

At a single glance, understand the overall progress of a feature
seeing all of its stories grouped by state.

Feature
Burnup

Line chart

Indicates the scope changes, if any, and trends of those scope
changes. You can estimate when the feature is likely to be
completed.
The Feature Burnup report comprises the following series that can
be hidden or displayed based on your preference:
• Scope: Indicates the size of the feature, as the sum of story
points defined in this feature.
• Scope Forecast: Predicts the possibility of scope change for
the future dates, which is based on historical data.
• Completed: Indicates the amount of work (in story points) in the
feature that is complete.
• Completed Forecast: Predicts the burnup for the future dates.
It indicates whether you can complete the feature on time. This
prediction is based on historical data.

Note: The point at which the Completed Forecast series
intersects with or crosses the Scope Forecast series is a
predictor for when the feature might be completed. If the
Completed Forecast series and the Scope Forecast series
do not appear to ever intersect, it is a warning that scope is
being added faster than work is being completed.
Cycle Time
Title

Type

Description

Story Cycle Time

Bubble chart

Identify the time taken for
each story in the feature to
move from an in-progress
state to completion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2156


<!-- page 2157 -->
Cycle Time (continued)
Title

Type

Description

Each bubble on the graph
represents a story. The height
of the bubble from the xaxis shows how long that
story took to move from an inprogress state to completion.
The size of the story bubbles
are relative to each other
based on their story points.
Hovering your mouse cursor
over a bubble displays the
following details about that
story:
• Story points
• Date on which the story is
moved to completion
• Total cycle time (in days) of
the story
• Number of days that the
story was in the Work in
progress state
• Number of days that the
story was in the Ready for
testing state
• Number of days that the
story was in the Testing
state
From the Story State section
towards the right of the report,
you can filter the report to view
the cycle time of the stories for
the selected states. The chart
displays the cycle time for
each story as the cumulative
sum of all duration of the
selected states.
If there are too many stories
at any area of the chart and
the bubbles appear crowded
on the report, you can zoom
in that particular area of the
report for a clearer view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2157


<!-- page 2158 -->
Cycle Time (continued)
Title

Type

Description

You can customize the Burnup report. For more information, see Customizing Essential SAFe
dashboard reports.

SAFe Epic Dashboard
The SAFe Epic Dashboard provides a visualization of how the features of an epic are progressing
over a given period of time.
Epic Summary tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2158


<!-- page 2159 -->
Cycle Time tab

The SAFe epic dashboard displays such as total number of features that are complete, and
number of stories that are missing estimates. It also indicates the pace at which the ART
members are completing the features in the epic.

End user and roles
End user goal with required role
End user and goal

Required role

SAFe ART user: View the progress of every
feature in the epic.

safe_scrum_user

Indicators
SAFe: Sum of story points of all stories in epics
Generates the scope series in the Epic Burnup report.
SAFe: Sum of story points of completed stories in epics
Generates the complete series in the Epic Burnup report. This series indicates the
amount of work that has been completed in the epic.
SAFe: Count of all stories in current epic
Generates the area series the Epic Cumulative Flow Diagram report, which indicates
the number of stories of the current epic by state.

Breakdowns
• SAFe: Epic
• SAFe: State

Widgets
Features
Indicates the total number of features in the epic.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2159


<!-- page 2160 -->
Features Released
Indicates the number of features in the epic that have been completed.
Stories Missing Estimates
Indicates the number of stories in the epic that are missing estimates.

Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Essential SAFe, then install this dashboard from Solution Library to upgrade its layout and access
the following visualizations:
• Epic Burnup
• Epic Cumulative Flow Diagram
• Story Cycle Time
For more information, see Using Solution Library for Essential SAFe dashboards.
Epic Summary
Title

Type

Feature Progress

Horizontal bar chart View the progress of every feature in an epic.

Epic Burnup

Line chart

Description

Shows the epic burnup trends. You can estimate when the epic is
completed.

The Epic Burnup report comprises the following series that can b
displayed based on your preference:
• Scope: Indicates the size of the epic.

• Scope Forecast: Predicts the possibility of scope change for th
which is based on historical data.

• Completed: Indicates the amount of work in the epic that is com

• Completed Forecast: Predicts the burnup for the future dates.
whether you can complete the epic on time. This prediction is b
historical data.

Note: The point at which the Completed Forecast series int

crosses the Scope Forecast series is a predictor for when the
completed. If the Completed Forecast series and the Scope
do not appear to ever intersect, it is a warning that scope is b
faster than work is being completed.
Epic Cumulative Flow
Diagram

Area chart

Monitor the progress of all the stories of your epic between its ac
end dates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2160


<!-- page 2161 -->
Epic Summary (continued)
Title

Type

Description

View the number of stories in each state by their arrival to a state
state, and its departure from this state.

The Epic Cumulative Flow Diagram report comprises the followin
be hidden or displayed based on your preference:

• Ready: Indicates the number of stories of the epic that are read
on.

• Work in Progress: Indicates the number of stories of the epic t
development.

• Ready for Testing: Indicates the number stories of the epic tha
tested.

• Testing: Indicates the number of stories of the epic that are cur
tested.
• Complete: Indicates the number of stories that are complete.

Note: Stories in Ready and Cancelled states are not includ
report.
Cycle Time
Title

Type

Description

Story Cycle Time

Bubble chart

Identify the time taken for
each story in the epic to move
from an in-progress state to
completion.
Each bubble on the graph
represents a story. The height
of the bubble from the xaxis shows how long that
story took to move from an inprogress state to completion.
The size of the story bubbles
are relative to each other
based on their story points.
Hovering your mouse cursor
over a bubble displays the
following details about that
story:
• Story points
• Date on which the story is
moved to completion
• Total cycle time (in days) of
the story
• Number of days that the
story was in the Work in
progress state

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2161


<!-- page 2162 -->
Cycle Time (continued)
Title

Type

Description

• Number of days that the
story was in the Ready for
testing state
• Number of days that the
story was in the Testing
state
From the Story State section
towards the right of the report,
you can filter the report to view
the cycle time of the stories for
the selected states. The chart
displays the cycle time for
each story as the cumulative
sum of all duration of the
selected states.
If there are too many stories
at any area of the chart and
the bubbles appear crowded
on the report, you can zoom
in that particular area of the
report for clearer view.

You can customize the Burnup and Cumulative Flow Diagram reports. For more information, see
Customizing Essential SAFe dashboard reports.

SAFe Sprint Dashboard
Track the progress of your SAFe stories in the current sprint and forecast sprint completion using
the SAFe Sprint Dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2162


<!-- page 2163 -->
SAFe sprint dashboard widgets

SAFe sprint dashboard burndown report

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2163


<!-- page 2164 -->
SAFe sprint dashboard burnup report

SAFe sprint dashboard cumulative flow diagram

The dashboard:
• Displays important details of the sprint such as percentage of work that is complete, time
elapsed, and total number of stories that are missing estimates.
• Displays the number of stories of the sprint in their current state and their progress.
• Indicates the scope changes, if any, and trends of those scope changes.
• Indicates how the team needs to progress on stories to achieve the sprint goal.
• Forecasts data showing the likelihood of completing the sprint as planned.

Note: Canceled stories are not included in any of this data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2164


<!-- page 2165 -->
End user and roles
End user and goal

SAFe scrum master: Reviews
the sprint burndown trends.
Resolves any bottlenecks and
targets to complete the sprint
on time.

Required role

Benefits

safe_scrum_user
• Analyse the scope changes
for the sprint
• View current states and
analyse the time in each
state for the stories of the
sprint
• Estimate sprint completion
dates

Indicators
SAFe: Sum of story points of all stories in the current sprint
Generates the scope series in the Sprint Burndown report. The scope series
indicates the amount of work in story points that is planned for the sprint.
SAFe: Sum of story points of active stories in the current sprint
Generates the actual burndown series in the Sprint Burndown report. The actual
burndown series indicates the amount of work left (in story points) for completion.
SAFe: Sum of story points of completed stories in current sprint
Generates the percentage of stories completed for the current sprint.
SAFe: Time elapsed in sprint
Calculates the time to be displayed in the Time Elapsed widget.
SAFe: Count of stories in the current sprint
Generates the area series in the Sprint Cumulative Flow Diagram report. It indicates
the number of stories in the current sprint.

Breakdowns
• SAFe: Sprint
• SAFe: Current Sprint
• SAFe: State

Widgets
Scope
Indicates the amount of work in story points that is planned for the sprint. This
widget lets you see at a glance how much work must be completed to achieve the
sprint goal. It also lets you drill down to detail on the stories planned into the sprint.
Percent Completed
Indicates the percentage of work that has been completed in the sprint using story
points. This widget lets you see at a glance how much work has been completed in
the sprint. Together with the adjacent Time Elapsed widget, these widgets lets you
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2165


<!-- page 2166 -->
easily see whether you are completing work at a rate consistent with achieving the
sprint goal on schedule.
Time Elapsed
Indicates the percentage of time that has elapsed between the start date and
planned end date of the sprint. Together with the adjacent Percent Completed
widget, these widgets let you easily see whether you are completing work at a rate
consistent with achieving the sprint goal on schedule.
Committed Points
Indicates the committed scope (in number of story points) of the sprint. Together
with the adjacent Scope widget, these widgets let you see difference between the
scope committed at the start of the sprint and the current scope of the sprint.

Note: This widget is not visible by default. You can add it from Reports to your
dashboard. For more information, see Edit a responsive dashboard

.

Blocked Work
Indicates the amount of work (in story points) in the sprint that is blocked.
Stories Missing Estimates
Indicates the total number of stories in the sprint that are missing estimates. It is
required that you use estimates for the other indicators, widgets, and reports on this
dashboard to be meaningful.

Note: If you do not estimate stories, enter a "1" in the Story Points field. The
other indicators, widgets, and reports will then effectively function by count.

Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Essential SAFe, then install this dashboard from Solution Library to upgrade its layout and access
the following visualizations:
• Sprint Burnup
• Sprint Cumulative Flow Diagram
For more information, see Using Solution Library for Essential SAFe dashboards.

Title

Type

Sprint
Burndown

Line chart

Description

Indicates the scope changes, if any, and trends of those scope
changes. Indicates the ideal pace of work, how much work is
remaining, and if the scope is likely to be completed before the
end of the sprint. The Sprint Burndown report comprises the
following series that can be hidden or displayed based on your
preference:
• Scope: Indicates the amount of work that is currently planned
for the sprint. This can vary if stories are added to or removed
from the sprint after it is started.
• Scope Forecast: Predicts the possibility of scope change for
the future dates based on historical changes in the current
sprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2166


<!-- page 2167 -->
Title

Type

Description

• Ideal Burndown: Indicates how the team needs to progress on
stories to complete the sprint on time.
• Remaining: Indicates the amount of work left for completion in
the sprint.
If the actual burndown (Remaining) is above the ideal
burndown, it implies that there is more work left than originally
estimated. The team is running behind the schedule of the
sprint. If the actual burndown (Remaining) is below the ideal
burndown, it implies that there is less work left than originally
estimated. The team is running ahead of the schedule of the
sprint.
• Remaining Forecast: Predicts the burndown for the future dates
based on historical changes in the current sprint.
Sprint
Burnup

Line chart

Shows the sprint burnup trend indicating scope changes.
Forecasts future changes in scope and the trend of work
completion.
The Sprint Burnup report comprises the following series that can
be hidden or displayed based on your preference:
• Scope: Indicates the amount of work that is planned for the
sprint.
• Scope Forecast: Predicts the possibility of scope change for
the future dates, which is based on historical data.
• Completed: Indicates the amount of work completed in the
sprint.
• Completed Forecast: Predicts the burnup for the future dates.
It indicates whether you can complete the sprint on time. The
prediction is based on historical data.

Sprint
Area
Cumulative
Flow
Diagram
chart

Monitor the progress of all the stories of your sprint between its
actual start and end dates.
View the number of stories in each state by their arrival to a state,
time in this state, and its departure from this state.
The Sprint Cumulative Flow Diagram report comprises the
following areas that can be hidden or displayed based on your
preference:
• Ready: Indicates the number of stories in the sprint that are
ready to start work on.
• Work in Progress: Indicates the number of stories in the sprint
that are in development.
• Ready for Testing: Indicates the number stories in the sprint
that are ready to be tested.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2167


<!-- page 2168 -->
Title

Type

Description

• Testing: Indicates the number of stories in the sprint that are
currently being tested.
• Complete: Indicates the number of stories in the sprint that are
complete.

Note: Stories in Ready and Cancelled states are not
included in this report.
You can customize the Burnup, Burndown, and Cumulative Flow Diagram reports. For more
information, see Customizing Essential SAFe dashboard reports.

SAFe Prior Sprint Dashboard
The SAFe Prior Sprint Dashboard provides data visualization on scope, actual burnup and
burndown, and forecast trends of previous sprints. Analyze the data and plan the work for
upcoming sprints.
SAFe prior sprint dashboard widgets

SAFe prior sprint dashboard burndown report

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2168


<!-- page 2169 -->
SAFe prior sprint dashboard burnup report

Note: Canceled stories are not included in any of this data.
End user and roles
End user and goal

Required role

SAFe scrum master: Analyze
data on scope, actual burnup
and burndown, and forecast
trends of previous sprints.

SAFe_scrum_user

Benefits

• Analyze sprint burndown
and burnup trends
• Use the data to plan for
upcoming sprints

Indicators
SAFe: Sum of story points of all stories in the current sprint
Generates the scope series in the SAFe Sprint Burndown report.
SAFe: Sum of story points of active stories in the current sprint
Generates the actual burndown series in the SAFe Sprint Burndown report.

Breakdowns
• SAFe: Sprint
• SAFe: Prior Sprint

Widgets
Committed points
Indicates the committed scope (in number of story points) of the sprint.
Stories
Indicates the total number of stories that were completed in the previous sprint.
Completed
Indicates the amount of work (in story points) that was completed in the previous
sprint.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2169


<!-- page 2170 -->
Stories Missing Estimates
Indicates the total number of stories in the previous sprint that were missing
estimates.

Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Essential SAFe, then install this dashboard from Solution Library to upgrade its layout and access
the Sprint Burnup report. For more information, see Using Solution Library for Essential SAFe
dashboards.

Title

Type

Sprint
Line
Burndown
chart

Description

Shows the scope and rate of scope change, the ideal rate for
work completion, and the actual rate of work completion. Analyze
the burndown trends and accordingly plan the workload for an
upcoming sprint.
The Sprint Burndown report comprises the following series that can
be hidden or displayed based on your preference:
• Scope: Indicates the amount of work that is planned for the sprint.
• Ideal Burndown: Indicates how the team needs to progress on
stories to complete the sprint on time.
• Remaining: Indicates the amount of work left for completion in the
sprint.
If Remaining is above the Ideal Burndown, it implies that there
is more work left than originally estimated. The team is running
behind the schedule of the sprint.
If the Remaining is below Ideal Burndown, it implies that there is
less work left than originally estimated. The team is running ahead
of the schedule of the sprint.
Analyze the burndown trends and accordingly plan the workload for
an upcoming sprint.

Sprint
Burnup

Line

chart

Shows the previous sprint burnup trend indicating scope changes.
Analyze future changes the trend of team's work completion.
The Sprint Burnup report comprises the following series that can be
hidden or displayed based on your preference:
• Scope: Indicates the amount of work that is planned for the sprint.
• Completed: Indicates the amount of work completed in the sprint.

You can customize the Burnup and Burndown reports. For more information, see Customizing
Essential SAFe dashboard reports.

SAFe PI Dashboard
The SAFe PI Dashboard allows you to track the progress of your features in the current program
increment (PI).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2170


<!-- page 2171 -->
PI Summary tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2171


<!-- page 2172 -->
Cycle Time tab

The SAFe PI dashboard provides the following details:
• Displays important details of the PI such as percentage of work that is complete, time elapsed,
and total number of stories that are missing estimates.
• Displays the number of stories of the PI in their current state and their progress.
• Indicates the scope changes, if any, and trends of those scope changes.
• Indicates the pace at which the ART members are completing features that are planned for the
PI.
• Forecasts data showing the likelihood of completing the PI as planned.
• Shows time elapsed for the stories of the PI to go from an in-progress state to a completed
state.

End user and roles
End user goal with required role
End user and goal

Required role

SAFe ART user: Track the progress of your
safe_scrum_user
stories that are planned for the PI. Resolve any
bottlenecks and target to complete the PI on
time.

Indicators
SAFe: Count of all stories in the current PI
Generates the area series the PI Cumulative Flow Diagram report, which indicates
the number of stories of the current PI by state.
SAFe: Sum of story points of all stories in the current PI
Generate the scope series in the PI Burndown report. This series indicates the
amount (in story points) of work planned for the PI.
SAFe: Sum of story points of completed stories in the current PI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2172


<!-- page 2173 -->
Generates the actual burndown series in the PI Burndown report, and the
completed series in the PI Burnup report. These series indicate the amount of work
(in story points) that has been completed for the PI.
SAFe: Sum of story points of active stories in the current PI
Generates the scope series in the PI Burndown and PI Burnup reports. The scope
series indicates the amount of work (in story points) that is planned for the PI.
SAFe: Time elapsed in the PI
Calculates the time to be displayed in the Time Elapsed widget.

Breakdowns
• SAFe: PI
• SAFe: State

Widgets
Scope
Indicates the amount of work in story points that is planned for the PI. This widget
lets you see at a glance how much work must be completed to achieve the PI goal. It
also lets you drill down to detail on the stories that are planned for completion in the
PI.
Percent Completed
Indicates the percentage of work that has been completed in the PI using story
points. This widget lets you see at a glance how much work has been completed in
the PI. Together with the adjacent Time Elapsed widget, these widgets let you easily
see whether you are completing work at a rate consistent with achieving the PI goal
on schedule.
Time Elapsed
Indicates the percentage of time that has elapsed between the start date and
planned end date of the PI. Together with the adjacent Percent Completed
widget, these widgets let you easily see whether you are completing work at a rate
consistent with achieving the PI goal on schedule.
Features
Indicates the total number of features that are planned for completion in the PI.
Features Released
Indicates the total number of features in the PI that have been completed.
Stories Missing Estimates
Indicates the total number of stories in the PI that are missing estimates. It is
required that you use estimates for the other indicators, widgets, and reports on this
dashboard to be meaningful.

Note: If you do not estimate stories, enter a "1" in the Story Points field. The
other indicators, widgets, and reports will then effectively function by count.
Blocked Work
Indicates the amount of work (in story points) in the PI that is blocked.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2173


<!-- page 2174 -->
Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Essential SAFe, then install this dashboard from Solution Library to upgrade its layout and access
the following visualizations:
• PI Cumulative Flow Diagram
• Story Cycle Time
For more information, see Using Solution Library for Essential SAFe dashboards.
SAFe PI Summary
Title

Type

Description

PI Burndown

Line chart

Indicates the scope changes, if any, and trends of those scope cha
the ideal pace of work, how much work is remaining, and if the scop
completed before the end of the PI. The PI Burndown report compr
series that can be hidden or displayed based on your preference:
• Scope: Indicates the amount of work that is planned for the PI.

• Scope Forecast: Predicts the possibility of scope change for the
the PI. This prediction is based on historical data.

• Ideal Burndown: Indicates how the ART members need to progr
deliver the PI on time.
• Remaining: Indicates the amount of work completed in the PI.
• Remaining Forecast: Predicts the burndown for the future dates
indicates whether you can deliver the PI on time.
PI burnup

Line chart

Analyse the burnup trends, and estimate when the PI work is likely
The PI burnup report comprises the following series that can be hid
based on your preference:
• Scope: Indicates the amount of work that is planned for the PI.

• Scope Forecast: Predicts the possibility of scope change for the
This prediction is based on historical data.

• Completed: Indicates the amount of work in the PI that is comple
• Completed Forecast: Predicts the burnup for the future dates in
indicates whether you can complete the PI on time.

Note: The point at which the Completed Forecast series inter

crosses the Scope Forecast series is a predictor for when the P
completed. If the Completed Forecast series and the Scope Fo
do not appear to ever intersect, it is a warning that scope is be
than work is being completed.
PI Feature Progress

Horizontal bar chart

Analyse the progress of every feature of the PI, by viewing the coun
segregated by their state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2174


<!-- page 2175 -->
SAFe PI Summary (continued)
Title

Type

Description

Velocity by Sprint

Bar chart

View the velocity of the ART members across PIs. Understand if the
are achieving a stable, predictable velocity over sprints, and meetin
commitments.

PI Cumulative Flow
Diagram

Area chart

Monitor the progress of all the stories of your PI between its actual
dates.

View the number of stories in each state by their arrival to a state, ti
and its departure from this state.

The PI Cumulative Flow Diagram report comprises the following are
hidden or displayed based on your preference:

• Ready: Indicates the number of stories of the PI that are ready to

• Work in Progress: Indicates the number of stories of the PI that a
development.

• Ready for Testing: Indicates the number stories of the PI that are
tested.

• Testing: Indicates the number of stories of the PI that are current
• Complete: Indicates the number of stories that are complete.

Note: Stories in Ready and Cancelled states are not included
Cycle Time
Title

Type

Description

Story Cycle Time

Bubble chart

Identify the time taken for
each story in the PI to move
from an in-progress state to
completion.
Each bubble on the graph
represents a story. The height
of the bubble from the xaxis shows how long that
story took to move from an inprogress state to completion.
The size of the story bubbles
are relative to each other
based on their story points.
Hovering your mouse cursor
over a bubble displays the
following details about that
story:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2175


<!-- page 2176 -->
Cycle Time (continued)
Title

Type

Description

• Story points
• Date on which the story is
moved to completion
• Total cycle time (in days) of
the story
• Number of days that the
story was in the Work in
progress state
• Number of days that the
story was in the Ready for
testing state
• Number of days that the
story was in the Testing
state
From the Story State section
towards the right of the report,
you can filter the report to view
the cycle time of the stories for
the selected states. The chart
displays the cycle time for
each story as the cumulative
sum of all duration of the
selected states.
If there are too many stories
at any area of the chart and
the bubbles appear crowded
on the report, you can zoom
in that particular area of the
report for a clearer view.

You can customize the Burnup, Burndown, and Cumulative Flow Diagram reports. For more
information, see Customizing Essential SAFe dashboard reports.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2176


<!-- page 2177 -->
SAFe Prior PI Dashboard
The SAFe Prior PI Dashboard provides data visualization on scope, actual burndown, and
forecast trends of previous program increments (PI). Analyze the data and plan the work for
upcoming PIs.
SAFe Prior PI dashboard widgets

SAFe Prior PI burnup report

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2177


<!-- page 2178 -->
SAFe Prior PI burnup report

End user and roles
End user and goal

Required role

SAFe ART user: Analyze the scope, burndown, safe_scrum_user
and forecast trends of previous program
increments.

Indicators
SAFe: Sum of story points of completed stories in the active PIs
Generates the actual burndown series in the PI Burndown report, and the
completed series in the PI Burnup report.
SAFe: Sum of story points of all stories in active PIs
Generates the scope series in the PI Burndown and PI Burnup reports.

Breakdowns
SAFe: Prior PI.

Widgets
Features
Indicates the total number of features that were planned for completion in the
previous PI.
Completed
Indicates the total number of features that were completed in the previous PI.
Stories Missing Estimates
Indicates the total number of stories in the previous PI that were missing estimates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2178


<!-- page 2179 -->
Data visualizations
Title

Type

PI Burnup

Description

Analyze the burnup trends of
the previous PI.
Line chart

PI Burndown
Line chart

PI Velocity Chart

Bar chart

View the scope and rate of
scope change, the ideal rate
for work completion, and the
actual rate of work completion.
Analyze the burndown trends
and accordingly plan the
workload for an upcoming PI.
View the velocity of the ART
members for the previous PI
and plan the workload for an
upcoming PI.

You can customize the Burnup and Burndown reports. For more information, see Customizing
Essential SAFe dashboard reports.

SAFe ART Dashboard
Visualize how the ART members are progressing on features and program increments (PIs) over
a given period using the SAFe ART dashboard. Gain insight on the overall velocity of the ART
members, historical performance of the ART on the PI objectives so that you can plan the work
accordingly for the upcoming program increments.
ART Summary tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2179


<!-- page 2180 -->
Cycle Time tab

Program Predictability Tab

End user and roles
End user goal with required role
End user and goal

Required role

SAFe ART user: View how the ART members
are progressing on features and PIs.

safe_scrum_user

Data visualizations
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Essential SAFe, then install this dashboard from Solution Library to upgrade its layout and access
the Story Cycle Time report. For more information, see Using Solution Library for Essential SAFe
dashboards.
ART Summary
Title

Type

Description

Feature Progress

Horizontal bar chart

View the progress of all
the features that the ART
members are working on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2180


<!-- page 2181 -->
ART Summary (continued)
Title

Type

Description

Velocity by PI

Bar chart

View the velocity of the
ART across various PIs.
Understand if the ART is
achieving a stable, predictable
velocity.

Title

Type

Description

Story Cycle Time

Bubble chart

Identify the time taken for
each story in the ART to move
from an in-progress state to
completion.

Cycle Time

Each bubble on the graph
represents a story. The height
of the bubble from the xaxis shows how long that
story took to move from an inprogress state to completion.
The size of the story bubbles
are relative to each other
based on their story points.
Pointing your mouse cursor
over a bubble displays the
following details about that
story:
• Story points
• Date on which the story is
moved to completion
• Total cycle time (in days) of
the story
• Number of days that the
story was in the Work in
progress state
• Number of days that the
story was in the Ready for
testing state
• Number of days that the
story was in the Testing
state
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2181


<!-- page 2182 -->
Cycle Time (continued)
Title

Type

Description

From the Story State section
towards the right of the report,
you can filter the report to view
the cycle time of the stories for
the selected states. The chart
displays the cycle time for
each story as the cumulative
sum of all duration of the
selected states.
If there are too many stories
at any area of the chart and
the bubbles appear crowded
on the report, you can zoom
in that particular area of the
report for a clearer view.

Title

Type

Description

Line chart

Track the historical
performance of the ART on
achieving their PI objectives.

ART: Program Predictability

The series in this report
show the performance of the
ART as whole and also the
performance of each team of
the ART.
The horizontal axis shows
the completed PIs and the
vertical axis shows the range
of business value achieved in
percentage (%).
Each series is the
representation of the business
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2182


<!-- page 2183 -->
Title

Type

Description

value achieved, which is
calculated from the planned
and actual business values
of the PI objectives. For more
information, see SAFe PI
objectives.
From the chart, you can see
which teams are consistently
achieving between 80% and
100% of the set PI objectives,
which is the ideal range
according to SAFe.
The Linear (ART) dotted-line
series on the chart provides
a linear regression on the
business value achieved for
the ART. This series serves
as an indication of how the
scores of the business value
achieved are trending.
Pointing your mouse cursor
at a data point on any of the
series gives you the numeric
value of business value
achieved.
• Clicking any of the data
points for a PI on the
ART series lets you drill
down and see the list of PI
objectives that are used
to plot the chart for the PI
which you clicked.
Filtering the list by setting
the Type column to Program
displays the PI objectives
only for the ART.
• Clicking any of the data
points for a PI on a team
series lets you drill down
and see the list of PI
objectives that are used
to plot the chart for the PI
which you clicked.
The objectives shown in this
list are only for the selected
team.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2183


<!-- page 2184 -->
SAFe Team Dashboard
Visually analyze how a team is progressing on stories over a given period. Gain insight on the
overall velocity of the team and helps you plan the team's capacity for the upcoming sprints and
program increments (PIs). In addition, this dashboard provides details of all the team members.
Work item progress tab

Sprint Performance tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2184


<!-- page 2185 -->
Team Members tab

Cycle Time tab

Program Predictability

End user and roles
End user goal with required role
End user and goal

Required role

SAFe scrum master: View how your team is
progressing on stories.

safe_scrum_user

Indicators
SAFe: Average Story State Duration
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2185


<!-- page 2186 -->
Generates data that is displayed in the Average Cycle Time per State report.
SAFe: Story State Duration
Generates data that is displayed in the Time in State report.

Breakdowns
• SAFe: State
• SAFe: Team

Data visualizations
The Team Dashboard visualizations are segregated into the following tabs:
• Work item progress: Reports of Active Stories by State, Time in State, and Average Cycle Time
per State
• Sprint Performance: Reports of Velocity History and Sprint Variance
• Team Members: List of all the members of the team

Note: For existing customers who upgrade to the latest version, the list of the team
members appears in both the Work item progress and Team Members tabs but only one
of these locations would display the accurate information. You can remove this widget
from the Work item progress tab to avoid this issue. For more information on how to
remove a widget, see Edit a responsive dashboard .
• Cycle Time: Report of the story cycle for the team.
• Program Predictability: Report of the team's historical performance in meeting the PI
objectives.
If you are upgrading from version 1.0.2 or earlier of Performance Analytics Content Pack for
Essential SAFe, then install this dashboard from Solution Library to upgrade its layout and access
the following reports:
• Velocity History
• Velocity by Type
• Sprint Variance
• Story Cycle Time
For more information, see Using Solution Library for Essential SAFe dashboards.
Work item progress
Title

Type

Description

Active Stories By
State

Bar chart

View the total number of stories in each state of a story, for
example, testing, work in progress, and testing.

Time in State

Stacked bar
chart

View the time in hours that the team spends in each state
of a story.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2186


<!-- page 2187 -->
Work item progress (continued)
Title

Type

Description

Average Cycle
Time per State

Line chart

View how the work in progress is trending over time and
what are the most significant cycle times.

Sprint Performance
Title

Type

Description

Velocity History

Grouped bar chart

Gain an insight on the overall
velocity of the team for the
past 10 sprints. Understand if
the team is achieving a stable,
predictable velocity, and is
meeting the commitments.
The Team Velocity History
report comprises the following
series per sprint that can be
hidden or displayed based on
your preference:
• Team Capacity: Indicates
the team capacity (in story
points) for the sprint.
• Committed Story Points:
Indicates the number of
story points committed by
the team for the sprint.
• Completed Story Points:
Indicates the number of
story points completed by
the team for the sprint.
• Average Completed Points:
Indicates the average
number of story points
completed by the team for
the sprint.
• Linear (Actual): Indicates
if the amount of completed

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2187


<!-- page 2188 -->
Sprint Performance (continued)
Title

Type

Description

work is trending up, trending
down, or relatively stable
over sprints.
Velocity by Type

Stacked bar chart

Analyze the way your team's
velocity changes over time
and compare the team's
strategic workload with
operational or other types of
workload.
The bar charts have two
stacks that show the sum
of the story points of the
following types of completed
stories:
• Regular stories
• Stories added to the unified
backlog from the items in
the triage board
Clicking any bar would take
you to its corresponding sprint
details.
Data displayed in this report is
of the past 10 sprints with the
earliest sprint on the left.

Note: This report is not
available by default. You
can add it from Scrum
custom charts to your
dashboard. For more
information, see Edit a
responsive dashboard .
Sprint Variance

Grouped bar chart

Analyze the percentage
variance of the team
compared to the capacity and
committed points, for the past
10 sprints.
The Team Sprint Variance
report comprises the following
series per sprint that can be
hidden or displayed based on
your preference:
• Completed to Capacity:
Indicates the percentage of
completed work compared

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2188


<!-- page 2189 -->
Sprint Performance (continued)
Title

Type

Description

to the expected capacity for
the sprint.
• Completed to Committed:
Indicates the percentage of
completed work compared
to the committed work of the
team for the sprint.
Team Members
Title

Type

Team Members

List

Description

View the details of all team
members.

Cycle Time
Title

Type

Description

Story Cycle Time

Bubble chart

Identify the time taken for
each story, which the team
has worked on, to move
from an in-progress state to
completion.
Each bubble on the graph
represents a story. The height
of the bubble from the xaxis shows how long that
story took to move from an inprogress state to completion.
The size of the story bubbles
are relative to each other
based on their story points.
You can compare the cycle
times of stories with different
story points and analyze
the trend in the time taken
by the team to complete
them. Identify the stories that
took longer to complete and
analyze the reasons so that
you can chart an action plan
to reduce the team's cycle
time in the future.
Pointing your cursor over a
bubble displays the following
details about that story:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2189


<!-- page 2190 -->
Cycle Time (continued)
Title

Type

Description

• Story points
• Date on which the story is
moved to completion
• Total cycle time (in days) of
the story
• Number of days that the
story was in the Work in
progress state
• Number of days that the
story was in the Ready for
testing state
• Number of days that the
story was in the Testing
state
From the Story State section
toward the right of the report,
you can filter the report to view
the cycle time of the stories for
the selected states. The chart
displays the cycle time for
each story as the cumulative
sum of all duration of the
selected states.
If there are too many stories
at any area of the chart and
the bubbles appear crowded
on the report, you can zoom
in that particular area for a
clearer view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2190


<!-- page 2191 -->
Cycle Time (continued)
Title

Type

Description

Note: The stories
shown in this chart are
the ones that the team
has completed in the
past 30 days.

Title

Type

Team: Program Predictability

Line chart

Description

Track the historical
performance of the team on
achieving their PI objectives.
The series in this report show
the performance of the team,
and the ART that this team
belongs to, over multiple PIs.
The horizontal axis shows
the completed PIs and the
vertical axis shows the range
of business value achieved in
percentage (%).
Each series is the
representation of the business
value achieved, which is
calculated from the planned
and actual business values
of the PI objectives. For more
information, see SAFe PI
objectives.
From the chart, you can if the
team is consistently achieving
between 80% and 100% of the
set PI objectives, which is the
ideal range according to SAFe.
The Linear (Team) dotted-line
series on the chart provides
a linear regression on the
business value achieved for
the team. This series serves
as an indication of how the
scores of the business value
achieved are trending.
Pointing your cursor at a data
point on any of the series
gives you the numeric value of
business value achieved.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2191


<!-- page 2192 -->
Title

Type

Description

• Clicking any of the data
points for a PI on the
ART series lets you drill
down and see the list of PI
objectives that are used to
plot the chart for the PI that
you clicked.
Filtering the list by setting
the Type column to Program
displays the PI objectives
only for the ART.
• Clicking any of the data
points for a PI on a team
series lets you drill down
and see the list of PI
objectives that are used to
plot the chart for the PI that
you clicked.
The objectives shown in this
list are only for the selected
team.

Customizing Essential SAFe dashboard reports
Customize the Burnup, Burndown, and Cumulative Flow Diagram reports of your dashboards
according to the custom states of your SAFe stories.
• Configure indicators to reflect your customizations.
For example, if there are any new states introduced to the SAFe story table, then the
corresponding indicators and indicator sources for the story table that rely on the State field
must be updated as well.
For more information, see Customize indicators of your Essential SAFe dashboard reports.
• Update or clone UI scripts for modifications to use your own indicators.
Add customizations by overriding methods in empty implementation (Impl) classes of UI
scripts such as SafeAreaChartImpl and SafeVelHistoryImpl.
For more information, see Update UI scripts to use your indicators for Essential SAFe
dashboards.
Customize indicators of your Essential SAFe dashboard reports
Configure indicators to reflect your customizations in Essential SAFe dashboards.

Before you begin

Role required: admin or pa_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2192


