# Zurich IT Service Management — Coaching reference

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 514–524 of 3857

Sections: Coaching reference (p514); Quick start tests for Coaching (p523)

---

<!-- page 514 -->
The score for the survey is added to the Coach rating field.
8. To assess your survey results and other reports, navigate to Coaching > Trainee Dashboard.

Example: Trainee works on a coaching assessment
Coaching Assessment form
Field

Value

Number
Trainee

Trainee User 1

Record

Incident: INC000055

Opportunity

COP0000109

State

Resolved

Coach group

Coach Group

Coach

Coach User 1

Due date

2018-10-25 05:18:59

Resolved by Virtual Coach

Selected

Related topics
Coaching field descriptions

Coaching reference
Coaching reference content includes business rules and field descriptions.

Coaching on a non-task table
To provide coaching on a table source that does not extend the Task table, you must create a
business rule to initiate the coaching process.
The business rule Evaluate coaching opportunity on tasks initiates coaching for tables that
extend Task. You can copy this business rule and modify it for tables that do not extend the Task
table.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

514


<!-- page 515 -->
Evaluate coaching opportunity on a non-task table

Coaching assessment flow states
Coaching Assessment Flow

State

Description

Open

New coaching opportunity.

Work in Progress

Trainee is being coached.

Resolved

All learnings and coaching in the assessment
have been completed successfully.

Closed Complete

Assessment has been resolved and closed.

Closed Incomplete

Assessment has been closed but was not
completed, typically because the coaching
assessment Due date has expired.

Form and list permissions
Element

Coaching Opportunity

Permissions

• sn_coaching.admin: create, write, delete
• sn_coaching.coach: read
• sn_coaching.trainee: none

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

515


<!-- page 516 -->
Element

Coaching Assessment

Permissions

• sn_coaching.admin: create, write, delete
• sn_coaching.coach: create, write own or
group assessment
• sn_coaching.trainee: read own assessment,
write own assessment work notes

Training History

• sn_coaching.admin: view
• sn_coaching.coach: view
• sn_coaching.trainee: none

Assigned Training

• sn_coaching.admin: create, write, delete
• sn_coaching.coach: create, write and delete
own training action
• sn_coaching.trainee: view

Training

• sn_coaching.admin: create, write, delete
• sn_coaching.coach: create, write and delete
own training
• sn_coaching.trainee: view

Virtual Coachings

• sn_coaching.admin: create, write, delete
• sn_coaching.coach: read, and associate
existing virtual coach to a coaching
opportunity
• sn_coaching.trainee: none

Virtual Coach

• sn_coaching.admin: create, write, delete
• sn_coaching.coach: create, write and delete
own virtual coaching
• sn_coaching.trainee: none

Coaching Properties
Properties
Property

Description

glide.ui.sn_coaching_assessment_activity.fields Edit coaching assessment activities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

516


<!-- page 517 -->
Properties (continued)
Property

Description

• Type: string

• Default value:
assigned_to,cmdb_ci,state,impact,priority,opened_by,work_n
sn_coaching.recommended_learning_deprecated
Coaching Recommended Trainings is being
deprecated and replaced with the Learning
Tasks and course items from Coaching with
Learning.
• Type: string
• Default value: true
sn_coach.lrn.exclude_weekends_on_learning_task_due_date
Enable property to exclude weekends while
setting the due date for learning tasks.
• Type: true|false
• Default value: true
sn_coach_lrn.learning_list_menu_props

Data array properties for the now-list-menu
component on the Learning Tasks tab,
coaching module.
• Type: string
• Default value: script for data array

Coaching field descriptions
Coaching field descriptions also include form related lists and actions.

Coaching Opportunity form
Field

Description

Number

Unique (COP) number for the coaching
opportunity.

Name

Unique name for the coaching opportunity.

Description

Description of the coaching opportunity.

Table

Table to use for the coaching opportunity.

Trainee

Field from the selected table that identifies the
trainee.

Trainee group

Limit the trainees identified in the Trainee field
to a group or groups of users.

Specify coach user

Check box to enable the Coach field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

517


<!-- page 518 -->
Field

Description

Coach

Field from the selected table that identifies the
coach.

Coach group

Group of coaches that assess and provide
feedback to trainees.

Active

Check box to activate the coaching
opportunity. Clear the check box to disable.

Trigger

Event that triggers a coaching opportunity for
the selected table.
Conditions for opportunities are generally
unique events, such as when an incident is
reassigned.

