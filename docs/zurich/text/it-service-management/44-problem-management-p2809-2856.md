# Zurich IT Service Management — Problem Management

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 2809–2856 of 3857

Sections: Problem Management (p2809); Explore (p2809); Configure (p2815); Manage (p2845)

---

<!-- page 2809 -->
Problem Management
®

The ServiceNow Problem Management application helps you identify the cause of errors in the
IT infrastructure that are reported as occurrences of related incidents.

Get started

Explore

Configure

Manage

Learn about Problem
Management
concepts and features.

Configure environment,
tools, and user access.

Create and
manage problems.

Communicate

Analytics and
Reporting Solutions

Reference

Use Problem Management
to communicate the
outcome of the problem.

Take advantage of
dashboards to visualize
data over time, analyze
your business processes,
and identify areas
for improvement.

Get details about Problem
Management properties
and various form fields.

Troubleshoot and get help
• Visit the ServiceNow Community: https://community.servicenow.com/community/it-servicemanagement/content?filterID=contentstatus%5Bpublished%5D%7Ecategory%5Bproblemmanagement%5D
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Problem Management
Problem Management supports the ITIL process used to find and fix the root cause of issues
that result in incidents. You can record problems, associate incidents, and assign them to the
appropriate groups. You can document and communicate known errors and initiate actions to
resolve the situation.
Problem Management is responsible for managing the life cycle of all problems and preventing
problems and resulting incidents from happening. It also aims to eliminate recurring incidents
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2809


<!-- page 2810 -->
and minimize the impact of incidents that can’t be prevented. Resolving a problem includes the
activities required to diagnose the root cause of incidents and determine the resolution for the
problem. Problem resolution and elimination of the root cause often calls for applying a change
to the configuration item in the existing IT environment.
Problem Management also maintains information about problems and the appropriate
workarounds and resolutions, enabling an organization to reduce the number and impact of
incidents over time. Problem Management interfaces with Knowledge Management, which is
used to document known error articles thoroughly for future reference.

Problem Management workflow
The Problem Management workflow includes the following:
1. Problem Creation: You can create a problem to identify and permanently fix the underlying root
cause when:
◦ You've resolved a major incident.
◦ You have recurring incidents.
2. Assign the problem: You can now assign the problem to be assessed.
3. Assess the problem: You can now assess the problem:
◦ Find and relate any additional incidents that the problem represents.
◦ If the problem was created from an incident, it has inherited fields from the incident that may
not provide a specific description of the issue. In this case, update the Problem Statement
and other fields to specifically describe this issue to help the team performing the root cause
analysis during the later stages.
◦ Do any of the following:
▪ Confirm that you plan to work on this problem. This confirmation moves the problem to the
Root Cause Analysis state.
▪ Mark this problem as a duplicate of an existing problem to close the problem.
▪ Cancel this problem if it's not a valid problem. Canceling it closes the problem.
4. Analyze the root cause of the problem:
◦ If you're the subject matter expert, analyze the problem to uncover the root cause and
identify a fix.
◦ If you're not the subject matter expert, create a Root Cause Analysis Problem task to assign
to the relevant team. Coordinate with that team as they analyze and uncover the root cause
and fix.
◦ If there's no permanent fix for the problem, or you don't have the sufficient budget to fix the
problem at this time, accept the risk that it can't be fixed at this time. The problem enters the
Closed state. It's a good idea to review risk-accepted problems periodically.
5. Communicate the outcome of the problem:
◦ After you identify the fix or workaround of the problem, update the workaround or fix for the
problem. Communicate updates to the related incidents.
◦ If the problem is a known error, create a known error article that is primarily available to help
others find information and deflect additional incidents. The known error article can also be
referred to by agents who are facing similar problems and incidents.
6. Fix the underlying root cause if possible. If you can fix the root cause, create a change request
and assign it to the relevant team. When the change request is completed, resolve the
problem. If no new incidents come in, close the problem.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2810


<!-- page 2811 -->
7. Reanalyze the problem if it resurfaces. If you're the problem manager and you're not satisfied
with the analysis after resolving or closing the problem, or the problem resurfaces, you can
decide to reanalyze the problem. The problem is reopened and the state is changed to Root
Cause Analysis.

Problem Management benefits
Benefit

Feature

Users

Create a problem to identify the root cause of
the incident.

Create a problem

Agent and Problem
write users

Add multiple incidents to a problem to avoid
creating multiple problems for incidents that
have the same issue.

Add multiple incidents Agent
to a problem

Create a problem task to initiate the root cause Create a problem task Agent, Problem write
analysis.
users, and Problem
task analyst
Document and communicate a workaround to Communicate
restore service failures and lessen the impact workaround for
of a problem that an actual resolution is not yet Problem
available.

Problem Coordinator

Create known error articles as reference
material.

Create a known error
article

Problem Coordinator

Implement a resolution to a problem by
applying a standard change procedure and
testing it to confirm service recovery.

Create change
request from a
problem

Problem Coordinator

Resolve the issue and add detailed notes for
the resolution for future reference.

Resolve and complete Problem Coordinator
a problem

Problem Management process
Within the platform, problems are handled using the task record system. Each problem
is generated as a task record through various means, and is populated with the pertinent
information. These tasks are assigned to Problem Management team members to resolve and
then close.

Identify and log problems
A problem can be created in several ways. For detailed information, refer Create a problem.
Associating a problem with a configuration item using CMDB helps the Problem Management
team see the affected items and its relationship to other configuration items.
A problem can be associated with one or more incidents in the Incidents related list. The
association is automatic if the problem is generated from an incident. Associating incidents
provides the Problem Management team with access to the information gathered during incident
investigation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2811


<!-- page 2812 -->
Investigate and update problems
If the Problem Management team has a problem model process for dealing with certain
problems, they can be added to the system with workflows
. Workflows standardize and
automate a process.
As a problem is updated, email notifications
are sent to concerned parties. If inbound email
actions are specified, the problem can be updated via email.
You can use the other active tasks icon next to Configuration item to look up active problem
records. When you click the icon, it shows all active tasks linked to that configuration item.
The platform provides escalations rules to ensure that problems are handled promptly. Two types
of escalation rules are available in the system.
• Service level agreements: SLAs can be used to ensure that problems are highlighted. As
investigating and fixing a problem could be a long-term effort, it is not recommended that
you apply SLAs to an overall problem. SLAs are also used as a performance indicator for the
Problem Management team.
• Inactivity monitors
: The inactivity monitors prevent problems from being overlooked by
generating an event. When a problem has not been updated within a certain amount of time,
the event can create an email notification or trigger a script.

Resolve problems
If a problem needs a change request to be resolved, it is possible to request a change that goes
through the change management process. After requesting a change, the problem appears on a
related list on the Change Request form.

Note: For Madrid Best Practices: The problem coordinator, whom the Problem is assigned
to, is notified when all related change requests are completed or canceled.
The following information applies for London and prior releases:
• A business rule (SNC-ITIL-Close-related) automates the process of closing problems
in Pending Change state when the change request is closed. If the problem is closed, another
business rule (SNC - ITIL - Resolve Related Incidents) automatically sets the
State to Resolved for all incidents associated with that problem whose State was On Hold and
On hold reason was Awaiting Problem.
• If the cause of a problem has been determined but there is no permanent fix, change the
problem state to Known Error to communicate this fact. IT agents can click the Known Errors
module and look for the issue they are investigating to reduce time spent on a similar issue.
To communicate information related to a problem, you can open the problem and describe a
workaround, create a knowledge base article, or create a news item.
Life cycle of a problem
Problem Management is responsible for managing the life cycle of underlying problems. State
transition of a problem guides you through the stages of a problem life cycle, from creation to
closure.
Problem Management has one single goal: Identifying and resolving the underlying issues
that cause Incidents. Problem Management is a systematic, methodical process where time to
resolution is less important than identifying and resolving the root cause.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2812


<!-- page 2813 -->
Note: The state-based information is available only in new instances starting from the
Madrid release. Activate the Problem Management Best Practice — Madrid — State Model
(com.snc.best_practice.problem.madrid.state_model) plugin. Existing users (London and
prior releases) cannot activate this plugin.
The Problem Management process has many states, and each is vitally important to the success
of the process and the quality of service delivered. The different states can be represented in a
diagram as follows:
Problem Management state transitions

