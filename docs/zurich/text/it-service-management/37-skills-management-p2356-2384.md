# Zurich IT Service Management — Skills Management / Advanced configurations

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2356–2384 of 3857

Sections: Skills Management (p2356); Advanced configurations (p2364)

---

<!-- page 2356 -->
1. In the application filter navigator, enter sys_auto_flush.LIST and press Enter. The Auto
Flushes list displays.
2. In the Tablename column, select the Learning User Course Activity
[sn_lc_user_course_activity] table.
3. In the Age in seconds field, change the value to the time you desire to retain the records.

Skills Management in Workforce Optimization for ITSM
Manage skills for your teams from a central location. Analyze skill data and assess the skills that
you need for your organization. Use Predictive Intelligence to recommend skills for your team.

Note: As an admin, you can add sample data to get started building
your skill taxonomy using the Skills Library Data for Skills Management
(com.snc.skills_management.seed_data) plugin. You must have the Workforce Optimization
for ITSM Configurable Workspace plugin (sn_wfo_cfg_itsm) installed. For more information
on downloading skills sample data, see Create skill categories using sample data .

Setting up skill prediction in Workforce Optimization for ITSM
Collect skill data based on skills agents have used for incident resolution. Use supervised
learning to recommend these skills for agents to resolve similar open incidents. You can also
find patterns in how skills are used for incident resolution and use unsupervised learning to
recommend skills for agents.

Before you begin

Predictive Intelligence must be set up and configured on your instance to train the models. For
more information, see Predictive Intelligence .
Activate the Skill Recommendation application plugin (com.snc.sre) to use predictive intelligence
for recommending skills.
Role required: sn_sre.admin

Procedure
1. Configure the properties for the Skill Recommendation application.
2. Run the solution definition models to train the supervised and unsupervised solutions.
For more information on training a solution, refer to Create and train a similarity solution

.

3. Run the Start skill prediction scheduled job everyday to start predicting skills for
incidents or agents.
This scheduled job is inactive by default. When you activate it, the job runs daily at 1:00 AM on
all incidents resolved the previous day. The job then adds the skills to the User Predicted Skill
[sn_sre_user_predicted_skill] table and Task Predicted Skill [sn_sre_task_predicted_skill] table.
Use extension points for skill prediction
Use scripted extension points to customize skill prediction for tasks.

Before you begin

The Skill Recommendation extension point is included with the Skill Recommendation
(com.snc.sre) plugin.
Role required: admin

About this task

You can create multiple implementations for each extension point and provide an order number
for each implementation. The implementation that has the lowest order number is executed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2356


<!-- page 2357 -->
Procedure
1. Navigate to All > System Extension Points > Client Extension Points.
2. From the Extension Points list, select Skill Recommendation (sn_sre.SkillPredictionAPI).
3. Do one of the following:
◦ To create a new skill recommendation implementation, click Create Implementation.
◦ To modify an existing implementation, from the Implementations related list, select a class.
4. Modify the script as required.
5. Click Update.

Adding skills to agents' skill set in Workforce Optimization for ITSM
Analyze all skills and the levels for each skill that your agents have from one location.
Skill Recommendation
The skill matrix in Workforce Optimization for ITSM in the Coaching application displays all skills
for all the teams that you manage or additionally manage.
Using the skill matrix, you can:
• View a list of all skills and the level for each skill for every agent grouped by assignment group.
• View the overall skill coverage for each group.
• Filter the skill matrix based on users, groups, skill type, skill level, or skill category.

Note: Reset the filter if you want to view the skills for all users. When you reset the filters,
all filters other than the Skill filter are reset. The Skill filter retains the skill selections that
you've applied to display in the skill matrix.
You can view up to 50 skills at any point in time. For more information on skills and skills levels,
see Skills Management .
When your agents gain new skills you can add them manually or use Predictive Intelligence
to recommend skills that agents have used that have not yet been added to their skill set. For
information on how predictive intelligence works to recommend skills for agents, see Coaching in
Workforce Optimization for ITSM.
Add or update skills using Workforce Optimization for ITSM
Add skills or update skill levels for an agent so that it gets added to their skill set.

Before you begin

Role required: skill_manager

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace.
2. Select the coaching icon.
3. Select the Skills tab.
4. Add a skill or update a skill level.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2357


<!-- page 2358 -->
To

Do this

a. In the skill matrix, select Add for the skill that you want to add to
the agent.
Add a skill

b. In the Skill level field, select a level for the skill.
c. Select OK.
The skill gets automatically added to the agent.
a. In the skill matrix, select a skill level for an agent.

Update a skill level

b. Select the skill level that you want to add for the agent.
c. Select OK.

Approve or reject recommended skills in Workforce Optimization for ITSM
Approve predicted skills if the skill is necessary for the agent to complete assigned tasks. If the
skill doesn't apply to the agent, you can reject a skill.

Before you begin

Role required: skill_manager

About this task

The Predictive Intelligence application for skills displays the recommended skills on each agent's
profile. The application uses sample incidents that the agent has worked on to recommend skills
for an agent.

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace.
2. Select the coaching icon.
3. Select the Skills tab.
4. Approve or reject a skill that is recommended by Predictive Intelligence.
a. In the skill matrix, select Recommended to approve and recommend a skill for the user.
b. In the Details tab, review the request for skill approval, the sample incident resolutions that
were used to predict the skill, and the activity stream.
▪ To approve a skill, select Approve. The skill is added to the agent and the lowest level for
the skill is automatically associated with the added skill. The state for the request changes
to Approved and the skill is added to the agent.
▪ To reject a skill, select Reject. The state for the request changes to Rejected. Predictive
Intelligence doesn’t recommend the skill for the user again and the field changes to Add.
c. Select the more options (
) icon and select Save.
The application assigns the skill to the user. If the assigned skill doesn’t have a skill level, the
application adds the basic skill level to the user.

