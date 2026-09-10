# Zurich IT Service Management — Communicate

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2857–2903 of 3857

Sections: Communicate (p2857); Reference (p2861)

---

<!-- page 2857 -->
The problem task enters the Closed state with Close code as Complete.

Note: You can configure the Problem properties to reanalyze a task even after it is closed
by selecting Re-assess. The state of the task changes from Closed to Assess. After all the
problem tasks are completed or canceled, a notification is sent to the problem coordinator
regarding the same.

Resolve related incidents from a problem
After you consider a problem to be resolved, the incidents related to the problem with the state
On Hold may be resolved using a UI action from the Problem form.

Before you begin
Role required: itil

About this task

The topic only applies to legacy problem — Jakarta to London.

Procedure
1. Open a resolved problem that has associated incidents.
2. From the context menu, click Resolve Incidents.
3. Enter values for mandatory fields.

Note: Only the incidents in state On Hold and with Awaiting Problem as the on hold
reason can be resolved.
The state of the incidents in the problem related list is changed to Resolved and work notes
are added to the activity feed.

Communicating the outcome of a problem
Document the cause and resolution of a problem to resolve incoming incidents quickly and avoid
further problems to be raised on the same issue.

Communicate workaround for Problem
Document and communicate workaround to let others know that you are aware of the issue. The
workaround is a temporary way to restore service failures and lessen the impact of a Problem for
which an actual resolution is not yet available.

Before you begin

Role required: admin, problem_admin, problem_manager or problem_coordinator

About this task

When you communicate a workaround, notification is sent to related incidents that a workaround
is available. The Incident process is designed to use the workaround information or to notify the
user of the same. For more information on notification, refer Synchronization between incident
and problem records.

Note: The topic applies to Problems where you have activated the Problem Management
Best Practice — Madrid (com.snc.best_practice.problem.madrid) plugin.

Procedure
1. Navigate to All > Problem > Open.
2. Open the Problem record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2857


<!-- page 2858 -->
3. Enter the information in the Analysis information > Workaround field.
4. Save the record.
5. Under Related Links, click Communicate Workaround.
Communicate workaround (legacy)
You can enter a workaround note into a problem record, and then post the information into every
associated incident.

Before you begin

Role required: itil or admin

About this task

The Communicate Workaround related link on the Problem form eliminates the need to
manually update each incident related to the Problem.

Procedure
1. Open the problem for which you have a workaround.
2. Enter the information in the Workaround field.
3. Click Post.
4. Click the Communicate Workaround related link.
The problem number and the content of the Workaround field are added to the activity
stream on all related incidents. By default, any entries made in an incident activity stream field
generate an email notification to the Caller that you mention on the Incident form.
If group on-call rotation scheduling is in effect when you communicate a workaround, the
system stops the escalations on the associated incidents. Escalation stops because a
workaround is available. This action effectively communicates knowledge to the appropriate
audience, but does not create a knowledge article.

Communicate a fix
After you have completed root cause analysis of a problem and have come up with a resolution
or fix for that problem, submit change requests to get the problem fixed. Documenting and
communicating fix helps user to know the solution to a problem.

Before you begin

Role required: admin, problem_admin, problem_manager or problem_coordinator

About this task

When you communicate a fix, notification is sent to related incidents that a fix is available. The
Incident process is designed to use the fix information or to notify the user of the same. For more
information on notification, refer Synchronization between incident and problem records.

Note: The topic applies to Problems where you have activated the Problem Management
Best Practice — Madrid (com.snc.best_practice.problem.madrid) plugin.

Procedure
1. Navigate to All > Problem > Open.
2. Open the Problem record.
3. Enter the information in the Resolution Information > Fix notes field.
4. Save the record.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2858


<!-- page 2859 -->
5. Under Related Links, click Communicate Fix.
The fix information is copied from the Fix notes field on the Problem form to the Additional
Comments field on the Incident form. An email notification is sent to the caller and the user
who is assigned to the Incident.

Knowledge articles from problems
Knowledge bases house the information an organization wants to keep and share. The Problem
form includes four options for creating knowledge and communicating information.

Note: If you have Problem Management Best Practice — Madrid — Knowledge Integration
plugin (com.snc.best_practice.problem.madrid.knowledge) activated, see Create a known
error article. The topic applies to legacy Problem (London or a prior release) only.
• You can select the Knowledge check box and automatically submit a knowledge article when a
problem is closed.
• You can enter a workaround note into a problem record, and then post the information into
every associated incident.
• You can create a knowledge article from the problem immediately, and not wait for when the
problem is closed.
• You can quickly create and publish a knowledge article in the News category.
By default, most new articles are created as drafts and move through a review state before they
are published. An exception to the standard workflow is posting news from the Problem form.
If the administrator enables the optional knowledge submission workflow, articles created from
incidents or problems become knowledge submissions, which are processed through a different
path. For more information, see Knowledge workflows .
Use the knowledge check box
As with incidents, problems often generate information that may be needed in the future. The
system can automatically submit a knowledge article when a problem is closed.

Before you begin
Role required: itil

About this task

Note: If you have Problem Management Best Practice — Madrid — Knowledge Integration
plugin (com.snc.best_practice.problem.madrid.knowledge) activated, see Create a known
error article. The topic applies to legacy Problem (London or a prior release) only.
You can select the Knowledge check box and automatically submit a knowledge article when a
problem is closed.

Procedure
1. Select the Knowledge check box on the Problem form.
2. Resolve and close the problem.
Closing the problem triggers the business rule Problem Create Knowledge. By
default, the business rule creates a knowledge article in the Draft workflow state, ready for a

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2859


<!-- page 2860 -->
knowledge team member to review and publish. The problem Short description becomes the
article Short description, and the problem Work notes become the article Text.
If the knowledge submission workflow is enabled, the problem Work notes become a
knowledge submission instead of an article. For more information, see Knowledge workflows

.

Create a known error article
Create known error articles as reference material. The known error articles document the root
cause and the workaround of the problem to help with deflecting incidents.

Before you begin

Role required: admin, problem_admin, problem_coordinator, or problem_manager
Activate the Problem Management Best Practice — Madrid
(com.snc.best_practice.problem.madrid) and the Problem Management Best Practice — Madrid
— Knowledge Integration (com.snc.best_practice.problem.madrid.knowledge) plugin.

About this task

After you create a known error article from a problem, the article is saved in the knowledge base
and maintained in the Knowledge Management application. The publishing and retirement
processes for a knowledge article are controlled by workflows defined for the knowledge base
that the article belongs to. For more information, see Knowledge workflows .

Procedure
1. Navigate to All > Problem > Open.
2. Open the Problem record.
3. Under Related Links, click Create Known Error Article.

