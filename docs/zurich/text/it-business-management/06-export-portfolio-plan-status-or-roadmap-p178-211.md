# Zurich Strategic Portfolio Management — Export portfolio plan status or roadmap / Execute work in PPM

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 178–211 of 2289

Sections: Export portfolio plan status or roadmap (p178); Execute work in PPM (p181); Reference (p182)

---

<!-- page 178 -->
About this task

You can add any Platform Analytics dashboard to the Portfolio Planning Workspace.

Procedure
1. Navigate to All > Platform Analytics > Analytics Center.
The Dashboards section appears on the page.
2. From the Bookmarked or Certified tabs, select a bookmarked or certified dashboard .
If the dashboard that you want to add isn’t bookmarked or certified, select View all from the
Dashboards section, and then select the dashboard from the Dashboards page.
3. From the dashboard header, select Edit.
4. From the dashboard header, select the View dashboard details icon (

).

a. In the Details side panel, fill in the Dashboard visibility field with Portfolio Planning
Workspace.
5. From the dashboard header, select Save.
6. From the dashboard header, select Exit editing mode.

Result

The dashboard appears on the Portfolio Planning Workspace.
Related topics
View a dashboard in Portfolio Planning Workspace
Create a dashboard
Duplicate a dashboard
Share a dashboard

Export the portfolio plan status or roadmap to Microsoft
PowerPoint
Export the status of work items, roadmap, and key metrics of your portfolio plan and free-form
roadmap into a Microsoft PowerPoint file so that you can keep your business stakeholders
updated on the progress. Save time by avoiding copying data into reports and drive shared
outcomes by enabling collaboration even with stakeholders who cannot access your ServiceNow
instance.

Before you begin

Install Export to PowerPoint for Strategic Portfolio Management.

Important: Export to PowerPoint is currently unavailable for customers in the FedRAMP,
NSC DOD IL5, or Australia IRAP-Protected data centers, self-hosted customers, or in other
restricted environments. Please check for availability updates in future releases.
Role required: admin

About this task

The following two PowerPoint templates are provided by default to generate a status report for
your portfolio plan:
• Portfolio plan status: Contains individual detailed slides for the top five items prioritized by
rank.
• Roadmap Template - default: Contains slides for Roadmap for this portfolio. You can export
roadmap data for a maximum period of a year at a time.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

178


<!-- page 179 -->
You can customize the type of the data to be shown in the generated report by updating
a predefined template or by creating your own branded template. See Create a Microsoft
PowerPoint template.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning.
2. Export the status of goals, work items, roadmap, and key metrics of your portfolio plan and
free-form roadmap into a Microsoft PowerPoint file.
For exporting this data

Perform these steps

a. From the list of portfolio plans, select one.
b. From the portfolio plan header, select the
More options icon ( ) and then select Ex­
port to PowerPoint.

Portfolio plan or roadmap with default set­
tings

c. On the Export to PowerPoint window, se­
lect Portfolio plan status or Roadmap Tem­
plate - default and select Export.

a. (For a portfolio plan roadmap) Select a port­
folio plan from the list of portfolio plans and
then select Roadmap from the Planning
section.
Roadmap or free-form roadmap with cus­
tomized settings

b. (For a free-form roadmap) From the Freeform Roadmaps tab, select a roadmap.
c. From the Personalize side panel, select Ex­
port to PowerPoint icon (

).

If you want to export the progress tracking
details, select the Tracking mode option on
the roadmap before selecting the Export to
PowerPoint icon.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

179


<!-- page 180 -->
For exporting this data

Perform these steps

d. On the Export to PowerPoint side panel, fill
the details.
i. Template: Select a template to which you
want to export the roadmap.
ii. Date range: Select a start and end date.
You can select date range for a maximum
period of a year.
iii. Compact mode: Select to export 25 hori­
zontal lanes per slide. The default mode
exports 15 horizontal lanes per slide.
iv. Show on slides: Select the items that
you want to see on the slides. The avail­
able items are Roadmap milestones, Item
milestones, Vertical lines, and Horizontal
lanes.
v. Select Export.

Note: Dependencies and metrics on
roadmap bar are not exported. Grouping
is supported only with the first attribute
selected in the Group by option.

Result

A PowerPoint file is generated with the relevant data.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

180


<!-- page 181 -->
This image is an example for an exported

roadmap.

Executing Portfolio Planning work in PPM
Facilitate execution of the work planned in Portfolio Planning in ServiceNow Project Portfolio
Management application.
Import, export, and manage your planning items between Portfolio Planning and PPM.
Integrating Portfolio Planning and PPM

Import records to Portfolio Planning Workspace
Import records from Project Portfolio Management, after the relevant table maps, fields maps,
and choice maps are configured.

Before you begin

Role required: sn_align_core.apw_admin

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

181


<!-- page 182 -->
Procedure
1. Navigate to All > Portfolio Planning > Integrations.
2. Select ServiceNow Internal Alignment Integration record.
3. Click Import.
4. On the Create Import Request form, fill in the date range for importing the records.
Create Import Request

5. Select OK.

Note: Records that have been created within the specified dates will be imported.
View error logs
View error logs to understand the cause of any issues that might have occurred during the
integration process.

Before you begin

Role required: sn_align_core.apw_admin

Procedure
1. Navigate to All > Portfolio Planning > Integrations.
2. To view the error logs, select the Integrations Errors tab.

Portfolio Planning reference
Reference information to provide additional details about Portfolio Planning such as user roles,
tables, and domain separation information.