Initiate a skill review for teams or groups
Start a skill review process for your groups or specific team members so that they can review and
update their existing skills or to add new skills. Provide a due date for them to complete the skill
review.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2358


<!-- page 2359 -->
Before you begin
Skill Review

Role required: sn_wfo_skillreview.manager

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Select the Coaching icon (

).

3. Select the Skills tab.
4. Select Generate skill request.
You can save the generated skill request in Draft state and work on it at a later time.
5. Fill in the fields on the Initiate skill review form:

Field

Description

Title

Name for the skill review.

Due Date

Date by which the team member or group must complete the skill
review.

Assignment

◦ To my groups: sends the skill review to the team members is
all of your groups.
◦ Specific groups or team members:sends the skill review to
the specified groups or team members.

Skills to review

◦ Team member's existing skills: request for team members to
review their existing skill levels and update them.
◦ Additional skills: request team members to add new skills.

6. Select Submit.

Note: You can cancel a skill review request that you have submitted for review.
The agent will receive a notification to review the request.

Approve or reject a skill review request
Review skills when your team updates their skill proficiencies and requests approval. You can
approve or reject each of those skills. The skills that you approve are added to the agent's profile.

Before you begin

Role required: sn_wfo_skillreview.manager

About this task

You will receive a notification when an agent in your assignment group submits a skill review
request.

Procedure
1. Navigate to Workspaces > Manager Workspace.
2. Select the Coaching icon (

).

3. Select the Assessments tab.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2359


<!-- page 2360 -->
4. Select Skill review requests > Pending manager review.
5. Select an agent to approve or reject the skills.
In the Comments field, you can add a comment for approving or rejecting the skill.
◦ To approve one or more skills, select the skills and select Approve. You can also select
Approve All to approve all skills.
◦ To reject one or more skills, select the skills and select Reject. You can also select Reject All
to reject all skills.
6. Select Complete.
The skills you've approved gets added to the agent's skill set.

Routing work based on skills in Workforce Optimization for ITSM
Route work to your teams based on skills, schedule your teams' work, and train your teams to
enhance their skills set using Workforce Optimization for ITSM.
The video shows how skill-based routing works in Workforce Optimization for ITSM.
Skill-based routing
Automatically add skills to incidents or interactions in Workforce Optimization for ITSM
Define conditions for incidents or interactions and add skills required for those conditions using
skill determination rules. When new incidents and interactions that are created meet these
conditions, the skill determination business rule automatically adds the skills to those records. In
the Workforce Optimization for ITSM Channels and Work scheduler applications, the work items
get automatically assigned to the right agents based on the skills.

Before you begin

Role required: skill_admin

About this task

The following business rules are used in Workforce Optimization for ITSM skill determination:
• Skill determination for incident evaluates new incidents for the conditions
defined in the skill determination rules set for all incidents and adds those skills to the incident
records.
• Skill determination for interaction evaluates new interactions for the
conditions defined in the skill determination rules set for all interactions and adds those skills
to the interaction records.
The table below shows the skill determination rules available for Workforce Optimization for
ITSM.

Note: To add language detection skills, you must set dynamic translation APi. for more
information, see Dynamic Translation API

.

Default skill determination rules for Workforce Optimization for ITSM
Skill Determination
Rule

Source Table

Type

Description

Language Detection
Incident

Incident
[incident]

Advanced

The business rule evaluates new
incidents for the language entered in
the incident short description and adds

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2360


<!-- page 2361 -->
Default skill determination rules for Workforce Optimization for ITSM (continued)
Skill Determination
Rule

Source Table

Type

Description

that language as a required skill for those
incidents.
Language Detection
Interaction

Interaction
[interaction]

Advanced

The business rule evaluates new
interactions for the language entered
in the interaction short description and
adds that language as a required skill for
those interactions.

SAP Skills

Incident
[incident]

Simple

The business rule evaluates new
incidents for the Service field that starts
with 'SAP', 'sap', or 'Sap' and adds SAP
and Backoffice skills as required skills
for those incidents.

VPN Incident

Incident
[incident]

Simple

The business rule evaluates new
incidents for the Short description
field that contains 'VPN', 'vpn', or 'Vpn'
and adds Router and Switch and
Network skills as required skills for those
incidents.

VPN Interaction

Interaction
[interaction]

Simple

The business rule evaluates new
interactions for the Short description
field that contains 'VPN', 'vpn', or 'Vpn'
and adds Router and Switch and
Network skills as required skills for those
incidents.

Windows

Incident
[incident]

Simple

The business rule evaluates new
incidents for the Configuration item
field that contains 'Windows', 'windows',
or 'WINDOWS' and adds Windows
Installation/Setting and Windows
Servers skills as required skills for those
incidents.

Procedure
1. Navigate to All > Skills > Skill Determination Rules.
2. Add the desired rule for an incident or an interaction.
For information, see Create Skill Determination rules to assign skills to work items

.

Skill review request components in Workforce Optimization for ITSM
Workforce Optimization for ITSM installs roles and enables notifications when you install the
application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2361


