# Zurich Customer Service Management — Agent management

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1644–1662 of 2452

Sections: Agent management (p1644)

---

<!-- page 1644 -->
Agent management
Manage agents effectively to deliver exceptional customer service. Recruit, train, and monitor
their performance continuously. Support your customer service agents consistently. Equip and
motivate them well to enhance customer satisfaction and operational efficiency.
Agent management for customer service
Time recording for Customer Service
Management

Record time worked on cases and case tasks.
Time worked entries automatically generate
time cards and time sheets for manager
approval.

Workforce Optimization for CSM Agent
Workspace

Manage your profile and schedule using
Agent Workspace. Use coaching to review and
complete assigned training.

Assign a case from the assignment workbench Users with the customer service manager
role can assign a case to an agent from the
assignment workbench.
Manage special handling notes

Managing special handling notes is a
critical component of Customer Service
Management. These notes provide essential
information to customer service agents
about the specific needs and preferences
of individual customers, ensuring that
personalized and attentive service is delivered
consistently. By effectively managing special
handling notes, organizations can enhance
the customer experience, build stronger
relationships, and resolve issues more
efficiently.

View team members assigned to an account

View the team members for a specific account.

Add an agent to the chat support assignment
group

Agents must be added to the chat support
assignment group before they can receive
chat requests. This assignment group is
used by theCustomer Service Management
chat communication channel to route chat
requests.

Approve a service contract

Approve a service contract for a customer
account.

Outsourced Service Provider manager tasks

Manage various tasks as an Outsourced
Service Provider (OSP) Manager, including
onboarding Outsourced Service Provider
agents, viewing unassigned cases, and
assigning cases to groups or agents under
your supervision.

Decouple Channel Management
Dependencies from WFO

Unlink/ Decouple Channel Management
from core Workforce Optimization (WFO)
modules supports modular deployment,
enabling independent updates or scaling of

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1644


<!-- page 1645 -->
Agent management for customer service (continued)
Channel Management without impacting other
workforce engagement.

Decouple Channel Management Dependencies from WFO
Decouple Channel Management from core Workforce Optimization (WFO) modules to support
modular deployment, enabling independent updates or scaling of Channel Management without
impacting other workforce engagement.

Overview of decoupling channel management
Channel Management is a crucial tool that allows users to monitor ongoing work and track
agents' performance. Decoupling Channel Management from the core Workforce Optimization
(WFO) modules supports modular deployment, enabling independent updates or scaling of
Channel Management without impacting other workforce engagement.

Note: Channel Management when installed as a standalone module along with the agent
workspace, the other modules are disabled.
Key Benefits:
• Independent Deployment: Channel Management can now be deployed independently,
allowing for greater flexibility and control.
• Reduced Inter-Module Dependencies: The decoupling reduces dependencies between
modules, enhancing system stability.
• Enhanced Scalability and Maintainability: The new architecture improves scalability and
maintainability, making it easier to manage and expand.
• Streamlined Future Upgrades: Future upgrades for individual modules can be streamlined,
ensuring smoother and more efficient updates.

Roles and Responsibilities
Roles and Responsibilities
Role Name

Description

sn_channel_mgmt.admin (for group manager)

The System Administrator creates a customer
care assignment group and manage channel
configurations and assignments.

sn_channel_mgmt.user (for the additional
manager)

The Manager can log into Agent Workspace
and access the channel management module
through role-based visibility, such as the
sn_channel_mgmt.user role. The Manager
can utilize Channel Management in Agent
Workspace independently of the full WFO
suite.
For more details see Configuring groups in
Workforce Optimization for ITSM

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1645


<!-- page 1646 -->
Channel Management (New Menu in Agent Workspace)
Role: canvas_user and sn_channel_mgmt.user.
Agent Workspace is updated with a new menu icon ChannelManagement. Admin or user can
see and access channel icon on the left pane for channel management in the Agent Workspace.
On selecting the new channel menu icon, you can view the service channels. Admins can
allocate the work items under Queued Work table, to respective group members.

Channel Management Capabilities for Supervisor Persona
Role: sn_csm.manager.
Enabling the channel management capabilities for the supervisor persona in Agent Workspace
allows access to channel management without the need for the full WFO suite. The Manager
can log into Agent Workspace and access the channel management module through rolebased visibility, such as the sn_channel_mgmt.user role. This ensures that the Manager can use
Channel Management in Agent Workspace independently of the full WFO suite.