Components installed with Portfolio Planning
Several types of components are installed with activation of the Portfolio Planning application,
including tables and user roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

182


<!-- page 183 -->
Roles installed
Role title [name]

Description

Portfolio Planning admin

Can access all the
modules in the Portfolio
Planning application

[sn_align_core.apw_admin]

Contains roles

• it_portfolio_manager
• sn_align_core.apw_user
• view_changer

Portfolio Planning user
[sn_align_core.apw_user]

Can create, update, and
delete portfolio plans,
free-form roadmaps,
and planning items.

• sn_align_cmn_int.user
• sn_milestones.milestone_editor

This role can be given
to users such as
portfolio or product
managers, business
unit leads, and other
planning personas.
sn_align_core.ap_read_only

• Can view portfolio
plans and free-form
roadmaps that are
shared with them.

sn_milestones.milestone_viewer

• Can add notes,
comments, or
attachments to
portfolio plans and
roadmaps that are
shared with them.
• Can create, edit, and
delete portfolio plan
views and free-form
roadmap views.

Note: Only
the owner can
edit or delete a
portfolio plan
view or a freeform roadmap
view.
Milestones editor
[sn_milestones.milestone_editor]
Milestones viewer
[sn_milestones.milestone_viewer]

Can create, update, and sn_milestones.milestone_viewer
delete milestones on
the roadmap.
Can view milestones on None
the roadmap.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

183


<!-- page 184 -->
Role title [name]

Business stakeholder
[business_stakeholder]

Description

Contains roles

• Can create and
update portfolio
plans and free-form
roadmaps.

• sn_align_core.ap_read_only
• sn_align_ws.spw_capacity_read
• sn_gf.goal_user_read

• Can add notes,
comments, or
attachments to
portfolio plans and
roadmaps that are
shared with them.
• Can personalize the
roadmaps.
• Can view generated
resource capacity for
planning items in the
Capacity Planning
screen.
• Can view goals and
related records using
the platform view.

Note: Users with
this role do not
have access to
create or edit any
roadmap items.

Scenario Planning roles
Role title [name]

Description

Contains roles

sn_align_ws.scenario_approver Can approve the scenarios for sn_align_core.apw_user
the portfolio.
Portfolio Planning with PPM roles
Role title [name]

Description

Portfolio Planning integrations Imports, exports, and
user
manages planning items
between Portfolio Planning
[sn_align_cmn_int.user]
and PPM.

Contains roles

connection_admin

Capacity roles
Role title [name]

Description

sn_align_ws.spw_capacity_user Can generate resource
capacity details.

Contains role

sn_align_ws.spw_capacity_read

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

184


<!-- page 185 -->
Capacity roles (continued)
Role title [name]

Description

sn_align_ws.spw_capacity_read Can view resource capacity
details.

Contains role

None

Financial planning roles
Role title [name]

Description

sn_align_ws.spw_financial_user Create cost plans and
expense lines for planning
items.

Contains roles

None

Tables installed
Table

Description

Alignment Integration

Stores data of integration information for your
ServiceNow instance

[sn_align_cmn_int_integrations_setup]
Choice Map

Stores choice map relationships between fields of
planning items of Portfolio Planning and PPM

sn_align_cmn_int_choice_map
Demand

Stores records created with Demand planning item
type.

[sn_align_core_demand]
Dependency

Stores data of dependencies between roadmap
items.

[sn_align_core_dependency]
Field Map

Stores field map relationships between planning
items of Portfolio Planning and PPM

[sn_align_cmn_int_field_map]
Import Request

Stores imports requests from Portfolio Planning to
PPM

[sn_align_cmn_int_import_request]
Instance Mapping

Stores mapping information between instances

[sn_align_cmn_int_instance_mapping]
Integration Error

Stores errors for integration between Portfolio
Planning and PPM

[sn_align_cmn_int_integration_error]
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

185


<!-- page 186 -->
Table

Description

Integration Mapping

Stores Integration mappings between Portfolio
Planning and PPM

[sn_align_cmn_int_integration_mapping]
Lens

Stores data of the lens configuration.

[sn_align_core_lens]
Lens structure

Stores data of lens entities and the relationship
between them for different lenses.

[sn_align_core_lens_structure]
Planning Item

Stores the data of all planning item types.

[sn_align_core_planning_item]
Portfolio plan

Stores data of portfolio plans.

[sn_align_ws_portfolio_plan]
Project

Stores records created with Project planning item
type.

[sn_align_core_project]
Roadmap configuration
[sn_align_ws_roadmap_configuration]
Table Map

Stores the configuration data for tables that are
used to create portfolio roadmaps and free-form
roadmaps.
Stores table mapping relationships between
planning items in Portfolio Planning and PPM

sn_align_cmn_int_table_map

System properties installed
Portfolio Planning with PPM system properties
Name

Description

com.sn_align_cmn_int.bulk_import

• Type: Choice list
• Default value: INSERT
• Other possible values:
◦ INSERT
◦ <Value 2 name>:
• Location: System Property [sys_properties] table
• Learn more: Configure bulk import

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

186


<!-- page 187 -->
Domain separation and Portfolio Planning
Domain separation is supported for Portfolio Planning. Domain separation enables you to
separate data, processes, and administrative tasks into logical groupings called domains. You
can control several aspects of this separation, including which users can see and access data.

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

Overview of domain separation in Portfolio Planning
You can create lens, portfolio plans, planning items, and roadmaps in different domains.

