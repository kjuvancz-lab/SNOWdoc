# Zurich Strategic Portfolio Management — Plan roadmaps

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 93–117 of 2289

Sections: Plan roadmaps (p93)

---

<!-- page 93 -->
Before you begin

Role required: sn_align_core.apw_user

Procedure
1. Navigate to All > Strategic Planning > Strategic Planning Workspace > Portfolio Planning.
2. From the list of portfolio plans, select one and then select Planning.
3. In the Prioritization tab, select List view.
4. Verify that the columns you want to export are personalized.

Note: If the filters are applied on the view, the filtered data is exported.
5. Use the personalized side panel to export the data of your portfolio plan items.
a. Select Export icon (

).

b. From the File type drop-down on the Export window, select Excel or CSV to export the data
to a Microsoft Excel or CSV file respectively.
A file with the selected format is exported. By default, the name of the file is
ABC_Prioritization_List where ABC is the name of the portfolio plan you exported
the data from.

Planning roadmaps in Portfolio Planning
Create a layout of the plans for upcoming projects or initiatives while aligning them with your
business objectives using roadmaps in a centralized workspace. Facilitate collaboration among
stakeholders and adjust plans on the go.
Roadmaps in Portfolio Planning Workspace are of two types: Portfolio plan roadmaps and freeform roadmaps.
For portfolio plans, only those planning items that are prioritized from the Prioritization page are
shown on the roadmap. See Prioritize work.
Use the information in the following sections to start using roadmap capabilities for your
business plans.
Related topics
Roadmaps in Portfolio Planning

Create a free-form roadmap
Create a standalone visual roadmap to start high-level planning of work from different units of the
company.

Before you begin

Role required: sn_align_core.apw_user

About this task

Create a standalone roadmap to plan work across multiple units of your organization, such as
projects of all departments. To learn more about free-form roadmaps, see Roadmaps in Portfolio
Planning.
Select a source table as a starting point to base your roadmap on. Select one of project or
demand for a simple roadmap or Planning Item table for a hybrid roadmap.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

93


<!-- page 94 -->
Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning > Free-form
Roadmaps
2. Select New.
®
If this is the first free-form roadmap in your ServiceNow instance, select Create your first
free-form roadmap.
3. Use the Create free-form roadmap wizard to fill out the details of your roadmap.
a. Select a source table to base your roadmap on.
b. Add conditions to filter the data from the source table.
For example, if your source table is Project, the related filter condition can be Business Unit
is Finance AND Active is true.
c. Enter details of the name and planned dates for the roadmap.
4. Select Create.

Result
• A new roadmap is created and displayed.
• This roadmap is listed in the Free-form roadmaps tab of the home page of Portfolio Planning
Workspace.

What to do next
• Update, personalize, and collaborate with your roadmap.
• Add milestones or create dependencies for the items planned on your roadmap.
Update details of free-form roadmap
Update the details of a free-form roadmap to reflect the changes in priorities or the timeline of
the roadmap.

Before you begin

Create a free-form roadmap.
Role required: sn_align_core.apw_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning > Free-form
Roadmaps
2. Select a roadmap to open it.
3. From the roadmap header, select the More actions icon ( ).
4. Use the Update free-form roadmap wizard to edit out the details of your roadmap.
5. Select Update.

Result

The roadmap is updated and the roadmap items are displayed according to the latest changes.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

94


<!-- page 95 -->
Share a free-form roadmap with stakeholders
Add people from your organization who are the stakeholders for the work involved in your
roadmap plan so that they have visibility into the roadmap's progress.

Before you begin
• Create a free-form roadmap.
• Ensure that the users that you add as stakeholders have the appropriate role to access the
roadmap. For more details on user roles, see Components installed with Portfolio Planning.
Role required: sn_align_core.apw_user

About this task

Grant access for the free-form roadmap to other users and stakeholders in your organization.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning > Free-form
Roadmaps
2. Select a roadmap to open it.
3. From the roadmap header, select the Share roadmap icon (

).