Frequency tab
Field

Description

Random sample (%)

Percentage of the total assessments that get
created. Use a random sample percentage
to reduce the number of assessments that
are created if too many events that meet the
criteria for creating a coaching assessment
occur.

Users who should be coached on every
opportunity

Users that always get coached, regardless of
random sample percentage.
Because the specified users are exempted
from the random sample percentage, a
coaching assessment is always created when
the assessment is triggered.
Selected users might be new hires, for
example, or others who require additional
coaching.

Note: Only shown if the Random
sample (%) is less than 100.
Assessment duration

Amount of time before the assessment is set
to Closed Complete state.

Prevent duplicate assessment

Check box to prevent an assessment from
being created within a specified time period
if one exists for that user for the same
opportunity.

Within time period

Time period within which duplicate
assessments are not created.

Note: This field appears only when

Prevent duplicate assessment check
box is selected.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

518


<!-- page 519 -->
Surveys tab
Field

Description

Survey taken by trainee

Survey selected for the trainee to provide
additional feedback.

Survey taken by coach

Survey selected for the coach to provide
additional feedback.

Related KPIs tab
Field

Description

Improvement KPI

Primary KPI used to measure the success of
the coaching opportunity.

Strategic objective

Strategic objective affected by the coaching
opportunity.

Snapshot Settings tab
Field

Description

Snapshot fields

Field values to show in the coaching
assessment unless an advanced script is
used.

Advanced

Check box to use a script to determine the
content for the snapshot.

Snapshot script

Script that defines the evaluation process
applied to the selected table. Select the fields
from the table for which you want to capture
the values.
For example, when analyzing the Incident
table, use {number} to display the record
number (such as INC0010002) for the incident
record that triggered the coaching opportunity.

Note: This field appears only if the
Advanced check box is selected.

Coaching Assessment form

Number

Unique (CAS) number for the coaching
assessment.

Trainee

Trainee user that triggered the assessment in
the coaching opportunity.

Record

Record associated with the assessment
triggered in coaching opportunity.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

519


<!-- page 520 -->
Opportunity
State

Coaching opportunity number associated with
the coaching assessment.
State of the assessment.
• Open: New coaching opportunity.
• Work in Progress: Trainee is being coached.
• Resolved: All coaching and learnings have
been provided to the trainee.

Note: Learnings may not have been
completed by the trainee.
• Closed Complete: Assessment has been
resolved and closed.
• Closed Incomplete: Assessment has been
closed but was not completed, typically
because the coaching assessment Due
date has expired.
Coach group

Group of coaches to which the assessment is
assigned.
Default value is populated from the coaching
opportunity form.

Coach

Coach user performing the assessment.
This field is typically set by the coach before
performing the assessment, but can also be
set by a member of the coach group or by the
coaching admin.

Due date

Date the assessment is due. After this time,
the assessment is set to Closed Incomplete
state.

Notes tab
Field

Description

Description

Description of the assessment.

Work notes

Notes about the assessment (journal field).
Additional notes can be added as the coach
and trainee engage in further dialogue.

Snapshot tab
Field

Description

Snapshot

Field contents of the task, action, or behavior
captured at the time the coaching opportunity
was triggered.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

520


<!-- page 521 -->
Feedback tab
Field

Description

Assessment rating

Value of the performance of the trainee for
reporting and trend-tracking purposes.
• Excellent
• Good
• Average
• Poor
• Unacceptable

Follow up Needed

Further action required, if any, to improve the
performance of the trainee.
• Recognize: Trainee needs recognition for
good performance.
• Needs Additional Coaching: Trainee needs
additional feedback from the coach.
• Needs Outside Training: Trainee needs
additional training outside the scope of the
coaching assessment.
• Referral to Manager: Indicates a major
issue with the trainee performance.
• Create Virtual Coach
• No Follow Up

Summary

Summary of the coaching assessment.

Coaching Assessment actions
Button

Description

Complete Assessment

Set the coaching assessment to Closed
Complete state.

Reopen Assessment

Change the coaching assessment state from
Resolved or Closed Complete back to Work
In Progress for additional action.
Either the coach or the trainee can reopen the
coaching assessment.

Submit feedback

Feedback submitted by either a trainee or a
coach from the survey form.

Delete

Deletes the coaching assessment from the
Assessment Created by Opportunity list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

521


<!-- page 522 -->
Virtual Coaching form
Field

Description

Short Description

