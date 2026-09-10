# Zurich Customer Service Management — Route and assign cases / Assignment workbench overview / Special handling notes

Source: servicenow-zurich-customer-service-management-enus.pdf | Release: zurich | Pages: 1333–1344 of 2452

Sections: Route and assign cases (p1333); Assignment workbench overview (p1335); Special handling notes (p1341)

---

<!-- page 1333 -->
CSM Walkup Experience tests
Test

Description

Release version

CSM Walkup: Check-in as
a walkup user, look at the
queue, and submit a survey

As a walk-up user, perform
check-in, look at the queue,
and submit feedback through
a survey.

Rome

Note: This test works
when the Seattle
location, available with
demo data, is available.

CSM: Customer Project Management tests
Test

Description

Release version

CSM PPM: Case creation from As a customer service
project workflow
agent, create a case from a
CSM project record in CSM
Configurable Workspace.

Yokohama

CSM PPM: Case creation from As a customer service agent,
project task workflow
create a case from a CSM
project task record in CSM
Configurable Workspace.

Yokohama

Routing and assigning customer service cases
The case routing feature uses matching rules and assignment rules to identify customer service
cases that meet certain conditions and then route those cases to customer service agents.
This video covers various aspects of configuration for routing and assignment including creating
assignment rules, the assignment workbench and advanced work assignment.

Overview
Create one or more matching rules that establish specific conditions that a case must meet
before it can be routed to an agent. Then use an assignment rule to route those cases to agents
based on product knowledge and availability. You can also invoke the MatchingRuleProcessor
API to execute the matching rules and return a list of users (sys_ids).

Matching Rules
Matching rules are based on two defined sets of conditions, one that identifies specific case
attributes and another that identifies the agent resources best suited to handle cases with these
attributes. Matching rules are created using the Matching Rule form.
To identify case attributes, select a table that stores the task type (for example, the Case table)
and then use a condition builder to create one or more conditions that a case must meet before
being routed. For example, you can build conditions for a specific account and product or for a
specific product and priority level.
To identify an agent resource, use one of the following resource matching methods:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1333


<!-- page 1334 -->
• Simple: Select the resource name from a list of users.
• Advanced: Build conditions that filter the available agent resources. These conditions can be
based on user role, agent group, specific skills, work load, or agent availability.
• Scripted: Create a customized script to identify agent resources.
Another resource matching method, Selection Criteria, can be used to create a matching rule
with selected matching criteria for use with the assignment workbench.

Assignment Rules
Use assignment rules to automatically assign task to users and groups. Create an assignment
rule for a matching rule by selecting the Create assignment rule related link on the Matching
Rule form. When the matching rule conditions are met, a case can be routed to a user or a group
using the assignment rule. The assignment rule is applied only if the task isn’t already assigned
to another user or group.

Note: Matching rules and assignment rules are independent records with no

synchronization. If you change the Applies to component of the matching rule, it isn’t
reflected in the assignment rule.
When you create an assignment rule, you select the following:
• The table for the task type and the conditions that must be met before the task is assigned.
• The user or the group to which the task is assigned.
Alternately, you can create a script to further customize the assignment rule.
Related topics
Assignment rules module

Invoke the MatchingRuleProcessor API
After you create one or more matching rules, you can invoke the MatchingRuleProcessor API and
run the rules.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, admin

Procedure
• You can invoke the matching engine using the processAndGetCandidates method of
the matchingRuleProcessor class.
Pass in the task record and the number of resources. The result is an array of resource sys_ids.
• The system processes the matching rules based on the number stored in the Execution Order
field for each rule.
The result is a list of users (sys_ids), which you can use for case routing and assignment.

Reverse matching
Reverse matching uses the same matching rules to match tasks to a resource rather than
resources to a task.

Before you begin

Role required: sn_customerservice_agent, sn_customerservice_manager, and admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1334


<!-- page 1335 -->
About this task