<!-- page 2362 -->
Roles
Role title [name]

Description

Skill review manager
[sn_wfo_skillreview.manager]

Grants administrative rights to create, read,
update, and delete (CRUD) skill review request
records.

Skill review user [sn_wfo_skillreview.user]

Grants administrative rights to create, read, or
update skill review request records.

Notifications
Navigate to All > System Notifications > Provider > Notifications to access the notifications
below that are provided by default. For more information on adding notifications, see Provider
notification

Notification name

Value

Skill Request Pending Manager
Review

When enabled, the manager receives a notification when
their agent submits a skill review request to their manager
for review.
• Type:string
• Default value:true

Skill Request Reviewed

When enabled, the agent receives a notification when
their manager submits a skill request that has been
reviewed.
• Type:string
• Default value:true

Skill Request Cancel

When enabled, if the agent or manager cancels the skill
review request then the skill review request assignee will
receive a notification.
• Type:string
• Default value:true

Skill Request Pending User Review When enabled, the agent receives a notification that their
manager has submitted a skill request for the agent to
review.
• Type:string
• Default value:true

Skill Recommendation components in Workforce Optimization for ITSM
Workforce Optimization for ITSM uses roles to administer skill recommendation, tables to store
skill data, and properties to modify default behavior, and scheduled job to recommend skills in
configurable Workforce Optimization for ITSM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2362


<!-- page 2363 -->
Roles
Role title [name]

Description

Contains roles

Skill Recommendation
User [sn_sre.user]

Grants rights to view skill
recommendation tables.

wfo.user

Skill Recommendation
Admin [sn_sre.admin]

Grants administrative rights
to edit the properties for skill
recommendation.

• wfo.admin
• sn_sre.user

Properties
Navigate to Skill Recommendation > Configuration to configure these properties.

Property

Enable skill recommendation.
sn_sre.enable_skill_recommendation

Description

Enable this p
• Type:true

• Default va

Maximum number of skills to predict based on supervised learning.

Using superv
ordered by c

sn_sre.max_supervised_skills

• Type:Integ

• Default va

Maximum number of skills to predict based on supervised learning.

Using unsup
incident orde

sn_sre.max_unsupervised_skills

• Type:Integ

• Default va

Number of resolved similar tasks to use for predicting skills.

The number
learning, ord

sn_sre.number_of_similar_incidents

• Type:Integ

• Default va

Number of times Predictive Intelligence must predict the same skill for an agent before
recommending it for the agent.
sn_sre.user_predicted_skill_threshold

Similarity solution definition to recommend skills from similar incidents.
sn_sre.unsupervised_solution_definition_for_incidents

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

The number
before recom

• Type:Integ

• Default va

Name of the
resolve incid
definition, yo

2363


<!-- page 2364 -->
Property

Description

• Type:Strin

• Default va

Similarity solution definition to recommend skills for incidents.
sn_sre.supervised_solution_definition_for_incidents

Name of the
resolve incid
definition, yo

• Type:Strin

• Default va

Scheduled job
Scheduled job

Description

Start skill prediction

Runs the job every day at 1 AM on all incidents that were closed
the previous day. Recommends the skills used to close the
incidents to resolve similar open incidents.

Tables
Table

User Predicted Skill
[sn_sre_user_predicted_skill]

Description

• Stores how many times a skill has been predicted
for the user.
• Skills not recommended in the last 60 days are
automatically deleted from this table.

Task Predicted Skill
[sn_sre_task_predicted_skill]

• Stores the skills predicted to resolve each type of
incident.
• Tables created over 60 days ago are automatically
deleted from this table.

Advanced configurations for Workforce Optimization for ITSM
You can perform advanced configurations such as customizing Workforce Optimization for ITSM
pages, and defining filters for different modules. You can also specify the access to assignment
group data to display only the assignment group data relevant to the logged-in user.

Workforce Optimization for ITSM reference
Refer to install components such as roles, tables, and system properties to configure and
administer Workforce Optimization for ITSM.
To get details on which roles can be associated with each Workforce Optimization for ITSM
persona, see Roles in Workforce Optimization for ITSM .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2364


<!-- page 2365 -->
Reference overview
Find reference topics you need to that you need to complete to administer Workforce
Optimization for ITSM.

Benefit

Reference topic

Separate data, processes, and administrative
tasks into logical groupings called domains.

Domain separation and Workforce
Optimization for ITSM

Refer to roles and indicators used in the ITSM
manager workspace.

Workforce Optimization ITSM Manager
Workspace components

Refer to tables to store user and application
data or database views and a schedule job to
collect data for indicators.

Workforce Optimization for ITSM components

Refer to roles to administer channels and
Channel Management components in
queues, properties to configure default
Workforce Optimization for ITSM
behavior, and reports to analyze channel data.
Refer to roles to administer agent shifts and
schedules, properties, and user preferences
to configure default behavior.

Scheduling components in Workforce
Optimization for ITSM

Refer to roles to administer demand forecast,
Demand Forecast components in Workforce
properties to configure default behavior,
Optimization for ITSM
scheduled jobs to collect data for the
configurations, and more to configure demand
forecast.
Refer to properties to configure the Work
scheduler default behavior.

Work Scheduler components in Workforce
Optimization for ITSM reference

Refer to roles to administer teams and
properties to modify default behavior.

Teams components in Workforce Optimization
for ITSM

Refer to roles, tables, properties and more for
Coaching.

Coaching components in Workforce
Optimization for ITSM

