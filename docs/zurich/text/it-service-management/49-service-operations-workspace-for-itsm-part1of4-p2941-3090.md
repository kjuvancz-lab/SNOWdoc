# Zurich IT Service Management — Service Operations Workspace for ITSM

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2941–3090 of 3857 | Part 1 of 4

Sections: Service Operations Workspace for ITSM (p2941); Explore (p2942); Configure (p2960); Customize (p3179); Operate (p3199); Manage (p3271); Optimize (p3389); Reference (p3403)

---

<!-- page 2941 -->
11. Optional: Fill in the rest of the fields.
(Optional) The following fields appear conditionally according to the cost source selected
in Service Portfolio Management. These fields are enabled as part of the financial optional
plugin for Service Portfolio Management. For financial information, the required plugin is
com.snc.financial_management_for_spm. For estimate spend information, the required plugin
is com.snc.spm.spend. Both plugins require ITSM Pro SKU.
Financials form continued
Field

Description

Cost model

The cost model that determines how the
estimated spend is calculated.

Offering cost

If the cost model is set to Fixed, then the cost
should represent the estimated cost of the
offering per time period.

Time period

Interval that you want to track the estimated
spend (day, month, quarter, year).

Cost Unit

If the cost model is set to Per unit, the cost
should represent the cost per unit.

Units per period

The number of units per period.

Estimated spend

The estimated spend for this item.

12. Select the Offering Performance tab or select Continue to Offering Performance.
13. In the field, select the KPI group that you want to measure this service offering by.
14. Select Save & Close.

Service Operations Workspace for ITSM
®

ServiceNow Service Operations Workspace is a configurable workspace that provides a unified
experience for multiple IT Service Management and IT Operations Management workflows.
Configure your agent experience using the easy-to-navigate interface of Service Operations
Workspace for ITSM.
For information about how you can automate and optimize your services and operations using
Service Operations Workspace, see Automating and optimizing your services and operations
using Service Operations Workspace .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2941


<!-- page 2942 -->
Get started with Service Operations Workspace for ITSM

Terminology used in
Service Operations
Workspace for ITSM

Exploring Service
Operations
Workspace for ITSM

Configuring
Service Operations
Workspace for ITSM

Learn about the
frequently used terms
in Service Operations
Workspace for ITSM

Learn about Service
Operations Workspace
for ITSM concepts
and features.

Learn about the
implementation and
configurations in
Service Operations
Workspace for ITSM

Operating IT services
in your organization

Managing IT services
in your organization

Optimizing IT services
in your organization

Start operating IT services
in your organization

Promptly investigate
the root cause and
resolve the incidents

Enhance and
optimize IT services
in your organization

For information about Service Operations Workspace for ITOM, see Service Operations
Workspace for ITOM .

Helpful resources
Contact Customer Service and Support

Exploring Service Operations Workspace for ITSM
You can have a unified and seamless experience when managing the life cycle of task records
such as incidents, requests, and walk-ups in IT Service Management workflows using Service
Operations Workspace (SOW) for ITSM.

Service Operations Workspace for ITSM overview
Service Operations Workspace for ITSM is a configurable workspace that provides a unified
experience for multiple IT Service Management and IT Operations Management workflows.
Configure your agent experience using the easy-to-navigate interface of Service Operations
Workspace for ITSM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2942


<!-- page 2943 -->
Accessing Service Operations Workspace for ITSM
For information about accessing Service Operations Workspace for ITSM, see Access Service
Operations Workspace for ITSM.

Service Operations Workspace for ITSM users
User

Description

Tier 1 agent

User who has the itil or sn_sow.sow_home role
and belongs to a service desk group.
Primarily focused on the life cycle of the
following records:
• Interaction
• Incident
• Request

Tier 2 agent

User with the itil role.
Primarily focused on the life cycle of the
following records:
• Incident
• Request
• Change
• Problem
• Major incident

Administrator

User who implements and sets up Service
Operations Workspace for ITSM.

Service Operations Workspace for ITSM benefits
Benefit

Feature

Users

Tailored landing page for tier 1 and tier 2 agents.
It provides an overview of outages, service
announcements, and assignments to efficiently prioritize
the work. Tier 1 agents can view and manage their
performance and learning tasks assigned by their
manager.

Service Operations Tier 1 and
Workspace for ITSM Tier 2 agents
for ITSM landing
page

Agents can manage incidents effectively with
contextual information and targeted actions. Streamline
investigations and accelerate incident resolution with the
metrics data collected from Agent Client Collector (ACC).

Incident
Management in
Service Operations
Workspace

Tier 1 and
Tier 2 agents

Agents can use information from similar incidents and
knowledge articles to accelerate incident resolution.

Recommended
Actions for ITSM in
Service Operations
Workspace

Tier 1 and
Tier 2 agents

Agents can reach out to experts on-call for high-priority
tasks.

On-Call Scheduling
in Service

Tier 1 and
Tier 2 agents

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2943


<!-- page 2944 -->
Benefit

Feature

Users

Operations
Workspace
Agents can collaborate with the requester and peers from ServiceNow
the task using Microsoft Teams chat.
integrations with
Microsoft Teams in
Service Operations
Workspace

Tier 1 and
Tier 2 agents

Agents can create requests from incidents and
interactions. Agents can also manage the entire life cycle
of requests.

Request
Management in
Service Operations
Workspace

Tier 1 and
Tier 2 agents

Agents and administrators can review and manage walkup interactions, appointments, stockrooms, and kiosks at
the walk-up service location.

Walk-up Experience Tier 1 and
management in
Tier 2 agents
Service Operations
Workspace

All logged-in users can view key features to get started
with Service Operations Workspace for ITSM.

Service Operations Tier 1 and
Workspace for ITSM Tier 2 agents
for ITSM landing
page

Administrators can have a guided experience for initial
configuration of Service Operations Workspace for ITSM.

Using guided
setup

Agents can have a unified experience for services and
Automating and
operations on a single platform by integrating with Service optimizing your
Operations Workspace for ITOM.
services and
operations using
Service Operations
Workspace

Administrator
Tier 1 agent,
Tier 2 agent,
and IT
operator

For information about key features in Service Operations Workspace for ITOM, see Exploring
Service Operations Workspace for ITOM .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2944


<!-- page 2945 -->
Service Operations Workspace for ITSM workflow for an agent

• An agent can start the day by looking at an overview of assignments, outages, service
announcements, and assignments in Service Operations Workspace to prioritize work based
on service level agreements (SLAs), priority level, and urgency.
• The agent can create an incident based on the issue reported. Since the agent has access to
related incidents and recent interactions, better and faster support can be provided. Agent
also has access to all related information from the incident record page.
• The agent can resolve the incident faster by using tailored recommendations.
• The agent can reach out to experts on-call for high-priority tasks.​
• The agent can collaborate easily with the requester and peers right from the task.
• The agent can create a change request to fix the issue.

Using guided tours to learn about Service Operations Workspace for ITSM
Use a guided tour that is sequence of interactive steps to guide an agent through a specific
process or task within Service Operations Workspace for ITSM. To access guided tours, select
the Show help icon in the navigation bar and scroll down to find the Take a Tour or Select a
Tour option. For more information about playing a guided tour, see Play a guided tour in Service
Operations Workspace.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2945


<!-- page 2946 -->
Important:
• A guided tour might break if you customize any of its associated UI elements in
your instance, so ensure that you update your guided tours as well accordingly. For
information on how to update guided tours, see Edit Guided Tours .
• The Take a Tour or Select a Tour option is available only when a guided tour is available
for that UI page.

Using guided setup to implement Service Operations Workspace for ITSM
Service Operations Workspace for ITSM guided setup provides a sequence of tasks that help an
administrator configure Service Operations Workspace for ITSM on your ServiceNow instance. To
open Service Operations Workspace for ITSM guided setup, navigate to All > Adoption Services
> Guided Setup. For more information about using the guided setup interface, see Using guided
setup .

What to explore next
To learn more about configuring and using Service Operations Workspace for ITSM, see:
• Configuring Service Operations Workspace for ITSM
• Operating IT services in your organization
• Managing IT services in your organization
• Optimizing IT services in your organization
Related topics
List of workspaces

Access Service Operations Workspace for ITSM
Experience a unified and seamless experience when managing the life cycle of task records
such as incidents and requests.

Before you begin
Role required: itil

Procedure
1. Log into your ServiceNow instance.
2. From the Workspaces menu, select Service Operations Workspace.

Service Operations Workspace for ITSM user interface
You can navigate through the Service Operations Workspace to get an overview of how an agent
can prioritize tasks and provide resolution.

Landing page
In Service Operations Workspace, you can access the landing page by selecting the home icon
(

) from the left navigation pane.

An agent can analyze assignments and view announcements and upcoming tasks. Tier 1 agents
can also analyze the performance and view the assigned courses. For information about the
landing page, see Service Operations Workspace for ITSM for ITSM landing page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2946


<!-- page 2947 -->
Lists
In Service Operations Workspace, you can access the lists by selecting the list icon (
the left navigation pane.

) from

An agent can analyze the individual lists of incidents, catalog tasks, requests, problem, and so
on, and take appropriate action.
From the My Lists tab, an agent can create a separate list or a different version of the existing
list. For information about creating a list, see Create a list in Service Operations Workspace.
List tab

Inbox
In Service Operations Workspace, you can the open inbox from the left navigation pane.
An agent can set their status to Available or Away to open or close the inbox for chat requests.
When a requester initiates a chat conversation from any Service Portal page, the chat interaction
appears in the inbox of all agents who are configured as group members for Agent Chat Queue.
For information about inbox configuration, see Configure the inbox in Service Operations
Workspace.
The following scenarios are possible for assignment of chat conversation to an agent.
• When the automatic assignment of chat conversations is enabled, the chat conversation is
automatically assigned to the agent, an interaction record is created in Service Operations
Workspace, and the agent can continue the chat conversation. Based on options selected
in the Chat - Most Capacity assignment rule, the interactions can open as non-active tabs in
the inbox. For information on enabling automatic assignment of chat conversations using this
assignment rule, see Enable automatic assignment of interactions to an agent.
• When the automatic assignment of chat conversations is not enabled, the agent can then
approve or reject the chat conversation. When the agent accepts the chat conversation, an
interaction record is created in Service Operations Workspace and the agent can continue the
chat conversation.
When the requester in Service Portal or the agent in Service Operations Workspace ends the
chat conversation, the interaction is closed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2947


<!-- page 2948 -->
Inbox

Record view
In Service Operations Workspace, you can open any task record from the landing page or from
the associated list. The record view provides complete information about the task record.
Record view

Service Operations Workspace for ITSM for ITSM landing page
An agent can get quick visibility into the work assigned, view announcements, and view
upcoming tasks.

Roles required to access the landing page
A user should have the itil role to access the landing page. A tier-1 agent is an itil user who
belongs to a service desk group. A tier-2 agent is an itil user who doesn’t belong to a service desk
group. For more information about redirection of tier-1 and tier-2 agents to the respective landing
page, see Redirect non-admin users to Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2948


<!-- page 2949 -->
Use cases
For examples of how people in your organization can use this landing page, see these use cases.
Unless specified otherwise, various sections of the landing page are available for both tier-1 and
tier-2 agents.

User

Tier 1
agent

Use case

• Get quick visibility into the work assigned to the agent or the agent's team before
starting the day.
• Analyze incidents and catalog tasks that need attention and navigate to the records
on which action should be taken.
• Monitor incidents with service level agreements (SLAs) that have been breached or
at risk, open P1 incidents, or the ones not updated in 24 hours.
To use the features in Workforce Optimization for ITSM, see the Explore key features in
Workforce Optimization for ITSM section.

Tier 2
agent

• Get quick visibility into the work assigned to the agent and the agent's team before
starting the day.
• Analyze incidents, problems, change requests, and tasks that need attention and
navigate to the records on which action should be taken.
• View the upcoming tasks and announcements.
• Access the recently viewed items.

Landing page sections
Section

Description

Header

This section displays the greeting text and shift details of the agent. For
information about how you can customize this section, see Configure the
header message on the landing page.
The image on the banner of the header section in the SOW landing page
supports custom themes for a more personalized experience.For more
information, see Configure the space man on the landing page.
The alert notification displayed on the banner of the pages in SOW is
expanded automatically to adjust and fit the complete message. For more
information, see Configure the header message on the landing page.
Header section

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2949


<!-- page 2950 -->
Section

Description

Note: A tier-1 agent with the sn_shift_planning.agent role can
navigate to the shift schedule when the Shift Planning for Configurable
Workspace application (sn_uib_agent_sp) is enabled.
Shift schedule of an agent

Overview

From this section, an agent can get an overview of various assignments from
the donuts.

Important:
• A tier-1 agent can get an overview of catalog tasks and unresolved
incidents assigned to the agent or the agent’s group.
• A tier-2 agent can get an overview of problems, change requests,
catalog tasks, and unresolved incidents assigned to the agent or the
agent’s group.
• A tier-1 or tier-2 agent can view tasks delegated to the agent by other
users.
When an agent selects any part of the donut area, the associated records
are displayed in the list view. When an agent selects the center of the donut
area, all records associated with that card are displayed in a list view. From
these list views, you can preview and update the record information in
the workspace view for the following records by pointing to a record and
selecting the preview icon (

):

• Incident
• Problem
• Interaction
• Change
• Request
For information about customizing this section, see Configure the donuts in
the tier 1 landing page.
Announcements

This section notifies an agent of any announcements. The agent can view
them in a list view or grid view.
For information about how you can customize this section, see Configure the
Announcements section on the landing page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2950


<!-- page 2951 -->
Section

Description

Announcements section

Upcoming

This section reminds agents of the upcoming tasks for the same day and
next day. You can select the link to access the task.If there’s a single record
for the task type, the record opens. If there are multiple records for the task
type, it opens a list of all records in a new tab.

Note: An agent can also view tasks delegated to the agent by other
users.

• The Today tab shows tasks that you may want to attend to on the current
day.
• The Tomorrow tab shows tasks coming up the day after the current day.
When the Workforce Optimization for ITSM plugin (sn_wfo_cfg_itsm) is
activated, you can also view your upcoming shift information and the
following tasks are displayed in this section:
• Events: Number of events such as training and time off that's related to
your shifts.

Note: If you have an upcoming PTO on the day after the current day,

in the Upcoming section, the Today list will display that you have an
upcoming PTO the next day. If you are on PTO the current day, this list
does not display that you have a PTO.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2951


<!-- page 2952 -->
Section

Description

• Shifts: Number of work shifts.
• Skill review requests: Number of requests from your manager to review
your skills.
• Shift sign-ups: Shifts that you can sign up for that are due on the current
day and the day after the current day.
For more information on Workforce Optimization for ITSM in Service
Operations Workspace, see Service Operations Workspace - Scheduling.
For information about how you can customize this section, see Configure the
Upcoming section on the landing page.
Quick links

This section displays the configured quick links. For information about how
you can customize this section, see Add a user-specific quick link on the
ITSM landing page.
Quick links section

Explore key
features
in Service
Operations
Workspace

It provides an onboarding experience by specifying all key features to get
started with Service Operations Workspace for ITSM.
Onboarding section

My performance Analyze performance targets set by your manager.

Important: This section is displayed only when the Workforce
Optimization for ITSM plugin (sn_wfo_cfg_itsm) is activated.
My active
Monitor learning tasks that you must complete. This section displays up to
learning section three learning tasks, which could include learning paths and courses that are
new, due soon, or overdue. These tasks are either the ones that have been
assigned to you or the ones you chose to self-enroll. The tasks are sorted by
the due date and they're highlighted in red when they're overdue. You can
also see the remaining duration to complete a task that you can select and
complete.

Important: This section is displayed only when the Workforce
Optimization for ITSM plugin (sn_wfo_cfg_itsm) is activated.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2952


<!-- page 2953 -->
Section

Description

For more information, see Service Operations Workspace - Learning.

Exploring Recommended Actions for ITSM in Service Operations Workspace
Recommended Actions for ITSM lets you set up and apply real-time actionable
recommendations for speeding up the triaging process. You can resolve issues quickly across
various records in the Service Operations Workspace, including Incident, Incident task, Problem,
Problem task, Change request, Change task, Interaction, and Request.

Recommended Actions for ITSM overview
https://player.vimeo.com/video/1152275586?
h=03b2d53b42&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
There are two ways in which recommendations appear: as actionable real-time
recommendations in the side panel or as field-level recommendations while updating or creating
the records in Service Operations Workspace.

Note: Field level recommendations are available only for Incidents in Service Operations
Workspace.
Agents can access recommended actions in Service Operations Workspace by selecting the
Recommendations icon ( ) in the side panel. They can also manually search for AI-powered
recommendations to quickly find solutions. These search results are available in the following
records:
• Incident
• Incident task
• Problem
• Problem task
• Change request
• Change task
• Interaction
• Request
For incident records, selecting the Recommendations icon ( ) displays the Recommended
actions and Search sub-tabs, as shown in the following diagram.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2953


<!-- page 2954 -->
Note: The Search sub-tab enables you to manually search for AI-powered
recommendations.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2954


<!-- page 2955 -->
For other records, selecting the Recommendations icon ( ) displays
only the AI-powered search results, as shown in the following

diagram.
For more information, see Get Guidance based recommendations.
Agents can view field-level recommendations in the fields of an incident form in Service
Operations Workspace. If you're on version prior to 4.2, the recommendations appeared as
messages below the field.

Note: Starting from version 4.2, field-level recommendations appearing as messages
below the field will no longer be supported to help prevent performance issues.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2955


<!-- page 2956 -->
Starting from the version 4.2, field recommendations appear in a drop-down when you select the
field. For more information, see Get field recommendations.

Request apps on the Store
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the https://www.servicenow.com/docs/bundle/store-release-notes/page/release-notes/
store/sn-store-release-notes.html .

Recommended Actions for ITSM application details
There are two versions of Recommended Actions: Standard and Advanced. For information
about installing either, see Setting up Recommended Actions for ITSM.

Recommended Actions for ITSM workflow
The workflow for Recommended Actions for ITSM includes the following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2956


<!-- page 2957 -->
1. Use Context: Use any of the following contexts to find and use the recommendations in Service
Operations Workspace.
◦ Incident
◦ Incident task
◦ Problem
◦ Problem task
◦ Change request
◦ Change task
◦ Interaction
◦ Request

Note:
◦ For incidents, you can use guidance-based recommendations in the Recommended
actions sub- tab or manually search for AI-driven recommendations in the Search subtab.
◦ AI-powered search results are available in the following eight record types: Incident,
Incident task, Problem, Problem task, Change request, Change task, Interaction, and
Request.
2. Set Rule: Configure the recommendations for required roles and conditions.
3. Create Recommendations: Create recommendations where you select a resource generator
and action types.
◦ Create Resource Generator: Resource generators provide information that you can use
as inputs to actions such as recommendation guidance and field recommendations.
The trained machine learning solution models configured in Predictive Intelligence or
Task Intelligence for ITSM are used as solutions in the generator type to get the required
recommendations for the incident forms in Service Operations Workspace.

Note:
▪ The Incident Fields value prediction (TI) and Similar Incidents (TI) are the only
recommendations where the trained models come from Task Intelligence for ITSM.
For more information, see Task Intelligence for ITSM.
▪ All remaining recommendations use the trained model from Predictive Intelligence.
For more information, see Predictive Intelligence for Incident Management.
◦ Create Action type: Configure the actions that an agent can perform for Recommended
Actions guidance. Update the following:
▪ Input: Select the input fields.
▪ Output: Select the options to decide how the recommendations should look in the input
fields.
▪ Action: Select the actions that are presented to the agent to perform the guidance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2957


<!-- page 2958 -->
Note: For more information, see Configuring Recommended Actions for ITSM in Service
Operations Workspace.
4. Get guidance-based or field-level recommendations for records in Service Operations
Workspace. For more information, see Recommended Actions for ITSM in Service Operations
Workspace.

Exploring On-call Scheduling in Service Operations Workspace
On-Call Scheduling ensures that dedicated support team members are always available to
resolve issues as they arise. You can set up on-call schedules, roster rotations, and escalation
policies, escalate notifications for a group, and determine the current contact for an escalation.
You can access your shifts and schedules within Service Operations Workspace using
Schedules options.
Managers can also use the Teams menu to perform all the administrative tasks.
See On-Call Scheduling in Service Operations Workspace for more details.

On-Call Scheduling in Service Operations Workspace workflow
The various members of an organisation use On-Call Scheduling to work together. See a sample
end-to-end

workflow:
1. Shift admin creates shift and group templates.
2. Shift admin assigns role and configures escalation trigger rules. See Roles in Service
Operations Workspace for ITSM and Assigning On-Call Scheduling roles
3. The shift manager creates a shift and add or delete members to the shift.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2958


<!-- page 2959 -->
4. Shift manager designs the entire escalation process for the new shift.
5. Roster member views their on-call schedules and find out who the other members on their
shift are.
6. Roster member can specify their availability and preferred contact methods from the methods
set up by Shift admin.
7. Roster members can submit a time-off request and refer another member of the group to cover
the shift.
8. Roster members views the roster and escalation details for a shift.
9. Roster members view on-call reports and receive reminders.
10. The shift manager approves or rejects the time-off requests.
11. Shift manager reviews the on-call schedules for their groups for any gaps and time-off
requests.
12. Shift manager provides, replace, or delete coverage and time-off requests.
13. Roster members receive on-call escalation notifications to acknowledge tasks or conference
requests.
14. Shift manager views escalation, group, and performance reports of their on-call teams.

Note: To view version compatibility matrix, view the latest release notes.
On-Call Scheduling benefits
Benefit

Feature

Users

Create a new shift, assign
Create and edit shift in Service Operations
members to the shift, set the
Workspace
shift preferences like rotations
and responder levels.

itil,
rota_manager
(Shift Manager)

Manage shifts in service operation
Manage your shift by
workspace
accepting or rejecting timeoff requests. Resolve gaps
and conflicts by providing
coverage. Assign extra-time to
the members to the shift.

itil,
rota_manager
(Shift Manager),
rota_admin

Create your own escalation
policies and path. On-Call
Scheduling allows you to
create an escalation trigger
rule using the templates
available, based on your
requirement.
Create and edit Notification
preferences for an entire
team.

Escalation triggers and policies

itil,
rota_manager
(Shift Manager),
rota_admin,
admin

Edit On-call team preference using Teams
menu

itil,
rota_manager
(Shift Manager),
rota_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2959


<!-- page 2960 -->
Benefit

Use any one of the multiple
channels such as Slack,
Microsoft Teams, mobile
push messages, SMS, and
voice messages to set as the
preferred contact method for
receiving notifications.

Feature

Users

Edit delivery channel

rota_admin,
admin

To configure delivery channels, see:
• For Slack: Setting up Slack as a contact
method
• For SMS and voice message: Setting up
SMS and voice messaging as contact
methods
• For teams: Microsoft Teams
• For mobile push notifications: Set up
mobile push as a contact method for an
on-call escalation

Note: For more details on user roles, see Assigning On-Call Scheduling roles.

Configuring Service Operations Workspace for ITSM
You can configure Service Operations Workspace so that agents can manage IT fulfillment
volume efficiently.

Migration from ITSM Agent Workspace to Service Operations Workspace for
ITSM
You can easily migrate common customizations and configurations for various features from
ITSM Agent Workspace to Service Operations Workspace for ITSM using the on-screen
migration utility. With this migration, you won't have to rebuild these features in Service
Operations Workspace for ITSM. For these features, you can migrate any specific record types
and elements or all of them.

Migration process

Important: You should run the migration in your non-production instance. If the migration
to SOW for ITSM works as expected in the non-production instance, you can move the
migration changes to a production instance using an update set.
Perform the following steps in your non-production instance.
1. Install the Migration Utility for Service Operations Workspace application. See Install the
Migration Utility for Service Operations Workspace.
2. If you have any custom ITSM table that should be migrated, specify the table in the
sn_sow_migration.itsm_aw_migration_tables system property for migrating the
associated list category and modules, list actions, related list actions and New record menu
items from ITSM Agent Workspace to Service Operations Workspace for ITSM. See Configure
the migration of a custom ITSM table from ITSM Agent Workspace to Service Operations
Workspace for ITSM.
3. Create a basic authentication configuration (sys_auth_profile_basic) to authenticate the Table
API that the migration utility uses to perform creation, updating, and deletion of records. See
Create a basic authentication configuration to migrate from ITSM Agent Workspace to Service
Operations Workspace for ITSM.
4. Create an update set to record any changes that are made to Service Operations Workspace
for ITSM during the migration. See Create and select an update set as the current set .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2960


<!-- page 2961 -->
5. Migrate from ITSM Agent Workspace to Service Operations Workspace for ITSM using the
migration utility. See Migrate from ITSM Agent Workspace to Service Operations Workspace for
ITSM.
6. If the migration to Service Operations Workspace for ITSM is working as expected in your nonproduction instance, move your migration changes to a production instance using the update
set.

Note: The logged in admin user credentials must match the credential used to setup
basic authentication to successfully perform the migration from ITSM Agent Workspace to
Service Operations Workspace for ITSM.
Related topics
Admin Center in Service Operations Workspace for ITSM
Install the Migration Utility for Service Operations Workspace
You can install the Migration Utility for Service Operations Workspace application
(sn_sow_migration) if you have the admin role.The application includes demo data and installs
®
related ServiceNow Store applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
Role required: admin

About this task

The Migration Utility for Service Operations Workspace application (sn_sow_migration) installs
the on-screen migration utility that eases the migration process from ITSM Agent Workspace to
Service Operations Workspace for ITSM.
The Agent Workspace Migration Request (sn_sow_migration_aw_migration_request) table is
installed with Migration Utility for Service Operations Workspace. This tables stores the following
migration request details:
• Customisations and configurations selected for various features
• Migration status (whether the migration is completed or in progress)
• Migration result (Customizations or configurations that are migrated successfully or failed)
• Any post migration message for the selected customizations or configurations

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Migration Utility for Service Operations Workspace application (sn_sow_migration)
using the filter criteria and search bar.
You can search for the application by its name or ID. If you cannot find the application, you
might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2961


<!-- page 2962 -->
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.
Configure the migration of a custom ITSM table from ITSM Agent Workspace to Service
Operations Workspace for ITSM
If you have a custom ITSM table that must be migrated, you must enable the migration of the
associated list categories and modules, list actions, related list actions, and New record menu
items from ITSM Agent Workspace to Service Operations Workspace for ITSM.

Before you begin

Role required: admin

Procedure
1. From the All menu, in the navigation filter, enter sys_properties.list.
2. Search for the sn_sow_migration.itsm_aw_migration_tables system property.
3. In the Value field, add the custom ITSM table's id to the comma-separated list.
By default, the Value field contains all ITSM tables whose list categories and modules, list
actions, related list actions, and New record menu items should be migrated from ITSM Agent
Workspace to Service Operations Workspace for ITSM.
4. Select Update.
Create a basic authentication configuration to migrate from ITSM Agent Workspace to Service
Operations Workspace for ITSM
Authenticate the Table API that the migration utility uses to perform creation, updating, and
deletion of records.