The resource matching engine can match resources and tasks in two ways:
• Forward: matches resources for a task
• Reverse: matches tasks for a resource
The same matching rule can be used for both forward and reverse matching.

Procedure
• In the Customer Service Management application, you can use reverse matching to determine
which call the next available agent should take.
• Reverse matching returns a list of case sys_ids instead of user sys_ids.
When using reverse matching, you can also limit the cases returned to a specific set. The
following example shows how to use reverse matching.
MatchingRuleProcessor.processAndGetCandidates(resource,
taskLimit, "sn_customerservice_case", "reverse", false,
[<array of cases to consider>])
Limit the number of task sys_ids returned for reverse matching rules
Reverse matching rules return a list of case sys_ids. Limit the number of cases returned by
configuring the number in the reverse.matchingrule.entity.limit system property.

Before you begin

Role required: admin

Procedure
1. In the navigation filter, type sys_properties.list.
2. Search for the reverse.matchingrule.entity.limit system property.
3. In the number field, change the number of cases returned.
The default number is 30.

Result

If the number of cases returned is more than the value listed in the system property, the reverse
matching rule doesn’t run for Scripted and Selection Criteria matching rules.

Assignment workbench overview
The assignment workbench enables customer service managers to assign tasks to agents
efficiently and intelligently. The workbench uses configurable criteria, such as skills and
availability, to evaluate the agents in a selected group and provide an overall ranking. Managers
can view these results and click one button to assign a task.
The assignment workbench displays all the relevant information for task assignment, including:
• A list of the agents in the task assignment group.
• The matching criteria used to evaluate the agents.
• An overall ranking for each agent in the assignment group.
• A filter with the current assignment group and the skills identified for the task, including any
mandatory skills.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1335


<!-- page 1336 -->
Assignment Workbench

Agents are ranked from 1 to any number based on the criteria configured for the workbench. The
more criteria that matches, the higher an agent's rank. When the criteria for two agents is the
same, the agents have the same rank. Point to an agent's rank to display the details.
Use the filter to change the assignment group and to add or remove skills. Changes to the
assignment group or to the skills lists are reflected immediately in the workbench:
• Changing the assignment group displays a different list of agents.
• Adding or removing skills can change the agent ranking.
If you are using the mandatory skills feature, the agents displayed in the assignment workbench
are filtered by the skills in the Mandatory Skills Added list and then ranked by the other
matching criteria.

Note: Agents cannot add or remove mandatory skills or make a skill not mandatory.
Configuring the assignment workbench
The assignment workbench configuration is stored in a matching rule that is based on the
Selection criteria matching type. The default configuration uses the Recommendation for Case
Assignment matching rule, which includes three of the four default matching criteria:
• Availability Today
• Matching Skills
• Assigned Cases
Based on these matching criteria, the workbench calculates and displays an overall rank for each
agent in the group. You can modify or create matching criteria and the Recommendation for
Case Assignment matching rule as needed or you can create your own configuration following
these steps:
1. Create one or more matching criteria.
2. Create a matching rule with the Selection criteria matching type.
3. Open the matching rule and add the desired matching criteria.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1336


<!-- page 1337 -->
If you are using mandatory skills, you must replace the Matching Skills criterion in this matching
rule with the Matching Skills - Mandatory Skills Support criterion to match agents with
mandatory skills required for a case.

Using the assignment workbench
Access the assignment workbench by clicking the Find Agents icon (
field on the task form.

) next to the Assigned to

Note: The state of the current record determines the availability of the Find Agents icon.
The icon is available for records in the Open, Awaiting, and Cancelled states, and if the
user has write access for the Assigned to field. The icon is not available for records in the
New or Closed states or when the Assigned to field is read-only for the current user.
Sort the list of agents by any of the matching criteria by clicking the desired column header,
which reorders the suggested agents based on the selected criteria.
Select a different assignment group from the Group list in the filter. The list of agents is updated
based on the selection. If the selected group does not contain any agents, a message is
displayed to select another group.
Add or remove skills from the Skills list in the filter. These selections are reflected in the
Matching Skills column.
Skills that have been identified as mandatory for a task are displayed in the Mandatory Skills
Added list. These selections are also reflected in the Matching Skills column. You cannot add or
remove skills from this list.
Select an agent and click Assign to assign the task. The workbench closes and returns to the
Case form. The Assigned to field is updated with the selected agent. Click Save on Case form to
save this assignment.