How domain separation works in Portfolio Planning
After you enable domain separation on your ServiceNow instance, the data of Portfolio Planning
is automatically domain separated. So, the data of lens, portfolio plans, planning items, and
roadmap configuration for different domains is visible to only those users who have access to
these domains.

Domain separated tables in Portfolio Planning
All the tables installed with Portfolio Planning support domain separation. For a complete list of
tables, see Components installed with Portfolio Planning.
Related topics
Domain separation for service providers

Planning item reorder errors in Portfolio Planning
Review the scenarios when the reordering of items can fail in the List view of Prioritization in
Portfolio Planning Workspace.
To update the rank of the planning items in the work pipeline of your portfolio plan, you can
reorder the items from the List view of the Prioritization page. While doing so, the reorder can
fail due to an error in the ranking configuration. Following are the scenarios where reordering of
planning items can fail:
Scenario 1: Global ranking plugin is not active
Check if the Global Ranking Application plugin (com.snc.sdlc.ranking) is active in
your ServiceNow instance. If not, contact your admin to activate it.
Scenario 2: Planning item doesn't have a rank configuration
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

187


<!-- page 188 -->
Check if all the planning items that you are reordering have a rank configuration. If
not, contact your admin to update rank configuration for these planning item types.
Scenario 3: Target row doesn't have a global rank
Check if the planning item before or after your target position to reorder has a global
rank. If not, contact your system admin to generate a global rank for them.
Related topics
Rank planning items

Item milestone errors in Portfolio Planning Workspace
Learn about the scenarios when the planning item milestones on the portfolio plan roadmap or
free-form roadmap can be in an error state in the Portfolio Planning Workspace.
An item milestone can fall out of the approved start or end dates of the item when you
reschedule the existing planning item.
When you reschedule a planning item on the roadmap, the due dates of its milestones
don’t change. So, if the due date of a milestone is falls outside the item’s date
range, the indicator for that out-of-range milestone is hidden and moved to an
error state. Indicators for milestones that are still within the item's date range are

visible.
The milestones that are out of sync with the item's schedule can be viewed from the
Milestones tab on the side panel. From the side panel, you can edit and adjust the

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

188


<!-- page 189 -->
due date of the milestone to reflect the change of plans. See Update roadmap item

milestones.

Note: You can’t update a project milestone from the roadmap view. Updating project
milestones may impact the associated cost and resource plans of the project. So, it’s
recommended to update project milestones using Project Workspace in Project Portfolio
Management (PPM).

Item dependency errors in Portfolio Planning Workspace
Learn about the scenarios when the planning item dependencies on the portfolio plan roadmap
or free-form roadmap in Portfolio Planning Workspace can be in an error state.
A dependency between two planning items can be in an error state when a scheduling conflict
exists between the items. In a linear (Depends on) dependency, the items are scheduled in a way
that starting the work on one item requires completing the work on another item.

Note: Error states are displayed for only if the planning items have a Depends on type of
relationship.
In the sample roadmap shown here, starting work on Employee onboarding process
improvement is dependent on the completion of Specific onboarding path for new hire. This
relation is considered a linear dependency. Here, Employee onboarding process improvement
is scheduled to start before the end date of Specific onboarding path for new hire. This conflict
is indicated on the roadmap with an error icon (
tab of the Item details side panel.

), and is also mentioned in the Dependencies

To resolve such errors, review the scope of the planning items and update the start or end dates
to adjust their scheduling accordingly.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

189


<!-- page 190 -->
Related topics
Add dependencies for roadmap items
Update roadmap item dependencies

Managing Portfolio Planning with PPM
Ensure that Portfolio Planning is integrated properly with Project Portfolio Management (PPM)
following these guidelines.
• Do not change the filter condition of a table map after the records are interfaced. The already
interfaced records might not match with the new filter condition and any change in the filter
condition can result in data inconsistency. If you need to change the filter condition, ensure
that the relevant attributes on the interfaced records are updated manually to avoid data
inconsistency issues.
• Whenever a table map is created, ensure that the relevant field maps and choice maps are
also configured.
• When an import job for a table map is running (processing), do not modify the table map or its
field maps.
• Using the Converted to field on the planning item form, you can identify the original record
from which it was converted.
• Ensure that the Lookup field and Lookup column values are added whenever the execution
and alignment tables are referencing two different tables, while creating a field map for field
type of reference or glide list.
• If there is a data synchronization failure, check if:
◦ The Integration error logs related list within that Alignment integration record.
◦ The Alignment table filter (for import) and Execution table filter (for export) conditions are
met.
◦ The Active flag in both the alignment integration and the table map is checked.
◦ The appropriate fields and choices are configured for each table map.
• If you want to view the Execution URL field, configure the planning item record to view it.
• If the Execution URL field in your synced planning item(s) is blank, navigate to Portfolio
Planning > Integrations and click Fix execution URL(s) for planning items. This action creates
and updates the execution URL field.
• A Primary goal field is introduced to the projects, demands, and epics table maps to support
the integration of the Goal field between alignment and execution tables.
• When you are trying to import or export a project, ensure that the demands (that are a part of
that project) are synced.
• You can create a table map for any execution table. If a table map is not created from one
of the delivered tables (dmn_demand, pm_project) or does not extend from them, you are
required to create a business rule to support the interfacing of the table map records. For more
information on creating a business rule, see Create a business rule to apply a custom table
map configuration.

Form field information for Portfolio Planning
Field information for forms used in the Portfolio Planning application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

190


<!-- page 191 -->
Action Assignment form
Learn about the fields of the Action Assignment form. Use this form to add the New action button
to the APW List Menu Configuration page.
Goal form
Field