Before you begin

Role required: admin

About this task

This configuration must contain the credentials of the user who is logged in and has the admin
role.

Procedure
1. From the All menu, in the navigation filter, enter sys_auth_profile_basic.list.
2. On the Basic Auth Configurations page, select New.
3. On the Basic Auth Configuration form, specify the name, user name, and password.
4. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2962


<!-- page 2963 -->
Migrate from ITSM Agent Workspace to Service Operations Workspace for ITSM
Through a set of simple steps, quickly migrate your ITSM Agent Workspace features including
configurations and customizations to Service Operations Workspace for ITSM.

Before you begin

Ensure that the scope is set to Service Operations Workspace Core.
Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview > Initial Setup >
Migrate from ITSM Agent Workspace to SOW if you're upgrading from AW 2.0 or higher.
If you're installing the latest migration utility, navigate to All > Service Operations Workspace >
Migrate from ITSM Agent Workspace to SOW.
2. On the Migration from ITSM Agent Workspace to SOW page, perform the following steps.
a. Optional: If required, create a basic authentication configuration with existing or new user
credentials by selecting Create basic authentication configurations.

Important:
▪ This configuration must contain the credentials of the user who is logged in and has
the admin role.
▪ Only after you create the basic authentication configuration, create an update set to
record any changes that are made to Service Operations Workspace for ITSM in your
non-production instance during the migration. See Create and select an update set
as the current set .
b. From the Select a basic auth configuration drop-down, select the required configuration.
c. Select Test the configuration.
d. Review the mentioned guidelines.
e. Select Start migration.

Note: In case your previous migration task is partially complete, you can select
Continue migration on this page to resume the migration process.

3. On the Features to migrate from Agent Workspace page, for each feature, select the
configurations and customizations to migrate.
For information about configurations and customizations that can be migrated, see
Configurations and customizations that can be migrated from ITSM Agent workspace to SOW
for ITSM.
4. Select Next.
5. From the Migration confirmation page, review the selected features and select Confirm the
migration.
The migration can be fully or partially successful.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2963


<!-- page 2964 -->
◦ Full successful migration: All configurations and customizations of selected features are
successfully migrated to Service Operations Workspace for ITSM and captured in the
specified update sets in the non-production instance.
◦ Partial migration: All successfully migrated configurations and customizations of selected
features are captured in the specified update sets in Service Operations Workspace for
ITSM in the non-production instance.
6. Select View migration details to review the migration information.

What to do next

Complete the post-migration tasks for each configuration or customization that you have
migrated. For more information, see the following topics.
• Perform post-migration tasks for UI actions and layouts
• Perform post-migration tasks for ribbons
• Perform post-migration tasks for view rules
• Perform post-migration tasks for new records
• Perform post-migration tasks for highlighted fields in list and forms
• Perform post-migration tasks for list actions
• Perform post-migration tasks for list categories and modules
• Perform post-migration tasks for form headers
• Perform post-migration tasks for search configurations
• Perform post-migration tasks for Agent assist configuration
• Perform post-migration tasks for related list declarative form actions
• Perform post-migration tasks for field decorators form actions
Configurations and customizations that can be migrated from ITSM Agent workspace to SOW
for ITSM
Several configurations and customizations related to various ITSM Agent Workspace features
that can be migrated to SOW for ITSM.
Migration of UI actions and layouts from ITSM Agent Workspace to Service Operations
Workspace for ITSM
Migration from ITSM Agent Workspace to Service Operations Workspace for ITSM includes
identifying the required tables, identifying the eligible UI actions and layout records for
migrations, and the migration process.

UI actions
UI actions appear either as form buttons or as list items in the UI action menu.
The form header shows a group of UI actions under a single menu button or a split button.
To group UI actions, a layout is required, which acts as a container to the group.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2964


<!-- page 2965 -->
Tables used for migration
Table name

Description

UI Action [sys_ui_action]

Contains UI action and layouts configurations
to migrate.

UI Action Layout
[sys_aw_form_uiaction_layout]

Contains a set of records (base system or
custom) associated with the agent workspace.
The migration utility considers these records
as eligible for migration. All the group UI
actions specified in such UI Action Layout
[sys_aw_form_uiaction_layout] record are
migrated.

How the migration utility identifies UI actions and layouts for migration
The Service Operations Workspace migration utility identifies the eligible set of UI actions to
migrate based on the following:
• UI Action [sys_ui_action] table records that are mapped to the UX Form Actions
[sys_ux_form_action] table records.
• UX Form Actions Layout Item [sys_ux_form_action_layout_item] table records that are mapped
to UX Form Actions [sys_ux_form_action] table records.
• UX Form Actions Layout [sys_ux_form_action_layout] table records that are mapped to the
input table.

How the migration works
The Service Operations Workspace migration utility uses the following sequence to migrate the
UI actions from ITSM Agent Workspace to Service Operations Workspace for ITSM. All these
actions are done by the utility.
1. Searches for UI Action Layout [sys_aw_form_uiaction_layout] table records that are mapped to
UI Action Group [sys_aw_form_uiaction_group] records.
2. Searches for UX Form Actions Layout Group [sys_ux_form_action_layout_group] table records
that are mapped to UI Action Layout [sys_aw_form_uiaction_layout] table records. The set of UI
actions and the type of grouping must be the same for these records.
3. If a record isn’t found, creates a UX Form Actions Layout Group
[sys_ux_form_action_layout_group] table record.
The Service Operations Workspace migration utility uses the following sequence to migrate the
layouts from ITSM Agent Workspace to Service Operations Workspace for ITSM. All these actions
are done by the system.
1. Searches for UI Action Group [sys_ux_form_action_layout_group] table records that are
mapped to UX Form Actions Layout Group [sys_ux_form_action_layout_item] table records.
2. If a record isn’t found, creates a UX Form Actions Layout Group
[sys_ux_form_action_layout_item] table record and maps it to the UI Action Group
[sys_ux_form_action_layout_group] table record.
The Service Operations Workspace migration utility uses the following sequence to migrate input
tables from ITSM Agent Workspace to Service Operations Workspace for ITSM. All these actions
are done by the system.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2965


<!-- page 2966 -->
1. Searches for a UX Form Actions Layout [sys_ux_form_action_layout] table record.
2. If a UX Form Actions Layout [sys_ux_form_action_layout] table record isn’t found, completes
the migration and shows grouped UI actions in the record page as ungrouped UI actions.

Note: UI actions are grouped only if a UX Form Actions Layout
[sys_ux_form_action_layout] table record is found.
3. If a record is found, performs the migration using the following sequence:
a. Checks if the UX Form Actions Layout [sys_ux_form_action_layout] table record is unified.
For unified records, the use_layout_items_only field is selected.
b. Completes the migration if the record isn’t unified.
c. Searches for Sys Ux M2m Action Layout Item [sys_ux_m2m_action_layout_item] table
records that are mapped to the UX Form Actions Layout [sys_ux_form_action_layout] table
record.
d. If a mapped record isn’t found, creates a Sys Ux M2m Action Layout Item
[sys_ux_m2m_action_layout_item] table record.
Perform post-migration tasks for UI actions and layouts
Verify that the UI actions and layouts in Service Operations Workspace (SOW) are consistent
with UI actions and layouts in ITSM Agent Workspace (ITSM AW) and are ready for use in
SOW. You can update the migrated UI actions and layouts settings in SOW based on your
requirements.

Before you begin

When performing the migration, you must have selected the UI actions and layouts option for
ITSM Agent Workspace features. For example, the UI actions and layouts option for Incident
Management. For information about the migration process, see Migrate from ITSM Agent
Workspace to Service Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

Procedure
1. If the migration is successful, perform the following steps.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Open a record in SOW that is corresponding to a table for which UI actions and layouts are
migrated.
For example: If you want to verify the UI actions and layouts migration status for an incident,
navigate to List > Incident > All and then select any incident record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2966


