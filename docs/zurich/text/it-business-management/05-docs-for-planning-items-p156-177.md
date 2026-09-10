# Zurich Strategic Portfolio Management — Docs for planning items

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 156–177 of 2289

Sections: Docs for planning items (p156); Manage portfolio plan views (p160); Use dashboards (p164)

---

<!-- page 156 -->
For example, if you want to compare budget and actuals breakdowns, select only these two
options and apply your preferences. You can also customize the left-grid by selecting the
required columns from the Left Grid list from the personalize settings.
• Group the planning items.
By default, the financials view is grouped by the Budget status column. You can remove Budget
status grouping from the Grouped by row and drag-drop the required header to change this
view.

Docs for planning items in Portfolio Planning
Store and manage all kinds of documentation for planning items from a centralized location of
Portfolio Planning Workspace.

Docs overview
Product and portfolio managers can store information for planning items using the Docs feature.
• Each planning item can have a separate doc page to capture the information related to it.
For example, for an Epic planning item, you create a doc page for high level business
objectives or technical product requirements.
• Each planning item can have multiple doc pages associated to it to help you effectively
organize key artifacts.
• Predefined templates such as Project Brief, Product Requirements, Brainstorming Ideas, and
Meeting notes are available. Create doc pages for your planning items using one of these
templates or start with a blank page.

Features of Docs
The following are the key features of Docs:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

156


<!-- page 157 -->
• Auto-save content.
• See who is viewing or working on a doc page using the feature of live user presence.
• Create documents using pre-defined templates.
• Use rich text paragraph formatting, which includes headings, lists, alignment, and others.
• Move text blocks to change their placement using block-level editing.
• Tag team members inline or insert tables using the / command.
• Add reference to other ServiceNow AI Platform tables to connect work across teams.
• Insert images by uploading files or using web URLs.

Note: The experience of inserting Google Images links might not work.
Real-time collaboration within planning item Docs
With the feature of real-time collaboration, edit a doc page concurrently with multiple other
editors. Colored cursors denote the current location of each editor on the page. You can choose
to show or hide these live presence indicators based on your preference while working on or
reviewing the content of the page.

Note: Huge number of users editing the same block of content simultaneously might
result in issues with application performance.

Dynamic data linking in Docs
Keep record information in your documentation always current and reduce manual effort with the
Dynamic data linking feature in Docs. You can now reference any ServiceNow application record
and Docs will automatically reflect the latest updates from those records.
For example, if you add a reference to a Project record, the reference shows the latest field
information of the project in Docs without requiring manual edits. Selecting the project reference
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

157


<!-- page 158 -->
opens up the project form so that you can view the full details of the project and make any
necessary changes.
A hover popover displays the details of the mentioned record, providing quick access to
additional information without leaving the current context.

Dynamic linking also enables adding references to a particular field of a record, such as
Assigned to of a Project record.

You can add references from any ServiceNow table you have access to, with no setup or
configuration needed.
This feature reduces the need to switch between multiple ServiceNow applications within your
instance and helps maintain a single, reliable source of truth for collaborative work, making it
easier for teams to stay aligned and informed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

158


<!-- page 159 -->
Create and manage pages and subpages for planning items
Flexibly organize information for your planning items by creating, duplicating, and deleting pages
and subpages in Strategic Planning.

Before you begin

Role required: sn_align_core.apw_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select a portfolio plan.
3. From the Prioritization or Roadmap page, select a planning item that you would like to create a
doc page for.
If you have selected a planning item from the Roadmap page, select Full details from the
Details tab of the item's side panel.
4. From the planning item's record page, select Docs.
5. To create a page, you can create a blank page or start with a predefined template.
◦ For a blank page, select Create page.
◦ To create from templates:
a. Select Create Page from template.

b. Select a template from the Template Center and select Create page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

159


<!-- page 160 -->
The new page is created and added to your Doc with the name Untitled, which you can
rename.
6. To create a subpage, select the Page Actions menu (

) and select Create subpage.

