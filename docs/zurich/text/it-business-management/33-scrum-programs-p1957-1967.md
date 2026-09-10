# Zurich Strategic Portfolio Management — Scrum Programs

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1957–1967 of 2289

Sections: Scrum Programs (p1957)

---

<!-- page 1957 -->
Scrum Programs for Agile Development 2.0
Plan and track the work of multiple teams that work together, either toward a common short-term
outcome or on an ongoing basis.
This video provides an overview of Scrum Programs for Agile Development 2.0.
The examples of short-term outcomes are a demand, project, epic, or a release. Teams that work
together on a scrum program can:
• Work in synchronized or varied sprint cadences.
• Contribute to work outside of this common scrum program.
®

With the centralized Planning page for a scrum program on ServiceNow Agile Development 2.0,
you can:
• Assign work and compare the workload of multiple teams across sprints.
• Set, view, and adjust dependencies between stories across multiple teams.

Activate Scrum Programs
Activate the Scrum Programs (com.snc.sdlc.scrum_program) plugin to start planning your scrum
programs in Agile Development 2.0.

Before you begin

Role required: admin

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
Components installed with Scrum Programs
Understand the roles, tables, business rules, and UI macros that are installed when you activate
the Scrum Programs plugin.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1957


<!-- page 1958 -->
Roles installed with Scrum Programs
Role title [name]

Description

Contains roles

Program manager
[it_program_manager]

Users with this role have
full control on all the scrum
programs.

• program_manager
• scrum_product_owner
• scrum_master

Note: The it_program_manager role is installed with the activation of Scrum Programs
only if it is not already installed through the Project Portfolio Management plugin.

Tables installed with Scrum Programs
Table

Description

epic_backlog_definition

Stores the filter criteria that is used to create
the epic backlogs.

scrum_program_m2m_group

Stores the relationship between a scrum
program and its teams.

Business rules installed with Scrum Programs
Name

Table

Description

Set global rank for epic

rank_configuration

Contains fix script to populate
global rank for existing epics.

UI macros installed with Scrum Programs
Name

program_planning_constants

Description

Contains customizable TEAM_LIMIT and
STORY_LIMIT properties.
These properties limit the number of teams
and stories that can be shown on the scrum
program planning board.

The default value for the TEAM_LIMIT property is 15 and STORY_LIMIT property is 1000. You can
change these values according to your preferences.

Note: Increasing the values might result in longer loading times and degraded
performance of the scrum program planning board.

Create an epic backlog
Categorize epics into epic backlogs by defining a set of filters according to your preferences.
While planning your scrum program, you can use these epic backlogs to plan for only those
stories that belong to the epics in this backlog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1958


<!-- page 1959 -->
Before you begin

Role required: it_program_manager

About this task

With epic backlogs, you can filter stories on the planning board, to display the stories from only
certain epics. For example, you can create a backlog of epics with Priority set as High. Later on
the planning board, you can focus only on the stories belonging to these high-priority epics and
plan your sprints accordingly.

Procedure
1. Navigate to the Epic Backlog form in one of the following ways:

Option

From the Epic Backlogs module

Action

a. Navigate to Agile Development > Epic
Backlogs.
b. Click New.

From Agile Board

Navigate to Agile Development > Agile Board
> Program > Backlog and do one of the
following:
◦ If you are creating an epic backlog for the
first time, click Create Backlog.
◦ If this backlog that you want to create is an
addition to existing epic backlogs, click the
create icon (

).

2. In the Name field, enter a name of your choice for the epic backlog.
3. To set the desired filter conditions, click Add Filter Condition or Add "OR" Clause.
For example, you can choose to filter your epics by the priority set for them.

Note: The default filter condition is Task type is Epic and Active is true.
4. Click Submit.
Related topics
Manage your epic backlogs

Manage your epic backlogs
Create, update, and rearrange your epics by using a centralized view of epic backlogs on Agile
Board.

Before you begin

Role required: it_program_manager, scrum_user

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. From the Program tab, select Backlog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1959


