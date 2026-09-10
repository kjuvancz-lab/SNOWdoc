# Zurich IT Service Management — Service Operations Workspace for ITSM

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 3391–3411 of 3857 | Part 4 of 4

Sections: Service Operations Workspace for ITSM (p2941); Explore (p2942); Configure (p2960); Customize (p3179); Operate (p3199); Manage (p3271); Optimize (p3389); Reference (p3403)

---

<!-- page 3391 -->
• Key performance indicators that matter most to you and Performance Analytics targets set for
you by your manager. For information on Performance Analytics, see Performance Analytics
targets .
• Pending training that has been assigned to you and when they're due.
• Service channels that you are assigned to and their current utilization.
• Skills and skill levels that you currently use and skill gaps that you may want to address.
• Upcoming PTO.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
When you click the home icon (
), you can view the status of your work, organizational
performance, current status of incidents, and unassigned incidents in the Service Operations
Workspace landing page.
2. Click the lists icon (

).

To

Do this

a. Click Incidents and select Assigned to me.
Access your profile from an incident
record

b. In the Assigned column, select your name.
The profile page appears. In that page, you can
access all the information that is related to your
profile.
a. Select the My Lists tab.
b. Click New List.
c. In the New List screen, click Create your
own.
d. In the List Name field, enter a name for the
list; for example, My Profile.

Create your profile for centralized access

e. In the Select Source field, select User (sys_­
user).
f. In the Add Filters condition builder, select
[Name] [is] [<your name>].
g. Click Create.
The workspace adds your profile to the My
Lists tab.
For information on creating a list, see Create My
.
a. Click Incidents and select Assigned to me.

Analyze Performance Analytics targets

b. In the Assigned column, select your name.
You can view your targets for a KPI for a given
date range if your manager has set the target for
that KPI.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3391


<!-- page 3392 -->
Service Operations Workspace - Scheduling
Use Service Operations Workspace to manage your schedule.
As an agent, you can use the Service Operations Workspace dashboard to see events such as
training and time-off that's related to the agent's shifts, or how many work shifts you have on the
current day and the day after the current day.

Note: If you have an upcoming PTO on the day after the current day, in the Upcoming

section, the Today list will display that you have an upcoming PTO the next day. If you are
on PTO the current day, this list will not display that you have a PTO.
Manage your schedule using the Service Operations Workspace
Look up your schedule, create an event of custom event type, request time off for an on-call
or work shift, or swap your shift with your peers using the calendar in Service Operations
Workspace.

Before you begin
• If your system administrator has enabled the

sn_uib_agent_sp.allow_agent_edit_break system property, you can edit the start
and end time of your break time in a shift span.

• If your system administrator has enabled the

sn_uib_agent_sp.allow_agent_add_remove_break system property, you can add
or remove your break time in a shift span.

Role required: sn_shift_planning.agent

About this task

If you can work during the requested shift, you can also approve your peer's request for shift
swap. When you request time off for an on-call shift, you can also propose an agent to cover the
shift. You can also filter agents in the team calendar based on team member, location, skills, shift
plan or events.
You can:
• Swap shifts with agents that are within your assignment group.
• Add attendees to the meeting or training event types.
• Edit or delete meeting or training event types that you have created.
• Edit or delete work event types if you're the logged-in user and if the event has been assigned
to you.

Note:
• If the agent's calendar in Workforce Optimization for ITSM is integrated with their
Microsoft Outlook calendar, they can view their shifts, schedules, and events such
as meetings, trainings, and time-off in your Microsoft Outlook calendar. For more
information, see Synchronize agent calendar in Workforce Optimization for ITSM with the
Microsoft Outlook calendar.
• When you create an event of types meeting or training, the logged-in user will always be
part of the attendees list and cannot be removed.

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Click the Schedule icon.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3392


<!-- page 3393 -->
Access the schedule:
◦ View your schedule by clicking the My Calendar tab. Then, use the list
schedule that you want to view by day, week, or month.

