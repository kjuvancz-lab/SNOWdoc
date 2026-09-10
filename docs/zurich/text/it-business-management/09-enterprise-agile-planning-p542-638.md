# Zurich Strategic Portfolio Management — Enterprise Agile Planning

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 542–638 of 2289

Sections: Enterprise Agile Planning (p542)

---

<!-- page 542 -->
Widget form
Field

Description

Name

Unique name for the widget.

Scripted

Option for indicating the value on the widget is from a code script.
By default, this option is selected and is read-only.

Show
Label

Option for displaying either the label or the color indicator.

Active

Option for indicating the status of the widget.

If you clear the check box, the Color field appears and you can set the color.

Only active widgets can be shown on the Financials tab of the Project Workspace.
Parent
widget

Widget that is the parent of the current widget.
The current widget displays in the Child widgets related list of the selected widget.
You can add a maximum of three child widgets for a parent widget.

Formatter
required

Option for specifying whether a currency formatter is required for the widget.

Script

Code script that returns a requested metric value that is displayed on the widget.
In the script, use the context and filter objects. The context object contains all of
the project financial fields, such as capex_costs, opex_costs, and budget_cost.
The following sample script returns the Estimate At Completion metric value of a
project to appear on the widget.
var context = JSON.parse(context);
var filter = context.filters;
var now_GR = new GlideRecord('pm_project');
gr.addEncodedQuery(filter['pm_project']);
gr.query();
if(gr.next())
gr.getValue('forecast_cost');
Collapse

Short
Description of the widget.
description

Enterprise Agile Planning in Strategic Planning
®

ServiceNow Enterprise Agile Planning helps streamline communication and collaboration
between teams, and drive coordination with diverse teams. Using an intuitive workspace,
scale your Agile framework across the organization with flexible work and team structure
configurations.
https://player.vimeo.com/video/1059081473?
h=9af475911c&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

542


<!-- page 543 -->
Enterprise Agile Planning (EAP) is available when you install the Strategic Planning application
from ServiceNow Store using the SPM Pro license.

Get started

Explore

Configure

Learn about Enterprise
Agile Planning features.

Set up Agile configurations,
team levels, and work types.

Use

Reference

Build a backlog, plan program increments,
and evaluate progress of assigned work.

Get details about EAP components like
roles, tables, properties, forms, and lists.

Troubleshoot and get help
• Ask or answer questions in the Strategic Portfolio Management forum of ServiceNow
Community
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

Exploring Enterprise Agile Planning
Learn more about Enterprise Agile Planning (EAP) and review the benefits it can provide for your
organization.

Enterprise Agile Planning benefits
Scrum leaders, product owners, portfolio managers, solution train engineers, and Agile release
train engineers can enhance their Agile framework using the following EAP features:

Benefit

Feature

Manage backlog and prioritize work.

Backlog

Create and plan activities such as creating PIs and Sprints,
assigning work to teams, and scheduling this work into teamlevel iterations.

Backlog

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

543


<!-- page 544 -->
Benefit

Feature

Manage dependencies across teams and Agile release trains
(ARTs).

Planning Board

Track activities and visualize progress.

Backlog

Collaborate real-time and asynchronously to discuss
resolutions for blockers.

Backlog

Manage work and track progress efficiently for Kanban teams
that don't operate in a regular cadence.

Backlog and Planning Board
for Kanban-type teams

Flexibly configure team and work hierarchies.

Agile configurations in EAP

Store and manage all kinds of documentation for Agile teams
and their work items from a centralized location.

Collaborate using Docs in EAP

Gain insights into the page content by summarizing it or
improve content quality by refining it using Now Assist.

Summarize and refine Docs
content in EAP using Now
Assist for SPM

Save time and reduce manual effort by automatically generate
stories for work items using Now Assist.

Generate stories for epics and
features using Now Assist for
SPM

Define goals at the iteration level or the team level iterations
so that teams are aligned with the business value and
have greater visibility into the work they contribute toward
organizational objectives.

Iteration goals and work item
goals in EAP

Analyze team progress, performance, and keep track of
key metrics using preconfigured dashboards with data
visualizations.

EAP Dashboards

Configuring Enterprise Agile Planning
Activate a configuration, add teams to your Agile structure, and define your planning calendars
so that your team can get started with Backlog management and PI planning in EAP.

Configuration overview
The following tasks require the EAP admin (sn_apw_advanced.eap_admin) role.
1. Install Strategic Planning.
Enterprise Agile Planning is available within the Strategic Planning workspace.
2. Assign the EAP roles to users. See Components installed with Enterprise Agile Planning.
3. Learn about EAP configurations, team level hierarchy, and work item type rollup.
See Agile configurations in EAP.
4. (Optional) Create or update a configuration in EAP.
5. Activate an EAP configuration
6. Define the agile structure by adding teams to your EAP configuration. See Define agile
structure in EAP.
7. Configure dashboards for teams in your Agile structure.
The following tasks require the system admin role.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

544


<!-- page 545 -->
1. (Optional) Create additional planning calendar types. See Create a planning calendar in EAP.
2. Create calendar entries for iterations in EAP.
3. (Optional) If you want a different type of team or work item than those available by default, you
can create custom types. See Create a custom team type in EAP and Create a custom work
item type in EAP.
Agile configurations in EAP
Learn about the different SAFe configurations available in Enterprise Agile Planning (EAP) so that
you can work with your admin to update the configuration according to your team's needs.

Default EAP configurations
A configuration includes the team level structure and work item types. The following Agile
configurations, with the relevant team level, work item type, and planning calendar mapping, are
available by default:
• Full Configuration
• Essential Configuration
• Large Solution Configuration
• Portfolio Configuration
• Kanban Configuration

If you installed the Strategic Planning demo data, Full Configuration is activated for you. You can
choose to activate a different configuration or define a new configuration.
For more information, see Activate an EAP configuration or Create or update a configuration in
EAP.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

545


<!-- page 546 -->
Default team level and work item hierarchy

• The EAP teams follow the hierarchy of Portfolio > Solution Train > Agile Release Train > Agile
Team.
• The work item types follow the hierarchy of Epic > Capability > Feature > Story.
However, while setting up a new configuration or editing an existing configuration, you can
assign any work item type to any team level. For example, a Feature can be mapped to the
Solution Train level or a Story can be mapped to the ART level. Based on how teams in your
organization choose to operate, you can flexibly define or update the EAP configurations.
• All work items types used in EAP extend from the EAP Planning item
[sn_align_core_eap_planning_item] table, which in turn extends from the Planning Item
[sn_align_core_planning_item] table of Strategic Planning.
• The Story records are saved in the Story [rm_story] table.
You can also create a custom work item type. See Create a custom work item type in EAP.
Create or update a configuration in EAP
Define your own Agile configuration or update an existing configuration in Enterprise Agile
Planning (EAP).

Before you begin

Install Strategic Planning.
Set the Application Scope of your ServiceNow instance to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Enterprise Agile Planning > Configuration.
3. Choose to create a configuration or update an existing one.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

546


<!-- page 547 -->
◦ To create, select New configuration.
◦ To update, select Edit from one of the available configurations.

4. On the form, fill in or update the fields.
New configuration form
Field

Description

Configuration name

Name to identify the configuration.

State

State of the configuration. The default value
for this field is Inactive.
Change it to Active to make it available to
use for your Agile teams in Enterprise Agile
Planning.

Sync with Agile Development

Select this option to sync iterations such
as Planning Intervals and Sprints with Agile
Development 2.0. For more information,
see Integration between EAP and Agile
Development 2.0.
If your team is of the Kanban type, you can
leave this option unselected.

5. Select the work item types to be available within this configuration.
Only the work item types that you enable here are available for your Agile teams in the Backlog
and Planning board.

6. Select the team levels that you want to have in your configuration.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

547


<!-- page 548 -->
Based on the team levels that you enable here, you can add only those entities to your Agile
structure. For example, if you didn’t enable Solution Train team level in the configuration, you
can’t add any solution trains to your Agile structure and you can’t plan work for any solution
trains from the Backlog or Planning board.
7. Select the default work item type to be available at each team level and its planning calendar.
Scrum teams with a regular cadence
Planning calendars can be set only for Agile Release Trains (ARTs) and Agile
Teams and the planning calendar types available by default are Planning Interval
and Sprint. If you want a different calendar, create one. See Create a planning
calendar in EAP.

Kanban teams
If your team operates in a Kanban style, which is a continuous workflow structure
without any regular planning interval schedule, you can set the Planning calendar
fields to None.

8. Select Save.

What to do next
• If you have updated the planning calendar selection for any active configuration that has
teams associated with it, update the relevant dashboard configuration too. This action ensures
that the metrics displayed for those teams are accurate. See Updating dashboards for planning
calendar changes in EAP.
• Activate an EAP configuration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

548


<!-- page 549 -->
Define agile structure in EAP
Add organizational entities and teams to an Enterprise Agile Planning (EAP) configuration so that
users can plan work for them in the EAP Backlog and Planning Board.

Before you begin

Activate an EAP configuration.
Ensure that Application Scope of your ServiceNow instance is set to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

About this task
https://player.vimeo.com/video/1067467329?
h=d09d828790&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Based on your configuration, add entities such as Portfolios, Solutions Trains, ARTs, and Agile
Teams to different team levels of the configuration.

Note: This task is explained using Full Configuration as an example. Use these steps as
guidance to add entities and teams to any other configuration in EAP.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Enterprise Agile Planning > Agile structure.
3. Add a Portfolio by selecting the + icon (

) next to the configuration name.

a. On the SAFe Portfolio form, fill in details such as name, description and parent portfolio.
b. Select Submit.
c. Repeat the action to add as many portfolios as you need.
4. Repeat this action to add other entities to a Portfolio.
◦ To a portfolio, add Solution Trains.
◦ To a Solution Train, add Agile Release Trains (ART).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

549


<!-- page 550 -->
◦ To an ART, add Agile Teams.
The teams that you add as Agile Teams must be of the type Agile. If you need new teams or
cannot find any existing teams, contact your admin. For more information, see Assignment
groups in Agile Development 2.0.

Activate an EAP configuration
Activate a new or existing configuration in Enterprise Agile Planning (EAP) so that your users can
start planning work for their teams.

Before you begin

Set the Application Scope of your ServiceNow instance to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Enterprise Agile Planning > Configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

550


<!-- page 551 -->
3. Select Edit from one of the available configurations.
4. On the configuration form, set the State field to Active.
5. Select Save.

What to do next

Add teams to your configuration. See Define agile structure in EAP.
Configure display of other work item types in EAP Backlog and Planning board
Enable viewing different work item types in the Backlog and Planning board pages for EAP teams
such as Portfolio, Solution Train, Agile Release Train, or Agile Team.

Before you begin

Ensure that you set the Application Scope in your instance to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

About this task

The Planning board for an EAP team shows only those work items that are enabled in its default
configuration. For example, for a Solution Train with Full Configuration, the Backlog and Planning
board show only Capabilities by default. If your product managers or team members want to
switch between viewing other work item types such as Features, Epics, or Stories, you can
enable it by updating the team-level configuration details.
This task provides guidance on updating the Planning work types or Backlog work
types fields for your Agile teams in the Enterprise agile configuration details table
[sn_apw_advanced_eap_configuration_detail].

Procedure
1. Navigate to All > Enterprise Agile Planning > EAP Configurations.
2. Select a configuration that you need to update the work item type selections for.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

551


<!-- page 552 -->
s
3. In the Enterprise agile configuration details related list, select the team level that you want to
update.

4. Update the work types in the following fields.
◦ Backlog work types to enable viewing multiple work item types in the Backlog page.
◦ Planning work types to enable viewing multiple work item types in the Planning board page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

552


<!-- page 553 -->
5. Select Update to save your changes to the form.
6. Repeat steps 3-5 to enable multiple work types for other team levels.
Related topics
Manage team backlog in EAP
Perform PI planning in EAP
Configure the display limit of iterations in EAP Backlog
Create a system property to modify the limit on the number of iterations displayed for an EAP
Team in its Backlog in Enterprise Agile Planning (EAP).

Before you begin

Ensure the application scope in your instance is set to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

About this task

By default, the number of iterations shown in the Backlog page for an EAP Team is 6. If your
organization's processes require more iterations to be displayed in the Backlog, create a system
property sn_apw_advanced.eap_backlog_iterations_limit and update the
display limit.

Procedure
1. Navigate to sys_properties.list.
2. Select New.
3. On the form, fill in the fields.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

553


<!-- page 554 -->
System property form
Field

Description

Suffix

sn_apw_advanced.eap_backlog_iterations_limi

Type

Integer

Value

Desired maximum number of iterations in the
Backlog

For information on the other form fields, see the field description table in Add a system
property .
4. Select Submit.
Update epic methodology for an EAP configuration
Change the epic methodology of your Enterprise Agile Planning configuration to SAFe or Scrum
based on your Agile workflow.

