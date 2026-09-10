# Zurich Strategic Portfolio Management — Agile Development 2.0

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 1869–1956 of 2289

Sections: Agile Development 2.0 (p1869); Explore (p1870); Configure (p1884); Use (p1914)

---

<!-- page 1869 -->
bar chart parameters (continued)
Parameter

Description

Reference value

poi/xddf/usermodel/chart/
BarGrouping.html .
@property {Number}
barProperties.overlay Size of overlapping among the Accepted numeric value range
bars in the chart.
is from 0 to 100.

Agile Development 2.0
ServiceNow Agile Development 2.0 provides an agile software development environment for
product-based or project-based efforts, using the Scrum framework. Implement a pure agile
approach over the entire life cycle of a product, or a hybrid approach using agile methods within
a traditional project structure.
This video provides an introduction to development in the ServiceNow SPM Agile 2.0 application
including creating stories, planning backlogs and sprints, and tracking progress

Get started

Explore

Set up

Integrate

Learn the key features and
business value that Agile
Development 2.0 offers

Activate the required
plugins, migrate data
from Agile Development
1.0, and verify custom
configuration settings

Integrate Agile
Development with thirdparty execution systems

Use

Reference

Learn how to manage your
product development with
Agile Development 2.0

Get details about
components, form fields,
and general guidelines

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1869


<!-- page 1870 -->
Troubleshoot and get help
• Ask or answer questions in the Strategic Portfolio Management forum on the ServiceNow
Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support
• Enhance your learning with courses from developer training
• Refer to the developer documentation
• Find the Strategic Portfolio Management package that works best for you

Exploring Agile Development 2.0
Learn about the Scrum methodology framework, typical activities, and artifacts that are used in
®
ServiceNow Agile Development 2.0.
Overview of product based and project based approaches inAgile Development 2.0.
Approximately three minutes long.
Agile Development 2.0 supports both product-based and project-based development efforts. For
a quick overview of these approaches, watch the video.
Use the information in the following sections for a deeper understanding of Agile Development
basics, its process, and the scenarios in which Agile Development is used. Also, learn about the
features of the Agile Development 2.0 application.

Basics of Agile Development
Scrum is one of the popular methodologies of Agile Development, which includes a fixed sprint
schedule and regular requirements testing. These activities are performed by common roles
such as product owner, scrum master, and group members. Learn about the basics of Agile
Development process.

Scrum framework
Familiarize yourself with the terminology and artifacts used in Agile Development.
Assignment group or Agile team
Group of users who are involved in working on and completing the development
for an Agile product. In Agile Development 2.0, this team is called as an assignment
group.
In an assignment group, a user is designated as the scrum master, who is
responsible to ensure that all the scrum activities are properly performed for a
release. For more information, see Assignment groups in Agile Development 2.0.
Epic
High-level definition of a requirement that provides value to the business, such as a
new feature or a significant enhancement. Epics are broken down into Agile stories
and can be worked on by a single or multiple teams.
Story
Short, manageable pieces of work that are related to an epic. Stories capture
the who, what, and why of a requirement in a simple and concise way. Using the
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1870


<!-- page 1871 -->
description and criteria mentioned in the stories, teams can accurately estimate the
effort required to implement the work in it.
Scrum task
Distinct tasks that are required to complete a story. A task might require from 4
through 12 hours to complete.
Backlog
List of work that must be implemented, as part of achieving specific outcomes.
Backlog contains work related to new features, enhancements to existing features,
and other activities of product development.
Backlog is considered as the single source of work for a product or team. Anything
that is not included in the backlog would not be prioritized for development.
Personal Backlog
Product owners define a personalized work pipeline called personal backlog,
by applying relevant filter criteria. In Agile Development 2.0, product owners can
define as many personalized backlogs as necessary. The criteria used to create the
personalized backlog is flexible and can be modified at any time.
Sprints
Short, fixed periods, in which team members pick and complete a set number of
stories. These short, time-boxed cycles provide the teams the flexibility to adapt to
changing priorities.
The cadence of recurrence for a sprint is decided by the development teams and
the product owners. For example, a 10-day sprint, or a 1-week sprint.
Sprint backlog
Scope of work for a sprint. Product owners and their development teams use the
sprint planning activity to review their backlog and decide on the stories to be
picked up for a sprint.
Theme
Area of focus with an associated business value. A theme is related to one or more
of the company's goals. Themes help you prioritize your work at a high level and can
be associated with multiple epics.
Product
Entity to organize themes, epics, and stories of similar functionality into a single
context. A product represents an item or a feature that is to be developed and
released to the market.
Release
A release has a start and end date during which several development iterations
are completed. Releases are created by a product owner and contain user stories,
sometimes from multiple products and can also involve multiple teams. The stories
associated to a release form its release backlog.

Note: In Agile Development 2.0, ensure that you create a product before
you create themes, epics, or stories. You cannot submit these records without
attaching them to a product.
After creating stories and scrum tasks for your products, you can create a
personalized backlog containing the stories from one or more of these products.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1871


<!-- page 1872 -->
Defects
Defects can be used to report and track the resolution of issues that are noticed
during the development of a new feature, or as a feedback for existing features.
Product owners then review these defects and decides on creating stories for them,
which are assigned to the relevant assignment groups.
Using the Agile Development — Unified Backlog, you can set up a triage board to
maintain a centralized backlog for records of different task types, such as defects,
stories, and enhancements. For more information, see Agile Development — Unified
Backlog.
Enhancements
Enhancement requests can be used to log feature enhancements for a product.
These requests can arise from internal requirements or customer feedback. Product
owners review these logged requests and decides on creating stories for them
based on priority. These stories are then assigned to the relevant assignment
groups for development.
Using the Agile Development — Unified Backlog, you can set up a triage board to
maintain a centralized backlog for records of different task types, such as defects,
stories, and enhancements. For more information, see Agile Development — Unified
Backlog.

Scrum activities
The Scrum process usually consists of the following activities.
Sprint planning
Assignment group members meet to decide on the stories that they can commit to
deliver in the sprint. Typically, they commit to the top ranked stories first. The group
decides which scrum tasks are necessary for each story. The product owner should
be present to answer any questions.
Daily standup
Assignment group members meet to discuss the progress of their work from the
previous day, work planned for the current day, and any blockers. The daily standup
keeps the group members focused on completing the stories for the current sprint
and informs the scrum master of any blockers.
At the end of the sprint, all its stories should be complete. Any incomplete stories
are moved back into the backlog, or a future sprint.
Sprint reviews
Sprint review meetings are held at the end of each sprint. In these meetings, the
assignment group reviews the work that they completed and demonstrate the newly
developed features to their product owner.
Sprint retrospectives
A retrospective meeting is conducted at the end of each sprint, to facilitate
discussion between the group members on what went well and what did not. The
goal of a sprint retrospective is to discuss ways to improve the execution of future
sprints.
For details on how Agile Development 2.0 can help you manage your efforts of
product development, see Agile Development process flow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1872


<!-- page 1873 -->
Scrum reports
Scrum reports help you analyze the performance and progress of your agile team. These reports
can be related to an epic, sprint or release, and provide historical data of your team's work
velocity. Performance Analytics Content Pack for Agile 2.0 provides pre-configured dashboards
with data visualizations to help you improve your Agile practices.
For more information, see Performance Analytics Content Pack for Agile 2.0.

Agile Development process flow
Learn the process that is used to manage product development efforts in Agile Development 2.0,
such as creating a product or tracking a sprint or release.

Note: The flow explained here represents the common practice for managing agile
development efforts using the functionality available in the Agile Development 2.0
application. This flow does not represent the only possible process.
Define products
A product can be a set of features or functionality offered to users. Each product
can have an owner that maintains the work pipeline, such as epics and stories, for
the product. These work items can be associated to a theme, which is related with a
business goal.
See Create a product in Agile Development 2.0.
Create epics and stories
Epics contain high-level requirements for your products, which you can use to
break down into manageable stories. While creating epics and stories in Agile
Development 2.0, you can associate them with a product.
See Create an epic in Agile Development 2.0 and Create a story in Agile
Development 2.0.
Create releases
Some organizations have a fixed time frame to make their products available to the
market, which is referred to as a release. A release has a start and end date, during
which several development iterations are completed. For example, you can have
quarterly or half-yearly schedules to release new applications or enhancements to
existing applications.
After you create a release in Agile Development 2.0, you can associate products,
epics, and stories to it. See Create a release in Agile Development 2.0.
Create personalized backlogs
A personalized backlog can be created by defining filter criteria. For example, one
personalized backlog can be a combination of stories, defects, and incidents while
the other personalized backlog can be a combination of stories and incidents. In
this way, you can create as many personalized backlogs as necessary.
See Create a personalized backlog in Agile Development 2.0
Create assignment groups
Create an assignment group add members to it. For each group member, define
the number of story points that they can complete in a sprint. At the group level, the
sum of the story points of all the group members determines the group capacity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1873


<!-- page 1874 -->
See Create an assignment group in Agile Development 2.0
Create sprints
A sprint is the time frame in which the development team delivers one or more
stories. A sprint can be of any length, but typically takes between one and four
weeks to finish. The scrum master creates the number of sprints required for the
group, and these sprints are used by the group members to complete the work
required for an upcoming release. However, all sprints within a release must be
within the release start and end dates.
Plan sprint activities
Before a sprint starts, the group and scrum master decide on what stories from the
backlog they can commit to complete within a sprint. Stories for a sprint can be
selected based on priority. The scrum master must ensure that the effort (total story
points) required to complete the stories matches the capacity of the group.
While planning your sprints, you can use the velocity reports as guidance to
estimate how much work the group can complete in the next sprint. The Agile 2.0
Team dashboard provides Velocity history report and Velocity by type report.
• Velocity History: Gain an insight on the overall velocity of the team for the past
10 sprints. Analyze if the team is achieving a stable, predictable velocity, and is
meeting the commitments.
• Velocity by Type: Analyze the way your team's velocity changes over time
and compare the team's strategic workload with operational or other types of
workload.
For more information on how to plan your sprints, see Plan your sprint activities in
Agile Development 2.0.
Track sprint progress
The scrum master manages the sprint team efforts, provides progress reports,
and removes any blockers that the team encounters. Team members update
story records and conduct daily standup meetings to discuss their progress and
communicate the concerns to the scrum master and product owners.
The team is expected to complete all the stories that are committed for a sprint. The
scrum master expects that the stories are fully tested and are ready for release,
according to the acceptance criteria.
Ideally, the committed stories and the scope for a specific sprint should not change
while the sprint is in progress. Agile Development 2.0 provides the flexibility to
update as necessary and adapt to changing priorities. However, stories must be
added or removed from a sprint only after a discussion between the group, scrum
master, and product owner.
You can use the Agile 2.0 Sprint dashboard with reports such as burnup and
burndown charts to track the progress of the team for a sprint.
Track release progress
The product owner tracks the progress of the release and verifies whether the team
is completing stories in the pace that is necessary to achieve the release goal.
You can use the Agile 2.0 Release dashboard with reports such as burnup,
burndown, and cycle time charts to track the progress of the team for a release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1874


<!-- page 1875 -->
Note: All Agile 2.0 dashboards are available with Performance Analytics Content Pack for
Agile 2.0.

Agile Development use cases
Learn the different methods that organizations could use to plan their backlog and deliver
stories.
Some common delivery methods are:
• Release-based delivery
• Project-based delivery
• Standalone project development
Agile Development 2.0 provides the flexibility to maintain a unified backlog that can be used for
both release-based or project-based types of delivery. You can maintain all your backlog in one
place and associate the stories to a product,project, or both. You can also select stories from the
backlog and execute them as a project, as a standalone project development.
The following example shows how Agile Development 2.0 supports a unified backlog for both
project-based and release-based type of deliveries.
Agile development work flow use cases

Release-based development use case in Agile Development
An example of release-based development and delivery model using Agile Development.
The usual activities involved in a release-based agile development are:
• Maintain Product Backlog: Product owners maintain the product backlog. They continuously
groom their backlogs by adding stories, prioritizing, and estimating them.
In Agile Development 2.0, navigate to Agile Development > Backlog > All Stories for the list of
all the stories. You can filter the list for a specific product.
• Release Planning: Organizations have definite release cycles such as quarterly release,
bi-yearly release, yearly release. The product owners select the prioritized stories from the
product backlog that should be completed in a given release to form Release Backlog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1875


<!-- page 1876 -->
• Assignment of stories: In Agile Development 2.0, navigate to Agile Development > Stories.
Select the stories that you want to assign to a release and select Assign to release/group.
Specify a team that you want to associate these stories with.
• Sprint planning: The scrum teams define their sprint schedule such as two-week sprint or
three-week sprint. They work with the product owner, and select stories from the release
backlog that should be completed in each sprint to create Sprint Backlog. The group members
along with product owner and scrum master decide stories for each sprint using Sprint
Planning.
In Agile Development 2.0, navigate to Agile Development > Agile Board > Sprint Planning.
The following illustration provides a high-level overview of the workflow in a release-based Agile
Development environment.
Release based agile development workflow example