Refer to roles and how to access notifications
for Skill review request.

Skill review request components in Workforce
Optimization for ITSM

Refer to roles, properties, scheduled job, and
tables for Skill recommendation.

Skill Recommendation components in
Workforce Optimization for ITSM

Workforce Optimization ITSM Manager Workspace components
The configurable ITSM Manager Workspace has roles to administer the workspace, properties to
configure default behavior, and indicators to analyze performance.

Roles
Role title [name]

Description

Manager Workspace User
[sn_wfo_cfg_ws.user]

Grants read access to
the Next Experience UI
Builder workspace.

Contains roles

• workspace_user
• canvas_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2365


<!-- page 2366 -->
Role title [name]

Description

Manager Workspace Manager
[sn_wfo_cfg_ws.manager]

Grants read access to
primary assignment
groups and additional
managers. Grants read
access to home and
list modules.

Manager Workspace Admin
[sn_wfo_cfg_ws.admin]

Contains roles

Grants administrative
rights to create,
read, update, and
delete (CRUD) all
applications and
settings in Manager
Workspace.

• sn_wfo_cfg_ws.user
• sn_wfo.user
• sn_wfo_skillreview.manager

• sn_wfo_cfg_ws.manager
• workspace_admin
• ui_builder_admin
• canvas_admin
• sn_wfo.admin

Workforce Optimization for ITSM components
The Workforce Optimization for ITSM application has tables to store user and application data or
database views and a schedule job to collect data for indicators.

Roles
To transition to the Workforce Optimization for ITSM base system roles, see https://
www.servicenow.com/community/workforce-optimization-blog/workforce-optimization-for-itsmwfo-itsm-transitioning-to-the/ba-p/2995242

Role title [name]

Description

Workforce Optimization
User [sn_wfo.user]

Grants read access
to primary group and
additional managers.

Contains roles

• pa_analyst
• sn_agent_forecast.user
• approver_user

Workforce Optimization
Admin [sn_wfo.admin]

Grants administrative
rights to create, read,
update, and delete
(CRUD) additional
managers.

Workforce Optimization
Grants read rights
ITSM Employee
for Coaching,
[sn_wfo_cfg_itsm.employee]Scheduling and Teams
applications.

• sn_wfo.user
• pa_analyst
• sn_agent_forecast.admin

• sn_wfo.user
• sn_shift_planning.agent
• sn_coaching.trainee
• sn_team_perf.team_performance_user
• awa_agent
• canvas_user
• sn_wfo_skillreview.user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2366


<!-- page 2367 -->
Role title [name]

Description

Workforce Optimization
Grants rights to
ITSM Manager
create, read, or
[sn_wfo_cfg_itsm.manager] update, Coaching,
Scheduling, Teams, or
Channel Management
applications.

Contains roles

• sn_wfo_cfg_ws.manager
• itil
• sn_walkup.walkup_manager
• sn_agent_forecast.user
• sn_shift_planning.admin
• sn_coaching.coach
• sn_team_perf.team_performance_manager
• sn_channel_mgmt.user
• sn_sre.user
• pa_target_admin
• awa_agent
• skill_manager
• sn_wfo_skillreview.manager
• sn_wfo_work_sched.manager
• sn_cti_core.user_manager

Note: This role is automatically
installed if you have integrated
Workforce Optimization for ITSM
with ServiceNow Voice.
• sn_process_optimization_analyst
Workforce Optimization
ITSM Admin
[sn_wfo_cfg_itsm.admin]

Grants administrative
rights to create, read,
update, and delete
(CRUD) Coaching,
Scheduling, Teams, or
Channel Management
applications.

• sn_wfo_cfg_itsm.manager
• sn_shift_planning.admin
• sn_coaching.admin
• sn_team_perf.team_performance_admin
• sn_agent_forecast.admin
• sn_sre.admin
• skill_admin
• sn_process_optimization_analyst
• sn_wfo_work_sched.admin

Workforce Optimization
Grants access to the
for ITSM Manager
manager workspace
base system role
landing page and the
[sn_wfo_cfg_itsm.base_manager]
list module.

• sn_wfo_cfg_itsm.base_employee
• sn_sre.user
• pa_target_admin
• skill_manager
• awa_agent
• sn_walkup.walkup_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2367


<!-- page 2368 -->
Role title [name]

Description

Contains roles

• sn_wfo_cfg_ws.manager
• survey_creator
Workforce Optimization
Grants access to the
for ITSM Agent
Service Operations
base system role
Workspace landing
[sn_wfo_cfg_itsm.base_employee]
page.

• canvas_user
• sn_sow.sow_user
• sn_wfo.user
• awa_agent
• itil

Filter Configuration Tables
Module Name

Schedule

Module Tables / Database View

• User [sys_user]
• User Skill [sys_user_has_skill]
• Agent Schedule [sys_shift_planning_agent_schedule]
• Schedule Event [sn_shift_planning_event]
• Manager Groups database view [sn_wfo_manager_group]

Coaching

• Skill [cmn_skill]
• Skill Category M2M [cmn_skill_m2m_category]
• Group Member [sys_user_grmember]

Channels

Manager Groups database view [sn_wfo_manager_groups]

Note: The filters for your channels have been custom built so
that you can navigate using Advanced Work Assignment channels
and queues. Because they were custom built, you can't create or
customize filters for channels module.

Scheduled job
Name

Description

WFO data collection

Runs the job on demand and collects data for all Workforce
Optimization for ITSM indicators.