4. On the Share roadmap form, select users to share the roadmap with and set their access
appropriately.
a. In the Members or Groups field, enter the names of individual users or groups.
b. From the Access field, select the access level as Viewer or Editor for the users selected.
▪ An editor can view and change the roadmap's settings and data.
▪ A viewer can only comment or add attachments. They can’t change any settings or data.
5. Select Send invite.

What to do next

Change the access level or remove access for a user or a group.
1. On the Share roadmap form, select Manage access.
2. From the user or group card, select the action menu icon ( ).
3. Select the right access level or select Remove.
Collaborate on a free-form roadmap with stakeholders
Add comments and attachments to a free-form roadmap for other users of your organization can
review and share their feedback. Collaborate and ensure that your roadmap aligns with your
company's priorities.

Before you begin

Role required: sn_align_core.apw_user or sn_roadmap_plng.roadmap_editor

About this task

Using the Comments side panel, add attachments or notes at the roadmap-level or the planning
item-level.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

95


<!-- page 96 -->
Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning > Free-form
Roadmaps
2. Select a roadmap to collaborate on.
3. Select the appropriate tab at the roadmap-level or planning item-level.
Choice

Roadmap-level

Planning item-level

Action

From the roadmap header, select the Com­
ments icon (

)

a. Select a planning item to open its details in
the side panel.
b. Open the Comments or the Attachments
tab.

4. Add attachments or worknotes.
Choice

Action

Attachments

In the Attachments tab, select Browse and up­
load a file.
In the Comments tab, add notes or comments
and select Post Worknotes.

Comments

If you want to address your comments to a
user, @-mention their name in the comment
directly.

Managing free-form roadmap views
Portfolio managers can create customized views for their free-form roadmap by applying
personalization settings such as grouping, milestones selection, dependencies selection, and
tracking mode. Portfolio owners or editors can share these personalized views with stakeholders
to enable easier collaboration on the free-form roadmaps.

Benefits of free-form roadmap views
Portfolio managers can create personalized views as needed by applying settings such as
grouping, milestones selection, dependencies selection, and tracking mode.
• Views can be created as private or public.
• Can create up to three private views and up to 10 shared (public) views.
• Free-form roadmap views can be shared with stakeholders to enable collaboration on the freeform roadmap.
• Switch between shared and private views as needed.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

96


<!-- page 97 -->
Create a free-form roadmap view
Create a customized free-form roadmap view based on your requirements, so you can access it
when you log in again and share it with stakeholders for collaboration.

Before you begin

Role required: sn_align_core.ap_read_only

About this task

You can create up to three private views and up to 10 shared (public) views per free-form
roadmap.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning > Free-form
Roadmaps
2. Select a free-form roadmap to open it.
3. Change the view as needed.
For example, you can enable the Tracking mode toggle.
The Save as new view option appears on the free-form roadmap header.

4. From the free-form roadmap header, select Save as new view.
5. On the Save as new view window, fill the details.
a. Enter a name for the view in the View name field.
b. Optional: Select the Shared view toggle to make this view public.
Selecting the Shared view toggle makes the view visible to all stakeholders with whom this
free-form roadmap is shared.
c. Select Save.

Result

The shared view for the free-form roadmap is created and is visible to all stakeholders with whom
this free-form roadmap is shared.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

97


<!-- page 98 -->
What to do next
• Share the free-form roadmap with your stakeholders to start collaborating on the free-form
roadmap. See Share a free-form roadmap with stakeholders.
• Edit a free-form roadmap view to change the existing view. See Edit a free-form roadmap view.
Edit a free-form roadmap view
Edit a customized free-form roadmap view based on your requirements, so you can access it
when you log in again and share it with stakeholders for collaboration.

Before you begin

Role required: sn_align_core.ap_read_only

