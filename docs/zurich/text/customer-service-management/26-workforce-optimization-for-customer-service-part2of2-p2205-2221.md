# Zurich Customer Service Management — Workforce Optimization for Customer Service

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 2205–2221 of 2452 | Part 2 of 2

Sections: Workforce Optimization for Customer Service (p2055); Exploring Workforce Optimization for Customer Service (p2057); Configuring Workforce Optimization (p2084); Using Workforce Optimization for Customer Service (p2159)

---

<!-- page 2205 -->
5. Add agents to the work shifts.
To

Auto-assign agents

Do this

Enable the Enabled for auto-assignment
for agents check box. Your agents who
have set the shift to be their top preference
is auto-assigned. The number of shifts au­
to-assigned is based on the value set in the

sn_shift_planning.max_shifts_to_autoassign
system property.
a. In the Assign agents field, search for
agents and add one or more agents to add
to the shift.
b. To add agents who had signed up for shifts,
select +Add signed up agents

Assign agents manually

You can view the agents who had signed
up and their preferred ranking to work on
that shift. If you don't want to display the
agents who have already been assigned
to a shift in that schedule plan, enable the
Hide agents already assigned to other
shifts toggle button.

Note: This option is only available af­
ter you've closed agent sign-ups for
the shift.
c. Select Save selection.
6. Select Save shift.
The state for the schedule plan changes to Generating Preview.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2205


<!-- page 2206 -->
7. To publish the schedule plan, select Publish.

Note: It may take a few minutes for the screen to refresh.
The table describes the different shift sign-up states in the schedule plan.

Schedule plan sign up state

Description

Sign-up not enabled

The schedule plan isn’t enabled for sign-up.

Enabled for sign-up

◦ Schedule plan is enabled for sign-up but isn’t yet
ready for agents to sign up for shifts.
◦ Schedule plan can’t be published when enabled
for sign-up.

Open for sign-up

◦ Schedule plan is enabled for sign-up and is ready
for agents to sign up.
◦ Schedule plan can’t be published or deleted when
it's open for sign-up.
◦ When open for sign-up:
▪ The sign-up due date can’t be changed.
▪ The work shift details can’t be changed.
▪ New shifts can’t be added.
▪ If enabled for auto-assign, the agent assignment
in a shift can’t be changed.

Closed for sign-up

Schedule plan is closed for agents to sign up.

Sign up for your preferred shifts
Specify one or more shifts in a schedule plan for which you would prefer to sign up.

Before you begin

Role required: sn_shift_planning.agent

About this task

You can receive notifications when your manager makes a schedule plan available for sign up.
You can also receive notifications when the schedule plan that's open for sign up is due on the
current day or when it's due soon.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Schedule icon (

).

3. Select the Sign up shifts tab.
You can use keywords to search the schedule plans, and view all schedules with active shifts
for your assignment groups that you can sign up for. Use the pagination to scroll through all
available schedule plans.
The current state of each schedule plan displays as a highlight in each card. The table below
describes the highlighted value.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2206


<!-- page 2207 -->
Highlighted value

Description

Available

Shifts for the schedule plan are available for sign up.

Draft

Shifts you've considered for sign-up but have not completed the
sign-up process.

Completed

Submitted one or more preferred shifts within the schedule plan.

Closed Incomplete

The schedule plan currently does not have shifts for which you
could sign up.

Closed Complete

The schedule plan has at least one preferred shift for which
you've signed up.

4. Select the Overlapping time off icon (
) to analyze if the time off you have requested or the
ones that have been approved overlap with the schedule plan available to you for sign up.
5. To sign up for your preferred shifts, select Add shifts.
You can only sign up for shifts in the schedule plan that have not been published yet.
The Add shifts pop-up appears. You can search for shift using the search bar and select shifts
to save as draft.
You can sign up for a maximum number of shifts that your administrator has set up in the
sn_shift_planning.max_shifts_allowed_for_signup system property.
6. To save the selected shifts for sign-up, select Save Shifts and then select Save as draft.
7. Select the plus (+) sign and sign up for additional shifts.
When you have more than one shift, you can reorder them by using the up or down arrows in
card for each shift.
8. Select Submit.
All shifts you have added for sign up will be submitted.