Project-based development use case in Agile Development
An example of project-based development and delivery model in Agile Development.
The usual activities involved in a project-based Agile Development include the following:
• Product Backlog: Product owners maintain the product backlog. They continuously groom their
backlogs by adding stories, prioritizing and estimating them.
In Agile Development 2.0, navigate to Agile Development > Backlog > All Stories for the list of
all the stories.
• Project Backlog: Product owners select the prioritized stories and assign them to one or more
projects, thus creating the project backlog. Product owners can create one or more projects
and capture additional details such as required resources, cost, risk, strategic alignment. All
these projects undergo portfolio prioritization process, and the selected projects are executed
by the project teams.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1876


<!-- page 1877 -->
Note: Some organizations also define release cycles such as quarterly release, biyearly release, yearly release. They then move the stories from product backlog to the
release backlog. In these cases, stories are assigned to the projects from the release
backlog.
In Agile Development 2.0, navigate to Agile Development > Stories and select Assign to
project to assign stories to a new or existing project.
You can also open an existing project and associate stories to the project from the backlog.
These stories are then executed as part of project execution.
• Assignment of stories: Assign the stories of the project to an assignment group so that the
team can pick these up in the upcoming sprints.
In Agile Development 2.0, select the stories that you want to assign to a release, select Assign
to release/group and specify an assignment group.
• Sprint planning: The scrum teams define their sprint schedule such as two-week sprint or
three-week sprint. They work with the product owner, and select stories from the release
backlog that should be completed in each sprint to create Sprint Backlog. The group members
along with product owner and scrum master decide stories for each sprint using Sprint
Planning.
In Agile Development 2.0, navigate to Agile Development > Agile Board > Sprint Planning.
The following illustration provides a high-level overview of the workflow in a project-based Agile
Development environment.
Project-based Agile Development workflow example

Standalone project development use case in Agile Development
An example of a standalone project development and delivery model in Agile Development.
In this case, a request (demand) for a new product or feature or system is raised. Demand
managers capture the requirements in terms of stories. They also capture the other details for
the demand such as resources required, cost, risks, and strategic direction. Such demands are
converted into projects upon approval. Project managers can choose pure agile or hybrid mode
of project execution. In hybrid mode, the initial phases such as planning, and analysis are taken
up as waterfall tasks, and then the execution is done as agile phase. The agile phase is assigned
to an agile group. The agile group then completes the work by sprint execution.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1877


<!-- page 1878 -->
The following illustration provides a high-level overview of the workflow for executing a
standalone project development.
Project based agile development workflow example

Using Agile Development 2.0 for standalone hybrid project development
Steps to execute a standalone hybrid project:
1. Create demand: Capture requirements at demand state in terms of user stories. Use the
Stories related list on the demand form to create stories.
2. Demand to Project conversion: When the demand is converted to a project, the stories in
demand move to the project so that the project team (assignment group) can execute them.
During the conversion, an Agile phase is also created, and the stories are assigned to the Agile
phase.
3. Sprint planning: The agile group members along with project manager, and scrum master
perform sprint planning. Navigate to Agile Development > Agile Board > Sprint Planning to
plan sprints.

Agile board in Agile Development 2.0
The Agile board is a landing page where you can perform key actions of the scrum process such
as managing your backlogs, planning your sprints, and tracking the sprint progress.
The Agile board is organized in the following tabs to help you manage these activities. You
would require one or more of the scrum_admin, scrum_master, scrum_product_owner, or
scrum_sprint_planner user roles.

Backlog
The Backlog tab helps you manage your personalized backlogs. Within the Backlog tab, you can:
• Create stories, epics, and themes.
• View all active stories that are assigned to a team but that are not assigned to any sprint.
• View cards indicating the total number of stories, stories that do not have story points, and
stories that do not have acceptance criteria in your backlog.
Clicking any of these cards gives you a list of stories from that category.
• Reorder stories in the backlog across pages.
• Filter the stories by epic by using the Records by epic section.
In this section, only those epics are listed, which belong to the stories of the selected backlog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1878


<!-- page 1879 -->
◦ The epics for the stories from your backlog are listed in this section.
◦ Epic completion is indicated by a progress bar and percentage.
◦ You can show or hide this section by selecting the configuration icon (
• Personalize columns by using the personalize icon (

).

).

• Use the search option to filter stories using a keyword.
For more information on how to manage your backlog, see Manage your product backlog in Agile
Development 2.0.
Backlog tab on Agile Board

Sprint Planning
The Sprint Planning tab of the Agile board shows the team backlog and sprints as sections,
which contain the list of stories. You can create, edit, and plan for sprints using the options
available in this tab.
From the Sprint Planning tab, you can:
• Create, organize, monitor, start, and complete sprints.
• View current and future sprints in chronological order.
• View planned start and end dates, story points, percentage group velocity, and the number of
story points (total, complete, and pending) for the current sprint.
• Assess stories in the backlog and drag them to sprints.
• Add stories to the backlog and set up their order of implementation.
• Move unfinished stories from the completed sprint to the backlog or to a future sprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1879


<!-- page 1880 -->
Sprint Planning tab on Agile Board

Sprint Tracking
From the Sprint Tracking tab, you can track the progress of your current sprint in a Story board,
Task board, or list view.
Story board
• Track all the stories of the current sprint across lanes.
• Move a story from one lane to another, which updates the state of the story.
• Filter stories by search criteria.
For more information, see Track progress of stories for a sprint in Agile Development
2.0.
Sprint Tracking in the Story board view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1880


<!-- page 1881 -->
Task board
The Task board enables you to track all the scrum tasks for stories of the current
sprint across lanes. You can:
• Move scrum tasks from one lane to another, which updates the state of the
stories.
• Filter scrum tasks by search criteria.
For more information on tracking your scrum tasks using the board view, see Track
progress of scrum tasks for a sprint in Agile Development 2.0.
Sprint Tracking in the Task board view

List
The List view displays scrum tasks and tests for the stories of the current sprint. In
the List view, you can:
• Add scrum task and tests without leaving the context of the record.
• View the state, short description, and assignee of the scrum task.
• View the short description and result of a test.
• Assess scrum tasks and tests that are still pending before the current sprint is
closed.
For more information on tracking a sprint's progress using the List view, see Track
sprint progress in Agile Development 2.0.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1881


<!-- page 1882 -->
Sprint Tracking in the List view

Related topics
Visual Task Boards

Reporting defects in Agile Development 2.0
Create defects for the issues that are reported for your product using Agile Development 2.0. You
can then create stories for these defects so that your teams can start working on resolving them.
Defects can be used to report and track the resolution of issues that are noticed during the
development of a new feature, or as a feedback for existing features. Product owners then review
these defects and decides on creating stories for them, which are assigned to the relevant
assignment groups.

User role to create defects
Users who are expected to create defects in Agile Development 2.0 must have one of the
following roles:
• feature_user
• scrum_story_creator
• scrum_admin
However, if a user has just the feature_user role, they can only view the defects from the Defects
module of the Agile Development application. They can not view the stories associated with the
defects in the Stories related list of the defect record.
For information on how to create Defects, see Report a defect in Agile Development 2.0.

Enhancement requests in Agile Development 2.0
Create enhancement requests for different areas of your product in Agile Development 2.0. You
can then create stories for these requests so that your teams can start working on developing
them.
Enhancement requests can be used to log feature enhancements for a product. These requests
can arise from internal requirements or customer feedback. Product owners review these logged
requests and decides on creating stories for them based on priority. These stories are then
assigned to the relevant assignment groups for development.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1882


<!-- page 1883 -->
User role to create enhancement requests
Creating or editing enhancement requests requires one of the following roles:
• feature_user
• scrum_story_creator
• scrum_admin
• rm_enhancement_admin
However, a user without scrum roles can only access these requests from the Enhancement
Requests module of the Agile Development application and not stories that are created for this
request.

Note: The administrator must grant the feature_user role to all users who are expected to
create an enhancement request in the Agile Development application.
For information on how to create enhancement requests, see Create an enhancement request in
Agile Development 2.0.
After an enhancement request is created, users with scrum_story_creator or scrum_admin role
can:
• Review the enhancement request and create a story for it.
• Manage stories from the Stories related list in the Enhancements form.

Agile Development — Unified Backlog
®

The ServiceNow Agile Development — Unified Backlog application helps you maintain
a centralized backlog for records of different task types, such as defects, problems, or
enhancements. Prioritize different task types from one location, and automatically create stories
for these records, saving time.
The work flow described here represents the common practice of creating and managing
records using the Agile Development — Unified Backlog with Agile Development 2.0.
Set up a triage board
Define filter criteria and create your triage boards. Triage boards help you view
records of a specific task type,giving better visibility. For example, you can
create one triage board for defects and another for incidents. The triage board is
automatically updated with any new record that matches the defined filter criteria.
See Set up a triage board in Agile Development 2.0
Triage records
From the Backlog tab of the Agile board, you can:
• View the total numbers of records in the triage boards of all task types
• Open the triage board of a specific task type
• Edit the filter definition of an existing triage board

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1883


<!-- page 1884 -->
You can triage the records and add them to your product or team backlog. Items
added to the backlog from the triage board will also have stories created for them
automatically. See Triage items and add them to a backlog in Agile Development 2.0.

Assign records
After a record is added to the backlog from a triage board, treat it as you would a
regular story. You can assign it to the relevant product teams and schedule it for
upcoming sprints. See Plan your sprint activities in Agile Development 2.0.
Work with the assigned records in a board view
Records from a triage board are represented by stories on the Agile board. You can
track the status of these stories from the Story board view of the Sprint Tracking tab.
See Track progress of stories for a sprint in Agile Development 2.0.
When you move these stories to different lanes on the story board to update their
state, the state of the associated story is updated but the state of the original triaged
record remains the same. To change the state of the original record, open the story
and switch to the original record tab.

Configuring Agile Development 2.0
Activate Agile Development 2.0, migrate from Agile Development 1.0, and perform other related
tasks to set up Agile Development 2.0.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1884


<!-- page 1885 -->
Using guided setup to implement Agile Development 2.0
Agile Development 2.0 guided setup provides a sequence of tasks that help you configure the
application on your ServiceNow instance.
To open Agile Development 2.0 guided setup, navigate to All > Agile Development > Agile
Development Guided Setup.
For more information about using the guided setup interface, see Using guided setup

.

Activate Agile Development 2.0
Activate the Agile Development 2.0 plugin (com.snc.sdlc.agile.2.0) if you have the admin role.

Before you begin

Role required: admin

About this task
• If you are upgrading from an earlier ServiceNow release version of Agile Development to Agile
Development 2.0, read upgrade information before activating the plugin.
• The dashboards for Agile Development 2.0, if required, must be activated separately using
the Performance Analytics – Content Pack – Project Portfolio Suite Dashboards plugin
(com.snc.pps_dashboards). The Performance Analytics license is required to use the
dashboards.

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

Migration from Agile Development 1.0 to Agile Development 2.0
Migrate from Agile Development 1.0 to Agile Development 2.0 for enhanced agile capabilities and
features.

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.
Apply the following migration steps on a non-production instance, verify if the migration is
completed as intended, and then perform the migration steps on a production instance.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1885


<!-- page 1886 -->
• Manage customizations before upgrading to Agile Development 2.0.
• Delete customizations.
• Activate Agile Development 2.0.
• Complete the prerequisites for converting teams to Agile Development 2.0 groups
• Convert Agile Development 1.0 teams to Agile Development 2.0 groups
• Verify the conversion of Agile Development 1.0 teams to Agile Development 2.0 groups
Related topics
Migration Guide - Agile Development 1.0 to Agile Development 2.0
Manage customizations before upgrading to Agile Development 2.0
You can take complete advantage of enhanced agile functionality by managing your
customizations before upgrading to Agile Development 2.0.

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.
As of any regular upgrade, if core platform artifacts such as form layout, adding of fields, removal
of preconfigured fields, list layout, business rules, or client scripts, are customized in your
environment, then changes made to any of these artifacts as part of the Agile Development 2.0
enhancements are not applied in your environment. You should delete all your customizations
before upgrading to Agile Development 2.0, and selectively reapply customizations as needed
after upgrade.
Following are the three possible scenarios:
No customizations
You do not have any customizations in your Agile Development implementation and
want to use the Agile Development 2.0 functionality. In such a case, install the Agile
Development 2.0 plugin (com.snc.sdlc.agile.2.0).
Minor customizations
There are few minor customizations, but you want to use the Agile Development 2.0
functionality. In such a case, delete all customizations.
Customizations require review
There are a few customizations in your Agile Development implementation that are
mapped to your business process. Though you want to use the Agile Development
2.0 functionality, you may want to review your customizations and decide whether to
delete all the customizations or retain a few customizations. For such a case:
• A utility is provided which automatically detects the customized platform artifacts,
such as list layout, form layout, business rules, that were enhanced as part of
the Agile Development 2.0 enhancements. For details of this utility and list of
all platform artifacts enhanced in Agile Development 2.0, see Review a utility
customization for Agile Development 2.0.
• After analyzing, if you do not want to retain any of the customizations, then delete
the customizations. If you want to retain a few, delete the customizations and
reapply them after the upgrade.
• If you have created your own artifacts, such as business rules and UI policies,
verify whether the artifacts work as intended after the upgrade.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1886