Description

Action Label

Name of the action label. Enter New.

Action name

Name of the action. Enter create-new-uxf.

Implemented as

Implementation for the action. Select UXF Client Action.

Table

Name of the table the action is created for. Select
sys_ux_list_menu_config.

Specify client
Action

Client action. Look up and select Create New Record.

View

View of the form on which the action button is displayed.

Choice map form
Understand the fields of the choice map form. This form is used to create choice maps.
Choice map form
Field

Description

Execution table column

Field column of the selected execution table
that needs to be mapped. The value in this
field is automatically added based on the
selection made in the field map configuration.

Execution choice

Select the choice field value of the selected
execution table column field.

Alignment table column

Field column of the selected alignment table
that needs to be mapped. The value in this
field is automatically added based on the
selection made in the field map configuration.

Alignment choice

Select the choice field value of the selected
alignment table column field.

Create cost plan form
Use this form to create cost plans for your planning items.
Create cost plan form
Field

Description

Name

Name of the cost plan.

Entered currency

Currency to capture the unit cost value.

Unit cost

Planned cost for the cost plan.

Quantity

Quantity of cost plans.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

191


<!-- page 192 -->
Create cost plan form (continued)
Field

Description

Total planned cost

Total planned costs value of the cost plan.

Start fiscal period

Starting month in a fiscal period for the cost
plan.

End fiscal period

Ending month in a fiscal period for the cost
plan.

Cost distribution

Allocate planned cost by fiscal period or
duration.
Select a value from the list.
• Split equally across fiscal periods Distributes the cost equally among all the
fiscal periods across the duration.
• Recurring per fiscal period - Recurs the
cost for each fiscal period across the
duration.

Cost type

Cost type of the cost plan.
Select a cost type form the list.

Note: Based on the selected cost

type, the Role and Product model fields
appear.
Employee type

Read-only field.
• External if Cost type is External labor Capex
or External labor Opex.
• Internal if Cost type is Labor Capex or Labor
Opex.

Role

Name of the role to expense the cost plan.

Product model

Available if the Cost type is Software,
Hardware, or Other Capex or Opex.
Select a model from the list to expense the
cost plan.
Model name of a hardware expenditure to
expense the cost plan.

Create expense line form
Use this form to create expense lines for your actual expense.
Create expense line form
Field

Description

Number

Auto-generated number for the expense line.

Amount

Expense incurred.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

192


<!-- page 193 -->
Create expense line form (continued)
Field

Description

Short description

Short description of the expense.
Mention unique and specific details to identify
the expense line.

Date

Date of the expense.

Process date

Processed date of the expense.

Cost plan

Associated cost plan name for recording the
expense line.

Cost type

Cost type of the expense.
by default, the cost type of the cost plan is
selected.

State

State of the expense line.
Only processed expense lines are considered
for an investment entity.

Expense type

Defines the expense type, internal or external.
By default, the expense type is considered
from the Cost type field entry.

Rate card

Name of the rate card.

Summary type

Business purpose of the expense line.

Dependency form
Learn about the fields of the dependency form. Use this form to add and establish dependencies
between planning items on the roadmap in Portfolio Planning .
Dependency form
Field

Planning item

Description

Planning item that you selected from the
roadmap, to create the dependency. Consider
this as the successor item.
This field is automatically filled based on your
selection.

Relationship type

Choose one of the following:
• Depends on: Starting the work on one item
depends on finishing the work of the other
item. This dependency is considered a
linear relationship.
• Relates to: Work of the two items is related
to each other but doesn’t have a strict

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

193


<!-- page 194 -->
Dependency form (continued)
Field

Description

dependency on each other's completion.
This dependency is considered a non-linear
relationship.
Planning item

Planning item that is required. Consider this as
the predecessor item.

Number

System-generated unique identification
number for the dependency.

Field map form
Understand the fields of the field map form. This form is used to create mappings for a
corresponding table map.
Field map form
Field

Description

Execution table

Table in Agile Development 2.0, SAFe, or
PPM that needs to be mapped with a table in
Strategic Planning. The value in this field is
automatically added based on the selection
made in the table map configuration.

Execution table column

Field column of the selected execution table
that needs to be mapped.

Alignment table

Table in Strategic Planning that needs to be
mapped with a table in Agile Development
2.0, SAFe, or PPM. The value in this field is
automatically added based on the selection
made in the table map configuration.

Alignment table column

Field column of the selected alignment table
that needs to be mapped.

Flow type

Specifies whether the mapping is done
from alignment to execution, execution to
alignment, or both.
Here, alignment implies Strategic Planning,
and execution implies PPM, Agile
Development 2.0, and SAFe applications.

Demand planning item form
Learn about the fields of the demand form. Use this form to create or edit the details of a planning
item of the type Demand in Portfolio Planning.
These fields are displayed on the full details page of the planning item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

194


<!-- page 195 -->
Demand planning item form
Field

Description

Name

Brief description of the planning item.

Description

Detailed information of the planning item.
You can refine demand description using the
Write planning item skill, if the Now Assist for
SPM application is installed.

State

Current working state of the planning item.

Owner

User assigned to this planning item.

Planning state

State of the planning item in the Strategic
Planning Backlog.

Category

Category of this planning item. Choose from
Strategic or Operational.

MoSCoW

Priority of this planning item based on its
importance. The available options are:
• 1 - Must have
• 2 - Should have
• 3 - Could have
• 4 - Won’t have

Portfolio

Portfolio that this planning item is associated
to.

Program