Domain separation and Workforce Optimization for ITSM
Domain separation is supported in Workforce Optimization for ITSM. Domain separation enables
you to separate data, processes, and administrative tasks into logical groupings called domains.
You can control several aspects of this separation, including which users can see and access
data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2368


<!-- page 2369 -->
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

How domain separation works in Workforce Optimization for ITSM
Domain separation is supported in Workforce Optimization for ITSM and does not require any
setup or configuration.

Domain separation for Channels in Workforce Optimization for ITSM
For information on how domain separation works in Channel Management for Workforce
Optimization for Customer Service, refer to Domain separation and Advanced Work
Assignment .
Domain separated tables for Channel Management
• sn_customerservice_case
• interaction

Domain separation for Scheduling in Workforce Optimization for ITSM
When an agent schedule is generated and assigned to an agent, the schedule is only available
in the domain to which that agent belongs.
Domain separated tables for Scheduling
• sn_shift_planning_agent_schedule
• sn_shift_planning_agent_schedule_request
• sn_shift_planning_break
• sn_shift_planning_day
• sn_shift_planning_event
• sn_shift_planning_schedule_plan
• sn_shift_planning_schedule_shift
• sn_shift_planning_schedule_shift_agent
• sn_shift_planning_shift_plan
• sn_shift_planning_shift_swap_request

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2369


<!-- page 2370 -->
Domain separation for Teams in Workforce Optimization for ITSM
The sn_wfo_add_manager table is domain separated. When users are added as additional
managers, those users can only view users within that domain.

Domain separation for Skill Recommendation in Workforce Optimization for
ITSM
Domain separated tables for Skill Recommendation
• sn_sre_task_predicted_skill
• sn_sre_user_predicted_skill

Domain separation for Coaching in Workforce Optimization for ITSM
For information on how domain separation works in Coaching for Workforce Optimization for
ITSM, refer to Domain separation and Coaching

Global Search in Workforce Optimization for ITSM
Locate what you're looking for quickly using the global search in Workforce Optimization for
ITSM.
As an agent or a manager, easily find the information you need by searching users, groups,
shifts, schedules, or tasks using the search icon

.

Note: To search shifts and schedules, you must generate the text index

for the following

tables before you start performing the search for shifts and schedules:
• Schedule [sn_shift_planning_schedule_plan]
• Shift Plan [sn_shift_planning_shift_plan]

Requesting time-off using the ITSM Mobile Agent for Workforce Optimization
for ITSM
Using the ITSM Mobile Agent app, shift planning agents can access their schedule. They can
request time off to get their manager's approval or swap shifts with their peers and receive
notifications for those requests and approvals.
Workforce Optimization for ITSM Mobile Agent

Important: The ITSM Mobile Agent for Workforce Optimization for ITSM features are
available with the ITSM Mobile Agent 5.0 store application. For more information, see
Activate Workforce Optimization for ITSM.

Using On-Call Scheduling with Workforce Optimization for ITSM
If you are using Mobile experience for On-Call Scheduling along with the ITSM Mobile Agent
for Workforce Optimization for ITSM, you can access the On-Call Scheduling actions from the
Schedule section.
To access:
• Upcoming shifts: tap My calendar and view your shifts.
• Time-off requests: tap On-call time-off requests and view the list of requests awaiting your
approval and the ones for which you have completed the approval process.
• Who is on-call: tap Who is on-call to view the list of groups in the on-call schedule.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2370


<!-- page 2371 -->
Setting the number of days to display events in shifts on the ITSM Mobile Agent
As a Workforce Optimization admin [sn_wfo.admin], you can configure the number of days
events for shifts can be displayed on the mobile application using system properties. For more
information, see Properties in the Scheduling section in Scheduling in Workforce Optimization
for ITSM.
Related topics
Mobile experience for On-Call Scheduling
Notifications in ITSM Mobile Agent for Workforce Optimization for ITSM
Receive notifications when you manage shift-swap and time-off requests. Enable notifications for
the actions that are most relevant to you. For example, get notified when you receive a request
for approval from an agent who wants to swap shifts with a peer.
As a Workforce Optimization for ITSM agent (sn_shift_planning.agent) and a Workforce
Optimization for ITSM manager (sn_wfo_cfg_ws.manager), you can enable or disable
notifications for shift-swap and time-off requests and approvals. Agents can request a shift-swap
with their peers and get approval from their manager. They can also request approval for time-off
from their managers.
You must set your notification preferences in your desktop application to receive the notifications
in your ITSM Mobile Agent application.
To enable the notifications:
1. On your desktop application instance, click the gear icon
System Settings screen appears.

in the top-right corner. The

2. Click Notifications.
3. Enable Allow Notifications.
4. In the Notifications Category section, click Mobile - Shift Planning.
5. Enable the desired notification.

When you enable this
notification

Shift-swap approval request

You receive a notification when your

• Agents send shift-swap requests to approve.
• Your peer sends a shift-swap request to approve.

Shift-swap approved by
manager

Manager approves your request to swap shifts with your peer.

Shift-swap approved by peer

Peer approves your request to swap shifts with them.

Shift-swap rejected by
manager

Manager rejects your request to swap shifts with your peer.

Shift-swap rejected by peer

Peer rejects your request to swap shifts with them.

Time-off approval request

Agents send requests to approve time off.

Time off approved

Manager approves your time-off request.

Time off rejected

Manager rejects your time-off request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2371