Demo Data for Channel Management in Agent Workspace
Role: sn_channel_mgmt.admin.
Setting up demo data in Agent Workspace to showcase Channel Management features.
The personas involved are an Agent and a Supervisor. The Supervisor creates a customer
care assignment group and manage channel configurations and assignments. This group is
associated with the customer care chats queue to manage inbound communication effectively.
The demo data is provided within Agent Workspace, allowing users to view and interact with
it to explore Channel Management functionalities. The validation process includes checking
the addition of the new customer care group, populating group members, assigning roles, and
ensuring all sections function properly.
For more information on channel management for customer service in workforce optimization,
see: Channel Management in Workforce Optimization for Customer Service

Time recording for Customer Service Management
Record time worked on cases and case tasks. Time worked entries automatically generate time
cards and time sheets for manager approval.
Customer service agents (users with the sn_customerservice_agent role) can record time
worked on case-related activities, create time cards and time sheets, and submit for approval.
Managers can approve time sheets, define cost rates for different types of activities, and convert
to expense lines.
The time recording feature extends the functionality of the Time Card Management
application
to Customer Service Management. Agents can record time worked on cases and tasks directly
from the Case or Case Task form and time spent on other activities, such as meetings or training,
from the Time Worked form. Time worked entries automatically create time cards for each task
and selected work category. Time cards are automatically included in a weekly time sheet.
The time recording feature also extends the functionality of the Cost Management
application
to Customer Service Management. Customer service managers can create labor rate cards,
which define different cost rates for different activities. Time sheets use labor rate cards
to
determine costs and to generate expense lines.
Agents can modify the hours recorded on time cards. Once a time sheet is approved and a time
card is processed, the agent can still go back and modify the time worked. The time sheet reverts
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1646


<!-- page 1647 -->
to the Pending state and new time cards are created. If an agent adds more time worked records
to an approved time sheet for the same week, a new time sheet record is created for the current
week.
Managers can view time worked records, time cards, and time sheets for agents in their
assignment groups, as well as approve and reject time sheets. After a time sheet is approved, the
system processes the time cards and uses rate cards based on the time card category to create
expense lines.

Time recording plugin
The time recording feature requires the Customer Service Management plugin
(com.sn_customerservice) and the Time Recording for Customer Service plugin
(com.snc.csm_time_recording).

User roles
The time recording feature adds the following roles.
Time recording user roles
Role

Description

Time card user

Record time worked on cases and tasks. View,
modify, and delete time worked entries on time
cards and submit time sheets for approval.

[timecard_user]

Users with the customer service agent
(sn_customerservice_agent) role inherit the
timecard_user role.
This role restricts access to the time sheets,
time cards, and time worked records created
by the agent.
Time card administrator
[timecard_admin]

Review, approve, and reject time sheets for
customer service agents.
Users with the customer service manager
role (sn_customerservice_manager) inherit
the timecard_admin, timecard_approver, and
timecard_manager roles.
This role restricts access to the time sheets,
time cards, and time worked records created
by the agents in a manager's assigned groups.

System properties
The time recording feature adds the following properties.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1647


<!-- page 1648 -->
Time recording system properties
Property

Description

com.snc.time_card.time_worked

Enables the time recording feature for
Customer Service Management. The default
setting is false.

Note: This property has been replaced
by the Auto fill time card with time
worked entries field on the Time Sheet
Policy form. When this field is enabled,
the user's time card is auto-filled with
the information from their time worked
entries.
com.snc.time_card.default_rate

The default hourly rate used when processing
time cards if a rate from a labor rate card is not
available.

Time Sheet policy
The time recording feature uses the Default time sheet policy.
For users with the sn_customerservice_agent role, creating time worked records automatically
creates or modifies time cards regardless of the setting for the com.snc.time_card.time_worked
system property. The time sheet policy controls this functionality. The system administrator can
disable the auto-creation of time cards for a specific user with the sn_customerservice_agent
role by creating a separate time sheet policy for that user.

Labor rate cards
The time recording feature provides one labor rate card: CSM Rate Card (Default).
If needed, system administrators can create additional labor rate cards. Navigate to Cost > Costs
> Labor Rate Cards and click New to create a labor rate card.
Record time worked for a case or activity
Customer service agents can record time worked on a case or case task as well as time spent on
other activities.