Note: The link appears when the Primary Known Error article field is empty under the
Analysis Information tab on the Problem form.
4. Click Submit.

Note: To read the content of the article, click View Article under Related Links.
5. On the form, fill in the fields.

Note: Click Search for Duplicates to search for existing known error articles. The search
is based on short description, category, and topic.
For a description of the field values, see Known error article form.

What to do next

Click Publish to send the article for review and approval. Depending on the Knowledge base
where the article is stored and the Knowledge Base access controls, this Known Error article may
be available to search for users outside of the IT team to help with Incident deflection.

Post knowledge
You can create a knowledge article from the problem immediately, and not wait for when the
problem is closed.

Before you begin

Role required: itil, knowledge

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2860


<!-- page 2861 -->
About this task

If you have Problem Management Best Practice — Madrid — Knowledge Integration plugin
(com.snc.best_practice.problem.madrid.knowledge) activated, see Create a known error article.
The topic applies to legacy Problem (London or a prior release) only.

Procedure
1. Open a problem from which to post a knowledge article.
2. Click the Post Knowledge related link.
The resulting knowledge article contains the following information.
◦ The problem number and Short description become the knowledge article Short
description.
◦ The problem Description and Workaround become the knowledge article Text.
◦ The problem Configuration item becomes the knowledge article Configuration Item.
◦ The article Topic is set to Known Error.
By default, the system creates a knowledge article in Draft workflow state. If the knowledge
submission workflow is enabled, the problem Short description and Work notes are placed
into a knowledge submission instead of an article. For more information, see Knowledge
workflows .

Reference section for Problem Management
Reference topics provides field descriptions of various forms.

Problem form
Description of the field values for the problem form.
Problem form
Name

Definition

Number

Read-only field. Unique number to identify the problem.

Origin task

Task that first identified this problem.

Category

Group to which the problem belongs to such as software,
hardware. After selecting the category, select the
subcategory, if applicable.

Service

Business service that the problem applies to.
If you select a business service as the configuration
item and that business service is also listed as the
configuration item in any other active task, the active tasks

icon (
) appears. Click the icon to view the list of
all the other active tasks that are affecting the business
service.
You can view the BSM map (dependency view) of the
selected business service by clicking the dependency
icon

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2861


<!-- page 2862 -->
Problem form (continued)
Name

Definition

Service Offering

Consists of one or more service commitments that
uniquely define the level of service in terms of availability,
scope, pricing, and packaging options. Service offering
enables you to receive different features and their levels of
performance for a given service.

Configuration item

Configuration item (CI) that the problem applies to. The CI
class of the selected configuration item identifies the type
of problem, for example, hardware, network, or database.

State

For existing customers, the available states are: Open,
Pending Change, Known Error, and Closed or Resolved.
For new customers from Madrid, the state management
process is applied. This state field is a read-only field.
The field value changes as the problem proceeds from
one state to another state. The states available are: New,
Assess, Root Cause Analysis, Fix in Progress, Resolved,
and Closed.

Resolution code

Indicates whether the problem is resolved, a fix is applied,
a duplicate is available, or the problem coordinator
accepts the risk.

Note: This field appears only for new customers
from Madrid or a later release as it is part of the state
management process.
Duplicate of

When Resolution code is Duplicate, the Duplicate of field
is the reference to the Problem from which the current
Problem is duplicated.

Impact

Effect that the problem has on business. Select the
appropriate impact level (High, Medium, or Low).

Urgency

Extent to which the problem resolution can bear delay.
Select the appropriate urgency level (High, Medium,
orLow).

Priority

How quickly the service desk should address the problem
(Critical, High, Moderate, Low, or Planning). The Priority
field is read-only and is set according to the Impact and
Urgency values entered.

Assignment group

The group who will work on the problem.
The business rule Populate Assignment Group
based on CI/SO populates the Assignment
group field based on the support group available
for the configuration item (CI) or the Service offering
consecutively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2862


<!-- page 2863 -->
Problem form (continued)
Name

Definition

Note: The business rule is triggered when an
incident is created or updated and when the
Assignment group and the Assigned to field is
empty.
If you want to override the default value, you need to
create new properties and provide the field in the property
value that must be used to populate the Assignment
group field. Create the properties in the following order of
preference:
• com.snc.problem.ci_assignment_group.field_name:
identifies which CI field populates the Assignment
group field.

• com.snc.problem.service_offering_assignment_group.
identifies which service offering field populates the
Assignment group field.
If the Assignment group field is blank, the incident is
automatically assigned to a group.
Assigned to

Specific problem coordinator that the problem is
assigned to. If an assignment rule applies, the problem is
automatically assigned to the appropriate user or group.

Problem Statement

Description of the problem that the problem-solving team
addressing. When you update the problem statement
and move to another field, the Related Search field
displays knowledge articles. If you configure the problem
properties, then the Related Search field displays other
related information related to the problem statement.

Description

Detailed description of the problem.

Related Search

Result of a search.

Note: If you want to search and link a known error
article or knowledge article to the Problem, click
Attach.
Notes
Work notes list

Users who receive notification when work notes are added
to the problem.

Work notes

Inscription about the work that you perform on the
Problem.

Analysis Information
Workaround

Method that you have used to overcome the Problem.
Providing a workaround if useful for fast Incident
resolution. It can be a way of dealing with a problem or

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2863


<!-- page 2864 -->
Problem form (continued)
Name

Definition

making something work despite the problem not being
resolved.
If a workaround is available, the problem coordinator can
click the Communicate Workaround action to notify the
related Incidents.
Cause notes

Inscription on what had caused the problem.

Resolution Information
Resolved by

Read-only field. Name of the user who resolved the issue.

Note: This field appears only for new customers
from Madrid or a later release as it is part of the state
management process.
Resolved

Read-only field. The date and time when the Problem is
resolved.

Note: This field appears only for new customers
from Madrid or a later release as it is part of the state
management process.
Fix notes

Inscription on how you have fixed the problem. If a
fix is available, the problem coordinator can click the
Communicate Fix action to notify the related Incidents.

Other Information
Opened by

Read-only field. Name of the user who opened the
problem.

Opened

Read-only field. The date and time when the user opened
the Problem.

Confirmed by

Read-only field. Name of the user who confirms that the
problem is valid and needs a resolution.

Note: This field appears only for new customers
from Madrid or a later release as it is part of the state
management process.
Confirmed

Read-only field. The date and time when the user confirms
that the Problem is valid and needs a resolution.

Note: This field appears only for new customers
from Madrid or a later release as it is part of the state
management process.
Fix by

Read-only field. Name of the user who started the fix.

Fix