to select the

◦ View another agent's schedule by clicking the Team Calendar tab. Then, click an agent's
schedule to see that agent's work and break times.

Note: You can view the schedule for the primary assignment group and the on-call
group you’re part of.
3. Create an event of custom event type.
You can create, edit, or delete events of custom event types that your system administrator has
enabled for agent access.
a. Click New and select the name of the custom event type.
b. In the custom event type form, fill in the fields as required.
c. Click Save.
To edit the event, select the event, and then the edit icon (
and save the event. To delete it, select the delete icon.

) to make the necessary changes

4. Make a request.
◦ You can use the Compose field in the time-off request to communicate with your manager.
◦ You can use the Compose field in the shift swap request to communicate with your peers.
To

Do this

Request a shift swap

Create a shift swap or swap by selecting a shift.
To create a shift swap:
a. Click New and select Shift Swap.
b. Fill in the requestor details.
Your name is automatically populated in the Requestor field.
i. In the Date field, select the date for which you want to swap the
shift.
ii. In the Shift field, select the shift to swap. If you have only one
shift for the selected date, this field is auto-populated.
c. Fill in the details for the agent with whom you want to swap the shift.
i. In the Agent field, select the name of the agent.
ii. In the Date field, select the date for which you want to swap the
shift.
iii. In the Shift field, select the shift to swap. If you have only one
shift for the selected date, this field is auto-populated.
d. Click Submit.
To swap by selecting a shift:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3393


<!-- page 3394 -->
To

Do this

a. Select a shift on the calendar and click the swap shift icon.
b. From the Shift menu for your shift, select the shift that you want to
swap with another agent. This information is auto-populated when
you open the request using the swap shift icon.
c. In the Agent field for the requested shift, select the agent that you
want to swap with.
d. From the Shift menu for the requested shift, select the agent's shift
that you want to swap with.
e. Click Submit.
Request time off for a Create a new time-off request or select a work shift for which you want
work shift
to take time off.
To create a new time-off request:
a. Click New and select Time Off.
b. In the Start date field, click the calendar icon and select the date to
start taking time off.
c. In the End date field, click the calendar icon and select the date
you want to the end time off.
d. Click Save.
To create a request from a work shift:
a. Select the work shift in the calendar for which you want to take time
off and click the Request Time-off icon (

).

The start date and time and the end date and time are automatically
populated.
b. In the Title field, enter a name for the work shift.
c. In the Description field, enter a reason for the time-off.
d. Click Save.

Note:
◦ To edit a work shift, select the shift span for which you want to
edit the break time, select the edit icon ( ) in the work shift,
edit the desired break times and click Save.
◦ If you edit your time-off request after you submit it, the request
changes to Requested state.
Request time off for
an on-call shift

Create a new on-call time-off request or select an on-call shift for
which you want to take time off.

Note: The PTO approval preferences for each oncall group are set by your administrator. For more
information, see Configure preferences for a user group.The

com.snc.on_call_rotation.pto.approval.required
property must be set true. For more information, see System
properties for On-Call Scheduling.
To create a new request:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3394


<!-- page 3395 -->
To

Do this

a. Click New and select On Call Time Off.
b. In the Start date field, click the calendar icon and select the date to
start taking time off.
c. In the End date field, click the calendar icon and select the date
you want to the end time off.
d. In the Group field, select the group in which the agent that you
propose for cover belongs.
e. In the Proposed Cover field, select the name of the agent.
f. Click Save.
To create a request from an on-call shift:
a. Select an on-call work shift in the calendar for which you want to
take time off.
b. Click the Request Time-off icon (

).