<!-- page 1887 -->
Delete customizations before upgrading to Agile Development 2.0
Take complete advantage of enhanced functionality by deleting all your customizations before
upgrading to Agile Development 2.0.

Before you begin

Role required: admin

About this task

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

Procedure
1. In the Navigation filter, enter sys_properties.list.
The entire list of properties in the System Properties [sys_properties] table appears.
2. Click New.
3. On the form, fill in the fields as follows:

Field

Value

Name

com.snc.sdlc.scrum.pp.delete_customer_updates

Description

Delete customizations in the Agile
Development application from the Customer
Update [sys_update_xml] table.

Type

true|false

Value

true

4. Click Submit.
All customizations would be deleted and the property also would be automatically deleted.

What to do next

If the Agile Development 2.0 plugin (com.snc.sdlc.agile.2.0) has been installed before deleting
the customizations, refresh the plugin by reinstalling it.
Related topics
Add a system property
Convert Agile Development 1.0 teams to Agile Development 2.0 groups
Complete most of the migration steps by converting teams in Agile Development 1.0 to groups in
Agile Development 2.0.

Before you begin

Complete the procedure given in Complete the prerequisites for converting teams to Agile
Development 2.0 groups.
Role required: admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1887


<!-- page 1888 -->
About this task

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

Procedure
1. Navigate to All > Agile Development > Groups.

An empty list is displayed because there are no assignment groups with the type Agile Team. If
there are any groups with the type Agile Team, a list of groups are displayed.
2. Click the Convert Release Teams to Groups related link.
The list of all release teams (scrum_pp_team) table that you had defined in the Agile
Development plugin is displayed. If you have been defining teams for each release, multiple
records are displayed for the team (team with the same name), one for each release. In the
following screenshot, four records are displayed for the team Facilities Software Team, one for
each release.

3. Complete the prerequisites for converting teams to groups.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1888


<!-- page 1889 -->
Since migration is performed on a non-production instance first, convert one team to a group,
verify if the migration is done successfully for the team, and then perform the same procedure
for rest of the teams.
In the preceding example, all the four records for the Facilities Software Team can be selected
at once. Consider the Facilities Software Team team as a sample team.
4. Select all records of the sample team and click Convert to Group.
All the teams are converted to an assignment group. If an assignment group exists with the
same name, a new group is not created, but other migration activities are carried out for the
group, for example, updating the group reference to the sprint and story table. Perform the
following steps manually:
◦ Update the group type to Agile Team.
◦ If release team members and group members are different, synchronize the members
between group and team.
Complete the prerequisites for converting teams to Agile Development 2.0 groups
Perform prerequisite steps to later ensure that the conversion of teams to Agile Development 2.0
groups is successful.

Before you begin

Role required: admin

About this task

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

The team being selected should have at least one sprint that is current. The current sprint
should have a few completed and a few WIP stories. This is to verify that the sprint burndown is
updated correctly post conversion. If you do not have such a team, you may select any team for
conversion.

Procedure
1. Find out the sprints assigned to the team across all a release.

Note: Use this step to verify whether the assignment group is updated successfully
across all the sprints.
a. In the search panel in navigator, type rm_sprint.list to view the list of all sprints.
b. Display the Team and Assignment group fields if not displayed.
c. Apply the team name filter. The Assignment group field is empty.
d. Capture the screen or export the list of all sprints. In the sample example, sprint 5 is the
current sprint for the team being converted.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1889


<!-- page 1890 -->
2. Find out the stories that are associated with the sprints of the team being converted.

Note: Use this step to verify that the assignment group is updated successfully across
all stories.
a. In search panel in navigator, type rm_story.list to view the list of all stories.
b. Filter out the stories belonging to the sprints noted in the preceding step.
c. Display Sprint.Team and Assignment group fields in the list layout. The Assignment group
field is empty.
d. Capture the screen or export this list.
e. Filter the story table to fetch the list of all stories belonging to sprints of the team being
converted. Apply the following filter:
sprint.release_teamSTARTSWITH<name of the team>

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1890


<!-- page 1891 -->
Verify the conversion of Agile Development 1.0 teams to Agile Development 2.0 groups
Perform verification steps to ensure that the conversion of a team to an assignment group is
successful.

Before you begin

Role required: admin

About this task

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

Procedure
1. Navigate to All > Agile Development > Groups.
2. Verify that the team has been converted to an assignment group.
If group appears here, it implies that the group type is already set to Agile Team.

3. Verify that the assignment group is updated across all the sprints of the team.
It is the same sprint list that you have noted prior to conversion. This list must have the
assignment group updated after conversion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1891


<!-- page 1892 -->
4. Verify that the stories associated with the sprints of team have been updated with the
assignment group.
Following is the list of stories that were noted prior to converting to group:

5. Review the sprint burndown for the sprint that was noted prior to conversion.
It must be same as it was prior to conversion.
a. Open the rm_srpint table (rm_sprint.list), or open the assignment group.
b. Click the current sprint.
c. Mark any WIP story as complete.
d. Review the sprint burndown that is to be updated with the completed story.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1892


<!-- page 1893 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1893


<!-- page 1894 -->
6. Once the story is complete, the release burndown must also be updated correctly.
For example, in the following screenshot, the burndown is updated correctly for the current
release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1894


<!-- page 1895 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1895


<!-- page 1896 -->
7. For Group Velocity:
a. Navigate to Agile Development > Groups.
b. Review the velocity of the group. It must be same as it did prior to conversion.
c. Complete the current sprint. It must display the velocity of group for the completed sprint in
addition to the sprints that were completed before conversion.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1896


<!-- page 1897 -->
8. Once you verify the steps for one group, it is confirmed that the migration has completed
successfully.
You can repeat this procedure for all other teams one by one. This is a synchronous process,
hence, you should perform these steps on one team at a time.
Agile Development 2.0 enhancements over Agile Development 1.0
Agile Development 2.0 offers a few enhancements over Agile Development 1.0.

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1897


<!-- page 1898 -->
These enhancements can be divided into the following categories:
• Data model enhancements from Agile Development 1.0 to Agile Development 2.0
• Usability enhancements from Agile Development 1.0 to Agile Development 2.0
• Functionality enhancements from Agile Development 1.0 to Agile Development 2.0
Data model enhancements from Agile Development 1.0 to Agile Development 2.0
Agile Development 2.0 offers a few data model enhancements over Agile Development 1.0.

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

Use of the common platform construct — Assignment Group
To map an agile team (scrum team), Agile Development 1.0 uses a separate entity called the
Release Team table ( scrum_pp_team). This entity is associated to a release entity as displayed
in the following screen shot.
Scrum release

All other tasks on platform such as incidents, problems, changes, projects rely on the
assignment group entity to make assignments to a group. Group managers can run reports on an
assignment group to gain insight into the work assigned to their groups.
To standardize the use of a group across platform even for scrum work such as stories and tasks,
the standard construct Assignment Group is used as opposed to the standalone entity Release
Team. Agile Development 2.0 uses assignment groups to map agile teams. An assignment group
of type Agile Team is used for defining an agile team.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1898


<!-- page 1899 -->
Groups

Agile team (group) need not be created for each release
With Agile Development 1.0, teams are to be created for each release and the teams are to be
associated to each release. For example, if a scrum team called Team — Alpha works on multiple
quarterly releases. You cannot create the team for one time and associate the team to any
release, or release over release. Each time a new release is created, you must create a team with
the same name and associate team to the release.
With Agile Development 2.0, groups are created independent of releases, and you can work on
stories from multiple releases without recreating the group for every release.
Scrum release

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1899


<!-- page 1900 -->
Sprints can be created without a release
With Agile Development 1.0, creating a release is mandatory for creating sprints. Sprints cannot
be created for a team independently. Agile Development 1.0 mandates the creation of a release
for story execution via sprints. If there is no release, sprint cannot be populated on a story record.
Sprints

In Agile Development 2.0, sprints are associated with Assignment Groups.

Team backlog can be maintained independent of release
Typically, a team can have an ongoing team backlog release after release, it can pull stories from
its backlog, and execute them through sprints in the release.
With Agile Development 1.0, a team cannot be defined without defining a release. Hence, team
backlog cannot be maintained independent of a release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1900


<!-- page 1901 -->
With Agile Development 2.0, an assignment group is not created within a release. It can be
associated to the release, but not created within a release. Hence, an assignment group can
maintain its own backlog.
Group backlog with Agile Development 2.0

Association between Release and Group
As there is no direct relation between a release and a group in Agile Development
2.0 (groups are independent and do not have to create groups for each release), the
m2m_release_group_list table has been introduced. This table stores the association of a
group with a release. This association is not used for sprint generation, but is used to derive the
capacity of a release.
Specify the number of sprints for which the group works in a release. From the capacity of the
team, the capacity of the release is derived.
m2m_release_group
Team

Start Sprint

End Sprint

Points (each
sprint)

Total Group
Capacity For
Release

A

A_Sprint 1

A_Sprint 3

30

90 (3*30)

B

B_Sprint 1

B_Sprint 4

40

160 (4*40)

Total Release Capacity = 90+ 160 = 250 points

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1901


<!-- page 1902 -->
Functionality enhancements from Agile Development 1.0 to Agile Development 2.0
Agile Development 2.0 offers a few functionality enhancements over Agile Development 1.0.

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

Integration with Test Management 2.0
Agile Development 2.0 is integrated with Test Management 2.0. This integration allows you to
define tests for your stories, and run the tests before a story is marked as complete.

Note: This integration is available from the London release.
Integration with Agile Development — Unified Backlog
Agile Development — Unified Backlog is integrated with Agile Development 2.0. This integration
allows you to maintain a centralized backlog containing records of different task types, such
as defects, problems, incident tasks, and stories. It facilitates in prioritizing and sequencing
of different task type records in one location, saving you steps. It removes the overhead of
converting records to stories.

Note: This integration is available from the London release.
Usability enhancements from Agile Development 1.0 to Agile Development 2.0
Agile Development 2.0 offers a few usability enhancements over Agile Development 1.0.

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

Manage and groom your backlog
Flexible backlog definition
Agile Development 2.0 enables you to define backlogs. For example, you can create
different backlogs by products or teams, or combine backlogs for one or more
epics.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1902


<!-- page 1903 -->
Backlog grooming
Agile Development 2.0 provides an advanced view for your backlog, where you can
drag stories to rank them. Also, you can view backlogs by epics and get analytics
about the overall backlog situation. For example, analytics of stories without
acceptance criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1903


<!-- page 1904 -->
Enhanced sprint planning experience
Agile Development 2.0 provides a single view for your backlog and sprints. Drag
stories from the backlog to sprints to perform sprint planning in an interactive

manner.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1904


<!-- page 1905 -->
Note: Though the Planning Board in Agile Development 1.0 has not been deprecated, you
can use the Sprint Planning tab in Agile Development 2.0. For release planning, use the
Backlog tab in which you can multi-select stories, and assign them to a release.
Example of the Planning Board in Agile Development

Assigning multiple stories to a release in Agile Development 2.0

Sprint Tracking
Agile Development 2.0 leverages the visual task boards feature to track the progress of stories in
a sprint. It also provides the ability to create scrum tasks from the tracking view.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1905


<!-- page 1906 -->
Note: The Task Progress Board UI does not appear as a tab in Agile Development 2.0. You
may type Task Progress Bar in search panel in navigator to invoke the UI, for tracking the
progress of scrum tasks.
Review a utility customization for Agile Development 2.0
Use the Agile_2.0_Upgrade_Diagnostics update set to analyze your customizations on the
platform artifacts (such as form layout, list layout, business rules, and client scripts) that are
modified as part of the Agile Development 2.0 enhancements. Delete the customizations prior to
upgrade.

Before you begin
• Role required: admin
• Download the Agile_2.0_Upgrade_Diagnostics update set

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1906


<!-- page 1907 -->
About this task

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.

Procedure
1. Click the Retrieved Update Sets module.
2. Click Import Update Set from XML.
3. Select and upload the update set.
4. Preview and commit the update set.
5. Navigate to Agile Development 2.0 > Upgrade Diagnostics > View Diagnostics.
Displays all the artifacts from Agile Development 1.0 that have been modified on the instance
and on Agile Development 2.0.
6. Click the file name of the artifact, or click the View Update link to review the latest update on
the file.
For example, in the following screenshot, a system script has been customized. Hence, further
analysis is required to delete the customization, restore, or reapply the customization after an
upgrade.
Example of a customized system script