Before you begin

Set the Application Scope of your ServiceNow instance to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

About this task

By default, the epic methodology for an EAP configuration is set to SAFe and all epics created for
this configuration are SAFe epics. Based on how your Agile teams prefer to work, you can change
the epic methodology to Scrum or retain it as SAFe.

Note: The epic methodology for an EAP configuration can be updated only if there are no
work items associated with it.

Procedure
1. Navigate to All > Strategic Planning > Enterprise Agile Planning > EAP Configurations.
2. From the list of Enterprise agile configurations, locate the one you want to change the
methodology for.
3. Double-click the Epic methodology cell to change and update the value.

If the Epic methodology column is not displayed in your ServiceNow instance, personalize the
column settings using the Update Personalized List icon (

) from the list header.

Create a planning calendar in EAP
Create any additional planning calendars that you use in your organization, such as Release, so
that you can plan and track work in the calendar of your choice.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

554


<!-- page 555 -->
Before you begin

Role required: sn_apw_advanced.eap_admin

About this task

Sprint and Planning Interval are the two planning calendars available by default. To create a
different planning calendar, create one from the EAP Settings menu.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Enterprise Agile Planning > Planning calendars.
3. Select New.
4. On the form, fill in the fields.
Enterprise agile calendar form
Field

Description

Name

Unique name for the calendar.

Label

Label of how this calendar shows up in the
EAP application.

Plural label

plural form of this calendar's label.

Iteration type

Type that this calendar belongs to. Select one
from Planning Interval and Sprint.

Parent

Parent calendar for this calendar.
For example, Planning Interval is the parent
for Sprint.

Description

A brief description of the calendar, its use
case, and other details.

5. Select Save.

What to do next

Create entries for the newly created calendar. See Create calendar entries for iterations in EAP.
Override planning calendar in EAP
Flexibly change the planning calendar for your Agile Release Train (ART) or Agile Team by
overriding the default calendar that is set during configuration of Enterprise Agile Planning.

Before you begin

Set the Application Scope of your ServiceNow instance to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

About this task

The override calendar option EAP settings helps you change the planning calendar that your
teams use in EAP. This way, teams can choose their own planning calendars.
The new calendar takes effect after end date of the current calendar. If you want the calendar to
take effect sooner or later, you must add or remove iterations to the current calendar.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

555


<!-- page 556 -->
The new calendar is automatically applied to child teams. For example, if an ART's planning
calendar is changed, all child EAP teams associated with this ART must follow the new planning
calendar.
This change is applied to only those ARTs that you update.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Agile structure and navigate to your ART.
3. From the Details tab of your ART, select a value for the Override planning calendar field.
The planning calendar that you select here must have calendar entries so that iterations can
be created for this team and its child teams.
4. Select Save.
The page shows the date from which the new calendar will override the existing calendar.
For example, in the screenshot shown here, the new calendar Planning Interval is set to
override an existing calendar on 2024-07-30. If you choose to go back to using your old
calendar:
◦ Before 2024-07-30, clear the Override planning calendar field.
◦ After 2024-07-30, set your old calendar as the value for the Override planning calendar
field.

Once the new calendar comes into effect, the child teams will inherit it for all their future
iterations. For Agile Teams, the Override planning calendar field is read-only and can't be
changed independently of its parent ART.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

556


<!-- page 557 -->
Create calendar entries for iterations in EAP
Define timelines for planning calendars so that the teams can create their own iterations in the
Backlog and Planning Board of Enterprise Agile Planning.

Before you begin

Role required: sn_apw_advanced.eap_admin

About this task

This task is explained using Planning Interval (PI) and Sprint as an example. These are the
calendars available by default in the workspace and PI is set as the parent for Sprint.
By the end of this task, you define the timeline for a PI and its child Sprints. The EAP teams can
then create their own team-specific PIs and Sprints, within this defined timeline, in a naming
convention of their choice.

Note: You can create PIs in a naming convention of your choice, but the Sprint names are
predefined. After creating Sprints for the PI, you can manually update their names per your
preference.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Enterprise Agile Planning > Planning calendars.
3. Select Planning Interval to create entries for it.
4. Select New calendar entry.
5. On the form, fill in the name of the entry, and the start and end dates for the planning interval.
For example, you’re creating a PI for 01 January 2024 to 31 March 2024.
6. Create calendar entries for the Sprint calendar based on the PI start and end dates.
a. Select Create child entries on Sprint.
b. In the Number of child entries (Sprint) field, enter the number of sprints you want to create
for this PI.
c. In the Sprint length (days) field, enter the number of days your Sprint is made of.
For the PI that spans from 01 January 2024 to 31 March 2024, you can create 6 Sprints with a
length of 14 days each.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

557


<!-- page 558 -->
7. Select Create.

Result

A PI and its child sprints are created with the timelines that you defined. The EAP teams can
create their own PI and Sprint iterations with their own naming convention.

Example:

PI 1 is created for 2024-01-01 to 2024-03-31. Within this PI, child six Sprints are created, each
with a length of 14 days.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

558


<!-- page 559 -->
Under the Digital Banking portfolio, the teams create their own ARTs and Sprints as follows:
• Payment Analytics ART creates two PIs: Digi bank ST2 ART1 PI1 and Digi bank ST2 ART1 PI2.
• The Agile Teams PAT Team 1 and PAT Team 2 create sprints within these PIs:
◦ PAT Team 1 creates PAT 1 Sprint 1, PAT 1 Sprint 2, and so on.
◦ PAT Team 2 creates PAT 2 Sprint 1, PAT 2 Sprint 2, and so on.
The teams can use these PIs and Sprints to schedule their work.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

559


<!-- page 560 -->
Create a custom team type in EAP
Create a custom team type to include in the Agile configurations for Enterprise Agile Planning.

Before you begin

Set the application scope in your instance to Portfolio Planning Core.
Role required: sn_apw_advanced.eap_admin

Procedure
1. Navigate to All > System Definition > Tables.
2. Select New.
3. On the form, fill in the fields.
For field information, see Team type form.
4. Optional: Deselect the Create module check box.
5. Select Submit.
Create a custom work item type in EAP
Create a custom work item type to include in the Agile configurations for Enterprise Agile
Planning.

Before you begin

Set the application scope in your instance to Portfolio Planning Core.
Role required: sn_apw_advanced.eap_admin
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

560


<!-- page 561 -->
Procedure
1. Navigate to All > System Definition > Tables.
2. Select New.
3. On the form, fill in the fields.
For field information, see Work item type form.
4. Optional: Deselect the Create module check box.
5. Select Submit.

What to do next

For any new work item type tables, create relevant form views and list views. See Create or
update form views for EAP work items and Create or update list view for EAP work items.
Create or update form views for EAP work items
Create or update form views for work item types so that the fields displayed in the Backlog and
Planning board pages of Enterprise Agile Planning suit your team requirements.

Before you begin

Set the application scope in your instance to Portfolio Planning Core.
Role required: sn_apw_advanced.eap_admin

About this task

Configuration for form views of work item tables determines the fields that are displayed in the
workspace. For a work item type in EAP, the following are the necessary form views:
• EAP Default: Determines the fields to be displayed in the Full details page.
• EAP Preview: Determines the fields to be displayed in the side panel of the Backlog or
Planning board.
• EAP New: Determines the fields to be displayed when creating a work item from the Backlog or
Planning board.

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the list of tables by using EAP planning item in the Extends table column.
3. Select a work item type that you created.
4. Select the Layout Form related link.
5. Create form views or update them.
Option

Steps

a. From the View name field, select New.
Create form views

b. In the Create New View window, enter one
of the following names in the View name
field:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

561


<!-- page 562 -->
Option

Steps

▪ To create the EAP Preview view, enter
Workspace EAP Preview
▪ To create the EAP Default view, enter
Workspace EAP Default
▪ To create the EAP New view, enter Work­
space EAP New
c. Select OK.
d. For each section, select the fields to be dis­
played using the Available and Selected
lists.
You can also rearrange them in the order of
your choice.
e. Repeat the steps to complete creating the
other two form views.
a. From the View name field, select an EAP
view to update.
Edit existing form views

b. For each section of the view, select the
fields to be displayed using the Available
and Selected lists.
You can also rearrange them in the order of
your choice.

6. Select Save.

What to do next

Create or update list view for EAP work items.
Create or update list view for EAP work items
Create or update EAP List View for work item types so that the columns displayed in the Backlog
page of Enterprise Agile Planning suit your team requirements.

Before you begin

Set the application scope in your instance to Portfolio Planning Core.
Role required: sn_apw_advanced.eap_admin

About this task

Configuration for EAP List View determines the columns that are displayed for a work item on the
Backlog page of the workspace.

Procedure
1. Navigate to All > System Definition > Tables.
2. Filter the list of tables by using EAP planning item in the Extends table column.
3. Select a work item type that you created.
4. Select the Layout List related link.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

562


<!-- page 563 -->
5. Create the EAP List View or update its configuration.
Option

Steps

a. From the View name field in the List view
section, select New.
b. In the View name field, enter EAP List
View.
c. Select OK.

Create EAP List View

d. Using the Available and Selected lists of
fields, select the fields to be visible in the
EAP Backlog for this work item type.
You can also rearrange them in the order of
your choice.
a. In the View name field, select EAP List
View.
b. Using the Available and Selected lists of
fields, select the fields to be visible in the
EAP Backlog for this work item type.

Edit EAP List View

You can also rearrange them in the order of
your choice.
6. Select Save.
Configuring custom dashboards in EAP
Associate a custom dashboard to your Enterprise Agile Planning configurations to track and
measure key metrics for your teams.

Dashboard configuration overview
Get visibility into metrics of your Agile teams such as progress, blockers, team performance
trends, and others using dashboards. You can associate any of the default dashboards or create
a dashboard with custom queries to view and track specific metrics for your Agile team.
EAP provides the following dashboards for different default configurations:
Default dashboards for EAP configurations
Team level

Full
Configuration

Essential
Configuration

Large Solution
Configuration

Portfolio
Configuration

Kanban
Configuration

Portfolio

Portfolio Inline NA
Dashboard

NA

Portfolio Inline Kanban
Dashboard
Portfolio
Dashboard

Solution Train

Solution
Train Inline
Dashboard

NA

Solution
Train Inline
Dashboard

NA

NA

Agile Release
Train

ART Inline
Dashboard

ART Inline
Dashboard

NA

NA

NA

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

563


<!-- page 564 -->
Default dashboards for EAP configurations (continued)
Team level

Agile Team

Full
Configuration

Essential
Configuration

Large Solution
Configuration

Portfolio
Configuration

• Agile Team
Inline
Dashboard

• Agile Team
Inline
Dashboard

• Agile Team
Inline
Dashboard

• Agile Team
Inline
Dashboard

• Agile Team
Technical
Dashboard

• Agile Team
Technical
Dashboard

• Agile Team
Technical
Dashboard

• Agile Team
Technical
Dashboard

• Agile Team
Velocity
Inline
Dashboard

• Agile Team
Velocity
Inline
Dashboard

• Agile Team
Velocity
Inline
Dashboard

• Agile Team
Velocity
Inline
Dashboard

Kanban
Configuration

Kanban Team
Dashboard

For more information about availability of these default dashboards with different configurations,
see EAP reports and dashboards.

Important: You can only copy and customize an Inline dashboard.
The following tasks require the admin or EAP admin (sn_apw_advanced.eap_admin) role.
1. Create or update a configuration in EAP.
2. Create a dashboard in EAP.
3. Add a tag to the EAP dashboard.
4. Associate the EAP read-only role to the dashboard.
5. Add EAP dashboards to an Agile configuration.
6. (Optional) Create implementation of a Scripted Extension Point in EAP.
Create a dashboard in EAP
Create a dashboard to track key metrics for your custom Agile configuration by creating a
dashboard or duplicating and editing a default EAP dashboard.

Before you begin

Create or update a configuration in EAP
Role required: sn_apw_advanced.eap_admin

Procedure
1. Navigate to All > Platform Analytics > Dashboards.
2. Create a dashboard or modify one of the default dashboards for your Agile configuration.
◦ To create a dashboard, select Create new dashboard. For more information, see Create a
dashboard with the in-line editor .
◦ To modify an existing dashboard, create a copy of it so that you can the widgets that you
need. For more information, see Duplicate a Platform Analytics dashboard .

Note: The Duplicate option is available only for an Inline dashboard.
3. Add visualizations and widgets.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

564


<!-- page 565 -->
For more information, see step 6 through 10 in Create a dashboard with the in-line editor

.

For information about the default indicators, see Enterprise Agile Planning Indicators.
4. Select Save.

What to do next

Add a tag to the EAP dashboard.
Add a tag to the EAP dashboard
Add the EAP dashboards tag to identify your dashboard. The dashboards with tag appear in the
reference qualified definition list, which helps you to add the dashboard to your configuration
detail.