The start date and time, the end date and time, and the group are
automatically populated.
c. In the Proposed Cover field, select the name of the agent.
d. Request time off.
e. Click Save.
The shift-swap request moves to the approval queue of the agent that you’ve requested to
swap with. For more information, see Approve or reject a shift swap
The time-off request moves to your manager's approval queue. For more information about
approvals, go to Track and manage your teams' schedule
Approve or reject a shift-swap in Service Operations Workspace
You can approve a shift swap requested by your peer if you are available to work for that time
period. You can reject it if you are unable to work then.

Before you begin

Role required: sn_shift_planning.agent

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Click the Schedule icon.
3. Click the Shift Approvals tab.
4. Select the request you want to approve or reject.
5. Review the details of the shift swap request and do one of the following:
◦ To approve the request, click Approve.
◦ To reject the request, click Reject.
If you approve a shift-swap, the application moves the request to your manager's approval
queue. For more information, go to Track and manage your teams' schedule.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3395


<!-- page 3396 -->
Request time off using ITSM Virtual Agent
Automate your request for time off using the ITSM Virtual Agent. Type keywords into the chatbot
to create and submit your request, which then gets automatically routed to your manager for
approval. You can also use Natural Language Understanding to make your time-off request.

Before you begin

The ITSM Virtual Agent Conversation Topics (com.snc.itsm.virtualagent) plugin must be enabled.

Note: To search shifts and schedules, you must generate the text index

for the Topic
[sys_cs_topic] table before you start using the ITSM Virtual Agent for making time off
requests.
Before you can use Natural Language Understanding
Request NLU model must be trained
and published

to make time-off requests, the Time Off
.

Role required: sn_shift_planning.agent

Procedure
1. Navigate to All > Service Portal > Service Portal Home.
2. Click the chat icon.
3. In the chat window, do one of the following to create the request:
◦ To use keywords, enter time off, vacation, or similar keywords.
◦ To use Natural Language Understanding, enter an utterance

.

4. Select the Time Off Request topic.
The calendar appears with the message, "When do you want to start your time off?"
5. Select the start date and time for your time-off request and click Select.
The calendar appears with the message, "When do you want to end your time off?"
6. Select the end date and time for your time-off request and click Select.
The "Would you like to enter the reason for your time off?" message appears.
7. Optional: Click Yes and enter the reason for taking time off and click Enter.
The message, "Your time-off request has been submitted and is in your manager's approval
queue," appears.
8. To view the submitted request on your calendar, click View submitted request (Request
Number).
Clock-in and clock-out your work shift in Service Operations Workspace
Clock in and clock out your work shifts using Service Operations Workspace. You can track
details, such as time attendance and time worked summary to know how close you are adhering
to your schedules.

Before you begin

Role required: sn_shift_planning.agent

About this task

The clock-in event is generated when you either login or set your status as Available in Service
Operations Workspace. The clock-out event is generated when you either logout from Service
Operations Workspace or set your status as Offline or Break.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3396


<!-- page 3397 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Click the Inbox icon (

).

◦ To clock-in your shift, set your status to Available.
◦ To clock-out from your shift, set your status to Offline or Break.

Result

You can view your time attendance and adherence in Lists > Schedule Adherence > Time
Attendance > Time Worked Summary lists.
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3397


<!-- page 3398 -->
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
Service Operations Workspace - Learning
Use Service Operations Workspace Learning to review learning courses and paths and complete
them.
As an agent, you can get recommendations on courses or paths that you may want to take,
complete learning paths and courses, and add skills to your skills set when you complete them.

Overview tab
Use the Overview tab to view your active or completed learning tasks, skills you’ve used
recently, and recommendations based on your past activities.

Section

Description

My active learning

View the learning tasks, which could include learning paths and
courses.
• These include the ones that your manager has assigned to you
and the ones you chose to self-enroll.
• They’re sorted by the due date and display the duration to
complete the task and the completion progress.
• You can select View all active learning to view all of your
active tasks.

Completed learning tasks
in the last 90 days

Monitor the status of enrolled learning paths and courses that
you've completed in the last 90 days.

My skills