Program that this planning item is associated
to.

Product

Product that this planning item is associated
to.

Strategic program

Strategic program that this planning item is
associated to.

Primary goal

Goal that is associated with this planning item
as the primary goal.

Product enhancement

Product enhancement that this planning item
is associated to.

Primary target

Target that is associated with this planning
item as the primary target.

Work notes

Notes to capture the updates and discussions
on the planning item as the work progresses.

Strategic priority

Strategic priority that this planning item is
associated to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

195


<!-- page 196 -->
Dates section of the Demand planning item form
Field

Description

Approved start date

Approved start date for this planning item.

Approved end date

Approved end date for this planning item.

Planned start date

Date on which the work for this planning item
is planned to start. This value is copied from
the Approved start date field.

Planned end date

Date on which the work for this planning
item is planned to be complete. This value is
copied from the Approved end date field.

Details section of the Demand planning item form

In this section, capture additional details for this planning item such as
Investment type, Execution type, impacted business application, and more.
Field

Description

Investment class

Choose from Run and Change

Investment type

Type of investment this planning item comes
under. For example, if completing work on this
item improves the user experience for your
product, select End User Experience.

Priority

Priority of this planning item.

Business application

Business application that this planning item is
related to.

Other impacted business applications

Business applications that this planning item
has an impact on.

Business capabilities

Business capabilities of this planning item.

Business case section of the Demand planning item form

In this section, capture business details for this planning item such as risks,
scope, blockers for this planning item.
Field

Description

Business case

Business case to invest in this planning item.

Risk of performing

Risks to the business if work on this planning
item is completed.

Risk of not performing

Risks to the business if work on this planning
item isn’t completed.

Enablers

Enablers for this demand.

Barriers

Blockers, if any, for this planning item.

In scope

Defined criteria for this planning item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

196


<!-- page 197 -->
Business case section of the Demand planning item form

In this section, capture business details for this planning item such as risks,
scope, blockers for this planning item.
(continued)
Field

Description

Out of scope

Clearly defined criteria that is not necessary
for this planning item.

Assumptions

Assumptions, if any, to work on this planning
item.

Financials section of the Demand planning item form

In this section, capture financial details for this planning item such as cost,
CapEx, OpEx, benefit, ROI, and other estimates.
Field

Description

Planned cost

Planned cost to take up this planning item.

Planned capEx

Planned capital expenditure for this planning
item.

Planned opEx

Planned operational expenditure for this
planning item.

Planned ROI

Planned return of investment for this planning
item.

Financial return

Financial return on this planning item.

Planned benefit

Planned benefit from this planning item.

Assessment data section of the Demand planning item form
Field

Description

Impact

Impact that this planning item has on the
business.

Risk

Numerical value for the risk associated with
this planning item.

Value

Numerical value for the value obtained with
this planning item.

Score

Score of the planning item.

Highlighted Value Condition form
Learn about the fields of the Highlighted Value Conditions form. Use this form to configure the
display of highlighted fields in Portfolio Planning workspace.

Field

Description

Condition

Condition for the field value.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

197


<!-- page 198 -->
Field

Description

For example, Status is Green.
Color

Color for the field value that meets the
condition specified.

Application

Scope of yourServiceNow instance. By default,
this field is set to Portfolio Planning.

Order

Order in which this color appears on
the legend in the Hierarchy view of the
Prioritization page.
For example, for the Planning Status column,
the value New is given the order 1.

Show Icon

Option to show icon beside the field value.

Icon

Icon that is displayed beside the field value.
This field is shown only if the Show Icon field
is selected.

Highlighted Value form
Learn about the fields of the Highlighted Value form. Use this form to customize the fields to be
highlighted on the Prioritization page of a portfolio plan in Portfolio Planning workspace.

Field

Description

Table

Table which contains the highlighted columns.
Enter sn_align_core_planning_item.

Application

Scope of yourServiceNow instance. By default,
this field is set to Portfolio Planning.

Field

Column of the table that is highlighted in the
workspace.

Lens Form
Learn about the fields of the Lens form. Use this form to create a lens in Portfolio Planning.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

198


<!-- page 199 -->
Lens form
Field

Description

Name

Name of the lens.

Active

Indicates if the lens is active.

Description

Brief description of the lens.
You can indicate the business purpose of this
lens and the planning managers that would
use this lens.

Planning items

Type of work that can be planned using this
lens.
Move the desired planning item types from the
Available list to the Selected list.

Lens structure form
Learn about the fields of the Lens structure form. Use this form to define a structure for your lens
in the Portfolio Planning application.
Lens structure form
Field

Description

Entity

Source table for your lens entity.
An entity represents a planning level in the
perspective of your lens.
Select the entity that is relevant for your
planning persona from the perspective of
this lens. For example, Department, Product
Model, or Business Objective.

Entity filter

Conditions to filter data from your entity
source.
The filtered data is shown on the workspace
for your planning persona to select and plan
for.

Top entity

Indicates if this entity is the top-level entity of
your lens structure.

Parent entity

Entity that is one level above this entity in your
current lens structure.
This field is available only if the Top entity field
isn’t selected.

Reference to parent entity

Column in the current entity table that
references the parent entity table.
For example:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

199


<!-- page 200 -->
Lens structure form (continued)
Field

Description

• Entity is Strategic Program
[sn_align_core_program]
• Parent entity is Department
[cmn_department]
Then the field of the Strategic Program
[sn_align_core_program] table that references
the Department [cmn_Department] table
would be Department.
This field is available only if the Top entity field
isn’t selected.
Related topics
Modify lens structure in Portfolio Planning
List Applicability form
Learn the field information for the List Applicability form. Use this information to define audience
for the newly created lists for Portfolio Planning workspace.