Plugins
The Assignment Workbench plugin (com.snc.assignment_workbench) is activated as part of
Customer Service Management.
The Case Assignment Workbench Demo plugin (com.snc.case_assignment_workbench_demo)
provides demo data for the workbench.

Tables
Assignment Workbench adds the following tables.
Assignment Workbench tables
Table

Description

Matching Criteria

Stores the matching criteria that can be used to create
a configuration for the assignment workbench.

[matching_dimension]
Select Criteria
[matching_dimension_for_assignment]
Matching Rule

Stores the matching criteria for an assignment
workbench configuration matching rules.
Stores matching rules, including the matching rules
that configurations for the assignment workbench.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1337


<!-- page 1338 -->
Assignment Workbench tables (continued)
Table

Description

[matching_rule]

User Roles
Assignment Workbench adds the following roles.
Assignment Workbench roles
Contains
roles

Role title [name]

Description

Assignment workbench

Provides access to the assignment workbench for
customer service agents and consumer service agents.

[assignment_workbench]

Skill user
[skill_user]

Properties
Assignment Workbench adds the following properties.
Assignment Workbench properties
Property

Description

assignment_workbench.find.agents.title Title for the macro button.
• Type: string
• Default value: Find Agents
• Location: Routing and Assignment > Properties
assignment_workbench.new.window

When enabled, opens the assignment workbench in
a new window.
• Type: true | false
• Default value: false:
• Location: Routing and Assignment > Properties

assignment_workbench_no_of_agents

Number of agents per page. (To get better
performance, do not use more than 50 agents per
page.)
• Type: choice list
• Default value: 30
• Location: Routing and Assignment > Properties

Related topics
Configure assignment workbench
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1338


<!-- page 1339 -->
Matching criteria for case assignment
The assignment workbench uses configurable matching criteria, such as skills and availability, to
evaluate the agents in a selected group and provide an overall ranking.
There are three types of matching criteria:
• Simple Match: Creates one-to-one matching, such as matching the time zone of an agent with
the time zone of a task location.
• Aggregate: Uses a simple query and returns an aggregate result. For an aggregate type, select
a table and create a filter, and then select an aggregate field such as the Assigned to field. This
type of query returns a set of users.
• Scripted: Uses a scripted query which returns a list of users.
Several matching criteria are provided with the assignment workbench:
• Availability Today: Availability is calculated based on the agent's work schedule, assigned
work, and personal time off. The more availability an agent has, the higher the contribution to
the agent's overall rank.
• Matching Skills: The number of agent skills that match the skills required for the case. The
more skills that match, the higher the contribution to the agent's overall rank.
• Matching Skills - Mandatory Skills Support: Calculates the number of agent skills that match
the mandatory skills. The calculation is done by filtering out all agents who don’t have the
mandatory skills and ranks the remaining agents. The more skills that match, the higher the
contribution to the agent's overall rank.

Note: If using the mandatory skills feature, use the Matching Skills - Mandatory Skills
Support criterion to match agents with the mandatory skills identified for a case.

• Assigned Cases: The number of cases already assigned to this agent. The more cases
assigned, the lower the contribution to the agent's overall rank.
• Last Assigned: To balance assigned work, prioritize the agent based on their last assigned
work.
To create matching criteria, select the type and use the fields related to that type to build
the query. After creating matching criteria, you can create a configuration for the assignment
workbench by creating a matching rule of the type Selection criteria and selecting the desired
matching criteria.
As part of selecting the matching criteria for the workbench configuration, you can specify the
following settings for each individual criterion:
• ranking and display usage
• ranking method
• ranking weight
• threshold
• active/inactive