Analyze how many skills that you have in your skills set at a given
time including the skills you've recently used.

You may like

See recommendations that you may like based on your past
activities or your teams' activities, what's trending, and courses
that were added recently to your library.

Discover tab
Use the Discover tab to:
• Browse the course catalog or filter them based on set criteria narrow down the display of them
to what's relevant to you.
• Analyze details for a course and path such as the time that it takes to complete them, or the
skills you have gained recently.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3398


<!-- page 3399 -->
• Get learning recommended to you based on your past activities or the activities of your teams
to which you belong. The content is grouped into different categories. For more information,
see Recommendation grouping.
• Select Browse recommended learning, and then select and enroll in the desired course item.

My learning tab
Use the My learning tab to:
• Analyze courses or paths that are still pending completion and when they're due. You can also
sort them by due date.
• See courses, which were assigned to you or the ones you've enrolled in that you've have
completed.
• Use the Assigned & enrolled filter to narrow down the search.
Take a survey or review skills to add to your skill set. You can receive surveys available for any
group to which you belong. You can make a copy of the survey and work on it to complete them.
Learning path and course item discovery in Service Operations Workspace
Browse courses or learning paths and take the ones that are of interest to you. You can also
discover them using Predictive Intelligence that provides recommendations based on past
activities.
Service Operations Workspace uses Predictive Intelligence to discover and suggest all courses
and learning paths that you might want to take based on the learning activities of the teams you
belong to and your previous learning activities.
Enroll in Learning to take a learning course or complete a learning path
When you enroll in a learning course or learning path, the application creates a learning task. You
can track the progress of the course or path using the learning task.

Before you begin

Role required: sn_wfo_cfg_itsm.employee

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Learning icon

.

3. Select the Discover tab.
To enroll in a course or a path by browsing

Do this

The full catalog

Enter a name or a description in the search field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3399


<!-- page 3400 -->
To enroll in a course or a path by browsing

Do this

Note: You can also narrow down the dis­
play of courses based on the following fields:
◦ Type—course or a path
◦ Skill—skill associate with the course or
path
◦ Source—internal or external
◦ Time to complete—estimated duration to
complete the course or path
◦ State—completed, in-progress, or unas­
signed or not enrolled
Select Browse recommended learning. The con­
tent is grouped into different categories. For more
information, see Recommendation grouping.

Recommended learning

4. Select a course or a path in which you'd like to enroll.
5. Select Enroll.
Complete learning tasks using the Service Operations Workspace
Enhance your skills set by completing learning tasks from internal or external learning content.

Before you begin

Role required: sn_wfo_cfg_itsm.employee

Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the Learning icon

.

3. Select the My learning tab.
You can view the details of the path and course items that you are working on.
◦ Select the Active tab to view all tasks that you have not yet started or the ones that are in
progress.
▪ The tasks display a highlight to show which tasks are due on the current day, due soon,
or are overdue. It also shows how long the course has been overdue. The most recently
created tasks are highlighted as New.
▪ You can also see which tasks you've self-enrolled and which tasks were assigned to you
and also the progress of each course or path.
▪ You can filter the tasks to display either all tasks that were assigned to you or all the ones
you enrolled in or both.
▪ You can sort the task by the date the task is due.
◦ Select the Completed tab to view the list of tasks sorted by the date they were completed.
4. Complete a learning task.
If

Then

The task is associated with a learning path

You can do any of the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3400


<!-- page 3401 -->
If

Then

◦ Select the task and view details of the task
such as the path description, the path ob­
jective, skills associated with that task, and
the task progress.
◦ Select a task that's in progress and com­
plete it.

Note: You must complete the cours­
es in the path in the given order to com­
plete the learning task. After you com­
plete all learning tasks in a path, the
course items associated with the path
display the status as Complete in the
Discover tab.

You can view the course description and the
skills associated with the course item.
The task is associated with a course item