About this task
• Only the owner of a free-form roadmap view can edit a shared (public) view.
• You can have up to three private views and up to ten shared (public) views per free-form
roadmap.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning > Free-form
Roadmaps
2. Select a free-form roadmap to open it.
3. From the free-form roadmap header, select the view you want to edit or override with your
personalization settings from the list of available free-form roadmap views.
The selected view appears.
4. Make changes to the view as needed.
For example, enable Tracking mode toggle.
After you make any change to the view, the Save view option appears in the free-form roadmap
header.
5. Select Save view.
The view is updated to reflect the changes made.
6. Optional: To edit the name of the view, select the Free-form roadmap drop-down from the
free-form roadmap header and then select the Edit view icon (
edit the name for.
On the Edit view window, fill the details.

) next to the view you want to

a. Update the name for the view in the View name field as required.

Note: Only the owner of the free-form roadmap view can rename the view.
b. Optional: Select the Shared view toggle to make this view public or disable the Shared
view toggle to make the view private.

Important: Changing a shared view to a private view removes access for existing
stakeholders.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

98


<!-- page 99 -->
c. Select Save.

What to do next

Share the free-form roadmap with your stakeholders to start collaborating on the free-form
roadmap. For more information, see Share a free-form roadmap with stakeholders.
Related topics
Create a free-form roadmap view
Delete a free-form roadmap view
Delete a free-form roadmap view
Delete a customized free-form roadmap view if it is no longer needed or if the maximum limit of
ten shared or three private views has been reached.

Before you begin

Role required: sn_align_core.ap_read_only

About this task
• Only the owner of the free-form roadmap view or an editor of the free-form roadmap can delete
the view.
• Deleting a free-form roadmap deletes the view, including any changes made to the view.
However, this action keeps the items (projects, demands, epics) intact in the free-form
roadmap.
• You can have up to three private views and up to ten shared (public) views per free-form
roadmap.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning > Free-form
Roadmaps
2. Select a free-form roadmap to open it.
3. Select the Free-form roadmap view drop-down from the free-form roadmap header and then
select the Delete view icon (

) next to the view you want to delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

99


<!-- page 100 -->
The Delete this view window appears.
4. On the Delete this view window, select Delete.

Related topics
Create a free-form roadmap view
Edit a free-form roadmap view

Duplicate a free-form roadmap
Create a roadmap with the data of an existing roadmap. If the roadmap you want to create is
similar to an existing roadmap, duplicating the existing roadmap saves your time.

Before you begin

Role required: sn_align_core.apw_user

About this task

Create a standalone roadmap to plan work across multiple units of your organization, such as
projects of all departments. To learn more about free-form roadmaps, see Roadmaps in Portfolio
Planning.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning > Free-form
Roadmaps
2. Select a roadmap that you want to create a copy from.
3. From the roadmap header, select the More actions icon ( ) and then select Duplicate
roadmap.
4. On the Duplicate roadmap window, fill the details.
a. Enter a name for the roadmap in the Roadmap name field.
By default, the name is ABC (Copy) where ABC is the name of the roadmap you copied
from.
b. Optional: Select Share with same users and groups option to grant access to the users of
the roadmap you copied from.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

100


<!-- page 101 -->
The action grants same read and edit access as is the users had for the roadmap you copied
from.
c. Select Confirm.

Result
• A new roadmap is created and a link is generated on the screen to access the new roadmap.
• This roadmap is listed in the Free-form roadmaps tab of the Home page of Portfolio Planning
Workspace.

What to do next
• Update, personalize, and collaborate with your roadmap.
• Add milestones or create dependencies for the items planned on your roadmap.

Create planning items from roadmap view
Create and add new planning items to your portfolio roadmap or free-form roadmap directly from
the roadmap view.

Before you begin

Role required: sn_align_core.apw_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. From the roadmap view, select the New <item type> option.
◦ For a free-form roadmap, the option depends on the roadmap's source table.
◦ For a portfolio plan roadmap, the option depends on the portfolio plan settings.
One planning item type

Multiple planning item types

3. On the form, fill in the required field information.
For full field information, see Demand planning item form or Project planning item form.
4. Select Submit.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

101


<!-- page 102 -->
Result

