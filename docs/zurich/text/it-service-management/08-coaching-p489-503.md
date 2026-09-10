# Zurich IT Service Management — Coaching / Request Coaching / Coaching roles +1 more

Source: servicenow-zurich-it-service-management-enus.pdf | Release: zurich | Pages: 489–503 of 3857

Sections: Coaching (p489); Request Coaching (p492); Coaching roles (p493); Coaching overview (p494); Setting up Coaching and surveys (p498)

---

<!-- page 489 -->
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

Coaching
®

Use ServiceNow Coaching to monitor your teams' performance and coach your employees to
improve their skill set.
Review and assess the quality of your teams' completed interactions and tasks. Based on these
assessments, you can assign course items for your teams. When they complete the training, the
skills associated with it get added to their skills set.
This 26-minute podcast includes a discussion of the Coaching application, the coaching
process, virtual coaching, and building coaching into a workflow.
Podcast discussion of the Coaching application, the coaching process, and how the application
can be used in an organization

Get started with Coaching
The image shows a high-level workflow on how coaching admins set up Coaching, and how
managers and agents use Coaching.

Note: You can use Predictive Intelligence when you use Coaching with Workforce
Optimization for ITSM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

489


<!-- page 490 -->
Coaching terminology
Terminology

Description

Coaching assessment

Assessments allow you to evaluate an agent and then assign
training and skills based on the evaluation. An assessment can
be generated automatically from a coaching opportunity based
on conditions set in the opportunity. As assessment can also be
generated manually.

Coaching opportunity

A critical moment in a process that generates an assessment
based on set conditions. A coaching opportunity can be generated
at any time during the life cycle of any task record such as incident,
problem, change request, or request items.

Virtual coach

A record that can be associated with a coaching opportunity that
automatically completes tasks associated with an assessment.

Coaching survey

A survey associated with a coaching assessment that lets coaches
provide feedback on the agents' completed work and lets agents
provide feedback on the coaching effectiveness.

Coaching assessments
You can create coaching assessments manually and associate it with a task record or generate
them automatically using coaching opportunities. When the trigger conditions set in a coaching
opportunity are met, an assessment is automatically generated and automatically assigned to
the trainee's coach to assess the context in which the assessment was triggered. For example,
you can set conditions in the coaching opportunity to create a coaching assessment when
an employee does not write clear work notes when they escalate an incident. The coach can
evaluate the employee using the assessment and add learning tasks to train them to write better
work notes.
After you create coaching assessments manually or automatically, you can do any of the
following:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

490


<!-- page 491 -->
• Award skills
• Assign learning tasks
• Associate coaching surveys to the assessment

Note: You can automate these tasks using a virtual coach that's associated with the
coaching opportunity.
Awarding skills: After the coach completes an assessment, they can award skills that's related
to the assessment to the trainee.
Assigning learning tasks: Coaching assessments can have learning tasks associated with it
to train the agent based on the assessment. When the agent completes the training, the skills
associated with the learning tasks are added to the agent's skills set. For example, if the agent
resolved an escalation that required router skills and if the agent does not have that skill, then
the learning tasks can include training for router skills. After the agent completes the training, the
router skills is added to the agent's skill set. Next time when an incident that requires router skills
is assigned to the agent, they will be able to successfully resolve the incident.
Setting up coaching surveys: Coaching surveys can be associated with a coaching assessment.
When the coach completes the coaching assessment, a survey can be triggered. Coaching
surveys let coaches provide feedback on the ability of the agents' to resolve incidents or the
quality of their completed tasks. Trainee surveys let agents provide feedback on the coaching
effectiveness.
• Survey for the coach is taken by the coach where the coach can provide feedback to rate the
trainee. For example, did the trainee demonstrate the knowledge and technical competence
required?
• Survey for the trainee is taken by the agent where the agent can provide feedback to rate the
coach. For example, were the learning tasks assigned to the agent useful in building skills?

Coaching opportunity
A coaching opportunity is a critical moment in a process where coaching assessments get
triggered based on conditions set in the coaching opportunity record. A coaching opportunity
can be generated at any time during the life cycle of any task record such as incident, problem,
change request, or request items. For example, you can set conditions to trigger a coaching
opportunity when an incident reassigned or escalated. For examples on identifying coaching
opportunities, see Identifying coaching opportunities.
You can do the following in a coaching opportunity record:
• Set trigger conditions.
• Associate skills, learning tasks, or surveys with the coaching opportunity. These items get
automatically associated with the assessment that is associated with the opportunity.
• Define a virtual coach. When an assessment is automatically created from an opportunity,
and if a virtual coach record is associated with it, then the assessment will automatically be
moved to closed, complete state. It will also automatically award skills and any learning tasks
associated with the assessment to the trainee. The surveys associated with the opportunity
will be assigned to the coaches or trainee as well.