After you complete an internal course item, se­
lect Mark as Complete.

Note: After you complete an external
course item, it is automatically marked
as complete.
If you have a quiz associated with the learning
path:
a. Select the path.
b. Select the course item which is a quiz.
The task is a quiz associated with a learning c. Select Go to quiz.
path
d. Select Take the quiz.
e. Select Get started.
f. Answer each question in the quiz.
g. Select Submit answers.
The skills associated with the tasks are added to your skill set.
Review skills to add to your skill set
Evaluate the skill proficiency for an existing skill or add a new skill and request approval to
update those skills in your skill set. Get notified when your manager requests a skill review.

Before you begin

Role required:sn_wfo_skillreview.user

About this task

You will receive a notification when your manager initiates or approves a skill review request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3401


<!-- page 3402 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Select the List icon (

).

3. Send a request to review an updated skill proficiency or to review a new skill to be added to
your skill set.
To

Do this

a. Go to Skill review requests > Pending user review.
You can also access the skill review request from
your notifications.
b. Select a skill request review record.
Send a request to review an updat­
c. In the Skill review results tab, evaluate the existing
ed skill proficiency
skill levels for the list of skills displayed in the record.
You can use the pagination to scroll through the skill
review results.
d. In the New skill level field, update the new skill level
for a skill based on your proficiency.
a. Select Request skill review.
b. In the Title field, enter a title for the request.
c. Select Save. The Skill review results page appears.
d. Select Add new skill.
Send a request to review a new
skill to be add to your profile

e. In the Skill field, select a skill that you want approval
for to add to your skill set.
f. In the Skill level field select the skill level based on
your proficiency.
g. Select Save. An Add new skill section appears be­
low the Skill review results section. You can add more
new skills and select the skill levels for each added
skill and select Save.

4. Select Submit for review.
When your manager approves or rejects the skill review request and completes it, you will
receive a notification.
Take a survey in Service Operations Workspace
Get notified when a survey is assigned to you. Complete the survey to provide feedback.

Before you begin

Role required: sn_wfo_cfg_itsm.employee

About this task

You can respond to surveys or your assessments. You can access surveys available for any
group to which you belong.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3402


<!-- page 3403 -->
Procedure
1. Navigate to Workspaces > Service Operations Workspace.
2. Access your profile.
For more information accessing your profile, see Access your profile in Service Operations
Workspace.
3. Select the Assessments tab.
4. Go to Surveys > Open.
5. In the Metric type field, select the survey you would like to take.

Note: You can also select the Notifications icon and select the survey.
You will get notified 7 days before, the day before, and on the day when the survey will be
available for you to complete.
6. Select Take a survey.
7. Complete the survey.

Service Operations Workspace for ITSM reference
Reference topics provide additional information about ServiceNow Service Operations
Workspace.
For information about components installed with Service Operations Workspace for ITOM, see
Service Operations Workspace for ITOM reference .

Terminology in Service Operations Workspace for ITSM
You can familiarize yourself with the most used terms in Service Operations Workspace for ITSM.
SOW terms and descriptions
SOW terms

Description

Agent

A person within your company’s ecosystem (internal or external) who can
view, work, and respond to your end-user's tickets.

Requester

An end-user (external or internal) who raises incidents or service requests in
the IT Support Portal.

Configurable
workspace

Workspace built using UI Builder components.

Version compatibility between Service Operations Workspace for ITSM and
Service Operations Workspace ITOM
Look for the version compatibility between Service Operations Workspace for ITSM and Service
Operations Workspace for ITOM applications.

Version compatibility chart
Ensure that the following applications have compatible upgraded versions:
• Service Operations Workspace ITSM Applications application (sn_sow_itsm_cont)
• Service Operations Workspace ITOM Applications application (sn_sow_itom_cont)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3403


<!-- page 3404 -->
Compatible Service Operations Workspace versions
Service Operations Workspace for ITSM
(sn_sow_itsm_cont)