Note:
You can use Problem Management models to tailor processes for specific use cases. For
more information, see Problem Management models.
Life cycle of a problem task
A problem task is the smallest unit of work that you should perform to complete a problem. State
transition of a problem task guides you through the stages of a problem task life cycle, from
creation to closure.
If a problem coordinator requires help to resolve a problem, the coordinator can create and
assign problem tasks to assignment groups or users to complete those activities.

Note: The state-based information is available only in new instances starting from the
Madrid release. Activate the Problem Management Best Practice — Madrid — State Model
(com.snc.best_practice.problem.madrid.state_model) plugin. Existing users cannot activate
the plugin.
By default, you can create the following types of tasks:
• Root Cause Analysis: When you need to investigate the root cause and the resolution for a
problem
• General: For any other task

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2813


<!-- page 2814 -->
Problem task state transitions

Note:
You can use Problem Management models to tailor processes for specific use cases. For
more information, see Problem Management models.

Problem Management models
You can use Problem Management models to tailor processes for specific use cases.
Problem Management models enable you to define:
• States for specific use cases
• State transitions
• State transition conditions
The following default models are provided to replicate the non-model versions included as part
of the base problem life cycle.

Note: The base problem life cycle is included with the Problem Management Best
Practice - Madrid - State Model (com.snc.best_practice.problem.madrid.state_model)
plugin. Use the Problem Management Migration Utility store application
to enable this
plugin and migrate your records to the base problem life cycle.
Problem model
Model

Description

General

Problem process equivalent to the non-model
base problem life cycle.

Problem task models
Model

Description

Root cause analysis

Task process equivalent to the non-model
base problem life cycle.

General

Task process equivalent to the non-model
base problem life cycle.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2814


<!-- page 2815 -->
Creating Problem Management models
You can create custom models for problems and problem tasks to extend their default models
without compromising on existing capabilities. Test Problem Management models in a nonproduction instance first. If you have changed the base problem life cycle or life cycle actions,
you must make the equivalent changes to your custom models.
To begin working with custom models, see the following topics:
• Create a problem model
• Create a problem task model
• Enable Problem Management models (Required only for customers upgrading to Yokohama.)

Note: Any problems or problem tasks that were created before you enable Problem
Management models will continue to use the non-model life cycle.

Considerations for Problem Management models and Service Operations
Workspace
The com.snc.problem_management.models.enabled system property is enabled by
default for new customers starting from the Yokohama release.
Upgrade customers must enable the

com.snc.problem_management.models.enabled system property introduced in the
Xanadu release.
Before disabling Problem Management models, you must apply any additional features you have
added through custom Problem Management models to your non-model life cycle.
Service Operations Workspace 6.x is based on the Xanadu release and it supports Problem
Management models.
Service Operations Workspace 5.x is based on the Washington DC release and it doesn't
support Problem Management models.
If you are using Service Operations Workspace 5.x and you enable Problem Management
models, you will manage problems and problem tasks in the classic UI16 experience, rather than
in Service Operations Workspace.

Configuring Problem Management
Create or redesign problem form layouts to align them with the business process workflow
of your organization. Categorize problems for monitoring and reporting. Use data lookup
and assignment rules to automatically assign a task to a user or group based on predefined
conditions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2815


<!-- page 2816 -->
Note:
• Use data lookup and assignment rules to automatically assign a task to a user or group
based on predefined conditions. For more information, see Data lookup for prioritizing
problems.
• Configure the Problem Management properties to control features such as creating a
problem task on a closed problem and reanalyzing a closed or canceled problem. For
more information, see Problem management properties.
• Use quick start tests to check if the Problem Management application still works after
you make any configuration change such as applying an upgrade or developing an
application. For more information, see Quick start tests for Problem Management.

Migration Utility
®

The Problem Management Migration Utility, available in the ServiceNow Store, is a guided setup
application that helps you upgrade to adopt the base version of Problem Management using the
guided problem life cycle.

Important:
• You only need to use the migration utility if you started using ServiceNow before the
Madrid release and you want to adopt the guided problem life cycle, as that was included
for new customers starting from Madrid.
• If you run into issues or need additional help with resolving your modifications, contact
your ServiceNow Account Representative or ServiceNow Solution Consultant. You might
need help from ServiceNow Customer Outcomes or a partner.
The migration utility consists of several guided activities:
Introduction
Describes the purpose of the Problem Management Best Practice State Model
plugin and the migration utility. This activity also confirms that you have practiced
or are practicing on a sub-production instance that is a clone of the production
instance.
Preparation
Helps you prepare for your migration, including optional scenarios if you want to
remove all of your existing problem and problem task records.
Migrate
Guides you through the Migration job.
Clean-up
The guided setup activity guides you through the manual clean-up activities after
you have completed the main migration.
Introducing activities for migration
The Introduction activity helps you to understand the purpose of the migration utility.
The activity helps you understand the Problem Management Best Practice State Model plugin
and the new problem and task states. This activity also confirms that you have practiced or are
practicing on a sub-production instance that is a clone of the production instance.
Preparing for migration
You can prepare your instance for migration before you start the migration activity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2816


<!-- page 2817 -->
Before you start the migration activity, if you want to optionally remove all of your problem records
or all of your problem task records, take a backup of the records first before you remove them.
Migration job
Get your instance ready for the Problem Management Best Practice — Madrid — State Model
plugin (com.snc.best_practice.problem.madrid.state_model) and so you can update your existing
records with the new states.
The stages to get your instance ready for the problem state model and to migrate your records
are:
1. Resolve blocking modifications
2. Review warning modifications
3. Map problem states
4. Map problem task states
5. Activate Problem Management Best Practice — Madrid — State Model
6. Prepare base plugins
7. Restore base plugins
8. Resolve blocking and warning modifications
9. Migrate active records
10. Migrate inactive records
Resolve blocking modifications
Blocking modifications that are detected in your instance are not compatible with the problem
state model and you must resolve them before you activate the Problem Management Best
Practice — Madrid — State Model plugin.

Before you begin

Role required: admin

Procedure
1. Review and resolve all blocking modifications.
For more information about modifications that block the problem state model plugin from being
activated, see the KB0819060
article in the HI Knowledge Base.
2. Click Run Checks.

What to do next

Review warning modifications.
Review warning modifications
Warning modifications do not block the Problem Management Best Practice — Madrid — State
Model plugin from being activated.

Before you begin

Role required: admin

About this task

For more information about warning and informational modifications and how to resolve
them, see the Problem Management Migration Utility - How to resolve detected modifications
[KB0819196]
article in the HI Knowledge Base.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2817


<!-- page 2818 -->
Procedure
1. Review and resolve all warning modifications.
Warning modifications, though initially are not blocking, can become blocking when you
activate the problem state model plugin. You must resolve them before you can migrate your
records.
2. View informational modifications.
Informational modifications provide information about only the changes that you have made
that do not impact the migration.
3. If you resolved any warnings, click Run Checks.
4. Click Next.

What to do next

Map problem states.
Map problem states
Define how problem records are updated when you migrate the records.

Before you begin

Role required: admin

Procedure
1. Provide information for all the mandatory fields at this stage.
The required field values are used when you apply new states to the existing problem records.

Note:
◦ The Assigned to field is used when the new state is beyond 101 - New and the problem
is not already assigned to a user.
◦ If you have activated the problem state model plugin, the Assigned to field is filtered to
users with the problem_coordinator, problem_manager or problem_admin role.
◦ The ${current.state} variable is replaced with the current state value and label.
2. Map all current problem states to the new states.
The following table provides an example of state mapping for the base system version of the
problem records:
Mapping of the current states to the new states
Current state

New state

1 - Open

101 - New

2 - Known Error

107 - Closed as Risk Accepted

3 - Pending Change

104 - Fix in Progress

4 - Closed/Resolved

107 - Closed as Fix Applied

3. Click Detect Unmapped States to verify whether any state is not mapped.
If any state is not mapped, you must provide a mapping.

What to do next

Map problem task states.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2818


<!-- page 2819 -->
Map problem task states
Define how problem task records are updated when you migrate the records.

Before you begin

Role required: admin

Procedure
1. Provide the information for the mandatory fields at this stage.
The mandatory field values are used when you apply new states to the existing problem task
records.

