# Zurich Strategic Portfolio Management — Collaborative Work Management

Source: servicenow-zurich-it-business-management-enus.pdf | Release: zurich | Pages: 734–819 of 2289

Sections: Collaborative Work Management (p734); Explore (p735); Configure (p737); Use (p743); Reference (p814)

---

<!-- page 734 -->
Column restrictions for tables (continued)
Tables

Columns

• Role
• Skill
• Employment type
• Resource allocation (Weekly/Monthly)
• Project Workspace planning columns

Collaborative Work Management
®

ServiceNow Collaborative Work Management (CWM) provides a central hub to plan, visualize,
manage, and collaborate on work with your teams. Save time and improve the efficiency of your
team by avoiding switching between multiple tools to manage the progress of work and goals.
https://player.vimeo.com/video/1053272151?
h=a540ca0fa9&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
CWM enables planning tasks in detail, organizing unplanned work and its resources, and
collaborating with cross-functional teams.

Get started

Explore

Configure

Learn the key features and
business value of CWM

Set up CWM

Use

Reference

Start collaborating on work with CWM

Learn about roles, tables, and
system properties of CWM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

734


<!-- page 735 -->
Troubleshoot and get help
• Ask or answer questions in the Strategic Portfolio Management forum on the ServiceNow
Community .
• Search the Known Error Portal for known error articles
• Contact Customer Service and Support

.

.

Exploring Collaborative Work Management
Learn more about Collaborative Work Management (CWM) and review the benefits it can provide
for your team.

Collaborative Work Management overview
CWM is an industry agnostic work management tool that enables organizing and managing the
tasks assigned to you and your team using collaborative Spaces. Work can be managed and
value can be tracked from a single location without switching between different applications.
With CWM, you can:
• Collaborate in real time using shared Spaces.
• Enable flexible ways of working for your team using customizable Boards.
• Choose to execute planned work in Agile methodology using Sprint planning or in a custom
methodology.
• Organize and manage any type of work such as personal work tasks, team tasks, or lists of
other items from a central workspace.
• Manage all required documentation directly within a Space by creating rich-text docs that
enable real-time collaboration.
• Connect to Strategic Planning workspace where Boards can be prioritized and roadmapped in
a portfolio plan.
• Understand the value that your team's work is delivering by connecting all work on a Board to a
business goal.
• Reference any work from the ServiceNow AI Platform such as Incidents, Risks, and Issues.

Collaborative Work Management benefits
Benefit

Create Spaces and share with others on your team to organize
and manage the team's work. Within a Space, you can create
unlimited Boards to manage tasks and Docs to manage
documentation for those tasks.

Feature

Spaces

Use My Space as a personal space to manage any work
assigned to you.
Configure a flexible workspace without the involvement of an
admin user. Define your own workflow and organize work the
way you want.

Boards

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

735


<!-- page 736 -->
Benefit

Feature

• Create custom fields for task records.
• Switch between List, Gantt, and Kanban views.
• Create custom work item types.
• Add a list of additional assignees to a task.
Boost efficiency and save time by automating processes such
as sending notifications, reassigning tasks, or updating task
priority when certain conditions are met.
Manage different types of documentation such as meeting
notes, technical specifications, or feature requirements from a
single location and avoid using multiple disconnected tools.

Automations

Docs

• Create rich text docs and add action items to users from
within and outside the team.
• Collaborate on docs in real-time with multiple concurrent
editors.
Save your preferred data views for a Board or create shared
views to ensure a consistent experience across sessions and
for the entire team.
Save time, reduce inconsistencies in format, and avoid
creating repeatable Boards and Docs using predefined and
templates.
Plan, track, and manage Stories and other work items for your
teams in the Agile methodology using Sprint planning in CWM
Boards.
Enable a centralized view to plan and manage all work by
connecting work items from across multiple ServiceNow AI
Platform applications to a single CWM Board.
Use tasks data offline to obtain insights, share with
stakeholders, and prepare for analysis or presentations by
exporting Boards to CSV or Microsoft Excel files.
Use the Docs offline, and share with teams or stakeholders
outside CWM by exporting Docs as PDF.
Prioritize and roadmap Boards in Strategic Planning
workspace's portfolio plans.

Board views

Templates for Boards and
Docs

Sprint planning in CWM

Connected work in CWM

Export Board as CSV or Excel

Export Doc as PDF

Connecting CWM with
Strategic Planning or Portfolio
Planning

The Organization, Project Portfolio, and Strategic Investments
lenses support CWM Board as a planning item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

736


<!-- page 737 -->
Benefit

Feature

Add a reference to other ServiceNow AI Platform records such
as Incidents, Risks, or Issues in CWM Docs.

Integration with other
ServiceNow AI Platform
records.

Configuring Collaborative Work Management
Plan and configure how your team can implement Collaborative Work Management.

Configuration overview
Use the following steps as guidelines to set up Collaborative Work Management. Steps 3–5
are optional and provide additional configuration options to make your CWM experience more
connected with the ServiceNow AI Platform.
1. Install Collaborative Work Management.
2. Assign CWM roles to the relevant users. See Components installed with Collaborative Work
Management.
3. Configure Strategic Planning to include CWM Boards for Prioritization, Roadmap, and Goals.
See Connecting CWM with Strategic Planning or Portfolio Planning.
4. Add other ServiceNow AI Platform tables that can be referenced in the Docs.
See Enable ServiceNow AI Platform records in CWM Docs.
5. Enable the Request access button for non-CWM users to request access to the CWM
workspace.
See Properties installed with Collaborative Work Management.

Install Collaborative Work Management
You can install the Collaborative Work Management (CWM) application (sn_cwm) if you have
®
the admin role. The application includes demo data and installs related ServiceNow Store
applications and plugins if they are not already installed.

Before you begin
• Ensure that the application and all of its associated ServiceNow Store applications have valid
ServiceNow entitlements. For more information, see Get entitlement for a ServiceNow product
or application .
• Review the Collaborative Work Management
application listing in the ServiceNow Store
for information on dependencies, licensing or subscription requirements, and release
compatibility.
Role required: admin

About this task

The following items are installed with Collaborative Work Management:
• Roles
• Tables
• System properties

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

737


<!-- page 738 -->
For more information, see Components installed with Collaborative Work Management and
Properties installed with Collaborative Work Management.

Procedure
1. Navigate to All > System Applications > All Available Applications > All.
2. Find the Collaborative Work Management application (sn_cwm) using the filter criteria and
search bar.
You can search for the application by its name or ID (sn_cwm). If you cannot find the
application, you might have to request it from the ServiceNow Store.
In the list next to the Install button, the versions that are available to you are displayed.
3. Select a version from the list and select Install.
In the Review Installation Details dialog box that is displayed, any dependencies that are
installed along with your application are listed.
4. If you're prompted, follow the links to the ServiceNow Store to get any additional entitlements
for dependencies.
5. Optional: If demo data is available and you want to install it, select the Load demo data check
box.
Demo data are the sample records that describe application features for common use cases.
Load the demo data when you first install the application on a development or test instance.
6. Select Install.

Connecting CWM with Strategic Planning or Portfolio Planning
Configure Strategic Planning or Portfolio Planning to include CWM Boards so that you can plan,
roadmap, and associate goals to Boards in a portfolio plan.
By adding CWM Boards to a lens configuration, you can access them in the Prioritization,
Roadmap, and Goals pages of a portfolio plan as planning items.

Note: This functionality requires installing the Strategic Planning or Portfolio Planning
application from ServiceNow Store.
To successfully enable planning with CWM Boards in Strategic Planning or Portfolio Planning,
complete the following tasks.
Add CWM Boards to lens configuration
For the lens that you want to use to build portfolio plans, update the configuration to include
CWM Board as a planning item in Strategic Planning or Portfolio Planning.

Before you begin

Role required: admin
Ensure that the Application scope of your instance is set to Portfolio Planning Core.

About this task

All default lenses support CWM Board as a planning item. For example, if you are building
portfolio plans using Organization lens, then you can add CWM Board as a planning item in the
Organization lens configuration.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

738


<!-- page 739 -->
Procedure
1. Navigate to All > Strategic Planning > Lenses.
2. Select a lens.
3. From the Available list of planning items, move CWM Board to the Selected list.

Note: If you don't see CWM Board in the Available list, update the system property
sn_align_core.planning_item_types_allow_list to allow it.
4. SelectUpdate.

What to do next

Configure CWM Board form layout.
Configure CWM Board form layout
Add the lens entity field to the CWM Board form so users can link Boards and have them appear
in the right portfolio plan in Strategic Planning or Portfolio Planning workspaces.

Before you begin

Role required: admin
Ensure that the Application scope of your instance is set to Collaborative Work Management.

About this task

Include the field for your lens entity in the CWM Board form. This allows CWM users to link their
Boards to the lens entity so that the Boards appear in the corresponding portfolio plan. For
example, using the project Portfolio lens, you could create a portfolio plan for the Technology
portfolio. When CWM users associate their Boards with the Technology portfolio, those Boards
will automatically show up in the Technology portfolio's portfolio plan.
Similarly, you can associate Boards to goals or portfolios. To ensure that your CWM users can
perform this association, configure the Board form to include these fields.

Procedure
1. Navigate to System Definition > Tables.
2. From the list of tables, search for and select sn_cwm_board.
3. From the Related Links section, select Layout Form.
4. From the list of fields in the Available section, move your desired field to the Selected section.
For example, move the Portfolio field to the Selected section.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