<!-- page 2967 -->
c. Review the UI actions and the layout that are migrated from ITSM Agent Workspace to SOW.
d. If you want to rearrange the order of the UI actions layout, navigate to All >
sys_ux_form_action_layout.list
e. Search and select the table for which the UI actions and layout order must be changed.
For example, Incident.
f. Edit the record.
g. Check whether the sys_ux_form_action_layout record is unified for the specified table.
If the sys_ux_form_action_layout record is unified, Unify action button is not visible. If the
sys_ux_form_action_layout record is not unified, select the Unify action option to unify the
record. After the UI actions are unified, all the UI actions are displayed under UX Form Action
Layout Items related list.
h. On the UX Form Action Layout Items related list, change the order of the UI actions as
required to rearrange the layout on the record of the targeted table.
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs icon (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
How the migration works section.
Ribbons migration from ITSM Agent Workspace to Service Operations Workspace for ITSM
Migration of the ribbons from ITSM Agent Workspace to Service Operations Workspace for
ITSM includes identifying the required tables, identifying ribbons records for migration, and the
migration process.

Tables used for migration
Table name

Description

Ribbon Setting [sys_aw_ribbon_setting]

Contains all ribbon settings.

UX Ribbon Configuration
[sys_ux_ribbon_config]

Contains the ribbon configuration that is
mapped to a configurable workspace. The
migration utility uses the Service Operations
Workspace ribbon configuration.

Ribbon Configuration Setting
[sys_ux_ribbon_config_setting]

Contains mapping information between
the Ribbon Setting [sys_aw_ribbon_setting]
and the UX Ribbon Configuration
[sys_ux_ribbon_config] table records. This
information helps define and identify ribbon
settings that are applicable for the specified
workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2967


<!-- page 2968 -->
Limitation
• The combined width of the ribbon widgets must be equal to or lower than 12 for the specified
table and ribbon configuration.
• A record can’t be created when:
◦ The ribbon widgets are already configured for the specified table and ribbon configuration.
◦ The width of the ribbon setting that is being mapped with the ribbon configuration plus the
widths of the existing ribbon settings that are mapped to the same ribbon configuration is
greater than 12.

How the migration utility identifies ribbons for migration
The migration utility searches all ribbon settings for which workspace is set to ITSM Agent
Workspace in the Ribbon Setting [sys_aw_ribbon_setting] table. These ribbon settings are
candidates for migration.

How the migration works
The Service Operations Workspace migration utility uses the following sequence to migrate
ribbons from ITSM Agent Workspace to Service Operations Workspace for ITSM. All these
actions are done by the utility.
1. Calculates the total width of existing ribbons that are mapped to Service Operations
Workspace Ribbon Config plus ITSM Agent Workspace ribbons that must be migrated.
2. If the sum of widths is greater than 12, disables all existing ribbons that are mapped to the
Service Operations Workspace ribbon configuration.

Note: All ITSM Agent Workspace ribbons are migrated. The aim of the ITSM Agent
Workspace migration utility is to prioritize migrating items from ITSM Agent Workspace to
Service Operations Workspace for ITSM and so this trade-off is acceptable.
3. Creates a mapping between filtered ribbon settings and Service Operations Workspace ribbon
configuration in the Ribbon Configuration Setting [sys_ux_ribbon_config_setting] table.
Perform post-migration tasks for ribbons
Verify that the ribbons in Service Operations Workspace (SOW) are consistent with the ribbons
in ITSM Agent Workspace and the ribbons are ready for use in SOW. You can update the
migrated ribbon settings in SOW based on your requirements.

Before you begin

When performing the migration, you must have selected the Ribbons in the record form option
for ITSM Agent Workspace features. For example, the Ribbons in the record form option for
Incident Management. For information about the migration process, see Migrate from ITSM
Agent Workspace to Service Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to confirm successful migration of your configuration or customization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2968


<!-- page 2969 -->
Procedure
1. If the migration is successful, perform the following steps.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Select Lists from the navigation pane to open the Lists window in SOW and ITSM Agent
Workspace.
c. Open a record from the available lists to compare in both workspaces.
For example, select an incident by navigating to the Incidents list in both workspaces.
d. Compare the ribbons for that record in SOW and ITSM Agent Workspace records.
e. To modify any ribbon settings in SOW to match settings in All >
sys_ux_ribbon_config_setting.list.

Note: Preconfigured ribbon settings for SOW might get turned off after the migration.
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
How the migration works section.
Migration of view rules from ITSM Agent Workspace to Service Operations Workspace for
ITSM
Migration of view rules from ITSM Agent Workspace to Service Operations Workspace for
ITSM includes identifying the required tables, identifying the view rules for migrations, and the
migration process.

View rules
For information about view rules, see https://www.servicenow.com/community/developer-blog/
servicenow-view-and-view-rule-servicenow-tutorial-to-understand/ba-p/2333469 .
For information about creating a view rule, see Create a view rule

.

Tables used for migration
Table name

Description

View Rule [sysrule_view_workspace]

Contains all view rules.

UX View Rules Configuration
[sys_ux_view_rules_configuration]

Contains the view rule configuration that
is mapped to the specified configurable
workspace. The migration utility uses the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2969


<!-- page 2970 -->
Table name

Description

Service Operations Workspace view rules
configuration.
Sys Ux M2m Workspace View
Contains mapping information between view
Rule Ux View Rule Config
rules and the view rule configuration. This
[sys_ux_m2m_workspace_view_rule_ux_view_rule_config]
information helps define and identify rules that
are applicable for a workspace.

How the migration utility identifies view rules for migration
The migration utility for Service Operations Workspace identifies the set of view rules to migrate
by using the following information:
• View Rule [sysrule_view_workspace] table records for which workspace is ITSM Agent
Workspace.
• All view rules specified by the View Rule [sysrule_view_workspace] table in the ITSM Agent
Workspace.

How the migration works
The migration utility uses the following sequence to migrate the UI actions from ITSM Agent
Workspace to Service Operations Workspace for ITSM. All these actions are done by the utility.
1. Filters records from View Rule [sysrule_view_workspace] table for which workspace is ITSM
Agent Workspace.
2. Imports all view rules specified by the View Rule [sysrule_view_workspace] table in the ITSM
Agent Workspace.
3. Filters view rules that aren’t mapped to any view rules configuration.
4. Creates an m2m mapping between filtered view rules and Service Operations Workspace view
rules configurations so that the view rules are applied in Service Operations Workspace.
5. Creates a fallback view rule with the following field values while migrating view rules for the
specified table.
◦ view is workspace.
◦ order is 99999999.

Note: The fallback view rule is created because, in the ITSM Agent Workspace, the
default view for all tables is workspace
If a view rule isn’t configured for a table, the Service Operations Workspace view rule that is
consistent with the ITSM Agent Workspace is migrated.
Perform post-migration tasks for view rules
Verify that the view rules in Service Operations Workspace (SOW) are consistent with the view
rules in ITSM Agent Workspace and are ready for use in SOW. You can update the view rules
settings in SOW based on your requirements.

Before you begin

When performing the migration, you must have selected the Workspace views (form and
related list) and view rules option for ITSM Agent Workspace features. For example, the
Workspace views (form and related list) and view rules option for Incident Management. For
information about the migration process, see Migrate from ITSM Agent Workspace to Service
Operations Workspace for ITSM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2970


<!-- page 2971 -->
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to confirm successful migration of your configuration or customization.

Procedure
1. If the migration is successful, perform the following steps.
a. Open SOW and for ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open for ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Select Lists from the navigation pane to open the Lists window in SOW and for ITSM Agent
Workspace.
c. Open a record from the available lists to compare in both workspaces.
For example, select an incident by navigating to the Incidents list in both workspaces.
d. Compare the view of the record, form layout, related lists, and related lists layout SOW and
ITSM Agent Workspace records.
e. Check that user interface (UI) policies and client scripts of the ITSM Agent Workspace
record are working in the SOW record.
▪ UI policies and client scripts that are applicable for the for ITSM Agent Workspace record
also work in the SOW record after the migration of views and view rules.
▪ SOW records open in the same view as ITSM Agent Workspace records.
f. To modify any view rule in SOW to match settings in All > sysrule_view_workspace.list.
For more information about configuring view rules, see Create a view rule .

Note: Preconfigured view rules for SOW might get turned off after the migration.
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
How the migration works section.
New record menu items migration from ITSM Agent Workspace to Service Operations
Workspace for ITSM
Migration of the new record menu items from ITSM Agent Workspace to Service Operations
Workspace for ITSM includes identifying the required tables, identifying new record menu items
for migrations, and the migration process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2971


<!-- page 2972 -->
System property
sys_property: sn_sow_migration.itsm_aw_migration_tables
Records corresponding to only these tables are migrated from ITSM Agent Workspace to Service
Operations Workspace.

Table used for migration
New Record Menu Item [sys_aw_new_menu_item]: Contains the active records to migrate from
ITSM Agent Workspace to Service Operations Workspace for ITSM.

How the migration utility identifies new record menu items for migration
The Service Operations Workspace migration utility identifies the new record menu items to
migrate based on the following information:
• Active records of ITSM Agent Workspace table specified by the New Record Menu Item
[sys_aw_new_menu_item] table.
• The records of a table already mentioned in the new record menu item configuration for
Service Operations Workspace aren’t migrated to avoid duplicates.
The utility migrates only a copy of an active record if duplicate active records are specified in the
New Record Menu Item [sys_aw_new_menu_item] table.

How the migration works
The Service Operations Workspace migration utility uses the following sequence to migrate new
record menu items from ITSM Agent Workspace to Service Operations Workspace for ITSM. All
these actions are done by the utility.
1. Searches for the current new record menu item configuration for Service Operations
Workspace.
Queries the UX Page Property [sys_ux_page_property] table for the following:
◦ Service Operations Workspace page (aa881cad73c4301045216238edf6a716 is the
sysId for Service Operations Workspace page record).
◦ chrome_tab (Name for UX page property record that stores a new record menu item for
Service Operations Workspace)
2. Uses the record obtained from Step 1 to search for tables that are already part of the new
record menu item for Service Operations Workspace.
3. Ignores the existing tables during migration to avoid duplicates.
4. Searches the records of the New Record Menu Item [sys_aw_new_menu_item] table whose
field values are set as follows:
◦ active is true
◦ workspace is Agent Workspace
◦ table is one of sn_sow_migration.itsm_aw_migration_tables.
For each record, if the table name isn’t a part of existing tables and if the same table name isn’t
processed earlier, then the migration utility creates a JSON object.
5. Creates a JSON object that contains data corresponding to each record as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2972


<!-- page 2973 -->
{
"label": {
"translatable": true,
"message": "New " + tableLabel
},
"routeInfo": {
"route": "record",
"fields": {
"table": table,
"sysId": "-1"
},
"multiInstField": "sysId"
},
"condition": {
"tableDescription": {
"table": table,
"canCreate": true
}
}
};
6. Adds the code to the existing chrome_tab JSON value for the new record menu.
Perform post-migration tasks for new records
Verify that the new record menus in Service Operations Workspace (SOW) are consistent with
the new record menus in ITSM Agent Workspace (ITSM AW) and they are ready for use in SOW.
You can update the migrated new record menu settings in SOW based on your requirements.

Before you begin

When performing the migration, you must have selected the New Records option for ITSM
Agent Workspace features. For example, the New Records option for Incident Management. For
information about the migration process, see Migrate from ITSM Agent Workspace to Service
Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

Procedure
1. If the migration is successful, perform the following steps to verify the migration.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Verify that the menu items are available in the SOW.
By default, order is same as available in the ITSM Agent Workspace except for some menu
items that are available in the SOW out-of-the-box.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2973


<!-- page 2974 -->
c. To make any modifications in order in which the menu items appear on UI, navigate to All >
sys_ux_page_property.list.
d. Filter the Name with chrome_tab property.
e. Select chrome_tab property for Service Operations Workspace.
f. In the Value field, under the newTabMenu, order the JSON object for tables as required.
2. If the migration fails, perform the following steps.
a. Navigate to All > sys_ux_page_property.list
b. Filter the Name with chrome_tab property.
c. Select chrome_tab property for Service Operations Workspace.
d. In the Value field, under the newTabMenu, add JSON object for tables that are required in
SOW new record menu item in the specified format.
e. Select Update.
Migration of highlighted fields in lists and forms from ITSM Agent Workspace to Service
Operations Workspace for ITSM
Migration of the highlighted fields in lists and forms from ITSM Agent Workspace to Service
Operations Workspace for ITSM includes identifying the required tables, identifying eligible
highlighted field records for migrations, and the migration process.

Highlighted fields in lists and forms
Use colors to highlight list and form fields to get the attention of an agent or user.

Table used for migration
The migration utility uses the Highlighted Value [sys_highlighted_value] table for migration.

How the migration utility identifies highlighted fields for migration
If the table contains a set of records (base system or custom) for the ITSM Agent Workspace, the
migration utility considers the Highlighted Value [sys_highlighted_value] table for migration.

How the migration works
The Service Operations Workspace migration utility uses the following sequence to migrate
the highlighted fields in lists and forms from ITSM Agent Workspace to Service Operations
Workspace for ITSM. All these actions are done by the utility.
1. Searches for records in the Highlighted Value [sys_highlighted_value] table records that are
mapped to Sys Ux M2m Highlighted Value Config [sys_ux_m2m_highlighted_value_config]
table records.
2. If a Highlighted Value [sys_highlighted_value] table record isn’t found, creates a Highlighted
Value [sys_highlighted_value] table record.
3. Maps the Sys Ux M2m Highlighted Value Config [sys_ux_m2m_highlighted_value_config] table
record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2974


<!-- page 2975 -->
Perform post-migration tasks for highlighted fields in list and forms
Verify that the highlighted fields in list and forms in Service Operations Workspace (SOW) are
consistent with the highlighted fields in list and forms in ITSM Agent Workspace (ITSM AW)
and are ready for use in SOW. You can update the migrated highlighted fields in list and forms
settings in SOW based on your requirements.

Before you begin

When performing the migration, you must have selected the Highlighted fields in list and forms
option for ITSM Agent Workspace features. For example, the Highlighted fields in list and forms
option for Incident Management. For information about the migration process, see Migrate from
ITSM Agent Workspace to Service Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

Procedure
1. If the migration is successful, perform the following steps to verify the migration.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Open a record in SOW that is corresponding to the table for which highlighted list and form
field configurations are migrated.
For example: If you want to verify the highlighted list and form field migration status for an
incident, navigate to List > Incident > All and then select any incident record.
c. Review the highlighted list and form fields for an incident list and record to ensure if the
highlighted values are displayed as in ITSM Agent Workspace.
d. If the highlighted values are not working as expected, navigate to All >
sys_highlighted_value.list.
e. Search the Table and Field record for which the issue exists.
For example, table is Incident and field is Priority.
f. If more than one record with the same Table and Field combination exist, open the
records to check which records are mapped to the SOW Highlighted value config using the
sys_ux_m2m_highlighted_value_config record in the UX Highlighted Values Configurations
related list.
g. If there is more than one sys_highlighted_value linked to SOW Highlighted value config
for that Table and Field combination exist, review the order of the conditions in the
Highlighted Value Condition(sys_highlighted_value_condition) related list record for each
sys_highlighted_value.
The sys_highlighted_value_condition record with lower order is given precedence when
rendering the highlighted color for a field in UI.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2975


<!-- page 2976 -->
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
How the migration works section.
List actions migration from ITSM Agent Workspace to Service Operations Workspace for
ITSM
Migration of the list actions from ITSM Agent Workspace to Service Operations Workspace for
ITSM includes identifying the tables and the migration process.

List declarative actions
The declarative action framework integrates core UI behaviors such as client actions or server
scripts into workspace forms, fields, lists, and lists without editing the code.
For more information about types of declarative actions and how to create these actions, see
https://www.servicenow.com/community/next-experience-articles/introduction-to-declarativeactions/ta-p/2332003
and https://www.servicenow.com/community/developer-blog/
declarative-actions-in-servicenow-the-complete-guide/ba-p/2781607 .

Table used for migration
Action Assignment [sys_declarative_action_assignment]: Contains all list action settings.

Conditions for migration
Conditions:
Action model = List
workspace = Agent Workspace
table = ITSM tables {ys_id of the supported ITSM tables:
600f5e889f320210db9f618dfa0a1cbd} and Global table
view != sow and sow_new_record (As we are assuming sow related
view isn't customized in ITSM Agent Workspace)

How the migration works
The following are the list actions available in ITSM Agent Workspace:
• Client script
• Server script
• Client action
• UI component
Migrate the client script from ITSM Agent Workspace to Service Operations Workspace for
ITSM
Configure the client script to migrate list actions from ITSM Agent Workspace to Service
Operations Workspace for ITSM.

Before you begin

When performing the migration, you must have selected the List actions option for ITSM Agent
Workspace features. For example, the List actions option for List. For information about the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2976


<!-- page 2977 -->
migration process, see Migrate from ITSM Agent Workspace to Service Operations Workspace
for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to confirm successful migration of your configuration or customization.

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > List actions.
2. Filter the records based for Implemented As is set as Client script.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of List Actions.
4. Select the failed record with the corresponding sys_id.
5. Select and hold (or right-click) on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
9. Select Save to save the Action configurations list.
10. Select Update.
Migrate the server script from ITSM Agent Workspace to Service Operations Workspace for
ITSM
Configure the server script to migrate list actions from ITSM Agent Workspace to Service
Operations Workspace for ITSM.

Before you begin

When performing the migration, you must have selected the List actions option for ITSM Agent
Workspace features. For example, the List actions option for List. For information about the
migration process, see Migrate from ITSM Agent Workspace to Service Operations Workspace
for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to confirm successful migration of your configuration or customization.

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > List actions.
2. Filter the records based for Implemented As is set as Server script.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the List Actions list.
4. Select the failed record with the corresponding sys_id.
5. Select and hold (or right-click) on the header, and select Insert and Stay.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2977


<!-- page 2978 -->
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. In the Action configuration related list, select Edit, and then select SOW Actions from the
Collection list to the Action configurations list.
9. Save the Action configurations list by selecting Save.
10. Select Update.
Migrate the client action from ITSM Agent Workspace to Service Operations Workspace for
ITSM
Configure the client actions to migrate list actions from ITSM Agent Workspace to Service
Operations Workspace for ITSM.

Before you begin

When performing the migration, you must have selected the List actions option for ITSM Agent
Workspace features. For example, the List actions option for List. For information about the
migration process, see Migrate from ITSM Agent Workspace to Service Operations Workspace
for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to confirm successful migration of your configuration or customization.

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > List actions.
2. Filter the records based for Implemented As is set as Client action.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the List Actions list.
4. Select the failed record with the corresponding sys_id.
5. Select and hold (or right-click) on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. Update the value in the Implemented as field as UXF Client Action.
9. In the Action configuration related list, select Edit, and then select SOW Actions from the
Collection list to the Action configurations list.
10. Save the Action configurations list by selecting Save.
11. Select Update.
12. If the client action key is ITEM_SELECTED or PREVIEW_RECORD, create a
CREATE_NEW_RECORD key with the code block payload for the Action Payload Definition
[sys_declarative_action_payload_definition] table.
This step is performed only once.
{
"route": "record",
"fields": {
"table": "{{table}}",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2978


<!-- page 2979 -->
"sysId": "-1"
},
"params": {
"query": "{{query}}",
"parentTable": "{{parentTable}}",
"parentRecordSysId": "{{parentRecordSysId}}"
},
"parent_table": "{{parentTable}}",
"additional_data": {
"query": "{{query}}"
}
}
13. Modify the client action created for ITEM_SELECTED and PREVIEW_RECORD list records.
When you modify the client action, the payload map in action attributes should be transformed
based on the payload.
The following tables are used in the migration process:
◦ M2m Action Assig Ux Action Config [sys_ux_m2m_action_assignment_action_config]
◦ Action Payload Definition [sys_declarative_action_payload_definition]

Note: The ITEM_SELECTED and PREVIEW_RECORD actions function in the
ITSM Agent Workspace but not in SOW. Therefore, an action payload named
CREATE_NEW_RECORD Is introduced in SOW. While there could be other action
payloads that might not function properly, the base system client actions for the list
continue to work effectively in SOW post-migration.
Migrate the UI component from ITSM Agent Workspace to Service Operations Workspace for
ITSM
Configure the UI component to migrate list actions from ITSM Agent Workspace to Service
Operations Workspace (SOW) for ITSM.

Before you begin

When performing the migration, you must have selected the List actions option for ITSM Agent
Workspace features. For example, the List actions option for List. For information about the
migration process, see Migrate from ITSM Agent Workspace to Service Operations Workspace
for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to confirm successful migration of your configuration or customization.

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > List actions.
2. Filter the records based for Implemented As is set as UI component.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the List Actions list.
4. Select the failed record with the corresponding sys_id.
5. Select and hold (or right-click) on the header, and select Insert and Stay.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2979


<!-- page 2980 -->
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. Update the value in the Implemented as field as UXF Client Action.
9. In the Action configuration related list, select Edit, and then select SOW Actions from the
Collection list to the Action configurations list.
10. Save the Action configurations list by selecting Save.

Note:
Adding Multiple Record Associator (MRA) or Interceptor to the list isn’t a valid scenario. If
you’re migrating a customization with the MRA or Interceptor, you must verify the add-on
event mapping for the base system records. In the base system, add-on event mappings
for list declarative actions aren’t specified.
11. Select Update.
The migration utility supports MRA and interceptor declarative actions of UI component type
only.
12. For MRA, create an action payload as mentioned in the code block, update the values in action
attributes with component attributes of the ITSM Agent Workspace declarative action.
If no value is filled in the ITSM Agent Workspace declarative action record, then fill the value
with {{ key }}. For example, if the component attributes table is empty then in the payload the
value should be {{table}}.
{
"label": "label",
"extensionPoint": "extensionPoint",
"userGivenTable": "userGivenTable",
"hideSelectAll": "hideSelectAll",
"parentRecordSysId": "parentRecordSysId",
"table": "table",
"referencedFieldName": "referencedFieldName",
"type": "type",
"parentFieldName": "parentFieldName",
"columns": "columns",
"view": "view",
"relatedListName": "relatedListName"
}
13. For Interceptor, create an action payload as mentioned in the code block in the Action Payload
Definition [sys_declarative_action_payload_definition] table.
{
"table": "target",
"sysId": "-1",
"parentTable": "{{parentTable}}",
"parentSysId": "{{parentRecordSysId}}",
"referencedFieldName": "",
"pageTitle": "Create " + tableLabel,
"pageSubTitle": "Choose one of the following " + tableLabel +
" types",
"useDomain": false
}
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2980


<!-- page 2981 -->
14. Add an add-on event mapping to the migrated declarative action.
Find the matching declarative action in SOW and add all the add-on event mapping to the
migrated declarative action. Use the following steps to find the equivalent declarative action in
SOW.
a. Navigate to All > sys_ux_addon_event_mapping.list
b. Filter the table and using the migrated tablename and Target Payload Mapping contains
mra or interceptor route.
c. If the record is found, return the declarative action sys_id.
Iterate through all add-on event mappings of for the filtered declarative actions and add
them to the migrated declarative actions.
d. If the record isn’t found with the table, remove the table filter and search for
targetPayload contains route=mra or interceptor.
For List and Field decorator, you must add the MRA and interceptor add-on event mappings
manually. For more information, see Create a UX add-on event mapping .

Note:
The Change Request [change_request] interceptor record in ITSM Agent Workspace
exists in SOW.
Migrating workspace space record type selectors for the interceptor type of declarative
action are:
◦ ITSM Agent Workspace table: Workspace Record Types Selector
[aw_record_type_selector]
◦ SOW table: Record Type Selector [sn_sow_interceptor_record_type_selector]
For a Change Request [change_request] table that has a value as standard, Active is set as
False when migrating the records from ITSM Agent Workspace to SOW.
Perform post-migration tasks for list actions
Verify that the list actions in Service Operations Workspace (SOW) are consistent with the list
actions in ITSM Agent Workspace (ITSM AW) and they’re ready for use in SOW. You can update
the migrated list actions settings in SOW based on your requirements.

Before you begin

When performing the migration, you must have selected the List actions option for ITSM
Agent Workspace features. For example, the List actions option for Incident Management. For
information about the migration process, see Migrate from ITSM Agent Workspace to Service
Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2981


<!-- page 2982 -->
Procedure
1. If the migration is successful, perform the following steps.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Open the forms in ITSM Agent Workspace and SOW.
The migrated list actions are shown on the forms.
Duplicate list actions might be displayed on the form when you don't migrate the view rule.
So, SOW field declarative actions still show up even after migration if the view isn't changed.
If the migration is successfully completed and not visible in the UI or not working properly
the cross-check the conditions in Advance view.
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
List actions migration from ITSM Agent Workspace to Service Operations Workspace for
ITSM section.
List categories and modules migration from ITSM Agent Workspace to Service Operations
Workspace for ITSM
Migration from ITSM Agent Workspace to Service Operations Workspace (SOW) for ITSM
includes identifying the required tables, highlighted field records for migrations, and the
migration process.

Associated system property
If ITSM Agent Workspace contains list modules that use group-based list applicabilities, then
only enable the glide.ux.user_criteria_enabled property mentioned in the System
Property [sys_properties] table.

How the migration utility identifies list categories and modules for migration
The Migration utility for SOW identifies the list categories and modules to migrate based on the
type of migration.
Mapping list categories and modules
The migration utility maintains a mapping between base system ITSM Agent Workspace
list categories and list modules and their corresponding records in the Service Operations
Workspace. It identifies the mapping by checking the tables, conditions, and intuitiveness in
names for similarity.
Migration criteria

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2982


<!-- page 2983 -->
The migration utility uses different fields and values depending on the type of migration (list
categories, list modules, list layout, list applicabilities, and list attributes).
• List categories using the Workspace List Category [sys_aw_list_category] and UX List Category
[sys_ux_list_category] table records.
• List items and modules within each category using the Workspace List [sys_aw_list] and UX
List [sys_ux_list] table records.
• Columnar layout of list modules
• List applicabilities
• List attributes

How the migration works
The migration utility uses different fields, values, and migration steps depending on the type of
migration. All these actions are done by the utility.
Mapping and verification
1. Creates and verifies a comprehensive mapping between ITSM Agent Workspace list
categories or modules and Service Operations Workspace list categories or modules.
2. Verifies the mapping based on table, conditions, and intuitiveness in the name of the base
system list categories and modules in ITSM Agent Workspace and Service Operations
Workspace.
Migrating list categories
1. Iterates over the Workspace List Category [sys_aw_list_category] table with filter condition of
workspace = Agent Workspace.
2. Check for the mapping between ITSM Agent Workspace and Service Operations Workspace
for each list item.
3. If a mapping is found, update the list categories by copying the following fields from the current
ITSM Agent Workspace Workspace List Category [sys_aw_list_category] table record to the
mapped Service Operations Workspace UX List Category [sys_ux_list_category] table record:
◦ active
◦ description
◦ order
◦ active
4. If a mapping isn’t found, createss a record in the UX List Category [sys_ux_list_category] table.
If the mapping isn’t found, it means that the specified category exists in ITSM Agent
Workspace but the category is missing in Service Operations Workspace (new category
created by the user).
Migrating list items or modules for each category
1. Iterates over the Workspace List [sys_aw_list] table with the filter condition of the current list
item or module and workspace = Agent Workspace.
2. Checks for the mapping between ITSM Agent Workspace and Service Operations Workspace
for each list item.
3. If a mapping is found, updates the list items by copying the following fields from the current
ITSM Agent Workspace Workspace List [sys_aw_list] record to the mapped Service Operations
Workspace UX List [sys_ux_list] record:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2983


<!-- page 2984 -->
◦ title
◦ order
◦ active
◦ condition
4. If a mapping isn’t found, creates a record in the UX List [sys_ux_list] table.
If the mapping isn’t found, it means that the list item exists in ITSM Agent Workspace, but
the list item is missing in Service Operations Workspace. For such cases, the migration
utility creates a record in the UX List [sys_ux_list] table by setting the following fields from
the current ITSM Agent Workspace list record and (category = current iterating
category, configuration = Default – SOW, and view = sow):
◦ title
◦ order
◦ active
◦ condition
5. Performs the following migration after the list item is migrated (if the mapping is found) or
created (if the mapping isn’t found):
a. Migrates list applicability for the migrated or created list item:
i. Creates a list applicability using the List Applicability [sys_ux_applicability_m2m_list]
table and user criteria (if groups are specified in the list item) with the corresponding ITSM
Agent Workspace list module, roles, and groups.
ii. Attaches this newly created list applicability with the migrated or created Service
Operations Workspace list item.
The migration utility doesn’t delete any existing list applicability associated with the migrated
list.
b. Migrates columnar layout for migrated or created list item:
i. Unifies the columnar layout in Service Operations Workspace based on the layout of the
list module with a lower-order list item in the specified ITSM Agent Workspace table.
ii. Search for records with the following conditions in the List [sys_ui_list] table for setting
columnar layout in Service Operations Workspace:
▪ conditions = table (with which this list item is associated)
▪ parent list =null
For this record, the migration utility updates the List Element [sys_ui_list_element] table to
insert or update the correct order and columns.
c. Migrates list attributes for migrated or created list items:
ITSM Agent Workspace uses Omit Count and Disable Highlighted Values
list attributes. These attributes are associated with the Workspace List Attribute
[sys_aw_list_attribute] table. For the current list item record, the migration utility:
i. Iterates over the Workspace List Attribute [sys_aw_list_attribute_list] table to identify list
attributes that are associated with the specified record.
ii. Sets the corresponding attributes in the UX List [sys_ux_list] table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2984


<!-- page 2985 -->
Perform post-migration tasks for list categories and modules
Verify that the list categories and modules in Service Operations Workspace (SOW) are
consistent with the list categories and modules in ITSM Agent Workspace (ITSM AW) and the list
categories and modules are ready for use in SOW. You can update the migrated list categories
and modules settings in SOW based on your requirements.

Before you begin

When performing the migration, you must have selected the List categories and modules option
for ITSM Agent Workspace features. For example, the List categories and modules option for
Incident Management. For information about the migration process, see Migrate from ITSM
Agent Workspace to Service Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

Procedure
1. If the migration is successful, perform the following steps to verify list categories and modules
are similar in ITSM Agent Workspace and Service Operations Workspace.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Compare the list categories and modules in ITSM Agent Workspace and SOW.
Ensure that the columnar layout and list applicabilities are correctly applied.
The existing SOW list categories must be updated, and new categories must be created if
ITSM Agent Workspace contains additional categories. The migration utility does not delete
any existing or out-of-the-box categories from Service Operations Workspace.
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
List categories and modules migration from ITSM Agent Workspace to Service Operations
Workspace for ITSM section.
Migration of form headers from ITSM Agent Workspace to Service Operations Workspace for
ITSM
Migration of the form headers from ITSM Agent Workspace to Service Operations Workspace
(SOW) include identifying the required tables, eligible form header records for migrations and
the migration process. Form headers provide an overview of the record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2985


<!-- page 2986 -->
Tables used for migration
Table Name

Description

sys_aw_form_header

Table that contains all the form headers.

sys_ux_header_config

Table that contains all the form header
configurations mapped to a particular
configurable workspace such as SOW Header
Configuration.

sys_ux_m2m_workspace_header_ux_header_config
Table which contains the mapping information
that exist between sys_aw_form_header and
sys_ux_header_config tables. This enables
you to define and identify which form headers
are applicable to a particular workspace.

How the migration utility identifies form headers for migration
The SOW migration utility identifies the eligible set of form headers to be migrated based on the
following sequence:
1. Filters all the form header records that have Workspace set to Agent Workspace from the
sys_aw_form_header table.
2. Filters all the form header records that are mapped to the SOW Header Configuration record
from the sys_ux_m2m_workspace_header_ux_header_config table.
3. Based on the above filtered records, all form header records that have Workspace set to
Agent Workspace and are not mapped to SOW Header Configuration record is identified
eligible for migration.

How the migration works
The SOW migration utility uses the following sequence to migrate the form headers from ITSM
Agent Workspace to SOW:
1. Creates a mapping between the filtered form header records and the SOW Header
Configuration record in the sys_ux_m2m_workspace_header_ux_header_config table.
2. Searches the form header with Workspace set as Agent Workspace and that has the
least order value. The form header with the least order value is applied at the ITSM Agent
Workspace runtime.
3. Searches the form header which is mapped to the SOW Header Configuration record and that
has the least order value.
4. If order value of the form header that is mapped to SOW Header Configuration record is less
than the order value of the form header with Workspace set as Agent Workspace, update the
order value of the form header mapped with SOW Header Configuration record with a lesser
order value (Example: Reduce the order value by 10).
This ensures that the form header which is already applicable to ITSM Agent Workspace
during runtime is applied to SOW as well.
Perform post-migration tasks for form headers
Verify that the form header in Service Operations Workspace (SOW) are consistent with the form
header in ITSM Agent Workspace (ITSM AW) and are ready for use in SOW. You can update the
migrated form header settings in SOW based on your requirements.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2986


<!-- page 2987 -->
Before you begin

When performing the migration, you must have selected the Record form headers
option for ITSM Agent Workspace features. For example, the Record form headers
option for Change Management. For information about the migration process,
see Migrate from ITSM Agent Workspace to Service Operations Workspace for

ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

Procedure
1. If the migration is successful, perform the following steps to verify the migration.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Open a record in SOW that is corresponding to a table for which form header are migrated.
For example: If you want to verify the form header migration status for an incident form
header, navigate to List > Incident > All and then select any incident record.
c. Review the form header on the record.
You can also view the form header record in sys_aw_form_header and mapping data in the
sys_ux_m2m_workspace_header_ux_header_config table to verify the migrated data.
d. If the migration is successful and the form header that exist in ITSM Agent Workspace
is not displayed in SOW record, verify the order value of the form header in the
sys_aw_form_header table to ensure that it has the least order value.
2. If the migration fails, perform the following steps.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2987


<!-- page 2988 -->
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
How the migration works section.
Migration of search configurations from ITSM Agent Workspace to Service Operations
Workspace for ITSM
Migration of the search configuration from ITSM Agent Workspace to Service Operations
Workspace (SOW) include identifying the eligible form header records and the migration
process.

How the migration utility identifies search configuration for migration
The migration utility in SOW identifies the eligible set of search configuration records to be
migrated based on the following sequence:
1. Filters the application search sources records (sys_search_source) that are mapped to ITSM
Agent Workspace master config record using the m2m_search_context_config_search_source
table.
2. Checks the application search sources that are mapped to SOW context config record.
3. Searches each filtered record that are mapped to ITSM Agent Workspace master config record
and checks if that record is not mapped to SOW context config record to identify the search
sources which are unique to ITSM Agent Workspace only and not mapped to SOW context
config record.
4. For all those unique search records that are mapped to ITSM Agent Workspace,
the SOW migration utility creates similar mapping to SOW context config record at
m2m_search_context_config_search_source table.
5. If common search sources mapped between ITSM Agent Workspace and SOW are found and
the order of the mapping is differed in SOW from ITSM Agent Workspace, the SOW migration
utility updates the order from ITSM Agent Workspace mapping to SOW mapping.
6. Migrates the values of ITSM Agent Workspace search view config record to SOW search view
config record.
7. When both the search view config and the search sources are mapped to
SOW from ITSM Agent Workspace, the SOW migration utility updates the
globalSearchDataConfigIdSOW page property to reflect SOW context config record
available in the base system.

How the migration works
The SOW migration utility uses the following sequence to migrate the search configuration
records from ITSM Agent Workspace to SOW:
1. Searches the reference record for Global Search Data Config and Global Search View Config
using the sys_aw_master_config table in ITSM Agent Workspace.
2. Determines the Search engine type in the Global Search Data Config record. If the search
engine is zing then migration proceeds. Else, the migration process stops.
3. Using the Global Search Data Config record, a query is run on the Application Search Sources
(m2m_search_context_config_search_source) table to retrieve all the search sources.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2988


<!-- page 2989 -->
4. Using the SOW search context config available in the base system, a query is executed on the
Application Search Sources (m2m_search_context_config_search_source) table to retrieve all
the search sources.
The SOW search context config exists as a record in the sys_search_context_config table and
sys_id can be found at SOW page property called globalSearchDataConfigId.
5. Compares between the search sources by executing a query on the Application Search
Sources (m2m_search_context_config_search_source) table using Global Search Data Config
record (ITSM Agent Workspace search sources) and SOW search context config record (SOW
search sources), to find unique search sources mapped to ITSM Agent Workspace but not
SOW.
6. If the order value of a SOW search source is different than the order value of the ITSM Agent
Workspace search source at the Application Search Sources table, the SOW migration utility
updates the SOW search source with the same order value as in mapped in ITSM Agent
Workspace.
7. Creates record in the Application Search Sources
(m2m_search_context_config_search_source) table with SOW context config record that is
available in the base system and searches the unique sources that are found by comparing
the ITSM Agent Workspace search sources and SOW search sources.
8. Opens the Global Search View Config reference record that is retrieved using the
sys_aw_master_config table in ITSM Agent Workspace and copy all the values to SOW view
config record (SOW page property with name global_search_configurations). The SOW view
config record is available in the base system.
9. Updates the SOW page property globalSearchDataConfigId to have OOB SOW
context config record.
Perform post-migration tasks for search configurations
Verify that the search configurations in Service Operations Workspace (SOW) are consistent
with the search configurations in ITSM Agent Workspace (ITSM AW) and are ready for use
in SOW. You can update the migrated search configurations settings in SOW based on your
requirements.

Before you begin

When performing the migration, you must have selected the Workspace search configurations
option for ITSM Agent Workspace other features. For information about the migration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2989


<!-- page 2990 -->
process, see Migrate from ITSM Agent Workspace to Service Operations Workspace for ITSM.

Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.
When migrating the search configuration from ITSM Agent Workspace to SOW, the
globalSearchDataConfigId SOW page property is updated with SOW context config
record sys_id that is available in the base system.

Procedure
1. If the migration is successful, perform the following steps to verify the migration data.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Use the Global search on the SOW landing (Home) page to search all the record types such
as Incident, User, or Knowledge.
The search result displays the records in the order specified in the
SOW search config table that contains all the application search

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2990


<!-- page 2991 -->
sources along with the order value, migrated from ITSM Agent

Workspace.
You can also navigate to All > sow_search_config.list to compare the application search
sources and the order value in the Service Operations Workspace Search Config table with
the Agent Workspace Search Config table to understand if migration is successful. The
following screenshots depict both application search sources on the Service Operations
Workspace Search Config table and the Agent Workspace Search Config table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2991


<!-- page 2992 -->
The following screenshot depics the application search sources
on the Service Operations Workspace Search Config table.

The following screenshot depicts the application search
sources on the Agent Workspace Search Config table.

2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
How the migration works section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2992


<!-- page 2993 -->
Migration of Agent assist from ITSM Agent Workspace to Service Operations Workspace for
ITSM
Migration of the Agent assist from ITSM Agent Workspace to Service Operations Workspace
(SOW) include identifying the required tables, eligible form header records for migrations and
the migrations process.

Tables used for migration
Table name

Description

cxs_table_config

Table that contains all the Agent assist
configurations in ITSM Agent Workspace and
SOW.

declarative_action_assignment

Table that contains the sys_id of the
cxs_table_config record in the component
attributes with the cxsTableConfig key name in
ITSM Agent Workspace.

sys_ux_screen

Tables that contains the sys_id of the
cxs_table_config record in the Macroponent
Configuration field of the Agent Assist SNC
(468f70f443b47110cc25ff53e9b8f296)
record. This record is available in the base
system.

Limitations
When migrating agent assist configurations from ITSM Agent Workspace to SOW, you may
encounter any of the following issues:
• If customer has configured more than one Agent assist configuration on the same table, the
most recently updated configuration is migrated.
• The Agent assist migration from ITSM Agent Workspace overrides any pre-existing changes in
SOW.

Configuring Agent assist in ITSM Agent Workspace and SOW
You can configure Agent assist in ITSM Agent Workspace and SOW using the following tables:
• For ITSM Agent Workspace, Agent Assist configuration data exist in the following tables where
the configuration data is stored:
◦ Agent assist is configured on a particular table using a declarative action with the UI
component now-agent-assist.
◦ Configuration is stored in the cxs_table_config table.
◦ Declarative action on the table stores the sys_id of the cxs_table_config record in the
component attributes with the cxsTableConfig key name.
• For SOW, Agent assist configuration data exist in the following tables:
◦ The configuration record from cxs_table_config is stored in the Agent Assist SNC record from
sys_ux_screen.
◦ In SOW, a field named Macroponent Configuration contains the mapping of each individual
table with its configured sys_id of cxs_table_config record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2993


<!-- page 2994 -->
How the migration utility identifies Agent assist for migration
The SOW migration utility identifies the eligible agent assist configuration records for migration
from ITSM Agent Workspace to SOW only if the configuration records meet the following
conditions:
• The Workspace field is set to Agent Workspace.
• The ui_component field has the value now-agent-assist.
• The Table field is set to a value (table) for which migration must be done.
• The Active check box is selected.

How the migration works
The SOW migration utility uses the following sequence to migrate Agent assist from ITSM Agent
Workspace to SOW:
1. Searches the sys_declarative_action_assignment table with the following conditions and only
retrieves the record which is recently updated.
◦ The Workspace field is set to Agent Workspace.
◦ The ui_component field has the value now-agent-assist.
◦ The Table field is set to a value (table) for which migration must be done.
◦ The Active check box is selected.
2. If the sys_declarative_action_assignment record is found with the conditions, then the value in
the cxsTableConfig is copied to the Agent assist SNC record from the sys_ux_screen against its
corresponding table key.
The following screenshot depicts sys_id's of all the record types in
the Macroponent Configuration field of the Agent assist SNC record.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2994


<!-- page 2995 -->
The following screenshot depicts the Agent assist for incident sys_id
record that contains the cxsTableConfig as the component attributes.

3. If multiple configurations exist for same table, the SOW migration utility migrates the one that
was most recently updated.
4. If an active configuration is not found in the table then the sow configuration remains same
and is not updated.
Perform post-migration tasks for Agent assist configuration
Verify that the Agent assist configurations in Service Operations Workspace (SOW) are
consistent with the Agent assist configurations in ITSM Agent Workspace (ITSM AW) and are
ready for use in SOW. You can update the migrated Agent assist configuration settings in SOW
based on your requirements.

Before you begin

When performing the migration, you must have selected the Agent Assist Configuration option
for ITSM Agent Workspace features. For example, the Agent Assist Configuration option for
Incident Management. For information about the migration process, see Migrate from ITSM
Agent Workspace to Service Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2995


<!-- page 2996 -->
Procedure
1. If the migration is successful, perform the following steps to verify the Agent assist
configuration.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Open a record in SOW that is corresponding to a table for which Agent assist configuration
is migrated.
For example: If you want to verify the Agent assist configuration migration status for an
incident, navigate to List > Incident > All and then select any incident record.
c. Select the Agent Assist (

) icon from the Contextual side panel.

d. Review the Agent assist side panel to verify that the Agent assist configurations for all
selected tables are available in SOW same as in ITSM Agent Workspace.
e. Navigate to All > sys_ux_screen.list and ensure that the Macroponent Configuration field
and mappings are applied to Agent assist SNC record.
f. Perform thorough testing to confirm that all migrated configurations function as expected in
SOW.
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. For each failed item, identify which step has failed and perform the steps mentioned in the
How the migration works.
Migration of Related list declarative actions from ITSM Agent Workspace to Service
Operations Workspace for ITSM
Migration of the related list declarative actions from ITSM Agent Workspace to Service
Operations Workspace that includes identifying the tables and the migration process.
The Declarative Action framework is used to integrate Core UI behaviors such as client actions or
server scripts into Workspace forms, fields, lists, and related lists without the need to edit code.

Tables used for migration
Action Assignment [sys_declarative_action_assignment]: Contains all declarative settings.

Conditions for migration
Conditions:
Action model = Related List
workspace = Agent Workspace
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2996


<!-- page 2997 -->
table = {sys_id of the supported ITSM tables:
600f5e889f320210db9f618dfa0a1cbd and <global table>}
//We support records which are mapped to ITSM tables and Global
table. The mapping the related list to ITSM table can be found
in sys_ui_related_list_entry.
view != sow and sow_new_record
//(Considering that sow related view isn't customized in ITSM
Agent Workspace)

How the migration works
The SOW migration utility uses the following to migrate the related list declarative actions along
with type available in ITSM Agent Workspace to SOW:
• Client Script
• Server Script
• Client Action
• UI Component
Migrate the client script from ITSM Agent Workspace to Service Operations Workspace
Configure the client script to migrate the related list declarative actions from ITSM Agent
Workspace to Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Related List actions.
2. Filter the records based for Implemented As is set as Client script.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of Related List Actions.
4. Select the failed record with the corresponding sys_id.
5. Right-click on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
9. Select Save to save the Action configurations related list.
10. Select Update.
Migrate the server script from ITSM Agent Workspace to Service Operations Workspace
Configure the server script to migrate related list declarative actions from ITSM Agent Workspace
to Service Operations Workspace.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2997


<!-- page 2998 -->
Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Related List actions.
2. Filter the records based for Implemented As is set as Server script.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of Related List Actions.
4. Select the failed record with the corresponding sys_id.
5. Right-click on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
9. Select Save to save the Action configurations related list.
10. Select Update.
Migrate the client action from ITSM Agent Workspace to Service Operations Workspace
Configure the client actions to migrate related list declarative actions from ITSM Agent
Workspace to Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Related List actions.
2. Filter the records based for Implemented As is set as Client action.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of Related List Actions.
4. Select the failed record with the corresponding sys_id.
5. Right-click on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. Update the value in the Implemented as field as UXF Client Action.
9. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
10. Select Save to save the Action configurations related list.
11. Select Update.
12. If specify client action key is ITEM_SELECTED or PREVIEW_RECORD, create
CREATE_NEW_RECORD key with the payload mentioned below in the code block in the
sys_declarative_action_payload_definition table.
This step is performed only once.
{
"route": "record",
"fields": {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2998


<!-- page 2999 -->
"table": "{{table}}",
"sysId": "-1"
},
"params": {
"query": "{{query}}",
"parentTable": "{{parentTable}}",
"parentRecordSysId": "{{parentRecordSysId}}"
},
"parent_table": "{{parentTable}}",
"additional_data": {
"query": "{{query}}"
}
}
13. Modify the client action created for ITEM_SELECTED and PREVIEW_RECORD declarative
actions records.
When you modify the specific client action, then payload Map in action Attributes should be
transformed based on the payload.
The following tables are used in the migration process:
◦ sys_ux_m2m_action_assignment_action_config
◦ sys_declarative_action_payload_definition

Note: The ITEM_SELECTED and PREVIEW_RECORD actions function in the
ITSM Agent Workspace but not in SOW. Therefore, a new action payload named
"CREATE_NEW_RECORD" Is introduced in SOW. While there could be other action
payloads that might not function properly, the base system client actions for List continue
to work effectively in SOW post-migration.
Migrate the UI component from ITSM Agent Workspace to Service Operations Workspace
Configure the UI component to migrate related list declarative actions from ITSM Agent
Workspace to Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Related List actions.
2. Filter the records based for Implemented As is set as UI component.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2999


<!-- page 3000 -->
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of Related List Actions.
4. Select the failed record with the corresponding sys_id.
5. Right-click on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. Update the value in the Implemented as field as UXF Client Action.
9. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
10. Select Save to save the Action configurations related list.
11. Select Update.
The migration utility supports MRA and interceptor declarative actions of UI Component type
only.
12. For MRA, create an action payload as specified below, update the values in action attributes
with component attributes of ITSM Agent Workspace declarative action.
If no value is filled in the ITSM Agent Workspace declarative action record, then fill the value
with {{ key }}. For example, if the component attributes table is empty then in the payload the
value should {{table}}.
{
"label": "label",
"extensionPoint": "extensionPoint",
"userGivenTable": "userGivenTable",
"hideSelectAll": "hideSelectAll",
"parentRecordSysId": "parentRecordSysId",
"table": "table",
"referencedFieldName": "referencedFieldName",
"type": "type",
"parentFieldName": "parentFieldName",
"columns": "columns",
"view": "view",
"relatedListName": "relatedListName"
}
13. For Interceptor, create an action payload as specified below in the
sys_declarative_action_payload_definition table.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3000


<!-- page 3001 -->
{
"table": "target",
"sysId": "-1",
"parentTable": "{{parentTable}}",
"parentSysId": "{{parentRecordSysId}}",
"referencedFieldName": "",
"pageTitle": "Create " + tableLabel,
"pageSubTitle": "Choose one of the following " + tableLabel +
" types",
"useDomain": false
}
14. Add an add-on event mapping to the migrated declarative action.
Find the matching declarative action in SOW and add all the add-on event mapping to the
migrated declarative action. Use the following steps to find the equivalent declarative action in
SOW.
a. Navigate to All > sys_ux_addon_event_mapping.list
b. Filter the table and using the migrated tablename and Target Payload Mapping contains
mra or interceptor route.
c. If the record is found, return the declarative action sys_id.
Iterate through all add-on event mappings of the found DA and add them to the migrated DA.
d. If the record isn’t found with the table, remove the table filter and search for targetPayload
contains route=mra or interceptor.
For List and Field decorator, you must add the MRA and interceptor add-on event mappings
manually. For more information, see Create a UX add-on event mapping .

Note:
The Change_request interceptor record in ITSM Agent Workspace exists in SOW.
Migrating workspace space record type selector for the interceptor type of declarative
action are:
◦ ITSM Agent Workspace table: aw_record_type_selector
◦ SOW table: sn_sow_interceptor_record_type_selector
For a change_request table that has a value as standard, Active is set as False when migrating
the records from ITSM Agent Workspace to SOW.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3001


<!-- page 3002 -->
Perform post-migration tasks for related list declarative form actions
Verify that the related list declarative form actions in Service Operations Workspace (SOW) are
consistent with the related list declarative form actions in ITSM Agent Workspace (ITSM AW) and
they’re ready for use in SOW. You can update the migrated related list declarative form actions
settings in SOW based on your requirements.

Before you begin

When performing the migration, you must have selected the Relative list declarative form
actions option for ITSM Agent Workspace features. For example, the Relative list declarative
form actions option for Incident Management. For information about the migration process, see
Migrate from ITSM Agent Workspace to Service Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

Procedure
1. If the migration is successful, perform the following steps to verify the related list actions are
visible on the forms.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Open the forms in ITSM Agent Workspace and SOW.
The migrated related list actions are shown on the forms.
Duplicate related list actions might be displayed on the form when you don't migrate the
view rule. So, SOW field declarative actions still show up even after migration if the view isn't
changed.
If the migration is successfully completed and not visible in the UI or not working properly
the cross-check the conditions in Advance view.
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. Based on each failed item, identify which step has failed and perform the steps mentioned
in the following topics.
▪ Migrate the client script from ITSM Agent Workspace to Service Operations Workspace
▪ Migrate the server script from ITSM Agent Workspace to Service Operations Workspace
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3002


<!-- page 3003 -->
▪ Migrate the client action from ITSM Agent Workspace to Service Operations Workspace
▪ Migrate the UI component from ITSM Agent Workspace to Service Operations Workspace
Migration of field decorators from ITSM Agent Workspace to Service Operations Workspace
for ITSM
Migration of the field decorators actions from ITSM Agent Workspace to Service Operations
Workspace that includes identifying the tables and the migration process.
The Declarative Action framework is used to integrate Core UI behaviors such as client actions or
server scripts into Workspace forms, fields, lists, and related lists without the need to edit code.

Tables used for migration
Action Assignment [sys_declarative_action_assignment]: Contains all declarative settings.

Conditions for migration
Conditions:
Action model = Field
workspace = Agent Workspace
table = {sys_id of the supported ITSM tables:
600f5e889f320210db9f618dfa0a1cbd and <global table>}
//We support records which are mapped to ITSM tables and Global
table. The mapping the related list to ITSM table can be found
in sys_ui_related_list_entry.
view != sow and sow_new_record
//(Considering that sow related view isn't customized in ITSM
Agent Workspace)