Field

Description

List

Name of the list that you want to define
audience for.

Application

This field is set to Portfolio Planning by
default.

Applicability

Audience for this list.
Set this field to Alignment Workspace Home
Audience.

Active

Option to enable this applicability to the list.

Planning item milestone form
Learn about the fields of the planning item milestone form. Use this form to create milestones for
the planning items in your roadmap in Portfolio Planning.

Field

Description

Name

Preferred name for your milestone.

Type

Milestone type. Select one from the following:
• Deadline
• Key Milestone
• Key Event

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

200


<!-- page 201 -->
Field

Description

• Launch Date
• Important Date
Due date

The date of the milestone.

State

Status of the milestone. Select one from the
following:
• Upcoming
• Missed
• Achieved

Assigned to

User who is assigned to the milestone.

Description

Brief description about the milestone.

Project planning item form
Learn about the fields of the project form. Use this form to create or edit the details of a planning
item of the type Project in Portfolio Planning.
These fields are displayed on the full details page of the planning item.
Project planning item form
Field

Description

Name

Brief description of the planning item.

Description

Detailed information of the planning item.
You can refine project description using the
Refine records skill, if the Now Assist for SPM
application is installed.

Status

Status of the planning item.

Owner

User assigned to this planning item.

State

Current working state of the planning item.

Percent complete

Percentage of work completed for this
planning item.

Planning state

State of the planning item in the Strategic
Planning or Portfolio Planning Backlog.

MoSCoW

Priority of this planning item based on its
importance. The available options are:
• 1 - Must have
• 2 - Should have
• 3 - Could have
• 4 - Won’t have

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

201


<!-- page 202 -->
Project planning item form (continued)
Field

Description

Portfolio

Portfolio that this planning item is associated
to.

Program

Program that this planning item is associated
to.

Product

Product that this planning item is associated
to.

Strategic program

Strategic program that this planning item is
associated to.

Product enhancement

Product enhancement that this planning item
is associated to.

Primary goal

Goal that is associated with this planning item
as the primary goal.

Primary target

Target that is associated with this planning
item as the primary target.

Work notes

Notes to capture the updates and discussions
on the planning item as the work progresses.

Strategic priority

Strategic priority that this planning item is
related to.

Dates section of the Project planning item form
Field

Description

Planned start date

Date on which the work for this planning item
is planned to start. This value is copied from
the Approved start date field.

Planned end date

Date on which the work for this planning
item is planned to be complete. This value is
copied from the Approved end date field.

Approved start date

Approved start date for this planning item.

Approved end date

Approved end date for this planning item.

Actual start date

Actual date on which the work for this planning
item has started.

Actual end date

Actual date on which the work for this planning
item is complete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

202


<!-- page 203 -->
Details section of the Project planning item form

In this section, capture additional details for this planning item such as
Investment type, Phase of the planning item, Execution type, affected business
application, and more.
Field

Description

Investment class

Type of investment class that this planning
item comes under. Choose from Run and
Change

Investment type

Type of investment that this planning item
comes under. For example, if completing work
on this item improves the user experience for
your product, select End User Experience.

Demand

Demand that this planning item is associated
with.

Execution type

Execution methodology for this planning item.
Select from Waterfall, Agile, or Hybrid.
This field is available only if the planning item
is of the type Project.

Priority

Priority of this planning item.

Phase

Phase of this planning item.
This field is available only if the planning item
is of the type Project.

Business application

Business application that this planning item is
related to.

Other impacted business applications

Business applications that this planning item
has an impact on.

Business capabilities

Business capabilities of this planning item.

Business case section of the Project planning item form

In this section, capture business details for this planning item such as risks,
scope, and blockers for this planning item.
Field

Description

Business case

Business case to invest in this planning item.

Risk of performing

Risks to the business if work on this planning
item is completed.

Risk of not performing

Risks to the business if work on this planning
item isn’t completed.

Enablers

Enablers for this project.

Barriers

Blockers, if any, for this planning item.

In scope

Defined criteria for this planning item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

203


<!-- page 204 -->
Business case section of the Project planning item form

In this section, capture business details for this planning item such as risks,
scope, and blockers for this planning item.
(continued)
Field

Description

Out of scope

Clearly defined criteria that is not necessary
for this planning item.

Assumptions

Assumptions, if any, to work on this planning
item.

Financials section of the Project planning item form

In this section, capture financial details for this planning item such as cost,
CapEx, OpEx, benefit, ROI, and other estimates.
Field

Description

Planned cost

Planned cost to take up this planning item.

Planned capEx

Planned capital expenditure for this planning
item.

Planned opEx

Planned operational expenditure for this
planning item.

Planned benefit

Planned benefit from this planning item.

Actual benefit

Actual benefit achieved from this planning
item,

Estimate to completion

Estimated cost to complete work on this
planning item.

Actual cost

Actual cost on this planning item.

Actual capEx

Actual value of capital expenditure for this
planning item.

Actual opEx

Actual value of operational expenditure for this
planning item.

Planned ROI

Planned return of investment for this planning
item.

Planned return

Financial return on this planning item.

Estimate at completion

Estimated cost at the time that work on this
planning item is completed.

Score section of the Project planning item form

In this section, capture scoring details for this planning item such as score,
value score, risk score, and size score.
Field

Description

Score
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

204


<!-- page 205 -->
Score section of the Project planning item form