7. To delete a page or a subpage, select the Page Actions menu (

) and select Delete.

Managing portfolio plan views in Portfolio Planning
Portfolio managers can create customized views for their portfolio plans by applying
personalization settings such as column selection, grouping, and filtering. Portfolio owners or
editors can share these personalized views with stakeholders to enable easier collaboration on
the portfolio plans.

Benefits of portfolio plan views
Portfolio managers can create personalized views as needed by applying settings such as
column selection, grouping, and filtering.
• Views can be created as private or public.
• Can create up to three private views and up to 10 shared (public) views.
• Portfolio plan views can be shared with stakeholders to enable collaboration on the portfolio
plan.
• Switch between shared and private views as needed.
• Each view saves your display preferences across the Prioritization, Roadmap, Capacity, and
Financials tabs.

Create a portfolio plan view
Create a customized portfolio plan view based on your requirements, so you can access it when
you log in again and share it with stakeholders for collaboration.

Before you begin

Role required: sn_align_core.ap_read_only

About this task

You can create up to three private views and up to 10 shared (public) views per portfolio plan.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one.
3. Make any changes to the view as needed.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

160


<!-- page 161 -->
For example, apply filter with the Department attribute and the value as Finance.
The Save as new view option appears on the portfolio plan header.

4. From the portfolio plan header, select Save as new view.
5. On the Save as new view window, fill the details.
a. Enter a name for the view in the View name field.
b. Optional: Select the Shared view toggle to make this view public.
Selecting the Shared view toggle makes the view visible to all stakeholders with whom this
portfolio plan is shared.
c. Select Save.

Result

The shared view for the portfolio plan is created and will be visible to all stakeholders with whom
this portfolio plan is shared.

What to do next
• Share the portfolio plan with your stakeholders to start collaborating on the portfolio plan. See
Share a portfolio plan with stakeholders.
• Edit a portfolio plan view to make any changes to the existing view. See Edit a portfolio plan
view.

Edit a portfolio plan view
Edit a customized portfolio plan view based on your requirements, so you can access it when you
log in again and share it with stakeholders for collaboration.

Before you begin

Role required: sn_align_core.ap_read_only

About this task
• Only the owner of a portfolio plan view can edit a shared (public) view.
• You can have up to three private views and up to ten shared (public) views per portfolio plan.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

161


<!-- page 162 -->
Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one.
3. From the portfolio plan header, select the view you want to edit or override with your
personalization settings from the list of available portfolio plan views.
The selected view appears.
4. Make changes to the view as needed.
For example, apply filter with the Department attribute and the value as Finance.
After you make any change to the view, the Save view option appears in the portfolio plan
header.
5. Select Save view.
The view is updated to reflect the changes made.
6. Optional: To edit name of the view, select the Portfolio plan view drop-down from the portfolio
plan header and then select Edit view icon (
On the Edit view window, fill the details.

) next to the view you want to edit the name for.

a. Update the name for the view in the View name field as required.

Note: Only the owner of the portfolio plan view can rename the view.
b. Optional: Select the Shared view toggle to make this view public or disable the Shared
view toggle to make the view private.

Important: Changing a shared view to a private view removes access for existing
stakeholders.
c. Select Save.
(Optional) The name of the view is updated.

What to do next

Share the portfolio plan with your stakeholders to start collaborating on the portfolio plan. See
Share a portfolio plan with stakeholders.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

162


<!-- page 163 -->
Related topics
Create a portfolio plan view
Delete a portfolio plan view

Delete a portfolio plan view
Delete a customized portfolio plan view if it is no longer needed or if the maximum limit of ten
shared or three private views has been reached.

Before you begin

Role required: sn_align_core.ap_read_only

About this task
• Only the owner of the portfolio plan view or an editor of the portfolio plan can delete the view.
• Deleting a portfolio plan deletes the view, including any changes made to the view. However,
this action keeps the items (projects, demands, epics) intact in the portfolio plan.
• You can have up to three private views and up to ten shared (public) views per portfolio plan.