<!-- page 2372 -->
Related topics
Setting notification preferences in Core UI
Make a request to swap shifts or take time off using the Mobile Agent application
Use the ITSM mobile app to look up your schedule, request time off, or swap your shift with your
peers. If you can work during the requested shift, you can also approve your peer's request for
the shift swap.

Before you begin

Role required: sn_shift_planning.agent

Procedure
1. Navigate to the ITSM Mobile Agent application.
2. Request time off.
To

Do this

a. In the Schedule section, tap My calendar.
b. Tap the date for which you want to make the re­
quest.
c. Tap the work shift for that day.

Note: Alternatively, you can swipe left
Request time off after reviewing your
schedule

on the shift you want to request time off
or shift swap and select the desired op­
tion.
d. Tap Request time off.
e. In the Title field, enter a reason for the time off
request.
f. In the Description field, enter a reason request­
ing time off.
a. In the Schedule section, tap Work shift timeoff requests.

Note: You can view your pending and
completed time-off requests.

Request time off after reviewing your
time-off requests

b. Tap the menu icon and then tap Request time
off.
c. In the Title field, enter a reason for the time off
request.
d. In the Start time field:
i. Tap the calendar icon

.

ii. Tap and select the date you want to start tak­
ing time off.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2372


<!-- page 2373 -->
To

Do this

iii. Tap the time field at the top-right corner of
the calendar and select the time to start tak­
ing your time off.
iv. Click OK.
e. In the End time field:
i. Tap the calendar icon

.

ii. Tap and select the date you want to end tak­
ing time off.
iii. Tap the time field at the top-right corner of
the calendar and select the time to end your
time off.
iv. Click OK.
f. In the Description field, enter a reason for re­
questing time off.
3. If you are using:
◦ An Android application, tap the send icon.
◦ An iOS application, tap Submit.
A notification to approve your request is sent to your manager.
4. Request a shift-swap.
You can communicate with other agents by using Connect Chat or the activity stream on the
record to make sure that they would like to swap the requested shift with you.
5. In the Schedule section, tap My calendar.
6. Tap the date for which you want to make the request.
7. Tap the work shift for that day.

Note: Alternatively, you can swipe left on the shift you want to request time off or shift
swap and select the desired option.
8. Tap Request shift swap.
9. In the Swap with field, tap and select the agent you want to swap with.
10. Make a shift-swap request.
11. In the Requested shift field, tap and select the agent's shift that you want to swap with.
12. If you are using:
◦ An Android application, tap the send icon.
◦ An iOS application, tap Submit.
A notification is sent to the agent to approve your request.
Approve or reject a shift swap using the ITSM Mobile Agent application
Using your ITSM Mobile Agent application, approve a shift swap requested by your peer if you
are available to work at that time. You can reject it if you are unable to work then.

Before you begin

Role required: sn_shift_planning.agent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2373


<!-- page 2374 -->
Note: If you have notifications enabled, you can approve or reject shift-swap requests
from the notifications without opening the request.

Procedure
1. Navigate to the ITSM Mobile Agent Agent application.
2. Tap Approvals.
3. In the Pending list, select a request to approve and review the request details.
4. Do one of the following:
◦ To approve a request, tap Approve.
◦ To reject a request, tap Reject.
Your peer receives a notification on the request approval status.
Track and manage your agent's schedule using the ITSM Mobile Agent application
Monitor the shifts and schedule of teams within your assignment group using the ITSM Mobile
Agent application. You can approve or reject requests for swapping shifts or time off for your
agents.

Before you begin

Role required: sn_shift_planning.admin

Note: If you have notifications enabled, you can approve or reject shift-swap or time-off
requests from the notifications without opening the request.

Procedure
1. Navigate to the ITSM Mobile Agent application.
2. Monitor your team's schedule.
a. Tap My team.
b. In the Schedule section, click Team Calendar.
c. Tap the day for which you would like to monitor the schedule.
d. Tap a shift for the day to view the details for the shift.
3. Approve or reject an agent's time off or shift-swap with another agent.
a. Tap My work.
b. Tap Approvals. You can view the pending requests in your queue waiting for approval and
also the approvals you have completed and the details for each request.
c. From the Pending list, tap a request to approve.
▪ To approve a request, tap Approve. The schedule gets update in the calendar based on
the approval.
▪ To reject a request, tap Reject.
The agent receives a notification when you approve or reject the request.

Workforce Optimization for ITSM landing pages
Track and monitor the performance of your organization using the Workforce Optimization for
ITSM landing pages. If you are a coach or a channel manager, you can access metrics specific to
your application using the Channels or the Quality landing pages respectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2374


<!-- page 2375 -->
You can clone an existing landing page and customize it using the Next Experience UI Builder.
For more information, see Customize a Workforce Optimization for ITSM page using Next
Experience UI Builder.
Workforce Optimization for ITSM manager landing page
Stay on top of the status of incidents your teams are working on at a given time. Monitor training
that's overdue and how many assessments are open and require approval. Analyze your teams'
work and SLA status for the desired time period.
Workforce Optimization for ITSM landing page

End user and roles
End user and goal

Required role

As a workspace manager, you can:

sn_wfo_cfg_ws.manager

• Monitor open P1 incidents, SLAs that have
been breached, at risk, the ones not been
updated in 24 hours, or escalations.
• Analyze the incidents your team is currently
working on or incidents that have not yet
been assigned.
• Track the mean time to resolution, first call
resolution, and customer satisfaction based
on the assignment group for the desired
time period.