Read-only field. The date and time when the user started
the fix.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2864


<!-- page 2865 -->
Problem Task form
Description of the field values for the problem task form.
Problem task form
Field

Description

Number

Read-only. Unique number to identify the task.

Type

Read-only state. Determines whether the
problem task is created specifically to
investigate the cause of the problem or is a
general task.

Note: This field appears only for new
customers from Madrid or a later release
as it is part of the state management
process.
Configuration item

Configuration item (CI) that the problem
applies to. The CI class of the selected
configuration item identifies the type of
problem, for example, hardware, network, or
database.

Due date

Date within which the problem task should be
completed.

Source problem

Unique number of the problem for which the
problem task is created.

State

For existing customers, the available states
are: Pending, Open, Work in Progress,
Closed Complete, Closed Incomplete, and
Closed Skipped.
For new customers from Madrid, the state
management process is applied. This state
field is a read-only field. The states available
are: New, Assess, Work in Progress, and
Closed.

Close code

Read-only field indicating whether the
problem task was completed or canceled.

Note: This field appears only for new
customers from Madrid or a later release
as it is part of the state management
process.
Priority

How quickly the service desk should address
the problem task (Critical, High, Moderate,
Low, or Planning).

Assignment group

Specific group to whom the problem task is
assigned to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2865


<!-- page 2866 -->
Problem task form (continued)
Field

Description

Assigned to

Specific problem analyst to whom the task is
assigned to.

Short description

Brief description of the problem task.
When you update the short description, and
move to another field, the Related Search field
displays knowledge articles. If you configure
the problem properties, then the Related
Search field displays other related information
related to the short description.

Description

Detailed description of the problem task.

Related Search

Result of a search.

Note: If you want to search and link a
knowledge article to the Problem task,
click Attach.
Notes
Work notes list

Users who receive notification when work
notes are added to the problem task.

Work notes

Inscription about the work that you perform on
the problem task.

Analysis Information
Cause code

Cause of the Problem such as Environmental
disaster, Hardware issue, People/Process/
Documentation.

Workaround (Root Cause Analysis only)

Method that you have used to overcome the
Problem. It can be a way of dealing with a
problem or making something work despite
the problem not being resolved.

Closure Information
Completed by

Read-only field. Name of the user who
completed the task.

Completed

The reason why this problem task has been
canceled.

Proposed fix notes (Root Cause Analysis only)

Inscription on how you have fixed the problem
task.

Close notes (General task only)

Inscription on the work you have completed.

Problem model form
Description of the field values for the problem task model form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2866


<!-- page 2867 -->
Problem Model form
Field

Description

Name

Unique name for the problem model.

Default problem model

Option for enabling the problem model as a
default model on the problem request form.

Active

Option for specifying that this model is
available for selection when creating a
problem request.

Description

Detailed description of the problem model.

Advanced Security

Option to enable role-based access controls
and user criteria to tailor the problem creation
landing page views. When you enable
Advanced Security, the Available For, Not
Available For, and Can write tabs appear next
to the Model States tab.

Read Roles

Option to define the roles to view the problem
model.

Write Roles

Option to define the roles to edit the problem
model.

Problem task model form
Description of the field values for the problem task model form.
Problem Task Model form
Field

Description

Name

Unique name for the problem task model.

Problem task type

Option to map the problem task model to a
problem task type. The default selection is
Model when you create a custom problem
task model.

Default problem task model

Option for enabling the problem task model as
a default model on the problem request form.

Active

Option for specifying that this model is
available for selection when creating a
problem request.

Description

Detailed description of the problem task
model.

Advanced Security

Option to enable role-based access controls
and user criteria to tailor the problem creation
landing page views. When you enable
Advanced Security, the Available For, Not
Available For, and Can write tabs appear next
to the Model States tab.

Read Roles

Option to define the roles to view the problem
task model.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2867


<!-- page 2868 -->
Problem Task Model form (continued)
Field

Description

Write Roles

Option to define the roles to edit the problem
task model.

Problem Management model state transition condition form
Description of the field values for the model state transition condition form.
Model State Transition Condition form
Field

Description

Name

Unique name for the condition.

State Transition

State that you're applying the transition
condition to. This field is automatically set with
the state that you're applying the condition to.

Description

Detailed description of the condition.

Requires

Condition for your transition. You can select
a pre-defined condition or select Transition
Condition to define a condition. To create predefined conditions, see Create predefined
conditions.

Condition (condition builder)

Condition on the problem task record that
must be fulfilled to enable the transition.

Condition (script)

Script that must be fulfilled to enable the
transition. The script returns a value of True
when passed.

Active

Option to make the condition active.

Legacy Problem form
Description of the field values for the legacy problem form.
Problem form fields
Name

Definition

Business service

Business service that the problem applies to.
If you select a business service as the configuration
item and that business service is also listed as the
configuration item in any other active task, the active tasks

icon (
) appears. Click the icon to view the list of
all the other active tasks that are affecting the business
service.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2868


<!-- page 2869 -->
Problem form fields (continued)
Name

Definition

You can view the BSM map (dependency view) of the
selected business service by clicking the dependency
icon

.

Configuration item

Configuration item (CI) that the problem applies to. The CI
class of the selected configuration item identifies the type
of problem, for example, hardware, network, or database.

Change request

Change request associated with the problem.

Major problem

Check box to prioritize a problem and highlight that it
needs a review.

Knowledge

Check box to automatically submit a knowledge article
when a problem is closed.

State

State of the problem:
• Open: Open and unassigned.
• Pending Change: Waiting for the corresponding change
request to be closed.
• Known Error: This problem is not going to be fixed
and there is a workaround. Users with the itil role have
access to the Known Errors module.
• Closed/Resolved: The problem is fixed and closed.

Impact

Effect that the problem has on business. Select the
appropriate impact level (High, Medium, or Low).

Urgency

Extent to which the problem resolution can bear delay.
Select the appropriate urgency level (High, Medium,
orLow).

Priority

How quickly the service desk should address the problem
(Critical, High, Moderate, Low, or Planning). The Priority
field is read-only and is set according to the Impact and
Urgency values entered.

Assignment group

The group who will work on the incident.
The business rule Populate Assignment Group
based on CI/SO populates the Assignment
group field based on the support group available
for the configuration item (CI) or the Service offering
consecutively.

Note: The business rule is triggered when an
incident is created or updated and when the
Assignment group and the Assigned to field is
empty.
If you want to override the default value, you need to
create new properties and provide the field in the property
value that must be used to populate the Assignment
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2869


<!-- page 2870 -->
Problem form fields (continued)
Name

Definition

group field. Create the properties in the following order of
preference:
• com.snc.problem.ci_assignment_group.field_name:
identifies which CI field populates the Assignment
group field.