Before you begin

Create a dashboard in EAP.
Role required: sn_apw_advanced.eap_admin

Procedure
1. Navigate to par_dashboard.list.
2. Add the Tags column to your view using the Update Personalized List option.
3. For the dashboard you want to add a tag to, enter EAP Dashboards in the Tags column.
The tag is added to the dashboard.

What to do next

Associate the EAP read-only role to the dashboard.
Associate the EAP read-only role to the dashboard
Associate the EAP read-only (sn_apw_advanced.eap_read_only) role to the dashboard. The
users with this role can view and edit the dashboard for the teams in their Agile configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

565


<!-- page 566 -->
Before you begin
• Add a tag to the EAP dashboard.
• Set the Application Scope of your ServiceNow instance to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

Procedure
1. Navigate to the PAR Dashboard Permissions [par_dashboard_permission] table.
2. Locate the dashboard that you created.
3. Double-click a cell in the Role column and then enter sn_apw_advanced.eap_read_only.
4. Select Save.
The role is associated with the dashboard.

What to do next

Add EAP dashboards to an Agile configuration.
Add EAP dashboards to an Agile configuration
Add dashboards to your Agile configuration so that product managers or scrum team members
can access them from the Home tab of their Agile teams in Enterprise Agile Planning workspace.

Before you begin
• Associate the EAP read-only role to the dashboard.
• Set the Application Scope of your ServiceNow instance to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

About this task

You can add single or multiple dashboards to your Agile configuration. If you are using a default
configuration, a default dashboard is automatically associated with your Agile configuration.
However, when you create a custom configuration, you must associate a dashboard with the
configuration to view the metrics from selected data sources.

Procedure
1. Navigate to sn_apw_advanced_eap_configuration_detail.list.
2. Using the column options, group the records by Enterprise agile configuration.
3. For your Agile configuration, select an Agile Team to view its details.
4. From the Home dashboards field, add the dashboards that your team needs.
5. Select Update.
The selected dashboard or dashboards are added to the Home tab of the selected
configuration.
Create implementation of a Scripted Extension Point in EAP
Update the default Scripted Extension Point or create a scripted extension point using the default
one as a template to filter the data displayed on the EAP dashboard.

Before you begin

Associate the EAP read-only role to the dashboard.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

566


<!-- page 567 -->
Role required: sn_apw_advanced.eap_admin

About this task

The Scripted Extension Points enable you to create a custom query to filter the information
from different data sources. By default, each EAP configuration is associated with an extension
point. Each extension point handles all the team types associated with it. You must create an
implementation of the scripted extension point every time you create a new EAP configuration.

Important: Perform this task only for a custom configuration or if you want to customize
a default dashboard. This task is not required if you are using any of the default
configurations.

Procedure
1. Navigate to All > Scripted Extension Points.
2. Search for and open the EAPDashboardsEncodedQueryProvider

(sn_apw_advanced.EAPDashboardsEncodedQueryProvider) scripted extension
point.

3. Select the Create implementation related link to create an implementation of this scripted
extension point.
The new implementation record form is shown.
4. Update the Name field of the newly created Implementation to a custom name of your choice.
Ensure that you don't include any spaces in the name. For example, rename the
implementation to MyConfigEAPDashboardsEncodedQueryProvider.
5. Select Update.
6. Open the EAPDashboardsEncodedQueryProvider

(sn_apw_advanced.EAPDashboardsEncodedQueryProvider) scripted extension
point.

7. From the Implementations related list, click the Class of your newly created implementation
record to open it.
8. Update the Script field to include the following.
◦ In the getConfigId function, enter the sys_id of your EAP configuration.
◦ In the fetchEncodedQueries function, enter queries to filter the information for each
level of your EAP configuration such as iteration ID, team type, and team ID.
The following is an example script for the default Large Solution Configuration.
fetchEncodedQueries: function(teamType, teamId, iterationId)
{
switch (teamType) {
case "sn_apw_advanced_agile_team":
return {
rm_story: `iteration=${iterationId}`,
sn_apw_advanced_eap_iteration:
`sys_id=${iterationId}`,
sn_gf_goal_m2m_relationship:
`table_name=sn_apw_advanced_eap_iteration^entity_id=${iterat
ionId}`,
sn_apw_advanced_eap_iteration_db_view:
`iter_eap_team=${teamId}`
};
case "sn_apw_advanced_agile_release_train":
return {
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

567


<!-- page 568 -->
sn_align_core_feature:
`iteration=${iterationId}`,
sn_apw_advanced_eap_iteration:
`sys_id=${iterationId}`,
sn_gf_goal_m2m_relationship:
`table_name=sn_apw_advanced_eap_iteration^entity_id=${iterat
ionId}`,
sn_apw_advanced_eap_iteration_db_view:
`iter_parent=${iterationId}`
};
case "sn_apw_advanced_solution_train":
return {
sn_apw_advanced_eap_iteration:
`eap_team.parent=${teamId}`,
sn_align_core_capability:
`eap_team=${teamId}^OReap_team.parent=${teamId}`
};
default:
return {
sn_align_core_eap_planning_item:
`iteration=${iterationId}`,
};
}
},
getConfigId: function() {
return "e4e11e0977243110740fefc0aa5a99f9";
},

9. Update.

Result

The next time you reload the Home tab for your EAP teams, the dashboard shows the filtered
data according to the updates you made to the implementation.
Updating dashboards for planning calendar changes in EAP
Update the EAP dashboard configuration whenever there are changes to the planning calendar
for any currently active configurations in Enterprise Agile Planning.
When your product managers update the planning calendars for an EAP configuration with active
teams and work items, the reports on the Home tab for those teams are affected. As an admin,
you must update the corresponding dashboards for this EAP configuration. This action ensures
that the reports and metrics your teams see are accurate.
For example, the Agile Team's Planning Calendar value is updated from Sprint to None for a
Full Configuration. Then, the Home tab should no longer display sprint-related reports such as
Burnup or Burndown charts, Sprint velocity, and others.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

568


<!-- page 569 -->
To ensure this change, you must configure new dashboards according to the latest planning
calendar and replace the existing Agile Team dashboards of the Full Configuration with the new
ones.

This procedure involves a series of tasks as listed here:
1. For the latest planning calendar, create a dashboard or duplicate the existing dashboard and
add the reports that your teams want to have. See Create a dashboard in EAP.
2. Add a tag to the EAP dashboard.
3. Associate the EAP read-only role to the dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

569


<!-- page 570 -->
4. Add the newly created dashboard to the EAP configuration that has the planning calendar
change. See Add EAP dashboards to an Agile configuration.
5. (Optional) Create implementation of a Scripted Extension Point in EAP.

Migrating from SAFe to EAP
Learn about the process required For a successful migration of data from Scaled Agile
Framework applications to Enterprise Agile Planning.
https://vimeo.com/showcase/11420435/embed

Guided Setup to migrate data from SAFe to EAP
Guided Setup provides a sequence of tasks to help you complete the required tasks on your
ServiceNow instances. Navigate to All > Strategic Planning > Enterprise Agile Planning > SAFe
Migration Guided Setup.
The following tasks are included in the guided setup.

SAFe to EAP migration tasks
1. Verify EAP configuration for migration from SAFe.
Based on your existing SAFe configuration, verify that the right EAP configuration is activated
in your instance and ensure that the right work types (Epic, Feature, and Story) are allowed for
this configuration.
For example, if you are a user of ServiceNow Essential SAFe application, you must activate
the Essential Configuration in EAP and ensure that EAP Epic and Feature are allowed as work
types.
2. Verify table, field, and choice mapping between SAFe and EAP.
Verify that the tables, columns, choice fields, and custom tables of your SAFe application are
correctly mapped to those in EAP.

Note: By default, all columns of SAFe Story [sn_safe_story] and SAFe Scrum Task
[sn_safe_scrum_task] tables are migrated to the Story [rm_story] and Scrum Task
[rm_scrum_task] tables. To include or exclude any columns, see Modify columns to
migrate from SAFe story and SAFe Scrum task tables to EAP.
3. Start migration of SAFe data to EAP.
4. Add Agile Team as the type for existing SAFe groups. See Add Agile Team type to SAFe groups
for EAP migration.
5. Assign the EAP roles sn_apw_advanced.eap_read_only, sn_apw_advanced.eap_user, and
sn_apw_advanced.eap_admin to your SAFe groups or to individual users in your teams.
See Assign a role to a group

or Assign a role to a user

.

Verify EAP configuration for migration from SAFe
Ensure that the right EAP configuration which suits your current SAFe configuration is active and
that the required work types are selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

570


<!-- page 571 -->
Before you begin

Check the SAFe application (Essential SAFe or Portfolio SAFe) that is currently in use in your
ServiceNow instance.
Role required: sn_apw_advanced.eap_admin

About this task
https://player.vimeo.com/video/1049452534?
h=ee0299eb63&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to All > Strategic Planning > Enterprise Agile Planning > EAP Configurations.
2. Activate the EAP configuration that you need and verify that the required work types are
allowed.
a. Open the EAP configuration record.
b. Enable the Active field.
▪ For Essential SAFe: Activate Essential Configuration.
▪ For Portfolio SAFe: Activate Portfolio Configuration.
c. In the Work types allowed field, ensure that Epic, Feature, and Story are added to the
Selected list.
3. Save the form.

What to do next

Verify table, field, and choice mapping between SAFe and EAP.
Verify table, field, and choice mapping between SAFe and EAP
Before starting the migration from SAFe, verify that the default mapping of tables, fields, and
column choices between Scaled Agile Framework applications and Enterprise Agile Planning is
according to your requirements.

Before you begin

Verify EAP configuration for migration from SAFe.
Role required: sn_apw_advanced.eap_admin

About this task
https://player.vimeo.com/video/1023012765?
h=9fdc807e46&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to sn_apw_advanced_safe_eap_mig_setup.list.
2. Select the SAFe to EAP migration record.
3. From the Table Maps related list, verify the table mapping between SAFe and EAP.
4. Open each table mapping record to verify its field mapping.
For example, open the sn_safe_epic record to see how the fields of SAFe epic are mapped to
EAP epic.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

571


<!-- page 572 -->
If you need to change a field mapping, open its record and update the fields.
5. From the Field Maps related list, open a choice column record to verify the choice mapping of
the fields between SAFe and EAP.
For example, in the sn_safe_epic table map, open the status field map record to see how the
choices for the Status field are mapped between SAFe and EAP.
If you need to change a field mapping, open its record and update the fields.

What to do next
• For SAFe Story [sn_safe_story] and SAFe Scrum Task [sn_safe_scrum_task]
tables, all default columns are migrated to the Story [rm_story] and Scrum
Task [rm_scrum_task] tables. To include or exclude any columns, update the
sn_apw_advanced.SAFeEAPStoryTaskMigrationAPI script include. See Modify
columns to migrate from SAFe story and SAFe Scrum task tables to EAP.
• Start migration of SAFe data to EAP.
Modify columns to migrate from SAFe story and SAFe Scrum task tables to EAP
For the SAFe Story and SAFe Scrum task tables, ensure that only the data from the necessary
columns is migrated to Enterprise Agile Planning. By updating a Script Include, include or
exclude any columns according to your requirements.

Before you begin

Verify table, field, and choice mapping between SAFe and EAP.
Role required: sn_apw_advanced.eap_admin

About this task
https://player.vimeo.com/video/1020716174?
h=3cf2011632&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Procedure
1. Navigate to All > System Definition > Script Includes.
2. Search for and open the sn_apw_advanced.SAFeEAPStoryTaskMigrationAPI script include.
3. Follow the comments in the Script field to include or exclude any columns of the SAFe Story
and SAFe Scrum Task tables.
4. Save the form.

What to do next

Start migration of SAFe data to EAP.
Start migration of SAFe data to EAP
Submit a SAFe-EAP migration request and start the migration of data between the tables of
Scaled Agile Framework and Enterprise Agile Planning.

Before you begin

Role required: sn_apw_advanced.eap_admin

About this task
https://player.vimeo.com/video/1049439810?
h=256249f11c&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

572


<!-- page 573 -->
Procedure
1. Navigate to All > Strategic Planning > Enterprise Agile Planning > SAFe Migration requests.
2. Select New.
3. On the form, fill in the fields.
For field information, see SAFe-EAP migration request form.

Note:
◦ Planning intervals, formerly known as program increments, can only be migrated one
time per team. Planning intervals falling before the selected date in the migration
request and those created after the migration is complete, cannot be migrated through
the automated migration (Guided Setup).
For example, submit migration requests in the sequence of PI 1 > PI 2 > PI 3 and so on.
◦ If the composition of a SAFe ART has been changed any time after it is created, it is
suggested to migrate only those PIs that have the current composition of the ART.
◦ For a Portfolio SAFe migration, if a SAFe Epic is associated with SAFe Features but
is not linked to any Portfolio, then this Epic will not be migrated by the automated
migration.
◦ Migration can be run multiple times for the same criteria. In such case, any newly
created records will be migrated to EAP.
◦ If changes are made to already migrated SAFe records, these changes will not be
synched with the EAP records.
4. Select Submit.