Before you begin

Role required: sn_customerservice_agent

About this task

Agents can record time worked from a case or case task. Time worked can be recorded
regardless of the case or task state. Agents can also record time worked from the Time Sheets
module by navigating to Time Sheets > Time Recording > My Time Worked.
When an agent creates a time worked record, a time card and time sheet are automatically
created for the week based on the work date. The time card is created for the task and the
category type. The total hours recorded on each time card are recorded on the current time
sheet in the Time Cards related list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1648


<!-- page 1649 -->
Procedure
1. To record time worked from a Case form or Case Task form.
Option

Description

Platform interface

Navigate to a case or task and select Record
Time.

Agent Workspace

Navigate to a case or task, select the more UI
actions icon (

), and select Record Time.

This action opens a Time Worked form with the Task and User fields already populated.
2. To record time worked from the Time Sheets module.
a. Navigate to Time Sheets > Time Recording > My Time Worked and select New.
This action opens a Time Worked form with the User field already populated.
b. Select a task number in the Task field.
3. Select the Work Date.
4. Select a Category for the time being recorded.
5. Fill in the Time worked.
6. Provide any additional information in the Comments field.
7. Select one of the following actions.
Option

Description

Platform interface

Select Submit.

Agent Workspace

Select Save.

The Time Worked form is saved and added to the following lists:
◦ The Time Worked related list on the Case or Case Task form.
◦ The Time Cards related list on the current Time Sheet form.
◦ The Time Worked list in the Time Sheets module.
If this entry is the first time worked entry for the selected category, a time card is created for
that category. If a time card for the category already exists, the time worked record is added to
that card.
Review time worked for a case or activity
Customer service agents can review time worked on cases and case tasks.

Before you begin

Role required: sn_customerservice_agent

About this task

The Time Worked related list on the Case and Case Task form displays the time worked records
that have been created for the case or task. From this related list, agents can review their
recorded time, add new time worked records, and also delete records.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1649


<!-- page 1650 -->
Procedure
1. Navigate to the desired case or case task.
2. Go to the Time Worked related list.
3. To view a time worked record, click the Comments for that record.
Modify or delete time worked entries for cases or activities
Agents can modify and delete existing time worked entries and create new entries after a time
sheet has been approved.

Before you begin

Role required: sn_customerservice_agent

About this task

An agent can modify or delete time worked entries for an approved time sheet. Any changes to
these entries update existing time cards, creates new time cards if needed, and generates an
updated time sheet.

Note: Don’t manually edit time cards. Edit the original time worked entries, which generate
updated time cards and time sheets.

Procedure
1. To modify or delete a time worked entry:
◦ Navigate to the desired case or case task, select the Time Worked related list, and select
the desired entry.
◦ Navigate to Time Sheets > My Time Worked and select the desired entry.
2. To modify the entry, change the desired fields and select Update.
3. To delete the entry, select Delete.
Review a time card
Customer service agents can review time cards created from time worked records.

Before you begin

Role required: sn_customerservice_agent

About this task

The Time Worked related list on the Case and Case Task form displays the time worked records
that have been created for the case or task. This list also displays the time cards created from the
time worked records.

Procedure
1. Navigate to the desired case or case task.
2. Go to the Time Worked related list.
3. To view a time card, click the Time Card for that record.
The time card provides a breakdown of the time worked for this case or case task by day.
Review and submit a time sheet for a customer service agent
Agents can review and submit time sheets to managers for approval.

Before you begin

Role required: sn_customerservice_agent
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1650


<!-- page 1651 -->
About this task

The total hours worked for each category are recorded on the time card and on the time sheet.
From the time sheet, you can see total hours by day and by category.

Procedure
1. Navigate to All > Time Sheets > My Time Sheets > Current Time Sheet.
2. If desired, review the time cards associated with the time sheet in the Time Cards related list.
3. Click Submit Time Sheet.
The time sheet is submitted to the manager for approval. The state of the time sheet changes
from Pending to Submitted and the form becomes read-only. The state of the associated time
cards also changes to Submitted.
Review and approve time sheets for customer service agents
Managers can review time cards and time sheets for agents in their assignment groups.

Before you begin

Role required: sn_customerservice_manager

About this task

When a time sheet is approved, the time cards are processed and used to create expense lines
that reference the defined labor rate cards.

