# Zurich IT Service Management — Coaching your trainee / Training your agents using Coaching With Learning

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 504–513 of 3857

Sections: Coaching your trainee (p504); Training your agents using Coaching With Learning (p509); Managing your coaching assessments (p512)

---

<!-- page 504 -->
a. Navigate to All > Coaching > Administration > Coaching Surveys.
b. In the Assessment Metric Types list, select the survey you've created.
c. In the Metric Categories related list, select New Category from Bank.
d. Select the question bank you've created and select Add selected.
e. Select Update.
4. Associate a survey with a coaching opportunity.
a. Navigate to All > Coaching > Coaching Opportunities.
b. Select the Surveys related list.
c. Do any of the following:
▪ To add a survey to be taken by the coach, in the Survey taken by Coach field, using the
search icon select the survey.
▪ To add a survey to be taken by the trainee, in the Survey taken by Trainee field, using the
search icon select the survey.
For more information on the coaching opportunities, see Define trigger conditions for a
coaching opportunity.

Coaching your trainee
A manager, or coach, is a subject matter expert of a process and is responsible for providing
coaching to an employee, or trainee. Use the Coach Dashboard to manage and measure the
effectiveness of your coaching.
You can access the Coaching Dashboard from the Coaching navigation menu, or directly from
the dashboard list. Click a report to view the detailed data.

Note:
• You must have the Coaching coach role to view the Coach Dashboard.
• The Coach Dashboard page uses the Next Experience user interface. For more
information on Next Experience, see Next Experience UI .
Coaching begins once a trainee assessment has been assigned to you. Coaching assessments
are triggered from a coaching opportunity that is set up by the coaching admin. Use coaching
assessments to facilitate a dialog with your trainee, assign training content, and set a due date
and other details.
The Coach Dashboard lets you manage the details and effect your coaching has on your
trainees.
• Check the progress state of your coaching assessments.
• Analyze the number and types of follow-up actions necessary on your resolved coaching
assessments.
• View the types of survey feedback from your trainees.
• View the number of your assessments that were resolved by the virtual coach.
• Check the performance rating of your trainees from your coaching.
• View the list of KPIs affected by your coaching.
• Verify the types of coaching opportunities that are being assigned to you (last 6 months).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

504


<!-- page 505 -->
Coach Dashboard

Report

Description

My Active Coaching Assessments

Coaching assessments assigned to you that
are in New, Work in Progress, and Resolved
states.

Follow-up Action Needed

Coaching assessments grouped by Followup
Needed field.
• Recognize
• Needs Additional Coaching
• Needs Outside Training
• Referral to Manager
• Create Virtual Coach
• No Follow Up

My Coaching Survey Results

Feedback results on coaching from trainees.

Resolved by Virtual Coach

Coaching assessments resolved by virtual
coaching.

My Trainee Performance

Coaching assessments grouped by trainee
performance rating.

KPI Addressed with my Coaching

KPIs addressed by your coaching.

My Coaching Opportunities - Last 6 months

Coaching opportunities assigned to you in the
past 6 months.

Assess a trainee
Use a coaching assessment to review the work of a trainee and to provide training and feedback.

Before you begin

Role required: sn_coaching.coach

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

505


<!-- page 506 -->
About this task

A trainee can view any field on the coaching assessment form and add comments to the to the
Work notes field. A trainee can submit feedback for a coach using a survey when a coaching
assessment is in resolved, closed complete, or closed incomplete state.
When an assessment is generated, all users in the Coach group receive a notification.
Assessments are generated automatically (as the result of a coaching opportunity) or created
manually. You can provide feedback for your trainees using a survey at any time during the
coaching assessment.
You can create a coaching assessment from incidents, problems, change requests, or any other
table that extends the task table . Enable the display of the Create Coaching Assessment
button and create your assessments using that button.To enable display of the button:
• Configure the UI actions

on the record.

• In the sn_coaching.CoachingExtensionPoint extension point, make sure the
getCreateAssessmentUITables method is implemented to return the name of the
tables.

Procedure
1. Navigate to All > Coaching > Coaching Assessment and select a coaching assessment in the
Open state.
You can take a survey using the Start Survey button to provide feedback for the trainee at
any point during the assessment. After you complete the survey, the score is calculated using
the Calculate coaching survey score business rule and is automatically populated in the
Trainee Rating field. The trainee rating generates an assessment rating that is populated in the
Assessment Rating field.