Important: Submitting the request does not trigger the migration. Open the submitted
recorded from the SAFe Migration requests list and select Start migration.

Result

Monitor the progress of data migration:
• If the migration is successful, the Import Requests related list shows the details of the data
migration such as failed count, insert count, and total count of records moved from SAFe to
EAP.
• If the migration encounters any error, the Migration Errors related list shows the details of
records that failed to migrate from SAFe to EAP.

What to do next

Add Agile Team type to SAFe groups for EAP migration.
Add Agile Team type to SAFe groups for EAP migration
Add Agile Team in the Type field of existing SAFe groups to so that these teams are visible for
your EAP users in the workspace.

Before you begin

Role required: sn_apw_advanced.eap_admin

About this task
https://player.vimeo.com/video/1062964725?
h=f69cc5c0e8&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

573


<!-- page 574 -->
Procedure
1. Navigate to All > Scaled Agile Framework > SAFe Teams.
2. Open a SAFe team record.
3. From the Additional actions menu, change the form view to Default view.
4. If the Type field is not visible, configure the form layout of the Default view to include it.
For information on configuring the form layout, see Show or hide fields on a form .
5. Add the value of Agile Team to the Type field.

6. Repeat steps 3 through 6 for all SAFe teams that are to be migrated to EAP.

Using Enterprise Agile Planning
Manage your team backlog, plan for sprints and iterations, add dependencies, and collaborate
using team-level and work item level Docs using Enterprise Agile Planning in the Strategic
Planning Workspace.
Manage team backlog in EAP
Using the Backlog page of Enterprise Agile Planning, create, update, and prioritize work items.
Additionally, schedule work items into iterations such as Planning Intervals (PI) or Sprints.

The following sections provide a brief overview of EAP Backlog and the actions that you can
perform in it.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

574


<!-- page 575 -->
Layout and default grouping
The layout of Backlog across different team levels such as Agile Team, Agile Release Train (ART),
Solution Train, or Portfolio, remains the same. The change is in the way that the work items
are grouped. As you go bottom to top in an Agile structure, the work assigned to the teams is
grouped as follows:

Important: The team hierarchy and the iterations within teams are based on your EAP
configuration. The following information applies to the default Full Configuration.
• Agile Team: Grouped by Sprints.
• ART: Grouped by Planning Intervals.
• Solution Train: Grouped by child ARTs.
• Portfolio: Grouped by child Solution Trains.
Any work item that doesn't fall into any of these groups is displayed in the Backlog section.
By default, the number of iterations that the Backlog page displays is set to 6. You can work with
your admin to modify this number using a system property. For more information, see Configure
the display limit of iterations in EAP Backlog.

Layout and default grouping for Kanban teams
The Backlog for teams using the Kanban configuration is grouped as follows:
• Portfolio: Assigned work items are grouped by child teams. Any work item that is not assigned
to the child teams is displayed in the Backlog section.

• Team: Assigned work is displayed in a list.

Default work items
The work items shown in Backlog are of the Type that is mapped for this team in the
configuration. As you move up in your Agile structure, the level of the work assigned also
increases. At an Agile Team level, you see information of stories. As you move up through ARTs
and Portfolios, you see information of Features, Capabilities, and Epics. However, at any level,
you can change the type of the work items displayed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

575


<!-- page 576 -->
For example, in the screenshot, Capability is the default item type mapped to Compliance and
onboarding tech Solution Train based on its configuration. You can change this selection to
see work of other types assigned to this team. When this selection is changed to Feature, you
can see all the features assigned to this ART. Similarly, you can choose to create and assign a
different type of work item for this Solution Train, even though its default item type is Capability.
View the details of any work item in the side panel by selecting its primary column. To access all
the fields and related lists of the work item, select Full details from the side panel.

Note: The Backlog page for an EAP team shows only those work items that are enabled
in its default configuration. For example, for an ART with Full Configuration, the Backlog
might show only Features by default. If you want to view other work item types such
as Capabilities, Epics, or Stories, work with your admin to update the required EAP
configuration details. For more information, see Configure display of other work item types
in EAP Backlog and Planning board.

Column-level filtering of data
Quickly find the work items that you need by using column-level filters for the data on your EAP
Backlog. Using the Column filtering option ( ), you can filter data on any column displayed on
the Backlog tab, which is of the type choice, string, or reference.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

576


<!-- page 577 -->
Actions within the Backlog
Within the Backlog, you can perform the following actions:
• Create iterations such as PIs or Sprints for your teams.
• Add work to the team's Backlog.
• Schedule work from Backlog into different iterations.
• Make in-line edits to update information of work such as Status, Assigned to, or Story points.
• Reorder planning items (in a group) to prioritize them.
• Start and complete those iterations.
• Move incomplete work to the Backlog.
• Filter the data that's displayed.
• Choose the columns to be displayed.
Use the following tasks to start creating and scheduling work for teams in EAP.
Create next PI and Sprint from EAP Backlog
Create iterations of Planning Intervals (PI) and Sprints so that teams can start prioritizing and
scheduling their work from the Backlog in Enterprise Agile Planning (EAP).

Before you begin

Role required: sn_apw_advanced.eap_user

About this task

From the Backlog, create the next iteration for Agile Release Trains (ARTs) and Teams. Based
on your EAP configuration of teams and planning calendars, you can create PIs, Sprints, or the
iteration of any other calendar that you created.
This task is explained using the default Full Configuration as an example, where ARTs are
mapped to Planning Intervals and Agile Teams are mapped to Sprints.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your ART.
3. Create Planning Intervals for ART.
a. From the Backlog tab of a selected ART, select Create next Planning Interval.
b. In the confirmation dialog box, select Create.
A PI is created for the selected ART. The start and end dates are based on the next available
business calendar span that was created by your system admin.
The default name for the PI is <calendar name> <n+1> where:
◦ calendar name is the name of the business calendar entries that your system admin has
created.
◦ n is the number of the last created PI.
For example, if the name of your business calendar entry is set as Greenbacks PI and
Greenbacks PI 1 and Greenbacks PI 2 exist already, then the new PI is named Greenbacks
PI 3.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

577


<!-- page 578 -->
After the PI is created, you can edit this name according to your naming convention. See
Update iteration details in EAP.
For more information on how a system admin can define the calendar entries and their dates,
see Create calendar entries for iterations in EAP.

Note: If you have Agile Teams added to this ART, Sprints are automatically created for
them too. The number of Sprints created for the teams are based on the child calendar
spans that match with the PI dates. If you add Agile Teams to this ART later, Sprints aren’t
added to them automatically. In that case, proceed to step 4.
4. Create Sprints for Agile Teams.
a. From the left navigation panel, select an Agile Team.
b. From the Backlog tab of this team, select Create next Sprint.
c. Confirm by selecting Create.
The default name and dates for this Sprint are according to the business calendar entry
defined by the system admin.
After the Sprint is created, you can edit this name according to your naming convention. See
Update iteration details in EAP.

What to do next
• Update iteration details in EAP.
• Schedule work items into iterations in EAP Backlog.
Update iteration details in EAP
Edit details of a PI or a Sprint to update details such as name, team capacity, committed points.

Before you begin

Create next PI and Sprint from EAP Backlog.
Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your EAP team.
3. From the Backlog tab of an ART or an Agile Team, select the name of the iteration to open its
details in the side panel.
4. From the side panel, edit details such as Name, Capacity, Committed points and others.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

578


<!-- page 579 -->
5. Save changes by selecting Save.
Related topics
Schedule work items into iterations in EAP Backlog
Create work items for teams in EAP Backlog
Create stories, features, epics, or capabilities for teams to add work to their backlog in Enterprise
Agile Planning.

Before you begin

Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your EAP team.
3. From the page header, select New <work item type>.
The item type that you see on the screen depends on the configuration for your EAP team.
Alternatively, you can choose a different item type from the More options menu.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

579


<!-- page 580 -->
4. On the form, fill in the fields.
The fields that you see on the form vary based on the type of work item that you selected.
5. Select Submit.

Result

The new work item is added to one of the sections of the page, based on the values that you fill in
on the form.
You can open the work item from the success message to add more information.

What to do next
• Refine the description with Now Assist. See Improve efficiency and quality using refine records
skill with Now Assist Context Menu.
This feature requires activating the Write planning item skill of Now Assist for SPM. For more
information, see Configure Now Assist for Strategic Portfolio Management (SPM).
• Schedule work items into iterations in EAP Backlog.
Breakdown work from parent work item into child items in EAP
Streamline breaking down work by creating child work items directly from the parent record page
in Enterprise Agile Planning workspace.

Before you begin

Role required: sn_apw_advanced.eap_user

About this task
https://player.vimeo.com/video/1079893987?
h=7eb7c4b082&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
From the full details page of a work item, you can create all types of associated child work items.
For example, based on the EAP configuration, the full details page of an Epic shows separate
tabs for its child work items (Capabilities, Features, or Stories) and the full details page of a
Capability shows separate tabs for Features and Stories.
Use the New button in each of these related tabs to breakdown work from the parent work item
record.

Note: Views for all default EAP configurations include child item-specific related lists to
enable work breakdown. For any new or custom configuration, work with your EAP admin to
include these related lists in the EAP views for your configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

580


<!-- page 581 -->
This task provides guidance to create child items directly from the parent work item record page,
taking the example of creating a Capability record as the child item for an Epic.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your EAP team.
3. From the Backlog or Planning board, open the work item that you want to create the child items
for and select Full details.
4. Select the related tab in which you want to create a child item.
Any child items that are already associated are shown in the tabs. The Digital Onboarding Epic
already has 6 Capabilities, 1 Feature, and 2 Stories associated to it.
5. Select New to create a child item.
For example, to add a new Capability to the Digital Onboarding Epic, select New from the
Capabilities tab.
An empty form to fill out the details of the child item opens. The Parent work item field is
automatically set to the parent record, which is in this case Digital Onboarding.
6. Fill in the details for the child work item and select Save.
The full details page of the newly created child work item is opened.
7. Navigate back to the parent work item record page using the breadcrumb navigation.

What to do next
• Refine the description with Now Assist. See Improve efficiency and quality using refine records
skill with Now Assist Context Menu.
This feature requires activating the Write planning item skill of Now Assist for SPM. For more
information, see Configure Now Assist for Strategic Portfolio Management (SPM).
• Schedule work items into iterations in EAP Backlog.
Create stories for work items in EAP
Create stories directly from a work item's form. Create them manually or save time by generating
them using Now Assist in the Enterprise Agile Planning (EAP) workspace.

Before you begin

Role required: sn_apw_advanced.eap_user

About this task

This task details the procedure of creating stories for work items such as Epic, Capability, and
Feature and uses the example of creating stories for an Epic. To create other child work items,
see Breakdown work from parent work item into child items in EAP.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the navigation panel, choose your EAP team.
3. From the Backlog or Planning board pages, select a work item for which you want to create
stories.
In this example, an epic is selected and its details are displayed in the side panel.
4. From the side panel, select Full details.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

581


<!-- page 582 -->
5. From the work item details page, create stories manually or with Now Assist.
Choice

Action

a. Open the Stories tab.
b. From the tab, select New.
Creating manually

c. On the form, fill in the fields.
d. Select Save.
The full details page of the created story is
displayed.
See Create stories agentic workflow using
Now Assist for Strategic Portfolio Manage­
ment (SPM).

Using Now Assist

For epics and features, you can use the gen­
erative AI skills of Now Assist to automatical­
ly generate stories, saving time and reducing
manual effort. See Generate stories for work
items in EAP using Now Assist for SPM.

Note: This feature requires activating
the Agile story generation skill of Now
Assist for SPM. For more information,
see Configure Now Assist for Strategic
Portfolio Management (SPM).
The newly created stories are listed in the Stories tab of the work item details page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

582


<!-- page 583 -->
6. You can open a story to update further details or delete them.
From the full details page of a story, you can perform the following actions:
◦ Refine the description with Now Assist. See Improve efficiency and quality using refine
records skill with Now Assist Context Menu.
This feature requires activating the Write planning item skill of Now Assist for SPM. For more
information, see Configure Now Assist for Strategic Portfolio Management (SPM).
◦ Update other fields of the story.
◦ Add dependencies or scrum tasks to the story.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

583


<!-- page 584 -->
◦ Add any files as attachments to the story.
◦ Delete the story by selecting Delete from the More Actions menu on the header.

Generate acceptance criteria for stories using Now Assist for Strategic Portfolio Management
(SPM)
Create clear, comprehensive, and testable acceptance criteria for user stories without writing
them manually in Enterprise Agile Planning (EAP). Review and refine suggested options to
ensure they meet your requirements.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

584