Procedure
1. Navigate to Workspaces > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one.
3. Select the Portfolio plan view drop-down from the portfolio plan header and then select Delete
view icon ( ) next to the view you want to delete.
The Delete this view window appears.
4. On the Delete this view window, select Delete.

Related topics
Create a portfolio plan view
Edit a portfolio plan view

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

163


<!-- page 164 -->
Using dashboards in Portfolio Planning
Using the Platform Analytics dashboards in Portfolio Planning Workspace, you can monitor
performance, track progress, and make informed decisions related to planning and execution.

Roles required for managing dashboards
Required roles to access out-of-the-box dashboards
Access level

Required roles

Read, duplicate, or share
the Execution Dashboard

sn_align_core.ap_read_only

Note: To view data in financial-related and capacityplanning-related widgets, users must have the appropriate
roles.

Edit the Execution
Dashboard

admin

Required roles to create or edit dashboards (excluding out-of-the-box dashboards)
Access level

Required roles

Create
dashboards

sn_align_core.apw_user

Edit
dashboards

sn_align_core.apw_user

Note: You can edit dashboards that you own or those you’ve been
granted permission to edit.

Note: You can create widgets in dashboards by configuring any available data source
table in the ServiceNow AI Platform. However, you must have read access to the source
tables to view key data, metrics, or visualizations.
For example, if you create a widget in a dashboard configuring the Cost Plan Breakdown
table to display budget data, the budget summary is visible on the dashboard only if
you have read access to the Cost Plan Breakdown table. Similarly, when you share this
dashboard with a stakeholder, the stakeholder must also have read access to the Cost Plan
Breakdown table to view the budget summary.
For more information on the required roles to manage Platform Analytics dashboards, see
Platform Analytics dashboard roles .

Execution Dashboard in Portfolio Planning Workspace
The Execution Dashboard helps portfolio and product managers gain real-time visibility into
delivery progress across work items, enabling portfolio leads to detect delays, course-correct
early, and keep the strategy on track.
The Execution Dashboard provides various analytics across different tabs, including Overview,
Financial, Milestones & Dependency, Capacity, RIDAC, Data Quality, and Geo.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

164


<!-- page 165 -->
Overview tab in the Execution Dashboard

Widget/Visualization

Description

Delayed Planning Items

Planning items that were prioritized but
haven’t started yet (no recorded actual start
date), despite having an approved start date in
the past.

Overdue Items

Prioritized planning items that remain
incomplete (no recorded actual end date),
despite having an approved end date in the
past.

Dependencies whose provider planning item
is in Red status

Dependencies that have a provider planning
item in red status, affecting all dependent
planning items.

Planning Items
New and In-Review Items

Visualization of new and in-review planning
items grouped by Priority. You can also group
the items using other available options.

Prioritized Items

Visualization of prioritized planning items
grouped by Status. You can also group the
items using other available options.

Completed Items

Visualization of planning items whose state
is Done. You can also group the items using
other available options.

Execution Items
Projects

Visualization of projects count grouped by
State. You can also group the items using
other available options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

165


<!-- page 166 -->
Widget/Visualization

Description

Demands

Visualization of demands count grouped by
State. You can also group the items using
other available options.

Financial tab in the Execution Dashboard

Widget/Visualization

Description

Select a fiscal period to view relevant data

Option to select date range as This year
or Last year to filter and display the data
accordingly. Clearing the date range displays
the data considering from the start date of the
portfolio plan.

Planned Costs

Estimated cost for executing the plan.

Budget

Estimated budget for executing the plan.

Actual Costs

Actual cost incurred during plan execution.

Planned vs Budget vs Actual by Cost Type

Visualization of Planned vs Budget vs Actuals
by Cost Type.

Planned vs Budget vs Actual

Visualization of cost by Planned vs Budget vs
Actual.

Budget by Investment Type

Visualization of budget by Investment type.

Benefits
Planned Monetary Benefits

Monetary benefits that have been planned.

Actual Monetary Benefits.

Monetary benefits that have been achieved.

Pending Monetary Benefits.