List of platform artifacts modified after upgrading to Agile Development 2.0
Post migration, you can review the list of artifacts that are modified in Agile Development 2.0.

Important: Agile Development 1.0 and its features such as Sprint burndown chart and
release burndown chart are deprecated and no longer available. Agile Development 2.0
provides the latest experience for supporting your Agile work methodology.
• sys_ui_list_control_3f85b6907f00000135a05e41c7547354,
• sys_ui_list_control_3f8607b47f0000012aaff213c654be45,
• sys_ui_list_control_6daa4a777f000001007607d32a0b44f0,
• sys_ui_list_control_7d3d1f917f000001798fc58141419300,
• sys_ui_list_control_aa8a1aae7f000001432d0e1142a85c2d,
• sys_ui_list_control_aa8a4bbe7f00000139552678204587f7,
• sys_ui_list_control_aa8ace2f7f000001514936314eb4c441,
• sys_ui_list_control_aa8b47f57f000001024db35639e9239d,
• sys_ui_list_control_aa8b87c57f0000014da26c6926295c45,
• sys_ui_list_control_aa8bb1fe7f000001566e2efad03b5d1d,
• sys_ui_list_control_f2e3f8447f0000010e16b6f2131e4c51,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1907


<!-- page 1908 -->
• sys_ui_list_control_f2e421e97f0000015fecc4e84539ca3f,
• sys_ui_list_control_f31a7ea37f00000111797ad94bfc17a7,
• sys_ui_form_sections_6dd15dd77f00000146435a3f9ec1b5c2,
• sys_ui_form_sections_6dd2cbb17f0000016bc846fa867d9527,
• sys_ui_form_sections_6dd47d6f7f0000011b43299d37b79da0,
• sys_ui_section_09c7f68d0a0a2c39447a64370c6851bb,
• sys_ui_section_09c9c4eb0a0a2c390ca461bae347c0c8,
• sys_ui_section_6da8bbff7f00000119f52f9d2ba74f7e,
• sys_ui_section_6dc344847f0000017a3badab86eae0f4,
• sys_ui_section_6dc409c57f0000016dd1fbecc461c7b9,
• sys_ui_section_6dd15e0a7f00000104ddce3e4fec5457,
• sys_ui_section_6dd2cbc97f0000016b6662d744a1766c,
• sys_ui_section_6dd47d857f000001783b95cc64af46a4,
• sys_ui_section_8756880b7f00000147213f08234c9a57,
• sys_ui_section_87569f2d7f00000116c556f5821ae434,
• sys_ui_section_8757b94d7f0000011c1ae8aa30062c20,
• sys_ui_section_87580cdb7f00000145cff7762bcac315,
• sys_ui_section_a19b5086c1252a7b3632553861b5440c,
• sys_ui_section_a7ee48bfc1252a7b377ac0507a9a6dc8,
• sys_ui_section_aa8a5d967f0000010d9bd63883019d20,
• sys_ui_list_rm_epic_rm_epic_scrum,
• sys_ui_list_rm_epic_scrum_theme_scrum,
• sys_ui_list_rm_scrum_task_rm_story_scrum,
• sys_ui_list_rm_sprint_rm_release_scrum_scrum,
• sys_ui_list_rm_story_rm_epic_scrum,
• sys_ui_list_rm_story_rm_release_scrum_scrum,
• sys_ui_list_rm_story_rm_sprint_scrum,
• sys_ui_list_rm_story_scrum_theme_scrum,
• sys_ui_list_scrum_group_permissions_scrum_theme_scrum,
• sys_ui_list_scrum_user_permissions_scrum_theme_scrum,
• sys_ui_list_rm_release_scrum_scrum,
• sys_ui_list_rm_sprint_scrum,
• sys_ui_list_rm_epic_scrum,
• sys_ui_list_rm_story_scrum,
• sys_ui_list_rm_release_scrum_null,
• sys_ui_list_rm_sprint_null,
• sys_ui_list_rm_epic_null,
• sys_ui_list_rm_story_null,
• sys_ui_related_rm_defect_scrum,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1908


<!-- page 1909 -->
• sys_ui_related_rm_doc_scrum,
• sys_ui_related_rm_epic_scrum,
• sys_ui_related_rm_release_scrum_scrum,
• sys_ui_related_rm_release_scrum,
• sys_ui_related_rm_sprint_scrum,
• sys_ui_related_rm_story_scrum,
• sys_ui_related_rm_test_scrum,
• sys_ui_related_rm_defect_null,
• sys_ui_related_rm_doc_null,
• sys_ui_related_rm_epic_null,
• sys_ui_related_rm_release_scrum_null,
• sys_ui_related_rm_release_null,
• sys_ui_related_rm_sprint_null,
• sys_ui_related_rm_story_null,
• sys_ui_related_rm_test_null,
• sys_ui_list_control_3f85b6907f00000135a05e41c7547354,
• sys_ui_section_87569f2d7f00000116c556f5821ae434,
• sys_ui_section_8757b94d7f0000011c1ae8aa30062c20,
• sys_ui_section_87580cdb7f00000145cff7762bcac315,
• sys_ui_section_a7ee48bfc1252a7b377ac0507a9a6dc8,
• sys_ui_section_aa8a5d967f0000010d9bd63883019d20,
• sys_ui_list_rm_story_null,
• sys_ui_list_rm_sprint_scrum,
• sys_ui_list_rm_story_scrum,
• sys_ui_related_rm_release_scrum_scrum,
• sys_ui_related_rm_sprint_scrum,
• sys_ui_section_0ffe390037412000dadaa3549dbe5d0d,
• sys_ui_list_rm_story_project,
• sys_ui_list_rm_story_sprint_planning,
• sys_ui_list_rm_epic_sys_ref_list,
• sys_ui_list_rm_story_release_backlog,
• sys_ui_list_control_0b28c540ef301000a7450fa3f82256a4,
• sys_app_module_0e28cb14ef941000a7450fa3f8225643,
• sys_app_module_0b57e8009f503100598a5bb0657fcfae,
• sys_app_module_b5b5b092871031003706db5eb2e3ec5b,
• sys_app_module_d5d3212593320200ea933007f67ffb36,
• sys_app_module_f0ca98ca874321003706db5eb2e3ecdd,
• sys_app_module_f1e8dc8a874321003706db5eb2e3ecfa,
• sys_app_module_2117c480ef012000a7450fa3f82256fc,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1909


<!-- page 1910 -->
• sys_app_module_30154714ef941000a7450fa3f82256ef,
• sys_app_module_437d1419ef41200099620fa3f822560c,
• sys_app_module_6d691477efb42000a7450fa3f8225612,
• sys_app_module_5697aaa0efd41000a7450fa3f8225682,
• sys_app_module_876add92ef931000a7450fa3f82256c9,
• sys_app_module_97fd7218ef541000a7450fa3f8225648,
• sys_app_module_ae802859ef41200099620fa3f8225656,
• sys_app_module_b47c5091ef41200099620fa3f8225688,
• sys_app_module_0a68918e37031000dadaa3549dbe5dd4,
• sys_app_module_237c98d5ef41200099620fa3f82256e5,
• sys_app_module_297d5419ef41200099620fa3f82256e9,
• sys_app_module_2b80e819ef41200099620fa3f82256a6,
• sys_app_module_487f9459ef41200099620fa3f82256db,
• sys_app_module_4c836231ef002000a7450fa3f8225612,
• sys_app_module_5600c718ef541000a7450fa3f8225636,
• sys_app_module_717d1419ef41200099620fa3f82256ed,
• sys_app_module_7580e499ef41200099620fa3f8225675,
• sys_app_module_b17e9819ef41200099620fa3f8225692,
• sys_app_module_db7f1099ef41200099620fa3f822564e,
• sys_app_module_eb7dd019ef41200099620fa3f8225611,
• sys_ui_policy_6c5665c293030200ea933007f67ffb18,
• sys_ui_policy_823c84a6ef271000a7450fa3f8225653,
• sys_ui_policy_128dc58293030200ea933007f67ffbb3,
• sys_ui_policy_49dc0ca093030200ea933007f67ffb0c,
• sys_ui_policy_830b62d6877121003706db5eb2e3ec6d,
• sys_ui_policy_cb2b8826ef271000a7450fa3f82256b3,
• sys_ui_policy_d8476e96877121003706db5eb2e3eca3,
• sys_ui_policy_267d5c2aef271000a7450fa3f8225636,
• sys_ui_policy_63a823ecefb31000a7450fa3f8225627,
• sys_ui_action_22ada00a93330200ea933007f67ffbd5,
• sys_ui_action_e89e773593330200ea933007f67ffbb7,
• sys_ui_action_f6ea06e2870321003706db5eb2e3ec7d,
• sys_ui_action_view_f9e0ee3393330200ea933007f67ffb38,
• sys_ui_action_96bd90b28f1321001a83cfd827bdee4a,
• sys_ui_action_c4ac45a147332100846e7eaecb9a7150,
• sys_ui_action_c5c37126ef202000a7450fa3f8225650,
• sys_ui_action_dd4398b937301000dadaa3549dbe5db8,
• sys_ui_action_eaaae247873321003706db5eb2e3ec61,
• sys_ui_action_706b5e96ef301000a7450fa3f82256a2,
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1910


<!-- page 1911 -->
• sys_ui_action_7c972317ff231000dadaefff0efe1e62,
• sys_ui_action_8aba60e6ef96200099620fa3f8225645,
• sys_ui_action_93d4b3423701200054b6a3549dbe5d25,
• sys_ui_action_d07eddaa37202000dadaa3549dbe5d46,
• sys_ui_action_d67cdea1c32030003d2ae219cdba8f60,
• sys_ui_action_db07e836c320310028d7d56bc3d3ae2c,
• sys_ui_action_e2018d4237502000dadaa3549dbe5d32,
• sys_ui_action_ee01494237502000dadaa3549dbe5dec,
• sysrule_view_203b7ce58f3221001a83cfd827bdee67,
• sysrule_view_43bdcd758f3221001a83cfd827bdee78,
• sysrule_view_522cfce58f3221001a83cfd827bdeeb6,
• sysrule_view_6b8dcd758f3221001a83cfd827bdee3b,
• sysrule_view_9c4c79709f203100598a5bb0657fcf7d,
• sys_script_client_3d260d71873221003706db5eb2e3ec47,
• sys_script_client_f086b853873121003706db5eb2e3ec11,
• sys_script_client_cdf24c2493030200ea933007f67ffb90,
• sys_script_client_e1ea25e193002200ea933007f67ffbff,
• sys_script_2cc257b0373321001a8326877e41f1d0,
• sys_script_235ccb809f203100598a5bb0657fcfea,
• sys_script_3a06ffd59f322100598a5bb0657fcf40,
• sys_script_6940d94fef902000a7450fa3f8225689,
• sys_script_b0490d9047103100846e7eaecb9a7165,
• sys_script_c5dcb4f09f203100598a5bb0657fcffb,
• sys_script_21d6b274ef202000a7450fa3f822565d,
• sys_script_8cd24091ef52200099620fa3f8225619,
• sys_script_9f298c85efa1200099620fa3f82256ba

Activate Agile Development — Unified Backlog
You can activate the Agile Development — Unified Backlog plugin (com.snc.sdlc.agile.multi_task)
if you have the admin role.

Before you begin

Activate Agile Development 2.0.
Role required: admin

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the plugin using the filter criteria and search bar.
You can search for the plugin by its name or ID. If you cannot find a plugin, you might have to
request it from ServiceNow personnel.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1911


<!-- page 1912 -->
3. Select Install to start the installation process.

Note: When domain separation and delegated Admin are enabled in an instance, the

administrative user must be in the global domain. Otherwise, the following error appears:
Application installation is unavailable because another
operation is running: Plugin Activation for <plugin name>.
You will see a message after installation is completed. For information about the components
installed with a plugin, see Find components installed with an application .
Related topics
Agile Development — Unified Backlog

Quick start tests for Agile Development 2.0
Validate that Agile Development 2.0 still works after you make any configuration change such as
apply an upgrade or develop an application. Copy and customize these quick start tests to pass
when using your instance-specific data.

Danger: By default, the system property that is used to run automated tests is disabled
to prevent you from accidentally running these tests on a production system. To avoid data
corruption or an outage, run tests only on development, test, and other non-production
instances. See Enable or disable executing Automated Test Framework tests .
Agile Development 2.0 quick start tests require activating the Agile Development
2.0 plugin (com.snc.sdlc.agile.2.0) and the Agile Development 2.0 - ATF Tests plugin
(com.snc.sdlc.agile.2.0.atf ).
Agile Development 2.0 quick start test suite
Test

Description

