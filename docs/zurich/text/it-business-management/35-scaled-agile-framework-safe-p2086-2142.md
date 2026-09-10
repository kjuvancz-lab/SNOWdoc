# Zurich Strategic Portfolio Management — Scaled Agile Framework (SAFe) / Business stakeholder role for Essential SAFe and Portfolio SAFe / Essential SAFe

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 2086–2142 of 2289

Sections: Scaled Agile Framework (SAFe) (p2086); Domain separation and Scaled Agile Framework (SAFe) (p2086); Business stakeholder role for Essential SAFe and Portfolio SAFe (p2087); Essential SAFe (p2090)

---

<!-- page 2086 -->
Scaled Agile Framework (SAFe)
®

The ServiceNow Scaled Agile Framework (SAFe) application helps you apply lean and agile
principles to your large enterprise enabling you to develop and deliver software products with
fewer defects in the shortest viable lead time.
Scaled Agile Framework application overview. Approximately three minutes long.

SAFe overview
• Provides a broader, high-level perspective as well as the ability to manage development
processes throughout all levels of your organization.
• Facilitates collaboration and streamlines the planning and monitoring of activities across
business units, departments, and teams.

Note: SAFe and Scaled Agile Framework are registered trademarks of Scaled Agile, Inc

,

and ServiceNow is a Scaled Agile, Inc. Platform Partner.

Configurations of SAFe
ServiceNow provides applications that support two different configurations of SAFe: Essential
SAFe and Portfolio SAFe. The sections below explain the features of each configuration, and will
help you choose the right configuration for your organization.
Essential SAFe
With Essential SAFe, you can apply lean and agile principles to your Agile Release
Trains and teams, and develop and deliver work with fewer defects in the shortest
viable lead time.
Portfolio SAFe
With Portfolio SAFe, you can align your organizational goals and strategies with your
portfolios, and apply lean and agile principles to seamlessly manage and deliver
your portfolio work.

Domain separation and Scaled Agile Framework (SAFe)
Domain separation is supported in the Scaled Agile Framework (SAFe) application. Domain
separation enables you to separate data, processes, and administrative tasks into logical
groupings called domains. You can control several aspects of this separation, including which
users can see and access data.

Support level: Basic

• Business logic: Ensure that data goes into the proper domain for the application’s service
provider use cases.
• The application supports domain separation at run time. The domain separation includes
separation from the user interface, cache keys, reporting, rollups, and aggregations.
• The owner of the instance must set up the application to function across multiple tenants.
Sample use case: When a service provider (SP) uses chat to respond to a tenant-customer’s
message, the customer must be able to see the SP's response.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2086


<!-- page 2087 -->
For more information on support levels, see Application support for domain separation

.

Related topics
Domain separation for service providers

Business stakeholder role for Essential SAFe and Portfolio SAFe
Use the business stakeholder role to read and retrieve data from any table of the Essential SAFe
and Portfolio SAFe applications to generate reports.

Important:
Starting with the Xanadu release, the plugins Portfolio SAFe, Essential SAFe, Performance
Analytics Content Pack for Essential SAFe, Work Progress Status for SAFe, Agile - Scaled
Agile Framework - Unified Backlog, and Read only roles for SAFe are being prepared for
future deprecation. These plugins will be hidden and can no longer be activated on new
instances but will continue to be supported. Enterprise Agile Planning in Strategic Planning
provides the latest experience for this functionality.
For more information on the deprecation process and its impact, see the Application/Plugin
Deprecation Process [KB0867184]
article in the Now Support Knowledge Base.
When you activate the Business Stakeholder plugin (com.snc.business_stakeholder) in your
ServiceNow instance, the Read only roles for SAFe plugin (com.snc.sdlc.safe_read_roles) is also
activated. This plugin provides a business stakeholder role (sn_safe_read) with which you can
access all the tables of Essential SAFe and Portfolio SAFe applications. You can assign this role
to any user in your organization who is a business stakeholder.

Plugin availability
If you are a new customer, the Read only roles for SAFe plugin (com.snc.sdlc.safe_read_roles) is
activated on zBoot. However, the business stakeholder role (sn_safe_read) is available only when
you activate the Agile - Scaled Agile Framework - Essential SAFe plugin (com.snc.sdlc.safe) or
Agile - Scaled Agile Framework - Portfolio SAFe plugin (com.snc.sdlc.portfolio_safe).
If you are an upgrade customer, you must manually activate the Read only roles for Essential
SAFe and Portfolio SAFe plugins (com.snc.sdlc.safe_read_roles).

SAFe tables accessible by users with the business stakeholder role
When the read-only roles for SAFe plugin (com.snc.sdlc.safe_read_roles) is active in your
ServiceNow instance along with either the Essential SAFe plugin (com.snc.sdlc.safe) or
Portfolio SAFe plugin (com.snc.sdlc.portfolio_safe), the user with the business stakeholder role
(sn_safe_read) has read access to the following tables.
Essential SAFe tables
Table

Description

SAFe epic

Information about epics.

[sn_safe_epic]
SAFe feature

Information about features.

[sn_safe_feature]
Agile Release Train

Information about ART.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2087


<!-- page 2088 -->
Essential SAFe tables (continued)
Table

Description

[sn_safe_program]
Program Increment
[sn_safe_program_increment]
SAFe ART team

Information about program increments. Stores the
predictability measure data from PI objectives.
Relationships between groups and ART.

[sn_safe_program_m2m_group]
SAFe ART Member

Information about members within an ART.

[sn_safe_program_member]
SAFe ART Sprint

Sprint schedules of teams within the ART.

[sn_safe_program_sprint]
SAFe ART VTB Board

Records displayed on the ART level, Board tab.

[sn_safe_program_vtb_board]
SAFe Scrum Task

Information about SAFe scrum tasks.

[sn_safe_scrum_task]
SAFe Sprint

Information about sprints.

[sn_safe_sprint]
SAFe Story

Information about stories.

[sn_safe_story]
SAFe Team VTB Board

Records displayed on the Team level, Board tab.

[sn_safe_team_vtb_board]
SAFe PI Objectives

Stores the SAFe PI objectives.

[sn_safe_pi_objective]
SAFe team predictability
measure
[sn_safe_pi_m2m_group]

Stores the business value achieved per team from PI
objectives which is used for team-level predictability measure
data.

Portfolio SAFe tables
Table

Description

SAFe epic

Information about epics.

[sn_safe_epic]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2088


<!-- page 2089 -->
Portfolio SAFe tables (continued)
Table

Description

SAFe feature

Information about features.

[sn_safe_feature]
Agile Release Train

Information about ART.

[sn_safe_program]
Program Increment

Information about program increments.

[sn_safe_program_increment]
SAFe ART team

Relationships between groups and ART.

[sn_safe_program_m2m_group]
SAFe ART Member

Information about members within an ART.

[sn_safe_program_member]
SAFe ART Sprint

Sprint schedules of teams within the ART.

[sn_safe_program_sprint]
SAFe ART VTB Board

Records displayed on the ART level, Board tab.

[sn_safe_program_vtb_board]
SAFe Scrum Task

Information about SAFe scrum tasks.

[sn_safe_scrum_task]
SAFe Sprint

Information about sprints.

[sn_safe_sprint]
SAFe Story

Information about stories.

[sn_safe_story]
SAFe PI Objectives

Stores the SAFe PI objectives.

[sn_safe_pi_objective]
SAFe team predictability
measure
[sn_safe_pi_m2m_group]
Portfolios

Stores the business value achieved per team from PI
objectives which is used for team-level predictability measure
data.
Information about portfolios.

[pm_portfolio]
Portfolio SAFe VTB board

Records displayed on the portfolio level, Board tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2089


<!-- page 2090 -->
Portfolio SAFe tables (continued)
Table

Description

[sn_portfolio_safe_vtb_board]
SAFe Team VTB Board

Records displayed on the Team level, Board tab.

[sn_safe_team_vtb_board]

Essential SAFe
With Essential SAFe, you can apply lean and agile principles to your Agile Release Trains and
teams, and develop and deliver work with fewer defects in the shortest viable lead time.
This video explains how to use Essential SAFe features
Essential SAFe is the most basic configuration of SAFe that works in two levels for both product
managers and team members. At the Agile Release Train (ART) level, product managers can
capture and prioritize features in a centralized backlog, and monitor the progress of features in a
visual task board.
At the Team level, team members can implement stories that are decomposed from features. To
learn more about the levels, see the SAFe Board section below.
To start using the features of Essential SAFe, install the Agile - Scaled Agile Framework Essential SAFe plugin (com.snc.sdlc.safe).

SAFe Board
The table below provides an overview of how you can access the key levels of Essential SAFe on
SAFe Board.

Level

Description

Agile
As a product manager, you can plan and monitor activities across teams within an
Release
ART by accessing the ART level on the Scaled Agile Framework (SAFe) > SAFe
Train (ART) Board. In addition, you can:
• manage the ART backlog in a centralized location.
• define a program increment and identify the features that need to be completed
within that program increment.
• perform big room planning.
• track all the features of the ART and view their transition from one state (lane) to
another, in a visual task board.
Team

As a team member, you can plan and monitor activities within the team by
accessing the Team level on the Scaled Agile Framework (SAFe) > SAFe Board.
In addition you can:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2090


<!-- page 2091 -->
Level

Description

• manage the team backlog in a centralized location.
• streamline sprint planning and completion activities.
• track all stories and view their transition from one state (lane) to another, in a
visual task board.

Components installed with Essential SAFe
Several types of components are installed with activation of the Agile - Scaled Agile Framework Essential SAFe plugin (com.snc.sdlc.safe), including tables and user roles.

Roles installed
Role

SAFe admin
[safe_admin]

Description

Contains roles

• Edits, creates, and deletes SAFe ART,
epics, features, stories, and program
increments.

• safe_art_user

• Has read-only access to SAFe teams.
SAFe scrum product
owner
[safe_product_owner]

• Maintains the team backlog and can edit,
create, and delete SAFe stories.

• safe_scrum_master
• safe_product_owner

safe_story_creator

• Has access to create PI objectives.
• Has read-only access to SAFe ART, teams,
epics, and features.
• Has read-only access to SAFe program
increments.

SAFe ART user
[safe_art_user]

• Maintains the ART backlog and can edit,
create, and delete SAFe epics, features,
stories, and program increments.

safe_story_creator

• Has access to create PI objectives.
• Edits SAFe teams.
• Has create and edit access to SAFe ART.
SAFe scrum master
[safe_scrum_master]

• Edits, and deletes SAFe stories.