Procedure
1. Navigate to All > Customer Service > Manager > Time Sheets - Pending Approval.
2. Select a time sheet.
3. If necessary, review the time cards associated with this time sheet in the Time Cards related
list.
4. Click one of the available actions.
Option

Description

Approve

The state of the time sheet and the associ­
ated time cards changes to Processed and
these records become read-only.

Reject

The state of the time sheet and the associ­
ated time cards changes to Rejected. The
customer service agent can modify the time
sheet and submit again for approval.

Review expense lines created from time cards
Review the expense lines created from the time cards and time sheets submitted by customer
service agents.

Before you begin

Role required: financial_mgmt_user

Procedure
1. Navigate to All > Cost > Costs > Expense Lines.
2. Select the desired expense from the Expense Lines list and view the details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1651


<!-- page 1652 -->
Workforce Optimization for CSM Agent Workspace
Manage your profile and schedule using Agent Workspace. Use coaching to review and
complete assigned training.

Important: To access the next generation of the Workforce Optimization for Customer
Service application, transition to the Workforce Optimization for Customer Service
application that is available from the ServiceNow Store. You can now configure Workforce
Optimization for Customer Service using the UI Builder . For more information see,
Workforce Optimization for Customer Service.
The image below displays the agent work flow between the
different modules in Workforce Optimization for Customer Service.

The Workforce Optimization for Customer Service features are accessible when the
administrator activates the plugin (com.snc.wfo_csm). This plugin activates related plugins that
enable agents to use the Channel Management, Scheduling, Coaching, and Teams applications
in Workforce Optimization for Customer Service.
Access your profile from CSM Agent Workspace
Track and monitor the real-time status of your work by accessing your profile in CSM Agent
Workspace. You can track information such as how many cases and interactions you have closed
and how many you are actively working on. You can also view the roles and groups to which you
belong and see information about your manager and teammates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1652


<!-- page 1653 -->
Before you begin

Important: To access the next generation of the Workforce Optimization for Customer
Service application, transition to the Workforce Optimization for Customer Service
application that is available from the ServiceNow Store. You can now configure Workforce
Optimization for Customer Service using the UI Builder . For more information see,
Workforce Optimization for Customer Service.

Role required: sn_wfo_csm.employee

About this task

Access your profile to analyze information such as:
• Key performance indicators that matter most to you.
• Pending training that has been assigned to you and when they're due.
• The service channels you are assigned to and their current utilization.
• Skills and skill levels that you currently use and skill gaps that you may want to address.
• Upcoming PTO.

Procedure
1. Navigate to All > Workspace Experience > Workspaces > Agent Workspace Home.
2. Click the Lists icon.
To

Do this

a. Click Cases and select Assigned to me.
Access your profile from a case record

b. In the Assigned column, select your name.
The profile page appears. In that page, you can
access all the information related to your pro­
file.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1653


<!-- page 1654 -->
Manage your schedule from CSM Agent Workspace
Look up your schedule, request time off, or swap your shift with your peers using the calendar
in CSM Agent Workspace. If you can work during the requested shift, you can also approve your
peer's request for shift swap.

Before you begin

Important: To access the next generation of the Workforce Optimization for Customer
Service application, transition to the Workforce Optimization for Customer Service
application that is available from the ServiceNow Store. You can now configure Workforce
Optimization for Customer Service using the UI Builder . For more information see,
Workforce Optimization for Customer Service.

Role required: sn_shift_planning.agent

About this task

You can swap shifts with agents that are within your assignment group.

Procedure
1. Navigate to All > Workspace Experience > Workspaces > Agent Workspace Home.
2. Click the Calendar icon.
You can access your schedule in the My Calendar tab. If you want to see a list of all agents in
your assignment groups and their schedules, click the Team Calendar tab.
To view your schedule or another agent's schedule, you can:
◦ View your schedule by clicking the My Calendar tab. Then, use the list menu to select the
schedule that you want to view by day, week, or month.
◦ View another agent's schedule by clicking the Team Calendar tab. Then, click an agent's
schedule to see that agent's work and break times by day, week, or month.
Select one of the following in the drop-down:
Calendar views on the Team Calendar tab
Calendar view

Description

Day

The hourly calendar of the current day
displays. In the calendar drop-down,
select a date to view the respective day’s
schedule.

Week