How the migration works
The SOW migration utility uses the following to migrate the field decorator actions along with
type available in ITSM Agent Workspace to SOW:
• Client Script
• Server Script
• Client Action
• UI Component
Migrate the client script from ITSM Agent Workspace to Service Operations Workspace for
field decorators actions
Configure the client script to migrate field decorators actions from ITSM Agent Workspace to
Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Field Decorators.
2. Filter the records based for Implemented As is set as Client script.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of Related List Actions.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3003


<!-- page 3004 -->
4. Select the failed record with the corresponding sys_id.
5. Right-click on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
9. Select Save to save the Action configurations related list.
10. Select Update.
Migrate the server script from ITSM Agent Workspace to Service Operations Workspace for
field decorators actions
Configure the server script to migrate field decorators actions from ITSM Agent Workspace to
Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Field Decorators.
2. Filter the records based for Implemented As is set as Server script.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of Related List Actions.
4. Select the failed record with the corresponding sys_id.
5. Right-click on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
9. Select Save to save the Action configurations related list.
10. Select Update.
Migrate the client action from ITSM Agent Workspace to Service Operations Workspace for
field decorators actions
Configure the client actions to migrate field decorators actions from ITSM Agent Workspace to
Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Field Decorators.
2. Filter the records based for Implemented As is set as Client action.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of Related List Actions.
4. Select the failed record with the corresponding sys_id.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3004


<!-- page 3005 -->
5. Right-click on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. Update the value in the Implemented as field as UXF Client Action.
9. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
10. Select Save to save the Action configurations related list.
11. Select Update.
12. If specify client action key is ITEM_SELECTED or PREVIEW_RECORD, create
CREATE_NEW_RECORD key with the payload mentioned below in the code block in the
sys_declarative_action_payload_definition table.
This step is performed only once.
{
"route": "record",
"fields": {
"table": "{{table}}",
"sysId": "-1"
},
"params": {
"query": "{{query}}",
"parentTable": "{{parentTable}}",
"parentRecordSysId": "{{parentRecordSysId}}"
},
"parent_table": "{{parentTable}}",
"additional_data": {
"query": "{{query}}"
}
}
13. Modify the client action created for ITEM_SELECTED and PREVIEW_RECORD declarative
actions records.
When you modify the client action, then the payload Map in action Attributes should be
transformed based on the payload.
The following tables are used in the migration process:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3005


<!-- page 3006 -->
◦ sys_ux_m2m_action_assignment_action_config
◦ sys_declarative_action_payload_definition

Note: The ITEM_SELECTED and PREVIEW_RECORD actions function in the
ITSM Agent Workspace but not in SOW. Therefore, a new action payload named
"CREATE_NEW_RECORD" Is introduced in SOW. While there could be other action
payloads that might not function properly, the base system client actions for List continue
to work effectively in SOW post-migration.
Migrate the UI component from ITSM Agent Workspace to Service Operations Workspace for
field decorators actions
Configure the UI component to migrate field decorators actions from ITSM Agent Workspace to
Service Operations Workspace.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Now Experience Framework > Declarative Actions > Field Decorators.
2. Filter the records based for Implemented As is set as UI component.
3. View the log in the failed record in the migration process and find the sys_Id of the record
from the list of Related List Actions.
4. Select the failed record with the corresponding sys_id.
5. Right-click on the header, and select Insert and Stay.
6. Clear the Workspace and View fields.
7. Select the Experience Restricted check box.
8. Update the value in the Implemented as field as UXF Client Action.
9. In the Action configuration related list, select Edit, and then select SOW Actions from
Collection to Action configurations list.
10. Select Save to save the Action configurations related list.

Note: Adding MRA or Interceptor to the field isn’t a valid scenario. If there is still a
customization, you must verify add-on event mapping in the base system. In the base
system, the add-on event mappings for field declarative action are unavailable.
11. Select Update.
The migration utility supports MRA and interceptor declarative actions of UI Component type
only.
12. For MRA, create an action payload as specified below, update the values in action attributes
with component attributes of ITSM Agent Workspace declarative action.
If no value is filled in the ITSM Agent Workspace declarative action record, then fill the value
with {{ key }}. For example, if the component attributes table is empty then in the payload the
value should {{table}}.
{
"label": "label",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3006


<!-- page 3007 -->
"extensionPoint": "extensionPoint",
"userGivenTable": "userGivenTable",
"hideSelectAll": "hideSelectAll",
"parentRecordSysId": "parentRecordSysId",
"table": "table",
"referencedFieldName": "referencedFieldName",
"type": "type",
"parentFieldName": "parentFieldName",
"columns": "columns",
"view": "view",
"relatedListName": "relatedListName"
}
13. For Interceptor, create an action payload as specified below in the
sys_declarative_action_payload_definition table.
{
"table": "target",
"sysId": "-1",
"parentTable": "{{parentTable}}",
"parentSysId": "{{parentRecordSysId}}",
"referencedFieldName": "",
"pageTitle": "Create " + tableLabel,
"pageSubTitle": "Choose one of the following " + tableLabel +
" types",
"useDomain": false
}
14. Add an add-on event mapping to the migrated declarative action.
Find the matching declarative action in SOW and add all the add-on event mapping to the
migrated declarative action. Use the following steps to find the equivalent declarative action in
SOW.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3007


<!-- page 3008 -->
a. Navigate to All > sys_ux_addon_event_mapping.list
b. Filter the table and using the migrated tablename and Target Payload Mapping contains
mra or interceptor route.
c. If the record is found, return the declarative action sys_id.
Iterate through all add-on event mapping of the found DA and add them to the migrated DA.
d. If the record isn’t found with the table, remove the table filter and search for targetPayload
contains route=mra or interceptor.
For List and Field decorator, you must add the mra and interceptor add-on event mappings
manually. For more information, see Create a UX add-on event mapping .

Note:
The Change_request interceptor record in ITSM Agent Workspace exists in SOW.
Migrating workspace space record type selector for the interceptor type of declarative
action are:
◦ ITSM Agent Workspace table: aw_record_type_selector
◦ SOW table: sn_sow_interceptor_record_type_selector
For a change_request table that has a value as standard, Active is set as False when migrating
the records from ITSM Agent Workspace to SOW.
Perform post-migration tasks for field decorators form actions
Verify that the field decorators form actions in Service Operations Workspace (SOW) are
consistent with the field declarative form actions in ITSM Agent Workspace (ITSM AW) and
they’re ready for use in SOW. You can update the migrated field declarative form actions settings
in SOW based on your requirements.

Before you begin

When performing the migration, you must have selected the Field decorators form actions
option for ITSM Agent Workspace features. For example, the Field decorators form actions
option for Incident Management. For information about the migration process, see Migrate from
ITSM Agent Workspace to Service Operations Workspace for ITSM.
Role required: admin

About this task

At the end of the migration process, a confirmation message specifies if the migration is
successful or not. You can review the migration information and perform the post-migration steps
to ensure successful migration of your configuration or customization.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3008


<!-- page 3009 -->
Procedure
1. If the migration is successful, perform the following steps to verify the field decorator are
visible on the forms.
a. Open SOW for ITSM and ITSM Agent Workspace instances.
▪ To open SOW, navigate to All > Workspace Experience > Workspaces > Service
Operations Workspace.
▪ To open ITSM Agent Workspace, enter <instance-name>.service-now/
workspace in the web browser.
b. Open the forms in ITSM Agent Workspace and SOW.
The migrated field decorator actions are shown on the forms.
Duplicate field decorator actions might be displayed on the form when you don't migrate the
view rule. So, SOW field declarative actions still show up even after migration if the view isn't
changed.
If the migration is successfully completed and not visible in the UI or not working properly
the cross-check the conditions in Advance view.
2. If the migration fails, perform the following steps.
a. On the migration completion page in SOW Admin Center, select View migration details.
b. Select the Go to system logs (

) icon.

c. Review the logs to determine which items failed during migration.
d. Based on each failed item, identify which step has failed and perform the steps mentioned
in the following topics.
▪ Migrate the client script from ITSM Agent Workspace to Service Operations Workspace for
field decorators actions
▪ Migrate the server script from ITSM Agent Workspace to Service Operations Workspace
for field decorators actions
▪ Migrate the client action from ITSM Agent Workspace to Service Operations Workspace
for field decorators actions
▪ Migrate the UI component from ITSM Agent Workspace to Service Operations Workspace
for field decorators actions

Getting started with Service Operations Workspace for ITSM
Quickly understand how you can implement the essential setup to get started with Service
Operations Workspace.
Procure the ITSM Standard license or above for ServiceNow IT Service Management
applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3009


<!-- page 3010 -->
Service Operations Workspace Admin Center
It provides effortless and quick access to manage most configurations in Service Operations
Workspace for IT Service Management (ITSM). It also provides centralized control of the instance
to admins.

Related topics
Roles in Service Operations Workspace for ITSM
Users in Service Operations Workspace for ITSM
Access controls in Service Operations Workspace for ITSM
Landing page redirection in Service Operations Workspace for ITSM
Roles in Service Operations Workspace for ITSM
You can configure the user access for Service Operations Workspace (SOW) pages using
various roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3010


<!-- page 3011 -->
Note: You must install and activate the ITSM Roles plugin (com.snc.itsm.roles) to correctly
utilize all the SOW user roles including the granular admin roles.
Roles in Service Operations Workspace for ITSM
Role

Description

Inherited roles

itil

Provides access to all SOW pages.

sn_sow.sow_user

sn_sow.sow_user

Provides access to SOW. By default, the itil
role contains the sn_sow.sow_user. In case
a user has roles other than itil, ensure that
sn_sow.sow_user role is assigned to the user
to access SOW.

None

sn_sow.sow_home

Provides access to SOW home (landing)
page.

sn_sow.sow_user

sn_sow.sow_list

Provides access to SOW list pages.

sn_sow.sow_user

admin

Provides access to all the pages in SOW
including SOW Admin Center.

None

A user with this role can perform
configurations for all modules in SOW Admin
Center.
sn_sow_itsm_admin_sow_admin_user

Provides access to the ITSM section of the
Admin Center for SOW configuration.

sn_sow_admin_sow_

sn_sow_admin_sow_admin_center_user

Provides access to the Admin Center pages.

sn_ace.ace_user

awa_agent

Provides access to inbox in SOW.

None

sn_sow.it_agent_dashboard_user

Provides access to IT Agent Dashboard.

None

sn_sow_admin.sn_sow_admin

Provides access to the SOW Admin Center
page for configurations. Admins can use the
role to configure SOW features and maintain
organizational policies.

Service desk agent
[sn_service_desk_agent]

• sn_sow_inc.sn_inc

• sn_sow_problem.s

• sn_sow_chg.sn_ch

Note: To configure SOW features,

• sn_sow_mim.sn_m

you also require additional roles along
with the SOW admin role to access
specific sections and pages in SOW
admin center. For more information, see
Additional roles for SOW admin.

• sn_sow_interactio

Enables gathering, and verifying information,
as well as delivering quick resolutions for
tier 1 service desk agents. This user role
is available when the ITSM Roles plugin
(com.snc.itsm.roles) is installed.

• sn_sow_collab.sn_

• sn_sow_srm.srm_a

• sn_sow_on_call.sn

• sn_incident_write

• sn_problem_write
• sn_change_write
• sn_request_write

• tracked_file_reade
With the installation
(com.sn.itsm.gen.ai)
are also assigned:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3011


<!-- page 3012 -->
Roles in Service Operations Workspace for ITSM (continued)
Role

Description

Inherited roles

• knowledge_user

• now_assist_panel_
Incident Management
sn_incident_read

sn_incident_write

Incident Manager
[incident_manager]

Provides the read access to incident record
pages.

sn_sow.sow_home a

Provides the write access to incident record
pages.

sn_sow.sow_home a

• Manages incident properties and major
incident trigger rules.

(Existing role with added responsibilities)

• Can create and edit Communication Plan
Definitions.

sn_sow_inc.sn_incident_sow_admin

Provides access to SOW Admin Center
for configurations related to Incident
Management features.

So, users with the sn
access the SOW hom

So, users with the sn
access the SOW hom
itil

• sn_incident_write

• sn_sow_itsm_adm

Major Incident Management
Major incident manager

A major incident manager can:

[major_incident_manager]

• Initiate the major incident process by
assessing and approving major incident
candidates or creating a major incident.

This role inherits the

• Reject a major incident candidate.
• Demote a major incident after it is accepted
so that the incident can be handled as a
regular incident.
• Maintain the ownership and accountability
for the life cycle of the incident.
• Identifies the users and groups to be
involved in the resolution activities.
• Creates adhoc communication plans and
tasks.
• Edits a communication plan that is attached
to a major incident.
• Close a major incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3012


<!-- page 3013 -->
Roles in Service Operations Workspace for ITSM (continued)
Role

Communications manager
[communication_manager]

Description

• Manages communications for major
incidents and is responsible for
communicating with all stakeholders.

Inherited roles

This role inherits the

• Creates adhoc communication plans and
tasks.
• Edits a communication plan that is attached
to a major incident.
sn_sow_mim.sn_mim_sow_admin

Provides access to the SOW Admin Center
pages for configurations related to MIM
features.

sow_admin_user

However, to perform configuration of the
following MIM features from Admin Center,
along with sn_mim_sow_admin role, you
must also have additional role that provides
access to the specific table where you want to
configure:
• MIM Trigger rules - incident_manager or
major_incident_manager
• Configure email - mail_client_template_read
• Configure SMS - notify_admin or notify_view
• Communication plans sn_comm_management.comm_plan_viewer
In case, you do not have the relevant
additional role, you still can access the Major
Incident Management (MIM) configuration
section of the Admin Center but the
Configure option is not enabled and you
cannot configure the specific MIM feature.
Problem Management
problem_task_analyst

Works on a problem task and manages it
through its life cycle.

None

problem_coordinator

Works on a problem or problem task and
manages it through its life cycle.

itil and problem_task

problem_manager

Responsible for the overall Problem
Management process and can configure
Problem Management settings, as well as act
as a problem coordinator.

problem_coordinato

problem_admin

A problem manager who can also delete
problems and problem tasks.

problem_manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3013


<!-- page 3014 -->
Roles in Service Operations Workspace for ITSM (continued)
Role

Description

Inherited roles

sn_problem_read

Provides the read access to problem record
pages.