Use case
Monitor your agent's work when you start your day, view reports that need your attention, and
navigate to the incidents on which you want to take action. Analyze the performance of a specific
team for a desired time period by selecting the team from the Teams list and also the desired
date range.

Indicators
Mean time to resolution
The average time taken to resolve incidents.
First call resolution
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2375


<!-- page 2376 -->
Number of incidents resolved the first time it was handled.
Customer satisfaction
Overall customer satisfaction on incident resolution.
Team Performance
A list of incidents assigned to the teams managed by the current logged-in user.
Unassigned incidents
A list of incidents assigned to groups managed by the current logged-in user that
does not have an assignee.

Breakdowns
• Priority
• Category
• Assignment Group
• Assigned To

Data visualizations
Select a visualization to view details.

Title

Type

Open P1 Incidents

Description

Number of open incidents
with top priority.
Single score

Incidents not updated in 24
hours

Number of incidents that have
not been updated in the last
24 hours.
Single score

Incident SLAs Breached

Number of incidents with SLAs
that have been breached.
Single score

Incident SLAs at Risk

Number of incidents with SLAs
that are at risk.
Single score

Escalations

Single score
Workforce Optimization for ITSM Channels landing page
Manage queues and analyze the status of incidents and chats using the Channels landing page.
You can also monitor team performance and work assignments from one location.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2376


<!-- page 2377 -->
End user and roles
As an admin, you can create or customize landing pages for the channel manager. For more
information, see Creating custom landing pages for workspaces. If you have multiple landing
pages, you can set the order for the landing pages. The lower the order, the higher the
precedence in displaying the pages.

End user and goal

Required role

As a channel manager, you can:

sn_channel_mgmt.user

• Analyze real-time data such as:
◦ The number of incidents with critical
priority, breached SLAs, escalated or
unassigned incidents.
◦ The number of chats that are in progress
or with requests for help.
◦ Agent distribution across work
assignments, work items awaiting to be
assigned, and number of agents available.
◦ The performance of your team.
• Drill down into each report or analytics to get
more data.

Use cases
As a channel manager, you can monitor key information such as the number of SLAs that have
been breached, how many open incidents have critical priority, and how many work items are
waiting to be assigned from one location.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2377


<!-- page 2378 -->
Performance Analytics Indicator
Incidents closed this week: The number of incidents closed during the current week.

Breakdowns
• Assigned to
• Assignment group

Data visualizations

Title

Type

Open Critical

Single

Source table or
database view

Description

Incident
[incident]

Number of open incidents
with critical priority.

Incident
[incident]

Number of open incidents
that have not been
assigned.

Incident
[incident]

Number of open incidents
that have been escalated.

Task SLA
[task_sla]

Number of open incidents
with Service Level
Agreements that have
been breached.

Incident
[incident]

Number of open incidents
that have not been
updated in the last 7 days.

Incident
[incident]

Number of incidents that
have not been updated in
the last 30 days.

score
Unassigned

Single

score
Escalated

Single

score
SLAs breached

Single

score
Updated > 7 days

Single

score
Open for 30 days

Single

score
In-progress chats

Single

score

Number of open
interactions where agents
are currently on a chat
with customers resolving
issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2378


<!-- page 2379 -->
Title

Type

Help requested

Single

Source table or
database view

Number of current open
interactions where agents
are requesting help from
a manager while on a chat
with customers to resolve
issues.

score
Agent distribution

Bar

Description

Presence States The current presence
[awa_presence_state]
status of agents distributed
on work assignments.

chart
Waiting work items

Single

Number of work items that
are currently waiting to be
assigned.

score
Available agents

Single

Number of agents currently
available to work on work
items.

score
Total open incidents

Bar

Total number of incidents
that are in various workflow
states and have not been
closed.

chart
Workforce Optimization for ITSM Coaching landing page
Monitor the performance of your agents and measure the quality of how they resolved issues
using the Coaching landing page. Analyze patterns in skill usage over time and see which skills
are in demand.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2379


<!-- page 2380 -->
End user and roles
As an admin, you can create or customize landing pages for the coach to monitor the quality of
how agents resolve incidents. If you have multiple landing pages, you can set the order for the
landing pages. The lower the order, the higher the precedence in displaying the pages.

End user and goal

Required role

As a coach, you can analyze real-time data sn_coaching.coach
such as:
• The quality of how agents resolved
incidents.
• The mean time it took to resolve the
incidents.
• The trends in customer satisfaction, the
type of skills used to resolve incidents,
and completed assessments.
• List of overdue training and
assessments.

Use cases
As a coach, you can monitor the quality of agents resolving issues and take corrective actions by
assessing their ability to resolve skills and provide them with training to address their skill gaps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2380


<!-- page 2381 -->
Indicators
Indicator name

Description

CSAT

Average customer satisfaction based on CSAT survey
results.

Quality

Average score, in percentage, of all surveys taken by the
coach to assess the trainee.

Incident Mean Time to Resolve

Average time agents have taken to work on an incident until
they've marked it as closed or resolved.

Completed Assessment

Assessment closed over time.

Breakdowns
• Assigned to
• Assignment group

Data visualizations
Title

Type

Source table

Description

Trainings

List

Assigned Training List of training that
[sn_coaching_assessment_recommended_learning]
agents need to
complete.

Coaching
Assessments

List

Assessed Record List of
[sn_coaching_assessed_records]
assessments that
coaches need to
complete for their
agents.