Understanding user criteria for event types in Workforce Optimization for
Customer Service
Manage user access for any event type such as meeting, training, and time-off requests in the
team calendar.
You can include or exclude Create, Read, Write or Update, and Delete (CRUD) rights for event
types using the inclusion and exclusion user criteria access. You can perform the CRUD
operations for users, groups, or roles.

Note: By default, team members don’t have read-access to events of type Actual work.
For additional flexibility around managing the CRUD access, you can set the user criteria for
each event type. For example, if team members don't have access to edit their work shifts using
their role-based access, you can set that access using user criteria. You can set this access for
specific team members or for the whole group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2207


<!-- page 2208 -->
Inclusion and exclusion logic for event types

How inclusion and exclusion user criteria access works
When the user criteria rules get evaluated, it's done in the following order:
1. The system first evaluates the exclusion access for each criteria.
◦ If the exclusion access for a CRUD operation is set to true, then the system evaluates the
user criteria.
a. If the user doesn’t have access based on their role, then the user is denied access for the
specific CRUD operation.
b. If the user isn’t denied access, then the system evaluates the inclusion criteria.
◦ If the exclusion access for a CRUD operation is set to false, then the system evaluates the
inclusion criteria.
2. For the inclusion access, for a specific CRUD operation such as Create, the system checks if at
least one of the inclusion user criteria is set to true. If yes, then the system evaluates the user
criteria based on the user's role access.
◦ If the user:
▪ Has access for the CRUD operation based on their user role, then the user can perform
that action. For example, if the event type is training and the CRUD operation is Create
then the user can create the training event types.
▪ Doesn’t have access for the CRUD operation based on their user role, then the user can’t
perform that action.
◦ If at least one of the inclusion criteria isn’t set to true, the user doesn’t have access to the
specific CRUD operation. In this example, the user can’t create the training event types.

Note: The exclusion access always takes precedence over the inclusion access. If no
inclusion or exclusion access is set, then the role-based access is used for managing event
types.
Create user criteria for event types in Workforce Optimization for Customer Service
Add a user criteria record to specify which users, roles, and groups can access event types in
Workforce Optimization for Customer Service.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2208


<!-- page 2209 -->
Procedure
1. Navigate to All > Service Catalog > Catalog Definitions > User Criteria.
2. Select New.
3. On the form, fill in the fields.
User criteria form field
Field

Description

Name

Unique name for the user criteria

Users

Users who can access event types.

Groups

Groups who can access event types.

Roles

Roles who can access event types when you
apply the user criteria.

Advanced

Option to create a script for the user criteria.

Active

Enabling the check box makes the user
criteria available.

Companies

Companies who can access event types.

Location

Locations that can access event types.

Departments

Departments that can access event types.

Match All

Option to make every condition that is set
required when the user criteria are applied.

4. Select Submit.
Include or exclude user access for event types​
Add or remove access to users for any event type so that they can view event types that are
relevant only to them.​

Before you begin

Role required: sn_shift_planning.admin​

Procedure
1. Navigate to All > Workforce Optimization for CSM > Scheduling > Event Configuration.
2. Select an event.
3. Exclude or Include specific CRUD access for users to events.
To

Do this

Exclude users for which you do not want to
enable specific access to event types.

Important: For exclusion, a Create

access will deny the user from creat­
ing events because it excludes that ac­
cess for the user. The same principle
applies to any of the CRUD operations.

a. Select the Evaluate access for exclusion
tab.

Note: You can set the CRUD access
for each user criteria where you would
exclude the user from specific CRUD
operations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2209


<!-- page 2210 -->
To

Do this

b. To create a new Event Exclusion User Crite­
ria, select New.
c. In the Name field, enter a name, which is an
entity of users that is evaluated for the ex­
clusion user criteria for the selected event
type. This entity identifies and associates
the user criteria to the event type..
d. In the User criteria field, select the user cri­
teria record for which you want to set exclu­
sion CRUD operations.
e. Select the CRUD operations for which you
do not want to give access.
f. Select Submit.
Include users for which you want to enable
specific access to event types.