sn_sow.sow_home a
users with the sn_pr
the SOW home (land

sn_problem_write

Provides the write access to problem record
pages.

sn_sow.sow_home a
users with the sn_pr
the SOW home (land

sn_sow_problem.sn_problem_sow_admin Provides access to the SOW Admin
Center pages for Problem Management
configurations.

sn_problem_write

Change Management
sn_change_read

sn_change_write

change_manager

Provides the read access to change record
pages.

sn_sow.sow_home a

Provides the write access to change record
pages.

sn_sow.sow_home a

Provides access to configurations related to
Change Management in SOW Admin Center.

So, users with the sn
access the SOW hom

So, users with the sn
access the SOW hom

• sn_sttrm_attribute

• sn_sttrm_condition

• sn_chg_soc.chang

• personalize_decis

• sn_sow_admin.sow
• itil
sn_devops.viewer

Provides access to view or add DevOps data
to a change request.

None

Provides the read access to request record
pages.

sn_sow.sow_home a

Provides the write access to request record
pages.

sn_sow.sow_home a

Request Management
sn_request_read

sn_request_write

So, users with the sn
access the SOW hom

So, users with the sn
access the SOW hom

On-call Scheduling
oc_read

Provides the read access to Schedules page.

Users with the oc_re
On-call Schedules, E
Tracking, and other O
Operations Workspa

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3014


<!-- page 3015 -->
Roles in Service Operations Workspace for ITSM (continued)
Role

Description

rota_admin

Provides access to Teams, Schedules, and
Home pages in SOW. By default, for a user
with this role, the Teams page is displayed.

sn_sow_on_call.sn_on_call_sow_admin

Inherited roles

Provides access to the SOW Admin Center
pages for on-call configurations.

• sn_sow.sow_home
• oc_read

• sn_sow_itsm_adm

• sn_help_setup_pla

Users in Service Operations Workspace for ITSM
Users can access various Service Operations Workspace for ITSM pages based on assigned
roles and associated service desk groups and audiences.
Users in SOW
User

Description

Tier 1 agent

User who has the itil or sn_sow.sow_home role
and belongs to a service desk group.
Primarily focused on the life cycle of the
following records:
• Interaction
• Incident
• Request

Tier 2 agent

User with the itil role.
Primarily focused on the life cycle of the
following records:
• Incident
• Request
• Change
• Problem
• Major incident

Configure the theme for Service Operations Workspace for ITSM
Configure the visual experience in Service Operations Workspace for ITSM for your users,
helping to update the look and feel to be more like your brand.

Before you begin

Role required: sn_sow_admin.sn_sow_admin or admin

Procedure
1. Install the Theme Builder store application.
a. Navigate to All > System Definition > Plugins.
b. Search for the Theme Builder (sn_theme_builder) application and install it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3015


<!-- page 3016 -->
2. Create a theme using Theme Builder by referring to Create a theme with Theme Builder .
Polaris is the default theme for Next Experience, and this theme cannot be copied. So, we must
create a theme and publish it for use.
3. Use the experience preview to preview the theme in the workspace.
4. Select Apply theme form the drop-down in the top-right corner.
Theme is deployed at the instance level.
5. Select View issues to review accessibility issues if the theme does not meet accessibility
requirements.
For example, issues with contrast between colors and text for backgrounds and buttons.
6. Select Apply.
Access controls in Service Operations Workspace for ITSM
You can determine which users can access Service Operations Workspace for ITSM after logging
in to the ServiceNow instance or access the Service Operations Workspace for ITSM landing
page.
For a user, access to Service Operations Workspace for ITSM is based on the following criteria:
• Is the redirection upon login enabled to the Service Operations Workspace landing page.
• Does the user have the sn_sow.sow_user role to access SOW manually or when redirected
upon login.

Note:
◦ The itil role contains the sn_sow.sow_user role. But if the user has any custom or
granular roles other than itil, then the sn_sow.sow_user role should be assigned to the
user and the audiences should be updated with custom roles.
◦ Custom roles require updates to ACLs (access control lists) that restrict access to
certain functionality.
• First audience that the user belongs to.

Types of landing pages in Service Operations Workspace for ITSM
Landing pages provide an agent with quick visibility into the work assigned, announcements,
upcoming tasks, and so on.
Following landing pages are available by default for the Service Operations Workspace ITSM
Applications (sn_sow_itsm_cont) application.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3016


<!-- page 3017 -->
• Tier 1 landing page
• Tier 2 landing page
Other landing pages are available if you have the corresponding plugins installed, for example,
Service Operations Workspace ITOM Apps (sn_sow_itom_cont).

Important:
• A user's access to the landing page is based on the audience associated with that page.
Configure the audiences with the required service desk groups and the users that are
part of these service desk groups can then access the landing page. For information
about audiences, see Learn about audiences .
• When multiple audiences are available for the landing page, the audience with the least
order is considered.

Criteria to access the tier 1 landing page
Any user that meets one of the following audience criteria is redirected by default to the tier 1
landing page.
Audience criteria for tier 1 landing page
Audience

Role

User criteria inclusion

SOW Common
Audience

admin

None

SOW Service
Desk Audience
Granular

sn_incident_write User should belong to a user group included in the
Service Desk Group Inclusion user criteria
inclusion of the audience.

SOW Service
Desk Audience

itil

User should belong to a user group included in the
Service Desk Group Inclusion user criteria
inclusion of the audience.

Criteria to access the tier 2 landing page
Any user that meets the following audience criteria is redirected by default to the tier 2 landing
page.
Audience criteria for tier 2 landing page
Audience

Role

User criteria inclusion

SOW Tier 2/3 landing page Audience

itil

None

Configure the audience for the SOW landing page
Define who can access your SOW landing pages. You can targeted experiences for audiences
such as agents and managers.

Before you begin

Role required: sn_sow_admin.sn_sow_admin or admin

About this task

You can configure the audiences that define who can access the SOW landing pages. For
information about audiences, see Learn about audiences .
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3017


<!-- page 3018 -->
By default, the SOW landing page is associated with the following audiences. To access SOW, a
user must align with the following criteria.
• The user has the admin role
• The user has the sn_incident_write role and belongs to the Service Desk user group.
• The user has the itil role and belongs to Service Desk user group.

Procedure
1. Optional: Create an audience if required.
a. Navigate to All > Now Experience Framework > Building Blocks > Audiences.
b. On the Audiences page, select New.
c. Specify the required data.
For example, specify the following:
▪ Name: SOW Service Desk T1
▪ Roles: itil
▪ Any user criteria inclusions. For this, add a user criteria and then add user groups to it.
d. Select Save.
2. Navigate to All > Now Experience Framework > UI Builder.
3. From the Experiences section, select Service Operations Workspace.
4. From the Pages and Variants section, select Settings for Home Landing Page.
5. On the Variant: Service desk landing page SNC page, from the Pages and variants section,
select Service Desk landing page SNC.
6. Change the application scope to Incident management for Service Operations Workspace.
7. From the Audiences section, select Edit all audiences.
8. In the Edit Audiences window, select Add.
9. Search for your audience and select Save.
Configure service desk groups to access the Service Operations Workspace landing page
Ensure that the right users have access to the Service Operations Workspace landing page.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

The landing page's access is based on the audience associated with that page. Configure the
audiences with the required service desk groups and the users that are part of these service
desk groups can then access the landing page. If you want users from multiple service desk
groups to access the landing page, you should configure the landing page's audience with all
those service desk groups.
It is applicable only for an instance that has Service Operations Workspace 1.1 installed and has
upgraded to Zurich.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3018


<!-- page 3019 -->
Procedure
1. Configure the system property for landing page access by performing the following steps.
a. From the All menu, navigate to sys_properties.list.
b. To ensure that the user criteria records are used instead of roles to access the landing page,
set the glide.ux.user_criteria_enabled property to true.
c. Select Update.
2. Add the user's service desk groups to the audience's user criteria by performing the following
steps.
a. Navigate to All > Now Experience Framework > Building Blocks > Audiences.
b. Select an audience and perform the following steps, for example, SOW Service Desk
Audience.
i. From the User Criteria Inclusions related list, open the audience, for example, Service
Desk Group Inclusion.
ii. For the Groups field, add the required service desk group that the user is part of.
iii. Select Update.
Landing page redirection in Service Operations Workspace for ITSM
Redirection enables you to automatically route users to the SOW landing page upon login.
Landing page redirection can be configured in any of the following ways:
• Conditional, based on user criteria, for example, Service Desk groups.
• Blanket. All users are first redirected to the Service Operations Workspace home page and the
audience configuration determines which landing page should be used.
• Optional. In this case, users can opt out of the redirection.
Redirect non-admin users to Service Operations Workspace
Enable a non-admin user to start prioritizing tasks quickly by redirecting to Service Operations
Workspace after logging in to the ServiceNow instance.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin
Ensure that Next Experience is enabled on your instance. For information about its activation,
see Considerations for activating Next Experience .

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Overview tab, from the Initial Setup section, select the Configure the landing page
option.
3. Select Initial setup > Landing page redirection.
4. Configure the SOW redirection property.
a. From the Homepage Destination Rule section, select Configure for SOW Landing Page.
b. Select the Active check box.
c. Select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3019


<!-- page 3020 -->
5. If required, configure the other SOW landing page redirection properties.
a. From the System Properties section, select Configure for the required property.
▪ glide.login.home: If set to true, the default homepage is displayed upon login. If left blank,
the last page visited is used. This property is overwritten by the Homepage Destination
Rule for the SOW landing page.
▪ glide.next_experience.user_selected_landing_page_enabled: Sets the user selected
landing page preference to true.
▪ glide.ux.user_criteria_enabled: Enables use of user criteria records instead of Roles fields
for UX Framework variants.
b. Modify the property and select Update.
Redirect agents of a specific group to Service Operations Workspace
Enable only agents of specific user groups to be automatically redirected to Service Operations
Workspace after logging in to the ServiceNow instance.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

Only the agents who are part of specified user groups are redirected to Service Operations
Workspace. All other agents are redirected either to the agent-configured landing page or
ServiceNow AI Platform landing page.

Procedure
1. From the All menu, navigate to user_criteria.list.
2. Select the ITIL non-admin user criteria record.
3. For the Groups field, select the required user groups whose agents must access Service
Operations Workspace.
4. Select Update.
5. Ensure that the itil role is assigned to each agent.
a. Navigate to All > User Administration > Users and then open the user record for the agent.
b. In the Roles list, ensure that the itil role is added and active.
c. If the itil role isn't already added to the user record, add the itil role by following these steps.
i. In the Roles list, select Edit.
ii. On the Edit Members form, add the itil role from the Collection list to the Roles List list.
iii. Select Save.
Disable auto-redirection for all agents to Service Operations Workspace
Verify that the agents aren't automatically redirected to Service Operations Workspace after
logging in to the ServiceNow instance.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3020


<!-- page 3021 -->
Procedure
1. From the All menu, navigate to sys_homepage_destination_rule.list.
2. Select the SOW Landing Page record.
3. Clear the Active check box.
4. Select Update.
5. Clear the browser cache by using the following steps:
a. Enter <instance-name>.service-now.com/cache.do in the web browser.
b. Select Clear Cache.
The browser page is refreshed.
c. Select Clear All Browser Caches.
The browser page shows the Unified Cache Cleared message.

Note:
If the Homepage Destination Rules [sys_homepage_destination_rule] table contains
other records that redirect to SOW, use these steps to clear the Active check box for
each record.
Landing page configurations in Service Operations Workspace for ITSM
You can configure the data on the landing page from Admin Center in Service Operations
Workspace for ITSM.
Configure record creation from the new tab menu in Service Operations Workspace
Customize the records that can be created from the new tab menu in all pages of Service
Operations Workspace.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

By default, an interaction or incident record can be created from the new tab menu in all pages of
Service Operations Workspace.
Record creation from tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3021


<!-- page 3022 -->
You can customize the JSON value to provide a variety of options. For example, use this method
to create a knowledge article directly from the new tab menu. For more information about
knowledge article creation, go to Knowledge Management in Service Operations Workspace.

Procedure
1. Navigate to All > Now Experience Framework > Experiences.
2. From the list of UX applications, select Service Operations Workspace.
3. On the UX Application form, from the UX Page Properties related list, select the chrome_tab
property.
4. On the UX Page Property page, when the Type field is set to json, edit the Value field, for
example, to add or delete routes or tables.
To add a new option, for example, to create a knowledge article, add a new JSON object inside
the newTabMenu object. Provide the name and the action performed when you select the
option as a key-value pair inside the newTabMenu object. Following is an example for creating
a problem.
"label": {
"translatable": true,
"message": "New Problem"
},
"routeInfo": {
"route": "record",
"fields": {
"table": "problem",
"sysId": "-1"
},
"multiInstField": "sysId"
},
"condition": {
"tableDescription": {
"table": "problem",
"canCreate": true
}
}
},
5. Click Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3022


<!-- page 3023 -->
Restore the greeting banner on the landing page
If the greeting banner is closed, restore it to view the agent's shift information.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

Procedure
1. Navigate to All > User Administration > User Preferences.
2. From the list of user preferences, open sow.incident.landing_page_header_collapsed.
3. Ensure that the User field refers to the user for whom you want to restore the banner.
4. In the Value field, specify false.
5. Select Update.
Configure the header message on the landing page
Configure the header message that is part of the greeting text on the landing page. For example,
You are on-call until Monday, Mar 21.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

The Get service desk agent shift data broker server script calls the
SOWServiceDeskAgentShift script includes to display the shift information in the greeting
text.
While the display text can be customized for the default landing page, the visual styling changes
to the text can be done only by creating a copy of the landing page.
Header section

Note:
The alert notification on the banner in SOW automatically expands to display the full
message. This feature is enabled by default in the base system. You can update the
auto_expand_now_alert_message system UX page property to false if you don't want to
automatically expand and display the entire message.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Overview tab, from the Initial Setup section, select the Configure the landing page
option.
3. On the Landing Page form, select Configure next to Greetings.
The Script Includes form is displayed for SOWServiceDeskAgentShift, which internally calls
the SOWServiceDeskAgentShiftSNC
4. Copy the Script value of SOWServiceDeskAgentShiftSNC.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3023


<!-- page 3024 -->
a. Navigate to All > System Definition > Script Includes.
b. From the list of Script Includes, open SOWServiceDeskAgentShiftSNC.
c. Copy the Script field value.
5. Edit the SOWServiceDeskAgentShift script.
a. Navigate to All > System Definition > Script Includes.
b. From the list of Script Includes, open SOWServiceDeskAgentShift.
c. Paste the Script field value that you copied from SOWServiceDeskAgentShiftSNC.
initialize: function() {
this.PLUGINS = {
ON_CALL: "com.snc.on_call_rotation",
SHIFT_PLANNING: "com.sn_shift_planning"
};
this.DAYS_AHEAD =
gs.getProperty('com.snc.on_call_rotation.upcoming_rota_day
s', 30);
this.DATE_FORMAT = gs.getDateFormat();
this.TIME_FORMAT = gs.getTimeFormat();
this.WFO_SCHEMA_IDENTIFIER = 'readInTimezone';
this.WFO_ONCALL_TYPE_IDENTIFIER =
'oncallAPIReadInTimezone';
this.WEEK_DAY_FORMAT = 'EEEE';
this.FORMAT = {
SERVICE_DESK_HEADER: 'SERVICE_DESK_HEADER'
};
this.DATE_TIME_FORMAT_FULL = "full";
},

getUpcomingShift: function(userId, outputFormat, wfoShift)
{
var upcomingShifts, gd = new GlideDate();
var from = gd.getDisplayValueInternal();
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3024


<!-- page 3025 -->
gd.addDaysLocalTime(this.DAYS_AHEAD);
var to = gd.getDisplayValueInternal();
var mayBeWFOUser = userId == gs.getUserID() ?
gs.hasRole("sn_shift_planning.agent") : true;
if
(GlidePluginManager.isActive(this.PLUGINS.SHIFT_PLANNING) &&
mayBeWFOUser && wfoShift)
upcomingShifts = this.getWFOShifts(from, to, userId);
var isWFOResponseValid = Array.isArray(upcomingShifts) &&
upcomingShifts.length > 0;
if (!isWFOResponseValid &&
GlidePluginManager.isActive(this.PLUGINS.ON_CALL))
upcomingShifts = this.getOnCallShifts(from, to,
userId);
return this.getFormattedShift(upcomingShifts,
outputFormat);
},

getWFOShifts: function(from, to, userId) {
var smUtil = new sn_shift_planning.ScheduleManagerUtil();
var defaultEventCategories = [
smUtil.WORK_CATEGORY_SYS_ID,
smUtil.ON_CALL_CATEGORY_SYS_ID
];
var params = {
"assignmentGroups": "",
"individualAgents": userId,
"startDate": from,
"endDate": to,
"published": true,
"eventCategories": defaultEventCategories,
"filter": {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3025


<!-- page 3026 -->
"sn_shift_planning_agent_schedule": {
"event": ["8d03fd9b0f310010717cc562ff767e4a",
"936319993bd02010e81a4ee1f3efc419"]
}
}
};
var upcomingShifts = [];
try {
var agentScheduleRESTAPIUtils = new
sn_shift_planning.AgentScheduleRESTAPIUtils();
var spans =
agentScheduleRESTAPIUtils.retrieveAgentSchedulesFromParams(p
arams);
if (spans && spans.shiftData &&
spans.shiftData.user && spans.shiftData.user.data
&& spans.shiftData.user.data.length > 0 &&
spans.shiftData.user.data[0].schedules) {
var schedules =
spans.shiftData.user.data[0].schedules,
arrayUtil = new global.ArrayUtil();
for (var schedule in schedules)
upcomingShifts = arrayUtil.union(upcomingShifts,
schedules[schedule]);
}
} catch (e) {
gs.error("SOWServiceDeskAgentShiftSNC: Error fetching
WFO shifts");
}

return upcomingShifts;
},

getOnCallShifts: function(from, to, userId) {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3026


<!-- page 3027 -->
var onCallCommon = new global.OnCallCommon();
var onCallGroups = onCallCommon.getMyGroups();
var spans = new global.OCRotationV2(null,
global.OCRotationV2.DEFAULT_FORMAT_OPTION).setStartDate(from
).setEndDate(to).setUserIds(userId).setGroupIds(onCallGroups)
.getSpans();
var upcomingShifts = [];
for (var i = 0; i < spans.length; i++)
if ((spans[i].type == "roster" || spans[i].type ==
"override") && spans[i].user_id == userId)
upcomingShifts.push(spans[i]);
return upcomingShifts;
},

getFormattedShift: function(upcomingShifts, outputFormat) {
if (gs.nil(upcomingShifts))
return;
switch (outputFormat) {
case this.FORMAT.SERVICE_DESK_HEADER:
return
this.getServiceDeskFormattedShift(upcomingShifts);
default:
return upcomingShifts;
}
},

getServiceDeskFormattedShift: function(upcomingShifts) {
var response = {
shiftText: "",
nearestShift: {}
};
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3027


<!-- page 3028 -->
var startAttr = "start",
endAttr = "end",
isOnCall = true;
var dateFormat = 'EEEE, MMM dd',
timeFormat = 'hh:mm a';
var isWFOSchema = Array.isArray(upcomingShifts) &&
upcomingShifts.length > 0 && this.WFO_SCHEMA_IDENTIFIER in
upcomingShifts[0];
if (isWFOSchema)
startAttr = "scheduledStartTime", endAttr =
"scheduledEndTime";
response.nearestShift =
this.getNearestShift(upcomingShifts, startAttr, endAttr);
if (response.nearestShift) {
if (isWFOSchema) {
if (response.nearestShift.schedule
&& !(this.WFO_ONCALL_TYPE_IDENTIFIER in
response.nearestShift.schedule))
isOnCall = false;
}
if (isOnCall) {
if (response.nearestShift.isCurrent) {
if (response.nearestShift.roster_name)
response.shiftText = gs.getMessage("You are
on-call until {0} as {1}",
[this.getFormattedDateTime(response.nearestShift[endAttr]),
response.nearestShift.roster_name]);
else
response.shiftText = gs.getMessage("You are
on-call until {0}",
[this.getFormattedDateTime(response.nearestShift[endAttr])
]);
} else {
if (response.nearestShift.roster_name)

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3028


<!-- page 3029 -->
response.shiftText = gs.getMessage("Your
next on-call shift starts on {0} as {1}",
[this.getFormattedDateTime(response.nearestShift[startAttr
]), response.nearestShift.roster_name]);
else
response.shiftText = gs.getMessage("Your
next on-call shift starts on {0}",
[this.getFormattedDateTime(response.nearestShift[startAttr])
]);
}
} else {
if (response.nearestShift.isCurrent) {
response.shiftText = gs.getMessage("Your shift ends
on {0}",
[this.getFormattedDateTime(response.nearestShift[endAttr])
]);
} else
response.shiftText = gs.getMessage("Your next shift
starts on {0}",
[this.getFormattedDateTime(response.nearestShift[startAttr])
]);
}
}

return response;
},

getNearestShift: function(upcomingShifts, startAttr,
endAttr) {
if (gs.nil(upcomingShifts) || gs.nil(startAttr) ||
gs.nil(endAttr))
return;
var nearestShift;
upcomingShifts.sort(function(shift_1, shift_2) {
var gdt1 = new GlideDateTime();
gdt1.setDisplayValueInternal(shift_1[startAttr]);
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3029


<!-- page 3030 -->
var gdt2 = new GlideDateTime();
gdt2.setDisplayValueInternal(shift_2[startAttr]);
return GlideDateTime.subtract(gdt2,
gdt1).getNumericValue();
});
var currentDateTime = new GlideDateTime(),
startDateTime = new GlideDateTime(),
endDateTime = new GlideDateTime();
for (var i = 0; i < upcomingShifts.length; i++) {

startDateTime.setDisplayValueInternal(upcomingShifts[i][star
tAttr] + "");

endDateTime.setDisplayValueInternal(upcomingShifts[i][endAt
tr] + "");
if (currentDateTime.onOrBefore(endDateTime)) {
nearestShift = upcomingShifts[i];
if (currentDateTime.onOrAfter(startDateTime))
nearestShift.isCurrent = true;
else
nearestShift.isCurrent = false;
break;
}
}
return nearestShift;
},

getFormattedDateSpan: function(date, dateFormat,
timeFormat) {
var formattedDate = this.getFormattedDate(date,
dateFormat);

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3030


<!-- page 3031 -->
var dateAmPmTime = this.getFormattedTime(date,
timeFormat);
return formattedDate + " " + dateAmPmTime;
},

getFormattedDate: function(inputDate, format) {
var date = new GlideDateTime();
date.setDisplayValueInternal(inputDate);
format = !format ? this.DATE_FORMAT : format;
var gd = date.getLocalDate();
return gd.getByFormat(format);
},

getFormattedTime: function(inputDate, format) {
var date = new GlideDateTime();
date.setDisplayValueInternal(inputDate);
format = !format ? this.TIME_FORMAT : format;
var gt = date.getLocalTime();
return gt.getByFormat(format);
},

getFormattedDateTime: function(date) {
var dateTime = new GlideDateTime();
dateTime.setDisplayValueInternal(date);
return
dateTime.getDisplayValueLang(this.DATE_TIME_FORMAT_FULL);
},

endsToday: function(inputDate) {
var inputGdt = new GlideDateTime();
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3031


<!-- page 3032 -->
inputGdt.setDisplayValueInternal(inputDate);
return new GlideDateTime().getLocalDate().getValue() ==
inputGdt.getLocalDate().getValue();
},

endingTomorrow: function(inputDate) {
var inputGdt = new GlideDateTime();
inputGdt.setDisplayValueInternal(inputDate);
var tomorrowDateTime = new GlideDateTime();
tomorrowDateTime.addDaysLocalTime(1);
return tomorrowDateTime.getLocalDate().getValue() ==
inputGdt.getLocalDate().getValue();
},
d. Edit the following part of the script as mentioned.
if (isOnCall) {
if (response.nearestShift.isCurrent) {
if (response.nearestShift.roster_name)
response.shiftText = gs.getMessage("You are
on-call until {0} as {1}",
[this.getFormattedDateTime(response.nearestShift[endAttr]),
response.nearestShift.roster_name]);
else
response.shiftText = gs.getMessage("You are
on-call until {0}",
[this.getFormattedDateTime(response.nearestShift[endAttr])
]);
} else {
if (response.nearestShift.roster_name)
response.shiftText = gs.getMessage("Your
next on-call shift starts on {0} as {1}",
[this.getFormattedDateTime(response.nearestShift[startAttr
]), response.nearestShift.roster_name]);
else

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3032


<!-- page 3033 -->
response.shiftText = gs.getMessage("Your
next on-call shift starts on {0}",
[this.getFormattedDateTime(response.nearestShift[startAttr])
]);
}
} else {
if (response.nearestShift.isCurrent) {
response.shiftText = gs.getMessage("Your shift ends
on {0}",
[this.getFormattedDateTime(response.nearestShift[endAttr])
]);
} else
response.shiftText = gs.getMessage("Your next shift
starts on {0}",
[this.getFormattedDateTime(response.nearestShift[startAttr])
]);
}
6. Select Update.
Configure the space man on the landing page
Change the image of the space man to an image your choice.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

The image on the banner of the header section in the SOW landing page supports custom
themes for a more personalized experience.

Procedure
1. From the All menu, navigate to db_image.list.
2. Search for sow_banner.svg.
3. Change the image to an image of your choice.
Ensure the image dimensions are 700 x 160 pixels.

Note: The image supports custom themes for a more personalized experience.
Configure the donut color in the Overview section
Create a visual experience that works the best for donuts in the Overview section.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

Donut area colors are based on the element that the donut is grouped by.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3033


<!-- page 3034 -->
• Tier-1 landing page
◦ In the Incidents assigned to me card, the donut is grouped by the state of incidents.
◦ In the Unassigned incidents card, the donut is grouped by the priority of incidents.
◦ In the Catalog tasks assigned to me card, the donut is grouped by the state of catalog tasks.
◦ In the Incident SLAs card, the donut is grouped by the time left after which the incidents will
breach SLA.
• Tier-2 landing page
◦ In the Incidents assigned to me card, the donut is grouped by the state of incidents.
◦ In the Problems assigned to me card, the donut is grouped by the state of problems.
◦ In the Changes assigned to me card, the donut is grouped by the state of change requests.
◦ In the Tasks assigned to me card, the donut is grouped by the state of catalog tasks.

Procedure
1. To change the donut area colors for the following cards in the tier-1 landing page, perform
these steps.
◦ Incidents assigned to me
◦ Unassigned incidents
◦ Catalog tasks assigned to me
a. Navigate to Reports > Administration > Chart Colors
b. In the Chart Colors list, filter records based on the card that you want to customize and
select a record.
i. To customize the color of the Incidents assigned to me card, filter records with Name as
incident and Element as state.
ii. To customize the color of the Unassigned incidents card, filter records with Name as
incident and Element as priority.
iii. To customize the color of the Catalog tasks assigned to me card, filter records with Name
as sc_task and Element as state.
c. On the Chart Colors form, select the required color in the Color name field.
d. Click Update.
2. To change the donut area color for the Incident SLAs card in the tier-1 landing page, perform
the following steps.
a. Navigate to Reports > Administration > Report Ranges.
b. In the Ranges list, filter records with Name as task_sla and Element as time_left.
c. Select the required record.
d. On the Range form, select the required color in the Color name field.
e. Click Update.
3. To change the donut area colors for the tier-2 landing page, perform the following steps.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3034


<!-- page 3035 -->
a. Navigate to Reports > Administration > Chart Colors
b. In the Chart Colors list, filter records based on the card that you want to customize and
select a record.
i. To customize the color of the Incidents assigned to me card, filter records with Name as
incident and Element as state.
ii. To customize the color of the Problems assigned to me card, filter records with Name as
problem and Element as state.
iii. To customize the color of the Changes assigned to me card, filter records with Name as
change_request and Element as state.
iv. To customize the color of the Tasks assigned to me card, filter records with Name as
sc_task and Element as state.
c. On the Chart Colors form, select the required color in the Color name field.
d. Click Update.
Configure the donuts in the tier 1 landing page
Configure the data displayed in donuts in the Overview section of the tier 1 landing page.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

You can customize header label, data source, metric, group by field, and viewAllQuery for all
donuts. For example, Problems assigned to me donut.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Overview tab from the Initial Setup section, select the Configure the landing page
option.
3. On the Landing Page form, under Tier 1 section, select Configure next to Donut
configurations.
4. Optional: If the PAR dashboard is active on the landing page, do the following:
a. Configure the tier 1 dashboard configuration

.

Note: If you’re creating a dashboard, you can use the saved visualizations to create a
card for the dashboard. The data visualization is visible only to the users based on the
respective roles.
Ensure that you have added the value as Service Operations Workspace in the Dashboard
Visibility.
b. Select the default dashboard for the SOW landing page from the Dashboard loaded on the
Landing Page drop-down option. Select Save.
c. After modifying the elements in the dashboard, select Save.
5. Optional: If the PAR dashboard isn't active on the landing page, edit the Script field add the
code inside the class ServiceDeskLandingPageUtils.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3035


<!-- page 3036 -->
Note: This method is copied from SowIncidentLandingPageUtilsSNC.
To add a new donut or to remove an existing one you need to copy
getVisualizationConfig method to SowIncidentLandingPageUtils and
modify as per your requirement.
static async getVisualizationConfig(helpers, mode,
conditionalRecordCount=0) {
const evamDef = this.getEvamDef();
const visualizationConfig = [{
"id": "incident_assigned",
"tableName": "incident",
"tableDisplayValue": "Incident",
"myWorkQuery":
"active=true^assigned_toDYNAMIC90d1921e5f510100a9ad2572f2b477f
e^state!=6",
"myTeamQuery":
"active=true^assigned_toISNOTEMPTY^assignment_groupDYNAMICd643
5e965f510100a9ad2572f2b47744^state!=6",
"listView": mode == "your_work" ?
"sow_landing_page_assigned" : "sow_landing_page",
"header": mode == 'your_work' ? await
helpers.translate("Incidents assigned to you") : await
helpers.translate("Incidents assigned to your team"),
"groupByField": "state",
"evamId":
evamDef['incidentEvamDefinitionId'],
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","sn_incident_write"] : ["itil","sn_incident_read"],
},
{
"id": "incident_sla",
"tableName": "task_sla",
"tableDisplayValue": "Task SLA",
"myWorkQuery":
"task.sys_class_name=incident^task.assigned_toDYNAMIC90d1921e5
f510100a9ad2572f2b477fe^task.active=true^sla.type=SLA^ORsla.typ
e=OLA^active=true^time_left<=1970-01-08 00:00:00",
"myTeamQuery":
"task.sys_class_name=incident^task.assignment_groupDYNAMICd643
5e965f510100a9ad2572f2b47744^task.active=true^sla.type=SLA^ORsl
a.type=OLA^active=true^time_left<=1970-01-08 00:00:00",
"listView": 'sow_landing_page',
"header": await helpers.translate("Incident
SLAs"),
"groupByField": "time_left",
"evamId":
evamDef['incidentSlaEvamDefinitionId'],
"updated_on": "^ORDERBYtime_left",
"roles":mode == "your_work" ?
["itil","sn_incident_write"] : ["itil","sn_incident_read"],
},
{
"id": "unassigned_incidents",
"tableName": "incident",
"tableDisplayValue": "Incident",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3036


<!-- page 3037 -->
"myWorkQuery":
"active=true^assigned_toISEMPTY^assignment_groupDYNAMICd6435e9
65f510100a9ad2572f2b47744",
"myTeamQuery":
"active=true^assigned_toISEMPTY^assignment_groupDYNAMICd6435e9
65f510100a9ad2572f2b47744",
"listView": mode == "your_work" ?
"sow_landing_page_assigned" : "sow_landing_page",
"header": await
helpers.translate("Unassigned incidents"),
"groupByField": "priority",
"evamId":
evamDef['incidentEvamDefinitionId'],
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","sn_incident_read"] : ["itil","sn_incident_read"],
},
{
"id": "catalog_tasks",
"tableName": "sc_task",
"tableDisplayValue": "Catalog Task",
"myWorkQuery":
"active=true^assigned_toDYNAMIC90d1921e5f510100a9ad2572f2b477f
e",
"myTeamQuery":
"active=true^assignment_groupDYNAMICd6435e965f510100a9ad2572f2
b47744",
"listView": mode == "your_work" ?
"sow_landing_page_assigned" : "sow_landing_page",
"header": mode == 'your_work' ? await
helpers.translate("Catalog tasks assigned to you") : await
helpers.translate("Catalog tasks assigned to your team"),
"groupByField": "state",
"evamId":
evamDef["catalogTaskEvamDefinitionId"],
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","sn_request_write"] : ["itil","sn_request_read"],
}
];
if(mode=='your_work' && conditionalRecordCount>0){
const conditionalConfig = await
this.getConditionalVisualizationConfig(helpers);
visualizationConfig.push(conditionalConfig);
}
return visualizationConfig;
}

To add Problem donut to tier 1 landing page, add additional snippets as per your requirement
similar to the code snippet mentioned below.
{
"id": "problemsAssigned",
"tableName": "problem",
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3037


<!-- page 3038 -->
"tableDisplayValue": "Problem",
"myWorkQuery":
"active=true^assigned_toDYNAMIC90d1921e5f510100a9ad2572f2b477f
e",
"myTeamQuery":
"active=true^assignment_groupDYNAMICd6435e965f510100a9ad2572f2
b47744",
"header": mode == 'your_work' ? await
helpers.translate("Problems assigned to you") : await
helpers.translate("Problems assigned to your team"),
"groupByField": "state",
"evamId": "5f0697b8f49bc510f8773ad5bd0ae292",
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","problem_coordinator"] :
["itil","sn_problem_read","problem_task_analyst"]
}
Copy the fetchTitle method from SowIncidentLandingPageUtilsSNC to add
labels for list that is displayed when you click on the donut.
static async fetchTitle(table, selectedField, groupByField,
groupMode = false) {
if(selectedField == undefined){
selectedField = 'all';
}
const labelMap = {
'incident': {
'state': {
'all':'Incidents',
'1': 'New incidents',
'2': 'In Progress incidents',
'3': 'On Hold incidents',
'6': 'Resolved incidents'
},
'priority': {
'all':'Unassigned incidents',
'1': 'P1 unassigned incidents',
'2': 'P2 unassigned incidents',
'3': 'P3 unassigned incidents',
'4': 'P4 unassigned incidents',
'5': 'P5 unassigned incidents'
}
},
'sc_task': {
'state': {
'all':'Catalog tasks',
'-5': 'Pending catalog tasks',
'1': 'Open catalog tasks',
'2': 'Work in progress catalog tasks'
}
},
'task': {
'sys_class_name': {
'sc_task': 'Catalog tasks delegated to
you',
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3038


<!-- page 3039 -->
'incident': 'Incidents delegated to
you'
}
}
};
if((table == 'incident' && groupByField ==
'priority') || table == 'task')
return
labelMap[table][groupByField][selectedField];
if (groupMode)
return
labelMap[table][groupByField][selectedField] + ' assigned to
your team';
return labelMap[table][groupByField][selectedField]
+ ' assigned to you';
}
Add the labels as mentioned in the below example code block to view them as a list heading
when you click on the donut.
'problem': {
'state' :{
'101': 'New problems',
'102': 'Assess problems',
'106': 'Resolved problems',
'104': 'Fix in Progress problems',
'103': 'Root Cause Analysis problems',
'all':'Problems'
}
},
6. Select Update.
Configure the donuts in the tier 2 landing page
Configure the data displayed in donuts in the Overview section of the tier 2 landing page.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

You can customize header label, data source, metric, group by field, and viewAllQuery for all
donuts. For example, Catalog tasks assigned to me donut.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Overview tab, from the Initial Setup section, select the Configure the landing page
option.
3. On the Landing Page form, under Tier 2 section, select Configure next to Donut
configurations.
4. Optional: If the PAR dashboard is active on the landing page, do the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3039


<!-- page 3040 -->
a. Configure the tier 2 dashboard configuration

.

Note: If you’re creating a dashboard, you can use the saved visualizations to create a
card for the dashboard. The data visualization is visible only to the users based on the
respective roles.
Ensure that you have added the value as Service Operations Workspace in the Dashboard
Visibility.
b. Select the default dashboard for the SOW landing page from the Dashboard loaded on the
Landing Page drop-down option. Select Save.
c. After modifying the elements in the dashboard, select Save.
5. Optional: If the PAR dashboard isn't active on the landing page, edit the Script field add the
code inside the class SOWLandingPageTier2Utils.
static async getVisualizationConfig(helpers, mode,
conditionalRecordCount) {
const visualizationConfig = [{
"id": "incidentAssigned",
"tableName": "incident",
"tableDisplayValue": "Incident",
"myWorkQuery":
"active=true^assigned_toDYNAMIC90d1921e5f510100a9ad2572f2b477f
e^state!=6",
"myTeamQuery":
"active=true^assignment_groupDYNAMICd6435e965f510100a9ad2572f2
b47744^state!=6",
"header": mode == 'your_work' ? await
helpers.translate("Incidents assigned to you") : await
helpers.translate("Incidents assigned to your team"),
"groupByField": "state",
"evamId": "01a404e8b7203010e69dbc16de11a93f",
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","sn_incident_write"] : ["itil","sn_incident_read"],
},
{
"id": "problemsAssigned",
"tableName": "problem",
"tableDisplayValue": "Problem",
"myWorkQuery":
"active=true^assigned_toDYNAMIC90d1921e5f510100a9ad2572f2b477f
e",
"myTeamQuery":
"active=true^assignment_groupDYNAMICd6435e965f510100a9ad2572f2
b47744",
"header": mode == 'your_work' ? await
helpers.translate("Problems assigned to you") : await
helpers.translate("Problems assigned to your team"),
"groupByField": "state",
"evamId": "5f0697b8f49bc510f8773ad5bd0ae292",
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","problem_coordinator"] :
["itil","sn_problem_read","problem_task_analyst"],
},
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3040


<!-- page 3041 -->
{
"id": "changesAssigned",
"tableName": "change_request",
"tableDisplayValue": "Change Request",
"myWorkQuery":
"active=true^assigned_toDYNAMIC90d1921e5f510100a9ad2572f2b477f
e",
"myTeamQuery":
"active=true^assignment_groupDYNAMICd6435e965f510100a9ad2572f2
b47744",
"header": mode == 'your_work' ? await
helpers.translate("Changes assigned to you") : await
helpers.translate("Changes assigned to your team"),
"groupByField": "state",
"evamId": "e1f06c4194130110f87765e94545da91",
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","sn_change_write"] : ["itil","sn_change_read"],
},
{
"id": "taskAssigned",
"tableName": "task",
"tableDisplayValue": "Task",
"myWorkQuery":
"active=true^assigned_toDYNAMIC90d1921e5f510100a9ad2572f2b477f
e^sys_class_name=incident_task^ORsys_class_name=problem_task^OR
sys_class_name=change_task^ORsys_class_name=sc_task",
"myTeamQuery":
"active=true^assignment_groupDYNAMICd6435e965f510100a9ad2572f2
b47744^sys_class_name=incident_task^ORsys_class_name=problem_ta
sk^ORsys_class_name=change_task^ORsys_class_name=sc_task",
"header": mode == 'your_work' ? await
helpers.translate("Tasks assigned to you") : await
helpers.translate("Tasks assigned to your team"),
"groupByField": "sys_class_name",
"evamId": "615d205d94df0110f87765e94545da03",
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","sn_incident_write","sn_incident_task_assigned_user","
problem_task_analyst","sn_change_write","sn_change_task_assigne
d_user","sn_request_write"] :
["itil","sn_incident_read","sn_incident_task_assigned_user","s
n_problem_read","problem_task_analyst","sn_change_read","sn_cha
nge_task_assigned_user","sn_request_read","catalog"],
}];
if(mode=='your_work' && conditionalRecordCount>0){
const conditionalConfig = await
this.getConditionalVisualizationConfig(helpers);
visualizationConfig.push(conditionalConfig);
}
return visualizationConfig;
}

Add below snippet object to add Catalog Tasks donut to tier2 landing page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3041


<!-- page 3042 -->
{
"id": "catalog_tasks",
"tableName": "sc_task",
"tableDisplayValue": "Catalog Task",
"myWorkQuery":
"active=true^assigned_toDYNAMIC90d1921e5f510100a9ad2572f2b477f
e",
"myTeamQuery":
"active=true^assignment_groupDYNAMICd6435e965f510100a9ad2572f2
b47744",
"listView": mode == "your_work" ?
"sow_landing_page_assigned" : "sow_landing_page",
"header": mode == 'your_work' ? await
helpers.translate("Catalog tasks assigned to you") : await
helpers.translate("Catalog tasks assigned to your team"),
"groupByField": "state",
"evamId":
“4a59c876c7323010d7e818b1c7c26083”,
"updated_on": "^ORDERBYDESCsys_updated_on",
"roles":mode == "your_work" ?
["itil","sn_request_write"] : ["itil","sn_request_read"],
}

Copy getLabelMaps and/or fetchTitle method from SOWLandingPageTier2UtilsSNC
to add labels for list that is displayed when you click on the donut.
static async fetchTitle(table, nameValueMap, groupMode = false,
elementId) {
if(table === "task") {
return this.getLabelMaps(table,
nameValueMap['sys_class_name'], groupMode, elementId);
}
return this.getLabelMaps(table,
nameValueMap['state'], groupMode, elementId);
}
static getLabelMaps(table, selectedField, groupMode =
false, elementId) {
if(selectedField == undefined){
selectedField = 'all';
}
const labelMap = {
'incident': {
'1': 'New incidents',
'2': 'In Progress incidents',
'3': 'On Hold incidents',
'6': 'Resolved incidents',
'all':'Incidents'
},
'change_request': {
'0': 'In Review changes',
'-1': 'Implement changes',
'-2': 'Scheduled changes',
'-3': 'Authorize changes',
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3042


<!-- page 3043 -->
'-4': 'Assess changes',
'-5': 'New changes',
'all':'Changes'
},
'problem': {
'101': 'New problems',
'102': 'Assess problems',
'106': 'Resolved problems',
'104': 'Fix in Progress problems',
'103': 'Root Cause Analysis problems',
'all':'Problems'
},
'task': {
'incident_task': 'Incident tasks',
'problem_task': 'Problem tasks',
'change_task': 'Change tasks',
'sc_task': 'Catalog tasks',
'incident': 'Incidents',
'problem': 'Problems',
'change_request': 'Change requests',
'all':'Tasks'
}
};
if(elementId === 'delegated_task')
return labelMap[table][selectedField] + '
delegated to you';
if (groupMode)
return labelMap[table][selectedField] + '
assigned to your team';
return labelMap[table][selectedField] + ' assigned
to you';
}
Catalog task labels can be added to the code snippet below to view them on the donut.
'sc_task': {
'all':'Catalog tasks',
'-5': 'Pending catalog tasks',
'1': 'Open catalog tasks',
'2': 'Work in progress catalog tasks'
},
6. Select Update.
Configure the visibility of landing page sections
Configure if few sections of the landing page should be visible or hidden. For example, Quick
links and Upcoming sections.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Overview tab, from the Initial Setup section, select the Configure the landing page
option.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3043


<!-- page 3044 -->
3. On the Landing Page form, use the toggle to make the required landing page section visible or
hidden.
A toggle appears next to every section that can be hidden or made visible. For example, Quick
links, Upcoming, Announcements, and so on.
Configure the Announcements section on the landing page
Customize an existing announcement or add an announcement for additional tables.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

You can customize how the Entity View Action Mapper (EVAM) component is configured for the
Announcements section. While the data can be customized for the default landing page, the
visual styling changes can be done only by creating a copy of the landing page. In the base
system, announcements and the corresponding data sources are defined for the following
tables:
• Outage [cmdb_ci_outage]
• Banner Announcement [sys_ux_banner_announcement]
• Incident [incident]
You can add announcements for additional tables by defining additional data sources in the
EVAM definition.

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Overview tab, from the Initial Setup section, select the Configure the landing page
option.
3. On the Landing Page form, under Tier 1 or Tier 2 sections, select Configure next to the
Announcements option.
The SOW - Announcements EVAM definition is displayed. For information on EVAM definition,
see Create an EVAM definition .
4. Navigate to All > Entity View Action Mapper (EVAM) > EVAM Definitions.
5. To edit the data source of an announcement, navigate to the EVAM Datasource M2Ms related
list and edit the required data source.
For information on data source, see Define a datasource .
6. To create an announcement for an additional table, add a data source for that table.
For information on data source, see Define a data source. For information on defining a data
source, see Define a datasource .
7. Optional: To source custom announcements into the Announcements section, create
an additional banner announcement configuration for the Banner Announcement
[sys_ux_banner_announcement] table by performing the following steps.
a. Create a banner announcement configuration and the corresponding banner
announcements.
For information on creating a banner announcement configuration, see Next Experience
banner announcements .
b. Associate the banner announcement configuration with the
sn_sow.banner_announcements_config_id property.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3044


<!-- page 3045 -->
i. Navigate to sys_properties.list
ii. Select the sn_sow.banner_announcements_config_id property.
iii. On the System Property form, specify the sys_id of the banner configuration as the
property value.
8. To configure how an announcement should be displayed for a data source, edit an EVAM view
configuration and template by performing these steps.
a. Navigate to the EVAM View Config Bundle M2Ms related list and select the required
configuration bundle.
b. On the EVAM View Config Bundle form, navigate to the EVAM View Configs related list and
select a configuration for the required data source.
c. On the EVAM View Config form, open the template from the View Template field.
d. On the View Template form, edit the Template field.
For information on editing a template, see Define an EVAM view template

.

e. Select Update.
Configure the Upcoming section on the landing page
Configure the data displayed in the Upcoming section.

Before you begin

Role required: sn_sow_admin.sn_sow_admin, or admin

About this task

Using an extension point, you can call the custom scripts to extend the functionality of the
Upcoming section and also easily integrate customizations without having to alter the base code.
For information about extension points, see Creating and adding a scripted extension point .
Scripted extension points for the Upcoming section in the base system
Extension point

Description

sn_sow.UpcomingLinkProvider Gets a list of upcoming task records (changes, incident,
requests, and overdue tasks) for the same day and the next
day.

Procedure
1. Navigate to All > System Extension Points > Scripted Extension Points.
2. From the Extension Points list, select sn_sow.UpcomingLinkProvider.
3. Create an implementation using the Create Implementation related link or edit an
implementation from the Implementations related list.
Following is an example of how to add a new announcement type for change tasks.
◦ Name: MyCustomUpcomingLinkProvider_ChangeTask
◦ Script:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3045


<!-- page 3046 -->
var PREFIX_QUERY = 'active=true^' + assginToQuery;
var TODAY_QUERY =
'^planned_start_dateONToday@javascript:gs.beginningOfToday()
@javascript:gs.endOfToday()';
var TOMORROW_QUERY =
'^splanned_start_dateONTomorrow@javascript:gs.beginningOfTom
orrow()@javascript:gs.endOfTomorrow()';
var encodedQuery = null;
var listTitle = gs.getMessage("Change_Task");
if ('beginningOfToday' == request.from && 'endOfToday' ==
request.to) {
encodedQuery = PREFIX_QUERY + TODAY_QUERY;
} else if ('beginningOfTomorrow' == request.from &&
'endOfTomorrow' == request.to) {
encodedQuery = PREFIX_QUERY + TOMORROW_QUERY;
} else {
throw gs.getMessage("Unsupported date range");
}
var LIMIT = 10;
var changeTaskGr = new GlideRecordSecure('change_task');
changeTaskGr.addEncodedQuery(encodedQuery);
changeTaskGr.setLimit(LIMIT + 1);
changeTaskGr.query();
var count = changeTaskGr.next() ?
changeTaskGr.getRowCount() : 0;
var items = [];
if (count > 0) {
var msg = null;
if (1 == count) {
msg = gs.getMessage("{0} change task", [count]) + "";
} else {
if (count > LIMIT) {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3046


<!-- page 3047 -->
msg = gs.getMessage("More than {0} change task(s)",
[LIMIT.toString()]) + "";
} else {
msg = gs.getMessage("{0} change task(s)", [count])
+ "";
}
}
var route = {
route: 'simplelist',
fields: {
table: changeTaskGr.getTableName()
},
params: {
listTitle: listTitle,
query: changeTaskGr.getEncodedQuery()
}
};
if (1 == count) {
route = {
route: 'record',
fields: {
table: changeTaskGr.getTableName(),
sysId: changeTaskGr.getUniqueValue()
}
};
}
var item = {
label: msg,
type: 'route',
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3047


<!-- page 3048 -->
value: route,
"startsWith": {
"icon": "change-outline",
"align": "center"
},
"opensWindow": false,
"configAria": {},
"download": false
};
items.push(item);
}
return items;
4. Select Update and save the script include record.
5. Create a task to verify if it is displayed as an upcoming task.
For example, create a change task.
a. From the All menu, navigate to change_task.list.
b. Select New.
c. Specify the required information.
▪ Short Description
▪ Description
▪ Planned start date. You can specify today's date.
▪ Assigned to. Specify the user for whom the upcoming task should appear.
d. Select Submit.
e. Verify that the task appears in the Upcoming section of the Service Operations Workspace
landing page for the selected user.
Record page configurations in Service Operations Workspace for ITSM
You can configure the data available in record pages in Service Operations Workspace for ITSM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3048


<!-- page 3049 -->
Note: Selecting any empty reference field such as Configuration item, Service offering

and Service in SOW displays only the recent selection values instead of automatic
searching and displaying the results of the field values available in the system. This change
increases the overall performance of the reference fields. This change is applicable only
to reference fields with no field values. By default, this change is enabled. To revert this
change, set the Reference search on click (ref_search_on_click) UX page property
to set to true.
Configure the incident record page in SOW for ITSM
Configure the data displayed in various incident tabs such as Overview and Details tabs.

Before you begin

Role required: workspace_admin, sn_sow_inc.sn_incident_sow_admin, ui_builder_admin, or
admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Configurations tab, select the Incident Management option.
3. Select Incident record and then select Configure to configure any of the following tabs.
◦ Overview: Configure any of the following options for the Overview tab.
▪ Tab visibility for tier 1 agents: Configure the visibility settings to display the Overview tab
for the tier-1 agents. You can also configure the user criteria to include or exclude users
with other roles and user groups.

Note:
▪ By default, the Overview tab is displayed for the tier-1 agents.
▪ When you choose to hide the Overview tab for the tier-1 agents, the Details tab
opens by default.
▪ This option is available only if the glide.ux.user_criteria_enabled
property is true. For more information, see Enable the user criteria property .
▪ Summary: Configure the fields layout, UI elements and the visible data content on the
Summary section of the Overview tab.
▪ Impact: Configure the fields layout, UI elements and the visible data content on the Impact
section of the Overview tab.
▪ Cause: Configure the fields layout, UI elements and the visible data content on the Cause
section of the Overview tab.
▪ Resolution: Configure the fields layout, UI elements and the visible data content on the
Resolution section of the Overview tab.
◦ Details: Configure any of the following options for the Details tab.
▪ Record: Provides further details on the incident record. Configure the fields layout, UI
elements, and the visible data content of the Details tab using form builder.
▪ New record: This layout appears when an agent creates an incident record. Configure
the fields layout, UI elements, and the visible data content of the Details tab using form
builder.
◦ Response templates: Create and configure response templates for incidents. Response
templates are used as reusable messages that you can copy and paste in the required
areas such as email or chat for a quick response. To use the response template feature,
the users must have the sn_templated_snip.template_snippet_reader role. The number
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3049


<!-- page 3050 -->
of the response templates created for the incident table is displayed in this section. For
more information on defining and configuring the response templates for incident tables in
Service Operations Workspace, see Response templates .
◦ Incident management properties: Configure the incident features using the incident
management properties. For more information on configuring incident management
properties, see Incident Management properties.
For more information about configuring the field layout, UI elements and the visible data
content using form builder, see Customize forms within a form component .
For information about incident record page customizations, see Customize the incident record
page.
Configure the change record page in SOW for ITSM
Configure the data displayed in various Change record tabs such as Overview and Details tabs.

Before you begin

Role required: workspace_admin, ui_builder_admin, or admin

Procedure
1. Navigate to All > Service Operations Workspace Admin Center > Overview.
2. On the Configurations tab, select the Change Management option.
3. Select Change record and then select Configure to configure any of the following tabs.
◦ Overview: Configure any of the following options for the Overview tab.
▪ Containers: Defines how the dynamic overview page renders throughout the change
lifecycle. This includes the visibility and the order of the sections in the overview page and
whether to include the activity stream bar.
▪ Section fields: Define the fields that are shown for each section in the change overview.
◦ Details: Defines the form view that lets users see all details related to the change.
For information about configuring the field layout, UI elements and the visible data content
using form builder, see Customize forms within a form component .
Contextual side panel configurations in Service Operations Workspace for ITSM
You can configure the tabs available in the contextual side panel in Service Operations
Workspace for ITSM.
Configure contextual side panel tabs in Service Operations Workspace
Add or delete tabs from the contextual side panel that is available in all record pages in Service
Operations Workspace.

Before you begin

Role required: admin, workspace_admin, sn_sow_admin.sn_sow_admin, or ui_builder_admin

About this task

By default, all record pages such as an incident and interaction record page have a contextual
side panel with multiple tabs in Service Operations Workspace. From these tabs, you can
perform multiple tasks such as viewing the record information, collaborating through Microsoft
Teams, viewing recommendations and so on.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3050


<!-- page 3051 -->
Contextual side panel in Service Operations Workspace

Procedure
1. Navigate to All > Now Experience Framework > UI Builder.
2. From the Experiences list, select Service Operations Workspace.
3. Under the Pages and variants list, select SRP Record.
4. From the left of the UI Builder area, navigate to Body > Resizable panes > right, and select Tab
sidebar.
5. From the right of the UI builder, navigate to the Config > Tabs, and select the SOW - sidebar
tabs top.
icon to open the tab configuration.
6. Select the
The pages and variants associated with contextual sidebar appears. For example, select the
Agent assist SNC to add the Agent assist option in the sidebar.
7. Edit the screen condition for the UX screen.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3051


<!-- page 3052 -->
a. From the left of the page, select

and navigate to Developer > Open variant record.

b. On the UX screen form, edit the Screen Condition field to add or delete records to get the
tab to the required position.
c. Select Update.
You’re redirected to the Dashboards page.
8. Edit the screen condition script for the UX screen by performing the following steps.
a. Select the previously opened tab of the UI Builder page, for example, the Agent assist SNC
tab page.
b. From the left of the page, select

and navigate to Developer > Open variant record.

c. From the UX Screen Conditions related list on the UX screen form, open the associated
record.
d. Edit the Script field to add or delete conditions for records where you want the tab to be
available.
e. Select Update.
Configuring Recommended Actions for ITSM in Service Operations Workspace
IT Service Management (ITSM) includes the following base system components used to
configure Recommended Actions for various records in the Service Operations Workspace,
including Incident, Incident Tasks, Problem, Problem Tasks, Change Request, Change Request
Task, Interaction, and Request.

Contexts in Recommended Actions for ITSM
A context enables agents to see recommendations for a specific type of record when certain
rules are met. These recommendations can help agents by suggesting actions to take based on
the record context. For more information, see Contexts in Recommended Actions .
The ITSM base system ships the following contexts:
• Incident
• Incident task
• Problem
• Problem task
• Change request
• Change task
• Interaction
• Request
For more information about the field description of this context, see Contexts in Recommended
Actions for ITSM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3052


<!-- page 3053 -->
Note: Recommended Actions have now introduced a context for the Interaction table.
To get the correct Recommended Actions context, you must set up the Context Sys ID
property in the Recommended Actions record page of UI Builder in Service Operations
Workspace.
To configure the Context ID, see Configuring a context record for Recommended Actions
component section in Create a context in Recommended Actions .

Rules in Recommended Actions for ITSM
A rule is a set of conditions that applies to a context. A rule shows recommendations to agents
with certain roles for records that meet certain conditions. For more information, see Rules in
Recommended Actions .
The ITSM base system includes the following rules:
• Active incident
• Active non-child non-MI Incident
• AI Search
• Major Incident with no Problem record

Note: These rules are available only for the Incident context.
For more information about the field descriptions of these rules, see Rules in Recommended
Actions for ITSM.

Note: To create a rule, see Create a rule in Recommended Actions

.

Recommendations in Recommended Actions for ITSM
A recommendation is a way to suggest a helpful action to an agent. A recommendation includes
the action and any relevant resources and inputs. For more information, see Recommendations
in Recommended Actions .
For more information about recommendation types, see Recommendations in Recommended
Actions .

Note: To create a recommendation, see Create a recommendation in Recommended
Actions

.

The ITSM base system includes Guidance-based recommendations and Field-level
recommendation types.

Guidance-based recommendations
The ITSM base system includes these guidance-based recommendations:
• AI Search Recommendation
• Create Problem Record for a Major Incident
• Open incidents (CI & Service)
• Open PRBs (CI & Service)
• Similar Incidents (TI)
• Similar KB Articles (Similarity)
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3053


<!-- page 3054 -->
• Propose major incident (Trend)
• Similar major incidents (Trend)
• Similar open Incidents (Similarity)
• Similar open PRBs (Similarity)
• Similar resolved incidents (CI & Service)
• Similar resolved incidents (Similarity)
For more information about the field descriptions of the guidance-based recommendations, see
Guidance based recommendations in Recommended Actions for ITSM.

Field-level recommendations
The ITSM base system includes the following field-level recommendations:
• Predictive Intelligence -based recommendations:
◦ Assignment Group (Classification)
◦ Configuration Item (Classification)
◦ Service (Classification)
• Task Intelligence for ITSM -based recommendation: Incident Fields value prediction (TI)

Note: All Predictive Intelligence -based recommendations included in the ITSM base
system are inactive by default. To activate them, navigate to the Recommendations
screen, edit the corresponding Active column to the required recommendation of true,
and select Update.
For more information about the field-level recommendations field descriptions, see Field level
recommendations in Recommended Actions for ITSM.

Note: To create a guidance and field recommendations, see Creating guidance and field
recommendation in Recommended Actions

.

Resource generators in Recommended Actions for ITSM
The ITSM base system includes the following resource generators:
• AI Search Resource Generator
• Assignment group using Classification.
• Configuration item using Classification
• Incident Fields predictions TI
• Similar Open Incidents with same CI & Service
• Open PRBs using CI & Service
• Propose major incident using trend
• Service using Classification
• Similar KBs using similarity
• Similar major incident using trend
• Similar open incidents using Similarity
• Similar open incidents with same CI & Service
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3054


<!-- page 3055 -->
• Similar incidents using TI similarity
• Similar PRBs using similarity
• Resolved Incidents with same CI & Service
• Similar resolved incidents using similarity.
For more information about the field descriptions of resource generators, see Resource
generators in Recommended Actions for ITSM.
For more information about the types of resource generator, see Resource generators in
Recommended Actions .

Note: To create a resource generator, see Create a resource generator in Recommended
Actions

.

Guidances
The ITSM base system includes the following guidance:
• Link to major incident
• Propose Major Incident
• Review and attach article for incident
• Show Change request [No Action]
• Show genius result [No Action]
• Show Problem [No Action]
• [Incident] Attach KB
• [Incident] Copy resolution
• [Incident] Link open incident
• [Incident] Link open problem
• [Interaction] Review and attach article
• [ Non-ML] Copy resolution
• [ Non-ML] Create Problem
• [ Non-ML] Link open incident
• [ Non-ML] Link open problem
• [Task] Link change request
• [Task] Link incident
• [Task] Link outage
• [Task] Link problem
• [Task] Order item
For more information about the field descriptions of the guidance, see Guidances in
Recommended Actions for ITSM.

Note: To create guidance, see Create a guidance in Recommended Actions

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3055


<!-- page 3056 -->
Search result mappings
The search result mappings appear in AI search results for various records in the Service
Operations Workspace, including Incident, Incident Tasks, Problem, Problem Tasks, Change
Request, Change Request Task, Interaction, and Request.
The IT Service Management base system includes the following search result mappings based
on context type:
• Incident: Outage [cmdb_ci_outage], Knowledge [kb_knowledge], Change Request
[change_request], Incident [incident], Catalog item [sc_cat_item], Incident [incident]- Genius
result for Pro plus users, Problem [problem]
• Incident task: Knowledge [kb_knowledge], Incident [incident], Catalog item [sc_cat_item],
Problem [problem]
• Problem: Outage [cmdb_ci_outage], Knowledge [kb_knowledge], Change Request
[change_request], Incident [incident], Catalog item [sc_cat_item], Problem [problem]
• Problem task: Knowledge [kb_knowledge]
• Change request: Knowledge [kb_knowledge], Change Request [change_request], Incident
[incident], Catalog item [sc_cat_item], Problem [problem]
• Change task: Knowledge [kb_knowledge], Change Request [change_request], Incident
[incident], Catalog item [sc_cat_item], Problem [problem]
• Interaction: Knowledge [kb_knowledge], Catalog item [sc_cat_item]
• Request: Knowledge [kb_knowledge], Catalog item [sc_cat_item]

Search Application Configuration
The IT Service Management base system includes the [AIS] Recommended Actions for ITSM
Search Config. This application supports the AI search for various records in the Service
Operations Workspace, including Incident, Incident Tasks, Problem, Problem Tasks, Change
Request, Change Request Task, Interaction, and Request.

Advanced Recommended actions for ITSM
The standard version of Recommended Actions for ITSM is provided as a part of the Service
Operations Workspace application.
The Advanced Recommended actions for ITSM (sn_sow_itsm_ra_adv) plugin is included with the
ITSM Pro package subscription.
With Advanced Recommended actions for ITSM, your agents can use recommendations
powered by Task Intelligence, including:
• Incident fields value prediction
• Similar incidents
• Similar open change requests
• Similar open problems
• Similar major incidents
• Propose major incident
For more information, see Task Intelligence for ITSM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3056


<!-- page 3057 -->
Note: The Advanced Recommended actions for ITSM (sn_sow_itsm_ra_adv) and Task
Intelligence Admin Console (com.sn_ti_admin) plugins are installed as dependencies of
the ITSM Pro package subscription.

Predictive Intelligence
To use recommendations powered by Predictive Intelligence, install the following plugins:
• Install the Predictive Intelligence for Incident (com.snc.incident.ml) plugin to install the
Relevant problems solution definition-Similar open PRBs (Similarity). For information about this
plugin installation, see Request Predictive Intelligence for Incident.
• Install the Problem Management for Service Operations Workspace
(com.snc.uib.sow_problem) plugin to install the solution definition-Create Problem for Major
incident.
• Install the Predictive Intelligence for Major Incident Management
(com.snc.incident.mim.ml_solution) plugin to install the following IT Service Management
solution definitions.
◦ Propose major incident (Trend)
◦ Similar major incident (Trend)
For information about this plugin installation, see Request Predictive Intelligence for Major
Incident Management.
• Install the Predictive Intelligence for Incident Management (com.snc.incident.ml_solution)
plugin to install the following IT Service Management solution definitions.
◦ Assignment group (Classification)
◦ Configuration item (Classification)
◦ Service (Classification)
◦ Similar open incidents (Similarity)
◦ Similar KB articles (Similarity)
◦ Similar resolved incidents (Similarity)
◦ Similar Incidents (TI)

Note: Similar Incidents (TI) recommendation is available only from Service
Operations Workspace version 6.0.
For more information, see Request Predictive Intelligence for Incident Management.
Train solution definitions to predict recommendations for an incident. For information about
training solution definitions, see Predictive Intelligence for Incident Management
Configure the Agent Assist tab in Service Operations Workspace
Enable or disable the Agent Assist tab in the contextual side panel for the required record type.

Before you begin

Role required: admin

Note: Admin should be in Global Domain to edit the table configurations of Agent Assist in
Service Operations Workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3057


<!-- page 3058 -->
About this task

Add or remove a record table from the screen condition and update the sys_id for the record to
enable or disable the Agent Assist tab for that table.

Important: Use this process if you're using a SOW version prior to 4.0. If you're using the
version after 4.0, you can use SOW Sidebar tabs top Page collection to enable or disable
the Agent Assist tab. For more information, see Configure the Agent Assist tab in Service
Operations Workspace using the Standard Record Page.

Procedure
1. Navigate to All.
2. In the search box, enter sys_ux_screen_type.list and press Enter.
3. Select the filter icon (
), enter [Name] [contains] [Agent Assist] and [Application] [is]
[Service Operations Workspace], and select Run.
4. Select the Agent Assist link.
5. From the UX Screens tab, select Agent assist SNC.
6. To update the Screen Condition and sys_id, do the following:
a. On the UX Screen form, edit the Screen Condition field and add the record tables where you
want the tab to appear.
For example, you could add the following code for the interaction record.
controller.sowrecordctrl.table=incident^ORcontroller.sowrecor
dctrl.table=problem^ORcontroller.sowrecordctrl.table=problem_
task^ORcontroller.sowrecordctrl.table=change_request^ORcontro
ller.sowrecordctrl.table=change_task^ORcontroller.sowrecordct
rl.table=kb_knowledge^ORcontroller.sowrecordctrl.table=intera
ction
b. If you want to enable the Agent Assist tab, add the sys_id
of the relevant table configuration in Macroponent

Configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3058


<!-- page 3059 -->
For more information, see Edit the table configuration for Agent Assist in Service Operations
Workspace.
c. Select Update.
7. To disable the Agent Assist tab for a record table, remove the record table from the Screen
Condition field and sys_id of the relevant table configuration from the Macroponent
Configuration field, and then select Update.
Edit the table configuration for Agent Assist in Service Operations Workspace
Edit the table configuration for Agent Assist to see the required search results in the Agent Assist
tab.

Before you begin

Role required: sn_sow_admin.sn_sow_admin or admin

Note: Admin should always be in Global Domain to edit the table configurations of Agent
Assist in Service Operations Workspace.

About this task

Update the table configuration to get the required search results.
To create a table configuration, see Configure table for a contextual search

.

Important: Use this process if you're using a SOW version prior to 4.0. If you're using the
version after 4.0, you can use SOW Sidebar tabs top Page collection to enable or disable
the Agent Assist tab. For more information, see Edit the table configuration for Agent Assist
in Service Operations Workspace using the Standard Record Page.

Procedure
1. Navigate to All.
2. In the search box, enter sys_ux_screen_type.list and press Enter.
3. Select the filter icon (
), enter [Name] [contains] [Agent Assist] and [Application] [is]
[Service Operations Workspace], and select Run.
4. Search for name containing: Agent Assist and Application is the workspace name: Service
Operations Workspace.
5. Select the Agent Assist link.
6. From the UX Screens tab, select Agent assist SNC.
7. To add the property and relevant sys ID of the table configuration in the Macroponent
Configuration, do the following:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3059


<!-- page 3060 -->
a. Enter the new table name and the sys_id of the required table

configuration.

Note: To copy the sys_id, navigate to Table Configuration > Copy_sysid.
b. Select Update.
To enable or disable Agent Assist tab, see Configure the Agent Assist tab in Service
Operations Workspace.
Customize the on-call support group recommendations
Configure the support group recommendations that should be displayed in the Experts on-call
panel for an incident.

Before you begin

Role required: sn_sow_admin.sn_sow_admin or admin

Procedure
1. Navigate to All > System Definition > Script Includes.
2. From the Script Includes list, select OnCallUtilsSow.
3. To configure the support group recommendations, modify the Script field.
For information about how these groups are available for an incident, see Experts on-call in
Service Operations Workspace.
getRecommendedGroups: function(table, sysId, fieldWatchList) {
if(!table || !sysId) {
return {};
}
var recommendedGroups = {};
var gr = new GlideRecord(table);
if (gr.get(sysId)) {
var self = this;
if (table == this.TABLES.INCIDENT) {
fieldWatchList.forEach(function(watchField) {
if (watchField.field == "assignment_group"
&& !recommendedGroups[watchField.value + ""] &&
self._isOnCallDefinedForTheGroup(watchField.value)) {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3060


<!-- page 3061 -->
recommendedGroups[watchField.value + ""] =
gs.getMessage("Recommended based on assignment group");
} else if (watchField.field == "cmdb_ci") {
var cmdbCiGr = new GlideRecord(self.TABLES.CMDB_CI);
if (cmdbCiGr.get(watchField.value + "")) {
if (cmdbCiGr.support_group
&& !recommendedGroups[cmdbCiGr.support_group + ""] &&
self._isOnCallDefinedForTheGroup(cmdbCiGr.support_group + ""))
{
recommendedGroups[cmdbCiGr.support_group + ""] =
gs.getMessage("Recommended based on affected CI");
}
}
} else if (watchField.field == "business_service") {
var businessServiceGr = new
GlideRecord(self.TABLES.CMDB_CI_SERVICE);
if (businessServiceGr.get(watchField.value + "")) {
if (businessServiceGr.support_group
&& !recommendedGroups[businessServiceGr.support_group + ""] &&
self._isOnCallDefinedForTheGroup(businessServiceGr.support_gr
oup + "")) {
recommendedGroups[businessServiceGr.support_group + ""]
= gs.getMessage("Recommended based on impacted service");
}
}
}
});
}
}
return recommendedGroups;
}
4. Click Update.
Configure notifications in Service Operations Workspace for ITSM
Customize notifications that are sent to an agent to update about various changes.

Before you begin

Role required: workspace_admin, notification_provider_admin, sn_sow_admin.sn_sow_admin or
admin
For delegation notifications, the Notification Provider for Next Experience plugin
(com.glide.notification.provider.next.experience) must be installed.

About this task

An agent is notified in the following scenarios:
• A change request, incident, or problem assigned to an agent has any updates.
• A task is delegated to the agent.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3061


<!-- page 3062 -->
The notification icon shows notification alerts. The icon shows a badge with notification count

and new notifications for a short duration.

Use the notification icon to view the notifications.
In email notifications, you can decide where the link to a record is redirected. Instead
of a record automatically opening in the classic UI16 interface, the record can be
opened in Service Operations Workspace (SOW). The ITSM Notifications Redirection
(com.snc.itsm.notifications_redirection) plugin is installed and activated automatically to
support this behavior. The record link in an email notification opens in SOW only if the following
conditions are met:
• The Redirect SOW Email notification (sow_email_notification_redirect) system
property is set to true.
• The user selecting the incident record link has the sn_sow_user role.
This feature is applicable for the following record types:
• Incident
• Problem
• Request

Procedure
1. Navigate to All > Workspace Experience > Administration > Notification triggers.
2. To modify the notifications for incident, problem, and change updates, perform the following
steps:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3062


<!-- page 3063 -->
a. From the list of notification triggers, select one of the following:
▪ Incident notification
▪ Problem notification
▪ Change notification
b. Edit the required information, such as the notification category, who to send it to and when to
send it.
Who to send and When will receive tabs contain the notification settings.

Note: Keep in mind the following information when editing these notifications:
▪ You can’t edit the notification header.
▪ The Category field of each type of notification must match that notification type so
the notifications are categorized correctly for agents. For example, the Category field
must be Incident for incident notifications. This step confirms that the notification is
categorized in the notification preferences and agents can easily turn on and off all
the notifications categorized under a category.
c. Select Update.
3. To modify the delegation notification, perform the following steps:
a. From the list of notification triggers, select Delegation notification.
b. Edit the required notification information, such as who to send it to, when to send it, its
header and content.
Who to send and When will receive tabs contain the notification settings.
c. Select Update.
Configure search resources for an interaction in Service Operations Workspace for ITSM
You can configure additional search resources for an interaction to assist agents with quick
resolution of the interaction.

Before you begin

Role required: itil or interaction_agent

Procedure
1. Navigate to All > Contextual Search > Search Contexts > Interaction (SOW).
2. Edit the Search Context Interaction (SOW) record.
a. Search for a resource or combination of resources in the Searcher field and select the
search resource that you want to add.
b. Update the Searcher text field with the name that you want to give to the search resource.
c. Save or update the record.
The newly added search resource is available to be selected from the search resource filter in
the Agent Assist window.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3063


<!-- page 3064 -->
Setting up Major Incident Management in Service Operations Workspace
Set up Major Incident Management (MIM) to manage major incidents from the incident record
page in Service Operations Workspace. A major incident (MI) is an incident that results in
significant disruption to the business and has a high business impact.
A major incident demands a response beyond the routine incident management process. Major
incidents have a separate procedure with shorter timescales and higher priority so there’s a
faster resolution process for incidents with high business impact.

Configuration overview
Setting up Major Incident Management in Service Operations Workspace involves installing
Major Incident Management using Admin Center in Service Operations Workspace.
Admin Center in Service Operations Workspace gives admins centralized control of the instance.
It provides quick access to manage all customizations in Service Operations Workspace for
IT Service Management (ITSM) and additional plugins that extend the Service Operations
Workspace for ITSM capabilities. For more information on Admin Center, see Admin Center in
Service Operations Workspace for ITSM.
Activate Major Incident Management in Service Operations Workspace
Activate the Major Incident Management (app-sow-mim) plugin in Service Operations
Workspace using Admin Center.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center Overview tab, in the Configure ITSM Core section, select the Install
button under Major Incident Management.
3. In the pop-up window that lists plugins to be installed, select Start Install.

What to do next

After Major Incident Management has been activated, you can configure the available
features by selecting the Configure option, which redirects you to the Configuration tab of the
Admin Center. For more information, see Configuring Major Incident Management in Service
Operations Workspace.
Configuring Major Incident Management in Service Operations Workspace
Configure the features in Major Incident Management to use and manage major incidents in
Service Operations Workspace.

Configuration overview
Admin Center enables you to configure the following features in Major Incident Management:
• Major incident manager roles
• Major incident trigger rules
• Communication templates and plans
• Playbooks

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3064


<!-- page 3065 -->
• Email notifications
• Timeline configurations for a post incident report
Assign the Major incident manager role
Assign the Major incident manager (major_incident_manager) role to existing users to manage,
analyze, and resolve major incidents.

About this task

As a Major incident manager (major_incident_manager), you can do the following actions:
• Promote a major incident candidate to a major incident.
• Create a major incident candidate.
• Manage the major incident process and resolve major incidents.

Before you begin

You must activate the Major Incident Management plugin in Service Operations Workspace. For
more information, see Activate Major Incident Management in Service Operations Workspace.
Role required: sn_mim_sow_admin or admin

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, navigate to the configuration page for Major Incident Management
through either the Overview tab or the Configurations tab.
◦ In the Overview tab, select the Configure button in the Major Incident Management section.
◦ In the Configurations tab, select Major Incident Management.
The configuration page displays all configurable features in Major Incident Management. In the
Major Incident Management section, you can view the number of users who currently have the
major_incident_manager role assigned.
3. On the Major Incident Managers section, select Configure.
The Major Incident Manager page contains the following tabs:
◦ MI Managers: List of users that have the major_incident_manager role.
◦ Available users: List of users to whom you can assign the major_incident_manager role.
4. Select the Available users tab.
5. Select a user and assign the role by selecting Assign MI Manager.
The user is also added to the list of users on the MI Managers tab.
Configure major incident trigger rules
Create and configure the trigger rules for a major incident to define the conditions for when a
trigger action is executed. You can create major incident trigger rules to define the conditions
under which an incident is automatically considered as a major incident candidate.

About this task

Major incident trigger rules are evaluated asynchronously each time a major incident is created
or promoted from an incident, provided the following conditions are met:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3065


<!-- page 3066 -->
• The incident record doesn't have the Parent Incident populated, which means that the current
incident isn't a child incident.
• The major incident isn't proposed or accepted.
• The incident is active.
You can also configure major incident trigger rules to directly create a major incident, bypassing
the candidate step.

Note: Base system trigger rules are available.
Before you begin

The Major Incident Management plugin must be activated in Service Operations Workspace. For
more information, see Activate Major Incident Management in Service Operations Workspace.
Role required: sn_mim_sow_admin and major_incident_manager or incident_manager, admin

Note: If you have sn_mim_sow_admin role, you can access the MIM page in Admin Center
page but to configure the trigger rules you must also have major_incident_manager or
incident_manager role along with sn_mim_sow_admin role. For more information, see Roles
in Service Operations Workspace for ITSM.

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, navigate to the configuration page for Major Incident Management
through either the Overview tab or the Configurations tab.
◦ In the Overview tab, select the Configure button in the Major Incident Management section.
◦ In the Configurations tab, select Major Incident Management.
The configuration page displays all configurable features in Major Incident Management. In
the Trigger rules section, you can view the number of trigger rules that are configured and are
currently active.
3. On the Trigger rule section, select Configure.
The Trigger rules page displays a list of available trigger rules. You can select any available
trigger rule and select the following actions:
◦ Activate: Activates the selected trigger rule. The base system major incident trigger rules are
inactive by default.
◦ Delete: Deletes the selected trigger rule.
◦ Deactivate: Deactivates the selected active trigger rule.
◦ Copy: Copies the trigger rule along with the information. This option helps in creating a
trigger rule using the data of an existing trigger rule.
4. Select New.
5. On the form, fill in the fields.
Trigger rules form
Field

Description

Name

Name of the trigger rule.

Table name

Table where the trigger rule is executed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3066


<!-- page 3067 -->
Field

Action to take

Description

Action taken on the incident when the trigger
rule is executed. Possible values:
◦ Propose Major Incident: Incident is
proposed as a major incident candidate
when the trigger rule is executed. After it’s
approved, the incident is promoted to a
major incident.
◦ Promote Major Incident: Incident is
promoted directly to a major incident when
the trigger rule is executed.

Note: The Create major

incident from candidate
(sn_major_inc_mgmt.com.snc.incident .min
system property creates different
behaviors depending on which options
are selected.
When the system property is set to Create
new, the following behaviors occur in relation
to the Action to take values:
◦ Propose Major Incident: The incident is
proposed as a major incident candidate.
After it’s approved, a new major incident is
created and the existing incident is marked
as its child.
◦ Promote Major Incident: A new incident is
created and promoted to a major incident.
The existing incident is marked as its child.
When the system property is set to Promote,
the following behaviors occur in relation to
the Action to take values:
◦ Propose Major Incident: The incident is
proposed as a major incident candidate.
After it’s approved, it's promoted to a major
incident.
◦ Promote Major Incident: The existing
incident is promoted to a major incident.
Application

Execution order

Application scope of the trigger rule. The
trigger rule is available for all applications or
for scoped applications.
The sequence that the rules are triggered.
The rule with lowest execution order is
triggered first. For example, a rule with order
= 100 is executed first then a rule with order =
200.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3067


<!-- page 3068 -->
Field

Description

Note: If any of the existing trigger
rule conditions are met, the incident
is considered to be a major incident
candidate. Verification of the remaining
rules isn’t required. Otherwise, all
the rules are verified based on the
execution order.
Active

Option to activate the trigger rule.

Conditions

Condition builder to set conditions that must
be met to execute the trigger rule.

6. Select Save.
The trigger rule is created and added to the list of available trigger rules.
Setting up communication templates and plans in Major Incident Management
Set up the communication templates and plans in Major Incident Management to help reduce
the efforts and time spent in creating and composing communication at the various stages of a
major incident. Effective communications with stakeholders help resolve major incidents.
Configure a communication template for email in Major Incident Management
Configure a communication templates for email in Major Incident Management to help reduce
the efforts and time spent in creating and composing communication emails.

Before you begin

The Major Incident Management plugin must be activated in Service Operations Workspace. For
more information, see Activate Major Incident Management in Service Operations Workspace.
Role required: sn_mim_sow_admin and mail_client_template_read, or admin

Note: If you have sn_mim_sow_admin role, you can access the MIM page in Admin Center
page but to configure communication templates for email you must also have access to the
sys_email_client_template table with mail_client_template_read role. For more information,
see Roles in Service Operations Workspace for ITSM.

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, navigate to the configuration page for Major Incident Management
through either the Overview tab or the Configurations tab.
◦ In the Overview tab, select Configure for Major Incident Management.
◦ In the Configurations tab, select Major Incident Management.
The configuration page displays all configurable features in Major Incident Management.
3. In the Communication Template section, select Configure email to display a list of available
communication email templates.
4. Select New.
5. On the form, fill in the details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3068


<!-- page 3069 -->
Configure Email form
Field

Description

Name

Name of the email template.

Table

Table where the email template is applicable.

Note: By default, the value is
the Incident Communication Task
[incident_alert_task] table.
Application

Application scope of the email template. The
email template is available for all applications
or for scoped applications.

Execution order

The sequence that the templates are applied.
The template with lowest execution order is
applied first. For example, a template with
execution order = 100 is applied first then a
template with execution order = 200.

Condition

Condition builder that sets the conditions
that must be met to apply the email template
when composing email communications.

Content
Subject

Subject line of the email.

Content Type

Content type of the email. Possible values:
◦ HTML: Enables you to add links,
multimedia, and other HTML content to the
email.
◦ Plain Text: Enables you to add only text
and other text-related features, such as
bold and italics.

Body

Content for the body of the email.

Note: Based on the option chosen in

the Content Type field, the Body field
enables you to add text or HTML-related
content.
Select Variables

Add field variables to the Body.

Recipients
To

Users or recipient list to be added in the To
section of the email.

Cc

Users or recipient list to be added in the Cc
section of the email.

Bcc

Users or recipient list to be added in the Bcc
section of the email.

Sender configuration
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3069


<!-- page 3070 -->
Field

Description

From Generation Type

Generation type of the email sent. This value
provides information about the email sender
displayed on the From section of the email.
Possible values:
◦ SMTP Email Account: Email is generated
and sent using the SMTP email account of
the sender.The From section of the email
sent displays the SMTP email account of
the sender.
◦ Select from List: The From section of
the email sent displays the list of email
addresses specified in the Email Client
from Address field.
◦ Script: Email is generated and sent using
the script specified in the Script For From
field. The From section of the email sent
displays the sender name based on the
script.
◦ Text: The From section of the email
displays the value specified in the From
field.
◦ None: The From section of the email sent
displays no value.

Email Client from Address

Email address that is displayed on the From
section of the email. You can add multiple
email addresses.

Note: This field is visible only if From
Generation Type is set to Select from
List.
Script For From

Script that is responsible for creating and
sending the email.

Note: This field is visible only if From
Generation Type is set to Select from
List.
From

Name or user that is displayed on the From
section of the email.

Note: This field is visible only if From
Generation Type is set to Select from
List.

6. Select Submit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3070


<!-- page 3071 -->
Configure a communications template for SMS in Major Incident Management
Configure a communication template for SMS in Major Incident Management to help reduce the
efforts and time spent in creating and composing communication SMS.

Before you begin

Major Incident Management must be installed and activated in Service Operations Workspace.
For more information, see Activate Major Incident Management in Service Operations
Workspace.
Role required: sn_mim_sow_admin and notify_admin or notify_view, admin

Note: If you have sn_mim_sow_admin role, you can access the MIM page in Admin Center
page but to configure communication templates for sms you must also have notify_admin
or notify_view role to access the specific table. For more information, see Roles in Service
Operations Workspace for ITSM.

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, navigate to the configuration page for Major Incident Management
through either the Overview tab or the Configurations tab.
◦ In the Overview tab, select Configure for Major Incident Management.
◦ In the Configurations tab, select Major Incident Management.
The configuration page displays all configurable features in Major Incident Management.
3. In the Communications Template section, select Configure SMS.
The Notify SMS template page displays a list of available communication SMS templates. For
more information on Notify, see Notify .
4. Select New.
5. On the form, fill in the details.
SMS configuration form
Field

Description

Name

Name of the SMS template.

Table

Table on which the SMS template is used.

Note: By default, the value is
the Incident Communication Task
[incident_alert_task] table.
Template

Content added in the body of the SMS.

Select Variables

Field variables added to the Template.

6. Select Submit.
The SMS template record is added to the list of available communication SMS templates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3071


<!-- page 3072 -->
Configure a communication plan in Major Incident Management
Configure a communication plan and tasks for effective communication with various
stakeholders about the progress, milestones, and issues related to the different stages of a major
incident record.

Before you begin

The Major Incident Management plugin must be activated in Service Operations Workspace. For
more information, see Activate Major Incident Management in Service Operations Workspace.
Role required: sn_mim_sow_admin and sn_comm_management.comm_plan_viewer, or admin

Note: If you have sn_mim_sow_admin role, you can access the MIM page in
Admin Center page but to configure communication plans you must also have
sn_comm_management.comm_plan_viewer role to access the specific communication
plan table. For more information, see Roles in Service Operations Workspace for ITSM.

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, navigate to the configuration page for Major Incident Management
through either the Overview tab or the Configurations tab.
◦ In the Overview tab, select Configure for Major Incident Management.
◦ In the Configurations tab, select Major Incident Management.
The configuration page displays all configurable features in Major Incident Management. In the
Communication Plan subsection of the Communications section, you can view the number of
configured communication plans and active communication plans.
3. In the Communication Plan section, select Configure.
The Communications plan page displays a list of available communications plan definitions.
You can select any available communications plan and then select any of the following
actions:
◦ Activate: Activates the selected communications plans.
◦ Delete: Deletes the selected communications plan.
◦ Deactivate: Deactivates the selected active communications plan.
◦ Copy: Copies the communications plans along with the task information. This option helps
when creating a communications plan using the data of an existing communication plan.
In case if no communication plans exist, the Create a communication plan option is displayed.
4. Select New to create a communication plan definition.
For more information on creating a communication plan, see Define a communication plan

.

After a communication plan definition is created, the following related lists appear in the
communication plan definition record:
◦ Communication Task Definitions
◦ Communication Contact Definitions
5. Select the Communication Task Definitions related list and then select New to create a
communication task.
For more information on creating a communication task, see Define a communication task

.

6. On the Communication task definition record, select the required communication channel
related link to define the communication channel.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3072


<!-- page 3073 -->
The communication channel related list contains the communication channel related links
such as Add channel - Email, Add channel - Sidebar discussion and Add channel - DEX
Desktop Assistant. For more information on creating a communication channel, see Define a
communication channel .
7. On the Communication plan definition record, select the Communication contact definition
related list.
8. Select New to create a communication contact definition.
For more information on creating a communication contact definition, see Define a
communication contact .
Assign a playbook to Major Incident Management
Configure and assign playbooks to manage the major incidents process.

Before you begin

The Major Incident Management (MIM) plugin must be activated in Service Operations
Workspace. For more information, see Activate Major Incident Management in Service
Operations Workspace.
Role required: sn_mim_sow_admin or admin

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, navigate to the configuration page for Major Incident Management
through either the Overview tab or the Configurations tab.
◦ In the Overview tab, select Configure for Major Incident Management.
◦ In the Configurations tab, select Major Incident Management.
The configuration page displays all configurable features in Major Incident Management. In the
Playbook section, you can view the number of assigned playbooks.
3. Select Configure.
The Playbook page displays the following tabs:
◦ Assigned playbooks: List of playbooks that are assigned to Major Incident Management.
In the case that no playbook is assigned, the Assign playbook option is available so you can
assign a playbook to Major Incident Management.
◦ Available Playbooks: List of playbooks that are available to be assigned to Major Incident
Management.
4. On the configuration page, you can use the following options to assign a playbook to Major
Incident Management.
Option

Recommended playbooks

Description

The recommended playbooks section dis­
plays the following two base system play­
books that are shipped with Major Incident
Management:
◦ MI playbook: Provides a simple and con­
cise interface for communication and col­
laboration, as well as for unplanned commu­
nication or collaboration features in sepa­

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3073


<!-- page 3074 -->
Option

Description

rate sections in a task-oriented view. This
playbook is suggested for and can be used
by upgrade customers.
◦ Advanced MI playbook: Provides a simi­
lar interface to the MI Playbook but has ad­
vanced, configurable capabilities for com­
munication and collaboration, as well as un­
planned communication or collaboration
placed under a single section. You can con­
figure the unplanned communication or col­
laboration section of the playbook to cre­
ate, add, and configure the communication
plans, tasks, collaboration channels, and
channel types as required using the Play­
books.
For more information, see Designing a major
incident playbook. Playbooks enables you to
make the Advanced MI Playbook more flexi­
ble to use. This playbook is suggested for and
can be used by new or zBoot customers. For
more information, see Managing major inci­
dents using playbooks.
You can assign and use any or both play­
books with Major Incident Management
based on your requirements and usage. Use
the sn_sow.mim_playbook_ids proper­
ty to add the sys_id of the playbook that you
want to display under the playbook section
and use for Major Incident Management.
Select View details to view the playbook infor­
mation and then select Assign to MIM to as­
sign the playbook to Major Incident Manage­
ment.

Available playbooks

Select the Available playbooks tab, then se­
lect Playbook and then select Assign. The
selected playbook is assigned to Major Inci­
dent Management and is added to the list of
assigned playbooks.

Create new playbook

Select the Process Automation Designer link
in the Create new playbook section on the
side panel to create a playbook or configure
an existing playbook. For more information,
see Designing a major incident playbook.

Designing a major incident playbook
Use Playbooks to design your own playbook by creating custom flows, and then configure trigger
rules to activate the playbook for Major Incident Management.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3074


<!-- page 3075 -->
Select the Process Automation Designer link in the Create new playbook section of the Assign
Playbook page in Admin Center to open the Playbooks page. For more information on how to
assign a playbook, see Assign a playbook to Major Incident Management.
The Playbooks home page displays a list of available processes including the following
playbooks that are available in the base system:
• MI Playbook – This playbook is available in the Published state.
• Advanced MI playbook – This playbook is available in the Draft state. You can select the
playbook and then select Activate to change the status of the playbook.
You can select New to create a playbook or select an existing playbook, such as the Advanced
MI playbook, to add and configure the flows, activity, and trigger rules. You can do the following
actions using Playbooks:
• Trigger rules - Select Trigger to set the trigger conditions in the condition builder under which a
playbook gets attached to a major incident.
• Flows and UI layout – Use the options on the side panel to set the properties, create
automation tasks and activities, add details and flows, and configure the playbook UI layout.
• Activity – Add activities to the playbook, such as unplanned communication or collaboration
steps. Use the custom activity that is shipped as part of the base system to add and configure
activities.
• Activate – Activate the playbook on the instance.
• Test – Test the playbook on the instance.
Configure email notifications in Major Incident Management
Configure the automated email notification alerts that are sent to major incident managers
in the various stages of the major incident process. These stages include a change of state,
assignment, or user group for a major incident.

Before you begin

The Major Incident Management plugin must be activated in Service Operations Workspace. For
more information, see Activate Major Incident Management in Service Operations Workspace.
Consider the following items when you create or update a notification:
• Your notification recipients must be active users and have a valid email address defined.
®

ServiceNow users or members of groups must be defined as active users in the User
[sys_user] table. They must also have a valid email address defined for their primary device
in the Notification Device [cmn_notif_device] table. If users don’t have an active profile and a
valid email address, they don’t receive notifications.
• Your notification recipients must have the appropriate notification preferences enabled.
Each user or group member must have the option to subscribe to the notification. They
should have that option enabled in their notification preferences, along with the devices
through which they want to receive the notification. Admins can impersonate users to review
and configure their notification preferences. For more information, see Setting notification
preferences in Core UI

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3075


<!-- page 3076 -->
• To have your email notification also send as an SMS notification, recipients must subscribe to
the notification on an SMS channel. For more information on creating an SMS channel, see
Create notification channels .
• After you create or update the notification, use the Preview Notification option to examine it.
For example, you can test links that you have added and verify the notification recipients. For
details, see Preview email notifications .
Role required: sn_mim_sow_admin or admin

About this task

Use the following tabs in the Notification form to configure an email notification:
• When to send — Conditions required to send the notification.
• Who will receive — Recipients of the notification.
• What it will contain — Contents of the notification.
• What a digest will contain — Contents of the email digests if the notification can be delivered in
a digest. For more information, see Email digests .

Note: If you don’t see all the fields on the form, select the Advanced view option in the
related link section.

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, navigate to the configuration page for Major Incident Management
through either the Overview tab or the Configurations tab.
◦ In the Overview tab, select Configure for Major Incident Management.
◦ In the Configurations tab, select Major Incident Management.
The configuration page displays all configurable features in Major Incident Management. In the
Email notifications section, you can view the number of email notifications configured and in
active status.
3. On the Email notification section, select Configure to display the list of available email
notifications.
4. Select New.
5. On the Notification form, fill in the fields.
For a description of the field values, see Create an email notification

.

6. Select Submit.

What to do next

Use the Preview Notification option to preview what notifications look like before you actually
enable the instance to send them. For example, you can see:
• How the Subject and Message fields are displayed.
• Which users do or don’t receive the notification, including the reasons why the users don’t
receive it.
For more information, see Preview email notifications

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3076


<!-- page 3077 -->
Configure the timeline events for a Post Incident Report
Configure the incident information displayed as the event on the post incident report that is
generated after a major incident is resolved. You can configure what information a Post Incident
Report (PIR) must contain and how the information is arranged.

Before you begin

The Major Incident Management plugin must be activated in Service Operations Workspace. For
more information, see Activate Major Incident Management in Service Operations Workspace.
Role required: sn_mim_sow_admin or admin

Procedure
1. Navigate to All > Service Operations Workspace > Configurations.
2. On the Admin Center page, navigate to the configuration page for Major Incident Management
through either the Overview tab or the Configurations tab.
◦ In the Overview tab, select Configure for Major Incident Management.
◦ In the Configurations tab, select Major Incident Management.
The configuration page displays all configurable features in Major Incident Management.
3. On the Timeline configuration section, select Configure.
4. On the Timeline configuration page, configure the options.
Review the sample timeline events displayed on the Preview (sample timeline) section. Based
on the data, you can use the following options to modify the default settings of the timeline.
Timeline configuration
Option

Description

Incident Milestones

Option to include the following critical
incident milestones in the timeline events of
the post incident report:
◦ Incident accepted as a Major Incident by
an MI manager
◦ Incident marked as Resolved

Order of events

Option to arrange the order of the incident
events in a post incident report. Available
options:
◦ Ascending – Order of events where the
first event is placed at the top of the
post incident report and the last event is
displayed at the bottom of the post incident
report.
◦ Descending – Order of events where the
last event is placed at the top of the post
incident report and the first event is placed
at the bottom of the post incident report.

Note: The first and last event displays
the date along with the time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3077


<!-- page 3078 -->
Option

Description

Event grouping

Option to group the events, which are within
a short time interval. This option enables you
to have a more concise post incident report.

Group events within

Time duration within which events that exist
must be grouped.

Configuring Problem Management in Service Operations Workspace
Configure the features of Problem Management to manage problems and problem tasks in
Service Operations Workspace

Configuration overview
It is recommended that you activate the Problem Management Best Practice — Madrid — State
Model plugin (com.snc.best_practice.problem.madrid.state_model). For information about the
plugin activation, see Activate Problem Management Best Practice — Madrid — State Model.

Note:
• The best practice states introduced in this plugin are not compatible with previous
versions of Problem Management and require verification before this plugin can be
activated.
• This plugin is activated by default for the new instances. If the plugin is not active on
your instance, use the Problem Management migration utility to verify and migrate to this
plugin. For information about the migration utility, see Migration Utility.
You can configure the problem record overview tab and its UI elements in the Service Operations
Workspace Admin Center. For more information, see Manage configurations in Service
Operations Workspace for ITSM.
Configure the problem form layout in Service Operations Workspace
Configure the problem form so that the information it collects is relevant to your organization's
processes. You can easily modify the form to show only the fields, related lists, and other
elements that you need.

Before you begin

Role required: admin or personalize_form

Procedure
1. Navigate to All > > Problem > Create New.
2. On the form context menu, select Configure, and then select Form Builder.
3. From the Default view list, select one of the following.
◦ To customize the layouts of existing problem forms, select Service Operations Workspace.
◦ To customize the layouts of new problem forms, select Service Operations Workspace New
Record.
4. If the form is in a different application scope, select Edit in original scope before you start
editing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3078


<!-- page 3079 -->
Configure the problem task form layout in Service Operations Workspace
Configure the problem task form so that the information it collects is relevant to your
organization's processes. You can easily modify the form to show only the fields, related lists, and
other elements that you need.

Before you begin

Role required: admin or personalize_form

Procedure
1. Navigate to All > > Problem > Create New.
2. On the form context menu, select Configure, and then select Form Builder.
3. From the Problem list, select Problem Task.
4. From the Default view list, select one of the following.
◦ To customize the layouts of existing problem task forms, select Service Operations
Workspace.
◦ To customize the layouts of new problem task forms, select Service Operations Workspace
New Record.
5. If the form is in a different application scope, select Edit in original scope before you start
editing.
Configure problem modals shown during state transitions
Add the optional and mandatory fields necessary to move a problem record through its life cycle
using the Form Builder.

Before you begin

Role required: admin

Procedure
1. Navigate to All > > Problem > Create New.
2. On the form context menu, select Configure, and then select Form Builder.
3. From the Default view list, select any of the following.
Option

Description

SOW Problem Accept Risk Modal

Modal options shown during a problem state
transition to Accept Risk.

SOW Problem Assess Modal

Modal options shown during a problem state
transition to Assess.

SOW Problem Cancel Modal

Modal options shown during a problem state
transition to Cancel.

SOW Problem Fix Modal

Modal options shown during a problem state
transition to Fix.

4. If the form is in a different application scope, select Edit in original scope before you start
editing.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3079


<!-- page 3080 -->
Configure problem task modals shown during state transitions
Add the optional and mandatory fields necessary to move a problem task record through its life
cycle using the Form Builder.

Before you begin

Role required: admin

Procedure
1. Navigate to All > > Problem > Create New.
2. On the form context menu, select Configure, and then select Form Builder.
3. From the Problem list, select Problem Task.
4. From the Default view list, select any of the following.
Option

Description

SOW Problem Task Assess Modal

Modal options shown during a problem task
state transition to Assess.

SOW Problem Task Cancel Modal

Modal options shown during a problem task
state transition to Cancel.

SOW Problem Task Complete Modal

Modal options shown during a problem task
state transition to Complete, if the task was
created as a General type.

SOW Problem Task Complete RCA Modal

Modal options shown during a problem task
state transition to Complete, if the task was
created as a Root Cause Analysis type.

5. If the form is in a different application scope, select Edit in original scope before you start
editing.
Configure properties for Problem Management in Service Operations Workspace
Configure the properties used to control process-related features, such as creating a problem
task on a closed problem and re-analyzing a closed or a canceled problem.

Before you begin

Role required: admin or problem_manager

Procedure
1. Navigate to All > Problem > Administration > Problem Properties.
2. Adjust the properties as needed.
For more information about the available options, see Problem management properties.
Create a task type for problem or change in Service Operations Workspace
Configure a task type that can be used during problem or change creation.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3080


<!-- page 3081 -->
About this task

If you extend problem task or change task to add your own task type, you can set the child of
problem or change task as the target table. Depending on the default values you set in the child
of problem task or change task, you need not pass any values.
For information about creating a change task, see Create a change task in Service Operations
Workspace.
For information about creating a problem task, see Create a problem task in Service Operations
Workspace.

Procedure
1. In the navigation filter, enter sn_sow_interceptor_record_type_selector.list.
2. From the Record Type Selectors list, select New.
3. On the Record Type Selector form, fill in the fields.
Record Type Selector form
Field

Description

Applies to

Table that the task type applies to. Select Problem task [problem_task] or
Change Task [change_task].

Order

Order of the task type in the Create problem task or Create change task dialog
box.

Application Scope of the application.
Active

Option for enabling the task type.

Title

Card title that is displayed in the Create problem task or Create change task
dialog box.

Description Card description.
Target
table

Table where the record should be created when using this task type.

Note: This field is not displayed if the table selected in the Applies to
field does not have any child tables.

Values

Default values that are populated when creating a record using this task type.

Define priority lookup rules for Problem Management in Service Operations Workspace
Define the impact and urgency of the problem to calculate its priority. Use the priority calculation
to prioritize your work and to drive service level agreements.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Policy > Rules > Priority Lookup Rules.
2. Select New.
3. On the form, fill in the fields.
For more information about the available fields, see Data lookup for prioritizing problems.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3081


<!-- page 3082 -->
Enable Problem Management models in Service Operations Workspace
Enable the Problem Management models system property so that you can create and use
custom models.

Before you begin

See considerations for enabling and disabling Problem Management models at Problem
Management models in Service Operations Workspace.
Role required: admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. From the Name column, search for *models.
3. Select the com.snc.problem_management.models.enabled system property.
4. Set the Value field to True.
5. Select Update.

Result

Problem Management models are enabled.
Create a problem model in Service Operations Workspace
Create custom Problem Management models with states and transitions tailored to your use
cases.

Before you begin

See considerations for enabling Problem Management models at Problem Management models
in Service Operations Workspace.
Enable the system property com.snc.problem_management.models.enabled. For
more information, see Enable Problem Management models in Service Operations Workspace.
Role required: admin

Procedure
1. Open the Problem Models table in one of the following ways.
◦ In the navigation filter, enter prb_model.list.
◦ Navigate to All > Problem > Administration > Problem Models.

Note: For more information about enabling menu items for Problem Management
models, see Enable or disable an application menu or module

.

2. Create a problem model.
a. Select New.
b. On the Problem Model form, fill in the fields.
For more information, see Problem model form.
3. Choose the states for your custom model by selecting Save from the form context menu icon
(

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3082


<!-- page 3083 -->
a. From the Model States context menu that appears, select New.
b. On the Model State form, fill in the fields.
Model State form
Field

Description

State

State that you want to include in your model.

Initial state

Option to enable this state as the initial state
for your model. This field is automatically
selected when you add the first state to your
model.

c. Select Submit for each state you choose.
4. Apply a transition to each model state by selecting the display/hide hierarchical lists icon (

).

a. From the Model State Transitions context menu, select New.
b. On the Model State Transitions form, fill in the fields.
Model State Transition form
Field

Description

From

State that the problem record is moving
from.

To

State that the problem record is moving to.

Automatic transition

Option for enabling automatic transition
to the problem record when the defined
conditions are met. Selecting this option
also prevents you from manually selecting
the State field on the problem record.

c. Select Submit for each model state transition that you add.
5. Optional: Apply transition conditions by selecting any of your model state transitions.
a. From the Transition Conditions context menu, select New.
b. On the Model State Transition Condition form, fill in the fields.
(Optional) For more information, see Problem Management model state transition condition
form.
c. Select Submit for each transition condition that you add.

Result

If you selected the Default problem model option in the Problem Model form, your custom
problem model is used when new problems are created.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3083


<!-- page 3084 -->
Create a problem task model in Service Operations Workspace
Create custom Problem Management models with states and transitions tailored to your use
cases.

Before you begin

See considerations for enabling Problem Management models at Problem Management models
in Service Operations Workspace.
Enable the system property com.snc.problem_management.models.enabled. For
more information, see Enable Problem Management models in Service Operations Workspace.
Role required: admin

Procedure
1. Open the Problem Task Models table in one of the following ways.
◦ In the navigation filter, enter prb_task_model.list.
◦ Navigate to All > Problem > Administration > Problem Task Models.

Note: For more information about enabling menu items for Problem Management
models, see Enable or disable an application menu or module

.

2. Create a task model.
a. Select New.
b. On the Problem Task Model form, fill in the fields.
For more information, see Problem task model form.
3. Choose the states for your custom model by selecting Save from the form context menu icon
(

).

a. From the Model States context menu that appears, select New.
b. On the Model State form, fill in the fields.
Model State form
Field

Description

State

State that you want to include in your model.

Initial state

Option to enable this state as the initial state
for your model. This field is automatically
selected when you add the first state to your
model.

c. Select Submit for each state you choose.
4. Apply a transition to each model state by selecting the display/hide hierarchical lists icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3084


<!-- page 3085 -->
a. From the Model State Transitions context menu, select New.
b. On the Model State Transitions form, fill in the fields.
Model State Transition form
Field

Description

From

State that the problem task record is moving
from.

To

State that the problem task record is moving
to.

Automatic transition

Option for enabling automatic transition to
the problem task record when the defined
conditions are met. Selecting this option
also prevents you from manually selecting
the State field on the problem task record.

c. Select Submit for each model state transition that you add.
5. Optional: Apply transition conditions by selecting any of your model state transitions.
a. From the Transition Conditions context menu, select New.
b. On the Model State Transition Condition form, fill in the fields.
(Optional) For more information, see Problem Management model state transition condition
form.
c. Select Submit for each transition condition that you add.
6. Create an interceptor for your model by entering
sn_sow_interceptor_record_type_selector.list in the navigation filter.
a. From the Applies to column, search for =problem_task.
b. Select New.
c. On the Record Type Selector form, fill in the fields.
Record Type Selector form
Field

Description

Applies to

Set to Problem Task [problem-task] for
creating problem task models.

Order

Order in which the associated model is
displayed.

Title

Name of the model displayed on the button
when creating problem tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3085


<!-- page 3086 -->
Field

Description

Description

Description of the model displayed on the
button when creating problem task.

Active

Option to make the record type selector
active.

d. From the drop-down Values list, select Model.
e. Select the search icon (

) and select your custom problem task model from the list.

f. From the Condition list, select Show Related Fields at the bottom of the list.
g. From the Condition list of related fields, select Problem → Problem fields.
h. From the Condition list of Problem → Problem fields fields, select Model.
i. From the Condition list of operators, select is not empty.
j. Select Submit.

Result

Your custom problem task model is available as a choice in Service Operations Workspace for
the roles specified in your model.
View the SLA details for problems
View the SLA details of a problem in the contextual side panel of Service Operations Workspace
so that you can prioritize the problem and resolve it within the defined SLA timeline.

Before you begin

You must configure the Service Level Agreement (SLA) timer for Problem Management. Select
from the existing Problem resolution and Problem response configurations, or create your own.
For more information, see Configure the SLA timer and Create an SLA definition.
Role required: admin

Procedure
1. Navigate to All > Problem > Workspace Configuration > Contextual Sidebar.
2. From the SLAs and timings row, set the Active column value to true.

Result

The SLAs and timings card is visible within Record information in the Service Operations
Workspace contextual sidebar.
Configure IT Agent Dashboard in Service Operations Workspace for ITSM
Configure the dashboard that provides performance over time metrics for both the logged-on
user and their groups.

Before you begin

Role required: sn_sow_admin.sn_sow_admin or admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3086


<!-- page 3087 -->
Procedure
1. Navigate to the Service Operations Workspace landing page and select IT Agent Dashboard.
2. Duplicate the dashboard.
3. Select Edit to edit the dashboard.
4. Select Add a tab.
For example, Demo tab.
5. Navigate to the Your tasks tab.
6. Select Average Resolution time.
7. Duplicate the data visualization.
8. Scroll down to the duplicated widget and select Move to a different tab.
9. Select the tab that you have created, for example, the Demo tab.
10. Under the configuration side panel, select data sources.
Th Edit data source screen is displayed where you can change the data of this widget.
11. In search sources, type problem, select problem table.
12. In filters, select the predefined filter.
The predefined filter is PA. Source.Problems.Open.Notupdated90d.
13. Select Apply.
14. Update the metric to count.
15. Update Header & description to ‘Problems not updated in 90 days’.
16. Save the dashboard and share it.
Enable collaboration services for configurable workspaces
Activate the UI Components of Collaboration for Configurable Workspaces
(com.snc.uib.collaboration) plugin to enable the reusing of the component in other configurable
workspaces.

About this task

If you’re upgrading to Zurich, you must install the UI Components of Collaboration for
Configurable Workspaces (com.snc.uib.collaboration) plugin to use the component in across
other workspaces. The existing Collaboration services for Service Operations Workspace (SOW)
(com.snc.uib.sow_collaboration) is still supported. However, to use the latest collaboration
services component, you must update the system properties to implement the functionality. The
UI Components of Collaboration for Configurable Workspaces (com.snc.uib.collaboration) plugin
is installed by default for zBoot users. For more information about updating the system property,
see Migrate the collaborate and Microsoft Teams import screens to new Collaboration services
screens.
Additionally, if you have made any customizations, you must apply those customizations
again when you install the UI Components of Collaboration for Configurable Workspaces
(com.snc.uib.collaboration) plugin.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3087


<!-- page 3088 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Enter com.snc.uib.collaboration in the search bar.
3. Select Install.

What to do next

Migrate the collaborate and Microsoft Teams import screens to new Collaboration services
screens
Migrate the collaborate and Microsoft Teams import screens to new Collaboration services
screens
Map the collaborate and MS Teams import screens to use the new Collaboration services
screens in Service Operations Workspace (SOW).

Before you begin

Role required: admin

Procedure
1. In the navigation filter, search and select sys_ux_screen_type.list.
2. Map the Collaborate tab to use the UI Components of Collaboration for Configurable
Workspaces (com.snc.uib.collaboration) plugin.
a. Apply the filter and search for 4367156343b62110361dff53e9b8f2de in Sys ID.
The Collaborate UX screen collection is displayed.
b. Select Collaborate.
c. In the UX Screens tab, under Active, set the Collaborate Tab SNC value as false.
3. Map the MS Teams Import default - v2 screen to use the UI Components of Collaboration for
Configurable Workspaces (com.snc.uib.collaboration) plugin.
a. Apply the filter and search for eac6db0d3bb92290305efec5e4e45a8d in Sys ID.
The MS Teams Import screen collection is displayed.
b. Select MS Teams Import.
c. In the UX Screens tab, under Active, set the MS Teams Import value as false.
4. Map Start MS Teams Chat screen to use the UI Components of Collaboration for Configurable
Workspaces (com.snc.uib.collaboration) plugin.
a. Apply the filter and search for c04230e9ff7da210549fffffffffff1d in Sys ID.
The Start MS Teams Chat screen collection is displayed.
b. Select Start MS Teams Chat.
c. In the UX Screens tab, under Active, set the Start MS Teams Chat value as false.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3088


<!-- page 3089 -->
Setting up integrations in Service Operations Workspace for ITSM
You can set up multiple integrations in Service Operations Workspace for ITSM to leverage its
complete capabilities.
Setting up Investigation Framework in Service Operations Workspace
Set up the Investigation Framework in Service Operations Workspace to enable the display of
the CI metrics information on the Investigation tab of the Incident records.
Setting up investigation framework using Agent Client Collector for Investigation
Set up the Investigation Framework in Service Operations Workspace using the Agent Client
Collector for Investigation adapter to enable the display of the CI metrics information on the
Investigation tab of the Incident records.
You must ensure that the following requirements are met:
• Service Operations Workspace for ITSM (sn_sow_itsm_cont) application set up is complete
and configured as per your requirement. For more information, see Getting started with Service
Operations Workspace for ITSM
• Install the Agent Client Collector for Investigation Application. For more information, see Install
Agent Client Collector for Investigation.

Note: Installing the Agent Client Collector for Investigation application requires the
ITSM Pro package subscription.
Install Agent Client Collector for Investigation
Install the Agent Client Collector for Investigation application (sn_acc_adapter) if you have
®
the admin role.The application includes demo data and installs related ServiceNow Store
applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Service Operations Workspace ITSM Applications
application listing in the
ServiceNow Store for information on dependencies, licensing or subscription requirements,
and release compatibility.
• Installing the Agent Client Collector for Investigation application requires ITSM Pro package
subscription.
Role required: sn_invest_fwk.sn_investigate_admin or admin

About this task

The Agent Client Collector for Investigation application enables you to retrieve and display the CI
metrics information for the affected CIs with ci_computer or ci_server class. You can customize
and configure the display of the CI metrics data using the Investigate Framework module, which
is installed along with this application. The CI metrics information of the affected CIs helps you to
analyze and resolve the issue.
The following items are installed with the Agent Client Collector for Investigation application:
• Store applications
• Roles
For more information, see Components installed with Agent Client Collector for Investigation.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3089


<!-- page 3090 -->
Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Agent Client Collector for Investigation application (sn_acc_adapter) using the filter
criteria and search bar.
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
Setting up investigation framework using Microsoft Endpoint Configuration Manager for
Investigation
Set up the Investigation Framework in Service Operations Workspace using Microsoft Endpoint
Configuration Manager for Investigation to enable the display of the CI metrics information on
the Investigation tab of the Incident records.
You must ensure that the following requirements are met:
• Service Operations Workspace for ITSM (sn_sow_itsm_cont) application set up is complete
and configured as per your requirement. For more information, see Getting started with Service
Operations Workspace for ITSM
• Install and configure Microsoft Endpoint Configuration Manager Spoke (sn_ms_epcfgmgr_spk)
application. For more information, see Microsoft Endpoint Configuration Manager spoke
and
Microsoft SCCM integration .
• Install the Microsoft Endpoint Configuration Manager for Investigation application.
For more information, see Install Microsoft Endpoint Configuration Manager(MECM) for
Investigation.
Install Microsoft Endpoint Configuration Manager(MECM) for Investigation
You can install the Microsoft Endpoint Configuration Manager for Investigation
(sn_mecm_adapter) application if you have the admin role. The application includes demo data
®
and installs related ServiceNow Store applications and plugins if they aren’t already installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

3090