Description of the virtual coaching (CVC)
record.

Table

Table source of coaching opportunity events.

Training

Record that contains related training content.

Active

Check box to activate the virtual coaching.
Clear the check box to disable.

Advanced

Check box to use a script to determine when
the automation triggers.

Conditions

Event that triggers a virtual coaching for the
selected table.
Conditions for virtual coachings are generally
unique events.

Script

Script that defines the evaluation process
applied to the selected table. Select the fields
from the table to capture the values for.

Note: Only shown if Advanced check
box is selected.
Autofill fields

Fields to autofill under certain conditions.

Training form
Field

Description

Number

Unique (CMC) number of the training.

Title

A short description for the training.

Category

Category of learning content, which is used for
reporting.
• Customer experience
• Best Practice Series
• Soft-Skill Communication
• Behavioral Coaching
• Product Support

Content

Content for assigned users to learn.

The Preview Message related list shows the learning content in the context of the trainee.

Coaching troubleshooting
Troubleshooting actions can help resolve common issues when setting up or running Coaching.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

522


<!-- page 523 -->
Issue

Resolution

Error after creating a coaching opportunity:

Create a business rule to initiate the coaching
process for a non-task type table. Copy the

You must create a business
rule for a non-task type
source table to trigger a
coaching assessment. For
more information, refer to
http://servicenow.com/docs/?
context=CSHelp:Coaching-NonTask-Table.

Coaching Opportunity creator
for Task business rule and
modify it for tables that do
not extend Task.

Do not automatically close a coaching
assessment after the due date has passed.

Deactivate the Close assessments
after expiration scheduled job in
System Definition > Scheduled Jobs.

Coaching assessment is not created.

These resolutions are applicable to a coaching
assessment not being created:
• Add the trainee as a member of the trainee
group.
• Clear the Prevent duplicate assessment
check box if the trainee already has
a coaching assessment for the same
coaching opportunity.
• Include the trainee in the Users who should
be coached on every opportunity list when
the Random sample (%) is less than 100.

I need to override ACLs and trainings for the
Implement Coaching extension points
Assigned Training related list on the Coaching
• CoachingExtensionPoint
Opportunity and Coaching Assessment forms.
• CoachingACLExtensionPoint

:

Related topics
Using extension points to extend application functionality
Using scripted extension points in server-side scripts
Using UI extension points in server-side UI macros
Using client extension points in client-side UI scripting

Quick start tests for Coaching
Validate that Coaching still works after you make any configuration change such as apply an
upgrade or develop an application. Copy and customize these quick start tests to pass when
using your instance-specific data.
Coaching quick start tests require activating the Coaching plugin (com.sn_coaching).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

523


<!-- page 524 -->
Coaching test suite
Test

Description

Release version

Coaching: Create an
assessment manually when
logged in as a coach.

As a coach, verify that you can Orlando
create an assessment and
assign it to trainees.

Coaching: Add skills to an
opportunity and verify those
skills awarded to trainee.

Add skills to a coaching
opportunity and verify that
those skills have been
awarded to trainees after they
complete an assessment.

Orlando

Coaching: Complete an
Verify that the virtual coach
Orlando
assessment as a virtual coach. completes an assessment
and provides feedback to the
trainee when a virtual coach is
attached to an opportunity.
Coaching: Add skills to an
assessment and verify those
skills awarded to trainee.

Add skills to a coaching
assessment and verify
that those skills have been
awarded to trainees after they
complete an assessment.

Orlando

Coaching: Add skills to a
recommendation and verify
those skills awarded to
trainee.

Add skills to a coaching
recommendation and verify
that those skills have been
awarded to trainees after they
complete an assessment.

Orlando

Coaching: Move assessments As a coach, verify that you can Orlando
from one state to another
move an assessment from
when logged in as a coach.
one state to another.
Coaching: Attach a
recommendation learning to
an assessment.

Verify that a recommendation
learning on an opportunity
gets attached to an
assessment when an
assessment is generated.

Orlando

Coaching: When a coaching
opportunity is inactive,
assessments are not
generated.

Verify that when a coaching
opportunity is in inactive
state, it does not generate
assessments.

Orlando

Coaching: Submit Coaching
survey as a Coach user.

Verify that coach can submit
survey for a trainee.

Quebec

Coaching: Submit Coaching
survey as a Traineer user.

Verify that trainee can submit
survey for a coach.

Quebec

Related topics
Quick start tests

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

524