The current week’s calendar displays. In
the calendar drop-down, select a date to
view the weekly schedule containing the
selected date.

Month

The current month's calendar displays
which includes current week and upcoming
three weeks (28 days) in a single view. In the
calendar drop-down, select a date to view
that respective month's calendar.

Select the Today button to view the current day.
3. Make a request.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1654


<!-- page 1655 -->
You can communicate with other agents by using Connect Chat or the activity stream on the
record to make sure that they would like to swap the requested shift with you.
Connect Chat and activity stream request options
To

Request a shift swap

Do this

a. Click Request shift swap.
b. From the Shift menu for your shift, select the shift that you want to
swap with another agent.
c. In theAgent field for the requested shift, select the agent that you
want to swap with.
d. From the Shift menu for the requested shift, select the agent's shift
that you want to swap with.
e. Click Submit.

Request a time off

a. Click Request time off.
b. From the Start time field, enter the time that you want your time off
to start.
c. From the End time field, enter the time that you want your time off to
end.
d. Click Submit.

◦ The shift-swap request moves to the approval queue of the agent that you have requested to
swap with.
◦ The time-off request moves to your direct manager's approval queue.
Clock-in and clock-out your work shift
Clock in and clock out your work shifts using CSM Agent Workspace. You can track your details,
such as time attendance and time worked summary, to know how close you are adhering to your
schedules.

Before you begin

Important: To access the next generation of the Workforce Optimization for Customer
Service application, transition to the Workforce Optimization for Customer Service
application that is available from the ServiceNow Store. You can now configure Workforce
Optimization for Customer Service using the UI Builder . For more information see,
Workforce Optimization for Customer Service.

Role required: sn_shift_planning.agent

About this task

The clock-in event is generated when you either login or set your status as Available in CSM
Agent Workspace. The clock-out event is generated when you either logout from CSM Agent
Workspace or set your status as Offline or Break.

Procedure
1. Navigate to All > Workspace Experience > Workspaces > Agent Workspace Home.
2. Click the Inbox icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1655


<!-- page 1656 -->
◦ To clock-in your shift, set your status to Available.
◦ To clock-out from your shift, set your status to Offline or Break.

Result

You can view your time attendance and adherence in Lists > Schedule Adherence > Time
Attendance and Time Worked Summary lists.
Approve or reject a shift swap from CSM Agent Workspace
You can approve a shift swap requested by your peer if you are available to work for that time
period. You can reject it if you are unable to work then.

Before you begin

Important: To access the next generation of the Workforce Optimization for Customer
Service application, transition to the Workforce Optimization for Customer Service
application that is available from the ServiceNow Store. You can now configure Workforce
Optimization for Customer Service using the UI Builder . For more information see,
Workforce Optimization for Customer Service.

Role required: sn_shift_planning.agent

Procedure
1. Navigate to All > Workspace Experience > Workspaces > Agent Workspace Home.
2. Click the Lists icon.
3. Go to Approvals > My Approvals.
4. Select the request you want to approve or reject.
5. Review the details of the shift swap request and do one of the following:
◦ To approve the request, click Approve.
◦ To reject the request, click Reject.
If you approve a shift swap, the application moves the request to your manager's approval
queue. For more information, refer to Scheduling in Workforce Optimization for Customer
Service.

Assign a case from the assignment workbench
Users with the customer service manager role can assign a case to an agent from the
assignment workbench.

Before you begin

Role required: sn_customerservice_manager

About this task

Note: The Find Agents feature is available only in the classic environment.
Procedure
1. Open a customer service case.
2. Select the Find Agents icon ( ) next to the Assigned to field to open the assignment
workbench.
If the case has an Assignment group, the agents from that group are listed on the workbench.
If the case doesn’t have an assigned group, no agents are displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1656


<!-- page 1657 -->
Note: The state of the current record determines the availability of the Find Agents icon.
The icon is available for records in the Open, Awaiting, and Cancelled states, and if the
user has write access for the Assigned to field. The icon isn’t available for records in the
New or Closed states or when the Assigned to field is read only for the current user.
3. Optional: Select an assignment group from the Group list.
The list of agents updates based on the selected group.
4. Optional: Add or remove skills from the Skills list.
The selected skills appear in a list below this field. The Matching Skills column updates to
reflect the selected skills.