Ranking and display usage
In the Use for field, specify how you want that matching criterion to be used:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1339


<!-- page 1340 -->
• Ranking and display: Uses the criterion to determine agent ranking and displays it in a column
on the workbench.
• Display only: Displays the criterion in a column on the workbench but doesn’t use it to
determine agent ranking.
• Ranking only: Uses the criterion to determine agent ranking but doesn’t display it on the
workbench.

Ranking method
There are two ranking methods:
• More is better: For example, more availability is better when determining the agent ranking.
• Less is better: For example, fewer assigned cases are better when determining agent ranking.

Weight
Each matching criterion has an assigned weight. By default, the matching criteria in the
Recommendation for Case Assignment matching rule have an assigned weight of 10. You can
assign a higher weight to the criteria that are more important.

Threshold
A threshold sets a minimum requirement for a criterion. For example, set the threshold of the
Matching Skills criterion to 3 if you want to see only those agents who have at least three of
the required skills for a task. For availability, set the threshold to the desired number of hours
to display only those agents who have that minimum number of work hours available. You can
set the threshold in the Select Criteria related list on the Matching Rule form. If necessary,
personalize the list and add the Threshold column.

Active/Inactive
There can be several matching criteria associated with the matching rule that determines the
assignment workbench configuration. Each individual criterion can be set to active or inactive.
Changing this setting has an immediate impact on the agent ranking. You can change the Select
Criteria related list on the Matching Rule form. If necessary, personalize the list and add the
Active column.

Calculating the agent ranking
The assignment workbench adds the values of the matching criteria and their respective weights
and uses these values to determine the overall agent ranking.
1. Calculate a number for each criterion.
2. Multiply that number by the criterion weight.
3. Divide the result by the total of all criterion weights.
4. Repeat for each criterion and add the results.
The following example shows how the ranking is determined for an agent with these matching
criteria values:
• Matching Skills with Mandatory Skills Support: 5/6
• Availability Today: 7 hours
• Assigned Cases: 2
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1340


<!-- page 1341 -->
Calculations:
• Matching Skills: 2 / 3 = 0.666 (with 3 being the maximum number of skills)
• Availability Today: 7 / 8 = 0.875 (with 8 being the maximum number of hours)
• Assigned Cases: 2 / 26 = 0.0769 (with 26 being the total number of tasks in the table)
• Weight: Each matching criterion has an equal weight of 10
((0.666 x 10) / Total of criterion weight (10+10+10)) + ((0.875
x 10) / Total of criterion weight (10+10+10)) + ((0.0769 x
10) / Total of criterion weight (10+10+10))
(6.66 / 30) + (8.75 / 30) + (0.769 / 30)
0.222 + 0.291 + 0.0256 = 0.53
This calculation is performed for each agent in the assignment group. Agents are ranked based
on the value of this calculation, with the highest number earning the highest ranking.

Matching rules for case assignment
Use a matching rule to create a configuration for the assignment workbench.
The assignment workbench configuration is stored in a matching rule that is based on the
Selection criteria matching type.
The default configuration uses the Recommendation for Case Assignment matching rule, which
uses three of the four default matching criteria:
• Availability Today
• Matching Skills
• Assigned Cases

Note: If using the mandatory skills feature, use the Matching Skills - Mandatory Skills
Support criterion to match agents with the mandatory skills identified for a case.

You can customize this matching rule to meet your specific need for calculating agent
recommendations. This matching rule can also be used for auto assignment if you create an
assignment rule.

Special handling notes
The Special Handling Notes application enables you to create notes that bring important
information about individual records, such as a case or account record, to the user's attention.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1341


<!-- page 1342 -->
Special handling notes in CSM Configurable Workspace

You can create special handling notes for specific records or for a set of records that meet one
or more conditions. You can also configure this application to display any special handling notes
from related records, such as the account or the product associated with a customer service
case.