Important:
For inclusion, for specific CRUD opera­
tion such as Create, the system evalu­
ates if at least one of the inclusion user
criteria is set to true:
◦ If any of the criteria is set to true,
then the system checks if the user
satisfies the criteria.
▪ If the user satisfies the criteria,
then they have access for the spe­
cific CRUD operation.
▪ If the user does not satisfy the cri­
teria, then they don't have access
to the CRUD operation.
◦ If none of the criteria is set to true,
the user has access to the specific
CRUD operation. This is based on
the default behavior where all users
have access based on their roles be­
fore they're added to the user crite­
ria.

a. Select the Evaluate access for inclusion
tab.
b. To create a new Event Inclusion User Crite­
ria, select New.
c. In the Name field, enter a name for the
event inclusion user criteria.
d. In the User criteria field, select the user cri­
teria record for which you want to set inclu­
sion user criteria access.
e. Select the CRUD operations for which you
want to give access.
f. Select Submit.

4. Click Update.
Verify access criteria for a group or a team member in Workforce Optimization for Customer
Service
Check what create, read, update, and delete rights your groups or your team members have for
events to make sure that they have the correct permissions that they need.

Before you begin

Role required: sn_shift_planning.admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2210


<!-- page 2211 -->
Procedure
1. Navigate to Workspaces > Manager Workspace.
2. In the lists module, go to Scheduling > Event type.
3. Select an event for which you want to verify user access.
4. Select the User access tab.
5. Do any of the following.
To

Do this

Verify user access for all your groups

Select All my groups.
a. Select Specific groups and team members.

Specific groups and team members

b. In the Specific groups field, enter the
groups for which you want to verify user ac­
cess.
c. In the Team members field, select the mem­
bers of your team for which you want to veri­
fy the access.
d. Select Check user access.

The screen displays the create, read, write, and delete columns as true for each team member
that has access to the specific type of access to the selected event.

Teams in Workforce Optimization for Customer Service
Use Teams to track and analyze performance trends for your teams from a single location.
You can monitor the trends for each agent within your team and compare your agents or team
members with one another.
With Teams, you can do the following:
• Identify skill gaps so that you can recommend which skills are needed to coach your agents.
• Organize your teams into assignment groups. You can add a set of key performance indicators
(KPIs) to help you measure team performance consistently across the groups. For example, the
Customer Service Desk unit contains multiple teams, such as Hardware and Network Support.
You can create a KPI group for the Customer Service Desk unit and then add Hardware and
Network Support as assignment groups to this KPI group. Next, you add a set of KPIs to the
KPI group. With this data, you can measure the performance trends across the Hardware and
Network Support teams.
• Compare KPIs between multiple teams belonging to the same KPI group.
• View the KPIs between the selected date range.
• Drill down into a Team level KPI to view the split of KPIs across all individual team members.
• View the KPI trend to analyze the future forecasts for each of the KPIs, if the date range has the
latest values.
• Targets can be set on the KPIs through the team performance page at the global or individual
level. When such targets are set, the trendline reflects the targets.
• Drill down to the individual agent level to view a 360 degree view of the current work, historical
KPIs, presence history, channel capacity utilization, skills, and upcoming time-offs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2211


<!-- page 2212 -->
Analyze the performance trends for your teams
Analyze trends to monitor your team's performance and adherence within a KPI group.

Before you begin

Role required: sn_csm_wfo_workspa.manager

About this task

Analyze the data by drilling down into the data for a team, a specific team member, an indicator,
or a case.

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Teams

icon.

3. Select a date range to view your teams' performance for that time period.
You can set the default date range using the sn_team_perf.default_date_range
system property.
4. Analyze team performance.
a. Select a team.
b. In the Performance tab, track and analyze the overall indicator performance for all members
in the team.
c. Drill down into the data for this team:
Performance indicators
To

Do this

Analyze indicator performance

▪ To analyze the indicator performance for the team,
click an indicator value for the team in the header row.
▪ To analyze indicator performance for a team member,
click an indicator value for the team member.

Track cases

Click the Tasks tab and analyze all cases related to the
team.
▪ To view the cases details, select a case.
▪ To view the a team member's details, select a team
member.

You can also review cases, details of assignment groups, additional managers, and information
relevant to the team.
Related topics
Setting up Teams Workforce Optimization for Customer Service

Coaching in Workforce Optimization for Customer Service
By using Coaching in Workforce Optimization for Customer Service, you can assess your team's
abilities to efficiently resolve cases by reviewing their work at critical moments of customer
service.
With Coaching, you can do the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2212