safe_story_creator

• Has access to create PI objectives.
• Edits SAFe teams.
• Has read-only access to SAFe ART, epics,
features, and program increments.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2091


<!-- page 2092 -->
Role

Description

Contains roles

• Has access to the triage board when the
Scaled Agile Framework — Unified Backlog
plugin (com.snc.sdlc.safe.multi_task) is
activated
SAFe scrum user
[safe_scrum_user]
SAFe scrum story
creator
[safe_story_creator]
SAFe scrum story
editor
[safe_story_editor]

Can view all elements of SAFe, but cannot
create, edit, or manage records of any type.

• Edits, creates, and deletes SAFe stories.

None

safe_story_editor

• Has read-only access to SAFe ART, teams,
epics, features, and program increments.

• Arranges stories within the team backlog
using the drag and drop feature.

• safe_scrum_user
• rm_scrum_task_admin

• Edits SAFe stories.
• Has read-only access to SAFe ART, teams,
epics, features, and program increments.

Tables installed
Table

Description

SAFe epic

Information about epics.

[sn_safe_epic]
SAFe feature

Information about features.

[sn_safe_feature]
Agile Release Train

Information about ART.

[sn_safe_program]
Program Increment
[sn_safe_program_increment]
SAFe ART team

Information about program increments. Stores the
predictability measure data from PI objectives.
Relationships between groups and ART.

[sn_safe_program_m2m_group]
SAFe ART Member

Information about members within an ART.

[sn_safe_program_member]
SAFe ART Sprint

Sprint schedules of teams within the ART.

[sn_safe_program_sprint]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2092


<!-- page 2093 -->
Table

Description

SAFe ART VTB Board

Records displayed on the ART level, Board tab.

[sn_safe_program_vtb_board]
SAFe Scrum Task

Information about SAFe scrum tasks.

[sn_safe_scrum_task]
SAFe Sprint

Information about sprints.

[sn_safe_sprint]
SAFe Story

Information about stories.

[sn_safe_story]
SAFe Team VTB Board

Records displayed on the Team level, Board tab.

[sn_safe_team_vtb_board]
SAFe PI Objectives

Stores the SAFe PI objectives.

[sn_safe_pi_objective]
SAFe team predictability
measure
[sn_safe_pi_m2m_group]

Stores the business value achieved per team from PI
objectives which is used for team-level predictability measure
data.

Quick start tests for Essential SAFe
Validate that Essential SAFe still works after you make any configuration change such as apply
an upgrade or develop an application. Copy and customize these quick start tests to pass when
using your instance-specific data.
Essential SAFe quick start tests require activating the Agile - Scaled Agile Framework - Essential
SAFe plugin (com.snc.sdlc.safe) and the Agile - Scaled Agile Framework - Essential SAFe - ATF
Tests plugin (com.snc.sdlc.safe.atf).
Essential SAFe test suites
Test

Essential SAFe: Feature tests

Essential SAFe: Feature tests

Description

Verify feature global rank
updates.
For a SAFe feature, verify that:

Release version

Madrid

Orlando

• Actual start date is
populated after the state is
changed to Implementation,
Validation on Staging, or
Deployment.
• Actual end date is
populated after the state
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2093


<!-- page 2094 -->
Essential SAFe test suites (continued)
Test

Description

Release version

is changed to Released or
Cancelled.
• Active flag is set to the
appropriate value:
◦ False, if the state is
changed to Released or
Cancelled.
◦ True, for all other states.
Essential SAFe: Feature tests

If the PPM Standard plugin
Quebec
(com.snc.financial_planning_pmo)
is active, verify that a Demand
can be converted to a SAFe
feature using the Create SAFe
Feature related link on the
Demand form.
For more information on how
to create an SAFe feature
from a demand, see Create an
artifact from a demand.

Essential SAFe: Program
increment tests
Essential SAFe: Sprint tests

Essential SAFe: Sprint tests

Verify program increment date Madrid
overlapping.
Verify the generation of ART
sprints and team sprints as
well as updates to sprint
points and dates.
Verify that any update to the
Group capacity field of the
assignment group results in
the following changes to the
Group capacity field of the
various sprints associated
with this assignment group:

Madrid

Paris

• For the sprints that are in
the Draft or Planning states:
◦ The group capacity is
updated to the new value.
◦ The Group capacity field
is editable.
• For the sprints in the
Current, Complete, or
Cancelled states:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2094


<!-- page 2095 -->
Essential SAFe test suites (continued)
Test

Description

Release version

◦ The group capacity
remains the old value.
◦ The Group capacity field
is read-only.
For the sprints in the Draft
or Planning state, you can
individually edit the group
capacity of the sprint anytime
later. This would not change
the group capacity of the
assignment group associated
with this sprint.
Essential SAFe: Story tests

Essential SAFe: Story tests

Verify story global rank
updates.
Verify that active flag of
the SAFe story is set to the
appropriate value:

Madrid

Orlando

• False, if the state of
the state is changed to
Completed or Cancelled.
• True, for all other states.
Essential SAFe: Story tests

Essential SAFe: Story tests

Essential SAFe: Story tests

Verify that adding, estimating,
removing, deleting, updating,
or cancelling a SAFe story
updates the SAFe featurelevel and then the epic-level
roll-ups correctly.
Verify that adding, updating, or
deleting the feature on a SAFe
story updates the Epic field on
the SAFe story form.

Orlando

Orlando

If the PPM Standard plugin
Quebec
(com.snc.financial_planning_pmo)
is active, verify that a Demand
can be converted to a SAFe
story using the Create SAFe
Story related link on the
Demand form.
For more information on how
to create a SAFe story from

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2095


<!-- page 2096 -->
Essential SAFe test suites (continued)
Test

Description

Release version

a demand, see Create an
artifact from a demand.
Essential SAFe: Team tests

Verify team association with
an ART.

Madrid

Essential SAFe: Epic tests

For a SAFe epic, verify that:

Orlando

• Actual start date is
populated after the
state is changed to
Implementation.
• Actual end date is
populated after the state is
changed to Complete.
• Active flag is set to the
appropriate value:
◦ False, if the state is
changed to Released or
Cancelled states.
◦ True, for all other states.
Essential SAFe: Epic tests

If the PPM Standard plugin
Quebec
(com.snc.financial_planning_pmo)
is active, verify that a Demand
can be converted to a SAFe
epic using the Create SAFe
Epic related link on the
Demand form.
For more information on how
to create a SAFe epic agile
from a demand, see Create an
artifact from a demand.

Essential SAFe: Program PI
Objective tests

Verify the functionality of
creating and updating PI
objectives

Rome

• Verify that you can create
a program increment-level
objective
• Verify that you can update
the created PI objective with
the planned business value
(PBV) and actual business
value (ABV)
• Verify that the percentage
of business value achieved
is computed as the
percentage of ABV
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2096


<!-- page 2097 -->
Essential SAFe test suites (continued)
Test

Description

Release version

complete, for only the
committed PI objectives, as
compared to the PBV of the
program in the PI
Essential SAFe: Team PI
Objective tests

Verify the functionality of
Rome
creating and updating team PI
Objectives
• Verify that you can create a
team-level PI objective
• Verify that you can update
the created PI objective with
the planned business value
(PBV) and actual business
value (ABV)
• Verify that the percentage
of business value achieved
is computed as the
percentage of ABV
complete, for only the
committed PI objectives, as
compared to the PBV of the
team in the PI

Related topics
Quick start tests

SAFe entities
Learn about the various SAFe entities that are used to successfully plan, track, and deliver your
software products.
Epic
Epic in SAFe is the largest unit of work, which can be continuously worked through
multiple program increments. Epic captures business hypotheses and is prioritized
and assessed using the WSJF (Weighted Shortest Job First is used to prioritize and
sequence jobs to produce optimum business value) score.
An epic is further decomposed into features for implementation and delivery by
SAFe ARTs.
Feature
A SAFe feature is equivalent to an epic in Agile Development. It must be small
enough for completion within a program increment cycle. It is prioritized and
sequenced in an ART backlog based on its global ranking. A feature is further
decomposed into user stories for implementation and delivery by SAFe teams.
Story

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2097


<!-- page 2098 -->
A SAFe story is a brief statement encapsulating a product requirement or business
case written in user-centric language. A story must be small enough for completion
in one sprint. The estimated effort required to complete a story is measured in story
points. More points are assigned to a story requiring more effort. Story points are
arbitrary measurements of the effort (not necessarily the time) required to complete
a story, based on the estimates from the SAFe team members.
Agile Release Train
Agile Release Train (ART) comprises a set of teams working towards a single
solution.
Program Increment
A program increment is set period during which teams in an ART collaborate and
produce to achieve agreed-upon goals. A program increment in SAFe is similar to
a sprint in Agile Development, typically spanning 8–12 weeks. The most common
form of program increment comprises four development sprints followed by one
innovation and planning sprint.
SAFe team
SAFe team is an autonomous, cross-functional team containing members
possessing different skill-sets who work in collaboration to achieve a common goal.
A user with the safe_scrum_master or safe_art_user role can create a SAFe team.
You can assign these teams to SAFe work items such as stories, epics, and features.
Once a SAFe team is created, you can add members to it.
• New customers: System administrator can add members to the team.
• Existing customers: A user with the safe_scrum_master or safe_art_user role can
add members to your SAFe team.

Note:
You can restrict this function just to the system administrator by creating the
safe.disallow_scrum_add_group_member property and setting it
to true.
For information on how to create a property, see Add a system property

.

Sprint
Program Increments in SAFe are further segmented into sprints for teams involved
in it, and are measured in terms of weeks.
Define an epic in SAFe
Create an epic within SAFe. An epic is the largest unit of work that has one common objective
such customer request, or business requirement. An epic is further decomposed into features for
implementation and delivery by SAFe agile release trains (ARTs).

Before you begin

Role required: safe_art_user or safe_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2098


<!-- page 2099 -->
Procedure
1. Create an epic using either of the following options.
Option

Steps

a. Navigate to Scaled Agile Framework
(SAFe).
b. From the list, select the ART level.
From the Backlog tab

c. From the adjacent list, select the required
ART value.
d. Select the Backlog tab.
e. From the Create list, select Create Epic.
The epic is displayed in the Backlog tab
with the state as Backlog.
a. Navigate to Scaled Agile Framework
(SAFe) > Epics.

From the Epics module

From the Portfolios module

b. Click New. The epic is displayed in the
Epics list and Backlog tab with the state as
Funnel.
a. Navigate to Scaled Agile Framework
(SAFe) > Portfolios.
b. In the SAFe epics related list, click New.