739


<!-- page 740 -->
5. Repeat this step for other fields that you want to add to the CWM Board form.
6. Select Save.

Result

The CWM Board form now shows the new fields added to its layout.
Your CWM users can add details of their departments, portfolios, or primary goals depending on
the portfolio plans they want these Boards to show up in.

What to do next

Associate Boards with portfolio plan entities.
Associate Boards with portfolio plan entities
Link CWM Boards to a lens entity so that these Boards appear in the corresponding portfolio
plans in Strategic Planning or Portfolio Planning workspaces.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board.
3. From the Board header, select the Edit icon (

).

4. In the Board form, select a department, primary goal, strategic program, or portfolio to
associate with this Board.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

740


<!-- page 741 -->
5. Select Update.

Result
• If a primary goal is added, this Board will show up in the aligned work for the selected goal in
Strategic Planning workspace.

• If you add a department, and the Board's dates align with that department’s portfolio plan, the
Board will automatically appear as a planning item on the roadmap.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

741


<!-- page 742 -->
• If a portfolio is added, and the Board’s dates align with the portfolio plan, the Board will appear
as a planning item in that portfolio plan’s roadmap.
If there are no dates added to your CWM Board, you can check for
Unscheduled items on the Roadmap side panel and add the Board to your

roadmap.

Enable ServiceNow AI Platform records in CWM Docs
Facilitate connecting work across ServiceNow AI Platform by enabling CWM users to add a
reference to records of any ServiceNow table in CWM Docs.

Before you begin

Verify that Application Scope of your instance is set to Collaborative Work Management.
Role required: admin

About this task
By default, the sn_cwm.record_mention_config property is configured to include only
CWM task records. To include any other ServiceNow AI Platform record, update the Value field of
this property.
Watch this video for information about enabling ServiceNow AI Platform records.
Video explaining how to enable Now platform records in CWM. Approximately one minute and 4
seconds long.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

742