Monetary benefits that are in pending state.

Benefits by Category

Benefits by category such as Revenue, Cost
savings, and Customer satisfaction score.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

166


<!-- page 167 -->
Widget/Visualization

Description

Monetary Benefits

Visualization of monetary benefits with respect
to planned and actual benefits.

Milestones & Dependency tab in the Execution Dashboard

Widget/Visualization

Description

Dependencies whose provider planning item
is in Red status

Count of dependencies that have a provider
planning item in red status, affecting all
dependent planning items.

Missed Key Milestones in Last 30 Days

Count of planning items whose key milestones
were missed within the last 30 days.

Upcoming Milestones Likely to Be Missed

List of planning items whose key milestones
about to be missed soon with details including
Name, Type, Due date, Assigned to, Source
item.

Missed Milestones in Last 30 Days

List of planning items whose key milestones
were missed within the last 30 days with
details including details, Name, Type, Due
date, Assigned to, and Source item.

Achieved Milestones in Last 30 Days

List of planning items whose key milestones
were achieved within the last 30 days with
details including details, Name, Type, Due
date, Assigned to, and Source item.

Milestones Analyzer

Visualization of key milestones grouped by
state and stacked by Type. You can also group
and stack the items using other available
options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

167


<!-- page 168 -->
Capacity tab in the Execution Dashboard

Widget/Visualization

Description

Resource Assignments Status

Visualization of resource assignments status.

Resource Assignments Ready for Review

Visualization of resource assignments count
that is ready for review.

Upcoming Items with Resource Assignments
List of upcoming planning items whose
That Are Unassigned, Unapproved, or Pending resource assignments status is Unassigned,
Unapproved, or Pending.
Resource Assignments by Group, Role & Skill

Visualization of resource assignments count
by their group, role, and skill.

RIDAC tab in the Execution Dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

168


<!-- page 169 -->
Data Quality tab in the Execution Dashboard

Widget/Visualization

Description

Alignment
Not Aligned to Goal

Count of work items that aren’t associated with
any goal.

Financials
No Planned Cost

Count of work items for which cost estimation
is done yet for execution.

No Planned Benefit

Count of work items for which benefit
estimation is done yet.

No ROI

Count of work items for which ROI isn’t
estimated yet.

Projects and Demands Without an Investment
Type

Count of projects and demands for which
Investment type isn’t defined yet.

Monetary Benefit Plans Without a Planned
Benefit

Count of monetary benefit plans for which
benefit isn’t defined yet.

Monetary Benefit Plans Without a Sponsor

Count of monetary benefit plans for which a
sponsor hasn’t been assigned yet.

Planning Items with Other Attributes
No Resource Assignments

Count of planning items without resource
assignments.

Unscheduled Items

Count of planning items not scheduled yet.

No Portfolio

Count of planning items with no portfolio
defined.

No Program

Count of planning items with no program
defined.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

169


<!-- page 170 -->
Widget/Visualization

Description

No Department

Count of planning items with no department
populated.

No Business Unit

Count of planning items with no business unit
populated.

No Owner

Count of planning items with no owner
assigned.

Geo tab in the Execution Dashboard
Widget/Visualization

Description

Planned cost by location

Estimated cost by location for executing the
plan.

View a dashboard in Portfolio Planning Workspace
View key data and metrics on a dashboard to monitor performance, track progress, and make
informed decisions related to planning and execution.

Before you begin

Role required: sn_align_core.ap_read_only

About this task

Dashboards consolidate data from multiple sources into a single, easily digestible format. Each
widget within a dashboard displays key data and metrics and may include visualizations.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. Optional: From the Change dashboard drop-down, select the dashboard you want to view.
The selected dashboard appears on the Dashboards page.
3. Optional: Select a required tab that you want to view the key data and metrics for.
Each widget within a dashboard displays key data and metrics and may include visualizations.
4. Optional: Select a widget to see more details of the data in list view.
If you have edit access, you can update the details of an individual record directly from the list
view when necessary.
Related topics
Create a dashboard
Duplicate a dashboard
Share a dashboard
Add a Platform Analytics dashboard