<!-- page 1960 -->
◦ If an epic backlog exists, the page populates a list of epics that match the criteria of this
backlog.
◦ If you have no existing epic backlogs, see Create an epic backlog.
3. To switch between the available epic backlogs, select a backlog from the Backlog list.
4. To edit the selected backlog, click the edit icon (

).

Note: You must have the role of it_program_manager to perform this step.
5. To add a new epic to the selected backlog, click Create Epic.
6. To filter the list of epics by product, select a product category from Epics by product.
You can show or hide the Epics by product filter. Click the configuration icon (
Show Products Filter on or off.

) and toggle

7. To locate an epic from the backlog, using the short description or the epic number, use the
search bar.
8. To edit the details of an epic, click the epic number.
9. To rearrange the epics based on their priority, do one of the following:

Action

Use the mouse device to rearrange the epics

Description

a. Select the required epics.
b. Drag the selection to the desired position
and drop it.

Use the keyboard to rearrange a single epic
a. To highlight the context menu icon ( )
of the desired epic, press the Tab key and
press the Enter key.
b. Move the epic to the desired position by
using the up and down arrow keys.
c. To fix the position of the epic, press the
Enter key.
Use the keyboard to rearrange a group of
epics

a. To highlight an epic, press the Tab key.
b. To select the epic, press the Enter key.
c. Navigate using the up and down arrow keys
and do the following:
i. To select consecutive epics, press the
Shift and Enter keys together.
ii. To select random epics, press the Ctrl
(for Windows) or Command (for Mac) key
and the Enter key together.
d. To highlight the context menu icon ( ) of
an epic, press the Tab key and press the
Enter key.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1960


<!-- page 1961 -->
Action

Description

e. Move the epics to the desired position by
using the up and down arrow keys.
f. To fix the position of the epics, press the
Enter key.
You can also perform the following actions on a single epic or a group of epics:
a. Select the required epics.
b. Click the more options icon (

) of an epic and select any of the following options:

Option

Action

Move to top

Moves epics to the top of the Backlog list.

Move to bottom

Moves epics to the bottom of the Backlog list.

Product

Opens the Products list. Select the product to
which the epics belong.

10. To view the backlog in a standard platform list, click the standard list view icon (

).

Create a scrum program
Create a scrum program to plan sprints and track the progress of the multiple scrum teams that
are working together.

Before you begin

Ensure that you have the information of the teams to be included in the program.
Role required: it_program_manager

Procedure
1. Navigate to the Program form using one of the following ways:

Option

From the Scrum Programs module

Action

a. Navigate to Agile Development > Scrum
Programs.
b. Click New.

From Agile Board

a. Navigate to Agile Development > Agile
Board.
b. From the Program tab, select Planning.
c. Click Create Program.

Note: You can create a scrum program
from the Planning page of Agile Board
but only if it is your first scrum program.

2. On the form, fill in the fields.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1961


<!-- page 1962 -->
Program form
Field

Planned start date

Description

Start date of the program. Manually enter the
date or pick from the calendar.
The default date is the current day.

Planned end date

Planned duration

End date of the program. Manually enter the
date or pick from the calendar.
Duration of the program in days and hours.
This field auto-populates based on the start
and end dates.
The default duration of a scrum program is
one day.

Program manager
Default Epic Backlog

Manager of the program.
Initial epic backlog that is applied to the
planning page, when you select this scrum
program.
Currently on the planning page, the epic
backlog is not automatically applied for a
program. So, it is recommended that you
manually select the required backlog while
planning.

Program Name

Brief description of the program.

3. Click Submit.
Any user with the role scrum_user can view the created scrum programs.

What to do next
• Assign teams to a scrum program.
• Click the Scrum Program Board related link to plan your scrum program.

Assign teams to a scrum program
Add teams to your scrum program to assign work and track the progress of the work.

Before you begin

Ensure that the teams that work on this scrum program are created as agile groups. For the
procedure to create an agile group and assign members to it, see Create an agile group in Agile
Development 2.0.
Role required: it_program_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1962