The new item appears on the roadmap, at a place based on its approved start and end dates.
If you don’t fill both the approved start and end date fields, the item that you created would be
moved to the list of unscheduled items. You can add them to your roadmap plan later. For more
information, see Plan unscheduled items into roadmap.
Modify planning items from roadmap
Update the details of planning items or delete them from a portfolio plan or free-form roadmap so
that your roadmap reflects the latest plans.

Before you begin

Role required: sn_align_core.apw_user

About this task

Edit the details of planning items from a side panel view, or the full details view in the roadmap.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. From the roadmap view, click a planning item that you want to update or delete.
The side panel opens with the Details tab.
Further, you can click Full details and open the item's record page. On the full details page,
you can also view related lists such as Milestones, Dependencies, and others. For field
information, see Demand planning item form or Project planning item form.

Note: If your free-form roadmap was built on one of the PPM tables, such as project
[pm_project] or demand [dmn_demand], you can only make updates from the full details
page.
3. Update the details or delete the item.
◦ To update, edit the field details and click Update.
If you're on the full details page, click Save.
◦ To delete, do the following:
a. On the full details page, click the More Actions icon (

) and select Delete.

b. Click OK to confirm.

Plan unscheduled items into roadmap
Add items without start or end dates yet to your portfolio plan or free-form roadmap.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

102


<!-- page 103 -->
Before you begin

Role required: sn_align_core.apw_user

About this task

Planning items that meet the criteria of your portfolio plan or free-form roadmap, but don’t have
either the start or end dates are categorized as unscheduled items. As you progress in your
planning, use the unscheduled items list to schedule these items into your roadmap timeline.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. From the sidebar, select Unscheduled items (

).

3. From the list of unscheduled items in the side panel, drag and drop a planning item at a place
of your choice on the roadmap.

Reschedule roadmap items
Update the planned dates of your roadmap items to account for any changes in your scheduling
priorities.

Before you begin

Role required: sn_align_core.apw_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

103


<!-- page 104 -->
Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. To change the dates planned for a roadmap item, resize the roadmap item bar.
3. To reschedule the roadmap item, drag and drop the item to a timeline area of your choice.

Add milestones for roadmap
Track key dates of your plan's timeline by creating milestones and displaying them on the
roadmap.

Before you begin

Role required: sn_align_core.apw_user

About this task

For the timeline of your portfolio plan or free-form roadmap, create milestones such as launch
dates, deadlines, or other key events directly from the roadmap view.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

104


<!-- page 105 -->
Roadmap type

Navigation

Free-form roadmap

From the Free-form Roadmaps tab, select a roadmap.

2. From the More actions drop-down, select New milestone.

3. On the form, fill in the fields.
For field information, see Roadmap milestone form.
4. Select Submit.
5. Optional: Repeat steps 2 through 4 to add more milestones to your roadmap.

Result

Milestones that you created are visible on the roadmap.
Here is an image of a sample roadmap with the milestone bar showing different milestones for
the planning

period.
The color of the milestone, shown on the legend, indicates the status of the milestone.
• Red: Missed milestone.
• Green: Achieved milestone.
• Grey: Upcoming milestone.
If multiple milestones are scheduled close to each other, they might appear grouped in the
milestone bar. In this case, you can expand and collapse the milestone bar to view all the
milestones of that period.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

105


<!-- page 106 -->
Update a roadmap milestone
Update or delete the milestones that you added to your portfolio plan or free-form roadmap so
that they reflect any change of plans.

Before you begin

Add milestones for roadmap.
Role required: sn_align_core.apw_user

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. To reschedule a milestone, you can drag and drop it at a timeline area of your choice.

If you want to update other details or delete the milestone, proceed with the following steps.
3. From the roadmap view, click the milestone that you want to update.
The side panel opens showing the milestone details.
4. Update or delete the milestone.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

106


<!-- page 107 -->
◦ To update, edit the field details and click Save.
For information on the form fields, see Roadmap configuration form.
◦ To delete the milestone, click Delete.
Select OK to confirm.

Add milestones for roadmap items
Track key outcomes of your planning items (such as demands and projects) by creating
milestones for them, directly from the roadmap view.

Before you begin

Role required: sn_align_core.apw_user