Create a dashboard
In the Platform Analytics experience, you can create shareable dashboards with data
visualizations, filters, and other elements. You can use the available elements in the inline editor
to create different types of widgets as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

170


<!-- page 171 -->
Before you begin

Role required: sn_align_core.apw_user

About this task

Dashboards consolidate data from multiple sources into a single, easily digestible format. Each
widget within a dashboard displays key data and metrics and may include visualizations.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the dashboard header, select the More actions icon ( ) and then select Create new.
3. On the New dashboard window, fill the details.
a. Enter a name for the dashboard in the Name field.
b. Optional: Enter a brief description for the dashboard in the Description field.
c. Select Create new dashboard.

What to do next

Edit a dashboard as needed by adding sections, filters, images, lists, process mining maps, and
rich text. For more information, see Edit a dashboard.
Related topics
View a dashboard in Portfolio Planning Workspace
Duplicate a dashboard
Share a dashboard
Add a Platform Analytics dashboard
Edit a dashboard
Customize or edit a dashboard as needed by adding sections, filters, images, lists, process
mining maps, and rich text. If the dashboard has been shared, any changes you make are
applied globally.

Before you begin

Role required: sn_align_core.apw_user

About this task

Note:
• You can edit dashboards that you own or those you’ve been granted permission to edit.
• Only an administrator can edit the out-of-the-box dashboard that is Execution Dashboard.
However, you can duplicate an out-of-the-box dashboard and customize it as needed.
You can use the following elements to create or edit your dashboard.
Dashboard elements in Strategic Planning
Element

Description

Data visualization

Enables you to present a visual representation
of current instance data or temporary data that
you’ve imported. Data visualizations include
visualizations that you create in the dashboard

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

171


<!-- page 172 -->
Dashboard elements in Strategic Planning (continued)
Element

Description

designer and data visualizations from the
library.
Filter

Enables you to filter the visualizations on a
dashboard based on specified criteria. You
can put filters either on the individual tabs
or above the tabs so that the filter applies to
elements every tab. Filters include both data
filters and domain filters. You can create filters
in the dashboard designer or select them from
the library.

Heading

Provides a place for text at the top of a
dashboard or section of a dashboard.
Formatting for headings is limited to six
heading levels.

Image

Holds static or animated images on the
dashboard.

List - Simple

Shows table data that you can customize for
the dashboard audience.

Process Mining - Map

Maps the different states that are part of your
process and the transitions between those
states. See which states the objects of the
process are in and the speed with which they
change state. Requires an existing Process
Mining project.

Rich text

Holds text that you can format either as text
or as html, including font selection, text size,
highlighting, and hyperlinks. To edit HTML
markup, open the HTML editor from the
Configuration panel and select the Code tags
< > icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

172


<!-- page 173 -->
Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the Change dashboard drop-down, select the dashboard you want to edit.
The selected dashboard appears.
3. From the dashboard header, select Edit.
For this

Perform these steps

a. From the dashboard header, select Add a
tab.
Add a tab

A new tab appears with the default name
New Tab.
b. Select the Edit tab label icon and enter a
name for the tab.
c. Press Enter to update the name of the tab.
a. From the dashboard header, select Add
new element.

Add a dashboard element

A list of available elements appear in the
drop-down.
b. (For example) Select Data visualization to
present a visual representation.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

173


<!-- page 174 -->
For this

Perform these steps

The Add Visualization window appears.
i. (For a new visualization) Select New Visu­
alization.
ii. (For an existing visualization) Select
Saved Visualization and then select a
saved visualization from the library.
The visualization element appears in the
tab and the Configuration side panel ap­
pears.
iii. In the Configuration side panel, fill the re­
quired details in the Visualization type,
Header and border, and Data and other
relevant fields.

4. Drag to move the widget or resize it as required.
5. From the dashboard header, select Save.
6. From the dashboard header, select Exit editing mode.

Result

The dashboard is updated with the latest changes.