Note:
◦ All virtual coach records will have a coaching opportunity associated with it but not all
coaching opportunities will have an associated virtual coach record.
◦ A virtual coach cannot be associated a manually generated assessment.
For information on virtual coach, see Identify and add course items for a virtual coach.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

491


<!-- page 492 -->
Example of assessment triggers

Did the coaching opportunity
trigger an assessment?

Is a virtual coach associated with
the coaching opportunity and are Result
the conditions set met?

Yes

Yes

Because a virtual coach is
associated with the coaching
opportunity, it completes the
following tasks automatically:
• Award skills
• Assign learning tasks
• Associate coaching surveys
to the assessment

Yes

No

Because a virtual coach
is not associated with the
coaching opportunity, you
must complete the following
tasks manually:
• Award skills
• Assign learning tasks
• Associate coaching surveys
to the assessment

No

No

You can create a manual
assessment and complete the
following tasks manually:
• Award skills
• Assign learning tasks
• Associate coaching surveys
to the assessment

You can use Coaching for any task-based process for such as Change Management, Customer
Service Management or Incident Management to set up Coaching. You can also use Coaching
for a non-task or custom table source by configuring a business rule.
To gain a general understanding of the application and how it is used, see Coaching overview.

Request Coaching
The Coaching (com.sn_coaching) plugin requires a separate subscription and must be activated
by ServiceNow personnel.

Before you begin

Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

492


<!-- page 493 -->
About this task
Visit the ServiceNow Store
website to view all the available apps and for information about
submitting requests to the store. For cumulative release notes information for all released apps,
see the ServiceNow Store version history release notes .
Coaching plugins
Plugin

Description

Coaching

Activates the Coaching application. This plugin
includes demo data and activates related plugins
if they are not already active. The Coaching
application is available with the ITSM Professional
subscription only. Please contact your account
manager for more information.

(com.sn_coaching)

Coaching with Learning (sn_coach_lrn)

Note: This is a ServiceNow Store

Activates the Coaching with Learning application
and enables you to integrate the Learning module
with the Coaching application.

plugin. You must install this plugin
separately from the ServiceNow
Store .

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

Coaching roles
Assign Coaching roles to specify what different users can see and do.

Role

sn_coaching.trainee
[Coaching trainee]

Description

Roles inherited

Able to view coaching
assessments to which they
belong.

• skill_user
• survey_reader
• pa_viewer

Able to add work notes in
a coaching assessment
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

493


<!-- page 494 -->
Role

Description

Roles inherited

by clicking Review
Assessments.
sn_coaching.coach

Able to read and write
coaching assessments
assigned to the coach group
to which they belong.

[Coaching coach]

• sn_coaching.trainee
• pa_viewer
• sn_lc.catalog_manager

Able to assign a training and
virtual coaches to a coaching
opportunity.

Note: The Coaching
coach is not able to
create a new coaching
opportunity.
sn_coaching.admin

Able to perform all functions.

[Coaching admin]

• sn_coaching.coach
• survey_admin
• sn_cim_improvement_requester
• sn_lc.learning_admin

Learning catalog
Grants administrative rights
group manager
to create, read, or update
[sn_lc.catalog_group_manager] learning libraries based on
groups.

• sn_lc.task_creator
• sn_lc.content_writer

Coaching overview
After you enable Coaching, you can set up roles and groups, define coaching opportunities,
create training material, and start assessing and coaching employees. The Coach and Trainee
dashboards provide useful overviews to manage and measure results.

Note: For detailed information on how to get started with Coaching, see Coaching and the
Coaching demo

.

Initial Coaching setup
Once you have enabled Coaching, set up the application by assigning user roles, configuring
coaching opportunities and creating training content.
1. Set up Coaching roles and groups
2. Define trigger conditions for a coaching opportunity
3. Identify learning content and a virtual coach
4. Set up surveys

Workflow of Coaching roles
An employee with the Coaching trainee role is in need of coaching at a critical moment in a
process.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

494