• com.snc.problem.service_offering_assignment_group.
identifies which service offering field populates the
Assignment group field.

Note: The sys_user_group read ACL calls the
SNCRoleUtil function. The function verifies

whether the group that is reviewed contains either
the admin role or security_admin role. The function
allows the user to view the group only if the user
has the same role. As a result, a user with the itil role
cannot assign an incident to a group that has the
admin role or security_admin role nor to any group
whose parent has those role.
Assigned to

Specific user that the problem is assigned to. If an
assignment rule applies, the problem is automatically
assigned to the appropriate user or group.

Parent

The parent task for this problem.

Short description

Summary of the problem.

Description

Detailed description of the problem.

Work notes list

Users who receive notification when work notes are added
to the problem. Click the Add me icon to add yourself
to the work notes list for problems you are interested in
monitoring.

Known error article form
Description of the field values for the legacy problem form.
Known Error article form
Field

Description

Number

Read-only field. Unique number to identify the
known error article.

Knowledge base

Knowledge base (defaults to Known Error) in
which the article is stored for future reference.
The article is saved in the Known Error article
[kb_template_known_error_article] table.

Category

Read-only field. The value of this field is
reference from the Category field of the
Problem.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2870


<!-- page 2871 -->
Known Error article form (continued)
Field

Description

Valid to

Date after which the known error article is
deleted from the database. After this date, the
article does not appear in the search result.

Version

Read-only field. Managed by the Knowledge
Management process when changes are
made to a published article.

Workflow

Read-only field.

Source Task

Read-only field. The Problem record on which
you are creating the article.

Attachment link

Select the check box so that the article
appears as an attachment in the Problem
record. If you do not select the check box, the
content of the article appears in the work note
of the Problem.

Display attachments

Select the check box so that all attachments
to the article appear when you view the article.
The field is relevant only when the Attachment
link field is not selected.

Short description

Brief description of the Known Error.

Description

Detailed explanation of the Known Error.

Workaround

Method that you have used to overcome the
Problem. It can be a way of dealing with a
problem or making something work despite
the problem not being resolved.

Cause

Information on what had caused the problem.

Data lookup for prioritizing problems
To follow ITIL guidelines, problem records are prioritized by the impact and urgency of the
problem.
Problem prioritization is available on new instances.
On the problem form, users select values from the Impact and Urgency fields that determine
which priority value is generated for the problem.
ITIL problem order
Field

Definition

Impact

Impact is a measure of the effect of an incident, problem, or change on business
processes.

Urgency Urgency is a measure of how long the resolution can be delayed until an incident,
problem, or change has a significant business impact.
Priority

Priority is based on impact and urgency, and it identifies how quickly the service desk
should address the task.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2871


<!-- page 2872 -->
Priority is calculated according to the following data lookup rules:
Priority Data lookup rules
Impact

Urgency

Priority

1 - High

1 - High

1 - Critical

1 - High

2 - Medium

2 - High

1 - High

3 - Low

3 - Moderate

2 - Medium

1 - High

2 - High

2 - Medium

2 - Medium

3 - Moderate

2 - Medium

3 - Low

4 - Low

3 - Low

1 - High

3 - Moderate

3 - Low

2 - Medium

4 - Low

3 - Low

3 - Low

5 - Planning

By default, the Priority field is read-only and must be set by selecting the Impact and Urgency
values. To change how the priority is calculated, you can either alter the priority lookup rules or
disable the Priority is managed by Data Lookup - set as read-only UI policy and create their own
business logic.
In the Problem Priority Data Lookup [dl_problem_priority] table, you can modify the data lookup
rules for the task priority.

Work notes for problem priorities
When you initially create and save a problem, the Work notes field is not mandatory. If you
change the priority of the problem by selecting different Impact or Urgency values on a problem
form that was saved, the Work notes field becomes mandatory.

Note: This feature is available only in new instances starting with Jakarta
or a later release. The Problem Management Best Practice – Jakarta plugin
(com.snc.best_practice.problem.jakarta) plugin must be activate.

Problem management properties
Problem Management properties are used to control features such as creating problem task on a
closed problem and reanalyzing a closed or a canceled problem.
These properties are available at Problem > Administration > Problem Properties.
Properties for Problem Management
Property

Description

Problem State Transition Properties
Accept Risk moves the Problem to Closed state
instead of Resolved state
problem.acceptrisk.move_to_closed

• Type: true or false
• Default value: true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2872


<!-- page 2873 -->
Properties for Problem Management (continued)
Property

Can create a Problem Task on a Closed Problem?
problem.closed.can_create_tasks

Description

• Type: true or false
• Value: true or false
• Default value: false

Who can Re-analyze a Canceled Problem?

• Type: choice list

problem.closed.role.reanalyze_from_canceled

• Default value: problem_manager

Who can Re-analyze a Risk Accepted (Closed
state) Problem?

• Type: choice list

• Default value: problem_manager
problem.closed.role.reanalyze_from_closed_riskaccepted
Who can Re-analyze a Completed Problem?
problem.closed.role.reanalyze_from_completed

• Type: choice list
• Default value: problem_manager

Problem Task State Transition Properties
Cancel open Problem Tasks when closing a
Problem
problem.closed.cancel_open_tasks

Who can Re-assess a Completed or Canceled
Problem Task?
problem_task.closed.role.reaassess_from_closed
Can Re-Assess a Problem Task on a Closed
Problem?

• Type: true or false
• Value: true or false
• Default value: true

• Type: choice list
• Default value: problem_coordinator

• Type: true or false

• Default value
problem_task.closed.can_reassess_on_closed_problem
◦ Upgrade: true
◦ New instances: false
Problem Related List Properties
List of related task records (comma-separated)
to track as fixes for this Problem. Used to
notify the Coordinator when all the related
fix records are Completed or Canceled. E.g.
change_request.parent
problem.fix.records

• Type: string
• Default value: change_request.parent,
rm_defect.parent, rm_release.parent,
rm_enhancement.parent,
sn_cim_register.source_id

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2873


<!-- page 2874 -->
Properties for Problem Management (continued)
Property

Description

List of related task records (comma-separated)
to move over when a problem is marked as a
duplicate of another. E.g. incident.problem_id
problem.duplicate.records_to_move
Who can relate closed Incidents to a Problem?
problem.role.relate_closed_incidents

• Type: string
• Default value: incident.problem_id,
sn_customerservice_case.problem,
problem_task.problem

• Type: choice
• Default value:
◦ Upgrade: Nobody
◦ New instances: Problem coordinators

Problem Created from Incident Properties
List of attributes (comma-separated) that will be
copied from the incident to create a new problem
com.snc.problem.create_from_incident.attributes