What to do next
• Add more elements and customize your dashboard as required.
• For detailed instructions on editing a dashboard using the Platform Analytics experience in
Portfolio Planning, see Edit Platform Analytics dashboards .
Related topics
View a dashboard in Portfolio Planning Workspace
Create a dashboard
Duplicate a dashboard
Share a dashboard
Add a Platform Analytics dashboard

Duplicate a dashboard
If the dashboard you want to create is similar to an existing one, duplicating the existing
dashboard saves your time. After duplicating the dashboard, you can customize the tabs and
widgets as required.

Before you begin
• Users or groups that you want to share the dashboard with must have the
sn_align_core.ap_read_only or sn_align_core.apw_user role to get the read or edit access to
the portfolio plan respectively.
• When you duplicate a dashboard, you copy all settings and details of the original. Content that
exists locally on the original dashboard is duplicated onto the new dashboard. If the original
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

174


<!-- page 175 -->
dashboard contains references to content in a library, such as a shared visualization, the
references are duplicated. The role requirements for editing an element in a library apply to the
latter.
Role required: sn_align_core.ap_read_only

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the Change dashboard drop-down, select the dashboard that you want to duplicate.
3. From the dashboard header, select the More actions icon ( ) and then select Duplicate.
4. On the Duplicating dashboard window, fill the details.
a. Enter a name for the portfolio plan in the New name field.
By default, the name is ABC (Copy) where ABC is the name of the dashboard you
duplicated from.
b. Optional: Enter a brief description of the goal in the Description field.
c. Select Duplicate.
Duplicating the dashboard can be time-consuming. Select Continue in background to keep
using the application in the meantime.

Result

The dashboard is copied with the new name. The appearance of the dashboard is identical to
the original.

What to do next

Edit a dashboard as needed by adding sections, filters, images, lists, process mining maps, and
rich text. For more information, see Edit a dashboard.
Related topics
View a dashboard in Portfolio Planning Workspace
Create a dashboard
Share a dashboard
Add a Platform Analytics dashboard

Share a dashboard
Share a dashboard with stakeholders, planning managers, portfolio managers, or product
managers to provide visibility into work progress and foster collaboration. You can grant either
view-only rights or both view and edit rights to a shared dashboard.

Before you begin

Role required: sn_align_core.ap_read_only

About this task

Users or groups you want to share the dashboard with must have the appropriate roles assigned
to access shared dashboards:

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

175


<!-- page 176 -->
Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Dashboards.
By default, the Execution Dashboard appears on the Dashboards page.
2. From the Change dashboard drop-down, select the dashboard you want to share.
The selected dashboard appears.
3. From the dashboard header, select the More actions icon ( ) and then select Share.
4. On the Share Dashboard window, fill the details.
a. Enter a user name or group name in the Grant access to field to provide access to individual
users or user groups, respectively.
You can also select a role to grant dashboard access to all users assigned to that role.
b. Optional: Select Allow recipients to add, edit, or delete sharing permissions associated
with this dashboard to enable users to grant access to new users and modify or remove
existing permissions.
c. Select Add as viewer or Add as editor as required.

Note: You can select Add as editor only if you have the sn_align_core.apw_user role
assigned to you.
The selected users, groups, and roles appear under Manage Access.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

176


<!-- page 177 -->
You can also manage to share permissions by selecting a user, group, or role and enabling
the Can share option.
d. Select Confirm.

Result

The roles, groups, and users you have shared the dashboard with appears again when you
reopen the dialog, along with the rights you have given them.

What to do next

You can change the rights of whom you have shared the dashboard with in the Share Dashboard
dialog, under the Can view/Can share list for each user, group, or role.
Related topics
View a dashboard in Portfolio Planning Workspace
Create a dashboard
Duplicate a dashboard
Add a Platform Analytics dashboard

Add a Platform Analytics dashboard
If you have existing dashboards created using Platform Analytics, you can add them to the
Portfolio Planning Workspace to access them directly from a single location.

Before you begin

Role required: sn_align_core.apw_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

177