Service Operations Workspace for ITOM
(sn_sow_itom_cont)

1.1.x

21.0.y

1.2.x

21.1.y

1.3.x

21.2.y, 21.5.y, and 21.6.y

2.0.x

22.0.y

2.1.x

22.1.y and 22.y.y

3.1.x

23.y.y

4.x.x

24.y.y

5.0.x

24.2.y

5.1.0

25.3.x

6.1.1

26.1.y

7.0.x

26.3.y

8.0.x

26.9.0

8.1.x

26.9.0

Additional roles for SOW admin
You can add various user roles to Service Operations Workspace (SOW) Admin role to perform
SOW configurations.
Additional Roles required for SOW Admin
Role

Description

Inherited roles

sn_admin_center.read_only

Provides
None
configuration
access to the
adoption blueprint
section of the
Overview and
Learning page
in SOW Admin
Center.

script_include_admin

Provides
configuration
access to the
following sections
of the Landing
Page in SOW
Admin Center:

teamdev_code_reviewer

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3404


<!-- page 3405 -->
Additional Roles required for SOW Admin (continued)
Role

Description

Inherited roles

• Greetings
• Tier1 - Upcoming
tasks
• Tier2 Upcoming tasks
ui_builder_admin

Provides
configuration
access to the
following pages
in SOW Admin
Center:
• List
configurations Collapsed lists
section in the
landing page
• UX App Route
section in the
Contextual
side panel
configurations
page
• Set display
count to
improve list
loading section
in the SOW
Properties page
• Overview - tab
visibility for tier 1
agents - Toggle
button in the
Incident record
page
• Overview tab
section in the
Problem record
page
• Overview tab
section in the
Change record
page

personalize

Provides
configuration
access to

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3405


<!-- page 3406 -->
Additional Roles required for SOW Admin (continued)
Role

Description

Inherited roles

following sections
of the incident
record page in
SOW Admin
Center:
• Overview Summary
• Overview Impact
• Overview Cause
• Overview Resolution
• Details - Record
• Details - New
Record
form_admin

Provides
configuration
access to
following pages
in SOW Admin
Center:
• Overview Summary
section in the
Incident record
page
• Overview Impact section
in the Incident
record page
• Overview Cause section
in the Incident
record page
• Overview Resolution
section in the
Incident record
page
• List
configurations
- List view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3406


<!-- page 3407 -->
Additional Roles required for SOW Admin (continued)
Role

Description

Inherited roles

configurations
in the Landing
page
personalize_form

Provides
configuration
access to the
following pages
in SOW Admin
Center:
• Section fields
in the Problem
record page
• Details tab in
the Problem
record page
• Details tab in
the Problem
task record
page
• Section fields
in the Change
record page
• Details tab in
the Change
record page
• Details tab in
the Change task
record page
• List
configurations
- List view
configurations
in the Landing
page

dashboard_admin

Provides
configuration
access to the
following sections
of the Landing
page in the SOW
Admin Center:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3407


<!-- page 3408 -->
Additional Roles required for SOW Admin (continued)
Role

Description

Inherited roles

• Tier1 - Donut
configurations
• Tier2 - Donut
configurations
evam_admin

Provides
configuration
access to the
following sections
of the Landing
page in the SOW
Admin Center:
• Tier1 Announcements
• Tier2 Announcements

user_criteria_admin or user_admin

Provides
configuration
access to the
Overview - tab
visibility for tier 1
agents - Configure
button section
of the Incident
record page in
SOW Admin
Center.

sn_templated_snip.template_snippet_writer Provides
configuration
access to the
Response
templates section
of the Incident
record page in
SOW Admin
Center.
Incident Manager
[incident_manager]
(Existing role with added responsibilities)

• Manages
incident
properties and
major incident
trigger rules.

itil

• Can create
and edit
Communication
Plan Definitions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3408