Note: Surveys are not available for assessments that are created manually.
2. Fill in the fields on the Coaching Assessment form.
a. Verify the Coach group, which is obtained from the coaching opportunity, is accurate.
b. Set the coaching assessment Coach field to a coach.
c. In the Due Date field, enter the date when the assessment is due.
The coaching assessment is set to Closed Incomplete state after the due date. Use
system properties to set due dates to complete training. For more information, refer to
Coaching Properties. You can disable automatic closure behavior by deactivating the Close
assessments after expiration scheduled job.
3. Fill in the fields in the Notes tab.
a. Add a Description to the coaching assessment.
b. Add Work notes to facilitate a dialog with the trainee.
4. Review the Snapshot content in the Snapshot tab and add your feedback in the Notes field.
5. Fill in the fields in the Feedback tab.
a. Set the Assessment rating based on the coaching experience.
When you submit feedback for a trainee, the score in the Trainee Rating field, which is
based on a scale of 1-10 is converted to a rating such as good or excellent. This rating
displays in the Assessment rating field.
b. Set the Follow up action as part of coaching.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

506


<!-- page 507 -->
6. Review the skills applicable to the trainee in the Trainee Skillset related list.
See Skills Management
for more information.
7. Add assigned training content in the Assigned course items related list.
8. Review survey feedback for the trainee in the Survey Results related list.
9. When coaching is finished:
a. Add a Summary of the coaching experience as an overview of your assessment.
b. Set the coaching assessment to Resolved.

Example: Coach assesses trainee
Coaching Assessment form
Field

Value

Number

CAS0001004

Trainee

Trainee User 2

Record

Incident: INC0000055

Opportunity

COP0000109

State

Work in Progress

Coach group

Coach Group

Coach

Coach User 1

Due date

2018-10-25 05:18:59

Coaching Assessment tabs
Field

Value

Information for Review
Snapshot
• Configuration item:
SAP Human Resources
• Additional comments:
2018-06-23 21:45:04 - ITIL User (Additional
comments)
The SAP Human Resources application is
not accessible.
• Work notes:
2018-06-23 21:45:04 - ITIL User (Work notes)
I cannot access this application so we may
have an outage.
Feedback Rating
Assessment rating

Excellent

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

507


<!-- page 508 -->
Coaching Assessment tabs (continued)
Field

Value

Follow up

Recognize

Summary

Trainee showed great interest in learning the
trainings and finished them ahead of due date.

Related topics
Coaching field descriptions

Assign skills after completing an assessment
Automatically assign skills to trainees for specific skill levels based on the course items they
have completed. For example, if a trainee completes the course items for learning Japanese at
an expert level, then the skill level 'expert' can be assigned to the trainee.

Before you begin

Role required: sn_coaching.coach and sn_coaching.admin

About this task

You can associate skills with coaching opportunities, coaching assessments, or course items.
When a trainee completes a coaching assessment, you can automatically assign the skill the
trainee has acquired during that coaching opportunity.
The coaching assessments generated from coaching opportunities award the skills to the trainee
after the assessment is complete. If the assessment is configured to include assigned course
items, the skills associated with course items are also added to the assessments.

Procedure
1. Associate skills with coaching assessment or opportunities.
To

Do this

a. Navigate to Coaching > Coaching Opportunities.
b. Select the record for which you want to associate a skill and skill
level.
Associate skills with
coaching opportunities

c. In the Skills Awarded on Assessment Completion related list,
click New.
d. In the Skill field, click the lookup icon and select the skill to asso­
ciate with this opportunity.
e. In the Skill level field, click the lookup icon and select the skill
level for this opportunity.
a. Navigate to Coaching > Coaching Assessments
b. Select the record for which you want to associate a skill and skill
level.

Associate skills with
coaching assessments

c. In the Skills Awarded by Assessment related list, click New.
d. In the Skill field, click the lookup icon and select the skill to asso­
ciate with this assessment.
e. In the Skill level field, click the lookup icon and select the skill
level for this assessment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

508


<!-- page 509 -->
To

Do this

When the assessment is complete, the skill is automatically
added for the trainee.
a. Navigate to Coaching > Course Items
b. Select the record for which you want to associate a skill and skill
level.
Associate skills with
course items

c. In the Skills Awarded on Assessment Completion related list,
click New.
d. In the Skill field, click the lookup icon and select the skill to asso­
ciate with this training.
e. In the Skill level field, click the lookup icon and select the skill
level for this course item.

2. Click Submit.
You can navigate to the All Awarded Skills related list in a Coaching Assessments record for
a trainee to view all skills to be awarded for that trainee. The Source field displays whether the
award came from an opportunity, assessment, or training.

Training your agents using Coaching With Learning
Use Coaching with Learning to train your agents with internal and external learning content.
Organize similar content in learning libraries. Assign learning tasks and track completion.

Important: Coaching With Learning is available when you enable the Coaching With
®

Learning application from the ServiceNow Store. To enable this application, see Request
Coaching.

Organize related learning content
Create a learning library to organize related content into categories.

Before you begin

Role required: sn_coaching.coach

Procedure
1. Navigate to All > Learning > Content > Learning Libraries.
2. Create a learning library.
a. Click New.
b. In the Title field, enter a unique name for the learning library.
c. In the Description field, enter a description for the learning library.
d. Right-click the form header and click Save.

Note: The learning library is visible to all groups that you directly or additionally
manage.
3. Add course items to the learning library.
a. Click the Content related list.
b. Click Add.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