Release version

Verify that global rank is
populated when a story is
created

Verify the global rank of a
story after creation.

Madrid

Verify that closing a sprint with Verify that a sprint with active
active stories is prevented
stories cannot be closed.

Madrid

Verify that sprints cannot
overlap in the same group

Verify that sprints in the same
group do not overlap.

Madrid

Verify that sprint points are
updated

Verify that changes to stories
produce accurate sprint point
totals.

Madrid

Verify that only one sprint in
a group can have the current
state

Verify sprint statuses.

Madrid

Verify sprint end date is after
the sprint start date

Verify sprint start and end
dates.

Madrid

Verify that any update on story Verify that adding, estimating,
rolls up to Epic
removing, deleting, updating,
or cancelling a story updates
the epic-level roll-ups
correctly.

Orlando

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1912


<!-- page 1913 -->
Agile Development 2.0 quick start test suite (continued)
Test

Description

Release version

Verify changes to the scope
of a current sprint do not
alter the value of the Total
Committed Points

Verify that the value of Total
Orlando
Committed Points does not
change with change in the
scope of a sprint after its state
is changed to Current.

Verify active flag is set false
when Agile Story state is
changed to Completed/
Cancelled

Verify that active flag of
an Agile story is set to the
following:

Orlando

• False, if the state is changed
to Completed or Cancelled
• True, for all other states

Verify that updating the team/
group capacity overrides
the capacity on all the future
sprints

Verify that any update to the
Group capacity field of the
assignment group results in
the following changes to the
Group capacity field of the
various sprints associated
with this assignment group:

Paris

• For the sprints that are in
the Draft and Planning state:
◦ The group capacity is
updated to the new value.
◦ The Group capacity field
is editable.
• For the sprints in the
Current, Complete, or
Cancelled state:
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
Verify create and edit
functionality of an epic
backlog on the scrum program
board

Quebec
• Verify that you can create
an epic backlog for scrum
programs from the Backlog
tab of Agile Board.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1913


<!-- page 1914 -->
Agile Development 2.0 quick start test suite (continued)
Test

Description

Release version

• Verify that you can update
an existing epic backlog for
scrum programs from the
Backlog tab of Agile Board.
• The epics listed in the
backlog must belong to the
selected epic backlog.
Verify a Demand is converted
to a scrum story

If the PPM Standard plugin
Quebec
(com.snc.financial_planning_pmo)
is active, verify that a Demand
can be converted to an Agile
2.0 story using the Create
Story related link on the
Demand form.
For more information on how
to create an Agile 2.0 story
from a demand, see Create an
artifact from a demand.

Verify a Demand is converted
to a scrum epic

If the PPM Standard plugin
Quebec
(com.snc.financial_planning_pmo)
is active, verify that a Demand
can be converted to an Agile
2.0 epic using the Create Epic
related link on the Demand
form.
For more information on how
to create an Agile 2.0 epic
from a demand, see Create an
artifact from a demand.

Related topics
Quick start tests

Using Agile Development 2.0
Learn how to use the features of Agile Development 2.0 to efficiently manage your product
development life cycle.

Create a release in Agile Development 2.0
Create a release to start associating the stories and scrum tasks of your product development to
the release in Agile Development 2.0.

Before you begin

Role required: scrum_release_planner, scrum_admin

About this task

Use the Releases module to create a release record to start planning for your upcoming release.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1914


<!-- page 1915 -->
A release has a start and end date during which several development iterations are completed.
Releases are created by a product owner and contain user stories, sometimes from multiple
products, and can also involve multiple teams. The stories associated to a release form its
release backlog.

Procedure
1. Navigate to All > Agile Development > Releases.
2. Select New in the record list.
Alternatively, if you already created Product records in Agile Development 2.0, you can use the
Releases related list to open the new release form.
3. On the form, fill in the fields.
New release form
Field

Description

Number

System-generated unique number for the release.

State

Current state of the release. The default is Draft.

Total
committed
points

Sum of all story points from the stories associated with this release.

Release
capacity

Sum of group capacity of all the assignment groups associated with the release.
Group capacity of an assignment group for a release is calculated as: Group
capacity * Number of sprints in the release for that
group
Release capacity is updated only when the Start sprint and End sprint fields
are populated for the groups in the Groups related list in the release record.

Planned
start date

Estimated start date of the release.

Planned
end date

Estimated end date for the release.

Assigned
to

User assigned to the release.
Release must be assigned to a scrum user, such as a release planner or
product owner, whose role allows rights to create and edit releases.

Short
Brief description of the release.
Description
Description Detailed description of the release.
Work notes Updates about the work being performed on the release. This field is updated
by the Assigned to user as the work progresses on the release.
4. Select Submit.

What to do next

Start planning your release by associating products, stories, and the assignment groups to this
release record. Use the related lists available in the release record for these actions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1915


<!-- page 1916 -->
For information on the related lists of a release, see Related lists for a Release in Agile
Development 2.0

Create a theme in Agile Development 2.0
Create a theme in Agile Development 2.0 to group stories of different products together for an
abstract goal.

Before you begin

Role required: scrum_product_owner, scrum_release_planner, scrum_admin

Procedure
1. Navigate to All > Agile Development > Themes.
2. Select New.
Alternatively, you can open the new theme form by using:
◦ Backlog Planning or Sprint Planning tabs of the Agile board
◦ Themes related lists of a Product record
3. On the form, fill in the fields.
New theme form
Field

Description

Number

System-generated unique number for the theme.

Name

Name for the theme that states the high-level business case.

Product

Product with which this theme is associated.
You can associate a theme with just one product at a time.

Short Description

Brief description of the theme.

Description

Detailed description about the theme.

4. Select Submit.

What to do next

Add epics and stories to the theme using the related lists available in the Theme record. For
more information, see Related lists for a Theme in Agile Development 2.0

Create a product in Agile Development 2.0
Create a product to represent a feature or functionality important to customers. A product can
contain themes, epics, and stories that describe these enhancements from the perspective of a
user.

Before you begin

Role required: scrum_product_owner, scrum_release_planner, scrum_admin

Procedure
1. Navigate to All > Agile Development > Products.
2. Select New.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1916


<!-- page 1917 -->
Alternatively, you can use the Products related list of a Release record to open the form for a
new product.
3. On the form, fill in the fields.
Product form
Field

Description

Name

Name of the product.

Short
Description of the product that briefly explains its features and mentions the
Description theme and groups associated to it.
Product
owner

User responsible for managing the development and releases for the product.

4. Select Submit.

What to do next

Use the related lists of the Product record to associate releases, themes, epics, stories,
and assignment groups with it. For more information, see Related lists for a Product in Agile
Development 2.0.

Assignment groups in Agile Development 2.0
Learn the requirements to create and manage your assignment groups in Agile Development 2.0.

Creating assignment groups
https://player.vimeo.com/video/1070078725?
h=f04196c519&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
A user with the admin role can create assignment groups of the type Agile Team. Your scrum
teams are represented by these agile groups, which you can use to assign to work items such as
stories and epics. For more information, see Create an assignment group in Agile Development
2.0.

Adding members to assignment groups
• New customers: After an agile group is created, you can request your admin to add members
to the group.
• Existing customers: If you upgraded to the Zurich release, a user with the scrum_admin role or
the scrum_master role can add members to your agile group.

Note: You can restrict this function just to the admin by creating the

scrum.disallow_scrum_add_group_member property and setting it to true. For
information on how to create a property, see Add a system property

.

For information on the procedure to add members to groups, see Add members to an
assignment group in Agile Development 2.0

Capacity of an assignment group
For each group member, a default number of story points can be defined. At the group level, the
sum of these story points determines the group capacity.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1917


<!-- page 1918 -->
Create an assignment group in Agile Development 2.0
Create an assignment group of the type Agile Team so that you can assign these groups to a
product or a release.

Before you begin

Role required: admin

About this task
https://player.vimeo.com/video/1070078725?
h=f04196c519&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to All > Agile Development > Create Agile Group.
2. On the form, fill in the fields.
Agile Group form
Field

Description

Name

Name of your assignment group.

Description

Brief description of the assignment group.
You can indicate the products or the releases
that this groups works on.

3. Select Submit.
Assignment group is created and the form reopens with additional fields, related links, and
related lists.
4. Optional: Fill in additional fields.
Group form
Field

Description

Manager

Manager of the group

Group capacity (points)

Number of points a group can accommodate
in each sprint.

Group email

Email address of the group.

Result

The Agile assignment groups are created and stored in the Groups [sys_user_group] table and
the Type of these groups is set to Agile Team.

What to do next
• Add members to an assignment group in Agile Development 2.0.
• Use the related links and lists to create sprints and plan the sprint activities for your group. For
more information, see Related links and lists of assignment group in Agile Development 2.0.
Convert a release team to a group (only for existing customers having release teams)
Convert an existing release team to an assignment group of type Agile Team so that you can
assign them to a product or a release.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1918


<!-- page 1919 -->
Before you begin

Role required: admin

About this task

Agile Development 2.0 does not use Release Teams. Existing users who have created release
teams must convert the existing teams to assignment groups.

Procedure
1. Navigate to All > Agile Development > Groups.
2. Click the Convert Release Teams to Groups related link.
3. Select the team that you want to convert to an assignment group.
4. Click Convert to Group.

Result
• The release team is available as assignment group from Agile Development > Groups.
• The members of the release team are copied to the assignment group.
Add members to an assignment group in Agile Development 2.0
Add members who would work on the scrum stories and tasks.

Before you begin

Role required: admin
Any user that you want to add to the assignment group must have the scrum_user role.

Procedure
1. Navigate to All > Agile Development > Groups.
2. Open the group to which you want to add members.
3. From the Group Members related list, select Edit.
4. Add the required scrum user.

Result

The selected scrum user is listed in the Group Members related list.

Create an epic in Agile Development 2.0
Define the high-level requirements of the features that you want to develop by creating epics in
Agile Development 2.0.

Before you begin

Role required: scrum_story_creator, scrum_admin

About this task

Create epics in Agile Development 2.0 and organize them in a hierarchy of parent and children.
You can associate an epic to a product, theme, or configuration item (an item or service that is
affected).

Procedure
1. Navigate to Agile Development > Epics.
2. Select New.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1919


<!-- page 1920 -->
Alternatively, you can open the new epic form using the Agile board, from a theme record, or
from a product record.
You can also convert an existing active story into an epic. For details, see Related links and
lists for a Story in Agile Development 2.0.
3. On the form, fill in the fields.
Epic form
Field

Description

Number

System-generated number for the epic.

Product

Product associated with this epic.
You can associate an epic with only one product at a time.

Priority

Priority of the epic.

State

State of the epic. Select one of the following:
Draft
The epic requirements, such as the detailed description, are still
being drafted.
Ready
The epic is ready for pickup by the product team. The product
manager and the scrum team can break the epic down into
stories.
Work in Progress
The development team is working on the stories for epic and
recording the changes in the work notes field.
Complete
The development and testing efforts on all the stories and any
child epics for the epic are complete.
Cancelled
The epic has been canceled.
This field is automatically set to Draft.

Short
Description

Brief description of the epic.

Description

Detailed description of the epic.

Work notes

Notes about the work done on the epic.

Total story
count

Number of stories in the epic.

Completed
count

Number of completed stories in the epic.

Percent
complete by
count

Percentage of completed work in the epic. Story count is used to calculate
this value.

Total estimate Sum of the estimates of all stories in the epic.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1920


<!-- page 1921 -->
Field

Description

Completed
estimate

Sum of the estimates of all the completed stories in the epic.

Percent
complete by
epic

Percentage of completed work in the epic. Story estimate is used to calculate
this value.

Missing
estimate

Number of stories in the epic that are missing estimates.

Top program

Program mapped to the scrum work enabling top-down hybrid planning.
This field is visible in the Scrum view of the epic form if you activate the PPM
Standard plugin (com.snc.financial_planning_pmo).

Fill in the Planning section if you want to create benefit plans for the epic. This section is
available in the Benefit view of the epic form.
4. Click Submit.

What to do next
• Add child epics or stories to the epic:
◦ Create a child epic for this epic by selecting New from the Child Epics related list.
◦ Add stories to this epic by selecting New from the Stories related list. For more information,
see Create a story in Agile Development 2.0.
An epic can have one or more stories, but a story can belong to only one epic at a time.
• You can also associate epics to a project in Project Portfolio Management from the Epics
related list.
This related list appears only when the value for the Execution Type field is selected as Agile
and the Agile Development 2.0 plugin is installed.
Create a monetary benefit plan for an epic
Epic benefit plans capture the potential benefits accrued by the epic when the epic is executed.
Create a monetary benefit plan to specify the estimated benefit in a category spanning one or
more fiscal periods.

Before you begin

Role required: scrum_master, scrum_product_owner, or scrum_admin

About this task