• Type: string
• Default value: number, description,
short_description, cmdb_ci, impact,
urgency, priority, company, sys_domain,
business_service, category, subcategory

Problem Created from Interaction Properties
Create saved problem
com.snc.problem.create_from_interaction.save

• Type: Boolean
• Default value:
◦ Upgrade customers: No
◦ New customers: Yes

Allow problem creation from interaction
glide.problem.interaction.allow_create

• Type: true or false
• Value: true or false
• Default value: false

Quick start tests for Problem Management
Validate that Problem Management still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and customize these quick start tests to pass
when using your instance-specific data.
Problem Management quick start tests require activating the Problem Management Best Practice
— Madrid plugin (com.snc.best_practice.problem.madrid) and the Problem Management — ATF
Tests plugin (com.snc.problem.atf). For all state related test, the Problem Management State
Model (com.snc.best_practice.problem.madrid.state_model) plugin needs to be active.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2874


<!-- page 2875 -->
PRB MGMT: Problem Management test suite
Test

Description

Release version

PRB MGMT: Cancel a Problem Verify that when a Problem in Madrid
when the state of the Problem the Assess state is canceled,
is Assess
the state of the Problem
changes to Closed with
Resolution code as Canceled.
PRB MGMT: Cancel a Problem Verify that when a Problem is
when the state of the Problem in the Root Cause Analysis
is Root Cause Analysis
state and is canceled, the
state of the Problem changes
to Closed with Resolution
code as Canceled.

Madrid

PRB MGMT: Mark a Problem
Verify that when a Problem
Madrid
as Duplicate when the state of is in the Assess state and is
the Problem is Assess
marked as duplicate, the state
of the Problem changes to
Closed with Resolution code
as Duplicate.
PRB MGMT: Mark a Problem
as Duplicate when the state
of the Problem is Root Cause
analysis

Verify that when a Problem is
in the Root Cause Analysis
state and is marked as
duplicate, the state of the
Problem changes to Closed
with Resolution code as
Duplicate.

Madrid

PRB MGMT: Accept
Verify that when a Problem
Risk of Problem
state is Fix in Progress and
(problem.acceptrisk.move_to_closed:false,state:Fix
the risk is accepted, then the
in Progress)
Problem state changes to
Resolved with Resolution
code as Risk Accepted.

Madrid

Note: The test is
valid when Problem
property Accept Risk
moves the Problem to
Closed state instead
of Resolved state

(problem.acceptrisk.move_to_closed)
is false.
PRB MGMT: Accept
Verify that when a Problem
Risk of Problem
state is Fix in Progress and
(problem.acceptrisk.move_to_closed:true,state:Fix
the risk is accepted, then the
in Progress)
Problem state changes to
Closed with Resolution code
as Risk Accepted.

Madrid

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2875


<!-- page 2876 -->
PRB MGMT: Problem Management test suite (continued)
Test

Description

Release version

Note: The test is
valid when Problem
property Accept Risk
moves the Problem to
Closed state instead
of Resolved state

(problem.acceptrisk.move_to_closed)
is true.
PRB MGMT: Accept
Verify that when a Problem
Risk of Problem
state is Root Cause Analysis
(problem.acceptrisk.move_to_closed:false,state:Root
and the risk is accepted, then
Cause Analysis)
the Problem state changes
to Resolved with Resolution
code as Risk Accepted.

Madrid

Note: The test is
valid when Problem
property Accept Risk
moves the Problem to
Closed state instead
of Resolved state

(problem.acceptrisk.move_to_closed)
is false.
PRB MGMT: Accept Risk of
Verify that when a Problem
Problem(problem.acceptrisk.move_to_closed:true,state:Root
state is Root Cause Analysis
Cause Analysis)
and the risk is accepted, then
the Problem state changes to
Closed with Resolution code
as Risk Accepted.

Madrid

Note: The test is
valid when Problem
property Accept Risk
moves the Problem to
Closed state instead
of Resolved state

(problem.acceptrisk.move_to_closed)
is true.
PRB MGMT: Reanalyze
Problem which is closed-Risk
Accepted from state Root
Cause Analysis

Verify that when a Problem is
reanalyzed after it is Closed
with the Resolution code
as Risk Accepted, Problem
state changes to Root Cause
Analysis.

Madrid

PRB MGMT: Create
Emergency Change from
Problem

Verify the creation of
Emergency Change from a
Problem.

Madrid

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2876


<!-- page 2877 -->
PRB MGMT: Problem Management test suite (continued)
Test

Description

Release version

PRB MGMT: Create Normal
Change from Problem

Verify the creation of Normal
Change from a Problem.

Madrid

PRB MGMT: Problem State
Management

Verify problem state
management.

Madrid

PRB MGMT: Reanalyze a
Problem from Complete

Verify that when a Problem is
reanalyzed after it is Closed
with the Resolution code
as Fix Applied, Problem
state changes to Root Cause
Analysis.

Madrid

PRB MGMT: Reanalyze a
Problem which is canceled
from state Assess

Verify that when a Problem is
reanalyzed after it is Closed
with the Resolution code
as Canceled, Problem state
changes to Root Cause
Analysis.

Madrid

PRB MGMT: Reanalyze a
Problem which is canceled
from state Root Cause
Analysis

Verify that when a Problem is
reanalyzed after it is Closed
with the Resolution code
as Canceled, Problem state
changes to Root Cause
Analysis.

Madrid

PRB MGMT: Reanalyze
Problem which is closed-Risk
Accepted from state Fix in
progress

Verify that when a Problem is
reanalyzed after it is Closed
with the Resolution code
as Risk Accepted, Problem
state changes to Root Cause
Analysis.

Madrid

PRB MGMT: Create a Known
Error article from Problem

Verify creation of Known Error
article from a Problem.

Madrid

PRB MGMT: Risk Accept
reason on Incident

Verify the Risk Accepted
reason is copied to the
Incidents which are awaiting
resolution of a Problem.

Madrid

PRB MGMT: Communicate Fix

Verify the communicate fix
functionality.

Madrid

PRB MGMT: Communicate
Workaround

Verify the communicate
workaround functionality.

Madrid

PRB MGMT: Fix information on Verify that when a Problem
Incident
is resolved, the state of the
Incidents that are awaiting
resolution of the Problem
changes to Resolved. The
fix notes of the Problem are
copied to the Incidents.

Madrid

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2877


<!-- page 2878 -->
PRB MGMT: Problem Management test suite (continued)
Test

Description

Release version

PRB MGMT: Problem
task (Type:General) state
management

Verify Problem task state
Madrid
management of a general type
Problem.

Related topics
Quick start tests