<!-- page 1963 -->
Procedure
1. Navigate to All > Agile Development > Scrum Programs.
2. Open your scrum program record.
3. In the Teams related list, click Edit.
4. Move the desired teams from Collection to Teams List.
5. Click Save.
You can add a team to multiple scrum programs by following the same procedure. The teams
that you add to a scrum program are displayed in its Teams related list.

What to do next

Plan a scrum program.

Scrum program planning board
Use a centralized view on Agile Board to plan work for the teams that are working on your scrum
program.
Quick view of the scrum program planning board UI components.
Agile Board has a program planning board where you can plan, schedule, and review work for
your scrum teams. The planning page contains the following components that guide you during
your planning process.
Program selector
Select a program that you want to plan or review. After you select a program, you
can add teams or update other information by clicking the edit icon (

).

Program timeline
Navigate the program timeline by scrolling horizontally or by using the forward (

)

and back ( ) icons.
Epic Backlog filter
Select an epic backlog that is associated with your scrum program. You can filter
the stories on the program planning board and the epic backlog pane. By analyzing
the workload for just these selected epics, you can understand how the workload is
scheduled across sprints.
Configuration panel
Turn on or off the following components on the planning board by using the
configuration panel icon (

).

Team backlog
Enables you to show or hide the team's backlog lane.
Story dependencies
Enables you to visually analyze dependencies between the stories of
different sprints and teams by using the story dependency lines. You
can use the dependencies option to show or hide these dependency
lines. If you choose to hide the dependencies or if the dependencies
involve a story that's not on the board, then you can see a colored
border on the story card.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1963


<!-- page 1964 -->
The color of the dependency indicates the way you've scheduled the
stories.
• Green: The prerequisite story is scheduled in a sprint first. Then, the
dependent story is scheduled in a later sprint.
• Red: The dependent story is scheduled in a sprint first. Then,
the prerequisite story is scheduled in a later sprint. Review the
dependency and reschedule the story as required.
If none of the stories have a prerequisite or dependent story that is
associated with them, the dependencies option is not visible.
For information on how to add story dependencies, see Add
dependencies for Agile Development 2.0 stories.
Epic Backlog pane
Enables you to see a list of all the epics that are based on the filter criteria in the
epic backlog definition. For more information, see Create an epic backlog.
In the backlog pane, you can do the following actions for an epic:
• View the epic description.
• View the unassigned and unscheduled stories of the epic as cards with their short
descriptions and story points.
• Edit the epic's information by clicking its name.
• Add a new story to the epic by clicking Create Story.
Scrum teams
View all the teams that are involved in the selected scrum program toward the left of
the planning board.
You can update a team's information, such as the team members, group capacity, or
description, by clicking the team's name.
If your teams do not have sprints added to them, or if you want to add more sprints,
you can Add sprints from the program planning board directly.
Team backlog lane
Enables you to see the stories that are assigned to the team but these stories aren't
scheduled yet into any sprint.
While planning your scrum program, if you know which stories must be assigned
to the team but you don't know what sprints to use, you can move these stories
to the team's backlog lane. By doing so, you can have a clear idea of the team's
workload for the upcoming sprints and then eventually add these stories to the
correct sprints.
You can also unplan a story that has already been scheduled to a sprint by dragging
the story card back to the team's backlog. Use the backlog lane on the planning
board to see which team has the story. Then, decide which sprint to schedule it in.
If you want to unassign a story from a team, you can drag the story card and drop it
back into the epic backlog lane.
Team sprint lanes
Enable you to see the sprint cadences of the teams.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1964


<!-- page 1965 -->
Pointing your cursor to a sprint's name shows you its details such as the duration,
total story points, and filled capacity. You can edit details, such as group capacity
and planned start and end dates, by clicking the sprint name.
While planning your scrum program, if you know the sprint in which the story would
be worked on, you can move the story card to that sprint.
Story cards
Enable you to see the stories of the epics from your scrum program in the form of
cards. You can move these cards around to assign them to teams and to plan them
into sprints.
If you have activated the Agile Development — Unified Backlog plugin
(com.snc.sdlc.agile.multi_task), you can also see stories that were added from the
triage board to your unified backlog. From the planning board, you can doubleclick a story card to open it in a pop-up window and edit its details. If the story is
created from a record on the triage board, such as a defect, you can see both the
story information and the defect information side-by-side.
The story cards use the following indicators:
Legend for story cards on the scrum program board