2. In the form, fill in the fields:
SAFe Epic Form
Field

Description

Number

System-generated number for the epic.

Enabler

Check box identifying the epic as an enabler. Enablers do not add direct
business value but help lay a foundation for future work. For example, an
enabler epic might be an investigation into the architecture used to build
features.

State

State of the epic:
◦ Funnel: Created from Scaled Agile Framework (SAFe) > Epic.
◦ Review: Under review considering parameters like WSJF score and WIP
limited.
◦ Analysis: Approved or rejected based on parameters like WSJF score
refinement, cost estimation, alternatives, and WIP limited.
◦ Backlog: Approved and assigned to an ART. In this state, the ART level user
segments the epic into features.
◦ Implementation: Epic is being implemented.
◦ Done: Implementation is complete.

Color

Color that you attribute to the epic. Epic colours help you visually identify and
group features by their epic on the ART's backlog page of the SAFe board.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2099


<!-- page 2100 -->
Field

Description

WSJF
Score

Weighted Shortest Job First (WSJF) score is used to prioritize and sequence
jobs to produce optimum business value. A job with the highest WSJF score
receives the highest priority for implementation. A job can refer to an epic,
feature, or any business capability.

Short
Brief description of the epic.
description
Description A more detailed description of the epic.
Weighted shortest job first score section of the Epic form
Field

Description

User-business Value

Business value of the job based on
parameters like impact on revenue or other
solutions in the market offering similar
capabilities.

Time criticality

Impact on the business when deadlines are
missed. For example, how projected revenue
gains are reduced over time when deadlines
are shifted.

Risk reduction

Analyze how much risk this epic can help you
avoid by answering questions such as:
◦ Does the job add value to the business in
other ways?
◦ Does the job bring in new business
opportunities?
◦ Does the job reduce the risk for a future
delivery?

Job size

Estimated duration for completion of the job.

Total story count

Number of active stories in the epic.
This field is not displayed by default.
Configure the field in the form layout.

Completed count

Number of stories that have been completed
in the epic.
This field is not displayed by default.
Configure the field in the form layout.

Percent complete by count

Percentage of work that has been completed
in the epic. Value is calculated by story count.
This field is not displayed by default.
Configure the field in the form layout.

Total estimate

Sum of estimates of all the active stories in
the epic.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2100


<!-- page 2101 -->
Field

Description

This field is not displayed by default.
Configure the field in the form layout.
Completed estimate

Sum of estimates of all the completed stories
in the epic.
This field is not displayed by default.
Configure the field in the form layout.

Percent complete by estimate

Percentage of work that has been completed
in the epic. Value is calculated by points
(estimate) of stories in the epic.
This field is not displayed by default.
Configure the field in the form layout.

Missing estimates

Number of stories without estimation points.
This field is not displayed by default.
Configure the field in the form layout.

Top program

Program mapped to the SAFe work enabling
top-down hybrid planning. All the active child
SAFe features of this epic are automatically
associated with the selected program.
This field is visible in the SAFe view of the
epic form if you activate the PPM Standard
plugin (com.snc.financial_planning_pmo).

3. Fill in the Planning section if you want to create benefit plans for the epic.
This section is available when the Benefit view is selected.
Planning section of the Epic form
Field

Description

Planned
start date

Projected start date for the epic. The planned start date can be the current date
or a future date.

Planned
end date

Projected end date for the epic. The planned end date must be after the
planned start date.

Planned
benefit

Benefit value that is rolled up from the benefit breakdown.

Actual start Actual start date for the epic. The actual start date can be on or before the
date
planned start date.
Actual end
date

Actual end date for the epic. The actual end date can be before the planned
start date but not before the actual start date.

Actual
benefit

Actual benefit value that is rolled up from the actual benefit in the benefit
breakdown.

4. Click Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2101


<!-- page 2102 -->
Create a monetary benefit plan for an epic
Epic benefit plans capture the potential benefits accrued by the epic when the epic is executed.
Create a monetary benefit plan to specify the estimated benefit in a category spanning one or
more fiscal periods.

Before you begin

Role required: safe_product_owner, safe_scrum_master, or safe_admin

About this task

The monetary benefit plan breakdown records are automatically created when you save the
benefit plan.

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Click the hamburger icon (

) and navigate to View > Benefit.

4. On the form, fill in the fields in the Planning section.
This section is available when the Benefit view is selected.
Planning section of the Epic form
Field

Description

Planned
start date

Projected start date for the epic. The planned start date can be the current date
or a future date.

Planned
end date

Projected end date for the epic. The planned end date must be after the
planned start date.

Planned
benefit

Benefit value that is rolled up from the benefit breakdown.

Actual start Actual start date for the epic. The actual start date can be on or before the
date
planned start date.
Actual end
date

Actual end date for the epic. The actual end date can be before the planned
start date but not before the actual start date.

Actual
benefit

Actual benefit value that is rolled up from the actual benefit in the benefit
breakdown.

5. Save the record.
6. In the Monetary Benefit Plans related list, click New.
7. On the form, fill in the fields.
Benefit Plan form
Field

Description

Name

Descriptive name of the benefit plan.

Work

Epic to which the benefit plan belongs.

Sponsor

Sponsor for the epic.

Category

Type of benefit:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2102


<!-- page 2103 -->
Field

Description

◦ Hard: Benefits that can be measured in terms of revenue.
◦ Soft: Benefits that are measured in terms of value.
Sub
category

Sub-categories of hard and soft benefits.

Benefit
type

Type of benefit. Select Monetary benefits.

The selection in Category field determines the selections available in this field.

Offset type Field to indicate when the benefits start realizing. Select any of the following
options:
◦ None: The default value is None. When you select None, you need to
manually enter the benefit plan start and end fiscal periods.
◦ Milestone: After completion of a milestone.
◦ Start Date: At the start of the epic.
◦ End Date: After the epic ends.
If the value in the selected offset type changes, the benefit plan start date shifts
accordingly. For example, if the offset type is set to End Date and the end date
of the epic changes, the benefit plan start date shifts to align with the new end
date of the epic.
Milestone

Epic milestones to which the benefit plan belongs. The field appears if you
select Milestone in the Offset type field.

Milestone
start date

Start date of the selected milestone. The field appears if you select Milestone in
the Offset type field.

Work start
date

Start date of the epic. The field appears if you select Start Date in the Offset
type field.

Work end
date

End date of the epic. The field appears if you select End Date in the Offset type
field.

Offset

Number of periods before or after the offset type when the benefit plan starts.
For example, if the offset type is selected as End Date and the offset is -2, the
benefit plan is two periods prior to the epic end date. If the epic end date shifts,
the benefit plan start date shifts to two periods prior to the new epic due date.

Duration in The length, in periods, of the benefit plan.
periods
Start fiscal
period

Starting fiscal period. Populated based on the value in the Offset field relative
to the selected Milestone, Work start date, or Work end date, and Duration in
period values.
The field is editable if you select None in the Offset type field.
When you change the start fiscal period, the associated benefit breakdown
values also change.

End fiscal
period

Ending fiscal period. Populated based on the value in the Offset field relative
to the selected Milestone, Work start date, or Work end date, and Duration in
period values.
The field is editable if you select None in the Offset type field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2103


<!-- page 2104 -->
Field

Description

When you change the end fiscal period, the associated benefit breakdown
values also change.
Associated Non-monetary benefit that is associated to this monetary benefit plan.
benefit
Benefit Plan form - Financials details
Field

Description

Entered benefit

Benefit incurred from the epic specified in
terms of entered currency.

Entered currency

Currency in which you want the benefit plan
to be created.

Functional currency

Currency that is obtained from the
glide.system.locale property .

Total planned benefit

Estimated amount of potential benefit of the
epic.

Benefit in functional currency

Benefit incurred from epic in terms of
functional currency. The value in this field
changes if the Entered currency is different
from the functional currency.

Actual benefit

Actual benefit that is incurred from the epic.
This value is rolled up from the Actual benefit
field of all the benefit plan breakdowns.

Recurring

Option to indicate that the benefit is recurring
for all the fiscal periods in the benefit plan.

8. Click Submit.

What to do next

On the Benefit Plan form, view the benefit breakdown by fiscal period in the Monetary Benefit
Plan Breakdowns related list.
Update a monetary benefit plan breakdown for an epic
Update a monetary benefit plan breakdown record that specifies the estimated and actual
benefits, at a granular level, for specific fiscal periods.

Before you begin

Role required: safe_product_owner, safe_scrum_master, or safe_admin

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Click the hamburger icon (

) and navigate to View > Benefit.

4. Click the Monetary Benefit Plans related list.
5. Open the required monetary benefit plan.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2104


<!-- page 2105 -->
6. In the Monetary Benefit Plan Breakdowns related list, click the information icon (
monetary benefit plan breakdown.

) for a

7. Click Open Record.
8. On the Monetary Benefit Plan Breakdown form, view and update the enabled fields.
Field

Description

Task

Task to which the benefit plan breakdown be­
longs.

Portfolio

Portfolio to which the benefit plan breakdown
belongs.

Entered currency

Currency specified in the benefit plan.

Exchange rate

Rate in effect for the period corresponding
to the benefit plan breakdown. When the pe­
riod corresponding to the benefit plan break
down has multiple rates, the rate in effect on
the first date of that period is used.
Exchange rate is used to convert the entered
benefit into the functional benefit. It is ob­
tained from the itfm_fx_rate [budget_refer­
ence_rates] table.

Actual benefit

Actual benefit that is incurred from the epic.

Benefit plan

Benefit plan to which the benefit plan break­
down belongs.

Fiscal period

Fiscals generated at the period level. For infor­
mation on periods, see
.

Entered benefit

Benefit in entered currency.

Functional benefit

Functional benefit obtained by multiplying
the exchange rate with the entered benefit.

Exchange rate date

First date of the fiscal period corresponding
to the benefit plan breakdown.

9. Click Update.
Create a non-monetary benefit plan for an epic
Epic benefit plans capture the potential non-financial benefits accrued by the epic when the epic
is executed. Create a non-monetary benefit plan to specify the estimated benefit in a category
spanning one or more fiscal periods.

Before you begin

Role required: safe_product_owner, safe_scrum_master, or safe_admin

About this task

The non-monetary benefit plan breakdown records are automatically created when you save the
benefit plan by selecting Automatic or Manual in the Breakdown Type field. The non-monetary
benefit plan breakdown records specify the estimated and actual non-financial benefits at a
granular level for specific fiscal periods, such as FY16: April and FY16: May. The Non-monetary
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2105