Note:
◦ The Assigned to field is used when the new state is beyond 151 - New and the problem
task is not already assigned to a user.
◦ If you have activated the problem state model plugin, you can assign only users with
the problem_task_analyst, problem_coordinator, problem_manager or problem_admin
role.
◦ The ${current.state} variable is replaced with the current state value and label.
2. Map all current problem task states to the new states.
The following table provides an example of state mapping for the base system version of the
problem task records:
Mapping of the current states to the new states
Current state

New state

-5 - Pending

151 - New

1 - Open

151 - New

2 - Work in Progress

154 - Work in Progress

3 - Closed Complete

157 - Closed as Complete

4 - Closed Incomplete

157 - Closed as Canceled

7 - Closed Skipped

157 - Closed as Canceled

3. Click Detect Unmapped States to verify whether any state is not mapped.
If any state is not mapped, you must provide a mapping.

What to do next

Activate Problem Management Best Practice — Madrid — State Model.
Activate Problem Management Best Practice — Madrid — State Model
You can activate the Problem Management Best Practice — Madrid — State Model plugin
(com.snc.best_practice.problem.madrid.state_model) on your instance using the Problem
Management Migration Utility store app.

Before you begin

Before you activate the plugin, be sure to resolve blocking modifications. For more information,
see Resolve blocking modifications.
Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2819


<!-- page 2820 -->
About this task

An administrator must activate the Problem Management Best Practice — Madrid — State
Model plugin (com.snc.best_practice.problem.madrid.state_model) (first introduced in the
Madrid release) through the Migration Utility because the plugin includes features that are not
compatible with the previous version of Problem Management.
New York Patch 9 or Orlando Patch 3 or later are required before the administrator can see and
activate the problem state model plugin on an instance. If you do not have the required patch,
you have to request the plugin as it is a development plugin.

Procedure
1. Activate the plugin.
If you have the required patch level, you have access to the plugin and can activate it. If you do
not have the patch level, you must request it.
Option

Description

a. Click Request Plugin in the plugin activa­
tion stage of the migration utility migration
job.
Activate the plugin (required patch level is
installed)

b. On the System Plugin page, click the Acti­
vate/Repair related link.
c. Click Activate.
d. Close and reload the form.
The plugin status changes to Activated.
You can return to the Migration Utility and
continue with the migration.
a. Click Request Plugin in the plugin activa­
tion stage of the migration utility migration
job.
b. On the
page, provide the required details.
▪ Target instance: Instance on which to re­
quest the plugin

Request the plugin

▪ Plugin Name: com.snc.best_prac­
tice.problem.madrid.state_­
model
▪ Reason/Comments: Request from
the Problem Management Migra­
tion Utility
▪ Select Maintenance Start Time: Select
your preferred start time
c. Click Submit.
d. Once the plugin is activated, return to the
Migration Utility and continue with the mi­
gration.

2. Continue with the migration process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2820


<!-- page 2821 -->
What to do next

Prepare base plugins.
Prepare base plugins
Prepare to restore the base functionality that is required for the problem state model you have
modified.

Before you begin

Role required: admin

About this task

Note: You cannot move back to any earlier stage because in the previous stage you
activated the Problem Management Best Practice — Madrid — State Model plugin
(com.snc.best_practice.problem.madrid.state_model) on this instance and the old states
are invalid.

Procedure
1. Resolve blocking modifications.
a. For each blocking modification, click View Modification.
b. Select the Replace on upgrade check box.

Note: If this option is not available, add the Replace on update field to the form using
Configure > Form Layout.
c. Click Update.
d. Click Back.
2. Click Run Checks.

What to do next

Restore base plugins.
Restore base plugins
Repair the plugins in the specified order to restore the base functionality that is required for the
problem state model.

Before you begin

Role required: admin

About this task

New York Patch 9, or Orlando Patch 3 or later are required before you can see and repair
the Problem Management Best Practice – Jakarta (com.snc.best_practice.problem.jakarta)
and Problem Management Best Practice — Madrid — State Model
(com.snc.best_practice.problem.madrid.state_model) plugins. Before the mentioned patches,
these plugins were development plugins.

Note: If you do not have the required patch, refer to Blocking modifications for required
base functionality in the KB0819196

article in the HI Knowledge Base.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2821


<!-- page 2822 -->
Procedure
1. Repair the plugins, one at a time.
a. Repair the plugin or apply the update set as required.

Note: Certain plugins contain functionality for applications including Problem
Management. For those plugins, refer to the specified knowledge article to restore the
required problem functionality instead of repairing the plugin.
b. Return to the migration job and mark that plugin as repaired.
2. Click Run Checks.

What to do next

Resolve blocking and warning modifications.
Resolve blocking and warning modifications
Resolve any blocking modifications and resolve or verify any warning modifications that are
detected on your instance.

Before you begin

Role required: admin

About this task

For more information about blocking, warning, and informational modifications and how
to resolve them, see the Problem Management Migration Utility - How to resolve detected
modifications [KB0819196]
article in the HI Knowledge Base.

Procedure
1. Review and resolve all blocking modifications.
2. Review and resolve or verify warning modifications.
3. Optional: View informational modifications.
4. Click Run Checks after you have resolved all blocking modifications and you have either
resolved or verified the warning modifications.

What to do next

Migrate active records.
Migrate active records
Migrate active records to apply the new mappings to your active problem and problem task
records.

Before you begin

Role required: admin

Procedure
Click Migrate Active Records.
If there are no active records to migrate, the migration job moves to the migrate inactive records
stage.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2822


<!-- page 2823 -->
Note: Even if you close the migration window or navigate away from the migration job, the
migration of records continues. If you click Migrate Active Records, the migration window
displays the current progress.
If any record fails to migrate, it is listed in one of the related lists:
• Failed Active Problem Updates
• Failed Active Problem Task Updates
Verify the reason for their failure, resolve it, and migrate the records again.

What to do next

Migrate inactive records.
Migrate inactive records
Migrate inactive records to apply the new mappings to all the remaining problem and problem
task records.

Before you begin

Role required: admin

Procedure
Click Migrate Inactive Records.
If there are no inactive records to migrate, the migration job moves to the migrated stage.

Note: Even if you close the migration window or navigate away from the migration job, the

migration of records continues. If you click Migrate Inactive Records, the migration window
displays the current progress.
If any record fails to migrate, it is listed in one of the related lists:
• Failed Inactive Problem Updates
• Failed Inactive Problem Task Updates
Verify the reason for their failure, resolve it, and migrate the records again.

What to do next

View the Migrated topic.
Migrated
You have successfully activated the Problem Management Best Practice - Madrid - State Model
plugin and updated your problem and problem task records to the new best practice states.

Before you begin

Role required: admin

Procedure
1. Optional: View the records after migration in the related links.
The records are listed in one of the following related lists:
◦ Problems by State
◦ Problem Tasks by State
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2823


<!-- page 2824 -->
2. Optional: If any record failed to migrate, verify the reason for the failure, resolve it, and migrate
the records again.
The failed records are listed in one of the following related lists:
◦ Failed Active Problem Updates
◦ Failed Active Problem Task Updates
◦ Failed Inactive Problem Updates
◦ Failed Inactive Problem Task Updates
3. Click Finish to return to guided setup to perform the clean-up tasks.
Modifications
A modification is any alteration such as addition, deletion, or update that you carry out on
Problem Management. If you have made significant modifications, you will need to review and
resolve some possible blocking modifications.
For more information on modifications, see the following KB articles:
• For more information about modifications that block the problem state model plugin from being
activated, see the KB0819060
article in the HI Knowledge Base.
• For more information about other types of modification and how to resolve them, see the
Problem Management Migration Utility - How to resolve detected modifications [KB0819196]
article in the HI Knowledge Base.
Activities to clean up after migration
After you complete your main migration, you must do some manual clean-up to make your
instance similar to the base version of problem management.
Manual clean-up involves the following activities:
• Reactivate problem state models
• Remove old module menus
• Remove old filters
• Remove old UI actions
• Remove old business rules
• Remove old UI policies
• Update the dashboard overview
• Reset problem form layouts

Note: You can skip this action if you have not modified your form.
• Search for problems from incidents
• Remove old process fromatters
Update dashboard overview
When you activate the problem state model, you need to update the overview dashboard to use
the new states.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2824