<!-- page 585 -->
Before you begin

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. The new default
behavior works as follows:
New customers
When you install a Now Assist product, designated skills are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills that are currently enabled and customized.
A skill is turned on if:
• The Now Assist plugin is installed, but the skill was never turned on.
• An admin has never adjusted roles for the skill.
A skill is not turned on if:
• The skill was previously turned on, and then turned off again.
• An admin has adjusted roles for the skill.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

For more information, see Configure Now Assist for Strategic Portfolio Management (SPM).
Role required: sn_apw_advanced.eap_user

About this task

For an EAP story, you can generate acceptance criteria by selecting Generate acceptance
criteria from the story header or using the Now Assist context menu in the Acceptance criteria
field.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. Navigate to your story using one of the following options from the left navigation menu:
◦ Enterprise Agile Planning: Select a team from the Agile structure and navigate to your story.
◦ Lists: Select Planning items > Stories and navigate to your story.
3. Ensure that the story record is open in the Full details page.
4. Generate acceptance criteria for the story using one of the following options:
◦ From the story form header: Select Generate acceptance criteria.
◦ From the Acceptance criteria field:
a. Place your mouse cursor in the field.
b. Select the Refine with Now Assist menu (

).

c. Select Generate acceptance criteria.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

585


<!-- page 586 -->
5. Review the generated acceptance criteria.
6. You can choose to further refine the generated content using the Now Assist context menu
(

) or generate a new criteria.

7. Save the Story form.
Create a copy of work items in EAP Backlog
For creating work items with details similar to an existing item, save time and effort by creating a
copy of the existing item.

Before you begin

Create work items for teams in EAP Backlog.
Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your EAP team.
3. From the Backlog page, locate the item that you want to create a copy of.
4. Select the more icon (

) and select Create copy.

Alternatively, you can right-click the work item to view these options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

586


<!-- page 587 -->
Result

A copy of the selected work item is created, with the information in the required fields copied
over. This new work item is added to the same section as the original. For example, if you created
a copy of a Story from the Backlog section, then the copied story is added to the Backlog section.

What to do next

From the full details page of the work item, you can refine the description with Now Assist.
See Improve efficiency and quality using refine records skill with Now Assist Context Menu.
This feature requires activating the Write planning item skill of Now Assist for SPM. For more
information, see Configure Now Assist for Strategic Portfolio Management (SPM).
Related topics
Manage team backlog in EAP
Schedule work items into iterations in EAP Backlog
Schedule work items into iterations in EAP Backlog
Perform backlog grooming and schedule work from the team's backlog for the upcoming iteration
Enterprise Agile Planning.

Before you begin
• Create next PI and Sprint from EAP Backlog.
• Create work items for teams in EAP Backlog.
Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your EAP team.
3. Move an item from the Backlog section to an iteration.
a. From the Backlog section, locate the item that you want to schedule into an iteration.
During backlog grooming sessions, you can estimate story points and add them in-line to
this work item.
b. Select the more icon (

) and choose to move the story to any existing iteration.

Alternatively, you can right-click the work item to view these options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

587


<!-- page 588 -->
4. Move an item across iterations.
a. From the iterations, locate the item that you want to reschedule.
b. Select the more icon ( ) and choose the iteration that you want to reschedule into or move
the item to the backlog.
Alternatively, you can right-click the work item to view these options.

5. Repeat the process to complete scheduling work for the next iteration for the team.

What to do next
• Plan work for an ART in EAP.
• Start or complete iterations in EAP.
• Analyze team performance and progress using dashboards.
Start or complete iterations in EAP
Start an iteration of a Sprint or PI so that your team can start working and tracking progress of
work, and after your team finishes the assigned work, mark this iteration as complete, directly
from the Backlog in Enterprise Agile Planning.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your EAP team.
3. Complete an iteration.
a. From the Backlog page, locate the iteration that you want to complete and select Complete
<iteration>.
▪ For a Sprint, the option is displayed as Complete Sprint.
▪ For a PI, the option is displayed as Complete Planning Interval.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

588


<!-- page 589 -->
Note: Before marking a Planning Interval as Complete, all its associated child Sprints
must be complete.

b. Depending on the amount of work that's left incomplete for the current iteration, confirm its
completion.
▪ If there are incomplete work items in the current iteration, you're asked to move the
incomplete items to the Backlog or any future iteration.

▪ If all assigned work is complete, then the iteration is automatically marked complete
without any confirmation from you.
4. Start an iteration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

589


<!-- page 590 -->
a. From the Backlog page, locate the iteration that you want to start and select Start
<iteration>.
▪ For a Sprint, the option is displayed as Start Sprint.
▪ For a PI, the option is displayed as Start Planning Interval.

Add or remove teams from Favorites in EAP
Add the EAP teams that you frequently work with to Favorites so that you can save time
navigating to them in the workspace without searching for them.

Before you begin

Define agile structure in EAP.
Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. Add a team to Favorites.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

590


<!-- page 591 -->
a. From the left navigation panel, locate the team that you want to favorite.
b. Select the Add to favorites icon (

) next to the team name.

The team is added to the Favorites section of the navigation panel.
3. Remove a team from Favorites.
a. From the Favorites section, locate the team that you want to remove.
b. Select the Remove from favorites icon (

) next to the team name.

The team is removed from the Favorites section.
Personalize and filter data in EAP Backlog
View the information that is most relevant to you and your team on the Backlog tab by choosing
the columns to be displayed and applying filters to narrow down the data on the page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

591


<!-- page 592 -->
Before you begin

Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your EAP team.
3. Add or remove columns and change their order of display on the Backlog page.
a. Select Edit columns (

).

b. From the Available columns section, select the columns that you want to be displayed on the
Backlog.
c. From the Selected columns section, Remove the columns that you don’t want on the
Backlog.
d. From the selected columns section, rearrange the columns to change the order of their
display on the Backlog.
e. Select Apply.

4. Apply filters to work items to narrow down the data that's displayed on the Backlog.
a. Select Filter (

).

b. Add conditions to filter the work items.
You can add multiple conditions. These conditions apply to the Type of work item that is
displayed in the Backlog page.
c. Optional: Select Save filter so that you need not recreate the same conditions to apply
them to a different set of data.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

592


<!-- page 593 -->
d. Select Apply.

5. For an ART, you can personalize the grouping of the work items by Planning Interval or Team.

Perform PI planning in EAP
Using the Planning board of Enterprise Agile Planning, plan work for multiple teams across
iterations (for example, Big Room Planning). Track the progress of work, create and visualize
dependencies between work items, and reschedule work to react quickly to changes while
confirming alignment with business priorities.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

593


<!-- page 594 -->
Layout of Planning board
Planning Board for an Agile Release Train (ART)

Based on the EAP configuration, the layout of the Planning board across different team levels
such as Agile Team, ART, Solution Train, or Portfolio is:
• ART, Solution Train, and Portfolio: Two-dimensional Kanban board layout with differences in the
horizontal and vertical lanes.
• Agile Team: Simple Kanban board with work item States as the vertical lanes.
The work items are represented as cards. You can choose to display cards in the compact or
full size. Full size cards have data points on them such as item Number, State, and indicators for
enabler, dependencies, or blocked whereas compact cards display just the short description.

Default grouping of work items
As you go bottom to top in an Agile structure, the cards are grouped as follows for each team:

Important: The team hierarchy and the iterations within teams are based on your EAP
configuration. The following information applies to the default Full Configuration.
• Agile Team: For an iteration, vertical lanes represent the State of the story.
For example, if Sprint is the planning calendar configured for an Agile Team, the cards on the
Planning Board represent the work assigned for the selected Sprint. For an Agile Team, you
can see Stories on the planning board.
• ART: For an iteration, the Story cards are horizontally grouped by child teams and vertical lanes
represent the iterations of the child teams.
If Planning Interval (PI) is the planning calendar configured for ART, the vertical lanes represent
the Sprints within the selected PI.
• Solution Train: Horizontally grouped by child ARTs and vertical lanes represent the state of the
item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

594


<!-- page 595 -->
• Portfolio: Horizontally grouped by child Solution Trains and vertical lanes represent the state of
the item.
• If the Dependency toggle is enabled, you can visualize the dependencies between work items.
• If the Capacity toggle is enabled, you can visualize the work load of the teams.
The Planning board for an EAP team shows only those work items that are enabled in its default
configuration. For example, for an ART with Full Configuration, the Planning board shows only
Features by default. If your product managers or team members want to switch to viewing other
work item types such as Capabilities, Epics, or Stories, work with your admin to update the
required EAP configuration details. For more information, see Configure display of other work
item types in EAP Backlog and Planning board.

Tip: For an ART, if you switch from viewing Story to another work item type on the planning
board for the first time after updating this configuration, you might not have your work item
cards displayed. To resolve this, ensure that the Vertical lane selection in the Planning
board personalization is not set to Enterprise agile iteration.

Layout and default grouping for Kanban teams
The Planning board for Kanban teams is grouped as follows:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

595


<!-- page 596 -->
• Portfolio: Assigned work items are displayed in a two-dimensional Kanban board, with the
teams as the horizontal lanes and state of the assigned work as the vertical lanes. Any work
item that is not assigned to the child teams is displayed in the Portfolio section.

• Team: Assigned work is displayed in one-dimensional Kanban board.
As with Backlog, you can change the Type of work items displayed and create work items of
multiple types from the Planning board.
Use the following tasks to get started with PI Planning within Enterprise Agile Planning.
Plan work for an ART in EAP
Plan work across all teams in an ART for multiple Planning Intervals, coordinate with different
teams to manage dependencies and resolve blockers in real-time using the Planning board in
Enterprise Agile Planning.

Before you begin

Role required: sn_apw_advanced.eap_user

About this task

This task is explained using an Agile Release Train (ART) that has a Planning Interval (PI) as its
calendar. This ART has child teams associated with it, which have Sprints defined for them.
On the board, move the story cards into different lanes or add new stories for the teams during
planning meetings. Enable the Dependencies toggle to view dependencies and blockers across
work for the teams.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose an ART and select
Planning Board.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

596


<!-- page 597 -->
◦ The planning board shows the current iteration for the ART by default. You can select a
different iteration.

◦ Based on the scheduling of work done in the Backlog page, story cards are displayed in the
Sprint lanes.
3. Enable the Dependencies toggle to view dependencies between stories.
Based on how dependencies are created, the stories sometimes need rescheduling. For more
information on story dependencies, see Create and manage dependencies between work
items in EAP.
4. Enable the Capacity toggle to view the workload of the teams for each Sprint.
The color of the capacity bar acts as a visual indicator of the workload:
◦ Red: Team is overloaded.
◦ Grey: Team is at 100% capacity.
◦ Blue: Team is at less that 100% capacity.

5. Collaborate with the teams on stories by clicking a card open in the side panel.
During the planning meetings, collaborate with multiple teams and update story information
such as priority, story points, or blocked reason.
You can also upload files in the Attachments tab and add notes and @-mention team members
in the Comments tab of the side panel.
If you want to access additional information of the story such as scrum tasks, select Full
details from the side panel.
6. Reschedule a story into a different Sprint or reassign it to a different team by dragging the
cards into the respective lanes.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

597


<!-- page 598 -->
What to do next

For the work that you assigned and scheduled, track the progress at different levels of your Agile
structure using EAP dashboards. See EAP reports and dashboards.
Work item dependencies in EAP
Learn about work item dependencies and how they're shown on the Planning board for a team in
Enterprise Agile Planning.

Dependencies overview
While planning, it’s essential to know how your work items are connected with each other.
Knowing dependencies between work items enables identification of challenges, coordination
for resolution, and an overall improvement in collaboration between teams. Unless you know
the dependency for each item, you could be at risk of not scheduling the right work for the right
iteration. To get started with dependencies in EAP, see Create and manage dependencies
between work items in EAP.

Dependency line colors
On the Planning board in EAP, enable the Dependencies toggle to view dependencies lines
across teams. The color of the dependency line indicates how the stories are scheduled.
• Purple: The prerequisite story is scheduled in an earlier sprint than the dependent story. This
dependency doesn't require any changes.
• Yellow: The prerequisite story is scheduled in the same sprint as the dependent story. In this
case, rescheduling the stories might or might not be necessary.
• Red: The prerequisite story is scheduled in a later sprint than the dependent story. In this case,
rescheduling stories is necessary.

Note: These colors are applicable to the Planning board of ARTs and Agile Teams
because they typically involve a planning calendar.
• Dependencies on the Planning board of a Solution Train or Portfolio appear in purple and
don’t indicate any scheduling conflicts.
• Dependencies on the Planning board of an Agile Team appear in Yellow because they're
scheduled for the same Sprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

598


<!-- page 599 -->
Dependency lines for an ART