<!-- page 495 -->
An administrator with the Coaching admin role is in charge of setting up coaching opportunities,
learning content, virtual coaches, and surveys used in the coaching process.
A manager, or coach, with the Coaching coach role is a subject matter expert of a process and is
responsible for providing coaching to an employee, or trainee.

Coaching dashboards
Use Coaching dashboards to manage and measure results in a simplified view.
• Coaching Dashboard
• Trainee Dashboard

Identifying coaching opportunities
Coaching opportunities can be found in many tasks that occur throughout your environment.
• Writing better work notes when service desk escalates incidents to a second level.
• Correctly setting affected configuration items when the service desk works on incidents.
• Using the correct naming convention for admin in update sets.
• Coaching during the onboarding and the warranty period of a new application.
• Correctly reassigning a case to another user with pertinent information in comments.
• Engaging a user on closed records when non-positive feedback is received through surveys.
• Spot-checking a user on quality control.
• Helping to guide project managers in projects.
• Improving knowledge article quality when knowledge articles are attached to resolved
incidents.

Common ITSM assessment triggers
You can define activities that occur when trainees work through an ITSM process, such as
resolving an incident, as assessment triggers.

Table

Assessment triggers

Incident

Moment of first response
Categorization and prioritization
Reassignment
Proposal of solution to the customer

Problem

Definition of the Problem statement
Writing the Known Error
Writing the Workaround
Root Cause analysis
Root Cause confirmation
How can this issue be avoided?

Change

Categorization and prioritization
Implementation description

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

495


<!-- page 496 -->
Table

Assessment triggers

Risk analysis
Impact analysis
Approval
Implementation
Post implementation review

Integration with other applications
Coaching opportunities, coaching assessments, and assigned training in Coaching are
integrated with these applications.
• Continual Improvement Management
One example of a coaching opportunity with CIM would be to use improvement initiatives to
set up external training tasks.

Note: The Continual Improvement Management (com.sn_cim) plugin must be active
to create an improvement initiative. Continual Improvement Management requires a
separate subscription and must be activated by ServiceNow personnel.
• Skills Management
In a coaching assessment, you can assess trainee skills to identify gaps so the trainee can be
coached to acquire new skills or to enhance their existing skill level.
• Knowledge management
You can assign knowledge articles as assigned training.

Domain separation and Coaching
Domain separation is supported in Coaching. Domain separation enables you to separate data,
processes, and administrative tasks into logical groupings called domains. You can control
several aspects of this separation, including which users can see and access data.

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

Domain Separation Overview
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

496


<!-- page 497 -->
All tables including Coaching Opportunity, Coaching Assessment, Virtual Coach, and Trainings
support domain separation so the coach and Coaching admin can view records within the
(tenant) domain to which they belong.

How domain separation works in Coaching
Domain separation is supported in Coaching with no setup or configuration required. You can
create coaching opportunities and coaching assessments in separate domains, including the
global domain.
Coaching assessments extend the platform Task [task] table.
When domain separation is implemented, coach and trainee users can view coaching
assessments and trainings only in the domain assigned. The Domain and Domain Path columns
are available for coaching opportunities, coaching assessments, virtual coaching, and trainings
provided with the base system.
The Domain column contains the name of the domain to which the event or alert belongs, and
the Domain Path column contains the unique domain identifier.

Note: If the domain column is not shown, click the Update Personalized List icon and add
the required column. You can also add the domain path column, if desired.

Domain-separated tables
• Coaching Assessment [sn_coaching_assessment]
• Coaching Opportunity [sn_coaching_opportunity]
• Trainings [sn_coaching_recommendation]
• Assigned Training [sn_coaching_assessment_recommended_learning]
• Assigned Training [sn_coaching_opportunity_recommended_learning]
• Virtual Coach [sn_coaching_opportunity_virtual_coach_m2m]
• Virtual Coaching [sn_coaching_virtual_coach]

Use cases
• A Coaching admin that belongs to a parent domain creates a coaching opportunity at a parent
domain level or at a child domain level. Coaching opportunities created at a parent level are
available to view in all domains.
• A Coaching admin has access to multiple domains but wants to update content in a record
within a specific domain. The domain specified in the record drives the functionality of that
record and reference fields.
• A Coaching user that belongs to the Acme domain can view the coaching assessment task
created in the Acme domain.
• A Coaching user wants to associate an assigned training for an integrated application in the
Acme domain. The user must belong to the domain of the integrated application from which a
record is associated.
• The trainee user of a parent domain can view a coaching assessment of the parent as well as
of all child domains of that parent. A trainee user must belong to the Acme domain, its parent
domain, or the global domain to view that coaching assessment.
Related topics
Domain separation for service providers
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