<!-- page 2825 -->
About this task

In the problem overview dashboard, refer to the closed problems by setting Active = false
instead of state = 4.

Note: If you have added your own custom dashboards or charts, you may need to
manually update them as you have migrated to the problem state model.

Procedure
1. If you are prompted with the message To edit this record click here, then click
here.
2. Click the configuration icon (

).

3. Hover your mouse on Problems Closed per Week chart to view and select the Edit Content
menu.
4. Select the filter to open the condition builder and update the condition from Problem state is 4
to Active is false.
5. Click Run.
6. Click Save.
7. Click Back to return to the dashboard.

Problem Management plugins
Many of the Problem Management plugins are activated in the base system. Others, you can
activate when you are ready to use them. Some plugins include demo data.
Activate Problem Management
You can activate the Problem Management plugin (com.snc.problem) if you have the admin role.
This plugin includes demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin

About this task

The Problem Management plugin activates these related plugins if they are not already active.
Plugins for Problem Management
Plugin

Description

Problem Overview Homepage

This plugin delivers content for Problem
Overview home page.

[com.glideapp.report.itsm.problem.overview]

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
3. Select Install to start the installation process.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2825


<!-- page 2826 -->
Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
List of plugins (Zurich)
Components installed with Problem Management
Several types of components are installed with activation of the Problem Management plugin,
including tables.

Tables installed
Table

Description

Problem

The Problem table is extended from the Task [task] table. It inherits all the fields,
rules and policies from task.

[problem]

Activate Problem Management Best Practice — Jakarta
The Problem Management Best Practice - Jakarta plugin introduces lookups (impact, urgency
and priority) for Problem Management.

Before you begin

Role required: admin

About this task

Important: Do not activate this plugin if you have upgraded from a pre-Jakarta release.

If you have modified the base functionality required for the Problem Management Best Practice
— Madrid — State Model plugin (com.snc.best_practice.problem.madrid.state_model), use the
Migration Utility to repair the plugin.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2826


<!-- page 2827 -->
Related topics
List of plugins (Zurich)
Request ITSM Roles — Problem Management
Request the ITSM Roles plugin (com.snc.itsm.roles) to activate the ITSM Roles — Problem
Management plugin (com.snc.itsm.roles.problem_management) to gain more control over the
access that different service desk agents, technicians, and managers have within your Problem
Management process.

Before you begin

Role required: admin

About this task

The ITSM Roles plugin activates several related plugins such as Business
Stakeholder (com.snc_business_stakeholder), ITSM Roles — Incident Management
(com.snc.itsm.roles.incident_management), ITSM Roles — Problem Management
(com.snc.itsm.roles.problem_management), ITSM Roles — Change Management
(com.snc.itsm.roles.change_management), and ITSM Roles — Request Management
(com.snc.service_management.roles.request_management). The related plugins updates the
security model and introduces roles for respective products.
With the introduction of the new roles, ITSM provides more control over the access that users
have within the process.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Select Request plugin to open the Activate Plugin form on Now Support.
3. On the Activate Plugin form, provide the following information.
Activate Plugin form
Field

Description

What is your target instance

Select the instance that you want to activate
the plugin on.

Which plugin would you like to activate

Select the name of the plugin to activate.

Note: If the system doesn't list the
plugin you want or if you're activating
the plugin on an OEM or on-premise
instance, select the Plugin I'm looking
for is not listed check box and then
enter the name of the plugin.

Select Maintenance Date and Time

Select the date and time to activate the
plugin.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2827


<!-- page 2828 -->
Example
For example, see the following form to activate the Event Management plugin on an instance
named SNC Instance.
4. Select Submit.
After the maintenance window, the system installs the plugin on your instance. To confirm the
installation, go to the Installed tab in the Application Manager.
Related topics
List of Zurich plugins
Components installed with ITSM Roles — Problem Management
Several user roles are installed with activation of the ITSM Roles — Problem Management plugin
(com.snc.itsm.roles.problem_management).

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

Roles installed
Role title [name]

Description

Contains roles

Problem read

Read access to the Problem
Management application and related
records.

NA

[sn_problem_read]
Problem write
[sn_problem_write]
[sn_service_desk_agent]

Write access to the Problem
Management application and related
records.
Enables gathering, and verifying
information, as well as delivering
quick resolutions for tier 1 service
desk agents. This user role is
available when the ITSM Roles plugin
(com.snc.itsm.roles) is installed.

• sn_problem_read
• template_editor

• sn_incident_write
• sn_problem_write
• sn_change_write
• sn_request_write
• tracked_file_reader
With the installation
of the ITSM Gen AI
(com.sn.itsm.gen.ai)
plugin, the following roles
are also available:
• knowledge_user
• now_assist_panel_user

Activate Problem Management Best Practice — Madrid
Activate the Problem Management Best Practice — Madrid
(com.snc.best_practice.problem.madrid) plugin if you have the admin role. This plugin includes
demo data and activates related plugins if they are not already active.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2828


<!-- page 2829 -->
Before you begin

Role required: admin

About this task

The Problem Management Best Practice — Madrid plugin identifies the cause of a service
interruption reported by a significant or recurring incidents. The plugin does the following
activities:
• Provides roles for problem management including a problem task analyst, a problem
coordinator, a problem manager, and a problem administrator.
• Provides fields to record the category where the issue was first reported, the workaround, the
cause notes, and the fix notes.
• Searches for and attaches knowledge articles.
• Communicates when a workaround or fix is available.
• Clears the Assigned to field when changing the Assignment Group.

Note: The plugin is activated by default for the new customers. Existing customers need
to request the plugin.

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
Related topics
List of Zurich plugins
Components installed with Problem Management
Several types of components are installed with activation of the Problem Management Best
Practice — Madrid plugin, including user roles.
Demo data is available for this feature.

Roles installed
Role title [name]

Description

Contains roles

Problem Task Analyst

Works on a problem task and manages it
through its life cycle.

None

[problem_task_analyst]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2829


<!-- page 2830 -->
Role title [name]

Description

Contains roles

Problem Co-ordinator

Works on a problem or problem task and
manages it through its life cycle.

problem_task_analyst
and itil

Responsible for the overall problem
management process and can configure
problem management settings as well as act
as a problem coordinator.

problem_ coordinator

Responsible for the overall problem
management process as well as delete
problems and problem tasks.

problem_ manager

[problem_ coordinator]
Problem Manager
[problem_ manager]
Problem Admin
[problem_admin]

Activate Business Stakeholder
Activate the Business Stakeholder plugin (com.snc.business_stakeholder) if you have an admin
role. This plugin installs the Business Stakeholder role. Users with this role can view and approve
records at all ITSM product levels.

Before you begin

Role required: admin

Note: Ensure that ITSM Roles plugin (com.snc.itsm.roles) is activated before you activate
the Business Stakeholder plugin. For more information to activate ITSM Roles plugin, refer
Request ITSM Roles- Change Management.

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
Related topics
List of plugins (Zurich)
Installed with Business Stakeholder
The Business Stakeholder plugin (com.snc.business_stakeholder) installs the Business
Stakeholder role when activated.

Note: The Application Files table lists the components that are installed with this
application. For instructions on how to access this table, see Find components installed
with an application .

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2830


<!-- page 2831 -->
Roles installed
Role title [name]

Description

Contains roles

Business
Stakeholder

Users with this role can view and approve
records within all products of ITSM.

• pa_viewer.business_stakeholder

[business_stakeholder]

Note: The business_stakeholder
role contains the following ITSM
roles: sn_request_comments_write,
sn_incident_comments_write roles.

• approver_user.business_stakeholder
• cmdb_read.business_stakeholder

Activate Problem Management Best Practice — Madrid — State Model
The Problem Management Best Practice — Madrid — State Model plugin
(com.snc.best_practice.problem.madrid.state_model) introduces new best practice states and
guided actions to navigate the life cycle of a problem.

Before you begin

Role required: admin

About this task

The new best practice states are not compatible with the previous version of Problem
Management and require verification before this plugin can be activated. The plugin is activated
by default for the new customers.
Existing customers should use the Migration Utility to verify and migrate to this plugin.

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
Related topics
List of Zurich plugins
Activate Problem Management Best Practice — Madrid — Knowledge Integration
Activate the Problem Management Best Practice — Madrid — Knowledge Integration
(com.snc.best_practice.problem.madrid.knowledge) plugin if you have the admin role. This
plugin includes demo data and activates related plugins if they are not already active.