In this section, capture scoring details for this planning item such as score,
value score, risk score, and size score.
(continued)
Field

Description

Value score

Score for the value obtained with this planning
item.

Risk score

Score for the risk associated with this planning
item.

Size score

Score for the job required to complete the
task.

Roadmap configuration form
Learn about the fields of the roadmap configuration form. Use this form to add new tables to
roadmap preferences and configure their details in Portfolio Planning.
Roadmap configuration form
Field

Description

Source table

Table that is used to build your roadmap.

Start date field

Field that is used for the start date of the
roadmap item.
For example, Planned start date.

End date field

Field that is used for the end date of the
roadmap item.
For example, Planned end date.

Item name field

Field that is used for the name of the roadmap
item.
For example, Short description.

Item owner field

Field that is used for the owner of the roadmap
item.
For example, Assigned to.

Status

Percent Complete

Field that is used for the status of the roadmap
item.
Field that is used to track the completion of
the roadmap item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

205


<!-- page 206 -->
Roadmap configuration form (continued)
Field

Description

This field value is used to visualize the
progress of the roadmap item in the tracking
mode.
Group by fields

List of fields with which the roadmap items can
be categorized into groups.
For example, the State attribute can be used
to categorize the items into groups of states
such as Draft, Ready, Work in progress, and
others.

Color by fields

List of fields with which the roadmap items can
be categorized by color.
For example, the Planning item type attribute
can be used to assign a unique color to each
group of items belonging to a specific type.

Metric fields

List of fields used as the metrics for the
roadmap items.
For example, Planned benefit or Actual cost.
These values are displayed when you point
the mouse cursor on the roadmap item.

Table map form
Understand the fields of the table map form. This form is used to create a new custom table map
for any record to integrate with Agile Development 2.0, SAFe, and PPM.
table map form
Field

Description

Alignment Integration

Specifies the Alignment integration type. The
value is ServiceNow Internal by default.

Execution table

Table in Agile Development 2.0, SAFe, or
PPM that needs to be mapped with a table
in Strategic Planning. For example, Defect
[rm_defect].

Alignment table

Table in Strategic Planning that needs to be
mapped with a table in Agile Development
2.0, SAFe, or PPM. For example, Milestone
[sn_milestones_milestone].

Milestone table map

This field is relevant only for Project
[pm_project] table map. It is a reference
to the new Milestone table map
(sn_milestones_milestone) for integrating
project milestones from Project Portfolio

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

206


<!-- page 207 -->
table map form (continued)
Field

Description

Management workspace to Strategic Planning.
For all the other table maps, the milestone
table map field is not available.
Execution table filter

Filter condition to retrieve the relevant records
from PPM, Agile Development 2.0, or SAFe. For
example, Portfolio is HR or Active is True.​

Alignment table filter

Filter condition to retrieve the relevant records
from Strategic Planning.​

Active flag

Ensures that the table map sync is active. This
field is checked by default.

Sync attachments

Ensures that the attachments are synced
between the applications. This field is
checked by default.

Roadmap milestone form
Learn about the fields of the roadmap milestone form. Use this form to create a milestone for the
timeline of your roadmap in Portfolio Planning.

Field

Description

Name

Preferred name for your milestone.

Type

Milestone type. Select from one of the
following:
• Key Event
• Launch Date
• Important Date
• Deadline
• Key Milestone

Due date

The date of the milestone.

Assigned to

User who is assigned to the milestone.

Scheduled Script Execution form to generate labor costs for projects and demands
Use the Scheduled Script Execution form to enable Generate Labor Costs scheduler job for
projects and demands.
Schedule Item form
Field

Description

Name

Name that identifies this scheduled job.

Active

Option that indicates that scheduled job is active and should be executed at the
specified date and time.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

207


<!-- page 208 -->
Schedule Item form (continued)
Field

Run

Description

Time interval to use for running the scheduled job:
• Daily: Runs daily, at a designated time.
• Weekly: Runs on a weekly basis, at a designated time and day of the week.
• Monthly: Runs on a monthly basis, at a designated time and day of the month.
• Periodically: Runs on a designated repeating interval.
• Once: Runs for a single occurrence only.
• On Demand: Runs immediately on demand.
• Business Calendar: Entry Start: Runs on the starting entry dates for the
business calendar that you select in the Business Calendar field. A scheduled
job runs for the starting date of each of the business entries that you defined for
the business calendar.
For example, if the business calendar represents a fiscal year, and the starting
date of each entry is a fiscal month, the scheduled job runs on the first day of
each month.
• Business Calendar: Entry End: Runs for the ending date for the business
calendar that you select in the Business Calendar field. This selection runs in
the same manner as Business Calendar: Entry Start, but for the end dates of
the associated business calendar entries.

Note: When you select Business Calendar: Entry Start or Business

Calendar: Entry End, you can apply an offset factor to schedule the job
to run before or after the time span of the selected business calendar. To
learn more, see the Offset type and Offset fields.
To learn more about creating and using business calendars and defining
business calendar entries, see Creating business calendars
and Define
business calendar entries .
Time zone

Time zone to use with the Time field entry when you specify the time at which the
scheduled job should run. Select a time zone entry:
• -None-: Use the default time zone for the logged-in user who is creating the
scheduled job.
For example, the scheduled job runs at 04:45 p.m. US/Pacific time if it is the
user's assigned time zone, and you enter 16:45 into the Time field.
• Use System Time Zone: Use the default system time zone that is specified for
the instance in which it runs.
For example, the scheduled job runs at 10:15 p.m. London time if Europe/
London is the default system time zone for the instance, and you enter 22:15
in the Time field.
• Actual time zone.
For example, the scheduled job runs at 1:30 p.m. in the US Eastern time zone if
you select US/Eastern, and enter 13:30 in the Time field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