497


<!-- page 498 -->
Setting up Coaching and surveys
To take full advantage of Coaching, configure the Coaching application and set up surveys.

Setting up Coaching
Configure Coaching to start assessing and coaching trainees.
1. Set up Coaching roles and groups to identify Coaching users, coaches, and admins.
2. Define an assessment trigger on the Coaching Opportunity form.
3. Identify training content that is provided as part of a training or virtual coaching.
4. Configure virtual coaches to add to a coaching opportunity.
5. Set up surveys to provide feedback on the coaching experience so you can make
improvements.

Setting up surveys
You can obtain feedback for both the coach and the trainee by creating surveys that are
accessed from a Coaching Assessment form that has been resolved or closed.
• Survey taken by trainee to provide feedback on the coach
• Survey taken by coach to provide feedback on the trainee
Access the Survey designer

for Coaching by navigating to Survey > Survey Designer.

Access the Coaching Survey definitions

by navigating to Coaching > Coaching Surveys.

Coaching Properties
Properties
Property

Description

sn_coaching.kb_article_duration

Number of days to read the knowledge
article. The admin (sn_wfo.admin) sets
the number of days for the trainee
to complete reading the article. The
number of days is converted to the due
date for the trainee to complete the
training. It is calculated from the current
date taking the trainee's time zone into
consideration.
• Type:Integer
• Default value:5

sn_coaching.exclude_weekends_on_training_due_date Excludes weekends when the due date
is set for trainees to complete training.
• Type:true | false
• Default value:true

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

498


<!-- page 499 -->
Define trigger conditions for a coaching opportunity
Use the Coaching Opportunity form to define a critical moment in a process on which a user can
be coached. A coaching opportunity consists of the relationship between a process that can be
improved, and coaches and trainees.

Before you begin

Role required: sn_coaching.admin

About this task

When the triggered conditions defined in a coaching opportunity are met, an assessment for
that trainee is generated. The coaching assessment is then assigned to a coach for training, or is
completed using automated virtual learning content.

Procedure
1. Create a coaching opportunity using the guided setup or by using the application navigator.
To create using

Guided setup

The Application navigator

Do this

a. Navigate to Continual Improvement > Administration >
Guided Setup.
b. Go to the Add a Coaching Opportunity section and click
Configure.
Navigate to Coaching > Coaching Opportunities.

2. Click New.
3. Fill in the fields on the Coaching Opportunity form.
a. Select the table that contains the field for coaching in the Table field.
b. Select the Trainee field from the source table.
c. To limit the trainees for which a coaching assessment is generated, select a specific Trainee
group.
d. Select a coach or a group of coaches to assess and provide feedback to trainee
assessments generated from this coaching opportunity.
▪ To select a coach group, from the Coach group field, select the group of coaches.
▪ To select the assignment group manager as the coach for the selected task record, enable
the Specify coach user check box and select the coach user from the selected table.
e. Add the condition for the critical moment in the Trigger fields.
See Common ITSM assessment triggers for examples.
4. Fill in the fields in the Snapshot Settings tab.
a. Select the Snapshot fields that contain the values to capture in the coaching assessment
when an assessment is triggered.
b. To use an advanced script, select the Advanced check box and add your script.
See Scripts
for more information on scripting.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

499


<!-- page 500 -->
5. Fill in the fields in the Frequency tab.
a. To limit the number of coaching assessments generated, set the Random sample (%) to a
percentage of the total number.
If you reduce the random sample size, you can prevent certain trainees from being excluded
by specifying Users who should be coached on every opportunity. For example, you may
want new employees to be coached every time.
b. Specify the Assessment duration after which the coaching assessment is set to Closed
Complete state.
You can disable automatic closure behavior by deactivating the Close assessments
after expiration scheduled job.
c. To Prevent duplicate assessments from being created for a trainee for the same coaching
opportunity within a certain time period, select the check box.
Specify the Time period within which duplicate assessments are not created.
6. Fill in the fields in the Surveys tab.
a. To select feedback surveys taken by trainees and coaches when the coaching assessment
is in Resolved state, select a Survey taken by Coach and a Survey taken by Trainee.
7. Fill in the fields in the Related KPIs tab.
a. Select the primary KPI improved by the coaching opportunity in the Improvement KPI field.
b. Select the Strategic objective affected by the coaching opportunity in the Strategic
objective field.