<!-- page 2106 -->
Benefit Plan Breakdowns related list shows the aggregated benefits for estimated and actual
non-financial benefits for each fiscal period for the epic.

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Click the hamburger icon (

) and navigate to View > Benefit.

4. On the form, fill in the required fields in the Planning section.
This section is available when the Benefit view is selected.
Planning section of the Epic form
Field

Description

Planned
start date

Projected start date for the epic. The planned start date can be the current date
or a future date.

Planned
end date

Projected end date for the epic. The planned end date must be after the
planned start date.

Planned
benefit

Benefit value that is rolled up from the benefit breakdown.

Actual start Actual start date for the epic. The actual start date can be on or before the
date
planned start date.
Actual end
date

Actual end date for the epic. The actual end date can be before the planned
start date but not before the actual start date.

Actual
benefit

Actual benefit value that is rolled up from the actual benefit in the benefit
breakdown.

5. Save the record.
6. Click the Non-monetary Benefit Plans related list.
7. To create a non-monetary benefit plan, click New.
8. On the form, fill in the fields.
Benefit Plan form
Field

Description

Name

Descriptive name of the benefit plan.

Work

Epic to which the benefit plan belongs.

Sponsor

Sponsor for the epic.

Category

Type of benefit:
◦ Hard: Benefits that can be measured in terms of revenue.
◦ Soft: Benefits that are measured in terms of value.

Sub
category

Subcategories of hard and soft benefits.
The value of the Category field determines the choices available in this field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2106


<!-- page 2107 -->
Field

Description

Benefit
type

Type of benefit. Select Non-monetary benefits.

Offset type Field to indicate when the benefits start to be realized. Select any of the
following options:
◦ None: The default value is None. When you select None, you must manually
enter the benefit plan start and end fiscal periods.
◦ Milestone: After completion of a milestone.
◦ Start Date: At the start of the epic.
◦ End Date: After the epic ends.
If the value in the Offset type field changes, the benefit plan start date shifts
accordingly. For example, if the Offset type field is set to End Date and the end
date of the epic changes, the start date of the benefit plan shifts to align with the
new end date of the epic.
Milestone

Epic milestones to which the benefit plan belongs. This field appears only when
Milestone is selected from the Offset type field.

Milestone
start date

Start date of the selected milestone. This field appears only when Milestone is
selected from the Offset type field.

Work start
date

Start date of the epic. This field appears only when Start Date is selected from
the Offset type field.

Work end
date

End date of the epic. This field appears only when End Date is selected from the
Offset type field.

Offset

Number of periods before or after the offset type when the benefit plan starts.
For example, if the offset type is selected as End Date and the offset is -2,
the benefit plan is two periods prior to the epic end date. If the epic end date
changes, the benefit plan start date shifts to two periods prior to the new epic
due date.

Duration in The length, in periods, of the benefit plan.
periods
Start fiscal
period

Starting fiscal period. This field is populated based on the value in the Offset
field relative to the selected Milestone, Work start date, or Work end date, and
Duration in periods field values.
This field is editable if you select None in the Offset type field.
When you change the start fiscal period, the associated benefit breakdown
values also change.

End fiscal
period

Ending fiscal period. This field is populated based on the value in the Offset
field relative to the selected Milestone, Project or Demand start date, or Project
or Demand end date, and Duration in period values.
This field is editable if you select None in the Offset type field.
When you change the end fiscal period, the associated benefit breakdown
values also change.

Associated Monetary benefit that is associated to this non-monetary benefit plan.
benefit
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2107


<!-- page 2108 -->
Non-monetary Details section of the Benefit form
Field

Description

Measure

Type of measure for the non-monetary
benefit plan. The measure types are Count,
Percentage, Hours, Days, and Score.
Select the option Yes/No to track the benefits
that are not quantifiable. When this option is
selected, the only field available is Benefits
achieved. You can select the check box
to indicate that the benefits have been
achieved.

Non-monetary entered benefit

Estimated value of the potential benefit.
Any change in the planned benefit in the
benefit plan updates the associated benefit
breakdown values for future fiscal periods
only.

Non-monetary planned benefit

Benefit value that is rolled up from the benefit
breakdown.

Benefits achieved

Option to indicate if the benefit is achieved.

Breakdown type

Type of breakdown creation when you save
the benefit plan.
◦ None: No breakdowns are created.
◦ Automatic: A Non-monetary Benefit
Plan Breakdowns record is created
automatically with data. The breakdown is
calculated linearly.
◦ Manual: A Non-monetary Benefit Plan
Breakdown record is created automatically
but without data in the Entered benefit
column.

Aggregation mode

Determines how the roll-up happens from
breakdowns to the benefit plan and updates
the values in the Non-monetary planned
benefit and Non-monetary actual benefit
fields.
◦ Sum: Aggregates data from all breakdowns.
◦ Average: Average value from all
breakdowns.
◦ Most recent: Recent breakdown value.
◦ Max: Maximum value among the
breakdowns.
◦ Min: Minimum value among the
breakdowns.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2108


<!-- page 2109 -->
Field

Description

Non-monetary actual benefit

Actual benefit value that is rolled up from the
actual benefit in the non-monetary benefit
plan breakdown.

9. Click Submit.

What to do next
• On the Benefit Plan form, view the benefit breakdown by fiscal period in the Non-monetary
Benefit Plan Breakdowns related list.
• Associate monetary and non-monetary benefit plans, so that you can capture the potential
benefits (financial and non-financial) accrued by the epic for the hybrid benefit plans.
Update a non-monetary benefit plan breakdown for an epic
Update a non-monetary benefit plan breakdown record that specifies the estimated and actual
benefits, at a granular level, for specific fiscal periods.

Before you begin

Role required: safe_product_owner, safe_scrum_master, or safe_admin

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Click the hamburger icon (

) and navigate to View > Benefit.

4. Click the Non-monetary Benefit Plans related list.
5. Open the required non-monetary benefit plan.
6. In the Non-monetary Benefit Plan Breakdowns related list, click the information icon (
non-monetary benefit plan breakdown.

) for a

7. Click Open Record.
8. On the Non-monetary Benefit Plan Breakdown form, view and update the enabled fields.
Field

Description

Task

Task to which the benefit plan breakdown be­
longs.

Portfolio

Portfolio to which the benefit plan breakdown
belongs.

Measure

Measure type specified in the benefit plan.

Actual benefit

Actual benefit that is incurred from the project
or demand.

Benefit plan

Benefit plan to which the benefit plan break­
down belongs.

Fiscal period

Fiscals generated at the period level. For infor­
mation on periods, see
.

Entered benefit

Benefit in entered value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2109


<!-- page 2110 -->
Field

Description

Variance

The difference between the estimated and ac­
tual benefit.

9. Click Update.
Associate monetary and non-monetary benefit plans
Associate monetary and non-monetary benefit plans, so that you can capture the potential
benefits (financial and non-financial) accrued by the epic for the hybrid benefit plans.

Before you begin

Role required: safe_product_owner, safe_scrum_master, or safe_admin

About this task

You can associate a monetary benefit plan with a non-monetary benefit plan and vice versa.

Note: When you delete a benefit plan, any relationship with the associated benefit plan is
also removed.

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Select View > Benefit from the Additional actions menu (

).

4. Click the Monetary Benefit Plans or Non-monetary Benefit Plans related list.
5. Click the information icon (

) for a benefit plan that you want to associate.

6. Click Open Record.
7. Associate a monetary or non-monetary benefit plan.
Option

Action

Associate an existing benefit plan

On the Benefit Plan form, fill in the Associat­
ed benefit field with the benefit plan that you
want to associate.
a. On the Benefit Plan form, click Associate
new benefit.

Associate a new benefit plan

b. On the form, fill in the fields. For details, see
Create a monetary benefit plan for an epic
and Create a non-monetary benefit plan for
an epic.

8. Click Save.

Result

The selected benefit plan is associated with another plan.

What to do next

Click the View Associated benefit plan related link to view the associated benefit plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2110


<!-- page 2111 -->
Generate labor costs for epics
View the labor cost expenses based on the resource assignments for your epics.

Before you begin
• The epic should have the resource assignments.
• Role required: sn_spm_financial_user

Procedure
1. Navigate to All > Agile Development > Epics.
2. Select the required epic.
3. Select the Generate labor costs related link.
Refresh the page to view generated labor costs in the Cost Plan related list.
Define a feature in SAFe
Create a feature in SAFe and break it down into smaller user stories for implementation and
delivery by SAFe teams.

Before you begin

Role required: safe_art_user or safe_admin

Procedure
1. Create a feature using any of the following options.
Option

Steps

a. Navigate to Scaled Agile Framework
(SAFe) > SAFe Board > Backlog.
b. From the list, select ART.
From the Backlog tab

c. From the adjacent list, select your agile re­
lease train (ART).
d. From the Create list, select Create Feature.
The feature is displayed in the Backlog tab
with the state as Backlog.

From the Feature module

a. Navigate to Scaled Agile Framework
(SAFe) > Features.
b. Click New.

From the Epics module

a. Navigate to Scaled Agile Framework
(SAFe) > Epics.
b. Click any epic.
c. In the SAFE Features related list, click New.

From the Agile Release Trains module

a. Navigate to Scaled Agile Framework
(SAFe) > Agile Release Trains.
b. Click any agile release train.
c. In the SAFe Features related list, click New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2111


<!-- page 2112 -->
You can also convert an active SAFe story into a SAFe feature. For details, see Related links
and lists for a SAFe story.
2. On the form, fill in the fields.
SAFe Feature Form
Field

Description

Number

System-generated number for the feature.

Enabler

Option that identifies a feature as an enabler. An enabler does not bring any
business value but helps in laying the foundation for future work. For example,
you can use an enabler to investigate the architecture that is used to build
stories.

Color

Color that you attribute to the feature. Feature colors help you visually identify
and group stories by their feature on the team's backlog page of the SAFe
board.
This color also appears as a filled circle on the SAFe story cards on the SAFe PI
planning board so that you can identify its feature.

WSJF
score

Weighted Shortest Job First (WSJF) score that you use to prioritize and
sequence jobs to produce an optimum business value.
A job with the highest WSJF score receives the highest priority for
implementation. A job can be an epic, feature, or any business capability.

State