Dependencies related lists for work items
Dependencies added to a work item are displayed in its Full details page. The dependent
and prerequisite items are listed in the related lists of this work item. You can also add new
dependencies from these related lists.
The name of these related lists varies between Epic, Capability, Feature, and Story. Based on
the type of item that you're viewing, the lists could be named as Dependent items, Depends on,
Prerequisite stories, and Dependent stories.
The following screenshot shows the dependencies related lists for a Story.

Related topics
Create and manage dependencies between work items in EAP
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

599


<!-- page 600 -->
Create and manage dependencies between work items in EAP
Draw work item dependencies in real-time across teams and iterations and visually analyze them
while you collaborate using the Planning board in Enterprise Agile Planning.

Before you begin

Role required: sn_apw_advanced.eap_user

About this task

This task is explained using stories in an Agile Release Train (ART) as an example, which has
Planning Interval (PI) as its calendar. The same guidance applies to creating, updating, and
deleting dependencies for work items of an Agile Team, Solution Train, or Portfolio.
• A story that has a dependency on it by another story is called a prerequisite story.
• A story that is dependent on another story is called the dependent story.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose your EAP team.
3. Identify stories that have dependencies, and use the interactive functionality of the Planning
board to draw dependency lines between them.
a. On the dependent story card, click the Add dependency line icon (
A dotted dependency line appears.

).

b. Select the prerequisite story card to finish drawing the dependency line.

The dependencies are added to the work items on the board.
4. If the dependency line color is Yellow or Red, review it and reschedule stories as required.
5. Delete a dependency, to account for any change in the requirements.
a. Navigate to the full details page of a work item card that has a dependency to it.
b. From the Prerequisite Stories or the Dependent Stories related lists, locate the dependency
that you want to remove.

Note: The names of these related lists are different for Epic and Solution Train.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

600


<!-- page 601 -->
c. From the Sys class name column, select Story Dependencies.

d. From the dependency item header, select the More Actions icon (

) and select Delete.

e. Select OK to confirm deleting the dependency.
Personalize the EAP Planning board
Choose metrics and indicators to be shown on cards so that key information is available at a
glance on the Planning board in Enterprise Agile Planning workspace.

Before you begin

Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, select your EAP Team.
3. From the Planning board, select the Planning board personalize panel icon (

).

4. From the Personalize side panel, update one or more of the following:
◦ Selections of vertical lane and horizontal lane grouping.

Note: When State is selected as the vertical lane, the columns displayed on the
Planning board are based on the Agile methodology (Scrum or SAFe) for the selected
EAP team.
◦ Card size: Compact or Full.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

601


<!-- page 602 -->
◦ Indicators and data points that you want displayed on the cards.
The selections are automatically applied to the cards. The following screenshot shows an ART
planning board and its personalization options.

5. After making all the required selections, close the side panel.
Collaborate using Docs in EAP
Store and manage all kinds of documentation for Agile teams and their planning items (Epics,
Capabilities, and Features) from a centralized location of Enterprise Agile Planning workspace.
https://player.vimeo.com/video/1029774226?
h=8e0cab6b63&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479

Docs overview
Product managers, team leads, and team members associated with EAP teams can store and
manage information at the Agile Structure level and work level (Epic, Capabilities, and Features).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

602


<!-- page 603 -->
• Each planning item or team in EAP can have a separate doc to capture the information related
to it.
For example, for an Epic, you create Docs for high-level business objectives or technical
product requirements. Similarly at the team level, you can use Docs to capture the information
related to team details, Scrum calls, iteration summaries, and so on.
• Each planning item or Agile Structure level can have multiple Docs associated with it and
each Doc can have multiple pages to help you effectively organize key artifacts. Also, the Agile
Structure can organize these pages into multiple documents.
• Predefined templates such as Iteration Retrospective, Marketing Plan, Meeting notes are
available. Create pages for your Doc using one of these templates or start with an empty page.
You can also create or modify the templates according to your requirements.

Features of Docs
The following are the key features of Docs:
• Auto-save content.
• See who is viewing or working on a Doc using the feature of live user presence.
• Create documents using pre-defined templates. You can edit the templates to suit your team's
requirements.
• Use rich text paragraph formatting, which includes headings, lists, alignment, and others.
• Move text blocks to change their placement using block-level editing.
• Tag team members inline or insert tables using the / command.
• Add reference to other ServiceNow AI Platform tables to connect work across teams.
• Insert images by uploading files or using web URLs.

Note: The experience of inserting Google Images links might not work.
Dynamic data linking in Docs
Keep record information in your documentation always current and reduce manual effort with the
Dynamic data linking feature in Docs. You can now reference any ServiceNow application record
and Docs will automatically reflect the latest updates from those records.
For example, if you add a reference to an Incident record, the reference will show the latest
field information of the incident in Docs without requiring manual edits. Clicking the incident
reference opens up the incident form so that you can view the full details of the incident and
make any necessary changes.
A hover popover displays the details of the mentioned record, providing quick access to
additional information without leaving the current context.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

603


<!-- page 604 -->
Dynamic linking also enables adding references to a particular field of a record, such as
Assigned to of an Incident record.

You can add references from any ServiceNow table you have access to, with no setup or
configuration needed.
This feature reduces the need to switch between multiple ServiceNow applications within your
instance and helps maintain a single, reliable source of truth for collaborative work, making it
easier for teams to stay aligned and informed.

Draft content using Now Assist for SPM
Generate content with Now Assist for SPM directly in your Docs using custom prompts. In
addition, summarize existing sections, elaborate where needed, and refine drafts to help improve
your productivity.
You can interact with Now Assist directly in your Doc to create new content, add context, or
improve existing sections. This helps you draft faster, refine ideas, and keep your work relevant
without leaving the page.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

604


<!-- page 605 -->
Work with content of the whole page
Some examples are:
• For Marketing teams: Create a compelling product launch announcement
highlighting the key benefits and emotional appeal for our target audience.
• For Legal teams: Write a plain-language summary of the privacy policy in this
doc, that customers can easily understand.
• For product teams: Analyze the customer feedback comments in this Doc, group
into top 5 themes, and suggest top 3 enhancements for highest impact.
Now Assist uses the context from your Doc page to generate a response.
Refine, elaborate, or improve the existing content within the page
Some examples are:
• If you have a list of stakeholders, you can ask Elaborate on the scope of these
roles.
• Rewrite this in a casual tone.

Take assistance on a blank page
Some examples are:
1. Generate 5 icebreaker questions for a virtual team-building session.
2. Write a 3-paragraph blog post explaining why [industry trend] is changing how
businesses operate.
3. Generate an outline for the Instagram campaign tasks for a Hackathon
initiative.

Answer questions in the context of this Doc
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

605


<!-- page 606 -->
Whether the content in the Doc is added manually or generated using Now Assist,
you can ask questions to find anything in the page's context.
For example, if you have a project charter document, you can try asking What is the
total budget of this project and which part is the most expensive?

Real-time collaboration within EAP Docs
With the feature of real-time collaboration, edit a Doc page concurrently with
multiple other editors. Colored cursors denote the current location of each editor
on the page. You can choose to show or hide these live presence indicators
based on your preference while working on or reviewing the content of the

page.

Note: Application performance may degrade with a large number of concurrent editors.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

606


<!-- page 607 -->
Create a Doc in EAP
Store information related to your work, iterations, and teams, and collaborate in real-time using
Docs in Enterprise Agile Planning workspace.

Before you begin

Role required: sn_apw_advanced.eap_user

About this task

Create a Doc at the team-level or planning item level.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. Navigate to a team or planning item that you would like to create a Doc for.
Type

Actions

a. Use the Agile structure in the navigation
panel to open your team.
Agile Structure/Team Doc

b. Select the Docs tab to view a list of your
docs.
c. Select a Doc to view the pages within.

Planning item Doc

a. From the Backlog or Planning board pages
of a team, select a planning item.
b. Select Full details.
c. Select the Docs tab and open your Doc.

3. Select New to create a new document for the team or planning item.
4. Provide the title for your document and select Create.
The Doc is created and an untitled blank page is opened for you to start capturing information.
You can create multiple pages within the Doc.

What to do next

Manage pages and subpages within a Doc in EAP.
Summarize and refine Docs content in EAP using Now Assist for SPM
Use Now Assist capabilities to elaborate, shorten, and summarize selected content in Docs, or to
get a summary of the whole document in Enterprise Agile Planning (EAP).

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

607


<!-- page 608 -->
Before you begin

Important: This Now Assist skill is now turned on by default. The skill will be
automatically available to appropriate role users for the application. The new default
behavior works as follows:
New customers
When you install a Now Assist product, designated skills are turned on
automatically.
Existing customers who are upgrading (starting with Zurich Patch 4)
There is no change to skills that are currently enabled and customized.
A skill is turned on if:
• The Now Assist plugin is installed, but the skill was never turned on.
• An admin has never adjusted roles for the skill.
A skill is not turned on if:
• The skill was previously turned on, and then turned off again.
• An admin has adjusted roles for the skill.
For more information, see Now Assist skills, agents, and agentic workflows on by default

.

• Create a Doc in EAP.
• Activate the EAP doc summarization Now Assist skill. See Configure Now Assist for Strategic
Portfolio Management (SPM).
Role required: sn_apw_advanced.eap_user
If you have custom roles that require access to this skill, update the ACLs for those roles that
require access. For more information, see Implement access control in Now Assist AI agents

.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. Navigate to your Doc.
Type

Actions

Team Doc

a. Use the Agile structure in the navigation
panel to open your team.
b. Select the Docs tab and open your Doc.

Planning item Doc

a. From the Backlog or Planning board pages
of a team, select a planning item.
b. Select Full details.
c. Select the Docs tab and open your Doc.

3. From your Doc, open the page you want to summarize or refine.
4. Choose to summarize the selected text on the page or the whole page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

608


<!-- page 609 -->
◦ To refine the selected text:
a. Select a single block or multiple blocks of content on the page.
b. Select Now Assist and choose an option.
i. Summarize to summarize the selected text.
ii. Elaborate to lengthen the selected text based on the existing context.
iii. Shorten to make the selected text concise.

◦ To summarize the entire content on the page, select Now Assist from the Doc header and
select Summarize.

Tip: If there’s more content to summarize, you can remove some text and retry.
Now Assist analyzes the text and generates an output in a separate pop-up.
5. Optional: Based on the output generated, you can further refine the result or insert the
generated content into the Doc.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

609


<!-- page 610 -->
(Optional)
6. Optional: Copy the generated output by selecting the Copy to clipboard icon (
purposes such as sending an email, saving to notes, and others.

) to use it for

Important: Because the output is AI-generated, review it to ensure accuracy.
Manage pages and subpages within a Doc in EAP
Flexibly organize information for your teams and work items by creating, duplicating, and deleting
pages and subpages within a Doc in Enterprise Agile Planning workspace.

Before you begin

Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. Navigate to your Doc.
Type

Actions

Team Doc

a. Use the Agile structure in the navigation
panel to open your team.
b. Select the Docs tab and open your Doc.

Planning item Doc

a. From the Backlog or Planning board pages
of a team, select a planning item.
b. Select Full details.
c. Select the Docs tab and open your Doc.

3. To create a page, you can create a blank page or start with a predefined template.
◦ For a blank page, select Create page.
◦ To create from templates:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

610


<!-- page 611 -->
a. Select Create Page from template.

b. Select a template from the Template Center and select Create page.

The new page is created and added to your Doc with the name Untitled, which you can
rename.
4. To create a subpage, select the Page Actions menu (

) and select Create Subpage.

5. To delete a page or a subpage, select the Page Actions menu (

) and select Delete.

Iteration goals and work item goals in EAP
Within Enterprise Agile Planning, define PI-level or sprint level objectives or associate work items
with enterprise goals.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

611


<!-- page 612 -->
Iteration goals
During planning interval (PI) or sprint planning, create functional goals for your team detailing
what you plan to accomplish for the current iteration. Depending on your EAP configuration
and team structure, you can create goals at the planning interval level or sprint level from the
Planning board tab of a team.

To learn how to create iteration goals in EAP, see Create iteration goals for a PI or sprint in EAP.

Work item goals
Establish a relationship between work items (Epic, Capability, Feature, or Story) with the portfoliolevel or enterprise-level goals and OKRs. When goals are added to work items, the teams working
on these items have greater visibility into the value that their work would contribute to.
Using the Primary goal field of the work item details, goals can be added to work items
individually.

Product managers, team leads, or team members can also view their work distribution with
respect to goals associated in the Work item distribution report of the dashboards.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

612


<!-- page 613 -->
Create iteration goals for a PI or sprint in EAP
Create iteration goals for your Agile teams to highlight the overall objectives to be accomplished
for a planning interval or sprint.

Before you begin

Role required: sn_apw_advanced.eap_user

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the left navigation panel, choose an ART or an Agile team
and select Planning Board.
◦ The Planning board shows the current iteration for the ART by default. You can select a
different iteration.
◦ The Planning board shows the current sprint for the Agile team by default. You can select a
different sprint.
3. Depending on the Agile team level that you are at, select Planning Interval goals or Sprint
goals.
The Goals tab displays existing goals for the PI or sprint.
4. Select New goal.
5. In the New iteration goal dialog box, enter the name and a description for the goal.
6. Select Save.