Note: Mandatory skills can’t be changed.
5. Optional: Sort the agents by selecting the column header for the desired matching criteria.
6. Select an agent by enabling the check box by the agent's name and then select Assign.
The assignment workbench closes and the name of the selected agent appears in the
Assigned to field on the Case form.
7. Select Update to save the agent assignment.
Related topics
Assignment workbench overview

Manage special handling notes
Get critical information about specific customers and empower agents in delivering personalized
and efficient service with special handling notes.
Use the Special Handling Notes application to generate notes that highlight crucial information
about individual records, like case or account records, ensuring users are well informed. For
more info, see Special handling notes
Manage special handling notes
Create a special handling note

Create a special handling note for a record,
such as a customer service case.

Update a special handling note

Update a special handling note for a record.

Delete a special handling note

Delete a special handling note for a record.

Delete a special handling note from a form

Delete a special handling note for a record
from the Special Handling Notes list on the
form.

Create a special handling note
Create a special handling note for a record, such as a customer service case.

Before you begin

Role required: sn_shn.admin or sn_customerservice_manager

About this task

Use special handling notes to highlight important information about individual records, such as a
case or account record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1657


<!-- page 1658 -->
You can create special handling notes from the Special Handling Notes module in the application
navigator or from a record that has been configured to use special handling notes.

Important: While this feature provides the flexibility to create complex conditions, it
is recommended that you keep the configuration simple and use dot walking sparingly.
Creating complex conditions for special handling notes can affect the load time.

Procedure
1. Perform one of the following actions.
◦ CSM Configurable Workspace: Navigate to the desired form, select the More actions menu
in the record header and then select Special Handling Notes.
◦ Core UI: Navigate to the desired form and select the Create Special Handling Notes related
link. You can find these links in the Related Links section at the bottom of the form.
◦ Navigate to All > Special Handling Notes > Special Handling Notes and select New in the
Special Handling Notes list form header.
2. Fill in the fields, as necessary.
Special Handling Notes form fields
Field

Description

Short
Description

A brief description of the note which is displayed in the Special Handling Notes
list.

Message

The detailed content of the note.

Display
as pop-up
alert

Displays this note in the Special Handling Notes pop-up window.

Type

The type of special handling note:
◦ Standard: Create a note for a specific record, which you select in the Related
record field.
◦ Conditional: Create a note for multiple records which meet certain
conditions. Select a Table name and then create Conditions.

Priority

The priority of the note:
◦ 1-Critical
◦ 2-High
◦ 3-Moderate
◦ 4-Low

Status

The status of the special handling note:
◦ 1-Active: The note is active and appears in the Notes list or pop-up window.
◦ 2-Inactive: The note is inactive and does not appear in the Notes list or popup window.
Inactive notes are removed from the Notes list but can be seen by navigating
to Special Handling Notes > Special Handling Notes.
◦ 3-Expired: The note has reached its expiration date.

Effective
Check box to make the special notes effective immediately. The status is set to
immediately 1 -Active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1658


<!-- page 1659 -->
Field

Description

Deselect this check box to display the Effective on field.
Effective on The date on which the special notes become effective.
Enter a date for the special notes to become effective and click Update. The
status is set to 2 - Inactive until the date is reached.
Expires on

The date on which the note expires. Select a date from the calendar and click
Save.
The Deactivate Special Handling notes scheduled job runs daily at midnight
and checks all active alerts. If the notes have reached their expiration date, it
sets the status to Expired.
The Deactivate Special Handling notes scheduled job also checks the
Effective on field. If the status is active or inactive and the expiry date has
been reached, it sets the status to Expired. If the status is inactive and the
effective on date has been reached, it sets the status to Active.

Related
record

The record for which this note is created. This field appears when you select
Standard in the Type field.
If you access this form from the Create Special Handling Notes related link, the
record number is automatically filled in.
To select a record, select a Table name and a Document from the pop-up
window. The tables available for selection have been configured to use special
handling notes.

Table name The table that stores the entity for which the note is being created. This field
appears when you select Conditional in the Type field.
The default is the first table which has been configured to use special handling
notes.
After you select a table, a link is displayed with the number of matching
records. This link is updated after you select one or more conditions. Click the
link to display these records in a list.
Conditions

This field appears when you select Conditional in the Type field.
Use the buttons in this field to build one or more conditions on the selected
table. A condition is made up of a selected field, an operator, and a value. Add
conditions using the AND and OR buttons. Delete conditions by clicking the
Delete button to the right of a condition.