State of the feature. Select one of the following:
◦ Funnel: In this state, you can create features from approved ideas.
◦ Analysis: In this state, the product management team reviews the features
and considers the acceptance criteria, benefit hypothesis, technical
feasibility, and scope estimates.
◦ Backlog: In this state, you can prioritize approved features and assign them to
an ART.
◦ Implementation: In this state, you can break down a feature into stories that
you can later assign to a team.
◦ Validation on staging: In this state, you can integrate the feature in the
system and present it to the product management team for approval and
feedback.
◦ Deployment: In this state, the deployment testing of feature is complete.
◦ Released: In this state, you are ready to release the feature to the end users
and assess the benefit hypotheses.
◦ Cancelled: In this state, a feature has been canceled.

SAFe epic

Epic to which the feature belongs.

Agile
release
train

Agile release train to which the feature belongs.

Program
increment

Program increment in which the feature is scheduled for completion.

SAFe team

Team that is primarily responsible for the delivery of the feature.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2112


<!-- page 2113 -->
Field

Description

Short
Brief description of the feature.
description
Description Detailed description of the feature.
Work notes Work notes that indicate the progress of the feature at various stages in its life
cycle.
Weighted shortest job first section of the SAFe Feature form
Field

Description

User-business Value

Estimate of the business value of the job from
this feature. Consider the impact on revenue
or other solutions in the market that offer
similar capabilities.

Time criticality

Estimated impact on the business when
deadlines are missed. For example, consider
how shifting deadlines can reduce the
projected revenue gain.

Risk reduction

Analysis of how much risk this feature can
help you avoid. Answer questions such as the
following:
◦ Does the job add value to the business in
other ways?
◦ Does the job bring in new business
opportunities?
◦ Does the job reduce the risk for a future
delivery?

Job size

Estimated duration for completion of the job.

3. Click Submit.

What to do next

Use the SAFe stories related list to view and add stories to the feature.
Related topics
Define a story in SAFe
Split a SAFe feature
Split a SAFe feature into two separate features so that you can track complete and incomplete
stories. You can move the feature with the incomplete stories to your backlog or to a future
program increment (PI) so that you can maintain accurate metrics of the previous sprints and PIs.

Before you begin

Role required: safe_art_user or safe_admin

About this task

If your SAFe feature has incomplete stories at the end of a PI, you can split this feature into two
features.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2113


<!-- page 2114 -->
The new feature has a reference to the original feature and the field values are copied from the
original feature.
The completed stories of the original feature move to a new feature whose state is set to
Released.

Note: To split a SAFe feature, you must have at least one complete and incomplete story
each.

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the list at the top-left corner, select the level as ART and select your agile release train.
3. Click the Backlog tab.
4. Select the List view.

5. From your current PI section, locate the SAFe feature that has incomplete stories and click its
number to open its form.
You can click Complete to get the list of incomplete features.
6. On the feature form, click the Move completed stories to new feature related link.
◦ The updated feature form shows only those stories that are incomplete.
◦ The new feature contains the completed stories from the original feature.
◦ The Original feature field on the new feature references to the original feature that you've
split.

Note: Configure your feature form layout to view this field.
◦ "- Completed" is appended to the short description of the new feature to indicate that it is
complete.

What to do next

Schedule the feature that has incomplete stories to your backlog or a new PI of your choice.
Define a story in SAFe
Create high-level definitions of your requirements in the form of stories in SAFe.

Before you begin

Role required: safe_sprint_planner, safe_art_user, safe_scrum_master, safe_story_editor,
safe_team_member, or safe_admin

Procedure
1. Create a story using either of the following options.
Option

Steps

From the Story module

a. Navigate to Scaled Agile Framework
(SAFe) > Stories.
b. Click New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2114


<!-- page 2115 -->
Option

Steps

a. Navigate to Scaled Agile Framework
(SAFe) > Feature.
From the SAFe stories related list

b. Click any feature.
c. Click the SAFe Stories related list and click
New.

2. In the form, fill in the fields:
SAFe Story Form
Field

Description

Number

System-generated number for the story.

Feature

Feature to which the story belongs.

SAFe epic

Epic to which the story belongs.

SAFe sprint Sprint in which the story is scheduled for completion.
Points

Number of points indicating the estimated effort required to complete the story.
A larger point value indicates that a greater amount of effort is required.

State

State of the story. Select one of the following:
◦ Draft: In this state, the story requirements, such as the description and
acceptance criteria, are still being drafted.
◦ Ready: In this state, the story is marked as ready to be picked up by the
development team.
◦ Work in Progress: In this state, the development team works on the story
and records their changes in the work notes field.
◦ Ready for Testing: In this state, the story is marked as ready to be taken up
by a tester.
◦ Testing: In this state, the tester works on testing the story based on the
requirements provided in the story.
◦ Complete: In this state, the development and testing efforts on a story are
complete.
◦ Cancelled: In this state, a story has been cancelled.
The default state for a new story is Draft.

SAFe team

Team to which the story is assigned.

Assigned to User to which the story is assigned.
Enabler

Check box identifying the story as an enabler. Enablers do not add direct
business value but help lay a foundation for future work.

Short
description

Brief description of the story.

Description A more detailed description of the story.
Acceptance The functional criteria or testing results required to move the story to the state
criteria
of Complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2115


<!-- page 2116 -->
Field

Description

Work notes

Work notes indicating the progress of the story at various stages in its life cycle.

3. Click Submit.

What to do next
• Use the related links and lists of the story to create tasks for this story, or add dependencies of
the current story to other stories. You can also convert this story into a SAFe feature or split this
story into two, based on your requirements. For more information, see Related links and lists
for a SAFe story.
• You can create a story with the same details as this story using the Insert or Insert and Stay
options from the story additional actions (

).

When you use Insert and Stay, the form of the newly created story remains open so that you
can modify its details, create more stories with these details, or do both.
On SAFe Board, the new story is positioned right below the original story and the global rank of
the new story is set accordingly.

Note:
◦ Set the glide.ui.task.insert and glide.ui.advance properties to true to access these
actions.
◦ These actions are not allowed on stories added from the triage board.
Related links and lists for a SAFe story
Use the related links and related lists in your SAFe story form based on the actions that you need
to perform on your story.
The following are the related links and lists on a SAFe story form.
Related links of a SAFe story
Name

Description

Split Story

Splits the story into two stories by creating
a new story with the same details. Any
incomplete tasks from the old story are moved
to this new story.

Convert into feature

Converts an active story into a feature and
moves the story into the Cancelled state.
The following changes occur:
• The default state of the newly created
feature is Funnel.
• The canceled story is associated with the
newly created feature.
If the story that you created is too big, you can
convert it into a feature and then break it down
into multiple stories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2116


<!-- page 2117 -->
Related links of a SAFe story (continued)
Name

Description

Copy Story

Copies the details of an existing active story to
a new story. The tests and tasks of the story are
also copied.
The newly created story is moved set to the
Draft state.
This action is not available for stories that are
added from the triage board.

Related lists of a SAFe story
Name

Description

SAFe scrum tasks

Lists the scrum tasks created for the story.
Click New to create a scrum task.

Prerequisites Stories

Lists the stories that must be completed
before the current story can be completed.
Click Edit to add prerequisite stories.

Dependent Stories

Lists the stories that depend on the current
story. Click Edit to add dependent stories.

Tests

Lists the tests that are used for the story. Add
existing tests to the story.

Add dependencies to your SAFe stories
Set dependencies to your SAFe story by adding prerequisite and dependent stories to it. Using
the SAFe Planning board, you can distinguish these dependencies between stories during your
big room planning and replan the stories as required.

Before you begin

Role required: safe_story_creator

About this task

Prerequisite stories are the stories that must be completed before the current story can be
completed. Dependent stories are the stories that depend on the completion of the current story.

Procedure
1. Navigate to a story by using any of the following options.
Option

From the Stories module

From the SAFe planning board

Steps

a. Navigate to Scaled Agile Framework
(SAFe) > Stories.
b. Click the story that you want to add depen­
dencies to.
a. Navigate to Scaled Agile Framework
(SAFe) > SAFe Board.
b. Click Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2117


<!-- page 2118 -->
Option

Steps

c. Select your agile release train (ART) and
program increment (PI).
d. Click the Stories view.
e. On the planning board, locate and open
the story that you want to add dependen­
cies to.
2. In the Prerequisite Stories or Dependent Stories related lists, add stories according to the
dependencies.
3. Click Save.
4. Click Update.
If you're on the SAFe planning board, click the dependencies icon (
dependency lines between stories.

) to show or hide

Define an Agile Release Train
From SAFe, define an Agile Release Train (ART) which is a group of agile teams working towards a
single solution.

Before you begin

Role required: safe_admin

Procedure
1. Create an agile release train using either of the following options.
Option

Steps

From the Agile Release Train module

a. Navigate to Scaled Agile Framework
(SAFe) > Agile Release Trains.
b. Click New.

From the Portfolio form

a. Navigate to Scaled Agile Framework
(SAFe) > Portfolios.
b. In the Agile release trains related list, click
New.

2. Enter a suitable name for the agile release train and click Submit.

What to do next

Use the following related lists:

Related list

Description

Members

Add or remove members from the Agile Release Train. Members are on the ART,
but are not part of any specific agile team. For example, business owner, product
manager, release train engineer, or system architect.

Teams

Teams that are part of the Agile Release Train.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2118


<!-- page 2119 -->
Related list

Description

SAFe
features

View or add features to the Agile Release Train.

Program
View or add program increments.
increments
PI
List of all PI objectives of this ART. View, create, and update the PI objectives.
Objectives
This related list is visible in the SAFe view of the ART form.
Related topics
Define a feature in SAFe
Define a program increment in SAFe
Define a program increment in SAFe
With SAFe, define a program increment (PI). A program increment is typically 8–12 weeks long,
during which an ART delivers incremental value in the form of working, tested software and
systems.

Before you begin

Role required: safe_admin

Procedure
1. Navigate to the program increment form using either of the following options.
Option

Steps

a. Navigate to Scaled Agile Framework
(SAFe) > SAFe Board.
b. From the list, select ART.
From the Program Increment Planning tab

c. From the adjacent list, select the required
ART value.
d. Click the Backlog tab.
e. Click Create Program Increment.
a. Navigate to Scaled Agile Framework
(SAFe) > Agile Release Trains.

From the Program Increment related list

b. Click any Agile Release Train.
c. In the Program Increments related list,
click New.

2. On the form, fill in the fields:
SAFe Program Increment form
Field

Description

Number

System-generated number for the story.

Agile release
train

ART to which the PI belongs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2119


<!-- page 2120 -->
Field

Description

Sprint length

Duration of each of the sprints in the PI.

PI Capacity

Expected PI capacity; usually the aggregate of the group capacity of each
team for each sprint in the PI.
Helps determine the load of planned features as compared to your expected
PI capacity