Note: You can set strategic objectives by navigating to Continual Improvement >
Strategy Objectives.

You can add assigned trainings and virtual coach items to the related lists, if applicable, to
complete the coaching opportunity.

Example: Coaching admin defines a trigger condition
Coaching Opportunity form
Field

Value

Number

COP0000109

Name

Incident Process: Coaching on Incident
Reassignment

Description

Coach a user on the reassignment process of
an incident, including adding comments, CI,
and category.

Table

Incident [incident]

Trainee

Assigned to

Trainee group

Trainee group

Coach group

Coach Group

Active

Selected

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

500


<!-- page 501 -->
Coaching Opportunity form (continued)
Field

Value

Trigger

Option: Assigned to
Operator: changes

Coaching Opportunity tabs
Field

Value

Frequency
Random sample (%)

100

Assessment duration

5 days

Surveys
Survey taken by Coach

Trainee Assessment Survey (provided by
coach)

Survey taken by Trainee

Coach Effectiveness Survey (provided by
trainee)

Related KPIs
Improvement KPI

Number of reassigned open incidents

Strategic objective

Retrofit Staffing to include more global
logistics

Snapshot Settings
Snapshot fields

Resolution code, Resolution notes, Work notes

Related topics
Coaching field descriptions

Identify and add course items for a virtual coach
Define filters and add course items for automated virtual coaching. When a coaching
assessment is triggered, the course items are automatically attached to the assessment.

Before you begin

Role required: sn_coaching.admin

About this task

Typical assigned course item content includes micro trainings, best practices, tips, knowledge
articles, videos, and community links.

Procedure
1. Navigate to Coaching > Virtual Coach > All and click New to create a record.
2. Fill in the fields on the form.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

501


<!-- page 502 -->
Field

Description

Table

The table from which a coaching opportunity is
generating assessments.

Course Items

Course items you want to associate with the virtual
coaching record. This could include a message, a link, a
video, or source code.

Note: The course items are automatically attached
to the coaching assessment when the conditions in
the virtual coaching record are met.
You can also access course items by navigating to
Coaching > Course items.
Advanced

Enable to set advanced conditions.
See Scripts

for more information on scripting.

Condition

Set filter conditions that trigger virtual coaching.

Autofill fields

Set one or more fields and the value for each value that
you want to automatically populate.

Example: Coaching admin sets up learning content
Virtual Coaching form
Field

Description

Number

CVC0000106

Short Description

Virtual Coach for the Incident Process

Table

Incident [Incident]

Course Items

Core Java

Active

Selected

Advanced

Cleared

Condition

• Assigned to changes
• Configuration item is empty

Autofill fields

• State Resolved
• Performance rating N/A

Training form
Field

Value

Number

CR0000106

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

502


<!-- page 503 -->
Training form (continued)
Field

Value

Title

Increase customer satisfaction by solving
issues faster

Active

Selected

Category

Customer Experience

Content

Watch this video to increase customer
satisfaction by solving issues faster.

Related topics
Coaching field descriptions

Create a survey and associate with a Coaching opportunity
Create a survey for coaches or trainees to assess the training quality. Add a question bank to the
survey. Associate the survey with a coaching opportunity to provide feedback when the coach
completes the coaching assessment.

Before you begin

Role required: sn_coaching.admin

Procedure
1. Create a survey to associate with a coaching opportunity.

Note: If you already have a survey that you want to associate with a coaching
opportunity, go to the Associate a survey with a coaching opportunity step.
a. Navigate to All > Coaching > Administration > Survey Designer.
b. In the Name field, enter the name for the coaching survey.
c. Select the Configuration tab.
d. In the Survey Owners field, select Coaching Admin.
e. In the Description field, enter a description for the survey.
f. In the Source table field, select Coaching Assessment [sn_coaching_assessment].
g. In the Duration field, enter the length of time recipients are given to complete the survey.
h. Select Save.
For more information on configuring a survey, see Survey Designer Configuration form

.

2. Create a question bank for the survey.
a. Navigate to All > Surveys > Question Bank.
b. In the Assessment Metric Categories list, click New.
c. In the Name field, enter a name for the question bank and then right-click the form header
and select Save.
d. In the Assessment Metrics related list, click New.
e. In the Survey Question form, enter the name, question, and data type, and select Submit.
For more information on creating or updating a question bank, see Survey questions .
3. Associate the question bank with the survey.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

503