About this task

Select a roadmap item and create a milestone for it. Use the roadmap side panel to fill in the
details and submit.
For free-form roadmaps, milestones are supported only if the source table is Planning Item
[sn_align_core_planning_item] or one of its extensions.

Important:
You can’t add a project milestone from the roadmap view. Creating or updating project
milestones may impact the associated project plans. So, it’s recommended to create or
update project milestones using Project Workspace in Project Portfolio Management (PPM).
However, any existing milestones of the project are visible on the roadmap if you've
integrated Portfolio Planning with Project Portfolio Management.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. From the roadmap view, click a planning item to which you want to add the milestone.
The side panel opens showing the item details.
3. Select the Milestones tab.
Alternatively, you can click Full details and select the Milestones tab from the full details page.
4. Select the Add milestone icon ( ).
If the item doesn't have any milestones, select New milestone.
5. On the form, fill in the fields.
For field information, see Planning item milestone form.
6. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

107


<!-- page 108 -->
When you go back to the Milestones tab, you can see the milestone listed there.
7. Optional: Repeat steps 2 through 6 to add more milestones to your items.

Result
• Milestones that you created are indicated on the roadmap item bars.
Here’s an image of a sample roadmap with the roadmap items indicating that they have

milestones.
• Pointing your cursor over these milestone indicators shows the details such as the milestone
name, type, and due date.
• Clicking one of these indicators opens the Milestones tab of the Item details side panel. Here,
you can see a list of all the milestones for this planning item.

What to do next

Learn more about managing milestones:
• Customizing milestone display on roadmap
• Item milestone errors in Portfolio Planning Workspace
• Update roadmap item milestones
Update roadmap item milestones
Update or delete the milestones that you added to your planning items (such as demands, scrum
epics, or programs) so that they reflect any change of plans.

Before you begin

Add milestones for roadmap items.
Role required: sn_align_core.apw_user

About this task

From the portfolio roadmap or free-form roadmap, select a planning milestone to update its
details. Use the roadmap side panel to edit the details and submit.
For free-form roadmaps, milestones are supported only if the source table is Planning Item
[sn_align_core_planning_item] or one of its extensions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

108


<!-- page 109 -->
Important:
You can’t add a project milestone from the roadmap view. Creating or updating project
milestones may impact the associated project plans. So, it’s recommended to create or
update project milestones using Project Workspace in Project Portfolio Management (PPM).
However, any existing milestones of the project are visible on the roadmap if you've
integrated Portfolio Planning with Project Portfolio Management.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. From the roadmap view, click a planning item and select the Milestones tab.
The side panel shows the list of all the milestones associated with this planning item.
Alternatively, you can click Full details and open the item's record page and then select the
Milestones tab.
3. Click the milestone that you want to update.
4. From the milestone form, update the details or delete the milestone.
◦ To update, edit the field details and click Save.
For information on the form fields, see Planning item milestone form.
◦ To delete the milestone, click Delete.
Select OK to confirm.

Add dependencies for roadmap items
Create dependencies and visualize relationships between planning items of your portfolio or
free-form roadmap, so that you can adjust their scheduling.

Before you begin

Role required: sn_align_core.apw_user

About this task

From the portfolio roadmap or the free-form roadmap, use the item details side panel to create
dependencies between two planning items. Dependencies are supported for projects, epics,
demands, initiatives, programs, or any custom planning item types that you may have created.
The dependency for a planning item on your roadmap can be on an item from the same
roadmap, a different roadmap, or the item might not be planned yet. Learn more about
dependencies in the roadmap.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

109


<!-- page 110 -->
Note: Dependencies for free-form roadmaps are available only if the roadmap's source
table is Planning Item [sn_align_core_planning_item] or one of its extensions.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. From the roadmap view, click a planning item for which you want to add the dependency.
The side panel opens showing the item details.
3. Select More > Dependencies.
4. From the Dependencies tab, select the Add dependency icon (

).

5. On the form, fill in the fields.
For form field information, see Dependency form.
6. Select Save.

Result