Name

Name of the PI.

State

Current state of the PI.
The default state is Draft.

Planned start
date

Start date of the PI.

Planned end
date

End date of the PI.

Number of
sprints

Number of sprints included in the program increment.

Total planned
business
value

Planned business value score set for all the objectives in this PI.

Total actual
business
value

Realized business value score for all the objectives in this PI

Business
value
achieved

Percentage of business value achieved computed using the total planned
and actual business value scores.

Field value is read-only and is calculated as the sum of all planned business
value scores of the committed PI objectives for this PI.

Field value is read-only and is calculated as the sum of all the actual
business value scores of both committed and uncommitted PI objectives for
this PI.

The sprints for the teams in the PI are determined from the values provided for Sprint length,
Planned start date, and Number of sprints.
3. Click Submit.

What to do next

Access the following related lists:

Related list Description

SAFe
features

List of features that are scheduled for completion in a program increment.

SAFe
stories

View, add, modify, or remove stories that are scheduled for completion in a
program increment.

SAFe
sprints

View, add, modify, or remove sprints in a program increment.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2120


<!-- page 2121 -->
Related list Description

SAFe
Teams

List of all teams that participated in the PI for an ART. Gain visibility into the scores
of the total planned and actual business value and percentage achieved for each
team.
This related list is visible in the SAFe view of the PI form.

PI
List of all the objectives for this PI. View, create, and update the PI objectives.
Objectives
This related list is visible in the SAFe view of the PI form.
Related topics
Define a feature in SAFe
Define a story in SAFe
Define a SAFe team
From SAFe, create an agile team and associate it to an ART.

Before you begin

Role required: admin

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Teams.
2. Click New.
3. On the form, fill in the fields:
Group form
Field

Description

Name

Suitable name for the group.

Manager

Designated servant leader of the team.

Group capacity (points)

Total capacity of the team per sprint measured in story points.

Group email

Email distribution list of the group.

Description

Suitable description for the group.

4. Click Submit.
5. Navigate to Scaled Agile Framework (SAFe) > Agile Release Trains.
6. Select an ART to which you want to associate the SAFe team.
7. Click Edit, to you associate your team to the ART.
8. Click Save.

What to do next

Use the following related lists:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2121


<!-- page 2122 -->
Related list

Description

Group
Members

Add or remove members from the group.

Stories

Add or edit stories assigned to the group.

Sprints

View or add sprints for the group.

PI Objectives

List of all PI objectives of this team. View, create, and update the PI
objectives.
This related list is visible in the SAFe view of the Group form.

SAFe PI objectives
Use SAFe program increment (PI) objectives to highlight the overall goals for a team or for an
agile release train (ART) in a PI.
SAFe PI objectives are created to summarize business and technical goals for the team or ART.
During PI planning, the teams first create their PI objectives that they intend to accomplish in
the upcoming PI. Program managers can then summarize the PI objectives into a separate set of
high-level PI objectives.
PI objectives can directly relate to a feature. But sometimes, multiple features can contribute to a
single objective. This situation could require a collaboration between multiple teams.
Although a team should ideally have around 7 to 10 PI objectives, there is no limit on the number
of objectives that a team can have.
PI objectives can be committed or uncommitted, either at the team level or program level. A
committed objective is an objective that your team is confident about reaching. In contrast, an
uncommitted objective is an objective that your team is less confident about reaching because
of different dependencies or other factors. The work for an uncommitted objective is planned but
it can vary within the scope of the PI.
As PI planning progresses and is finalized, the business owners assign a planned business value
(PBV) score to all the PI objectives. The score is on a scale of 1-10, where 1 indicates the lowest
priority and 10 indicates the highest priority. As the teams complete the PIs, the business owners
assign an actual business value (ABV) score to the PI objectives that are met. At the end of the
PI, the PBV and ABV scores are used to compute the achievement values for each team and also
for the ART as a whole.
Using the planned and actual business value scores of the PI objectives, SAFe ART members
can track the historical performance of the teams. By using that performance data, the ART
members can then chart the SAFe predictability measure of the PIs. These reports provide
visibility into the business value that the teams and ARTs provide on a PI-to-PI basis.
Define a SAFe PI objective
Create SAFe program increment (PI) objectives so that you can summarize the goals of your team
or agile release train (ART) for the upcoming PIs.

Before you begin

Role required: safe_art_user, safe_scrum_master, or safe_product_owner

About this task

Create your business and technical goals in the form of PI objectives. Associate your PI
objectives to an ART or to a team for the duration of a PI.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2122


<!-- page 2123 -->
Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > PI Objectives.
You can also use the PI Objectives related list on the SAFe team form, ART form, or PI form.
2. Click New.
3. On the form, fill in the fields.
SAFe Objective form
Field

Description

Number

System-generated number for the objective.

Program increment

PI that this objective is planned for.

Committed

Option to indicate if this objective is
committed or not.

Type

Type of the objective. Select from either
Program or Team.

Agile release train

ART that this objective is planned for.

Planned business value

Planned business value for this objective. The
field is set as an integer score in the range of
1-10. A score of 1 indicates the lowest priority,
whereas a score of 10 indicates the highest
priority.

Actual business value

Actual business value that is realized from this
objective. The field is set as an integer score
in the range of 1-10. A score of 1 indicates
the lowest priority, whereas a score of 10
indicates the highest priority.

Short description

Brief statement of the objective.

Description

Detailed summary of the objective. Ensure
that your description is not too technical or
vague.

Work notes

Work notes that indicate the progress of the
objective during the PI.

4. Click Submit.

SAFe Board — ART level
As a product manager, you can plan and monitor activities across teams within your agile release
train (ART) by accessing the ART level on the SAFe Board.
The ART level includes the following tabs:
• Board
• Backlog
• Planning

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2123


<!-- page 2124 -->
Board
The Board tab enables you to track all the features of your agile release train in a single view.
Board is built on visual task boards, which transform the navigation of the Classic Environment
into an interactive graphical experience. The visual task board interface provides a graphicrich environment for managing and collaborating. To learn more about the actions that can be
performed in the board, see Visual Task Boards .
You can move a feature from one lane to another, which in turn updates the state of the feature.
For example, when you move a feature from the Analysis lane to the Backlog lane, the state of the
feature updates to Backlog.
SAFe board ART-level

Backlog
The Backlog tab enables you to manage your ART backlog, and pre-plan the next program
increment on the level of features.
A program increment is a time frame in which various agile teams work in collaboration to
deliver a substantial amount of work towards the end of the program increment cycle. Program
increment in SAFe is equivalent to a sprint in Agile Development, typically spanning 8–12 weeks.
The most common form of program increment comprises four development sprints followed by
one innovation and planning sprint.
Program increment

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2124


<!-- page 2125 -->
Planning
The Planning tab facilitates a detailed planning of the upcoming program increment. It allows
ART members to discuss the features in the program increment, break them down into stories,
and pre-plan the sprints needed to complete the program increment. The Planning tab surfaces
the dependencies between stories and dependencies between features, which helps in the
planning process.
Planning tab

Track features in a board
Track the progress of features in the ART. View their transition from one state (lane) to another.

Before you begin

Role required: safe_admin or safe_art_user

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the choice list at the top left corner, select the level as ART.
3. Select the Board view.
4. Move a feature to the required state by dragging and dropping the feature card.
5. Optional: Add a feature to a specific state:
a. Click Add Card.
b. On the form, fill in the fields and submit it.
For more information on the Feature form fields, see Define a feature in SAFe.
Manage your ART backlog from the SAFe Board
Prioritize and manage features in your agile release train (ART) backlog. The ART backlog lists
only the active features that are not assigned to any program increment.

Before you begin

Role required: safe_art_user or safe_admin

About this task

On the SAFe Board, you can perform various actions to manage your backlog, such as adding
new features or managing existing features.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2125


<!-- page 2126 -->
Note: Steps 1 through 3 take you to where you can manage ART backlogs. Steps 4 through
11 provide guidance on different actions that you can perform on your SAFe Board. For
steps 4 through 11, choose whatever actions you want to take.

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the top-left corner of the SAFe Board, select the level as ART and select your ART.
3. Click the Backlog tab.
4. Add a feature to the backlog.
a. Click Create Feature.
b. Specify the required details in the Feature form.
c. Click Submit.
The feature is listed at the bottom of the backlog on the last page.
If you want to add a feature at a particular position in the backlog, select a feature just above
this position, and then click Create Feature. The new feature is now listed below the feature
that you selected.
5. Update a feature from the backlog.
a. Click the number of the feature that you want to update.
b. Edit the feature details and click Update.
6. To filter the list of epics in the Backlog and program Increment (PI) sections, use the epics that
are listed under the Features by SAFe epic section.
The Features by SAFe epic section lists only those epics that are assigned to your ART. The
section does not list epics that do not contain features.
7. Add an epic to the Features by SAFe epic section.
a. Select the options icon (

) that is next to the Create Feature option.

b. Select Create Epic.
c. On the SAFe Epic form, fill in the fields and submit the form.
For more details, see Define an epic in SAFe.
8. To arrange features within a Backlog page, use one of the following options.
◦ Use the mouse device to select and hold a feature, drag it to the required position, and drop
it.
◦ Use the keyboard. For more information, see Arrange a feature in the SAFe backlog page
using the keyboard.
9. To personalize the columns in a list, select the gear icon (

).

10. Perform various actions on a single feature or set of features.
a. Select the required features.
b. Click the options icon ( ) and select one of the following options.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2126


<!-- page 2127 -->
Option

Description

Move to top

Place the features at the top of the backlog
list.

Move to bottom

Place the features at the bottom of the back­
log list.

Move to next page

Move the features to the top of the backlog
list on the next page.

Move to previous page

Move the features to the top of the backlog
list on the previous page.

Move to page

Move the features to a page of your choice.
The features are listed at the bottom of the
new page that they are moved to.

Agile Release Train

Select the ART that you want to assign fea­
tures to.

SAFe Epic

Select the SAFe epic that the features belong
to.

Program Increment

Select the PI during which the features are
scheduled for completion.

11. To view records in a standard list, select the standard list icon (

).

Arrange a feature in the SAFe backlog page using the keyboard
Use the keyboard to move and arrange SAFe features in the Backlog tab of the SAFe Board.

Before you begin

Role required: safe_art_user or safe_admin

About this task

You can use the keyboard to change the order of a feature in the Backlog list or in the program
increment (PI) list.

Procedure
1. Highlight the feature by pressing the Tab key.
2. Press the Tab key again.
The context menu icon (

) on the feature is highlighted.