Result

The goal is created for the PI or sprint and is displayed in the Goals tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

613


<!-- page 614 -->
What to do next

You can add details to your goal or add sub-goals to it by updating its fields. For information on
the form fields for a goal, see Goal form.

Connecting EAP with Collaborative Work Management
Enhance visibility and streamline planning for your Agile teams by connecting Enterprise Agile
Planning (EAP) with Collaborative Work Management (CWM).

Overview of EAP-CWM connection
The EAP-CWM integration enables organizations to connect strategic program planning with
team-level execution in a single system, eliminating silos and improving delivery predictability.
Using EAP, program managers and release train engineers can define Program Increment (PI)
objectives, align Epics, Features, and Stories, create sprints for teams, and manage cross-team
dependencies. After completing a PI, they can conduct PI retrospectives and update roadmaps
for the next cycle. These capabilities ensure that enterprise priorities are clearly structured and
traceable across all levels.
By linking EAP to CWM, product owners and team members can plan and execute sprints,
manage agile stories alongside operational tasks such as incidents, track progress, and hold
team-level retrospectives, all within the same workspace.
This connection between the applications reduces context switching and ensures that both
planned and unplanned work is accounted for, without losing alignment to strategic goals. The
result is end-to-end transparency where leadership can track progress against PI goals through
EAP, while teams maintain flexibility to adapt to changing priorities.

Workflow of EAP-CWM integration
1. EAP admin connects an EAP team to CWM. See Connect an EAP team with CWM.
2. A new Space and Board are created for this EAP team in the CWM workspace.
3. Existing work items assigned to this EAP team are brought over to the newly created CWM
Board through Connected Work filters.
4. Sprint planning view is enabled for this CWM Board where the existing work items and sprints
are automatically shown.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

614


<!-- page 615 -->
5. Check team's access to CWM and provide the CWM user [sn_cwm.cwm_user] to all team
members.
6. EAP team can start creating more work, manage current work, and update progress directly
from the CWM Board. See Sprint planning in CWM.
7. The team's progress and work status is reflected back on the Team dashboard in the EAP
workspace. See EAP Agile Team dashboard

Creating or managing sprints for EAP teams in CWM
For EAP teams integrated with CWM, existing sprints and their scheduled work automatically
sync to CWM. These details are displayed in the Sprint Planning view on the CWM Board.
As the team progresses through assigned work, they can update the work status directly in the
Sprints section. The sprint can be marked Complete from this view and any incomplete work
items can be moved either to the backlog or the next sprint, if it exists.
New sprints for the team must be created in EAP. After creating new sprints in EAP, they will sync
to CWM, allowing the team to schedule work into these sprints from CWM.

Related topics
Collaborating with Spaces in CWM
Managing work using Boards in CWM
Connected work in CWM
Sprint planning in CWM
EAP Agile Team dashboard
Connect an EAP team with CWM
Establish a connection to CWM by setting your EAP team's Agile tool to Collaborative Work
Management.

Before you begin

Ensure that Application Scope of your ServiceNow instance is set to Strategic Planning.
Role required: sn_apw_advanced.eap_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

615


<!-- page 616 -->
Procedure
1. Navigate to Workspaces > Strategic Planning Workspace.
2. From the Settings menu, select Enterprise Agile Planning > Agile structure.
3. Select an EAP team that you want to connect with CWM.
4. Set the Team agile tool field to Collaborative Work Management.

5. Select Save.

Result
• Collaborative Work Management is displayed underneath this team in EAP.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

616


<!-- page 617 -->
• A Space and Board are created for this team in Collaborative Work Management.

What to do next

Navigate to Workspaces > Collaborative Work Management to start managing this team's work.
To learn more, see Managing work using Boards in CWM and Sprint planning in CWM.

EAP reports and dashboards
Use the EAP dashboards to visualize metrics, identify blockers, and analyze performance trends
for your Agile teams.
As a portfolio manager, product manager, team lead, or a team member, get insights into the
team performance using the EAP dashboard. EAP dashboards are available at each level of the
Agile structure such as Portfolio, Solution Train, ART, or Team.
You can use a default dashboard or you can configure a custom dashboard and associate it with
your Agile configuration. For more information, see Configuring custom dashboards in EAP.
EAP provides the following default Inline and Technical dashboards for different hierarchy levels
based on your configuration.

Dashboard

EAP Portfolio dashboard

Available with

• Full Configuration
• Portfolio Configuration

EAP Solution Train dashboard

• Full Configuration
• Large Solution Configuration

EAP ART dashboard

• Full Configuration
• Portfolio Configuration

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

617


<!-- page 618 -->
Dashboard

Available with

• Large Solution Configuration
• Essential Configuration
EAP Agile Team dashboard

• Full Configuration

The Agile Team dashboards consist of:

• Portfolio Configuration

• Agile Team Inline Dashboard

• Large Solution Configuration

• Agile Team Technical Dashboard

• Essential Configuration

• Agile Team Velocity Inline Dashboard
Kanban Portfolio Dashboard

Kanban configuration

Kanban Team Dashboard

Kanban configuration

EAP Portfolio dashboard
The Portfolio dashboard provides a high-level view of all the active work items in your portfolio.

You can use a default dashboard or you can configure a custom dashboard and associate it with
your Agile configuration. For more information, see Configuring custom dashboards in EAP.

Required EAP roles
The EAP read-only (sn_apw_advanced.eap_read_only) role is required to view the dashboard.

Access the Portfolio dashboard
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the navigation panel, choose your EAP Portfolio.
3. Select the Home tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

618


<!-- page 619 -->
Use cases
User

Dashboard use

• Portfolio manager

View the active work items assigned to the
teams in your portfolio and distribution of work
items.

• Product manager
• Team lead
• Team member

Reports
Title

Type

Epics by state

Bar graph

Work item distribution

Donut

Source table

Description

sn_align_core_scrum_epic
Epics assigned to this
Portfolio, grouped by
their current state.

sn_align_core_scrum_epic
Distribution of work
items for the selected
attribute. You can
group the data using
one of the following
options:
• Primary goal
• Primary goal >
Category
• Strategic program
• Owner
• Department

Kanban Portfolio dashboard in EAP
The Kanban Portfolio dashboard in Enterprise Agile Planning (EAP) provides progress metrics
and work item status for your EAP portfolios of the Kanban configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

619


<!-- page 620 -->
Required EAP roles
sn_apw_advanced.eap_read_only or the sn_apw_advanced.eap_user.

Access the Kanban Portfolio dashboard
To open the dashboard:
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the navigation panel, choose your Kanban EAP Portfolio.
3. Select the Home tab.

Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

Dashboard use

• Portfolio manager

View the active work items assigned to the
teams in your portfolio and the distribution of
work items.

• Product manager
• Team lead
• Team member

Reports
Title

Type

Epics by state

Bar graph

Source table

Description

sn_align_core_scrum_epic
Epics assigned to
this Kanban portfolio,
grouped by their
current state.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

620


<!-- page 621 -->
Title

Work item distribution

Type

Donut

Source table

Description

sn_align_core_scrum_epic
Distribution of work
items for the selected
attribute. You can
group the data using
one of the following
options:
• Primary goal
• Primary goal >
Category
• Strategic program
• Owner
• Department

EAP Solution Train dashboard
The Solution Train dashboard provides a snapshot of teams' work assignment status such as
capabilities, work items, and team performance.

You can use a default dashboard or you can configure a custom dashboard and associate it with
your Agile configuration. For more information, see Configuring custom dashboards in EAP.

Required EAP roles
The EAP read-only (sn_apw_advanced.eap_read_only) role is required to view the dashboard.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

621


<!-- page 622 -->
Access the Solution Train dashboard
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the navigation panel, choose your EAP Solution Train.
3. Select the Home tab.

Use cases
User

Dashboard use

• Portfolio Manager

View the state of capabilities assigned to the
teams in your Solution Train, distribution of
work items, and team performance.

• Product Manager
• Team Lead
• Team Member

Reports and data visualizations
Title

Type

Capabilities by state

Bar graph

Work item distribution

Donut

Source table

Description

sn_align_core_capability
Capabilities assigned
to this Solution Train,
grouped by their
current state.
sn_align_core_capabilityDistribution of work
items for the selected
attribute. You can
group the data using
one of the following
options:
• Primary goal
• Primary goal >
Category
• Strategic program
• Owner
• Department

Team performance

List

sn_apw_advanced_eap_iteration
Evaluate child teams
progress and help
them enhance their
performance.
You can choose
and rearrange the
columns of the report

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

622


<!-- page 623 -->
Title

Type

Source table

Description

by selecting the
icon.
EAP ART dashboard
The ART dashboard provides a snapshot of the overall progress of your Planning Interval (PI).

You can use a default dashboard or you can configure a custom dashboard and associate it with
your Agile configuration. For more information, see Configuring custom dashboards in EAP.

Required EAP roles
The EAP read-only (sn_apw_advanced.eap_read_only) role is required to view the dashboard.

Access the ART dashboard
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the navigation panel, choose your EAP ART.
3. Select the Home tab.

Use cases
User

Dashboard use

• Portfolio Manager

View the progress and status of your Planning
Interval's goals, features, overall progress, and
team performance.

• Product Manager

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

623


<!-- page 624 -->
User

Dashboard use

• Team Lead
• Team Member

Reports and data visualizations
Title

Type

PI progress

Gauge

Total features

Single Score

Blocked features

Single Score

Total story points

Single Score

Features missing
estimates

Single Score

Source table

Description

sn_apw_advanced_eap_iteration
Percentage of points
completed out of the
total scope for this
Planning Interval.

sn_align_core_feature

sn_align_core_feature

sn_align_core_feature

sn_align_core_feature

The total number of
features scheduled for
this Planning Interval.

Number of features
scheduled for this PI
that are blocked.

Total story points
for all the features
scheduled for this
Planning Interval.

Number of features,
scheduled for this
iteration, that have
child stories without
estimates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

624


<!-- page 625 -->
Title

Type

Features by state

Bar graph

Work item distribution

Donut

Source table

sn_align_core_feature

sn_align_core_feature

Description

Features scheduled
for this PI, grouped by
their current state.

Distribution of work
items for the selected
attribute. You can
group the data using
one of the following
options:
• Primary goal
• Primary goal >
Category
• Strategic program
• Owner
• Department

What does the team
plan to achieve in this
iteration?

List

Team performance

List

sn_gf_goal

Status and progress
of your Planning
Interval's goals.

sn_apw_advanced_eap_iteration
Evaluate child teams
progress and help
them enhance their
performance.
You can choose
and rearrange the
columns of the report
by selecting the
icon.

EAP Agile Team dashboard
The Agile Team dashboard provides you with sprint progress and team performance details for
an Agile team in the Enterprise Agile Planning (EAP) workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

625


<!-- page 626 -->
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

626


<!-- page 627 -->
You can use a default dashboard or you can configure a custom dashboard and associate it with
your Agile configuration. For more information, see Configuring custom dashboards in EAP.

Required EAP roles
The EAP read-only (sn_apw_advanced.eap_read_only) role is required to view the dashboard.

Access the Agile Team dashboard
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the navigation panel, choose your EAP team.
3. Select the Home tab.

Use cases
User

Dashboard use

• Portfolio manager

View the progress and status of your sprint
goals, stories, overall progress, and team
performance.

• Product manager
• Team lead
• Team member

Reports
Title

Type

Sprint progress

Gauge

Total stories

Single Score

Blocked stories

Single Score

Source table

Description

sn_apw_advanced_eap_iteration
Percentage of points
completed out of the
total scope for this
sprint.

rm_story

rm_story

Number of stories that
are scheduled for this
sprint.

Number of stories that
are blocked for this
sprint.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

627


<!-- page 628 -->
Title

Type

Total story points

Single Score

Stories missing
estimates

Single Score

Stories by state

Bar graph

What does the team
plan to achieve in this
iteration?

List

Source table

rm_story

rm_story

rm_story

sn_gf_goal

Description

Sum of points of
all stories that are
scheduled for this
sprint.

Number of stories that
are scheduled for this
sprint that don't have
story points.

Stories that are
scheduled for this
sprint, grouped by
their current state.
Status and progress of
your sprint's goals.
You can rearrange
the columns of the
report by selecting the
Settings icon (

Sprint burndown by
story points

Trend

This trend uses the
following indicators:
• EAP: Sum of story
points of all stories
in the current
iteration.
• EAP: Sum of story
points of active
stories in the
current iteration.

Sprint burnup by story Trend
points

This trend uses the
following indicators:

).

Burndown trend
comparing the sprint's
ideal pace with the
current pace. This
report can help you
analyze if the scope
can be completed
before the end of the
sprint.