<!-- page 2213 -->
• Recommend training for your agents to address skill gaps.
• Use the coaching opportunities that are available by default to coach your agents. You can also
create a coaching opportunity
using the Coaching application specific to your agent needs.
• Use assessments and surveys to apply consistent, measurable scores across teams.
• Use Predictive Intelligence to recommend skills for your agents and provide training to address
those skill gaps.
Skills Overview in Workforce Optimization for Customer Service
Use Skills Overview to analyze skill data such as how many skills are assigned to users and tasks.
You can also see how many experts you have for a particular skill and the overall skill coverage
by your teams.
Access Skills Overview from the Teams application:
1. Go to Workspaces > Manager Workspace.
2. Click the Teams icon

.

3. Select a team.
4. Click the Skills tab.
5. Select a skill.
You can access the Skills Overview page when you click on a skill in a user profile page in any
Workforce Optimization for Customer Service application.

Note: You must enable the Coaching With Learning application to view the reports from
the application. For enabling this application, see Activate Workforce Optimization for
Customer Service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2213


<!-- page 2214 -->
Use cases
Use Cases
User

Skill Admin [skill_admin]

Landing page use

• Analyze all experts available for each skill.
• Drill down into the skill hierarchy.
• Number of skills assigned to users and tasks.
• The mean time taken to resolve incidents for that skill.
• Visualize how many users you have at different skill levels.

Indicators
MTTR of incidents of skill - Mean time taken to resolve incidents with this skill.

Breakdowns
The indicator is broken down by Skill.

Components
Components
Component Name

Type

Description

Skill Overview Container [snmanager-skill-overview-container]

VisualizationContains the following components:
components
• Reports
• Mean Time to Resolution (MTTR) indicator
• Skill Coverage pie chart
• Content tree
• Skill Experts components

Skill Tree Connected [sn-managerskill-tree-connected]

Tree

Displays the skill hierarchy. If the selected
skill does not have a skill hierarchy then
the component will not display on the Skill
Overview page.

Skill Experts [sn-manager-skillexperts-connected]

List

Displays all users who are at the expert level
for the skill.

Skill Coverage [now-uxfvisualization-connected]

Pie-chart

Displays the percentage as well as the
number of users with different levels of
expertise for the skill.

Reports

Important: The Pending Users and Assigned Tasks reports display when you enable the
®

Coaching with Learning application from the ServiceNow Store. To enable this application,
see Activate Workforce Optimization for Customer Service.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2214


<!-- page 2215 -->
KPIs
Title

Type

Source table

Description

Assigned Users

User Skill
[sys_user_has_skill]

The number of users
who have the selected
skill assigned to them.

Assigned Tasks

Task Skill
[task_m2m_skill]

The number of tasks
for which this skill has
been assigned.

Pending Users

Pending Users
[sn_lc_learning_task]

The numbers of users
who are yet to be
assigned the selected
skill from the learning
task.

Course Items

Learning Course Item
[sn_lc_course_item]

The number of
internal and external
courses that have the
skill associated with
the course item.

Assess the quality of completed tasks
Assess the ability of your agents to resolve cases or the quality of their completed tasks.

Before you begin

You can create an assessment from an interaction or any task type.
When you manually create an assessment, you can add a survey to it. Coaching assessments
also get created and assigned to the coach based on the trigger conditions that are defined in
coaching opportunities.
Role required: sn_coaching.coach
Watch this short video to get an overview on coaching, assessments, and trainings.
Workforce Optimization for Customer Service Coaching Overview.

About this task
If the coaching opportunity
includes a survey, you can opt to take the survey and the
assessment. When you use a survey to assess a trainee , the score for the survey is
automatically calculated when you complete the survey. The assessment rating is then updated
based on that score.
The Coaching Overview screen displays the average quality of the tasks that were completed in
the past 30 days for your assignment groups.
• The donut chart displays the number of assessments in various states of completion. You can
point to one of the states and click to open all assessments in that state.
• The bar chart displays assessments created by coaching opportunities. You can click on any of
the data in the graph to access the assessments.
• You can click on the graph that displays the indicator data and access detailed information on
the indicator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2215