<!-- page 743 -->
Procedure
1. Navigate to sys_properties.list.
2. From the Name column, search for and open the sn_cwm.record_mention_config property.
3. Update the Value field of the property.
Include the table name, its label, and the fields that you want displayed for its record in a CWM
Doc. For example, you want to include Incident table details. The updated contents of the
Value field would be:
[{"sourceTable":"sn_cwm_task","label":"CWM
Task","fields":["short_description","number"]},
{"sourceTable":"incident","label":"Incident","fields":["short_d
escription","number"]}]
4. Repeat step 3 to include other ServiceNow tables.
5. Select Update to save your changes to the property.

Result

Tables included in the property can now be referenced in CWM Docs of any space.

Using Collaborative Work Management
Use the different features of Collaborative Work Management (CWM) to collaborative with teams
across your organizations and manage work in the way your teams want.

Collaborating with Spaces in CWM
Create collaborative Spaces for teams to work together on projects, goals, or assignments.
CWM provides two kinds of Spaces: A personal Space that can be accessed only by you and
shared Spaces to collaborate with other users in your organization.

Navigation within the CWM workspace
Navigation panel
The CWM navigation panel provides a simpler and cleaner user interface. At a
given time, the navigation panel shows the contents of just one Space to provide a
distraction-free experience while you work.
Use the Spaces menu to choose a different Space. The Spaces you are part of are
sorted by alpha in the Spaces dropdown menu. Additionally, you can also choose to
resize the navigation panel or collapse it altogether to increase the working area for
your Boards or Docs.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

743


<!-- page 744 -->
When you expand or collapse the Spaces menu, it's saved as your user preference
and will remain so until you change it.
Search
Use the Search option to quickly find and open any Space, Board or Doc.
Also, the Search bar displays all the recent Spaces, Boards, and Docs that you've
navigated to within the CWM workspace so that you can quickly select from the
recent items without having to search for them again.

Keyboard shortcuts
Use the following keyboard shortcuts to quickly perform actions within the
workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

744


<!-- page 745 -->
Keyboard shortcuts for CWM
Action

macOS shortcut

Windows OS shortcut

Search for a Space,
Board, or Doc

Option + F

Alt + F

Create Space

Option + S

Alt + S

Create Board

Option + B

Alt + B

Create Doc

Option + D

Alt + D

Navigate to My Work

Option + M

Alt + M

My Space
By default, a Space and a sample Board are created for you so that you can get familiar with the
features and options in the workspace. From your personal Space, you can browse through the
Intro to Docs and Welcome to CWM documents for a high-level overview of what you can do
with CWM.
Create more task Boards, docs, and organize them into folders to manage the work assigned to
you.

Shared Spaces
Collaborating with Spaces
Shared spaces act as a central location for cross-functional teams to come together
and collaborate toward common goals. Plan for the next big release, prepare for
a presentation, organize a conference, and do much more using task Boards and
collaborative Docs.
With the capability to connect to any record across the ServiceNow AI Platform,
avoid the risk of having information scattered across multiple apps and missing
unplanned tasks.

Managing access in the Share permissions modal
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

745


<!-- page 746 -->
As a Space owner or editor, you can manage access for existing users of your Space
and review access requests from other users using the Share permissions modal.
• People with Access section: Manage the access level of existing collaborators to
Editor, Viewer, or Owner, or remove them from the Space.
• Pending Access section: Review requests from users and choose to grant or deny
them access to your Space.

Managing Space permissions for task assignees and other users
As a Space owner or editor, while assigning tasks to your team members, you can
identify users who don’t have access to the workspace through a lock icon next to
the user name. This icon is visible in the List view of the Board in the columns of
type People such as Assigned to, Additional Assignee, and Assignment group.

You can either use the workspace prompt to grant assignees Viewer access or
choose to manage their access level later from the Share permissions modal. For
more information on managing sharing permissions, see Share a Space in CWM
and manage sharing permissions.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

746


<!-- page 747 -->
Requesting to elevate user access role to Editor
The Viewing mode indicator in the Board header indicates that you have only the
Viewer role to the Space that you're in. As a Space viewer, you can send a request
to Space owners and editors to request elevating your role to Editor by selecting the
indicator.

Space owners and editors receive an email request from which they can choose to
grant or deny access to the user.
Using the following sections, get started with shared Spaces in the workspace.
Create a Space in CWM
Create Spaces in Collaborative Work Management to enable cross-functional teams to come
together and manage work tasks and documentation.

Before you begin

Install Collaborative Work Management.
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From the left side panel, select + Create > New Space.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

747


<!-- page 748 -->
3. In the Space name field, enter a name for the Space.

4. Select Create.

Result

A new Space is created and added right below the My Space section. You can add as many
Spaces as you need for each of your projects, teams, or other assignments.

What to do next
• Create a Board to organize and manage work for your team or projects. See Create a Board in
CWM.
• Share the Space with others on your team. See Share a Space in CWM and manage sharing
permissions.
Share a Space in CWM and manage sharing permissions
Invite cross-team members to Collaborative Work Management Spaces to collaborate on tasks or
projects. You can also manage permissions for users with existing access to your Space.

Before you begin

Create a Space in CWM.
Role required: sn_cwm.cwm_user

About this task

Sharing a Space with a user results in them gaining access to all Boards, Docs, and folders
within that Space. Use the Share permissions modal from the Space or Board header to manage
sharing permissions and access levels to your Space for your team.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

748


<!-- page 749 -->
Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From the left side panel, select a Space.

3. From the header of the Space, select Share.
My Space is personal to you cannot be shared.
4. Add new users to the Space.
a. In the Members or Groups field, enter the names of individual users or groups.
You can search for users and groups by email along with their name so that you choose the
right collaborator.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

749


<!-- page 750 -->
b. From the Access level field, set the access required for these users.
Type of access levels for a CWM Space
Access level

Owner

Description

This role is typically assigned to the creator
of the space.
They have the create, read, update, and
delete access to Boards, Tasks, Columns,
and Docs in the Space.

Editor

Viewer

They have the create, read, update, and
delete access to tasks in the Board and
Docs in the Space. They can share the
Board but can’t delete it.
They can view the data in the Space but
can’t update or delete it.

c. Select Share.
5. From the People with Access tab, manage permissions for existing users by changing their
access level or removing a user from the Space.
As the Owner or Editor of a Space, you can remove access for existing users of the Space or
yourself at anytime. As a viewer, you can only remove access for yourself.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

750


<!-- page 751 -->
6. From the Pending Access tab, you can review the list of users who have requested access to
your Space and choose to grant or deny them the access.
Before granting access to a user, you can modify their access level to Editor or View as
necessary.

Result

An email invite is sent to the users that you shared this Space with.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

751


<!-- page 752 -->
What to do next

Start working on tasks for your team using Boards. See Managing work using Boards in CWM.
Create a folder in CWM
Organize Boards and Docs of a Space into folders in Collaborative Work Management
Workspace.

Before you begin

Create a Space in CWM.
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Open a Space that you want to create a folder in.

3. From the More options menu of the Space (

), select New folder.

4. In the Folder name field, enter a name for the folder.
5. Select Create.

Result

A new folder is created in the Space that you selected.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

752


<!-- page 753 -->
What to do next
• Create subfolders, Boards, and Docs in this new folder.
• Move any existing Boards, Docs, or folders into this new folder.

Managing work using Boards in CWM
Use Boards in Collaborative Work Management to define and organize tasks. With views such as
List, Kanban, and Gantt, configure your workspace based on the way you and your team work.
https://player.vimeo.com/video/1049444492?
h=672bbda3a0&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Using the following sections, get started with Boards in the CWM workspace.
Create a Board in CWM
Manage work assigned to your team as tasks and track them to completion using customizable
Boards for your shared Spaces in Collaborative Work Management.

Before you begin

Create a Space in CWM.
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From the Spaces menu, open a Space that you want to add a Board to.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

753


<!-- page 754 -->
3. From the More options menu of the Space (

), select New Board

s
4. In the Board name field, enter a name for the Board.
5. Select Create.

Result

A Board is created within the Space that you selected and an empty Board is shown in the
workspace. You can add unlimited Boards to a Space, based on how you choose to manage your
workflows.

What to do next
• Add tasks to the Board. See Add tasks to a CWM Board.
• Rename or edit other details of the Board using the Edit icon (

) on the Board header.

Duplicate a Board in CWM
Save time by duplicating an existing Board to copy all the task and collaborator details without
having to copy the information manually in the Collaborative Work Management workspace.

Before you begin

Create a Board in CWM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

754


<!-- page 755 -->
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Navigate to the Space that your Board is in.
3. From the More actions menu of the Board, select Duplicate.

4. Provide a name for the new Board in the Board name field.
The default name given is in the format of (Copy) <Original Board name>.
5. Select Duplicate.

Result
• The new Board is added to the same Space as the original Board.
• If your original Board was in a folder, the new Board is added to the same folder.
• If necessary, you can move it to a different Space or a different position in the same Space.
• The states of all the copied tasks are reset to the default (open) state in the new Board.
• All the assigned tasks are reset to unassigned.
• The start date for the tasks shift to the current date.
• Any custom columns in the original Board are copied to the new Board.
Add tasks to a CWM Board
Start planning work on your Board by adding tasks and assigning them to team members in
Collaborative Work Management workspace.

Before you begin

Create a Board in CWM.
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you want to add tasks to.
3. From the Board footer, select + Add item.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

755


<!-- page 756 -->
4. Fill in details such as the Type, Short description, Assigned to, dates, and others.
The default work item types available in CWM are Task and Defect. If you want to create other
work items such as Milestones or Events, you can create your own task type. See Create and
manage custom work item types in CWM.

What to do next
• Add more tasks to the Board and assign them to yourself or members of your team.
• Edit the information of your task from the side panel by clicking the short description to open it
or directly from the grid through inline editing by double-clicking a cell.
• Rearrange your tasks on the Board by using the drag-and-drop feature.
• Share tasks by their URL using the Copy task link option from the row context menu of the
task. This way, when a user clicks the shared URL, the task opens in the side panel in the
context of the Board that it belongs to.

Additionally, to enhance the planning and management of tasks, you can:
• Create additional columns for a task to add other details. See Add custom columns for tasks in
a CWM Board
• Choose the columns to be displayed for the tasks on the Board. See Personalize List, Gantt
and Kanban display for CWM Boards.
Create and manage custom work item types in CWM
Create custom item types for Boards in Collaborative Work Management, so that you can
organize and manage multiple types of tasks from a single location, regardless of the workflow.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

756


<!-- page 757 -->
Before you begin

Create a Board in CWM.
Role required: sn_cwm.cwm_user

About this task

Watch this video for information about creating a work item type.
Create custom work item type in CWM video. Approximately forty nine seconds long.

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Navigate to the Board that you want to add custom tasks to.
3. From the Board header, select the More actions icon (

) and select Manage item types.

4. From the Default item types section, enable or disable Task or Defect to be available for your
Boards.
5. From the Custom work item types section, add a new item type.
a. Select Add new item type.
b. In the Item type name field, enter a name for the work item type.'
c. Select an icon to represent the item type.
d. Select the check box to make this item type available for use in the Board.
e. Select + Add new item type to repeat adding another item type.
6. After adding all required work item types, select Save.

What to do next
Add tasks of the new item type to your Board using the More actions menu (
header.

) on the Board

Add custom columns for tasks in a CWM Board
Create custom fields in a Board so that you can organize all details of tasks at a single location,
thereby improving task management and saving time by reducing dependency on system admin.

Before you begin

Create a Board in CWM.
Role required: sn_cwm.cwm_user
You need to have either Editor or Owner access to the Space to add a custom column.

About this task

Watch this video for guidance on adding custom columns for tasks in a CWM Board.
Video for add custom columns for tasks in a CWM board. Approximately one minute and twelve
seconds long.

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you want to add tasks to.
3. In the List view of the Board, select Add column from the column header and select a data
type.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

757


<!-- page 758 -->
4. In the Field name field, enter the name for this new column and other details, if asked.
◦ If you select the type as Label or Dropdown, you're prompted to enter the options for this
field.
◦ If you select People, you're prompted to select the type of users available for this field. Also,
choose to allow input of single or multiple users in this field.
◦ If you select Reference, you're prompted to select a table that you want to add as reference
to the tasks.
5. Select Add column.

Result

The new column is added to the task and you can start entering the values for this column.

Note: Custom columns added for a task are local to the Board that they're created in and
are not applicable to other Boards and Spaces in the workspace.
If you have the Owner access for this Space, you can delete any custom columns based on your
changing requirements.
Add a goal to CWM Board
Associate a goal to your Board so that you can plan and track all the tasks and activities that
contribute to this goal directly from the Collaborative Work Management workspace.

Before you begin

Create a Board in CWM.
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you want to add a goal to.
3. Edit the Board by selecting the Edit icon (

) from the Board header.

4. In the Board form on the side panel, select a goal from the Primary goal field.
5. Select Update.

Result
• Within CWM workspace: The current Board is associated with the selected goal, and is shown
in the Board details page.
• Within Strategic Planning workspace: If the goal that you selected is part of a portfolio plan
within Strategic Planning Workspace, you can see that this CWM Board is added to the goal as
a planning item.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

758


<!-- page 759 -->
Note: CWM Board must be configured as a planning item for the lens that is used to
create the portfolio plan. For more information, see Connecting CWM with Strategic
Planning or Portfolio Planning.
Board views in CWM
Create, customize, and switch seamlessly between Board display preferences such as column
display, sorting, and filtering based on the audience and purpose in Collaborative Work
Management (CWM).
https://player.vimeo.com/video/1036476020?
h=6a4e66d756&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
With Board views, you can save your preferred data views or create shared views to ensure
a consistent experience across sessions and for the entire team. Saved preferences include
column display, column order, sorting, filters, view mode display, Kanban vertical lane selection.
You can create multiple views for Board display personalization and come back to the view of
your choice, without having to rearrange columns on the Board every time. The following are
some more advantages of Board views:
• Save Board display preferences as personal or shared views.
• Create shared views for the team so that all the team members consuming the data have the
same experience.
• Create multiple views for the same Board so that you can display data in a way that is fit for
your audience.
• Quickly switch between views to avoid manually updating display preferences each time the
audience is changed.
• Update the view preferences anytime to adapt to changing processes.
Board views in CWM can be classified as personal and shared:
My views
The Board display settings that are personal to you and are only available for you
to access are grouped into My views. You can create multiple personal views and
switch between them depending on your workflow patterns.
Any display personalization settings that you have already applied to your Boards
before upgrading to CWM version 4.0.1 are saved as your personal view, with the
name <Your name>'s view.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

759


<!-- page 760 -->
Shared views
Shared views are available to all members that have access to the Board or Space.
You can create multiple shared views for a Board so that each type of audience has
a view that is customized for them.

Note: Shared views cannot be created in My Space because it's your
personal Space.
When you save a Board with shared views as a template, the shared views are also
saved as part of the template. For more information on templates, see Templates in
CWM for Boards and Docs.
The view that you last visited for a Board is saved as your user preference and is selected the
next time you reload the Board.
Use the following sections to learn more on how to make the most out of Board views and their
customizations for your team.
List, Gantt, and Kanban view modes for CWM Boards
Seamlessly switch between List, Gantt, and Kanban views of Boards in Collaborative Work
Management and manage your tasks in flexible ways based on your workflows.
The following are the three types in which data for a CWM Board is displayed. You can customize
how the data is presented and flexibly organize and manage work for your teams. For more
information, see Personalize List, Gantt and Kanban display for CWM Boards.

List view
The List tab displays all tasks added to this Board in a grid format. Use this view to know the
status of the tasks at a glance or to assign tasks to users on the go. The default number of tasks
that can be displayed in the List view are 1,000.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

760


<!-- page 761 -->
Gantt view
The Gantt tab provides a grid and a calendar view side by side so that you can easily reschedule
tasks based on changing priorities. The default number of tasks that can be displayed in the
Gantt view are 1,000.

Kanban view
The Kanban tab provides a vertical and horizontal categorization of tasks based on the selected
attributes, for example, Assigned to and Task type. You can change this vertical lane and
horizontal swimlane to any other attribute.
The maximum number of vertical and horizontal swimlanes that can be displayed in the Kanban
board are 50 each by default.

Examples of Kanban view settings
Some examples are:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

761


<!-- page 762 -->
• View the state of all CWM tasks and their Assigned to details by selecting Vertical
lane as Assigned to and Horizontal lane as State.
• Review at a glance and change the priority of tasks for multiple assignment
groups by selecting the vertical lane as Priority and Horizontal lane as
Assignment group.
Kanban view with Connected work
If you have Connected work on the Board, then a few combinations for Kanban
board are:
• View all epics grouped by their state by selecting Vertical lane as State and
Horizontal lane as Task type.
You can then filter the Kanban board to show Epics.
• View all stories on the Board grouped by the Sprint they're planned in by selecting
Vertical lane as Sprint, Horizontal lane as Task type.
You can then filter the Kanban board to show connected stories.
Kanban card layout
Surface the information that's most relevant to you using Card Layout settings for
Kanban view of a CWM Board. You can personalize Kanban cards by selecting
up to five fields to display on them. For a cleaner, distraction-free view, you can
enable the Compact layout, which shows only the work item name on the card.
Alternatively, the Full view shows all selected fields, offering better context directly
on the card. Based on your workflow needs, tailor your workspace to enhance the
way you track tasks.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

762


<!-- page 763 -->
Personalize List, Gantt and Kanban display for CWM Boards
Show, hide, or rearrange columns and apply sorting or filters to personalize the way data is
displayed in Collaborative Work Management Boards based on your workflow.

Before you begin

Create a Board in CWM.
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you want to personalize.
3. Select List, Gantt, or Kanban for the Board and select the Personalize icon (

).

4. Update the display of the view on the Board or hide views.
Choice

Options

◦ Rearrange the order of the columns.
◦ Show or hide the columns in the view.

Personalize List and Gantt

Change the vertical categorization of task
cards using the Vertical lane field.

Personalize Kanban

Show or hide views

Show or hide the Board views from the Views
tab of the Personalize side panel.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

763


<!-- page 764 -->
Choice

Options

5. For List and Gantt, use column actions ( ) such as pinning a column to the left of the grid,
filtering the data from a column, and resetting the column size to default.

What to do next

After changing the way data is displayed on your Board, you have the option of saving it as
a personal view for your reference or a shared view for your team or stakeholders. For more
information, see Board views in CWM.
Create a custom view for CWM Boards
Modify Board display preferences and save them as custom personal or shared views that suit
the working preferences for you and your team members in Collaborative Work Management
(CWM).

Before you begin

Create a Board in CWM.
Role required: sn_cwm.cwm_user

About this task

Use the personalization settings to change how the data is presented on a CWM Board and save
the changes as a new view. You can create a different custom view for each of the List, Gantt, and
Kanban view modes or save them all into a single view.

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you want to create a view for.
3. Modify the display preferences of the Board data using the personalization settings, sorting,
filtering, and adding custom columns.
For more information, see Personalize List, Gantt and Kanban display for CWM Boards.
4. Select the More actions icon (

) of the Save view menu and choose Save as new view.

5. Enter a name for this view and choose to make it a shared view or keep it a personal view.
Shared views are available for all members who have access to this Board. Not selecting this
option saves this view as a new personal view that's only available to you.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

764


<!-- page 765 -->
6. Select Create.

Result

The new view is available in the view switcher.

Update a CWM Board view
Modify the display preferences of your Collaborative Work Management (CWM)Boards and
update the existing personal or shared views.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board for which you want to update a view.
3. From the view switcher, select a view that you want to modify.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

765


<!-- page 766 -->
4. Modify the display preferences of the Board data using the personalization settings, sorting,
filtering, and adding custom columns.
For more information, see Personalize List, Gantt and Kanban display for CWM Boards.
5. Select Save view.

6. Select Save to current view.

Note: If you select the Don't show this again checkbox, this dialog box doesn't appear
the next time.

Result

The current view is updated with the changes that you made.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

766


<!-- page 767 -->
Delete a custom CWM Board view
Delete the custom personal or shared views for your CWM Boards and keep your Board views
current for your workflow.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board for which you want to delete a view.
3. From the view switcher, select a view that you want to delete.

4. From the More view options menu (

), select Delete view.

5. Select Delete to confirm.

Result

The view is deleted and no longer available in the view switcher for this Board.
CWM Board preferences
Reduce cognitive load and focus on the most relevant and actionable tasks by filtering work
items on Boards in Collaborative Work Management (CWM).
Use the Board Preferences menu on the Board header to show items that are your current focus.
Show items based on their last updated date
Filter work items based on their last updated date. You can choose to show items
last updated within 7 days, 30 days, 90 days, 120 days, or 1 year.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

767


<!-- page 768 -->
Show or hide completed items
Choose to show or hide the work items that are marked as Closed complete.

The Board preferences that you set are applied across the List, Gantt, and Kanban
views.
Export a CWM Board to CSV or Microsoft Excel
Export the list view of Collaborative Work Management (CWM) Boards to CSV or Microsoft Excel
so that you can use the data to obtain insights, share with stakeholders, and prepare for analysis
or presentations.

Before you begin

Create a Board in CWM
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select the Board that you want to export.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

768


<!-- page 769 -->
3. From the Board header, select the More options icon (

), and then select Export.

4. In the Export dialog, select the Board view that you want to export and the file type.
Option

Description

Current board view

◦ Current board view: Exports only the cur­
rently displayed columns in the Board, in­
cluding any column sorting or filters.
◦ From the File type drop-down list, select
CSV or Excel.

Complete board view

◦ Complete board view: Exports all the
columns in the Board, including the
columns that aren't displayed.
◦ From the File type drop-down list, select
CSV or Excel.

5. Select Export.

Note: The exported file doesn't retain the hierarchy of the tasks from the Board and all
links, including URLs, references to records and assigned users, are converted to plain
text.

Result

The file is downloaded and saved in your local system.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

769


<!-- page 770 -->
Work item automations in CWM
Boost team efficiency by automating monotonous actions such as sending notifications and
emails, monitoring key dates, or reassigning tasks based on the conditions that suit the team's
workflow.
When teams work together, they often spend much time and manual effort on workflow activities.
To address this issue and help improve the overall team efficiency, team members can create
automations for tasks in CWM Boards.
Automations in CWM are actions that are triggered when certain conditions are met. Once
created, these automations are applicable to all work items in the Board that they’re created in.
Some examples of automated actions are:
• Sending an email when a task assignment is changed.
• Updating task priority when the due date is moved.
• Reassigning tasks when the priority is changed.
• Sending a notification when a task is complete.
• Notifying a task assignee dynamically when the priority is changed.
Six predefined templates are provided in the application to help you build multiple simple or
complex conditions and automate actions for your work items.

Based on the changing conditions of your team's workflow, you can edit, disable, or delete
automations anytime later. For a Board, a maximum of 10 automations can be created, which
includes all the active and inactive ones.
In this example automation, when the Priority of a task on this Board changes to High, the
people in the Assigned to column of the task and the owners of this Space are notified of it.
Going forward, when the priority of any item of this Board changes to High, a notification is sent
to the user assigned to that task and the Space owners. Thus this automation saves the time that
it takes to perform this action manually instead.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

770


<!-- page 771 -->
Note: You can also send notifications to any user if you've added a custom people column
in addition to the default Assigned to or Additional Assignee.

Get started with automations in CWM. See Create automations in CWM.
Create automations in CWM
Add conditions to build task automations for CWM Boards and help your team save time from
manual task updates.

Before you begin

Create a Board in CWM.
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you want to create automations for.
3. From the Board header, select Automations.

4. Choose a predefined template.
◦ If it's your first automation, choose a template to get started.
◦ If automations exist already, select New automation and then choose a template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

771


<!-- page 772 -->
5. Add conditions for automating the activities of updating a field, sending an email, or sending
notifications.
You can add multiple conditions to act as triggers to an automation. For example, an
automation can be created to send a notification to everyone in the Space when it meets the
following conditions:
◦ Task priority is high.
◦ The start date is three weeks away.

6. Select Add automation.
7. Repeat the steps to add more automations.

Note: You can create up to 10 automations for a Board and the automations are applied
only to CWM tasks and not any connected work items on the Board.

What to do next

Manage or delete automations in CWM.
Manage or delete automations in CWM
Edit, disable, or delete automations for your Boards in Collaborative Work Management based on
the changing conditions of your team's workflow.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

772


<!-- page 773 -->
Before you begin

Create automations in CWM.
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you want to edit the automations for.
3. From the Board header, select Automations.
4. Choose to enable, disable, edit, or delete an automation.
◦ To disable an active automation, switch the toggle off.
◦ To enable a disabled automation, switch the toggle on.

◦ To edit an automation:
a. Select More actions and select Edit.
b. Update the conditions.
c. Select Save automation.
◦ To delete an automation:
a. Select More actions and select Delete.
b. Confirm by selecting Delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

773


<!-- page 774 -->
Connected work in CWM
Streamline task management for teams by bringing in various work items from across
ServiceNow applications into Boards in Collaborative Work Management.
https://vimeo.com/1142605644/a4e1a19040?share=copy&fl=sv&fe=ci
The Connected work feature in CWM enables bringing in all types of work items from
applications across the ServiceNow AI Platform, thereby helping streamline collaboration,
planning, and execution for all teams. Here’s how it works:
Centralized view
Teams can connect various types of work from different ServiceNow applications
to a single CWM board. By defining conditions for the work items, the teams can
bring in only those work items that they need. This consolidation ensures that all
relevant work is visible in one place, reducing the need to switch between multiple
workspaces. For more information, see Connect work from other ServiceNow apps
to CWM Boards.
Only those tables that you have access to and from the applications that are already
installed and active in your ServiceNow instance are available for you.
Flexible planning
Once the work is connected, teams can plan and manage it efficiently. They
can plan them into sprints for agile execution, or follow a free-flow methodology,
ensuring that tasks are prioritized and tracked in the way that the teams choose to.
For sprint planning, the connected work items are automatically displayed in
the Backlog pane of the Board's Sprint planning view. From here, the team can
schedule work into sprints and proceed with execution. For more information, see
Plan work items into sprints in CWM.
Real-time updates
Teams can update the status and other details of connected work items directly
from the side panel within the CWM board. This real-time updating capability
enhances transparency and keeps everyone involved on the same page. For more
information, see Update details of connected work items in CWM Boards.
Deleting a connected work item record only removes it from the Board in CWM but
doesn't delete the original record.
Improved efficiency
By centralizing work and providing a unified environment, Connected work helps
teams stay focused and reduces the time spent navigating between different
workspaces. This can help lead to increased productivity and collaboration.
Connect work from other ServiceNow apps to CWM Boards
Enable a consolidated view of all relevant work by connecting work items from different
ServiceNow applications to a Board in Collaborative Work Management.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you want to connect work for.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

774


<!-- page 775 -->
3. From the Board header, select Connect work.
If you already have connected any work items, then this label is displayed as Connected work.

4. In the Manage connected work modal, select + Add new.

5. Choose a table and define the conditions to filter the records from the selected table.
a. From the Table field, select a table.
For example, to bring in all the incidents, select the Incident [incident] table.

Note: Only those tables that you have access to and from the applications that are
already installed and active in your ServiceNow instance are available for you.
b. Change the value in the Name field according to your requirement.
c. Use the condition builder to add conditions and filter the records from the table you
selected.
For example, you'd like to bring in incidents that are active and belong to certain categories.
Then, your condition set would be similar to the following:
Active is true and Category is Inquiry / Help or Category is Software.
d. Select the Update count icon ( ) to check the number of records that exist which match
the filter criteria that you defined.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

775


<!-- page 776 -->
Note: Ensure that the number of records available for your filter criteria are not more
than 100. You can change this number by default to 500 by working with your admin to
update the system property sn_cwm.connect_work_import_limit.

6. Select Save.
7. Repeat steps 4 through 6 to connect work items of other types.
You can connect up to 10 work item types to a Board and you can add only one connected
work configuration per table.
8. Select Save.

Result
• The Board is refreshed to load and display all the connected work items.
• Any existing information such as Assigned to, State, and Start and End dates is also shown on
the Board.
• With the Sprint planning view enabled, you can see all these connected work items in the
Backlog list. For more information about performing sprint planning, see Sprint planning in
CWM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

776


<!-- page 777 -->
What to do next

To enable additional fields from any connected work table, change the form layout configuration
for the Default view of the table. You can then surface these fields as columns in CWM. For more
information, see Show or hide fields on a form .
Related topics
Manage connected work item types in CWM
Update filter conditions for connected work in CWM
Manage connected work item types in CWM
Enable, disable, refresh data, or delete the connected work item types on your CWM Board to
keep the work items up to date based on changing requirements.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select the Board that you want to manage the connected work item types for.
3. From the Board header, select Connected work.

4. From the Manage connected work modal, disable or enable any existing work item type.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

777


<!-- page 778 -->
5. Update the filter conditions for a work item type by selecting Edit from the More actions menu
( ).
For more information, see Update filter conditions for connected work in CWM.
6. Select Refresh data from the More actions menu (
item type that you defined.

) to fetch any latest records for the work

7. If the work item type is no longer necessary, you can delete it.
a. From the More actions menu (

) of a work item type configuration, select Delete.

b. From the Delete configuration modal, select Confirm.
8. After you have done all the required changes, select Save.

Result

The Board is refreshed to load the work items based on your changes.
Update filter conditions for connected work in CWM
Update the filter conditions for connected work item types in Collaborative Work Management
Boards so that the work items displayed in the Board reflect your team's current workload.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select the Board that you want to manage the connected work item types for.
3. From the Board header, select Connected work.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

778


<!-- page 779 -->
4. From the More actions menu (

) of a connected work item type, select Edit.

5. Use the condition builder to edit the defined conditions.
6. Select the Update count icon (
filter criteria that you updated.

) to check the number of records that exist which match the

Note: Ensure that the number of records available for your filter criteria are not more
than 100.

7. Select Save.
8. Repeat steps 4 through 7 to update conditions of any other connected work item type.
9. After all required changes are made, select Save in the Manage connected work modal.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

779


<!-- page 780 -->
Result

The Board is refreshed to load the work items based on your changes.
Update details of connected work items in CWM Boards
Learn how to update the status, assigned to, and other details for the work items that are brought
into your Collaborative Work Management Board through Connected work.

Before you begin

Role required: sn_cwm.cwm_user

About this task

The details of connected work items can be updated only from the side panel and not through
in-line editing in the grid. However, deleting the connected work items from the Board will only
remove them from the Board but won't delete the original record.

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select the Board with connected work items that you want to update.
3. From the List, Gantt, Kanban, or Sprint planning view, open the item details in the side panel.
4. Update the required details.
You can also choose to open the original record form and update the details from there using
the Detailed form view icon (

).

5. If you've edited the details in CWM, select Update or Save.

Result

The updated information is available on the work item both in CWM and in its parent application.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

780


<!-- page 781 -->
Sprint planning in CWM
Plan, track, and manage work for your teams in the Agile methodology using Sprint planning in
Collaborative Work Management.
Within the Sprint Planning view of your CWM Board, you can manage your team's backlog, create
sprints, plan work into sprints, and execute them seamlessly. All existing work items on your
CWM Board are automatically added to the Backlog pane in the Sprint Planning view. This means
that whether the work items are old or new, they will all be visible in the Backlog. From this pane,
you can easily schedule these items into sprints for execution.
You have the flexibility to create work items of various types, such as Stories, or use any other
default and custom work types that are available on your CWM Board. This flexibility ensures that
you can tailor your sprint planning to fit the specific needs of your team and projects.

Enabling Sprint planning view
From the Views section of the Personalize ( ) side panel, select Sprint planning to enable the
display of Sprint planning view on your CWM Board.

Note: Save your Board view to ensure that the Sprint planning view is always displayed on
your Board.

Backlog
The Backlog pane displays all unplanned work items, including both newly added and older
incomplete tasks. Completed work items are not shown, keeping your focus on what needs to
be done. You can add work items directly to the Backlog from this view and use the personalize
side panel to show or hide columns within the Backlog pane, customizing the display to suit your
needs.
Within the Backlog pane, you can do the following:
• Move work items to the top or bottom of the backlog based on the priority.
• Move items to the currently ongoing sprint.
• Move work items within the list by rearranging rows.
• Delete work items.
• Apply filters on any column. However, filters can't be applied on custom columns within
Backlog.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

781


<!-- page 782 -->
• Change the number of items displayed per page.
• Duplicate work items by using Copy row.

Note: You can duplicate only CWM tasks and Stories but not other connected work
records.
• Drag and drop a single or multiple work items from Backlog to one of the sprints.

Sprints
The Sprints section in your CWM Board displays the list of active sprints. If you haven’t created
any sprints yet, this section will show a form to help you get started. You can create a sprint by
selecting the sprint duration, start and end dates, and story points capacity. To create additional
sprints with the same settings, use the Add another Sprint option. For sprints with different
durations or capacities, select Create Sprint. For more information, see Create a sprint in CWM.
Each sprint is a collapsible section where you can add work items directly and customize the
view using the personalize side panel. Each sprint section also shows the percentage of utilized
capacity and the remaining story points, helping you manage your team's workload effectively.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

782


<!-- page 783 -->
Personalizing Sprint Planning view
You can customize the columns displayed in the Backlog and Sprint panes using the Personalize
(
) side panel, allowing you to see the most relevant information. Any changes you make can
be saved to the current Board view or as a new view, depending on your needs.
If you require more working area for the Backlog or Sprints within the Sprint planning view, you
can toggle between the Backlog, Sprints, and Backlog and Sprints options.

Add work items to Sprint planning Backlog in CWM
Create and add new work items to the Backlog directly from the Sprint planning view of
Collaborative Work Management.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

783


<!-- page 784 -->
Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you're performing sprint planning for.
3. Select the Sprint planning tab.
4. From the Backlog pane, select the Add item (

) icon.

5. Select the work item type from the Item type drop-down list.
The default work item type available is Task. You can enable other types such as Story or
create a custom type. See Create and manage custom work item types in CWM.
6. On the form, fill in the details for the item such as short description, start and end dates, story
points, and others.
7. Select Submit.

Result

The newly created work item is added to the Backlog.

What to do next

You can plan this item into one of the active sprints by dragging and dropping it into the Sprint
section. See Plan work items into sprints in CWM.
Create a sprint in CWM
Create a sprint with custom duration and capacity to enable your team to plan and execute their
work in an Agile methodology in Collaborative Work Management.

Before you begin

Role required: sn_cwm.cwm_user
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

784


<!-- page 785 -->
Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you're performing sprint planning for.
3. Select the Sprint planning tab.
4. If there are no sprints in your CWM Board, you can use the Plan a Sprint form in the Sprints
section.
5. If there are existing sprints, choose an option to create a new sprint.
Choice

Steps

Create a sprint with the same duration and
story points capacity as the existing sprint

Select Add another Sprint.

Create a sprint with different duration or
story point capacity

a. Select Create Sprint.
b. Fill in the details.
c. Select Create Sprint

What to do next

Plan work items into sprints in CWM.
Update sprint details in CWM
Modify the duration, capacity, and dates for a sprint in Collaborative Work Management.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you're performing sprint planning for.
3. Select the Sprint planning tab.
4. From the sprint header, select the More options icon (

) and select Edit.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

785


<!-- page 786 -->
5. Make the necessary edits to the sprint details.
6. Select Save.
Related topics
Plan work items into sprints in CWM
Create work items for sprints in CWM
Delete a sprint in CWM
Delete a sprint in CWM
Delete individual sprints from Sprint planning in Collaborative Work Management so that your
Board reflects the changes in your planning priorities.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you're performing sprint planning for.
3. Select the Sprint planning tab.
4. From the sprint header, select the More options icon (

) and select Delete.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

786


<!-- page 787 -->
5. In the Delete Sprint confirmation modal, select Delete.

Result

The sprint is deleted and any active incomplete work items that were scheduled into this sprint
are moved to the backlog.
Create work items for sprints in CWM
Create and add new work items to a sprint directly from the Sprint planning view of Collaborative
Work Management.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you're performing sprint planning for.
3. Select the Sprint planning tab.
4. From the sprint header, select the Add item (

) icon.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

787


<!-- page 788 -->
5. Select the work item type from the Item type drop-down list.
The default work item type available is Task. You can enable other types such as Story or
create a custom type. See Create and manage custom work item types in CWM.
6. On the form, fill in the details for the item such as short description, start and end dates, story
points, and others.
7. Select Submit.
Plan work items into sprints in CWM
Schedule stories and other CWM tasks from the backlog into sprints or move work across sprints
in Collaborative Work Management.

Before you begin

Role required: admin

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you're performing sprint planning for.
3. Select the Sprint planning tab.
4. From the Backlog, select the work items that you'd like to schedule into a sprint.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

788


<!-- page 789 -->
5. Drag and drop them into the sprint of your choice.
You can drag and drop the work items into sprints even when the sprint sections are collapsed.
6. To move the work items from one sprint to another, select them and drop them in the sprint of
your choice.
Here's a gif showing the drag and drop action between the backlog and sprint sections, and
across

sprints.
Related topics
Start or complete a sprint in CWM
Create work items for sprints in CWM
Update sprint details in CWM
Start or complete a sprint in CWM
Start a sprint so that your team can start work on the planned items. After your team finishes the
assigned work, you can mark this sprint complete, all directly from the Sprint planning view in
Collaborative Work Management.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you're performing sprint planning for.
3. Select the Sprint planning tab.
4. To start a sprint, select Start from the sprint header.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

789


<!-- page 790 -->
5. Complete a sprint.
a. From the sprint header, select Complete Sprint.

b. Review the details of completed and open items for this sprint.
c. Move the incomplete items to the next sprint or the backlog.
d. Choose to create a retrospective Board for this sprint to perform a sprint retrospective with
your team.
For more info, see Create a retrospective board for a sprint in CWM.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

790


<!-- page 791 -->
e. Select Complete Sprint.

The sprint is marked as complete and is no longer displayed on the Sprint planning view
anymore. All the open items are moved into the next sprint or to the backlog based on your
selection.
Create a retrospective board for a sprint in CWM
When marking a sprint complete, choose to create a sprint retrospective board for your team to
collaborate and reflect on the recent sprint in Collaborative Work Management.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select a Board that you're performing sprint planning for.
3. Select the Sprint planning tab.
4. From the sprint header, select Complete Sprint.

5. Review the details of completed and open items for this sprint.
6. Move the incomplete items to the next sprint or the backlog.
7. Select the option create a retrospective Board for this sprint.
8. Provide a name for your Board.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

791


<!-- page 792 -->
9. Select a template to apply to this Board.
By default, the Agile Retrospective template is applied. If you want to create a different
template depending on your requirements, see Templates in CWM for Boards and Docs.

10. Select Complete Sprint.

Result

A new retrospective Board is created for the sprint that is just marked complete within the same
Space. You can navigate to the new board from the success message or from the left navigation

panel.

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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

792


<!-- page 793 -->
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

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

793


<!-- page 794 -->
My Work in CWM
Manage your work from all ServiceNow applications from a centralized view in the Collaborative
Work Management workspace.
My Work provides a centralized view of all your assigned tasks, including project tasks, problems,
and incidents. It also offers visualizations that group items by state, priority, and status, such as
open or overdue.
Work items from all ServiceNow applications assigned to you’re displayed in My Work. If you
receive a work item on the CWM Board via Connected Work, those items appear here as well.
This ensures you have a single source for all assigned work without the need to switch between
applications.

Note:
• Any task record created in a table that doesn’t extend the Task [task] table, such as
VTask, won't show up in My Work.
• If you’re added as Additional assignee to a task, work with your admin to enable the
display of such tasks in My Work. See Properties installed with CWM.
Overview tab of My Work

The following are the filters available on My Work:
• Task type filter displays a list of all task types that are assigned to you currently.
• Date filter lets you select predefined or custom date ranges.
• You can choose to include open items that don't have start or end dates.
My Work page has two views, Overview and List.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

794


<!-- page 795 -->
• Overview tab shows multiple widgets that provide information related to the progress of your
work. It also enables you to apply filters on the type of tasks that you want to view.
• List tab shows all open work items assigned to you in a list or grid format, where you can apply
the group by and filter options on the columns.
List view also provides a link back to the source of the work item. For example, if your work item
is a Risk, the Source column in the List view provides a navigation to the RIDAC page of the
Project Workspace application.
Overview tab of the My Work page in CWM
Widget or option

Description

Work item type filter

Choose the type of work items that you want to
view in My Work.
For example, if your current assignments
consist of CWM tasks, Projects, and Incidents,
then the Task type filter only shows these
three options to select from.
Also, CWM tasks of all types, including custom
CWM tasks, will be grouped as CWM Tasks
type.

Date

Filter the tasks by their start and end dates.

Include open items with no dates

Enable display of work items that have no start
date, end date, or both.

Overall Progress

Percentage of work that is completed

My Open Items

Number of work items that are pending.
SelectingClicking the number opens a list view
of all work items assigned to you and are in the
Pending state.

My Overdue Items

Number of work items that are overdue.
Clicking the number opens a list view of all
work items assigned to you that are past their
due date.

Completed

Number of work items that are complete.
Clicking the number opens a list view of all
work items assigned to you that are in the
Closed Complete state.

Task by State

Bar chart that groups all work items assigned
to you by their current state. Clicking a bar
opens a list of tasks that meet the filter criteria
for the corresponding bar.
For more information on how the tasks are
grouped by state, see Grouping of tasks in
status reports of CWM My Work.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

795


<!-- page 796 -->
Overview tab of the My Work page in CWM (continued)
Widget or option

Description

Task by Priority

Bar chart that groups all work items assigned
to you by their priority. Clicking a bar opens a
list of tasks that meet the filter criteria for the
corresponding bar.
For more information on how the tasks are
grouped by priority, see Grouping of tasks in
status reports of CWM My Work.

List tab of My Work

The List view shows all open work items assigned to you. Select the Short description of a work
item to view its details in a modal pop-up. Select the Source of a work item to open the work item
in a new tab.

Note:
• The list view displays all the tasks with start or end dates that fall within the range of the
date filter.
• Any closed task that doesn't have dates populated isn’t shown in My Work.
• You can't perform bulk editing of state, priority, or date values of the tasks through My
Work.

Collaborative documentation using CWM
Manage all kinds of documentation for work such as meeting notes, project requirements, or
technical specifications using rich text Docs with real-time collaboration.
Overview of collaboration within Docs for CWM workspace. Approximately two minutes long.
Docs can be created within a Space, and organized into folders. Within a Space, you can create
multiple Docs and within each Doc, you can create unlimited pages to help you effectively
organize your information.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

796


<!-- page 797 -->
Key features of Docs
• Auto-save content.
• Live user presence: See who is viewing or editing the document in real time.
• @-mention notifications: Get notified when someone @-mentions you in a Doc.
• Get alerts when someone tags you in a Doc.
• Templates: Create and apply document templates.
• Rich text formatting: Headings, lists, alignment, and other paragraph styles.
• Block-level editing: Move text blocks to change placement.
• Cross-references: Add references to other ServiceNow AI Platform tables to connect work
across teams.
• Slash command (/) for more options:
◦ Tag team members inline.
◦ Insert tables quickly
◦ Mention a record. See Dynamic data linking.
◦ Insert a list.
◦ Choose formatting options.
• Image insertion: Upload files or use web URLs.

Note: Inserting Google Images links might not work.
• Copy and paste across Docs: Transfer text, images, lists, and tables between pages
• Table features:
◦ Resize column width
◦ Add color to single or multiple cells
◦ Select multiple cells using mouse or Shift + arrow keys
◦ Delete content from multiple cells using Backspace or Delete keys.
◦ Copy and paste cell content:
▪ Copy from one cell and paste into multiple cells
▪ Copy from n number of cells and paste into another set of n number of cells
▪ Copy multiple cells and paste as a new table in an empty block

Dynamic data linking in Docs
Keep record information in your documentation always current and reduce manual effort with the
Dynamic data linking feature in Docs. You can now reference any ServiceNow application record
and Docs will automatically reflect the latest updates from those records.
For example, if you add a reference to an Incident record, the reference shows the latest field
information of the incident in Docs without requiring manual edits. Selecting the incident
reference opens up the incident form so that you can view the full details of the incident and
make any necessary changes.
A hover popover displays the details of the mentioned record, providing quick access to
additional information without leaving the current context.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

797


<!-- page 798 -->
Dynamic linking also enables adding references to a particular field of a record, such as
Assigned to of an Incident record.

You can add references from any ServiceNow table you have access to, with no setup or
configuration needed.
This feature reduces the need to switch between multiple ServiceNow applications within your
instance and helps maintain a single, reliable source of truth for collaborative work, making it
easier for teams to stay aligned and informed.

Real-time collaboration within CWM Docs
With the feature of real-time collaboration, edit a Doc page concurrently with multiple other
editors. Colored cursors denote the current location of each editor on the page. You can choose
to show or hide these live presence indicators based on your preference while working on or
reviewing the content of the page.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

798


<!-- page 799 -->
Note: Application performance may degrade with a large number of concurrent editors.
Draft content using Now Assist for CWM
Generate content with Now Assist for CWM directly in your Docs using custom prompts. In
addition, summarize existing sections, elaborate where needed, and refine drafts to help improve
your productivity.
You can interact with Now Assist directly in your Doc to create content, add context, or improve
existing sections. This helps you draft faster, refine ideas, and keep your work relevant without
leaving the page.
Work with the content of the whole page
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
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

799


<!-- page 800 -->
Take assistance on a empty page
Some examples are:
1. Generate 5 icebreaker questions for a virtual team-building session.
2. Write a 3-paragraph blog post explaining why [industry trend] is changing how
businesses operate.
3. Generate an outline for the Instagram campaign tasks for a Hackathon
initiative.

Answer questions in the context of this Doc
Whether the content in the Doc is added manually or generated using Now Assist,
you can ask questions to find anything in the page's context.
For example, if you have a project charter document, you can try asking What is the
total budget of this project and which part is the most expensive?

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

800


<!-- page 801 -->
Generate tasks from Docs and add them to Board using Now Assist for CWM
Use the generative AI capabilities of Now Assist to create tasks from the context of your Docs and
help you add them to the required Board in CWM workspace.

Note: Tasks generation is a Now Assist for CWM skill. For more information, see Configure
Now Assist for Collaborative Work Management (CWM)

Create a Doc in CWM
Store information related to your tasks, reference users and task records, and collaborate in realtime using Docs in Collaborative Work Management workspace.

Before you begin

Create a Space in CWM.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

801


<!-- page 802 -->
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Open a Space that you want to create a document in.
3. From the Spaces menu, open a Space that you want to add a Board to.

4. From the More options menu of the Space (

), select New Doc

s
5. In the Doc name field, enter the name for the document.
For example, Meeting notes.
6. Select Create.

Result

A new Doc is created for the current Space, and an untitled page is opened for you to start
drafting your content.

What to do next

Utilize the rich-text formatting options of the Doc to draft information relevant for your team or
type / to explore other options.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

802


<!-- page 803 -->
Note: To reference ServiceNow AI Platform records other than CWM tasks, work with your
admin to update the sn_cwm.record_mention_config system property. For more
information, see Enable ServiceNow AI Platform records in CWM Docs.
Manage pages and subpages in CWM Docs
Flexibly organize information for your teams and work items by creating, duplicating, and deleting
pages and subpages within a Doc in Collaborative Work Management (CWM) workspace.

Before you begin

Create a Doc in CWM
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From the Spaces menu, navigate to the Space where your Doc is located and open it.

3. To create a page, you can create a blank page or start with a predefined template.
◦ For a blank page, select Create page.
◦ To create from templates:
a. Select Create Page from template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

803


<!-- page 804 -->
b. From a template card that you want to use, select Use.

The new page is created and added to your Doc.
4. To create a subpage, select the Page Actions menu (

) and select Create Subpage.

5. To delete a page or a subpage, select the Page Actions menu (

) and select Delete.

Only a user with Editor or Owner access to the Space can delete Doc pages. If there's only one
page left in the Doc, it can't be deleted by any user.
Duplicate a Doc in CWM
Save time by duplicate an existing Doc to copy all its pages and content without having to copy
the information manually in the Collaborative Work Management workspace.

Before you begin

Create a Doc in CWM.
Role required: sn_cwm.cwm_user

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

804


<!-- page 805 -->
Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Navigate to the Space that your Doc is in.
3. From the More actions menu of the Doc, select Duplicate.

4. Provide a name for the new Doc in the Doc name field.
The default name given is in the format of (Copy) <Original Doc name>.
5. Select Duplicate.

Result

The new Doc is added to the same Space as the original Doc. If necessary, you can move it to a
different Space or a different position in the same Space.
Export a Doc in CWM to a PDF file
Use the Docs offline, and share with teams or stakeholders outside Collaborative Work
Management (CWM) by exporting Docs as PDF.

Before you begin

Create a Doc in CWM
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. From a Space, select the Doc that you want to export.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

805


<!-- page 806 -->
3. From the Doc header, select the More actions icon (

), and then select Export as PDF.

Result

The Doc is exported and saved in your local system as a PDF file.

Templates in CWM for Boards and Docs
By enabling creation of Boards and Docs from predefined or custom templates, Collaborative
Work Management (CWM) helps improve efficiency, save time, and reduce inconsistencies in
format.
https://player.vimeo.com/video/1054556151?
h=84dc648b21&amp;badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479
Creating Boards and Docs from scratch across similar processes often consumes time and
effort, and could also lead to differences in their structure. With templates in CWM, you get
a predefined format for Boards and Docs, which you can use as-is or customize to suit your
workflow. You can use templates for new Boards and Docs or apply them to existing ones. You
can also save an existing Board or Doc in its current format as templates.
Template Center provides a centralized space where you can manage all templates for Boards
and Docs. From the Template Center, you can:
• Explore predefined templates for Boards and Docs.
• Filter for available templates by Owner or Type.
• Search for templates using its title.
• View details for all available templates where you can see a preview of the Board or Doc
format.
• Delete templates that you own.
Templates for Boards
When you use a template for a Board, any template tasks, custom columns, and
shared columns that the template contains are applied to the Board. The Board data
is displayed with all the custom columns available as part of the template.
Templates for Docs
When you use a template for a Doc, any template pages and content formatting is
applied to the Doc.
To access templates, you can choose one of the following ways:
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

806


<!-- page 807 -->
• For creating a Board or Doc from template, use these options:
◦ Explore templates from the main Create menu.
◦ Use templates from the New Board or New Doc modal.
◦ Apply template from the More actions menu or in the header of the Board or Doc.
• For saving a Board or Doc as a template: Use the Save as template option from the More
actions menu or in the header of the Board or Doc.
The following sections help you get started with templates in CWM.
Create a Board or Doc from a template in CWM
Create Boards or Docs using predefined or custom templates from the Template Center.

Before you begin

Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Select +Create.
3. Open the Template Center by selecting Explore templates.

4. Locate the template that you want to use.
◦ Filter the available templates by Owner or Type
◦ Search for the template using its title or keyword.
5. From the template card that you want to apply, select Use.

6. Enter the Board or Doc name.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

807


<!-- page 808 -->
7. Select the Space that you want to create this Board or Doc in.
8. Select Save.

Result

The Board or Doc is created in the Space that you selected.
• For a Board, any template tasks and custom columns that the template contains are applied to
the Board. To learn more about Board views, see Board views in CWM.
• For a Doc, any template pages and content formatting is applied to the Doc.
Apply a template to existing Board or Doc in CWM
Apply predefined or custom templates to existing Boards or Docs in Collaborative Work
Management workspace so that you can avoid inconsistencies in structure and format across
your processes.

Before you begin
• Create a Board in CWM
• Create a Doc in CWM
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Open the Board or Doc that you want to apply a template to.
3. You can apply template to a Board, Doc, or a single page in a Doc.
Choice

Action

From the Board header, select the More op­
tions icon (

) and select Apply template.

Apply template to Board

The Template Center shows only the Board
templates.
Apply template to Doc

From the Doc header, select the More actions
icon (

) and select Apply template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

808


<!-- page 809 -->
Choice

Action

The Template Center shows only the Doc tem­
plates.
From the page options, select the Page Ac­
tions icon (

) and select Apply template.

Apply template to a Doc page

The Template Center shows only the Doc
page templates.
4. Locate the template that you want to use.
◦ Filter the available templates by Owner. The Type filter is automatically set based on your
choice in the earlier steps.
◦ Search for the template using its title.
5. Optional: Check the details of the template by selecting View details from the Template
actions menu ( ).
For a Board template, you can view the details of the number of Board views and custom task
types that you get if you apply this template. You can also review the information on which of
the List, Gantt, Kanban, and Sprint planning views are enabled in this template.
(Optional) Only those custom columns that are part of these views are brought over when you
apply this template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

809


<!-- page 810 -->
6. From the template card that you want to apply, select Use.

Result

The selected template is applied to your Board, Doc, or page and the data is displayed according
to the template.
Save a CWM Board or Doc as a template
Save a Board or Doc, which you created or personalized, as a template so that you can reuse the
same structure and format for other Boards and Docs in the future.

Before you begin
• Create a Board in CWM
• Create a Doc in CWM
Role required: sn_cwm.cwm_user

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Open the Board or Doc that you want to save as a template.
3. You can save a Board, a Doc, or a single Doc page as a template.
Choice

Save a Board as template

Action

From the Board header, select the More op­
tions icon (

) and select Save as template.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

810


<!-- page 811 -->
Choice

Action

From the Doc header, select the More actions
icon (

) and select Save as template.

Save a Doc as template

From the page options, select the Page Ac­
tions icon (

) and select Save as template.

Save a Doc page as template

4. Enter a name and description for the template.
5. From the Share with selection, select the access level for the template.
6. From the Board Views to Save selection, choose to include all shared views or just the current
view of the Board.
7. Review the number of Board views and custom task types that will be included into this
template.
8. Select Save.
© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

811


<!-- page 812 -->
Result

The saved template is added to the Template Center.
Update a template in CWM
Update sharing permissions for a Board template or edit the format of a Doc template using the
Template Center in Collaborative Work Management (CWM).

Before you begin

Role required: sn_cwm.cwm_user
You must be the owner of the template to update its details.

About this task
Updating Board templates
You can only modify the sharing permissions, template name, and the description
of a Board template. The tasks, column order, sorting, custom columns, or any other
preferences within the template can't be updated.
Updating Doc templates
You can modify sharing permissions along with the format, structure, and pages for
a Doc template.

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Select +Create.
3. Open the Template Center by selecting Explore templates.

4. Locate the template that you want to edit.
◦ Filter the available templates by Owner or Type
◦ Search for the template using its title or keyword.
5. From the template card, select the Template actions menu (

) and select View details.

6. Modify the template title, the Share with access, or the description.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

812


<!-- page 813 -->
Editing a Board template

7. For a Doc template, select Edit to edit the content of the template.
Editing a Doc template

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

813


<!-- page 814 -->
8. After making your changes, select Done to close the template editor.
The changes are automatically saved to the template and they are applied to any Docs that
you create from this template in the future.
Delete a Board or Doc template in CWM
Delete any custom templates that are no longer necessary for your workflows using the Template
Center in Collaborative Work Management (CWM).

Before you begin

Role required: sn_cwm.cwm_user
You must be the owner of the template to delete it.

Procedure
1. Navigate to Workspaces > Collaborative Work Management.
2. Select +Create.
3. Open the Template Center by selecting Explore templates.

4. Locate the template that you want to use.
◦ Filter the available templates by Owner or Type
◦ Search for the template using its title or keyword.
5. From the template card, select the Template actions (

) menu and select Delete.

6. Select Delete to confirm.

Result

The template is deleted and is no longer available for you or your team to use.

Collaborative Work Management reference
Reference topics provide details on the roles, tables, and properties installed with Collaborative
Work Management (CWM).

Components installed with Collaborative Work Management
Several types of components are installed with activation of the Collaborative Work Management
application, including tables and user roles.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

814


<!-- page 815 -->
Roles installed
Role title [name]

Description

Contains roles

CWM user

The basic role required to access the CWM
workspace.

None

Admin role to modify and update any system
properties for functionality across CWM.

sn_cwm.cwm_user

Admin role to modify and update any system
properties for functionality in Docs.

None

[sn_cwm.cwm_user]
CWM admin
[sn_cwm.cwm_admin]
Docs admin
[sn_docs.docs_admin]

Tables installed
Table

CWM Automation

Description

Stores data of automation conditions for Boards.

[sn_cwm_automation]
CWM Board​

Contains all tasks, views, and column
configuration.​

[sn_cwm_board]
CWM Column Choice

Stores data for choices and labels created for
custom columns.

[sn_cwm_col_choice]
CWM Column Usage

Stores usage of custom columns and its type.

[sn_cwm_columns_usage]
CWM Content Tree Preference

Stores user preference of left navigation menu in
the expanded or collapsed state.

[sn_cwm_content_tree_preference]
CWM Document

Stores the information of all Docs created within
CWM.

[sn_cwm_doc]
CWM Document page

Stores the information of pages and subpages
created for a Doc within CWM.

[sn_cwm_doc_page]

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

815


<!-- page 816 -->
Table

CWM Document relationship

Description

Stores relation between Docs and Doc pages

[sn_cwm_doc_m2m]
CWM Import Configuration

Stores the configuration of tasks imported into My
Work.

[sn_cwm_import_config]
CWM Menu Item

Stores the content hierarchy for Boards, Docs, and
folders within a Space.​

[sn_cwm_menu_item]
CWM Notification Digest

Stores information of notifications sent to CWM
users.

[sn_cwm_notification_digest]
CWM Permission

Stores different level of permissions for the users
and groups for the Spaces.

[sn_cwm_permission]
CWM Space

Stores information of all CWM Spaces.​

[sn_cwm_space]
CWM Space Access Request
[sn_cwm_space_access_request]
CWM Task

Stores the list of users who requested access to
the Space.
Stores tasks data.

[sn_cwm_task]
CWM Template

Stores information of Board and Doc templates
within CWM workspace.

[sn_cwm_template]
CWM Template Board Metadata

Stores metadata of CWM Board templates such as
work types, automations, and others.

[sn_cwm_template_board_metadata]
CWM Template Board Views

Stores information of views within Board templates.

[sn_cwm_template_board_view]
CWM Template Column Choice

Stores information of column choices within Board
templates.

[sn_cwm_template_column_choice]
CWM Template Custom Column Label

Stores information of custom column labels within
Board templates.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

816


<!-- page 817 -->
Table

Description

[sn_cwm_template_custom_column_label]
CWM Template Document Page

Stores information of pages within Doc templates.

[sn_cwm_template_doc_page]
CWM Template Task

Stores information of tasks within Board templates.

[sn_cwm_template_task]
CWM User Preference

Stores user preferences such as last selected
Board, Agile preferences, and others.

sn_cwm_user_preference
CWM View Preferences

Stores information of view preferences for Boards.

[sn_cwm_view_preference]
CWM Views

Stores information of all Board views within CWM.

sn_cwm_view
CWM Work Type

Stores work types for task allowed within a Space.

[sn_cwm_work_type]
MyWork Table Mapping

Stores information of tasks shown in My Work such
as dates, states, and assigned users.

[sn_cwm_mywork_table_mapping]

Properties installed with Collaborative Work Management
System properties that you can configure to include other ServiceNow AI Platform records in
CWM Docs and modify the way non-CWM users request access to the workspace.
These properties are available for Collaborative Work Management.

Note: To open the System Properties [sys_properties] table, enter
sys_properties.list in the navigation filter.
Properties for Collaborative Work Management
Property

Description

sn_cwm.request_role_access

Property to show or hide the Request Access button for
non-CWM users in the workspace.
By default, the button is hidden. When this property is set to
true, an event sn_cwm.REQUEST_ROLE_ACCESS is raised.
Admins can configure this event to trigger one of the following
workflows, allowing the non-CWM user to request access to the
workspace.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

817


<!-- page 818 -->
Properties for Collaborative Work Management (continued)
Property

Description

• Raising a Service Catalog request.
• Sending an email.
• Type: true | false
• Default value: false
• Location: System Property [sys_properties] table
• Role needed: sn_cwm.cwm_admin
sn_cwm.record_mention_config

Property to configure mentioning any ServiceNow AI Platform
record within Docs pages of CWM workspace.
• Type: string
• Default value:
[{"sourceTable":"sn_cwm_task","label":"CWM
Task","fields":
["short_description","number"]}]
By default, this property is configured to include CWM task
records.
• Location: System Property [sys_properties] table
• Role needed: sn_cwm.cwm_admin
To include any other ServiceNow AI Platform record, update the
property.
For example, to reference the Incident records in the Docs
pages, update the Value field of this property to include the
Incident table.
The updated Value field would include the configuration for
CWM task records and Incident records:
[{"sourceTable":"sn_cwm_task","label":"CWM
Task","fields":["short_description","numb
er"]},
{"sourceTable":"incident","label":"Inciden
t","fields":["short_description","number"
]}]

sn_cwm.include_additional_assignee Property to display tasks assigned to the user in My Work, when
the user is added to the Additional assignee field.
By default, My Work displays only tasks where the user is
listed in the Assigned to field. When this property is set to true,
it includes all tasks assigned to the user through either the
Assigned to field or the Additional assignee field.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

818


<!-- page 819 -->
Properties for Collaborative Work Management (continued)
Property

Description

• Type: true | false
• Default value: false
• Location: System Property [sys_properties] table
• Role needed: sn_cwm.cwm_admin
sn_cwm.connect_work_import_limit

Property to configure the maximum number of items that can
be imported to a CWM Board for the first time when using the
Connected work feature.
• Type: integer
• Default value: 100
• Location: System Property [sys_properties] table
• Role needed: sn_cwm.cwm_admin

sn_cwm.agile_enabled

Property to control Agile-related features for CWM. If set to true,
then agile items like Story and Epic can be created in a CWM
Board and Sprint planning feature will be enabled.
• Type: true | false
• Default value: true
• Location: System Property [sys_properties] table
• Role needed: sn_cwm.cwm_admin

sn_docs.is_live_presence_enabled

Property to enable live presence indicators of users on a Doc
page.
• Type: true | false
• Default value: true
• Location: System Property [sys_properties] table
• Role needed: sn_docs.docs_admin

Grouping of tasks in status reports of CWM My Work
Learn how various tasks assigned to you are grouped based on their State and Priority in My
Work reports of Collaborative Work Management (CWM).

State buckets
State buckets represent the lifecycle stage of different tasks. Existing state values from different
task types are automatically mapped into these buckets based on meaning and also internal
value of any task type. In My Work, all states are automatically grouped into three standard State
Buckets.

© 2025 ServiceNow, Inc. All rights reserved.
ServiceNow, the ServiceNow logo, Now, and other ServiceNow marks are trademarks and/or registered trademarks of ServiceNow, Inc., in the United States and/or other countries.
Other company names, product names, and logos may be trademarks of the respective companies with which they are associated.

819