Burnup trend
comparing the sprint's
ideal pace with the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

628


<!-- page 629 -->
Title

Type

Source table

Description

current pace. This
• EAP: Sum of story
report can help you
points of completed
analyze if the scope
stories in the
can be completed
current iteration.
before the end of the
• EAP: Sum of story
sprint.
points of all the
stories in the
current iteration

Avg velocity per sprint Single Score

Velocity

Story cycle time

Trend

Bubble chart

sn_apw_advanced_eap_iteration
Number of story
points the team can
complete per sprint.
Using this metric,
you can evaluate
the team's average
performance.
sn_apw_advanced_eap_iteration
Trend of story points
completed by this
team in the past 90
days.
Time taken for each
sn_apw_advanced_story_cycle_time
story to move from an
in-progress state to
completion.
Each bubble on the
graph represents
a story and the
graph shows stories
completed in the past
30 days. The height
of the bubble from the
x-axis shows the time
(in days) to move from
an in-progress state to
completion. The size
of the story bubbles is
relative to each other
based on their story
points.
Pointing your cursor
to a bubble on that
chart shows story data
such as story points,
duration in days to
complete, and name.
You can compare the
cycle times of stories

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

629


<!-- page 630 -->
Title

Type

Source table

Description

with different story
points and analyze
the trend in the time
taken by the team to
complete them.

Note: The
cycle time
chart currently
doesn't support
selecting the
story bubble to
drill down into
the stories.
Kanban Team dashboard in EAP
The Kanban Team Dashboard in EAP provides the work item status and progress metrics for
the Agile teams following the Kanban configuration in the Enterprise Agile Planning (EAP)
workspace.

Required EAP roles
sn_apw_advanced.eap_read_only or the sn_apw_advanced.eap_user.

Access the Kanban Team dashboard
To open the dashboard:
1. Navigate to Workspaces > Strategic Planning Workspace > Enterprise Agile Planning.
2. From the Agile structure section of the navigation panel, choose your Kanban EAP Portfolio.
3. Select the Home tab.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

630


<!-- page 631 -->
Use cases
For examples of how different people in your organization would use this dashboard, see these
use cases.

User

Dashboard use

• Portfolio manager

View the progress and status of the work items
assigned to your Kanban team.

• Product manager
• Team lead
• Team member

Reports
Title

Type

Total stories

Single Score

Total story points

Single Score

Blocked stories

Single Score

Stories missing
estimates

Single Score

Source table

rm_story

rm_story

rm_story

rm_story

Description

Number of stories
assigned to this team.

Sum of points of all
stories assigned to
this team.

Number of stories
that are assigned to
this team and that are
blocked.

Number of stories
assigned to this team
that don't have story
points.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

631


<!-- page 632 -->
Title

Type

Stories by state

Bar graph

Source table

Description

rm_story

Stories assigned to
this team, grouped by
their current state.

Enterprise Agile Planning reference
Reference topics provide additional information about the lists, forms, roles, tables, and other
components that you use to configure and use Enterprise Agile Planning (EAP).
Components installed with Enterprise Agile Planning
Several types of components are installed with Enterprise Agile Planning when you install the
Strategic Planning applications, including tables and user roles.

Roles installed
Role title [name]

Description

Contains roles

EAP admin
[sn_apw_advanced.eap_admin]

Can add teams to
EAP configurations
or remove them.

sn_apw_advanced.eap_user

• Can create,
update, and
delete work items

• scrum_master

EAP user
[sn_apw_advanced.eap_user]

• Can create and
modify iterations
like Planning
Intervals and
Sprints

• sn_apw_advanced.eap_read_only
• now_assist_panel_user
This role is available only with the
Now Assist for SPM plugin.

• Can access the
team's Backlog
and Planning
Board
EAP read-only role
Can view the EAP
[sn_apw_advanced.eap_read_only] team's Backlog and
Planning Board

• scrum_user
• workspace_user
• canvas_user

Tables installed
Table

Description

Agile Release Train

Stores information of all Agile Release Trains
created for the Agile structure of an EAP
configuration.

[sn_apw_advanced_agile_release_train]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

632


<!-- page 633 -->
Table

Description

This table extends the Enterprise agile team
[sn_apw_advanced_eap_team] table.
Agile Team
[sn_apw_advanced_agile_team]

Capability
[sn_align_core_capability]

EAP planning item

Stores information of all Agile Teams created for
the Agile structure of an EAP configuration.
This table extends the Enterprise agile team
[sn_apw_advanced_eap_team] table.
Stores information of all Capability type of work
items created in EAP.
This table extends the EAP planning item
[sn_align_core_eap_planning_item] table.
Base table for all EAP work item types.

[sn_align_core_eap_planning_item]

This table extends the Planning Item Entry
[sn_align_core_planning_item] table.

Enterprise agile calendar

Stores information of iteration types such as
Planning Intervals and Sprints.

[sn_apw_advanced_eap_calendar]

Enterprise agile calendar entry
[sn_apw_advanced_eap_calendar_span]

This table extends the Business Calendar
[business_calendar] table.
Stores information of the timeline defined or
date span for calendar entries of a business
calendar span.
For example, for a Sprint calendar type, six
calendar entries spanning over three months
can be created. This table stores the date
spans for each of these Sprint calendar entries.
This table extends the Business Calendar Entry
[business_calendar_span] table.

Enterprise agile configuration
(sn_apw_advanced_eap_configuration)
Enterprise agile configuration detail
[sn_apw_advanced_eap_configuration_detail]

Stores information of agile configurations such
as Full configuration, Portfolio configuration,
and other default and custom configurations.
Stores the details of the default work item type
and planning calendar associated with a team
type for a configuration.
It also stores:
• Team hierarchy in the Agile structure for a
configuration.
• Work item type available on the Backlog and
Planning board pages.

Enterprise agile iteration

Stores the details of team-level iterations
details such as capacity, total points, State, and
others.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

633


<!-- page 634 -->
Table

Description

[sn_apw_advanced_eap_iteration]
Enterprise agile iteration type

Stores the information about planning calendar
types such as Planning Intervals or Sprints.

[sn_apw_advanced_eap_iteration_type]
Enterprise agile team
[sn_apw_advanced_eap_team]
Enterprise agile team structure

Base table for all EAP teams such as ART,
Solution Trains, Agile Release Trains, and
Portfolios created in the Agile structure for a
configuration.
Contains information of team hierarchy.

[sn_apw_advanced_eap_team_structure]
Enterprise agile work structure

Contains information of work item type
hierarchy.

[sn_apw_advanced_eap_work_structure]
Epic
[sn_align_core_scrum_epic]

Feature
[sn_align_core_feature]

Solution Train
[sn_apw_advanced_solution_train]

SAFe Portfolio
[sn_apw_advanced_eap_portfolio]

Story

Stores information of all Epic work items
created in EAP.
This table extends the EAP planning item
[sn_align_core_eap_planning_item] table.
Stores information of all Feature work items
created in EAP.
This table extends the EAP planning item
[sn_align_core_eap_planning_item] table.
Stores information of all Solution Trains created
for the Agile structure of an EAP configuration.
This table extends the Enterprise agile team
[sn_apw_advanced_eap_team] table.
Stores information of all Portfolios created for
the Agile structure of an EAP configuration.
This table extends the Enterprise agile team
[sn_apw_advanced_eap_team] table.
Stores information of all stories created.

[rm_story]
Integration between EAP and Agile Development 2.0
While setting up a configuration in Enterprise Agile Planning, you can establish an integration
with Agile Development 2.0. Learn more about the tables connected and the way you access the
information.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

634


<!-- page 635 -->
In the EAP configuration form, when you enable the Sync with Agile Development option,
information of the following tables is synced between the two apps.

EAP tables

Agile Development 2.0 tables

Enterprise agile iteration
[sn_apw_advanced_eap_iteration]

Sprint [rm_sprint]

When this sync is established for a configuration, the following are the functionality changes:
Sprint creation and updates
• Creating a Sprint is suggested to be done from EAP.
• Creating a Sprint in EAP creates a related Sprint in Agile Development 2.0.
If the dates of the Sprint in EAP overlap with a record in the rm_sprint table, then
a new Sprint isn’t created for Agile Development 2.0. You can either choose to
create sprints for non-overlapping dates or delete the existing sprint from the
rm_sprint table.
• Fields of planned start and end dates for Sprints in Agile Development 2.0
become read-only, and are derived from the business calendar spans mapped to
the iterations in EAP.
• Updating Sprint details in EAP updates the corresponding Sprint details in Agile
Development 2.0.
• Deleting Sprints from EAP deletes the corresponding record from the Sprint
[rm_sprint] table.
• On the Sprint [rm_sprint] table, reference fields are created for parent of the EAP
iteration and the EAP team this iteration belongs to.
Story creation and updates
• All Stories scheduled for any Sprints in this configuration can be accessed in
Sprints of Agile Development 2.0.
You can track the progress of this Sprint from the Agile board.
• Any changes made to the story details or its progress are visible in both the
applications.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

635


<!-- page 636 -->
• On the Story [rm_story] table, reference fields are created for EAP team, iteration,
configuration, and parent work item in the EAP fields related list.
• If a story is rescheduled to a different sprint or moved to the Backlog on the Agile
board, it's updated in EAP and vice versa.

Note: The Story records for EAP are by default saved in the Story [rm_story] table, which is
installed with the Agile Development 2.0 plugin.
Team type form
Learn about the fields of the new table form that are required to add a new team type in
Enterprise Agile Planning.
New table form
Field

Description

Label

Unique label for the table.

Name

This field is auto-generated from your input in
the Label field.

Application

This field is automatically set to Portfolio
Planning Core based on your scope.
If this field shows a different value, then set
the scope of your ServiceNow instance to
Portfolio Planning Core.

Extends table

Select Enterprise agile team.

Controls section of the New team type form
Field

Description

User role

Set this field to sn_apw_advanced.eap_user
so that you grant access to the EAP user to
this table.

Application Access section of the New team type form
Application Access

Enable the Can read, Can create, Can update, and Can delete fields.
Related topics
Create a custom team type in EAP
Work item type form
Learn about the fields of the new table form that are required to add a new work item type in
Enterprise Agile Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

636


<!-- page 637 -->
New table form
Field

Description

Label

Unique label for the table.

Name

This field is auto-generated from your input in
the Label field.

Application

This field is automatically set to Portfolio
Planning Core based on your scope.
If this field shows a different value, then set
the scope of your ServiceNow instance to
Portfolio Planning Core.

Extends table

Select EAP planning item.

Controls section of the Work item type form
Field

Description

User role

Set this field to sn_apw_advanced.eap_user
so that you grant access to the EAP user to
this table.

Application Access section of the Work item type form
Application Access

Enable the Can read, Can create, Can update, and Can delete fields.
Related topics
Create a custom work item type in EAP
Agile configurations in EAP
SAFe-EAP migration request form
Learn about the fields of SAFe-EAP migration form. Use this form to submit a request to migrate
Scaled Agile Framework data to Enterprise Agile Planning.
SAFe-EAP migration request form
Field

Description

Request name

A unique name for the migration request.

EAP configuration

Configuration in EAP that matches with your
SAFe configuration.
For example, if you're using Portfolio SAFe in
your ServiceNow instance, select Portfolio
configuration.

SAFe table

Data from the SAFe table that you want to
migrate to EAP.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

637


<!-- page 638 -->
SAFe-EAP migration request form (continued)
Field

Description

• If you select Portfolio, the data from SAFe
Portfolio tables, their immediate child ARTs,
SAFe teams, and the iterations and work
items associated with them will be migrated.
• If you select ART, the data from ART
tables, their parent Portfolios, child SAFe
teams, and the iterations and work items
associated with them will be migrated.
Filter records

SAFe portfolios/ARTs that match the filter
conditions will be displayed for selection.

Records available for migration

Records that match the filter conditions that
you applied in the previous field are displayed
in the Available list for you to choose from.
Only the records that are moved to the
Selected list are considered for migration.

PIs starting on or after

Program Increments with planned start
date falling on or after the selected date are
migrated.

Work items update after

Epics, Features and Stories updated after the
selected date are migrated.

Status

Status of the migration request.

Related topics
Start migration of SAFe data to EAP
Migrating from SAFe to EAP
Enterprise Agile Planning Indicators
Indicators included in the EAP dashboard.

Indicator

Description

Version added

EAP: Sum of story points of
completed stories in current
iteration

Sum of story points of
completed stories in current
iteration is measured daily as
unit.

Washington DC

EAP: Sum of story points of all
stories in the current iteration

Sum of story points of all
stories in the current iteration
is measured daily as unit.

Washington DC

EAP: Sum of story points of
active stories in the current
iteration

Sum of story points of active
stories in the current iteration
is measured daily as unit.

Washington DC

For information about the metrics you can view on the EAP dashboard through these indicators,
see EAP reports and dashboards.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

638