The dependency is created between the selected planning items
and is listed in the Dependencies tab of the Item details side

panel.
On the roadmap, you can see the dependency details from the roadmap item card or the
dependency lines. Learn about display settings available for dependencies on the roadmap.
If one of the dependency items is not on the roadmap, then the dependency details are shown
on the roadmap item card, with a redirect link to the external planning item. In this case, the items
could belong to the same roadmap or not.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

110


<!-- page 111 -->
What to do next
• Learn how to resolve a roadmap item dependency error.
• Update the dependency details or delete it. See Update roadmap item dependencies.
Update roadmap item dependencies
Update or delete the dependencies for the planning items on your roadmap so that they reflect
any change of plans.

Before you begin

Role required: sn_align_core.apw_user

About this task

Use the roadmap side panel to change the details of a dependency or delete it.
Dependencies for free-form roadmaps are available only if the roadmap's source table is
Planning Item [sn_align_core_planning_item] or one of its extensions.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. From the roadmap view, click a planning item whose dependencies you want to update or
delete.
The side panel opens showing the item details.
3. Select More > Dependencies.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

111


<!-- page 112 -->
Dependencies for this planning item are listed in the form of cards.
4. From the side panel, locate your dependency and use the More actions icon (
delete.
Choice

) to edit or

Steps

a. Select Edit.
b. In the Dependency details form, update the
required fields and select Save.

Edit dependency

For field information, see Dependency
form.
a. Select Delete.
Delete dependency

b. In the confirmation dialog box, Select
Delete.

Personalize roadmap view
Customize the way that your roadmap is displayed. Group the roadmap items, color them by a
category, add numerical data points, and display milestones and dependencies to analyze your
roadmap efficiently and take informed decisions.

Before you begin

Role required: sn_align_core.apw_user

About this task

This task provides guidance on different options to personalize your roadmap view. Choose the
options that you want to apply.
Any settings that you apply here are saved as preferences per roadmap. All users who can
access the roadmap would see the same settings.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. Modify the scale of the timeline of your roadmap.
Select the time scale icon ( ) and choose Month, Quarter, or Year.

Note: The timescale view that you choose is saved in the roadmap preferences.
3. Use the side panel to personalize how your roadmap looks like.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

112


<!-- page 113 -->
a. From the side bar, select the Personalize icon (

).

b. Group and color your roadmap items by the available attributes.
You can group the roadmap items by up to two attributes and color-code them by one
attribute.
You can work with your admin to add other attributes for the Group by, Color by, and Metrics
fields. See Customize the planning item display preferences for Prioritization and Roadmap
in Portfolio Planning Workspace.
c. Enable visibility of owners of the roadmap items by using the Owner toggle.
d. Display data points such as planned cost on the roadmap item bars by adding fields in the
Metrics section.
You can add up to three metrics.

e. If your roadmap items (such as projects, epics, or demands) have milestones, adjust how
they’re displayed using the toggles in the Milestones section.
For more information, see Customizing milestone display on roadmap.
f. If your roadmap items have dependencies, adjust how they’re displayed using the toggles in
the Dependencies section.
For more information, see Customizing roadmap item dependency display.
g. Identify the current date on your timeline using the current date indicator.
Enable the Current date line toggle from the Other settings section.
4. Filter the data shown on the roadmap by applying conditions to the planning items.
a. From the sidebar, select the Filter roadmap items icon ( ).
The side panel opens to show the currently applied filters in the Filter overview.
b. Select Update filter to add or update the conditions.
Use the AND and OR operators to build your conditions.
c. Select Apply.
5. Quickly enable or disable the display of dependency lines between the roadmap items using
the Display dependency lines icon (

).

6. Zoom in, zoom out, and reset the zoom of your roadmap view by using the zoom options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

113