The monetary benefit plan breakdown records are automatically created when you save the
benefit plan.

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Select View > Benefit from the Additional actions menu (

).

4. On the form, fill in the required fields in the Planning section.
This section is available when the Benefit view is selected.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1921


<!-- page 1922 -->
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1922


<!-- page 1923 -->
Field

Description

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1923


<!-- page 1924 -->
Field

Description

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

Role required: scrum_master, scrum_product_owner, or scrum_admin

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Select View > Benefit from the Additional actions menu (

).

4. Click the Monetary Benefit Plans related list.
5. Open the required monetary benefit plan.
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1924


<!-- page 1925 -->
Field

Description

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

Role required: scrum_master, scrum_product_owner, or scrum_admin

About this task

The non-monetary benefit plan breakdown records are automatically created when you save the
benefit plan by selecting Automatic or Manual in the Breakdown Type field. The non-monetary
benefit plan breakdown records specify the estimated and actual non-financial benefits at a
granular level for specific fiscal periods, such as FY16: April and FY16: May. The Non-monetary
Benefit Plan Breakdowns related list shows the aggregated benefits for estimated and actual
non-financial benefits for each fiscal period for the epic.

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Select View > Benefit from the Additional actions menu (

).

4. On the form, fill in the required fields in the Planning section.
This section is available when the Benefit view is selected.
Planning section of the Epic form
Field

Description

Planned
start date

Projected start date for the epic. The planned start date can be the current date
or a future date.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1925


<!-- page 1926 -->
Field

Description

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

Benefit
type

Type of benefit. Select Non-monetary benefits.

The value of the Category field determines the choices available in this field.

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1926


<!-- page 1927 -->
Field

Description

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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1927


<!-- page 1928 -->
Field

Description

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1928


<!-- page 1929 -->
Before you begin

Role required: scrum_master, scrum_product_owner, or scrum_admin

Procedure
1. Navigate to All > Agile Development > Epics.
2. Open the required epic.
3. Select View > Benefit from the Additional actions menu (

).

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

Variance

The difference between the estimated and ac­
tual benefit.

9. Click Update.
Associate monetary and non-monetary benefit plans
Associate monetary and non-monetary benefit plans, so that you can capture the potential
benefits (financial and non-financial) accrued by the epic for the hybrid benefit plans.

Before you begin

Role required: scrum_master, scrum_product_owner, or scrum_admin

About this task

You can associate a monetary benefit plan with a non-monetary benefit plan and vice versa.

Note: When you delete a benefit plan, any relationship with the associated benefit plan is
also removed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1929


<!-- page 1930 -->
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

Create a story in Agile Development 2.0
Create high-level definitions of your requirements in the form of stories in Agile Development
2.0. Manage and track your stories by associating them to a product, project, or release and by
assigning them to an assignment group.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1930


<!-- page 1931 -->
Before you begin

Role required: scrum_story_creator, scrum_admin

Procedure
1. Navigate to All > Agile Development > Stories.
2. Select New.
Alternatively, you can create a Story from one of the following:
◦ Backlog Planning or Sprint Planning tab of the Agile board.
◦ Stories related list of a product, release, sprint, theme, or epic.
◦ Defect or enhancement record.
3. On the form, fill in the fields.

Note: Some of the fields on the Story form may appear filled depending on the option
that you used to create the story.
Story form
Field

Description

Number

System-generated number for the story.

Theme

Theme associated with the story.
A theme can have one or more stories, but a story can belong to only one
theme at a time.
Select the theme for this story from a list of themes that are associated with
the Product field.

Epic

Epic associated with the story.
An epic can have one or more stories, but a story can belong to only one epic
at a time.
Select an epic for this story from the epics that are associated with the
Product field.

Type

Type of story.
Choose from options such as Development, Documentation, Spike, and
others.

Classification Type of development that the story involves. This field is automatically set to
Feature.
This field has no connection to the Defect and Enhancement fields in the
Related Records tab.
State

State of the story. Select one of the following:
◦ Draft:The story requirements, such as the description and acceptance
criteria, are still being drafted.
◦ Ready: The story is ready for pickup by the development team.
◦ Work in Progress: The development team is working on the story and
recording the changes in the work notes field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1931


<!-- page 1932 -->
Field

Description

◦ Ready for Testing: The story is ready for pickup by a tester.
◦ Testing: The tester is testing the story based on the requirements provided
in the story.
◦ Complete: The development and testing efforts on the story are complete.
◦ Cancelled: The story has been canceled.
This field is automatically set to Draft.
Points

Number of points that indicate the estimated effort that is required to
complete the story.
A larger point value indicates that the story requires a greater amount of effort.

Priority

Priority assigned to the story.
A product owner can use priorities to rank stories in the planning board.

Product

Product that this story is associated with.

Release

Release that this story is associated with.
The release can be from the releases associated with the selected product.

Assignment
group

Agile team that the story belongs to.

Sprint

Sprint that this story is associated with.
This field is available only when a value is selected from the Assignment
group field.

Assigned to

User who is working on the story. Users on this list have appropriate scrum
roles.

Demand

Demand that this story is associated with.
When the demand is converted to project, the demand stories move from
demand to project.
When a demand is converted to a story, the reference to the demand is
displayed here.

Project

Project that this story is associated with.

Project
phase

Name of the agile project phase that this story is associated with. This field is
available only when a value is selected from the project field.
If a project has only one phase, then the story is automatically tagged to that
phase.

Note: An agile phase can have stories that belong to more than one
group.
Blocked

An indicator to show that there are issues that prevent the story from
progressing.

Short
description

A brief description of the story.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1932


<!-- page 1933 -->
Field

Description

Description

A detailed description of the story.

Acceptance
criteria

The functional criteria or testing results that are required to move this story to
the Complete state.

Work notes

Notes about the work done for this story.

Related Records section of the Story form
Field

Description

Defect

Defect that is associated with the story. This
field is a reference field from the Defect
[rm_defect] table. This field is required if the
story is created for a defect.
Click the search icon ( ) in this field to
display the existing defects or to open a new
defect.
Only users with the feature_user role can
open a defect. The admin must grant
the feature_user role to all users who are
expected to open defects in the Agile
Development application. This field is the
only location in the Agile Development
application where records from the Defect
[rm_defect] table appear.
For more information on defects, see
Reporting defects in Agile Development 2.0.

Enhancement

Enhancement associated with the story.
This field is a reference field from the
Enhancement [rm_enhancement] table. This
field is required if the story is created for an
enhancement.
Click the search icon ( ) in this field to
display the existing enhancement requests
or to open a new enhancement.
Only users with the feature_user role can
open an enhancement. The admin must grant
the feature_user role to all users who are
expected to open enhancement requests
in the Agile Development application.
This field is the only location in the Agile
Development application where records from
the Enhancement [rm_enhancement] table
appear.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1933


<!-- page 1934 -->
Field

Description

For more information on enhancements, see
Enhancement requests in Agile Development
2.0.
4. Select Submit.

Result
• The story is created and the form reopens with related links and lists.
• The story is listed in the backlog depending on the fields filled in the story form.

What to do next
• Use the related links and lists of the story to create scrum tasks for this story, or convert this
story into an epic or split this story into two stories. For more information, see Related links and
lists for a Story in Agile Development 2.0.
• Add dependencies for Agile Development 2.0 stories
• You can create a story with the same details as this story by using the Insert or Insert and Stay
options from the story additional actions (

).

When you use Insert and Stay, the form of the newly created story stays open. You can modify
the details of the story or create more stories with these details. On the Agile board, the
new story is positioned right below the original story. The global rank of the new story is set
accordingly.

Note: Set the glide.ui.task.insert and glide.ui.advance properties to
true to access these actions. These actions are not allowed on stories added from the
triage board.

Generate acceptance criteria for stories using Now Assist for Strategic
Portfolio Management (SPM)
Create clear, comprehensive, and testable acceptance criteria for user stories without writing
them manually in Agile Development 2.0. Review and refine suggested options to ensure they
meet your requirements.

Before you begin

Ensure that Now Assist for SPM is installed in your instance and that the following two skills are
active:
• Acceptance criteria generation
• Refine records
For more information, see Configure Now Assist for Strategic Portfolio Management (SPM).
Role required: scrum_story_editor

About this task

For an Agile 2.0 story, you can generate acceptance criteria by selecting Generate acceptance
criteria from the story header or using the Now Assist context menu in the Acceptance criteria
field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1934


<!-- page 1935 -->
Procedure
1. Navigate to All > Agile Development > Stories.
2. Open your story record.
3. Generate acceptance criteria for the story using one of the following options:
◦ From the story form header: Select Generate acceptance criteria.
◦ From the Acceptance criteria field:
a. Place your mouse cursor in the field.
b. Select Refine with Now Assist menu (

).

c. Select Generate acceptance criteria.

4. Review the generated acceptance criteria.
5. You can choose to further refine the generated content using the Now Assist context menu
(

) or generate a new criteria.

6. Save the Story form.

Add dependencies for Agile Development 2.0 stories
Add prerequisite and dependent items for stories in Agile Development 2.0 so that you can
visualize these dependencies on the scrum planning board and plan your sprints accordingly.

Before you begin

Role required: scrum_story_creator, scrum_story_editor

Procedure
1. Navigate to All > Agile Development > Stories.
2. Open the story to which you want to add dependencies.
Alternatively, you can use the scrum program board from the Agile board to open your story
and add dependencies.
3. Add dependencies to the stories using the Prerequisite Stories or Dependent Stories related
lists.
◦ Prerequisite Stories is the list of all stories that must be complete before the current story.
◦ Dependent Stories is the list of all stories that depend on the completion of the current story.
4. Select Save and then select Update.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1935


<!-- page 1936 -->
What to do next

You can visually analyze the dependencies of the stories using the scrum program board to help
with your sprint planning.
1. Navigate to All > Agile Development > Agile Board > Program > Planning
2. Use the dependencies icon (

) to show or hide dependencies between stories.

Note: Access to the Scrum program board is available only with the Scrum Programs
plugin (com.snc.sdlc.scrum_program).

Create a scrum task for Agile Development 2.0 stories
Create scrum tasks in Agile Development 2.0 to break down a story into manageable pieces for
your team to work on. You can create one scrum task at a time or multiple scrum tasks at once.

Before you begin

Role required: scrum_story_creator, scrum_admin

About this task

Team members volunteer for tasks based on their skills and track the hours remaining daily. If the
task is not complete within the planned hours, it can be further split into additional tasks. A story
is not complete until all its tasks are complete.
This task explains how to create one scrum task at a time. To save time, you can create multiple
scrum tasks at once. See Create multiple scrum tasks for stories in Agile Development 2.0.

Procedure
1. Navigate to All > Agile Development > Stories
2. Open a story that you want to create tasks for.
3. From the Scrum tasks related list, select New.
Alternatively, you can create a scrum task using the Task board view of the Sprint tracking tab,
on the Agile board.
4. On the form, fill the fields.
Scrum Task form
Field

Description

Number

System-generated number for the story.

Story

Displays the story associated with the scrum task.

Priority

Priority for the task.

Planned
hours

Estimated number of hours to complete the task.

Remaining
hours

Estimated number of hours remaining to complete the scrum task. The
assigned group member updates this value as work is progressing on the task.

Actual
hours

After the task is complete, enter the number of hours the task actually took.

Type

Type of work involved.

State

Current state of the scrum task. The default for a new task is Draft.

A typical scrum task should take between 4 and 12 hours. If the task requires
more than 12 hours, consider breaking it down into multiple tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1936


<!-- page 1937 -->
Field

Description

Assignment Group that would work on this task.
group
This field is automatically populated from the Assignment group of the story
from which the task is created.
Assigned to User working on the scrum task. This field is set to the story owner by default.
Blocked

Indicator to show that there are issues that prevent the scrum task from
progressing.

Short
Brief description of the scrum task.
description
Description Detailed summary of the scrum task.
Work notes Notes to indicate progress on the scrum task or issues blocking it.
5. Select Submit.

Important: When a Scrum Task is created under a Story, the date fields on the Story
become read-only.
Create multiple scrum tasks for stories in Agile Development 2.0
For your Agile Development 2.0 stories, create batches of different types of scrum tasks at a time,
to save time.

Before you begin

Role required: scrum_story_creator, scrum_admin

About this task

Select a story that need scrum tasks and create all these tasks together. You can create tasks of
different types such as Testing, Analysis, and others. All these tasks are created with the short
description ToDo.... Open the task records later and fill in more details for the task.

Procedure
1. Navigate to All > Agile Development > Stories
2. Right-click a story number and select Add Scrum Tasks.
3. On the form, enter the number of scrum tasks to create for each task type.
◦ Analysis
◦ Coding
◦ Documentation
◦ Testing
4. Select OK.

Result

A batch of tasks of the selected types is created with a short description of ToDo... and are listed
in the Scrum Tasks related list of the story record.

What to do next