Before you begin

Role required: admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2831


<!-- page 2832 -->
About this task

The Problem Management Best Practice — Madrid – Knowledge Integration plugin
(com.snc.best_practice.problem.madrid.knowledge) helps you to create known error articles to
help with incident deflection. The plugin helps in the following activities:
• Creating a known error article from a problem.
• Creating a knowledge base for known error articles.

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
Related topics
List of Zurich plugins
Components installed with Problem Management
Several types of components are installed with activation of the Problem Management Best
Practice — Madrid — Knowledge Integration plugin, including tables.
Demo data is available for this feature.

Tables installed
Table

Description

Known Error article

Table to store Known Error articles.

[kb_template_known_error_article]
Activate Problem Management — ATF Tests
You can activate the Problem Management — ATF Tests plugin (com.snc.problem.atf) if you have
the admin role. This plugin includes demo data.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2832


<!-- page 2833 -->
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
List of Zurich plugins

Configure the problem form
Configure the problem form layout to conform to the workflow and the process of your
organization. Add, remove, and customize fields and related lists, create problem categories, and
modify links as needed.

Before you begin

Role required: admin

About this task

The Problem form in the base system is configured to follow recommended ITIL practices.
Evaluate the form layout and design with your existing business processes, and plan the
changes to make.
For additional form customization not described in this page, such as adding company-specific
annotations or configuring related lists, see Form administration
and Configuring the form
layout .
By default, auditing is enabled for the problem table. The administrator can configure the form
layout to add the Audit Records and Audit History related lists. For more information about
options for auditing a table, see Enable auditing for a table .

Procedure
Navigate to Problem > Create New.
Some of the following configuration activities are not accessed from within the problem form.
These activities are noted in the procedure.
Configure the problem form layout
Configure the problem form so the information it collects is relevant to your organization's
processes. You can easily modify the form to show only the fields, related lists, and other
elements that you need.

Before you begin

Role required: personalize_form

Procedure
1. Navigate to All > Problem > Create New.
2. In the problem form context menu, select Configure > Form Layout.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2833


<!-- page 2834 -->
to perform any of the following layout
3. Follow the steps in Configuring the form layout
modifications.
Some of these modifications are illustrated in the example.
◦ Show or hide fields on a form.
◦ Add a related list to a form.
The Incidents and Problem Tasks related lists appear by default. Review the available
related lists and select appropriate lists. For example, if you enable auditing for the Problem
table, add the Audit History related list.
◦ Add an annotation to a form.
◦ Create a form section.
◦ Embed a list within a form.
This activity allows the embedded list to be used like any other element on the form. In
addition, technicians can create records in the list view. Changes made to the contents of
the embedded list are saved when the form is saved.

Note: There are other activities described in the form layout topic, but the items listed
here are commonly configured during initial setup.
Problem form layout example

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2834


<!-- page 2835 -->
Add a field in the assess mandatory field dialog
Add the mandatory fields necessary to move a problem or a problem task record from the New
state to the Assess state in the assess dialog form. If you miss filling any of the fields, you can
always fill those in the assess dialog form.

Before you begin

Role required: admin

Procedure
1. Navigate to All > System UI > Form Sections.
2. Search and open Assess Dialog Form View or PTASK Assess Dialog View for problem record
or problem task record respectively.
3. Click the Form Sections tab.
4. Click problem or problem_task from the list for problem record or problem task record
respectively.
5. Click the Section Elements tab.
6. Click New.
7. On the form, fill in the fields.
Section Element form
Field

Description

Element

Name of the field that you want in the assess
dialog form.

Position

Position of the field in the assess dialog form.

Type

Type of the element that you want to enter in
the form such as an element or a split.

Sys UI section

Name of the UI section under which the
element appears.

Sys UI formatter

Name of the formatter that is used to display
information.

Note: The formatter information is not
the value of any field.

8. Click Submit.
Redesign the problem form
The form designer allows you to customize elements in the problem form to create different form
views, display a field navigator, or provide field properties.

Before you begin

Role required: admin

About this task

Form design is an alternative to configuring forms that combines several configuration options
into one tool. You can make and save changes, then return to the browser tab with the open

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2835


<!-- page 2836 -->
problem form and reload the form to test your changes. Using the form designer lets you try out
the changes you want to make for the best result.

Procedure
1. In the form context menu, select Configure > Form Design to open the form designer in a new
browser tab.
2. Follow the directions in Form design

to customize elements in the problem form.

Configure problem categories
Configure problem categories to provide a refined way of monitoring and reporting problems.
Add to or remove category and subcategory choices from the list of problem categories or
subcategories.

Before you begin

Role required: admin

Procedure
Follow the steps in Define an option for a choice list

to enter your problem categories.

Define an assignment rule for problems
After a problem is logged, it must be assigned to the appropriate group or individual to handle
the problem. You can define assignment rules to automate the assignment process.

Before you begin

Role required: assignment_rule_admin or admin

About this task

Some assignment rules are predefined for Problem Management. Review the predefined
assignment rules, and verify that the problem assignment rules you want to use are active. For
example, the Network Problem assignment rule looks at the configuration item class for network
problems and assigns the problem to the Network group.
In this procedure, define an assignment rule to assign database problems to the Database
group. It is just an example to let you know how to define an assignment rule. The Database
Problem assignment rule is already available in the base system.

Procedure
1. Navigate to All > System Policy > Assignment and click New.
2. Complete the form using the following information.
◦ Name: Database Problems
◦ Applies To tab or section:
▪ Table: Problem [problem]
▪ Conditions: Dot-walk to [Configuration Item.Class] [is] [Database].
◦ Group in the Assign To tab or section: Database
3. Click Submit.
4. Test the assignment rule by completing the following steps.
a. Navigate to Problem > Create New.
b. Complete the problem form and select a configuration item with a class of Database.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2836


<!-- page 2837 -->
c. Click Submit.
d. Open the problem and verify that the assignment group was added.

Categorize a problem as a major problem
You can prioritize a problem and highlight that it needs a review.

Before you begin

Role required: admin

About this task

Note: This feature is available only in new instances starting with Jakarta
or a later release. The Problem Management Best Practice – Jakarta plugin
(com.snc.best_practice.problem.jakarta) plugin must be activate.
• If the Problem Management Best Practice – Madrid plugin
(com.snc.best_practice.problem.madrid) is activated, configure the Problem form to include
the Major problem check box and add the Major problem review field to the Resolution
Information tab.
• If the Problem Management Best Practice – Madrid plugin
(com.snc.best_practice.problem.madrid) is not activated, add the Review outcome field to the
Closure Information tab.

Procedure
1. Open a Problem record to categorize it as a major problem.
2. Select the Major problem check box.
The Work notes field is mandatory. Either the Major problem review field is displayed in
the Resolution Information tab, or the Review outcome field is displayed in the Closure
Information section.
3. Fill out the Review outcome field to document review results and lessons learned.
4. Click Update.

Enable Problem Management models
Enable the Problem Management models system property so that you can create and use
custom models.

Before you begin
The com.snc.problem_management.models.enabled system property is enabled by
default for new customers starting from the Yokohama release.
See considerations for enabling and disabling Problem Management models at Problem
Management models.
Role required: admin

Procedure
1. Navigate to All > System Properties > All Properties.
2. From the Name column, search for *models.
3. Select the com.snc.problem_management.models.enabled system property.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2837


<!-- page 2838 -->
4. Set the Value field to True.
5. Select Update.

Result

Problem Management models are enabled.

Create a problem model
Create custom Problem Management models with states and transitions tailored to your use
cases.

Before you begin

See considerations for enabling Problem Management models at Problem Management models.
Role required: admin

Procedure
1. Open the Problem Models table in one of the following ways.
◦ In the navigation filter, enter prb_model.list.
◦ Navigate to All > Problem > Administration > Problem Models.

Note: For more information about enabling menu items for Problem Management
models, see Enable or disable an application menu or module

.

a. Select New.
b. On the Problem Model form, fill in the fields.
For more information, see Problem model form.
2. Choose the states for your custom model by selecting Save from the form context menu icon
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
3. Apply a transition to each model state by selecting the display/hide hierarchical lists icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2838