<!-- page 2216 -->
Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Coaching (

) icon.

3. Do any of the following.
To

Do this

a. Click the Lists (

Perform adhoc assessments

) icon.

b. Select any record, such as a case or interac­
tion, for which you want to create an assess­
ment.
c. Select the Assessments ( ) icon. The assess­
ment screen appears in the right panel.
d. Click the plus (+) icon.
a. Click the Coaching (

) icon.

b. Select any record for which you want to create
an assessment.
Use assessments triggered by coaching
opportunities

Note: Click the Active Assessments
tab to view assessments of all teams for
which you are a manager or an additional
manager.
c. Select a case to assess.

4. On the form, fill in the fields to assess the agent.
Assessment form
Field

Description

Opportunity

Coaching opportunity that is associated with the coaching
assessment.

State

State of the assessment.
◦ Open: New coaching opportunity
◦ Work in progress: Trainee is being coached
◦ Resolved: Trainee is assigned coaching programs and training
modules.
◦ Closed Complete: Assessment has been resolved and closed.
◦ Closed Incomplete: Assessment that has been closed but not
completed, typically because the coaching assessment Due
Date has expired.

Assessment Rating

How well the agent resolved the incident. The Coaching
application automatically populates this field when a coach
completes a survey for the trainee.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2216


<!-- page 2217 -->
Field

Description

Follow up

Whether the coach must take further action to improve the trainee
performance.

Comments

Notes, if any, to add about the assessment.

Survey taken by coach

Survey for the trainee taken by the coach.
You can add a survey for an assessment when you create the
assessment manually or when the coaching opportunity triggers
an assessment that does not have a survey.
When a coaching opportunity triggers an assessment and
contains a survey, the survey is automatically added to the
assessment and cannot be changed by the coach.

Survey taken by trainee

Survey for the coach taken by the trainee.

Add skills

Skills to add to the trainee profile when the assessment is
complete. When you click this field, it displays all skills and the skill
levels that are not in the trainee profile.

Add training

Training to assign to the trainee.
You can also assign learning tasks from course items.

5. Do the following:
◦ To complete the adhoc assessment, click Save.
◦ To complete assessments creating using coaching opportunities, click Complete
assessment.
Manage skills using Workforce Optimization for Customer Service
Add or update skills for an agent. You can approve predicted skills if the skill is necessary for the
agent to complete assigned tasks. You can also reject a skill if it doesn't apply to the agent.

Before you begin

Role required: skill_manager

About this task

The Predictive Intelligence application for skills displays the recommended skills on each agent's
profile. The application uses sample cases that the agent has worked on to recommend skills for
an agent.
You can view skills for all users grouped by assignment group and the overall skill coverage for
each group.

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Coaching (

) icon.

3. Click the Skills tab.
You can view the list of all assigned skills and the skill level for each agent on your team. For
more information on skills and skills levels, see Skills Management .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2217


<!-- page 2218 -->
You can also filter the skill matrix based on users, groups, skill type, skill level, or skill category.
Reset the filter if you want to view the skills for all users.
4. Add a skill or skill level.
To

Do this

a. In the skill matrix, click Add for the skill that you want to add to
the agent.
Add a skill

b. Select the Skill Level field and choose a level for the skill.
c. Click OK.
The skill gets automatically added to the agent.
a. In the skill matrix, select a skill level for an agent.

Update a skill level

b. Select the skill level that you want to add for the agent.
c. Click OK.

5. Approve or reject a skill that is recommended by Predictive Intelligence.
a. In the skill matrix, click Recommended to approve and recommend a skill for the user.
b. In the Details tab, review the request for skill approval, the sample case resolutions that
were used to predict the skill, and the activity stream.
◦ To approve a skill, click Approve. The skill is added to the agent and the lowest level for the
skill is automatically associated with the added skill. The state for the request changes to
Approved and the skill is added to the agent.
◦ To reject a skill, click Reject. The state for the request changes to Rejected. Predictive
Intelligence does not recommend the skill for the user again and the field changes to Add.
◦ Click the More Options (
) icon and select Save.
The application assigns the skill to the user. If the assigned skill does not have a skill level, the
application adds the basic skill level to the user.
Coaching with Learning
Use Coaching with Learning to train your agents with internal and external learning content.
Organize similar content in catalogs. Assign learning tasks and track completion.