Domain separation and Problem Management
Domain separation is supported in Problem Management. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

Support level: Standard
• Includes all aspects of Basic level support.
• Application properties are domain-aware as needed.
• Business logic: The service provider (SP) creates or modifies processes per customer. The use
cases reflect proper use of the application by multiple SP customers in a single instance.
• The instance owner must configure the minimum viable product (MVP) business logic and data
parameters per tenant as expected for the specific application.
Sample use case: An Admin must be able to make comments required when a record closes for
one tenant, but not for another.
For more information on support levels, see Application support for domain separation

.

Domain separation in Problem Management - Overview
• Problem Management is about eliminating the root cause of a service interruption.
• The problem and problem task tables support domain separation. Therefore a Problem user
sees only problems or problem tasks that have been created within the (tenant) domain that
they belong to.
• Only Problem users can create and access Problems and problem tasks.
• Problem and problem task tables both support domain separation. Therefore, a Problem user
sees only problems and problem tasks that have been created within the (tenant) domain that
they belong to.

How domain separation works in Problem Management
Problem users see only problems and problem tasks that have been created within the (tenant)
domain that they belong to.
Problem users can use Problems and problem tasks within the tenant domains. Problem users
can create and update problems and problem tasks of their domain, any child domains, and the
global domain.

Known Issues
Task-Outage Relationship [cmdb_ci_outage] is not domain separated.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2878


<!-- page 2879 -->
If installed, the Task-Outage Relationship table is not domain separated. Therefore Fulfillers or
Problem users can view any Task-Outage Relationship records regardless of the domain that the
records belong to.
The Task-Outage Relationship table is installed when administrator activates the optional TaskOutage Relationship plugin.
Related topics
Domain separation for service providers

Data for problem resolution
The quick resolution of problems requires gathering as much information as possible about the
problem.
In addition to the information within the problem ticket, useful information is often found in other
tables.

Pertinent related records
Common related records include changes (through the Change request related list) and
incidents in the Incidents related list. All the directly related records are accessible through
related lists. If the appropriate related list does not appear on the form, the administrator can
configure the form to add it.

Known errors and knowledge articles
Information about already-known issues can be found in two places: the Known Errors module
in the Problem Management application, or in the Knowledge application. The Known Errors
module filters the problem table to present all the problems whose cause has been identified but
cannot be fixed. The knowledge base can have information that was gathered from incidents,
and may also have useful workarounds for problems.

Dependency Views map
The Dependency Views map provides a visual representation of the configuration items and their
relationships and displays information about related issues.
For example, the following image is a map for the CI nyc rac na200, which is a mass storage
device.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2879


<!-- page 2880 -->
Map for nyc rac nas200 storage device

The icons beside CIs indicate the following information. You can view information for the
selected CI by clicking Details in the form header, or by pointing to the icon and viewing a popup box.
• The cloud x icon indicates that the CI has an associated problem, which is listed in the
Problem details pane.
• The (!) icon indicates that there is a related incident.
• The link icon indicates that there are associated tasks, which can be incidents, problems, or
changes. If you select the CI, the Details pane displays the associated records.
To open the incident or problem record, click the number in the Details pane.
The map shows the upstream and downstream relationships of the CI. The storage device
problem might be an improper change to one of the UNIX servers.

CMDB baseline history
If a baseline is generated , planned or unplanned changes are tracked within the system.
A common cause of problems is improperly executed changes, and reviewing the history of
changes to a CI helps track problems caused by improper changes.
To check the CMDB Baseline, view the CI record and check Baseline Differences and
Scheduled Changes. The administrator can use the form designer to add these formatters.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2880


<!-- page 2881 -->
Problem baseline

In the example above, the change in RAM is associated with a change request. You can review
the change and see what was planned and what was implemented. The removal of QuickTime
software was recorded as an unplanned change.

Synchronization between incident and problem records
Change in a Problem record impacts related Incident records. Notification is sent to the user for
each such update.
When you activate the Problem Management Best Practice — Madrid
(com.snc.best_practice.problem.madrid) and the Problem Management Best Practice — Madrid
— State Model (com.snc.best_practice.problem.madrid.state_model) plugin, the changes in a
Problem record impact incidents that are associated to that Problem.
Impact on incident records
Plugin

Incident state

Problem state

Action on Problem

Problem
Management
Best Practice —
Madrid plugin

Any incident
state other than
resolved, closed,
or canceled.

Any

Click the
Communicate
workaround
related link

com.snc.be
st_practic
e.problem.
madrid

Action on Incident

• The
workaround
is copied to
the Work
notes field. A
notification
is sent to the
users listed in
the Assigned
to and Work
notes list
fields. The

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2881


<!-- page 2882 -->
Impact on incident records (continued)
Plugin

Incident state

Problem state

Action on Problem

Action on Incident

notification is
sent only when
the incident
state is New,
On Hold, or In
Progress.
• The
workaround
is copied to
the Additional
Comments
field. If Known
error is
selected from
the Resolution
code field of
the incident,
then a
notification
is sent to the
caller and
to the users
listed in the
Assigned to
and Watch list
fields.
Problem
Management
Best Practice —
Madrid plugin

Any incident
state other than
resolved, closed,
or canceled.

Any

Click the
Communicate
Fix related link

com.snc.be
st_practic
e.problem.
madrid

Problem
Management
Best Practice —
Madrid — State
Model plugin
com.snc.be
st_practic
e.problem.

• The fix is
copied to
the Work
Notes field of
the incident
record.
• A notification
is sent to the
users listed in
the Assigned
to and Work
notes list fields
of the incident
record.

On Hold and
On hold reason
is Awaiting
Problem

Problem state
is Closed or
Resolved and
the problem
Resolution code
is Fix Applied

NA

• The Resolution
notes on the
incident form
displays the
message
Related
problem
INCxxxx

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2882


<!-- page 2883 -->
Impact on incident records (continued)
Plugin

Incident state

Problem state

Action on Problem

madrid.sta
te_model

Action on Incident

closed.
Please see
additional
comments
for fix
notes , where
INCxxxx is
the incident
number from
which the
problem was
created.
• The incident
state is
changed to
Resolved.
• The Resolution
code is
changed to
Resolved by
problem.
• An email
notification
is sent to the
caller and the
user who is
assigned to the
Incident.

Problem
Management
Best Practice —
Madrid — State
Model plugin
com.snc.be
st_practic
e.problem.
madrid.sta
te_model

On Hold and
On hold reason
is Awaiting
Problem

Problem state
is Closed or
Resolved and
the problem
Resolution code
is Risk Accepted

NA