<!-- page 2839 -->
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
4. Optional: Apply transition conditions by selecting any of your model state transitions.
a. From the Transition Conditions context menu, select New.
b. On the Model State Transition Condition form, fill in the fields.
(Optional) For more information, see Problem Management model state transition condition
form.
c. Select Submit for each transition condition you add.

Result

If you selected the Default problem model option in the Problem Model form, your custom
problem model is used when new problems are created.

Create a problem task model
Create custom Problem Management models with states and transitions tailored to your use
cases.

Before you begin

See considerations for enabling Problem Management models at Problem Management models.
Role required: admin

Procedure
1. Open the Problem Task Models table in one of the following ways.
◦ In the navigation filter, enter prb_task_model.list.
◦ Navigate to All > Problem > Administration > Problem Task Models.

Note: For more information about enabling menu items for Problem Management
models, see Enable or disable an application menu or module

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2839


<!-- page 2840 -->
a. Select New.
b. Save the sys_id for creating an interceptor (as described in later steps) by selecting Copy
sys_id from the form context menu icon (

).

c. On the Problem Task Model form, fill in the fields.
For more information, see Problem task model form.
2. Choose the states for your custom model by selecting Save from the form context menu icon
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
3. Apply a transition to each model state by selecting the display/hide hierarchical lists icon (

).

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2840


<!-- page 2841 -->
4. Optional: Apply transition conditions by selecting any of your model state transitions.
a. From the Transition Conditions context menu, select New.
b. On the Model State Transition Condition form, fill in the fields.
(Optional) For more information, see Problem Management model state transition condition
form.
c. Select Submit for each transition condition you add.
5. Create an interceptor for your model by navigating to All > System Definition > Interceptors.
a. From the Name column, search for *models.
b. Select Problem Task Models from the list.
c. From the interceptor list for problem task models, select New.
d. Select Simple question to redirect the URL.
e. On the Interceptor Answer form, fill in the fields.
Interceptor Answer form
Field

Description

Name

Unique name for the intercept.

Order

Order in which the associated model is
displayed.

Active

Option to make the intercept active.

User Prompt

Name of the model that your user sees.

Roles

Option to define the roles to select the
problem task model.

Note: In the Target URL field, specify your model's sys_id in the following format:
problem_task.do?
sys_id=-1&sysparm_query=prb_task_model=[sys_id].
f. Select Submit.

Result

Your custom problem task model is available as a choice for the roles specified in your
interceptor.

Applying CSDM guidelines to Problem Management
Problem Management helps identify the cause of an error in the IT infrastructure, reported as
occurrences of related incidents. The goal of this product view is to help you to understand how
Problem Management key entities work with the core CSDM framework.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2841


<!-- page 2842 -->
With Problem Management you can perform the following actions:
• Document the root cause of an error and resolve it permanently.
• Create known error articles from a problem to provide guidance and help deflect incidents.
• Collaborate on problem tasks with other teams to identify the root cause using a drag-anddrop functionality on visual task boards.
The Problem Management form references the following CSDM elements (attributes and related
views).
1. Service — References the [cmdb_ci_service_business] table.

Note: Earlier releases labeled this attribute Business Service.
2. Service Offering — References the [service_offering] table to see the service offerings affected
by the problem in the Service Offerings related list [task_service_offering].
3. Configuration Items — References the [cmdb_ci] table
4. Affected/Causal CIs — Related list [task_ci] table
5. Assignment Group — References the Group attribute.

Note: You can populate the Group attribute by using the Assignment Group for the
relevant CI.
Problem form

Problem Management and CSDM tables
Problem Management manages and uses CSDM tables. Several ServiceNow products benefit
from and add value to Problem Management.

CSDM tables used by Problem Management
1. Mapped Application Service [cmdb_ci_service_discovered] table: Discovered Application
Service (service instance) or any infrastructure CI
2. Configuration Item [cmdb_ci*] tables
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2842


<!-- page 2843 -->
3. Business Service [cmdb_ci_service_business] table and Technology management service
[cmdb_ci_service_technical] table (formerly Technical service): Use the service classification
attribute to identify business services and technology management services.
4. Service Offering [service_offering] table: Used as a choice list attribute to filter types of service
offerings like business service, technology management offering, and service instance.

Products that add value to Problem Management
When you use Problem Management with one of the following ServiceNow products, you
increase the value you get from Problem Management.
• Discovery provides details about the tangible/physical and software CIs you are using.
• Service Portfolio Management provides life-cycle information for a service.
• Asset Management provides the related product model. Software Asset Management (SAM
Foundation ) and Hardware Asset Management (HAM) provide life-cycle data for Technology
Portfolio Management.
• Security Management provides initial information to containment, eradication, and recovery of
security related problems.
• Risk Management provides IT risk and financial risk information.

Products that benefit from APM
• IT Service Management (ITSM): Services have the context of the business and applications,
along with the information and technologies layered beneath them.
• Information Technology Operations Management (ITOM): Understands the business context
for the service instances along with the tangible/physical device and software being managed.
• Governance, Risk, and Compliance (GRC): Auditors can leverage the business applications
and related Information Objects. This helps auditors understand the design-time data
sensitivity for scoping audits, measuring risks, and managing audit activities.
• Asset Management: Manages the software and tangible/physical CI life cycles for business
applications and business services.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2843


<!-- page 2844 -->
Problem Management use case
The Problem Management use case is described in this section.
Problem Management is used to prevent problems and the occurrence of resulting incidents. It
also aims at eliminating recurring incidents and minimizing the impact of incidents that cannot
be prevented. With Problem Management, you can capture information on affected configuration
items (CIs), with type as asset, in a problem to keep a record of the updated, repaired, swapped,
or retired configuration items. By keeping track of the assets, you can identify the location of the
assets, their usage and when the assets were changed. Using Problem Management, you to
monitor and manage the assets in your company using a systematic approach.
If a configuration item (CI) has resulted in a problem, use the dependency view to identify other
configuration items (CIs) affected by the CI that caused the problem. You can then associate
affected configuration items (CIs) with a problem record to find out how the problem affects other
CIs with dependent relationships.

Key features of the Problem Management use case
The CMDB, when used by the CSDM framework, provides value to Problem Management in the
following ways:
• Understand the impact of the problem on services and service offerings.​
• Dynamically route problems.
• Identify one or more impacted services to address the problem.​

The CSDM data elements used in Problem Management are:
1. Subscription: Related lists on service offerings that identify who has access to the offering and
thus might be impacted in an outage. A problem can identify impact using the subscribed by
tables. The related lists are as follows:
◦ Service Subscriptions by Company [service_subscribe_company]
◦ Service Subscriptions by Department [service_subscribe_department]
◦ Service Subscriptions by Group [service_subscribe_sys_user_grp]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2844


<!-- page 2845 -->
◦ Service Subscriptions by Location [service_subscribe_location]
◦ Service Subscriptions by User [service_subscribe_sys_user]
2. Business service offering might be used by problems to provide the business approver based
on approval_group and business_criticality. A business service may have multiple offerings,
each with a different criticality.
3. Technology management offerings might be used by problems to provide the technical
approver approval_group and technical assignment group on the attribute assignment_group.
4. Service instance may be used to provide prod and non-prod (DEV, QA, UAT, and so on)
environments. Non-prod environments may be filtered out if desired. The legacy used_for
attribute maps to the environment attribute. You should use the environment attribute.

Note: Some service offerings may identify the environment of the offering as well.
Results of the Problem Management use case
The CSDM framework provides Problem Management context for problems on what CIs may be
involved.
To determine the impact and root cause, compete the following steps:
1. Populate the Configuration Item attribute on the Problem form, configuration_item, with the CI
item or service affected.
2. (Optional) Use the Service and Service Offering attributes on the Problem form to help narrow
down the list of configuration items to choose from. This feature is not available with the base
system and needs additional configuration.
3. (Optional) Use the Affected CI related list to identify the CIs that may have caused the problem.
Problem Management considerations
Consider these points while implementing the CSDM framework.
• Service instance: A service instance is a service type that is a logical representation of a
deployed application stack.
• Using service instance for a problem: Some of the scenarios where the service instance can
be used for a problem include:
◦ The problem is for an application issue: In this scenario the service instance may be
populated in the configuration_item attribute on the Problem form representing the unique
deployment of an application stack. For example, the service instance of MyApp 3.0 Prod
has been reported as being unavailable.
◦ The problem on an infrastructure CI is impacting devices. In this scenario the service
instance might be populated on the problem’s Impacted Services related list,
task_cmdb_ci_service, to identify the service instance as one of the impacted services. For
example, the Server Acme42 may be impacting My service instance of MyApp 3.0 Prod
and other related services.