Indicators for story cards on the scrum program board
Number

Indicator description

1

Indicator for a story that is not complete.

2

Indicator for a story that is complete.

3

Indicator for a story that belongs to an epic, which does not have
any color attributed to it. Point your cursor to the dot to view the
epic's name.

4

Indicator for a story that belongs to an epic, which has a color
attributed to it. Point your cursor to the dot to view the epic's name.

5

Indicator of an associated prerequisite story. If this band appears
in red, it indicates that the dependency is not set correctly and
needs to be reviewed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1965


<!-- page 1966 -->
Indicators for story cards on the scrum program board (continued)
Number

Indicator description

6

Indicator of an associated dependent story. If this band appears
in red, it indicates that the dependency is not set correctly and
needs to be reviewed.

7

Indicator for a story that is a regular story. This icon changes with
the type of the record. For example your team could have stories
that are created from problems, enhancements, defects, and other
records.

8

Indicator for a story that is blocked.

9

Story points.

10

Short description of the story.

Note: Stories can be created from enhancements, defects, incidents, or
other such records only if you have activated the Agile Development — Unified
Backlog plugin (com.snc.sdlc.agile.multi_task).
Sprint workload capacity bar
Plan a sprint efficiently. The bar, which is under a sprint name, indicates the
workload that is planned for the team versus the team's capacity for that sprint.
Pointing your cursor to the sprint name gives you additional details.
Zoom in and zoom out
Adjust the board view using the zoom in icon (

) and the zoom out icon (

).

Search
Filter the stories on the planning board using a search term. For example, you can
enter a story number or a phrase from a short description.
Stories list
View a list of all stories of the program using the standard list view icon (

).

Plan a scrum program
Plan work for sprints, using a centralized view on Agile Board, of multiple scrum teams that are
working together on a scrum program.

Before you begin
• Create an epic backlog.
• Create a scrum program.
• Role required: scrum_sprint_planner

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. From the Program tab, select Planning.
3. From the Program list, select a scrum program that you want to plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1966


<!-- page 1967 -->
A planning board displays all the teams that are working on the selected program, their sprint
cadences, and sprint capacities.
4. From the Backlog list, select an epic backlog and click the backlog icon (
epics from the selected backlog.

) to display the

5. View the stories of an epic by selecting the epic from the backlog.
6. Assign a story to a scrum team by dragging a story card from the backlog and dropping it either
in a sprint or team's backlog lane.
You can reschedule the stories across teams and sprints by rearranging the story cards.
◦ If you move the story card to a team's backlog, the Assignment group field is updated
accordingly.
◦ If you plan the story card into a sprint, the Assignment group and the Sprint fields of the
story are updated accordingly.
The sprint capacity bar below the sprint name fills up depending on the stories that are
scheduled for it.
7. Optional: Update the group capacity of a team's sprint by clicking the sprint name.
8. Optional: Unplan a story by dragging it from the planning board and dropping it either in the
epic backlog pane or the team's backlog lane.
◦ Dropping the story back into the epic backlog pane clears the references of the sprint and
assignment group from the story.
◦ Moving the story to the team's backlog lane clears only the sprint reference but retains the
assignment group.
Related topics
Scrum program planning board
Add sprints from the program planning board
Add sprints to your scrum teams directly from the scrum program planning board without having
to navigate to another module.

Before you begin

Role required: scrum_sprint_planner

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. From the Program tab, select Planning.
3. From the Program list, select a scrum program that you want to plan.
4. Under the team name, click Add sprints.
5. On the form, fill in the fields.
Create Sprints form
Field

Description

Name

Name of the sprint for the team.

Starting Number

Number that you want the sprints to start with.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1967