3. Select the feature by pressing the Enter key.
4. Move the feature to the desired position by using the Up and Down arrow keys.
5. Fix the position of the feature by pressing the Enter key.
Arrange multiple features in the SAFe Board using the keyboard
Use the keyboard to move and arrange multiple SAFe features in the Backlog tab of your SAFe
Board.

Before you begin

Role required: safe_art_user or safe_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2127


<!-- page 2128 -->
About this task

You can use the keyboard to rearrange multiple features in the Backlog list or in the program
increment (PI) list.

Procedure
1. Highlight a feature by pressing the Tab key.
2. Select the feature by pressing the Enter key.
3. Select multiple features by using the Up and Down arrow keys and the Shift or Control key.
◦ To select consecutive features, use the Down arrow key to highlight the last feature that you
want to select. Press the Shift and Enter keys.
◦ To select features that are in different positions on the page, use the Down arrow key to go
to the next feature that you want to select. Press the Control and Enter keys. Repeat this
process to select other features.
4. Highlight the context menu icon (

) of the feature by pressing the Tab key again.

5. Press the Enter key to group all the selected features.
The multiple features that you selected now appear grouped together.

6. Move the features to your desired position by using the Up and Down arrow keys.
7. Fix the position of the features by pressing the Enter key.
Schedule features for your program increments
Define a program increment (PI) and plan the features scheduled for completion within that PI.

Before you begin

Role required: safe_art_user or safe_admin

Procedure
1. Create features for PIs.
2. View current and future program increments either in a list view or on a Visual Task Board
(VTB).
3. Assess features in the backlog and move them to a PI.
Use the SAFe program list view
Use the SAFe program list view to create, organize, track, start, and complete your program
increments (PIs).
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2128


<!-- page 2129 -->
Before you begin

Role required: safe_admin or safe_art_user

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the list at the top-left corner, select the level as ART and select your ART.
3. Click the Backlog tab.
4. Select the List view.

5. To create a PI, click Create Program Increment.
Fill the required fields in the PI form. To edit an existing PI, click the program increment number
and edit the required details in a form.
6. To schedule a feature, drag the feature in the Backlog section and drop it in the required PI.
7. To personalise and view columns on a list, click

.

8. To start the first PI, click Start that appears in its section.
The Planning tab opens.
9. To complete a PI, click Complete that appears in its section.
A dialog box appears to indicate the number of completed and incomplete stories, features,
and sprints. Move incomplete features to a future program increment, or mark features and
remaining sprints as Complete.
Use the SAFe program roadmap view
Use the SAFe program roadmap view to track program increments (PIs) of your agile release train
(ART) and plan features for future PIs.

Before you begin

Role required: safe_admin or safe_art_user

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the list at the top-left corner, select the level as ART and choose your ART.
3. Click the Backlog tab.
4. Select the Roadmap view.

5. Schedule a feature by dragging the feature from the No Program increment lane and drop it in
the required program increment lane.
You can reschedule features from one PI lane into the other by rearranging the feature cards.
6. Add a feature directly to a PI lane by clicking Add Card at the bottom of the list in the lane.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2129


<!-- page 2130 -->
You can also click the more options icon ( ) and click Add card.
7. Hide a PI lane by clicking the more options icon ( ) and click Hide lane.
SAFe PI planning board
Use a centralized board to plan your program increments (PIs) for an agile release train (ART).
You can create and assign stories to teams, add and view story dependencies, track stories by
sprints, and re-plan these stories if required.
UI components of the SAFe PI planning board.
The SAFe PI planning board contains the following components that guide you during your
planning process.
Stories and Features toggle
Select the Stories toggle to plan stories of your PI into sprints.
Select the Features toggle to track the progress of all features of the PI.
SAFe PI selector
Select a PI that you want to plan or review.
Feature filter
Select a feature that is associated with your PI. By selecting a feature, you can filter
the stories on the program planning board and on the feature backlog pane. You
can analyze the workload from this feature and understand how the workload is
scheduled across sprints.
Story dependencies
Visually analyze dependencies between stories of different sprints and teams
by using the story dependency lines. Use the dependencies icon ( ) to show
or hide these dependency lines. If you choose to hide the dependencies or if
the dependencies involve a story that is not present on the board, you can see a
colored border on the story card.
The color of the dependency indicates the way you've scheduled the stories.
Possible colors are the following:
• Green: A prerequisite story is scheduled in a sprint that's before the sprint of the
dependent story.
• Yellow: A prerequisite story is scheduled in the same sprint as the dependent
story.
• Red: A prerequisite story is scheduled in a sprint that's after the sprint of the
dependent story. Review the dependency and reschedule the story as required.
If none of the stories are associated with a prerequisite or dependent story,
the dependencies icon ( ) is not visible. For information on how to add story
dependencies, see Add dependencies to your SAFe stories.
Feature Backlog pane
Use the backlog pane to view a list of all the features of the selected PI. You can do
the following actions for a feature:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2130


<!-- page 2131 -->
• View the description.
• Edit the information by clicking the feature's name.
• Add a new story to the feature by clicking Create Story.
• View the unassigned and unscheduled stories of this feature as cards that show
the short descriptions and story points.
SAFe Teams
View all the teams of the selected ART toward the left of the planning board. At a
time, the planning board can display a maximum of 15 teams. This limit is set to
ensure optimum performance of the board during planning activities.
Team backlog lane
See the stories that are assigned to the team but that aren't scheduled yet into any
sprint.
If you know which stories must be assigned to the team but you don't know what
sprints to use, then you can move these stories from the feature backlog lane to the
team's backlog lane. By doing so, you can have a clear idea of the team's workload
for the upcoming sprints and then eventually add these stories to the correct
sprints.
You can also unplan a story that has already been scheduled to a sprint by dragging
the story card back to the team's backlog. When you later revisit the planning board,
you know which team has this story and you can decide on which sprint to use.
Team sprint lanes
See the sprint cadences of the teams.
By pointing your cursor to a sprint's name, you can see the sprint details such as the
duration, total story points, and filled capacity. You can click the sprint name to edit
details such as group capacity, the planned start date, and the end date.
While planning your PI, if you know the sprint in which the story would be worked
on, then you can move the story card to that sprint.
Story cards
See the stories of your SAFe features in the form of cards. You can move these
cards around to assign them to teams and to plan them into sprints.
If you have activated the SAFe — Unified Backlog plugin
(com.snc.sdlc.safe.multi_task), then you can also see stories that were added from
the triage board into your unified backlog. From the PI planning board, you can
double-click a story card to open it in a modal form and edit its details. If the story
is created from a record on the triage board, such as an incident, then you can see
both the story information and the defect information side-by-side.
The story cards use the following indicators:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2131


<!-- page 2132 -->
Legend for story cards on the SAFe PI Planning board

Indicators for story cards on the SAFe PI Planning board
Number

Indicator description

1

Story is not complete.

2

Story is complete.

3

Story points.

4

Story is associated with a dependent story. If this band appears in
red or yellow, the color indicates that the dependency is not set
correctly and needs to be reviewed.

5

Story is associated with a prerequisite story. If this band appears
in red or yellow, the color indicates that the dependency is not set
correctly and needs to be reviewed.

6

Story belongs to a feature that has this color attributed to it. Point
your cursor to the dot to view the feature's name.

7

Story belongs to a feature that does not have a color attributed to
it. Point your cursor to the dot to view the feature's name.

8

Short description of the story.

9

Story is a regular story. This icon changes with the type of the
story record. For example, you can create stories from incidents,
enhancements, defects, problems, and other such records.

Note: Stories can be created from enhancements, defects, incidents, or
other such records only if you have activated the SAFe — Unified Backlog
plugin (com.snc.sdlc.safe.multi_task).
Sprint workload capacity bar
Plan a sprint efficiently by using the workload capacity bar that is located under a
sprint name. The bar indicates the workload that is planned for the team versus the
team's capacity for that sprint.
If the group capacity of a sprint is zero, then you can't view the details of the sprint
load and capacity.
Zoom in and zoom out
Adjust the board view using the zoom in icon (

) and zoom out icon (

).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2132


<!-- page 2133 -->
Search
Filter the stories on the planning board by using a search term. For example, you
can enter a story number or a phrase from a short description.
Stories list
View the list of all stories of the program by using the standard list view icon (

).

Plan a SAFe program increment
Plan your SAFe program increments (PIs) and track the progress of stories and features in an
interactive planning board.

Before you begin
Roles required:

• safe_scrum_user to view the Planning tab
• safe_story_creator to create stories

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. Click Planning.
3. From the list on the top-left of the screen, select ART and select your agile release train.
4. From the PI list, select a PI.
5. Select the Stories tab.

6. Assign stories to teams and sprints.
a. Click the feature backlog icon (

).

b. Optional: Add a new story to this feature by clicking Create Story in the backlog pane.
c. Drag a story card from the feature backlog pane and drop it in the required sprint or Backlog
lane of the team.
You can reschedule the stories across teams and sprints by rearranging the story cards.
◦ If you move the story card to a team's backlog, the SAFe team field is updated accordingly.
◦ If you plan the story card into a sprint, the SAFe team and the SAFe sprint fields of the story
are updated accordingly.
The sprint capacity bar below the sprint name fills up depending on the stories that are
scheduled for it.
7. Optional: Add dependencies between the planned stories.
(Optional) Dependencies that you add between stories automatically apply to the features of
the stories.
Click the dependencies icon (

) to show or hide dependencies between the stories.

For more information on story dependencies, see Add dependencies to your SAFe stories.
8. Optional: Update the group capacity of a team's sprint by clicking the sprint name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2133


<!-- page 2134 -->
Group capacity is the projected capacity of the group, in story points, for each sprint. If the
group capacity of a sprint is zero, you can't view the details of the sprint load and capacity.

Note: You can update the sprint details only if you have the safe_scrum_master role.
SAFe Board — Team level
As a team member, you can plan and monitor activities within your team by accessing the Team
level on the SAFe Board.
The Team level includes the following tabs:
• Backlog
• Sprint Tracking

Backlog
The Backlog tab enables you to plan and prioritize stories for a sprint or multiple sprints by
assessing stories in the backlog.
In addition, you can:
• Create stories.
• Reorder stories in the backlog using the drag feature. The story at the top of the backlog
assumes higher priority with a lesser rank value. The story at the bottom of the backlog
assumes lower priority with a higher rank value.
• Filter stories by a feature.
• Type a keyword in the search box to view only stories whose details match with the keyword.
• Create, organize, monitor, start, and complete sprints.
• View current and future sprints in chronological order.
• View these key aspects of a sprint: planned start and end dates, number of story points (total,
complete, and pending) for the current sprint.
• Assess stories in the backlog and drag them to sprints.
• Move unfinished stories from the completed sprint to the backlog or a future sprint.