509


<!-- page 510 -->
c. In the Add Learning Courses pop-up window, select all course items you want to add to the
learning library.
d. Click Add Selected. The course items are added to the learning library.

Note: To remove any course item you have added, select the course item and click
Remove.

4. Add user to the library.
a. Click the Applicable Users related list.
b. Click Edit.
c. Move the desired users to the Applicable Users List field.
d. Click Save.

Add internal learning content
Add internal courses so that agents can learn new content and enhance their skills set.

Before you begin

Role required: sn_coaching.coach

Procedure
1. Navigate to All > Learning > Content > Learning Content.
2. Create an internal learning content.
a. Select New.
b. Fill in the following fields.

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

Course catalog

The catalog associated with the course.

Knowledge article

If the internal source is a knowledge article, select the article.

URL Domain

If the internal source is URL, select the domain for the URL.
Here are the available URL domain types:
▪ Youtube
▪ Vimeo
▪ Other

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

510


<!-- page 511 -->
Name

Description

URL

If the internal source is URL, enter the URL for the selected domain.

Estimated
duration

Length of time when the course has to be completed. For example, for
a video, it is the duration of the video. For a KB article, the duration is
estimated based on the length of the article.

3. Select Save.
4. Add a skill to the internal learning content.
a. Select the Associated skills related list.
b. Select New.
c. In the Skill field, select a skill you want to associate with the internal content.
d. In the Skill level field, select a skill level for the selected skill.
e. Select Save.
Add a learning task to the internal content
Add a learning task to an internal content and track the task completion.

Before you begin

Role required: sn_coaching.coach

Procedure
1. Navigate to All > Learning > Content > Learning Content.
2. Add a learning task to the internal learning content.
a. Select the Learning Tasks related list.
b. Select New.
c. In the Assigned to field, select a trainee to whom you want to assign the learning task.
d. In the Course item field, select the course item to associate with the learning task.
e. In the Due date field, select the calendar icon and select the date and time when you want to
trainee to complete the learning task.
f. Select Save.

Add external learning content
Add courses from third-party applications such as Udemy, Pluralsight, Cornerstone, or
ServiceNow University to enable your users to gain skills from external learning content.

Before you begin

To add external learning content:
• You must have the Workforce Optimization for ITSM application installed.
• You must integrate Coaching With Learning with third-party learning management systems. For
information on how to perform this integration, see Integrating Learning Core with third-party
learning management systems .
Role required: sn_coaching.coach

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

511


<!-- page 512 -->
Procedure
1. Navigate to All > Learning > Content > External Content.
2. Select a course.
3. Click Go to course.
You can review and learn the external course.

Complete a learning task
Enhance your skills set by completing learning tasks from internal or external learning content.

Before you begin

Role required: sn_coaching.trainee

Procedure
1. Navigate to All > Learning > Tasks > Learning Tasks.
2. Select a learning task.
3. Complete the learning task.
4. Click Mark as Complete.

Managing your coaching assessments
Employees, or trainees, are assessed on work they have done that has triggered a coaching
opportunity. Once assessed, the trainee is assigned training by the coach. Use the Trainee
Dashboard to manage your assessments and track results.
You can access the Trainee Dashboard from the Coaching navigation menu, or directly from the
dashboard list. Click a report to view the detailed data.

Note: You must have the Coaching trainee role to view your Trainee Dashboard.
Your training starts when your assessment has been assigned to a coach. Coaching
assessments are triggered from a coaching opportunity set up by the coaching admin and are
used to facilitate your learning, as well as providing a dialogue with your coach.
The Trainee Dashboard lets you manage your assessments and track results.
• Keep track of your active coaching assessments.
• Analyze how your assessments have been rated in the past.
• View the types of survey feedback from your coaches.
• Manage the full list of your coaching assessment details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

512


<!-- page 513 -->
Trainee dashboard

Report

Description

My Active Training Assessments

Coaching assessments for you that are in
New, Work in Progress, and Resolved states.

My Coaching History

Coaching feedback history (provided by the
coach).

My Survey Results

Survey feedback results of the coach to the
trainee.

My Assessment Details

List of active coaching assessments and
trainings.

Work with your coach
Use your assessments to work with your coach, including assigned training and due dates. You
can view your assessments and track your results using the Trainee Dashboard.

Before you begin

Role required: sn_coaching.trainee

About this task

You can provide feedback for your coach when the assessment is in resolved, closed complete,
or closed incomplete state.

Procedure
1. Navigate to All > Coaching > Trainee Dashboard.
2. Select an active Coaching Assessment record from the My Assessment Details list to view
feedback from your coach.
3. View the Notes from your coach for coaching instructions.
4. Complete any learning content in the Assigned Trainings related list before the Due date.
5. Add any Notes for your coach that are applicable to your progress or learning status.
6. To provide feedback for the coach, click Start Survey.
The Provide Training Feedback form appears.
7. Complete the feedback and click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

513