• The
information
from the Risk
accepted
reason field on
the Problem
form is copied
to the Work
notes field on
the Incident
form.
• An email
notification
is sent to the
user who is
assigned to the
Incident.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2883


<!-- page 2884 -->
Working with contextual search
Contextual search display results on forms and record producers based on the text that you
provide in a field.

Note: Contextual Search is available for problems in instances starting with the Madrid
release. Existing users can request to activate the Problem Management Best Practice —
Madrid plugin (com.snc.best_practice.problem.madrid).
You can:
• Find articles using the Related Search field. The articles can be based on any category that
you select from the choice list.
• Use the choice list next to the Related Search field to select the category such as Knowledge
(All), Pinned Articles, Incidents, Open Problems, and Resolved Problems.
• Attach the article in the Notes > Work notes if your search result displays knowledge articles.
Related topics
Contextual search overview

Legacy: Problem Management Platform Analytics Solutions
Platform Analytics Solutions and in-form analytics contain preconfigured dashboards. These
dashboards contain actionable data visualizations that help you improve your business
processes and practices.
Platform Analytics data visualizations use Performance Analytics indicator data to show you data
over time, helping you analyze your business processes and identify areas of improvement. With
Platform Analytics Solutions, you can get value from Performance Analytics for your application
with minimal setup. You can always create your own objects as well.
To enable the solution for Problem Management, an admin can navigate to Performance
Analytics > Guided Setup. Click Get Started then scroll to the section for Problem Management.
The guided setup takes you through the entire setup and configuration process.
Several of the dashboards in this content pack are inactive when installed. Complete
configuration and run data collection jobs before you activate these dashboards. You can
activate dashboards in Dashboard Properties, accessible from the context menu. You have to
assign an owner to the dashboard to activate it.

Inactive dashboards
Some dashboards in this content pack are inactive when installed. Complete configuration and
run data collection jobs before you activate these dashboards. You can activate dashboards in
Dashboard Properties, accessible from the context menu. You have to assign an owner to the
dashboard to activate it.
Related topics
Activate your Performance Analytics subscription
Legacy: Problem Overview dashboard
This dashboard shows the current state of open problems.

Important:
Starting in Xanadu release, the Problem overview dashboard is deprecated. Users can use
Problem dashboard to view, and track the open problems.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2884


<!-- page 2885 -->
End user and roles
End user and goal

Required role

Problem manager and Problem agent - View
the current number of critical, overdue, and
unassigned problems to identify immediate
action areas.

None

Data visualizations
Title

Type

Description

Critical open problems

Single Score

All open problems where
Priority is 1 - Critical. This
report tells you at a glance
how many top priority
problems there are.

Unassigned problems

Single Score

All open problems where
'Assigned to' is empty. These
are the problems you have to
assign.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2885


<!-- page 2886 -->
Title

Type

Description

Overdue problems

Single Score

All open problems where
Escalation = Overdue

Open problems

Single Score

All open problems

Problems not updated for 7
days

Single Score

Open problems where the
value in the Updated field is
more than 7 days ago

Open problems older than 30
days

Single Score

Open problems where the
value in the Created field is
more than 30 days ago

Open problems - Grouped

Horizontal Bar

Open problems grouped by
Priority

Open problems older than 30
days - Grouped

Horizontal Bar

Open problems where the
value in the Created field
is more than 30 days ago,
grouped by Priority

Problems by Priority and State Heatmap

Open Problems grouped on a
matrix of Priority and State

Open problems older than 30
days by Priority and State

Heatmap

Open problems where the
value in the Created field
is more than 30 days ago,
grouped on a matrix of Priority
and State

Problems Opened per Week

Line

Count of all problems opened
this year, trending by Opened
per Week

Problems Closed per Week

Line

Count of all problems closed
this year, trending by Closed
per Week

Legacy: Problem Management dashboard
Use this dashboard to gain a high-level view across the problem management process, from
opening to closing.

Important:
Starting in Xanadu release, the Problem management dashboard is deprecated. Users can
use Problem dashboard to view, and track the open problems.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2886


<!-- page 2887 -->
Problem Overview tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2887


<!-- page 2888 -->
Problem Open tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2888


<!-- page 2889 -->
Problem New tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2889


<!-- page 2890 -->
Problem Closed tab

End user and roles
End user and goal

Required role

Problem manager

pa_viewer needed to view the Basic Indicators
list

Indicators
Number of open problems
Problems on the Problem [problem] table created on or before today and with no
Closed date. This indicator is used in several other indicators on the dashboard.
Number of new problems
Problems on the Problem [problem] table created today. This indicator is used in
several other indicators on the dashboard.
Number of closed problems
Problems on the Problem [problem] table closed today. This indicator is used in
several other indicators on the dashboard.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2890


<!-- page 2891 -->
Problem backlog growth
The score for this indicator is calculated according to the formula [[Number of new
problems]] - [[Number of closed problems]].
Average age of open problems
The score for this indicator is calculated according to the formula [[Summed age of
open problems]] / [[Number of open problems]] / 24
% of new critical problems
The score for this indicator is calculated according to the formula ( [[Number of new
problems > Priority = 1 - Critical]] / [[Number of new problems]] ) * 100
Average close time of problems
The score for this indicator is calculated according to the formula [[Summed
duration of closed problems]] / [[Number of closed problems]] / 24
The following indicators are not shown directly on the dashboard but are used in calculating
formulas:
• Summed age of open problems
• Summed duration of closed problems

Breakdowns
Priority.
Legacy: Problem Premium dashboard
This dashboard uses advanced features such as interactive filters and workbench widgets to
provide a broad view of problem reports, both current and over time.

Important:
Starting in Xanadu release, the Problem premium dashboard is deprecated. Users can use
Problem dashboard to view, and track the open problems.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2891


<!-- page 2892 -->
Process by Age tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2892


<!-- page 2893 -->
Overview tab

Note: The Overview tab has the same contents as the Problem Overview dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2893


<!-- page 2894 -->
Data Quality tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2894


<!-- page 2895 -->
Process KPIs tab

End user and roles
End user and goal

Required role

All roles concerned with Problem
Management

itil to see the list of Problem records

Indicators
Number of open problems
Problems on the Problem [problem] table created on or before today and with no
Closed date. This indicator is used in several other indicators on the dashboard.
Number of closed problems
Problems on the Problem [problem] table closed today. This indicator is used in
several other indicators on the dashboard.
Average age of open problems
The score for this indicator is calculated according to the formula [[Summed age of
open problems]] / [[Number of open problems]] / 24
Average re-assignment of open problems
The average number of times an open problem gets reassigned. The score for this
indicator is calculated according to the formula [[Summed re-assignment of open
problems]] / [[Number of open problems]].
Average age of updated since of open problems

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2895