Open each scrum task record and fill in more details such as description, priority, and others. For
field information of a Scrum Task form, see Scrum Task form.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1937


<!-- page 1938 -->
Create a personalized backlog in Agile Development 2.0
Create filters to define which stories appear in your backlog in Agile Development 2.0.

Before you begin

Role required: scrum_product_owner

About this task

A backlog is a prioritized list of stories that are related to a specific product, epic, release, and so
on. The definition of a backlog is flexible and it is set up by the product owner.

Procedure
1. Navigate to All > Agile Development > Personal Backlogs.
2. Select New.
3. On the form, fill in the fields.
Backlog definition form
Name

Name for the backlog.

Table

Table from which records are pulled for this
backlog.
The default value for this field is Story
[rm_story].

Visible to

Users that you want to share the backlog with.
Use the Unlock Visible to icon ( ) to add
users.

Visible to Groups

Groups of users that you want to share the
backlog with. Use the Unlock Visible to icon
( ) to add groups.

Filter

Filter criteria that are applied to stories in the
backlog.
The default filter criteria is Active is True and
Sprint is Empty.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1938


<!-- page 1939 -->
4. Select Submit.

What to do next

You can create any number of personal backlogs that match different priorities. Access all your
personal backlogs by navigating to Agile Development > Personal Backlogs and also on the
Backlog tab of your Agile Board.

Manage your product backlog in Agile Development 2.0
Manage your product backlog from a centralized location called the Agile board in Agile
Development 2.0. Add stories to a personalized backlog and prioritize them as needed.

Before you begin

Role required: scrum_product_owner

About this task

Prioritize stories in your backlog. You can add stories, assign stories to a release or a product,
add triaged records, and so on.
• Steps 1 and 2 take you to where you can manage your scrum backlogs.
• Steps 3 through 12 provide guidance on the different actions that you can perform on your
backlog. Choose the actions based on your requirement.
• All actions that involve a triage board are accessible only when the Agile Development —
Unified Backlog plugin (com.snc.sdlc.agile.multi_task) is active.

Procedure
1. Navigate to All > Agile Development > Agile Board > Backlog.
If you have already created a personalized backlog, it automatically appears in this tab. If you
have not created a personalized backlog, then a welcome page appears that provides a link to
create a backlog.
2. From the list at the top-left corner, select the required backlog or create a backlog by using the
Create Backlog icon (

).

3. Update the existing filter criteria of your selected backlog by using the Edit Backlog icon (
4. Personalize columns in a list by selecting the personalize icon

).

.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1939


<!-- page 1940 -->
5. Add a story to the backlog.
a. Click Create Story.
b. Specify the required details in the Story form.
c. Click Submit.
The story is listed at the bottom of the backlog on the last page.
If you want to add a story at a particular position in the backlog, select a story just above this
position, and then click Create Story. The new story is listed below the story that you selected.
6. Update a story from the backlog.
a. Click the story number of the story that you want to update.
b. Edit the story details and click Update.
If you have read-only access, you can open the Story form but cannot edit the story details.
7. Create an epic or a theme directly from the Backlog tab.
a. Select the options icon (

) next to the Create Story option.

b. Select Create Epic or Create Theme from the list.
c. On the form, fill in the fields and submit it.
The new epic is listed in the epics filter only if its stories meet the filter criteria of the selected
backlog.
8. Arrange stories within a Backlog page using one of the following options.
◦ Use the mouse device to select and hold a story, drag it to the required position, and drop it.
◦ Use the keyboard. For more information, see Arrange Agile Development 2.0 stories in Agile
Board using the keyboard
Rearranging stories in the backlog adjusts the ranking of stories in the global_rank column in
the Story [rm_story] table. When you move a story within a backlog, its rank changes relative to
the stories within the same backlog. So, the story at the top of the backlog list has a lower rank
value and assumes higher priority while the story at the bottom of the backlog list has a higher
rank value and assumes lower priority.
9. Perform any of the following actions on a single story or a set of stories by selecting the
required stories and clicking the Options icon ( ).
Option

Description

Move to top

Moves the stories to the top of the Backlog list.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1940


<!-- page 1941 -->
Option

Description

Move to next
page

Moves the stories to the top of the Backlog list on the next page.

Move to previ­
ous page

Moves the stories to the top of the Backlog list on the previous page.

Move to page

Moves the stories to a page of your choice. The stories are listed at the
bottom of the new page that they are moved to.

Move to bottom

Moves the stories to the bottom of the Backlog list.

Assigned to

Opens the Users list. Select the user who you want to assign the stories
to.

Assigned group

Opens the Groups list. Select the group that you want to assign the sto­
ries to.

Epic

Opens the Epic list. Select the epic that the stories belong to.

Product

Opens the Product list. Select the product that the stories belong to.

Project

Opens the Project list. Select the project that the stories belong to.

Project Phase

Opens the Project Phase list. Select the project phase that the stories be­
long to.

Release

Opens the Scrum Releases list. Select the release in which the stories
are scheduled for completion.

Theme

Opens the Theme list. Select what theme to apply on the stories.

10. Use the Triage Board option to view and edit the records in your triage boards.
You can do the following actions using the Triage Board option:
◦ View and edit the total number of records (such as problems or defects) in the triage boards
of all task types
◦ Open the list of a specific task type
◦ Edit an existing triage filter definition
11. Add a triaged record, such as a defect, to the bottom of your backlog.
a. Click Triage Board.
b. Select your triage filter definition.
For example, a definition for all defects.
c. Select the records that you want to add to your backlog.
d. Click Add to Backlog.
12. Move a triaged record from your backlog back to the triage board.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1941


<!-- page 1942 -->
a. Open the triaged record by clicking its number.
b. Click the Move back to triage board related link.
You need a specific role that provides access to a triaged record in the backlog. For example,
to view a problem in the backlog, you must have the itil role. If you do not have access to any
record, an error message appears.
Related topics
Agile board in Agile Development 2.0
Create a personalized backlog in Agile Development 2.0
Arrange Agile Development 2.0 stories in Agile Board using the keyboard
Learn how to use the keyboard to move and rearrange Agile Development 2.0 stories in the
Backlog and Sprint Planning tabs of your Agile board.

Before you begin

Role required: scrum_admin, scrum_master, scrum_product_owner, or scrum_sprint_planner

Procedure
1. Reorder a single story:
a. Highlight the desired story by pressing the Tab key.
b. Highlight the context menu (

) icon on the story by pressing the Tab key again.

c. Select the story by pressing the Enter key.
d. Move the story to the desired position using the up and down arrow keys.
e. Fix the position of the story by pressing the Enter key.
2. Reorder multiple stories:
a. Highlight the desired story by pressing the Tab key.
b. Select the story by pressing the Enter key.
c. Select multiple stories using the up and down arrow keys and the Shift or Control keys.
▪ To select consecutive stories, use the down arrow key to highlight the last story that you
want to select, and then press the Shift and Enter keys.
▪ To select stories that are in different positions on the page, use the down arrow key till you
go to the next story that you want to select. Then, press the Control and Enter keys.
Repeat this process to select other stories.
d. Highlight the context menu (

) icon on the story by pressing the Tab key again.

e. Press the Enter key to group all the selected stories.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1942


<!-- page 1943 -->
Multiple stories that you selected appear

grouped.
f. Move the stories to the desired position using the up and down arrow keys.
g. Fix the position of the stories by pressing the Enter key.

Plan your sprint activities in Agile Development 2.0
Streamline your sprint activities such as creating, editing, and completing sprints, or adding
stories to sprints, using the Sprint Planning tab of the Agile board.

Before you begin
• You must be a member of an agile group to access the Sprint Planning tab.
• You can perform only a set of actions on the Sprint Planning tab based on the role that
is assigned to you. For more information, see roles in Components installed with Agile
Development 2.0.
• Role required: scrum_admin, scrum_master, or scrum_sprint_planner

About this task
• Steps 1 through 3 take you to where you can plan your sprint activities.
• Steps 4 through 11 provide various actions that you can perform to plan your sprints. Choose
the ones that suit your requirement.
For more information on the Agile board, see Agile board in Agile Development 2.0.

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. Select the Sprint Planning tab.
3. From the Group field, select an assignment group for which you want to plan the sprint
activities.
The list displays all the teams to which you are added as a group member. The default
assignment group is the team that you have selected earlier or the first team in which you were
added as a group member.
4. Create a sprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1943


<!-- page 1944 -->
a. Select Create Sprint.
b. On the form, fill in or update the fields.
c. Select Submit
Alternatively, you can also create sprints in bulk for an assignment group and come back
to this planning tab to continue planning your sprints. See Create sprints in bulk in Agile
Development 2.0.
5. Edit a sprint.
a. Open the sprint form by selecting its name.
b. In the Sprint form, update its details.
Until the sprint begins, you can also update the capacity of the assignment group using the
Group capacity field to account for changes in team composition, holidays, or vacations.
c. Select Update.
6. Add a new story to the backlog.
a. Select Create Story.
b. On the form, fill in the fields.
For field information, see Create a story in Agile Development 2.0.
c. Select Submit.
The story appears at the bottom of the backlog. You can edit the story details by selecting its
number. If you have read-only access, you can view the story form but cannot edit the story
details.
7. Add a story to the backlog or a sprint and simultaneously decide its order of implementation.
a. From the Backlog or a sprint, select the row of a story under which you want to add the new
story.
b. Repeat steps 6a through 6c.
The new story is placed under the story that you initially selected.
8. Personalize columns in a list using the personalize option (

).

9. Arrange the stories according to your priority by reordering the stories in the Backlog or any of
the sprint sections.
10. Start a sprint by selecting Start Sprint in the section of the top sprint.
The Sprint Tracking tab appears.
11. Mark a sprint complete by selecting Complete Sprint in the section of the top sprint.
a. In the Complete Sprint dialog box, move any incomplete stories to the backlog or a future
sprint.
b. Select Complete.
The sprint is marked complete and disappears from the Sprint Planning tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1944


<!-- page 1945 -->
Related topics
Agile board in Agile Development 2.0

Create sprints in bulk in Agile Development 2.0
Create multiple sprints at once for one or more Agile Development 2.0 assignment groups to
save time.

Before you begin

Role required: scrum_admin, scrum_master, or scrum_sprint_planner

About this task

Create multiple sprints for an assignment group at a time. If multiple assignment groups follow
the same sprint cadence, you can generate sprints in bulk for all these groups together.

Procedure
1. Navigate to All > Agile Development > Groups.
2. Select the assignment groups that you want to create sprints for and select Create Sprints.
3. On the form, fill in the fields.
Create Sprints form
Field

Description

Name

Name for the sprint that applies to all the
selected assignment groups.
For example, if all the selected assignment
groups would work for the upcoming release,
you can name your sprint by the release
name, such as <Release name> sprint.

Starting Number

Starting number of the sprint.
The sprints created for the selected
assignment groups are named as <Name>
<Starting Number>.

Start date

Date that the sprint starts on.

Duration (days)

Number of days that a sprint contains.

Number of Sprints

Number of sprints that you want to create for
the selected assignment groups.

4. Select OK

Result

The sprints are created for the selected assignment groups and are listed in the Sprints related
list of these groups.

Track progress of stories for a sprint in Agile Development 2.0
Use the Sprint Tracking tab of the Agile board in Agile Development 2.0 to track the development
of the stories from your current sprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1945


<!-- page 1946 -->
Before you begin

You must be a member of an assignment group to access the board.
Role required: scrum_user or scrum_admin

About this task

Use the Story board view of the Sprint Tracking tab to check the state of your stories for the
current sprint. On the board, stories are shown as cards, and their states are indicated as lanes.
You can move the story cards into different lanes or add new stories for the team, to make realtime updates during scrum calls or other status meetings.

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. Select the Sprint Tracking tab.
3. From the Story board view, review the stories for the current sprint using the state lanes.
4. Optional: Change the state of a story by moving the story from one lane to another.
(Optional) If you use triage board and add those records to your backlog, your board could
have stories associated to the triaged records. When you move these stories to different lanes
on the story board to update their state, the state of the associated story is updated but the
state of the original triaged record remains the same. To change the state of the original record,
open the story and switch to the original record tab.

5. Optional: Hide lanes that you do not want to be displayed by selecting Hide Lane from the
vertical lane menu (

).

6. Optional: Display any hidden lanes and change the board theme.
a. Select Configuration (

).

b. Select Advanced Settings.
c. Select the lanes you want to be displayed.
You can also change the order of the lane display by reordering them in the Lane
configuration section.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1946


<!-- page 1947 -->
(Optional)
d. Select a different color to change the board theme.
7. Optional: Add a story to a specific lane.
a. Select + Add Card.
b. On the form, fill in the fields and click Submit.
For field information, see Create a story in Agile Development 2.0.

Track progress of scrum tasks for a sprint in Agile Development 2.0
Use the Sprint Tracking tab of the Agile board in Agile Development 2.0 to track the progress of
scrum tasks for the stories from your current sprint.