Important: Coaching with Learning is available when you enable the Coaching with
®

Learning application from the ServiceNow Store. To enable this application, see Activate
Workforce Optimization for Customer Service.
Coaching with Learning
Create a learning catalog
Create a catalog to organize related content into categories.

Before you begin

Role required: sn_lc.catalog_manager

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Coaching (

) icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2218


<!-- page 2219 -->
3. Click the Learning tab.
4. Click Learning Catalogs and select My Catalogs.
5. Create a catalog.
a. Click New.
b. In the Title field, enter a unique name for the catalog.
c. In the Description field, enter a description for the catalog.
d. Click Save.

Note: The catalog is visible to all groups that you directly or additionally manage.
6. Add course items to the catalog.
a. Click the Content tab.
b. Click Add.
c. In the Add Learning Courses pop-up window, select all course items you want to add to the
catalog.
d. Click Add. The course items are added to the catalog.

Note: To remove any course item you have added, select the course item and click
Remove.

7. Add a group to a catalog.
a. Click the Applicable Groups tab.
b. Click New.
c. In the Group field, select a group that you want to associate with the catalog.
d. Click Save.
Create a learning task
Create learning tasks for agents to keep track of their learning activities.

Before you begin

Role required: sn_lc.task_creator

About this task

Set learning task completion due dates to include or exclude weekends using the
exclude_weekends_on_learning_task_due_date system property. For more
information, see Workforce Optimization for Customer Service Reference.

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Coaching (

) icon.

3. Click Learning Tasks and select All Tasks.
4. Create a learning task.
a. Click New.
b. Fill in the following fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2219


<!-- page 2220 -->
All tasks form fields
Name

Description

Assigned to

Name of the agent to whom you want to assign the learning task.

Course item

The course that needs to be completed by the agent.

Due date

Date when the agent must complete the course. Default is 5 days
after the creation of the learning task. This value is calculated from
the Days to Complete field for the course item. The due date field is
highlighted as follows:
▪ Green—if the task is due before the current day.
▪ Yellow—if the task is due on the current day.
▪ Red—if the task is due after the current day.

Catalog

The catalog that contains the course item for the learning task.

5. Click Save.
Create internal learning content
Add internal courses so that agents can learn new content and enhance their skill set.

Before you begin

Role required: sn_lc.content_creator

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Coaching (

) icon.

3. Click Learning Courses and select Internal Courses.
4. Create an internal learning course.
a. Click New.
b. Fill in the following fields in Details tab.
Internal courses form field
Name

Description

Title

Name of the course.

Internal source

Select the type of content for the course.
Here are the available types of courses:
▪ URL—Youtube, Vimeo, or any link for a video
▪ Knowledge article
▪ Free form

Days to complete

The number of days required to complete the course. Default value is
set to 5.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2220


<!-- page 2221 -->
Name

Description

Estimated
duration

Length of time when the course has to be completed. For example, for
a video, it is the duration of the video. For a KB article, the duration is
estimated based on the length of the article.

Description

Description of the course.

5. Click Save.
6. Add a skill to the internal content.
a. Click the Associated skills tab.
b. Click New.
c. In the Skill field, select a skill you want to associate with the internal content.
d. In the Skill level field, select a skill level for the selected skill.
e. Click Save.
7. Add a learning task to the internal content.
a. Click the Learning Tasks tab.
b. Click New.
c. In the Assigned to field, select a trainee to whom you want to assign the learning task.
d. In the Catalog field, select the catalog to associate with the learning task.
e. In the Due date field, click the calendar icon and select the date and time when you want to
trainee to complete the learning task.
f. Click Save.
Add external courses to coaching with learning
Add courses from external sources such as Udemy, Pluralsight, or Cornerstone to enable your
users to gain skills from external content.

Before you begin

Role required: sn_lc.learning_admin

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Click the Coaching (

) icon.

3. Click the Learning tab.
4. Go to Learning Courses > External Courses.
5. Select a course.
6. Click Go to course.
You can review and learn the external course.

Mobile experience for Workforce Optimization for Customer Service
Manage customer service cases from your mobile device with the Now Mobile Agent application.
You can stay connected and access information in real time so that you can complete your tasks
quickly.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2221