208


<!-- page 209 -->
Schedule Item form (continued)
Field

Day

Description

Day on which the scheduled job should run.
• If Run is set to Weekly, select the day of the week. For example, select
Wednesday.
• If Run is set to Monthly, select the day of the month. For example, select 25 for
the 25th day of the month.
This field appears only if you select Monthly or Weekly in the Run field.

Repeat
Interval

Duration of the repeat interval for each scheduled job execution. Enter the
duration in the number of days, hours, or minutes. For example:
• To run the scheduled job every four days, enter 04 in the Days field.
• To run it every 26 hours, enter 26 in the Hours field.
• If it should repeat at an interval of 13:30:25, enter 13 in the Hours field, and
then enter 30 and 25 in the two unlabeled fields after it.
These fields appear only if you select Periodically in the Run field.

Note: This setting does not account for Daylight Saving Time changes. For
example, if you select a period of one day, the calculation adds 24 hours to
the starting time of the job. If the start time is in a Daylight Saving Time (DST)
period, the job runs with a one-hour offset when that time zone is not in DST.
Business
Calendar

Offset Type

Business calendar entry that you are using to determine the business calendar
start or end date for the scheduled job. This field appears only if you select
Business Entry: Start Date or Business Entry: End Date in the Time field.
Type of time offset, if any, to apply to the business calendar that you selected for
scheduling this job:
• Past: Apply an offset factor to schedule the job to run before the start of the
time span of the selected business calendar.
• Future: Apply an offset factor to schedule the job to run after the end of the time
span of the selected business calendar.
• --None--: Do not apply a time offset when scheduling this job.
Adding an offset factor enables you to schedule the job to run before, or after, the
formal time span that is defined in the business calendar for the following use
cases:
• Schedule a job at a certain time, outside of the time span for the selected
business calendar.
• Arrange multiple jobs to run in sequence, around the time span of the selected
business calendar.
The Offset type and Offset fields appear only if you select Business Calendar:
Entry Start or Business Calendar: Entry End in the Run field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

209


<!-- page 210 -->
Schedule Item form (continued)
Field

Offset

Description

Amount of time offset, expressed in days, hours, minutes, and seconds, to apply
to the business calendar that you selected for scheduling this job. For example,
if you want to schedule the job to start three days, 14 hours, 10 minutes, and 45
seconds before the business calendar start date, do the following actions:
• Select Past in the Offset type field.
• Enter 3 in the Days field.
• Enter 14, 10, and 45 in the Hours field.
The Offset Days and Hours fields appear only if you select Business Calendar:
Entry Start or Business Calendar: Entry End in the Run field, and Past or Future
in the Offset type field.

Time

Time of day at which the scheduled job should run, expressed in hours, minutes,
and seconds on a 24-hour clock. The selection that you make in the Time zone
field determines the time zone for this entry.

Note: Time values are always saved in the ServiceNow AI Platform® in UTC
time and then translated into the proper time. This translation depends on
the selected Time zone and the entry in the Time field.
This field appears only if you select Daily, Weekly, or Monthly in the Run field.
Starting
Priority

Date and time of the first scheduled job generation. Select the calendar date and
time. This field appears only if you select Periodically in the Run field.
Numerical priority for the scheduled job:
• Set essential jobs to a priority value below 100.
• Set nonessential jobs to a priority above 100.
• If 70 percent or more of all scheduled jobs are Overdue, any jobs that are
marked with a value above 100 do not run.

Run as

Name of the user who is creating and running the scheduled job. To assign the
scheduled job to the system instead of the person creating the scheduled job,
create a system or dummy user and add it to this field.

Conditional Option for enabling the running of the scheduled job if certain conditions are met
in the associated script.
Condition

Conditional script that determines if a scheduled job should run. The last
expression of the script should evaluate to a Boolean (true/false) value. This text
box appears only if you select Use conditions.

Starting

Date and time of the first scheduled job generation. Select the calendar date and
time. This field appears only if you select Periodically in the Run field.

UX List Category form
Learn about the fields of the UX List Category form. Use this form to create additional categories
for lists in the Lists menu of Portfolio Planning workspaces.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

210


<!-- page 211 -->
Field

Description

Title

Display name of the category in the
workspace.

Application

Application scope. Ensure that this is set to
Portfolio Planning.

Order

Order in which this category is displayed in
the workspace.

Active

Option to enable the display of this category in
the workspace.

Description

Brief description of the category.

Configuration

Configuration that the category is referencing.
By default, this field is set to APW List Menu
Configuration.

Related topics
Customize Lists in Portfolio Planning Workspace
UX List form
Learn about the fields of the UX List form. Use this form to create additional lists in the Lists menu
of Portfolio Planning workspaces.

Field

Description

Title

Display name of the category in the
workspace.

Application

Application scope. Ensure that this is set to
Portfolio Planning.

Order

Order in which this category is displayed in
the workspace.

Category

Category that this list would be displayed
under, in the workspace.

Active

Option to enable the display of this category in
the workspace.

Table

Source table for the list.

Configuration

Configuration that the category is referencing.
By default, this field is set to APW List Menu
Configuration.

Conditions

Conditions to filter the records of the source
table.

Columns

Columns of the table that must be displayed in
the list in the workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

211