Before you begin

You must be a member of an agile group to access the board.
Role required: scrum_user or scrum_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1947


<!-- page 1948 -->
About this task

Use the Task board view of the Sprint Tracking tab to check the state of your scrum tasks for the
current sprint. On the board, each story is a collapsible section. Tasks for each story are shown
as cards in these sections, with their states indicated as lanes.
You can move the task cards into different lanes or add new task for a story, to make real-time
updates during scrum calls or other status meetings.

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. Click the Sprint Tracking tab.
3. From the Task board view, review the states of the scrum tasks of all stories scheduled for the
current sprint.
4. Change the state of a scrum task by moving the task from one lane to another.
5. Add a scrum task to a specific lane.
a. Click + Add Card.
b. On the form, fill in the fields and click Submit.
For field information, see Create a scrum task for Agile Development 2.0 stories.

Track sprint progress in Agile Development 2.0
Track the progress of stories, scrum tasks, and tests for the current sprint from a single
consolidated view on the Agile board in Agile Development 2.0.

Before you begin
• You must be a member of an Agile 2.0 assignment group to access the Sprint Tracking board.
• Viewing, adding, or updating tests for stories requires activating the Test Management 2.0
plugin (com.snc.test_management.2.0).
Role required: scrum_user or scrum_admin.

About this task

Using the List view of the Sprint Tracking tab, review the progress of scrum tasks and tests
created for the stories of the current sprint.
Each story is listed as section that can be expanded to show the tasks or tests created for it. You
can add new tasks or tests to the stories, or run tests that are in the Ready state.
Steps 3 through 8 provide different actions to perform on the Sprint Tracking board. Choose the
ones that suit your requirement.

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. From the Sprint Tracking tab, select the List view.
All stories scheduled for the current sprint are listed as sections, which can be expanded and
collapsed. The details of the story such as the current state, short description, and assigner
user can be seen.
3. From the Show field, select the items that you want to review the status of.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1948


<!-- page 1949 -->
◦ Scrum Tasks
◦ Tests
4. Expand each story section to see the details of the tasks or tests added to it.
You can customize the information shown for these items using the personalize option (

).

5. Add a new scrum task to a story.
a. In step 3, select Scrum Tasks.
b. From the section of the story that you want to add the task for, select Add Scrum Task.
c. On the form, fill in the fields.
For field information, see Create a scrum task for Agile Development 2.0 stories.
d. Select Submit.
6. Add a new test for a story.
a. In step 3, select Tests.
b. From the story that you want to add the test for, select Add Test.
c. Enter the short description and select Submit.
A test is created and listed in the story section. You can open the test form, add test steps,
verify them and mark the test as ready to run. For information on the test form, see Test version
form in Agile Development 2.0.

Note: Adding tests to a Story requires activating the Test Management 2.0 plugin. See
Activate Test Management 2.0.
7. If there are tests in Ready state for a story, you can run those tests.
For more information, see Run tests for a story in Agile Development 2.0.

Run tests for a story in Agile Development 2.0
For a story whose tests are marked ready to be run, run those tests and execute all the test steps
using the Sprint Tracking tab of the Agile board in Agile Development 2.0.

Before you begin

Role required: scrum_user

About this task

From the Agile board, use the List view of the Sprint Tracking tab to check stories that have test
versions ready to be run. These stories have a Run option next to their state. Run those tests by
executing and verifying each test step.

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. From the Sprint Tracking tab, select the Listview.
All stories scheduled for the current sprint are listed as sections, which can be expanded and
collapsed.
3. From the Show field, select Tests
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1949


<!-- page 1950 -->
4. For the story that you want to run the tests on, select Run.
5. Select the environment on which the test is to be run and confirm by selecting Run.
6. In the Test Execution window, execute each test step and mark them as passed, failed, or
blocked accordingly.
◦ Passed (
◦ Failed (
◦ Blocked (

)
)
)

If you select Failed or Blocked for a test step, you can enter comments and attach files to
support your selection.
7. If you're running multiple tests for the story, use the Next Test option (
test after verifying the current one.

) to move to the next

8. Repeat step 6 and 7 until you've executed and verified all the test steps.
9. Optional: You can pause the test for the moment by selecting Pause
(Optional) If you've paused the test, skip step 10.
When you want to resume the paused test run later, you can find it at Test Management >
Runs.
10. After marking all test steps, select Done.

Result

The result of each test is indicated on the Agile board as Passed, Failed, Blocked, or Not finished
according to the following conditions.
• If all the test steps are passed, the status is Passed.
• If at least one step of the test is not executed, the status of the test is Not finished.
• If at least one step of the test fails, the overall status of the test is Failed. This rule takes
precedence over the previous rule.
• If at least one step of the test is blocked, the overall status of the test is Blocked. This rule
takes precedence over the previous two rules.

What to do next

View the test results for a story in Agile Development 2.0

View the test results for a story in Agile Development 2.0
Analyze results of the tests that you run on Agile Development 2.0 stories. Troubleshoot failures
so that the story can be moved to completion.

Before you begin

Role required: scrum_user

About this task

Use the Sprint Tracking tab of the Agile board to review the tests run for a story. The results of the
run tests are listed in the Test results related list of each test form. From these results, you can
find additional details such as the comments for why a test has been blocked or failed, and any
attachments supporting the comments. Use these additional details to troubleshoot and fix any
issues in your product or feature.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1950


<!-- page 1951 -->
Procedure
1. Navigate to All > Agile Development > Agile Board.
2. From the Sprint Tracking tab, select the List view.
All stories scheduled for the current sprint are listed as sections, which can be expanded and
collapsed.
3. From the Show field, select Tests
4. From a story section, select a test that you want to analyze the results of.
5. From the Test results related list, select a test result to view its details in a form.
Test results form
Field

Description

Number

Automatically generated number for the test
result.

Test

Test that is run.

Result

Execution status of the test: Passed,Failed,
or Blocked.

Version

Version of the test that is executed.

Execution environment

Environment on which the test is executed.

Updated

Date and time that the test result was
recorded.

Run by

Name of the tester who executed the test
plan.

Test run

Name of the test run.

Beneath these fields, the tests steps that are executed and verified for this test are listed along
with their execution status. Any comments or attachments that are added to these steps are
also displayed for reference.
Related topics
Track sprint progress in Agile Development 2.0

Report a defect in Agile Development 2.0
Track issues associated to your product or feature by reporting defects in Agile Development 2.0.

Before you begin

Role required: feature_user, scrum_story_creator, or scrum_admin
The administrator must grant the feature_user role to all those users who are expected to report
defects using the Agile Development 2.0 application.

About this task

Create a defect record using the Defects module. You can later create a story for this defect so
that the relevant assignment group can work on resolving the issues.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1951


<!-- page 1952 -->
Procedure
1. Navigate to All > Agile Development > Defects.
2. Select New.
3. On the form, fill in the fields.
Defect form fields
Field

Description

Number

System-generated unique identifier for the defect.

Priority

Priority assigned to the defect. A product owner can use priorities when
creating stories.

State

State of the defect. Select one of the following:
◦ Draft:The defect details are still being drafted.
◦ Scoping: The defect is being triaged and the scope of the defect and its fix is
being analyzed.
◦ Awaiting approval: The scope of the defect is finalized and the team is
awaiting approval to start working on it.
◦ Work in progress: The team is working on the fix for the defect.
◦ Testing/QA: The tester is testing the defect fix based on the scope provided.
◦ Deploy/Launch: The team is ready to launch the fix for the defect.
◦ Closed Complete: The fix for the defect is deployed into the product.
◦ On Hold: The defect is put on hold due to any blockers and until further
review.
◦ Cancelled: The team cancels working on this defect.
This field is automatically set to Draft.

Assignment The group to which the defect belongs.
group
Assigned to The user assigned to the defect.
Product

Product with which this defect is associated. The field is required if the defect is
part of a product.

Reported
against

Problem, change, or other task record that this defect is reported against.

Short
Brief description of the defect.
Description
Description Detailed description of the defect.
Work notes Notes about the work being performed on the defect. Work notes can be
updated as the work progresses on this defect.
4. Select Submit.

Result

The defect is created and the form reopens with the Stories related list. The list of stories is only
visible to users with a scrum role.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1952


<!-- page 1953 -->
What to do next

A scrum product owner can review the defect and decide if a story must be created for it. See
Create a story in Agile Development 2.0.

Create an enhancement request in Agile Development 2.0
Capture enhancement ideas for your feature or product as enhancement requests in Agile
Development 2.0 so that you can review and prioritize them later.

Before you begin

Role required: Any one of the feature_user, scrum_story_creator, scrum_admin, or
rm_enhancement_admin roles
The administrator must grant the feature_user role to all users who are expected to create an
enhancement request in the Agile Development application.

About this task

Create an enhancement record using the Enhancements module. You can later review this
record and create a development story for it if you choose to prioritize for any of your upcoming
releases.

Procedure
1. Navigate to All > Agile Development > Enhancements.
2. Click New.
3. Fill in the fields, as appropriate.
Enhancement form
Field

Description

Number

System-generated number for the enhancement.

Priority

Priority assigned to the enhancement.
Product owners can refer to this value when creating stories and scoping it into
upcoming releases.

State

Current state of the enhancement. The default is Draft.

Assignment Group that would work on this enhancement
group
Assigned to

User assigned to the enhancement.

Product

Product with which this enhancement is associated. The field is required if the
enhancement is part of a product.

Short
Description

Brief description of the enhancement.

Description

Detailed description of the enhancement.

Work notes

Notes about the work being performed on the enhancement.

4. Click Submit.

Result

The enhancement request is created and the form reloads with the Stories related list. The list of
stories is only visible to users with a scrum role.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1953


<!-- page 1954 -->
What to do next

A scrum product owner can review the request and decide whether to create stories for it.

Set up a triage board in Agile Development 2.0
Set up your own triage board to view and manage records that are important to your product,
such as problems, incident tasks, defects, or change requests at one place easily.

Before you begin
• Activate Agile Development — Unified Backlog.
• Ensure that you own a backlog. See Create a personalized backlog in Agile Development 2.0.
Role required: scrum_product_owner

About this task

Define filters to create a triage board, so that you can access and manage the records that you
want easily.
You can create as many triage boards as you want. For example, you can create one triage board
for defects and incidents and another for enhancements.

Procedure
1. Navigate to All > Agile Development > Agile Board > Backlog.
2. Set up a new triage board.
◦ If this is your first triage board, select Triage Board > Set up Triage Board.
◦ If you already have a triage board, select Triage Board > New Triage Definition
3. On the form, fill in these fields.

Field

Description

Name

Name for the triage board.

Table

Table from which you want to filter records for
the triage board.

Filter

Filter criteria to be applied on the selected
table to populate the triage board.

Important: Do not to remove the

default conditions: Active is true and
Agile story is empty.
◦ Active is true ensures that your triage
board only shows the tasks that are active
and not completed or cancelled.
◦ Agile story is empty ensures that the task
doesn't already have a story associated to
it and is not already present in some other
backlog.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1954


<!-- page 1955 -->
Field

Description

Backlog definition

Backlog that any stories created from this
triage board would be added to.

4. Select Submit.

Result

A triage board is created and can be accessed from the Backlog section of the Agile board.

What to do next
• Edit the filter criteria for existing triage boards.
Select Triage Board and then select Edit Triage Definitions.
• Open the new triage board to view its contents.
Select Triage Board and then select the board that you created.
• Triage items and add them to a backlog in Agile Development 2.0
Related topics
Manage your product backlog in Agile Development 2.0

Triage items and add them to a backlog in Agile Development 2.0
Review the list of items in your triage board and add them to your Agile Development 2.0 backlog.
Based on their priority, you can schedule them in the upcoming sprints for your product teams to
work on them.

Before you begin
• Activate Agile Development — Unified Backlog
• Set up a triage board in Agile Development 2.0
Role required: scrum_product_owner

About this task

Select the items from your triage board and add them to your backlog based on their priority for
your product. Every item that is added to the backlog from the triage board has an associated
story to it. From the Agile board, you can switch between the original item Information and Story
Information tabs for more details.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1955


<!-- page 1956 -->
These stories can be later assigned to product teams and scheduled into sprints.

Procedure
1. Navigate to All > Agile Development > Agile Board.
2. From the Backlog section of the Agile board, select your product or team backlog from the
Backlog field.
3. Select Triage Board and select the triage board that you want to review the items of.
For example, in the screenshot here, Defects board can be selected.

4. Review the list and select the ones that you want to add to the backlog.
5. Select Add to Backlog.

Result

The selected list of items from the triage board is added to the backlog as stories. You can
schedule these stories into upcoming sprints using the Sprint Planning tab of the Agile board.
An example here shows how an associated story is created for a defect that is added to the
backlog. The story has a reference to this defect in the Original task field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

1956