Note: To see the backlog of your team on SAFe Board, ensure that your team is:
• Of the group type SAFe Team, with the role safe_scrum_user assigned to the team
members
• Added to Agile Release Trains

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2134


<!-- page 2135 -->
Sprint Tracking
The Sprint Tracking tab provides the following views:
Story board
Story board is built on visual task boards, which transform the navigation of lists
and forms into an interactive graphical experience. The visual task board interface
provides a graphic-rich environment suited for managing and collaborating records.
To know more about the actions that can be performed in the board, see Visual Task
Boards . In addition, you can:
• Track all the stories of the current sprint across lanes.
• Move stories from one lane to another, which in turn updates the state of the
stories.
• Filter stories based on search criteria.

Task board
Task board enables you to track all the scrum tasks of stories of the current sprint
across lanes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2135


<!-- page 2136 -->
• Move scrum tasks from one lane to another, which in turn updates the state of the
scrum tasks.
• Filter scrum tasks based on search criteria.

List
List displays scrum tasks and tests associated to stories in each sprint. You can:
• Add scrum task and tests without leaving the context of the record.
• View the state, short description, and assignee of the scrum task without drilling
down into details.
• View the short description and run result of a test.
• Assess scrum tasks and tests that are pending before the closure of current
sprint.

Manage your team backlog
Manage, evaluate, prioritize, and sequence stories in your team backlog.

Before you begin
• Program, to which the team belongs, must contain an active program increment.
• The tab displays only the sprints of the current program increment.
Role required: scrum_product_owner, scrum_master, safe_product_owner, or
safe_scrum_master

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2136


<!-- page 2137 -->
Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the choice list at the top-left corner, select the level as Team.
3. Select the Backlog tab.
4. To add a story to the backlog.
a. Click Create Story.
b. Specify the required details in the story form.
c. Click Submit.
The story appears at the bottom of the backlog.
5. To add a story to the backlog and simultaneously decide its order of implementation, perform
these steps.
a. Select a story in the backlog.
b. Click Create Story.
c. Specify the required details in the story form and click Submit.
The story is created beneath the story that was selected in the backlog.
6. The Records by SAFe feature section lists features that the records of the backlog belong to.
Select a feature. Only records that belong to this feature appear.
7. To open the triage board of a specific task type (such as problems or defects), view the total
numbers of records in the triage boards of all task types, edit the filter definition of a triage
board, or create another triage definition, click Triage Board.

Note: Triage Board link is displayed only when the Agile — Scaled Agile Framework —
Unified Backlog plugin (com.snc.sdlc.safe.multi_task) is installed.

8. To view records in a standard platform list, click
9. To personalize columns in a list, click

.

.

10. To move a triaged record from the Backlog tab to Triage Board.
a. Open the record in a form.
b. Click the Move back to triage board related link.
11. Use either of the following options to arrange stories that are not assigned to any sprint.
Action

Description

Using the drag feature

This option can be used to move stories with­
in the backlog, move stories from the backlog
to any sprint, or move stories from one sprint
to another. Point to a story in the backlog and
drag it to the required location.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2137


<!-- page 2138 -->
Action

Description

Using the keyboard

This option can be used to move stories only
within a backlog or a sprint. See Arrange sto­
ries using the keyboard.

12. To perform an action on a set of stories.
◦ Select the required stories.
◦ Click

and select any of the following options:

Option

Description

Move to top

Stories are placed at the top of the sprint.

Move to bottom

Stories are placed at the bottom of the sprint.

Feature

From the SAFe Features list, select the fea­
ture to which the stories belong.

Sprint

From the Sprints list, select the sprint in which
the stories are scheduled for completion.

SAFe Team

From the Groups list, select the team to which
you want to assign the stories.

Perform sprint planning
Perform sprint planning by evaluating stories in the backlog, selecting stories for the sprint, and
estimating work effort for the stories.

Before you begin

Role required: scrum_master
The tab displays only the sprints of the current program increment.

About this task

In SAFe, the main portion of sprint planning occurs during the Big Room Planning process. The
team backlog and the sprint planning portion of it is designed for refinement sessions. Though
the overall plan of each sprint of a program increment already exists, the team still has sprint
planning sessions every two weeks to add any missing stories and adjust the initial plan.

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the choice list at the top left corner, select the level as Team.
3. Select the Backlog tab.
4. To add a story to the sprint and simultaneously decide its order of implementation, perform
these steps:
a. Point to a story in the sprint.
b. Click Create Story.
c. Specify the required details in the story form and click Submit.
The story is created beneath the story that was selected in the backlog or a sprint.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2138


<!-- page 2139 -->
5. To personalize columns in a list, click

.

6. To start a sprint, click Start that appears at right corner of the first or top sprint.
7. To complete a sprint, click Complete Sprint that appears at right corner of the first or top sprint.
A dialog box appears indicating the number of completed and incomplete stories in the sprint.
Move incomplete stories, if any, to the backlog or a future sprint. Click Complete.
Track your SAFe tasks from the Board view
Track the progress of your SAFe stories and scrum tasks. View their transition from one state
(lane) to another in a visual task board.

Before you begin

Role required: safe_scrum_user or safe_admin

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the list at the top-left corner, select the level as Team.
3. Click the Sprint Tracking tab.
4. To track the progress of stories of the current sprint, select the Story board view.
a. To change the state of a story, move the story from one lane to another.
b. To add a story to a specific lane:
i. Click Add Task.
ii. In the form, fill in the fields.
iii. Click Submit.
5. To track the progress of scrum tasks of stories of the current sprint, select the Task board view.
a. To change the state of a scrum task, move the scrum task from one lane to another.
b. To add a scrum task to a specific lane:
i. Click Add Task.
ii. In the form, fill in the fields.
iii. Click Submit.
Track your SAFe team work from the list view
Create, execute, track, and complete the scrum tasks and tests of a SAFe story from the list view.

Before you begin

Role required: safe_scrum_user or safe_admin

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the list at the top left corner, select the level as Team.
3. From the adjacent list, select the required team value.
4. Click the Sprint Tracking tab, and select the List view.
5. To breakdown a story into scrum tasks:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2139


<!-- page 2140 -->
a. From the Show list at the top right corner, select Scrum Tasks.
b. Click Add Scrum Task.
c. On the form, fill in the fields.
Scrum Task form
Field

Description

Number

System generated number for the SAFe story.

SAFe story

SAFe story that is associated with the scrum task.

Priority

Priority set for the scrum task.

Type

Type of effort required to complete the scrum task.

State

Current state of the scrum task. Denotes the progress of the scrum task.

Assigned to

User to whom the scrum task is assigned.

Short
description

Brief description of the scrum task.

Description

Detailed description of the scrum task.

Work notes

Work notes indicating the progress of the scrum task at various stages in
its life cycle.

d. Click Submit.
6. To create a test for a SAFe story:

Note: The option to create a test is available only when Test Management 2.0 is
installed.
a. From the Show list at the top-right corner, select Tests.
b. Click Add Test. For more information, see Create a test for a SAFe story.
7. To run tests that are in the Ready state for a SAFe story:
a. Click the Run button on a story.
b. In the pop-up, select the environment on which the tests are to be run, and click Run. For
more information, see Run a test for a SAFe story.
8. To personalize columns in a list, click

.

Create a test for a SAFe story
Create a test, add steps to the test, and create and maintain different versions of the test. A test
is a collection of conditions or steps used to determine whether a SAFe story is working correctly.
A test can also include an expected result that determines whether the test passes or fails.

Before you begin
• Role required: safe_scrum_user or safe_admin
• You can create a test from the List view only when the Test Management 2.0 plugin is installed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2140


<!-- page 2141 -->
Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the list at the top left corner, select the level as Team.
3. From the adjacent list, select the required team value.
4. Click the Sprint Tracking tab, and select the List view.
5. From the Show list at the top right corner, select Tests.
6. Click Add Test.
7. In the form, fill in the fields:
Test Version form
Fields

Description

Test

Unique name of the test.

Owner

Owner who created the test.

Version

Automatically generated version of the test.

State

Current state of the test.
◦ Draft: State of the test when it is created.
◦ Ready: State of the test when it is not editable. When the test has
multiple versions, only one test will be in the Ready state at any one
time.
◦ Retired: State of the test when it is no longer used.

Short
description

Brief description about the test.

Add Step

Button used to add step to a test.

Run

Button used to run steps, which is displayed only when the test is in the
Ready state.

Update

Button used to update the details of a test version.

Ready

Button used to change the state of the test version to ready.

Create New
Version

Button used to create another version of the test.

Delete Test

Button used to delete the test version.

Change the
order of a step

Icon used to change the order of a test step. Select the icon and drag a
step to the required location.

(

)

Needs
Verification

Check box used to mark a test step for verification.

Delete a test

Icon used to delete a test step.

step (

)

What to do next

View information in the following related lists:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2141


<!-- page 2142 -->
Related list

Description

Other versions

Displays all the versions of a test.

Test Results

Displays the run results of each test version.

Test Sets

Displays related tests in a test set.

Run a test for a SAFe story
View the test scenario and execute all the steps of a test for verifying a SAFe story.

Before you begin

Role required: safe_scrum_user or safe_admin

Procedure
1. Navigate to All > Scaled Agile Framework (SAFe) > SAFe Board.
2. From the list at the top left corner, select the level as Team.
3. From the adjacent list, select the required team value.
4. Click the Sprint Tracking tab, and select the List view.
5. From the list, select Tests.
6. Verify a story by clicking the Run button.
This action runs all tests of the story at once.
7. In the pop-up, select the environment on which the test has to be run.
8. In the Test Execution pop-up, mark a step as passed, failed, or blocked using the following
icons.
Icon

Description

Passed.
Failed. In this state, options to add comments
and attachments are available. Option to
delete attachments is also available.
Blocked. In this state, options to add com­
ments and attachments are available. Option
to delete attachments is also available.

Note: If a test step is blocked, you will
not be able to proceed and verify the re­
maining steps of the test.

◦ To select an icon, you can also press Tab and then press Enter.
◦ To pause and work on the test at a later point in time, click Pause.
9. Click Done.

Result

The test result is saved to the Test Result form. The latest test result of each test is displayed in
the List view.
The overall status of the test is defined by statuses of the test steps:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

2142