<!-- page 114 -->
Note: The zoom level that you choose isn’t saved as the roadmap preferences.
7. Apply quick filters for Prioritization and Roadmap data in Portfolio Planning
Customizing milestone display on roadmap
Easily track the milestones of your roadmap timeline or its planning items by choosing how the
milestones are displayed on the roadmap view.
The Personalize ( ) side panel on the roadmap provides different toggles to personalize the
display of milestones on your roadmap.
• For portfolio plan roadmaps, these toggles are always available.
• For free-form roadmaps, these toggles are available only if the roadmap's source table is the
Planning Item table [sn_align_core_planning_item] or one of its extensions.

Milestones toggle

Roadmap view

Roadmap milestones
Shows the milestones of the roadmap
timeline.

Item milestones
Shows the milestones of the planning items.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

114


<!-- page 115 -->
Milestones toggle

Roadmap view

Only milestones
Shows just the milestones on the roadmap by
hiding all the planning item bars.
When you select this toggle, the group by and
color by fields are changed and made inactive.
Your previous personalization settings are
available when you turn off this toggle.
You can also see that the milestone indicators
are colored in this view.
• Red: Missed
• Green: Achieved
• Black/Dark gray: Upcoming

Note: If the total number of item-level
milestones, including the milestones for
unscheduled items, exceeds 100, the
item milestone indicators aren’t visible
on the roadmap. You can work with your
admin to change this number to a value
of your preference. For more information,
see Update the display limit of items for
Prioritization and Roadmap in Portfolio
Planning.
Milestone label

Milestone indicator with label

Shows the milestone labels.

Milestone indicator without
label

Customizing roadmap item dependency display
Improve the efficiency of identifying the relationships between your planning items by choosing
how the dependencies are displayed on the roadmap view.
The Personalize ( ) side panel on the roadmap provides different toggles to personalize the
display of dependencies on your roadmap.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

115


<!-- page 116 -->
• For portfolio plan roadmaps, these toggles are always available.
• For free-form roadmaps, these toggles are available only if the roadmap's source table is the
Planning Item table [sn_align_core_planning_item] or one of its extensions.

Dependencies Toggle

View dependencies
Indicates dependencies in the form of circles
on either side of the planning item bars.

Roadmap view

Dependency circles on the
roadmap

These circles either contain a number
inside them (
), indicating the number of
dependencies that item shares, or is colored
red (

) indicating a conflicting dependency.

Note: This toggle must be enabled
to use the other two toggles in the
Dependencies section.
Dependency lines
Indicates dependencies using lines between
the planning items.

Dependency lines between the
planning items

These lines are shown only if:
• Both planning items of the dependency are
within the same roadmap
• Dependency is of the Depends on type
Only items with dependencies
Filters the roadmap to show only those
planning items that have that have at-least one
Depends on type of relationship.

Roadmap showing only items
with dependencies

The items shown here can depend on items
on or out of the current roadmap.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

116


<!-- page 117 -->
Track the progress of roadmap items
Visually track the completion of a work item on your portfolio plan roadmap or free-form roadmap
using the tracking mode.

Before you begin

Role required: sn_align_core.apw_user

About this task

Use a toggle to switch your roadmap view from planning mode to tracking mode. The roadmap
item cards turn into progress bars to indicate the status and progress.

Note: While in Tracking mode, you cannot create, update, or reschedule roadmap items
and milestones. This view is a read-only mode.

Procedure
1. Navigate to Workspaces > Portfolio Planning Workspace > Portfolio Planning and open your
roadmap.
Roadmap type

Portfolio plan roadmap

Free-form roadmap

Navigation

a. From the Portfolio Plans tab, select a portfolio plan.
b. From the Planning section, select Roadmap.
From the Free-form Roadmaps tab, select a roadmap.

2. Use the Tracking mode toggle to turn on the tracking view of the roadmap.

3. Optional: Personalize the roadmap view in tracking mode.

Note: The group by and color by personalization that you've done in the planning mode
of your roadmap gets carried over to the tracking mode but the metrics are not carried
over.
a. Enable or disable the visibility of the roadmap item status and percentage complete using
the Status and % Complete toggles respectively.
b. Display data points such as planned cost on the roadmap item bars by adding fields in the
Metrics section.
You can add up to two metrics in tracking mode.
c. Personalize the display of milestones.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

117