Important: Use special handling notes for special circumstances and not for the general
case processing workflow. It is not recommended to have more than 10k special handling
notes on an instance. In addition, avoid complex conditions and use dot walking sparingly
when creating special handling notes. Having a large number of notes with complex
conditions can affect the load time.

Configuring special handling notes
Users with the sn_shn.admin role can configure the desired entity tables, such as the Case
table, to use special handling notes. Special handling notes can be configured to display in the
following ways:
• In a pop-up window that appears when a user accesses a form.
• In an embedded list or a related list on a record form.
For more information, see the following configuration topics:
• Configure special handling notes
• Configure an entity table to use special handling notes
• Configure a form to show special handling notes

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1342


<!-- page 1343 -->
Creating, updating, and deleting special handling notes
Users with the sn_shn.admin role can create, update, and delete special handling notes. Users
with the sn_shn.editor role can view and update notes and users with the sn_shn.user role can
view notes. For more information about creating special handling notes, see the following topics:
• Create a special handling note
• Components installed with Special Handling Notes
Special handling notes display important information to the user. In addition to a message, a
special handling note also has a status, an assigned priority, and an expiration date.
The status of a note can be one of the following:
Special handling note states
Status

Definition

Active

The note is active.
Active notes appear on the Special Handling
Notes list or pop-up window.
Active notes remain on the list until they are
set to Inactive or Expired.
Active notes remain on the pop-up window
until dismissed or until they are set to Inactive
or Expired.

Inactive

The note is no longer active.
Users with the sn_shn.admin or sn_shn.editor
role can set a note to Inactive if the
information in the note is no longer useful.
When a note is set to Inactive, it is removed
from the Special Handling Notes list or pop-up
window.
Inactive notes can be viewed by navigating to
Special Handling Notes > Special Handling
Notes.

Expired

The note has reached it's expiration date or it
has been expired manually.
If a note is expired, the form becomes readonly for all user roles other than the system
administrator.
A note is expired automatically by a scheduled
job when it reaches it's expiration date. The
scheduled job also sets any inactive notes
to expired if the inactive notes have reached
their expiration date.

A note can be assigned one of the following priorities. Each priority has an associated color,
which is displayed as a colored bar in the pop-up window and as a colored circle in the Priority
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1343


<!-- page 1344 -->
field in a list. The Core UI and the CSM Configurable Workspace interface use different colors to
represent priority.
Special handling note priorities
Priority

Core UI

CSM Configurable Workspace

1 - Critical

Red

Red

2 - High

Orange

Orange

3 - Moderate

Green

Purple

4 - Low

Blue

Gray

When creating a special handling note, you can make it effective right away or you can select a
date when it becomes effective. You can also select an expiration date.

Special handling notes pop-up window
Special handling notes can be displayed on a form in a pop-up window. Users with the
sn_shn.admin role can configure a form to display the Special Handling Notes pop-up window.
This window appears when you access a record that has one or more active notes. The pop-up
window displays the following information for each note:
• Message
• Priority
To dismiss a note, click Dismiss. Once you dismiss a note, it no longer appears in the pop-up
window. To close the Special Handling Notes pop-up window, click X.

Special handling notes list
Special handling notes can be displayed on a form in an embedded or related list. Users with
the sn_shn.admin role can configure a form to display the Special Handling Notes list. This list
appears on a form when there are one or more active notes for a record. The Special Handling
Notes list displays the following information for a note:
• Message
• Expiration date
• Priority
• Table

Resurfacing special handling notes
Special handling notes are typically displayed in a pop-up window when a record is opened.
Agents can view the special handling notes, dismiss individual notes, and close the window. If an
agent closes the window, they can open it again and display the special handling notes without
closing and reopening the record tab in CSM Configurable Workspace.
To open the special handling notes pop-up window after it has been closed, select Special
handling notes from the More actions menu ( ) on the action bar. If no special handling notes
are available, the system displays an informational message: “No special handling notes are
available.”
The Special handling notes action that agents can use to reopen the special handling notes
window is currently available on the following record pages in CSM Configurable Workspace:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1344