Customize a Workforce Optimization for ITSM page using the Next Experience
UI Builder
Clone an existing Workforce Optimization for ITSM page and customize it based on your needs
using the Next Experience UI Builder.

Before you begin

Role required: workspace_admin or ui_builder_admin

About this task

All Workforce Optimization for ITSM Next Experience UI Builder pages and page variants are
read-only. You can copy a page variant and then customize it. You can create a page variant from
scratch or use a page template. For more information, see Create a variant of a page .

Note: After you copy and customize a page variant, any automatic updates applied to
the original read-only page variant will not be applied to the page variant that you have
customized.
To open your configurable workspace experience in UI Builder, see Open a Configurable
Workspace experience
For a list of all workspaces ServiceNow offers to target specific users, see List of workspaces

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2381


<!-- page 2382 -->
Procedure
1. Navigate to All > UI Builder.
2. In the UI Builder screen, select Manager Workspace.
3. In the Page menu, select the page you want to edit.
For example, Landing Page or Work Scheduler.
4. In the Variants section, select the menu icon (
Duplicate.

) of the variant you would like to copy select

5. In the variant that you've duplicated, select the menu icon (
settings.

) and select Edit page variant

6. In the Edit settings pop-up window, do the following:
◦ In the Variant name field, enter a unique name for the variant.
◦ If you would like to use a different page template, in the Page template field, select the page
template.
◦ Select Save to keep the changes.
If you do not want to make any updates, select Cancel or select Delete to delete the variant.
7. Select the menu icon (

) and select Edit conditions.

◦ To add or edit conditions for the variant, in the Variant Conditions field, and add your
preferred conditions for the variant.
◦ To display the variant in Workforce Optimization for ITSM, in the Order field, set the preferred
order number.
8. Select Done.
Related topics
Configuring the Next Experience UI

Configure filters for ITSM Manager Workspace
Define filter configurations for Schedule, Coaching, and Channels applications. You can use
these filters to refine your search and view targeted results.

Before you begin

Role required: sn_wfo_cfg_ws.admin

About this task
Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace Configurations >
Filter Configurations.
2. Click New.
3. On the form, fill in the fields.
Filter Configuration form
Name

Description

Filter Name

Unique name for the filter configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2382


<!-- page 2383 -->
Name

Description

Table

Table that is used for the filter configuration.

Note:
◦ You can filter only on specific tables or database views for each
module.
◦ For a list of tables and database views that you can use for each
module, see the Filter Configuration Tables section in Workforce
Optimization for ITSM components.
Field

Field on which to filter.

Filter Query

Query to narrow down the filter options.

Type

Type of field to choose from:
◦ Choice: choice type field.
◦ Reference: reference type field.

Order

Filter that you can use to see the display order in Manager Workspace.

Workspace
Module

Workforce Optimization for ITSM module that displays the filter
configuration.

Active

Option that enables the filter configuration in Manager Workspace.

4. Click Submit.

Add or remove access to assignment groups in Workforce Optimization for
ITSM manager workspace
Include or exclude access to assignment group data to display only the groups that are relevant
for the logged-in user in the Workforce Optimization for ITSM manager workspace.
As a manager, by default, you can see all groups that you directly or additionally manage. You
can add access to additional groups or remove access to any of the groups displayed by default.
• To add access to more groups, use an extension point.
• To remove access, use filter conditions to exclude groups for which you don't need visibility.
Using extension points to include access for specific groups in Workforce Optimization for
ITSM manager workspace
Use scripted extension points to add access for managers to view assignment groups data
other than the default groups that they manage in Workforce Optimization for ITSM manager
workspace.
To see a list of extension points that you can use for Workforce Optimization for ITSM, navigate
to System Extension Points > Scripted Extension Points. In the Extension Points list, open the
sn_wfo_common.ApplicableGroupsDefinitionManager extension point.
Use scripted extension points to integrate customizations without altering the core components
in the application code. When customizing a base application, you implement the scripted
extension points by creating the custom script includes and registering them against the
scripted extension points.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2383


<!-- page 2384 -->
Extension points to include access for specific groups
Extension point name

Description

sn_wfo_common.ApplicableGroupsDefinitionManager
Implement this extension point to customize
the logic to include access for managers to see
assignment groups other than the default groups
that they manage in the Workforce Optimization
for ITSM manager workspace.
Related topics
Using scripted extension points in server-side scripts
Exclude access for specific groups in Workforce Optimization for ITSM manager workspace
You can remove access to assignment group data and display only the assignment groups that
are relevant for the logged-in user in the Workforce Optimization for ITSM manager workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Workforce Optimization for ITSM > Manager Workspace Configuration >
Group Exclusions.
2. On the Groups not included in WFO form, select New.
3. In the Name field, enter a meaningful name for one or more groups you want to exclude from
displaying in the Workforce Optimization for ITSM manager workspace.
4. Set the filter conditions to exclude the groups.
For example, if you define a condition as [Name] [does not contain][Support], then the
Workforce Optimization for ITSM manager workspace doesn't display any groups that contain
Support in the group name.
For information on configuring condition builders, see Condition builder

.

5. Select Submit.
Verify the display of the right groups in Workforce Optimization for ITSM
Verify that the logged in user can access the correct assignment groups data.

Before you begin

Role required: sn_wfo_cfg_ws.manager

Procedure
1. Impersonate the manager for which you want to verify access.
2. Select All and in the filter navigator, enter sys_user_grmember.list.
3. Select the filter icon and set the condition as [Group] [is(dynamic)][MYWFOGroups].

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2384