<!-- page 2896 -->
The average time in days since the last update of an open problem. The score for
this indicator is calculated according to the formula [[Summed age of updated since
of open problems]] / [[Number of open problems]] / 24.
% of new critical problems
The score for this indicator is calculated according to the formula ( [[Number of new
problems > Priority = 1 - Critical]] / [[Number of new problems]] ) * 100
Average close time of problems
The score for this indicator is calculated according to the formula [[Summed
duration of closed problems]] / [[Number of closed problems]] / 24
% of problems reassigned at least once
The score for this indicator is calculated according to the formula ( [[Number of
reassigned open problems]] / [[Number of open problems]] * 100 ).
% of problems closed on first assignment
The score for this indicator is calculated according to the formula ( [[Number of
problems closed on first assignment]] / [[Number of closed problems]] * 100 ).
Average reassignment count of closed problems
The average value of the Reassignment Count field on closed problems, where
Reassignment Count is not empty.
% of open problems classified as known error
The score for this indicator is calculated according to the formula ( [[Number of
open problems classified as known error]] / [[Number of open problems]] ) * 100.
% of closed problems without any close notes
The score for this indicator is calculated according to the formula ( [[Number of
closed problems without close notes]] / [[Number of closed problems]] ) * 100.
% of open problems with at least one incident
The score for this indicator is calculated according to the formula ( [[Number of
open problems with at least one incident]] / [[Number of open problems]] ) * 100.
The following indicators are not shown directly on the dashboard but are used in calculating
formulas:
• Summed age of open problems
• Summed age of updated since of open problems
• Summed duration of closed problems
• Summed re-assignment of open problems
• Number of reassigned open problems
• Number of problems closed on first assignment
• Number of open problems classified as known error
• Number of closed problems without close notes
• Number of open problems with at least one incident

Breakdowns
• Age
• Priority
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2896


<!-- page 2897 -->
• State
• Assignment Group

Data visualizations
Title

Type

Description

Critical open problems

Single Score

All open problems where
Priority is 1 - Critical. This
report tells you at a glance
how many top priority
problems there are.

Unassigned problems

Single Score

All open problems where
'Assigned to' is empty. These
are the problems you have to
assign.

Overdue problems

Single Score

All open problems where
Escalation = Overdue

Open problems

Single Score

All open problems

Problems not updated for 7
days

Single Score

Open problems where the
value in the Updated field is
more than 7 days ago

Open problems older than 30
days

Single Score

Open problems where the
value in the Created field is
more than 30 days ago

Open problems - Grouped

Horizontal Bar

Open problems grouped by
Priority

Open problems older than 30
days - Grouped

Horizontal Bar

Open problems where the
value in the Created field
is more than 30 days ago,
grouped by Priority

Problems by Priority and State Heatmap

Open Problems grouped on a
matrix of Priority and State

Open problems older than 30
days by Priority and State

Heatmap

Open problems where the
value in the Created field
is more than 30 days ago,
grouped on a matrix of Priority
and State

Open problems not updated
in last 30 days by assignment
group

Heatmap

Open problems where the
value in the Updated field
is more than 30 days ago,
grouped on a matrix of State
and Assignment Group

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2897


<!-- page 2898 -->
Title

Type

Description

Problems Opened per Week

Line

Count of all problems opened
this year, trending by Opened
per Week

Problems Closed per Week

Line

Count of all problems closed
this year, trending by Closed
per Week

Open Problems Where
Assignee Is Not Active

Heatmap

Open problems where the
value of Assigned to Active is
false, grouped on a matrix of
State and Assignment Group

Problems Pending a Change
Request that is Already
Closed

Heatmap

Open problems where the
Change request has a State
value of 3, meaning the
request is closed, grouped
on a matrix of State and
Assignment Group

Legacy: Problem daily 7d - 28d dashboard
Track the progress made by different assignment groups in resolving problems in the daily,
weekly, and monthly time frames.

Important:
Starting in Xanadu release, the Problem daily 7d - 28d dashboard is deprecated. Users can
use Problem dashboard to view, and track the open problems.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2898


<!-- page 2899 -->
Problem daily tab

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2899


<!-- page 2900 -->
Problem 7d tab (same widgets on Problem 28d)

End user and roles
End user and goal

Required role

Problem manager - Track the progress of their
groups in managing problems across daily,
weekly, and monthly time frames

None

Problem agent - Track the progress of
incidents they own across daily, weekly, and
monthly timeframes

None

Indicators
In the 7 day and 28 day tabs, the widgets apply seven day and 28 day time series aggregations
to the indicators.
Number of open problems
Problems on the Problem [problem] table created on or before today and with no
Closed date. This indicator is used in several other indicators on the dashboard.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2900


<!-- page 2901 -->
Number of closed problems
Problems on the Problem [problem] table closed today. This indicator is used in
several other indicators on the dashboard.
Average age of open problems
The score for this indicator is calculated according to the formula [[Summed age of
open problems]] / [[Number of open problems]] / 24
Number of open problems not updated in last 30 days
The number of open problems with the value of the Updated field more than 30
days ago.
Number of open problems not updated in last 90 days
The number of open problems with the value of the Updated field more than 90
days ago.
Average close time of problems
The score for this indicator is calculated according to the formula [[Summed
duration of closed problems]] / [[Number of closed problems]] / 24
The following indicators are not shown directly on the dashboard but are used in calculating
formulas:
• Summed age of open problems
• Summed duration of closed problems

Breakdowns
You can apply breakdown elements on this dashboard to all widgets simultaneously. Only
Assignment Group elements are available. Select one or more assignment groups from the
Select elements list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2901


<!-- page 2902 -->
Legacy: Open Problem Age Monitor dashboard
Use this dashboard to track the progress of open problems across different age buckets. You can
break down the problems by priority or assignment group.

Important:
Starting in Xanadu release, the Problem age dashboard is deprecated. Users can use
Problem dashboard to view, and track the open problems.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2902


<!-- page 2903 -->
End user and roles
End user and goal

Required role

Problem manager - Track how their groups are
managing long-standing problems

itil to read records, otherwise none

Problem agent - Track long-standing problems
that they own

itil to read records, otherwise none

Indicators
Number of open problems
Problems on the Problem [problem] table created on or before today and with no
Closed date. This indicator is used in several other indicators on the dashboard.
Average age of open problems
The score for this indicator is calculated according to the formula [[Summed age of
open problems]] / [[Number of open problems]] / 24
Average re-assignment of open problems
The average number of times an open problem gets reassigned. The score for this
indicator is calculated according to the formula [[Summed re-assignment of open
problems]] / [[Number of open problems]].
Average age of updated since of open problems

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2903