3. Click Submit.
Related topics
Special handling notes
Update a special handling note
Update a special handling note for a record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1659


<!-- page 1660 -->
Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, sn_shn.editor, or
sn_shn.admin

About this task

Users with the sn_customerservice_manager role can update a special handling note for a
record if they can update a record for the underlying table.

Procedure
1. Navigate to All > Special Handling Notes > Special Handling Notes.
You can also update a note from the Special Handling Notes list on a form.
2. In the Special Handling Notes list, click the note to be updated.
3. Make any necessary changes to the fields on the Special Handling Notes form.
4. Click Update.
Delete a special handling note
Delete a special handling note for a record.

Before you begin

Role required: sn_customerservice_manager or sn_shn.admin

About this task

Users with the sn_customerservice_manager role can delete a special handling note if they can
delete a record for the underlying table.

Procedure
1. Navigate to All > Special Handling Notes > Special Handling Notes.
You can also delete a note from the Special Handling Notes list on a form.
2. In the Special Handling Notes list, click the note to be deleted.
3. Click Delete.
Related topics
Special handling notes
Delete a special handling note from a form
Delete a special handling note from a form
Delete a special handling note for a record from the Special Handling Notes list on the form.

Before you begin

Role required: sn_customerservice_manager or sn_shn.admin

About this task

Users with the sn_customerservice_manager role can delete a special handling note if they can
delete a record for the underlying table.

Procedure
1. Navigate to an entity form.
2. In the Special Handling Notes list, click the red X to the left of the desired note.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1660


<!-- page 1661 -->
Initially, the note remains in the Special Handling Notes list and the text of the note is crossed
out. The note is removed from the list after the form is saved.
3. Click Update.
Related topics
Special handling notes
Delete a special handling note

View team members assigned to an account
View the team members for a specific account.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, or admin

Procedure
1. Navigate to All > Customer Service > Customer > Accounts or Partners.
2. Select an account.
3. Select the Account Team Members related list.
This list displays the employees who have been assigned to the team as well as their
responsibilities.

Add an agent to the chat support assignment group
Agents must be added to the chat support assignment group before they can receive
chat requests. This assignment group is used by the Customer Service Management chat
communication channel to route chat requests.

Before you begin

Role required: sn_customerservice_manager or admin

Procedure
1. Navigate to All > User Administration > Groups.
2. Select Customer Service Support.
3. In the Group Members related list, click Edit.
4. Select the agents that you want to receive chat requests, and move them to the Customer
Service Support group members list.
5. Click Save.
Related topics
Connect Support

Approve a service contract
Approve a service contract for a customer account.

Before you begin

Role required: sn_customerservice_manager or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1661


<!-- page 1662 -->
Procedure
1. Navigate to All > Self-Service > My Approvals.
2. Select a contract for review from the Approvals list that has a state of Requested.
3. Review the contract details in the summary at the bottom of the approval form.
4. Add review comments to the Comments field.
5. Click one of the following options.
Option

Description

Approve

The review state changes to Approved on the
Approvals list.

Reject

The review state changes to Rejected on the
Approvals list. If you reject a contract, you
must enter a rejection reason in the Com­
ments field.

Outsourced Service Provider manager tasks
Manage various tasks as an Outsourced Service Provider (OSP) Manager, including onboarding
Outsourced Service Provider agents, viewing unassigned cases, and assigning cases to groups
or agents under your supervision.
Some key functions that outsourced service provider managers can perform include the
following.
Outsourced service provider manager tasks
Onboard an Outsourced Service Provider
agent

An OSP manager can onboard OSP agents to
manage and fulfill cases.

Assign a case to an OSP agent

As an Outsourced Customer Service external
manager you can assign a case to an agent
under your group.

Onboard an Outsourced Service Provider agent
An Outsourced Service Provider (OSP) manager can onboard OSP agents to manage and fulfill
cases.

Before you begin

Role required: sn_csm_ocs.ext_manager

Procedure
1. Navigate to All > Outsourced Customer Service > Onboard Agent.
2. Fill in the fields on the Onboard Outsourced Service Provider agent or manager form, as
appropriate.
Option

Description

First Name

The first name of the agent.

Last Name

The last name of the OSP agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1662