<!-- page 3409 -->
Additional Roles required for SOW Admin (continued)
Role

Description

Inherited roles

problem_manager

Responsible
problem_coordinator
for the overall
Problem
Management
process and can
configure Problem
Management
settings in the
SOW Admin
Center. Also, act
as a problem
coordinator.

change_manager

Provides access
to configurations
related to Change
Management
in SOW Admin
Center.

• sn_sttrm_attribute_read
• sn_sttrm_condition_read
• sn_chg_soc.change_soc_admin
• personalize_decision_table_input
• sn_sow_admin.sow_admin_center_user
• itil

Service Operations Workspace for ITSM data model
Learn about Service Operations Workspace (SOW) for ITSM by viewing the data model
relationship diagram. This diagram shows the relationships between the tables within the
application and provide an overall picture of how SOW operates.

Data model
The following diagram shows the tables and their relationships within SOW for ITSM. You can
extend and leverage this data model to fit your needs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3409


<!-- page 3410 -->
Components installed with Service Operations Workspace ITSM Applications
Several types of components are installed with the Service Operations Workspace ITSM
Applications application (sn-sow-itsm-cont) installation, including user role, plugins, and
ServiceNow Store applications.

Roles installed

Role title [name]

Description

Service Operations
Workspace user

Enables users to access and perform basic operations in
Service Operations Workspace.

Contains
roles

None

[sn_sow.sow_user]

Plugins installed
Plugin

Description

UX Framework User Criteria

UX framework for user criteria.

[com.glide.ux.user_criteria]
Dynamic Related Records for
Configurable Workspace

Framework to display the contextual dynamic Related
Records section in a configurable workspace.

[com.snc.uib.sn_dyn_rel_rec]

Store applications installed
Store application

Description

Record Page for
Service Operations
Workspace

Record view that is used across various applications in Service
Operations Workspace. This view includes detailed record
information such as actions and related records.

[sn_sow_record]
Quick links component
for Service Operations
Workspace

Framework to create and maintain a list of customized hyperlinks in
Service Operations Workspace.

[sn_sow_quick_links]
Service Operations
Workspace Core

Core capabilities and workspace configurations for Service
Operations Workspace.

[sn_sow]
Change Management
for Service Operations
Workspace

Change creation process in Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3410


<!-- page 3411 -->
Store application

Description

[sn_sow_chg]
Collaboration services
for Service Operations
Workspace

Collaboration between peers and requester using Microsoft Teams in
Service Operations Workspace.

[sn_sow_collab]
Incident Management
for Service Operations
Workspace

Streamlined and automated incident response process to respond to
an unplanned event or service interruption and to restore services in
Service Operations Workspace.

[sn_sow_inc]
Recommendations for
Incident Management
[sn_sow_incident_rf]
Interaction
Management for
Service Operations
Workspace

Configurations to predict recommendations for an incident, for
example, recommendation rules, in Service Operations Workspace.
Use information from similar incidents and knowledge articles to
resolve incidents faster.
Streamlined interaction process to respond through a communication
channel (chat, phone conversation, or walk-up) in Service Operations
Workspace.

[sn_sow_interaction]
Interceptor UI for
Service Operations
Workspace

Interceptor user interface to create a task type for change and
problem in Service Operations Workspace.

[sn_sow_interceptor]
Service Operations
Workspace ITSM
Common

Common configurations shared across IT Service Management
applications in Service Operations Workspace.

[sn_sow_itsm_common]
On Call Scheduling
for Service Operations
Workspace

On-call support for incidents in Service Operations Workspace.

[sn_sow_on_call]
Problem Management
for Service Operations
Workspace

Problem creation process to identify the cause of a service
interruption reported by a significant or recurring incidents in Service
Operations Workspace.

[sn_sow_problem]
Request Management
for Service Operations
Workspace

Request creation process and support for the entire life cycle of
requests in Service Operations Workspace.

[sn_sow_req]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3411