Managing Problems
Understand how Problem and Problem task is created, assessed, investigated, and fixed in a
Problem or Problem task states.

Create a problem
A problem is a cause of one or more incidents. Create a problem to identify the root cause of the
incidents and try to prevent them from happening again.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2845


<!-- page 2846 -->
Before you begin

Role required: itil, sn_problem_write, admin, problem_admin, problem_manager, or
problem_coordinator
If you do not have Problem Management Best Practice — Madrid plugin
(com.snc.best_practice.problem.madrid) activated, see Create a problem (legacy).

About this task
• You can generate a problem record manually from the problem module.
• You can generate a problem from an incident.
• You can create a record producer to log problems from the service catalog.
• You can also generate a problem from an email when an appropriate inbound email action is
configured.

Procedure
1. Create the problem with one of these options.
Option

Description

From the Problem module

Navigate to Problem > Create New.
a. Open the incident.
b. On the context menu, click Create Prob­
lem.

Note: Use the property List of
From an incident

attributes (comma-separated)
that will be copied from the in­
cident to create a new problem
(com.snc.problem.create_from_incident.at
to specify fields on the Incident form.
The values of these fields are copied
to the respective fields on the Problem
form.

2. On the Problem form, fill in the fields.
For a description of the field values, see Problem form
3. Click Submit.
The problem enters the New state. If you have filled the mandatory fields that are necessary to
move a problem record to the Assess state, the problem record directly moves to the Assess
state. If you want to add any additional field for the assess state, you must add the field at

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2846


<!-- page 2847 -->
System UI > Form Sections. For more information, refer Add a field in the assess mandatory
field dialog.

Note:
When an incident is promoted as major incident, a problem record is created
automatically if the following conditions are met:
◦ The incident does not have a problem record associated with it.
◦ Major Incident Management is installed along with problem management.
◦ The Problem Management Best Practice – Madrid plugin
(com.snc.best_practice.problem.madrid) and Incident Management - Major Incident
Management plugin (com.snc.incident.mim) must be active.
◦ You must activate Create Problem from Major incident flow, which is inactive when
shipped in base system.
To configure the incident field information which must be copied to problem record,
activate the List of Attributes (comma-seperated) that will be copied from the incident
to create a new problem (com.snc.problem.create_from_incident.attributes) property.
You can copy attachments and knowledge articles if the Problem Management Best
Practice – Madrid plugin (com.snc.best_practice.problem.madrid) is active and
com.snc.problem.create_from_incident.copy_attachments property is true.

What to do next

Assess the problem.
Create a problem (legacy)
A problem is a cause of one or more incidents. Create a problem to identify the root cause of the
incidents and try to prevent them from happening again.

Before you begin
Role required: itil

Procedure
1. Create the problem with one of these options.
Option

Description

From the Problem module

Navigate to Problem > Create New.
a. Open the incident.

From an incident

b. On the context menu, click Create Prob­
lem.

2. Complete the form, as appropriate.
For a description of the field values, see Legacy Problem form.
3. To enter work notes for the problem, click the Notes tab.
When you initially create and save a problem, entering notes in the Work notes field is not
mandatory. If you change the priority of the problem by selecting different Impact or Urgency
values on an existing problem, the Work notes field becomes mandatory.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2847


<!-- page 2848 -->
Note: This feature is available only in new instances starting with Jakarta
or a later release. The Problem Management Best Practice – Jakarta plugin
(com.snc.best_practice.problem.jakarta) plugin must be activate.
4. To enter notes on why the problem is closed, click the Closure Information tab and enter the
information.
The date on which the problem was closed and the user who closed it populate automatically.
5. Click Submit.

What to do next

Assess the problem.

Assess a problem
Assess a problem to determine whether the problem requires a thorough investigation.

Before you begin
• Role required: admin, problem_admin, problem_manager, or problem_coordinator
• Activate the Problem Management Best Practice — Madrid — State Model
(com.snc.best_practice.problem.madrid.state_model) to get the new best practice states
and guided actions to navigate the lifecycle of a problem. For details, see Activate Problem
Management Best Practice — Madrid — State Model.

About this task

Assessing a problem involves analyzing the scale and extent of the problem, as well as its cause
and effect.

Procedure
Click Assess and fill the mandatory fields.

After assessing the problem, you can perform any one of the following actions:
Option

Action to be taken

If the problem is valid and requires a resolu­
tion

Click Confirm.

If there is an existing problem with similar is­
sue

Click Mark Duplicate.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2848


<!-- page 2849 -->
Option

Action to be taken

Note:
• When you mark a problem as dupli­
cate, the related records from the dupli­
cate problem are moved to the existing
problem.
• The List of related task records
(comma-separated) to move
over when a problem is marked
as a duplicate of another
(problem.duplicate.records_to_move)
problem management property con­
trols the related records that are
copied from the existing to the original
problem.
If the problem is not a valid problem

Click Cancel.

What to do next

After you confirm that the problem needs investigation and a resolution, the problem enters the
Root Cause Analysis state.

Add multiple incidents to a problem
Add multiple incidents to a problem to avoid creating multiple problems for incidents that have
the same issue.

Before you begin

Role required: itil, admin, problem_admin, problem_coordinator or problem_manager

About this task

The topic applies to problems where you’ve activated the Problem Management Best Practice —
Madrid (com.snc.best_practice.problem.madrid) plugin.

Procedure
1. Navigate to All > Problem > Open.
2. Open a problem record.
3. In the related list, click the Incidents tab.
4. Click Add.
5. From the list, you can add incidents in the following ways.
◦ Select the incident records and select Add Selected.
◦ Select Add All.

Result

The selected incidents appear under the Incidents tab.
Extension point for Problem Management
Extension points enable you to extend the functionality of an application and integrate
customizations without altering the application code.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2849


<!-- page 2850 -->
global.MRABulkAddRecordsFilter is a generic extension point that you can use to
attach associated records. You can add its implementation to use a multi-record associator for
attaching the records.
Navigate to All > Scripted Extension Points to add global.MRABulkAddRecordsFilter
to the [sys_extension_point] table.

Note: If you've already created implementations using the old extension point
global.BulkAddIncidentsFilter in previous releases, you can still

use that extension point for your existing customized implementations. But
in the future, the global.BulkAddIncidentsFilter extension point
will be deprecated. You’re encouraged to migrate your implementation to the
global.MRABulkAddRecordsFilter the extension point. If you're creating
implementations, use the extension point global.MRABulkAddRecordsFilter for
adding one or multiple incident records to a problem.

Associate CIs with Problem
Associate multiple affected or impacted configuration items (CIs) to a problem to find out all the
CIs that are affected by the same problem.

Before you begin

Role required: itil, sn_problem_write, admin, problem_admin, problem_coordinator or
problem_manager

About this task

Use the Configuration Item field when there is a single, primary CI that is the cause of the
problem and the Affected CIs or the Impacted Services/CIs related list when multiple CIs are
affected by the problem.

Procedure
1. Navigate to All > Problem > Open.
2. Open the problem record to which you want to associate CI items.
3. Perform the following actions:
Associate CI items
Options

Configuration item

Procedures

a. Click the lookup icon (

).

b. Select configuration item.

Note: By default, Service Offering
is filtered out and CIs with Principal
Class are selected. The Principal
Class filter functionality is applicable
to the new customers starting the
Paris release.
Affected CIs

a. Click Add.
b. Select configuration items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2850


<!-- page 2851 -->
Options

Procedures

Note: By default, Service Offering
is filtered out and CIs with Principal
Class are selected. The Principal
Class filter functionality is applicable
to the new customers starting the
Paris release.

c. Click Add Selected.
Impacted Services/CIs

a. Click Add.
b. Select configuration items.

Note: By default, Service Offering is
filtered out.
c. Click Add Selected.

Note: If the Impacted Services/CIs is
not visible on the form, configure the
form layout.

Investigate root cause of a problem
Identify the root cause of the problem to analyze, track, and resolve recurring incidents
permanently.

Before you begin

Role required: problem_admin, problem_coordinator, problem_manager, or admin

About this task

Activate the Problem Management Best Practice — Madrid — State Model
(com.snc.best_practice.problem.madrid.state_model) to get the new best practice states
and guided actions to navigate the life cycle of a problem. For details, see Activate Problem
Management Best Practice — Madrid — State Model.
Root cause analysis

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2851


<!-- page 2852 -->
Procedure
You can perform any one of the following tasks.
Option

Actions to be taken

• If you are the subject matter expert for this
problem area, carry out the investigation and
provide the cause notes and fix notes on this
problem.

Investigate the problem

• If you are not the subject matter expert and
you want help with the investigation, create
a problem task of type root cause analysis
and assign that to the relevant team. Once
the subject matter expert has completed the
problem task, then you can manually copy
the cause notes and proposed fix from the
problem task to this problem.
For more information about creating a problem
task, see Create a problem task.
Click Fix. The problem state changes to Fix in
Progress. You can then create a new Change
Request or link to an existing Change Request
to apply a permanent fix to the problem.

If you can resolve the problem

Note: Notification is sent to the prob­
lem coordinator, who is assigned to the
Problem, when all the related Change Re­
quests are completed or canceled.
Click Accept Risk. The problem directly enters
the Closed or Resolved state with the Resolu­
tion code as Risk accepted.

If you acknowledge the problem but there is
no permanent resolution to the problem

If you decide to reanalyze the problem

Note: Whether the problem enters

the Closed state or the Resolved
state, depends on the property Ac­
cept Risk moves the Problem to
Closed state instead of Resolved state
(problem.acceptrisk.move_to_closed)­
.
Click Re-analyze. The problem opens for re­
analysis and the state is changed to Root
Cause Analysis.

If you had created any known error article for this problem or any similar problem, you can add
the reference of that article in the Primary Known Error article field.

Note: The Primary Known Error article field is available only when you activate
the Problem Management Best Practice — Madrid — Knowledge Integration plugin
(com.snc.best_practice.problem.madrid.knowledge).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2852


<!-- page 2853 -->
What to do next

You can resolve and complete the problem. You can also create a change request to implement a
fix for the problem.

Resolve and complete a problem
Resolve the issue and add detailed note of the resolution for future reference.

Before you begin
• Role required: admin, problem_admin, problem_coordinator, or problem_manager
• Activate the Problem Management Best Practice — Madrid — State Model
(com.snc.best_practice.problem.madrid.state_model) to get the new best practice states
and guided actions to navigate the lifecycle of a problem. For details, see Activate Problem
Management Best Practice — Madrid — State Model.

Procedure
1. Click Resolve.

The problem enters the Resolved state with Resolution code as Fix Applied.
2. Click Complete.

The problem enters the Closed state with Resolution code as Fix Applied.

Note:
◦ When a problem is closed or canceled, all related open problem tasks are canceled
provided you select the problem management property Cancel open Problem Tasks
when closing a Problem (problem.closed.cancel_open_tasks).
◦ When a problem is closed, you can still create problem tasks provided you select the
problem management property Can create a Problem Task on a Closed Problem?
(problem.closed.can_create_tasks).
You can reanalyze the problem even after it is closed by clicking Re-analyze. The state of the
problem changes from Closed to Root Cause Analysis. The following problem management
properties controls who can reanalyze the problem:
◦ Who can Re-analyze a Canceled Problem?
(problem.closed.role.reanalyze_from_canceled)
◦ Who can Re-analyze a Risk Accepted (Closed state) Problem?
(problem.closed.role.reanalyze_from_closed_riskaccepted)
◦ Who can Re-analyze a Completed
Problem?(problem.closed.role.reanalyze_from_completed)
When all the related tasks mentioned in the problem management property List of related
task records (comma-separated) to track as fixes for this Problem. Used to notify the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2853


<!-- page 2854 -->
Coordinator when the all of the related fix records are Completed or Canceled. E.g.
incident.problem_id, change_request.parent (problem.fix.records) are completed, a
notification is sent to the problem coordinator regarding the same.

Note: Changing this property to include new tables also requires you to create a
corresponding Business Rule for the overall functionality to work seamlessly. For
example, for the Change request, the Business Rule is Check Related Problem
Fixes - Change Req.

Create change request from a problem
After you investigate and perform a root cause analysis of the Problem, you can understand
whether the Problem can be resolved or you should find a temporary workaround for the
Problem. If the Problem can be resolved, implement the fix, or the resolution for the Problem.

Before you begin

Role required: problem_coordinator or admin

About this task

You can implement a resolution to a problem by applying a standard change procedure and
testing to confirm service recovery. For a normal change, you raise a Request For Change (RFC).
The Change Advisory Board (CAB) needs to approve the RFC before a resolution is applied to
the Problem.

Procedure
1. Navigate to All > Problem > Open and open a problem record.
2. On the context menu, perform any one of the following activities.
Option

Action to be taken

Normal change

Click Create Normal Change.

Emergency change

Click Create Emergency Change.

A change request is created to implement the solution for the problem.

Add multiple change requests to a problem
Add multiple change requests to a problem to capture all the requests that you need to
implement to fix the problem.

Before you begin

Role required: itil, admin, problem_admin, problem_coordinator or problem_manager

About this task

The topic applies to Problems where you have activated the Problem Management Best Practice
— Madrid (com.snc.best_practice.problem.madrid) plugin.

Procedure
1. Navigate to All > Problem > Open.
2. Open a problem record.
3. In the related list, click the Change Requests tab.
4. Click Add.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2854


<!-- page 2855 -->
5. From the list, select the records and click Add Selected.
The selected change requests appear under the Change Requests tab.

Create a problem task
Problem tasks are how the problem coordinator asks subject matter experts for help with
identifying the root cause and proposed fix for a problem. Divide the problem into multiple
problem tasks to help with the investigation. You can assign the problem tasks to different
assignment groups or users.

Before you begin

Role required: itil, sn_problem_write, admin, problem_admin, problem_coordinator,
problem_manager, or problem_task_analyst

Procedure
1. Navigate to All > Problem > Open.
2. Open the problem record for which you want to create a problem task.
3. In the related list of the problem record, click Problem Tasks and click New.
4. Select any one of the following problem tasks.
Option

Description

Root Cause Analysis

Tasks where the problem coordinator re­
quires help from subject matter experts to in­
vestigate the root cause of a problem and find
a proposed fix for the problem

General

All other tasks

5. On the form, fill in the fields.
For a description of the field values, see Problem Task form.
6. Click Submit.
The problem task enters the New state. If you have filled the mandatory fields that are
necessary to move a problem task record to the Assess state, the problem task record directly
moves to the Assess state. If you want to add any additional field for the assess state, you
must add the field at System UI > Form Sections. For more information, refer Add a field in the
assess mandatory field dialog.

What to do next

Assess the problem task.

Assess a problem task
Assess a problem task to determine the feasibility of working on the task.

Before you begin

Role required: problem_admin, problem_coordinator, problem_manager, problem_task_analyst,
or admin

About this task

Assessing a problem task involves analyzing the scale and extent of the task, as well as its cause
and effect.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2855


<!-- page 2856 -->
Procedure
1. Select Assess.

The problem task enters the Assess state. You can confirm whether there’s enough
information to work on the task or if the task should be canceled.
2. After assessing the task, perform the action based on your option.
Option

Action to be taken

Select Start Work.
When you’re ready to work on the task
The problem task enters the Work in
Progress state.
Select Re-ass­
When you’re working on the task

es.
The state of the problem task changes from
Work in Progress back to Assess.
Select Cancel.

When you don’t want to work on the task,
for example, the problem task is a duplicate The problem task prompts you to complete
or no longer needed
the Canceled reason field, and the record
moves to the Closed state with the Close
code as Canceled.

What to do next

Complete the problem task as resolved.

Complete a problem task
Resolve and complete the problem task.

Before you begin

Role required: admin, problem_admin, problem_coordinator, problem_manager, or
problem_task_analyst

Procedure
Select Complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2856


